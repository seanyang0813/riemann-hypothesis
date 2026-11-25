module

public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BesselCharacterGenericCharacterLaws
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.HidaSetting
public import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeUnipRad
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.I0M
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Formalism.LocalToGlobal.SiegelLatticeTheory.FundamentalEquivalence.FundamentalContinuity.AdelicIsomorphismStatement
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHAlg

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentFiniteAdelesIffFrameUnipotentRadi, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentMatrixIffJointlyBijectivePair, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentMatrixPiIffForallEval, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentRealPlaceIffFrameUnipotentRadical, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LinearIndependentScaledBasisColumnsMatrixTranspo, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LinearIndependentScaledBasisColumnsMatrixTranspoStatement, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MemFlagUnipotentRadicalIffSecondModel

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentFiniteAdelesIffFrameUnipotentRadi =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentFiniteAdelesIffFrameUnipotentRadi", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BesselCharacterGenericCharacterLaws\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.HidaSetting\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix NumberField
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.UnipFin

open Formalism.L2.SG.HidaSetting

theorem mem_span_image_iff {R M ι : Type} [CommRing R] [AddCommGroup M] [Module R M] [Fintype ι]
    (v : ι → M) (s : Set ι) (w : M) :
    w ∈ Submodule.span R (v '' s) ↔ ∃ f : ι → R, (∀ i, i ∉ s → f i = 0) ∧ ∑ i, f i • v i = w := by
  rw [Finsupp.mem_span_image_iff_linearCombination]
  constructor
  · rintro ⟨l, hl, rfl⟩
    refine ⟨l, fun i hi => (Finsupp.mem_supported' R l).1 hl i hi, ?_⟩
    rw [Finsupp.linearCombination_apply, Finsupp.sum_fintype]
    intro i; exact zero_smul R _
  · rintro ⟨f, hf, rfl⟩
    refine ⟨Finsupp.equivFunOnFinite.symm f, (Finsupp.mem_supported' R _).2 fun i hi => hf i hi, ?_⟩
    rw [Finsupp.linearCombination_apply, Finsupp.sum_fintype]
    · rfl
    · intro i; exact zero_smul R _

variable (I : Formalism.MainNotions.S.AutInst)

theorem sigR_inclE (e : I.E) :
    Formalism.UG.sigR I.cm.sig (Formalism.MainNotions.S.Af I.F) (Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F) e) =
      Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F) (starRingEnd I.E e) := by
  show Algebra.TensorProduct.map I.cm.sig (AlgHom.id I.F (Formalism.MainNotions.S.Af I.F)) (e ⊗ₜ[I.F] (1 : Formalism.MainNotions.S.Af I.F)) = _
  rw [Algebra.TensorProduct.map_tmul]
  rfl

theorem hA_incl_incl (p q : Fin I.n → I.E) :
    hA I (incl I p) (incl I q) =
      Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F) (Formalism.UG.hform (starRingEnd I.E) I.J p q) := by

  simp only [hA, Formalism.UG.hform, incl, Matrix.map_apply, map_sum, map_mul, sigR_inclE]

variable {I} {ρ : ℕ} (x : Fin ρ → Fin I.n → I.E) (c : Fin ρ → I.E)

theorem mulVec_flag (v : Fin ρ → I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) :
    (Matrix.of fun k a => c a * x a k).map (Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F)) *ᵥ v =
      ∑ a, (v a * Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F) (c a)) • incl I (x a) := by
  funext k
  simp only [Matrix.mulVec, dotProduct, Matrix.map_apply, Matrix.of_apply, Finset.sum_apply, Pi.smul_apply,
    smul_eq_mul, incl, map_mul]
  exact Finset.sum_congr rfl fun a _ => by ring

theorem mulVec_dual (y : VA I) (a : Fin ρ) :
    ((Formalism.UG.cT (starRingEnd I.E) (Matrix.of fun k a => c a * x a k) * I.J).map
      (Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F)) *ᵥ y) a =
      Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F) (starRingEnd I.E (c a)) * hA I (incl I (x a)) y := by

  simp only [Matrix.mulVec, dotProduct, Matrix.map_apply, Matrix.mul_apply, Formalism.UG.cT, Matrix.transpose_apply,
  Matrix.of_apply, map_sum, map_mul, hA, Formalism.UG.hform, incl, sigR_inclE, Finset.mul_sum, Finset.sum_mul]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring

