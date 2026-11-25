module

public import Mathlib.LinearAlgebra.DFinsupp
public import Mathlib.LinearAlgebra.Quotient.Basic
public import Mathlib.SetTheory.Cardinal.Finite
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PartnerCountOfIso
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PartnerCount
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.IntegralClosureRankAndResidueTrdegLe
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PcIntGen
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PcBridgeA, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PcBridgeB, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PartnerCountHoldsAll

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PcBridgeA =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PcBridgeA", "h": "module\n\npublic import Mathlib.LinearAlgebra.DFinsupp\npublic import Mathlib.LinearAlgebra.Quotient.Basic\npublic import Mathlib.SetTheory.Cardinal.Finite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.PCount.BI

open Submodule

variable {E : Type} [CommRing E] (R : Subring E)

abbrev Rs : Submodule R E := LinearMap.range (Algebra.linearMap R E)

abbrev Qt : Type := E ⧸ Rs R

abbrev IsoT {C C' : Type} [AddCommGroup C] [Module R C] [AddCommGroup C'] [Module R C']
    (e : C) (e' : C') (l : C →ₗ[R] Qt R) (l' : C' →ₗ[R] Qt R) : Type :=
  {φ : C ≃ₗ[R] C' // φ e = e' ∧ ∀ v, l' (φ v) = l v}

variable {R}

theorem mkQ_eq_zero_iff (τ : E) : (Rs R).mkQ τ = 0 ↔ ∃ r : R, (r : E) = τ := by
  rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
  first
    | exact Iff.rfl

section G

variable {C : Type} [AddCommGroup C] [Module R C] (α : C →ₗ[R] Qt R)

def NF : Submodule R (C × E) :=
  LinearMap.ker (α.comp (LinearMap.fst R C E) + (Rs R).mkQ.comp (LinearMap.snd R C E))

theorem mem_NF {x : C × E} : x ∈ NF α ↔ α x.1 + (Rs R).mkQ x.2 = 0 := by
  first
    | exact Iff.rfl

theorem one_mem_NF : ((0 : C), (1 : E)) ∈ NF α := by
  rw [mem_NF]
  show α 0 + (Rs R).mkQ 1 = 0
  rw [map_zero, zero_add]
  exact (mkQ_eq_zero_iff _).2 ⟨1, by first | rfl | simp⟩

def e0 : NF α := ⟨(0, 1), one_mem_NF α⟩

theorem lift_exists (c : C) : ∃ τ : E, (c, τ) ∈ NF α := by
  obtain ⟨τ, hτ⟩ := (Rs R).mkQ_surjective (-α c)
  refine ⟨τ, (mem_NF α).2 ?_⟩
  show α c + (Rs R).mkQ τ = 0
  rw [hτ]
  first | exact add_neg_cancel _

def liftN (c : C) : NF α := ⟨(c, (lift_exists α c).choose), (lift_exists α c).choose_spec⟩

theorem diff_of_fst {x x' : NF α} (h : (x : C × E).1 = (x' : C × E).1) : ∃ r : R, x - x' = r • e0 α := by
  have hx := (mem_NF α).1 x.2
  have hx' := (mem_NF α).1 x'.2
  rw [h] at hx
  have h0 : (Rs R).mkQ ((x : C × E).2 - (x' : C × E).2) = 0 := by
    rw [map_sub, sub_eq_zero]
    exact add_left_cancel (hx.trans hx'.symm)
  obtain ⟨r, hr⟩ := (mkQ_eq_zero_iff _).1 h0
  refine ⟨r, Subtype.ext (Prod.ext ?_ ?_)⟩
  · first
      | (show (x : C × E).1 - (x' : C × E).1 = r • (0 : C); rw [h, sub_self, smul_zero])
  · first
      | (show (x : C × E).2 - (x' : C × E).2 = (r : E) * 1; rw [mul_one, hr])

variable (β : C) (u : E) (hb : α β + (Rs R).mkQ u = 0)

def bN : NF α := ⟨(β, u), (mem_NF α).2 hb⟩

abbrev CG : Type := NF α ⧸ (R ∙ bN α β u hb)

def eG : CG α β u hb := Submodule.Quotient.mk (e0 α)

def lamG (hu : IsUnit u) : CG α β u hb →ₗ[R] Qt R :=
  (R ∙ bN α β u hb).liftQ
    (((Rs R).mkQ.comp ((LinearMap.mulLeft R ((hu.unit⁻¹ : Eˣ) : E)).comp (LinearMap.snd R C E))).comp
      (NF α).subtype)
    (by
      rw [Submodule.span_le, Set.singleton_subset_iff, SetLike.mem_coe, LinearMap.mem_ker]
      simp only [LinearMap.coe_comp, Function.comp_apply, Submodule.coe_subtype, bN, LinearMap.snd_apply,
        LinearMap.mulLeft_apply]
      exact (mkQ_eq_zero_iff _).2 ⟨1, by simp⟩)

theorem lamG_mk (hu : IsUnit u) (x : NF α) :
    lamG α β u hb hu (Submodule.Quotient.mk x) = (Rs R).mkQ (((hu.unit⁻¹ : Eˣ) : E) * (x : C × E).2) := rfl

end G

section Two

variable {C₁ C₂ : Type} [AddCommGroup C₁] [Module R C₁] [AddCommGroup C₂] [Module R C₂]
  {α₁ : C₁ →ₗ[R] Qt R} {α₂ : C₂ →ₗ[R] Qt R} {β₁ : C₁} {β₂ : C₂} {u : E} (hu : IsUnit u)
  {hb₁ : α₁ β₁ + (Rs R).mkQ u = 0} {hb₂ : α₂ β₂ + (Rs R).mkQ u = 0}

include hu in
theorem unit_cancel {r : R} (h : (r : E) * u = 0) : r = 0 := by
  have h' : (r : E) = 0 := by
    first
      | exact hu.mul_left_eq_zero.1 h
  first | exact Subtype.ext h'

include hu in
theorem uniq_N {z z' : NF α₂} (h1 : (Submodule.Quotient.mk z : CG α₂ β₂ u hb₂) = Submodule.Quotient.mk z')
    (h2 : (z : C₂ × E).2 = (z' : C₂ × E).2) : z = z' := by
  rw [Submodule.Quotient.eq, Submodule.mem_span_singleton] at h1
  obtain ⟨r, hr⟩ := h1
  have h3 : (r : E) * u = 0 := by
    have h4 : ((r • bN α₂ β₂ u hb₂ : NF α₂) : C₂ × E).2 = ((z - z' : NF α₂) : C₂ × E).2 := by
      rw [hr]
    simp only [Submodule.coe_smul, Submodule.coe_sub, Prod.smul_snd, Prod.snd_sub, h2, sub_self] at h4
    first
      | exact h4
  have hr0 := unit_cancel hu h3
  rw [hr0, zero_smul] at hr
  exact sub_eq_zero.1 hr.symm

variable (ψ : CG α₁ β₁ u hb₁ →ₗ[R] CG α₂ β₂ u hb₂)
  (hψl : ∀ v, lamG α₂ β₂ u hb₂ hu (ψ v) = lamG α₁ β₁ u hb₁ hu v)

include hψl in
theorem exists_rep (x : NF α₁) : ∃ z : NF α₂, (Submodule.Quotient.mk z : CG α₂ β₂ u hb₂) = ψ (Submodule.Quotient.mk x) ∧
    (z : C₂ × E).2 = (x : C₁ × E).2 := by
  obtain ⟨w, hw⟩ := Submodule.Quotient.mk_surjective _ (ψ (Submodule.Quotient.mk x))
  have hl := hψl (Submodule.Quotient.mk x)
  rw [← hw, lamG_mk, lamG_mk] at hl
  have h0 : (Rs R).mkQ (((hu.unit⁻¹ : Eˣ) : E) * ((x : C₁ × E).2 - (w : C₂ × E).2)) = 0 := by
    rw [mul_sub, map_sub, hl, sub_self]
  obtain ⟨s, hs⟩ := (mkQ_eq_zero_iff _).1 h0
  have hinv : ((hu.unit⁻¹ : Eˣ) : E) * u = 1 := by
    first | exact hu.val_inv_mul
  refine ⟨w + s • bN α₂ β₂ u hb₂, ?_, ?_⟩
  · have hp : (Submodule.Quotient.mk (bN α₂ β₂ u hb₂) : CG α₂ β₂ u hb₂) = 0 :=
      (Submodule.Quotient.mk_eq_zero _).2 (Submodule.mem_span_singleton_self _)
    rw [Submodule.Quotient.mk_add, Submodule.Quotient.mk_smul, hp, smul_zero, add_zero, hw]
  · show (w : C₂ × E).2 + (s : E) * u = (x : C₁ × E).2
    linear_combination u * hs + ((x : C₁ × E).2 - (w : C₂ × E).2) * hinv

def Phi (x : NF α₁) : NF α₂ := (exists_rep hu ψ hψl x).choose

theorem Phi_mk (x : NF α₁) :
    (Submodule.Quotient.mk (Phi hu ψ hψl x) : CG α₂ β₂ u hb₂) = ψ (Submodule.Quotient.mk x) := (exists_rep hu ψ hψl x).choose_spec.1

theorem Phi_snd (x : NF α₁) : ((Phi hu ψ hψl x : NF α₂) : C₂ × E).2 = (x : C₁ × E).2 := (exists_rep hu ψ hψl x).choose_spec.2

theorem Phi_add (x y : NF α₁) : Phi hu ψ hψl (x + y) = Phi hu ψ hψl x + Phi hu ψ hψl y := by
  refine uniq_N (β₂ := β₂) (hb₂ := hb₂) hu ?_ ?_
  · first
      | (simp only [Phi_mk, Submodule.Quotient.mk_add, map_add (f := _)]; done)
  · first
      | (simp only [Phi_snd, Submodule.coe_add, Prod.snd_add]; done)

theorem Phi_smul (r : R) (x : NF α₁) : Phi hu ψ hψl (r • x) = r • Phi hu ψ hψl x := by
  refine uniq_N (β₂ := β₂) (hb₂ := hb₂) hu ?_ ?_
  · first
      | (simp only [Phi_mk, Submodule.Quotient.mk_smul, map_smul]; done)
  · first
      | (simp only [Phi_snd, Submodule.coe_smul, Prod.smul_snd]; done)

theorem fiberMap_fiberUnit (hψe : ψ (eG α₁ β₁ u hb₁) = eG α₂ β₂ u hb₂) : Phi hu ψ hψl (e0 α₁) = e0 α₂ := by
  refine uniq_N (β₂ := β₂) (hb₂ := hb₂) hu ?_ ?_
  · rw [Phi_mk]
    exact hψe
  · rw [Phi_snd] <;> rfl

theorem Phi_fst (hψe : ψ (eG α₁ β₁ u hb₁) = eG α₂ β₂ u hb₂) {x x' : NF α₁}
    (h : (x : C₁ × E).1 = (x' : C₁ × E).1) :
    ((Phi hu ψ hψl x : NF α₂) : C₂ × E).1 = ((Phi hu ψ hψl x' : NF α₂) : C₂ × E).1 := by
  obtain ⟨r, hr⟩ := diff_of_fst α₁ h
  have hx : x = x' + r • e0 α₁ := by
    first | exact sub_eq_iff_eq_add'.1 hr
  rw [hx, Phi_add, Phi_smul, fiberMap_fiberUnit hu ψ hψl hψe]
  first
    | (simp [e0]; done)

def phiF (c : C₁) : C₂ := ((Phi hu ψ hψl (liftN α₁ c) : NF α₂) : C₂ × E).1

theorem phiF_of (hψe : ψ (eG α₁ β₁ u hb₁) = eG α₂ β₂ u hb₂) (x : NF α₁) :
    phiF hu ψ hψl (x : C₁ × E).1 = ((Phi hu ψ hψl x : NF α₂) : C₂ × E).1 := Phi_fst hu ψ hψl hψe (x := liftN α₁ (x : C₁ × E).1) (x' := x) rfl

def phiL (hψe : ψ (eG α₁ β₁ u hb₁) = eG α₂ β₂ u hb₂) : C₁ →ₗ[R] C₂ where
  toFun := phiF hu ψ hψl
  map_add' c c' := by
    have h := phiF_of hu ψ hψl hψe (liftN α₁ c + liftN α₁ c')
    simp only [Submodule.coe_add, Prod.fst_add, Phi_add] at h
    rw [show (liftN α₁ c : C₁ × E).1 = c from rfl, show (liftN α₁ c' : C₁ × E).1 = c' from rfl] at h
    rw [h]
    rfl
  map_smul' r c := by
    have h := phiF_of hu ψ hψl hψe (r • liftN α₁ c)
    simp only [Submodule.coe_smul, Prod.smul_fst, Phi_smul] at h
    rw [show (liftN α₁ c : C₁ × E).1 = c from rfl] at h
    rw [h]
    rfl

end Two

section Equiv

variable {C₁ C₂ : Type} [AddCommGroup C₁] [Module R C₁] [AddCommGroup C₂] [Module R C₂]
  {α₁ : C₁ →ₗ[R] Qt R} {α₂ : C₂ →ₗ[R] Qt R} {β₁ : C₁} {β₂ : C₂} {u : E} (hu : IsUnit u)
  (hb₁ : α₁ β₁ + (Rs R).mkQ u = 0) (hb₂ : α₂ β₂ + (Rs R).mkQ u = 0)

omit hu hb₁ hb₂ in
theorem NF_map (φ : C₁ ≃ₗ[R] C₂) (hα : ∀ v, α₂ (φ v) = α₁ v) :
    (NF α₁).map ((φ.prodCongr (LinearEquiv.refl R E)) : C₁ × E →ₗ[R] C₂ × E) = NF α₂ := by
  have hα' : ∀ w, α₁ (φ.symm w) = α₂ w := fun w => by
    rw [← hα (φ.symm w), LinearEquiv.apply_symm_apply]
  ext y
  first
    | (rw [Submodule.mem_map_equiv, mem_NF, mem_NF]
       show α₁ (φ.symm y.1) + (Rs R).mkQ y.2 = 0 ↔ _
       rw [hα'])


omit hu hb₁ hb₂ in
def PhiN (φ : C₁ ≃ₗ[R] C₂) (hα : ∀ v, α₂ (φ v) = α₁ v) : NF α₁ ≃ₗ[R] NF α₂ :=
  LinearEquiv.ofSubmodules (φ.prodCongr (LinearEquiv.refl R E)) (NF α₁) (NF α₂) (NF_map φ hα)

omit hu hb₁ hb₂ in
theorem PhiN_apply (φ : C₁ ≃ₗ[R] C₂) (hα : ∀ v, α₂ (φ v) = α₁ v) (x : NF α₁) :
    ((PhiN φ hα x : NF α₂) : C₂ × E) = (φ (x : C₁ × E).1, (x : C₁ × E).2) := rfl

def Fψ (φ : IsoT R β₁ β₂ α₁ α₂) : IsoT R (eG α₁ β₁ u hb₁) (eG α₂ β₂ u hb₂) (lamG α₁ β₁ u hb₁ hu) (lamG α₂ β₂ u hb₂ hu) :=
  ⟨Submodule.Quotient.equiv _ _ (PhiN φ.1 φ.2.2) (by
      have hb : PhiN φ.1 φ.2.2 (bN α₁ β₁ u hb₁) = bN α₂ β₂ u hb₂ :=
        Subtype.ext (by rw [PhiN_apply]; simp [bN, φ.2.1])
      rw [Submodule.map_span, Set.image_singleton]
      erw [hb]),
    by
      show Submodule.Quotient.mk (PhiN φ.1 φ.2.2 (e0 α₁)) = Submodule.Quotient.mk (e0 α₂)
      congr 1
      exact Subtype.ext (by rw [PhiN_apply]; simp [e0]),
    fun v => by
      induction v using Submodule.Quotient.induction_on with
      | H x =>
        show lamG α₂ β₂ u hb₂ hu (Submodule.Quotient.mk (PhiN φ.1 φ.2.2 x)) = _
        rw [lamG_mk, lamG_mk, PhiN_apply]⟩

theorem Fψ_mk (φ : IsoT R β₁ β₂ α₁ α₂) (x : NF α₁) :
    (Fψ hu hb₁ hb₂ φ).1 (Submodule.Quotient.mk x) = Submodule.Quotient.mk (PhiN φ.1 φ.2.2 x) := rfl

theorem Fψ_injective : Function.Injective (Fψ hu hb₁ hb₂) := by
  intro φ φ' h
  apply Subtype.ext
  apply LinearEquiv.ext
  intro c
  have h1 : (Submodule.Quotient.mk (PhiN φ.1 φ.2.2 (liftN α₁ c)) : CG α₂ β₂ u hb₂) =
      Submodule.Quotient.mk (PhiN φ'.1 φ'.2.2 (liftN α₁ c)) := by
    rw [← Fψ_mk hu hb₁ hb₂ φ, ← Fψ_mk hu hb₁ hb₂ φ', h]
  have h2 := uniq_N hu h1 (by simp only [PhiN_apply])
  have h3 : ((PhiN φ.1 φ.2.2 (liftN α₁ c) : NF α₂) : C₂ × E).1 =
      ((PhiN φ'.1 φ'.2.2 (liftN α₁ c) : NF α₂) : C₂ × E).1 := by
    rw [h2]
  rw [PhiN_apply, PhiN_apply] at h3
  exact h3

theorem Fψ_surjective : Function.Surjective (Fψ hu hb₁ hb₂) := by
  intro Ψ
  obtain ⟨e, he, hl⟩ := Ψ
  have hl0 : ∀ v, lamG α₂ β₂ u hb₂ hu (e.toLinearMap v) = lamG α₁ β₁ u hb₁ hu v := hl
  have hl1 : ∀ v, lamG α₁ β₁ u hb₁ hu (e.symm.toLinearMap v) = lamG α₂ β₂ u hb₂ hu v := by
    intro v
    have h := hl (e.symm v)
    rw [LinearEquiv.apply_symm_apply] at h
    exact h.symm
  have he0 : e.toLinearMap (eG α₁ β₁ u hb₁) = eG α₂ β₂ u hb₂ := he
  have he1 : e.symm.toLinearMap (eG α₂ β₂ u hb₂) = eG α₁ β₁ u hb₁ := by
    show e.symm _ = _
    rw [LinearEquiv.symm_apply_eq]
    exact he.symm
  have hinv1 : ∀ x, Phi hu e.symm.toLinearMap hl1 (Phi hu e.toLinearMap hl0 x) = x := by
    intro x
    refine uniq_N (β₂ := β₁) (hb₂ := hb₁) hu ?_ ?_
    · rw [Phi_mk, Phi_mk]
      exact e.symm_apply_apply _
    · rw [Phi_snd, Phi_snd]
  have hinv2 : ∀ y, Phi hu e.toLinearMap hl0 (Phi hu e.symm.toLinearMap hl1 y) = y := by
    intro y
    refine uniq_N (β₂ := β₂) (hb₂ := hb₂) hu ?_ ?_
    · rw [Phi_mk, Phi_mk]
      exact e.apply_symm_apply _
    · rw [Phi_snd, Phi_snd]
  have hfg : ∀ c, phiF hu e.toLinearMap hl0 (phiF hu e.symm.toLinearMap hl1 c) = c := by
    intro c
    have h := phiF_of hu e.toLinearMap hl0 he0 (Phi hu e.symm.toLinearMap hl1 (liftN α₂ c))
    rw [hinv2] at h
    exact h
  have hgf : ∀ c, phiF hu e.symm.toLinearMap hl1 (phiF hu e.toLinearMap hl0 c) = c := by
    intro c
    have h := phiF_of hu e.symm.toLinearMap hl1 he1 (Phi hu e.toLinearMap hl0 (liftN α₁ c))
    rw [hinv1] at h
    exact h
  have hp : Phi hu e.toLinearMap hl0 (bN α₁ β₁ u hb₁) = bN α₂ β₂ u hb₂ := by
    refine uniq_N (β₂ := β₂) (hb₂ := hb₂) hu ?_ ?_
    · rw [Phi_mk]
      have h1 : (Submodule.Quotient.mk (bN α₁ β₁ u hb₁) : CG α₁ β₁ u hb₁) = 0 :=
        (Submodule.Quotient.mk_eq_zero _).2 (Submodule.mem_span_singleton_self _)
      have h2 : (Submodule.Quotient.mk (bN α₂ β₂ u hb₂) : CG α₂ β₂ u hb₂) = 0 :=
        (Submodule.Quotient.mk_eq_zero _).2 (Submodule.mem_span_singleton_self _)
      rw [h1, h2, map_zero]
    · rw [Phi_snd] <;> rfl
  have hβ : phiF hu e.toLinearMap hl0 β₁ = β₂ := by
    have h := phiF_of hu e.toLinearMap hl0 he0 (bN α₁ β₁ u hb₁)
    rw [hp] at h
    exact h
  have hα : ∀ c, α₂ (phiF hu e.toLinearMap hl0 c) = α₁ c := by
    intro c
    have h1 := (mem_NF α₁).1 (liftN α₁ c).2
    have h2 := (mem_NF α₂).1 (Phi hu e.toLinearMap hl0 (liftN α₁ c)).2
    rw [Phi_snd] at h2
    exact add_right_cancel (h2.trans h1.symm)
  refine ⟨⟨LinearEquiv.ofLinear (phiL hu e.toLinearMap hl0 he0)
      (phiL hu e.symm.toLinearMap hl1 he1)
      (LinearMap.ext fun c => hfg c) (LinearMap.ext fun c => hgf c), hβ, fun c => hα c⟩, ?_⟩
  apply Subtype.ext
  apply LinearEquiv.ext
  intro v
  induction v using Submodule.Quotient.induction_on with
  | H x =>
    refine (Fψ_mk hu hb₁ hb₂ _ x).trans
      ((congrArg Submodule.Quotient.mk ?_).trans (Phi_mk hu e.toLinearMap hl0 x))
    apply Subtype.ext
    rw [PhiN_apply]
    refine Prod.ext ?_ ?_
    · exact phiF_of hu e.toLinearMap hl0 he0 x
    · exact (Phi_snd hu e.toLinearMap hl0 x).symm

theorem card_isoT_G :
    Nat.card (IsoT R β₁ β₂ α₁ α₂) =
      Nat.card (IsoT R (eG α₁ β₁ u hb₁) (eG α₂ β₂ u hb₂) (lamG α₁ β₁ u hb₁ hu) (lamG α₂ β₂ u hb₂ hu)) :=
  Nat.card_congr (Equiv.ofBijective _
    ⟨Fψ_injective hu hb₁ hb₂, Fψ_surjective hu hb₁ hb₂⟩)

end Equiv

section Congr

variable {A₁ A₂ B₁ B₂ : Type} [AddCommGroup A₁] [Module R A₁] [AddCommGroup A₂] [Module R A₂]
  [AddCommGroup B₁] [Module R B₁] [AddCommGroup B₂] [Module R B₂]
  {a₁ : A₁} {a₂ : A₂} {b₁ : B₁} {b₂ : B₂} {la₁ : A₁ →ₗ[R] Qt R} {la₂ : A₂ →ₗ[R] Qt R}
  {lb₁ : B₁ →ₗ[R] Qt R} {lb₂ : B₂ →ₗ[R] Qt R}

theorem card_isoT_congr (θ₁ : IsoT R a₁ b₁ la₁ lb₁) (θ₂ : IsoT R a₂ b₂ la₂ lb₂) :
    Nat.card (IsoT R a₁ a₂ la₁ la₂) = Nat.card (IsoT R b₁ b₂ lb₁ lb₂) := by
  obtain ⟨t₁, ht₁, hl₁⟩ := θ₁
  obtain ⟨t₂, ht₂, hl₂⟩ := θ₂
  exact Nat.card_congr
    { toFun := fun φ => ⟨(t₁.symm.trans φ.1).trans t₂,
        by
          have h : t₁.symm b₁ = a₁ := by
            rw [LinearEquiv.symm_apply_eq]
            exact ht₁.symm
          show t₂ (φ.1 (t₁.symm b₁)) = b₂
          rw [h, φ.2.1, ht₂],
        fun v => by
          show lb₂ (t₂ (φ.1 (t₁.symm v))) = lb₁ v
          rw [hl₂, φ.2.2, ← hl₁, LinearEquiv.apply_symm_apply]⟩
      invFun := fun ψ => ⟨(t₁.trans ψ.1).trans t₂.symm,
        by
          show t₂.symm (ψ.1 (t₁ a₁)) = a₂
          rw [ht₁, ψ.2.1, LinearEquiv.symm_apply_eq]
          exact ht₂.symm,
        fun v => by
          show la₂ (t₂.symm (ψ.1 (t₁ v))) = la₁ v
          rw [← hl₂, LinearEquiv.apply_symm_apply, ψ.2.2, hl₁]⟩
      left_inv := fun φ => Subtype.ext (LinearEquiv.ext fun v => by
        show t₂.symm (t₂ (φ.1 (t₁.symm (t₁ v)))) = φ.1 v
        rw [LinearEquiv.symm_apply_apply, LinearEquiv.symm_apply_apply])
      right_inv := fun ψ => Subtype.ext (LinearEquiv.ext fun v => by
        show t₂ (t₂.symm (ψ.1 (t₁ (t₁.symm v)))) = ψ.1 v
        rw [LinearEquiv.apply_symm_apply, LinearEquiv.apply_symm_apply]) }

end Congr

end Formalism.L2.SG.Pf.PCount.BI
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PcBridgeA =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PcBridgeB =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PcBridgeB", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PcBridgeA\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PartnerCountOfIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.PCount.BI

open Matrix

section Schur

variable {E : Type} [CommRing E] {m : ℕ} (Zm : Matrix (Fin (m + 1)) (Fin (m + 1)) E)

def hd : Matrix (Fin m) (Fin m) E := Zm.submatrix Fin.castSucc Fin.castSucc

def lc (a : Fin m) : E := Zm a.castSucc (Fin.last m)

def lr (b : Fin m) : E := Zm (Fin.last m) b.castSucc

theorem mulVec_castSucc (w : Fin (m + 1) → E) (a : Fin m) :
    (Zm *ᵥ w) a.castSucc = (hd Zm *ᵥ fun b => w b.castSucc) a + lc Zm a * w (Fin.last m) := by
  simp only [mulVec, dotProduct, Fin.sum_univ_castSucc, hd, lc, submatrix_apply]

theorem mulVec_last (w : Fin (m + 1) → E) :
    (Zm *ᵥ w) (Fin.last m) = lr Zm ⬝ᵥ (fun b => w b.castSucc) + Zm (Fin.last m) (Fin.last m) * w (Fin.last m) := by
  simp only [mulVec, dotProduct, Fin.sum_univ_castSucc, lr]

theorem schur_identity (hZ : IsUnit Zm.det) (hY : IsUnit (hd Zm).det) (v : Fin (m + 1) → E) :
    lr Zm ⬝ᵥ ((hd Zm)⁻¹ *ᵥ fun a => v a.castSucc) +
      (Zm (Fin.last m) (Fin.last m) - lr Zm ⬝ᵥ ((hd Zm)⁻¹ *ᵥ lc Zm)) * (Zm⁻¹ *ᵥ v) (Fin.last m) = v (Fin.last m) := by
  set w := Zm⁻¹ *ᵥ v with hw
  have hZw : Zm *ᵥ w = v := by rw [hw, mulVec_mulVec, mul_nonsing_inv _ hZ, one_mulVec]

  have hh : (fun a => v a.castSucc) = hd Zm *ᵥ (fun b => w b.castSucc) + w (Fin.last m) • lc Zm := by
    funext a
    rw [← hZw, mulVec_castSucc]
    simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul]
    ring
  have hl : v (Fin.last m) = lr Zm ⬝ᵥ (fun b => w b.castSucc) + Zm (Fin.last m) (Fin.last m) * w (Fin.last m) := by
    rw [← hZw, mulVec_last]
  rw [hh, mulVec_add, mulVec_smul, mulVec_mulVec, nonsing_inv_mul _ hY, one_mulVec, dotProduct_add,
    dotProduct_smul, hl]
  simp only [smul_eq_mul]
  ring

theorem inv_last_last (hZ : IsUnit Zm.det) :
    Zm⁻¹ (Fin.last m) (Fin.last m) = Ring.inverse Zm.det * (hd Zm).det := by
  rw [inv_def, Matrix.smul_apply, adjugate_fin_succ_eq_det_submatrix, Fin.succAbove_last, smul_eq_mul]
  have e : ((-1 : E) ^ ((Fin.last m : ℕ) + (Fin.last m : ℕ))) = 1 := by
    rw [← two_mul, pow_mul, neg_one_sq, one_pow]
  rw [e, one_mul]
  rfl

end Schur

section Model

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
  {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E] (M : Formalism.MainNotions.S.Loc.Model F E)
  {m : ℕ}

abbrev toE {k : ℕ} (x : Fin k → M.R) : Fin k → E := fun j => (x j : E)

abbrev alQ (Y : M.Mat m) (row : Fin m → M.R) : M.Cok Y →ₗ[M.R] Qt M.R := M.linQ Y row

abbrev lamQ (Z : M.Mat (m + 1)) : M.Cok Z →ₗ[M.R] Qt M.R := M.lam Z

theorem linQ_mk (Y : M.Mat m) (row : Fin m → M.R) (x : Fin m → M.R) :
    alQ M Y row (Submodule.Quotient.mk x) =
      (Rs M.R).mkQ (toE M row ⬝ᵥ ((Y.Z.map M.R.subtype)⁻¹ *ᵥ toE M x)) := by rfl

theorem lam_mk (Z : M.Mat (m + 1)) (v : Fin (m + 1) → M.R) :
    lamQ M Z (Submodule.Quotient.mk v) = (Rs M.R).mkQ (((Z.Z.map M.R.subtype)⁻¹ *ᵥ toE M v) (Fin.last m)) := by rfl

variable (Y : M.Mat m) (Z : M.Mat (m + 1)) (be al : Fin m → M.R)
  (hY : ∀ a b : Fin m, (Y.Z a b : E) = Z.Z.map M.R.subtype a.castSucc b.castSucc)
  (hbe : ∀ a : Fin m, (be a : E) = Z.Z.map M.R.subtype a.castSucc (Fin.last m))
  (hal : ∀ a : Fin m, (al a : E) = Z.Z.map M.R.subtype (Fin.last m) a.castSucc)
  (u : E) (hu : IsUnit u)
  (hsch : Z.Z.map M.R.subtype (Fin.last m) (Fin.last m) -
    lr (Z.Z.map M.R.subtype) ⬝ᵥ ((hd (Z.Z.map M.R.subtype))⁻¹ *ᵥ lc (Z.Z.map M.R.subtype)) = u)

include hY in
theorem hd_eq : hd (Z.Z.map M.R.subtype) = Y.Z.map M.R.subtype := by
  ext a b
  exact (hY a b).symm

include hbe in
theorem lc_eq : lc (Z.Z.map M.R.subtype) = toE M be := by
  funext a
  exact (hbe a).symm

include hal in
theorem lr_eq : lr (Z.Z.map M.R.subtype) = toE M al := by
  funext a
  exact (hal a).symm

include hY hbe hal hsch in
theorem hb_corner : alQ M Y al (Submodule.Quotient.mk be) + (Rs M.R).mkQ u = 0 := by
  rw [linQ_mk, ← map_add (f := _), Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
  refine ⟨Z.Z (Fin.last m) (Fin.last m), ?_⟩
  rw [← hsch, hd_eq M Y Z hY, lc_eq M Z be hbe, lr_eq M Z al hal]
  simp only [Algebra.linearMap_apply]
  rw [add_sub_cancel]
  rfl


include hY hbe hal hsch in
theorem schur_M (v : Fin (m + 1) → E) :
    toE M al ⬝ᵥ ((Y.Z.map M.R.subtype)⁻¹ *ᵥ fun a => v a.castSucc) + u * ((Z.Z.map M.R.subtype)⁻¹ *ᵥ v) (Fin.last m) =
      v (Fin.last m) := by
  have hYu : IsUnit (hd (Z.Z.map M.R.subtype)).det := by
    rw [hd_eq M Y Z hY]
    exact Y.unit
  have h := schur_identity (Z.Z.map M.R.subtype) Z.unit hYu v
  rw [hsch, hd_eq M Y Z hY, lr_eq M Z al hal] at h
  exact h

end Model

section Theta

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
  {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E] (M : Formalism.MainNotions.S.Loc.Model F E)
  {m : ℕ} (Y : M.Mat m) (Z : M.Mat (m + 1)) (be al : Fin m → M.R)
  (hY : ∀ a b : Fin m, (Y.Z a b : E) = Z.Z.map M.R.subtype a.castSucc b.castSucc)
  (hbe : ∀ a : Fin m, (be a : E) = Z.Z.map M.R.subtype a.castSucc (Fin.last m))
  (hal : ∀ a : Fin m, (al a : E) = Z.Z.map M.R.subtype (Fin.last m) a.castSucc)
  (u : E) (hu : IsUnit u)
  (hsch : Z.Z.map M.R.subtype (Fin.last m) (Fin.last m) -
    lr (Z.Z.map M.R.subtype) ⬝ᵥ ((hd (Z.Z.map M.R.subtype))⁻¹ *ᵥ lc (Z.Z.map M.R.subtype)) = u)

def thetaRaw : (Fin (m + 1) → M.R) →ₗ[M.R] M.Cok Y × E :=
  LinearMap.prod ((Submodule.mkQ (LinearMap.range Y.Z.mulVecLin)).comp (LinearMap.funLeft M.R M.R Fin.castSucc))
    ((LinearMap.mulLeft M.R u).comp ((LinearMap.proj (R := M.R) (φ := fun _ : Fin (m + 1) => E) (Fin.last m)).comp
      ((((Z.Z.map M.R.subtype)⁻¹).mulVecLin.restrictScalars M.R).comp
        (LinearMap.compLeft (Algebra.linearMap M.R E) (Fin (m + 1))))))

theorem thetaRaw_apply (v : Fin (m + 1) → M.R) :
    thetaRaw M Y Z u v = (Submodule.Quotient.mk (fun a => v a.castSucc),
      u * ((Z.Z.map M.R.subtype)⁻¹ *ᵥ toE M v) (Fin.last m)) := rfl

include hY hbe hal hsch in
theorem thetaRaw_mem (v : Fin (m + 1) → M.R) : thetaRaw M Y Z u v ∈ NF (alQ M Y al) := by
  show _ ∈ LinearMap.ker _
  rw [LinearMap.mem_ker, thetaRaw_apply]
  simp only [LinearMap.add_apply, LinearMap.comp_apply, LinearMap.fst_apply, LinearMap.snd_apply]
  rw [linQ_mk, ← map_add (f := _), schur_M M Y Z be al hY hbe hal u hsch (toE M v), Submodule.mkQ_apply,
    Submodule.Quotient.mk_eq_zero]
  exact ⟨v (Fin.last m), rfl⟩

def thetaN : (Fin (m + 1) → M.R) →ₗ[M.R] NF (alQ M Y al) :=
  LinearMap.codRestrict _ (thetaRaw M Y Z u) (thetaRaw_mem M Y Z be al hY hbe hal u hsch)

def Theta : (Fin (m + 1) → M.R) →ₗ[M.R] CG (alQ M Y al) (Submodule.Quotient.mk be) u
    (hb_corner M Y Z be al hY hbe hal u hsch) :=
  (Submodule.mkQ _).comp (thetaN M Y Z be al hY hbe hal u hsch)

theorem Theta_apply (v : Fin (m + 1) → M.R) :
    Theta M Y Z be al hY hbe hal u hsch v =
      Submodule.Quotient.mk ⟨thetaRaw M Y Z u v, thetaRaw_mem M Y Z be al hY hbe hal u hsch v⟩ := rfl

include hY hbe hal hsch in
theorem Theta_surjective : Function.Surjective (Theta M Y Z be al hY hbe hal u hsch) := by
  intro q
  induction q using Submodule.Quotient.induction_on with
  | H p =>
    obtain ⟨⟨c, e⟩, hce⟩ := p
    induction c using Submodule.Quotient.induction_on with
    | H x =>
      have hce' := hce
      change _ ∈ LinearMap.ker _ at hce'
      rw [LinearMap.mem_ker] at hce'
      simp only [LinearMap.add_apply, LinearMap.comp_apply, LinearMap.fst_apply,
        LinearMap.snd_apply] at hce'
      rw [linQ_mk, ← map_add (f := _), Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero] at hce'
      obtain ⟨r, hr⟩ := hce'
      change ((r : M.R) : E) = _ at hr
      refine ⟨Fin.snoc (α := fun _ => M.R) x r, ?_⟩
      rw [Theta_apply]
      congr 1
      apply Subtype.ext
      show thetaRaw M Y Z u (Fin.snoc (α := fun _ => M.R) x r) = (Submodule.Quotient.mk x, e)
      rw [thetaRaw_apply]
      have hs := schur_M M Y Z be al hY hbe hal u hsch (toE M (Fin.snoc (α := fun _ => M.R) x r))
      simp only [toE, Fin.snoc_castSucc, Fin.snoc_last] at hs
      refine Prod.ext ?_ ?_
      · show Submodule.Quotient.mk (fun a => Fin.snoc (α := fun _ => M.R) x r a.castSucc) =
          Submodule.Quotient.mk x
        simp only [Fin.snoc_castSucc]
      · show u * _ = e
        linear_combination hs + hr

end Theta

section Ker

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
  {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E] (M : Formalism.MainNotions.S.Loc.Model F E)
  {m : ℕ} (Y : M.Mat m) (Z : M.Mat (m + 1)) (be al : Fin m → M.R)
  (hY : ∀ a b : Fin m, (Y.Z a b : E) = Z.Z.map M.R.subtype a.castSucc b.castSucc)
  (hbe : ∀ a : Fin m, (be a : E) = Z.Z.map M.R.subtype a.castSucc (Fin.last m))
  (hal : ∀ a : Fin m, (al a : E) = Z.Z.map M.R.subtype (Fin.last m) a.castSucc)
  (u : E) (hu : IsUnit u)
  (hsch : Z.Z.map M.R.subtype (Fin.last m) (Fin.last m) -
    lr (Z.Z.map M.R.subtype) ⬝ᵥ ((hd (Z.Z.map M.R.subtype))⁻¹ *ᵥ lc (Z.Z.map M.R.subtype)) = u)

theorem toE_mulVec {k : ℕ} (A : Matrix (Fin k) (Fin k) M.R) (x : Fin k → M.R) :
    toE M (A *ᵥ x) = A.map M.R.subtype *ᵥ toE M x := by
  funext j
  simp [toE, mulVec, dotProduct]

theorem toE_inj {k : ℕ} {x y : Fin k → M.R} (h : toE M x = toE M y) : x = y := by
  funext j
  exact Subtype.ext (congrFun h j)


include hY hbe in
theorem head_rows (x : Fin (m + 1) → M.R) :
    toE M (fun a => (Z.Z *ᵥ x) a.castSucc) = Y.Z.map M.R.subtype *ᵥ toE M (fun a => x a.castSucc) +
      (x (Fin.last m) : E) • toE M be := by
  funext a
  have h1 := mulVec_castSucc (Z.Z.map M.R.subtype) (toE M x) a
  have h2 : toE M (fun a => (Z.Z *ᵥ x) a.castSucc) a = (Z.Z.map M.R.subtype *ᵥ toE M x) a.castSucc :=
    congrFun (toE_mulVec M Z.Z x) a.castSucc
  rw [h2, h1, hd_eq M Y Z hY, lc_eq M Z be hbe]
  simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul]
  ring

include hY hbe hal hsch hu in
theorem Theta_ker : LinearMap.ker (Theta M Y Z be al hY hbe hal u hsch) = LinearMap.range Z.Z.mulVecLin := by
  have hZu := Z.unit
  have hYu := Y.unit

  have hhead : ∀ w : Fin (m + 1) → E, (fun a => (Z.Z.map M.R.subtype *ᵥ w) a.castSucc) =
      Y.Z.map M.R.subtype *ᵥ (fun b => w b.castSucc) + w (Fin.last m) • toE M be := by
    intro w
    funext a
    rw [mulVec_castSucc, hd_eq M Y Z hY, lc_eq M Z be hbe]
    simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul]
    ring
  apply le_antisymm
  · intro v hv
    rw [LinearMap.mem_ker, Theta_apply, Submodule.Quotient.mk_eq_zero,
      Submodule.mem_span_singleton] at hv
    obtain ⟨t, ht⟩ := hv
    have h1 : t • ((Submodule.Quotient.mk be : M.Cok Y), u) = thetaRaw M Y Z u v := congrArg Subtype.val ht
    rw [thetaRaw_apply, Prod.smul_mk] at h1
    obtain ⟨h1a, h1b⟩ := Prod.mk.inj h1

    rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.eq] at h1a
    obtain ⟨y, hy⟩ := h1a
    rw [mulVecLin_apply] at hy

    set W := (Z.Z.map M.R.subtype)⁻¹ *ᵥ toE M v with hW
    have hWl : W (Fin.last m) = (t : E) := by
      have h2 : u * W (Fin.last m) = u * (t : E) := by
        rw [← h1b]
        show _ = u * ((t : M.R) : E)
        rw [Subring.smul_def, smul_eq_mul, mul_comm]
      exact hu.mul_left_cancel h2
    have hZW : Z.Z.map M.R.subtype *ᵥ W = toE M v := by
      rw [hW, mulVec_mulVec, mul_nonsing_inv _ hZu, one_mulVec]
    have hWh : (fun b => W b.castSucc) = toE M (-y) := by
      have h3 := hhead W
      rw [hZW] at h3
      have hvh : (fun a => v a.castSucc) = Y.Z *ᵥ (-y) + t • be := by
        rw [mulVec_neg, hy]
        abel
      have h4 : toE M (fun a => v a.castSucc) = Y.Z.map M.R.subtype *ᵥ toE M (-y) + (t : E) • toE M be := by
        rw [hvh, ← toE_mulVec]
        funext a
        simp [toE]
      have h5 : Y.Z.map M.R.subtype *ᵥ ((fun b => W b.castSucc) - toE M (-y)) = 0 := by
        rw [mulVec_sub]
        have h6 : (fun a => toE M v a.castSucc) = toE M (fun a => v a.castSucc) := rfl
        rw [h6, h4, hWl] at h3
        rw [← add_right_cancel h3, sub_self]
      have h7 := congrArg ((Y.Z.map M.R.subtype)⁻¹ *ᵥ ·) h5
      simp only [mulVec_mulVec, nonsing_inv_mul _ hYu, one_mulVec, mulVec_zero] at h7
      exact sub_eq_zero.mp h7
    refine ⟨Fin.snoc (α := fun _ => M.R) (-y) t, ?_⟩
    rw [mulVecLin_apply]
    apply toE_inj M
    rw [toE_mulVec]
    have hx : toE M (Fin.snoc (α := fun _ => M.R) (-y) t) = W := by
      funext j
      refine Fin.lastCases ?_ (fun b => ?_) j
      · simp [toE, hWl]
      · simp only [toE, Fin.snoc_castSucc]
        exact (congrFun hWh b).symm
    rw [hx, hZW]
  · rintro _ ⟨x, rfl⟩
    rw [LinearMap.mem_ker, Theta_apply, Submodule.Quotient.mk_eq_zero,
      Submodule.mem_span_singleton]
    refine ⟨x (Fin.last m), ?_⟩
    apply Subtype.ext
    show x (Fin.last m) • ((Submodule.Quotient.mk be : M.Cok Y), u) = thetaRaw M Y Z u (Z.Z.mulVecLin x)
    rw [thetaRaw_apply, Prod.smul_mk, mulVecLin_apply]
    refine Prod.ext ?_ ?_
    · show x (Fin.last m) • (Submodule.Quotient.mk be : M.Cok Y) =
        Submodule.Quotient.mk (fun a => (Z.Z *ᵥ x) a.castSucc)
      rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.eq]
      refine ⟨-(fun a => x a.castSucc), ?_⟩
      have hh := head_rows M Y Z be hY hbe x
      apply toE_inj M
      rw [mulVecLin_apply, toE_mulVec]
      have e1 : toE M (x (Fin.last m) • be - fun a => (Z.Z *ᵥ x) a.castSucc) =
          (x (Fin.last m) : E) • toE M be - toE M (fun a => (Z.Z *ᵥ x) a.castSucc) := by
        funext a
        simp [toE]
      have e2 : toE M (-(fun a => x a.castSucc)) = -toE M (fun a => x a.castSucc) := by
        funext a
        simp [toE]
      rw [e1, e2, hh, mulVec_neg]
      abel
    · show x (Fin.last m) • u = u * ((Z.Z.map M.R.subtype)⁻¹ *ᵥ toE M (Z.Z *ᵥ x)) (Fin.last m)
      rw [toE_mulVec, mulVec_mulVec, nonsing_inv_mul _ hZu, one_mulVec, Subring.smul_def, smul_eq_mul,
        mul_comm]

end Ker

section Final

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
  {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E] (M : Formalism.MainNotions.S.Loc.Model F E)
  {m : ℕ} (Y : M.Mat m) (Z : M.Mat (m + 1)) (be al : Fin m → M.R)
  (hY : ∀ a b : Fin m, (Y.Z a b : E) = Z.Z.map M.R.subtype a.castSucc b.castSucc)
  (hbe : ∀ a : Fin m, (be a : E) = Z.Z.map M.R.subtype a.castSucc (Fin.last m))
  (hal : ∀ a : Fin m, (al a : E) = Z.Z.map M.R.subtype (Fin.last m) a.castSucc)
  (u : E) (hu : IsUnit u)
  (hsch : Z.Z.map M.R.subtype (Fin.last m) (Fin.last m) -
    lr (Z.Z.map M.R.subtype) ⬝ᵥ ((hd (Z.Z.map M.R.subtype))⁻¹ *ᵥ lc (Z.Z.map M.R.subtype)) = u)

def thetaEquiv : M.Cok Z ≃ₗ[M.R] CG (alQ M Y al) (Submodule.Quotient.mk be) u (hb_corner M Y Z be al hY hbe hal u hsch) :=
  (Submodule.quotEquivOfEq _ _ (Theta_ker M Y Z be al hY hbe hal u hu hsch).symm).trans
    (LinearMap.quotKerEquivOfSurjective _ (Theta_surjective M Y Z be al hY hbe hal u hsch))

def thetaIso : IsoT M.R (M.eCls Z) (eG (alQ M Y al) (Submodule.Quotient.mk be) u (hb_corner M Y Z be al hY hbe hal u hsch))
    (lamQ M Z) (lamG (alQ M Y al) (Submodule.Quotient.mk be) u (hb_corner M Y Z be al hY hbe hal u hsch) hu) :=
  ⟨thetaEquiv M Y Z be al hY hbe hal u hu hsch, by
    show Theta M Y Z be al hY hbe hal u hsch (Pi.single (Fin.last m) 1) = _
    rw [Theta_apply]
    unfold eG
    congr 1
    apply Subtype.ext
    show thetaRaw M Y Z u (Pi.single (Fin.last m) 1) = ((0 : M.Cok Y), (1 : E))
    rw [thetaRaw_apply]
    have h := schur_M M Y Z be al hY hbe hal u hsch (toE M (Pi.single (Fin.last m) 1))
    have e1 : (fun a : Fin m => (Pi.single (Fin.last m) (1 : M.R) : Fin (m + 1) → M.R) a.castSucc) = 0 := by
      funext a; simp [Fin.castSucc_ne_last]
    have e2 : (fun a : Fin m => toE M (Pi.single (Fin.last m) (1 : M.R)) a.castSucc) = 0 := by
      funext a; simp [toE, Fin.castSucc_ne_last]
    rw [e2, mulVec_zero, dotProduct_zero, zero_add] at h
    simp only [toE, Pi.single_eq_same, OneMemClass.coe_one] at h
    rw [e1, h]
    rfl,
  fun c => by
    induction c using Submodule.Quotient.induction_on with
    | H v =>
      show lamG (alQ M Y al) (Submodule.Quotient.mk be) u (hb_corner M Y Z be al hY hbe hal u hsch) hu
        (Theta M Y Z be al hY hbe hal u hsch v) = lamQ M Z (Submodule.Quotient.mk v)
      rw [Theta_apply, lamG_mk, lam_mk]
      show (Rs M.R).mkQ (((hu.unit⁻¹ : Eˣ) : E) * (u * _)) = _
      rw [← mul_assoc, show ((hu.unit⁻¹ : Eˣ) : E) * u = 1 by simp, one_mul]
      rfl⟩

end Final

section SchurEq

variable {E : Type} [CommRing E] {m : ℕ}

theorem hd_shift (P : Matrix (Fin (m + 1)) (Fin (m + 1)) E) (n : E) :
    hd (P + n • (Formalism.L2.SG.Pf.AtPt.Ecorner m : Matrix (Fin (m + 1)) (Fin (m + 1)) E)) = hd P := by
  ext a b
  simp [hd, Formalism.L2.SG.Pf.AtPt.Ecorner, Fin.castSucc_ne_last]

theorem schur_eq {n s : E} {P X L U : Matrix (Fin (m + 1)) (Fin (m + 1)) E} (hL : Formalism.L2.SG.Pf.AtPt.IsLo L)
    (hU : Formalism.L2.SG.Pf.AtPt.IsUp U) (hP : P = L * X * U)
    (hX : ∀ a : Fin m, X a.castSucc (Fin.last m) = 0 ∧ X (Fin.last m) a.castSucc = 0)
    (hs : X (Fin.last m) (Fin.last m) = s) (Zm : Matrix (Fin (m + 1)) (Fin (m + 1)) E)
    (hZm : Zm = P + n • (Formalism.L2.SG.Pf.AtPt.Ecorner m : Matrix (Fin (m + 1)) (Fin (m + 1)) E)) (hZu : IsUnit Zm.det) (hYu : IsUnit (hd Zm).det) :
    Zm (Fin.last m) (Fin.last m) - lr Zm ⬝ᵥ ((hd Zm)⁻¹ *ᵥ lc Zm) = s + n := by
  have esgn : ((-1 : E)) ^ ((Fin.last m : ℕ) + (Fin.last m : ℕ)) = 1 := by
    rw [← two_mul, pow_mul, neg_one_sq, one_pow]
  set S := Zm (Fin.last m) (Fin.last m) - lr Zm ⬝ᵥ ((hd Zm)⁻¹ *ᵥ lc Zm) with hSdef

  have hS : S * (hd Zm).det = Zm.det := by
    have h1 := schur_identity Zm hZu hYu (Pi.single (Fin.last m) 1)
    have e0 : (fun a : Fin m => (Pi.single (Fin.last m) (1 : E) : Fin (m + 1) → E) a.castSucc) = 0 := by
      funext a
      simp [Fin.castSucc_ne_last]
    rw [e0, mulVec_zero, dotProduct_zero, zero_add, Pi.single_eq_same] at h1
    have e1 : (Zm⁻¹ *ᵥ Pi.single (Fin.last m) 1) (Fin.last m) = Zm⁻¹ (Fin.last m) (Fin.last m) := by
      simp [mulVec, dotProduct, Pi.single_apply]
    rw [e1, inv_last_last Zm hZu] at h1
    have key : S * (hd Zm).det = S * (Ring.inverse Zm.det * (hd Zm).det) * Zm.det := by
      rw [mul_comm (Ring.inverse Zm.det), mul_assoc, mul_assoc, Ring.inverse_mul_cancel _ hZu, mul_one]
    rw [key, h1, one_mul]

  have hdetL : L.det = 1 := by
    rw [det_of_lowerTriangular L (fun i j hij => hL.2 i j (OrderDual.toDual_lt_toDual.mp hij))]
    simp [hL.1]
  have hdetU : U.det = 1 := by
    rw [det_of_upperTriangular (fun i j hij => hU.2 j i hij)]
    simp [hU.1]
  have hdetLh : (hd L).det = 1 := by
    rw [det_of_lowerTriangular (hd L) (fun i j hij =>
      hL.2 _ _ (Fin.castSucc_lt_castSucc_iff.mpr (OrderDual.toDual_lt_toDual.mp hij)))]
    simp [hd, hL.1]
  have hdetUh : (hd U).det = 1 := by
    rw [det_of_upperTriangular (M := hd U) (fun i j hij =>
      hU.2 _ _ (Fin.castSucc_lt_castSucc_iff.mpr hij))]
    simp [hd, hU.1]

  have hhd : hd P = hd L * hd X * hd U := by
    rw [hP]
    ext a b
    simp [hd, Matrix.mul_apply, Fin.sum_univ_castSucc, hL.2 _ _ (Fin.castSucc_lt_last a),
      hU.2 _ _ (Fin.castSucc_lt_last b)]
  have hdetP : P.det = X.det := by
    rw [hP, det_mul, det_mul, hdetL, hdetU, one_mul, mul_one]
  have hdetX : X.det = s * (hd X).det := by
    rw [det_succ_column X (Fin.last m), Fin.sum_univ_castSucc]
    simp only [(hX _).1, mul_zero, zero_mul, Finset.sum_const_zero, zero_add, hs, Fin.succAbove_last, esgn,
      one_mul]
    rfl
  have hdetZ : Zm.det = P.det + n * (hd P).det := by
    rw [det_succ_column Zm (Fin.last m), det_succ_column P (Fin.last m), Fin.sum_univ_castSucc,
      Fin.sum_univ_castSucc]
    have hsub : ∀ i : Fin (m + 1), Zm.submatrix i.succAbove (Fin.last m).succAbove =
        P.submatrix i.succAbove (Fin.last m).succAbove := by
      intro i
      ext a b
      simp [hZm, Formalism.L2.SG.Pf.AtPt.Ecorner, Fin.succAbove_last, Fin.castSucc_ne_last]
    have hZl : ∀ a : Fin m, Zm a.castSucc (Fin.last m) = P a.castSucc (Fin.last m) := by
      intro a
      simp [hZm, Formalism.L2.SG.Pf.AtPt.Ecorner, Fin.castSucc_ne_last]
    have hZll : Zm (Fin.last m) (Fin.last m) = P (Fin.last m) (Fin.last m) + n := by
      simp [hZm, Formalism.L2.SG.Pf.AtPt.Ecorner]
    simp only [hZl, hZll]
    simp only [hsub]
    rw [esgn, one_mul, one_mul, Fin.succAbove_last]
    simp only [hd]
    ring
  have hhdZ : hd Zm = hd P := by
    rw [hZm, hd_shift]
  have hD : (hd Zm).det = (hd X).det := by
    rw [hhdZ, hhd, det_mul, det_mul, hdetLh, hdetUh, one_mul, mul_one]
  rw [hdetZ, hdetP, hdetX, hhd, det_mul, det_mul, hdetLh, hdetUh, one_mul, mul_one, ← hD] at hS
  have hfin : S * (hd Zm).det = (s + n) * (hd Zm).det := by
    rw [hS]
    ring
  exact (hYu.mul_left_inj).mp hfin

end SchurEq

theorem integralIsomorphism_holds : Formalism.L2.SG.Pf.PCount.BridgeIso := by
  intro F _ _ _ E _ _ _ _ M m n s P₁ P₂ X₁ X₂ L₁ U₁ L₂ U₂ hL₁ hU₁ hL₂ hU₂ hP₁ hP₂ hX hs₁ hs₂ hu hn
    Y₁ Y₂ be₁ be₂ al₁ al₂ hY hbal hR₁ hR₂ Z₁ Z₂ hZ₁ hZ₂

  have hY1 : ∀ a b : Fin m, (Y₁.Z a b : E) = Z₁.Z.map M.R.subtype a.castSucc b.castSucc := by
    intro a b
    rw [hZ₁]
    simp [Formalism.L2.SG.Pf.AtPt.Ecorner, Fin.castSucc_ne_last, (hY a b).1]
  have hY2 : ∀ a b : Fin m, (Y₂.Z a b : E) = Z₂.Z.map M.R.subtype a.castSucc b.castSucc := by
    intro a b
    rw [hZ₂]
    simp [Formalism.L2.SG.Pf.AtPt.Ecorner, Fin.castSucc_ne_last, (hY a b).2]
  have hbe1 : ∀ a : Fin m, (be₁ a : E) = Z₁.Z.map M.R.subtype a.castSucc (Fin.last m) := by
    intro a
    rw [hZ₁]
    simp [Formalism.L2.SG.Pf.AtPt.Ecorner, Fin.castSucc_ne_last, (hbal a).1]
  have hbe2 : ∀ a : Fin m, (be₂ a : E) = Z₂.Z.map M.R.subtype a.castSucc (Fin.last m) := by
    intro a
    rw [hZ₂]
    simp [Formalism.L2.SG.Pf.AtPt.Ecorner, Fin.castSucc_ne_last, (hbal a).2.1]
  have hal1 : ∀ a : Fin m, (al₁ a : E) = Z₁.Z.map M.R.subtype (Fin.last m) a.castSucc := by
    intro a
    rw [hZ₁]
    simp [Formalism.L2.SG.Pf.AtPt.Ecorner, Fin.castSucc_ne_last, (hbal a).2.2.1]
  have hal2 : ∀ a : Fin m, (al₂ a : E) = Z₂.Z.map M.R.subtype (Fin.last m) a.castSucc := by
    intro a
    rw [hZ₂]
    simp [Formalism.L2.SG.Pf.AtPt.Ecorner, Fin.castSucc_ne_last, (hbal a).2.2.2]

  have hsch1 := schur_eq hL₁ hU₁ hP₁ (fun a => ⟨(hX a).1, (hX a).2.1⟩) hs₁ _ hZ₁ Z₁.unit
    (by rw [hd_eq M Y₁ Z₁ hY1]; exact Y₁.unit)
  have hsch2 := schur_eq hL₂ hU₂ hP₂ (fun a => ⟨(hX a).2.2.1, (hX a).2.2.2⟩) hs₂ _ hZ₂ Z₂.unit
    (by rw [hd_eq M Y₂ Z₂ hY2]; exact Y₂.unit)
  have θ₁ := thetaIso M Y₁ Z₁ be₁ al₁ hY1 hbe1 hal1 (s + n) hu hsch1
  have θ₂ := thetaIso M Y₂ Z₂ be₂ al₂ hY2 hbe2 hal2 (s + n) hu hsch2
  show Nat.card (IsoT M.R (Submodule.Quotient.mk be₁ : M.Cok Y₁) (Submodule.Quotient.mk be₂ : M.Cok Y₂)
    (alQ M Y₁ al₁) (alQ M Y₂ al₂)) = Nat.card (M.Iso Z₁ Z₂)
  rw [card_isoT_G (hu := hu) (hb₁ := hb_corner M Y₁ Z₁ be₁ al₁ hY1 hbe1 hal1 (s + n) hsch1)
    (hb₂ := hb_corner M Y₂ Z₂ be₂ al₂ hY2 hbe2 hal2 (s + n) hsch2)]
  exact (card_isoT_congr θ₁ θ₂).symm

end Formalism.L2.SG.Pf.PCount.BI
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PcBridgeB =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PartnerCountHoldsAll =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PartnerCountHoldsAll", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PartnerCount\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.IntegralClosureRankAndResidueTrdegLe\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PcBridgeB\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PcIntGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PartnerCountOfIso\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Pf.PCount

theorem partnerCount_holds_all {D : Formalism.BasicNotions.D7} (Zd : Formalism.L2.SG.TermLoc.LocDat D) : PartnerIsomorphismCount Zd :=
  partnerCount_of_iso Zd (Formalism.L2.SG.LsDatumA.integralClosureRank_and_residueTrdegLe D) (intGenP_holds Zd) BI.integralIsomorphism_holds

end Formalism.L2.SG.Pf.PCount
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.PartnerCountHoldsAll =====
