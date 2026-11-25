module

public import ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.ModDepthGE
public import Lemmata.GeneralBFactRest.Imports
public import Mathlib.RingTheory.Ideal.AssociatedPrime.Localization
public import Mathlib.RingTheory.KrullDimension.Regular
public import ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.ExistsIsRegularAppendOfModDepthGE

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.AssDim, ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.Unmixed

-- ===== clump member: ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.AssDim =====
-- clump-header: {"m": "ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.AssDim", "h": "module\n\npublic import ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.ModDepthGE\npublic import Lemmata.GeneralBFactRest.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.CA

open IsLocalRing RingTheory.Sequence Pointwise

variable {R : Type*} [CommRing R] [IsLocalRing R] [IsNoetherianRing R]

theorem length_le_of_isRegular_of_mem_associatedPrimes : ∀ (rs : List R)
    {M : Type*} [AddCommGroup M] [Module R M] [Module.Finite R M],
    (∀ r ∈ rs, r ∈ maximalIdeal R) → IsRegular M rs → ∀ {p : Ideal R},
    p ∈ associatedPrimes R M → (rs.length : WithBot ℕ∞) ≤ ringKrullDim (R ⧸ p)
  | [], M, _, _, _, _, _, p, hp => by
    have : p.IsPrime := hp.isPrime
    have : Nontrivial (R ⧸ p) := Ideal.Quotient.nontrivial_iff.mpr this.ne_top
    simpa using ringKrullDim_nonneg_of_nontrivial
  | x :: rs', M, _, _, _, hm, reg, p, hp => by
    obtain ⟨hreg, hreg'⟩ := (isRegular_cons_iff M x rs').mp reg
    have hx : x ∈ maximalIdeal R := hm x List.mem_cons_self
    obtain ⟨q, hq, hpq, hxq, hxnp⟩ := _root_.Bl.general_b_fact_rest.goal1 hp hx hreg
    have ih := length_le_of_isRegular_of_mem_associatedPrimes rs'
      (fun r hr => hm r (List.mem_cons_of_mem _ hr)) hreg' hq
    have hpp : p.IsPrime := hp.isPrime
    have hxp : Ideal.Quotient.mk p x ≠ 0 := by
      rw [ne_eq, Ideal.Quotient.eq_zero_iff_mem]
      exact hxnp
    have hdim : ringKrullDim (R ⧸ q) + 1 ≤ ringKrullDim (R ⧸ p) :=
      ringKrullDim_succ_le_of_surjective (Ideal.Quotient.factor hpq.le)
        (Ideal.Quotient.factor_surjective hpq.le) (mem_nonZeroDivisors_of_ne_zero hxp)
        (by simpa [Ideal.Quotient.eq_zero_iff_mem] using hxq)
    calc ((x :: rs').length : WithBot ℕ∞) = (rs'.length : WithBot ℕ∞) + 1 := by simp
      _ ≤ ringKrullDim (R ⧸ q) + 1 := by gcongr
      _ ≤ ringKrullDim (R ⧸ p) := hdim

variable {M : Type*} [AddCommGroup M] [Module R M] [Module.Finite R M]

theorem ModDepthGE.le_ringKrullDim_quotient_of_mem_associatedPrimes {n : ℕ}
    (h : ModDepthGE R M n) {p : Ideal R} (hp : p ∈ associatedPrimes R M) :
    (n : WithBot ℕ∞) ≤ ringKrullDim (R ⧸ p) := by
  obtain ⟨rs, hlen, hmem, hreg⟩ := h
  subst hlen
  exact length_le_of_isRegular_of_mem_associatedPrimes rs hmem hreg hp

end ReciprocityTheory.CA
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.AssDim =====

-- ===== clump member: ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.Unmixed =====
-- clump-header: {"m": "ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.Unmixed", "h": "module\n\npublic import ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.ModDepthGE\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\npublic import Mathlib.RingTheory.Ideal.AssociatedPrime.Localization\npublic import Mathlib.RingTheory.KrullDimension.Regular\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.AssDim\npublic import ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.ExistsIsRegularAppendOfModDepthGE\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.CA

open IsLocalRing RingTheory.Sequence

variable {R : Type*} [CommRing R] [IsLocalRing R] {M : Type*} [AddCommGroup M] [Module R M]

private theorem unm_add_one_eq {a : WithBot ℕ∞} {n : ℕ} (h : a + 1 = n) :
    ∃ m : ℕ, n = m + 1 ∧ a = m := by
  induction a using WithBot.recBotCoe with
  | bot =>
    exfalso
    first
    | (simp at h; done)
  | coe b =>
    induction b using ENat.recTopCoe with
    | top =>
      exfalso
      have h' : (⊤ : ℕ∞) + 1 = (n : ℕ∞) := by exact_mod_cast h
      simp at h'
    | coe k =>
      have h' : k + 1 = n := by exact_mod_cast h
      exact ⟨k, h'.symm, by first | rfl | simp⟩

private theorem unm_dim_le_of_le {I J : Ideal R} (h : I ≤ J) :
    ringKrullDim (R ⧸ J) ≤ ringKrullDim (R ⧸ I) := by
  refine ringKrullDim_le_of_surjective
    (Ideal.Quotient.lift I (Ideal.Quotient.mk J)
      (fun y hy => Ideal.Quotient.eq_zero_iff_mem.mpr (h hy))) ?_
  intro z
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective z
  exact ⟨Ideal.Quotient.mk I y, rfl⟩

private theorem unm_dim_succ_le_of_lt {Q P : Ideal R} [Q.IsPrime] (h : Q < P) :
    ringKrullDim (R ⧸ P) + 1 ≤ ringKrullDim (R ⧸ Q) := by
  obtain ⟨a, haP, haQ⟩ := SetLike.exists_of_lt h
  have hx0 : (Ideal.Quotient.mk Q a : R ⧸ Q) ≠ 0 :=
    fun hx => haQ (Ideal.Quotient.eq_zero_iff_mem.mp hx)
  have hxreg : (Ideal.Quotient.mk Q a : R ⧸ Q) ∈ nonZeroDivisors (R ⧸ Q) :=
    mem_nonZeroDivisors_of_ne_zero hx0
  let g : R ⧸ Q →+* R ⧸ P := Ideal.Quotient.lift Q (Ideal.Quotient.mk P)
    (fun y hy => Ideal.Quotient.eq_zero_iff_mem.mpr (h.le hy))
  have hgx : g (Ideal.Quotient.mk Q a) = 0 := Ideal.Quotient.eq_zero_iff_mem.mpr haP
  let f : (R ⧸ Q) ⧸ Ideal.span {(Ideal.Quotient.mk Q a : R ⧸ Q)} →+* R ⧸ P :=
    Ideal.Quotient.lift (Ideal.span {(Ideal.Quotient.mk Q a : R ⧸ Q)}) g
      (fun y hy => by
        obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp hy
        rw [map_mul, hgx, mul_zero])
  have hf : Function.Surjective f := by
    intro z
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective z
    exact ⟨Ideal.Quotient.mk _ (Ideal.Quotient.mk Q y), rfl⟩
  have hle : ringKrullDim (R ⧸ P) ≤
      ringKrullDim ((R ⧸ Q) ⧸ Ideal.span {(Ideal.Quotient.mk Q a : R ⧸ Q)}) :=
    ringKrullDim_le_of_surjective f hf
  calc ringKrullDim (R ⧸ P) + 1
      ≤ ringKrullDim ((R ⧸ Q) ⧸ Ideal.span {(Ideal.Quotient.mk Q a : R ⧸ Q)}) + 1 := by
        first | gcongr
    _ ≤ ringKrullDim (R ⧸ Q) := ringKrullDim_quotient_succ_le_of_nonZeroDivisor hxreg

private theorem unm_modDepthGE_congr {N : Type*} [AddCommGroup N] [Module R N]
    (e : M ≃ₗ[R] N) {n : ℕ} (h : ModDepthGE R M n) : ModDepthGE R N n := by
  obtain ⟨rs, hlen, hmem, hreg⟩ := id h
  unfold ModDepthGE
  refine ⟨rs, hlen, hmem, ?_⟩
  first
  | exact (LinearEquiv.isRegular_congr e rs).mp hreg

private theorem unm_isCMMod_congr {N : Type*} [AddCommGroup N] [Module R N]
    (e : M ≃ₗ[R] N) (h : IsCMMod R M) : IsCMMod R N := by
  obtain ⟨hR, hfin, n, hdim, hdep⟩ := id h
  haveI := hfin
  have hs : Module.support R N = Module.support R M :=
    (Module.support_subset_of_surjective e.toLinearMap e.surjective).antisymm
      (Module.support_subset_of_surjective e.symm.toLinearMap e.symm.surjective)
  unfold IsCMMod
  refine ⟨hR, Module.Finite.equiv e, n, ?_, unm_modDepthGE_congr e hdep⟩
  rw [← hdim]
  first
  | (unfold Module.supportDim; rw [hs])

theorem IsCMMod.ringKrullDim_quotient_eq_supportDim (h : IsCMMod R M) {p : Ideal R}
    (hp : p ∈ associatedPrimes R M) : ringKrullDim (R ⧸ p) = Module.supportDim R M := by
  obtain ⟨hR, hfin, n, hdim, hdep⟩ := id h
  haveI := hR
  haveI := hfin
  have hann : Module.annihilator R M ≤ p := by
    first
    | (have h0 := IsAssociatedPrime.annihilator_le hp
       rwa [Submodule.annihilator_top] at h0)
  have hsupp : Module.supportDim R M = ringKrullDim (R ⧸ Module.annihilator R M) := by
    first
    | exact Module.supportDim_eq_ringKrullDim_quotient_annihilator R M
  apply le_antisymm
  · rw [hsupp]
    exact unm_dim_le_of_le hann
  · rw [hdim]
    exact hdep.le_ringKrullDim_quotient_of_mem_associatedPrimes hp

theorem IsCMMod.associatedPrimes_eq_minimalPrimes (h : IsCMMod R M) :
    associatedPrimes R M = (Module.annihilator R M).minimalPrimes := by
  obtain ⟨hR, hfin, n, hdim, -⟩ := id h
  haveI := hR
  haveI := hfin
  apply Set.Subset.antisymm
  · intro p hp
    have hpp : p.IsPrime := IsAssociatedPrime.isPrime hp
    have hann : Module.annihilator R M ≤ p := by
      first
      | (have h0 := IsAssociatedPrime.annihilator_le hp
         rwa [Submodule.annihilator_top] at h0)
    have hsupp : Module.supportDim R M = ringKrullDim (R ⧸ Module.annihilator R M) := by
      first
      | exact Module.supportDim_eq_ringKrullDim_quotient_annihilator R M
    have hp' : ringKrullDim (R ⧸ p) = (n : WithBot ℕ∞) :=
      (h.ringKrullDim_quotient_eq_supportDim hp).trans hdim
    refine ⟨⟨hpp, hann⟩, fun q hq hqp => ?_⟩
    by_contra hne
    have hlt : q < p := lt_of_le_of_ne hqp (fun e => hne (le_of_eq e.symm))
    haveI := hq.1
    have h1 := unm_dim_succ_le_of_lt hlt
    have h2 : ringKrullDim (R ⧸ q) ≤ (n : WithBot ℕ∞) := by
      calc ringKrullDim (R ⧸ q) ≤ ringKrullDim (R ⧸ Module.annihilator R M) :=
            unm_dim_le_of_le hq.2
        _ = (n : WithBot ℕ∞) := hsupp.symm.trans hdim
    rw [hp'] at h1
    have h3 := h1.trans h2
    have h4 : ((n + 1 : ℕ) : WithBot ℕ∞) ≤ (n : WithBot ℕ∞) := by exact_mod_cast h3
    have h5 : n + 1 ≤ n := by exact_mod_cast h4
    omega
  · first
    | exact Module.associatedPrimes.minimalPrimes_annihilator_subset_associatedPrimes R M

theorem IsCMMod.quotSMulTop (h : IsCMMod R M) {x : R} (hx : x ∈ maximalIdeal R)
    (reg : IsSMulRegular M x) : IsCMMod R (QuotSMulTop x M) := by
  obtain ⟨hR, hfin, n, hdim, hdep⟩ := id h
  haveI := hR
  haveI := hfin
  have hsd : Module.supportDim R (QuotSMulTop x M) + 1 = Module.supportDim R M := by
    first
    | exact Module.supportDim_quotSMulTop_succ_eq_supportDim reg hx
  rw [hdim] at hsd
  obtain ⟨m, rfl, hm⟩ := unm_add_one_eq hsd
  unfold IsCMMod
  exact ⟨hR, by first | infer_instance | exact Module.Finite.quotient R _, m, hm,
    hdep.quotSMulTop hx reg⟩

theorem IsCMMod.of_quotSMulTop [IsNoetherianRing R] [Module.Finite R M] {x : R}
    (hx : x ∈ maximalIdeal R) (reg : IsSMulRegular M x) (h : IsCMMod R (QuotSMulTop x M)) :
    IsCMMod R M := by
  obtain ⟨-, -, n, hdim, hdep⟩ := id h
  have hsd : Module.supportDim R (QuotSMulTop x M) + 1 = Module.supportDim R M := by
    first
    | exact Module.supportDim_quotSMulTop_succ_eq_supportDim reg hx
  unfold IsCMMod
  refine ⟨inferInstance, inferInstance, n + 1, ?_, hdep.of_quotSMulTop hx reg⟩
  first
  | (rw [← hsd, hdim]; done)
  | (rw [← hsd, hdim]; norm_cast)

theorem IsCMMod.isSMulRegular_of_supportDim_quotSMulTop_lt (h : IsCMMod R M) {x : R}
    (hd : Module.supportDim R (QuotSMulTop x M) < Module.supportDim R M) :
    IsSMulRegular M x := by
  obtain ⟨hR, hfin, n, hdim, hdep⟩ := id h
  haveI := hR
  haveI := hfin
  by_contra hx
  have hmem : x ∈ ⋃ p ∈ associatedPrimes R M, (p : Set R) := by
    rw [biUnion_associatedPrimes_eq_compl_regular]
    exact hx
  simp only [Set.mem_iUnion, SetLike.mem_coe] at hmem
  obtain ⟨p, hp, hxp⟩ := hmem
  have hpp : p.IsPrime := IsAssociatedPrime.isPrime hp
  have hann : Module.annihilator R M ≤ p := by
    first
    | (have h0 := IsAssociatedPrime.annihilator_le hp
       rwa [Submodule.annihilator_top] at h0)
  have hsuppQ : (⟨p, hpp⟩ : PrimeSpectrum R) ∈ Module.support R (QuotSMulTop x M) := by
    rw [Module.support_quotSMulTop]
    refine ⟨?_, ?_⟩
    · rw [Module.mem_support_iff_of_finite]
      exact hann
    · simp [PrimeSpectrum.mem_zeroLocus, hxp]
  have hannQ : Module.annihilator R (QuotSMulTop x M) ≤ p :=
    Module.mem_support_iff_of_finite.mp hsuppQ
  have hsQ : Module.supportDim R (QuotSMulTop x M) =
      ringKrullDim (R ⧸ Module.annihilator R (QuotSMulTop x M)) := by
    first
    | exact Module.supportDim_eq_ringKrullDim_quotient_annihilator R (QuotSMulTop x M)
  have hle := unm_dim_le_of_le hannQ
  rw [h.ringKrullDim_quotient_eq_supportDim hp, ← hsQ] at hle
  exact absurd hd (not_lt.mpr hle)

theorem IsCMMod.quotient_ofList (h : IsCMMod R M) {rs : List R}
    (hrs : ∀ r ∈ rs, r ∈ maximalIdeal R) (reg : IsRegular M rs) :
    IsCMMod R (M ⧸ Ideal.ofList rs • (⊤ : Submodule R M)) := by
  induction rs generalizing M with
  | nil =>
    refine unm_isCMMod_congr (Submodule.quotEquivOfEqBot _ ?_).symm h
    first | simp
  | cons r rs ih =>
    rw [RingTheory.Sequence.isRegular_cons_iff] at reg
    have hr : r ∈ maximalIdeal R := hrs r (by simp)
    have h1 := h.quotSMulTop hr reg.1
    have h2 := ih h1 (fun s hs => hrs s (by simp [hs])) reg.2
    exact unm_isCMMod_congr
      (Submodule.quotOfListConsSMulTopEquivQuotSMulTopInner M r rs).symm h2

private theorem unm_supportDim_le_quotient_add [IsNoetherianRing R] :
    ∀ (ys : List R) (N : Type*) [AddCommGroup N] [Module R N] [Module.Finite R N],
      (∀ r ∈ ys, r ∈ maximalIdeal R) →
      Module.supportDim R N ≤
        Module.supportDim R (N ⧸ Ideal.ofList ys • (⊤ : Submodule R N)) + ys.length
  | [], N, _, _, _, _ => by
    rw [Ideal.ofList_nil, Submodule.bot_smul,
      Module.supportDim_eq_of_equiv (Submodule.quotEquivOfEqBot ⊥ rfl)]
    simp
  | y :: ys, N, _, _, _, hys => by
    have h1 := Module.supportDim_le_supportDim_quotSMulTop_succ (M := N) (hys y List.mem_cons_self)
    have h2 := unm_supportDim_le_quotient_add ys (QuotSMulTop y N)
      (fun s hs => hys s (List.mem_cons_of_mem y hs))
    rw [Module.supportDim_eq_of_equiv (Submodule.quotOfListConsSMulTopEquivQuotSMulTopInner N y ys)]
    calc Module.supportDim R N ≤ Module.supportDim R (QuotSMulTop y N) + 1 := h1
      _ ≤ (Module.supportDim R (QuotSMulTop y N ⧸ Ideal.ofList ys • (⊤ : Submodule R (QuotSMulTop y N)))
            + ys.length) + 1 := by gcongr
      _ = _ := by
        rw [List.length_cons, add_assoc]
        push_cast
        rfl

theorem IsCMMod.isRegular_of_supportDim_quotient_le_zero (h : IsCMMod R M) (xs : List R)
    (hxs : ∀ r ∈ xs, r ∈ maximalIdeal R) (hlen : (xs.length : WithBot ℕ∞) = Module.supportDim R M)
    (h0 : Module.supportDim R (M ⧸ Ideal.ofList xs • (⊤ : Submodule R M)) ≤ 0) :
    IsRegular M xs := by
  induction xs generalizing M with
  | nil =>
    obtain ⟨-, -, n, hdim, hdep⟩ := id h
    have hn : ((0 : ℕ) : WithBot ℕ∞) = (n : WithBot ℕ∞) := by
      rw [← hdim, ← hlen] <;> rfl
    have hn' : n = 0 := by exact_mod_cast hn.symm
    subst hn'
    obtain ⟨rs, hrs, -, hreg⟩ := id hdep
    cases rs with
    | nil => exact hreg
    | cons _ _ => simp at hrs
  | cons x xs ih =>
    obtain ⟨hR, hfin, n, hdim, hdep⟩ := id h
    haveI := hR
    haveI := hfin
    have hx : x ∈ maximalIdeal R := hxs x (by simp)
    have hxs' : ∀ r ∈ xs, r ∈ maximalIdeal R := fun r hr => hxs r (by simp [hr])
    have e := Submodule.quotOfListConsSMulTopEquivQuotSMulTopInner M x xs
    have hs : Module.support R (M ⧸ Ideal.ofList (x :: xs) • (⊤ : Submodule R M)) =
        Module.support R
          (QuotSMulTop x M ⧸ Ideal.ofList xs • (⊤ : Submodule R (QuotSMulTop x M))) :=
      (Module.support_subset_of_surjective e.symm.toLinearMap e.symm.surjective).antisymm
        (Module.support_subset_of_surjective e.toLinearMap e.surjective)
    have hdd : Module.supportDim R (M ⧸ Ideal.ofList (x :: xs) • (⊤ : Submodule R M)) =
        Module.supportDim R
          (QuotSMulTop x M ⧸ Ideal.ofList xs • (⊤ : Submodule R (QuotSMulTop x M))) := by
      unfold Module.supportDim
      rw [hs]
    have hdQ : Module.supportDim R
        (QuotSMulTop x M ⧸ Ideal.ofList xs • (⊤ : Submodule R (QuotSMulTop x M))) ≤ 0 := by
      rw [← hdd]
      exact h0
    have hQle : Module.supportDim R (QuotSMulTop x M) ≤ (xs.length : WithBot ℕ∞) := by
      have h3 := unm_supportDim_le_quotient_add xs (QuotSMulTop x M) hxs'
      calc Module.supportDim R (QuotSMulTop x M) ≤ _ := h3
        _ ≤ 0 + (xs.length : WithBot ℕ∞) := by
          first | gcongr
        _ = (xs.length : WithBot ℕ∞) := zero_add _
    have hlen' : Module.supportDim R M = (xs.length : WithBot ℕ∞) + 1 := by
      first
      | (rw [← hlen]; simp)
    have hlt : Module.supportDim R (QuotSMulTop x M) < Module.supportDim R M := by
      have hl : ((xs.length : ℕ) : WithBot ℕ∞) < ((xs.length + 1 : ℕ) : WithBot ℕ∞) := by
        exact_mod_cast Nat.lt_succ_self _
      rw [hlen']
      push_cast at hl
      exact lt_of_le_of_lt hQle hl
    have reg : IsSMulRegular M x := h.isSMulRegular_of_supportDim_quotSMulTop_lt hlt
    have hQ : IsCMMod R (QuotSMulTop x M) := h.quotSMulTop hx reg
    have hsd : Module.supportDim R (QuotSMulTop x M) + 1 = Module.supportDim R M := by
      first
      | exact Module.supportDim_quotSMulTop_succ_eq_supportDim reg hx
    have hlenQ : (xs.length : WithBot ℕ∞) = Module.supportDim R (QuotSMulTop x M) := by
      rw [hlen'] at hsd
      have hsd' : Module.supportDim R (QuotSMulTop x M) + 1 = ((xs.length + 1 : ℕ) : WithBot ℕ∞) := by
        rw [hsd] <;> norm_cast
      obtain ⟨m, hm1, hm2⟩ := unm_add_one_eq hsd'
      have hm : xs.length = m := by omega
      rw [hm2, hm]
    rw [RingTheory.Sequence.isRegular_cons_iff]
    exact ⟨reg, ih hQ hxs' hlenQ hdQ⟩

end ReciprocityTheory.CA
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.CommutativeAlgebra.CohenMacaulay.Unmixed =====
