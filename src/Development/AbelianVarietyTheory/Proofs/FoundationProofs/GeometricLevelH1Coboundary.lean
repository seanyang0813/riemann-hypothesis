module

public import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.TowerParameterPowersOrthogonalGeometricInvariant
public import Mathlib.FieldTheory.KrullTopology
public import Development.AbelianVarietyTheory.Definitions.Foundations.IntegralLocallyConstCochainModPow
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FiniteGaloisApproximation
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SmallTracesSubgroupGaloisTowerTop
public import Mathlib.FieldTheory.Galois.Infinite
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsFiniteLevelApproxOfGeometricInvariantModPo
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsTopologicalGeneratorTauTower
public import Development.AbelianVarietyTheory.Definitions.Foundations.EeProd
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsReparametrizationByTowerParameter
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
import Mathlib.RingTheory.Henselian
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Mathlib.FieldTheory.Galois.Profinite
import Mathlib.RingTheory.PicardGroup
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.InvariantsFromFiniteLevel
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Algebra.Ring.IsFormallyReal
import Development.AbelianVarietyTheory.Definitions.Foundations.Integral

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQRootPolyOfFixedGeometricStabilizerTau, Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricGaloisCoboundaryCongZeroModPrimePow, Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricGaloisDenseTauPowMulFixingQRoots, Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricH1ZetaSubOneKills, Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQRootPolyOfFixedGeometricStabilizer, Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsIntegralCoeffsOfGeometricFixedQExpansion, Development.AbelianVarietyTheory.Proofs.FoundationProofs.KummerTowerIntegerDecompositionByTau, Development.AbelianVarietyTheory.Proofs.FoundationProofs.KummerCocycleTwistedCoboundary, Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricLevelH1Coboundary

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQRootPolyOfFixedGeometricStabilizerTau =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQRootPolyOfFixedGeometricStabilizerTau", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5

namespace GlobalTheory.K5.Span

theorem sum_range_shift_one {A : Type*} [AddCommGroup A] {M : ℕ} (f : ℕ → A)
    (hf : ∀ i, f (i + M) = f i) :
    ∑ i ∈ Finset.range M, f (i + 1) = ∑ i ∈ Finset.range M, f i := by
  have h1 := Finset.sum_range_succ' f M
  have h2 := Finset.sum_range_succ f M
  have h3 : f M = f 0 := by simpa using hf 0
  rw [h3] at h2
  exact add_right_cancel (h1.symm.trans h2)

theorem sum_range_shift {A : Type*} [AddCommGroup A] {M : ℕ} (f : ℕ → A)
    (hf : ∀ i, f (i + M) = f i) (s : ℕ) :
    ∑ i ∈ Finset.range M, f (i + s) = ∑ i ∈ Finset.range M, f i := by
  induction s generalizing f with
  | zero => simp
  | succ s ih =>
    have := sum_range_shift_one (fun i => f (i + s)) (fun i => by
      show f (i + M + s) = f (i + s)
      rw [add_right_comm, hf])
    rw [← ih f hf, ← this]
    exact Finset.sum_congr rfl fun i _ => by congr 1; omega

