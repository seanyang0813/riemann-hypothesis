module

public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.RingTheory.Ideal.Norm.AbsNorm
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.CovolBRa
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LeadingMinorIntegrality
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.FinrankSpanLb
public import Mathlib.Algebra.AffineMonoid.Basic
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.BaseLatticeLe
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.EmbVHomInjective
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.InWLeft
import Formalism.SharpRestriction.CuspSpanNormBounds.LatticeGluingRadicals

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.CovolIdxK, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.CovolBRb

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.CovolIdxK =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.CovolIdxK", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.RingTheory.Ideal.Norm.AbsNorm\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField
open scoped nonZeroDivisors

namespace Formalism.L2.SG.Pf.NcReal.JX.CovB.IdxK

variable {K : Type} [Field K] [NumberField K]

theorem exists_prim {m : ℕ} (c : Fin m → 𝓞 K) (hc : c ≠ 0) (𝔭 : Ideal (𝓞 K)) (h𝔭 : 𝔭 ≠ ⊤) :
    ∃ t : K, (∀ i, ∃ o : 𝓞 K, (o : K) = t * (c i : K)) ∧ ∃ i, ∀ o : 𝓞 K, (o : K) = t * (c i : K) → o ∉ 𝔭 := by
  classical
  obtain ⟨𝔪, h𝔪, hp𝔪⟩ := Ideal.exists_le_maximal 𝔭 h𝔭
  obtain ⟨j, hj⟩ : ∃ j, c j ≠ 0 := by
    by_contra h
    push_neg at h
    exact hc (funext h)
  have hJ0 : Ideal.span (Set.range c) ≠ ⊥ := by
    intro h
    have hmem : c j ∈ Ideal.span (Set.range c) := Ideal.subset_span ⟨j, rfl⟩
    rw [h, Ideal.mem_bot] at hmem
    exact hj hmem
  have hJF : ((Ideal.span (Set.range c) : Ideal (𝓞 K)) : FractionalIdeal (𝓞 K)⁰ K) ≠ 0 :=
    FractionalIdeal.coeIdeal_ne_zero.mpr hJ0
  by_contra H
  push_neg at H
  have hle : ((Ideal.span (Set.range c) : Ideal (𝓞 K)) : FractionalIdeal (𝓞 K)⁰ K) *
      ((Ideal.span (Set.range c) : Ideal (𝓞 K)) : FractionalIdeal (𝓞 K)⁰ K)⁻¹ ≤
      ((𝔪 : Ideal (𝓞 K)) : FractionalIdeal (𝓞 K)⁰ K) := by
    rw [FractionalIdeal.mul_le]
    intro x hx t ht
    rw [FractionalIdeal.mem_coeIdeal] at hx
    obtain ⟨y, hy, rfl⟩ := hx
    rw [FractionalIdeal.mem_inv_iff hJF] at ht
    have hint_r : ∀ i, ∃ o : 𝓞 K, (o : K) = t * (c i : K) := by
      intro i
      have hci : algebraMap (𝓞 K) K (c i) ∈
          ((Ideal.span (Set.range c) : Ideal (𝓞 K)) : FractionalIdeal (𝓞 K)⁰ K) := by
        rw [FractionalIdeal.mem_coeIdeal]
        exact ⟨c i, Ideal.subset_span ⟨i, rfl⟩, rfl⟩
      have h1 := ht _ hci
      rw [FractionalIdeal.mem_one_iff] at h1
      obtain ⟨o, ho⟩ := h1
      exact ⟨o, ho⟩
    have hS : Ideal.span (Set.range c) ≤ Submodule.comap (LinearMap.toSpanSingleton (𝓞 K) K t)
        (((𝔪 : Ideal (𝓞 K)) : FractionalIdeal (𝓞 K)⁰ K) : Submodule (𝓞 K) K) := by
      rw [Ideal.span_le]
      rintro _ ⟨i, rfl⟩
      obtain ⟨o, ho, hop⟩ := H t hint_r i
      show (LinearMap.toSpanSingleton (𝓞 K) K t) (c i) ∈
        (((𝔪 : Ideal (𝓞 K)) : FractionalIdeal (𝓞 K)⁰ K) : Submodule (𝓞 K) K)
      rw [LinearMap.toSpanSingleton_apply, FractionalIdeal.mem_coe, FractionalIdeal.mem_coeIdeal]
      refine ⟨o, hp𝔪 hop, ?_⟩
      rw [Algebra.smul_def, mul_comm]
      exact ho
    have hyS := hS hy
    rw [Submodule.mem_comap, LinearMap.toSpanSingleton_apply, FractionalIdeal.mem_coe,
      Algebra.smul_def] at hyS
    exact hyS
  first
  | rw [mul_inv_cancel₀ hJF] at hle
  rw [← FractionalIdeal.coeIdeal_top, FractionalIdeal.coeIdeal_le_coeIdeal] at hle
  exact h𝔪.ne_top (top_le_iff.mp hle)

section Bound

variable {M : Type} [AddCommGroup M] [Module (𝓞 K) M] [Module.Finite (𝓞 K) M] [NoZeroSMulDivisors (𝓞 K) M]

private theorem absNorm_eq_card_quotient (I : Ideal (𝓞 K)) : Ideal.absNorm I = Nat.card (𝓞 K ⧸ I) := by
  first
  | rw [Ideal.absNorm_apply, Submodule.cardQuot_apply]

private theorem finite_quotient_of_ne_bot (I : Ideal (𝓞 K)) (hI : I ≠ ⊥) : Finite (𝓞 K ⧸ I) := by
  first
  | exact Nat.finite_of_card_ne_zero (by
      rw [← absNorm_eq_card_quotient]; exact fun h => hI (Ideal.absNorm_eq_zero_iff.mp h))

private theorem ringOfIntegers_coe_injective : Function.Injective (fun x : 𝓞 K => (x : K)) := by
  first
  | exact RingOfIntegers.coe_injective

private theorem card_le_card_pow_of_not_linearIndependent {k V : Type*} [Field k] [Finite k] [AddCommGroup V] [Module k V]
    [Module.Finite k V] (n : ℕ) (h : ∀ v : Fin (n + 1) → V, LinearIndependent k v → False) :
    Nat.card V ≤ Nat.card k ^ n := by
  classical
  have hd : Module.finrank k V ≤ n := by
    by_contra hlt
    push_neg at hlt
    exact h (Module.finBasis k V ∘ Fin.castLE hlt)
      ((Module.finBasis k V).linearIndependent.comp _ (Fin.castLE_injective hlt))
  rw [Nat.card_congr (Module.finBasis k V).equivFun.toEquiv, Nat.card_fun]
  have hc : Nat.card (Fin (Module.finrank k V)) = Module.finrank k V := by simp
  rw [hc]
  exact Nat.pow_le_pow_right Nat.card_pos hd

