module

public import Formalism.LocalToGlobal.CharacterGerms.BiadditiveInSingleVariables
public import Mathlib.CategoryTheory.Category.Basic
public import Mathlib.RingTheory.MvPolynomial.Homogeneous
public import Mathlib.NumberTheory.Padics.PadicVal.Basic
public import Formalism.LocalToGlobal.CharacterGerms.CoeffIterateZero
public import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.CharacterBlocksAttainBound
public import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.LegendreAndCapelli
public import Mathlib.Data.Nat.Prime.Factorial
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalGroupDeterminantPowDepthEqZeroOfLtPrime
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
import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
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
import Mathlib.Topology.Sheaves.Presheaf
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.LegendreBoundsFactorialMultiIndexCapelli
import Mathlib.RingTheory.MvPowerSeries.Rename
import Mathlib.Topology.Sheaves.Init

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.ProdFactorialDiag, Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.MonomialBlockSupplyBothTypings

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.ProdFactorialDiag =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.ProdFactorialDiag", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalGroupDeterminantPowDepthEqZeroOfLtPrime\npublic import Formalism.LocalToGlobal.CharacterGerms.BiadditiveInSingleVariables\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.NumberTheory.Padics.PadicVal.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.L2.FormalSeriesBounds Formalism.IncomingBounds

noncomputable section

namespace GlobalTheory.MinorGerm

section General
variable {C : Type} [Field C] {σ : Type}

def Low (α : σ →₀ ℕ) (g : MvPowerSeries σ C) : Prop :=
  MvPowerSeries.coeff α g = 1 ∧
    ∀ m : σ →₀ ℕ, m.degree ≤ α.degree → m ≠ α → MvPowerSeries.coeff m g = 0

theorem low_one : Low (0 : σ →₀ ℕ) (1 : MvPowerSeries σ C) := by
  classical
  refine ⟨by simp, fun m _ hm => ?_⟩
  rw [MvPowerSeries.coeff_one, if_neg hm]

