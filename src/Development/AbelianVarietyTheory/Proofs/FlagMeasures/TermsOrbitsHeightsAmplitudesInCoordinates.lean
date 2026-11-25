module

public import Formalism.SharpRestriction.CuspSpanNormBounds.IsTermOver
public import Formalism.SharpRestriction.CuspSpanNormBounds.KappaEndpoints
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.PlacesOf
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.GgNone
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameDualUnipotentGroupActsUnitriangularOnto
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FramePairCoordinatesLocalHeightEqResidueCard
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFramePairAmplitudeMassRepsEqOrbits
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFramePairCoordinatesTransportInnerData
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
import Mathlib.Tactic.Basify
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
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Tactic.Lemma
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.TermsCorrespond

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FlagMeasures.StandardLatticeDualVectorsChangeUnipotent, Development.AbelianVarietyTheory.Proofs.FlagMeasures.FramePairChangedDualVectors, Development.AbelianVarietyTheory.Proofs.FlagMeasures.TermsOrbitsHeightsAmplitudesInCoordinates

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.StandardLatticeDualVectorsChangeUnipotent =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.StandardLatticeDualVectorsChangeUnipotent", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.IsTermOver\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.KappaEndpoints\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.FramePairCoordinatesTransportInnerLattices\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Formalism.MainNotions.S Formalism.MainNotions.S.Loc

noncomputable section

namespace GlobalTheory.SwapStd

open Formalism.MainNotions.S.LocNG Formalism.MainNotions.KappaEndpoints

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E]
variable {M : Model F E} {V : Type} [AddCommGroup V] [Module E V] {H : HermSp M V} {r : ℕ}

theorem hR_add (x y z : V) : H.h x (y + z) = H.h x y + H.h x z := by
  rw [H.h_herm (y + z) x, H.h_add_left, map_add (f := _), ← H.h_herm, ← H.h_herm]

theorem hR_smul (c : E) (x y : V) : H.h x (c • y) = M.L.cj c * H.h x y := by
  rw [H.h_herm (c • y) x, H.h_smul_left, map_mul, ← H.h_herm]

theorem h_symm_zero {x y : V} (h : H.h y x = 0) : H.h x y = 0 := by
  rw [H.h_herm y x, h, map_zero]

variable (A B : FrameD H r)

theorem perp_of {k : V} (h : ∀ a : Fin r, H.h k (A.e a) = 0) : k ∈ H.perp (H.X A.f) := by
  intro x hx
  unfold HermSp.X at hx
  induction hx using Submodule.span_induction with
  | mem x hx => obtain ⟨a, rfl⟩ := hx; exact h a
  | zero => exact h_symm_zero (H.h_zero_left k)
  | add x y _ _ hx hy => rw [hR_add, hx, hy, add_zero]
  | smul c x _ hx => rw [hR_smul, hx, mul_zero]

theorem h_X_e {ξ : V} (hξ : ξ ∈ H.X A.f) (b : Fin r) : H.h ξ (A.e b) = 0 := by
  unfold HermSp.X at hξ
  induction hξ using Submodule.span_induction with
  | mem x hx => obtain ⟨a, rfl⟩ := hx; exact A.h_iso _ _ (Or.inl (Fin.castSucc_lt_last a).ne)
  | zero => exact H.h_zero_left _
  | add x y _ _ hx hy => rw [H.h_add_left, hx, hy, add_zero]
  | smul c x _ hx => rw [H.h_smul_left, hx, mul_zero]

theorem X_le_perp {ξ : V} (hξ : ξ ∈ H.X A.f) : ξ ∈ H.perp (H.X A.f) := perp_of A (h_X_e A hξ)

theorem hX_perp {ξ w : V} (hξ : ξ ∈ H.X A.f) (hw : w ∈ H.perp (H.X A.f)) : H.h ξ w = 0 :=
  h_symm_zero (hw ξ hξ)

theorem prF_add (x y : V) : A.prF (x + y) = A.prF x + A.prF y := by
  unfold FrameD.prF
  simp only [H.h_add_left, add_smul, Finset.sum_add_distrib]; abel

theorem prF_smul (c : E) (x : V) : A.prF (c • x) = c • A.prF x := by
  unfold FrameD.prF
  simp only [H.h_smul_left, mul_smul, ← Finset.smul_sum, smul_sub]

theorem prF_sub (x y : V) : A.prF (x - y) = A.prF x - A.prF y := by
  unfold FrameD.prF
  simp only [_root_.Formalism.MainNotions.BridgeLemma.h_sub_left, sub_smul, Finset.sum_sub_distrib]; abel

def swapFun (x : V) : V :=
  ∑ a, H.h x (A.es a) • A.e a + A.prF x + ∑ a, H.h x (A.e a) • B.es a -
    ∑ a, H.h (A.prF x) (B.es a) • A.e a

def swapMap : V →ₗ[E] V where
  toFun := swapFun A B
  map_add' x y := by
    unfold swapFun
    simp only [H.h_add_left, prF_add, add_smul, Finset.sum_add_distrib]; abel
  map_smul' c x := by
    unfold swapFun
    simp only [H.h_smul_left, prF_smul, mul_smul, ← Finset.smul_sum, smul_sub, smul_add, RingHom.id_apply]