theorem card_quot_le (𝔭 : Ideal (𝓞 K)) [h𝔭 : 𝔭.IsMaximal] (n : ℕ)
    (hdep : ∀ y : Fin (n + 1) → M, ∃ c : Fin (n + 1) → 𝓞 K, c ≠ 0 ∧ ∑ i, c i • y i = 0) :
    Nat.card (M ⧸ 𝔭 • (⊤ : Submodule (𝓞 K) M)) ≤ Nat.card (𝓞 K ⧸ 𝔭) ^ n := by
  classical
  letI : Field (𝓞 K ⧸ 𝔭) := Ideal.Quotient.field 𝔭
  have hbot : 𝔭 ≠ ⊥ := by
    first
    | exact Ring.ne_bot_of_isMaximal_of_not_isField h𝔭 (NumberField.RingOfIntegers.not_isField K)
  haveI : Finite (𝓞 K ⧸ 𝔭) := finite_quotient_of_ne_bot 𝔭 hbot
  haveI : Module.Finite (𝓞 K ⧸ 𝔭) (M ⧸ 𝔭 • (⊤ : Submodule (𝓞 K) M)) :=
    Module.Finite.of_restrictScalars_finite (𝓞 K) _ _
  refine card_le_card_pow_of_not_linearIndependent n ?_
  intro v hv
  choose y hy using fun i => Submodule.Quotient.mk_surjective (𝔭 • (⊤ : Submodule (𝓞 K) M)) (v i)
  obtain ⟨c, hc0, hcs⟩ := hdep y
  obtain ⟨t, ht, i₀, hi₀⟩ := exists_prim c hc0 𝔭 h𝔭.ne_top
  choose o ho using ht
  obtain ⟨j, hj⟩ : ∃ j, c j ≠ 0 := by
    by_contra h
    push_neg at h
    exact hc0 (funext h)
  have hoc : ∀ i, o i * c j = o j * c i := by
    intro i
    apply ringOfIntegers_coe_injective
    first
    | (show (o i : K) * (c j : K) = (o j : K) * (c i : K)
       rw [ho, ho]; ring)
  have hsum0 : ∑ i, o i • y i = 0 := by
    have h1 : c j • ∑ i, o i • y i = o j • ∑ i, c i • y i := by
      rw [Finset.smul_sum, Finset.smul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [smul_smul, smul_smul, mul_comm (c j), hoc i]
    rw [hcs, smul_zero] at h1
    exact (smul_eq_zero.mp h1).resolve_left hj
  have h2 : ∑ i, (Ideal.Quotient.mk 𝔭 (o i)) • v i = 0 := by
    have h3 := congrArg (Submodule.mkQ (𝔭 • (⊤ : Submodule (𝓞 K) M))) hsum0

    rw [map_sum, map_zero] at h3
    rw [← h3]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [← hy i, Submodule.mkQ_apply, Submodule.Quotient.mk_smul]
    first
    | rfl
  have h4 := (Fintype.linearIndependent_iff.mp hv) _ h2 i₀
  exact hi₀ (o i₀) (ho i₀) (Ideal.Quotient.eq_zero_iff_mem.mp h4)

end Bound

section Principal

open scoped Pointwise

variable {M : Type} [AddCommGroup M] [Module (𝓞 K) M] [NoZeroSMulDivisors (𝓞 K) M]

theorem smul_toAddSubgroup (π : 𝓞 K) (N : Submodule (𝓞 K) M) :
    (Ideal.span {π} • N).toAddSubgroup = N.toAddSubgroup.map (DistribSMul.toAddMonoidHom M π) := by
  ext x
  rw [Submodule.mem_toAddSubgroup, Submodule.ideal_span_singleton_smul,
    Submodule.mem_smul_pointwise_iff_exists, AddSubgroup.mem_map]
  first
  | simp

theorem smul_inj (π : 𝓞 K) (hπ : π ≠ 0) : Function.Injective (DistribSMul.toAddMonoidHom M π) := by
  intro x y h
  exact smul_right_injective M hπ (by simpa using h)

private theorem card_quotient_eq_index {R N : Type*} [Ring R] [AddCommGroup N] [Module R N]
    (S : Submodule R N) : Nat.card (N ⧸ S) = S.toAddSubgroup.index := by
  first
  | rfl

private theorem mem_smul_univ_iff_coe_mem_smul (I : Ideal (𝓞 K)) (N : Submodule (𝓞 K) M) (x : N) :
    x ∈ I • (⊤ : Submodule (𝓞 K) N) ↔ (x : M) ∈ I • N := by
  first
  | (have e : Submodule.map N.subtype (I • (⊤ : Submodule (𝓞 K) N)) = I • N := by
       rw [Submodule.map_smul'', Submodule.map_subtype_top]
     rw [← e, Submodule.mem_map]
     constructor
     · intro h
       exact ⟨x, h, rfl⟩
     · rintro ⟨y, hy, hxy⟩
       have hyx : y = x := Subtype.ext hxy
       rwa [hyx] at hy)

private theorem relIndex_smul_eq_card_quotient_smul (I : Ideal (𝓞 K)) (N : Submodule (𝓞 K) M) :
    (I • N).toAddSubgroup.relIndex N.toAddSubgroup = Nat.card (N ⧸ I • (⊤ : Submodule (𝓞 K) N)) := by
  have hmap : AddSubgroup.map N.subtype.toAddMonoidHom ⊤ = N.toAddSubgroup := by
    ext x
    first
    | simp
  have hc : AddSubgroup.comap N.subtype.toAddMonoidHom (I • N).toAddSubgroup =
      (I • (⊤ : Submodule (𝓞 K) N)).toAddSubgroup := by
    ext x
    rw [AddSubgroup.mem_comap, Submodule.mem_toAddSubgroup, Submodule.mem_toAddSubgroup, mem_smul_univ_iff_coe_mem_smul]
    first
    | rfl
  rw [← hmap, ← AddSubgroup.relIndex_comap, AddSubgroup.relIndex_top_right, hc, card_quotient_eq_index]

theorem relIndex_smul_ne_zero (N : Submodule (𝓞 K) M) (hN : N.FG) (d : 𝓞 K) (hd : d ≠ 0) :
    (Ideal.span {d} • N).toAddSubgroup.relIndex N.toAddSubgroup ≠ 0 := by
  rw [relIndex_smul_eq_card_quotient_smul]
  haveI : Module.Finite (𝓞 K) N := Module.Finite.iff_fg.mpr hN
  have hb : Ideal.span {d} ≠ ⊥ := by
    rwa [Ne, Ideal.span_singleton_eq_bot]
  haveI : Finite (𝓞 K ⧸ Ideal.span {d}) := finite_quotient_of_ne_bot _ hb
  haveI : Module.Finite (𝓞 K ⧸ Ideal.span {d}) (N ⧸ Ideal.span {d} • (⊤ : Submodule (𝓞 K) N)) :=
    Module.Finite.of_restrictScalars_finite (𝓞 K) _ _
  haveI : Finite (N ⧸ Ideal.span {d} • (⊤ : Submodule (𝓞 K) N)) :=
    Module.finite_of_finite (𝓞 K ⧸ Ideal.span {d})
  exact Nat.card_pos.ne'

private theorem absNorm_eq_index_dual_family_counting (I : Ideal (𝓞 K)) : Ideal.absNorm I = I.toAddSubgroup.index := by
  rw [absNorm_eq_card_quotient, card_quotient_eq_index]

theorem relIndex_principal (N : Submodule (𝓞 K) M) (hN : N.FG) (n : ℕ) (ι : (Fin n → 𝓞 K) →ₗ[𝓞 K] M)
    (hι : Function.Injective ι) (hιN : LinearMap.range ι ≤ N) (d : 𝓞 K) (hd : d ≠ 0)
    (hdN : Ideal.span {d} • N ≤ LinearMap.range ι) (π : 𝓞 K) (hπ : π ≠ 0) :
    (Ideal.span {π} • N).toAddSubgroup.relIndex N.toAddSubgroup = (Algebra.norm ℤ π).natAbs ^ n := by
  classical
  have hCB : (LinearMap.range ι).toAddSubgroup ≤ N.toAddSubgroup := fun x hx => hιN hx
  have hDC : (Ideal.span {π} • LinearMap.range ι).toAddSubgroup ≤ (LinearMap.range ι).toAddSubgroup :=
    fun x hx => Submodule.smul_le_right hx
  have hDA : (Ideal.span {π} • LinearMap.range ι).toAddSubgroup ≤ (Ideal.span {π} • N).toAddSubgroup := by
    intro x hx
    first
    | exact Submodule.smul_mono le_rfl hιN hx
  have hAB : (Ideal.span {π} • N).toAddSubgroup ≤ N.toAddSubgroup := fun x hx => Submodule.smul_le_right hx
  have e1 := AddSubgroup.relIndex_mul_relIndex _ _ _ hDC hCB
  have e2 := AddSubgroup.relIndex_mul_relIndex _ _ _ hDA hAB
  have e3 : (Ideal.span {π} • LinearMap.range ι).toAddSubgroup.relIndex (Ideal.span {π} • N).toAddSubgroup =
      (LinearMap.range ι).toAddSubgroup.relIndex N.toAddSubgroup := by
    rw [smul_toAddSubgroup π (LinearMap.range ι), smul_toAddSubgroup π N,
      ← AddSubgroup.relIndex_comap]
    first
    | rw [AddSubgroup.comap_map_eq_self_of_injective (smul_inj π hπ)]
  have hCB0 : (LinearMap.range ι).toAddSubgroup.relIndex N.toAddSubgroup ≠ 0 := by
    have hdC : (Ideal.span {d} • N).toAddSubgroup ≤ (LinearMap.range ι).toAddSubgroup := fun x hx => hdN hx
    have e4 := AddSubgroup.relIndex_mul_relIndex _ _ _ hdC hCB
    intro h0
    rw [h0, mul_zero] at e4
    exact relIndex_smul_ne_zero N hN d hd e4.symm
  have hAB_eq : (Ideal.span {π} • N).toAddSubgroup.relIndex N.toAddSubgroup =
      (Ideal.span {π} • LinearMap.range ι).toAddSubgroup.relIndex (LinearMap.range ι).toAddSubgroup := by
    apply Nat.eq_of_mul_eq_mul_right (Nat.pos_of_ne_zero hCB0)
    rw [e1, ← e2, e3, mul_comm]
  rw [hAB_eq]
  have hmap : AddSubgroup.map ι.toAddMonoidHom ⊤ = (LinearMap.range ι).toAddSubgroup := by
    ext x
    simp [LinearMap.mem_range]
  have hcomap : AddSubgroup.comap ι.toAddMonoidHom (Ideal.span {π} • LinearMap.range ι).toAddSubgroup =
      AddSubgroup.pi Set.univ (fun _ : Fin n => (Ideal.span {π}).toAddSubgroup) := by
    ext x
    show (ι x ∈ Ideal.span {π} • LinearMap.range ι) ↔ ∀ i ∈ (Set.univ : Set (Fin n)), x i ∈ Ideal.span {π}
    rw [Submodule.ideal_span_singleton_smul, Submodule.mem_smul_pointwise_iff_exists]
    constructor
    · rintro ⟨z, hz1, hz⟩ i -
      obtain ⟨y, rfl⟩ := LinearMap.mem_range.mp hz1
      have hyx : π • y = x := hι (by rw [map_smul]; exact hz)
      rw [← hyx, Pi.smul_apply, smul_eq_mul]
      exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self π)
    · intro hx
      choose y hy using fun i => Ideal.mem_span_singleton'.mp (hx i (Set.mem_univ i))
      refine ⟨ι y, LinearMap.mem_range_self ι y, ?_⟩
      rw [← map_smul]
      congr 1
      funext i
      rw [Pi.smul_apply, smul_eq_mul, mul_comm]
      exact hy i
  rw [← hmap, ← AddSubgroup.relIndex_comap, AddSubgroup.relIndex_top_right, hcomap, AddSubgroup.index_pi,
    Finset.prod_const, Finset.card_univ, Fintype.card_fin, ← absNorm_eq_index_dual_family_counting, Ideal.absNorm_span_singleton]

end Principal

section General

variable {M : Type} [AddCommGroup M] [Module (𝓞 K) M] [NoZeroSMulDivisors (𝓞 K) M]

def HDep (n : ℕ) (N : Submodule (𝓞 K) M) : Prop :=
  ∀ y : Fin (n + 1) → M, (∀ i, y i ∈ N) → ∃ c : Fin (n + 1) → 𝓞 K, c ≠ 0 ∧ ∑ i, c i • y i = 0

theorem HDep.mono {n : ℕ} {N N' : Submodule (𝓞 K) M} (h : HDep n N) (hle : N' ≤ N) : HDep n N' := by
  intro y hy
  exact h y (fun i => hle (hy i))

