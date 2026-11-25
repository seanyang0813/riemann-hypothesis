module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData
public import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocFreeMapMkQIff
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeTestPointMembership
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeAnnihilatorLatticeHolds
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.KernelGraphBaseChangeHolds
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSecondGoodness
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor
public import Mathlib.RingTheory.IsTensorProduct
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeBaseChangeQuotient
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.ImageLatticeBaseChange
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOfTestIdeal, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPowspan, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowSpanLocFreeBaseChange, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeDivisorIdealLattice, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeImageLattice, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFactsOfNormalHolds

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOfTestIdeal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOfTestIdeal", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocFreeMapMkQIff\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeTestPointMembership\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num

namespace GlobalTheory.CompanionTheory.Ar.Num.HaTest

theorem mem_of_test_ideal : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω) (p : ℕ), p.Prime → (p : Ω) ≠ 0 → IsNoetherianRing R → IsFractionRing R Ω → IsIntegrallyClosedIn R Ω → ∀ (L : AddSubgroup Ω), LocFree R 1 L → ∀ v : Ω, (∃ m : ℕ, (p : Ω) ^ m * v ∈ L) → (∀ (C : Type) [Field C] [Algebra o C] [Algebra Ω C] [IsScalarTower o Ω C] (RC : Subalgebra o C), IsTestPt p R RC → algebraMap Ω C v ∈ spanOver RC (algebraMap Ω C '' L)) → v ∈ L := by
  intro o Ω _ _ _ R p hp hp0 hN hF hI L hL v hm htest
  let e : Ω ≃ₗ[Ω] (Unit → Ω) := (LinearEquiv.funUnique Unit Ω Ω).symm
  have hL' : LocFree R 1 (L.map e.toLinearMap.toAddMonoidHom) :=
    LatticeGoodness.locFree_map_equiv R e hL
  have hmem : ∀ x : Ω, e x ∈ L.map e.toLinearMap.toAddMonoidHom ↔ x ∈ L := by
    intro x
    constructor
    · rintro ⟨y, hy, hyx⟩
      have : y = x := e.injective hyx
      rwa [← this]
    · intro hx
      exact ⟨x, hx, rfl⟩
  refine (hmem v).1 (_root_.GlobalTheory.CompanionTheory.Ar.Num.HaLattice.main R p hp hp0 hN hF hI 1 _ hL' (e v) ?_ ?_)
  · obtain ⟨m, hm⟩ := hm
    refine ⟨m, ?_⟩
    have : (p : Ω) ^ m • e v = e ((p : Ω) ^ m * v) := by
      rw [← smul_eq_mul, map_smul]
    rw [this]
    exact (hmem _).2 hm
  · intro C _ _ _ _ RC ht
    let g : C →+ (Unit → C) :=
      (LinearEquiv.funUnique Unit C C).symm.toLinearMap.toAddMonoidHom
    have hg : bcMap Ω C Unit (e v) = g (algebraMap Ω C v) := by
      funext u
      simp [bcMap, e, g]
    rw [hg]
    have h1 := AddSubgroup.mem_map_of_mem g (htest C RC ht)
    unfold spanOver at h1 ⊢
    rw [AddMonoidHom.map_closure] at h1
    refine (AddSubgroup.closure_mono ?_) h1
    rintro _ ⟨_, ⟨a, ha, _, ⟨x, hx, rfl⟩, rfl⟩, rfl⟩
    refine ⟨a, ha, bcMap Ω C Unit (e x), ⟨e x, (hmem x).2 hx, rfl⟩, ?_⟩
    funext u
    simp [bcMap, e, g]

end GlobalTheory.CompanionTheory.Ar.Num.HaTest
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOfTestIdeal =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPowspan =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPowspan", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num

namespace PositivityTheory.Xgn.A_powspan

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω]

theorem mul_mem_gen (R : Subalgebra o Ω) (S : Set Ω) {a e : Ω} (ha : a ∈ R) (he : e ∈ S) :
    a * e ∈ spanOver R S :=
  AddSubgroup.subset_closure ⟨a, ha, e, he, rfl⟩