theorem unip_flag_iff_Nfin : ∀ (I : Formalism.MainNotions.S.AutInst) {ρ : ℕ} (x : Fin ρ → Fin I.n → I.E) (c : Fin ρ → I.E) (z : Fin I.n → I.E), (∀ a, c a ≠ 0) → (∀ a, Formalism.UG.hform (starRingEnd I.E) I.J (x a) z = 0) → ∀ (N : Matrix (Fin I.n) (Fin I.n) (I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F)), GlobalTheory.BesselChar.Unip ((Matrix.of fun k a => c a * x a k).map (Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F))) ((Formalism.UG.cT (starRingEnd I.E) (Matrix.of fun k a => c a * x a k) * I.J).map (Formalism.UG.inclE (F := I.F) (Formalism.MainNotions.S.Af I.F))) N ↔ ((∀ a : Fin ρ, (N - 1) *ᵥ Formalism.L2.SG.HidaSetting.incl I (x a) ∈ Submodule.span (I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) ((fun b => Formalism.L2.SG.HidaSetting.incl I (x b)) '' {b | b.1 < a.1})) ∧ (N - 1) *ᵥ Formalism.L2.SG.HidaSetting.incl I z ∈ Submodule.span (I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) (Set.range fun b => Formalism.L2.SG.HidaSetting.incl I (x b)) ∧ ∀ y : Formalism.L2.SG.HidaSetting.VA I, (∀ a, Formalism.L2.SG.HidaSetting.hA I (Formalism.L2.SG.HidaSetting.incl I (x a)) y = 0) → (N - 1) *ᵥ y ∈ Submodule.span (I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) (Set.range fun b => Formalism.L2.SG.HidaSetting.incl I (x b))) := by
  intro I ρ x c z hc hz N

  let EA := (Matrix.of fun k a => c a * x a k).map (Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F))
  let w : Fin ρ → VA I := fun a => incl I (x a)
  have hcol : ∀ a, (fun k => EA k a) = Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c a) • w a := by
    intro a; funext k
    simp only [EA, w, Matrix.map_apply, Matrix.of_apply, Pi.smul_apply, smul_eq_mul, incl, map_mul]
  have hinv : ∀ a, Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c a)⁻¹ * Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c a) = 1 := fun a => by
    rw [← map_mul, inv_mul_cancel₀ (hc a), map_one]
  have hinv' : ∀ a, Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c a) * Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c a)⁻¹ = 1 := fun a => by
    rw [← map_mul, mul_inv_cancel₀ (hc a), map_one]

  have hK : ∀ y : VA I, (Formalism.UG.cT (starRingEnd I.E) (Matrix.of fun k a => c a * x a k) * I.J).map (Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F)) *ᵥ y = 0 ↔
      ∀ a, hA I (incl I (x a)) y = 0 := by
    intro y
    constructor
    · intro h a
      have hs : starRingEnd I.E (c a) ≠ 0 := (map_ne_zero _).2 (hc a)
      have h1 := congrFun h a
      rw [mulVec_dual] at h1
      calc hA I (incl I (x a)) y
          = Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (starRingEnd I.E (c a))⁻¹ * (Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (starRingEnd I.E (c a)) * hA I (incl I (x a)) y) := by
            rw [← mul_assoc, ← map_mul, inv_mul_cancel₀ hs, map_one, one_mul]
        _ = 0 := by rw [h1, Pi.zero_apply, mul_zero]
    · intro h
      funext a
      rw [mulVec_dual, h a, mul_zero, Pi.zero_apply]

  have hspan : ∀ y : VA I, (∃ v, N *ᵥ y = y + EA *ᵥ v) ↔
      (N - 1) *ᵥ y ∈ Submodule.span (I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) (Set.range w) := by
    intro y
    rw [Submodule.mem_span_range_iff_exists_fun]
    constructor
    · rintro ⟨v, hv⟩
      refine ⟨fun a => v a * Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c a), ?_⟩
      rw [← mulVec_flag, Matrix.sub_mulVec, hv, Matrix.one_mulVec]
      abel
    · rintro ⟨f, hf⟩
      refine ⟨fun a => f a * Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c a)⁻¹, ?_⟩
      rw [mulVec_flag]
      simp_rw [mul_assoc, hinv, mul_one]
      rw [hf, Matrix.sub_mulVec, Matrix.one_mulVec]
      abel
  constructor
  · rintro ⟨⟨T, hT, hNT⟩, h2⟩
    have hdual : ∀ y : VA I, (∀ a, hA I (incl I (x a)) y = 0) →
        (N - 1) *ᵥ y ∈ Submodule.span (I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) (Set.range w) :=
      fun y hy => (hspan y).1 (h2 y ((hK y).2 hy))
    refine ⟨fun a => ?_, hdual _ fun a => by rw [hA_incl_incl, hz a, map_zero], hdual⟩
    have hv : N *ᵥ (fun k => EA k a) = (fun k => EA k a) + EA *ᵥ (fun b => T b a) :=
      funext fun k => congrFun (congrFun hNT k) a
    rw [hcol, Matrix.mulVec_smul, mulVec_flag] at hv
    have hw : (N - 1) *ᵥ w a = ∑ b, (Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c a)⁻¹ * (T b a * Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c b))) • w b := by
      have := congrArg (fun v => Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c a)⁻¹ • v) hv
      simp only [smul_add, smul_smul, hinv, one_smul, Finset.smul_sum] at this
      rw [Matrix.sub_mulVec, Matrix.one_mulVec, this]
      abel
    refine (mem_span_image_iff w _ _).2 ⟨fun b => Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c a)⁻¹ * (T b a * Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c b)), fun b hb => ?_, hw.symm⟩
    show _ * (T b a * _) = 0
    rw [hT b a (not_lt.1 hb), zero_mul, mul_zero]
  · rintro ⟨h1, -, h3⟩
    choose f hf0 hfs using fun a => (mem_span_image_iff w _ _).1 (h1 a)
    refine ⟨⟨fun b a => Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c a) * f a b * Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c b)⁻¹, fun j i hij => ?_, ?_⟩, fun y hy => ?_⟩
    · show _ * f i j * _ = 0
      rw [hf0 i j (not_lt.2 hij), mul_zero, zero_mul]
    · ext k a
      suffices hv : N *ᵥ (fun k => EA k a) =
          (fun k => EA k a) + EA *ᵥ (fun b => Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c a) * f a b * Formalism.UG.inclE (F := I.F) (E := I.E) (Formalism.MainNotions.S.Af I.F) (c b)⁻¹) from congrFun hv k
      rw [hcol, Matrix.mulVec_smul, mulVec_flag]
      simp_rw [mul_assoc, hinv, mul_one]
      have hN : N *ᵥ w a = w a + (N - 1) *ᵥ w a := by
        rw [Matrix.sub_mulVec, Matrix.one_mulVec]; abel
      rw [hN, ← hfs a, smul_add, Finset.smul_sum]
      simp_rw [smul_smul]
      rfl
    · exact (hspan y).2 (h3 y ((hK y).1 hy))

end GlobalTheory.UnipFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentFiniteAdelesIffFrameUnipotentRadi =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentMatrixIffJointlyBijectivePair =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentMatrixIffJointlyBijectivePair", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BesselCharacterGenericCharacterLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

namespace GlobalTheory.BesselChar.JointSplit

variable {A R₁ R₂ : Type} [CommRing A] [CommRing R₁] [CommRing R₂]

theorem fwd (f : A →+* R₁) (g : A →+* R₂) (hinj : ∀ y, f y = 0 → g y = 0 → y = 0)
    (hsurj : ∀ a b, ∃ y, f y = a ∧ g y = b) {n ρ : ℕ} (E : Matrix (Fin n) (Fin ρ) A)
    (K : Matrix (Fin ρ) (Fin n) A) (M : Matrix (Fin n) (Fin n) A) (h : GlobalTheory.BesselChar.Unip E K M) :
    GlobalTheory.BesselChar.Unip (E.map f) (K.map f) (M.map f) := by
  obtain ⟨⟨T, hT, hMT⟩, h2⟩ := h
  refine ⟨⟨T.map f, fun j i hij => by simp [hT j i hij], ?_⟩, fun y₁ hy₁ => ?_⟩
  · rw [← Matrix.map_mul, hMT, Matrix.map_add _ (map_add f), Matrix.map_mul]
  · choose l hl1 hl2 using hsurj
    obtain ⟨y, hfy, hgy⟩ : ∃ y : Fin n → A, (fun i => f (y i)) = y₁ ∧ (fun i => g (y i)) = 0 :=
      ⟨fun i => l (y₁ i) 0, funext fun i => hl1 _ _, funext fun i => hl2 _ _⟩
    have hKy : K *ᵥ y = 0 := by
      funext i
      apply hinj
      · have := congrFun (GlobalTheory.BesselChar.mulVec_map f K y) i
        rw [hfy, hy₁] at this
        exact this.symm
      · have := congrFun (GlobalTheory.BesselChar.mulVec_map g K y) i
        rw [hgy, Matrix.mulVec_zero] at this
        exact this.symm
    obtain ⟨a, ha⟩ := h2 y hKy
    refine ⟨fun i => f (a i), ?_⟩
    subst hfy
    rw [GlobalTheory.BesselChar.mulVec_map, GlobalTheory.BesselChar.mulVec_map, ha]
    funext i
    simp only [Pi.add_apply, map_add (f := _)]