theorem fg_smul (I : Ideal (𝓞 K)) (N : Submodule (𝓞 K) M) (hN : N.FG) : (I • N).FG := by
  first
  | exact Submodule.FG.smul (IsNoetherian.noetherian I) hN

theorem relIndex_prime_le (𝔭 : Ideal (𝓞 K)) [𝔭.IsMaximal] (n : ℕ) (N : Submodule (𝓞 K) M) (hN : N.FG)
    (hD : HDep n N) : (𝔭 • N).toAddSubgroup.relIndex N.toAddSubgroup ≤ Ideal.absNorm 𝔭 ^ n := by
  haveI : Module.Finite (𝓞 K) N := Module.Finite.iff_fg.mpr hN
  haveI : NoZeroSMulDivisors (𝓞 K) N := ⟨fun {c x} h => by
    have h' : c • (x : M) = 0 := by simpa using congrArg Subtype.val h
    rcases smul_eq_zero.mp h' with h0 | h0
    · exact Or.inl h0
    · exact Or.inr (Subtype.ext h0)⟩
  have hdep : ∀ y : Fin (n + 1) → N, ∃ c : Fin (n + 1) → 𝓞 K, c ≠ 0 ∧ ∑ i, c i • y i = 0 := by
    intro y
    obtain ⟨c, hc, hs⟩ := hD (fun i => (y i : M)) (fun i => (y i).2)
    refine ⟨c, hc, ?_⟩
    apply Subtype.ext
    simpa using hs
  rw [_root_.Formalism.L2.SG.Pf.NcReal.JX.CovB.IdxK.relIndex_smul_eq_card_quotient_smul, absNorm_eq_card_quotient]
  exact card_quot_le 𝔭 n hdep

private theorem ideal_mul_smul_submodule (I J : Ideal (𝓞 K)) (N : Submodule (𝓞 K) M) : (I * J) • N = I • J • N := by
  first
  | exact Submodule.mul_smul I J N

private theorem relIndex_smul_le_absNorm_pow_of_hDep (n k : ℕ) : ∀ (𝔞 : Ideal (𝓞 K)), Ideal.absNorm 𝔞 ≤ k → 𝔞 ≠ ⊥ →
    ∀ (N : Submodule (𝓞 K) M), N.FG → HDep n N →
    (𝔞 • N).toAddSubgroup.relIndex N.toAddSubgroup ≤ Ideal.absNorm 𝔞 ^ n := by
  induction k with
  | zero =>
    intro 𝔞 hk h𝔞
    exact absurd (Ideal.absNorm_eq_zero_iff.mp (Nat.le_zero.mp hk)) h𝔞
  | succ k ih =>
    intro 𝔞 hk h𝔞 N hN hD
    by_cases htop : 𝔞 = ⊤
    · subst htop
      rw [Submodule.top_smul, AddSubgroup.relIndex_self]
      exact Nat.one_le_pow _ _ (Nat.pos_of_ne_zero (by rw [Ne, Ideal.absNorm_eq_zero_iff]; exact h𝔞))
    · obtain ⟨𝔭, h𝔭max, h𝔞𝔭⟩ := Ideal.exists_le_maximal 𝔞 htop
      haveI := h𝔭max
      obtain ⟨𝔟, rfl⟩ := Ideal.dvd_iff_le.mpr h𝔞𝔭
      have h𝔭0 : 𝔭 ≠ ⊥ := by
        rintro rfl
        apply h𝔞
        simp
      have h𝔟0 : 𝔟 ≠ ⊥ := by
        rintro rfl
        apply h𝔞
        simp
      rw [map_mul] at hk ⊢
      have hp2 : 2 ≤ Ideal.absNorm 𝔭 := by
        have h0 : Ideal.absNorm 𝔭 ≠ 0 := by
          rw [Ne, Ideal.absNorm_eq_zero_iff]; exact h𝔭0
        have h1 : Ideal.absNorm 𝔭 ≠ 1 := by
          rw [Ne, Ideal.absNorm_eq_one_iff]; exact h𝔭max.ne_top
        omega
      have hb0 : Ideal.absNorm 𝔟 ≠ 0 := by
        rw [Ne, Ideal.absNorm_eq_zero_iff]; exact h𝔟0
      have hbk : Ideal.absNorm 𝔟 ≤ k := by
        have hb1 : 1 ≤ Ideal.absNorm 𝔟 := Nat.pos_of_ne_zero hb0
        nlinarith
      rw [ideal_mul_smul_submodule 𝔭 𝔟 N]
      have hle1 : (𝔭 • 𝔟 • N).toAddSubgroup ≤ (𝔟 • N).toAddSubgroup := fun x hx => Submodule.smul_le_right hx
      have hle2 : (𝔟 • N).toAddSubgroup ≤ N.toAddSubgroup := fun x hx => Submodule.smul_le_right hx
      rw [← AddSubgroup.relIndex_mul_relIndex _ _ _ hle1 hle2, mul_pow]
      exact Nat.mul_le_mul
        (relIndex_prime_le 𝔭 n (𝔟 • N) (fg_smul 𝔟 N hN) (hD.mono Submodule.smul_le_right))
        (ih 𝔟 hbk h𝔟0 N hN hD)

theorem relIndex_le (n : ℕ) : ∀ (𝔞 : Ideal (𝓞 K)), 𝔞 ≠ ⊥ → ∀ (N : Submodule (𝓞 K) M), N.FG → HDep n N →
    (𝔞 • N).toAddSubgroup.relIndex N.toAddSubgroup ≤ Ideal.absNorm 𝔞 ^ n := by
  intro 𝔞 h𝔞 N hN hD
  exact relIndex_smul_le_absNorm_pow_of_hDep n _ 𝔞 le_rfl h𝔞 N hN hD

theorem relIndex_eq (n : ℕ) (𝔞 : Ideal (𝓞 K)) (h𝔞 : 𝔞 ≠ ⊥) (N : Submodule (𝓞 K) M) (hN : N.FG) (hD : HDep n N)
    (ι : (Fin n → 𝓞 K) →ₗ[𝓞 K] M) (hι : Function.Injective ι) (hιN : LinearMap.range ι ≤ N) (d : 𝓞 K) (hd : d ≠ 0)
    (hdN : Ideal.span {d} • N ≤ LinearMap.range ι) :
    (𝔞 • N).toAddSubgroup.relIndex N.toAddSubgroup = Ideal.absNorm 𝔞 ^ n := by
  obtain ⟨π, hπ𝔞, hπ0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot h𝔞
  obtain ⟨𝔟, h𝔟⟩ := Ideal.dvd_iff_le.mpr ((Ideal.span_singleton_le_iff_mem _).mpr hπ𝔞)
  have h𝔟' : Ideal.span {π} = 𝔟 * 𝔞 := by rw [h𝔟, mul_comm]
  have h𝔟0 : 𝔟 ≠ ⊥ := by
    rintro rfl
    rw [Ideal.bot_mul, Ideal.span_singleton_eq_bot] at h𝔟'
    exact hπ0 h𝔟'
  have hN' : (𝔞 • N).FG := fg_smul 𝔞 N hN
  have hD' : HDep n (𝔞 • N) := hD.mono Submodule.smul_le_right
  have h1 := relIndex_le n 𝔞 h𝔞 N hN hD
  have h2 := relIndex_le n 𝔟 h𝔟0 (𝔞 • N) hN' hD'
  have hle1 : (𝔟 • 𝔞 • N).toAddSubgroup ≤ (𝔞 • N).toAddSubgroup := fun x hx => Submodule.smul_le_right hx
  have hle2 : (𝔞 • N).toAddSubgroup ≤ N.toAddSubgroup := fun x hx => Submodule.smul_le_right hx
  have hprod : (𝔟 • 𝔞 • N).toAddSubgroup.relIndex (𝔞 • N).toAddSubgroup *
      (𝔞 • N).toAddSubgroup.relIndex N.toAddSubgroup = Ideal.absNorm 𝔟 ^ n * Ideal.absNorm 𝔞 ^ n := by
    rw [AddSubgroup.relIndex_mul_relIndex _ _ _ hle1 hle2, ← ideal_mul_smul_submodule, ← h𝔟',
      relIndex_principal N hN n ι hι hιN d hd hdN π hπ0, ← Ideal.absNorm_span_singleton, h𝔟',
      map_mul, mul_pow]
  have hB : 0 < Ideal.absNorm 𝔟 ^ n :=
    pow_pos (Nat.pos_of_ne_zero (by rw [Ne, Ideal.absNorm_eq_zero_iff]; exact h𝔟0)) n
  by_contra hne
  have hlt := lt_of_le_of_ne h1 hne
  have hlt2 : (𝔟 • 𝔞 • N).toAddSubgroup.relIndex (𝔞 • N).toAddSubgroup *
      (𝔞 • N).toAddSubgroup.relIndex N.toAddSubgroup < Ideal.absNorm 𝔟 ^ n * Ideal.absNorm 𝔞 ^ n := by
    first
    | exact lt_of_le_of_lt (Nat.mul_le_mul_right _ h2) (Nat.mul_lt_mul_of_pos_left hlt hB)
  exact absurd hprod (ne_of_lt hlt2)

end General

end Formalism.L2.SG.Pf.NcReal.JX.CovB.IdxK
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.CovolIdxK =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.CovolBRb =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.CovolBRb", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.CovolBRa\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.CovolIdxK\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.LeadingMinorIntegrality\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.FinrankSpanLb\npublic import Mathlib.Algebra.AffineMonoid.Basic\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.BaseLatticeLe\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.EmbVHomInjective\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.InWLeft\nimport Formalism.SharpRestriction.CuspSpanNormBounds.LatticeGluingRadicals\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.NumberField.Discriminant.Different\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.BasicNotions
open scoped nonZeroDivisors

namespace Formalism.L2.SG.Pf.NcReal.JX.CovB.TrD