theorem Low.term {α β : σ →₀ ℕ} {g h : MvPowerSeries σ C} (hg : Low α g) (hh : Low β h)
    (a b : σ →₀ ℕ) (hd : a.degree + b.degree ≤ α.degree + β.degree) (hne : (a, b) ≠ (α, β)) :
    MvPowerSeries.coeff a g * MvPowerSeries.coeff b h = 0 := by
  classical
  by_cases ha : a.degree ≤ α.degree ∧ a ≠ α
  · rw [hg.2 a ha.1 ha.2, zero_mul]
  by_cases hb : b.degree ≤ β.degree ∧ b ≠ β
  · rw [hh.2 b hb.1 hb.2, mul_zero]
  exfalso
  push_neg at ha hb
  by_cases ha' : a = α
  · by_cases hb' : b = β
    · exact hne (by rw [ha', hb'])
    · have : ¬ b.degree ≤ β.degree := fun h => hb' (hb h)
      rw [ha'] at hd
      omega
  · have : ¬ a.degree ≤ α.degree := fun h => ha' (ha h)
    by_cases hb' : b = β
    · rw [hb'] at hd
      omega
    · have : ¬ b.degree ≤ β.degree := fun h => hb' (hb h)
      omega

theorem Low.mul {α β : σ →₀ ℕ} {g h : MvPowerSeries σ C} (hg : Low α g) (hh : Low β h) :
    Low (α + β) (g * h) := by
  classical
  refine ⟨?_, ?_⟩
  · rw [MvPowerSeries.coeff_mul, Finset.sum_eq_single (α, β)]
    · rw [hg.1, hh.1, mul_one]
    · intro q hq hne
      rw [Finset.HasAntidiagonal.mem_antidiagonal] at hq
      apply hg.term hh
      · have h := congrArg Finsupp.degree hq
        rw [map_add (f := _), map_add (f := _)] at h
        omega
      · exact hne
    · intro h
      exact (h (Finset.HasAntidiagonal.mem_antidiagonal.2 rfl)).elim
  · intro m hm hne
    rw [MvPowerSeries.coeff_mul]
    apply Finset.sum_eq_zero
    intro q hq
    rw [Finset.HasAntidiagonal.mem_antidiagonal] at hq
    apply hg.term hh
    · have h := congrArg Finsupp.degree hq
      rw [map_add (f := _)] at h hm
      omega
    · intro h
      apply hne
      rw [Prod.mk.injEq] at h
      rw [← hq, h.1, h.2]

theorem low_prod {ι : Type} (s : Finset ι) (α : ι → σ →₀ ℕ) (g : ι → MvPowerSeries σ C)
    (h : ∀ i ∈ s, Low (α i) (g i)) : Low (∑ i ∈ s, α i) (∏ i ∈ s, g i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using (low_one : Low (0 : σ →₀ ℕ) (1 : MvPowerSeries σ C))
  | @insert i s hi ih =>
    rw [Finset.sum_insert hi, Finset.prod_insert hi]
    exact (h i (Finset.mem_insert_self i s)).mul (ih fun k hk => h k (Finset.mem_insert_of_mem hk))

theorem Low.pow {α : σ →₀ ℕ} {g : MvPowerSeries σ C} (hg : Low α g) (n : ℕ) :
    Low (n • α) (g ^ n) := by
  classical
  induction n with
  | zero => simpa using (low_one : Low (0 : σ →₀ ℕ) (1 : MvPowerSeries σ C))
  | succ n ih =>
    rw [succ_nsmul, pow_succ]
    exact ih.mul hg

theorem low_tangent {t : σ → MvPowerSeries σ C} (ht : TangentId t) (x : σ) (n : ℕ) :
    Low (Finsupp.single x n) (t x ^ n) := by
  classical
  have h1 : Low (Finsupp.single x 1) (t x) := by
    refine ⟨?_, ?_⟩
    · rw [ht x _ (by rw [Finsupp.degree_single]), MvPowerSeries.coeff_X, if_pos rfl]
    · intro m hm hne
      rw [Finsupp.degree_single] at hm
      rw [ht x m hm, MvPowerSeries.coeff_X, if_neg hne]
  have h2 := h1.pow n
  rwa [Finsupp.smul_single, smul_eq_mul, mul_one] at h2

def kill (p : σ → Prop) [DecidablePred p] : MvPolynomial σ C →ₐ[C] MvPolynomial σ C :=
  MvPolynomial.aeval fun x => if p x then MvPolynomial.X x else 0

theorem coeff_kill (p : σ → Prop) [DecidablePred p] (m : σ →₀ ℕ) (hm : ∀ x ∈ m.support, p x)
    (P : MvPolynomial σ C) : AddMonoidAlgebra.coeff (kill p P) m = AddMonoidAlgebra.coeff P m := by
  classical
  refine MvPolynomial.induction_on' P (fun u a => ?_) (fun P Q hP hQ => ?_)
  · unfold kill
    rw [MvPolynomial.aeval_monomial]
    by_cases hu : ∀ x ∈ u.support, p x
    · have h : (u.prod fun i k => (if p i then MvPolynomial.X i else 0 : MvPolynomial σ C) ^ k) =
          u.prod fun i k => MvPolynomial.X i ^ k := by
        apply Finset.prod_congr rfl
        intro x hx
        dsimp only
        rw [if_pos (hu x hx)]
      rw [h, MvPolynomial.algebraMap_eq, ← MvPolynomial.monomial_eq]
    · push_neg at hu
      obtain ⟨x, hx, hpx⟩ := hu
      have hz : (u.prod fun i k => (if p i then MvPolynomial.X i else 0 : MvPolynomial σ C) ^ k) = 0 := by
        rw [Finsupp.prod]
        apply Finset.prod_eq_zero hx
        rw [if_neg hpx]
        exact zero_pow (Finsupp.mem_support_iff.1 hx)
      have hne : u ≠ m := by
        intro h
        subst u
        exact hpx (hm x hx)
      rw [hz, mul_zero]
      simp [MvPolynomial.coeff_monomial, hne]
  · rw [map_add (f := _), MvPolynomial.coeff_add, MvPolynomial.coeff_add, hP, hQ]

def Lead (p : σ → Prop) [DecidablePred p] (α : σ →₀ ℕ) (P : MvPolynomial σ C) : Prop :=
  kill p P = MvPolynomial.monomial α 1 ∧ P.IsHomogeneous α.degree ∧ ∀ x ∈ α.support, p x

variable {p : σ → Prop} [DecidablePred p]

theorem lead_one : Lead p (0 : σ →₀ ℕ) (1 : MvPolynomial σ C) := by
  classical
  refine ⟨by simp, by simpa using MvPolynomial.isHomogeneous_one σ C, by simp⟩

theorem Lead.mul {α β : σ →₀ ℕ} {P Q : MvPolynomial σ C} (hP : Lead p α P) (hQ : Lead p β Q) :
    Lead p (α + β) (P * Q) := by
  classical
  obtain ⟨hkP, hhP, hsP⟩ := hP
  obtain ⟨hkQ, hhQ, hsQ⟩ := hQ
  refine ⟨?_, ?_, ?_⟩
  · rw [map_mul, hkP, hkQ, MvPolynomial.monomial_mul, mul_one]
  · rw [map_add (f := _)]
    exact hhP.mul hhQ
  · intro x hx
    rcases Finset.mem_union.1 (Finsupp.support_add hx) with h | h
    · exact hsP x h
    · exact hsQ x h

theorem lead_prod {ι : Type} (s : Finset ι) (α : ι → σ →₀ ℕ) (P : ι → MvPolynomial σ C)
    (h : ∀ i ∈ s, Lead p (α i) (P i)) : Lead p (∑ i ∈ s, α i) (∏ i ∈ s, P i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using (lead_one (p := p) : Lead p (0 : σ →₀ ℕ) (1 : MvPolynomial σ C))
  | @insert i s hi ih =>
    rw [Finset.sum_insert hi, Finset.prod_insert hi]
    exact (h i (Finset.mem_insert_self i s)).mul (ih fun k hk => h k (Finset.mem_insert_of_mem hk))

theorem Lead.pow {α : σ →₀ ℕ} {P : MvPolynomial σ C} (hP : Lead p α P) (n : ℕ) :
    Lead p (n • α) (P ^ n) := by
  classical
  induction n with
  | zero => simpa using (lead_one (p := p) : Lead p (0 : σ →₀ ℕ) (1 : MvPolynomial σ C))
  | succ n ih =>
    rw [succ_nsmul, pow_succ]
    exact ih.mul hP

theorem jet_eq {α : σ →₀ ℕ} {P : MvPolynomial σ C} {g : MvPowerSeries σ C} (hP : Lead p α P)
    (hg : Low α g) : jetAt0 P g = (mfact α : C) := by
  classical
  obtain ⟨hk, hh, hs⟩ := hP
  obtain ⟨h1, h0⟩ := hg
  have hcoef : AddMonoidAlgebra.coeff P α = 1 := by
    rw [← coeff_kill p α hs P, hk, MvPolynomial.coeff_monomial, if_pos rfl]
  unfold jetAt0
  rw [Finset.sum_eq_single α]
  · rw [hcoef, h1]
    ring
  · intro m hm hne
    have hdeg : m.degree = α.degree := by
      by_contra hd
      exact (MvPolynomial.mem_support_iff.1 hm) (hh.coeff_eq_zero hd)
    rw [h0 m hdeg.le hne, mul_zero]
  · intro hα
    exact absurd (MvPolynomial.mem_support_iff.2 (by rw [hcoef]; exact one_ne_zero)) hα

theorem lead_det {k : ℕ} (w : Fin k → Fin k → σ) (hw : ∀ b c, p (w b c) ↔ b = c) :
    Lead p (∑ b, Finsupp.single (w b b) 1)
      (Matrix.of fun b c : Fin k => (MvPolynomial.X (w b c) : MvPolynomial σ C)).det := by
  classical
  refine ⟨?_, ?_, ?_⟩
  · rw [AlgHom.map_det]
    have hM : (kill p).mapMatrix (Matrix.of fun b c : Fin k => (MvPolynomial.X (w b c) : MvPolynomial σ C)) =
        Matrix.diagonal fun b => MvPolynomial.X (w b b) := by
      ext b c
      simp only [AlgHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply, Matrix.diagonal_apply, kill,
        MvPolynomial.aeval_X]
      by_cases hbc : b = c
      · subst hbc
        simp [(hw b b).2 rfl]
      · simp [hbc, (hw b c).not.2 hbc]
    rw [hM, Matrix.det_diagonal, MvPolynomial.monomial_sum_one]
    rfl
  · have hdeg : (∑ b : Fin k, Finsupp.single (w b b) 1).degree = k := by

      rw [map_sum]
      simp [Finsupp.degree_single]
    rw [hdeg, Matrix.det_apply]
    apply MvPolynomial.IsHomogeneous.sum
    intro s _
    have hprod : MvPolynomial.IsHomogeneous (∏ i, (Matrix.of fun b c : Fin k =>
        (MvPolynomial.X (w b c) : MvPolynomial σ C)) (s i) i) k := by
      have h := MvPolynomial.IsHomogeneous.prod Finset.univ
        (fun i => (Matrix.of fun b c : Fin k => (MvPolynomial.X (w b c) : MvPolynomial σ C)) (s i) i)
        (fun _ => 1) (fun i _ => MvPolynomial.isHomogeneous_X _ _)
      simpa using h
    rcases Int.units_eq_one_or (Equiv.Perm.sign s) with h | h
    · rw [h, one_smul]
      exact hprod
    · rw [h, Units.neg_smul, one_smul]
      exact hprod.neg
  · intro x hx
    obtain ⟨b, -, hb⟩ := Finset.mem_biUnion.1 (Finsupp.support_finsetSum hx)
    have hx' := Finsupp.support_single_subset hb
    rw [Finset.mem_singleton] at hx'
    rw [hx']
    exact (hw b b).2 rfl

end General

section Diagonal
variable {C : Type} [Field C] {σ : Type} {N N' : ℕ}

def dgOne (j : Fin N × Fin N' → σ) (ρ n : ℕ) : σ →₀ ℕ :=
  if h : ρ < N ∧ ρ < N' then Finsupp.single (j (⟨ρ, h.1⟩, ⟨ρ, h.2⟩)) n else 0

def dg (j : Fin N × Fin N' → σ) (f : ℕ → ℕ) : σ →₀ ℕ := ∑ ρ ∈ Finset.range N, dgOne j ρ (f ρ)

theorem dgOne_eq_smul (j : Fin N × Fin N' → σ) (ρ n : ℕ) : dgOne j ρ n = n • dgOne j ρ 1 := by
  classical
  unfold dgOne
  split_ifs <;> simp [Finsupp.smul_single]

theorem monAl_eq_zero (e : ℕ → ℕ) {ρ : ℕ} (h : ¬ ρ < N') : monAl N N' e ρ = 0 := by
  classical
  unfold monAl
  rw [Finset.Icc_eq_empty (by omega), Finset.sum_empty]

theorem monAl_eq (e : ℕ → ℕ) (ρ : ℕ) :
    monAl N N' e ρ = ∑ k ∈ Finset.Icc 1 (min N N'), if ρ < k then e k else 0 := by
  classical
  unfold monAl
  rw [← Finset.sum_filter]
  congr 1
  ext k
  simp only [Finset.mem_Icc, Finset.mem_filter]
  omega

theorem sum_range_ite {M : Type} [AddCommMonoid M] {k : ℕ} (hk : k ≤ N) (F : ℕ → M) :
    ∑ ρ ∈ Finset.range N, (if ρ < k then F ρ else 0) = ∑ ρ ∈ Finset.range k, F ρ := by
  classical
  rw [← Finset.sum_filter]
  congr 1
  ext ρ
  simp only [Finset.mem_filter, Finset.mem_range]
  omega

theorem dg_monAl (j : Fin N × Fin N' → σ) (e : ℕ → ℕ) :
    dg j (monAl N N' e) =
      ∑ k ∈ Finset.Icc 1 (min N N'), e k • ∑ ρ ∈ Finset.range k, dgOne j ρ 1 := by
  classical
  unfold dg
  have h : ∀ ρ, dgOne j ρ (monAl N N' e ρ) =
      ∑ k ∈ Finset.Icc 1 (min N N'), if ρ < k then e k • dgOne j ρ 1 else 0 := by
    intro ρ
    rw [dgOne_eq_smul, monAl_eq, Finset.sum_smul]
    apply Finset.sum_congr rfl
    intro k _
    split_ifs <;> simp
  rw [Finset.sum_congr rfl (fun ρ _ => h ρ), Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro k hk
  rw [Finset.mem_Icc] at hk
  rw [sum_range_ite (by omega : k ≤ N) (fun ρ => e k • dgOne j ρ 1), Finset.smul_sum]

theorem sum_monAl (e : ℕ → ℕ) : ∑ ρ : Fin N, monAl N N' e ρ.val = monDeg N N' e := by
  classical
  rw [Fin.sum_univ_eq_sum_range (fun ρ => monAl N N' e ρ) N]
  simp only [monAl_eq]
  rw [Finset.sum_comm]
  unfold monDeg
  apply Finset.sum_congr rfl
  intro k hk
  rw [Finset.mem_Icc] at hk
  rw [sum_range_ite (by omega : k ≤ N) (fun _ => e k), Finset.sum_const, Finset.card_range, smul_eq_mul]

variable {p : σ → Prop} [DecidablePred p]

theorem lead_minor (j : Fin N × Fin N' → σ) (hj : ∀ b c, p (j (b, c)) ↔ b.val = c.val) {k : ℕ}
    (hk : k ≤ min N N') :
    Lead p (∑ ρ ∈ Finset.range k, dgOne j ρ 1) (MvPolynomial.rename j (minorK C N N' k)) := by
  classical
  have h1 : k ≤ N := le_trans hk (min_le_left _ _)
  have h2 : k ≤ N' := le_trans hk (min_le_right _ _)
  have hw : ∀ b c : Fin k, p (j (Fin.castLE h1 b, Fin.castLE h2 c)) ↔ b = c := by
    intro b c
    rw [hj, Fin.val_castLE, Fin.val_castLE, Fin.val_inj]
  have hL := lead_det (C := C) (p := p) (fun b c : Fin k => j (Fin.castLE h1 b, Fin.castLE h2 c)) hw
  have hpoly : MvPolynomial.rename j (minorK C N N' k) = (Matrix.of fun b c : Fin k =>
      (MvPolynomial.X (j (Fin.castLE h1 b, Fin.castLE h2 c)) : MvPolynomial σ C)).det := by
    unfold minorK
    rw [dite_eq_left ⟨h1, h2⟩, AlgHom.map_det]
    congr 1
    ext b c
    simp [MvPolynomial.rename_X]
  have hexp : ∑ ρ ∈ Finset.range k, dgOne j ρ 1 =
      ∑ b : Fin k, Finsupp.single (j (Fin.castLE h1 b, Fin.castLE h2 b)) 1 := by
    rw [← Fin.sum_univ_eq_sum_range (fun ρ => dgOne j ρ 1) k]
    apply Finset.sum_congr rfl
    intro b _
    unfold dgOne
    rw [dite_eq_left ⟨lt_of_lt_of_le b.isLt h1, lt_of_lt_of_le b.isLt h2⟩]
    rfl
  rw [hpoly, hexp]
  exact hL

theorem lead_monP (j : Fin N × Fin N' → σ) (hj : ∀ b c, p (j (b, c)) ↔ b.val = c.val)
    (e : ℕ → ℕ) :
    Lead p (dg j (monAl N N' e)) (MvPolynomial.rename j (monP C N N' e)) := by
  classical
  unfold monP
  rw [map_prod]
  simp_rw [map_pow]
  rw [dg_monAl]
  apply lead_prod
  intro k hk
  exact (lead_minor j hj (Finset.mem_Icc.1 hk).2).pow (e k)

theorem low_monG (j : Fin N × Fin N' → σ) {t : σ → MvPowerSeries σ C} (ht : TangentId t)
    (e : ℕ → ℕ) : Low (dg j (monAl N N' e)) (monG N N' e fun x => t (j x)) := by
  classical
  unfold monG dg
  rw [← Fin.sum_univ_eq_sum_range (fun ρ => dgOne j ρ (monAl N N' e ρ)) N]
  apply low_prod
  intro ρ _
  unfold dgOne
  by_cases h : ρ.val < N'
  · rw [dite_eq_left h, dite_eq_left ⟨ρ.isLt, h⟩]
    exact low_tangent ht (j (ρ, ⟨ρ, h⟩)) _
  · rw [dite_eq_right h, dite_eq_right (fun hh => h hh.2)]
    exact low_one

theorem dg_apply (j : Fin N × Fin N' → σ) (hj : Function.Injective j) (f : ℕ → ℕ)
    (b : Fin N) (c : Fin N') : dg j f (j (b, c)) = if b.val = c.val then f b.val else 0 := by
  classical
  unfold dg
  rw [Finsupp.finsetSum_apply, Finset.sum_eq_single b.val]
  · unfold dgOne
    by_cases hbc : b.val = c.val
    · rw [if_pos hbc, dite_eq_left ⟨b.isLt, by rw [hbc]; exact c.isLt⟩, Finsupp.single_apply,
        if_pos (by congr 1; exact Prod.ext (Fin.ext rfl) (Fin.ext hbc))]
    · rw [if_neg hbc]
      split_ifs with h
      · rw [Finsupp.single_apply, if_neg]
        intro he
        have h' := congrArg (fun x => x.2.val) (hj he)
        exact hbc (by simpa using h')
      · rfl
  · intro ρ _ hρ
    unfold dgOne
    split_ifs with h
    · rw [Finsupp.single_apply, if_neg]
      intro he
      have h' := congrArg (fun x => x.1.val) (hj he)
      exact hρ (by simpa using h')
    · rfl
  · intro hb
    exact absurd (Finset.mem_range.2 b.isLt) hb

theorem dg_apply_of_notMem (j : Fin N × Fin N' → σ) (f : ℕ → ℕ) (x : σ) (hx : ∀ y, x ≠ j y) :
    dg j f x = 0 := by
  classical
  unfold dg
  rw [Finsupp.finsetSum_apply]
  apply Finset.sum_eq_zero
  intro ρ _
  unfold dgOne
  split_ifs
  · rw [Finsupp.single_apply, if_neg (fun h => hx _ h.symm)]
  · rfl

end Diagonal

section Valuation
variable {C : Type} [Field C] (v : AddValuation C (WithTop ℝ))

theorem val_coprime {l : ℕ} (hl : l.Prime) (hv : v (l : C) = 1) {n : ℕ} (hn : ¬ l ∣ n) :
    v (n : C) = 0 := by
  apply GlobalTheory.FGDepth.val_natCast_eq_zero <;> assumption

theorem val_nat {l : ℕ} (hl : l.Prime) (hv : v (l : C) = 1) {n : ℕ} (hn : n ≠ 0) :
    v (n : C) = (((padicValNat l n : ℕ) : ℝ) : WithTop ℝ) := by
  classical
  obtain ⟨e, m, hm, rfl⟩ := Nat.exists_eq_pow_mul_and_not_dvd hn l hl.ne_one
  have hm0 : m ≠ 0 := by
    rintro rfl
    exact hm (dvd_zero l)
  have hfact := Fact.mk hl
  rw [(show ∀ {p a b : ℕ} [_root_.Fact (_root_.Nat.Prime p)], a ≠ 0 → b ≠ 0 → _root_.padicValNat p (a * b) = _root_.padicValNat p a + _root_.padicValNat p b from by simpa only [← _root_.Nat.padicValNat_def] using @_root_.Nat.multiplicity_mul) (pow_ne_zero _ hl.ne_zero) hm0, Nat.padicValNat_def, padicValNat.prime_pow,
    Nat.padicValNat_def, padicValNat.eq_zero_of_not_dvd hm, add_zero, Nat.cast_mul, Nat.cast_pow, AddValuation.map_mul,
    AddValuation.map_pow, hv, val_coprime v hl hv hm, add_zero, ← WithTop.coe_one, ← WithTop.coe_nsmul,
    nsmul_eq_mul, mul_one]

end Valuation

end GlobalTheory.MinorGerm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.ProdFactorialDiag =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.MonomialBlockSupplyBothTypings =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.MonomialBlockSupplyBothTypings", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.CoeffIterateZero\npublic import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.ProdFactorialDiag\npublic import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.CharacterBlocksAttainBound\npublic import Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.LegendreAndCapelli\nimport Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.LegendreBoundsFactorialMultiIndexCapelli\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\npublic import Mathlib.Data.Nat.Prime.Factorial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.MvPowerSeries.Rename\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators
open Classical

namespace GlobalTheory.MonBlock

open Formalism.L2.FormalSeriesBounds Formalism.IncomingBounds MvPowerSeries GlobalTheory.MinorGerm

variable {C : Type} [Field C]

def Tan {σ : Type} (x : σ) (F : MvPowerSeries σ C) : Prop :=
  ∀ m : σ →₀ ℕ, m.degree ≤ 1 → coeff m F = coeff m (X x : MvPowerSeries σ C)

theorem Tan.subst {σ τ : Type} [Finite σ] {x : σ} {F : MvPowerSeries σ C} (h : Tan x F) (e : σ → τ) :
    Tan (e x) (F.subst fun j => (X (e j) : MvPowerSeries τ C)) := by
  intro m hm
  have h1 : rename e F = F.subst fun j => (X (e j) : MvPowerSeries τ C) := rename_eq_subst e F
  rw [← h1, ← rename_X e x, coeff_rename, coeff_rename]
  refine Finset.sum_congr rfl fun y hy => h y ?_
  have : Finsupp.mapDomain e y = m := by simpa using hy
  rw [← this, Finsupp.degree_mapDomain] at hm
  exact hm

variable {V : VF C} {d : ℕ}

theorem tan_std {I J : Type} [Fintype I] [Fintype J] (X : Cart V d I J)
    {t : I → MvPowerSeries I C} (ht : (GlobalTheory.CharBlock.stdSys X).IsT t) (x : I) : Tan x (t x) := by
  intro m hm
  have h := ht.2 x m
  rw [Sys.eqn_eq] at h
  have h2 : (GlobalTheory.CharBlock.stdSys X).Rr t x m = 0 := by
    unfold Sys.Rr
    refine Finset.sum_eq_zero fun s _ => Finset.sum_eq_zero fun c _ => ?_
    have h3 := le_order_pow_of_constantCoeff_eq_zero (V.l ^ (s + 1)) (ht.1 c)
    have h4 := Sys.two_le_pow (V := V) s
    rw [coeff_of_lt_order (lt_of_lt_of_le (by exact_mod_cast (by omega)) h3), mul_zero]
  have h5 : (GlobalTheory.CharBlock.stdSys X).Mt = 1 := by
    ext a b
    simp [Sys.Mt, GlobalTheory.CharBlock.stdSys, Matrix.one_apply, Pi.single_apply, eq_comm]
  rw [h2, h5, Matrix.vecMul_one, add_zero] at h
  rw [coeff_X]
  convert h

variable {I J : Fin 2 → Type} [∀ g, Fintype (I g)] [∀ g, Fintype (J g)]

theorem cc_upG (g : Fin 2) (F : MvPowerSeries (I g) C) :
    constantCoeff (upG g F) = constantCoeff F := by
  have h1 : rename (fun x : I g => (⟨g, x⟩ : WV I)) F = upG g F := rename_eq_subst _ F
  rw [← h1, constantCoeff_rename]

def IsMon (t : ∀ g, I g → MvPowerSeries (I g) C) (F : MvPowerSeries (WV I) C) : Prop :=
  ∃ m : WV I →₀ ℕ, F = subst (fun w : WV I => upG w.1 (t w.1 w.2)) (monomial m (1 : C))

section
variable {t : ∀ g, I g → MvPowerSeries (I g) C} (h0 : ∀ g c, constantCoeff (t g c) = 0)
include h0

theorem hasSubst_upG_curveSystem : HasSubst (fun w : WV I => upG w.1 (t w.1 w.2)) :=
  hasSubst_of_constantCoeff_zero fun w => by rw [cc_upG, h0]

theorem isMon_one : IsMon t 1 :=
  ⟨0, by rw [← coe_substAlgHom (hasSubst_upG_curveSystem h0)]; exact (map_one _).symm⟩

theorem IsMon.mul {F G : MvPowerSeries (WV I) C} (hF : IsMon t F) (hG : IsMon t G) :
    IsMon t (F * G) := by
  obtain ⟨m, rfl⟩ := hF
  obtain ⟨m', rfl⟩ := hG
  refine ⟨m + m', ?_⟩
  rw [← subst_mul (hasSubst_upG_curveSystem h0), monomial_mul_monomial, one_mul]

theorem isMon_pow (g : Fin 2) (c : I g) (n : ℕ) : IsMon t (upG g (t g c) ^ n) := by
  induction n with
  | zero => simpa using isMon_one h0
  | succ n ih =>
    rw [pow_succ]
    refine ih.mul h0 ⟨Finsupp.single ⟨g, c⟩ 1, ?_⟩
    exact (subst_X (hasSubst_upG_curveSystem h0) (⟨g, c⟩ : WV I)).symm

theorem isMon_prod {ι : Type} (s : Finset ι) (F : ι → MvPowerSeries (WV I) C)
    (h : ∀ i, IsMon t (F i)) : IsMon t (∏ i ∈ s, F i) :=
  Finset.prod_induction _ _ (fun _ _ => IsMon.mul h0) (isMon_one h0) fun i _ => h i

omit h0 in
theorem IsMon.mem {F : MvPowerSeries (WV I) C} (hF : IsMon t F) : F ∈ IntGerm V t := by
  obtain ⟨m, rfl⟩ := hF
  refine ⟨_, fun μ => ?_, rfl⟩
  rw [coeff_monomial]
  split_ifs
  · exact VF.Ge.one
  · exact VF.Ge.zero 0

end

theorem degree_dg {σ : Type} {N N' : ℕ} (j : Fin N × Fin N' → σ) (e : ℕ → ℕ) :
    (dg j (monAl N N' e)).degree = monDeg N N' e := by

  rw [← sum_monAl, Fin.sum_univ_eq_sum_range (fun ρ => monAl N N' e ρ) N, dg, map_sum]
  refine Finset.sum_congr rfl fun ρ hρ => ?_
  unfold dgOne
  split_ifs with h
  · simp
  · rw [monAl_eq_zero e fun h' => h ⟨Finset.mem_range.1 hρ, h'⟩, map_zero]

variable [NeZero d]

theorem core (X : RowData C V d I J) (g : Fin 2) (r : ZMod d → ℕ) (en : ∀ a, Fin (r a) → I g)
    (hinj : ∀ a, Function.Injective (en a)) (hty : ∀ a c, (X.G g).ty (Sum.inl (en a c)) = a)
    (e : ZMod d → ℕ → ℕ) (N : ℕ) :
    ∃ (S : ∀ g, Sys (X.G g)) (t : ∀ g, I g → MvPowerSeries (I g) C), (∀ g, (S g).IsT (t g)) ∧
      ∃ gr : Fin N → MvPowerSeries (WV I) C, (∀ ρ, gr ρ ∈ IntGerm V t) ∧
        V.v (ValOf X.hL (∏ a : ZMod d, MvPolynomial.rename
          (fun x : Fin N × Fin (r a) => ((x.1, ⟨g, en a x.2⟩) : Fin N × WV I))
          (monP C N (r a) (e a))) (fun _ => none) gr) ≤
          (((((∑ a, monDeg N (r a) (e a) : ℕ) : ℝ) / ((V.l : ℝ) - 1)) : ℝ) : WithTop ℝ) ∧
        ((∀ a ρ, monAl N (r a) (e a) ρ < V.l) → V.v (ValOf X.hL (∏ a : ZMod d, MvPolynomial.rename
          (fun x : Fin N × Fin (r a) => ((x.1, ⟨g, en a x.2⟩) : Fin N × WV I))
          (monP C N (r a) (e a))) (fun _ => none) gr) ≤ ((0 : ℝ) : WithTop ℝ)) := by
  choose t ht _ using fun g => tExistsUnique (X.G g) (GlobalTheory.CharBlock.stdSys (X.G g))
  have h0 : ∀ g c, constantCoeff (t g c) = 0 := fun g => (ht g).1
  let j : ∀ a, Fin N × Fin (r a) → Fin N × WV I := fun a x => (x.1, ⟨g, en a x.2⟩)
  have hj : ∀ a a' y y', j a y = j a' y' → a = a' := by
    intro a a' y y' h
    have h1 : en a y.2 = en a' y'.2 := eq_of_heq (Sigma.mk.inj (Prod.mk.inj h).2).2
    rw [← hty a y.2, h1, hty]
  have hj' : ∀ a, Function.Injective (j a) := by
    intro a y y' h
    exact Prod.ext (Prod.mk.inj h).1 (hinj a (eq_of_heq (Sigma.mk.inj (Prod.mk.inj h).2).2))
  let T : Fin N × WV I → MvPowerSeries (Fin N × WV I) C :=
    fun x => rowCopy x.1 (upG x.2.1 (t x.2.1 x.2.2))
  have hT : TangentId T := fun x =>
    ((tan_std _ (ht x.2.1) x.2.2).subst (fun c : I x.2.1 => (⟨x.2.1, c⟩ : WV I))).subst
      fun w : WV I => (x.1, w)
  let gr : Fin N → MvPowerSeries (WV I) C := fun ρ => ∏ a : ZMod d,
    if h : ρ.val < r a then upG g (t g (en a ⟨ρ.val, h⟩)) ^ monAl N (r a) (e a) ρ.val else 1
  have hgr : ∀ ρ, gr ρ ∈ IntGerm V t := fun ρ => IsMon.mem <| isMon_prod h0 _ _ fun a => by
    split_ifs
    · exact isMon_pow h0 _ _ _
    · exact isMon_one h0
  have hlead := lead_prod (C := C)
    (p := fun x : Fin N × WV I => ∃ a y, x = j a y ∧ y.1.val = y.2.val) Finset.univ _ _
    fun a _ => lead_monP (j a) (fun b c => ⟨fun ⟨a', y, h1, h2⟩ => by
      obtain rfl := hj _ _ _ _ h1
      obtain rfl := hj' _ h1
      exact h2, fun h => ⟨a, (b, c), rfl, h⟩⟩) (e a)
  have hlow := low_prod Finset.univ _ _ fun a _ => low_monG (j a) hT (e a)
  have hval : ValOf X.hL (∏ a : ZMod d, MvPolynomial.rename (j a) (monP C N (r a) (e a)))
      (fun _ => none) gr = (mfact (∑ a, dg (j a) (monAl N (r a) (e a))) : C) := by
    rw [← jet_eq hlead hlow]
    unfold ValOf
    congr 1
    have hs : ∀ ρ : Fin N, HasSubst
        (fun w : WV I => (MvPowerSeries.X (ρ, w) : MvPowerSeries (Fin N × WV I) C)) :=
      fun ρ => hasSubst_of_constantCoeff_zero (by simp)
    unfold monG
    rw [Finset.prod_comm]
    refine Finset.prod_congr rfl fun ρ _ => ?_
    have hc : ∀ F, rowCopy ρ F = substAlgHom (hs ρ) F := fun F => by
      rw [coe_substAlgHom]; rfl
    rw [hc, hc, map_zero, GlobalTheory.CharBlock.mvExp_zero, mul_one, map_prod]
    refine Finset.prod_congr rfl fun a _ => ?_
    split_ifs
    · rw [map_pow, ← hc]
    · rw [map_one]
  refine ⟨fun g => GlobalTheory.CharBlock.stdSys (X.G g), t, ht, gr, hgr, ?_, fun h => ?_⟩
  · rw [hval, GlobalTheory.LegendreFacts.mfact_eq_prod,
      val_nat V.v V.l_prime V.v_l (Finset.prod_ne_zero_iff.2 fun _ _ => Nat.factorial_ne_zero _),
      WithTop.coe_le_coe, GlobalTheory.LegendreBounds.padicValNat_prod_factorial V.l V.l_prime]
    have hd : ∑ a, monDeg N (r a) (e a) = ∑ x, (∑ a, dg (j a) (monAl N (r a) (e a))) x := by

      rw [← Finsupp.degree_eq_sum, map_sum]
      exact Finset.sum_congr rfl fun a _ => (degree_dg _ _).symm
    rw [hd, Nat.cast_sum, Finset.sum_div]
    exact Finset.sum_le_sum fun ρ _ => GlobalTheory.LegendreBounds.upper V.l V.l_prime _
  · rw [hval, GlobalTheory.LegendreFacts.mfact_eq_prod]
    refine le_of_eq (val_coprime V.v V.l_prime V.v_l fun hd => ?_)
    obtain ⟨x, -, hx⟩ := (Prime.dvd_finsetProd_iff V.l_prime.prime _).1 hd
    refine absurd ((V.l_prime.dvd_factorial).1 hx) (not_le.2 ?_)
    rw [Finsupp.finsetSum_apply]
    by_cases hx' : ∃ a y, x = j a y
    · obtain ⟨a, y, rfl⟩ := hx'
      rw [Finset.sum_eq_single a, dg_apply (j a) (hj' a) _ y.1 y.2]
      · split_ifs
        · exact h _ _
        · exact V.l_prime.pos
      · intro a' _ ha
        exact dg_apply_of_notMem _ _ _ fun y' h' => ha (hj _ _ _ _ h').symm
      · simp
    · rw [Finset.sum_eq_zero fun a _ => dg_apply_of_notMem _ _ _ fun y' h' => hx' ⟨a, y', h'⟩]
      exact V.l_prime.pos

theorem monSupply : MONSupply ∧ RF.MONSupply := by
  constructor
  · intro C _ V d _ I J _ _ X F g e N
    obtain ⟨S, t, ht, gr, hgr, h1, h2⟩ :=
      core X g (X.rk g) (F.en g) (F.en_inj g) (F.en_ty g) e N
    exact ⟨⟨S, t, ht, gr, hgr, h1⟩, fun h => ⟨S, t, ht, gr, hgr, h2 h⟩⟩
  · intro C _ V d _ I J _ _ X F g e N
    obtain ⟨S, t, ht, gr, hgr, h1, h2⟩ :=
      core X g (X.rkF g) (F.en g) (F.en_inj g) (F.en_ty g) e N
    exact ⟨⟨S, t, ht, gr, hgr, h1⟩, fun h => ⟨S, t, ht, gr, hgr, h2 h⟩⟩

end GlobalTheory.MonBlock
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.UnramifiedDepth.MonomialBlockSupplyBothTypings =====