theorem span_stable (R : Subalgebra o Ω) (S : Set Ω) {a : Ω} (ha : a ∈ R) {v : Ω}
    (hv : v ∈ spanOver R S) : a * v ∈ spanOver R S := by
  induction hv using AddSubgroup.closure_induction with
  | mem x hx =>
    obtain ⟨a', ha', e, he, rfl⟩ := hx
    rw [smul_eq_mul, ← mul_assoc]
    exact mul_mem_gen R S (R.mul_mem ha ha') he
  | zero => simp
  | add x y _ _ hx hy => rw [mul_add]; exact add_mem hx hy
  | neg x _ hx => rw [mul_neg]; exact neg_mem hx

theorem span_le (R : Subalgebra o Ω) (S : Set Ω) (T : AddSubgroup Ω)
    (hT : ∀ a ∈ R, ∀ v ∈ T, a * v ∈ T) (hS : ∀ e ∈ S, e ∈ T) : spanOver R S ≤ T := by
  refine (AddSubgroup.closure_le _).2 ?_
  rintro _ ⟨a, ha, e, he, rfl⟩
  exact hT a ha e (hS e he)

theorem span_loc (R : Subalgebra o Ω) (S : Set Ω) {f : Ω} (hf : f ∈ R) (b : Ω)
    (hS : ∀ e ∈ S, ∃ n : ℕ, f ^ n * (e / b) ∈ R) {v : Ω} (hv : v ∈ spanOver R S) :
    ∃ n : ℕ, f ^ n * (v / b) ∈ R := by
  induction hv using AddSubgroup.closure_induction with
  | mem x hx =>
    obtain ⟨a, ha, e, he, rfl⟩ := hx
    obtain ⟨n, hn⟩ := hS e he
    refine ⟨n, ?_⟩
    have : f ^ n * (a • e / b) = a * (f ^ n * (e / b)) := by rw [smul_eq_mul]; ring
    rw [this]; exact R.mul_mem ha hn
  | zero => exact ⟨0, by simp⟩
  | add x y _ _ hx hy =>
    obtain ⟨n, hn⟩ := hx
    obtain ⟨m, hm⟩ := hy
    refine ⟨n + m, ?_⟩
    have : f ^ (n + m) * ((x + y) / b) = f ^ m * (f ^ n * (x / b)) + f ^ n * (f ^ m * (y / b)) := by
      ring
    rw [this]
    exact R.add_mem (R.mul_mem (R.pow_mem hf m) hn) (R.mul_mem (R.pow_mem hf n) hm)
  | neg x _ hx =>
    obtain ⟨n, hn⟩ := hx
    refine ⟨n, ?_⟩
    have : f ^ n * (-x / b) = -(f ^ n * (x / b)) := by ring
    rw [this]; exact R.neg_mem hn

theorem mem_of_loc (R : Subalgebra o Ω) (T : AddSubgroup Ω) (hT : ∀ a ∈ R, ∀ v ∈ T, a * v ∈ T)
    {k : ℕ} (f c : Fin k → Ω) (hf : ∀ l, f l ∈ R) (hc : ∀ l, c l ∈ R) (hs : ∑ l, c l * f l = 1)
    {w : Ω} (hw : ∀ l, ∃ n : ℕ, f l ^ n * w ∈ T) : w ∈ T := by
  let I : Ideal R :=
    { carrier := {r | (r : Ω) * w ∈ T}
      add_mem' := fun {x y} hx hy => by
        change ((x + y : R) : Ω) * w ∈ T
        rw [Subalgebra.coe_add, add_mul]; exact add_mem hx hy
      zero_mem' := by
        change ((0 : R) : Ω) * w ∈ T
        simp
      smul_mem' := fun r x hx => by
        change ((r * x : R) : Ω) * w ∈ T
        rw [Subalgebra.coe_mul, mul_assoc]; exact hT r r.2 _ hx }
  have h1 : (1 : R) ∈ I.radical := by
    have : (1 : R) = ∑ l, (⟨c l, hc l⟩ : R) * ⟨f l, hf l⟩ := by
      apply Subtype.ext
      simp [hs]
    rw [this]
    refine Ideal.sum_mem _ fun l _ => Ideal.mul_mem_left _ _ ?_
    obtain ⟨n, hn⟩ := hw l
    exact ⟨n, by
      change (((⟨f l, hf l⟩ : R) ^ n : R) : Ω) * w ∈ T
      simpa using hn⟩
  obtain ⟨n, hn⟩ := h1
  rw [one_pow] at hn
  have : ((1 : R) : Ω) * w ∈ T := hn
  simpa using this

theorem unpack (R : Subalgebra o Ω) (X : AddSubgroup Ω) (f : Ω)
    (h : ∃ b : Fin 1 → Ω, LinearIndependent Ω b ∧ Submodule.span Ω (Set.range b) = ⊤ ∧
      ∀ e, (∃ n : ℕ, f ^ n • e ∈ X) ↔
        ∃ a : Fin 1 → Ω, (∀ q, ∃ n : ℕ, f ^ n * a q ∈ R) ∧ e = ∑ q, a q • b q) :
    ∃ b : Ω, b ≠ 0 ∧ (∃ m : ℕ, f ^ m * b ∈ X) ∧ ∀ x ∈ X, ∃ n : ℕ, f ^ n * (x / b) ∈ R := by
  obtain ⟨b, hb, -, h⟩ := h
  have hb0 : b 0 ≠ 0 := hb.ne_zero 0
  refine ⟨b 0, hb0, ?_, fun x hx => ?_⟩
  · exact (h (b 0)).2 ⟨fun _ => 1, fun _ => ⟨0, by simpa using R.one_mem⟩, by simp⟩
  · obtain ⟨a, ha, hx'⟩ := (h x).1 ⟨0, by simpa using hx⟩
    obtain ⟨n, hn⟩ := ha 0
    refine ⟨n, ?_⟩
    have : x / b 0 = a 0 := by
      rw [hx']; simp [hb0]
    rwa [this]

theorem locFree_pow (R : Subalgebra o Ω) (p : ℕ) (X : AddSubgroup Ω) (hX : LocFree R 1 X) :
    LocFree R 1 (powSpan R p X) := by
  obtain ⟨-, k, f, c, hf, hc, hs, hl⟩ := hX
  refine ⟨fun a ha e he => span_stable R _ ha he, k, f, c, hf, hc, hs, fun l => ?_⟩
  obtain ⟨b, hb, ⟨m, hm⟩, hx⟩ := unpack R X (f l) (hl l)
  have hbp : b ^ p ≠ 0 := pow_ne_zero p hb
  refine ⟨fun _ => b ^ p, ?_, ?_, fun e => ⟨?_, ?_⟩⟩
  · exact linearIndependent_unique_iff.2 hbp
  · rw [eq_top_iff]
    intro v _
    have : v = (v / b ^ p) • b ^ p := by simp [hbp]
    rw [this]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨0, rfl⟩)
  · rintro ⟨n, hn⟩
    obtain ⟨n', hn'⟩ := span_loc R _ (hf l) (b ^ p) (by
      rintro _ ⟨x, hx', rfl⟩
      obtain ⟨j, hj⟩ := hx x hx'
      refine ⟨j * p, ?_⟩
      have := R.pow_mem hj p
      rwa [mul_pow, ← pow_mul, div_pow] at this) hn
    refine ⟨fun _ => e / b ^ p, fun _ => ⟨n' + n, ?_⟩, by simp [hbp]⟩
    have : f l ^ (n' + n) * (e / b ^ p) = f l ^ n' * (f l ^ n • e / b ^ p) := by
      rw [smul_eq_mul]; ring
    rwa [this]
  · rintro ⟨a, ha, rfl⟩
    obtain ⟨n, hn⟩ := ha 0
    refine ⟨n + m * p, ?_⟩
    have : f l ^ (n + m * p) • (∑ q : Fin 1, a q • b ^ p) = (f l ^ n * a 0) * (f l ^ m * b) ^ p := by
      simp only [Fin.sum_univ_one, smul_eq_mul]; ring
    rw [this]
    exact mul_mem_gen R _ hn ⟨_, hm, rfl⟩

end PositivityTheory.Xgn.A_powspan

open PositivityTheory.Xgn.A_powspan in
theorem PositivityTheory.Xgn.t_powspan : ∀ {o Ω C : Type} [CommRing o] [Field Ω] [Field C] [Algebra o Ω] [Algebra o C] [Algebra Ω C] [IsScalarTower o Ω C] (R : Subalgebra o Ω) (RC : Subalgebra o C), (∀ a ∈ R, algebraMap Ω C a ∈ RC) → ∀ (p : ℕ) (X : AddSubgroup Ω), LocFree R 1 X → LocFree R 1 (powSpan R p X) ∧ powSpan RC p (spanOver RC (algebraMap Ω C '' X)) = spanOver RC (algebraMap Ω C '' powSpan R p X) := by
  intro o Ω C _ _ _ _ _ _ _ R RC hR p X hX
  refine ⟨locFree_pow R p X hX, le_antisymm ?_ ?_⟩
  · obtain ⟨-, k, f, c, hf, hc, hs, hl⟩ := hX
    refine span_le RC _ _ (fun a ha v hv => span_stable RC _ ha hv) ?_
    rintro _ ⟨z, hz, rfl⟩
    refine mem_of_loc RC _ (fun a ha v hv => span_stable RC _ ha hv)
      (fun l => algebraMap Ω C (f l)) (fun l => algebraMap Ω C (c l)) (fun l => hR _ (hf l))
      (fun l => hR _ (hc l)) ?_ fun l => ?_
    · have := congrArg (algebraMap Ω C) hs

      simpa [map_sum] using this
    · obtain ⟨b, hb, ⟨m, hm⟩, hx⟩ := unpack R X (f l) (hl l)
      have hb' : algebraMap Ω C b ≠ 0 := by simpa using hb
      obtain ⟨n, hn⟩ := span_loc RC _ (hR _ (hf l)) (algebraMap Ω C b) (by
        rintro _ ⟨x, hx', rfl⟩
        obtain ⟨j, hj⟩ := hx x hx'
        exact ⟨j, by simpa using hR _ hj⟩) hz
      refine ⟨(n + m) * p, ?_⟩
      have : algebraMap Ω C (f l) ^ ((n + m) * p) * z ^ p =
          (algebraMap Ω C (f l) ^ n * (z / algebraMap Ω C b)) ^ p *
            algebraMap Ω C (1 * (f l ^ m * b) ^ p) := by
        rw [one_mul, map_pow, map_mul, map_pow, ← mul_pow, pow_mul, ← mul_pow]
        congr 1
        field_simp
        ring
      beta_reduce
      rw [this]
      exact mul_mem_gen RC _ (RC.pow_mem hn p)
        ⟨_, mul_mem_gen R _ R.one_mem ⟨_, hm, rfl⟩, rfl⟩
  · refine span_le RC _ _ (fun a ha v hv => span_stable RC _ ha hv) ?_
    rintro _ ⟨y, hy, rfl⟩
    have : powSpan R p X ≤ (powSpan RC p (spanOver RC (algebraMap Ω C '' X))).comap
        (algebraMap Ω C).toAddMonoidHom := by
      refine span_le R _ _ (fun a ha v hv => ?_) ?_
      · change algebraMap Ω C (a * v) ∈ powSpan RC p _
        rw [map_mul]
        exact span_stable RC _ (hR a ha) hv
      · rintro _ ⟨x, hx, rfl⟩
        change algebraMap Ω C (x ^ p) ∈ powSpan RC p _
        have h1 : algebraMap Ω C (x ^ p) = 1 * (1 * algebraMap Ω C x) ^ p := by simp
        rw [h1]
        exact mul_mem_gen RC _ RC.one_mem ⟨_, mul_mem_gen RC _ RC.one_mem ⟨x, hx, rfl⟩, rfl⟩
    exact this hy
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPowspan =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowSpanLocFreeBaseChange =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowSpanLocFreeBaseChange", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPowspan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num

namespace GlobalTheory.CompanionTheory.Ar.Num

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowSpanLocFreeBaseChange =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeDivisorIdealLattice =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeDivisorIdealLattice", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeAnnihilatorLatticeHolds\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.KernelGraphBaseChangeHolds\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSecondGoodness\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeTestPointMembership\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOfTestIdeal\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PowSpanLocFreeBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num

namespace GlobalTheory.CompanionTheory.Ar.Num.HaSteps.SlopeTestRemainingChoices

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω]

theorem mem_span {E : Type} [AddCommGroup E] [Module Ω E] (R : Subalgebra o Ω) {S : Set E} {e : E}
    (h : e ∈ S) : e ∈ spanOver R S :=
  AddSubgroup.subset_closure ⟨1, R.one_mem, e, h, (one_smul _ _).symm⟩

theorem ideal_le (R : Subalgebra o Ω) (p : ℕ) (hp : p.Prime) (hp0 : (p : Ω) ≠ 0)
    (hN : IsNoetherianRing R) (hF : IsFractionRing R Ω) (hI : IsIntegrallyClosedIn R Ω)
    (A B : AddSubgroup Ω) (hB : LocFree R 1 B) (hA : ∀ a ∈ A, a ∈ R) (hm : ∃ m : ℕ, (p : Ω) ^ m ∈ B)
    (h : ∀ (C : Type) [Field C] [Algebra o C] [Algebra Ω C] [IsScalarTower o Ω C] (RC : Subalgebra o C),
      IsTestPt p R RC → spanOver RC (algebraMap Ω C '' A) = spanOver RC (algebraMap Ω C '' B)) :
    A ≤ B := by
  intro v hv
  obtain ⟨m, hm⟩ := hm
  refine GlobalTheory.CompanionTheory.Ar.Num.HaTest.mem_of_test_ideal R p hp hp0 hN hF hI B hB v ⟨m, ?_⟩ ?_
  · have := hB.1 v (hA v hv) _ hm
    rwa [smul_eq_mul, mul_comm] at this
  · intro C _ _ _ _ RC hRC
    rw [← h C RC hRC]
    exact mem_span RC ⟨v, hv, rfl⟩

theorem lattice_le (R : Subalgebra o Ω) (p : ℕ) (hp : p.Prime) (hp0 : (p : Ω) ≠ 0)
    (hN : IsNoetherianRing R) (hF : IsFractionRing R Ω) (hI : IsIntegrallyClosedIn R Ω)
    {k N : ℕ} (L A B : AddSubgroup (Fin k → Ω)) (hB : LocFree R N B) (hA : A ≤ L)
    (hm : mulLat (p : Ω) L ≤ B)
    (h : ∀ (C : Type) [Field C] [Algebra o C] [Algebra Ω C] [IsScalarTower o Ω C] (RC : Subalgebra o C),
      IsTestPt p R RC → spanOver RC (bcMap Ω C (Fin k) '' A) = spanOver RC (bcMap Ω C (Fin k) '' B)) :
    A ≤ B := by
  intro v hv
  refine GlobalTheory.CompanionTheory.Ar.Num.HaLattice.main R p hp hp0 hN hF hI N B hB v ⟨1, ?_⟩ ?_
  · rw [pow_one]
    exact hm ⟨v, hA hv, rfl⟩
  · intro C _ _ _ _ RC hRC
    rw [← h C RC hRC]
    exact mem_span RC ⟨v, hv, rfl⟩

omit [Algebra o Ω] in
theorem map_snd_span {C : Type} [Field C] [Algebra o C] [Algebra Ω C] (RC : Subalgebra o C) {k : ℕ}
    (G : AddSubgroup (Ω × (Fin k → Ω))) :
    (spanOver RC (Prod.map (algebraMap Ω C) (bcMap Ω C (Fin k)) '' G)).map (AddMonoidHom.snd _ _) =
      spanOver RC (bcMap Ω C (Fin k) '' (G.map (AddMonoidHom.snd _ _))) := by
  unfold spanOver
  rw [AddMonoidHom.map_closure]
  congr 1
  ext v
  constructor
  · rintro ⟨_, ⟨a, ha, _, ⟨g, hg, rfl⟩, rfl⟩, rfl⟩
    exact ⟨a, ha, _, ⟨g.2, ⟨g, hg, rfl⟩, rfl⟩, rfl⟩
  · rintro ⟨a, ha, _, ⟨_, ⟨g, hg, rfl⟩, rfl⟩, rfl⟩
    exact ⟨_, ⟨a, ha, _, ⟨g, hg, rfl⟩, rfl⟩, rfl⟩

variable {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ}
  {D : LieLatticeData Ω F n Sg r s} {R : Subalgebra o Ω} {p : ℕ} {w : Ω} {χ : Sg → F → Ω}

theorem xId_le (hc : CharData R p w χ) (hb : D.Base R p w) (τ : Sg) (i : Fin n) :
    ∀ c ∈ D.xId (χ τ) i, c ∈ R := by
  intro c hc'
  have h : (c • fun x : Fin n → F => χ τ (x i)) ∈
    D.M ⊔ (vanSub Ω F n ((i : ℕ) + 1)).toAddSubgroup := hc'
  obtain ⟨g, hg, v, hv, e⟩ := AddSubgroup.mem_sup.1 h
  have hx : (Pi.single i (1 : F) : Fin n → F) ∈
      {x : Fin n → F | ∀ j : Fin n, (i : ℕ) + 1 ≤ (j : ℕ) → x j = 0} := by
    intro j hj
    have : j ≠ i := by
      rintro rfl
      omega
    exact Pi.single_eq_of_ne this _
  have hv0 : v (Pi.single i 1) = 0 := hv _ hx
  have hgR : g (Pi.single i 1) ∈ R := hb.M_le hg _ (Set.mem_univ _)
  have e1 := congrFun e (Pi.single i 1)
  simp only [Pi.add_apply, Pi.smul_apply, Pi.single_eq_same, hv0, add_zero, smul_eq_mul,
    (hc.2.2.2.2 τ).2.1, mul_one] at e1
  rwa [← e1]

theorem pow_smul_mem (hc : CharData R p w χ) (hb : D.Base R p w) (τ : Sg) (i : Fin n) :
    ∃ m : ℕ, ((p : Ω) ^ m • fun x : Fin n → F => χ τ (x i)) ∈ D.M := by
  obtain ⟨m, hm⟩ := hb.le_M
  exact ⟨m, hm ⟨fun x => χ τ (x i), fun x _ => (hc.2.2.2.2 τ).2.2 _, rfl⟩⟩

theorem pow_mem_xId (hc : CharData R p w χ) (hb : D.Base R p w) (τ : Sg) (i : Fin n) :
    ∃ m : ℕ, (p : Ω) ^ m ∈ D.xId (χ τ) i := by
  obtain ⟨m, hm⟩ := pow_smul_mem hc hb τ i
  exact ⟨m, AddSubgroup.mem_sup_left hm⟩

theorem pow_mem_dId (hc : CharData R p w χ) (τ : Sg) (i : Fin n) :
    ∃ m : ℕ, (p : Ω) ^ m ∈ D.dId R p (χ τ) i := by
  refine ⟨1, (p : Ω) • Pi.single i 1, ⟨?_, ?_⟩, ?_⟩
  · show linMap n (χ τ) ((p : Ω) • Pi.single i 1) ∈ D.l1 R p
    rw [map_smul]
    refine AddSubgroup.mem_sup_right ⟨linMap n (χ τ) (Pi.single i 1), fun x _ => ?_, rfl⟩
    show linMap n (χ τ) (Pi.single i 1) x ∈ R
    simp only [linMap, Fintype.linearCombination_apply_single, one_smul]
    exact (hc.2.2.2.2 τ).2.2 _
  · intro j hj
    have : j ≠ i := by
      rintro rfl
      exact Nat.lt_irrefl _ hj
    show ((p : Ω) • Pi.single i (1 : Ω) : Fin n → Ω) j = 0
    simp [Pi.single_eq_of_ne this]
  · simp

omit [One F] in
theorem kk_le (hb : D.Base R p w) (τ : Sg) (i : ℕ) : D.kk τ i ≤ dotDual R (D.lie τ) := by
  rintro _ ⟨⟨g, m⟩, ⟨h, -⟩, rfl⟩
  exact ((hb.th τ).2.1 m).1 ⟨g, h⟩

omit [One F] in
theorem le_kk (hb : D.Base R p w) (τ : Sg) (i : ℕ) :
    mulLat (p : Ω) (dotDual R (D.lie τ)) ≤ D.kk τ i := by
  intro m hm
  exact ⟨(0, m), ⟨((hb.th τ).2.2 m).2 hm, zero_mem _, trivial⟩, rfl⟩

omit [One F] in
theorem step_le (hb : D.Base R p w) (τ : Sg) (ψ : F → Ω) (i : Fin n) :
    (D.stepGraph τ ψ i).map (AddMonoidHom.snd _ _) ≤ dotDual R (D.lie τ) := by
  rintro _ ⟨⟨c, m⟩, h, rfl⟩
  have h' : ((c • fun x : Fin n → F => ψ (x i)), m) ∈
    D.Th τ ⊔ (vanSub Ω F n ((i : ℕ) + 1)).toAddSubgroup.prod ⊥ := h
  obtain ⟨⟨g, m1⟩, hg, ⟨v, m2⟩, ⟨-, hv⟩, e⟩ := AddSubgroup.mem_sup.1 h'
  have h2 : m2 = 0 := hv
  have h1 : m1 + m2 = m := congrArg Prod.snd e
  rw [h2, add_zero] at h1
  subst h1
  exact ((hb.th τ).2.1 m1).1 ⟨g, hg⟩

omit [One F] in
theorem le_step (hb : D.Base R p w) (τ : Sg) (ψ : F → Ω) (i : Fin n) :
    mulLat (p : Ω) (dotDual R (D.lie τ)) ≤ (D.stepGraph τ ψ i).map (AddMonoidHom.snd _ _) := by
  intro m hm
  refine ⟨(0, m), ?_, rfl⟩
  show (((0 : Ω) • fun x : Fin n → F => ψ (x i)), m) ∈
    D.Th τ ⊔ (vanSub Ω F n ((i : ℕ) + 1)).toAddSubgroup.prod ⊥
  rw [zero_smul]
  exact AddSubgroup.mem_sup_left (((hb.th τ).2.2 m).2 hm)

omit [One F] in
theorem ker_le (hb : D.Base R p w) (τ : Sg) (ψ : F → Ω) (i : Fin n) :
    (D.stepGraph τ ψ i).comap (AddMonoidHom.inl _ _) ≤ D.xId ψ i := by
  intro c h
  have h' : ((c • fun x : Fin n → F => ψ (x i)), (0 : Fin (r τ) → Ω)) ∈
    D.Th τ ⊔ (vanSub Ω F n ((i : ℕ) + 1)).toAddSubgroup.prod ⊥ := h
  obtain ⟨⟨g, m1⟩, hg, ⟨v, m2⟩, ⟨hv, -⟩, e⟩ := AddSubgroup.mem_sup.1 h'
  have h1 : g + v = c • fun x : Fin n → F => ψ (x i) := congrArg Prod.fst e
  show (c • fun x : Fin n → F => ψ (x i)) ∈ D.M ⊔ (vanSub Ω F n ((i : ℕ) + 1)).toAddSubgroup
  rw [← h1]
  exact AddSubgroup.add_mem_sup (((hb.th τ).1 g).1 ⟨m1, hg⟩).1 hv

theorem pow_mem_ker (hc : CharData R p w χ) (hb : D.Base R p w) (τ : Sg) (i : Fin n) :
    ∃ m : ℕ, (p : Ω) ^ m ∈ (D.stepGraph τ (χ τ) i).comap (AddMonoidHom.inl _ _) := by
  obtain ⟨m, hm⟩ := pow_smul_mem hc hb τ i
  obtain ⟨u, hu⟩ := ((hb.th τ).1 _).2 ⟨hm, by simp [(hc.2.2.2.2 τ).1]⟩
  have h1 := (hb.stable τ (p : Ω) (natCast_mem R p)).2.2 _ hu
  have h2 := ((hb.th τ).2.2 ((p : Ω) • u)).2 ⟨u, ((hb.th τ).2.1 u).1 ⟨_, hu⟩, rfl⟩
  have h3 := sub_mem h1 h2
  refine ⟨m + 1, ?_⟩
  show (((p : Ω) ^ (m + 1) • fun x : Fin n → F => χ τ (x i)), (0 : Fin (r τ) → Ω)) ∈
    D.Th τ ⊔ (vanSub Ω F n ((i : ℕ) + 1)).toAddSubgroup.prod ⊥
  refine AddSubgroup.mem_sup_left ?_
  rw [Prod.smul_mk, Prod.mk_sub_mk, sub_zero, sub_self, smul_smul, ← pow_succ'] at h3
  exact h3

theorem powSpan_le (R : Subalgebra o Ω) (p : ℕ) (X : AddSubgroup Ω) (hX : ∀ c ∈ X, c ∈ R) :
    ∀ c ∈ powSpan R p X, c ∈ R := by
  have : powSpan R p X ≤ R.toSubring.toAddSubgroup := by
    refine (AddSubgroup.closure_le _).2 ?_
    rintro _ ⟨a, ha, _, ⟨x, hx, rfl⟩, rfl⟩
    exact R.mul_mem ha (R.pow_mem (hX x hx) p)
  exact fun c hc => this hc

end GlobalTheory.CompanionTheory.Ar.Num.HaSteps.SlopeTestRemainingChoices


open GlobalTheory.CompanionTheory.Ar.Num.HaSteps.SlopeTestRemainingChoices in
theorem GlobalTheory.CompanionTheory.Ar.Num.HaSteps.main : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (w : Ω) (χ : Sg → F → Ω), CharData R p w χ → D.Base R p w → p.Prime → IsNoetherianRing R → IsFractionRing R Ω → IsIntegrallyClosedIn R Ω → ∀ φ : Equiv.Perm Sg, D.TestFacts R p w χ φ → D.Good₁ R p χ → D.Good₂ R p χ → (∀ τ i, D.dId R p (χ τ) i = D.xId (χ τ) i) ∧ (∀ τ (i : Fin n), (D.stepGraph τ (χ τ) i).map (AddMonoidHom.snd _ _) = D.kk τ i) ∧ ∀ τ i, (D.stepGraph (φ τ) (χ (φ τ)) i).comap (AddMonoidHom.inl _ _) = powSpan R p (D.xId (χ τ) i) := by
  intro o Ω _ _ _ F _ _ _ n Sg r s D R p w χ hc hb hp hN hF hI φ hT hG hG2
  obtain ⟨hf1, hbc1⟩ := GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodBaseChange.main D R p w χ hc hb hG
  have hk := _root_.PositivityTheory.Xgn.kernel_lattice_base_change D R p w χ hc hb hG
  obtain ⟨hf2, hbc2⟩ := GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness.main D R p w χ hc hb hG hG2
    (GlobalTheory.CompanionTheory.Ar.Num.hodge_annihilator_lattice D R p w χ hc hb hp hN hF hI φ hT hG)
  have hp0 := hc.1
  refine ⟨fun τ i => ?_, fun τ i => ?_, fun τ i => ?_⟩
  · have h : ∀ (C : Type) [Field C] [Algebra o C] [Algebra Ω C] [IsScalarTower o Ω C]
        (RC : Subalgebra o C), IsTestPt p R RC →
        spanOver RC (algebraMap Ω C '' D.dId R p (χ τ) i) =
          spanOver RC (algebraMap Ω C '' D.xId (χ τ) i) := by
      intro C _ _ _ _ RC hRC
      rw [← (((hbc2 C RC hRC.2.2.2).2 τ).2 i).1, ← ((hbc1 C RC hRC.2.2.2).2 τ).2.2 i]
      exact (hT C RC hRC).dx τ i
    refine le_antisymm
      (ideal_le R p hp hp0 hN hF hI _ _ ((hf1 τ).2.2.2 i) ?_ (pow_mem_xId hc hb τ i) h)
      (ideal_le R p hp hp0 hN hF hI _ _ ((hf2 τ).2 i).1 (xId_le hc hb τ i) (pow_mem_dId hc τ i)
        fun C _ _ _ _ RC hRC => (h C RC hRC).symm)
    rintro _ ⟨l, ⟨hl, -⟩, rfl⟩
    exact (hf1 τ).2.2.1 hl i (Set.mem_univ _)
  · have h : ∀ (C : Type) [Field C] [Algebra o C] [Algebra Ω C] [IsScalarTower o Ω C]
        (RC : Subalgebra o C), IsTestPt p R RC →
        spanOver RC (bcMap Ω C (Fin (r τ)) '' (D.stepGraph τ (χ τ) i).map (AddMonoidHom.snd _ _)) =
          spanOver RC (bcMap Ω C (Fin (r τ)) '' D.kk τ i) := by
      intro C _ _ _ _ RC hRC
      rw [← map_snd_span, ← (hk C RC hRC.2.2.2 τ).2 i, ← (hk C RC hRC.2.2.2 τ).1 i]
      exact (hT C RC hRC).onto τ i
    exact le_antisymm
      (lattice_le R p hp hp0 hN hF hI _ _ _ (hG2.kk τ i) (step_le hb τ _ i) (le_kk hb τ i) h)
      (lattice_le R p hp hp0 hN hF hI _ _ _ (hG2.step τ i) (kk_le hb τ i) (le_step hb τ _ i)
        fun C _ _ _ _ RC hRC => (h C RC hRC).symm)
  · have h : ∀ (C : Type) [Field C] [Algebra o C] [Algebra Ω C] [IsScalarTower o Ω C]
        (RC : Subalgebra o C), IsTestPt p R RC →
        spanOver RC (algebraMap Ω C ''
            (D.stepGraph (φ τ) (χ (φ τ)) i).comap (AddMonoidHom.inl _ _)) =
          spanOver RC (algebraMap Ω C '' powSpan R p (D.xId (χ τ) i)) := by
      intro C _ _ _ _ RC hRC
      rw [← (((hbc2 C RC hRC.2.2.2).2 (φ τ)).2 i).2,
        ← (_root_.PositivityTheory.Xgn.t_powspan R RC hRC.2.2.2 p _ ((hf1 τ).2.2.2 i)).2,
        ← ((hbc1 C RC hRC.2.2.2).2 τ).2.2 i]
      exact (hT C RC hRC).inj τ i
    obtain ⟨m, hm⟩ := pow_mem_xId hc hb τ i
    refine le_antisymm
      (ideal_le R p hp hp0 hN hF hI _ _
        (_root_.PositivityTheory.Xgn.t_powspan (C := Ω) R R (fun _ ha => ha) p _ ((hf1 τ).2.2.2 i)).1
        (fun a ha => xId_le hc hb (φ τ) i a (ker_le hb _ _ i ha)) ⟨m * p, ?_⟩ h)
      (ideal_le R p hp hp0 hN hF hI _ _ ((hf2 (φ τ)).2 i).2
        (powSpan_le R p _ (xId_le hc hb τ i)) (pow_mem_ker hc hb (φ τ) i)
        fun C _ _ _ _ RC hRC => (h C RC hRC).symm)
    rw [pow_mul]
    exact mem_span R ⟨_, hm, rfl⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeDivisorIdealLattice =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeImageLattice =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeImageLattice", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeAnnihilatorLatticeHolds\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocFreeMapMkQIff\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Mathlib.RingTheory.IsTensorProduct\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeBaseChangeQuotient\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.ImageLatticeBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSecondGoodness\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeTestPointMembership\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num

namespace GlobalTheory.CompanionTheory.Ar.Num.HodgeAnnihilatorSequence

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω]

theorem mem_span {E : Type} [AddCommGroup E] [Module Ω E] (R : Subalgebra o Ω) {S : Set E} {e : E}
    (h : e ∈ S) : e ∈ spanOver R S :=
  AddSubgroup.subset_closure ⟨1, R.one_mem, e, h, (one_smul _ _).symm⟩

theorem bc_smul {C : Type} [Field C] [Algebra Ω C] {ι : Type} (w : Ω) (v : ι → Ω) :
    bcMap Ω C ι (w • v) = algebraMap Ω C w • bcMap Ω C ι v := by
  funext i
  show algebraMap Ω C (w * v i) = algebraMap Ω C w * algebraMap Ω C (v i)
  rw [map_mul]

theorem pow_one_smul_mem {E : Type} [AddCommGroup E] [Module Ω E] {R : Subalgebra o Ω} {N : ℕ}
    {L : AddSubgroup E} (hL : LocFree R N L) {p : ℕ} {w : Ω} (hw : ∃ c ∈ R, (p : Ω) = c * w) {v : E}
    (hv : w • v ∈ L) : ∃ m : ℕ, (p : Ω) ^ m • v ∈ L := by
  obtain ⟨c, hc, e⟩ := hw
  refine ⟨1, ?_⟩
  rw [pow_one, e, mul_smul]
  exact hL.1 c hc _ hv

end GlobalTheory.CompanionTheory.Ar.Num.HodgeAnnihilatorSequence


open GlobalTheory.CompanionTheory.Ar.Num.HodgeAnnihilatorSequence in
theorem GlobalTheory.CompanionTheory.Ar.Num.HodgeAnnihilatorSequence.main : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (w : Ω) (χ : Sg → F → Ω), CharData R p w χ → D.Base R p w → p.Prime → IsNoetherianRing R → IsFractionRing R Ω → IsIntegrallyClosedIn R Ω → ∀ φ : Equiv.Perm Sg, D.TestFacts R p w χ φ → D.Good₁ R p χ → D.Good₂ R p χ → ∀ τ, D.imH R p τ (χ τ) = D.om τ ∧ D.kerH R p τ (χ τ) = divLat w (D.lie τ) := by
  intro o Ω _ _ _ F _ _ _ n Sg r s D R p w χ hc hb hp hN hF hI φ hT hG hG2 τ
  have hle := _root_.GlobalTheory.CompanionTheory.Ar.Num.hodge_annihilator_lattice D R p w χ hc hb hp hN hF hI φ hT hG
  have hbc1 := _root_.PositivityTheory.Xgn.image_lattice_base_change D R p w χ hc hb hG hle
  obtain ⟨hf2, hbc2⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness.main D R p w χ hc hb hG hG2 hle
  have hp0 := hc.1
  have hw := hc.2.2.1
  obtain ⟨flie, -, fom, -⟩ := hb.free τ
  obtain ⟨i1, i2, i3, i4⟩ := hb.incl τ
  refine ⟨le_antisymm (fun v hv => ?_) (fun v hv => ?_), le_antisymm (fun v hv => ?_) (fun v hv => ?_)⟩
  · refine _root_.GlobalTheory.CompanionTheory.Ar.Num.HaLattice.main R p hp hp0 hN hF hI _ _ fom v (pow_one_smul_mem fom hw ?_) ?_
    · obtain ⟨⟨b, c⟩, ⟨h, -⟩, rfl⟩ := hv
      exact i3 (((hb.del τ).2.1 c).1 ⟨b, h⟩)
    · intro C _ _ _ _ RC hRC
      have h : bcMap Ω C _ v ∈ (D.bc RC).imH RC p τ (fun a => algebraMap Ω C (χ τ a)) := by
        rw [hbc1 C RC hRC.2.2.2 τ]
        exact mem_span RC ⟨v, hv, rfl⟩
      have e := (hT C RC hRC).im τ
      exact e.le h
  · refine _root_.GlobalTheory.CompanionTheory.Ar.Num.HaLattice.main R p hp hp0 hN hF hI _ _ (hG2.im τ) v (pow_one_smul_mem (hG2.im τ) hw ?_) ?_
    · exact ⟨(0, w • v), ⟨((hb.del τ).2.2.1 _).2 (i4 hv), zero_mem _, trivial⟩, rfl⟩
    · intro C _ _ _ _ RC hRC
      rw [← hbc1 C RC hRC.2.2.2 τ]
      have e := (hT C RC hRC).im τ
      exact e.ge (mem_span RC ⟨v, hv, rfl⟩)
  · show w • v ∈ D.lie τ
    refine _root_.GlobalTheory.CompanionTheory.Ar.Num.HaLattice.main R p hp hp0 hN hF hI _ _ flie _ (pow_one_smul_mem flie hw ?_) ?_
    · obtain ⟨⟨a, b⟩, ⟨h, -⟩, rfl⟩ := hv
      exact i2 (((hb.gam τ).1 a).1 ⟨b, h⟩)
    · intro C _ _ _ _ RC hRC
      have h : bcMap Ω C _ v ∈ (D.bc RC).kerH RC p τ (fun a => algebraMap Ω C (χ τ a)) := by
        rw [((hbc2 C RC hRC.2.2.2).2 τ).1]
        exact mem_span RC ⟨v, hv, rfl⟩
      have e := (hT C RC hRC).ker τ
      rw [bc_smul]
      exact e.le h
  · have hv' : w • v ∈ D.lie τ := hv
    refine _root_.GlobalTheory.CompanionTheory.Ar.Num.HaLattice.main R p hp hp0 hN hF hI _ _ (hf2 τ).1 v (pow_one_smul_mem (hf2 τ).1 hw ?_) ?_
    · exact ⟨(w • v, 0), ⟨((hb.gam τ).2.2 _).2 (i1 hv'), trivial, zero_mem _⟩, rfl⟩
    · intro C _ _ _ _ RC hRC
      rw [← ((hbc2 C RC hRC.2.2.2).2 τ).1]
      have e := (hT C RC hRC).ker τ
      refine e.ge ?_
      show algebraMap Ω C w • bcMap Ω C _ v ∈ (D.bc RC).lie τ
      rw [← bc_smul]
      exact mem_span RC ⟨_, hv', rfl⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeImageLattice =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFactsOfNormalHolds =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFactsOfNormalHolds", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeAnnihilatorLatticeHolds\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeDivisorIdealLattice\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeImageLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem lattice_facts_of_normal : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (w : Ω) (χ : Sg → F → Ω), CharData R p w χ → D.Base R p w → p.Prime → IsNoetherianRing R → IsFractionRing R Ω → IsIntegrallyClosedIn R Ω → ∀ φ : Equiv.Perm Sg, D.TestFacts R p w χ φ → D.Good₁ R p χ → D.Good₂ R p χ → D.Facts R p w χ φ := by
  intro o Ω _ _ _ F _ _ _ n Sg r s D R p w χ hc hb hp hn hf hi φ ht h1 h2
  have hleaf := _root_.GlobalTheory.CompanionTheory.Ar.Num.hodge_annihilator_lattice D R p w χ hc hb hp hn hf hi φ ht h1
  have hseq := _root_.GlobalTheory.CompanionTheory.Ar.Num.HodgeAnnihilatorSequence.main D R p w χ hc hb hp hn hf hi φ ht h1 h2
  obtain ⟨hdx, honto, hinj⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.HaSteps.main D R p w χ hc hb hp hn hf hi φ ht h1 h2
  exact
    { le_af := hleaf
      im := fun τ => (hseq τ).1
      ker := fun τ => (hseq τ).2
      dx := hdx
      onto := honto
      inj := hinj }

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFactsOfNormalHolds =====
