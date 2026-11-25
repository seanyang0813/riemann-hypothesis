module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Development.WeilBound.CoreStatements.HodgeTatePoints.RbFund
public import Development.WeilBound.CoreStatements.HodgeTatePoints.RbProj
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusProduct
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusPowers
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterIdealPrincipalEigenStatement
public import Development.WeilBound.CoreStatements.HodgeTatePoints.RdBase
public import Development.WeilBound.CoreStatements.HodgeTatePoints.Invres
public import Development.WeilBound.CoreStatements.HodgeTatePoints.RangeSubtypeEq
public import Development.WeilBound.CoreStatements.HodgeTatePoints.RcFlag
public import Development.WeilBound.CoreStatements.HodgeTatePoints.ProdDigits
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderIdealsEqTop, Development.WeilBound.CoreStatements.HodgeTatePoints.PowCongr, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupLength, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgrROm, Development.WeilBound.CoreStatements.HodgeTatePoints.ROmVia, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderFundamentalCharacterStatement, Development.WeilBound.CoreStatements.HodgeTatePoints.RdNonunit, Development.WeilBound.CoreStatements.HodgeTatePoints.RdNonunitFin, Development.WeilBound.CoreStatements.HodgeTatePoints.RomNonunit, Development.WeilBound.CoreStatements.HodgeTatePoints.ANonunit, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupQuotient, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupGeneration

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderIdealsEqTop =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderIdealsEqTop", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RbFund\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RbProj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