open Formalism.L2.SG.HidaSetting Formalism.MainNotions.S Formalism.L2.SG.Pf.NcReal.JX Formalism.L2.SG.Pf.NcReal.JX.CovB.CovolumeSpans

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

abbrev Dv (D : D7) : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E :=
  FractionalIdeal.dual ℤ ℚ (1 : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E)

theorem memDv (t : D.host.E) :
    t ∈ Dv D ↔ ∀ o : 𝓞 D.host.E, ∃ z : ℤ, Algebra.trace ℚ D.host.E (t * o) = z := by
  have h10 : (1 : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E) ≠ 0 := fun h => by
    have := congrArg (fun I : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E => (1 : D.host.E) ∈ I) h
    simp [FractionalIdeal.mem_zero_iff] at this
  rw [FractionalIdeal.mem_dual h10]
  simp only [FractionalIdeal.mem_one_iff, forall_exists_index, forall_apply_eq_imp_iff,
    Algebra.traceForm_apply, RingHom.mem_range, eq_intCast]
  constructor
  · intro h o
    obtain ⟨z, hz⟩ := h o
    exact ⟨z, hz.symm⟩
  · intro h o
    obtain ⟨z, hz⟩ := h o
    exact ⟨z, hz.symm⟩

theorem trace_conj (t : D.host.E) : Algebra.trace ℚ D.host.E (star t) = Algebra.trace ℚ D.host.E t := by
  have e : ∀ x : ℚ, (starRingAut : RingAut D.host.E) (algebraMap ℚ D.host.E x) = algebraMap ℚ D.host.E x :=
    fun x => by simp
  exact Algebra.trace_eq_of_algEquiv (AlgEquiv.ofRingEquiv (f := (starRingAut : RingAut D.host.E)) e) t

theorem star_memDv {t : D.host.E} (ht : t ∈ Dv D) : star t ∈ Dv D := by
  rw [memDv] at ht ⊢
  intro o
  obtain ⟨o', ho'⟩ := Formalism.L2.SG.NGCut.LeadingMinorIntegrality.star_int (D := D) o
  obtain ⟨z, hz⟩ := ht o'
  refine ⟨z, ?_⟩
  rw [← hz, ho', ← trace_conj (t * star (o : D.host.E)), star_mul', star_star]

theorem trace_int (o : 𝓞 D.host.E) : ∃ z : ℤ, Algebra.trace ℚ D.host.E (o : D.host.E) = z := by
  have hi : IsIntegral ℤ (Algebra.trace ℚ D.host.E (o : D.host.E)) :=
    Algebra.isIntegral_trace (RingOfIntegers.isIntegral_coe o)
  obtain ⟨z, hz⟩ := (IsIntegrallyClosed.isIntegral_iff (R := ℤ) (K := ℚ)).mp hi
  exact ⟨z, by rw [← hz, eq_intCast]⟩

variable (X : HidaSetting D)