theorem span : ∀ (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
  ∀ (T : Tower p Ω) (τ : Gal p Ω), τ ∈ Ggeo (p := p) Ω → (∀ n, τ (T.qq n) = T.ζ n * T.qq n) →
  ∀ (N : ℕ) (z : Ω), (∀ g ∈ Ggeo (p := p) Ω ⊓ MulAction.stabilizer (Gal p Ω) (T.qq N), g z = z) →
  ∃ c : ℕ → Ω, (∀ j, ∀ g ∈ Ggeo (p := p) Ω, g (c j) = c j) ∧ z = ∑ j ∈ Finset.range (p ^ N), c j * T.qq N ^ j := by
  intro p _ Ω _ _ hΩ T τ hτ hτq N z hz
  haveI : CharZero Ω := charZero_of_injective_algebraMap hΩ.inj
  have hprim : IsPrimitiveRoot (T.ζ N) (p ^ N) := T.prim N
  have hMpos : 0 < p ^ N := pow_pos (Fact.out : p.Prime).pos N
  have hq0 : T.qq N ≠ 0 := Basic.qq_ne_zero T N
  have hqpow : T.qq N ^ p ^ N = algebraMap (O0 p) Ω (qO p) := Basic.qq_pow T N
  have hτqN := hτq N
  set M := p ^ N with hMdef
  set ζ := T.ζ N with hζdef
  set q := T.qq N with hqdef
  have hM0 : (M : Ω) ≠ 0 := by exact_mod_cast hMpos.ne'
  have hζ0 : ζ ≠ 0 := hprim.ne_zero hMpos.ne'

  have hζalg : IsAlgZp (p := p) ζ := by
    refine ⟨Polynomial.X ^ M - Polynomial.C 1, Polynomial.X_pow_sub_C_ne_zero hMpos 1, ?_⟩
    simp [hprim.pow_eq_one]
  have hfixζ : ∀ g ∈ Ggeo (p := p) Ω, g ζ = ζ := fun g hg => hg ζ hζalg
  have hτpow : ∀ i : ℕ, (τ ^ i) q = ζ ^ i * q := by
    intro i
    induction i with
    | zero => simp
    | succ i ih =>
      rw [pow_succ', AlgEquiv.mul_apply, ih, map_mul, map_pow, hfixζ τ hτ, hτqN, pow_succ']
      ring
  have hτG : ∀ i : ℕ, τ ^ i ∈ Ggeo (p := p) Ω := fun i => Subgroup.pow_mem _ hτ i
  have hconj : ∀ g ∈ Ggeo (p := p) Ω, g q = q → ∀ i : ℕ, g ((τ ^ i) z) = (τ ^ i) z := by
    intro g hg hgq i
    have hk : (τ ^ i)⁻¹ * g * τ ^ i ∈ Ggeo (p := p) Ω ⊓ MulAction.stabilizer (Gal p Ω) q := by
      refine Subgroup.mem_inf.2 ⟨Subgroup.mul_mem _ (Subgroup.mul_mem _ (Subgroup.inv_mem _ (hτG i)) hg)
        (hτG i), MulAction.mem_stabilizer_iff.2 ?_⟩
      show ((τ ^ i)⁻¹ * g * τ ^ i) q = q
      rw [AlgEquiv.mul_apply, AlgEquiv.mul_apply, hτpow, map_mul, map_pow, hfixζ g hg, hgq, ← hτpow,
        AlgEquiv.aut_inv, AlgEquiv.symm_apply_apply]
    have hkz := hz _ hk
    have e : τ ^ i * ((τ ^ i)⁻¹ * g * τ ^ i) = g * τ ^ i := by group
    calc g ((τ ^ i) z) = (g * τ ^ i) z := rfl
      _ = (τ ^ i * ((τ ^ i)⁻¹ * g * τ ^ i)) z := by rw [e]
      _ = (τ ^ i) (((τ ^ i)⁻¹ * g * τ ^ i) z) := rfl
      _ = (τ ^ i) z := by rw [hkz]
  have hdec : ∀ g ∈ Ggeo (p := p) Ω, ∃ s : ℕ, g q = ζ ^ s * q ∧ ∀ i : ℕ, g ((τ ^ i) z) = (τ ^ (s + i)) z := by
    intro g hg
    have h1 : (g q / q) ^ M = 1 := by
      rw [div_pow, ← map_pow, hqpow, AlgEquiv.commutes, ← hqpow, div_self (pow_ne_zero _ hq0)]
    obtain ⟨s, -, hse⟩ := hprim.eq_pow_of_pow_eq_one h1
    have hgq : g q = ζ ^ s * q := by rw [hse, div_mul_cancel₀ _ hq0]
    refine ⟨s, hgq, fun i => ?_⟩
    have hh : (τ ^ s)⁻¹ * g ∈ Ggeo (p := p) Ω := Subgroup.mul_mem _ (Subgroup.inv_mem _ (hτG s)) hg
    have hhq : ((τ ^ s)⁻¹ * g) q = q := by
      rw [AlgEquiv.mul_apply, hgq, ← hτpow, AlgEquiv.aut_inv, AlgEquiv.symm_apply_apply]
    have e : g = τ ^ s * ((τ ^ s)⁻¹ * g) := by group
    rw [e, AlgEquiv.mul_apply, hconj _ hh hhq i, ← AlgEquiv.mul_apply, ← pow_add]

  have hτMz : (τ ^ M) z = z := by
    refine hz _ (Subgroup.mem_inf.2 ⟨hτG M, MulAction.mem_stabilizer_iff.2 ?_⟩)
    show (τ ^ M) q = q
    rw [hτpow, hprim.pow_eq_one, one_mul]
  set η := ζ⁻¹ with hηdef
  have hηprim : IsPrimitiveRoot η M := hprim.inv
  have hfixη : ∀ g ∈ Ggeo (p := p) Ω, g η = η := by
    intro g hg; rw [hηdef, map_inv₀, hfixζ g hg]
  obtain ⟨P, hP⟩ : ∃ P : ℕ → Ω, ∀ j,
      P j = (M : Ω)⁻¹ * ∑ i ∈ Finset.range M, η ^ (i * j) * (τ ^ i) z := ⟨_, fun _ => rfl⟩
  have hgP : ∀ g ∈ Ggeo (p := p) Ω, ∀ s : ℕ, (∀ i : ℕ, g ((τ ^ i) z) = (τ ^ (s + i)) z) →
      ∀ j, g (P j) = ζ ^ (s * j) * P j := by
    intro g hg s hs j

    rw [hP, map_mul, map_inv₀, map_natCast, map_sum]
    have hper : ∀ i, (fun i => η ^ (i * j) * (τ ^ i) z) (i + M) = (fun i => η ^ (i * j) * (τ ^ i) z) i := by
      intro i
      show η ^ ((i + M) * j) * (τ ^ (i + M)) z = η ^ (i * j) * (τ ^ i) z
      rw [add_mul, pow_add, show η ^ (M * j) = 1 by rw [pow_mul, hηprim.pow_eq_one, one_pow],
        mul_one, pow_add, AlgEquiv.mul_apply, hτMz]
    have hsh := sum_range_shift (M := M) (fun i => η ^ (i * j) * (τ ^ i) z) hper s
    rw [← hsh, Finset.mul_sum, Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_mul, map_pow, hfixη g hg, hs, add_comm s i]
    have hζη : ζ ^ (s * j) * η ^ (s * j) = 1 := by
      rw [← mul_pow, hηdef, mul_inv_cancel₀ hζ0, one_pow]
    calc (M : Ω)⁻¹ * (η ^ (i * j) * (τ ^ (i + s)) z)
        = (M : Ω)⁻¹ * ((ζ ^ (s * j) * η ^ (s * j)) * η ^ (i * j) * (τ ^ (i + s)) z) := by
          rw [hζη, one_mul]
      _ = ζ ^ (s * j) * ((M : Ω)⁻¹ * (η ^ ((i + s) * j) * (τ ^ (i + s)) z)) := by
          rw [add_mul, pow_add]; ring
  obtain ⟨c, hc⟩ : ∃ c : ℕ → Ω, ∀ j, c j = P j / q ^ j := ⟨_, fun _ => rfl⟩
  refine ⟨c, ?_, ?_⟩
  · intro j g hg
    obtain ⟨s, hgq, hs⟩ := hdec g hg
    rw [hc, map_div₀, map_pow, hgq, hgP g hg s hs j, mul_pow, ← pow_mul,
      mul_div_mul_left _ _ (pow_ne_zero _ hζ0)]
  · have hgeom : ∀ i ∈ Finset.range M,
        ∑ j ∈ Finset.range M, η ^ (i * j) = if i = 0 then (M : Ω) else 0 := by
      intro i hi
      split_ifs with h0
      · simp [h0]
      · have hne : η ^ i ≠ 1 :=
          hηprim.pow_ne_one_of_pos_of_lt h0 (Finset.mem_range.1 hi)
        simp_rw [pow_mul]
        rw [geom_sum_eq hne, pow_right_comm, hηprim.pow_eq_one, one_pow, sub_self, zero_div]
    have e1 : ∑ i ∈ Finset.range M, (∑ j ∈ Finset.range M, η ^ (i * j)) * (τ ^ i) z =
        ∑ i ∈ Finset.range M, (if i = 0 then (M : Ω) else 0) * (τ ^ i) z :=
      Finset.sum_congr rfl fun i hi => by rw [hgeom i hi]
    calc z = (M : Ω)⁻¹ * ∑ i ∈ Finset.range M, (∑ j ∈ Finset.range M, η ^ (i * j)) * (τ ^ i) z := by
          rw [e1, Finset.sum_eq_single_of_mem 0 (Finset.mem_range.2 hMpos) (fun b _ hb => by simp [hb])]
          simp [hM0]
      _ = ∑ j ∈ Finset.range M, P j := by
          simp only [hP]
          rw [← Finset.mul_sum, Finset.sum_comm]
          simp only [Finset.sum_mul]
      _ = ∑ j ∈ Finset.range M, c j * q ^ j :=
          Finset.sum_congr rfl fun j _ => by rw [hc, div_mul_cancel₀ _ (pow_ne_zero j hq0)]

end GlobalTheory.K5.Span
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQRootPolyOfFixedGeometricStabilizerTau =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricGaloisCoboundaryCongZeroModPrimePow =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricGaloisCoboundaryCongZeroModPrimePow", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQRootPolyOfFixedGeometricStabilizerTau\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.TowerParameterPowersOrthogonalGeometricInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5

namespace GlobalTheory.K5.KernLoc

theorem kern_of (SPAN : ∀ (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
  ∀ (T : Tower p Ω) (τ : Gal p Ω), τ ∈ Ggeo p Ω → (∀ n, τ (T.qq n) = T.ζ n * T.qq n) →
  ∀ (N : ℕ) (z : Ω), (∀ g ∈ Ggeo p Ω ⊓ MulAction.stabilizer (Gal p Ω) (T.qq N), g z = z) →
  ∃ c : ℕ → Ω, (∀ j, ∀ g ∈ Ggeo p Ω, g (c j) = c j) ∧ z = ∑ j ∈ Finset.range (p ^ N), c j * T.qq N ^ j) (ORTH : ∀ (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
  ∀ (T : Tower p Ω) (N : ℕ) (c : ℕ → Ω), (∀ j, ∀ g ∈ Ggeo p Ω, g (c j) = c j) →
  IsInt (p := p) (∑ j ∈ Finset.range (p ^ N), c j * T.qq N ^ j) → ∀ j < p ^ N, IsInt (p := p) (c j)) : ∀ (p : ℕ) [Fact p.Prime], p ≠ 2 → ∀ (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
  ∀ (T : Tower p Ω) (τ : Gal p Ω), τ ∈ Ggeo p Ω → (∀ n, τ (T.qq n) = T.ζ n * T.qq n) →
  ∀ (k N : ℕ) (w o : Ω), IsInt (p := p) w → (∀ g ∈ Ggeo p Ω ⊓ MulAction.stabilizer (Gal p Ω) (T.qq N), g w = w) →
  (∀ g ∈ Ggeo p Ω, g o = o) → Cong (p := p) k (τ w - w) o → Cong (p := p) k o 0 := by
  intro p _ _ Ω _ _ hΩ T τ hτ hτq k N w o hw hwH ho hc
  haveI : CharZero Ω := charZero_of_injective_algebraMap hΩ.inj
  have hp0 : (p : Ω) ≠ 0 := by exact_mod_cast (Fact.out : p.Prime).ne_zero

  have hζalg : IsAlgZp p (T.ζ N) := by
    refine ⟨Polynomial.X ^ (p ^ N) - 1, Polynomial.X_pow_sub_C_ne_zero (pow_pos (Fact.out : p.Prime).pos N) 1, ?_⟩
    simp [(T.prim N).pow_eq_one]
  have hfixζ : ∀ g ∈ Ggeo p Ω, g (T.ζ N) = T.ζ N := fun g hg => hg (T.ζ N) hζalg
  have hτpow : ∀ i : ℕ, (τ ^ i) (T.qq N) = T.ζ N ^ i * T.qq N := by
    intro i
    induction i with
    | zero => simp
    | succ i ih =>
      rw [pow_succ, AlgEquiv.mul_apply, hτq, map_mul, ih, hfixζ _ (Subgroup.pow_mem _ hτ i)]
      ring
  have hτi : ∀ i : ℕ, τ ^ i ∈ Ggeo p Ω := fun i => Subgroup.pow_mem _ hτ i

  have hτN : (τ ^ (p ^ N)) w = w := by
    apply hwH
    refine ⟨hτi _, ?_⟩
    show (τ ^ (p ^ N)) (T.qq N) = T.qq N
    rw [hτpow, (T.prim N).pow_eq_one, one_mul]

  obtain ⟨z, hz, hze⟩ := hc
  have hzH : ∀ g ∈ Ggeo p Ω ⊓ MulAction.stabilizer (Gal p Ω) (T.qq N), g z = z := by
    intro g hg
    have hg1 : g ∈ Ggeo p Ω := hg.1
    have hg2 : g (T.qq N) = T.qq N := hg.2
    have hconj : τ⁻¹ * g * τ ∈ Ggeo p Ω ⊓ MulAction.stabilizer (Gal p Ω) (T.qq N) := by
      refine ⟨(Ggeo p Ω).mul_mem ((Ggeo p Ω).mul_mem ((Ggeo p Ω).inv_mem hτ) hg1) hτ, ?_⟩
      show (τ⁻¹ * g * τ) (T.qq N) = T.qq N
      rw [AlgEquiv.mul_apply, AlgEquiv.mul_apply, hτq, map_mul, hfixζ g hg1, hg2, ← hτq,
        ← AlgEquiv.mul_apply, inv_mul_cancel, AlgEquiv.one_apply]
    have hgτw : g (τ w) = τ w := by
      have := hwH _ hconj
      rw [AlgEquiv.mul_apply, AlgEquiv.mul_apply] at this
      have h2 := congrArg τ this
      rwa [← AlgEquiv.mul_apply τ τ⁻¹, mul_inv_cancel, AlgEquiv.one_apply] at h2
    have e := congrArg g hze
    rw [map_sub, map_sub, hgτw, hwH g hg, ho g hg1, map_mul, map_pow, map_natCast, hze] at e
    exact (mul_left_cancel₀ (pow_ne_zero k hp0) e).symm
  obtain ⟨c, hcfix, hzc⟩ := SPAN p Ω hΩ T τ hτ hτq N z hzH

  have hsumz : ∑ i ∈ Finset.range (p ^ N), (τ ^ i) z = (p : Ω) ^ N * c 0 := by
    have h1 : ∀ i j : ℕ, (τ ^ i) (c j * T.qq N ^ j) = c j * T.qq N ^ j * (T.ζ N ^ j) ^ i := by
      intro i j
      rw [map_mul, map_pow, hcfix j _ (hτi i), hτpow]
      ring
    rw [hzc]

    simp_rw [map_sum, h1]
    rw [Finset.sum_comm]
    simp_rw [← Finset.mul_sum]
    rw [Finset.sum_eq_single 0]
    · simp [mul_comm]
    · intro j hj hj0
      have hj' := Finset.mem_range.1 hj
      have hne : T.ζ N ^ j ≠ 1 := (T.prim N).pow_ne_one_of_pos_of_lt hj0 hj'
      rw [geom_sum_eq hne, ← pow_mul, mul_comm j, pow_mul, (T.prim N).pow_eq_one, one_pow, sub_self,
        zero_div, mul_zero]
    · intro h
      exact absurd (Finset.mem_range.2 (pow_pos (Fact.out : p.Prime).pos N)) h
  have hsumL : ∑ i ∈ Finset.range (p ^ N), (τ ^ i) (τ w - w - o) = -((p : Ω) ^ N * o) := by
    have h1 : ∀ i : ℕ, (τ ^ i) (τ w - w - o) = (τ ^ (i + 1)) w - (τ ^ i) w - o := by
      intro i
      rw [map_sub, map_sub, pow_succ, AlgEquiv.mul_apply, ho _ (hτi i)]
    simp_rw [h1]
    rw [Finset.sum_sub_distrib, Finset.sum_range_sub (fun i => (τ ^ i) w), hτN, pow_zero,
      AlgEquiv.one_apply, Finset.sum_const, Finset.card_range, nsmul_eq_mul]
    push_cast
    ring
  have key : -((p : Ω) ^ N * o) = (p : Ω) ^ k * ((p : Ω) ^ N * c 0) := by
    rw [← hsumL, ← hsumz, Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [hze, map_mul, map_pow, map_natCast]
  have hc0 : IsInt (p := p) (c 0) := ORTH p Ω hΩ T N c hcfix (hzc ▸ hz) 0 (pow_pos (Fact.out : p.Prime).pos N)
  refine ⟨-c 0, hc0.neg, ?_⟩
  have hpN : (p : Ω) ^ N ≠ 0 := pow_ne_zero N hp0
  apply mul_left_cancel₀ hpN
  linear_combination -key

theorem main : ∀ (p : ℕ) [Fact p.Prime], p ≠ 2 → ∀ (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
  ∀ (T : Tower p Ω) (τ : Gal p Ω), τ ∈ Ggeo p Ω → (∀ n, τ (T.qq n) = T.ζ n * T.qq n) →
  ∀ (k N : ℕ) (w o : Ω), IsInt (p := p) w → (∀ g ∈ Ggeo p Ω ⊓ MulAction.stabilizer (Gal p Ω) (T.qq N), g w = w) →
  (∀ g ∈ Ggeo p Ω, g o = o) → Cong (p := p) k (τ w - w) o → Cong (p := p) k o 0 :=
  kern_of _root_.GlobalTheory.K5.Span.span _root_.GlobalTheory.K5.Orth.orth

end GlobalTheory.K5.KernLoc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricGaloisCoboundaryCongZeroModPrimePow =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricGaloisDenseTauPowMulFixingQRoots =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricGaloisDenseTauPowMulFixingQRoots", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\npublic import Mathlib.FieldTheory.KrullTopology\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.FieldTheory.Galois.Profinite\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.K5.Dense

open Polynomial

variable {p : ℕ} [hp : Fact p.Prime] {Ω : Type} [Field Ω] [Algebra (O0 p) Ω]

theorem isClosed_eval_mem {K : Type*} [Field K] [Algebra K Ω] [Algebra.IsIntegral K Ω]
    (x : Ω) (s : Set Ω) : IsClosed {σ : Ω ≃ₐ[K] Ω | σ x ∈ s} := by
  rw [← isOpen_compl_iff, isOpen_iff_forall_mem_open]
  intro σ hσ
  refine ⟨(fun τ => σ⁻¹ * τ) ⁻¹' (MulAction.stabilizer (Ω ≃ₐ[K] Ω) x : Set (Ω ≃ₐ[K] Ω)), ?_,
    (stabilizer_isOpen_of_isIntegral x).preimage (by fun_prop), ?_⟩
  · intro τ hτ
    have h : σ.symm (τ x) = x := hτ
    have h' : τ x = σ x := by rw [← σ.symm_apply_eq.1 h]
    simpa [h'] using hσ
  · simp

theorem exists_of_seq (h : IsClo p Ω) (P : ℕ → Ω → Set Ω)
    (hP : ∀ n, ∃ σ : Gal p Ω, ∀ m ≤ n, ∀ x, σ x ∈ P m x) :
    ∃ σ : Gal p Ω, ∀ n x, σ x ∈ P n x := by
  classical
  let K := FractionRing (O0 p)
  letI : Algebra K Ω := (IsFractionRing.lift h.inj).toAlgebra
  have hK : ∀ a : O0 p, algebraMap K Ω (algebraMap (O0 p) K a) = algebraMap (O0 p) Ω a :=
    fun a => IsFractionRing.lift_algebraMap h.inj a
  haveI : IsScalarTower (O0 p) K Ω := IsScalarTower.of_algebraMap_eq (fun a => (hK a).symm)
  haveI : IsAlgClosed Ω := h.clo
  haveI : Algebra.IsAlgebraic (O0 p) Ω := h.alg
  haveI : Algebra.IsAlgebraic K Ω :=
    Algebra.IsAlgebraic.extendScalars (IsFractionRing.injective (O0 p) K)
  haveI : IsAlgClosure K Ω := ⟨h.clo, inferInstance⟩
  haveI : CharZero Ω := charZero_of_injective_algebraMap h.inj
  haveI : CharZero K := RingHom.charZero (algebraMap K Ω)
  haveI : IsGalois K Ω := {}
  have hfix : ∀ σ : Gal p Ω, ∀ y : K, σ (algebraMap K Ω y) = algebraMap K Ω y := by
    intro σ y
    have e : ((σ : Ω →+* Ω).comp (algebraMap K Ω)) = algebraMap K Ω := by
      apply IsLocalization.ringHom_ext (nonZeroDivisors (O0 p))
      ext a
      simp only [RingHom.comp_apply, hK]
      exact σ.commutes a
    exact congrArg (fun f : K →+* Ω => f y) e
  let φ : Gal p Ω → (Ω ≃ₐ[K] Ω) := fun σ => AlgEquiv.ofRingEquiv (f := σ.toRingEquiv) (hfix σ)
  have hφ : ∀ σ x, φ σ x = σ x := fun _ _ => rfl
  let G : ℕ → Set (Ω ≃ₐ[K] Ω) := fun n => {τ | ∀ m ≤ n, ∀ x, τ x ∈ P m x}
  have hcl : ∀ n, IsClosed (G n) := fun n => by
    have e : G n = ⋂ m, ⋂ (_ : m ≤ n), ⋂ x, {τ : Ω ≃ₐ[K] Ω | τ x ∈ P m x} := by
      ext τ; simp [G]
    rw [e]
    exact isClosed_iInter fun m => isClosed_iInter fun _ => isClosed_iInter fun x =>
      isClosed_eval_mem x _
  have hdec : ∀ n, G (n + 1) ⊆ G n := fun n τ hτ m hm x => hτ m (hm.trans n.le_succ) x
  have hne : ∀ n, (G n).Nonempty := fun n => by
    obtain ⟨σ, hσ⟩ := hP n
    exact ⟨φ σ, fun m hm x => by rw [hφ]; exact hσ m hm x⟩
  obtain ⟨τ, hτ⟩ := IsCompact.nonempty_iInter_of_sequence_nonempty_isCompact_isClosed G hdec hne
    (hcl 0).isCompact hcl
  rw [Set.mem_iInter] at hτ
  exact ⟨τ.restrictScalars (O0 p), fun n x => hτ n n le_rfl x⟩

theorem exists_finset_orbit (h : IsClo p Ω) (x : Ω) : ∃ R : Finset Ω, ∀ σ : Gal p Ω, σ x ∈ R := by
  classical
  obtain ⟨P, hP0, hPx⟩ := h.alg.isAlgebraic x
  refine ⟨(P.aroots Ω).toFinset, fun σ => ?_⟩
  rw [Multiset.mem_toFinset, mem_aroots']
  refine ⟨(Polynomial.map_ne_zero_iff h.inj).2 hP0, ?_⟩
  have e := Polynomial.aeval_algHom_apply (σ : Ω →ₐ[O0 p] Ω) x P
  simp only [AlgEquiv.coe_algHom] at e
  rw [e, hPx, map_zero]

theorem isAlgZp_zeta (T : Tower p Ω) (n : ℕ) : IsAlgZp (p := p) (T.ζ n) := by
  refine ⟨X ^ (p ^ n) - C 1, X_pow_sub_C_ne_zero (pow_pos hp.out.pos n) 1, ?_⟩
  simp [(T.prim n).pow_eq_one]

theorem qq_pow_sub (T : Tower p Ω) {n m : ℕ} (h : n ≤ m) : T.qq m ^ p ^ (m - n) = T.qq n := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le h
  simp only [Nat.add_sub_cancel_left]
  clear h
  induction k with
  | zero => simp
  | succ k ih => rw [← add_assoc, pow_succ', pow_mul, T.qpow, ih]

theorem ggeo_apply {g : Gal p Ω} (hg : g ∈ Ggeo (p := p) Ω) {x : Ω} (hx : IsAlgZp (p := p) x) : g x = x := hg x hx

theorem tau_pow_qq (T : Tower p Ω) {τ : Gal p Ω} (hτ : τ ∈ Ggeo (p := p) Ω)
    (hτq : ∀ n, τ (T.qq n) = T.ζ n * T.qq n) (n s : ℕ) :
    (τ ^ s) (T.qq n) = T.ζ n ^ s * T.qq n := by
  induction s with
  | zero => simp
  | succ s ih =>
    rw [pow_succ, AlgEquiv.mul_apply, hτq, map_mul, ih,
      ggeo_apply ((Ggeo (p := p) Ω).pow_mem hτ s) (isAlgZp_zeta T n), pow_succ]
    ring

theorem dense_tau_pow_mul (p : ℕ) [Fact p.Prime] (_hp2 : p ≠ 2) (Ω : Type) [Field Ω]
    [Algebra (O0 p) Ω] (hΩ : IsClo p Ω) (T : Tower p Ω) (τ : Gal p Ω) (hτ : τ ∈ Ggeo (p := p) Ω)
    (hτq : ∀ n, τ (T.qq n) = T.ζ n * T.qq n) :
    ∀ g ∈ Ggeo (p := p) Ω, ∀ S : Finset Ω, ∃ s : ℕ, ∃ h ∈ Ggeo (p := p) Ω ⊓ ⨅ n, Gn T n,
      ∀ x ∈ S, (τ ^ s * h) x = g x := by
  classical
  intro g hg S
  have hs : ∀ n, ∃ s : ℕ, (τ ^ s) (T.qq n) = g (T.qq n) := by
    intro n
    have hq0 := Basic.qq_ne_zero T n
    have hqp : T.qq n ^ p ^ n ≠ 0 := pow_ne_zero _ hq0
    have e : (g (T.qq n) / T.qq n) ^ (p ^ n) = 1 := by
      rw [div_pow, ← map_pow, Basic.qq_pow, AlgEquiv.commutes, ← Basic.qq_pow T n, div_self hqp]
    obtain ⟨i, -, hi⟩ := (T.prim n).eq_pow_of_pow_eq_one e
    exact ⟨i, by rw [tau_pow_qq T hτ hτq, hi, div_mul_cancel₀ _ hq0]⟩
  choose s hs using hs
  let σ : ℕ → Gal p Ω := fun n => (τ ^ s n)⁻¹ * g
  have hσG : ∀ n, σ n ∈ Ggeo (p := p) Ω := fun n =>
    (Ggeo (p := p) Ω).mul_mem ((Ggeo (p := p) Ω).inv_mem ((Ggeo (p := p) Ω).pow_mem hτ _)) hg
  have hσq : ∀ n, σ n (T.qq n) = T.qq n := by
    intro n
    show ((τ ^ s n)⁻¹ * g) (T.qq n) = T.qq n
    rw [AlgEquiv.mul_apply, ← hs n, AlgEquiv.aut_inv, AlgEquiv.symm_apply_apply]
  choose R hR using fun x => exists_finset_orbit hΩ x
  let F : ℕ → ((x : S) → ↥(R x.1)) := fun n x => ⟨σ n x, hR x.1 (σ n)⟩
  obtain ⟨y, hy⟩ := Finite.exists_infinite_fiber F
  have hinf : (F ⁻¹' {y}).Infinite := Set.infinite_coe_iff.1 hy
  obtain ⟨n₁, hn₁⟩ := hinf.nonempty
  have hS : ∀ m ∈ F ⁻¹' {y}, ∀ x ∈ S, σ m x = σ n₁ x := by
    intro m hm x hx
    have e : F m = F n₁ := (Set.mem_preimage.1 hm).trans (Set.mem_preimage.1 hn₁).symm
    exact congrArg Subtype.val (congrFun e ⟨x, hx⟩)
  let P : ℕ → Ω → Set Ω := fun n x =>
    {z | (IsAlgZp (p := p) x → z = x) ∧ (x ∈ S → z = σ n₁ x) ∧ (x = T.qq n → z = x)}
  have hP : ∀ n, ∃ ρ : Gal p Ω, ∀ m ≤ n, ∀ x, ρ x ∈ P m x := by
    intro n
    obtain ⟨m, hm, hnm⟩ := hinf.exists_gt n
    refine ⟨σ m, fun m' hm' x => ⟨fun hx => ggeo_apply (hσG m) hx, fun hx => hS m hm x hx, ?_⟩⟩
    rintro rfl
    rw [← qq_pow_sub T (hm'.trans hnm.le), map_pow, hσq m]
  obtain ⟨z, hz⟩ := exists_of_seq hΩ P hP
  refine ⟨s n₁, z, ?_, fun x hx => ?_⟩
  · refine Subgroup.mem_inf.2 ⟨fun x hx => (hz 0 x).1 hx, Subgroup.mem_iInf.2 fun n => ?_⟩
    exact (Basic.mem_gn T n z).2 ⟨(hz 0 _).1 (isAlgZp_zeta T n), (hz n _).2.2 rfl⟩
  · rw [AlgEquiv.mul_apply, (hz 0 x).2.1 hx]
    show (τ ^ s n₁) (((τ ^ s n₁)⁻¹ * g) x) = g x
    rw [AlgEquiv.mul_apply, AlgEquiv.aut_inv, AlgEquiv.apply_symm_apply]

end GlobalTheory.K5.Dense
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricGaloisDenseTauPowMulFixingQRoots =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricH1ZetaSubOneKills =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricH1ZetaSubOneKills", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IntegralLocallyConstCochainModPow\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FiniteGaloisApproximation\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SmallTracesSubgroupGaloisTowerTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5

noncomputable section

namespace GlobalTheory.K5.TateGeo

variable {p : ℕ} [Fact p.Prime] {Ω : Type} [Field Ω] [Algebra (O0 p) Ω]

theorem cong_refl' (k : ℕ) (x : Ω) : Cong (p := p) k x x :=
  ⟨0, isIntegral_zero, by simp⟩

theorem cong_symm' {k : ℕ} {x y : Ω} (h : Cong (p := p) k x y) : Cong (p := p) k y x := by
  obtain ⟨z, hz, e⟩ := h
  exact ⟨-z, hz.neg, by rw [mul_neg, ← e]; ring⟩

theorem cong_trans' {k : ℕ} {x y w : Ω} (h1 : Cong (p := p) k x y) (h2 : Cong (p := p) k y w) : Cong (p := p) k x w := by
  obtain ⟨z, hz, e⟩ := h1
  obtain ⟨z', hz', e'⟩ := h2
  exact ⟨z + z', hz.add hz', by rw [mul_add, ← e, ← e']; ring⟩

theorem cong_add' {k : ℕ} {x y x' y' : Ω} (h1 : Cong (p := p) k x y) (h2 : Cong (p := p) k x' y') :
    Cong (p := p) k (x + x') (y + y') := by
  obtain ⟨z, hz, e⟩ := h1
  obtain ⟨z', hz', e'⟩ := h2
  exact ⟨z + z', hz.add hz', by rw [mul_add, ← e, ← e']; ring⟩

theorem cong_mul_left' {k : ℕ} {x y : Ω} (a : Ω) (ha : IsInt (p := p) a) (h : Cong (p := p) k x y) :
    Cong (p := p) k (a * x) (a * y) := by
  obtain ⟨z, hz, e⟩ := h
  exact ⟨a * z, ha.mul hz, by rw [← mul_sub, e]; ring⟩

theorem cong_sum' {k : ℕ} {ι : Type*} (s : Finset ι) (f f' : ι → Ω)
    (h : ∀ i ∈ s, Cong (p := p) k (f i) (f' i)) : Cong (p := p) k (∑ i ∈ s, f i) (∑ i ∈ s, f' i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using cong_refl' (p := p) k (0 : Ω)
  | insert a s ha ih =>
    rw [Finset.sum_insert ha, Finset.sum_insert ha]
    exact cong_add' (h a (Finset.mem_insert_self a s)) (ih fun i hi => h i (Finset.mem_insert_of_mem hi))

theorem cong_of_eq' {k : ℕ} {x y : Ω} (h : x = y) : Cong (p := p) k x y := h ▸ cong_refl' k x

theorem mem_geoTop_iff (T : Tower p Ω) (g : Gal p Ω) :
    g ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n ↔
      (∀ x : Ω, IsAlgZp p x → g x = x) ∧ ∀ n, g (T.ζ n) = T.ζ n ∧ g (T.qq n) = T.qq n := by
  rw [Subgroup.mem_inf, Subgroup.mem_iInf]
  refine and_congr Iff.rfl (forall_congr' fun n => ?_)
  rw [Gn, Subgroup.mem_inf, MulAction.mem_stabilizer_iff, MulAction.mem_stabilizer_iff]
  rfl

theorem exists_moved (T : Tower p Ω) {g : Gal p Ω} (hg : g ∉ Ggeo p Ω ⊓ ⨅ n, Gn T n) :
    ∃ a : Ω, g a ≠ a ∧ ∀ h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n, h a = a := by
  rw [mem_geoTop_iff] at hg
  by_contra hno
  push_neg at hno
  apply hg
  refine ⟨fun x hx => ?_, fun n => ⟨?_, ?_⟩⟩
  · by_contra hne
    obtain ⟨h, hh, hx'⟩ := hno x hne
    exact hx' (((mem_geoTop_iff T h).mp hh).1 x hx)
  · by_contra hne
    obtain ⟨h, hh, hx'⟩ := hno _ hne
    exact hx' (((mem_geoTop_iff T h).mp hh).2 n).1
  · by_contra hne
    obtain ⟨h, hh, hx'⟩ := hno _ hne
    exact hx' (((mem_geoTop_iff T h).mp hh).2 n).2

theorem uniform_lc_on (hΩ : IsClo p Ω) (T : Tower p Ω) {k : ℕ} {c : Gal p Ω → Ω}
    (hc : IntegralLocallyConstCochainModPow k (Ggeo p Ω ⊓ ⨅ n, Gn T n) c) :
    ∃ S₀ : Finset Ω, ∀ g ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n, ∀ h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n,
      (∀ x ∈ S₀, h x = g x) → Cong (p := p) k (c h) (c g) := by
  classical
  set H := Ggeo p Ω ⊓ ⨅ n, Gn T n with hH
  have hS : ∀ g : Gal p Ω, ∃ S : Finset Ω,
      (g ∈ H → ∀ h ∈ H, (∀ x ∈ S, h x = g x) → Cong (p := p) k (c h) (c g)) ∧
      (g ∉ H → ∀ h ∈ H, ¬ ∀ x ∈ S, h x = g x) := by
    intro g
    by_cases hg : g ∈ H
    · obtain ⟨S, hS⟩ := hc.2 g hg
      exact ⟨S, fun _ => hS, fun h => (h hg).elim⟩
    · obtain ⟨a, hga, ha⟩ := exists_moved T hg
      refine ⟨{a}, fun h => (hg h).elim, fun _ h hh hagree => ?_⟩
      have := hagree a (Finset.mem_singleton_self a)
      rw [ha h hh] at this
      exact hga this.symm
  choose S hS1 hS2 using hS
  obtain ⟨F, hF⟩ := _root_.GlobalTheory.K5.gal_finite_subcover p Ω hΩ S
  refine ⟨F.biUnion S, fun g hg h hh hgh => ?_⟩
  obtain ⟨g0, hg0F, hg0⟩ := hF g
  have hg0H : g0 ∈ H := by
    by_contra hn
    exact hS2 g0 hn g hg hg0
  have h1 : Cong (p := p) k (c g) (c g0) := hS1 g0 hg0H g hg hg0
  have h2 : Cong (p := p) k (c h) (c g0) := hS1 g0 hg0H h hh (fun x hx => by
    rw [hgh x (Finset.mem_biUnion.mpr ⟨g0, hg0F, hx⟩), hg0 x hx])
  exact cong_trans' h2 (cong_symm' h1)

theorem uniform_lc_on_int (hΩ : IsClo p Ω) (T : Tower p Ω) {k : ℕ} {c : Gal p Ω → Ω}
    (hc : IntegralLocallyConstCochainModPow k (Ggeo p Ω ⊓ ⨅ n, Gn T n) c) :
    ∃ S₁ : Finset Ω, (∀ s ∈ S₁, IsInt (p := p) s) ∧ ∀ g ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n,
      ∀ h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n, (∀ x ∈ S₁, h x = g x) → Cong (p := p) k (c h) (c g) := by
  classical
  obtain ⟨S₀, hS₀⟩ := uniform_lc_on hΩ T hc
  have hm : ∀ x : Ω, ∃ a : O0 p, a ≠ 0 ∧ IsInt (p := p) (a • x) := fun x => by
    obtain ⟨a, ha, hi⟩ := (hΩ.alg.isAlgebraic x).exists_integral_multiple
    exact ⟨a, ha, hi⟩
  choose a ha hai using hm
  refine ⟨S₀.image (fun x => a x • x), ?_, fun g hg h hh hgh => hS₀ g hg h hh fun x hx => ?_⟩
  · intro s hs
    obtain ⟨x, -, rfl⟩ := Finset.mem_image.mp hs
    exact hai x
  · have e := hgh (a x • x) (Finset.mem_image_of_mem _ hx)
    rw [Algebra.smul_def, map_mul, map_mul, AlgEquiv.commutes, AlgEquiv.commutes] at e
    have hne : algebraMap (O0 p) Ω (a x) ≠ 0 := by
      intro h0
      exact ha x (hΩ.inj (by rw [h0, map_zero]))
    exact mul_left_cancel₀ hne e

theorem h1_killed_by_zeta_sub_one_geo : ∀ (p : ℕ) [Fact p.Prime], p ≠ 2 → ∀ (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
  ∀ (T : Tower p Ω) (k j : ℕ), 1 ≤ j → ∀ c : Gal p Ω → Ω, IntegralLocallyConstCochainModPow k (Ggeo p Ω ⊓ ⨅ n, Gn T n) c →
  (∀ g ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n, ∀ h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n, Cong (p := p) k (c (g * h)) (c g + g (c h))) →
  Cob1 k (Ggeo p Ω ⊓ ⨅ n, Gn T n) (fun g => (T.ζ j - 1) * c g) := by
  intro p _ hp2 Ω _ _ hΩ T k j hj c hc hcoc
  classical
  set H := Ggeo p Ω ⊓ ⨅ n, Gn T n with hHdef
  obtain ⟨S₁, hS₁int, hS₁⟩ := uniform_lc_on_int hΩ T hc
  obtain ⟨y, E, hy, hEH, hu, hsum⟩ :=
    _root_.GlobalTheory.K5.small_traces_subgroup p Ω hp2 hΩ T H inf_le_right S₁ j hj
  set x : Ω := ∑ g ∈ E, g y * c g with hx
  have hxint : IsInt (p := p) x := by
    refine IsIntegral.sum _ fun g hg => ?_
    exact (IsIntegral.map g.toAlgHom hy).mul (hc.1 g (hEH g hg))
  refine ⟨-x, hxint.neg, fun h hh => ?_⟩
  have hσex : ∀ g ∈ E, ∃ g' ∈ E, (h * g) y = g' y ∧ ∀ s ∈ S₁, (h * g) s = g' s := fun g hg => by
    obtain ⟨g', ⟨hg'E, h1, h2⟩, -⟩ := hu (h * g) (H.mul_mem hh (hEH g hg))
    exact ⟨g', hg'E, h1, h2⟩
  choose! σ hσE hσy hσS using hσex
  have hσinj : Set.InjOn σ E := by
    intro g1 hg1 g2 hg2 he
    have ey : g1 y = g2 y := by
      have := (hσy g1 hg1).trans ((congrArg (fun f : Gal p Ω => f y) he).trans (hσy g2 hg2).symm)
      simpa using this
    have es : ∀ s ∈ S₁, g1 s = g2 s := fun s hs => by
      have := (hσS g1 hg1 s hs).trans ((congrArg (fun f : Gal p Ω => f s) he).trans (hσS g2 hg2 s hs).symm)
      simpa using this
    exact (hu g1 (hEH g1 hg1)).unique ⟨hg1, rfl, fun _ _ => rfl⟩ ⟨hg2, ey, es⟩
  have himg : E.image σ = E :=
    Finset.eq_of_subset_of_card_le (fun g' hg' => by
      obtain ⟨g, hg, rfl⟩ := Finset.mem_image.mp hg'
      exact hσE g hg) (by rw [Finset.card_image_of_injOn hσinj])
  have hperm : ∑ g ∈ E, σ g y * c (σ g) = x := by
    rw [hx, ← Finset.sum_image (f := fun g' => g' y * c g') hσinj, himg]
  have hhx : h x = ∑ g ∈ E, h (g y) * h (c g) := by
    set_option synthInstance.maxHeartbeats 100000 in
      rw [hx, map_sum]; simp only [map_mul]
  have hζ : h (T.ζ j) = T.ζ j := (((mem_geoTop_iff T h).mp hh).2 j).1
  have hsumh : ∑ g ∈ E, h (g y) = T.ζ j - 1 := by
    set_option synthInstance.maxHeartbeats 100000 in
      rw [← map_sum, hsum, map_sub, map_one, hζ]
  have step : ∀ g ∈ E, Cong (p := p) k (h (g y) * h (c g)) (σ g y * c (σ g) - h (g y) * c h) := by
    intro g hg
    have hgH := hEH g hg
    have c1 : Cong (p := p) k (h (c g)) (c (h * g) - c h) := by
      obtain ⟨z, hz, e⟩ := hcoc h hh g hgH
      exact ⟨-z, hz.neg, by rw [mul_neg, ← e]; ring⟩
    have c2 : Cong (p := p) k (c (h * g)) (c (σ g)) :=
      hS₁ (σ g) (hEH _ (hσE g hg)) (h * g) (H.mul_mem hh hgH) (hσS g hg)
    have c3 : Cong (p := p) k (c (h * g) - c h) (c (σ g) - c h) := by
      obtain ⟨z, hz, e⟩ := c2
      exact ⟨z, hz, by rw [← e]; ring⟩
    have := cong_mul_left' (h (g y)) (IsIntegral.map h.toAlgHom (IsIntegral.map g.toAlgHom hy))
      (cong_trans' c1 c3)
    refine cong_trans' this (cong_of_eq' ?_)
    have ey : h (g y) = σ g y := by rw [← hσy g hg]; rfl
    rw [ey]; ring
  have total := cong_sum' E _ _ step
  rw [← hhx, Finset.sum_sub_distrib, hperm, ← Finset.sum_mul, hsumh] at total
  obtain ⟨z, hz, e⟩ := total
  refine ⟨z, hz, ?_⟩
  show (T.ζ j - 1) * c h - (h (-x) - -x) = _
  rw [map_neg, ← e]; ring

end GlobalTheory.K5.TateGeo
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricH1ZetaSubOneKills =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQRootPolyOfFixedGeometricStabilizer =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQRootPolyOfFixedGeometricStabilizer", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.FieldTheory.Galois.Infinite\n\n"}
section -- clump:auto
@[expose] public section

open Polynomial IntermediateField

namespace GlobalTheory.K5.Span

variable (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω]

def baseField : Subfield Ω :=
  Subfield.closure (Set.range (algebraMap (O0 p) Ω) ∪ {x | IsAlgZp (p := p) x})

variable {p Ω}

theorem algebraMap_mem_baseField (a : O0 p) : algebraMap (O0 p) Ω a ∈ baseField p Ω :=
  Subfield.subset_closure (Or.inl ⟨a, rfl⟩)

theorem ggeo_fix_baseField {g : Gal p Ω} (hg : g ∈ Ggeo (p := p) Ω) {x : Ω}
    (hx : x ∈ baseField p Ω) :
    g x = x := by
  have hle : baseField p Ω ≤ RingHom.eqLocusField (g : Ω →+* Ω) (RingHom.id Ω) := by
    refine Subfield.closure_le.2 ?_
    rintro z (⟨a, rfl⟩ | hz)
    · show g (algebraMap (O0 p) Ω a) = algebraMap (O0 p) Ω a
      exact g.commutes a
    · show g z = z
      exact hg z hz
  exact hle hx

noncomputable def toGal (σ : Ω ≃ₐ[baseField p Ω] Ω) : Gal p Ω :=
  AlgEquiv.ofRingEquiv (f := σ.toRingEquiv) fun a =>
    σ.commutes (⟨algebraMap (O0 p) Ω a, algebraMap_mem_baseField a⟩ : baseField p Ω)

theorem toGal_apply (σ : Ω ≃ₐ[baseField p Ω] Ω) (x : Ω) : toGal σ x = σ x := rfl

theorem isAlgebraic_baseField (h : IsClo p Ω) : Algebra.IsAlgebraic (baseField p Ω) Ω := by
  haveI := h.alg
  refine ⟨fun x => ?_⟩
  obtain ⟨P, hP0, hPx⟩ := Algebra.IsAlgebraic.isAlgebraic (R := O0 p) x
  let φ : O0 p →+* baseField p Ω :=
    (algebraMap (O0 p) Ω).codRestrict (baseField p Ω) algebraMap_mem_baseField
  have hφ : Function.Injective φ := fun a b hab => h.inj (congrArg Subtype.val hab)
  refine ⟨P.map φ, (Polynomial.map_ne_zero_iff hφ).2 hP0, ?_⟩
  rw [aeval_def, eval₂_map]
  have : (algebraMap (baseField p Ω) Ω).comp φ = algebraMap (O0 p) Ω := by
    ext a; rfl
  rw [this, ← aeval_def, hPx]

end GlobalTheory.K5.Span

open GlobalTheory.K5.Span in
open GlobalTheory.K5 GlobalTheory.K5.Span in
theorem GlobalTheory.K5.span_fixed_ggeo_stab : ∀ (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
  ∀ (T : Tower p Ω) (N : ℕ) (y : Ω), (∀ g ∈ Ggeo (p := p) Ω ⊓ MulAction.stabilizer (Gal p Ω) (T.qq N), g y = y) →
  ∃ c : ℕ → Ω, (∀ j, ∀ g ∈ Ggeo (p := p) Ω, g (c j) = c j) ∧
    y = ∑ j ∈ Finset.range (p ^ N), c j * T.qq N ^ j := by
  intro p _ Ω _ _ h T N y hy
  haveI : CharZero Ω := Basic.charZero_of_isClo h
  haveI := h.clo
  set L := baseField p Ω
  haveI : CharZero L := inferInstance
  haveI : Algebra.IsAlgebraic L Ω := isAlgebraic_baseField h
  haveI : IsAlgClosure L Ω := ⟨h.clo, inferInstance⟩
  haveI : IsGalois L Ω := IsAlgClosure.isGalois L Ω
  set M : IntermediateField L Ω := IntermediateField.adjoin L {T.qq N}
  have hyM : y ∈ M := by
    rw [← InfiniteGalois.fixedField_fixingSubgroup M, mem_fixedField_iff]
    intro σ hσ
    have hq : σ (T.qq N) = T.qq N :=
      (mem_fixingSubgroup_iff M σ).1 hσ _ (mem_adjoin_simple_self L _)
    refine hy (toGal σ) (Subgroup.mem_inf.2 ⟨fun x hx => ?_, ?_⟩)
    · exact σ.commutes (⟨x, Subfield.subset_closure (Or.inr hx)⟩ : L)
    · rw [MulAction.mem_stabilizer_iff, AlgEquiv.smul_def, toGal_apply, hq]
  have hyA : y ∈ (aeval (T.qq N) : L[X] →ₐ[L] Ω).range := by
    rw [← Algebra.adjoin_singleton_eq_range_aeval,
      ← adjoin_simple_toSubalgebra_of_isAlgebraic (Algebra.IsAlgebraic.isAlgebraic _)]
    exact hyM
  obtain ⟨P, hP⟩ := hyA
  set q0 : L := ⟨algebraMap (O0 p) Ω (qO p), algebraMap_mem_baseField _⟩
  set Q : L[X] := X ^ (p ^ N) - C q0
  have hpN : p ^ N ≠ 0 := pow_ne_zero _ (Fact.out : p.Prime).ne_zero
  have hQm : Q.Monic := monic_X_pow_sub_C _ hpN
  have hQd : Q.natDegree = p ^ N := natDegree_X_pow_sub_C _
  have hQ1 : Q ≠ 1 := by
    intro e; rw [e, natDegree_one] at hQd; exact hpN hQd.symm
  have hQq : aeval (T.qq N) Q = 0 := by
    simp only [Q, map_sub, map_pow, aeval_X, aeval_C, Basic.qq_pow]
    exact sub_self _
  set R := P %ₘ Q
  have hRd : R.natDegree < p ^ N := hQd ▸ natDegree_modByMonic_lt P hQm hQ1
  have hR : aeval (T.qq N) R = y := by
    have e := congrArg (aeval (T.qq N)) (modByMonic_add_div P Q)
    rw [map_add (f := _), map_mul, hQq, zero_mul, add_zero] at e
    rw [e]; exact hP
  refine ⟨fun j => ((R.coeff j : L) : Ω), fun j g hg => ggeo_fix_baseField hg (R.coeff j).2, ?_⟩
  rw [← hR, aeval_eq_sum_range' hRd]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [Algebra.smul_def]
  rfl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQRootPolyOfFixedGeometricStabilizer =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsIntegralCoeffsOfGeometricFixedQExpansion =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsIntegralCoeffsOfGeometricFixedQExpansion", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.TowerParameterPowersOrthogonalGeometricInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5

namespace GlobalTheory.K5.OrthDecomp

theorem orth : ∀ (p : ℕ) [Fact p.Prime] (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
    ∀ (T : Tower p Ω) (N : ℕ) (c : ℕ → Ω), (∀ j, ∀ g ∈ Ggeo (p := p) Ω, g (c j) = c j) →
      IsInt (p := p) (∑ j ∈ Finset.range (p ^ N), c j * T.qq N ^ j) →
        ∀ j < p ^ N, IsInt (p := p) (c j) :=
  GlobalTheory.K5.Orth.orth

end GlobalTheory.K5.OrthDecomp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsIntegralCoeffsOfGeometricFixedQExpansion =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.KummerTowerIntegerDecompositionByTau =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.KummerTowerIntegerDecompositionByTau", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsQRootPolyOfFixedGeometricStabilizer\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsIntegralCoeffsOfGeometricFixedQExpansion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5

noncomputable section

namespace GlobalTheory.K5.Decomp

variable {p : ℕ} [hp : Fact p.Prime] {Ω : Type} [Field Ω] [Algebra (O0 p) Ω]

theorem zeta_pow_eq_one' (T : Tower p Ω) (m : ℕ) : T.ζ (m + 1) ^ p ^ m = T.ζ 1 := by
  induction m with
  | zero => simp
  | succ m ih => rw [pow_succ', pow_mul, T.ζpow, ih]

theorem exists_pow_eq_zeta_one (T : Tower p Ω) (N j : ℕ) (hj0 : 0 < j) (hjN : j < p ^ N) :
    ∃ e : ℕ, (T.ζ N ^ j) ^ e = T.ζ 1 := by
  have hN : N ≠ 0 := by rintro rfl; simp at hjN; omega
  obtain ⟨M, rfl⟩ : ∃ M, N = M + 1 := ⟨N - 1, by omega⟩
  have hglt : Nat.gcd j (p ^ (M + 1)) < p ^ (M + 1) :=
    lt_of_le_of_lt (Nat.le_of_dvd hj0 (Nat.gcd_dvd_left _ _)) hjN
  obtain ⟨m, -, hm⟩ := Nat.exists_mul_mod_eq_gcd hglt
  obtain ⟨a, ha, hga⟩ := (Nat.dvd_prime_pow hp.out).1 (Nat.gcd_dvd_right j (p ^ (M + 1)))
  have haM : a ≤ M := by
    by_contra h
    have : a = M + 1 := by omega
    subst this
    have h2 : p ^ (M + 1) ∣ j := hga ▸ Nat.gcd_dvd_left _ _
    exact absurd (Nat.le_of_dvd hj0 h2) (by omega)
  obtain ⟨t, ht⟩ : Nat.gcd j (p ^ (M + 1)) ∣ p ^ M := hga ▸ pow_dvd_pow p haM
  refine ⟨m * t, ?_⟩
  rw [← pow_mul, ← zeta_pow_eq_one' T M, Basic.zeta_pow_eq_iff]
  have h1 : j * m ≡ Nat.gcd j (p ^ (M + 1)) [MOD p ^ (M + 1)] := by
    unfold Nat.ModEq; rw [hm, Nat.mod_eq_of_lt hglt]
  have h2 := h1.mul_right t
  rw [← ht] at h2
  rw [← mul_assoc]; exact h2

theorem isInt_zeta (T : Tower p Ω) (N : ℕ) : IsInt (p := p) (T.ζ N) := by
  refine IsIntegral.of_pow (pow_pos hp.out.pos N) ?_
  rw [(T.prim N).pow_eq_one]; exact isIntegral_one

theorem ggeo_zeta (T : Tower p Ω) (N : ℕ) {g : Gal p Ω} (hg : g ∈ Ggeo p Ω) : g (T.ζ N) = T.ζ N := by
  apply hg
  refine ⟨Polynomial.X ^ (p ^ N) - 1, Polynomial.X_pow_sub_C_ne_zero (pow_pos hp.out.pos N) 1, ?_⟩
  simp [(T.prim N).pow_eq_one]

end GlobalTheory.K5.Decomp

namespace GlobalTheory.K5.Decomp

variable {p : ℕ} [hp : Fact p.Prime] {Ω : Type} [Field Ω] [Algebra (O0 p) Ω]

theorem isInt_qq (T : Tower p Ω) (N : ℕ) : IsInt (p := p) (T.qq N) := by
  refine IsIntegral.of_pow (pow_pos hp.out.pos N) ?_
  rw [Basic.qq_pow]; exact isIntegral_algebraMap

theorem exists_mult (T : Tower p Ω) (N j : ℕ) (hj0 : 0 < j) (hjN : j < p ^ N) :
    ∃ s : Ω, IsInt (p := p) s ∧ (∀ g ∈ Ggeo p Ω, g s = s) ∧ s * (T.ζ N ^ j - 1) = T.ζ 1 - 1 := by
  obtain ⟨e, he⟩ := exists_pow_eq_zeta_one T N j hj0 hjN
  refine ⟨∑ i ∈ Finset.range e, (T.ζ N ^ j) ^ i, ?_, ?_, ?_⟩
  · exact IsIntegral.sum _ fun i _ => ((isInt_zeta T N).pow j).pow i
  · intro g hg

    simp only [map_sum, map_pow, ggeo_zeta T N hg]
  · rw [geom_sum_mul, he]

end GlobalTheory.K5.Decomp


open GlobalTheory.K5.Decomp in
theorem GlobalTheory.K5.Decomp.decomp : ∀ (p : ℕ) [Fact p.Prime], p ≠ 2 → ∀ (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
  ∀ (T : Tower p Ω) (τ : Gal p Ω), τ ∈ Ggeo p Ω → (∀ n, τ (T.qq n) = T.ζ n * T.qq n) →
  ∀ (N : ℕ) (y : Ω), IsInt (p := p) y → (∀ g ∈ Ggeo p Ω ⊓ MulAction.stabilizer (Gal p Ω) (T.qq N), g y = y) →
  ∃ o w : Ω, IsInt (p := p) o ∧ (∀ g ∈ Ggeo p Ω, g o = o) ∧ IsInt (p := p) w ∧
    (∀ g ∈ Ggeo p Ω ⊓ MulAction.stabilizer (Gal p Ω) (T.qq N), g w = w) ∧
    (T.ζ 1 - 1) * y = (T.ζ 1 - 1) * o + (τ w - w) := by
  intro p _ _ Ω _ _ hΩ T τ hτ hτq N y hy hfix
  obtain ⟨c, hc, rfl⟩ := _root_.GlobalTheory.K5.span_fixed_ggeo_stab p Ω hΩ T N y hfix
  have hci := _root_.GlobalTheory.K5.OrthDecomp.orth p Ω hΩ T N c hc hy
  have hpos : 0 < p ^ N := pow_pos (Fact.out : p.Prime).pos N
  have hs : ∀ j, ∃ s : Ω, IsInt (p := p) s ∧ (∀ g ∈ Ggeo p Ω, g s = s) ∧
      (0 < j → j < p ^ N → s * (T.ζ N ^ j - 1) = T.ζ 1 - 1) := by
    intro j
    by_cases h : 0 < j ∧ j < p ^ N
    · obtain ⟨s, h1, h2, h3⟩ := exists_mult T N j h.1 h.2
      exact ⟨s, h1, h2, fun _ _ => h3⟩
    · exact ⟨0, isIntegral_zero, fun g _ => map_zero g, fun a b => absurd ⟨a, b⟩ h⟩
  choose s hsi hsg hse using hs
  refine ⟨c 0, ∑ j ∈ Finset.range (p ^ N), s j * c j * T.qq N ^ j, hci 0 hpos, hc 0, ?_, ?_, ?_⟩
  · refine IsIntegral.sum _ fun j hj => ?_
    exact ((hsi j).mul (hci j (Finset.mem_range.1 hj))).mul ((isInt_qq T N).pow j)
  · intro g hg
    have hg1 := (Subgroup.mem_inf.1 hg).1
    have hg2 : g (T.qq N) = T.qq N := (Subgroup.mem_inf.1 hg).2

    simp only [map_sum, map_mul, map_pow, hsg _ g hg1, hc _ g hg1, hg2]
  · obtain ⟨M, hM⟩ : ∃ M, p ^ N = M + 1 := ⟨p ^ N - 1, by omega⟩
    have key : ∀ i < M, s (i + 1) * (T.ζ N ^ (i + 1) - 1) = T.ζ 1 - 1 := fun i hi =>
      hse (i + 1) (Nat.succ_pos i) (by omega)

    simp only [map_sum, map_mul, map_pow, hsg _ τ hτ, hc _ τ hτ, hτq N]
    rw [hM, Finset.sum_range_succ', Finset.sum_range_succ', Finset.sum_range_succ']
    have : ∀ i ∈ Finset.range M, s (i + 1) * c (i + 1) * (T.ζ N * T.qq N) ^ (i + 1) =
        s (i + 1) * c (i + 1) * T.qq N ^ (i + 1) + (T.ζ 1 - 1) * (c (i + 1) * T.qq N ^ (i + 1)) := by
      intro i hi
      rw [← key i (Finset.mem_range.1 hi)]; ring
    rw [Finset.sum_congr rfl this, Finset.sum_add_distrib, ← Finset.mul_sum]
    ring
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.KummerTowerIntegerDecompositionByTau =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.KummerCocycleTwistedCoboundary =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.KummerCocycleTwistedCoboundary", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IntegralLocallyConstCochainModPow\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsFiniteLevelApproxOfGeometricInvariantModPo\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsTopologicalGeneratorTauTower\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricGaloisCoboundaryCongZeroModPrimePow\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricGaloisDenseTauPowMulFixingQRoots\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricH1ZetaSubOneKillsStatement\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.KummerTowerIntegerDecompositionByTau\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.InvariantsFromFiniteLevel\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.SmallTracesSubgroupGaloisTowerTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5

namespace GlobalTheory.K5.TopGeo

section
variable {p : ℕ} [Fact p.Prime] {Ω : Type} [Field Ω] [Algebra (O0 p) Ω]

theorem isInt_natCast (n : ℕ) : IsInt (p := p) (n : Ω) := by
  have h := isIntegral_algebraMap (R := O0 p) (A := Ω) (x := (n : O0 p))
  rwa [map_natCast] at h

theorem isInt_map (g : Gal p Ω) {x : Ω} (hx : IsInt (p := p) x) : IsInt (p := p) (g x) := hx.map g

alias cong_refl := _root_.GlobalTheory.K5.TateGeo.cong_refl'

alias cong_add := _root_.GlobalTheory.K5.TateGeo.cong_add'

theorem cong_sub {k : ℕ} {x y x' y' : Ω} (h1 : Cong (p := p) k x y) (h2 : Cong (p := p) k x' y') :
    Cong (p := p) k (x - x') (y - y') := by
  obtain ⟨z1, hz1, e1⟩ := h1
  obtain ⟨z2, hz2, e2⟩ := h2
  exact ⟨z1 - z2, hz1.sub hz2, by rw [mul_sub, ← e1, ← e2]; ring⟩

theorem cong_mul_left {k : ℕ} {c x y : Ω} (hc : IsInt (p := p) c) (h : Cong (p := p) k x y) :
    Cong (p := p) k (c * x) (c * y) := by
  obtain ⟨z, hz, e⟩ := h
  exact ⟨c * z, hc.mul hz, by rw [← mul_sub, e]; ring⟩

theorem cong_map (g : Gal p Ω) {k : ℕ} {x y : Ω} (h : Cong (p := p) k x y) : Cong (p := p) k (g x) (g y) := by
  obtain ⟨z, hz, e⟩ := h
  refine ⟨g z, isInt_map g hz, ?_⟩
  rw [← map_sub, e, map_mul, map_pow, map_natCast]

theorem cong_congr {k : ℕ} {x y x' y' : Ω} (hx : x = x') (hy : y = y') (h : Cong (p := p) k x y) :
    Cong (p := p) k x' y' := hx ▸ hy ▸ h

theorem cong_zero_k {x y : Ω} (h : IsInt (p := p) (x - y)) : Cong (p := p) 0 x y := ⟨x - y, h, by simp⟩

theorem fix_pi (T : Tower p Ω) {g : Gal p Ω} (hg : g ∈ Ggeo p Ω) : g (T.ζ 1 - 1) = T.ζ 1 - 1 := by
  rw [map_sub, map_one, _root_.GlobalTheory.K5.Decomp.ggeo_zeta T 1 hg]

theorem isInt_pi (T : Tower p Ω) : IsInt (p := p) (T.ζ 1 - 1) := (_root_.GlobalTheory.K5.Decomp.isInt_zeta T 1).sub isIntegral_one

theorem p_eq (T : Tower p Ω) : ∃ r : Ω, IsInt (p := p) r ∧ (∀ g ∈ Ggeo p Ω, g r = r) ∧
    (p : Ω) = (T.ζ 1 - 1) * r := by
  have hζ : IsPrimitiveRoot (T.ζ 1) p := by simpa using T.prim 1
  refine ⟨-∑ i ∈ Finset.range p, ∑ m ∈ Finset.range i, T.ζ 1 ^ m, ?_, ?_, ?_⟩
  · exact (IsIntegral.sum _ fun i _ => IsIntegral.sum _ fun m _ => (_root_.GlobalTheory.K5.Decomp.isInt_zeta T 1).pow m).neg
  · intro g hg

    simp only [map_neg, map_sum, map_pow, _root_.GlobalTheory.K5.Decomp.ggeo_zeta T 1 hg]
  · have h1 := hζ.geom_sum_eq_zero (Fact.out : p.Prime).one_lt
    rw [mul_neg, Finset.mul_sum]
    have : ∀ i ∈ Finset.range p, (T.ζ 1 - 1) * ∑ m ∈ Finset.range i, T.ζ 1 ^ m = T.ζ 1 ^ i - 1 :=
      fun i _ => by rw [mul_comm, geom_sum_mul]
    rw [Finset.sum_congr rfl this, Finset.sum_sub_distrib, h1]
    simp

theorem isUnit_qO : IsUnit (qO p) := by
  unfold qO
  apply IsUnit.map
  refine IsUnit.of_mul_eq_one (HahnSeries.single (-1 : ℤ) (1 : ℤ_[p])) ?_
  rw [HahnSeries.single_mul_single]
  try simp

theorem qq_pow (T : Tower p Ω) : ∀ n, T.qq n ^ (p ^ n) = T.qq 0
  | 0 => by simp
  | n + 1 => by rw [pow_succ, pow_mul', T.qpow, qq_pow T n]

theorem qq_ne_zero (T : Tower p Ω) (n : ℕ) : T.qq n ≠ 0 := by
  intro h
  have h0 : T.qq 0 ≠ 0 := by
    rw [T.q0]; exact (isUnit_qO.map (algebraMap (O0 p) Ω)).ne_zero
  apply h0
  rw [← qq_pow T n, h, zero_pow (pow_ne_zero _ (Fact.out : p.Prime).ne_zero)]

theorem zpow_val (T : Tower p Ω) (k n : ℕ) : T.ζ k ^ ((n : ZMod (p ^ k)).val) = T.ζ k ^ n := by
  rw [ZMod.val_natCast]
  conv_rhs => rw [← Nat.mod_add_div n (p ^ k), pow_add, pow_mul, (T.prim k).pow_eq_one, one_pow, mul_one]

theorem kum_eq (T : Tower p Ω) {k : ℕ} {H : Subgroup (Gal p Ω)} {κ : Gal p Ω → ZMod (p ^ k)}
    (hκ : IsKum T k H (T.qq k) κ) {g : Gal p Ω} (hg : g ∈ H) (x : ZMod (p ^ k))
    (hx : g (T.qq k) = T.ζ k ^ x.val * T.qq k) : κ g = x := by
  haveI : NeZero (p ^ k) := ⟨pow_ne_zero _ (Fact.out : p.Prime).ne_zero⟩
  have h := (hκ g hg).symm.trans hx
  have h2 := mul_right_cancel₀ (qq_ne_zero T k) h
  exact ZMod.val_injective _ ((T.prim k).pow_inj (ZMod.val_lt _) (ZMod.val_lt _) h2)

theorem kum_add (T : Tower p Ω) {k : ℕ} {κ : Gal p Ω → ZMod (p ^ k)}
    (hκ : IsKum T k (Ggeo p Ω) (T.qq k) κ) {g h : Gal p Ω} (hg : g ∈ Ggeo p Ω) (hh : h ∈ Ggeo p Ω) :
    κ (g * h) = κ g + κ h := by
  haveI : NeZero (p ^ k) := ⟨pow_ne_zero _ (Fact.out : p.Prime).ne_zero⟩
  apply kum_eq T hκ (mul_mem hg hh)
  rw [AlgEquiv.mul_apply, hκ h hh, map_mul, map_pow, _root_.GlobalTheory.K5.Decomp.ggeo_zeta T k hg, hκ g hg]
  have : (κ g + κ h) = (((κ g).val + (κ h).val : ℕ) : ZMod (p ^ k)) := by
    push_cast [ZMod.natCast_zmod_val]; rfl
  rw [this, zpow_val, pow_add]
  ring

theorem cong_val_add {k : ℕ} (a b : ZMod (p ^ k)) {o : Ω} (ho : IsInt (p := p) o) :
    Cong (p := p) k (o * ((a + b).val : Ω)) (o * (a.val : Ω) + o * (b.val : Ω)) := by
  haveI : NeZero (p ^ k) := ⟨pow_ne_zero _ (Fact.out : p.Prime).ne_zero⟩
  rw [ZMod.val_add]
  refine ⟨-(o * (((a.val + b.val) / p ^ k : ℕ) : Ω)), (ho.mul (isInt_natCast _)).neg, ?_⟩
  have e := Nat.mod_add_div (a.val + b.val) (p ^ k)
  have e' : (((a.val + b.val) % p ^ k : ℕ) : Ω) =
      (a.val : Ω) + b.val - (p : Ω) ^ k * (((a.val + b.val) / p ^ k : ℕ) : Ω) := by
    rw [eq_sub_iff_add_eq]
    have e2 := congrArg (Nat.cast : ℕ → Ω) e
    push_cast at e2
    exact e2
  rw [e']; ring

end
end GlobalTheory.K5.TopGeo

namespace GlobalTheory.K5.TopGeo

section
variable {p : ℕ} [Fact p.Prime] {Ω : Type} [Field Ω] [Algebra (O0 p) Ω]

theorem mem_Hi {T : Tower p Ω} {h : Gal p Ω} (hh : h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n) :
    h ∈ Ggeo p Ω ∧ ∀ n, h (T.qq n) = T.qq n := by
  refine ⟨(Subgroup.mem_inf.1 hh).1, fun n => ?_⟩
  have := (Subgroup.mem_inf.1 ((Subgroup.mem_iInf.1 (Subgroup.mem_inf.1 hh).2) n)).2
  exact MulAction.mem_stabilizer_iff.1 this

theorem mem_Hi_of {T : Tower p Ω} {h : Gal p Ω} (hG : h ∈ Ggeo p Ω) (hq : ∀ n, h (T.qq n) = T.qq n) :
    h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n :=
  Subgroup.mem_inf.2 ⟨hG, Subgroup.mem_iInf.2 fun n => Subgroup.mem_inf.2
    ⟨MulAction.mem_stabilizer_iff.2 (_root_.GlobalTheory.K5.Decomp.ggeo_zeta T n hG), MulAction.mem_stabilizer_iff.2 (hq n)⟩⟩

theorem mem_HN_of {T : Tower p Ω} {h : Gal p Ω} (hh : h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n) (N : ℕ) :
    h ∈ Ggeo p Ω ⊓ MulAction.stabilizer (Gal p Ω) (T.qq N) :=
  Subgroup.mem_inf.2 ⟨(mem_Hi hh).1, MulAction.mem_stabilizer_iff.2 ((mem_Hi hh).2 N)⟩

theorem kum_Hi (T : Tower p Ω) {k : ℕ} {κ : Gal p Ω → ZMod (p ^ k)}
    (hκ : IsKum T k (Ggeo p Ω) (T.qq k) κ) {h : Gal p Ω} (hh : h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n) :
    κ h = 0 :=
  kum_eq T hκ (mem_Hi hh).1 0 (by rw [(mem_Hi hh).2 k]; simp)

theorem kum_tau (T : Tower p Ω) {k : ℕ} (hk : 1 ≤ k) {κ : Gal p Ω → ZMod (p ^ k)}
    (hκ : IsKum T k (Ggeo p Ω) (T.qq k) κ) {τ : Gal p Ω} (hτG : τ ∈ Ggeo p Ω)
    (hτq : ∀ n, τ (T.qq n) = T.ζ n * T.qq n) : ((κ τ).val : Ω) = 1 := by
  haveI : Fact (1 < p ^ k) := ⟨Nat.one_lt_pow (by omega) (Fact.out : p.Prime).one_lt⟩
  have : κ τ = 1 := kum_eq T hκ hτG 1 (by rw [hτq k, ZMod.val_one, pow_one])
  rw [this, ZMod.val_one, Nat.cast_one]

theorem conj_Hi (T : Tower p Ω) {τ : Gal p Ω} (hτG : τ ∈ Ggeo p Ω)
    (hτq : ∀ n, τ (T.qq n) = T.ζ n * T.qq n) {h : Gal p Ω} (hh : h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n) :
    τ⁻¹ * h * τ ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n := by
  refine mem_Hi_of (mul_mem (mul_mem (inv_mem hτG) (mem_Hi hh).1) hτG) fun n => ?_
  rw [AlgEquiv.mul_apply, AlgEquiv.mul_apply, hτq n, map_mul, _root_.GlobalTheory.K5.Decomp.ggeo_zeta T n (mem_Hi hh).1,
    (mem_Hi hh).2 n, ← hτq n, AlgEquiv.aut_inv, AlgEquiv.symm_apply_apply]

end
end GlobalTheory.K5.TopGeo

namespace GlobalTheory.K5.TopGeo

section
variable {p : ℕ} [Fact p.Prime] {Ω : Type} [Field Ω] [Algebra (O0 p) Ω]

theorem coker_part (hp : p ≠ 2) (hΩ : IsClo p Ω) (T : Tower p Ω) (k : ℕ) (hk : 1 ≤ k)
    (κ : Gal p Ω → ZMod (p ^ k)) (hκ : IsKum T k (Ggeo p Ω) (T.qq k) κ)
    (a : Gal p Ω → Ω) (ha : IntegralLocallyConstCochainModPow k (Ggeo p Ω) a)
    (hcoc : ∀ g ∈ Ggeo p Ω, ∀ h ∈ Ggeo p Ω, Cong (p := p) k (a (g * h)) (a g + g (a h))) :
    ∃ o : Ω, IsInt (p := p) o ∧ (∀ g ∈ Ggeo p Ω, g o = o) ∧ ∃ X : Ω, IsInt (p := p) X ∧
      ∀ g ∈ Ggeo p Ω, Cong (p := p) k ((p : Ω) ^ 3 * a g - o * ((κ g).val : Ω)) (g X - X) := by
  have hπ := isInt_pi (p := p) T
  set π : Ω := T.ζ 1 - 1 with hπdef

  have haHi : IntegralLocallyConstCochainModPow k (Ggeo p Ω ⊓ ⨅ n, Gn T n) a :=
    ⟨fun g hg => ha.1 g (mem_Hi hg).1, fun g hg => by
      obtain ⟨S, hS⟩ := ha.2 g (mem_Hi hg).1
      exact ⟨S, fun h hh hS' => hS h (mem_Hi hh).1 hS'⟩⟩
  obtain ⟨x1, hx1, hx1c⟩ := _root_.GlobalTheory.K5.TateGeo.h1_killed_by_zeta_sub_one_geo p hp Ω hΩ T k 1 le_rfl a haHi
    (fun g hg h hh => hcoc g (mem_Hi hg).1 h (mem_Hi hh).1)
  obtain ⟨τ, hτG, hτq⟩ := _root_.GlobalTheory.K5.TauGen.main p hp Ω hΩ T
  set a1 : Gal p Ω → Ω := fun g => π * a g - (g x1 - x1) with ha1
  have a1coc : ∀ g ∈ Ggeo p Ω, ∀ h ∈ Ggeo p Ω, Cong (p := p) k (a1 (g * h)) (a1 g + g (a1 h)) := by
    intro g hg h hh
    have e : a1 g + g (a1 h) = π * (a g + g (a h)) - (g (h x1) - x1) := by
      simp only [ha1, map_sub, map_mul, hπdef, fix_pi T hg]; ring
    rw [e]
    exact cong_congr (by simp [ha1, AlgEquiv.mul_apply]) rfl
      (cong_sub (cong_mul_left hπ (hcoc g hg h hh)) (cong_refl k _))
  have a1Hi : ∀ h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n, Cong (p := p) k (a1 h) 0 :=
    fun h hh => cong_congr rfl (sub_self _) (cong_sub (hx1c h hh) (cong_refl k (h x1 - x1)))
  have isInt_a1 : ∀ g ∈ Ggeo p Ω, IsInt (p := p) (a1 g) := fun g hg =>
    (hπ.mul (ha.1 g hg)).sub ((isInt_map g hx1).sub hx1)

  set z := a1 τ with hz
  have hzInt : IsInt (p := p) z := isInt_a1 τ hτG
  have hzinv : ∀ h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n, Cong (p := p) k (h z) z := by
    intro h hh
    have hG := (mem_Hi hh).1
    have h' := conj_Hi T hτG hτq hh
    have e1 : Cong (p := p) k (a1 (h * τ)) (h z) :=
      _root_.GlobalTheory.K5.TateGeo.cong_trans' (a1coc h hG τ hτG) (cong_congr rfl (zero_add _) (cong_add (a1Hi h hh) (cong_refl k _)))
    have e2 : Cong (p := p) k (a1 (τ * (τ⁻¹ * h * τ))) z :=
      _root_.GlobalTheory.K5.TateGeo.cong_trans' (a1coc τ hτG _ (mem_Hi h').1)
        (cong_congr rfl (by rw [map_zero, add_zero]) (cong_add (cong_refl k z) (cong_map τ (a1Hi _ h'))))
    have e3 : τ * (τ⁻¹ * h * τ) = h * τ := by group
    rw [e3] at e2
    exact _root_.GlobalTheory.K5.TateGeo.cong_trans' (_root_.GlobalTheory.K5.TateGeo.cong_symm' e1) e2
  obtain ⟨y, hy, ⟨N, hyN⟩, hyc⟩ := _root_.GlobalTheory.K5.geo_invariants_from_finite_level p hp Ω hΩ T k 1 le_rfl z hzInt hzinv
  obtain ⟨o, w, ho, hoG, hw, hwN, hdec⟩ := _root_.GlobalTheory.K5.Decomp.decomp p hp Ω hΩ T τ hτG hτq N y hy hyN
  have hpo : IsInt (p := p) (π * o) := hπ.mul ho
  set b : Gal p Ω → Ω := fun g => π ^ 2 * a1 g - (g w - w) - π * o * ((κ g).val : Ω) with hb
  have bcoc : ∀ g ∈ Ggeo p Ω, ∀ h ∈ Ggeo p Ω, Cong (p := p) k (b (g * h)) (b g + g (b h)) := by
    intro g hg h hh
    have e : b g + g (b h) = π ^ 2 * (a1 g + g (a1 h)) - (g (h w) - w) -
        (π * o * ((κ g).val : Ω) + π * o * ((κ h).val : Ω)) := by
      simp only [hb, map_sub, map_mul, map_pow, map_natCast, hπdef, fix_pi T hg, hoG g hg]; ring
    rw [e]
    refine cong_sub (cong_sub (cong_mul_left (hπ.pow 2) (a1coc g hg h hh)) (_root_.GlobalTheory.K5.TateGeo.cong_of_eq' ?_)) ?_
    · simp [AlgEquiv.mul_apply]
    · rw [kum_add T hκ hg hh]; exact cong_val_add _ _ hpo
  have bHi : ∀ h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n, Cong (p := p) k (b h) 0 := by
    intro h hh
    have hw' : h w = w := hwN h (mem_HN_of hh N)
    have := cong_mul_left (hπ.pow 2) (a1Hi h hh)
    refine cong_congr ?_ (by ring) this
    simp [hb, hw', kum_Hi T hκ hh]
  have bτ : Cong (p := p) k (b τ) 0 := by
    have h1 : Cong (p := p) k (π ^ 2 * z) (π * o + (τ w - w)) := by
      rw [← hdec]; exact cong_congr (by ring) rfl (cong_mul_left hπ hyc)
    have := cong_sub h1 (cong_refl k ((τ w - w) + π * o))
    refine cong_congr ?_ (by ring) this
    simp only [hb, kum_tau T hk hκ hτG hτq, hz]; ring
  have bpow : ∀ s : ℕ, Cong (p := p) k (b (τ ^ s)) 0 := by
    intro s
    induction s with
    | zero => exact bHi 1 (one_mem _)
    | succ s ih =>
      rw [pow_succ]
      exact _root_.GlobalTheory.K5.TateGeo.cong_trans' (bcoc _ (pow_mem hτG s) τ hτG)
        (cong_congr rfl (by rw [map_zero, add_zero]) (cong_add ih (cong_map _ bτ)))
  have bG : ∀ g ∈ Ggeo p Ω, Cong (p := p) k (b g) 0 := by
    classical
    intro g hg
    obtain ⟨S, hS⟩ := ha.2 g hg
    obtain ⟨s, h, hh, hag⟩ := _root_.GlobalTheory.K5.Dense.dense_tau_pow_mul p hp Ω hΩ T τ hτG hτq g hg (insert x1 (insert w (insert (T.qq k) S)))
    have hg' : τ ^ s * h ∈ Ggeo p Ω := mul_mem (pow_mem hτG s) (mem_Hi hh).1
    have e0 : Cong (p := p) k (b (τ ^ s * h)) 0 :=
      _root_.GlobalTheory.K5.TateGeo.cong_trans' (bcoc _ (pow_mem hτG s) h (mem_Hi hh).1)
        (cong_congr rfl (by rw [map_zero, add_zero]) (cong_add (bpow s) (cong_map _ (bHi h hh))))
    have hx1' := hag x1 (by simp)
    have hw' := hag w (by simp)
    have hq' := hag (T.qq k) (by simp)
    have ha' := hS _ hg' (fun x hx => hag x (by simp [hx]))
    have hκ' : κ (τ ^ s * h) = κ g := kum_eq T hκ hg' (κ g) (by rw [hq']; exact hκ g hg)
    have e1 : Cong (p := p) k (b (τ ^ s * h)) (b g) := by
      simp only [hb, ha1, hx1', hw', hκ']
      exact cong_sub (cong_sub (cong_mul_left (hπ.pow 2)
        (cong_sub (cong_mul_left hπ ha') (cong_refl k _))) (cong_refl k _)) (cong_refl k _)
    exact _root_.GlobalTheory.K5.TateGeo.cong_trans' (_root_.GlobalTheory.K5.TateGeo.cong_symm' e1) e0

  obtain ⟨r, hr, hrG, hpr⟩ := p_eq (p := p) T
  refine ⟨r ^ 3 * (π * o), (hr.pow 3).mul hpo, fun g hg => ?_, r ^ 3 * (π ^ 2 * x1 + w),
    (hr.pow 3).mul ((hπ.pow 2).mul hx1 |>.add hw), fun g hg => ?_⟩
  · simp only [map_mul, map_pow, hrG g hg, hπdef, fix_pi T hg, hoG g hg]
  · have := cong_mul_left (hr.pow 3) (bG g hg)
    have e := cong_add this (cong_refl k (g (r ^ 3 * (π ^ 2 * x1 + w)) - r ^ 3 * (π ^ 2 * x1 + w)))
    refine cong_congr ?_ (by ring) e
    simp only [hb, ha1, map_mul, map_pow, map_add (f := _), hrG g hg, hπdef, fix_pi T hg, hpr]
    ring

theorem kern_part (hp : p ≠ 2) (hΩ : IsClo p Ω) (T : Tower p Ω) (k : ℕ) (hk : 1 ≤ k)
    (κ : Gal p Ω → ZMod (p ^ k)) (hκ : IsKum T k (Ggeo p Ω) (T.qq k) κ)
    (o : Ω) (ho : IsInt (p := p) o) (hoG : ∀ g ∈ Ggeo p Ω, g o = o) (x : Ω) (hx : IsInt (p := p) x)
    (hxc : ∀ g ∈ Ggeo p Ω, Cong (p := p) k (o * ((κ g).val : Ω)) (g x - x)) :
    Cong (p := p) k ((p : Ω) ^ 3 * o) 0 := by
  have hπ := isInt_pi (p := p) T
  set π : Ω := T.ζ 1 - 1 with hπdef
  obtain ⟨τ, hτG, hτq⟩ := _root_.GlobalTheory.K5.TauGen.main p hp Ω hΩ T
  have hxinv : ∀ h ∈ Ggeo p Ω ⊓ ⨅ n, Gn T n, Cong (p := p) k (h x) x := by
    intro h hh
    have := cong_add (_root_.GlobalTheory.K5.TateGeo.cong_symm' (hxc h (mem_Hi hh).1)) (cong_refl k x)
    exact cong_congr (by ring) (by rw [kum_Hi T hκ hh]; simp) this
  obtain ⟨y, hy, ⟨N, hyN⟩, hyc⟩ := _root_.GlobalTheory.K5.geo_invariants_from_finite_level p hp Ω hΩ T k 1 le_rfl x hx hxinv
  have h1 : Cong (p := p) k o (τ x - x) := by
    have := hxc τ hτG
    rwa [kum_tau T hk hκ hτG hτq, mul_one] at this
  have h2 : Cong (p := p) k (τ y - y) (π * o) := by
    have e := cong_sub (cong_map τ hyc) hyc
    have e' : τ (π * x) - π * x = π * (τ x - x) := by
      rw [map_mul, hπdef, fix_pi T hτG]; ring
    rw [e'] at e
    exact _root_.GlobalTheory.K5.TateGeo.cong_trans' (_root_.GlobalTheory.K5.TateGeo.cong_symm' e) (_root_.GlobalTheory.K5.TateGeo.cong_symm' (cong_mul_left hπ h1))
  have h3 := _root_.GlobalTheory.K5.KernLoc.main p hp Ω hΩ T τ hτG hτq k N y (π * o) hy hyN
    (fun g hg => by rw [map_mul, hoG g hg, hπdef, fix_pi T hg]) h2
  obtain ⟨r, hr, -, hpr⟩ := p_eq (p := p) T
  have := cong_mul_left ((hr.pow 3).mul (hπ.pow 2)) h3
  exact cong_congr (by rw [hpr]; ring) (by ring) this

end

theorem top : ∀ (p : ℕ) [Fact p.Prime], p ≠ 2 → ∃ c : ℕ, ∀ (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω →
  ∀ (T : Tower p Ω) (k : ℕ) (χ κ : Gal p Ω → ZMod (p ^ k)), IsKum T k (Ggeo p Ω) (T.qq k) κ →
  (∀ a : Gal p Ω → Ω, IntegralLocallyConstCochainModPow k (Ggeo p Ω) a → IsTwistedOneCocycle 0 k (Ggeo p Ω) χ a →
      ∃ o : Ω, IsInt (p := p) o ∧ (∀ g ∈ Ggeo p Ω, g o = o) ∧
        IsTwistedOneCoboundary 0 k (Ggeo p Ω) χ (fun g => (p : Ω) ^ c * a g - o * ((κ g).val : Ω))) ∧
  (∀ o : Ω, IsInt (p := p) o → (∀ g ∈ Ggeo p Ω, g o = o) →
      IsTwistedOneCoboundary 0 k (Ggeo p Ω) χ (fun g => o * ((κ g).val : Ω)) → Cong (p := p) k ((p : Ω) ^ c * o) 0) := by
  intro p _ hp
  refine ⟨3, fun Ω _ _ hΩ T k χ κ hκ => ?_⟩
  rcases Nat.eq_zero_or_pos k with rfl | hk
  · refine ⟨fun a ha _ => ⟨0, isIntegral_zero, fun g _ => by simp, 0, isIntegral_zero, fun g hg => ?_⟩,
      fun o ho _ _ => cong_zero_k ?_⟩
    · apply cong_zero_k
      simp only [map_zero, sub_zero, zero_mul, mul_zero]
      exact ((isInt_natCast p).pow 3).mul (ha.1 g hg)
    · rw [sub_zero]; exact ((isInt_natCast p).pow 3).mul ho
  · refine ⟨fun a ha hc => ?_, fun o ho hoG hc => ?_⟩
    · obtain ⟨o, ho, hoG, X, hX, hXc⟩ := coker_part hp hΩ T k hk κ hκ a ha
        (fun g hg h hh => by simpa using hc g hg h hh)
      exact ⟨o, ho, hoG, X, hX, fun g hg => by simpa using hXc g hg⟩
    · obtain ⟨x, hx, hxc⟩ := hc
      exact kern_part hp hΩ T k hk κ hκ o ho hoG x hx (fun g hg => by simpa using hxc g hg)

end GlobalTheory.K5.TopGeo
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.KummerCocycleTwistedCoboundary =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricLevelH1Coboundary =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricLevelH1Coboundary", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.EeProd\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IntegralLocallyConstCochainModPow\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsReparametrizationByTowerParameter\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.KummerCocycleTwistedCoboundary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.Integral\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped MatrixGroups
open GlobalTheory.KZ GlobalTheory.Glue GlobalTheory.K5 GlobalTheory.KummerEisensteinGalois Polynomial

namespace GlobalTheory.K5.Reb

def RebT {p : ℕ} [Fact p.Prime] (Ω : Type) [Field Ω] (_ψ : O0 p →+* Ω) : Type := Ω

section Inst

variable {p : ℕ} [Fact p.Prime] {Ω : Type} [Field Ω]

instance (ψ : O0 p →+* Ω) : Field (RebT Ω ψ) := inferInstanceAs (Field Ω)

instance (ψ : O0 p →+* Ω) : Algebra (O0 p) (RebT Ω ψ) := ψ.toAlgebra

end Inst

variable {p : ℕ} [Fact p.Prime] {Ω : Type} [Field Ω] [Algebra (O0 p) Ω]
variable {T : GlobalTheory.K5.Tower p Ω} {L : ℕ} {ψ : O0 p →+* Ω}

theorem mem_range (hψ : IsReb T L ψ) (a : O0 p) : ∃ b, ψ b = algebraMap (O0 p) Ω a := by
  have h : algebraMap (O0 p) Ω a ∈ ψ.range := by
    rw [hψ.rng, Subalgebra.mem_toSubring]
    exact Subalgebra.algebraMap_mem _ a
  exact RingHom.mem_range.1 h

def jf (hψ : IsReb T L ψ) (a : O0 p) : O0 p := (mem_range hψ a).choose

theorem jf_spec (hψ : IsReb T L ψ) (a : O0 p) : ψ (jf hψ a) = algebraMap (O0 p) Ω a :=
  (mem_range hψ a).choose_spec

def jj (hψ : IsReb T L ψ) : O0 p →+* O0 p where
  toFun := jf hψ
  map_one' := hψ.inj (by rw [jf_spec, map_one, map_one])
  map_mul' a b := hψ.inj (by rw [jf_spec, map_mul, map_mul, jf_spec, jf_spec])
  map_zero' := hψ.inj (by rw [jf_spec, map_zero, map_zero])
  map_add' a b := hψ.inj (by rw [jf_spec, map_add (f := _), map_add (f := _), jf_spec, jf_spec])

theorem comp_jj (hψ : IsReb T L ψ) : ψ.comp (jj hψ) = algebraMap (O0 p) Ω :=
  RingHom.ext (jf_spec hψ)

theorem isInt_iff (hψ : IsReb T L ψ) (x : Ω) : @IsInt p _ (RebT Ω ψ) _ _ x ↔ IsInt (p := p) x := by
  constructor
  · rintro ⟨f, hf, h⟩
    let A := Algebra.adjoin (O0 p) {T.qq L}
    have hq : IsIntegral (O0 p) (T.qq L) := by
      refine ⟨X ^ (p ^ L) - C (qO p), monic_X_pow_sub_C _ (pow_ne_zero _ (Fact.out : p.Prime).ne_zero), ?_⟩
      rw [← aeval_def]
      simp [GlobalTheory.K5.Basic.qq_pow]
    haveI : Algebra.IsIntegral (O0 p) A := Algebra.IsIntegral.adjoin (by rintro _ rfl; exact hq)
    let g : O0 p →+* A := ψ.codRestrict A (fun b => by
      have := ψ.mem_range_self b
      rw [hψ.rng] at this
      exact this)
    have hA : IsIntegral A x := by
      refine ⟨f.map g, hf.map g, ?_⟩
      rw [eval₂_map]
      have e : (algebraMap A Ω).comp g = ψ := RingHom.ext fun _ => rfl
      rw [e]
      exact h
    exact isIntegral_trans x hA
  · rintro ⟨f, hf, h⟩
    refine ⟨f.map (jj hψ), hf.map _, ?_⟩
    show eval₂ ψ x (f.map (jj hψ)) = 0
    rw [eval₂_map]
    rw [comp_jj]
    exact h

theorem cong_iff (hψ : IsReb T L ψ) (k : ℕ) (x y : Ω) :
    @Cong p _ (RebT Ω ψ) _ _ k x y ↔ Cong (p := p) k x y := by
  constructor
  · rintro ⟨z, hz, e⟩
    exact ⟨z, (isInt_iff hψ z).1 hz, e⟩
  · rintro ⟨z, hz, e⟩
    exact ⟨z, (isInt_iff hψ z).2 hz, e⟩

theorem isClo (hΩ : IsClo p Ω) (hψ : IsReb T L ψ) : IsClo p (RebT Ω ψ) := by
  refine ⟨hψ.inj, ⟨fun (x : Ω) => ?_⟩, hΩ.clo⟩
  obtain ⟨f, hf, h⟩ := hΩ.alg.isAlgebraic x
  have hinj : Function.Injective (jj hψ) := by
    intro a b hab
    apply hΩ.inj
    rw [← comp_jj hψ, RingHom.comp_apply, RingHom.comp_apply, hab]
  refine ⟨f.map (jj hψ), (Polynomial.map_ne_zero_iff hinj).2 hf, ?_⟩
  show eval₂ ψ x (f.map (jj hψ)) = 0
  rw [eval₂_map, comp_jj, ← aeval_def]
  exact h

theorem zp_eq (hψ : IsReb T L ψ) (z : ℤ_[p]) :
    ψ (algebraMap ℤ_[p] (O0 p) z) = algebraMap (O0 p) Ω (algebraMap ℤ_[p] (O0 p) z) := by
  have e : algebraMap ℤ_[p] (O0 p) z = algebraMap (Lau p) (O0 p) (HahnSeries.C z) := by
    rw [IsScalarTower.algebraMap_apply ℤ_[p] (Lau p) (O0 p)]
    congr 1
    show HahnSeries.ofPowerSeries ℤ ℤ_[p] (algebraMap ℤ_[p] (PowerSeries ℤ_[p]) z) = _
    rw [← HahnSeries.ofPowerSeries_C]
    rfl
  rw [e]
  have hp0 : (p : ℤ) ^ L ≠ 0 := pow_ne_zero _ (by exact_mod_cast (Fact.out : p.Prime).ne_zero)
  refine hψ.sub _ _ (fun i => ?_) (fun r hr => ?_)
  · by_cases hi : i = 0
    · subst hi; simp [HahnSeries.C_apply]
    · have : (p : ℤ) ^ L * i ≠ 0 := mul_ne_zero hp0 hi
      simp [HahnSeries.C_apply, hi, this]
  · have : r ≠ 0 := by rintro rfl; exact hr (dvd_zero _)
    simp [HahnSeries.C_apply, this]

theorem isAlgZp_iff (hψ : IsReb T L ψ) (x : Ω) : @IsAlgZp p _ (RebT Ω ψ) _ _ x ↔ IsAlgZp p x := by
  have hc : ψ.comp (algebraMap ℤ_[p] (O0 p)) = (algebraMap (O0 p) Ω).comp (algebraMap ℤ_[p] (O0 p)) :=
    RingHom.ext (zp_eq hψ)
  constructor
  · rintro ⟨P, hP, h⟩
    refine ⟨P, hP, ?_⟩
    have h' : eval₂ ψ x (P.map (algebraMap ℤ_[p] (O0 p))) = 0 := h
    rw [eval₂_map, hc, ← eval₂_map, ← aeval_def] at h'
    exact h'
  · rintro ⟨P, hP, h⟩
    refine ⟨P, hP, ?_⟩
    show eval₂ ψ x (P.map (algebraMap ℤ_[p] (O0 p))) = 0
    rw [eval₂_map, hc, ← eval₂_map, ← aeval_def]
    exact h

def tw (hψ : IsReb T L ψ) : GlobalTheory.K5.Tower p (RebT Ω ψ) where
  ζ := T.ζ
  qq k := T.qq (L + k)
  prim := T.prim
  ζpow := T.ζpow
  q0 := hψ.par.symm
  qpow k := T.qpow (L + k)

def down (hψ : IsReb T L ψ) (g : Gal p (RebT Ω ψ)) : Gal p Ω :=
  AlgEquiv.ofRingEquiv (f := (g.toRingEquiv : Ω ≃+* Ω)) (fun a => by
    obtain ⟨b, hb⟩ := mem_range hψ a
    rw [← hb]
    exact g.commutes b)

theorem down_mul (hψ : IsReb T L ψ) (g h : Gal p (RebT Ω ψ)) : down hψ (g * h) = down hψ g * down hψ h :=
  AlgEquiv.ext fun _ => rfl

theorem fix_range (hψ : IsReb T L ψ) (g : Gal p Ω) (hg : g (T.qq L) = T.qq L) (a : O0 p) : g (ψ a) = ψ a := by
  have h1 : ψ a ∈ (Algebra.adjoin (O0 p) {T.qq L}).toSubring := hψ.rng ▸ ψ.mem_range_self a
  have h2 : Algebra.adjoin (O0 p) {T.qq L} ≤ AlgHom.equalizer (g : Ω →ₐ[O0 p] Ω) (AlgHom.id (O0 p) Ω) :=
    Algebra.adjoin_le (by rintro x rfl; exact hg)
  exact (AlgHom.mem_equalizer _ _ _).1 (h2 h1)

def up (hψ : IsReb T L ψ) (g : Gal p Ω) (hg : g (T.qq L) = T.qq L) : Gal p (RebT Ω ψ) :=
  AlgEquiv.ofRingEquiv (f := (g.toRingEquiv : RebT Ω ψ ≃+* RebT Ω ψ)) (fun a => fix_range hψ g hg a)

alias isAlgZp_zeta := _root_.GlobalTheory.K5.Dense.isAlgZp_zeta

theorem mem_H (hψ : IsReb T L ψ) {g : Gal p (RebT Ω ψ)} (hg : g ∈ Ggeo p (RebT Ω ψ)) :
    down hψ g ∈ Ggeo p Ω ⊓ Gn T L := by
  have hgeo : down hψ g ∈ Ggeo p Ω := fun x hx => hg x ((isAlgZp_iff hψ x).2 hx)
  refine Subgroup.mem_inf.2 ⟨hgeo, (GlobalTheory.K5.Basic.mem_gn T L _).2 ⟨hgeo _ (isAlgZp_zeta T L), ?_⟩⟩
  have h : g (ψ (qO p)) = ψ (qO p) := g.commutes (qO p)
  rw [hψ.par] at h
  exact h

theorem exists_up (hψ : IsReb T L ψ) {g : Gal p Ω} (hg : g ∈ Ggeo p Ω ⊓ Gn T L) :
    ∃ g' : Gal p (RebT Ω ψ), g' ∈ Ggeo p (RebT Ω ψ) ∧ down hψ g' = g := by
  have hg1 := (Subgroup.mem_inf.1 hg).1
  have hq := ((GlobalTheory.K5.Basic.mem_gn T L g).1 (Subgroup.mem_inf.1 hg).2).2
  exact ⟨up hψ g hq, fun x hx => hg1 x ((isAlgZp_iff hψ x).1 hx), AlgEquiv.ext fun _ => rfl⟩

theorem h1_geometric_level_coboundary : ∀ (p : ℕ) [Fact p.Prime], p ≠ 2 → ∃ c : ℕ, ∀ (Ω : Type) [Field Ω] [Algebra (O0 p) Ω], IsClo p Ω → ∀ (T : GlobalTheory.K5.Tower p Ω) (L n : ℕ), n ≤ L → ∀ lq : Gal p Ω → ZMod (p ^ n), IsKum T n (Ggeo p Ω ⊓ Gn T L) (T.qq (L + n)) lq →
  (∀ a : Gal p Ω → Ω, IntegralLocallyConstCochainModPow n (Ggeo p Ω ⊓ Gn T L) a → (∀ g ∈ (Ggeo p Ω ⊓ Gn T L), ∀ h ∈ (Ggeo p Ω ⊓ Gn T L), Cong (p := p) n (a (g * h)) (a g + g (a h))) →
    ∃ o : Ω, IsInt (p := p) o ∧ (∀ g ∈ (Ggeo p Ω ⊓ Gn T L), g o = o) ∧ Cob1 n (Ggeo p Ω ⊓ Gn T L) (fun g => (p : Ω) ^ c * a g - o * ((lq g).val : Ω))) ∧
  (∀ o : Ω, IsInt (p := p) o → (∀ g ∈ (Ggeo p Ω ⊓ Gn T L), g o = o) → Cob1 n (Ggeo p Ω ⊓ Gn T L) (fun g => o * ((lq g).val : Ω)) → Cong (p := p) n ((p : Ω) ^ c * o) 0) := by
  intro p _ hp2
  have hkum := GlobalTheory.K5.TopGeo.top p hp2
  obtain ⟨c, hc⟩ := hkum
  refine ⟨c, fun Ω _ _ hΩ T L n _ lq hlq => ?_⟩
  obtain ⟨ψ, hψ⟩ := _root_.GlobalTheory.Glue.exists_isReb p Ω hΩ T L
  have hk : IsKum (tw hψ) n (Ggeo p (RebT Ω ψ)) ((tw hψ).qq n) (fun g => lq (down hψ g)) :=
    fun g hg => hlq (down hψ g) (mem_H hψ hg)
  obtain ⟨h1, h2⟩ := hc (RebT Ω ψ) (isClo hΩ hψ) (tw hψ) n (fun _ => 0) _ hk
  constructor
  · intro a ha hcoc
    have hlc : IntegralLocallyConstCochainModPow n (Ggeo p (RebT Ω ψ)) (fun g => a (down hψ g)) := by
      refine ⟨fun g hg => (isInt_iff hψ _).2 (ha.1 _ (mem_H hψ hg)), fun g hg => ?_⟩
      obtain ⟨S, hS⟩ := ha.2 _ (mem_H hψ hg)
      exact ⟨S, fun h hh hx => (cong_iff hψ n _ _).2 (hS _ (mem_H hψ hh) hx)⟩
    have hco : IsTwistedOneCocycle 0 n (Ggeo p (RebT Ω ψ)) (fun _ => 0) (fun g => a (down hψ g)) := by
      intro g hg h hh
      simp only [pow_zero, one_mul]
      rw [down_mul]
      exact (cong_iff hψ n _ _).2 (hcoc _ (mem_H hψ hg) _ (mem_H hψ hh))
    obtain ⟨o, ho, hof, x, hx, hxc⟩ := h1 _ hlc hco
    refine ⟨o, (isInt_iff hψ o).1 ho, fun g hg => ?_, x, (isInt_iff hψ x).1 hx, fun g hg => ?_⟩
    · obtain ⟨g', hg', rfl⟩ := exists_up hψ hg
      exact hof g' hg'
    · obtain ⟨g', hg', rfl⟩ := exists_up hψ hg
      have e := hxc g' hg'
      rw [pow_zero, one_mul] at e
      exact (cong_iff hψ n _ _).1 e
  · intro o ho hof hcob
    obtain ⟨x, hx, hxc⟩ := hcob
    refine (cong_iff hψ n _ _).1 (h2 o ((isInt_iff hψ o).2 ho) (fun g hg => hof _ (mem_H hψ hg))
      ⟨x, (isInt_iff hψ x).2 hx, fun g hg => ?_⟩)
    rw [pow_zero, one_mul]
    exact (cong_iff hψ n _ _).2 (hxc _ (mem_H hψ hg))

end GlobalTheory.K5.Reb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricLevelH1Coboundary =====