theorem bwd (f : A →+* R₁) (g : A →+* R₂) (hinj : ∀ y, f y = 0 → g y = 0 → y = 0)
    (hsurj : ∀ a b, ∃ y, f y = a ∧ g y = b) {n ρ : ℕ} (E : Matrix (Fin n) (Fin ρ) A)
    (K : Matrix (Fin ρ) (Fin n) A) (M : Matrix (Fin n) (Fin n) A)
    (h1 : GlobalTheory.BesselChar.Unip (E.map f) (K.map f) (M.map f))
    (h2 : GlobalTheory.BesselChar.Unip (E.map g) (K.map g) (M.map g)) : GlobalTheory.BesselChar.Unip E K M := by
  choose l hl1 hl2 using hsurj
  have l00 : l 0 0 = 0 := hinj _ (hl1 0 0) (hl2 0 0)
  have extM : ∀ {p q : ℕ} (X Y : Matrix (Fin p) (Fin q) A), X.map f = Y.map f → X.map g = Y.map g → X = Y := by
    intro p q X Y hf hg
    ext i j
    rw [← sub_eq_zero]
    apply hinj
    · rw [map_sub, sub_eq_zero]; exact congrFun (congrFun hf i) j
    · rw [map_sub, sub_eq_zero]; exact congrFun (congrFun hg i) j
  have extV : ∀ {p : ℕ} (x z : Fin p → A), (fun i => f (x i)) = (fun i => f (z i)) →
      (fun i => g (x i)) = (fun i => g (z i)) → x = z := by
    intro p x z hf hg
    funext i
    rw [← sub_eq_zero]
    apply hinj
    · rw [map_sub, sub_eq_zero]; exact congrFun hf i
    · rw [map_sub, sub_eq_zero]; exact congrFun hg i
  obtain ⟨⟨T₁, hT₁, e₁⟩, k₁⟩ := h1
  obtain ⟨⟨T₂, hT₂, e₂⟩, k₂⟩ := h2
  let T : Matrix (Fin ρ) (Fin ρ) A := Matrix.of fun i j => l (T₁ i j) (T₂ i j)
  have hTf : T.map f = T₁ := by ext i j; exact hl1 _ _
  have hTg : T.map g = T₂ := by ext i j; exact hl2 _ _
  refine ⟨⟨T, fun j i hij => ?_, ?_⟩, fun y hy => ?_⟩
  · show l (T₁ j i) (T₂ j i) = 0
    rw [hT₁ j i hij, hT₂ j i hij, l00]
  · apply extM
    · rw [Matrix.map_mul, Matrix.map_add _ (map_add f), Matrix.map_mul, hTf, e₁]
    · rw [Matrix.map_mul, Matrix.map_add _ (map_add g), Matrix.map_mul, hTg, e₂]
  · have hy₁ : K.map f *ᵥ (fun i => f (y i)) = 0 := by
      rw [GlobalTheory.BesselChar.mulVec_map, hy]; funext i; exact map_zero f
    have hy₂ : K.map g *ᵥ (fun i => g (y i)) = 0 := by
      rw [GlobalTheory.BesselChar.mulVec_map, hy]; funext i; exact map_zero g
    obtain ⟨a₁, ha₁⟩ := k₁ _ hy₁
    obtain ⟨a₂, ha₂⟩ := k₂ _ hy₂
    have ea₁ : (fun i => f (l (a₁ i) (a₂ i))) = a₁ := funext fun i => hl1 _ _
    have ea₂ : (fun i => g (l (a₁ i) (a₂ i))) = a₂ := funext fun i => hl2 _ _
    refine ⟨fun i => l (a₁ i) (a₂ i), extV _ _ ?_ ?_⟩
    · rw [← GlobalTheory.BesselChar.mulVec_map, ha₁]
      conv_lhs => rw [← ea₁, GlobalTheory.BesselChar.mulVec_map]
      funext i
      simp only [Pi.add_apply, map_add (f := _)]
    · rw [← GlobalTheory.BesselChar.mulVec_map, ha₂]
      conv_lhs => rw [← ea₂, GlobalTheory.BesselChar.mulVec_map]
      funext i
      simp only [Pi.add_apply, map_add (f := _)]

theorem unip_iff_of_joint : ∀ {A R₁ R₂ : Type} [CommRing A] [CommRing R₁] [CommRing R₂] (f : A →+* R₁) (g : A →+* R₂), (∀ y, f y = 0 → g y = 0 → y = 0) → (∀ a b, ∃ y, f y = a ∧ g y = b) → ∀ {n ρ : ℕ} (E : Matrix (Fin n) (Fin ρ) A) (K : Matrix (Fin ρ) (Fin n) A) (M : Matrix (Fin n) (Fin n) A), GlobalTheory.BesselChar.Unip E K M ↔ GlobalTheory.BesselChar.Unip (E.map f) (K.map f) (M.map f) ∧ GlobalTheory.BesselChar.Unip (E.map g) (K.map g) (M.map g) := by
  intro A R₁ R₂ _ _ _ f g hinj hsurj n ρ E K M
  refine ⟨fun h => ⟨fwd f g hinj hsurj E K M h, fwd g f (fun y hg hf => hinj y hf hg)
    (fun a b => (hsurj b a).imp fun _ h => h.symm) E K M h⟩, fun h => bwd f g hinj hsurj E K M h.1 h.2⟩

end GlobalTheory.BesselChar.JointSplit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentMatrixIffJointlyBijectivePair =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentMatrixPiIffForallEval =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentMatrixPiIffForallEval", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BesselCharacterGenericCharacterLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

namespace GlobalTheory.BesselChar