theorem _root_.GlobalTheory.CompanionTheory.Relay.hopf_order_ideals_eq_top : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable F AA.carrier → ∀ (K : Submodule F N) (t : N), t ∉ K → GenAF p AA.carrier K.toAddSubgroup → ∀ χ : MulChar F R, idealX AA.carrier K t χ = ⊤ → ∃ τ : MulChar F R, IsFund p τ ∧ idealD p AA.carrier K t τ = ⊤ := by
  intro p _ C _ _ _ v R _ _ hv hp F _ _ _ _ f hc N _ _ _ _ AA hFS K t ht hGen χ hχ
  haveI : Nontrivial R := (algebraMap R C).domain_nontrivial
  have hval : ∀ g ∈ AA.carrier, ∀ x, ∃ r : R, algebraMap R C r = g x := fun g hg =>
    (show ∀ x, ∃ r : R, algebraMap R C r = g x from AA.le_int hg)
  have hle : ∀ g ∈ AA.carrier, ∀ x, v (g x) ≤ 1 := by
    intro g hg x
    obtain ⟨r, hr⟩ := hval g hg x
    rw [← hr]
    exact hv.map_le_one r
  have hpv : ∀ z ∈ pInt (C := C) R p, v z < 1 := by
    intro z hz
    unfold pInt at hz
    obtain ⟨a, rfl⟩ := Submodule.mem_span_singleton.1 hz
    rw [Algebra.smul_def, map_mul]
    exact lt_of_le_of_lt (mul_le_of_le_one_left zero_le (hv.map_le_one a)) hp
  have hinv : ∀ g, g ∈ invFun AA.carrier K.toAddSubgroup →
      g ∈ AA.carrier ∧ ∀ x, ∀ k ∈ K.toAddSubgroup, g (x + k) = g x := fun g hg => hg
  have hinvI : ∀ g, (g ∈ AA.carrier ∧ ∀ x, ∀ k ∈ K.toAddSubgroup, g (x + k) = g x) →
      g ∈ invFun AA.carrier K.toAddSubgroup := fun g hg => hg
  have hadd : ∀ g, g ∈ addFun (C := C) R p N →
      ∀ x y, g (x + y) - g x - g y ∈ pInt (C := C) R p := fun g hg => hg
  have h1 : (1 : R) ∈ idealX AA.carrier K t χ := by
    rw [hχ]
    exact Submodule.mem_top
  obtain ⟨g0, hg0, hg0e⟩ := Submodule.mem_map.1
    (show LinearMap.toSpanSingleton R (F → C) (fun a => algebraMap R C (χ a)) 1 ∈
      stepOrder AA.carrier K t from h1)
  have hg0a : ∀ a : F, g0 (a • t) = algebraMap R C (χ a) := by
    intro a
    have := congrFun hg0e a
    simpa [LinearMap.funLeft_apply, LinearMap.toSpanSingleton_apply] using this
  have hg0t : g0 t = 1 := by simpa using hg0a 1
  have hg0z : g0 0 = 0 := by
    have e := hg0a 0
    rwa [zero_smul, MulChar.map_zero, map_zero] at e
  obtain ⟨h, hA, hh⟩ : ∃ h ∈ afFun p (invFun AA.carrier K.toAddSubgroup),
      ¬ v (h t - h 0) < 1 := by
    by_contra hcon
    push Not at hcon
    have key : ∀ φ ∈ Algebra.adjoin R
        ((afFun p (invFun AA.carrier K.toAddSubgroup) : Submodule R (N → C)) : Set (N → C)),
        φ ∈ AA.carrier ∧ v (φ t - φ 0) < 1 := by
      intro φ hφ
      induction hφ using Algebra.adjoin_induction with
      | mem x hx =>
        have hx' := Submodule.mem_inf.1 (SetLike.mem_coe.1 hx)
        exact ⟨(hinv x hx'.1).1, hcon x (SetLike.mem_coe.1 hx)⟩
      | algebraMap r =>
        refine ⟨?_, ?_⟩
        · rw [Algebra.algebraMap_eq_smul_one]
          exact AA.carrier.smul_mem r AA.one_mem
        · simp
      | add x y _ _ hx hy =>
        refine ⟨AA.carrier.add_mem hx.1 hy.1, ?_⟩
        have e : (x + y) t - (x + y) 0 = (x t - x 0) + (y t - y 0) := by
          simp only [Pi.add_apply]
          ring
        rw [e]
        exact v.map_add_lt hx.2 hy.2
      | mul x y _ _ hx hy =>
        refine ⟨AA.mul_mem x y hx.1 hy.1, ?_⟩
        have e : (x * y) t - (x * y) 0 = x t * (y t - y 0) + y 0 * (x t - x 0) := by
          simp only [Pi.mul_apply]
          ring
        rw [e]
        refine v.map_add_lt ?_ ?_
        · rw [map_mul]
          exact lt_of_le_of_lt (mul_le_of_le_one_left zero_le (hle x hx.1 t)) hy.2
        · rw [map_mul]
          exact lt_of_le_of_lt (mul_le_of_le_one_left zero_le (hle y hy.1 0)) hx.2
    have hk := (key g0 ((show invFun AA.carrier K.toAddSubgroup ≤ _ from hGen) hg0)).2
    rw [hg0t, hg0z, sub_zero, map_one] at hk
    exact lt_irrefl _ hk
  have hAi := Submodule.mem_inf.1 hA
  obtain ⟨hM, hK⟩ := hinv h hAi.1
  have hAd := hadd h hAi.2
  obtain ⟨r0, hr0⟩ := hval h hM 0
  have h0p : h 0 ∈ pInt (C := C) R p := by
    have h00 := hAd 0 0
    rw [add_zero, show h 0 - h 0 - h 0 = -h 0 by ring] at h00
    simpa using (pInt (C := C) R p).neg_mem h00
  obtain ⟨h', h'apply, h'M⟩ : ∃ h' : N → C, (∀ x, h' x = h x - h 0) ∧ h' ∈ AA.carrier :=
    ⟨h - r0 • (1 : N → C), fun x => by
      show h x - (r0 • (1 : N → C)) x = h x - h 0
      rw [Pi.smul_apply, Pi.one_apply, Algebra.smul_def, mul_one, hr0],
      AA.carrier.sub_mem hM (AA.carrier.smul_mem r0 AA.one_mem)⟩
  have h'z : h' 0 = 0 := by rw [h'apply, sub_self]
  have h'inv : h' ∈ invFun AA.carrier K.toAddSubgroup :=
    hinvI h' ⟨h'M, fun x k hk => by rw [h'apply, h'apply, hK x k hk]⟩
  have h'add : h' ∈ addFun (C := C) R p N := by
    show ∀ x y, h' (x + y) - h' x - h' y ∈ pInt (C := C) R p
    intro x y
    have e : h' (x + y) - h' x - h' y = (h (x + y) - h x - h y) + h 0 := by
      rw [h'apply, h'apply, h'apply]
      ring
    rw [e]
    exact (pInt (C := C) R p).add_mem (hAd x y) h0p
  have h'af : h' ∈ afFun p AA.carrier := by
    unfold afFun
    exact Submodule.mem_inf.2 ⟨h'M, h'add⟩
  have h'aug : h' ∈ augIdeal AA.carrier := by
    unfold augIdeal
    exact Submodule.mem_inf.2 ⟨h'M, by simp [LinearMap.mem_ker, h'z]⟩
  have h't : ¬ v (h' t) < 1 := by
    rw [h'apply]
    exact hh
  obtain ⟨σ, hσ⟩ := PositivityTheory.HtPt.Rb.fund_ex p C v R hv hp F f hc
  obtain ⟨P1, P2, P3, P4, -⟩ :=
    PositivityTheory.HtPt.Rb.proj_props p C v R hv hp F f hc N AA hFS σ hσ h' h'aug
  obtain ⟨m, -, hm⟩ : ∃ m ∈ Finset.Icc 1 (p ^ f - 1), ¬ v (proj (σ ^ m) h' t) < 1 := by
    by_contra hcon
    push Not at hcon
    apply h't
    rw [P2, Finset.sum_apply]
    exact v.map_sum_lt one_ne_zero hcon
  have hτ : IsFund p (σ ^ m) := by
    by_contra hnf
    have hpf := PositivityTheory.HtPt.Rb.proj_nf p C v R hv hp F f hc N AA hFS h' h'af (σ ^ m) hnf
    exact hm (hpv _ (PositivityTheory.HtPt.Rb.mem_pFun.1 hpf t))
  refine ⟨σ ^ m, hτ, ?_⟩
  have hgE : proj (σ ^ m) h' ∈ AA.carrier ∧ ∀ (a : F) x,
      proj (σ ^ m) h' (a • x) = algebraMap R C ((σ ^ m) a) * proj (σ ^ m) h' x := P1 (σ ^ m)
  have hgI := hinv _ (P4 K h'inv (σ ^ m))
  have hgA : proj (σ ^ m) h' ∈ afFun p AA.carrier := P3 h'af (σ ^ m)
  generalize proj (σ ^ m) h' = g at hgE hgI hgA hm
  obtain ⟨u, hu⟩ := hval g hgE.1 t
  have hvu : v (algebraMap R C u) = 1 := by
    rw [hu]
    exact le_antisymm (hle g hgE.1 t) (not_lt.1 hm)
  have huU : IsUnit u := by
    refine hv.isUnit_of_one (isUnit_iff_ne_zero.2 ?_) hvu
    intro h0
    rw [h0, map_zero] at hvu
    exact zero_ne_one hvu
  have hg0' : g 0 = 0 := by
    have e := hgE.2 0 0
    rwa [zero_smul, MulChar.map_zero, map_zero, zero_mul] at e
  refine (Ideal.eq_top_iff_one _).2 ?_
  show ∃ G ∈ afFun p AA.carrier,
    (∀ (a : F) x, G (a • x) - algebraMap R C ((σ ^ m) a) * G x ∈ pInt (C := C) R p) ∧
    (∀ k ∈ K, G k ∈ pInt (C := C) R p) ∧ G t - algebraMap R C 1 ∈ pInt (C := C) R p
  refine ⟨(↑huU.unit⁻¹ : R) • g, (afFun p AA.carrier).smul_mem _ hgA, ?_, ?_, ?_⟩
  · intro a x
    have e : ((↑huU.unit⁻¹ : R) • g) (a • x) - algebraMap R C ((σ ^ m) a) *
        ((↑huU.unit⁻¹ : R) • g) x = 0 := by
      simp only [Pi.smul_apply, hgE.2 a x, Algebra.smul_def]
      ring
    rw [e]
    exact Submodule.zero_mem _
  · intro k hk
    have hgk : g k = 0 := by
      have e := hgI.2 0 k hk
      rwa [zero_add, hg0'] at e
    simp [hgk]
  · have e : ((↑huU.unit⁻¹ : R) • g) t - algebraMap R C 1 = 0 := by
      rw [Pi.smul_apply, Algebra.smul_def, ← hu, ← map_mul, huU.val_inv_mul, sub_self]
    rw [e]
    exact Submodule.zero_mem _
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderIdealsEqTop =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.PowCongr =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.PowCongr", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.DualLattices.PowMemCarrier\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace PositivityTheory.HtPt.Rd

theorem powadd : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] (v : Valuation C NNReal) (x y z : C), v x ≤ 1 → v y ≤ 1 → v (z - x - y) ≤ v (p : C) → v (z ^ p - x ^ p - y ^ p) ≤ v (p : C) := by
  intro p hp C _ v x y z hx hy h
  have hp1 : v (p : C) ≤ 1 := by
    exact natCast_mem v.integer p
  have hz : v z ≤ 1 := by
    have e : z = (z - x - y) + x + y := by ring
    rw [e]
    exact v.map_add_le (v.map_add_le (h.trans hp1) hx) hy
  let X : v.integer := ⟨x, hx⟩
  let Y : v.integer := ⟨y, hy⟩
  let Z : v.integer := ⟨z, hz⟩
  obtain ⟨r, hr⟩ := exists_add_pow_prime_eq hp.out X Y
  obtain ⟨s, hs⟩ := sub_dvd_pow_sub_pow Z (X + Y) p
  have hr' := congrArg v.integer.subtype hr
  have hs' := congrArg v.integer.subtype hs
  simp only [map_add (f := _), map_mul, map_pow, map_sub, map_natCast, Subring.subtype_apply, X, Y, Z]
    at hr' hs'
  have e : z ^ p - x ^ p - y ^ p = (z - x - y) * (s : C) + (p : C) * (x * y * (r : C)) := by
    linear_combination hr' + hs'
  rw [e]
  refine v.map_add_le ?_ ?_
  · rw [map_mul]
    exact (mul_le_of_le_one_right' (α := NNReal) s.2).trans h
  · rw [map_mul]
    refine mul_le_of_le_one_right' ?_
    rw [map_mul, map_mul]
    exact mul_le_one' (mul_le_one' hx hy) r.2

section

variable {C : Type} [Field C] {v : Valuation C NNReal} {R : Type} [CommRing R] [Algebra R C]

theorem mem_pInt [CharZero C] (hv : v.Integers R) {p : ℕ} (hp : p ≠ 0) (x : C) :
    x ∈ pInt (C := C) R p ↔ v x ≤ v (p : C) := by
  have h0 : (p : C) ≠ 0 := Nat.cast_ne_zero.2 hp
  rw [pInt, Submodule.mem_span_singleton]
  constructor
  · rintro ⟨r, rfl⟩
    rw [Algebra.smul_def, map_mul]
    exact mul_le_of_le_one_left' (hv.map_le_one r)
  · intro h
    have h1 : v (x / p) ≤ 1 := by
      rw [map_div₀]
      exact div_le_one_of_le₀ h zero_le
    obtain ⟨r, hr⟩ := hv.exists_of_le_one h1
    exact ⟨r, by rw [Algebra.smul_def, hr, div_mul_cancel₀ _ h0]⟩

theorem val_le_one (hv : v.Integers R) {N : Type} [AddCommGroup N] [Fintype N] [DecidableEq N]
    (AA : HopfOrder (C := C) R N) {g : N → C} (hg : g ∈ AA.carrier) (x : N) : v (g x) ≤ 1 := by
  obtain ⟨r, hr⟩ := AA.le_int hg x
  rw [← hr]
  exact hv.map_le_one r

theorem pow_congr (p : ℕ) [hp : Fact p.Prime] {x z : C} (hx : v x ≤ 1)
    (h : v (z - x) ≤ v (p : C)) : v (z ^ p - x ^ p) ≤ v (p : C) := by
  have := powadd p C v x 0 z hx (by simp) (by simpa using h)
  simpa [zero_pow hp.out.ne_zero] using this

end

theorem a_pow : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable (F := F) AA.carrier → ∀ (K : Submodule F N) (t : N) (τ : MulChar F R) (c : R), c ∈ idealD p AA.carrier K t τ → c ^ p ∈ idealD p AA.carrier K t (τ ^ p) := by
  intro p hp C _ _ _ v R _ _ hv hp1 F _ _ _ _ f hF N _ _ _ _ AA hst K t τ c hc
  obtain ⟨g, ⟨hg, hadd⟩, h1, h2, h3⟩ := hc
  have hp0 := hp.out.ne_zero
  have hb := val_le_one hv AA hg
  refine ⟨g ^ p, ⟨ReciprocityTheory.PGsh.Up.pow_mem_carrier AA hg p, fun x y => ?_⟩, fun a x => ?_, fun k hk => ?_, ?_⟩
  · rw [mem_pInt hv hp0]
    exact powadd p C v _ _ _ (hb x) (hb y) ((mem_pInt hv hp0 _).1 (hadd x y))
  · rw [mem_pInt hv hp0, MulChar.pow_apply' _ hp0, map_pow, Pi.pow_apply, Pi.pow_apply, ← mul_pow]
    refine pow_congr p ?_ ((mem_pInt hv hp0 _).1 (h1 a x))
    rw [map_mul]
    exact mul_le_one' (hv.map_le_one _) (hb x)
  · rw [mem_pInt hv hp0]
    have := pow_congr (v := v) p (x := 0) (z := g k) (by simp)
      (by simpa using (mem_pInt hv hp0 _).1 (h2 k hk))
    simpa [zero_pow hp0] using this
  · rw [mem_pInt hv hp0, map_pow, Pi.pow_apply]
    exact pow_congr p (hv.map_le_one _) ((mem_pInt hv hp0 _).1 h3)

end PositivityTheory.HtPt.Rd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.PowCongr =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupLength =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupLength", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.PowCongr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem idealD_pow_mem : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable F AA.carrier → ∀ (K : Submodule F N) (t : N) (τ : MulChar F R) (c : R), c ∈ idealD p AA.carrier K t τ → c ^ p ∈ idealD p AA.carrier K t (τ ^ p) :=
  @PositivityTheory.HtPt.Rd.a_pow

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupLength =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgrROm =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgrROm", "h": "module\n\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusProduct\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace PositivityTheory.Xgn.A_xgr_r_om

section
variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C] {v : Valuation C NNReal}
  {F : Type} [Field F]

theorem mem_x_ideal_iff (M : Submodule R (F → C)) (χ : MulChar F R) (r : R) :
    r ∈ xIdeal M χ ↔ (fun a => algebraMap R C (r * χ a)) ∈ M := by
  rw [xIdeal, Submodule.mem_comap, LinearMap.toSpanSingleton_apply]
  have he : (r • fun a : F => algebraMap R C (χ a)) = fun a => algebraMap R C (r * χ a) := by
    funext a
    simp [Algebra.smul_def, map_mul]
  rw [he]

theorem sq_bound (hv : v.Integers R) {X : Type} (s : Set (X → C)) (l : (X → C) →ₗ[R] C)
    (b : NNReal) (h : ∀ g ∈ s, ∀ g' ∈ s, v (l (g * g')) ≤ b) :
    ∀ g ∈ sqIdeal (Submodule.span R s), v (l g) ≤ b := by
  apply GlobalTheory.CompanionTheory.Ar.GR.ROm.sq_bound <;> assumption

variable [Fintype F] [DecidableEq F]

end

theorem digits {p f m : ℕ} (h1 : 1 ≤ m) (h2 : m < p ^ f) :
    ∃ d : Fin f → Fin p, (∃ n, (d n : ℕ) ≠ 0) ∧ ∑ n : Fin f, (d n : ℕ) * p ^ (n : ℕ) = m := by
  apply GlobalTheory.CompanionTheory.Ar.GR.ROm.digits <;> assumption

end PositivityTheory.Xgn.A_xgr_r_om
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgrROm =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.ROmVia =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.ROmVia", "h": "module\n\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RbProj\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XXgrROm\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusPowers\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusProduct\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace PositivityTheory.HtPt.Rom

private theorem prime_pow_le_sum_mul_pow_of_modEq (p f n : ℕ) (hp : p.Prime) (hf : 1 ≤ f) (e : Fin f → ℕ) (he : 2 ≤ ∑ i, e i)
    (hc : ∑ i, e i * p ^ (i : ℕ) ≡ p ^ (n + 1) [MOD p ^ f - 1]) :
    p ^ f ≤ ∑ i : Fin f, e i * p ^ (f - 1 - (n + f - i) % f) := by
  have hp2 := hp.two_le
  have hq : 2 ≤ p ^ f := le_trans hp2 (by
    calc p = p ^ 1 := (pow_one p).symm
      _ ≤ p ^ f := Nat.pow_le_pow_right (by omega) hf)
  set M := p ^ f - 1 with hM
  set S := ∑ i : Fin f, e i * p ^ (f - 1 - (n + f - i) % f) with hS
  have hpf : (p : ZMod M) ^ f = 1 := by
    have h1 : p ^ f ≡ 1 [MOD M] := Nat.modEq_sub (by omega)
    have := (ZMod.natCast_eq_natCast_iff _ _ _).2 h1
    push_cast at this
    exact this
  have hcop : Nat.Coprime M (p ^ (n + 1)) := by
    apply Nat.Coprime.pow_right
    rw [Nat.coprime_comm, hp.coprime_iff_not_dvd]
    intro hd
    have h2 : p ∣ p ^ f := dvd_pow_self p (by omega)
    have h3 : p ∣ p ^ f - (p ^ f - 1) := Nat.dvd_sub h2 hd
    have h4 : p ^ f - (p ^ f - 1) = 1 := by omega
    rw [h4] at h3
    exact hp.one_lt.ne' (Nat.dvd_one.1 h3)
  have hmul : p ^ (n + 1) * S ≡ p ^ (n + 1) * 1 [MOD M] := by
    rw [mul_one]
    refine Nat.ModEq.trans ?_ hc
    rw [← ZMod.natCast_eq_natCast_iff]
    push_cast
    rw [hS]
    push_cast
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    have hi := i.isLt
    have hdm := Nat.div_add_mod (n + f - i) f
    have hr := Nat.mod_lt (n + f - i) (by omega : f > 0)
    have hexp : n + 1 + (f - 1 - (n + f - i) % f) = (i : ℕ) + f * ((n + f - i) / f) := by omega
    rw [mul_left_comm, ← pow_add, hexp, pow_add, pow_mul, hpf, one_pow, mul_one]
  have hS1 : S ≡ 1 [MOD M] := Nat.ModEq.cancel_left_of_coprime hcop hmul
  have hS2 : 2 ≤ S := by
    refine le_trans he (Finset.sum_le_sum (fun i _ => ?_))
    exact Nat.le_mul_of_pos_right _ (pow_pos (by omega) _)
  by_contra hlt
  push_neg at hlt
  unfold Nat.ModEq at hS1
  rcases Nat.lt_or_ge S M with h | h
  · rw [Nat.mod_eq_of_lt h] at hS1
    rw [Nat.mod_eq_of_lt (by omega)] at hS1
    omega
  · have : S = M := by omega
    rw [this, Nat.mod_self, Nat.mod_eq_of_lt (by omega)] at hS1
    omega

private theorem prod_pow_le_pow_of_frobenius_le (p f n : ℕ) (hp : 1 ≤ p) (hf : 1 ≤ f) (a : ℕ → NNReal) (h1 : ∀ m, a m ≤ 1)
    (hs : ∀ m, a m ^ p ≤ a (m + 1)) (hper : ∀ m, a (m % f) = a m) (e : Fin f → ℕ)
    (hS : p ^ f ≤ ∑ i : Fin f, e i * p ^ (f - 1 - (n + f - i) % f)) :
    ∏ i : Fin f, a i ^ e i ≤ a n ^ p := by
  have hit : ∀ t m, a m ^ (p ^ t) ≤ a (m + t) := by
    intro t
    induction t with
    | zero => intro m; simp
    | succ t ih =>
      intro m
      rw [pow_succ, pow_mul]
      calc (a m ^ p ^ t) ^ p ≤ a (m + t) ^ p := pow_le_pow_left₀ (zero_le) (ih m) p
        _ ≤ a (m + t + 1) := hs _
        _ = a (m + (t + 1)) := by rw [add_assoc]
  have hi : ∀ i : Fin f, a i ^ p ^ ((n + f - i) % f) ≤ a n := by
    intro i
    refine le_trans (hit _ _) (le_of_eq ?_)
    have hil := i.isLt
    have hmod : ((i : ℕ) + (n + f - i) % f) % f = n % f := by
      have h2 : (i : ℕ) + (n + f - i) % f ≡ (i : ℕ) + (n + f - i) [MOD f] :=
        Nat.ModEq.add_left _ (Nat.mod_modEq _ _)
      have h3 : (i : ℕ) + (n + f - i) = n + f := by omega
      rw [h3] at h2
      unfold Nat.ModEq at h2
      rw [h2, Nat.add_mod_right]
    rw [← hper, hmod, hper]
  have hP : p ^ (f - 1) ≠ 0 := pow_ne_zero _ (by omega)
  rw [← pow_le_pow_iff_left₀ (zero_le) (zero_le) hP, ← Finset.prod_pow]
  calc ∏ i : Fin f, (a i ^ e i) ^ p ^ (f - 1)
      ≤ ∏ i : Fin f, a n ^ (e i * p ^ (f - 1 - (n + f - i) % f)) := by
        refine Finset.prod_le_prod' (fun i _ => ?_)
        have hil := i.isLt
        have hr := Nat.mod_lt (n + f - i) (by omega : f > 0)
        have hsplit : p ^ (f - 1) = p ^ ((n + f - i) % f) * p ^ (f - 1 - (n + f - i) % f) := by
          rw [← pow_add]; congr 1; omega
        rw [← pow_mul, hsplit, mul_left_comm, pow_mul]
        exact pow_le_pow_left₀ (zero_le) (hi i) _
    _ = a n ^ (∑ i : Fin f, e i * p ^ (f - 1 - (n + f - i) % f)) := Finset.prod_pow_eq_pow_sum _ _ _
    _ ≤ a n ^ (p ^ f) := pow_le_pow_of_le_one (zero_le) (h1 n) hS
    _ = (a n ^ p) ^ p ^ (f - 1) := by
        rw [← pow_mul, ← pow_succ']; congr 2; omega

open PositivityTheory.Xgn.A_xgr_r_om PositivityTheory.HtPt.Rb in
theorem r_om_of (h : type_of% @_root_.GlobalTheory.CompanionTheory.Relay.fundamental_ideal_frobenius_powers) : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (AA : HopfOrder (C := C) R F), FStable F AA.carrier → ∀ σ : MulChar F R, IsFund p σ → ∀ c : ℕ → R, (∀ n, xIdeal AA.carrier (σ ^ p ^ n) = Ideal.span {c n}) → ∀ n, (∀ r : R, (fun a => algebraMap R C (r * (σ ^ p ^ (n + 1)) a)) ∈ sqIdeal (augIdeal AA.carrier) ↔ r ∈ Ideal.span {c n ^ p}) ∧ (∃ δ : R, c n ^ p = δ * c (n + 1)) ∧ ∀ δ : R, c n ^ p = δ * c (n + 1) → HasLen v R (OmType AA.carrier (σ ^ p ^ (n + 1))) (v (algebraMap R C δ)) := by
  intro p hpp C _ _ _ v R _ _ hv hp F _ _ _ _ f hcard AA hst σ hσ c hc n
  have hpr : p.Prime := hpp.out
  have hp2 := hpr.two_le
  obtain ⟨hord, -, -, -, -⟩ := GlobalTheory.CompanionTheory.Ar.GR.FundGen.main p C v R hv hp F f hcard σ hσ
  obtain ⟨hval, hprod⟩ := h p C v R hv hp F f hcard AA hst σ hσ c hc
  haveI : IsDomain R := Function.Injective.isDomain (algebraMap R C) hv.hom_inj
  have hf1 : 1 ≤ f := by
    rcases Nat.eq_zero_or_pos f with h0 | h0
    · have h1 := Fintype.one_lt_card (α := F)
      rw [hcard, h0, pow_zero] at h1
      omega
    · exact h0
  obtain ⟨hcardne, w, hw⟩ := exists_inv_card (F := F) hv hp hcard
  have hvp : v (p : C) ≠ 0 := by
    rw [Ne, Valuation.zero_iff]
    exact_mod_cast hpr.ne_zero
  have hcne : ∀ m, c m ≠ 0 := by
    intro m hm
    have h1 := (hval m)
    rw [hm, map_zero, map_zero, zero_pow (by omega)] at h1
    exact hvp (le_antisymm h1 (zero_le))
  have hstep : ∀ m, c m ^ p ∈ Ideal.span {c (m + 1)} := by
    intro m
    rw [← hc (m + 1), mem_x_ideal_iff]
    have h1 := GlobalTheory.CompanionTheory.Ar.GR.ROm.pow_mem_sq AA (σ ^ p ^ m) (c := c m) (by rw [hc]; exact Ideal.mem_span_singleton_self _) (k := p) hp2
    rw [← pow_mul, ← pow_succ] at h1
    exact GlobalTheory.CompanionTheory.Ar.GR.ROm.sq_le AA h1
  have hper : ∀ m, σ ^ p ^ (m % f) = σ ^ p ^ m := by
    intro m
    rw [pow_eq_pow_iff_modEq, hord, ← ZMod.natCast_eq_natCast_iff]
    have h1 : p ^ f ≡ 1 [MOD p ^ f - 1] := Nat.modEq_sub (Nat.one_le_pow _ _ (by omega))
    have h2 := (ZMod.natCast_eq_natCast_iff _ _ _).2 h1
    push_cast at h2 ⊢
    conv_rhs => rw [← Nat.mod_add_div m f, pow_add, pow_mul, h2, one_pow, mul_one]
  set a : ℕ → NNReal := fun m => v (algebraMap R C (c m)) with ha
  have ha1 : ∀ m, a m ≤ 1 := fun m => hv.map_le_one _
  have has : ∀ m, a m ^ p ≤ a (m + 1) := by
    intro m
    have h1 := hv.le_of_dvd (Ideal.mem_span_singleton.1 (hstep m))
    simp only [ha, map_pow] at h1 ⊢
    exact h1
  have haper : ∀ m, a (m % f) = a m := by
    intro m
    exact GlobalTheory.CompanionTheory.Ar.GR.ROm.v_eq_of_span hv (by rw [← hc, ← hc, hper])
  have hE : ∀ m, 1 ≤ m → m ≤ p ^ f - 1 → ∀ e ∈ eig AA.carrier (σ ^ m), ∃ d : Fin f → Fin p,
      (∃ i, (d i : ℕ) ≠ 0) ∧ ∑ i : Fin f, (d i : ℕ) * p ^ (i : ℕ) = m ∧
      v (e 1) ≤ ∏ i : Fin f, a i ^ (d i : ℕ) := by
    intro m hm1 hm2 e he
    have he' : e ∈ AA.carrier ∧ ∀ (x : F) (y : F), e (x • y) = algebraMap R C ((σ ^ m) x) * e y := he
    obtain ⟨d, hd0, hdm⟩ := digits (p := p) (f := f) hm1 (by have := Nat.one_le_pow f p (by omega); omega)
    refine ⟨d, hd0, hdm, ?_⟩
    obtain ⟨t, ht⟩ := AA.le_int he'.1 1
    have hfun : (fun x : F => algebraMap R C (t * (σ ^ m) x)) = e := by
      funext x
      have := he'.2 x 1
      rw [smul_eq_mul, mul_one] at this
      rw [this, ← ht, map_mul, mul_comm]
    have htm : t ∈ xIdeal AA.carrier (σ ^ m) := by
      rw [mem_x_ideal_iff, hfun]; exact he'.1
    rw [← hdm, hprod d hd0] at htm
    rw [← ht]
    refine le_trans (GlobalTheory.CompanionTheory.Ar.GR.ROm.v_le_of_mem hv htm) (le_of_eq ?_)
    simp only [ha, map_prod, map_pow]
  set χ : MulChar F R := σ ^ p ^ (n + 1) with hχdef
  set L : (F → C) →ₗ[R] C := (LinearMap.proj (R := R) (φ := fun _ : F => C) (1 : F)).comp (projL χ) with hL
  have hLapp : ∀ g, L g = proj χ g 1 := by
    intro g; simp [hL, projL_apply]
  have hbound : ∀ g ∈ augIdeal AA.carrier, ∀ g' ∈ augIdeal AA.carrier, v (L (g * g')) ≤ a n ^ p := by
    intro g hg g' hg'
    obtain ⟨hPg, hsum, -⟩ := proj_props p C v R hv hp F f hcard F AA hst σ hσ g hg
    obtain ⟨hPg', hsum', -⟩ := proj_props p C v R hv hp F f hcard F AA hst σ hσ g' hg'
    have hgg : g * g' = ∑ m ∈ Finset.Icc 1 (p ^ f - 1), ∑ m' ∈ Finset.Icc 1 (p ^ f - 1),
        proj (σ ^ m) g * proj (σ ^ m') g' := by
      conv_lhs => rw [hsum, hsum']
      rw [Finset.sum_mul_sum]

    rw [hgg, map_sum]
    refine Valuation.map_sum_le _ (fun m hm => ?_)

    rw [map_sum]
    refine Valuation.map_sum_le _ (fun m' hm' => ?_)
    rw [Finset.mem_Icc] at hm hm'
    have e1 : proj (σ ^ m) g ∈ AA.carrier ∧ ∀ (x : F) (y : F), proj (σ ^ m) g (x • y) = algebraMap R C ((σ ^ m) x) * proj (σ ^ m) g y := hPg (σ ^ m)
    have e2 : proj (σ ^ m') g' ∈ AA.carrier ∧ ∀ (x : F) (y : F), proj (σ ^ m') g' (x • y) = algebraMap R C ((σ ^ m') x) * proj (σ ^ m') g' y := hPg' (σ ^ m')
    have heig : ∀ (x : F) (y : F), (proj (σ ^ m) g * proj (σ ^ m') g') (x • y) =
        algebraMap R C ((σ ^ m * σ ^ m') x) * (proj (σ ^ m) g * proj (σ ^ m') g') y := by
      intro x y
      simp only [Pi.mul_apply, e1.2, e2.2, MulChar.mul_apply, map_mul]
      ring
    by_cases hχ : σ ^ m * σ ^ m' = χ
    · rw [hLapp, proj_eigen_self hcardne χ _ (by rw [← hχ]; exact heig), Pi.mul_apply, map_mul]
      obtain ⟨d, hd0, hdm, hdv⟩ := hE m hm.1 hm.2 _ (hPg (σ ^ m))
      obtain ⟨d', hd0', hdm', hdv'⟩ := hE m' hm'.1 hm'.2 _ (hPg' (σ ^ m'))
      refine le_trans (mul_le_mul' hdv hdv') ?_
      rw [← Finset.prod_mul_distrib]
      simp only [← pow_add]
      refine prod_pow_le_pow_of_frobenius_le p f n (by omega) hf1 a ha1 has haper (fun i => (d i : ℕ) + d' i) ?_
      refine prime_pow_le_sum_mul_pow_of_modEq p f n hpr hf1 _ ?_ ?_
      · obtain ⟨i, hi⟩ := hd0
        obtain ⟨i', hi'⟩ := hd0'
        rw [Finset.sum_add_distrib]
        have h1 := Finset.single_le_sum (f := fun j => ((d j : Fin p) : ℕ)) (fun j _ => Nat.zero_le _) (Finset.mem_univ i)
        have h2 := Finset.single_le_sum (f := fun j => ((d' j : Fin p) : ℕ)) (fun j _ => Nat.zero_le _) (Finset.mem_univ i')
        omega
      · simp only [add_mul, Finset.sum_add_distrib, hdm, hdm']
        rw [← hord, ← pow_eq_pow_iff_modEq, pow_add, hχ]
    · rw [hLapp, proj_eigen_ne (Ne.symm hχ) _ heig]
      simp
  have hsqn : (fun x : F => algebraMap R C (c n ^ p * χ x)) ∈ sqIdeal (augIdeal AA.carrier) := by
    have h1 := GlobalTheory.CompanionTheory.Ar.GR.ROm.pow_mem_sq AA (σ ^ p ^ n) (c := c n) (by rw [hc]; exact Ideal.mem_span_singleton_self _) (k := p) hp2
    rw [← pow_mul, ← pow_succ] at h1
    exact h1
  have hP1 : ∀ r : R, (fun x : F => algebraMap R C (r * χ x)) ∈ sqIdeal (augIdeal AA.carrier) ↔
      r ∈ Ideal.span {c n ^ p} := by
    intro r
    constructor
    · intro hr
      have h1 := sq_bound hv (augIdeal AA.carrier : Set (F → C)) L (a n ^ p)
        (fun g hg g' hg' => hbound g hg g' hg') _ (by rwa [Submodule.span_eq])
      rw [hLapp, proj_eigen_self hcardne χ _ (fun x y => GlobalTheory.CompanionTheory.Ar.GR.ROm.eig_fun χ r x y), MulChar.map_one, mul_one] at h1
      rw [Ideal.mem_span_singleton]
      refine hv.dvd_of_le ?_
      simpa [ha, map_pow] using h1
    · intro hr
      obtain ⟨s, rfl⟩ := Ideal.mem_span_singleton'.1 hr
      have : (fun x : F => algebraMap R C (s * c n ^ p * χ x)) = s • (fun x : F => algebraMap R C (c n ^ p * χ x)) := by
        funext x; simp [Algebra.smul_def, mul_assoc]
      rw [this]
      exact Submodule.smul_mem _ _ hsqn
  refine ⟨hP1, ?_, ?_⟩
  · obtain ⟨δ, hδ⟩ := Ideal.mem_span_singleton'.1 (hstep n)
    exact ⟨δ, hδ.symm⟩
  · intro δ hδ
    set e0 : F → C := fun x => algebraMap R C (c (n + 1) * χ x) with he0def
    have he0 : e0 ∈ eig AA.carrier χ := by
      show e0 ∈ AA.carrier ∧ ∀ (x y : F), e0 (x • y) = algebraMap R C (χ x) * e0 y
      exact ⟨(mem_x_ideal_iff _ _ _).1 (by rw [hc]; exact Ideal.mem_span_singleton_self _),
        fun x y => GlobalTheory.CompanionTheory.Ar.GR.ROm.eig_fun χ _ x y⟩
    let φ : R →ₗ[R] OmType AA.carrier χ :=
      (Submodule.mkQ _).comp (LinearMap.toSpanSingleton R _ (⟨e0, he0⟩ : eig AA.carrier χ))
    have hφ : ∀ r, φ r = Submodule.Quotient.mk (r • (⟨e0, he0⟩ : eig AA.carrier χ)) := fun r => rfl
    refine GlobalTheory.CompanionTheory.Ar.GR.ROm.hasLen_quot v φ ?_ δ ?_
    · intro x
      induction x using Submodule.Quotient.induction_on with
      | H y =>
        obtain ⟨y, hy⟩ := y
        have hy' : y ∈ AA.carrier ∧ ∀ (x z : F), y (x • z) = algebraMap R C (χ x) * y z := hy
        obtain ⟨t, ht⟩ := AA.le_int hy'.1 1
        have hfun : (fun x : F => algebraMap R C (t * χ x)) = y := by
          funext x
          have := hy'.2 x 1
          rw [smul_eq_mul, mul_one] at this
          rw [this, ← ht, map_mul, mul_comm]
        have htm : t ∈ xIdeal AA.carrier χ := by
          rw [mem_x_ideal_iff, hfun]; exact hy'.1
        rw [hc] at htm
        obtain ⟨s, rfl⟩ := Ideal.mem_span_singleton'.1 htm
        refine ⟨s, ?_⟩
        rw [hφ]
        congr 1
        apply Subtype.ext
        show ((s • (⟨e0, he0⟩ : eig AA.carrier χ) : eig AA.carrier χ) : F → C) = y
        rw [← hfun]
        funext x
        simp [he0def, Algebra.smul_def, mul_assoc]
    · ext r
      rw [LinearMap.mem_ker, hφ, Submodule.Quotient.mk_eq_zero, Submodule.mem_comap]
      have hfun : ((r • (⟨e0, he0⟩ : eig AA.carrier χ) : eig AA.carrier χ) : F → C) =
          (fun x : F => algebraMap R C (r * c (n + 1) * χ x)) := by
        funext x
        simp [he0def, Algebra.smul_def, mul_assoc]
      rw [Submodule.subtype_apply, hfun, hP1, hδ, Ideal.mem_span_singleton, Ideal.mem_span_singleton,
        mul_dvd_mul_iff_right (hcne (n + 1))]

end PositivityTheory.HtPt.Rom
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.ROmVia =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderFundamentalCharacterStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderFundamentalCharacterStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RbProj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderFundamentalCharacterStatement =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RdNonunit =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.RdNonunit", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterIdealPrincipalEigenStatement\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RdBase\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusProduct\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderFundamentalCharacterStatement\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.Invres\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RangeSubtypeEq\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RcFlag\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace PositivityTheory.HtPt.Rd

section

variable {C : Type} [Field C] {R : Type} [CommRing R] [Algebra R C]

theorem sq_le_aug {X : Type} [AddCommGroup X] {M : Submodule R (X → C)}
    (hmul : ∀ a ∈ M, ∀ b ∈ M, a * b ∈ M) : sqIdeal (augIdeal M) ≤ augIdeal M := by
  rw [sqIdeal, Submodule.span_le]
  rintro _ ⟨a, ha, b, hb, rfl⟩
  refine mem_aug.2 ⟨hmul a ha.1 b hb.1, ?_⟩
  rw [Pi.mul_apply, (mem_aug.1 ha).2, zero_mul]

theorem adjoin_decomp (p : ℕ) {N : Type} [AddCommGroup N] {M : Submodule R (N → C)}
    (hone : (1 : N → C) ∈ M) (hmul : ∀ a ∈ M, ∀ b ∈ M, a * b ∈ M) (hint : M ≤ intFun R N)
    {g : N → C} (hg : g ∈ Algebra.adjoin R ((afFun p M : Submodule R (N → C)) : Set (N → C))) :
    ∃ r : R, ∃ h ∈ afFun p M ⊓ augIdeal M, ∃ w ∈ sqIdeal (augIdeal M),
      g = r • (1 : N → C) + h + w := by
  induction hg using Algebra.adjoin_induction with
  | mem g hg =>
    obtain ⟨hg, hadd⟩ := hg
    obtain ⟨r, hr⟩ := hint hg 0
    have hval : ∀ x, (g - r • (1 : N → C)) x = g x - g 0 := fun x => by
      simp [Algebra.smul_def, hr]
    have hm : g - r • (1 : N → C) ∈ M := M.sub_mem hg (M.smul_mem r hone)
    refine ⟨r, g - r • (1 : N → C), ⟨⟨hm, fun x y => ?_⟩, mem_aug.2 ⟨hm, ?_⟩⟩, 0,
      Submodule.zero_mem _, by abel⟩
    · have := Submodule.sub_mem _ (hadd x y) (hadd 0 0)
      convert this using 1
      simp only [hval, add_zero]; ring
    · rw [hval, sub_self]
  | algebraMap r =>
    exact ⟨r, 0, Submodule.zero_mem _, 0, Submodule.zero_mem _, by
      rw [add_zero, add_zero, Algebra.algebraMap_eq_smul_one]⟩
  | add a b _ _ ha hb =>
    obtain ⟨r, h, hh, w, hw, rfl⟩ := ha
    obtain ⟨r', h', hh', w', hw', rfl⟩ := hb
    exact ⟨r + r', h + h', Submodule.add_mem _ hh hh', w + w', Submodule.add_mem _ hw hw', by
      rw [add_smul]; abel⟩
  | mul a b _ _ ha hb =>
    obtain ⟨r, h, hh, w, hw, rfl⟩ := ha
    obtain ⟨r', h', hh', w', hw', rfl⟩ := hb
    refine ⟨r * r', r • h' + r' • h,
      Submodule.add_mem _ (Submodule.smul_mem _ _ hh') (Submodule.smul_mem _ _ hh),
      r • w' + r' • w + (h + w) * (h' + w'),
      Submodule.add_mem _ (Submodule.add_mem _ (Submodule.smul_mem _ _ hw')
        (Submodule.smul_mem _ _ hw)) (Submodule.subset_span
          ⟨h + w, Submodule.add_mem _ hh.2 (sq_le_aug hmul hw),
            h' + w', Submodule.add_mem _ hh'.2 (sq_le_aug hmul hw'), rfl⟩), ?_⟩
    simp only [Algebra.smul_def, map_mul]
    ring

variable {F : Type} [Field F] [Fintype F] [DecidableEq F] {N : Type} [AddCommGroup N] [Module F N]

theorem proj_add (χ : MulChar F R) (g h : N → C) (x : N) :
    proj χ (g + h) x = proj χ g x + proj χ h x := by
  simp only [proj, Pi.add_apply, mul_add, Finset.sum_add_distrib]

theorem proj_line (χ : MulChar F R) (g : N → C) (t : N) :
    proj χ (g ∘ LinearMap.toSpanSingleton F N t) 1 = proj χ g t := by
  simp [proj]

theorem proj_self [CharZero C] (χ : MulChar F R) (g : N → C) (t : N) (c : R)
    (hg : ∀ a : F, g (a • t) = algebraMap R C (c * χ a)) : proj χ g t = algebraMap R C c := by
  have h1 : ∀ a : Fˣ, algebraMap R C (χ⁻¹ (a : F)) * g ((a : F) • t) = algebraMap R C c := by
    intro a
    have : χ⁻¹ (a : F) * χ a = 1 := by
      rw [← MulChar.mul_apply, inv_mul_cancel, MulChar.one_apply_coe]
    rw [hg, ← map_mul, mul_left_comm, this, mul_one]
  have h0 : (Fintype.card Fˣ : C) ≠ 0 := Nat.cast_ne_zero.2 Fintype.card_ne_zero
  simp only [proj, h1, Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
  rw [← mul_assoc, inv_mul_cancel₀ h0, one_mul]

end

theorem a_nonunit_of (hproj : type_of% @PositivityTheory.HtPt.Rb.proj_props) (hstep : type_of% @_root_.PositivityTheory.HtPt.Rc.step)
    (hom : type_of% @_root_.GlobalTheory.CompanionTheory.Relay.fundamental_ideal_frobenius_product) : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable F AA.carrier → ∀ (K : Submodule F N) (t : N), t ∉ K → GenAF p AA.carrier K.toAddSubgroup → ∀ τ : MulChar F R, IsFund p τ → ∀ c' c : R, idealX AA.carrier K t τ = Ideal.span {c'} → idealX AA.carrier K t (τ ^ p) = Ideal.span {c} → v (algebraMap R C c') ^ p < v (algebraMap R C c) → c ∈ idealD p AA.carrier K t (τ ^ p) := by
  intro p hp C _ _ _ v R _ _ hv hp1 F _ _ _ _ f hF N _ _ _ _ AA hst K t ht hgen τ hτ c' c hc' hc hlt
  obtain ⟨⟨S, hS, hSst⟩, -⟩ := hstep p C v R hv hp1 F f hF N AA hst K t ht
  have hprin := _root_.GlobalTheory.CompanionTheory.Ar.GR.eig_rank_one p C v R hv hp1 F f hF S hSst
  choose cc hcc0 hcc using fun χ => (hprin χ).1
  have hcm : c ∈ idealX AA.carrier K t (τ ^ p) := by rw [hc]; exact Ideal.mem_span_singleton_self c
  obtain ⟨g₀, hg₀, e₀⟩ := hcm
  have e1 : ∀ a : F, g₀ (a • t) = algebraMap R C (c * (τ ^ p) a) := fun a => by
    have := congrFun e₀ a
    simpa [LinearMap.funLeft_apply, Algebra.smul_def] using this
  have hmul : ∀ a ∈ invFun AA.carrier K.toAddSubgroup, ∀ b ∈ invFun AA.carrier K.toAddSubgroup,
      a * b ∈ invFun AA.carrier K.toAddSubgroup := fun a ha b hb =>
    ⟨AA.mul_mem a b ha.1 hb.1, fun x k hk => by
      rw [Pi.mul_apply, Pi.mul_apply, ha.2 x k hk, hb.2 x k hk]⟩
  obtain ⟨r, h, ⟨hh, hh0⟩, w, hw, e⟩ := adjoin_decomp p (M := invFun AA.carrier K.toAddSubgroup)
    ⟨AA.one_mem, fun _ _ _ => rfl⟩ hmul (fun a ha => AA.le_int ha.1) (hgen hg₀)
  have hw0 := (mem_aug.1 (sq_le_aug hmul hw)).2
  have hr : r • (1 : N → C) = 0 := by
    have h1 := congrFun e 0
    have h2 := e1 0
    rw [zero_smul, MulChar.map_zero, mul_zero, map_zero] at h2
    rw [h2, Pi.add_apply, Pi.add_apply, (mem_aug.1 hh0).2, hw0, add_zero, add_zero] at h1
    funext x
    exact h1.symm
  rw [hr, zero_add] at e
  have hwS : w ∘ LinearMap.toSpanSingleton F N t ∈ sqIdeal (augIdeal S.carrier) :=
    sq_pull _ (fun g hg => by rw [hS]; exact ⟨g, hg, rfl⟩) hw
  have hwS' := sq_le_aug (fun a ha b hb => S.mul_mem a b ha hb) hwS
  obtain ⟨w1, -, -, -, w5⟩ := hproj p C v R hv hp1 F f hF F S hSst τ hτ _ hwS'
  obtain ⟨ρ, -, hρ⟩ := ((hprin (τ ^ p)).2 _).1 (w1 (τ ^ p))
  have hρ1 := w5 hwS (τ ^ p)
  have hρ2 : ρ ∈ Ideal.span {cc (τ ^ p ^ 0) ^ p} := by
    refine ((hom p C v R hv hp1 F f hF S hSst τ hτ (fun n => cc (τ ^ p ^ n)) (fun n => hcc _)
      0).1 ρ).1 ?_
    rw [zero_add, pow_one, ← hρ]
    exact hρ1
  have hcc' : cc (τ ^ p ^ 0) ∈ Ideal.span {c'} := by
    rw [← hc', idealX, ← hS, pow_zero, pow_one, hcc]
    exact Ideal.mem_span_singleton_self _
  have hρ3 : v (algebraMap R C ρ) < v (algebraMap R C c) := by
    refine lt_of_le_of_lt ?_ hlt
    rw [← map_pow, ← map_pow]
    exact hv.le_of_dvd ((pow_dvd_pow_of_dvd (Ideal.mem_span_singleton.1 hcc') p).trans
      (Ideal.mem_span_singleton.1 hρ2))
  have hwt : proj (τ ^ p) w t = algebraMap R C ρ := by
    rw [← proj_line, hρ]
    simp
  have hht : proj (τ ^ p) h t = algebraMap R C (c - ρ) := by
    have := proj_self (τ ^ p) g₀ t c e1
    rw [e, proj_add, hwt] at this
    rw [map_sub, ← this, add_sub_cancel_right]
  obtain ⟨q1, -, q3, q4, -⟩ := hproj p C v R hv hp1 F f hF N AA hst τ hτ h
    (mem_aug.2 ⟨hh.1.1, (mem_aug.1 hh0).2⟩)
  have hD : c - ρ ∈ idealD p AA.carrier K t (τ ^ p) := by
    refine ⟨proj (τ ^ p) h, q3 ⟨hh.1.1, hh.2⟩ _, fun a x => ?_, fun k hk => ?_, ?_⟩
    · rw [(q1 (τ ^ p)).2 a x, sub_self]; exact Submodule.zero_mem _
    · have := (q4 K hh.1 (τ ^ p)).2 0 k hk
      rw [zero_add, eig_zero (q1 (τ ^ p))] at this
      rw [this]; exact Submodule.zero_mem _
    · rw [hht, sub_self]; exact Submodule.zero_mem _
  have hdvd : c - ρ ∣ c := by
    apply hv.dvd_of_le
    rw [map_sub, v.map_sub_eq_of_lt_left hρ3]
  exact Ideal.mem_of_dvd _ hdvd hD

end PositivityTheory.HtPt.Rd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RdNonunit =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RdNonunitFin =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.RdNonunitFin", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RcFlag\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RdNonunit\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusProduct\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.RbProj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace PositivityTheory.HtPt.Rd

theorem a_nonunit_rom_of (hom : type_of% @_root_.GlobalTheory.CompanionTheory.Relay.fundamental_ideal_frobenius_product) : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable F AA.carrier → ∀ (K : Submodule F N) (t : N), t ∉ K → GenAF p AA.carrier K.toAddSubgroup → ∀ τ : MulChar F R, IsFund p τ → ∀ c' c : R, idealX AA.carrier K t τ = Ideal.span {c'} → idealX AA.carrier K t (τ ^ p) = Ideal.span {c} → v (algebraMap R C c') ^ p < v (algebraMap R C c) → c ∈ idealD p AA.carrier K t (τ ^ p) :=
  a_nonunit_of @PositivityTheory.HtPt.Rb.proj_props @PositivityTheory.HtPt.Rc.step hom

end PositivityTheory.HtPt.Rd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RdNonunitFin =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RomNonunit =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.RomNonunit", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.ROmVia\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RdNonunitFin\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusPowers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace PositivityTheory.HtPt.Rom

theorem a_nonunit_of (h : type_of% @_root_.GlobalTheory.CompanionTheory.Relay.fundamental_ideal_frobenius_powers) : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable F AA.carrier → ∀ (K : Submodule F N) (t : N), t ∉ K → GenAF p AA.carrier K.toAddSubgroup → ∀ τ : MulChar F R, IsFund p τ → ∀ c' c : R, idealX AA.carrier K t τ = Ideal.span {c'} → idealX AA.carrier K t (τ ^ p) = Ideal.span {c} → v (algebraMap R C c') ^ p < v (algebraMap R C c) → c ∈ idealD p AA.carrier K t (τ ^ p) :=
  PositivityTheory.HtPt.Rd.a_nonunit_rom_of (@r_om_of h)

end PositivityTheory.HtPt.Rom
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.RomNonunit =====

-- ===== clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.ANonunit =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HodgeTatePoints.ANonunit", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.ProdDigits\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.RomNonunit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace PositivityTheory.HtPt.Rfin

theorem a_nonunit : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable F AA.carrier → ∀ (K : Submodule F N) (t : N), t ∉ K → GenAF p AA.carrier K.toAddSubgroup → ∀ τ : MulChar F R, IsFund p τ → ∀ c' c : R, idealX AA.carrier K t τ = Ideal.span {c'} → idealX AA.carrier K t (τ ^ p) = Ideal.span {c} → v (algebraMap R C c') ^ p < v (algebraMap R C c) → c ∈ idealD p AA.carrier K t (τ ^ p) :=
  Rom.a_nonunit_of @Pmono.r_mono

end PositivityTheory.HtPt.Rfin
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HodgeTatePoints.ANonunit =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupQuotient =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupQuotient", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.ANonunit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

alias _root_.GlobalTheory.CompanionTheory.Relay.stable_hopf_order_subgroup_quotient := _root_.PositivityTheory.HtPt.Rfin.a_nonunit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupQuotient =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupGeneration =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupGeneration", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.StepOrderRes\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterIdealPrincipalEigenStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FundamentalIdealFrobeniusProduct\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HopfOrderIdealsEqTop\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupLength\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupQuotient\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.Invres\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.RangeSubtypeEq\nimport Development.WeilBound.CoreStatements.HodgeTatePoints.RcFlag\nimport Mathlib.Basic.NNReal.Defs\nimport Mathlib.NumberTheory.MulChar.Basic\nimport Mathlib.RingTheory.Valuation.Integers\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TeichmullerCharacterOrderGenerates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.PGsh.L2 ReciprocityTheory.PGsh.Up GlobalTheory.CompanionTheory.Ar.GR
open scoped Matrix

namespace GlobalTheory.CompanionTheory.Ar.GR

theorem idealX_le_idealD : ∀ (p : ℕ) [Fact p.Prime] (C : Type) [Field C] [IsAlgClosed C] [CharZero C] (v : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C], v.Integers R → v (p : C) < 1 → ∀ (F : Type) [Field F] [Fintype F] [DecidableEq F] [CharP F p] (f : ℕ), Fintype.card F = p ^ f → ∀ (N : Type) [AddCommGroup N] [Module F N] [Fintype N] [DecidableEq N] (AA : HopfOrder (C := C) R N), FStable F AA.carrier → ∀ (K : Submodule F N) (t : N), t ∉ K → GenAF p AA.carrier K.toAddSubgroup → ∀ τ : MulChar F R, IsFund p τ → idealX AA.carrier K t τ ≤ idealD p AA.carrier K t τ := by
  intro p _ C _ _ _ v R _ _ hv hp F _ _ _ _ f hq N _ _ _ _ AA hst K t ht hgen τ hτ
  have hp1 : 1 < p := (Fact.out : p.Prime).one_lt
  obtain ⟨⟨S, hS, hSst⟩, -⟩ := _root_.PositivityTheory.HtPt.Rc.step p C v R hv hp F f hq N AA hst K t ht
  obtain ⟨hord, -, hfund, hfunds, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.GR.FundGen.main p C v R hv hp F f hq τ hτ
  have hf0 : f ≠ 0 := by
    rintro rfl
    have := Fintype.one_lt_card (α := F)
    rw [hq, pow_zero] at this
    exact lt_irrefl _ this
  have hq1 : 1 < p ^ f := Nat.one_lt_pow hf0 hp1
  have hper1 : τ ^ p ^ f = τ := by
    have : p ^ f = orderOf τ + 1 := by omega
    rw [this, pow_succ, pow_orderOf_eq_one, one_mul]
  have hper : ∀ m, τ ^ p ^ (f * m) = τ := by
    intro m
    induction m with
    | zero => simp
    | succ m ih => rw [Nat.mul_succ, pow_add, pow_mul, ih, hper1]
  have hprin : ∀ χ : MulChar F R, ∃ c : R, c ≠ 0 ∧ xIdeal S.carrier χ = Ideal.span {c} :=
    fun χ => (GlobalTheory.T.character_ideal_principal_eigen p C v R hv hp F f hq S hSst χ).1
  choose c0 hc0 hc0' using hprin
  let c : ℕ → R := fun n => c0 (τ ^ p ^ n)
  have hcX : ∀ n, idealX AA.carrier K t (τ ^ p ^ n) = Ideal.span {c n} := by
    intro n
    rw [idealX, ← hS]
    exact hc0' _
  have hom := _root_.GlobalTheory.CompanionTheory.Relay.fundamental_ideal_frobenius_product p C v R hv hp F f hq S hSst τ hτ c (fun n => hc0' _)
  have hcper : ∀ m, c (f * m) = c 0 := by
    intro m
    simp only [c, hper m, pow_zero, pow_one]
  let y : ℕ → NNReal := fun n => v (algebraMap R C (c n))
  have hy1 : ∀ n, y n ≤ 1 := fun n => hv.map_le_one _
  have hy0 : ∀ n, y n ≠ 0 := by
    intro n
    refine (Valuation.ne_zero_iff _).2 fun h => hc0 (τ ^ p ^ n) (hv.hom_inj ?_)
    simpa [c] using h
  have hle : ∀ n, y n ^ p ≤ y (n + 1) := by
    intro n
    obtain ⟨δ, hδ⟩ := (hom n).2.1
    have : y n ^ p = v (algebraMap R C δ) * y (n + 1) := by
      simp only [y]
      rw [← map_pow, ← map_pow, hδ, map_mul, map_mul]
    rw [this]
    exact mul_le_of_le_one_left' (hv.map_le_one _)
  have hpowp : ∀ n, (τ ^ p ^ n) ^ p = τ ^ p ^ (n + 1) := by
    intro n
    rw [← pow_mul, ← pow_succ]
  have hlt : ∀ n, y n ^ p < y (n + 1) → c (n + 1) ∈ idealD p AA.carrier K t (τ ^ p ^ (n + 1)) := by
    intro n h
    have := _root_.GlobalTheory.CompanionTheory.Relay.stable_hopf_order_subgroup_quotient p C v R hv hp F f hq N AA hst K t ht hgen (τ ^ p ^ n) (hfund n)
      (c n) (c (n + 1)) (hcX n) (by rw [hpowp]; exact hcX (n + 1)) h
    rwa [hpowp] at this
  have heq : ∀ n, y n ^ p = y (n + 1) → c n ∈ idealD p AA.carrier K t (τ ^ p ^ n) →
      c (n + 1) ∈ idealD p AA.carrier K t (τ ^ p ^ (n + 1)) := by
    intro n h hg
    have h1 := _root_.GlobalTheory.CompanionTheory.Ar.GR.idealD_pow_mem p C v R hv hp F f hq N AA hst K t (τ ^ p ^ n) (c n) hg
    rw [hpowp] at h1
    obtain ⟨δ, hδ⟩ := (hom n).2.1
    have hv1 : v (algebraMap R C δ) = 1 := by
      have h2 : y n ^ p = v (algebraMap R C δ) * y (n + 1) := by
        simp only [y]
        rw [← map_pow, ← map_pow, hδ, map_mul, map_mul]
      rw [h] at h2
      exact (mul_right_cancel₀ (hy0 (n + 1)) (by rw [one_mul]; exact h2)).symm
    have hu : IsUnit δ := by
      refine hv.isUnit_of_one ?_ hv1
      refine IsUnit.mk0 _ fun h0 => ?_
      rw [h0, map_zero] at hv1
      exact zero_ne_one hv1
    rw [hδ] at h1
    exact (Ideal.unit_mul_mem_iff_mem _ hu).1 h1
  have hex : ∃ n, c n ∈ idealD p AA.carrier K t (τ ^ p ^ n) := by
    by_cases h : ∃ n, y n ^ p < y (n + 1)
    · obtain ⟨n, hn⟩ := h
      exact ⟨n + 1, hlt n hn⟩
    · have hall : ∀ n, y n ^ p = y (n + 1) := fun n =>
        le_antisymm (hle n) (not_lt.1 fun h' => h ⟨n, h'⟩)
      have hyn : ∀ n, y n = y 0 ^ p ^ n := by
        intro n
        induction n with
        | zero => simp
        | succ n ih => rw [← hall n, ih, ← pow_mul, pow_succ]
      have hyf : y 0 ^ p ^ f = y 0 := by
        rw [← hyn f]
        have := hcper 1
        rw [mul_one] at this
        simp only [y, this]
      have hy01 : y 0 = 1 := by
        refine le_antisymm (hy1 0) (not_lt.1 fun h' => ?_)
        have := pow_lt_self_of_lt_one₀ (pos_iff_ne_zero.2 (hy0 0)) h' hq1
        exact absurd hyf this.ne
      have hu : IsUnit (c 0) := by
        refine hv.isUnit_of_one ?_ hy01
        refine IsUnit.mk0 _ fun h0 => ?_
        have : y 0 = 0 := by simp only [y, h0, map_zero]
        exact hy0 0 this
      have hX : idealX AA.carrier K t τ = ⊤ := by
        have := hcX 0
        rw [pow_zero, pow_one] at this
        rw [this]
        exact Ideal.span_singleton_eq_top.2 hu
      obtain ⟨τ', hτ', hD⟩ := _root_.GlobalTheory.CompanionTheory.Relay.hopf_order_ideals_eq_top p C v R hv hp F f hq N AA hst K t ht hgen τ hX
      obtain ⟨n, -, rfl⟩ := hfunds τ' hτ'
      exact ⟨n, by rw [hD]; trivial⟩
  obtain ⟨n, hn⟩ := hex
  have hlater : ∀ k, c (n + k) ∈ idealD p AA.carrier K t (τ ^ p ^ (n + k)) := by
    intro k
    induction k with
    | zero => exact hn
    | succ k ih =>
      rcases (hle (n + k)).lt_or_eq with h | h
      · exact hlt _ h
      · exact heq _ h ih
  have hnf : n ≤ f * n := Nat.le_mul_of_pos_left n (Nat.pos_of_ne_zero hf0)
  have hg := hlater (f * n - n)
  rw [Nat.add_sub_cancel' hnf, hper n] at hg
  have hX := hcX (f * n)
  rw [hper n] at hX
  rw [hX]
  exact (Ideal.span_singleton_le_iff_mem _).2 hg

end GlobalTheory.CompanionTheory.Ar.GR
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.StableHopfOrderSubgroupGeneration =====
