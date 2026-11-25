module

public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.DualWeylIn
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FockPairingHighestWeight
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FormSK
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FormCoreSK
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FormSK
public import Mathlib.RingTheory.Nakayama
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.BaseMatrixAlgebra
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideDef
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideLat
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSide
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.ProdBlockEmbMonomial
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.WeylFormNondegenerateGlobal
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockRAddRight
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestrictedWeightFirstTwoEq
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.WspanLeOpCl
import Formalism.ThetaLogCoordinates.SandwichModelDomains.FinalW
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
import Formalism.GradedWeylDivisibility.FinalD
import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LDlatLemmas
import Formalism.LocalToGlobal.GroupLattices.FockModels.DualInclusionLattices
import Formalism.LocalToGlobal.GroupLattices.FockModels.ElementaryDivisorBasis
import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSidePos
import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideTen
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.RankMulConductorDivLeOne

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FormCoreSKXOf, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.JetMatrixAlgebra, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FirstWeightLeConductor

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FormCoreSKXOf =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FormCoreSKXOf", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.DualWeylIn\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FockPairingHighestWeight\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FormSK\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FormCoreSK\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FormSK\nimport Formalism.ThetaLogCoordinates.SandwichModelDomains.FinalW\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Nakayama\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.G.Model.TS

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.InvariantFactorPaths.INST

def FormCoreGX : Prop :=
  ∀ (p : ℕ) [Fact p.Prime] (O K : Type) [CommRing O] [IsDomain O] [IsLocalRing O] [Field K] [Algebra O K] [IsFractionRing O K]
    [CharZero K], ¬ IsUnit ((p : ℕ) : O) →
    ∀ (r n : ℕ) (_hn : n ≤ r) (ν : Fin n → ℕ), Antitone ν →
    ∃ B : MvPolynomial (Fin r × Fin n) K →ₗ[K] MvPolynomial (Fin r × Fin n) K →ₗ[K] K,
      (∃ c : K, c ≠ 0 ∧ ∀ P Q, B P Q = c * fockR P Q) ∧
      (∀ (g : Matrix (Fin r) (Fin r) K) (P Q : MvPolynomial (Fin r × Fin n) K),
        B (rowAct K g P) Q = B P (rowAct K g.transpose Q)) ∧
      (∀ Q ∈ dualWeyl K r n ν, (∀ P ∈ dualWeyl K r n ν, B P Q = 0) → Q = 0) ∧
      (∀ Q ∈ dualWeyl K r n ν,
        (∀ P ∈ (dualWeyl O r n ν).map (toK O K), B P Q ∈ Set.range (algebraMap O K)) → Q ∈ (dualWeyl O r n ν).map (toK O K)) ∧
      (∀ l : ℕ, LBound r ν l → ∀ Q ∈ (dualWeyl O r n ν).map (toK O K), ∀ P ∈ (dualWeyl O r n ν).map (toK O K),
        B P (((p : K) ^ sExp p r l) • Q) ∈ Set.range (algebraMap O K)) ∧
      ((∀ t, ν t = 0) → ∀ Q ∈ (dualWeyl O r n ν).map (toK O K), ∀ P ∈ (dualWeyl O r n ν).map (toK O K),
        B P Q ∈ Set.range (algebraMap O K))