theorem swapMap_apply (x : V) : swapMap A B x = swapFun A B x := rfl

section Pair

variable (hf : B.f = A.f)
include hf

theorem e_eq (a : Fin r) : B.e a = A.e a := by
  show B.f a.castSucc = A.f a.castSucc; rw [hf]

theorem h_e_esB (a b : Fin r) : H.h (A.e a) (B.es b) = if a = b then 1 else 0 := by
  rw [← e_eq A B hf]; exact B.h_es a b

theorem h_esB_e (a b : Fin r) : H.h (B.es a) (A.e b) = if b = a then 1 else 0 := by
  rw [← e_eq A B hf]; exact ng_h_es_e (Fr := B) a b

theorem swap_es (x : V) (b : Fin r) : H.h (swapMap A B x) (B.es b) = H.h x (A.es b) := by
  rw [swapMap_apply]
  unfold swapFun
  rw [_root_.Formalism.MainNotions.BridgeLemma.h_sub_left, H.h_add_left, H.h_add_left, _root_.Formalism.MainNotions.BridgeLemma.h_sum_left, _root_.Formalism.MainNotions.BridgeLemma.h_sum_left, _root_.Formalism.MainNotions.BridgeLemma.h_sum_left]
  simp only [h_e_esB A B hf, B.h_ss, mul_zero, Finset.sum_const_zero, add_zero, mul_ite, mul_one,
    Finset.sum_ite_eq', Finset.mem_univ, if_true]
  ring

theorem swap_e (x : V) (b : Fin r) : H.h (swapMap A B x) (A.e b) = H.h x (A.e b) := by
  rw [swapMap_apply]
  unfold swapFun
  rw [_root_.Formalism.MainNotions.BridgeLemma.h_sub_left, H.h_add_left, H.h_add_left, _root_.Formalism.MainNotions.BridgeLemma.h_sum_left, _root_.Formalism.MainNotions.BridgeLemma.h_sum_left, _root_.Formalism.MainNotions.BridgeLemma.h_sum_left]
  have hee : ∀ a, H.h (A.e a) (A.e b) = 0 := fun a => A.h_iso _ _ (Or.inl (Fin.castSucc_lt_last a).ne)
  simp only [hee, ng_prF_e, h_esB_e A B hf, mul_zero, Finset.sum_const_zero, add_zero, zero_add, mul_ite, mul_one,
    Finset.sum_ite_eq, Finset.mem_univ, if_true, sub_zero]

theorem swap_prF (x : V) : B.prF (swapMap A B x) - A.prF x = - ∑ a, H.h (A.prF x) (B.es a) • A.e a := by
  have e1 : B.prF (swapMap A B x) = swapMap A B x - ∑ a, H.h x (A.es a) • A.e a -
      ∑ a, H.h x (A.e a) • B.es a := by
    unfold FrameD.prF
    simp only [swap_es A B hf, e_eq A B hf, swap_e A B hf]
  rw [e1, swapMap_apply]
  unfold swapFun
  abel

theorem swap_prF_mem (x : V) : B.prF (swapMap A B x) - A.prF x ∈ H.X A.f := by
  rw [swap_prF A B hf]
  exact Submodule.neg_mem _ (Submodule.sum_mem _ (fun a _ => Submodule.smul_mem _ _ (GlobalTheory.HL.CoordInnerSnd.e_mem_X A a)))

theorem swap_unit (x y : V) : H.h (swapMap A B x) (swapMap A B y) = H.h x y := by
  have k1 : ∀ a, H.h (A.e a) (swapMap A B y) = H.h (A.e a) y := fun a => by
    rw [H.h_herm (swapMap A B y) (A.e a), swap_e A B hf, ← H.h_herm]
  have k2 : ∀ a, H.h (B.es a) (swapMap A B y) = H.h (A.es a) y := fun a => by
    rw [H.h_herm (swapMap A B y) (B.es a), swap_es A B hf, ← H.h_herm]
  have k3 : H.h (B.prF (swapMap A B x)) (B.prF (swapMap A B y)) = H.h (A.prF x) (A.prF y) := by
    have hx := swap_prF_mem A B hf x
    have hy := swap_prF_mem A B hf y
    set ξ := B.prF (swapMap A B x) - A.prF x
    set η := B.prF (swapMap A B y) - A.prF y
    rw [show B.prF (swapMap A B x) = A.prF x + ξ by simp [ξ],
      show B.prF (swapMap A B y) = A.prF y + η by simp [η],
      H.h_add_left, hR_add, hR_add, hX_perp A hx (GlobalTheory.HL.CoordInnerSnd.prF_perp A y), hX_perp A hx (X_le_perp A hy),
      h_symm_zero (hX_perp A hy (GlobalTheory.HL.CoordInnerSnd.prF_perp A x))]
    ring
  rw [ng_expand (Fr := B) (swapMap A B x) (swapMap A B y), ng_prF_prF (Fr := B) (swapMap A B x) (swapMap A B y),
    ng_expand (Fr := A) x y, ng_prF_prF (Fr := A) x y, k3]
  simp only [e_eq A B hf, swap_es A B hf, swap_e A B hf, k1, k2]

theorem swap_fix (b : Fin (r + 1)) : swapMap A B (A.f b) = A.f b := by
  rw [swapMap_apply]
  unfold swapFun
  rcases Fin.eq_castSucc_or_eq_last b with ⟨a, rfl⟩ | rfl
  · have hpr : A.prF (A.f a.castSucc) = 0 := by
      have := ng_prF_e (Fr := A) (A.f a.castSucc)
      unfold FrameD.prF
      have hs : ∑ c, H.h (A.f a.castSucc) (A.es c) • A.e c = A.e a := by
        simp only [A.h_es, ite_smul, one_smul, zero_smul, Finset.sum_ite_eq, Finset.mem_univ, if_true]
      have hz : ∑ c, H.h (A.f a.castSucc) (A.e c) • A.es c = 0 :=
        Finset.sum_eq_zero (fun c _ => by
          rw [show H.h (A.f a.castSucc) (A.e c) = 0 from A.h_iso _ _ (Or.inl (Fin.castSucc_lt_last a).ne), zero_smul])
      rw [hs, hz]; show A.f a.castSucc - A.f a.castSucc - 0 = 0; simp
    have hs : ∑ c, H.h (A.f a.castSucc) (A.es c) • A.e c = A.f a.castSucc := by
      simp only [A.h_es, ite_smul, one_smul, zero_smul, Finset.sum_ite_eq, Finset.mem_univ, if_true]; rfl
    have hz : ∑ c, H.h (A.f a.castSucc) (A.e c) • B.es c = 0 :=
      Finset.sum_eq_zero (fun c _ => by
        rw [show H.h (A.f a.castSucc) (A.e c) = 0 from A.h_iso _ _ (Or.inl (Fin.castSucc_lt_last a).ne), zero_smul])
    rw [hs, hz, hpr]
    simp [H.h_zero_left]
  · have hzes : ∀ c, H.h (A.f (Fin.last r)) (A.es c) = 0 := fun c => h_symm_zero (A.h_sz c)
    have hze : ∀ c, H.h (A.f (Fin.last r)) (A.e c) = 0 := fun c =>
      A.h_iso _ _ (Or.inr (Fin.castSucc_lt_last c).ne)
    have hpr : A.prF (A.f (Fin.last r)) = A.f (Fin.last r) := by
      unfold FrameD.prF
      simp [hzes, hze]
    have hzB : ∀ c, H.h (A.f (Fin.last r)) (B.es c) = 0 := fun c => by
      rw [← hf]; exact h_symm_zero (B.h_sz c)
    simp [hzes, hze, hpr, hzB]

end Pair

theorem eq_zero_of (v : V) (h1 : ∀ a, H.h v (A.es a) = 0) (h2 : ∀ a, H.h v (A.e a) = 0)
    (h3 : A.prF v ∈ H.X A.f) : v = 0 := by
  apply H.nondeg v
  intro y
  rw [ng_expand (Fr := A) v y, ng_prF_prF (Fr := A) v y]
  simp only [h1, h2, zero_mul, Finset.sum_const_zero, zero_add, add_zero]
  exact hX_perp A h3 (GlobalTheory.HL.CoordInnerSnd.prF_perp A y)

theorem swap_inv (hf : B.f = A.f) (x : V) : swapMap B A (swapMap A B x) = x := by
  have hf' : A.f = B.f := hf.symm
  rw [← sub_eq_zero]
  apply eq_zero_of A
  · intro b
    rw [_root_.Formalism.MainNotions.BridgeLemma.h_sub_left, swap_es B A hf', swap_es A B hf, sub_self]
  · intro b
    have h1 := swap_e B A hf' (swapMap A B x) b
    rw [← e_eq B A hf'] at h1
    rw [_root_.Formalism.MainNotions.BridgeLemma.h_sub_left, h1, swap_e A B hf, sub_self]
  · have h1 := swap_prF_mem B A hf' (swapMap A B x)
    have h2 := swap_prF_mem A B hf x
    rw [hf'] at h2
    rw [prF_sub, show A.prF (swapMap B A (swapMap A B x)) - A.prF x =
      (A.prF (swapMap B A (swapMap A B x)) - B.prF (swapMap A B x)) + (B.prF (swapMap A B x) - A.prF x) by abel]
    rw [hf']
    exact Submodule.add_mem _ h1 h2

def swapEquiv (hf : B.f = A.f) : V ≃ₗ[E] V :=
  LinearEquiv.ofLinear (swapMap A B) (swapMap B A)
    (LinearMap.ext fun x => swap_inv B A hf.symm x) (LinearMap.ext fun x => swap_inv A B hf x)

theorem swapEquiv_apply (hf : B.f = A.f) (x : V) : swapEquiv A B hf x = swapMap A B x := rfl

theorem swap_mem_N (hf : B.f = A.f) : swapEquiv A B hf ∈ A.N := by
  apply Subgroup.subset_closure
  refine ⟨fun x y => swap_unit A B hf x y, ?_, ?_⟩
  · intro j _ v hv
    have hfix : swapEquiv A B hf v = v := by
      unfold FrameD.Fj at hv
      induction hv using Submodule.span_induction with
      | mem x hx =>
        obtain ⟨a, -, rfl⟩ := hx
        exact swap_fix A B hf a.castSucc
      | zero => exact map_zero _
      | add x y _ _ hx hy => rw [map_add (f := _), hx, hy]
      | smul c x _ hx => rw [map_smul, hx]
    rw [hfix, sub_self]; exact Submodule.zero_mem _
  · intro v hv
    have h0 : ∀ a, H.h v (A.e a) = 0 := fun a => hv _ (GlobalTheory.HL.CoordInnerSnd.e_mem_X A a)
    have e : swapEquiv A B hf v - v = - ∑ a, H.h (A.prF v) (B.es a) • A.e a := by
      rw [swapEquiv_apply, swapMap_apply]
      unfold swapFun
      have hv' : v = ∑ a, H.h v (A.es a) • A.e a + A.prF v := by
        unfold FrameD.prF
        simp only [h0, zero_smul, Finset.sum_const_zero, sub_zero]; abel
      simp only [h0, zero_smul, Finset.sum_const_zero, add_zero]
      rw [show ∀ u : V, u - v = u - (∑ a, H.h v (A.es a) • A.e a + A.prF v) from fun u => by rw [← hv']]
      abel
    rw [e]
    exact Submodule.neg_mem _ (Submodule.sum_mem _ (fun a _ => Submodule.smul_mem _ _ (GlobalTheory.HL.CoordInnerSnd.e_mem_X A a)))

theorem lamStd_swap : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E] (M : Model F E), M.OK → ∀ {V : Type} [AddCommGroup V] [Module E V] (H : HermSp M V) (r : ℕ) (Fr : LocNG.FrameD H r) (es₂ : Fin r → V) (h1 : ∀ i j, H.h (es₂ i) (es₂ j) = 0) (h2 : ∀ i j : Fin r, H.h (Fr.f i.castSucc) (es₂ j) = if i = j then 1 else 0) (h3 : ∀ i, H.h (es₂ i) (Fr.f (Fin.last r)) = 0), Fr.T ≠ 0 → ∀ L : Submodule M.L.O (H.Wb Fr.f), Fr.IsInner L → ∃ m ∈ Fr.N, (∀ b, m (Fr.f b) = Fr.f b) ∧ (⟨Fr.f, es₂, Fr.T, Fr.h_iso, Fr.h_zz, h1, h2, h3⟩ : LocNG.FrameD H r).LamStd L = LocNG.img m (Fr.LamStd L) := by
  intro F _ _ _ E _ _ _ _ M _ V _ _ H r Fr es₂ h1 h2 h3 _ L _
  set B : FrameD H r := ⟨Fr.f, es₂, Fr.T, Fr.h_iso, Fr.h_zz, h1, h2, h3⟩ with hB
  have hf : B.f = Fr.f := rfl
  refine ⟨swapEquiv Fr B hf, swap_mem_N Fr B hf, fun b => swap_fix Fr B hf b, ?_⟩

  have key : ∀ x : V, ((∀ a, H.h x (Fr.es a) ∈ M.L.O) ∧ (∀ a, H.h x (Fr.e a) ∈ M.L.O) ∧
      ∃ w : ↥(H.perp (H.X Fr.f)), (w : V) = Fr.prF x ∧ H.mkW Fr.f w ∈ L) ↔
      ((∀ a, H.h (swapMap Fr B x) (B.es a) ∈ M.L.O) ∧ (∀ a, H.h (swapMap Fr B x) (B.e a) ∈ M.L.O) ∧
      ∃ w : ↥(H.perp (H.X B.f)), (w : V) = B.prF (swapMap Fr B x) ∧ H.mkW B.f w ∈ L) := by
    intro x
    have hmem := swap_prF_mem Fr B hf x
    have hcls : ∀ (w w' : ↥(H.perp (H.X Fr.f))), (w : V) = Fr.prF x → (w' : V) = B.prF (swapMap Fr B x) →
        H.mkW Fr.f w = H.mkW Fr.f w' := by
      intro w w' hw hw'
      unfold HermSp.mkW
      rw [Submodule.mkQ_apply, Submodule.mkQ_apply, Submodule.Quotient.eq]
      show (w : V) - w' ∈ H.X Fr.f
      rw [hw, hw', ← neg_sub]
      exact Submodule.neg_mem _ hmem
    simp only [swap_es Fr B hf, e_eq Fr B hf, swap_e Fr B hf]
    refine and_congr Iff.rfl (and_congr Iff.rfl ⟨?_, ?_⟩)
    · rintro ⟨w, hw, hwL⟩
      refine ⟨⟨B.prF (swapMap Fr B x), GlobalTheory.HL.CoordInnerSnd.prF_perp B _⟩, rfl, ?_⟩
      rw [← hcls w _ hw rfl]; exact hwL
    · rintro ⟨w', hw', hwL⟩
      refine ⟨⟨Fr.prF x, GlobalTheory.HL.CoordInnerSnd.prF_perp Fr _⟩, rfl, ?_⟩
      rw [hcls _ w' rfl hw']; exact hwL
  unfold FrameD.LamStd img
  rw [Submodule.map_span]
  congr 1
  ext v
  constructor
  · intro hv
    refine ⟨swapMap B Fr v, (key _).2 ?_, ?_⟩
    · rw [swap_inv B Fr hf.symm v]; exact hv
    · exact swap_inv B Fr hf.symm v
  · rintro ⟨x, hx, rfl⟩
    exact (key x).1 hx

end GlobalTheory.SwapStd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.StandardLatticeDualVectorsChangeUnipotent =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FramePairChangedDualVectors =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.FramePairChangedDualVectors", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.PlacesOf\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.GgNone\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameDualUnipotentGroupActsUnitriangularOnto\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.IsTermOver\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.StandardLatticeDualVectorsChangeUnipotent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Formalism.MainNotions.S Formalism.MainNotions.S.Loc GlobalTheory.HL
open scoped Pointwise ENNReal Classical

namespace GlobalTheory.HL.ToC

section

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] {E : Type} [CommRing E] [Algebra F E]
  [TopologicalSpace E] [MeasurableSpace E] {M : Model F E} {V : Type} [AddCommGroup V] [Module E V]
  {H : HermSp M V} {r k : ℕ}

def swapEs (Fr : LocNG.FrameD H r) (es₂ : Fin r → V) (h1 : ∀ i j, H.h (es₂ i) (es₂ j) = 0)
    (h2 : ∀ i j : Fin r, H.h (Fr.f i.castSucc) (es₂ j) = if i = j then 1 else 0)
    (h3 : ∀ i, H.h (es₂ i) (Fr.f (Fin.last r)) = 0) : LocNG.FrameD H r :=
  ⟨Fr.f, es₂, Fr.T, Fr.h_iso, Fr.h_zz, h1, h2, h3⟩

lemma h_sum_left (H : HermSp M V) {ι : Type} (s : Finset ι) (c : ι → E) (v : ι → V) (y : V) :
    H.h (∑ i ∈ s, c i • v i) y = ∑ i ∈ s, c i * H.h (v i) y := by
  induction s using Finset.induction_on with
  | empty => simp [H.h_zero_left]
  | insert a s ha ih => rw [Finset.sum_insert ha, Finset.sum_insert ha, H.h_add_left, H.h_smul_left, ih]

lemma pair_eq (hM : M.OK) (Fr : LocNG.FrameD H r) (es₂ : Fin r → V) (h1 : ∀ i j, H.h (es₂ i) (es₂ j) = 0)
    (h2 : ∀ i j : Fin r, H.h (Fr.f i.castSucc) (es₂ j) = if i = j then 1 else 0)
    (h3 : ∀ i, H.h (es₂ i) (Fr.f (Fin.last r)) = 0) (hT : Fr.T ≠ 0) {n : V ≃ₗ[E] V} (hn : n ∈ Fr.N)
    (b : Fin (r + 1)) (a : Fin r) : H.h (n (Fr.f b)) (es₂ a) = H.h (n (Fr.f b)) (Fr.es a) := by
  obtain ⟨A, -, hA⟩ := (GlobalTheory.LocOver.UnipOnto.unipotent_onto M hM H r Fr hT).2.1 n hn
  have hb : ∀ c, H.h (Fr.f c) (es₂ a) = H.h (Fr.f c) (Fr.es a) := by
    intro c
    induction c using Fin.lastCases with
    | last =>
      have e1 : H.h (Fr.f (Fin.last r)) (es₂ a) = M.L.cj (H.h (es₂ a) (Fr.f (Fin.last r))) := H.h_herm _ _
      have e2 : H.h (Fr.f (Fin.last r)) (Fr.es a) = M.L.cj (H.h (Fr.es a) (Fr.f (Fin.last r))) := H.h_herm _ _
      rw [e1, e2, h3, Fr.h_sz]
    | cast i => rw [h2, Fr.h_es]
  rw [show n (Fr.f b) = _ from hA b, h_sum_left, h_sum_left]
  exact Finset.sum_congr rfl fun c _ => by rw [hb c]

lemma pulled (S : Frames M.L r k) (e : V ≃ₗ[E] S.V) (he : ∀ x y, S.h (e x) (e y) = H.h x y)
    (f : Fin (r + 1) → V) (g : Fin (r + 1) → S.V) (gs : Fin r → S.V) (hg : ∀ a, g a = e (f a))
    (hdual : ∀ a j, hf M.L S.Hm (g a) (gs j) = if a = j.castSucc then 1 else 0)
    (hiso : ∀ i j, hf M.L S.Hm (gs i) (gs j) = 0) :
    (∀ i j, H.h (e.symm (gs i)) (e.symm (gs j)) = 0) ∧
    (∀ i j : Fin r, H.h (f i.castSucc) (e.symm (gs j)) = if i = j then 1 else 0) ∧
    (∀ i, H.h (e.symm (gs i)) (f (Fin.last r)) = 0) := by
  refine ⟨fun i j => ?_, fun i j => ?_, fun i => ?_⟩
  · rw [← he, e.apply_symm_apply, e.apply_symm_apply]; exact hiso i j
  · rw [← he, e.apply_symm_apply, ← hg]
    change hf M.L S.Hm _ _ = _
    rw [hdual]; simp [Fin.castSucc_inj]
  · rw [H.h_herm, ← he, e.apply_symm_apply, ← hg]
    change M.L.cj (hf M.L S.Hm _ _) = _
    rw [hdual]
    have : Fin.last r ≠ i.castSucc := (Fin.castSucc_lt_last i).ne'
    simp [this]

variable {P : LocNG.FPair H r} {S : Frames M.L r k}

def pair₂ (c : WCoord P S) : LocNG.FPair H r :=
  ⟨swapEs P.A (fun a => c.e.symm (S.es a))
      (pulled S c.e c.h_eq P.A.f S.f S.es c.f_eq S.dual S.iso).1
      (pulled S c.e c.h_eq P.A.f S.f S.es c.f_eq S.dual S.iso).2.1
      (pulled S c.e c.h_eq P.A.f S.f S.es c.f_eq S.dual S.iso).2.2,
    swapEs P.B (fun a => c.e.symm (S.es' a))
      (pulled S c.e c.h_eq P.B.f S.f' S.es' c.f'_eq S.dual' S.iso').1
      (pulled S c.e c.h_eq P.B.f S.f' S.es' c.f'_eq S.dual' S.iso').2.1
      (pulled S c.e c.h_eq P.B.f S.f' S.es' c.f'_eq S.dual' S.iso').2.2⟩

def coord₂ (c : WCoord P S) : Coord (pair₂ c) S :=
  ⟨c.e, c.h_eq, c.f_eq, c.f'_eq, fun a => (c.e.apply_symm_apply _).symm,
    fun a => (c.e.apply_symm_apply _).symm, c.T_eq, c.T'_eq, c.gg_none, c.gg_some⟩

def datEq (c : WCoord P S) : LocNG.Datum P ≃ LocNG.Datum (pair₂ c) where
  toFun d := ⟨d.L, d.L', d.hL, d.hL', d.io, d.io_L⟩
  invFun d := ⟨d.L, d.L', d.hL, d.hL', d.io, d.io_L⟩
  left_inv _ := rfl
  right_inv _ := rfl

lemma inv_fix {m : V ≃ₗ[E] V} {x : V} (hx : m x = x) : m⁻¹ x = x := by
  conv_lhs => rw [← hx]
  show (m⁻¹ * m) x = x
  rw [inv_mul_cancel]; rfl

lemma side_iff (hM : M.OK) (Fr : LocNG.FrameD H r) (es₂ : Fin r → V) (h1 : ∀ i j, H.h (es₂ i) (es₂ j) = 0)
    (h2 : ∀ i j : Fin r, H.h (Fr.f i.castSucc) (es₂ j) = if i = j then 1 else 0)
    (h3 : ∀ i, H.h (es₂ i) (Fr.f (Fin.last r)) = 0) (hT : Fr.T ≠ 0)
    (L : Submodule M.L.O (H.Wb Fr.f)) (hL : Fr.IsInner L) (f : Fin (r + 1) → V) (Λ : Submodule M.L.O V) :
    (∃ n ∈ Fr.N, f = (fun b => n (Fr.f b)) ∧ Λ = LocNG.img n (Fr.LamStd L)) ↔
      ∃ n ∈ (swapEs Fr es₂ h1 h2 h3).N, f = (fun b => n ((swapEs Fr es₂ h1 h2 h3).f b)) ∧
        Λ = LocNG.img n ((swapEs Fr es₂ h1 h2 h3).LamStd L) := by
  obtain ⟨m, hm, hmf, hmΛ⟩ := _root_.GlobalTheory.SwapStd.lamStd_swap M hM H r Fr es₂ h1 h2 h3 hT L hL
  have e : (swapEs Fr es₂ h1 h2 h3).LamStd L = LocNG.img m (Fr.LamStd L) := hmΛ
  rw [e]
  constructor
  · rintro ⟨n, hn, hf, hΛ⟩
    refine ⟨n * m⁻¹, Fr.N.mul_mem hn (Fr.N.inv_mem hm), ?_, ?_⟩
    · rw [hf]; funext b; show n (Fr.f b) = n (m⁻¹ (Fr.f b)); rw [inv_fix (hmf b)]
    · rw [← _root_.Formalism.MainNotions.KappaEndpoints.ng_img_mul, mul_assoc, inv_mul_cancel, mul_one]; exact hΛ
  · rintro ⟨n, hn, hf, hΛ⟩
    refine ⟨n * m, Fr.N.mul_mem hn hm, ?_, ?_⟩
    · rw [hf]; funext b; show n (Fr.f b) = n (m (Fr.f b)); rw [hmf b]
    · rw [_root_.Formalism.MainNotions.KappaEndpoints.ng_img_mul]; exact hΛ

end

theorem changed_duals : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E] (M : Model F E), M.OK → ∀ {V : Type} [AddCommGroup V] [Module E V] (H : HermSp M V) (r k : ℕ) (P : LocNG.FPair H r), ∀ (S : Frames M.L r k) (c : WCoord P S), ∃ (P₂ : LocNG.FPair H r) (c₂ : Coord P₂ S) (φ : LocNG.Datum P ≃ LocNG.Datum P₂), c₂.e = c.e ∧ P₂.St = P.St ∧ P₂.K0 = P.K0 ∧ P₂.UW0 = P.UW0 ∧ P₂.Hp = P.Hp ∧ (P₂.PrimeTo ↔ P.PrimeTo) ∧ (∀ d, c₂.dat (φ d) = c.dat d) ∧ (∀ d t, LocNG.IsTermOver P d t ↔ LocNG.IsTermOver P₂ (φ d) t) ∧ (∀ d t, LocNG.IsTermOver P d t → LocNG.om P₂ t = LocNG.om P t) ∧ ∀ g d d', LocNG.Datum.Moves g d d' ↔ LocNG.Datum.Moves g (φ d) (φ d') := by
  intro F _ _ _ E _ _ _ _ M hM V _ _ H r k P S c
  have hTA : P.A.T ≠ 0 := by rw [← c.T_eq]; exact S.T.ne_zero
  have hTB : P.B.T ≠ 0 := by rw [← c.T'_eq]; exact S.T'.ne_zero
  have pA := pulled S c.e c.h_eq P.A.f S.f S.es c.f_eq S.dual S.iso
  have pB := pulled S c.e c.h_eq P.B.f S.f' S.es' c.f'_eq S.dual' S.iso'
  have kA : ∀ n ∈ P.A.N, ∀ b a, H.h (n ((pair₂ c).A.f b)) ((pair₂ c).A.es a) = H.h (n (P.A.f b)) (P.A.es a) :=
    fun n hn b a => pair_eq hM P.A _ pA.1 pA.2.1 pA.2.2 hTA hn b a
  have kB : ∀ n ∈ P.B.N, ∀ b a, H.h (n ((pair₂ c).B.f b)) ((pair₂ c).B.es a) = H.h (n (P.B.f b)) (P.B.es a) :=
    fun n hn b a => pair_eq hM P.B _ pB.1 pB.2.1 pB.2.2 hTB hn b a
  refine ⟨pair₂ c, coord₂ c, datEq c, rfl, rfl, ?_, rfl, rfl, Iff.rfl, fun d => rfl, ?_, ?_, fun g d d' => Iff.rfl⟩
  · unfold LocNG.FPair.K0
    congr 1
    ext s
    constructor
    · rintro ⟨hs, h⟩
      have hs' := Subgroup.mem_inf.mp hs
      refine ⟨hs, fun a b => ?_⟩
      rw [← kA s hs'.1 b a, ← kB s hs'.2 b a]
      exact h a b
    · rintro ⟨hs, h⟩
      have hs' := Subgroup.mem_inf.mp hs
      refine ⟨hs, fun a b => ?_⟩
      rw [kA s hs'.1 b a, kB s hs'.2 b a]
      exact h a b
  · intro d t
    exact and_congr Iff.rfl (and_congr Iff.rfl
      (and_congr (side_iff hM P.A _ pA.1 pA.2.1 pA.2.2 hTA d.L d.hL t.f t.abelian₂)
        (and_congr (side_iff hM P.B _ pB.1 pB.2.1 pB.2.2 hTB d.L' d.hL' t.f' t.abelian₂) Iff.rfl)))
  · rintro d t ⟨-, -, ⟨n, hn, hf, -⟩, ⟨n', hn', hf', -⟩, -⟩
    have e1 : (pair₂ c).A.coefSum t.f = P.A.coefSum t.f := by
      unfold LocNG.FrameD.coefSum; rw [hf]
      exact Finset.sum_congr rfl fun a _ => kA n hn a.succ a
    have e2 : (pair₂ c).B.coefSum t.f' = P.B.coefSum t.f' := by
      unfold LocNG.FrameD.coefSum; rw [hf']
      exact Finset.sum_congr rfl fun a _ => kB n' hn' a.succ a
    unfold LocNG.om LocNG.FrameD.psiOf
    rw [e1, e2]

end GlobalTheory.HL.ToC
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FramePairChangedDualVectors =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.TermsOrbitsHeightsAmplitudesInCoordinates =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.TermsOrbitsHeightsAmplitudesInCoordinates", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.PlacesOf\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.GgNone\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FramePairChangedDualVectors\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FramePairCoordinatesLocalHeightEqResidueCard\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFramePairAmplitudeMassRepsEqOrbits\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HermitianFramePairCoordinatesTransportInnerData\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.TermsCorrespond\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Formalism.MainNotions.S Formalism.MainNotions.S.Loc GlobalTheory.HL
open scoped Pointwise ENNReal Classical

noncomputable section

namespace GlobalTheory.HL.WCoordTerms

theorem terms_orbits_heights_amps : ∀ {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E] (M : Model F E), M.OK → ∀ {V : Type} [AddCommGroup V] [Module E V] (H : HermSp M V) (r k : ℕ) (P : LocNG.FPair H r), ∀ (S : Frames M.L r k) (c : WCoord P S), (∀ (d : LocNG.Datum P) (t : Term V M r), LocNG.IsTermOver P d t → S.IsTerm (c.dat d) (c.lat t.abelian₂) ∧ LocNG.om P t = S.om (c.dat d) (c.lat t.abelian₂) ∧ (LocNG.BBne (H := H) t ↔ ¬ S.BBzero (c.dat d) (c.lat t.abelian₂))) ∧ (∀ d d' : LocNG.Datum P, LocNG.Datum.Rel d d' ↔ ∃ h ∈ S.H0, h • c.dat d = c.dat d') ∧ P.Hp = S.Hp ∧ (P.PrimeTo → S.Hp = 1) ∧ ∀ (R : LocNG.Reps P) (d : LocNG.Datum P), LocNG.amp R d (LocNG.BBne (H := H)) = S.amp (c.dat d) (fun Λ => ¬ S.BBzero (c.dat d) Λ) ∧ LocNG.amp R d (fun t => ¬ LocNG.BBne (H := H) t) = S.amp (c.dat d) (S.BBzero (c.dat d)) := by
  intro F _ _ _ E _ _ _ _ M hM V _ _ H r k P S c
  obtain ⟨P₂, c₂, φ, he, hSt, hK0, hUW, hHp, hPT, hdat, hterm, hom, hmov⟩ := _root_.GlobalTheory.HL.ToC.changed_duals M hM H r k P S c
  have hlat : ∀ Λ, c₂.lat Λ = c.lat Λ := fun Λ => by simp only [Coord.lat, WCoord.lat, he]
  have hrel : ∀ d d', LocNG.Datum.Rel d d' ↔ LocNG.Datum.Rel (φ d) (φ d') := by
    intro d d'
    unfold LocNG.Datum.Rel
    rw [hUW]
    exact exists_congr fun g => and_congr_right fun _ => hmov g d d'
  have hTR : LocNG.TRel P₂ = LocNG.TRel P := by
    funext t t'
    unfold LocNG.TRel
    rw [hSt]
  have hmu : ∀ t, LocNG.mu P₂ t = LocNG.mu P t := fun t => by
    unfold LocNG.mu
    rw [hSt, hK0]
  have T2 := GlobalTheory.HL.CoordTermWt.terms_correspond M hM H r k P₂ S c₂
  have TD := GlobalTheory.HL.CoordDatum.transport M hM H r k P₂ S c₂
  have TH := GlobalTheory.HL.CoordHeight.height_eq M hM H r k P₂ S c₂
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · intro d t ht
    have h := T2.1 (φ d) t ((hterm d t).1 ht)
    rw [hdat, hlat, hom d t ht] at h
    exact h
  · intro d d'
    rw [hrel, TD.2.2.1, hdat, hdat]
  · rw [← hHp]
    exact TH.1
  · intro hp
    obtain ⟨h1, h2, h3⟩ := TH.2.2 ((hPT).2 hp)
    have hvth : S.vth = 0 := by simp [Frames.vth, h1]
    have ha : S.a = 0 := by simp [Frames.a, h2, hvth]
    have hvD : S.vD = 0 := Finset.sum_eq_zero fun l _ => by
      split_ifs with h
      · exact h3 l h.2
      · rfl
    simp [Frames.Hp, hvth, ha, hvD]
  · intro R d
    let R₂ : LocNG.Reps P₂ :=
      { RD := φ '' R.RD
        RT := fun d₂ => R.RT (φ.symm d₂)
        hRD := by
          refine ⟨Set.subset_univ _, fun x _ => ?_, ?_⟩
          · obtain ⟨y, hy, hr⟩ := R.hRD.2.1 (φ.symm x) trivial
            refine ⟨φ y, ⟨y, hy, rfl⟩, ?_⟩
            have := (hrel y (φ.symm x)).1 hr
            rwa [φ.apply_symm_apply] at this
          · rintro _ ⟨a, ha, rfl⟩ _ ⟨b, hb, rfl⟩ h
            exact congrArg φ (R.hRD.2.2 a ha b hb ((hrel a b).2 h))
        hRT := fun d₂ => by
          have hs : {t | LocNG.IsTermOver P₂ d₂ t} = {t | LocNG.IsTermOver P (φ.symm d₂) t} := by
            ext t
            simp only [Set.mem_setOf_eq]
            rw [hterm, φ.apply_symm_apply]
          rw [hs, hTR]
          exact R.hRT _ }
    have hamp : ∀ Q, LocNG.amp R d Q = LocNG.amp R₂ (φ d) Q := by
      intro Q
      unfold LocNG.amp
      have e : R₂.RT (φ d) = R.RT d := by simp [R₂]
      rw [e]
      refine tsum_congr fun t => ?_
      rw [hmu, hom d t.1 ((R.hRT d).1 t.2.1)]
    have A := GlobalTheory.HL.CoordAmp.amp_mass_eq M hM H r k P₂ S c₂ R₂ (φ d)
    rw [hdat] at A
    exact ⟨(hamp _).trans A.1, (hamp _).trans A.2.1⟩

end GlobalTheory.HL.WCoordTerms
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.TermsOrbitsHeightsAmplitudesInCoordinates =====