theorem hint {x y : (VS D).V} (hx : x ∈ X.Lb) (hy : y ∈ X.Lb) : ∃ o : 𝓞 D.host.E, (o : D.host.E) = (VS D).hT x y := by
  have hL0 : X.Lb ≤ (VS D).L0 := by
    rw [X.Lam_split]
    exact le_sup_of_le_left le_sup_right
  have hU := (VS D).baseLattice_isUnimodular
  unfold Formalism.HermitianLatticesTheory.IsUnimodular Formalism.HermitianLatticesTheory.dual at hU
  have hy' : y ∈ Formalism.E.hdual (VS D).hT (VS D).L0 := by
    rw [hU]
    exact hL0 hy
  simp only [Formalism.E.hdual, Submodule.mem_iInf, Submodule.mem_comap, LinearMap.restrictScalars_apply] at hy'
  obtain ⟨o, ho⟩ := Submodule.mem_one.mp (hy' x (hL0 hx))
  exact ⟨o, ho⟩

def Ldual : Submodule (𝓞 D.host.E) (VS D).V where
  carrier := {x | x ∈ Wb X ∧ ∀ y ∈ X.Lb, ∃ z : ℤ, Algebra.trace ℚ D.host.E ((VS D).hT x y) = z}
  add_mem' {a b} ha hb := by
    refine ⟨(Wb X).add_mem ha.1 hb.1, fun y hy => ?_⟩
    obtain ⟨za, hza⟩ := ha.2 y hy
    obtain ⟨zb, hzb⟩ := hb.2 y hy
    exact ⟨za + zb, by rw [map_add (f := _), LinearMap.add_apply, map_add (f := _), hza, hzb]; push_cast; ring⟩
  zero_mem' := ⟨(Wb X).zero_mem, fun y _ => ⟨0, by simp⟩⟩
  smul_mem' c x hx := by
    refine ⟨?_, fun y hy => ?_⟩
    · have : c • x = (c : D.host.E) • x := (algebraMap_smul D.host.E c x).symm
      rw [this]; exact (Wb X).smul_mem _ hx.1
    · obtain ⟨c', hc'⟩ := Formalism.L2.SG.NGCut.LeadingMinorIntegrality.star_int c
      have e : (VS D).hT (c • x) y = (VS D).hT x (c' • y) := by
        rw [← algebraMap_smul D.host.E c x, ← algebraMap_smul D.host.E c' y, LinearMap.map_smulₛₗ₂,
          LinearMap.map_smul]
        show starRingEnd D.host.E (c : D.host.E) * _ = (c' : D.host.E) * _
        rw [hc']; rfl
      rw [e]
      exact hx.2 _ (X.Lb.smul_mem c' hy)

theorem Lb_le_alt : X.Lb ≤ (Wb X).restrictScalars (𝓞 D.host.E) := by
  exact fun x hx => span_Lb_le X (Submodule.subset_span hx)

theorem Lb_le_Ldual : X.Lb ≤ Ldual X := by
  exact fun y hy => ⟨Lb_le_alt X hy, fun y' hy' => by
    obtain ⟨o, ho⟩ := hint X hy hy'
    rw [← ho]
    exact trace_int o⟩

theorem latSpanS_le {r : ℕ} (aa : Fin r → FractionalIdeal (𝓞 D.host.E)⁰ D.host.E) (v : Fin r → (VS D).V) :
    latSpanS aa v ≤ (Submodule.span D.host.E (Set.range v)).restrictScalars (𝓞 D.host.E) := by
  apply Submodule.span_le.mpr
  rintro y ⟨a, x, -, rfl⟩
  exact Submodule.smul_mem _ x (Submodule.subset_span ⟨a, rfl⟩)

theorem decomp {y : (VS D).V} (hy : y ∈ (VS D).L0) :
    ∃ (α β : Fin D.R.rS → D.host.E) (l : (VS D).V), l ∈ X.Lb ∧ y = ∑ c, α c • X.eX c + l + ∑ c, β c • X.fY c := by
  rw [X.Lam_split] at hy
  obtain ⟨y12, hy12, y3, hy3, rfl⟩ := Submodule.mem_sup.1 hy
  obtain ⟨y1, hy1, l, hl, rfl⟩ := Submodule.mem_sup.1 hy12
  obtain ⟨α, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun D.host.E).1 (latSpanS_le _ _ hy1)
  obtain ⟨β, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun D.host.E).1 (latSpanS_le _ _ hy3)
  exact ⟨α, β, l, hl, rfl⟩

theorem Lsharp {z : (VS D).V} (hz : z ∈ Wb X) (hd : ∀ y ∈ X.Lb, ∃ o : 𝓞 D.host.E, (o : D.host.E) = (VS D).hT y z) :
    z ∈ X.Lb := by
  have hzW := (mem_Wb X).1 hz

  have hzL : z ∈ (VS D).L0 := by
    have hun := (VS D).baseLattice_isUnimodular
    rw [← hun]
    simp only [Formalism.HermitianLatticesTheory.dual, Formalism.E.hdual, Submodule.mem_iInf, Submodule.mem_comap, LinearMap.coe_restrictScalars]
    intro y hy
    obtain ⟨α, β, l, hl, rfl⟩ := decomp X hy
    obtain ⟨o, ho⟩ := hd l hl
    have e : (VS D).hT (∑ c, α c • X.eX c + l + ∑ c, β c • X.fY c) z = (VS D).hT l z := by

      simp [map_add (f := _), map_sum, (hzW _).1, (hzW _).2]
    rw [Submodule.mem_one]
    exact ⟨o, by rw [e]; exact ho⟩
  obtain ⟨α, β, l, hl, hzeq⟩ := decomp X hzL
  have hlW : ∀ c, (VS D).hT (X.eX c) l = 0 ∧ (VS D).hT (X.fY c) l = 0 := fun c => X.Lb_perp l hl c
  have hα : ∀ c, α c = 0 := by
    intro c
    have := (hzW c).2
    rw [hzeq] at this

    simp [map_add (f := _), map_sum, map_smul, Formalism.L2.SG.Pf.NcReal.JX.NOf.Ex.h_fe, X.ff, (hlW c).2, Finset.sum_ite_eq] at this
    exact this
  have hβ : ∀ c, β c = 0 := by
    intro c
    have := (hzW c).1
    rw [hzeq] at this

    simp [map_add (f := _), map_sum, map_smul, X.ef, X.ee, (hlW c).1, Finset.sum_ite_eq] at this
    exact this
  rw [hzeq]
  simp only [hα, hβ, zero_smul, Finset.sum_const_zero, zero_add, add_zero]
  exact hl

theorem F4 {x y : (VS D).V} (hx : x ∈ Ldual X) (hy : y ∈ X.Lb) : (VS D).hT x y ∈ Dv D := by
  rw [memDv]
  intro o
  obtain ⟨z, hz⟩ := hx.2 (o • y) (X.Lb.smul_mem o hy)
  refine ⟨z, ?_⟩
  rw [← hz, ← algebraMap_smul D.host.E o y, LinearMap.map_smul, smul_eq_mul, mul_comm]

theorem coe_different :
    ((differentIdeal ℤ (𝓞 D.host.E) : Ideal (𝓞 D.host.E)) : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E) = (Dv D)⁻¹ := by
  exact coeIdeal_differentIdeal ℤ ℚ D.host.E (𝓞 D.host.E)

theorem Dv_ne : Dv D ≠ 0 := by
  intro h
  have e := coe_different (D := D)
  rw [h, inv_zero] at e
  exact differentIdeal_ne_bot (FractionalIdeal.coeIdeal_eq_zero.mp e)

theorem F5 : (differentIdeal ℤ (𝓞 D.host.E)) • Ldual X ≤ X.Lb := by
  rw [Submodule.smul_le]
  intro δ hδ x hx
  refine Lsharp X ?_ fun y hy => ?_
  · have : δ • x = (δ : D.host.E) • x := (algebraMap_smul D.host.E δ x).symm
    rw [this]; exact (Wb X).smul_mem _ hx.1
  · have h1 : star ((VS D).hT x y) ∈ Dv D := star_memDv (F4 X hx hy)
    have h2 : (δ : D.host.E) ∈ (Dv D)⁻¹ := by
      rw [← coe_different]; exact (FractionalIdeal.mem_coeIdeal _).2 ⟨δ, hδ, rfl⟩
    have h3 := FractionalIdeal.mul_mem_mul h2 h1
    rw [inv_mul_cancel₀ (Dv_ne (D := D))] at h3
    obtain ⟨o, ho⟩ := (FractionalIdeal.mem_one_iff _).1 h3
    refine ⟨o, ?_⟩
    rw [← algebraMap_smul D.host.E δ x, LinearMap.map_smul, _root_.Formalism.L2.SG.Pf.NcReal.JX.NOf.Ex.h_symm]
    exact ho

theorem F6 : X.Lb ≤ (differentIdeal ℤ (𝓞 D.host.E)) • Ldual X := by
  intro l hl
  have h1 : (1 : D.host.E) ∈ (Dv D)⁻¹ * Dv D := by
    rw [inv_mul_cancel₀ (Dv_ne (D := D))]; exact FractionalIdeal.one_mem_one _
  have key : ∀ a ∈ (Dv D)⁻¹ * Dv D, a • l ∈ (differentIdeal ℤ (𝓞 D.host.E)) • Ldual X := by
    intro a ha
    refine FractionalIdeal.mul_induction_on ha ?_ ?_
    · intro i hi j hj
      rw [← coe_different] at hi
      obtain ⟨δ, hδ, rfl⟩ := (FractionalIdeal.mem_coeIdeal _).1 hi
      have hjl : j • l ∈ Ldual X := by
        refine ⟨(Wb X).smul_mem _ (Lb_le_alt X hl), fun y hy => ?_⟩
        obtain ⟨o, ho⟩ := hint X hl hy
        obtain ⟨z, hz⟩ := (memDv _).1 (star_memDv hj) o
        refine ⟨z, ?_⟩
        rw [LinearMap.map_smulₛₗ₂]
        show Algebra.trace ℚ D.host.E (star j * (VS D).hT l y) = z
        rw [← ho]; exact hz
      have : (algebraMap (𝓞 D.host.E) D.host.E δ * j) • l = δ • (j • l) := by
        rw [mul_smul, algebraMap_smul]
      rw [this]
      exact Submodule.smul_mem_smul hδ hjl
    · intro x y hx hy
      rw [add_smul]; exact Submodule.add_mem _ hx hy
  simpa using key 1 h1

open Formalism.L2.SG.Pf.NcReal.JX.CovB.IdxK

theorem hdepW (N : Submodule (𝓞 D.host.E) (VS D).V) (hN : N ≤ (Wb X).restrictScalars (𝓞 D.host.E)) :
    HDep (D.R.k + 1) N := by
  intro y hy
  classical
  let y' : Fin (D.R.k + 1 + 1) → Wb X := fun i => ⟨y i, hN (hy i)⟩
  have hnot : ¬ LinearIndependent D.host.E y' := by
    intro hli
    have := hli.fintype_card_le_finrank
    rw [Fintype.card_fin, finrank_Wb] at this
    omega
  obtain ⟨g, hg, i0, hi0⟩ := Fintype.not_linearIndependent_iff.1 hnot
  obtain ⟨⟨b, hb⟩, hbint⟩ := IsLocalization.exist_integer_multiples_of_finset (nonZeroDivisors (𝓞 D.host.E))
    (Finset.univ.image g)
  choose c hc using fun i => hbint (g i) (Finset.mem_image_of_mem g (Finset.mem_univ i))
  refine ⟨c, fun h0 => ?_, ?_⟩
  · have := hc i0
    rw [congrFun h0 i0, Pi.zero_apply, map_zero, Algebra.smul_def] at this
    have hb0 : (algebraMap (𝓞 D.host.E) D.host.E b) ≠ 0 := by
      rw [Ne, map_eq_zero_iff _ (FaithfulSMul.algebraMap_injective _ _)]; exact nonZeroDivisors.ne_zero hb
    exact hi0 ((mul_eq_zero.1 this.symm).resolve_left hb0)
  · have e : ∀ i, c i • y i = b • (g i • y i) := by
      intro i
      rw [← algebraMap_smul D.host.E (c i), hc i, smul_assoc]
    simp_rw [e, ← Finset.smul_sum]
    have : ∑ i, g i • y i = 0 := by
      have := congrArg Subtype.val hg
      simpa [y'] using this
    rw [this, smul_zero]

theorem fg_Lb : X.Lb.FG := by
  have h := (VS D).standardTuple_isLattice.fg
  have : Module.Finite (𝓞 D.host.E) (VS D).L0 := Module.Finite.iff_fg.2 h
  have : IsNoetherian (𝓞 D.host.E) (VS D).L0 := isNoetherian_of_isNoetherianRing_of_finite (𝓞 D.host.E) _
  have h2 := IsNoetherian.noetherian (X.Lb.comap (VS D).L0.subtype)
  have e : (X.Lb.comap (VS D).L0.subtype).map (VS D).L0.subtype = X.Lb :=
    Submodule.map_comap_eq_of_le (by rw [Submodule.range_subtype]; exact base_lattice_le X)
  rw [← e]; exact h2.map _

theorem free_sub : ∃ (ι : (Fin (D.R.k + 1) → 𝓞 D.host.E) →ₗ[𝓞 D.host.E] (VS D).V), Function.Injective ι ∧
    LinearMap.range ι ≤ X.Lb ∧ ∃ d : 𝓞 D.host.E, d ≠ 0 ∧ Ideal.span {d} • X.Lb ≤ LinearMap.range ι := by
  classical
  let w : Module.Basis (Fin (D.R.k + 1)) D.host.E (Wb X) := Module.finBasisOfFinrankEq D.host.E (Wb X) (finrank_Wb X)
  have hwL : ∀ i, ((w i : Wb X) : (VS D).V) ∈ Submodule.span D.host.E (X.Lb : Set (VS D).V) := by
    intro i; rw [span_Lb]; exact (w i).2
  choose n hn hnL using fun i => _root_.Formalism.MainNotions.LatticeGluingRadicals.j_exists_nat_smul_memL X.Lb (hwL i)
  let l : Fin (D.R.k + 1) → (VS D).V := fun i => n i • ((w i : Wb X) : (VS D).V)
  let ι : (Fin (D.R.k + 1) → 𝓞 D.host.E) →ₗ[𝓞 D.host.E] (VS D).V := Fintype.linearCombination (𝓞 D.host.E) l
  have hιap : ∀ a, ι a = ∑ i, a i • l i := fun a => by simp [ι, Fintype.linearCombination_apply]
  have hli : LinearIndependent D.host.E l := by
    have h1 : LinearIndependent D.host.E (fun i => ((w i : Wb X) : (VS D).V)) :=
      (LinearIndependent.map' w.linearIndependent (Wb X).subtype (Submodule.ker_subtype _))
    have h2 := h1.units_smul (fun i => Units.mk0 ((n i : ℕ) : D.host.E) (by exact_mod_cast (hn i).ne'))
    convert h2 using 1
    funext i
    change n i • ((w i : Wb X) : (VS D).V) = ((n i : ℕ) : D.host.E) • ((w i : Wb X) : (VS D).V)
    rw [Nat.cast_smul_eq_nsmul]
  have hinj : Function.Injective ι := by
    rw [← LinearMap.ker_eq_bot, Submodule.eq_bot_iff]
    intro a ha
    rw [LinearMap.mem_ker, hιap] at ha
    have ha' : ∑ i, ((a i : 𝓞 D.host.E) : D.host.E) • l i = 0 := by
      rw [← ha]; exact Finset.sum_congr rfl fun i _ => algebraMap_smul D.host.E (a i) (l i)
    funext i
    have := Fintype.linearIndependent_iff.1 hli _ ha' i
    exact (FaithfulSMul.algebraMap_injective (𝓞 D.host.E) D.host.E) (by rw [Pi.zero_apply, map_zero]; exact this)
  have hrange : LinearMap.range ι ≤ X.Lb := by
    rintro _ ⟨a, rfl⟩
    rw [hιap]
    exact Submodule.sum_mem _ fun i _ => X.Lb.smul_mem _ (hnL i)
  refine ⟨ι, hinj, hrange, ?_⟩

  have hspan : ∀ x ∈ X.Lb, x ∈ Submodule.span D.host.E (LinearMap.range ι : Set (VS D).V) := by
    intro x hx
    have hxW : x ∈ Wb X := Lb_le_alt X hx
    have hx' : (⟨x, hxW⟩ : Wb X) ∈ Submodule.span D.host.E (Set.range w) := by rw [w.span_eq]; trivial
    have : ∀ z ∈ Submodule.span D.host.E (Set.range w), (z : (VS D).V) ∈
        Submodule.span D.host.E (LinearMap.range ι : Set (VS D).V) := by
      intro z hz
      induction hz using Submodule.span_induction with
      | mem z hz =>
        obtain ⟨i, rfl⟩ := hz
        have hl : l i ∈ LinearMap.range ι := ⟨Pi.single i 1, by rw [hιap]; simp [Pi.single_apply]⟩
        have : ((w i : Wb X) : (VS D).V) = ((n i : D.host.E))⁻¹ • l i := by
          simp only [l]
          rw [← Nat.cast_smul_eq_nsmul D.host.E, smul_smul, inv_mul_cancel₀ (by exact_mod_cast (hn i).ne'), one_smul]
        rw [this]
        exact Submodule.smul_mem _ _ (Submodule.subset_span hl)
      | zero => simp
      | add a b _ _ ha hb => simpa using Submodule.add_mem _ ha hb
      | smul c a _ ha => simpa using Submodule.smul_mem _ c ha
    exact this _ hx'
  obtain ⟨s, hs⟩ := fg_Lb X
  choose! m hm hmι using fun g (hg : g ∈ X.Lb) => _root_.Formalism.MainNotions.LatticeGluingRadicals.j_exists_nat_smul_memL (LinearMap.range ι) (hspan g hg)
  set dN : ℕ := ∏ g ∈ s, m g with hdN
  have hgs : ∀ g ∈ s, g ∈ X.Lb := fun g hg => hs ▸ Submodule.subset_span hg
  have hdN0 : dN ≠ 0 := Finset.prod_ne_zero_iff.2 fun g hg => (hm g (hgs g hg)).ne'
  refine ⟨(dN : 𝓞 D.host.E), by exact_mod_cast hdN0, ?_⟩
  rw [Submodule.ideal_span_singleton_smul]
  rintro _ ⟨x, hx, rfl⟩
  rw [← hs] at hx
  induction hx using Submodule.span_induction with
  | mem g hg =>
    have e : (dN : 𝓞 D.host.E) • g = ((∏ g' ∈ s.erase g, m g' : ℕ) : 𝓞 D.host.E) • (m g • g) := by
      rw [Nat.cast_smul_eq_nsmul, Nat.cast_smul_eq_nsmul, hdN, ← Finset.mul_prod_erase s m hg, mul_comm, mul_smul]
    show (dN : 𝓞 D.host.E) • g ∈ LinearMap.range ι
    rw [e]; exact Submodule.smul_mem _ _ (hmι g (hgs g hg))
  | zero => simp
  | add a b _ _ ha hb => simpa [smul_add] using Submodule.add_mem _ ha hb
  | smul c a _ ha =>
    show (dN : 𝓞 D.host.E) • (c • a) ∈ LinearMap.range ι
    rw [smul_comm]; exact Submodule.smul_mem _ c ha

instance nzsd : NoZeroSMulDivisors (𝓞 D.host.E) (VS D).V :=
  ⟨fun {c x} h => by
    rw [← algebraMap_smul D.host.E c x] at h
    rcases smul_eq_zero.1 h with h | h
    · left; exact (map_eq_zero_iff _ (FaithfulSMul.algebraMap_injective _ _)).1 h
    · right; exact h⟩

theorem fg_of_le {N L : Submodule (𝓞 D.host.E) (VS D).V} (h : N ≤ L) (hL : L.FG) : N.FG := by
  haveI := isNoetherian_of_fg_of_noetherian L hL
  have h1 : (N.comap L.subtype).FG := IsNoetherian.noetherian _
  have h2 : (N.comap L.subtype).map L.subtype = N := by
    rw [Submodule.map_comap_subtype, inf_eq_right.mpr h]
  rw [← h2]
  exact h1.map _

theorem fg_of_smul_le {N L : Submodule (𝓞 D.host.E) (VS D).V} (a : 𝓞 D.host.E) (ha : a ≠ 0)
    (h : Ideal.span {a} • N ≤ L) (hL : L.FG) : N.FG := by
  have h1 : (N.map (a • LinearMap.id)).FG := by
    apply fg_of_le _ hL
    intro x hx
    obtain ⟨y, hy, rfl⟩ := Submodule.mem_map.mp hx
    apply h
    rw [LinearMap.smul_apply, LinearMap.id_apply]
    exact Submodule.smul_mem_smul (Ideal.mem_span_singleton_self a) hy
  exact Submodule.fg_of_fg_map_injective _ (fun x y hxy => smul_right_injective (VS D).V ha (by simpa using hxy)) h1

theorem dDual_eq : (differentIdeal ℤ (𝓞 D.host.E)) • Ldual X = X.Lb := by
  exact le_antisymm (F5 X) (F6 X)

theorem absNorm_mem_smul (I : Ideal (𝓞 D.host.E)) (N : Submodule (𝓞 D.host.E) (VS D).V) :
    Ideal.span {((Ideal.absNorm I : ℕ) : 𝓞 D.host.E)} • N ≤ I • N := by
  exact Submodule.smul_mono_left ((Ideal.span_singleton_le_iff_mem I).mpr (Ideal.absNorm_mem I))

theorem dual_lattice_le_w : Ldual X ≤ (Wb X).restrictScalars (𝓞 D.host.E) := by
  exact fun x hx => hx.1

theorem idx_dual : (X.Lb.toAddSubgroup).relIndex (Ldual X).toAddSubgroup = (discr D.host.E).natAbs ^ (D.R.k + 1) := by
  obtain ⟨ι, hι, hιL, d, hd, hdL⟩ := free_sub X
  have h𝔇 : differentIdeal ℤ (𝓞 D.host.E) ≠ ⊥ := differentIdeal_ne_bot
  set a : 𝓞 D.host.E := ((Ideal.absNorm (differentIdeal ℤ (𝓞 D.host.E)) : ℕ) : 𝓞 D.host.E)
  have ha : a ≠ 0 := by
    simp only [a]; exact_mod_cast (Ideal.absNorm_eq_zero_iff.not.2 h𝔇)
  have haL : Ideal.span {a} • Ldual X ≤ X.Lb := (absNorm_mem_smul _ _).trans (dDual_eq X).le
  have hfg : (Ldual X).FG := fg_of_smul_le a ha haL (fg_Lb X)
  have hdd : Ideal.span {d * a} • Ldual X ≤ LinearMap.range ι := by
    rw [← Ideal.span_singleton_mul_span_singleton, Submodule.mul_smul]
    exact (Submodule.smul_mono le_rfl haL).trans hdL
  have h := relIndex_eq (D.R.k + 1) _ h𝔇 (Ldual X) hfg (hdepW X _ (dual_lattice_le_w X)) ι hι
    (hιL.trans (Lb_le_Ldual X)) (d * a) (mul_ne_zero hd ha) hdd
  rw [dDual_eq X, NumberField.absNorm_differentIdeal D.host.E (𝓞 D.host.E)] at h
  exact h

theorem aaD_inv (b : Fin D.R.rS) :
    aaD D b = (((Formalism.L2.SG.NGCut.LeadingMinorIntegrality.dI D ^ (D.R.rS - (b : ℕ)) : Ideal (𝓞 D.host.E)) :
      FractionalIdeal (𝓞 D.host.E)⁰ D.host.E))⁻¹ := by
  unfold aaD
  rw [FractionalIdeal.coeIdeal_pow, ← zpow_natCast, ← zpow_neg]
  congr 1
  push_cast [Nat.cast_sub b.2.le]; ring

theorem smul_aaLbS (b : Fin D.R.rS) :
    (Formalism.L2.SG.NGCut.LeadingMinorIntegrality.dI D ^ (D.R.rS - (b : ℕ))) • aaLbS X b = X.Lb := by
  set I := Formalism.L2.SG.NGCut.LeadingMinorIntegrality.dI D ^ (D.R.rS - (b : ℕ)) with hI
  have hI0 : (I : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E) ≠ 0 := by
    rw [Ne, FractionalIdeal.coeIdeal_eq_zero]; exact Formalism.L2.SG.NGCut.LeadingMinorIntegrality.dI_ne_bot _
  have hinv := aaD_inv b
  rw [← hI] at hinv
  apply le_antisymm
  · rw [Submodule.smul_le]
    intro r hr x hx
    unfold aaLbS at hx
    induction hx using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨c, hc, l, hl, rfl⟩ := hy
      have h1 : (r : D.host.E) * c ∈ (1 : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E) := by
        have hc' : c ∈ (I : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E)⁻¹ := by rw [← hinv]; exact hc
        have := FractionalIdeal.mul_mem_mul ((FractionalIdeal.mem_coeIdeal _).2 ⟨r, hr, rfl⟩) hc'
        rwa [mul_inv_cancel₀ hI0] at this
      obtain ⟨o, ho⟩ := (FractionalIdeal.mem_one_iff _).1 h1
      have : r • (c • l) = o • l := by rw [← algebraMap_smul D.host.E r, smul_smul, ← ho, algebraMap_smul]
      rw [this]; exact X.Lb.smul_mem o hl
    | zero => simp
    | add a b' _ _ ha hb => rw [smul_add]; exact X.Lb.add_mem ha hb
    | smul c a _ ha => rw [smul_comm]; exact X.Lb.smul_mem c ha
  · intro l hl
    have h1 : (1 : D.host.E) ∈ (I : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E) * (I : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E)⁻¹ := by
      rw [mul_inv_cancel₀ hI0]; exact FractionalIdeal.one_mem_one _
    have key : ∀ a ∈ (I : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E) * (I : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E)⁻¹,
        a • l ∈ I • aaLbS X b := by
      intro a ha
      refine FractionalIdeal.mul_induction_on ha ?_ ?_
      · intro i hi c hc
        obtain ⟨r, hr, rfl⟩ := (FractionalIdeal.mem_coeIdeal _).1 hi
        have hcl : c • l ∈ aaLbS X b := Submodule.subset_span ⟨c, by rw [hinv]; exact hc, l, hl, rfl⟩
        have : (algebraMap (𝓞 D.host.E) D.host.E r * c) • l = r • (c • l) := by rw [mul_smul, algebraMap_smul]
        rw [this]; exact Submodule.smul_mem_smul hr hcl
      · intro x y hx hy; rw [add_smul]; exact Submodule.add_mem _ hx hy
    simpa using key 1 h1

theorem lattice_b_le_w (b : Fin D.R.rS) : aaLbS X b ≤ (Wb X).restrictScalars (𝓞 D.host.E) := by
  apply Submodule.span_le.mpr
  rintro y ⟨c, -, l, hl, rfl⟩
  exact (Wb X).smul_mem c (Lb_le_alt X hl)

theorem idx_M (b : Fin D.R.rS) : (X.Lb.toAddSubgroup).relIndex (aaLbS X b).toAddSubgroup =
    (((discr D.host.F).natAbs ^ 2) ^ (D.R.rS - (b : ℕ))) ^ (D.R.k + 1) := by
  obtain ⟨ι, hι, hιL, d, hd, hdL⟩ := free_sub X
  set I := Formalism.L2.SG.NGCut.LeadingMinorIntegrality.dI D ^ (D.R.rS - (b : ℕ)) with hI
  have hIb : I ≠ ⊥ := Formalism.L2.SG.NGCut.LeadingMinorIntegrality.dI_ne_bot _
  set a : 𝓞 D.host.E := ((Ideal.absNorm I : ℕ) : 𝓞 D.host.E)
  have ha : a ≠ 0 := by simp only [a]; exact_mod_cast (Ideal.absNorm_eq_zero_iff.not.2 hIb)
  have haL : Ideal.span {a} • aaLbS X b ≤ X.Lb := (absNorm_mem_smul _ _).trans (smul_aaLbS X b).le
  have hdd : Ideal.span {d * a} • aaLbS X b ≤ LinearMap.range ι := by
    rw [← Ideal.span_singleton_mul_span_singleton, Submodule.mul_smul]
    exact (Submodule.smul_mono le_rfl haL).trans hdL
  have h := relIndex_eq (D.R.k + 1) I hIb (aaLbS X b) (fg_aaLbS X b) (hdepW X _ (lattice_b_le_w X b)) ι hι
    (hιL.trans (Lb_le_aaLbS X b)) (d * a) (mul_ne_zero hd ha) hdd
  rw [smul_aaLbS X b] at h
  rw [h, hI, map_pow, Formalism.L2.SG.NGCut.LeadingMinorIntegrality.dI, Formalism.L2.SG.Pf.NcReal.JX.CovB.absNorm_ddS_ideal]

instance nzsdZ : NoZeroSMulDivisors ℤ (VS D).V :=
  ⟨fun {z x} h => by
    rw [← Int.cast_smul_eq_zsmul D.host.E z x] at h
    rcases smul_eq_zero.1 h with h | h
    · left; exact_mod_cast h
    · right; exact h⟩

def Gr {N : ℕ} (w : Fin N → (VS D).V) : Matrix (Fin N) (Fin N) ℚ :=
  Matrix.of fun i j => Algebra.trace ℚ D.host.E ((VS D).hT (w i) (w j))

theorem trB_zsmul_left (z : ℤ) (x y : (VS D).V) :
    Algebra.trace ℚ D.host.E ((VS D).hT (z • x) y) = z * Algebra.trace ℚ D.host.E ((VS D).hT x y) := by
  rw [map_zsmul, LinearMap.smul_apply, map_zsmul, zsmul_eq_mul]

theorem trB_zsmul_right (z : ℤ) (x y : (VS D).V) :
    Algebra.trace ℚ D.host.E ((VS D).hT x (z • y)) = z * Algebra.trace ℚ D.host.E ((VS D).hT x y) := by
  rw [map_zsmul, map_zsmul, zsmul_eq_mul]

theorem trB_sum_left {N : ℕ} (c : Fin N → ℤ) (w : Fin N → (VS D).V) (y : (VS D).V) :
    Algebra.trace ℚ D.host.E ((VS D).hT (∑ i, c i • w i) y) =
      ∑ i, (c i : ℚ) * Algebra.trace ℚ D.host.E ((VS D).hT (w i) y) := by

  rw [map_sum, LinearMap.sum_apply, map_sum]
  exact Finset.sum_congr rfl fun i _ => trB_zsmul_left (c i) (w i) y

theorem trB_sum_right {N : ℕ} (c : Fin N → ℤ) (w : Fin N → (VS D).V) (x : (VS D).V) :
    Algebra.trace ℚ D.host.E ((VS D).hT x (∑ i, c i • w i)) =
      ∑ i, (c i : ℚ) * Algebra.trace ℚ D.host.E ((VS D).hT x (w i)) := by

  rw [map_sum, map_sum]
  exact Finset.sum_congr rfl fun i _ => trB_zsmul_right (c i) x (w i)

theorem gr_change {N : ℕ} (w w' : Fin N → (VS D).V) (A : Matrix (Fin N) (Fin N) ℤ)
    (hw : ∀ j, w' j = ∑ i, A i j • w i) :
    Gr w' = (A.map (Int.cast : ℤ → ℚ)).transpose * Gr w * A.map (Int.cast : ℤ → ℚ) := by
  ext i j
  simp only [Gr, Matrix.of_apply, Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply, hw,
    trB_sum_left, trB_sum_right, Finset.mul_sum, Finset.sum_mul]
  first
    | exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring
    | (conv_rhs => rw [Finset.sum_comm])
      exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring

theorem det_gr_change {N : ℕ} (w w' : Fin N → (VS D).V) (A : Matrix (Fin N) (Fin N) ℤ)
    (hw : ∀ j, w' j = ∑ i, A i j • w i) :
    (Gr w').det = ((A.det : ℤ) : ℚ) ^ 2 * (Gr w).det := by
  have h : (A.map (Int.cast : ℤ → ℚ)).det = ((A.det : ℤ) : ℚ) := ((Int.castRingHom ℚ).map_det A).symm
  rw [gr_change w w' A hw, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose, h]
  ring

theorem basis_expand {M : Submodule ℤ (VS D).V} {N : ℕ} (b : Module.Basis (Fin N) ℤ M) (v : Fin N → M) (j : Fin N) :
    ((v j : M) : (VS D).V) = ∑ i, (b.toMatrix v i j) • ((b i : M) : (VS D).V) := by
  simp only [Module.Basis.toMatrix_apply]
  conv_lhs => rw [← b.sum_repr (v j)]
  rw [Submodule.coe_sum]
  simp only [Submodule.coe_smul]

def DetHOne : Prop :=
  ∀ {D : D7} (X : HidaSetting D) {N : ℕ} (ℓ : Module.Basis (Fin N) ℤ (X.Lb.restrictScalars ℤ))
    (ℓs : Module.Basis (Fin N) ℤ ((Ldual X).restrictScalars ℤ)),
    |(Matrix.of fun k j => Algebra.trace ℚ D.host.E ((VS D).hT (ℓs k : (VS D).V) (ℓ j : (VS D).V))).det| = 1

theorem fin_Z (L : Submodule (𝓞 D.host.E) (VS D).V) (hL : L.FG) : Module.Finite ℤ (L.restrictScalars ℤ) := by
  have h1 : Module.Finite (𝓞 D.host.E) L := Module.Finite.iff_fg.2 hL
  have h2 : Module.Finite ℤ L := Module.Finite.trans (𝓞 D.host.E) _
  exact Module.Finite.equiv ((Submodule.restrictScalarsEquiv ℤ (𝓞 D.host.E) (VS D).V L).restrictScalars ℤ).symm

theorem finrank_eq_of_sandwich (A B : Submodule (𝓞 D.host.E) (VS D).V) (hA : A.FG) (hB : B.FG) (hAB : A ≤ B)
    (c : ℕ) (hc : c ≠ 0) (hcB : Ideal.span {(c : 𝓞 D.host.E)} • B ≤ A) :
    Module.finrank ℤ (A.restrictScalars ℤ) = Module.finrank ℤ (B.restrictScalars ℤ) := by
  have := fin_Z A hA
  have := fin_Z B hB
  apply le_antisymm
  · exact LinearMap.finrank_le_finrank_of_injective (f := Submodule.inclusion (show A.restrictScalars ℤ ≤ B.restrictScalars ℤ from hAB))
      (Submodule.inclusion_injective _)
  · have hmem : ∀ x ∈ B, (c : ℤ) • x ∈ A := by
      intro x hx
      apply hcB
      rw [Submodule.ideal_span_singleton_smul]
      refine ⟨x, hx, ?_⟩
      show (c : 𝓞 D.host.E) • x = (c : ℤ) • x
      rw [natCast_zsmul, Nat.cast_smul_eq_nsmul]
    let f : (B.restrictScalars ℤ) →ₗ[ℤ] (A.restrictScalars ℤ) :=
      LinearMap.codRestrict (A.restrictScalars ℤ) ((c : ℤ) • (B.restrictScalars ℤ).subtype) (fun x => hmem x x.2)
    refine LinearMap.finrank_le_finrank_of_injective (f := f) fun x y hxy => ?_
    have h := congrArg Subtype.val hxy
    simp only [f] at h
    have : (c : ℤ) • ((x : (VS D).V) - y) = 0 := by rw [smul_sub]; exact sub_eq_zero.2 h
    exact Subtype.ext (sub_eq_zero.1 ((smul_eq_zero.1 this).resolve_left (by exact_mod_cast hc)))

theorem trDetUnimod_of (hH : DetHOne) : TrDetUnimod := by
  intro D X b N m hN
  classical
  have hMfg : (aaLbS X b).FG := fg_aaLbS X b
  have hLfg : X.Lb.FG := fg_Lb X

  set I := Formalism.L2.SG.NGCut.LeadingMinorIntegrality.dI D ^ (D.R.rS - (b : ℕ))
  have hIb : I ≠ ⊥ := Formalism.L2.SG.NGCut.LeadingMinorIntegrality.dI_ne_bot _
  have haM : Ideal.span {((Ideal.absNorm I : ℕ) : 𝓞 D.host.E)} • aaLbS X b ≤ X.Lb :=
    (absNorm_mem_smul _ _).trans (smul_aaLbS X b).le
  have ha0 : Ideal.absNorm I ≠ 0 := Ideal.absNorm_eq_zero_iff.not.2 hIb
  have h𝔇 : differentIdeal ℤ (𝓞 D.host.E) ≠ ⊥ := differentIdeal_ne_bot
  have haD : Ideal.span {((Ideal.absNorm (differentIdeal ℤ (𝓞 D.host.E)) : ℕ) : 𝓞 D.host.E)} • Ldual X ≤ X.Lb :=
    (absNorm_mem_smul _ _).trans (dDual_eq X).le
  have ha0' : Ideal.absNorm (differentIdeal ℤ (𝓞 D.host.E)) ≠ 0 := Ideal.absNorm_eq_zero_iff.not.2 h𝔇
  have hLdfg : (Ldual X).FG := fg_of_smul_le _ (by exact_mod_cast ha0') haD hLfg

  have hMfin : Module.Finite ℤ ((aaLbS X b).restrictScalars ℤ) := Module.Finite.of_basis m
  have hrM : Module.finrank ℤ ((aaLbS X b).restrictScalars ℤ) = N := by rw [Module.finrank_eq_card_basis m, Fintype.card_fin]
  have hrL : Module.finrank ℤ (X.Lb.restrictScalars ℤ) = N := by
    rw [finrank_eq_of_sandwich X.Lb (aaLbS X b) hLfg hMfg (Lb_le_aaLbS X b) _ ha0 haM, hrM]
  have hrLd : Module.finrank ℤ ((Ldual X).restrictScalars ℤ) = N := by
    rw [← finrank_eq_of_sandwich X.Lb (Ldual X) hLfg hLdfg (Lb_le_Ldual X) _ ha0' haD, hrL]
  have := fin_Z X.Lb hLfg
  have := fin_Z (Ldual X) hLdfg
  have : Module.Free ℤ (X.Lb.restrictScalars ℤ) := Module.free_of_finite_type_torsion_free'
  have : Module.Free ℤ ((Ldual X).restrictScalars ℤ) := Module.free_of_finite_type_torsion_free'
  let ℓ : Module.Basis (Fin N) ℤ (X.Lb.restrictScalars ℤ) := Module.finBasisOfFinrankEq ℤ _ hrL
  let ℓs : Module.Basis (Fin N) ℤ ((Ldual X).restrictScalars ℤ) := Module.finBasisOfFinrankEq ℤ _ hrLd

  have hLM : X.Lb.toAddSubgroup ≤ (aaLbS X b).toAddSubgroup := Lb_le_aaLbS X b
  have e1 := AddSubgroup.relIndex_eq_natAbs_det X.Lb.toAddSubgroup (aaLbS X b).toAddSubgroup hLM ℓ m
  rw [idx_M X b] at e1
  let vA : Fin N → (aaLbS X b).restrictScalars ℤ := fun i => ⟨ℓ i, hLM (SetLike.coe_mem _)⟩
  let A := m.toMatrix vA
  have e1' : (m.det vA).natAbs = (((discr D.host.F).natAbs ^ 2) ^ (D.R.rS - (b : ℕ))) ^ (D.R.k + 1) := e1.symm
  rw [Module.Basis.det_apply] at e1'
  have hA : ∀ j, ((ℓ j : X.Lb.restrictScalars ℤ) : (VS D).V) = ∑ i, A i j • ((m i : (aaLbS X b).restrictScalars ℤ) : (VS D).V) :=
    fun j => basis_expand m vA j
  have hGA := det_gr_change (fun i => ((m i : (aaLbS X b).restrictScalars ℤ) : (VS D).V))
    (fun j => ((ℓ j : X.Lb.restrictScalars ℤ) : (VS D).V)) A hA

  have hLLd : X.Lb.toAddSubgroup ≤ (Ldual X).toAddSubgroup := Lb_le_Ldual X
  have e2 := AddSubgroup.relIndex_eq_natAbs_det X.Lb.toAddSubgroup (Ldual X).toAddSubgroup hLLd ℓ ℓs
  rw [idx_dual X] at e2
  let vC : Fin N → (Ldual X).restrictScalars ℤ := fun i => ⟨ℓ i, hLLd (SetLike.coe_mem _)⟩
  let C := ℓs.toMatrix vC
  have e2' : (ℓs.det vC).natAbs = (discr D.host.E).natAbs ^ (D.R.k + 1) := e2.symm
  rw [Module.Basis.det_apply] at e2'
  have hC : ∀ j, ((ℓ j : X.Lb.restrictScalars ℤ) : (VS D).V) = ∑ k, C k j • ((ℓs k : (Ldual X).restrictScalars ℤ) : (VS D).V) :=
    fun j => basis_expand ℓs vC j
  let H := Matrix.of fun k j => Algebra.trace ℚ D.host.E ((VS D).hT (ℓs k : (VS D).V) (ℓ j : (VS D).V))
  have hGC : Gr (fun j => ((ℓ j : X.Lb.restrictScalars ℤ) : (VS D).V)) = (C.map (Int.cast : ℤ → ℚ)).transpose * H := by
    ext i j
    simp only [Gr, H, Matrix.of_apply, Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply]
    rw [hC i, trB_sum_left]
  have hdetC : (C.map (Int.cast : ℤ → ℚ)).det = ((C.det : ℤ) : ℚ) := by
    have := (RingHom.map_det (Int.castRingHom ℚ) C).symm
    simpa using this
  have hHdet := hH X ℓ ℓs

  have hGm : (Gr (fun i => ((m i : (aaLbS X b).restrictScalars ℤ) : (VS D).V))) =
      Matrix.of fun i j => Algebra.trace ℚ D.host.E ((VS D).hT (m i : (VS D).V) (m j : (VS D).V)) := rfl
  rw [← hGm]
  have hAz : ((A.det : ℤ) : ℚ) ^ 2 = (((((discr D.host.F).natAbs ^ 2) ^ (D.R.rS - (b : ℕ))) ^ (D.R.k + 1) : ℕ) : ℚ) ^ 2 := by
    rw [← e1', Nat.cast_natAbs, Int.cast_abs, sq_abs]
  have hLdet : |(Gr (fun j => ((ℓ j : X.Lb.restrictScalars ℤ) : (VS D).V))).det| =
      (((discr D.host.E).natAbs ^ (D.R.k + 1) : ℕ) : ℚ) := by
    rw [hGC, Matrix.det_mul, Matrix.det_transpose, hdetC, abs_mul, hHdet, mul_one, ← e2', Nat.cast_natAbs, Int.cast_abs]
  have hA0 : ((A.det : ℤ) : ℚ) ≠ 0 := by
    intro h0
    have : (((((discr D.host.F).natAbs ^ 2) ^ (D.R.rS - (b : ℕ))) ^ (D.R.k + 1) : ℕ) : ℚ) = 0 := by
      have := hAz; rw [h0] at this; exact pow_eq_zero_iff (n := 2) (by norm_num) |>.1 this.symm
    have hne : (discr D.host.F).natAbs ≠ 0 := Int.natAbs_ne_zero.2 (NumberField.discr_ne_zero _)
    exact_mod_cast (pow_ne_zero _ (pow_ne_zero _ (pow_ne_zero _ hne))) (by exact_mod_cast this)
  have key : |(Gr (fun i => ((m i : (aaLbS X b).restrictScalars ℤ) : (VS D).V))).det| =
      (((discr D.host.E).natAbs ^ (D.R.k + 1) : ℕ) : ℚ) /
        (((((discr D.host.F).natAbs ^ 2) ^ (D.R.rS - (b : ℕ))) ^ (D.R.k + 1) : ℕ) : ℚ) ^ 2 := by
    have hP : (((((discr D.host.F).natAbs ^ 2) ^ (D.R.rS - (b : ℕ))) ^ (D.R.k + 1) : ℕ) : ℚ) ≠ 0 := by
      have hne : (discr D.host.F).natAbs ≠ 0 := Int.natAbs_ne_zero.2 (NumberField.discr_ne_zero _)
      exact_mod_cast pow_ne_zero _ (pow_ne_zero _ (pow_ne_zero _ hne))
    rw [← hLdet, hGA, abs_mul, abs_pow, sq_abs, hAz]
    field_simp
  rw [key]

  have hN2 : (FractionalIdeal.absNorm (aaD D b) : ℚ) =
      ((((discr D.host.F).natAbs ^ 2) ^ (D.R.rS - (b : ℕ)) : ℕ) : ℚ)⁻¹ := by
    rw [aaD_inv b, map_inv₀, FractionalIdeal.coeIdeal_absNorm, map_pow, Formalism.L2.SG.NGCut.LeadingMinorIntegrality.dI,
      Formalism.L2.SG.Pf.NcReal.JX.CovB.absNorm_ddS_ideal]
  rw [hN2]
  have hF : ((discr D.host.F : ℤ) : ℚ) ≠ 0 := by exact_mod_cast NumberField.discr_ne_zero _
  have hF' : |((discr D.host.F : ℤ) : ℚ)| ≠ 0 := abs_ne_zero.2 hF
  push_cast [Nat.cast_natAbs, Int.cast_abs]
  rw [inv_pow]
  field_simp
  ring

end Formalism.L2.SG.Pf.NcReal.JX.CovB.TrD
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.CovolBRb =====