theorem formCoreGX_of (hB : FockRBilin) (hR : FockRRowAct) (hN : HWNorm) (hW : WeylPair) (hD : DualWeylIn)
    (hG : NondegK) : FormCoreGX := by
  intro p _ O K _ _ _ _ _ _ _ hp r n hn ν hν
  obtain ⟨N, hNpos, hNeq⟩ := hN r n hn ν
  have hNK : (N : K) ≠ 0 := by exact_mod_cast hNpos.ne'
  have hfN : fockR (hw K hn ν) (hw K hn ν) = (N : K) := hNeq K
  have hadd : ∀ f f' g : MvPolynomial (Fin r × Fin n) K, fockR (f + f') g = fockR f g + fockR f' g :=
    fun f f' g => (hB _ K f f' g 0).1
  have hsmul : ∀ (a : K) (f g : MvPolynomial (Fin r × Fin n) K), fockR (a • f) g = a * fockR f g :=
    fun a f g => (hB _ K f f g a).2.1
  have hsymm : ∀ f g : MvPolynomial (Fin r × Fin n) K, fockR f g = fockR g f :=
    fun f g => (hB _ K f f g 0).2.2
  let B : MvPolynomial (Fin r × Fin n) K →ₗ[K] MvPolynomial (Fin r × Fin n) K →ₗ[K] K :=
    LinearMap.mk₂ K (fun P Q => (N : K)⁻¹ * fockR P Q)
      (fun f f' g => by rw [hadd, mul_add])
      (fun a f g => by rw [hsmul, smul_eq_mul]; ring)
      (fun f g g' => by rw [hsymm f, hadd, hsymm g, hsymm g', mul_add])
      (fun a f g => by rw [hsymm f, hsmul, hsymm g, smul_eq_mul]; ring)
  have hBapp : ∀ P Q, B P Q = (N : K)⁻¹ * fockR P Q := fun P Q => rfl
  obtain ⟨l, hl⟩ : ∃ l, LBound r ν l := ⟨Finset.univ.sup ν, Or.inl fun t => Finset.le_sup (Finset.mem_univ t)⟩
  have hle : weyl O r n hn ν ≤ dualWeyl O r n ν := (Top.sandwichLocal p r n hn ν hν l hl O hp).2
  have hrange : ∀ P Q : MvPolynomial (Fin r × Fin n) K, (∃ z : O, fockR P Q = algebraMap O K z * fockR (hw K hn ν) (hw K hn ν)) →
      B P Q ∈ Set.range (algebraMap O K) := by
    rintro P Q ⟨z, hz⟩
    refine ⟨z, ?_⟩
    rw [hBapp, hz, hfN]
    field_simp
  refine ⟨B, ⟨(N : K)⁻¹, inv_ne_zero hNK, hBapp⟩, ?_, ?_, ?_, ?_, ?_⟩
  · intro g P Q
    rw [hBapp, hBapp, hR K r n g P Q]
  · intro Q hQ h0
    refine hG K r n hn ν hν Q hQ fun P hP => ?_
    have := h0 P hP
    rw [hBapp] at this
    exact (mul_eq_zero.mp this).resolve_left (inv_ne_zero hNK)
  · intro Q hQ hint
    refine hD O K r n hn ν hν Q hQ fun P hP => ?_
    obtain ⟨z, hz⟩ := hint P (Submodule.map_mono hle hP)
    refine ⟨z, ?_⟩
    rw [hfN, hz, hBapp]
    field_simp
  · intro l' hl' Q hQ P hP
    obtain ⟨y, hy, rfl⟩ := hQ
    have hs := (Top.sandwichLocal p r n hn ν hν l' hl' O hp).1 y hy
    have heq : ((p : K) ^ sExp p r l') • toK O K y = toK O K (((p : O) ^ sExp p r l') • y) := by
      rw [LinearMap.map_smul, ← algebraMap_smul K ((p : O) ^ sExp p r l') (toK O K y), map_pow, map_natCast]
    rw [heq]
    apply hrange
    rw [hsymm]
    exact hW O K r n hn ν hν _ ⟨_, hs, rfl⟩ P hP
  · intro h0 Q hQ P hP
    obtain ⟨y, hy, rfl⟩ := hQ
    obtain ⟨x, hx, rfl⟩ := hP
    have hhw : hw K hn ν = 1 := by
      simp [hw, h0]
    have hN1 : (N : K) = 1 := by
      rw [← hfN, hhw]
      simp [fockR, FockPairing.pair, FockPairing.weight, MvPolynomial.support_one]
    refine ⟨fockR x y, ?_⟩
    rw [hBapp, hN1, inv_one, one_mul]
    exact (Top.fockRMap _ O K (algebraMap O K) x y).symm

def FormCoreSKX : Prop :=
  ∀ (p n' : ℕ) (W Qq O Kf : Type) [CommRing W] [IsDomain W] [IsDiscreteValuationRing W] [Field Qq]
    [Algebra W Qq] [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
    (ι : Qq →+* Kf) (σ : Qq ≃+* Qq) (j : W →+* O) (w : O),
    HidaSetting p n' W Qq O Kf ι σ j w →
    ∀ (m : ℕ) (lam : Fin (m + 1) → ℤ), Antitone lam →
    ∃ B : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf →ₗ[Kf] MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf →ₗ[Kf] Kf,
      (∃ c : Kf, c ≠ 0 ∧ ∀ P Q, B P Q = c * fockR P Q) ∧
      (∀ (g : Matrix (Fin (m + 1)) (Fin (m + 1)) Kf) (P Q : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf),
        B (rowAct Kf g P) Q = B P (rowAct Kf g.transpose Q)) ∧
      (∀ Q ∈ dualWeyl Kf (m + 1) (m + 1) (nuOf lam),
        (∀ P ∈ dualWeyl Kf (m + 1) (m + 1) (nuOf lam), B P Q = 0) → Q = 0) ∧
      (∀ Q ∈ dualWeyl Kf (m + 1) (m + 1) (nuOf lam),
        (∀ P ∈ nabO O Kf m (nuOf lam), B P Q ∈ Set.range (algebraMap O Kf)) → Q ∈ nabO O Kf m (nuOf lam)) ∧
      (∀ Q ∈ nabO O Kf m (nuOf lam), ∀ P ∈ nabO O Kf m (nuOf lam),
        B P (((p : Kf) ^ expN p m lam) • Q) ∈ Set.range (algebraMap O Kf))

private theorem not_isUnit_p_of_hidaSetting {p n' : ℕ} {W Qq O Kf : Type} [CommRing W] [IsDomain W] [IsDiscreteValuationRing W]
    [Field Qq] [Algebra W Qq] [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
    {ι : Qq →+* Kf} {σ : Qq ≃+* Qq} {j : W →+* O} {w : O} (hS : HidaSetting p n' W Qq O Kf ι σ j w) :
    ¬ IsUnit ((p : ℕ) : O) := by
  intro hu
  letI : Algebra W O := j.toAlgebra
  haveI : Module.Finite W O := hS.finite
  have hfg : (⊤ : Submodule W O).FG := Module.Finite.fg_top
  have hpm : Ideal.span {((p : ℕ) : W)} ≤ IsLocalRing.maximalIdeal W := by
    rw [Ideal.span_le, Set.singleton_subset_iff]
    exact hS.p_unif.not_isUnit
  have hjac : Ideal.span {((p : ℕ) : W)} ≤ (⊥ : Ideal W).jacobson := by
    rw [IsLocalRing.jacobson_eq_maximalIdeal ⊥ bot_ne_top]
    exact hpm
  have hle : (⊤ : Submodule W O) ≤ Ideal.span {((p : ℕ) : W)} • ⊤ := by
    intro x _
    obtain ⟨u, hu'⟩ := hu
    have hx : x = ((p : ℕ) : W) • ((↑u⁻¹ : O) * x) := by
      rw [Algebra.smul_def, RingHom.algebraMap_toAlgebra, map_natCast, ← hu', ← mul_assoc, Units.mul_inv, one_mul]
    rw [hx]
    exact Submodule.smul_mem_smul (Ideal.mem_span_singleton_self _) Submodule.mem_top
  have hbot := Submodule.eq_bot_of_le_smul_of_le_jacobson_bot _ _ hfg hle hjac
  have h1 : (1 : O) ∈ (⊥ : Submodule W O) := hbot ▸ Submodule.mem_top
  exact one_ne_zero ((Submodule.mem_bot W).mp h1)

theorem formCoreSKX_of (h : FormCoreGX) : FormCoreSKX := by
  intro p n' W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w hS m lam hlam
  haveI : Fact p.Prime := ⟨hS.prime⟩
  haveI := hS.frac_O
  haveI := hS.frac_alt
  haveI : CharZero W := charZero_of_irreducible_natCast hS.prime hS.p_unif
  haveI : CharZero Qq := charZero_of_injective_algebraMap (IsFractionRing.injective W Qq)
  haveI : CharZero Kf := charZero_of_injective_ringHom ι.injective
  obtain ⟨B, hc, hrow, hnd, hint, hbd, hzero⟩ :=
    h p O Kf (not_isUnit_p_of_hidaSetting hS) (m + 1) (m + 1) le_rfl (nuOf lam) (nuOf_antitone hlam)
  refine ⟨B, hc, hrow, hnd, hint, ?_⟩
  intro Q hQ P hP
  by_cases h0 : ellWt lam = 0
  · have hE : expN p m lam = 0 := by simp [expN, h0]
    rw [hE, pow_zero, one_smul]
    exact hzero (fun t => by have := nuOf_le_ellWt hlam t; omega) Q hQ P hP
  · have hE : expN p m lam = sExp p (m + 1) (ellWt lam) := by
      simp only [expN, if_neg h0, sExp, N0, deF]
    rw [hE]
    exact hbd _ (Or.inl (nuOf_le_ellWt hlam)) Q hQ P hP

theorem formCoreSKX : FormCoreSKX := by
  exact formCoreSKX_of (formCoreGX_of Top.fockRBilin Top.fockRRowAct Top.hWNorm _root_.Formalism.L2.G.Model.TS.weyl_pairing Top.dualWeylIn Top.nondegK)

end Formalism.L2.G.Model.TS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FormCoreSKXOf =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.JetMatrixAlgebra =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.JetMatrixAlgebra", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.BaseMatrixAlgebra\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideDef\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideLat\nimport Formalism.GradedWeylDivisibility.DualWeylDominanceOf\nimport Formalism.GradedWeylDivisibility.FinalD\nimport Formalism.GradedWeylDivisibility.FockSpaceTableaux.LDlatLemmas\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.DualInclusionLattices\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.ElementaryDivisorBasis\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSide\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.TestSidePos\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideTen\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.ProdBlockEmbMonomial\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.WeylFormNondegenerateGlobal\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FormCoreSKXOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.G.Model

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.G.LatticeSystems

theorem posCore_of_formX {O Kf : Type} [CommRing O] [IsDomain O] [Field Kf] [Algebra O Kf]
    (hinj : Function.Injective (algebraMap O Kf)) (p m : ℕ) (lam : Fin (m + 1) → ℤ) (N : ℕ)
    (B : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf →ₗ[Kf] MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf →ₗ[Kf] Kf)
    (ha : ∀ (g : Matrix (Fin (m + 1)) (Fin (m + 1)) Kf) (P Q : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf),
        B (rowAct Kf g P) Q = B P (rowAct Kf g.transpose Q))
    (hb : ∀ Q ∈ dualWeyl Kf (m + 1) (m + 1) (nuOf lam),
        (∀ P ∈ dualWeyl Kf (m + 1) (m + 1) (nuOf lam), B P Q = 0) → Q = 0)
    (hc : ∀ Q ∈ dualWeyl Kf (m + 1) (m + 1) (nuOf lam),
        (∀ P ∈ nabO O Kf m (nuOf lam), B P Q ∈ Set.range (algebraMap O Kf)) → Q ∈ nabO O Kf m (nuOf lam))
    (hdd : ∀ Q ∈ nabO O Kf m (nuOf lam), ∀ P ∈ nabO O Kf m (nuOf lam),
        B P (((p : Kf) ^ N) • Q) ∈ Set.range (algebraMap O Kf)) :
    ∃ β, PosCore O Kf p m lam N β ∧ ∀ Q P : ↥(dualWeyl Kf (m + 1) (m + 1) (nuOf lam)),
      β Q P = B (P : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) (Q : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) := by
  classical
  set V := dualWeyl Kf (m + 1) (m + 1) (nuOf lam) with hV
  obtain ⟨Z0, -⟩ := latBasis (O := O) hinj m lam 1 (by simp)
  have hfinI : Finite ↥(ssIdx (m + 1) (m + 1) (nuOf lam)) := (sSIdxFinite (m + 1) (m + 1) (nuOf lam)).to_subtype
  have hfd : FiniteDimensional Kf V := Module.Finite.of_basis Z0
  let β0 : V →ₗ[Kf] Module.Dual Kf V :=
    LinearMap.mk₂ Kf (fun (Q P : V) => B (P : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) Q)
      (by intro Q Q' P; simp)
      (by intro c Q P; simp)
      (by intro Q P P'; simp)
      (by intro c Q P; simp)
  have hβ0 : ∀ Q P : V, β0 Q P = B (P : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) Q := fun _ _ => rfl
  have hinjβ : Function.Injective β0 := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro Q hQ
    apply Subtype.ext
    apply hb _ Q.2
    intro P hP
    have := congrArg (fun f => f ⟨P, hP⟩) hQ
    exact this
  let β : V ≃ₗ[Kf] Module.Dual Kf V := LinearMap.linearEquivOfInjective β0 hinjβ Subspace.dual_finrank_eq.symm
  have hβ : ∀ Q P : V, β Q P = B (P : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) Q := fun _ _ => rfl
  set e : ℤ := lam (Fin.last m) with he
  have key : ∀ (M : Matrix (Fin (m + 1)) (Fin (m + 1)) Kf), IsUnit M.det →
      ∀ P Q : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf,
      B (M.det ^ e • rowAct Kf M P) (((M⁻¹).transpose).det ^ e • rowAct Kf (M⁻¹).transpose Q) = B P Q := by
    intro M hM P Q
    rw [map_smul, map_smul, LinearMap.smul_apply, smul_smul, smul_eq_mul, mul_comm (((M⁻¹).transpose).det ^ e),
      det_invT_zpow M hM e, one_mul, ← ha, ldlat_rowAct_inv_right rowActMul M hM]
  have mem_iff : ∀ (M : Matrix (Fin (m + 1)) (Fin (m + 1)) Kf), IsUnit M.det →
      ∀ F : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf,
      F ∈ nablaLTw O Kf m lam M ↔ M.det ^ e • rowAct Kf M F ∈ nabO O Kf m (nuOf lam) :=
    fun M hM F => nablaLTwMem O Kf m lam M hM F
  refine ⟨β, ⟨?_, ?_⟩, hβ⟩
  · intro M hM Q hQ
    rw [mem_iff _ (det_invT M hM)]
    apply hc
    · exact Submodule.smul_mem _ _ (dualWeylRowStable Kf _ _ _ _ _ Q.2)
    · intro P0 hP0
      set P : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf := M.det ^ (-e) • rowAct Kf M⁻¹ P0 with hP
      have h1 : M.det ^ e • rowAct Kf M P = P0 := by
        rw [hP, map_smul, smul_smul, ← zpow_add₀ hM.ne_zero, add_neg_cancel, zpow_zero, one_smul,
          ldlat_rowAct_inv_left rowActMul M hM]
      have h2 : P ∈ nablaLTw O Kf m lam M := by
        rw [mem_iff M hM, h1]; exact hP0
      have h3 := hQ ⟨P, la_nablaLTw_le m lam M hM P h2⟩ h2
      rw [hβ, ← key M hM, h1] at h3
      exact h3
  · intro M hM Q P hQ hP
    rw [hβ]
    have h1 := (mem_iff M hM _).1 hP
    have h2 := (mem_iff _ (det_invT M hM) _).1 hQ
    have h3 := hdd _ h2 _ h1
    rw [map_smul, key M hM] at h3
    rw [Submodule.coe_smul, map_smul]
    exact h3

theorem ten_sideX (O Kf : Type) [CommRing O] [IsDomain O] [Field Kf] [Algebra O Kf] [IsFractionRing O Kf]
    (p : ℕ) {n' m : ℕ} (lam0 : Fin n' → Fin (m + 1) → ℤ) (hd : IsDominant lam0) (N : Fin n' → ℕ)
    (β : ∀ s : Fin n', ↥(dualWeyl Kf (m + 1) (m + 1) (nuOf (lamAt lam0 s))) ≃ₗ[Kf]
      Module.Dual Kf ↥(dualWeyl Kf (m + 1) (m + 1) (nuOf (lamAt lam0 s))))
    (hβ : ∀ s, PosCore O Kf p m (lamAt lam0 s) (N s) (β s))
    (cs : Fin n' → Kf) (hcs : ∀ s (Q P : ↥(dualWeyl Kf (m + 1) (m + 1) (nuOf (lamAt lam0 s)))), β s Q P =
      cs s * TS.fockR (P : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) (Q : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf))
    (Vs : Submodule Kf (MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf))
    (hVs : Vs = tensorLat Kf Kf (fun s => dualWeyl Kf (m + 1) (m + 1) (nuOf (lamAt lam0 s)))) :
    ∃ Ψ : Module.Dual Kf Vs ≃ₗ[Kf] Vs,
      (∀ y u : Vs, Ψ.symm y u = (∏ s, cs s) * TS.fockR (u : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf)
        (y : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf)) ∧
      ∀ Ms : Fin n' → Matrix (Fin (m + 1)) (Fin (m + 1)) Kf, (∀ s, IsUnit (Ms s).det) →
        (dualLat O Kf ((Hten O lam0 fun s => colSpan O (Ms s)).comap (Vs.subtype.restrictScalars O))).map
            (Ψ.toLinearMap.restrictScalars O) ≤
          (Hten O lam0 fun s => colSpan O ((Ms s)⁻¹).transpose).comap (Vs.subtype.restrictScalars O) ∧
        scale ((p : Kf) ^ (∑ s, N s))
            ((Hten O lam0 fun s => colSpan O ((Ms s)⁻¹).transpose).comap (Vs.subtype.restrictScalars O)) ≤
          (dualLat O Kf ((Hten O lam0 fun s => colSpan O (Ms s)).comap (Vs.subtype.restrictScalars O))).map
            (Ψ.toLinearMap.restrictScalars O) := by
  subst hVs
  classical
  have hinj : Function.Injective (algebraMap O Kf) := IsFractionRing.injective O Kf
  have hanti := kp_lamAt_antitone lam0 hd
  have hfin : ∀ s : Fin n', Finite ↥(ssIdx (m + 1) (m + 1) (nuOf (lamAt lam0 s))) :=
    fun s => (sSIdxFinite (m + 1) (m + 1) (nuOf (lamAt lam0 s))).to_subtype
  let _ : ∀ s : Fin n', Fintype ↥(ssIdx (m + 1) (m + 1) (nuOf (lamAt lam0 s))) := fun s => Fintype.ofFinite _
  set V : Fin n' → Submodule Kf (MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) :=
    fun s => dualWeyl Kf (m + 1) (m + 1) (nuOf (lamAt lam0 s)) with hV
  have hb := fun s : Fin n' => latBasis (O := O) hinj m (lamAt lam0 s) 1 (by simp)
  choose b _ using hb
  obtain ⟨Ψ, hΨ⟩ := psi_exists V β b
  refine ⟨Ψ, ?_, fun Ms hMs => ?_⟩
  · obtain ⟨x, hx⟩ := prodBasis V b
    obtain ⟨x', hx'⟩ := prodBasis V (fun s => dualB (β s) (b s))
    have h1 : ∀ j, Ψ.symm (x' j) = x.coord j := fun j => by
      rw [← hΨ b x x' hx hx' j, LinearEquiv.symm_apply_apply]
    have hpure : ∀ (Q P : ∀ s, V s) (y u : tensorLat Kf Kf V),
        (y : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) =
          ∏ s, blockEmb Kf s ((Q s : V s) : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) →
        (u : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) =
          ∏ s, blockEmb Kf s ((P s : V s) : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) →
        Ψ.symm y u = ∏ s, β s (Q s) (P s) := by
      intro Q P y u hy hu
      have h2 : y = ∑ i, (∏ s, β s (Q s) (b s (i s))) • x' i := by
        conv_lhs => rw [← x'.sum_repr y]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [repr_prod V (fun s => dualB (β s) (b s)) x' hx' Q y hy i]
        congr 1
        exact Finset.prod_congr rfl fun s _ => dualB_repr (β s) (b s) (Q s) (i s)
      have h3 : ∀ i, x.repr u i = ∏ s, (b s).repr (P s) (i s) := fun i => repr_prod V b x hx P u hu i

      rw [h2, map_sum, LinearMap.sum_apply]
      simp only [map_smul, LinearMap.smul_apply, h1, Module.Basis.coord_apply, smul_eq_mul, h3,
        ← Finset.prod_mul_distrib]
      rw [← Fintype.piFinset_univ,
        ← Finset.prod_univ_sum (fun _ => Finset.univ) (fun s a => β s (Q s) (b s a) * (b s).repr (P s) a)]
      refine Finset.prod_congr rfl fun s _ => ?_
      conv_rhs => rw [← (b s).sum_repr (P s)]

      rw [map_sum]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [map_smul, smul_eq_mul, mul_comm]
    have hB := TS.fock_pairing_bilinear
    let Bc := TS.tscForm hB (K := Kf) (σ := Fin n' × (Fin (m + 1) × Fin (m + 1))) ((∏ s, cs s)⁻¹)
    let Φ2 : (tensorLat Kf Kf V) →ₗ[Kf] Module.Dual Kf (tensorLat Kf Kf V) :=
      LinearMap.mk₂ Kf (fun (y u : tensorLat Kf Kf V) => Bc (u : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) y)
        (by intro Q Q' P; simp)
        (by intro c Q P; simp)
        (by intro Q P P'; simp)
        (by intro c Q P; simp)
    have hΦ : ∀ y u : tensorLat Kf Kf V, Φ2 y u = (∏ s, cs s) * TS.fockR (u : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf)
        (y : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) := by
      intro y u
      show ((∏ s, cs s)⁻¹)⁻¹ * TS.fockR _ _ = _
      rw [inv_inv]
    have hEq : Ψ.symm.toLinearMap = Φ2 := by
      refine x.ext fun i => x.ext fun j => ?_
      show Ψ.symm (x i) (x j) = Φ2 (x i) (x j)
      rw [hΦ, hpure (fun s => b s (i s)) (fun s => b s (j s)) (x i) (x j) (hx i) (hx j), hx i, hx j,
        TS.fock_pairing_block Kf (Fin n') (m + 1) (m + 1), ← Finset.prod_mul_distrib]
      exact Finset.prod_congr rfl fun s _ => hcs s _ _
    intro y u
    rw [← hΦ]
    exact congrArg (fun f => f y u) hEq
  have hMs' : ∀ s, IsUnit (((Ms s)⁻¹).transpose).det := fun s => det_invT _ (hMs s)
  have hZ := fun s : Fin n' => latBasis (O := O) hinj m (lamAt lam0 s) (Ms s) (hMs s)
  choose Z hZ using hZ
  obtain ⟨z, hz⟩ := prodBasis V Z
  obtain ⟨z', hz'⟩ := prodBasis V (fun s => dualB (β s) (Z s))
  have hH : ∀ Ns : Fin n' → Matrix (Fin (m + 1)) (Fin (m + 1)) Kf, (∀ s, IsUnit (Ns s).det) →
      Hten O lam0 (fun s => colSpan O (Ns s)) =
        tensorLat O Kf (fun s => nablaLTw O Kf m (lamAt lam0 s) (Ns s)) := by
    intro Ns hNs
    unfold Hten
    congr 1
    funext s
    rw [H0_eq_twisted_nabla (la_indep hinj) _ _ (hanti s) _ (hNs s)]

  have hΛ : (Hten O lam0 fun s => colSpan O (Ms s)).comap ((tensorLat Kf Kf V).subtype.restrictScalars O) =
      Submodule.span O (Set.range z) := by
    obtain ⟨-, oS⟩ := tensorBasis O Kf (Fin n') (m + 1) (m + 1) _ _
      (fun s i => ((Z s i : V s) : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf))
      (fun s => li_coe hinj (V s) (Z s)) hZ
    rw [hH Ms hMs, ← oS, ← comap_span_coe]
    congr 3
    funext i
    exact (hz i).symm
  have hdual : dualLat O Kf (Submodule.span O (Set.range z)) =
      Submodule.span O (Set.range fun i => z.coord i) := by
    have := dualLat_span (O := O) z (fun _ => 1) (fun _ => one_ne_zero)
    simpa using this
  have hmap : (dualLat O Kf ((Hten O lam0 fun s => colSpan O (Ms s)).comap
      ((tensorLat Kf Kf V).subtype.restrictScalars O))).map (Ψ.toLinearMap.restrictScalars O) =
      Submodule.span O (Set.range z') := by
    rw [hΛ, hdual, Submodule.map_span, ← Set.range_comp]
    congr 2
    funext j
    exact hΨ Z z z' hz hz' j
  rw [hmap]
  have hPmem : ∀ s (P : V s), (P : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) ∈
      nablaLTw O Kf m (lamAt lam0 s) (Ms s) → P ∈ Submodule.span O (Set.range (Z s)) := by
    intro s P hP
    rw [← hZ s] at hP
    rw [← comap_span_coe]
    exact hP
  constructor
  · rw [Submodule.span_le]
    rintro _ ⟨j, rfl⟩
    show ((z' j : tensorLat Kf Kf V) : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) ∈
      Hten O lam0 fun s => colSpan O ((Ms s)⁻¹).transpose
    rw [hz', hH _ hMs']
    apply Submodule.subset_span
    refine ⟨fun s => ((dualB (β s) (Z s) (j s) : V s) : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf),
      fun s => ?_, rfl⟩
    apply (hβ s).up (Ms s) (hMs s)
    intro P hP
    rw [beta_dualB, Module.Basis.coord_apply]
    exact repr_int (Z s) P (hPmem s P hP) (j s)
  · rintro _ ⟨Q, hQ, rfl⟩
    show ((p : Kf) ^ (∑ s, N s)) • Q ∈ Submodule.span O (Set.range z')
    rw [← comap_span_coe]
    show ((((p : Kf) ^ (∑ s, N s)) • Q : tensorLat Kf Kf V) :
      MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) ∈
      Submodule.span O (Set.range fun i => ((z' i : tensorLat Kf Kf V) :
        MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf))
    obtain ⟨-, oS'⟩ := tensorBasis O Kf (Fin n') (m + 1) (m + 1) _
      (fun s => Submodule.span O (Set.range fun i =>
        ((dualB (β s) (Z s) i : V s) : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf)))
      (fun s i => ((dualB (β s) (Z s) i : V s) : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf))
      (fun s => li_coe hinj (V s) (dualB (β s) (Z s))) (fun s => rfl)
    have hr : (Set.range fun i => ((z' i : tensorLat Kf Kf V) :
        MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf)) =
        Set.range fun i : (∀ s, ↥(ssIdx (m + 1) (m + 1) (nuOf (lamAt lam0 s)))) =>
          ∏ s, blockEmb Kf s ((dualB (β s) (Z s) (i s) : V s) : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) := by
      congr 1
      funext i
      exact hz' i
    rw [hr, oS', Submodule.coe_smul, ← Finset.prod_pow_eq_pow_sum]
    have hQ' : (Q : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) ∈
        tensorLat O Kf (fun s => nablaLTw O Kf m (lamAt lam0 s) ((Ms s)⁻¹).transpose) := by
      rw [← hH _ hMs']
      exact hQ
    refine lb_tensor O Kf _ _ (fun s => (p : Kf) ^ N s) (fun s F hF => ?_) _ hQ'
    have hFV : F ∈ V s := la_nablaLTw_le m (lamAt lam0 s) _ (hMs' s) F hF
    have h1 : (((p : Kf) ^ N s) • (⟨F, hFV⟩ : V s)) ∈
        Submodule.span O (Set.range fun i => (1 : Kf) • dualB (β s) (Z s) i) := by
      apply mem_span_of_coord (dualB (β s) (Z s)) (fun _ => 1) (fun _ => one_ne_zero)
      intro i
      rw [inv_one, one_mul, Module.Basis.coord_apply, dualB_repr]
      apply (hβ s).low (Ms s) (hMs s) ⟨F, hFV⟩ (Z s i) hF
      rw [← hZ s]
      exact Submodule.subset_span ⟨i, rfl⟩
    simp only [one_smul] at h1
    rw [← comap_span_coe] at h1
    exact h1

theorem test_side_explicit_identification : Formalism.MainNotions.TestSideCounting.RestTSX := by
  intro p n' W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w h m r lam0 hd
  have := h.frac_O
  have hinj : Function.Injective (algebraMap O Kf) := IsFractionRing.injective O Kf
  have hanti := kp_lamAt_antitone lam0 hd
  have hpos : ∀ s : Fin n', ∃ β, PosCore O Kf p m (lamAt lam0 s) (expN p m (lamAt lam0 s)) β ∧ ∃ c : Kf, c ≠ 0 ∧
      ∀ Q P : ↥(dualWeyl Kf (m + 1) (m + 1) (nuOf (lamAt lam0 s))), β Q P =
        c * TS.fockR (P : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) (Q : MvPolynomial (Fin (m + 1) × Fin (m + 1)) Kf) := by
    intro s
    obtain ⟨B, ⟨c, hc0, hcB⟩, ha, hb, hc, hdd⟩ := TS.formCoreSKX p n' W Qq O Kf ι σ j w h m (lamAt lam0 s) (hanti s)
    obtain ⟨β, h1, h2⟩ := posCore_of_formX hinj p m (lamAt lam0 s) _ B ha hb hc hdd
    exact ⟨β, h1, c, hc0, fun Q P => by rw [h2, hcB]⟩
  choose β hβ cs hcs0 hcs using hpos
  have hV : Vsp Kf lam0 = tensorLat Kf Kf
      (fun s => dualWeyl Kf (m + 1) (m + 1) (nuOf (lamAt lam0 s))) := by
    unfold Vsp
    congr 1
    funext s
    rw [if_pos (hanti s)]
  obtain ⟨Ψ, hform, hΨ⟩ := ten_sideX O Kf p lam0 hd (fun s => expN p m (lamAt lam0 s)) β hβ cs hcs (Vsp Kf lam0) hV
  have hκ : (p : Kf) ^ ((kap1 p lam0 : ℕ) : ℤ) = (p : Kf) ^ (∑ s, expN p m (lamAt lam0 s)) := by
    rw [zpow_natCast]
    rfl
  refine ⟨Ψ, ∏ s, cs s, Finset.prod_ne_zero_iff.2 (fun s _ => hcs0 s), ?_, hform⟩
  unfold Formalism.MainNotions.TestSideCounting.TSProp
  rw [hκ]
  refine ⟨?_, ?_⟩
  · intro L hL
    obtain ⟨g, hg, rfl⟩ := hL
    have h1 := hΨ (fun s => la_tw ι σ s.val g) (fun s => la_tw_det _ _ _ g hg)
    have e1 : HL (O := O) ι σ lam0 (colSpan W g) =
        (Hten O lam0 fun s => colSpan O (la_tw ι σ s.val g)).comap ((Vsp Kf lam0).subtype.restrictScalars O) := by
      unfold HL toV
      simp only [extO_colSpan h]
    have e2 : HL (O := O) ι σ lam0 (latDual (colSpan W g)) =
        (Hten O lam0 fun s => colSpan O ((la_tw ι σ s.val g)⁻¹).transpose).comap
          ((Vsp Kf lam0).subtype.restrictScalars O) := by
      unfold HL toV
      rw [latDual_colSpan g hg]
      simp only [extO_colSpan h, tw_invT ι σ _ g hg]
    rw [e1, e2]
    exact h1
  · intro e he
    obtain ⟨g, hgb⟩ := edgeBasis h m r e he
    have hg := hgb.1
    have hw := w_ne h
    have hp := p_eq h
    set c : Kf := algebraMap O Kf w with hc
    have hN : ∀ s : Fin n', IsUnit (la_tw ι σ s.val g * lb_D (m + 1) r c).det := by
      intro s
      rw [Matrix.det_mul]
      exact (la_tw_det _ _ _ g hg).mul (lb_D_det _ _ _ hw)
    have h1 := hΨ (fun s => la_tw ι σ s.val g * lb_D (m + 1) r c) hN
    have e1 : HLe (O := O) p ι σ w lam0 e =
        (Hten O lam0 fun s => colSpan O (la_tw ι σ s.val g * lb_D (m + 1) r c)).comap
          ((Vsp Kf lam0).subtype.restrictScalars O) := by
      unfold HLe toV
      simp only [leAt_of_basis h m r e g hgb, ← hc]
    have e2 : HLe (O := O) p ι σ w lam0 e.dual =
        (Hten O lam0 fun s => colSpan O ((la_tw ι σ s.val g * lb_D (m + 1) r c)⁻¹).transpose).comap
          ((Vsp Kf lam0).subtype.restrictScalars O) := by
      unfold HLe toV
      simp only [leAt_of_basis h m r e.dual _ (dual_edgeBasis p r (pQ_ne h) e g hgb), tw_mul, tw_invT ι σ _ g hg,
        tw_dE, invT_mul_D _ (la_tw_det ι σ _ g hg) r c hw, Matrix.mul_assoc, hp, ← hc, dE_sq_D r c hw]
    unfold Re Re'
    rw [e1, e2, scale_map, scale_comm]
    exact ⟨scale_mono _ h1.1, scale_mono _ h1.2⟩

end Formalism.L2.G.Model

namespace Formalism.MainNotions.TestSideCounting

theorem restTSOp_of_opF (hOp : RestOpF) (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) : RestTSOp D CLa Ck Crk Cdeg :=
  restTSOp_of _root_.Formalism.L2.G.Model.test_side_explicit_identification hOp D CLa Ck Crk Cdeg

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.JetMatrixAlgebra =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FirstWeightLeConductor =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FirstWeightLeConductor", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.BaseMatrixAlgebra\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FormSK\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.ProdBlockEmbMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockRAddRight\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.JetMatrixAlgebra\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestrictedWeightFirstTwoEq\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.WspanLeOpCl\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.RankMulConductorDivLeOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14
open Formalism.L2.G.Model (Th0 Lin Aa kapR kap thF)
open Formalism.L2.G.Model.TS (fockR)
open Formalism.MainNotions.G.LatticeSystems (la_tw la_tw_det kp_lamAt_antitone)

def TenOp : Prop :=
  ∀ (K : Type) [Field K] [CharZero K] (n' m : ℕ), 1 ≤ m → ∀ (vec : Fin n' → Bool) (TT : Finset (Fin n')) (d : Fin n' → ℕ)
    (c : ℕ) (ν : Fin n' → Fin (m + 1) → ℕ), (∀ t, Antitone (ν t)) → (∀ t ∈ TT, ν t 0 ≤ c) → (∀ t, t ∉ TT → ν t = 0) →
    ∀ β ∈ tensorLat K K (fun t => dualWeyl K (m + 1) (m + 1) (ν t)),
    ∀ s ∈ tensorLat K K (fun t => dualWeyl K (m + 1) (m + 1) (ν t)),
      ∃ (L : Finset (List (Fin n' × (Fin (m + 1) × Fin (m + 1))))) (a : List (Fin n' × (Fin (m + 1) × Fin (m + 1))) → K),
        (∀ l ∈ L, (∀ z ∈ l, z.1 ∈ TT) ∧ ∀ t, (l.filter fun z => z.1 = t).length ≤ c) ∧
        ∀ G ∈ Pol K (ι := Fin n') (m + 1) d, (∑ l ∈ L, a l • opWord l G) ∈ Pol K (ι := Fin n') (m + 1) d ∧
          ∀ H ∈ Pol K (ι := Fin n') (m + 1) d,
            fockR (Th0 K m vec G * s) (Th0 K m vec H * β) = fockR (Th0 K m vec (∑ l ∈ L, a l • opWord l G)) (Th0 K m vec H)

theorem map_opWord {R R' : Type} [CommRing R] [CommRing R'] (φ : R →+* R') {n' k : ℕ}
    (l : List (Fin n' × (Fin k × Fin k))) (f : MvPolynomial (Fin n' × Fin k) R) :
    map φ (opWord l f) = opWord l (map φ f) := by
  induction l with
  | nil => rfl
  | cons y l ih =>
    show map φ (X (y.1, y.2.1) * pderiv (y.1, y.2.2) (opWord l f)) = X (y.1, y.2.1) * pderiv (y.1, y.2.2) (opWord l (map φ f))
    rw [map_mul, map_X, ← ih, pderiv_map]

theorem map_OpCl {R R' : Type} [CommRing R] [CommRing R'] (φ : R →+* R') {n' k : ℕ} (TT : Finset (Fin n')) (c : ℕ)
    (G : MvPolynomial (Fin n' × Fin k) R) :
    ∀ f ∈ OpCl TT c (Submodule.span R {G}), map φ f ∈ OpCl TT c (Submodule.span R' {map φ G}) := by
  intro f hf
  unfold OpCl at hf
  induction hf using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨f0, hf0, l, h1, h2, rfl⟩ := hy
    obtain ⟨t, rfl⟩ := Submodule.mem_span_singleton.1 hf0
    rw [map_opWord]
    refine Submodule.subset_span ⟨map φ (t • G), ?_, l, h1, h2, rfl⟩
    rw [smul_eq_C_mul, map_mul, map_C, ← smul_eq_C_mul]
    exact Submodule.smul_mem _ _ (Submodule.mem_span_singleton_self _)
  | zero => rw [map_zero]; exact Submodule.zero_mem _
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
  | smul a x _ hx =>
    rw [smul_eq_C_mul, map_mul, map_C, ← smul_eq_C_mul]
    exact Submodule.smul_mem _ _ hx

theorem first_weight_le_conductor {n' m : ℕ} (hm : 2 ≤ m) {TT : Finset (Fin n')} {aT bT : Fin n' → ℤ} {cpp c0 : ℕ} {a : ℝ}
    {lam0 : Fin n' → Fin (m + 1) → ℤ} (hW : tableLineDegreeFive.WeightHyp TT aT bT cpp c0 a lam0) (t : Fin n') (ht : t ∈ TT) :
    nuOf (lamAt (topW TT (restW TT lam0)) t) 0 ≤ c0 := by
  obtain ⟨hb, hdom, hw⟩ := hW
  obtain ⟨_, elast, hc⟩ := (hb t).1 ht
  obtain ⟨_, _, _, hbc⟩ := hw t ht
  have h01 := restricted_weight_first_two_eq (by omega : 1 ≤ m) TT lam0 hdom t ht
  have v1 : ((1 : Fin (m + 1)) : ℕ) = 1 := by
    rw [Fin.val_one']; exact Nat.mod_eq_of_lt (by omega)
  have h10 : (1 : Fin (m + 1)) ≠ 0 := by
    intro h; have := congrArg Fin.val h; rw [v1] at this; simp at this
  have hl0 : Fin.last m ≠ 0 := by
    intro h; have := congrArg Fin.val h; simp at this; omega
  have r1 : restW TT lam0 t 1 = lam0 t 1 := by simp [restW, flW, Pi.single_eq_of_ne h10]
  have rl : restW TT lam0 t (Fin.last m) = lam0 t (Fin.last m) := by simp [restW, flW, Pi.single_eq_of_ne hl0]
  have hc1 := abs_le.1 (hc 1 (by rw [v1]; omega) (by rw [v1]; omega))
  have key : restW TT lam0 t 0 - restW TT lam0 t (Fin.last m) ≤ c0 := by
    rw [h01, r1, rl, elast]; omega
  have eX : topW TT (restW TT lam0) t = restW TT lam0 t := by simp [topW, ht]
  unfold nuOf lamAt
  rw [eX]
  split_ifs
  · omega
  · show (-restW TT lam0 t (Fin.rev 0) - -restW TT lam0 t (Fin.rev (Fin.last m))).toNat ≤ c0
    rw [Fin.rev_last, Fin.rev_zero]; omega


theorem opFAt_of_ten (hT : TenOp) {p n' : ℕ} {W Qq O Kf : Type} [CommRing W] [IsDomain W] [IsDiscreteValuationRing W]
    [Field Qq] [Algebra W Qq] [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf] [CharZero Kf]
    {ι : Qq →+* Kf} {σ : Qq ≃+* Qq} {j : W →+* O} {w : O} (hS : HidaSetting p n' W Qq O Kf ι σ j w) {m : ℕ} (hm : 1 ≤ m)
    (TT : Finset (Fin n')) (d : Fin n' → ℕ) (rest : Fin n' → Fin (m + 1) → ℤ) (hd : IsDominant rest) (c0 : ℕ)
    (h0 : ∀ t ∈ TT, nuOf (lamAt rest t) 0 ≤ c0) (h1 : ∀ t, t ∉ TT → nuOf (lamAt rest t) = 0)
    (hmat : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq) (hh : IsUnit hmat.det)
    (Θ : ↥((Pol (KK O) (ι := Fin n') (m + 1) d).restrictScalars O) ≃ₗ[O] ↥(Vsp Kf (flW (m := m) d)))
    (hΘ : IsTrueTheta hS d (flW d) (vecE n') hmat Θ) : OpFAt TT d rest c0 Θ := by
  intro κ β s F
  have hanti := kp_lamAt_antitone rest hd
  have hV : Vsp Kf rest = tensorLat Kf Kf (fun t => dualWeyl Kf (m + 1) (m + 1) (nuOf (lamAt rest t))) := by
    unfold Vsp
    congr 1
    funext t
    rw [if_pos (hanti t)]
  obtain ⟨L, a, hL, hmain⟩ := hT Kf n' m hm (vecE n') TT d c0 (fun t => nuOf (lamAt rest t))
    (fun t => Formalism.L2.G.Model.TS.nuOf_antitone (hanti t)) h0 h1 β (hV ▸ β.2) s (hV ▸ s.2)
  set A : Fin n' → Matrix (Fin (m + 1)) (Fin (m + 1)) Kf := fun x => Aa (vecE n' x) (la_tw ι σ x.val hmat)⁻¹ with hA
  set A' : Fin n' → Matrix (Fin (m + 1)) (Fin (m + 1)) Kf := fun x => Aa (vecE n' x) (la_tw ι σ x.val hmat) with hA'
  have hAA' : ∀ x, A x * A' x = 1 := fun x => Formalism.L2.G.Model.Aa_inv_mul _ _ (la_tw_det _ _ _ _ hh)
  have hA'A : ∀ x, A' x * A x = 1 := fun x => Formalism.L2.G.Model.Aa_mul_inv _ _ (la_tw_det _ _ _ _ hh)
  set G0 := map (kapR hS) (F : MvPolynomial (Fin n' × Fin (m + 1)) (KK O)) with hG0
  have hG0P : G0 ∈ Pol Kf (ι := Fin n') (m + 1) d := (Formalism.L2.G.Model.pol_iff hS _ _ _).1 F.2
  set G := Lin A G0 with hG
  have hGP : G ∈ Pol Kf (ι := Fin n') (m + 1) d := Formalism.L2.G.Model.Lin_Pol _ _ hG0P
  obtain ⟨hEP, hpair⟩ := hmain G hGP
  set E0 := ∑ l ∈ L, a l • opWord l G with hE0
  let kS : Kf →+* KK O := ((kap hS).symm : Kf ≃ₐ[O] KK O)
  have hkk : ∀ x : Kf, kapR hS (kS x) = x := fun x => (kap hS).apply_symm_apply x
  have hkk' : ∀ x : KK O, kS (kapR hS x) = x := fun x => (kap hS).symm_apply_apply x
  have hmm : ∀ P : MvPolynomial (Fin n' × Fin (m + 1)) Kf, map (kapR hS) (map kS P) = P := by
    intro P
    rw [map_map]
    have : (kapR hS).comp kS = RingHom.id Kf := RingHom.ext hkk
    rw [this, map_id]
  have hmm' : map kS G0 = (F : MvPolynomial (Fin n' × Fin (m + 1)) (KK O)) := by
    rw [hG0, map_map]
    have : kS.comp (kapR hS) = RingHom.id (KK O) := RingHom.ext hkk'
    rw [this, map_id]
  let Fp : MvPolynomial (Fin n' × Fin (m + 1)) (KK O) := map kS (Lin A' (κ • E0))
  have hFpP : Fp ∈ Pol (KK O) (ι := Fin n') (m + 1) d := by
    rw [Formalism.L2.G.Model.pol_iff hS, hmm]
    exact Formalism.L2.G.Model.Lin_Pol _ _ (Submodule.smul_mem _ _ hEP)
  have hE0cl : κ • E0 ∈ OpCl TT c0 (Submodule.span Kf {G}) := by
    refine Submodule.smul_mem _ _ (Submodule.sum_mem _ fun l hl => Submodule.smul_mem _ _ ?_)
    exact Submodule.subset_span ⟨G, Submodule.mem_span_singleton_self _, l, (hL l hl).1, (hL l hl).2, rfl⟩
  have hback : Lin A' G = G0 := by
    rw [hG, Formalism.L2.G.Model.Lin_comp]
    simp only [hAA']
    exact Formalism.L2.G.Model.Lin_one _
  have hcl2 : Lin A' (κ • E0) ∈ OpCl TT c0 (Submodule.span Kf {G0}) := by
    refine Lin_OpCl A' A hA'A TT c0 _ _ ?_ _ hE0cl
    intro f hf
    obtain ⟨t, rfl⟩ := Submodule.mem_span_singleton.1 hf
    rw [map_smul, hback]
    exact Submodule.smul_mem _ _ (Submodule.mem_span_singleton_self _)
  refine ⟨⟨Fp, hFpP⟩, ?_, ?_⟩
  · have := map_OpCl kS TT c0 G0 _ hcl2
    rw [hmm'] at this
    exact this
  · intro Y
    have hY : (Y : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) ∈ Formalism.L2.G.Model.VS Kf m (vecE n') d := by
      rw [VS_eq]; exact Y.2
    obtain ⟨H, hH, hYH⟩ := (Formalism.L2.G.Model.mem_tens_dw Kf m hm (vecE n') d _).1 hY
    have e1 : ((Θ ⟨Fp, hFpP⟩ : Vsp Kf (flW (m := m) d)) : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) =
        κ • Th0 Kf m (vecE n') E0 := by
      rw [hΘ ⟨Fp, hFpP⟩]
      show Th0 Kf m (vecE n') (Lin A (map (kapR hS) Fp)) = _
      rw [hmm, Formalism.L2.G.Model.Lin_comp]
      simp only [hA'A]
      rw [Formalism.L2.G.Model.Lin_one, map_smul]
    have e2 : ((Θ F : Vsp Kf (flW (m := m) d)) : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) =
        Th0 Kf m (vecE n') G := hΘ F
    rw [e1, e2, hYH, (Formalism.L2.G.Model.TS.fock_pairing_bilinear (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf
      (Th0 Kf m (vecE n') E0) 0 (Th0 Kf m (vecE n') H) κ).2.1, hpair H hH]

theorem restOpF_of_ten (hT : TenOp) : RestOpF := by
  refine ⟨1, one_pos, fun C _ => ?_⟩
  intro p W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w n' m r _ _ TT L₁ L₂ de hh x lam0 aT bT a Y cpp c0 Dp cStar hSet H hm hhm Θ hΘ
  have hkr : orbitWindowCount r de hh x + 2 * r ≤ (m + 1) - r := H.2.2.2.2.2.2.2.1
  have hr2 : 2 ≤ r := H.2.1
  have hdom : IsDominant lam0 := H.2.2.2.2.1.2.1
  have hS := hSet.1
  have : IsFractionRing W Qq := hS.frac_alt
  have : CharZero W := Formalism.L2.G.Model.TS.charZero_of_irreducible_natCast hS.prime hS.p_unif
  have hinj : Function.Injective (ι.comp (algebraMap W Qq)) := ι.injective.comp (IsFractionRing.injective W Qq)
  have : CharZero Kf := charZero_of_injective_ringHom hinj
  refine opFAt_of_ten hT hS (by omega) TT (dT TT lam0) _ (topW_dom TT (restW_dom (by omega) TT lam0 hdom)) c0
    (fun t ht => first_weight_le_conductor (by omega) H.2.2.2.2.1 t ht) (fun t ht => ?_) hm hhm Θ hΘ
  have : topW TT (restW TT lam0) t = 0 := by simp [topW, ht]
  rw [lamAt_zero this, nuOf_zero]

theorem restTSOp_of_ten (hT : TenOp) (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) : RestTSOp D CLa Ck Crk Cdeg :=
  restTSOp_of_opF (restOpF_of_ten hT) D CLa Ck Crk Cdeg

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FirstWeightLeConductor =====