theorem unip_pi_iff {ι S : Type} [Fintype ι] [DecidableEq ι] [CommRing S] {n ρ : ℕ}
    (E : Matrix (Fin n) (Fin ρ) (ι → S)) (K : Matrix (Fin ρ) (Fin n) (ι → S))
    (M : Matrix (Fin n) (Fin n) (ι → S)) :
    GlobalTheory.BesselChar.Unip E K M ↔ ∀ i, GlobalTheory.BesselChar.Unip (E.map (Pi.evalRingHom (fun _ => S) i))
      (K.map (Pi.evalRingHom (fun _ => S) i)) (M.map (Pi.evalRingHom (fun _ => S) i)) := by
  constructor
  · rintro ⟨⟨T, hT, e⟩, h2⟩ i
    set φ := Pi.evalRingHom (fun _ => S) i
    refine ⟨⟨T.map φ, fun j l hjl => by simp [Matrix.map_apply, hT j l hjl], ?_⟩, fun y hy => ?_⟩
    · have := congrArg (fun X => X.map φ) e
      simpa only [Matrix.map_mul, Matrix.map_add _ (map_add φ)] using this
    · let y' : Fin n → ι → S := fun k => Pi.single i (y k)
      have hy' : K *ᵥ y' = 0 := by
        funext j i'
        by_cases hi : i' = i
        · subst hi
          have h1 := congr_fun (mulVec_map φ K y') j
          have h0 : (fun k => φ (y' k)) = y := by
            funext k; simp [φ, y']
          rw [h0, hy] at h1
          simpa [φ] using h1.symm
        · show (∑ k, K j k * y' k) i' = 0
          rw [Finset.sum_apply]
          refine Finset.sum_eq_zero fun k _ => ?_
          simp [y', hi]
      obtain ⟨a, ha⟩ := h2 y' hy'
      refine ⟨fun l => φ (a l), ?_⟩
      have h0 : (fun k => φ (y' k)) = y := by
        funext k; simp [φ, y']
      have h1 := mulVec_map φ M y'
      have h3 := mulVec_map φ E a
      rw [h0] at h1
      rw [h1, h3, ha]
      funext k
      simp only [Pi.add_apply, map_add (f := _)]
      rw [show φ (y' k) = y k from congr_fun h0 k]
  · intro h
    choose hc hv using h
    choose T hT e using hc
    refine ⟨⟨Matrix.of fun j l i => T i j l, fun j l hjl => by funext i; exact hT i j l hjl, ?_⟩, fun y hy => ?_⟩
    · ext k l i
      have h1 := congr_fun (congr_fun (e i) k) l
      have hT' : (Matrix.of fun j l i => T i j l).map (Pi.evalRingHom (fun _ => S) i) = T i := by
        ext j l; rfl
      have h2 : ((M * E).map (Pi.evalRingHom (fun _ => S) i)) k l
          = ((E + E * Matrix.of fun j l i => T i j l).map (Pi.evalRingHom (fun _ => S) i)) k l := by
        rw [Matrix.map_mul, Matrix.map_add _ (map_add _), Matrix.map_mul, hT']
        exact h1
      simpa using h2
    · have hyi : ∀ i, K.map (Pi.evalRingHom (fun _ => S) i) *ᵥ (fun k => y k i) = 0 := by
        intro i
        have := mulVec_map (Pi.evalRingHom (fun _ => S) i) K y
        refine this.trans ?_
        rw [hy]; rfl
      choose a ha using fun i => hv i _ (hyi i)
      refine ⟨fun l i => a i l, ?_⟩
      funext k i
      have h1 := congr_fun (mulVec_map (Pi.evalRingHom (fun _ => S) i) M y) k
      have h3 := congr_fun (mulVec_map (Pi.evalRingHom (fun _ => S) i) E (fun l i => a i l)) k
      have h4 := congr_fun (ha i) k
      simp only [Pi.evalRingHom_apply] at h1 h3
      show (M *ᵥ y) k i = y k i + (E *ᵥ fun l i => a i l) k i
      rw [← h1, ← h3, h4]
      rfl

end GlobalTheory.BesselChar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentMatrixPiIffForallEval =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentRealPlaceIffFrameUnipotentRadical =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentRealPlaceIffFrameUnipotentRadical", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BesselCharacterGenericCharacterLaws\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.HidaSetting\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeUnipRad\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix NumberField
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.RealUnipFrame

variable {n ρ : ℕ}

theorem mem_span_image_iff (g : Fin ρ → Fin n → ℂ) (S : Set (Fin ρ)) (w : Fin n → ℂ) :
    w ∈ Submodule.span ℂ (g '' S) ↔ ∃ t : Fin ρ → ℂ, (∀ b, b ∉ S → t b = 0) ∧ ∑ b, t b • g b = w := by
  constructor
  · intro h
    obtain ⟨l, hl, rfl⟩ := (Finsupp.mem_span_image_iff_linearCombination ℂ).1 h
    refine ⟨l, fun b hb => ?_, ?_⟩
    · by_contra h0
      exact hb (hl (Finsupp.mem_support_iff.2 h0))
    · rw [Finsupp.linearCombination_apply, Finsupp.sum_fintype]
      intro i; simp
  · rintro ⟨t, ht, rfl⟩
    refine Submodule.sum_mem _ fun b _ => ?_
    by_cases hb : b ∈ S
    · exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨b, hb, rfl⟩)
    · rw [ht b hb, zero_smul]; exact Submodule.zero_mem _

theorem mem_span_image_mulVec (Q P : Matrix (Fin n) (Fin n) ℂ) (hPQ : P * Q = 1) (g : Fin ρ → Fin n → ℂ)
    (S : Set (Fin ρ)) (w : Fin n → ℂ) :
    Q *ᵥ w ∈ Submodule.span ℂ ((fun b => Q *ᵥ g b) '' S) ↔ w ∈ Submodule.span ℂ (g '' S) := by
  rw [mem_span_image_iff, mem_span_image_iff]
  have hinj : ∀ u u' : Fin n → ℂ, Q *ᵥ u = Q *ᵥ u' → u = u' := by
    intro u u' h
    have := congrArg (P *ᵥ ·) h
    simpa only [Matrix.mulVec_mulVec, hPQ, Matrix.one_mulVec] using this
  have hsum : ∀ t : Fin ρ → ℂ, ∑ b, t b • Q *ᵥ g b = Q *ᵥ ∑ b, t b • g b := by
    intro t
    rw [Matrix.mulVec_sum]
    simp only [Matrix.mulVec_smul]
  refine exists_congr fun t => and_congr Iff.rfl ?_
  rw [hsum]
  exact ⟨hinj _ _, fun h => by rw [h]⟩

end GlobalTheory.RealUnipFrame

namespace GlobalTheory.RealUnipFrame

variable {n ρ : ℕ}

theorem cols_iff (f : Fin ρ → Fin n → ℂ) (d : Fin ρ → ℂ) (hd : ∀ a, d a ≠ 0) (N : Matrix (Fin n) (Fin n) ℂ) :
    (∃ T : Matrix (Fin ρ) (Fin ρ) ℂ, GlobalTheory.BesselChar.StrictUp T ∧
      N * Matrix.of (fun k a => d a * f a k) = Matrix.of (fun k a => d a * f a k) + Matrix.of (fun k a => d a * f a k) * T) ↔
    ∀ i : Fin ρ, (N - 1) *ᵥ f i ∈ Submodule.span ℂ (f '' {b | b.1 < i.1}) := by
  have e1 : ∀ i k, d i * (N *ᵥ f i) k = ∑ j, N k j * (d i * f i j) := by
    intro i k
    simp only [Matrix.mulVec, dotProduct, Finset.mul_sum]
    exact Finset.sum_congr rfl fun j _ => by ring
  constructor
  · rintro ⟨T, hT, h⟩ i
    rw [mem_span_image_iff]
    refine ⟨fun j => d j * T j i / d i, fun j hj => ?_, ?_⟩
    · have : i ≤ j := by
        simp only [Set.mem_setOf_eq, not_lt] at hj
        exact Fin.le_def.2 hj
      show d j * T j i / d i = 0
      rw [hT j i this]; simp
    · funext k
      have hk := congrFun (congrFun h k) i
      simp only [Matrix.mul_apply, Matrix.add_apply, Matrix.of_apply] at hk
      rw [Finset.sum_apply]
      simp only [Pi.smul_apply, smul_eq_mul, Matrix.sub_mulVec, Matrix.one_mulVec, Pi.sub_apply]
      have hdi := hd i
      have key : d i * (N *ᵥ f i) k = d i * f i k + ∑ j, d j * T j i * f j k := by
        have e2 : ∑ j, d j * T j i * f j k = ∑ j, d j * f j k * T j i :=
          Finset.sum_congr rfl fun j _ => by ring
        rw [e1, hk, e2]
      have e4 : ∑ x, d x * T x i / d i * f x k = (∑ j, d j * T j i * f j k) / d i := by
        rw [Finset.sum_div]; exact Finset.sum_congr rfl fun j _ => by ring
      rw [e4, div_eq_iff hdi]
      linear_combination -key
  · intro h
    choose t ht hts using fun i => (mem_span_image_iff f _ _).1 (h i)
    refine ⟨Matrix.of fun j i => d i * t i j / d j, fun j i hij => ?_, ?_⟩
    · have : ¬ j.1 < i.1 := by rw [Fin.le_def] at hij; omega
      simp [ht i j (by simpa using this)]
    · ext k i
      have hk := congrFun (hts i) k
      rw [Finset.sum_apply] at hk
      simp only [Pi.smul_apply, smul_eq_mul, Matrix.sub_mulVec, Matrix.one_mulVec, Pi.sub_apply] at hk
      simp only [Matrix.mul_apply, Matrix.add_apply, Matrix.of_apply]
      have e3 : ∑ j, d j * f j k * (d i * t i j / d j) = d i * ∑ j, t i j * f j k := by
        rw [Finset.mul_sum]
        refine Finset.sum_congr rfl fun j _ => ?_
        have := hd j
        field_simp
      rw [← e1, e3, hk]
      ring

theorem colspan_iff (f : Fin ρ → Fin n → ℂ) (d : Fin ρ → ℂ) (hd : ∀ a, d a ≠ 0) (N : Matrix (Fin n) (Fin n) ℂ)
    (y : Fin n → ℂ) :
    (∃ a, N *ᵥ y = y + Matrix.of (fun k a => d a * f a k) *ᵥ a) ↔
      (N - 1) *ᵥ y ∈ Submodule.span ℂ (f '' {b | b.1 < ρ}) := by
  have hE : ∀ a : Fin ρ → ℂ, Matrix.of (fun k a => d a * f a k) *ᵥ a = ∑ b, (a b * d b) • f b := by
    intro a; funext k
    simp only [Matrix.mulVec, dotProduct, Matrix.of_apply, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
    refine Finset.sum_congr rfl fun b _ => by ring
  rw [mem_span_image_iff, Matrix.sub_mulVec, Matrix.one_mulVec]
  constructor
  · rintro ⟨a, ha⟩
    refine ⟨fun b => a b * d b, fun b hb => absurd b.2 (by simpa using hb), ?_⟩
    rw [← hE, ha, add_sub_cancel_left]
  · rintro ⟨t, -, ht⟩
    refine ⟨fun b => t b / d b, ?_⟩
    rw [hE]
    have : ∀ b, t b / d b * d b = t b := fun b => div_mul_cancel₀ _ (hd b)
    simp only [this, ht, add_sub_cancel]

end GlobalTheory.RealUnipFrame

namespace GlobalTheory.RealUnipFrame

open Formalism.L2.SG.HidaSetting

variable {n ρ : ℕ}

theorem conj_sub_mulVec (Q P N : Matrix (Fin n) (Fin n) ℂ) (hPQ : P * Q = 1) (w : Fin n → ℂ) :
    (Q * N * P - 1) *ᵥ (Q *ᵥ w) = Q *ᵥ ((N - 1) *ᵥ w) := by
  rw [Matrix.sub_mulVec, Matrix.sub_mulVec, Matrix.one_mulVec, Matrix.one_mulVec, Matrix.mulVec_sub,
    Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, Matrix.mul_assoc, hPQ, Matrix.mul_one]

theorem hJ_frame (ε : Fin n → Bool) (P Q Jc : Matrix (Fin n) (Fin n) ℂ) (hPQ : P * Q = 1)
    (hspec : Pᴴ * Jc * P = Formalism.REAL.Jm ε) (f y : Fin n → ℂ) :
    hJ ε (Q *ᵥ f) (Q *ᵥ y) = star f ⬝ᵥ (Jc *ᵥ y) := by
  unfold hJ
  rw [← hspec, Matrix.mulVec_mulVec, Matrix.mul_assoc, Matrix.mul_assoc, hPQ, Matrix.mul_one, ← Matrix.mulVec_mulVec,
    star_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, ← Matrix.conjTranspose_mul, hPQ,
    Matrix.conjTranspose_one, Matrix.one_mulVec]

theorem emb_hform (I : Formalism.MainNotions.S.AutInst) (v : InfinitePlace I.F) (x z : Fin I.n → I.E) :
    I.φ v (Formalism.UG.hform (starRingEnd I.E) I.J x z) =
      star (fun i => I.φ v (x i)) ⬝ᵥ (I.J.map (I.φ v) *ᵥ fun i => I.φ v (z i)) := by
  rw [← Formalism.MainNotions.BridgeUnipRad.hform_eq]

  simp only [Formalism.UG.hform, map_sum, map_mul, Matrix.map_apply, starRingEnd_apply,
  Formalism.MainNotions.BridgeUnipRad.emb_star]

theorem perp_mulVec (I : Formalism.MainNotions.S.AutInst) (v : InfinitePlace I.F) (x : Fin ρ → Fin I.n → I.E) (c : Fin ρ → I.E)
    (y : Fin I.n → ℂ) :
    (Formalism.UG.cT (starRingEnd I.E) (Matrix.of fun k a => c a * x a k) * I.J).map (I.φ v) *ᵥ y =
      fun a => starRingEnd ℂ (I.φ v (c a)) * (star (fun i => I.φ v (x a i)) ⬝ᵥ (I.J.map (I.φ v) *ᵥ y)) := by
  funext a
  rw [Matrix.map_mul]
  simp only [Matrix.mulVec, dotProduct, Matrix.mul_apply, Formalism.UG.cT, Matrix.map_apply, Matrix.transpose_apply,
    Matrix.of_apply, Finset.mul_sum, Finset.sum_mul, map_mul, starRingEnd_apply, Formalism.MainNotions.BridgeUnipRad.emb_star,
    Pi.star_apply]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring

end GlobalTheory.RealUnipFrame

namespace GlobalTheory.RealUnipFrame

open Formalism.L2.SG.HidaSetting

theorem unip_iff_inN : ∀ (I : Formalism.MainNotions.S.AutInst) (v : InfinitePlace I.F) {ρ : ℕ} (x : Fin ρ → Fin I.n → I.E) (c : Fin ρ → I.E)
    (z : Fin I.n → I.E), (∀ a, c a ≠ 0) → (∀ a, Formalism.UG.hform (starRingEnd I.E) I.J (x a) z = 0) →
    ∀ (N : Matrix (Fin I.n) (Fin I.n) ℂ), GlobalTheory.BesselChar.Unip ((Matrix.of fun k a => c a * x a k).map (I.φ v))
      ((Formalism.UG.cT (starRingEnd I.E) (Matrix.of fun k a => c a * x a k) * I.J).map (I.φ v)) N ↔
      Formalism.L2.SG.HidaSetting.InN (I.ε v) (fun a => Formalism.L2.SG.HidaSetting.rv I v (x a)) (Formalism.L2.SG.HidaSetting.rv I v z)
        ((I.P v)⁻¹ * N * I.P v) := by
  intro I v ρ x c z hc hz N
  have hu : IsUnit (I.P v).det := (Matrix.isUnit_iff_isUnit_det _).1 (I.P_unit v)
  have hPQ : I.P v * (I.P v)⁻¹ = 1 := Matrix.mul_nonsing_inv _ hu
  have hQP : (I.P v)⁻¹ * I.P v = 1 := Matrix.nonsing_inv_mul _ hu
  set f : Fin ρ → Fin I.n → ℂ := fun a k => I.φ v (x a k) with hf
  set d : Fin ρ → ℂ := fun a => I.φ v (c a) with hdd
  have hd : ∀ a, d a ≠ 0 := fun a => (map_ne_zero (I.φ v)).2 (hc a)
  have hE : (Matrix.of fun k a => c a * x a k).map (I.φ v) = Matrix.of fun k a => d a * f a k := by
    ext k a; simp [hf, hdd]
  have hrv : ∀ w : Fin I.n → I.E, rv I v w = (I.P v)⁻¹ *ᵥ fun i => I.φ v (w i) := fun _ => rfl
  have hrx : (fun a => rv I v (x a)) = fun b => (I.P v)⁻¹ *ᵥ f b := rfl
  have hspan : ∀ (w : Fin I.n → ℂ) (S : Set (Fin ρ)),
      ((I.P v)⁻¹ * N * I.P v - 1) *ᵥ ((I.P v)⁻¹ *ᵥ w) ∈ Submodule.span ℂ ((fun a => rv I v (x a)) '' S) ↔
        (N - 1) *ᵥ w ∈ Submodule.span ℂ (f '' S) := by
    intro w S
    rw [conj_sub_mulVec _ _ _ hPQ, hrx]
    exact mem_span_image_mulVec _ _ hPQ f S _
  have hperp : ∀ y : Fin I.n → ℂ,
      ((Formalism.UG.cT (starRingEnd I.E) (Matrix.of fun k a => c a * x a k) * I.J).map (I.φ v)) *ᵥ y = 0 ↔
        ∀ a, hJ (I.ε v) (rv I v (x a)) ((I.P v)⁻¹ *ᵥ y) = 0 := by
    intro y
    rw [perp_mulVec]
    simp only [hrv, hJ_frame (I.ε v) (I.P v) _ (I.J.map (I.φ v)) hPQ (I.P_spec v)]
    constructor
    · intro h a
      have := congrFun h a
      exact (mul_eq_zero.1 this).resolve_left ((map_ne_zero _).2 (hd a))
    · intro h
      funext a
      simp [h a]
  unfold GlobalTheory.BesselChar.Unip InN InS spanLt
  rw [hE, cols_iff f d hd N]
  have hB : (∀ y, ((Formalism.UG.cT (starRingEnd I.E) (Matrix.of fun k a => c a * x a k) * I.J).map (I.φ v)) *ᵥ y = 0 →
        ∃ a, N *ᵥ y = y + (Matrix.of fun k a => d a * f a k) *ᵥ a) ↔
      ∀ y, (∀ a, hJ (I.ε v) (rv I v (x a)) y = 0) →
        ((I.P v)⁻¹ * N * I.P v - 1) *ᵥ y ∈ Submodule.span ℂ ((fun a => rv I v (x a)) '' {b | b.1 < ρ}) := by
    constructor
    · intro h y' hy'
      have hy : y' = (I.P v)⁻¹ *ᵥ (I.P v *ᵥ y') := by rw [Matrix.mulVec_mulVec, hQP, Matrix.one_mulVec]
      rw [hy] at hy' ⊢
      rw [hspan, ← colspan_iff f d hd]
      exact h _ ((hperp _).2 hy')
    · intro h y hy
      rw [colspan_iff f d hd, ← hspan]
      exact h _ ((hperp y).1 hy)
  rw [hB]
  constructor
  · rintro ⟨h1, h2⟩
    refine ⟨⟨fun a => (hspan (f a) _).2 (h1 a), ?_⟩, h2⟩
    refine h2 _ fun a => ?_
    rw [hrv, hrv, hJ_frame (I.ε v) (I.P v) _ (I.J.map (I.φ v)) hPQ (I.P_spec v), ← emb_hform, hz a, map_zero]
  · rintro ⟨⟨h1, -⟩, h2⟩
    exact ⟨fun a => (hspan (f a) _).1 (h1 a), h2⟩

end GlobalTheory.RealUnipFrame
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentRealPlaceIffFrameUnipotentRadical =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LinearIndependentScaledBasisColumnsMatrixTranspo =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LinearIndependentScaledBasisColumnsMatrixTranspo", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.I0M\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.S Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes MeasureTheory IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.AutomorphicEvaluation Formalism.L2.SG.HidaSetting Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.RowDict Formalism.L2.SG.RowsJoinPinned GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.Core.Rk GlobalTheory.Core.Mi
open scoped TensorProduct InnerProductSpace Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.Core.SBesEx

theorem linearIndependent_eX_of_dual {D : D7} (X : HidaSetting D) : LinearIndependent D.host.E X.eX := by
  rw [Fintype.linearIndependent_iff]
  intro g hg b
  have h1 := congrArg (fun y => (VS D).hT y (X.fY b)) hg

  simp only [map_sum, map_smulₛₗ, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul, X.ef, map_zero,
  LinearMap.zero_apply, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true] at h1
  simpa using h1

theorem eM_transpose_linearIndependent : ∀ {D : D7} (X : HidaSetting D) (h : X.B.I = Formalism.L2.SG.InstExistsPf.instOf D) (t lam : D.host.E), t ≠ 0 → lam ≠ 0 → LinearIndependent D.host.E (GlobalTheory.Core.SBesEx.eM X h t lam).transpose := by
  intro D X h t lam ht hl
  set b := X.bas.reindex (finCongr (rank_eq X h)).symm with hb
  have hc : ∀ z, cY X h z = b.equivFun z := by
    intro z; funext k
    simp [cY, HidaSetting.crd, crdOf, hb, Module.Basis.repr_reindex]
  have h0 : LinearIndependent D.host.E (fun a => b.equivFun (X.eX a)) :=
    (linearIndependent_eX_of_dual X).map' b.equivFun.toLinearMap b.equivFun.ker
  have hs : ∀ a, scl t lam a ≠ 0 := fun a => mul_ne_zero ht (pow_ne_zero _ hl)
  have h1 := h0.units_smul (fun a => Units.mk0 (scl t lam a) (hs a))
  have he : (eM X h t lam).transpose =
      (fun a => Units.mk0 (scl t lam a) (hs a)) • fun a => b.equivFun (X.eX a) := by
    funext a k
    simp [eM, hc, Matrix.transpose_apply, Units.smul_def]
  rw [he]
  exact h1

end GlobalTheory.Core.SBesEx

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LinearIndependentScaledBasisColumnsMatrixTranspo =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LinearIndependentScaledBasisColumnsMatrixTranspoStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LinearIndependentScaledBasisColumnsMatrixTranspoStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.I0M\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LinearIndependentScaledBasisColumnsMatrixTranspo\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.S Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes MeasureTheory IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.AutomorphicEvaluation Formalism.L2.SG.HidaSetting Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.RowDict Formalism.L2.SG.RowsJoinPinned GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.Core.Rk GlobalTheory.Core.Mi
open scoped TensorProduct InnerProductSpace Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LinearIndependentScaledBasisColumnsMatrixTranspoStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MemFlagUnipotentRadicalIffSecondModel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MemFlagUnipotentRadicalIffSecondModel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.I0M\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BesselCharacterGenericCharacterLaws\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.HidaSetting\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentFiniteAdelesIffFrameUnipotentRadi\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentMatrixIffJointlyBijectivePair\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentMatrixPiIffForallEval\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.IsFlagUnipotentRealPlaceIffFrameUnipotentRadical\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.LinearIndependentScaledBasisColumnsMatrixTranspoStatement\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FundamentalEquivalence.FundamentalContinuity.AdelicIsomorphismStatement\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHAlg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.S Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes MeasureTheory IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.AutomorphicEvaluation Formalism.L2.SG.HidaSetting Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.RowDict Formalism.L2.SG.RowsJoinPinned GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.Core.Rk GlobalTheory.Core.Mi
open scoped TensorProduct InnerProductSpace Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.Core.SBesFlagTie

open Formalism.L2.SG.AdBridge GlobalTheory.BesselChar

variable {D : D7}

theorem unip_congr {R : Type} [CommRing R] {n ρ : ℕ} {E E' : Matrix (Fin n) (Fin ρ) R}
    {K K' : Matrix (Fin ρ) (Fin n) R} {M M' : Matrix (Fin n) (Fin n) R} (hE : E = E') (hK : K = K') (hM : M = M') :
    Unip E K M ↔ Unip E' K' M' := by
  subst hE hK hM; rfl

theorem castGA_self {I : Formalism.MainNotions.S.AutInst} (e : I = I) (x : I.GA) : castGA e x = x := rfl

theorem thetaV_incA (v : InfinitePlace (Formalism.L2.SG.InstExistsPf.instOf D).F) (y : D.host.E) :
    thetaV (Formalism.L2.SG.InstExistsPf.instOf D) v (incA D y) = (Formalism.L2.SG.InstExistsPf.instOf D).φ v y := by
  have := thetaV_tmul (Formalism.L2.SG.InstExistsPf.instOf D) v 1 y
  rw [map_one, one_mul] at this
  exact this

theorem tauF_incA (y : D.host.E) :
    tauF (Formalism.L2.SG.InstExistsPf.instOf D) (incA D y) = Formalism.UG.inclE (F := D.host.F) (Formalism.MainNotions.S.Af D.host.F) y := by
  exact tauF_tmul (Formalism.L2.SG.InstExistsPf.instOf D) 1 y

theorem core (D : D7) {ρ : ℕ} (x : Fin ρ → Fin (D.sp.Y 0).rank → D.host.E) (c : Fin ρ → D.host.E)
    (z : Fin (D.sp.Y 0).rank → D.host.E) (hc : ∀ a, c a ≠ 0)
    (hz : ∀ a, Formalism.UG.hform (starRingEnd D.host.E) (Formalism.L2.SG.InstExistsPf.instOf D).J (x a) z = 0)
    (hLI : LinearIndependent D.host.E (Matrix.of fun k a => c a * x a k).transpose) (g : GA D (D.sp.Y 0)) :
    g ∈ NFlag (D.sp.Y 0) (Matrix.of fun k a => c a * x a k) ↔
      (Formalism.IndefR.RationalEmbedding.iota D g).1 ∈ Ninf (Formalism.L2.SG.InstExistsPf.instOf D) x z ∧
        (Formalism.IndefR.RationalEmbedding.iota D g).2 ∈ Nfin (Formalism.L2.SG.InstExistsPf.instOf D) x z := by
  have hb := Formalism.IndefR.RationalEmbedding.iota_symm_isBridge D (Formalism.IndefR.RationalEmbedding.iota D g)
  have key : (Formalism.IndefR.RationalEmbedding.iota D).symm (Formalism.IndefR.RationalEmbedding.iota D g) = g :=
    (Formalism.IndefR.RationalEmbedding.iota D).symm_apply_apply g
  have hb1 : ∀ v, uMat ((Formalism.IndefR.RationalEmbedding.iota D g).1 v) = ofHAInf (Formalism.IndefR.RationalEmbedding.inst D) g v :=
    fun v => (hb.1 v).trans (congrArg (fun q => ofHAInf (Formalism.IndefR.RationalEmbedding.inst D) q v) key)
  have hb2 : (Formalism.IndefR.RationalEmbedding.inst D).fmat (Formalism.IndefR.RationalEmbedding.iota D g).2 = ofHAFin (Formalism.IndefR.RationalEmbedding.inst D) g :=
    hb.2.trans (congrArg (fun q => ofHAFin (Formalism.IndefR.RationalEmbedding.inst D) q) key)
  refine (GlobalTheory.BesselChar.mem_NFlag_iff _ _ hLI g).trans ?_
  refine (_root_.GlobalTheory.BesselChar.JointSplit.unip_iff_of_joint (A := AF D.host.F ⊗[D.host.F] D.host.E) (Pi.ringHom fun v => thetaV (Formalism.L2.SG.InstExistsPf.instOf D) v)
      (tauF (Formalism.L2.SG.InstExistsPf.instOf D))
      (fun y h1 h2 => Formalism.L2.SG.Pf.TT_ext _ y (fun v => congr_fun h1 v) h2)
      (fun a b => by
        obtain ⟨y, h1, h2⟩ := Formalism.L2.SG.Pf.TT_surj (Formalism.L2.SG.InstExistsPf.instOf D) a b
        exact ⟨y, funext h1, h2⟩) _ _ _).trans ?_
  refine (and_congr_left' (_root_.GlobalTheory.BesselChar.unip_pi_iff _ _ _)).trans ?_
  refine and_congr (forall_congr' fun v => ?_) ?_
  · have hR := _root_.GlobalTheory.RealUnipFrame.unip_iff_inN (Formalism.L2.SG.InstExistsPf.instOf D) v x c z hc hz
      ((hmat (Formalism.IndefR.RationalEmbedding.inst D) g).map (thetaV (Formalism.IndefR.RationalEmbedding.inst D) v))
    refine (unip_congr (Matrix.ext fun k a => thetaV_incA v _) (Matrix.ext fun k a => thetaV_incA v _)
      (Matrix.ext fun k a => rfl)).trans (hR.trans ?_)
    show _ ↔ InN _ _ _ (uMat ((Formalism.IndefR.RationalEmbedding.iota D g).1 v))
    rw [hb1 v]
    rfl
  · have hF := _root_.GlobalTheory.UnipFin.unip_flag_iff_Nfin (Formalism.L2.SG.InstExistsPf.instOf D) x c z hc hz
      ((hmat (Formalism.IndefR.RationalEmbedding.inst D) g).map (tauF (Formalism.IndefR.RationalEmbedding.inst D)))
    refine (unip_congr (Matrix.ext fun k a => tauF_incA _) (Matrix.ext fun k a => tauF_incA _)
      (Matrix.ext fun k a => rfl)).trans (hF.trans ?_)
    show _ ↔ (_ ∧ _ ∧ _)
    rw [hb2]
    rfl

theorem transport (D : D7) (I : Formalism.MainNotions.S.AutInst) (ιE : I.E ≃+* D.host.E) (hId : ∀ y, HEq (ιE y) y)
    (hI : I = Formalism.L2.SG.InstExistsPf.instOf D) (hr : (D.sp.Y 0).rank = I.n) {ρ : ℕ} (eR : Fin ρ → Fin I.n → I.E)
    (zR : Fin I.n → I.E) (s : (Formalism.L2.SG.InstExistsPf.instOf D).GA) :
    ((castGA hI.symm s).1 ∈ Ninf I eR zR ↔ s.1 ∈ Ninf (Formalism.L2.SG.InstExistsPf.instOf D)
      (fun a k => ιE (eR a (Fin.cast hr k))) (fun k => ιE (zR (Fin.cast hr k)))) ∧
    ((castGA hI.symm s).2 ∈ Nfin I eR zR ↔ s.2 ∈ Nfin (Formalism.L2.SG.InstExistsPf.instOf D)
      (fun a k => ιE (eR a (Fin.cast hr k))) (fun k => ιE (zR (Fin.cast hr k)))) ∧
    ∀ p q : Fin I.n → I.E, Formalism.UG.hform (starRingEnd D.host.E) (Formalism.L2.SG.InstExistsPf.instOf D).J
      (fun k => ιE (p (Fin.cast hr k))) (fun k => ιE (q (Fin.cast hr k))) =
        ιE (Formalism.UG.hform (starRingEnd I.E) I.J p q) := by
  generalize hI.symm = e
  subst hI
  have hid : ∀ y, ιE y = y := fun y => eq_of_heq (hId y)
  have hv : ∀ p : Fin (Formalism.L2.SG.InstExistsPf.instOf D).n → (Formalism.L2.SG.InstExistsPf.instOf D).E,
      (fun k => ιE (p (Fin.cast hr k))) = p := fun p => funext fun k => by rw [hid]; rfl
  have hx : (fun a k => ιE (eR a (Fin.cast hr k))) = eR := funext fun a => hv (eR a)
  refine ⟨?_, ?_, fun p q => ?_⟩
  · rw [castGA_self]
    exact Iff.of_eq (congrArg₂ (fun A B => s.1 ∈ Ninf (Formalism.L2.SG.InstExistsPf.instOf D) A B) hx.symm (hv zR).symm)
  · rw [castGA_self]
    exact Iff.of_eq (congrArg₂ (fun A B => s.2 ∈ Nfin (Formalism.L2.SG.InstExistsPf.instOf D) A B) hx.symm (hv zR).symm)
  · exact (congrArg₂ (fun A B => Formalism.UG.hform (starRingEnd D.host.E) (Formalism.L2.SG.InstExistsPf.instOf D).J A B)
      (hv p) (hv q)).trans (hid _).symm

theorem mem_flagN_iff : ∀ (D : D7) (X : HidaSetting D) (h : X.B.I = Formalism.L2.SG.InstExistsPf.instOf D) (u : D.what₂.Word) (t lam : D.host.E), t ≠ 0 → lam ≠ 0 → IdE X → ∀ (V₀ : HSp D) (d : HypDec (D.sp.Y 0) V₀ D.R.rS), d.e = GlobalTheory.Core.SBesEx.eM X h t lam → ∀ n, n ∈ flagN d ↔ (iotaX X h n).1 ∈ X.NinfU u ∧ (iotaX X h n).2 ∈ X.NfinU u := by
  intro D X h u t lam ht hl hId V₀ d hd n
  have hLI := _root_.GlobalTheory.Core.SBesEx.eM_transpose_linearIndependent X h t lam ht hl
  have hsc : ∀ a, GlobalTheory.Core.SBesEx.scl t lam a ≠ 0 := fun a => mul_ne_zero ht (pow_ne_zero _ hl)
  have horth : ∀ a, Formalism.UG.hform (starRingEnd X.B.I.E) X.B.I.J (X.eR a) (X.zR u) = 0 := by
    intro a
    apply X.ιE.injective
    show X.ιE (Formalism.UG.hform (starRingEnd X.B.I.E) X.B.I.J (X.crd (X.eX a)) (X.crd (X.zu u))) = X.ιE 0
    rw [Formalism.L2.SG.PoincareInHH.Cut.hform_crd X, map_zero]
    exact (X.zu_orth u a).1
  have hT := transport D X.B.I X.ιE hId h (rank_eq X h) X.eR (X.zR u) (Formalism.IndefR.RationalEmbedding.iota D n)
  have hz : ∀ a, Formalism.UG.hform (starRingEnd D.host.E) (Formalism.L2.SG.InstExistsPf.instOf D).J
      (fun k => X.ιE (X.eR a (Fin.cast (rank_eq X h) k))) (fun k => X.ιE (X.zR u (Fin.cast (rank_eq X h) k))) = 0 :=
    fun a => by rw [hT.2.2, horth a, map_zero]
  have hcore := core D (fun a k => X.ιE (X.eR a (Fin.cast (rank_eq X h) k))) (GlobalTheory.Core.SBesEx.scl t lam)
    (fun k => X.ιE (X.zR u (Fin.cast (rank_eq X h) k))) hsc hz hLI n
  show n ∈ NFlag (D.sp.Y 0) d.e ↔ _
  rw [hd]
  exact hcore.trans (and_congr hT.1.symm hT.2.1.symm)

end GlobalTheory.Core.SBesFlagTie
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MemFlagUnipotentRadicalIffSecondModel =====
