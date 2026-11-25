module

public import Formalism.PolynomialDimension.StatementHar
public import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.TypeStar
import Formalism.PolynomialDimension.MultinomialDepth.HarmonicDecompositionHolds
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PolynomialDimension.MultinomialDepth.DiagLaplacianDivPowMemSqrtFockLattice, Formalism.PolynomialDimension.MultinomialDepth.SqrtFockGaussLatticeComparisonHolds

-- ===== clump member: Formalism.PolynomialDimension.MultinomialDepth.DiagLaplacianDivPowMemSqrtFockLattice =====
-- clump-header: {"m": "Formalism.PolynomialDimension.MultinomialDepth.DiagLaplacianDivPowMemSqrtFockLattice", "h": "module\n\npublic import Formalism.PolynomialDimension.StatementHar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Finset MvPolynomial

namespace Formalism.CountingSumsFrames

section DivPow

variable {K E : Type*} [Field K] [CharZero K] [Ring E] [Algebra K E]

theorem divPow_add_mem (S : Subsemiring E) (a b : E) (hab : Commute a b)
    (ha : ∀ n : ℕ, ((n.factorial : K)⁻¹) • a ^ n ∈ S) (hb : ∀ n : ℕ, ((n.factorial : K)⁻¹) • b ^ n ∈ S)
    (n : ℕ) : ((n.factorial : K)⁻¹) • (a + b) ^ n ∈ S := by
  rw [hab.add_pow', Finset.smul_sum]
  refine S.sum_mem ?_
  rintro ⟨i, j⟩ hij
  have hn : i + j = n := by simpa using hij
  subst hn
  have key : (((i + j).factorial : K)⁻¹) • ((i + j).choose i • (a ^ i * b ^ j)) =
      (((i.factorial : K)⁻¹) • a ^ i) * (((j.factorial : K)⁻¹) • b ^ j) := by
    rw [smul_mul_smul_comm, ← Nat.cast_smul_eq_nsmul K, smul_smul]
    congr 1
    have h1 : (((i + j).choose i * i.factorial * j.factorial : ℕ) : K) = ((i + j).factorial : K) := by
      rw [Nat.choose_symm_add, Nat.add_choose_mul_factorial_mul_factorial]
    have hi : (i.factorial : K) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero i)
    have hj : (j.factorial : K) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero j)
    have hij' : ((i + j).factorial : K) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero _)
    push_cast at h1
    field_simp
    linear_combination h1
  simp only
  rw [key]
  exact S.mul_mem (ha i) (hb j)

theorem divPow_sum_mem {ι : Type*} (S : Subsemiring E) (s : Finset ι) (a : ι → E)
    (hc : ∀ i j, Commute (a i) (a j)) (ha : ∀ (i : ι) (n : ℕ), ((n.factorial : K)⁻¹) • a i ^ n ∈ S) :
    ∀ n : ℕ, ((n.factorial : K)⁻¹) • (∑ i ∈ s, a i) ^ n ∈ S := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    intro n
    rcases Nat.eq_zero_or_pos n with rfl | hn
    · simp
    · simp [zero_pow hn.ne']
  | insert i s hi ih =>
    intro n
    rw [Finset.sum_insert hi]
    exact divPow_add_mem S _ _ (Commute.sum_right _ _ _ fun j _ => hc i j) (ha i) ih n

def stabilizerSubsemiring {V : Type*} [AddCommGroup V] [Module K V] (L : Set V)
    (hadd : ∀ f g, f ∈ L → g ∈ L → f + g ∈ L) (h0 : (0 : V) ∈ L) : Subsemiring (Module.End K V) where
  carrier := {T | ∀ f ∈ L, T f ∈ L}
  mul_mem' := by
    intro S T hS hT f hf
    exact hS _ (hT _ hf)
  one_mem' := by
    intro f hf
    exact hf
  add_mem' := by
    intro S T hS hT f hf
    exact hadd _ _ (hS _ hf) (hT _ hf)
  zero_mem' := by
    intro f _
    exact h0

end DivPow

theorem pow_log_div_choose_mem {K : Type} [Field K] [CharZero K] (R : Subring K) (p : ℕ) (hp : p.Prime) (hR : PLocal R p)
    (n N l : ℕ) (hn : n ≤ N) : (p : K) ^ Nat.log p N / ((n.choose l : ℕ) : K) ∈ R := by
  by_cases hc : n.choose l = 0
  · rw [hc]; simp
  · obtain ⟨e, u, hu, hcu⟩ := Nat.exists_eq_pow_mul_and_not_dvd hc p hp.ne_one
    have he : e ≤ Nat.log p N := by
      have h1 : p ^ e ∣ n.choose l := ⟨u, hcu⟩
      have h2 : e ≤ (n.choose l).factorization p := (hp.pow_dvd_iff_le_factorization hc).1 h1
      exact h2.trans (Nat.factorization_choose_le_log.trans (Nat.log_mono_right hn))
    have hp0 : (p : K) ≠ 0 := Nat.cast_ne_zero.2 hp.ne_zero
    have hu0 : (u : K) ≠ 0 := by
      refine Nat.cast_ne_zero.2 ?_
      rintro rfl
      exact hu (dvd_zero p)
    have : (p : K) ^ Nat.log p N / ((n.choose l : ℕ) : K) = (p : K) ^ (Nat.log p N - e) * (u : K)⁻¹ := by
      rw [hcu]
      push_cast
      obtain ⟨d, hd⟩ := Nat.exists_eq_add_of_le he
      rw [hd, Nat.add_sub_cancel_left, pow_add]
      field_simp
    rw [this]
    exact R.mul_mem (R.pow_mem (natCast_mem R p) _) (hR u hu)

section Coeff

variable {K : Type} [Field K] [CharZero K] {k : ℕ}

def h3s (i : Fin k) (n : ℕ) : XY k →₀ ℕ := Finsupp.single (Sum.inl i) n + Finsupp.single (Sum.inr i) n

theorem diagExponent_inl (i j : Fin k) (n : ℕ) : h3s i n (Sum.inl j) = if i = j then n else 0 := by
  simp [h3s, Finsupp.single_apply]

theorem diagExponent_inr (i j : Fin k) (n : ℕ) : h3s i n (Sum.inr j) = if i = j then n else 0 := by
  simp [h3s, Finsupp.single_apply]

theorem factorial_add_eq_descFactorial_mul (a n : ℕ) : (a + n).factorial = (a + n).descFactorial n * a.factorial := by
  have := Nat.factorial_mul_descFactorial (Nat.le_add_left n a)
  rw [Nat.add_sub_cancel] at this
  rw [← this, mul_comm]

theorem xFactorial_add_diagExponent (m : XY k →₀ ℕ) (i : Fin k) (n : ℕ) :
    xFact (m + h3s i n) = (m (Sum.inl i) + n).descFactorial n * xFact m := by
  classical
  unfold xFact
  rw [← Finset.mul_prod_erase univ _ (Finset.mem_univ i), ← Finset.mul_prod_erase univ (fun j => (m (Sum.inl j)).factorial) (Finset.mem_univ i)]
  have h1 : ∏ j ∈ univ.erase i, ((m + h3s i n) (Sum.inl j)).factorial =
      ∏ j ∈ univ.erase i, (m (Sum.inl j)).factorial := by
    refine Finset.prod_congr rfl fun j hj => ?_
    have : i ≠ j := (Finset.ne_of_mem_erase hj).symm
    simp [diagExponent_inl, this]
  rw [h1]
  simp only [Finsupp.add_apply, diagExponent_inl, if_true]
  rw [factorial_add_eq_descFactorial_mul, mul_assoc]

def h3e (K : Type) [Field K] {k : ℕ} (i : Fin k) : Module.End K (PolXY K k) :=
  LinearMap.mulLeft K (X (Sum.inl i) * X (Sum.inr i))

def h3d (K : Type) [Field K] {k : ℕ} (i : Fin k) : Module.End K (PolXY K k) :=
  (pderiv (R := K) (Sum.inl i : XY k)).toLinearMap ∘ₗ (pderiv (R := K) (Sum.inr i : XY k)).toLinearMap

theorem diagLaplacian_apply (i : Fin k) (f : PolXY K k) :
    h3d K i f = pderiv (Sum.inl i) (pderiv (Sum.inr i) f) := rfl

theorem diagMul_pow_apply (i : Fin k) (n : ℕ) (f : PolXY K k) :
    (h3e K i ^ n) f = monomial (h3s i n) (1 : K) * f := by
  have : (monomial (h3s i n) (1 : K) : PolXY K k) = (X (Sum.inl i) * X (Sum.inr i)) ^ n := by
    rw [mul_pow, X_pow_eq_monomial, X_pow_eq_monomial, monomial_mul, one_mul, h3s]
  rw [this, h3e, LinearMap.pow_mulLeft, LinearMap.mulLeft_apply]

theorem coeff_diagMul_pow (i : Fin k) (n : ℕ) (f : PolXY K k) (m : XY k →₀ ℕ) :
    AddMonoidAlgebra.coeff ((h3e K i ^ n) f) m = if h3s i n ≤ m then AddMonoidAlgebra.coeff f (m - h3s i n) else 0 := by
  rw [diagMul_pow_apply, coeff_monomial_mul', one_mul]

theorem coeff_diagLaplacian_pow (i : Fin k) (n : ℕ) : ∀ (f : PolXY K k) (m : XY k →₀ ℕ),
    AddMonoidAlgebra.coeff ((h3d K i ^ n) f) m = AddMonoidAlgebra.coeff f (m + h3s i n) *
      (((m (Sum.inl i) + n).descFactorial n : ℕ) * ((m (Sum.inr i) + n).descFactorial n : ℕ)) := by
  induction n with
  | zero => intro f m; simp [h3s]
  | succ n ih =>
    intro f m
    rw [pow_succ, Module.End.mul_apply, ih]
    have h1 : AddMonoidAlgebra.coeff (h3d K i f) (m + h3s i n) = AddMonoidAlgebra.coeff f (m + h3s i (n + 1)) *
        (((m (Sum.inl i) + n + 1 : ℕ) : K) * ((m (Sum.inr i) + n + 1 : ℕ) : K)) := by
      simp only [diagLaplacian_apply, coeff_pderiv]
      have e : m + h3s i n + Finsupp.single (Sum.inl i) 1 + Finsupp.single (Sum.inr i) 1 = m + h3s i (n + 1) := by
        simp only [h3s, Finsupp.single_add]
        abel
      rw [e]
      simp [diagExponent_inl, diagExponent_inr]
      ring
    rw [h1, ← add_assoc, ← add_assoc, Nat.succ_descFactorial_succ, Nat.succ_descFactorial_succ]
    push_cast
    ring

theorem diagMul_commute (i j : Fin k) : Commute (h3e K i) (h3e K j) := by
  refine LinearMap.ext fun f => ?_
  simp only [Module.End.mul_apply, h3e, LinearMap.mulLeft_apply]
  ring

theorem diagLaplacian_commute (i j : Fin k) : Commute (h3d K i) (h3d K j) := by
  refine LinearMap.ext fun f => ?_
  ext m
  simp only [Module.End.mul_apply, diagLaplacian_apply, coeff_pderiv]
  have e : m + Finsupp.single (Sum.inl i) 1 + Finsupp.single (Sum.inr i) 1 + Finsupp.single (Sum.inl j) 1 +
      Finsupp.single (Sum.inr j) 1 = m + Finsupp.single (Sum.inl j) 1 + Finsupp.single (Sum.inr j) 1 +
      Finsupp.single (Sum.inl i) 1 + Finsupp.single (Sum.inr i) 1 := by abel
  rw [e]
  by_cases hij : i = j
  · subst hij; rfl
  · have hji : ¬ j = i := fun h => hij h.symm
    simp [hij, hji]
    ring

theorem pairingDivPow_eq (l : ℕ) : hDiv K k l = ((l.factorial : K)⁻¹) • (∑ i : Fin k, h3e K i) ^ l := by
  have : (∑ i : Fin k, h3e K i) = LinearMap.mulLeft K (hXY K k) := by
    refine LinearMap.ext fun f => ?_
    simp [h3e, hXY, Finset.sum_mul, LinearMap.sum_apply, mul_assoc]
  rw [this, LinearMap.pow_mulLeft, hDiv]

theorem laplacianDivPow_eq (l : ℕ) : ctrDiv K k l = ((l.factorial : K)⁻¹) • (∑ i : Fin k, h3d K i) ^ l := rfl

end Coeff

section Std

variable {K : Type} [Field K] [CharZero K] {k : ℕ}

theorem descFactorial_cast_eq (a n : ℕ) :
    (((a + n).descFactorial n : ℕ) : K) = (n.factorial : K) * (((a + n).choose n : ℕ) : K) := by
  rw [Nat.descFactorial_eq_factorial_mul_choose]; push_cast; ring

theorem zero_mem_fockLattice (R : Subring K) : (0 : PolXY K k) ∈ FockLat R := by
  intro m; simp

theorem add_mem_fockLattice (R : Subring K) (f g : PolXY K k) (hf : f ∈ FockLat R) (hg : g ∈ FockLat R) :
    f + g ∈ FockLat R := by
  intro m
  rw [MvPolynomial.coeff_add, mul_add]
  exact R.add_mem (hf m) (hg m)

theorem smul_mem_fockLattice (R : Subring K) (r : K) (hr : r ∈ R) (f : PolXY K k) (hf : f ∈ FockLat R) :
    r • f ∈ FockLat R := by
  intro m
  rw [MvPolynomial.coeff_smul, smul_eq_mul, mul_left_comm]
  exact R.mul_mem hr (hf m)

theorem diagMul_divPow_mem_fockLattice (R : Subring K) (i : Fin k) (n : ℕ) (f : PolXY K k) (hf : f ∈ FockLat R) :
    (((n.factorial : K)⁻¹) • h3e K i ^ n) f ∈ FockLat R := by
  intro m
  rw [LinearMap.smul_apply, MvPolynomial.coeff_smul, smul_eq_mul, coeff_diagMul_pow]
  split_ifs with h
  · obtain ⟨m', rfl⟩ : ∃ m', m = m' + h3s i n := ⟨m - h3s i n, (tsub_add_cancel_of_le h).symm⟩
    rw [add_tsub_cancel_right, xFactorial_add_diagExponent]
    have hn : (n.factorial : K) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero n)
    have : (((m' (Sum.inl i) + n).descFactorial n * xFact m' : ℕ) : K) * ((n.factorial : K)⁻¹ * AddMonoidAlgebra.coeff f m') =
        (((m' (Sum.inl i) + n).choose n : ℕ) : K) * ((xFact m' : K) * AddMonoidAlgebra.coeff f m') := by
      rw [Nat.cast_mul, descFactorial_cast_eq]
      field_simp
    rw [this]
    exact R.mul_mem (natCast_mem R _) (hf m')
  · simp

theorem diagLaplacian_divPow_mem_fockLattice (R : Subring K) (i : Fin k) (n : ℕ) (f : PolXY K k) (hf : f ∈ FockLat R) :
    (((n.factorial : K)⁻¹) • h3d K i ^ n) f ∈ FockLat R := by
  intro m
  rw [LinearMap.smul_apply, MvPolynomial.coeff_smul, smul_eq_mul, coeff_diagLaplacian_pow]
  have hn : (n.factorial : K) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero n)
  have h1 := hf (m + h3s i n)
  rw [xFactorial_add_diagExponent] at h1
  have : (xFact m : K) * ((n.factorial : K)⁻¹ * (AddMonoidAlgebra.coeff f (m + h3s i n) *
        ((((m (Sum.inl i) + n).descFactorial n : ℕ) : K) * (((m (Sum.inr i) + n).descFactorial n : ℕ) : K)))) =
      (((m (Sum.inr i) + n).choose n : ℕ) : K) *
        ((((m (Sum.inl i) + n).descFactorial n * xFact m : ℕ) : K) * AddMonoidAlgebra.coeff f (m + h3s i n)) := by
    rw [Nat.cast_mul, descFactorial_cast_eq (m (Sum.inr i))]
    field_simp
  rw [this]
  exact R.mul_mem (natCast_mem R _) h1

theorem divPow_mem_of_generators (L : Set (PolXY K k)) (hadd : ∀ f g, f ∈ L → g ∈ L → f + g ∈ L) (h0 : (0 : PolXY K k) ∈ L)
    (he : ∀ (i : Fin k) (n : ℕ) (f : PolXY K k), f ∈ L → (((n.factorial : K)⁻¹) • h3e K i ^ n) f ∈ L)
    (hd : ∀ (i : Fin k) (n : ℕ) (f : PolXY K k), f ∈ L → (((n.factorial : K)⁻¹) • h3d K i ^ n) f ∈ L)
    (l : ℕ) (f : PolXY K k) (hf : f ∈ L) : hDiv K k l f ∈ L ∧ ctrDiv K k l f ∈ L := by
  constructor
  · rw [pairingDivPow_eq]
    exact divPow_sum_mem (K := K) (stabilizerSubsemiring (K := K) L hadd h0) univ (fun i => h3e K i) diagMul_commute
      (fun i n => he i n) l f hf
  · rw [laplacianDivPow_eq]
    exact divPow_sum_mem (K := K) (stabilizerSubsemiring (K := K) L hadd h0) univ (fun i => h3d K i) diagLaplacian_commute
      (fun i n => hd i n) l f hf

end Std

section SubstGL

variable {K : Type} [Field K] [CharZero K] {k : ℕ}

theorem linearSubst_pairing (g : GL (Fin k) K) : glAct g (hXY K k) = hXY K k := by
  have hg : ((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) * (g : Matrix (Fin k) (Fin k) K) = 1 := by
    rw [← Matrix.GeneralLinearGroup.coe_mul]; simp

  simp only [glAct, hXY, map_sum, map_mul, aeval_X, Sum.elim_inl, Sum.elim_inr]
  simp only [Finset.sum_mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [Finset.sum_comm]
  have : ∀ l : Fin k, ∑ i : Fin k, C ((g : Matrix (Fin k) (Fin k) K) i j) * X (Sum.inl j) *
      (C (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) l i) * X (Sum.inr l)) =
      C ((1 : Matrix (Fin k) (Fin k) K) l j) * ((X (Sum.inl j) : PolXY K k) * X (Sum.inr l)) := by
    intro l

    rw [← hg, Matrix.mul_apply, map_sum, Finset.sum_mul]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [C_mul]; ring
  simp only [this, Matrix.one_apply]
  simp [Finset.sum_ite_eq']

theorem pderiv_aeval_eq_sum_chain_rule {σ : Type} [Fintype σ] (u : σ → MvPolynomial σ K) (v : σ) (f : MvPolynomial σ K) :
    pderiv v (aeval u f) = ∑ w : σ, aeval u (pderiv w f) * pderiv v (u w) := by
  classical
  induction f using MvPolynomial.induction_on with
  | C a => simp
  | add p q hp hq => simp only [map_add (f := _), hp, hq, add_mul, Finset.sum_add_distrib]
  | mul_X p n hp =>
    simp only [map_mul, aeval_X, Derivation.leibniz, smul_eq_mul, hp, map_add (f := _), pderiv_X, add_mul,
      Finset.sum_add_distrib]
    have h1 : ∑ w : σ, aeval u p * aeval u ((Pi.single w 1 : σ → MvPolynomial σ K) n) * pderiv v (u w) =
        aeval u p * pderiv v (u n) := by
      rw [Finset.sum_eq_single n]
      · simp
      · intro b _ hb
        simp [hb.symm]
      · intro h; exact absurd (Finset.mem_univ n) h
    rw [h1, Finset.mul_sum]
    congr 1
    refine Finset.sum_congr rfl fun w _ => ?_
    ring

theorem pderiv_inl_linearSubst (g : GL (Fin k) K) (j : Fin k) (f : PolXY K k) :
    pderiv (Sum.inl j) (glAct g f) =
      ∑ i : Fin k, C ((g : Matrix (Fin k) (Fin k) K) i j) * glAct g (pderiv (Sum.inl i) f) := by
  classical
  unfold glAct
  rw [pderiv_aeval_eq_sum_chain_rule, Fintype.sum_sum_type]

  simp only [Sum.elim_inl, Sum.elim_inr, map_sum, pderiv_C_mul, pderiv_X, Pi.single_apply]
  simp [mul_comm]

theorem pderiv_inr_linearSubst (g : GL (Fin k) K) (j : Fin k) (f : PolXY K k) :
    pderiv (Sum.inr j) (glAct g f) =
      ∑ i : Fin k, C (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j i) * glAct g (pderiv (Sum.inr i) f) := by
  classical
  unfold glAct
  rw [pderiv_aeval_eq_sum_chain_rule, Fintype.sum_sum_type]

  simp only [Sum.elim_inl, Sum.elim_inr, map_sum, pderiv_C_mul, pderiv_X, Pi.single_apply]
  simp [mul_comm]

theorem laplacian_apply' (f : PolXY K k) :
    ctrF K k f = ∑ i : Fin k, pderiv (Sum.inl i) (pderiv (Sum.inr i) f) := by
  simp [ctrF, LinearMap.sum_apply]

theorem laplacian_linearSubst (g : GL (Fin k) K) (f : PolXY K k) : ctrF K k (glAct g f) = glAct g (ctrF K k f) := by
  have hg : (g : Matrix (Fin k) (Fin k) K) * ((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) = 1 := by
    rw [← Matrix.GeneralLinearGroup.coe_mul]; simp

  rw [laplacian_apply', laplacian_apply', map_sum]

  simp only [pderiv_inr_linearSubst, map_sum, pderiv_C_mul, pderiv_inl_linearSubst, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Finset.sum_comm]
  have : ∀ l : Fin k, ∑ j : Fin k, C (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j i) *
        (C ((g : Matrix (Fin k) (Fin k) K) l j) * glAct g (pderiv (Sum.inl l) (pderiv (Sum.inr i) f))) =
      C ((1 : Matrix (Fin k) (Fin k) K) l i) * glAct g (pderiv (Sum.inl l) (pderiv (Sum.inr i) f)) := by
    intro l

    rw [← hg, Matrix.mul_apply, map_sum, Finset.sum_mul]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [C_mul]; ring
  simp only [this, Matrix.one_apply]
  simp [Finset.sum_ite_eq']

theorem pairingDivPow_linearSubst (g : GL (Fin k) K) (l : ℕ) (f : PolXY K k) :
    hDiv K k l (glAct g f) = glAct g (hDiv K k l f) := by
  simp only [hDiv, LinearMap.smul_apply, LinearMap.mulLeft_apply, map_smul, map_mul, map_pow, linearSubst_pairing]

theorem laplacian_pow_linearSubst (g : GL (Fin k) K) (l : ℕ) : ∀ f : PolXY K k,
    (ctrF K k ^ l) (glAct g f) = glAct g ((ctrF K k ^ l) f) := by
  induction l with
  | zero => intro f; simp
  | succ l ih => intro f; rw [pow_succ, Module.End.mul_apply, Module.End.mul_apply, laplacian_linearSubst, ih]

theorem laplacianDivPow_linearSubst (g : GL (Fin k) K) (l : ℕ) (f : PolXY K k) :
    ctrDiv K k l (glAct g f) = glAct g (ctrDiv K k l f) := by
  simp only [ctrDiv, LinearMap.smul_apply, map_smul, laplacian_pow_linearSubst]

theorem divPow_mem_translateLattice (L : Set (PolXY K k))
    (hL : ∀ (l : ℕ) (f : PolXY K k), f ∈ L → hDiv K k l f ∈ L ∧ ctrDiv K k l f ∈ L)
    (g : GL (Fin k) K) (l : ℕ) (f : PolXY K k) (hf : f ∈ latOf g L) :
    hDiv K k l f ∈ latOf g L ∧ ctrDiv K k l f ∈ latOf g L := by
  obtain ⟨f0, hf0, rfl⟩ := hf
  exact ⟨⟨_, (hL l f0 hf0).1, (pairingDivPow_linearSubst g l f0).symm⟩, ⟨_, (hL l f0 hf0).2, (laplacianDivPow_linearSubst g l f0).symm⟩⟩

theorem zero_mem_translateLattice (L : Set (PolXY K k)) (h0 : (0 : PolXY K k) ∈ L) (g : GL (Fin k) K) :
    (0 : PolXY K k) ∈ latOf g L := ⟨0, h0, map_zero _⟩

theorem add_mem_translateLattice (L : Set (PolXY K k)) (hadd : ∀ f g, f ∈ L → g ∈ L → f + g ∈ L) (g : GL (Fin k) K)
    (f f' : PolXY K k) (hf : f ∈ latOf g L) (hf' : f' ∈ latOf g L) : f + f' ∈ latOf g L := by
  obtain ⟨a, ha, rfl⟩ := hf
  obtain ⟨b, hb, rfl⟩ := hf'
  exact ⟨a + b, hadd a b ha hb, map_add _ _ _⟩

theorem smul_mem_translateLattice (R : Subring K) (L : Set (PolXY K k)) (hs : ∀ r ∈ R, ∀ f ∈ L, r • f ∈ L) (g : GL (Fin k) K)
    (r : K) (hr : r ∈ R) (f : PolXY K k) (hf : f ∈ latOf g L) : r • f ∈ latOf g L := by
  obtain ⟨a, ha, rfl⟩ := hf
  exact ⟨r • a, hs r hr a ha, map_smul _ _ _⟩

end SubstGL

section Proj

variable {K : Type} [Field K] [CharZero K] {k : ℕ}

theorem pow_log_smul_harmonicProj_mem (R : Subring K) (p : ℕ) (hp : p.Prime) (hR : PLocal R p) (M : Set (PolXY K k))
    (h0 : (0 : PolXY K k) ∈ M) (hadd : ∀ f g, f ∈ M → g ∈ M → f + g ∈ M)
    (hs : ∀ r ∈ R, ∀ f ∈ M, r • f ∈ M)
    (hM : ∀ (l : ℕ) (f : PolXY K k), f ∈ M → hDiv K k l f ∈ M ∧ ctrDiv K k l f ∈ M)
    (a b N : ℕ) (hN : a + b + k ≤ N) (f : PolXY K k) (hf : f ∈ M) :
    ((p : K) ^ Nat.log p N) • harProj K k a b f ∈ M := by
  have hsum : ∀ (s : Finset ℕ) (F : ℕ → PolXY K k), (∀ l ∈ s, F l ∈ M) → ∑ l ∈ s, F l ∈ M := by
    classical
    intro s F
    induction s using Finset.induction_on with
    | empty => intro _; simpa using h0
    | insert i s hi ih =>
      intro h
      rw [Finset.sum_insert hi]
      exact hadd _ _ (h i (Finset.mem_insert_self i s)) (ih fun l hl => h l (Finset.mem_insert_of_mem hl))
  rw [harProj, LinearMap.sum_apply, Finset.smul_sum]
  refine hsum _ _ fun l _ => ?_
  rw [LinearMap.smul_apply, LinearMap.comp_apply, smul_smul]
  refine hs _ ?_ _ (hM l _ (hM l f hf).2).1
  have : (p : K) ^ Nat.log p N * ((-1 : K) ^ l / (((a + b + k - 2).choose l : ℕ) : K)) =
      (-1 : K) ^ l * ((p : K) ^ Nat.log p N / (((a + b + k - 2).choose l : ℕ) : K)) := by ring
  rw [this]
  exact R.mul_mem (R.pow_mem (R.neg_mem R.one_mem) l) (pow_log_div_choose_mem R p hp hR _ N l (by omega))

theorem pow_log_smul_isotypicProj_mem (R : Subring K) (p : ℕ) (hp : p.Prime) (hR : PLocal R p) (M : Set (PolXY K k))
    (h0 : (0 : PolXY K k) ∈ M) (hadd : ∀ f g, f ∈ M → g ∈ M → f + g ∈ M)
    (hs : ∀ r ∈ R, ∀ f ∈ M, r • f ∈ M)
    (hM : ∀ (l : ℕ) (f : PolXY K k), f ∈ M → hDiv K k l f ∈ M ∧ ctrDiv K k l f ∈ M)
    (A B j : ℕ) (hj : j ≤ A) (f : PolXY K k) (hf : f ∈ M) :
    ((p : K) ^ (2 * Nat.log p (A + B + k))) • levelProj K k A B j f ∈ M := by
  have h1 : ((p : K) ^ Nat.log p (A + B + k)) • harProj K k (A - j) (B - j) (ctrDiv K k j f) ∈ M :=
    pow_log_smul_harmonicProj_mem R p hp hR M h0 hadd hs hM (A - j) (B - j) (A + B + k) (by omega) _ (hM j f hf).2
  have h2 := (hM j _ h1).1
  have h3 := hs _ (pow_log_div_choose_mem R p hp hR (A + B + k - 2 * j + j - 1) (A + B + k) j (by omega)) _ h2
  have : ((p : K) ^ (2 * Nat.log p (A + B + k))) • levelProj K k A B j f =
      ((p : K) ^ Nat.log p (A + B + k) / (((A + B + k - 2 * j + j - 1).choose j : ℕ) : K)) •
        hDiv K k j (((p : K) ^ Nat.log p (A + B + k)) • harProj K k (A - j) (B - j) (ctrDiv K k j f)) := by
    rw [levelProj, LinearMap.smul_apply, LinearMap.comp_apply, LinearMap.comp_apply, map_smul, smul_smul,
      smul_smul]
    congr 1
    rw [two_mul, pow_add]
    ring
  rw [this]
  exact h3

end Proj

theorem divPow_mem_fockLattice {K : Type} [Field K] [CharZero K] {k : ℕ} (R : Subring K) (l : ℕ) (f : PolXY K k)
    (hf : f ∈ FockLat R) : hDiv K k l f ∈ FockLat R ∧ ctrDiv K k l f ∈ FockLat R :=
  divPow_mem_of_generators (FockLat R) (add_mem_fockLattice R) (zero_mem_fockLattice R) (diagMul_divPow_mem_fockLattice R) (diagLaplacian_divPow_mem_fockLattice R) l f hf

theorem fockLatticeProjection_holds : FockProj := by
  intro K _ _ k A B p R g _ hp hR f _ hf
  have h0 := zero_mem_translateLattice (FockLat R) (zero_mem_fockLattice R) g
  have hadd := add_mem_translateLattice (FockLat R) (add_mem_fockLattice R) g
  have hs : ∀ r ∈ R, ∀ f ∈ latOf g (FockLat R), r • f ∈ latOf g (FockLat R) :=
    smul_mem_translateLattice R (FockLat R) (smul_mem_fockLattice R) g
  have hM := divPow_mem_translateLattice (FockLat R) (divPow_mem_fockLattice R) g
  exact ⟨pow_log_smul_harmonicProj_mem R p hp hR _ h0 hadd hs hM A B (A + B + k) le_rfl f hf,
    fun j hj => pow_log_smul_isotypicProj_mem R p hp hR _ h0 hadd hs hM A B j (hj.trans (min_le_left _ _)) f hf⟩

end Formalism.CountingSumsFrames
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PolynomialDimension.MultinomialDepth.DiagLaplacianDivPowMemSqrtFockLattice =====

-- ===== clump member: Formalism.PolynomialDimension.MultinomialDepth.SqrtFockGaussLatticeComparisonHolds =====
-- clump-header: {"m": "Formalism.PolynomialDimension.MultinomialDepth.SqrtFockGaussLatticeComparisonHolds", "h": "module\n\npublic import Formalism.PolynomialDimension.StatementHar\npublic import Mathlib.Data.Nat.Choose.Multinomial\nimport Formalism.PolynomialDimension.MultinomialDepth.DiagLaplacianDivPowMemSqrtFockLattice\nimport Formalism.PolynomialDimension.MultinomialDepth.HarmonicDecompositionHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators
open Finset MvPolynomial

namespace Formalism.CountingSumsFrames
namespace Har4

theorem coeff_mem_of_h_mul {K : Type} [Field K] {k : ℕ} (R : Subring K) (i0 : Fin k) (G : PolXY K k)
    (hG : ∀ m, AddMonoidAlgebra.coeff (hXY K k * G) m ∈ R) : ∀ m, AddMonoidAlgebra.coeff G m ∈ R := by
  classical
  by_contra hcon
  push Not at hcon
  obtain ⟨m0, hm0⟩ := hcon
  set S := G.support.filter (fun m => AddMonoidAlgebra.coeff G m ∉ R) with hS
  have hne : S.Nonempty := ⟨m0, by
    rw [hS, Finset.mem_filter, MvPolynomial.mem_support_iff]
    exact ⟨fun h => hm0 (h ▸ R.zero_mem), hm0⟩⟩
  obtain ⟨m, hmS, hmax⟩ := Finset.exists_max_image S (fun m => m (Sum.inl i0)) hne
  have hbig : ∀ m' : XY k →₀ ℕ, m (Sum.inl i0) < m' (Sum.inl i0) → AddMonoidAlgebra.coeff G m' ∈ R := by
    intro m' hlt
    by_contra hc
    have : m' ∈ S := by
      rw [hS, Finset.mem_filter, MvPolynomial.mem_support_iff]
      exact ⟨fun h => hc (h ▸ R.zero_mem), hc⟩
    have := hmax m' this
    omega
  have hmR : AddMonoidAlgebra.coeff G m ∉ R := (Finset.mem_filter.1 hmS).2
  apply hmR
  set M : XY k →₀ ℕ := Finsupp.single (Sum.inl i0) 1 + (Finsupp.single (Sum.inr i0) 1 + m) with hM
  have h1 := hG M
  rw [hXY, Finset.sum_mul, coeff_sum, ← Finset.add_sum_erase _ _ (Finset.mem_univ i0)] at h1
  have h2 : AddMonoidAlgebra.coeff (X (Sum.inl i0) * X (Sum.inr i0) * G) M = AddMonoidAlgebra.coeff G m := by
    rw [mul_assoc, hM, coeff_X_mul, coeff_X_mul]
  have h3 : ∑ i ∈ Finset.univ.erase i0, AddMonoidAlgebra.coeff (X (Sum.inl i) * X (Sum.inr i) * G) M ∈ R := by
    refine R.sum_mem fun i hi => ?_
    have hi' : i ≠ i0 := Finset.ne_of_mem_erase hi
    rw [mul_assoc, coeff_X_mul']
    split_ifs with ha
    · rw [coeff_X_mul']
      split_ifs with hb
      · apply hbig
        simp [hM, hi']
      · exact R.zero_mem
    · exact R.zero_mem
  rw [h2] at h1
  have := R.sub_mem h1 h3
  simpa using this

theorem glAct_X_inl {K : Type} [Field K] {k : ℕ} (g : GL (Fin k) K) (i : Fin k) :
    glAct g (X (Sum.inl i)) = ∑ j : Fin k, C ((g : Matrix (Fin k) (Fin k) K) i j) * X (Sum.inl j) := by
  simp only [glAct, aeval_X, Sum.elim_inl]

theorem glAct_X_inr {K : Type} [Field K] {k : ℕ} (g : GL (Fin k) K) (i : Fin k) :
    glAct g (X (Sum.inr i)) =
      ∑ j : Fin k, C (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j i) * X (Sum.inr j) := by
  simp only [glAct, aeval_X, Sum.elim_inr]

theorem glAct_hXY {K : Type} [Field K] {k : ℕ} (g : GL (Fin k) K) : glAct g (hXY K k) = hXY K k := by
  have hm : ∀ j l : Fin k, C (∑ i : Fin k, (g : Matrix (Fin k) (Fin k) K) i j * ((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) l i) =
      (if l = j then 1 else 0 : PolXY K k) := by
    intro j l
    have e : (∑ i : Fin k, (g : Matrix (Fin k) (Fin k) K) i j * ((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) l i) = (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) * (g : Matrix (Fin k) (Fin k) K)) l j := by
      rw [Matrix.mul_apply]
      exact Finset.sum_congr rfl (fun i _ => mul_comm _ _)
    rw [e, Units.inv_mul, Matrix.one_apply]
    split_ifs <;> simp
  unfold hXY

  simp only [map_sum, map_mul, glAct_X_inl, glAct_X_inr]
  calc ∑ i : Fin k, (∑ j : Fin k, C ((g : Matrix (Fin k) (Fin k) K) i j) * X (Sum.inl j)) *
        (∑ l : Fin k, C (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) l i) * X (Sum.inr l))
      = ∑ i : Fin k, ∑ j : Fin k, ∑ l : Fin k, (C ((g : Matrix (Fin k) (Fin k) K) i j) * X (Sum.inl j)) *
          (C (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) l i) * X (Sum.inr l)) := by
        simp only [Finset.sum_mul_sum]
    _ = ∑ j : Fin k, ∑ l : Fin k, ∑ i : Fin k, (C ((g : Matrix (Fin k) (Fin k) K) i j) * X (Sum.inl j)) *
          (C (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) l i) * X (Sum.inr l)) :=
        Finset.sum_comm.trans (Finset.sum_congr rfl fun j _ => Finset.sum_comm)
    _ = ∑ j : Fin k, ∑ l : Fin k, C (∑ i : Fin k, (g : Matrix (Fin k) (Fin k) K) i j * ((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) l i) *
          (X (Sum.inl j) * X (Sum.inr l)) := by
        refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun l _ => ?_

        rw [map_sum, Finset.sum_mul]
        exact Finset.sum_congr rfl fun i _ => by rw [map_mul]; ring
    _ = ∑ i : Fin k, X (Sum.inl i) * X (Sum.inr i) := by
        simp only [hm, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq', Finset.mem_univ, if_true]

theorem glAct_inv_glAct {K : Type} [Field K] {k : ℕ} (g : GL (Fin k) K) (f : PolXY K k) :
    glAct g⁻¹ (glAct g f) = f := by
  have key : (glAct g⁻¹).comp (glAct g) = AlgHom.id K (PolXY K k) := by
    apply MvPolynomial.algHom_ext
    rintro (i | i)
    · set_option synthInstance.maxHeartbeats 100000 in
        simp only [AlgHom.comp_apply, AlgHom.id_apply, glAct_X_inl, map_sum, map_mul,
        MvPolynomial.algHom_C, MvPolynomial.algebraMap_eq]
      have hm : ∀ l : Fin k, C (∑ j : Fin k, (g : Matrix (Fin k) (Fin k) K) i j *
          ((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j l) = (if i = l then 1 else 0 : PolXY K k) := by
        intro l
        rw [← Matrix.mul_apply, Units.mul_inv, Matrix.one_apply]
        split_ifs <;> simp
      calc ∑ j : Fin k, C ((g : Matrix (Fin k) (Fin k) K) i j) *
            ∑ l : Fin k, C (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j l) * X (Sum.inl l)
          = ∑ l : Fin k, C (∑ j : Fin k, (g : Matrix (Fin k) (Fin k) K) i j *
              ((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j l) * X (Sum.inl l) := by

            simp only [map_sum, Finset.sum_mul, map_mul, mul_assoc, Finset.mul_sum]
            rw [Finset.sum_comm]
        _ = X (Sum.inl i) := by
          simp only [hm, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq, Finset.mem_univ, if_true]
    · set_option synthInstance.maxHeartbeats 100000 in
        simp only [AlgHom.comp_apply, AlgHom.id_apply, glAct_X_inr, map_sum, map_mul,
        MvPolynomial.algHom_C, MvPolynomial.algebraMap_eq, inv_inv]
      have hm : ∀ l : Fin k, C (∑ j : Fin k, ((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j i *
          (g : Matrix (Fin k) (Fin k) K) l j) = (if i = l then 1 else 0 : PolXY K k) := by
        intro l
        have e : (∑ j : Fin k, ((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j i *
            (g : Matrix (Fin k) (Fin k) K) l j) = ((g : Matrix (Fin k) (Fin k) K) *
            ((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K)) l i := by
          rw [Matrix.mul_apply]
          exact Finset.sum_congr rfl (fun j _ => mul_comm _ _)
        rw [e, Units.mul_inv, Matrix.one_apply]
        by_cases h : i = l
        · subst h; simp
        · simp [h, Ne.symm h]
      calc ∑ j : Fin k, C (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j i) *
            ∑ l : Fin k, C ((g : Matrix (Fin k) (Fin k) K) l j) * X (Sum.inr l)
          = ∑ l : Fin k, C (∑ j : Fin k, ((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j i *
              (g : Matrix (Fin k) (Fin k) K) l j) * X (Sum.inr l) := by

            simp only [map_sum, Finset.sum_mul, map_mul, mul_assoc, Finset.mul_sum]
            rw [Finset.sum_comm]
        _ = X (Sum.inr i) := by
          simp only [hm, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq, Finset.mem_univ, if_true]
  have h2 := congrArg (fun φ => φ f) key
  simpa using h2

theorem glAct_glAct_inv {K : Type} [Field K] {k : ℕ} (g : GL (Fin k) K) (f : PolXY K k) :
    glAct g (glAct g⁻¹ f) = f := by
  simpa using glAct_inv_glAct g⁻¹ f

theorem mem_latOf_iff {K : Type} [Field K] {k : ℕ} (g : GL (Fin k) K) (S : Set (PolXY K k)) (f : PolXY K k) :
    f ∈ latOf g S ↔ glAct g⁻¹ f ∈ S := by
  constructor
  · rintro ⟨h, hS, rfl⟩
    rwa [glAct_inv_glAct]
  · intro hf
    exact ⟨glAct g⁻¹ f, hf, glAct_glAct_inv g f⟩

def wXY (k : ℕ) : XY k → ℕ × ℕ := Sum.elim (fun _ => (1, 0)) (fun _ => (0, 1))

theorem weight_wXY {k : ℕ} (m : XY k →₀ ℕ) : Finsupp.weight (wXY k) m = (xDeg m, yDeg m) := by
  rw [Finsupp.weight_apply, Finsupp.sum_fintype _ _ (by simp), Fintype.sum_sum_type]
  ext <;> simp [wXY, xDeg, yDeg, Prod.fst_sum, Prod.snd_sum]

theorem mem_PolAB_iff {K : Type} [Field K] {k A B : ℕ} (f : PolXY K k) :
    f ∈ PolAB K k A B ↔ IsWeightedHomogeneous (wXY k) f (A, B) := by
  constructor
  · intro hf d hd
    have hf' : ∀ m ∈ f.support, xDeg m = A ∧ yDeg m = B := hf
    have h1 := hf' d (MvPolynomial.mem_support_iff.2 hd)
    rw [weight_wXY, h1.1, h1.2]
  · intro hf
    show ∀ m ∈ f.support, xDeg m = A ∧ yDeg m = B
    intro m hm
    have h1 := hf (MvPolynomial.mem_support_iff.1 hm)
    rw [weight_wXY] at h1
    exact ⟨congrArg Prod.fst h1, congrArg Prod.snd h1⟩

theorem glAct_mem_PolAB {K : Type} [Field K] {k A B : ℕ} (g : GL (Fin k) K) (f : PolXY K k)
    (hf : f ∈ PolAB K k A B) : glAct g f ∈ PolAB K k A B := by
  rw [mem_PolAB_iff] at hf ⊢
  set σ : XY k → PolXY K k := Sum.elim
    (fun i : Fin k => ∑ j : Fin k, C ((g : Matrix (Fin k) (Fin k) K) i j) * X (Sum.inl j))
    (fun i : Fin k => ∑ j : Fin k, C (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j i) * X (Sum.inr j)) with hσdef
  have hgl : glAct g = aeval σ := rfl
  have hσ : ∀ v : XY k, IsWeightedHomogeneous (wXY k) (σ v) (wXY k v) := by
    rintro (i | i)
    · show IsWeightedHomogeneous (wXY k) (∑ j : Fin k, C ((g : Matrix (Fin k) (Fin k) K) i j) * X (Sum.inl j)) (wXY k (Sum.inl i))
      apply IsWeightedHomogeneous.sum
      intro j _
      have h := (isWeightedHomogeneous_C (wXY k) ((g : Matrix (Fin k) (Fin k) K) i j)).mul
        (isWeightedHomogeneous_X (R := K) (wXY k) (Sum.inl j))
      convert h using 1
      simp [wXY]
    · show IsWeightedHomogeneous (wXY k) (∑ j : Fin k, C (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j i) * X (Sum.inr j)) (wXY k (Sum.inr i))
      apply IsWeightedHomogeneous.sum
      intro j _
      have h := (isWeightedHomogeneous_C (wXY k) (((g⁻¹ : GL (Fin k) K) : Matrix (Fin k) (Fin k) K) j i)).mul
        (isWeightedHomogeneous_X (R := K) (wXY k) (Sum.inr j))
      convert h using 1
      simp [wXY]

  rw [hgl, f.as_sum, map_sum]
  apply IsWeightedHomogeneous.sum
  intro m hm
  rw [aeval_monomial, MvPolynomial.algebraMap_eq]
  have hdeg := hf (MvPolynomial.mem_support_iff.1 hm)
  rw [← hdeg]
  have hp : IsWeightedHomogeneous (wXY k) (m.prod fun v e => σ v ^ e) (Finsupp.weight (wXY k) m) := by
    rw [Finsupp.weight_apply, Finsupp.prod, Finsupp.sum]
    apply IsWeightedHomogeneous.prod
    intro v _
    exact (hσ v).pow (m v)
  rw [← zero_add (Finsupp.weight (wXY k) m)]
  exact (isWeightedHomogeneous_C (wXY k) (AddMonoidAlgebra.coeff f m)).mul hp

theorem pow_mul_inv_mem {K : Type} [Field K] [CharZero K] (R : Subring K) {p : ℕ} (hp : p.Prime)
    (hR : PLocal R p) {M e : ℕ} (hM : M ≠ 0) (hv : M.factorization p ≤ e) :
    (p : K) ^ e * (M : K)⁻¹ ∈ R := by
  have hsplit : p ^ M.factorization p * (M / p ^ M.factorization p) = M :=
    Nat.ordProj_mul_ordCompl_eq_self M p
  have hnd : ¬ p ∣ M / p ^ M.factorization p := Nat.not_dvd_ordCompl hp hM
  have hpK : (p : K) ≠ 0 := by exact_mod_cast hp.ne_zero
  have e : (p : K) ^ e * (M : K)⁻¹ = (p : K) ^ (e - M.factorization p) * ((M / p ^ M.factorization p : ℕ) : K)⁻¹ := by
    conv_lhs => rw [← hsplit]
    rw [Nat.cast_mul, Nat.cast_pow, mul_inv, ← mul_assoc, ← pow_sub₀ _ hpK hv]
  rw [e]
  exact R.mul_mem (R.pow_mem (natCast_mem R p) _) (hR _ hnd)

theorem multinomial_factorization_le (p : ℕ) {ι : Type} [DecidableEq ι] (s : Finset ι) (f : ι → ℕ) :
    (Nat.multinomial s f).factorization p ≤ (s.card - 1) * Nat.log p (∑ i ∈ s, f i) := by
  classical
  refine Finset.induction_on s ?_ ?_
  · simp
  · intro a s ha ih
    rcases s.eq_empty_or_nonempty with hs | hs
    · subst hs
      simp [Nat.multinomial_singleton]
    · rw [Nat.multinomial_insert ha, Finset.sum_insert ha, Finset.card_insert_eq_ite, if_neg ha]
      have hc : (f a + ∑ i ∈ s, f i).choose (f a) ≠ 0 := (Nat.choose_pos (Nat.le_add_right _ _)).ne'
      have hm : Nat.multinomial s f ≠ 0 := (Nat.multinomial_pos _ _).ne'
      rw [Nat.factorization_mul hc hm, Finsupp.add_apply]
      have h1 : ((f a + ∑ i ∈ s, f i).choose (f a)).factorization p ≤ Nat.log p (f a + ∑ i ∈ s, f i) :=
        Nat.factorization_choose_le_log
      have h2 : Nat.log p (∑ i ∈ s, f i) ≤ Nat.log p (f a + ∑ i ∈ s, f i) :=
        Nat.log_mono_right (Nat.le_add_left _ _)
      have hcard : 1 ≤ s.card := hs.card_pos
      calc ((f a + ∑ i ∈ s, f i).choose (f a)).factorization p + (Nat.multinomial s f).factorization p
          ≤ Nat.log p (f a + ∑ i ∈ s, f i) + (s.card - 1) * Nat.log p (f a + ∑ i ∈ s, f i) :=
            add_le_add h1 (le_trans ih (Nat.mul_le_mul_left _ h2))
        _ = (s.card + 1 - 1) * Nat.log p (f a + ∑ i ∈ s, f i) := by
            have e : s.card + 1 - 1 = (s.card - 1) + 1 := by omega
            rw [e, add_mul, one_mul, add_comm]

def xMul {k : ℕ} (m : XY k →₀ ℕ) : ℕ := Nat.multinomial Finset.univ (fun i : Fin k => m (Sum.inl i))

def yMul {k : ℕ} (m : XY k →₀ ℕ) : ℕ := Nat.multinomial Finset.univ (fun i : Fin k => m (Sum.inr i))

theorem xFact_mul_xMul {k : ℕ} (m : XY k →₀ ℕ) : xFact m * xMul m = (xDeg m).factorial := by
  simp only [xFact, xMul, xDeg]
  exact Nat.multinomial_spec _ _

theorem yFact_mul_yMul {k : ℕ} (m : XY k →₀ ℕ) : yFact m * yMul m = (yDeg m).factorial := by
  simp only [yFact, yMul, yDeg]
  exact Nat.multinomial_spec _ _

theorem xMul_ne_zero {k : ℕ} (m : XY k →₀ ℕ) : xMul m ≠ 0 :=
  (Nat.multinomial_pos _ _).ne'
theorem yMul_ne_zero {k : ℕ} (m : XY k →₀ ℕ) : yMul m ≠ 0 :=
  (Nat.multinomial_pos _ _).ne'

theorem xMul_factorization_le {k : ℕ} (p : ℕ) (m : XY k →₀ ℕ) :
    (xMul m).factorization p ≤ (k - 1) * Nat.log p (xDeg m) := by
  simpa [xMul, xDeg, Finset.card_univ, Fintype.card_fin] using
    multinomial_factorization_le p Finset.univ (fun i : Fin k => m (Sum.inl i))

theorem yMul_factorization_le {k : ℕ} (p : ℕ) (m : XY k →₀ ℕ) :
    (yMul m).factorization p ≤ (k - 1) * Nat.log p (yDeg m) := by
  simpa [yMul, yDeg, Finset.card_univ, Fintype.card_fin] using
    multinomial_factorization_le p Finset.univ (fun i : Fin k => m (Sum.inr i))

theorem xFact_ne_zero {k : ℕ} (m : XY k →₀ ℕ) : xFact m ≠ 0 :=
  Finset.prod_ne_zero_iff.2 (fun i _ => Nat.factorial_ne_zero _)
theorem yFact_ne_zero {k : ℕ} (m : XY k →₀ ℕ) : yFact m ≠ 0 :=
  Finset.prod_ne_zero_iff.2 (fun i _ => Nat.factorial_ne_zero _)

section std
variable {K : Type} [Field K] [CharZero K] {k A B : ℕ} (R : Subring K)

theorem coeff_cases {f : PolXY K k} (hf : f ∈ PolAB K k A B) (m : XY k →₀ ℕ) :
    AddMonoidAlgebra.coeff f m = 0 ∨ (xDeg m = A ∧ yDeg m = B) := by
  by_cases h : AddMonoidAlgebra.coeff f m = 0
  · exact Or.inl h
  · exact Or.inr ((show ∀ m ∈ f.support, xDeg m = A ∧ yDeg m = B from hf) m
      (MvPolynomial.mem_support_iff.2 h))

theorem fock_to_gauss {f : PolXY K k} (hf : f ∈ PolAB K k A B) (h : f ∈ FockLat R) :
    (A.factorial : K) • f ∈ GaussLat R := by
  have h' : ∀ m, (xFact m : K) * AddMonoidAlgebra.coeff f m ∈ R := h
  show ∀ m, AddMonoidAlgebra.coeff ((A.factorial : K) • f) m ∈ R
  intro m
  rw [MvPolynomial.coeff_smul, smul_eq_mul]
  rcases coeff_cases hf m with h0 | ⟨hx, -⟩
  · rw [h0, mul_zero]
    exact R.zero_mem
  · rw [← hx, ← xFact_mul_xMul, Nat.cast_mul, mul_comm (xFact m : K), mul_assoc]
    exact R.mul_mem (natCast_mem R _) (h' m)

theorem gauss_to_fock {p : ℕ} (hp : p.Prime) (hR : PLocal R p) {f : PolXY K k} (hf : f ∈ PolAB K k A B)
    (h : f ∈ GaussLat R) :
    ((p : K) ^ ((k - 1) * Nat.log p A) * (A.factorial : K)⁻¹) • f ∈ FockLat R := by
  have h' : ∀ m, AddMonoidAlgebra.coeff f m ∈ R := h
  show ∀ m, (xFact m : K) * AddMonoidAlgebra.coeff (((p : K) ^ ((k - 1) * Nat.log p A) * (A.factorial : K)⁻¹) • f) m ∈ R
  intro m
  rw [MvPolynomial.coeff_smul, smul_eq_mul]
  rcases coeff_cases hf m with h0 | ⟨hx, -⟩
  · rw [h0, mul_zero, mul_zero]
    exact R.zero_mem
  · have hxm := xMul_ne_zero m
    have hxf : (xFact m : K) ≠ 0 := by exact_mod_cast xFact_ne_zero m
    have hmem := pow_mul_inv_mem R hp hR hxm (xMul_factorization_le p m)
    rw [← hx, ← xFact_mul_xMul, Nat.cast_mul, mul_inv]
    have e : (xFact m : K) * ((p : K) ^ ((k - 1) * Nat.log p (xDeg m)) *
        ((xFact m : K)⁻¹ * (xMul m : K)⁻¹) * AddMonoidAlgebra.coeff f m) =
        ((p : K) ^ ((k - 1) * Nat.log p (xDeg m)) * (xMul m : K)⁻¹) * AddMonoidAlgebra.coeff f m := by
      field_simp
    rw [e]
    exact R.mul_mem hmem (h' m)

theorem dual_to_fock {f : PolXY K k} (hf : f ∈ PolAB K k A B) (h : f ∈ DualLat R) :
    (B.factorial : K) • f ∈ FockLat R := by
  have h' : ∀ m, ((xFact m : K) * (yFact m : K)) * AddMonoidAlgebra.coeff f m ∈ R := h
  show ∀ m, (xFact m : K) * AddMonoidAlgebra.coeff ((B.factorial : K) • f) m ∈ R
  intro m
  rw [MvPolynomial.coeff_smul, smul_eq_mul]
  rcases coeff_cases hf m with h0 | ⟨-, hy⟩
  · rw [h0, mul_zero, mul_zero]
    exact R.zero_mem
  · rw [← hy, ← yFact_mul_yMul, Nat.cast_mul]
    have e : (xFact m : K) * (((yFact m : K) * (yMul m : K)) * AddMonoidAlgebra.coeff f m) =
        (yMul m : K) * (((xFact m : K) * (yFact m : K)) * AddMonoidAlgebra.coeff f m) := by ring
    rw [e]
    exact R.mul_mem (natCast_mem R _) (h' m)

theorem fock_to_dual {p : ℕ} (hp : p.Prime) (hR : PLocal R p) {f : PolXY K k} (hf : f ∈ PolAB K k A B)
    (h : f ∈ FockLat R) :
    ((p : K) ^ ((k - 1) * Nat.log p B) * (B.factorial : K)⁻¹) • f ∈ DualLat R := by
  have h' : ∀ m, (xFact m : K) * AddMonoidAlgebra.coeff f m ∈ R := h
  show ∀ m, ((xFact m : K) * (yFact m : K)) *
    AddMonoidAlgebra.coeff (((p : K) ^ ((k - 1) * Nat.log p B) * (B.factorial : K)⁻¹) • f) m ∈ R
  intro m
  rw [MvPolynomial.coeff_smul, smul_eq_mul]
  rcases coeff_cases hf m with h0 | ⟨-, hy⟩
  · rw [h0, mul_zero, mul_zero]
    exact R.zero_mem
  · have hym := yMul_ne_zero m
    have hyf : (yFact m : K) ≠ 0 := by exact_mod_cast yFact_ne_zero m
    have hmem := pow_mul_inv_mem R hp hR hym (yMul_factorization_le p m)
    rw [← hy, ← yFact_mul_yMul, Nat.cast_mul, mul_inv]
    have e : ((xFact m : K) * (yFact m : K)) * ((p : K) ^ ((k - 1) * Nat.log p (yDeg m)) *
        ((yFact m : K)⁻¹ * (yMul m : K)⁻¹) * AddMonoidAlgebra.coeff f m) =
        ((p : K) ^ ((k - 1) * Nat.log p (yDeg m)) * (yMul m : K)⁻¹) * ((xFact m : K) * AddMonoidAlgebra.coeff f m) := by
      field_simp
    rw [e]
    exact R.mul_mem hmem (h' m)

end std

theorem fockGaussLatticeComparison_holds : FockGaussXY := by
  intro K _ _ k A B p R g hk hp hR f hf
  have hf' : glAct g⁻¹ f ∈ PolAB K k A B := glAct_mem_PolAB g⁻¹ f hf
  constructor
  · intro h
    rw [mem_latOf_iff] at h ⊢
    rw [map_smul]
    exact fock_to_gauss R hf' h
  · intro h
    rw [mem_latOf_iff] at h ⊢
    rw [map_smul]
    exact gauss_to_fock R hp hR hf' h

theorem coeff_mem_of_h_pow_mul {K : Type} [Field K] {k : ℕ} (R : Subring K) (i0 : Fin k) (j : ℕ)
    (G : PolXY K k) (hG : hXY K k ^ j * G ∈ GaussLat R) : G ∈ GaussLat R := by
  induction j generalizing G with
  | zero => simpa using hG
  | succ n ih =>
    have h1 : hXY K k * G ∈ GaussLat R := ih (hXY K k * G) (by rw [← mul_assoc, ← pow_succ]; exact hG)
    exact coeff_mem_of_h_mul R i0 G h1

theorem gaussLemmaPairing_holds : GaussLemmaH := by
  intro K _ _ k O g j G hk h
  rw [mem_latOf_iff] at h ⊢
  rw [map_mul, map_pow, glAct_hXY] at h
  exact coeff_mem_of_h_pow_mul O.toSubring ⟨0, hk⟩ j _ h

theorem h_mul_mem_gauss {K : Type} [Field K] {k : ℕ} (R : Subring K) (G : PolXY K k) (hG : G ∈ GaussLat R) :
    hXY K k * G ∈ GaussLat R := by
  have hG' : ∀ m, AddMonoidAlgebra.coeff G m ∈ R := hG
  show ∀ m, AddMonoidAlgebra.coeff (hXY K k * G) m ∈ R
  intro m
  rw [MvPolynomial.coeff_mul]
  refine R.sum_mem fun x _ => R.mul_mem ?_ (hG' _)
  unfold hXY
  rw [MvPolynomial.coeff_sum]
  refine R.sum_mem fun i _ => ?_
  rw [MvPolynomial.coeff_X_mul', MvPolynomial.coeff_X']
  split_ifs <;> first | exact R.one_mem | exact R.zero_mem

theorem h_pow_mul_mem_gauss {K : Type} [Field K] {k : ℕ} (R : Subring K) (j : ℕ) (G : PolXY K k)
    (hG : G ∈ GaussLat R) : hXY K k ^ j * G ∈ GaussLat R := by
  induction j with
  | zero => simpa using hG
  | succ n ih =>
    rw [pow_succ', mul_assoc]
    exact h_mul_mem_gauss R _ ih

theorem isotypicLattice_holds : LevelLattice := by
  intro K _ _ k a b j O g hk
  ext f
  simp only [Set.mem_inter_iff, Set.mem_setOf_eq, Set.mem_image, SetLike.mem_coe]
  constructor
  · rintro ⟨hf, w, hw, rfl⟩
    exact ⟨w, ⟨gaussLemmaPairing_holds K k O g j w hk hf, hw⟩, rfl⟩
  · rintro ⟨w, ⟨hwl, hw⟩, rfl⟩
    refine ⟨?_, w, hw, rfl⟩
    rw [mem_latOf_iff] at hwl ⊢
    rw [map_mul, map_pow, glAct_hXY]
    exact h_pow_mul_mem_gauss O.toSubring j _ hwl

section deg
variable {K : Type} [Field K] {k : ℕ}

theorem hXY_mem_PolAB : hXY K k ∈ PolAB K k 1 1 := by
  rw [mem_PolAB_iff]
  unfold hXY
  apply IsWeightedHomogeneous.sum
  intro i _
  have h := (isWeightedHomogeneous_X (R := K) (wXY k) (Sum.inl i)).mul
    (isWeightedHomogeneous_X (R := K) (wXY k) (Sum.inr i))
  convert h using 1
  simp [wXY]

theorem mul_mem_PolAB {a b a' b' : ℕ} {f f' : PolXY K k} (hf : f ∈ PolAB K k a b)
    (hf' : f' ∈ PolAB K k a' b') : f * f' ∈ PolAB K k (a + a') (b + b') := by
  rw [mem_PolAB_iff] at hf hf' ⊢
  simpa using hf.mul hf'

theorem hDiv_mem_PolAB {a b : ℕ} (l : ℕ) {f : PolXY K k} (hf : f ∈ PolAB K k a b) :
    hDiv K k l f ∈ PolAB K k (a + l) (b + l) := by
  unfold hDiv
  rw [LinearMap.smul_apply, LinearMap.mulLeft_apply]
  exact Submodule.smul_mem _ _ (_root_.Formalism.CountingSumsFrames.Har2.h_pow_mul_mem l hf)

theorem levelProj_mem_PolAB {A B j : ℕ} (hj : j ≤ min A B) {f : PolXY K k} (hf : f ∈ PolAB K k A B) :
    levelProj K k A B j f ∈ PolAB K k A B := by
  unfold levelProj
  rw [LinearMap.smul_apply]
  refine Submodule.smul_mem _ _ ?_
  simp only [LinearMap.comp_apply]
  have h := hDiv_mem_PolAB (K := K) j (_root_.Formalism.CountingSumsFrames.Har2.harProj_memPol (_root_.Formalism.CountingSumsFrames.Har2.ctrDiv_mem j hf))
  have hA : A - j + j = A := Nat.sub_add_cancel (le_trans hj (min_le_left _ _))
  have hB : B - j + j = B := Nat.sub_add_cancel (le_trans hj (min_le_right _ _))
  rwa [hA, hB] at h

theorem smul_mem_latOf_gauss (R : Subring K) (g : GL (Fin k) K) {r : K} (hr : r ∈ R) {f : PolXY K k}
    (hf : f ∈ latOf g (GaussLat R)) : r • f ∈ latOf g (GaussLat R) := by
  obtain ⟨h, hh, rfl⟩ := hf
  have hh' : ∀ m, AddMonoidAlgebra.coeff h m ∈ R := hh
  refine ⟨r • h, ?_, by rw [map_smul]⟩
  show ∀ m, AddMonoidAlgebra.coeff (r • h) m ∈ R
  intro m
  rw [MvPolynomial.coeff_smul, smul_eq_mul]
  exact R.mul_mem hr (hh' m)

theorem smul_mem_latOf_dual (R : Subring K) (g : GL (Fin k) K) {r : K} (hr : r ∈ R) {f : PolXY K k}
    (hf : f ∈ latOf g (DualLat R)) : r • f ∈ latOf g (DualLat R) := by
  obtain ⟨h, hh, rfl⟩ := hf
  have hh' : ∀ m, ((xFact m : K) * (yFact m : K)) * AddMonoidAlgebra.coeff h m ∈ R := hh
  refine ⟨r • h, ?_, by rw [map_smul]⟩
  show ∀ m, ((xFact m : K) * (yFact m : K)) * AddMonoidAlgebra.coeff (r • h) m ∈ R
  intro m
  rw [MvPolynomial.coeff_smul, smul_eq_mul, mul_left_comm]
  exact R.mul_mem hr (hh' m)

end deg

theorem gauss_dual_of_fock {K : Type} [Field K] [CharZero K] {k A B p : ℕ} (R : Subring K) (g : GL (Fin k) K)
    (hk : 1 ≤ k) (hp : p.Prime) (hR : PLocal R p) (T : PolXY K k →ₗ[K] PolXY K k)
    (hT : ∀ f, f ∈ PolAB K k A B → T f ∈ PolAB K k A B) (n : ℕ) (hn : n ≤ 2 * Nat.log p (A + B + k))
    (hF : ∀ f, f ∈ PolAB K k A B → f ∈ latOf g (FockLat R) → ((p : K) ^ n) • T f ∈ latOf g (FockLat R))
    (f : PolXY K k) (hf : f ∈ PolAB K k A B) :
    (f ∈ latOf g (GaussLat R) → ((p : K) ^ ((k + 1) * Nat.log p (A + B + k))) • T f ∈ latOf g (GaussLat R)) ∧
    (f ∈ latOf g (DualLat R) → ((p : K) ^ ((k + 1) * Nat.log p (A + B + k))) • T f ∈ latOf g (DualLat R)) := by
  have hAf : (A.factorial : K) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero _)
  have hBf : (B.factorial : K) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero _)
  have hL : ∀ X : ℕ, X ≤ A + B + k →
      (k - 1) * Nat.log p X + n ≤ (k + 1) * Nat.log p (A + B + k) := by
    intro X hX
    have hlX : Nat.log p X ≤ Nat.log p (A + B + k) := Nat.log_mono_right hX
    calc (k - 1) * Nat.log p X + n ≤ (k - 1) * Nat.log p (A + B + k) + 2 * Nat.log p (A + B + k) :=
          add_le_add (Nat.mul_le_mul_left _ hlX) hn
      _ = (k + 1) * Nat.log p (A + B + k) := by rw [← add_mul]; congr 1; omega
  have hpow : ∀ a b : ℕ, a ≤ b → ∀ x : PolXY K k, ((p : K) ^ b) • x = ((p : K) ^ (b - a)) • (((p : K) ^ a) • x) := by
    intro a b hab x
    rw [smul_smul, ← pow_add, Nat.sub_add_cancel hab]
  have hpR : ∀ a : ℕ, (p : K) ^ a ∈ R := fun a => R.pow_mem (natCast_mem R p) a
  refine ⟨fun hG => ?_, fun hD => ?_⟩
  · have h1 := (fockGaussLatticeComparison_holds K k A B p R g hk hp hR f hf).2 hG
    have hcf : ((p : K) ^ ((k - 1) * Nat.log p A) * (A.factorial : K)⁻¹) • f ∈ PolAB K k A B :=
      Submodule.smul_mem _ _ hf
    have h2 := hF _ hcf h1
    have hpol : ((p : K) ^ n) • T (((p : K) ^ ((k - 1) * Nat.log p A) * (A.factorial : K)⁻¹) • f) ∈
        PolAB K k A B := Submodule.smul_mem _ _ (hT _ hcf)
    have h3 := (fockGaussLatticeComparison_holds K k A B p R g hk hp hR _ hpol).1 h2
    have e : (A.factorial : K) • (((p : K) ^ n) •
        T (((p : K) ^ ((k - 1) * Nat.log p A) * (A.factorial : K)⁻¹) • f)) =
        ((p : K) ^ ((k - 1) * Nat.log p A + n)) • T f := by
      rw [map_smul, smul_smul, smul_smul]
      congr 1
      field_simp
      ring
    rw [e] at h3
    rw [hpow _ _ (hL A (by omega))]
    exact smul_mem_latOf_gauss R g (hpR _) h3
  · have hf' := glAct_mem_PolAB g⁻¹ f hf
    have h1 : (B.factorial : K) • f ∈ latOf g (FockLat R) := by
      rw [mem_latOf_iff, map_smul]
      exact dual_to_fock R hf' ((mem_latOf_iff g _ f).1 hD)
    have hbf : (B.factorial : K) • f ∈ PolAB K k A B := Submodule.smul_mem _ _ hf
    have h2 := hF _ hbf h1
    have hpol : ((p : K) ^ n) • T ((B.factorial : K) • f) ∈ PolAB K k A B :=
      Submodule.smul_mem _ _ (hT _ hbf)
    have h3 : ((p : K) ^ ((k - 1) * Nat.log p B) * (B.factorial : K)⁻¹) •
        (((p : K) ^ n) • T ((B.factorial : K) • f)) ∈ latOf g (DualLat R) := by
      rw [mem_latOf_iff] at h2 ⊢
      rw [map_smul]
      exact fock_to_dual R hp hR (glAct_mem_PolAB g⁻¹ _ hpol) h2
    have e : ((p : K) ^ ((k - 1) * Nat.log p B) * (B.factorial : K)⁻¹) •
        (((p : K) ^ n) • T ((B.factorial : K) • f)) =
        ((p : K) ^ ((k - 1) * Nat.log p B + n)) • T f := by
      rw [map_smul, smul_smul, smul_smul]
      congr 1
      field_simp
      ring
    rw [e] at h3
    rw [hpow _ _ (hL B (by omega))]
    exact smul_mem_latOf_dual R g (hpR _) h3

theorem gaussProj_of (H : FockProj) : GaussProj := by
  intro K _ _ k A B p R g hk hp hR f hf
  have hhar := gauss_dual_of_fock R g hk hp hR (harProj K k A B) (fun f' hf' => _root_.Formalism.CountingSumsFrames.Har2.harProj_memPol hf')
    (Nat.log p (A + B + k)) (by omega) (fun f' hf' hfl => (H K k A B p R g hk hp hR f' hf' hfl).1) f hf
  have lev := fun (j : ℕ) (hj : j ≤ min A B) => gauss_dual_of_fock R g hk hp hR (levelProj K k A B j)
    (fun f' hf' => levelProj_mem_PolAB hj hf') (2 * Nat.log p (A + B + k)) le_rfl
    (fun f' hf' hfl => (H K k A B p R g hk hp hR f' hf' hfl).2 j hj) f hf
  exact ⟨fun hG => ⟨hhar.1 hG, fun j hj => (lev j hj).1 hG⟩,
    fun hD => ⟨hhar.2 hD, fun j hj => (lev j hj).2 hD⟩⟩

attribute [local instance] MvPolynomial.weightedGradedAlgebra in
open DirectSum in
theorem exists_cofactor {K : Type} [Field K] {k A B : ℕ} (hA : 1 ≤ A) (hB : 1 ≤ B) {w G : PolXY K k}
    (hw : w ∈ PolAB K k A B) (h : w = hXY K k * G) :
    ∃ G' ∈ PolAB K k (A - 1) (B - 1), w = hXY K k * G' := by
  classical
  let 𝒜 := weightedHomogeneousSubmodule K (wXY k)
  have hh : hXY K k ∈ 𝒜 (1, 1) := (mem_PolAB_iff _).1 hXY_mem_PolAB
  have hw' : w ∈ 𝒜 (A, B) := (mem_PolAB_iff _).1 hw
  refine ⟨(decompose 𝒜 G (A - 1, B - 1) : PolXY K k), (mem_PolAB_iff _).2 (decompose 𝒜 G (A - 1, B - 1)).2, ?_⟩
  rw [← DirectSum.coe_decompose_mul_add_of_left_mem 𝒜 hh, ← h]
  have : ((1, 1) + (A - 1, B - 1) : ℕ × ℕ) = (A, B) := by
    ext <;> simp <;> omega
  rw [this, DirectSum.decompose_of_mem_same 𝒜 hw']

theorem h_mul_eq_zero_of_deg {K : Type} [Field K] {k A B : ℕ} (hAB : A = 0 ∨ B = 0) {w G : PolXY K k}
    (hw : w ∈ PolAB K k A B) (h : w = hXY K k * G) : w = 0 := by
  subst h
  ext m
  rw [MvPolynomial.coeff_zero]
  by_cases h0 : AddMonoidAlgebra.coeff (hXY K k * G) m = 0
  · exact h0
  · obtain ⟨hx, hy⟩ := (show ∀ m ∈ (hXY K k * G).support, xDeg m = A ∧ yDeg m = B from hw) m
      (MvPolynomial.mem_support_iff.2 h0)
    unfold hXY
    rw [Finset.sum_mul, MvPolynomial.coeff_sum]
    refine Finset.sum_eq_zero fun i _ => ?_
    rcases hAB with hA | hB
    · have hle : m (Sum.inl i) ≤ xDeg m :=
        Finset.single_le_sum (f := fun j => m (Sum.inl j)) (fun _ _ => Nat.zero_le _) (Finset.mem_univ i)
      have hmi : m (Sum.inl i) = 0 := by omega
      rw [mul_assoc, MvPolynomial.coeff_X_mul', if_neg (by simpa [Finsupp.mem_support_iff] using hmi)]
    · have hle : m (Sum.inr i) ≤ yDeg m :=
        Finset.single_le_sum (f := fun j => m (Sum.inr j)) (fun _ _ => Nat.zero_le _) (Finset.mem_univ i)
      have hmi : m (Sum.inr i) = 0 := by omega
      rw [mul_comm (X (Sum.inl i)) (X (Sum.inr i)), mul_assoc, MvPolynomial.coeff_X_mul',
        if_neg (by simpa [Finsupp.mem_support_iff] using hmi)]

theorem harQuot_of (H1 : HarProj) (H2 : GaussProj) : HarQuot := by
  intro K _ _ k A B p O g hk hp hR
  obtain ⟨H1a, H1b, H1c⟩ := H1 K k A B hk
  refine ⟨fun w G hw hwG => ?_, fun f hf hfl => ?_⟩
  · have hwP : w ∈ PolAB K k A B :=
      (Submodule.mem_inf.1 (show w ∈ PolAB K k A B ⊓ LinearMap.ker (ctrF K k) from hw)).1
    by_cases hAB : 1 ≤ A ∧ 1 ≤ B
    · obtain ⟨G', hG', hwG'⟩ := exists_cofactor hAB.1 hAB.2 hwP hwG
      have e1 := H1b w hw
      have e2 := H1c hAB.1 hAB.2 G' hG'
      rw [← hwG'] at e2
      rw [← e1]
      exact e2
    · exact h_mul_eq_zero_of_deg (by omega) hwP hwG
  · obtain ⟨hhar, g', hg', hdiff⟩ := H1a f hf
    have hEO : (p : K) ^ ((k + 1) * Nat.log p (A + B + k)) ∈ O.toSubring :=
      O.toSubring.pow_mem (natCast_mem _ p) _
    have hw := ((H2 K k A B p O.toSubring g hk hp hR f hf).1 hfl).1
    refine ⟨((p : K) ^ ((k + 1) * Nat.log p (A + B + k))) • harProj K k A B f, Submodule.smul_mem _ _ hhar,
      ((p : K) ^ ((k + 1) * Nat.log p (A + B + k))) • g', Submodule.smul_mem _ _ hg', hw, ?_, ?_⟩
    · apply gaussLemmaPairing_holds K k O g 1 _ hk
      rw [pow_one, mul_smul_comm, ← hdiff, smul_sub]
      have hf1 := smul_mem_latOf_gauss _ g hEO hfl
      rw [mem_latOf_iff] at hf1 hw ⊢
      rw [map_sub]
      have h1' : ∀ m, AddMonoidAlgebra.coeff (glAct g⁻¹ (((p : K) ^ ((k + 1) * Nat.log p (A + B + k))) • f)) m ∈ O.toSubring := hf1
      have h2' : ∀ m, AddMonoidAlgebra.coeff (glAct g⁻¹ (((p : K) ^ ((k + 1) * Nat.log p (A + B + k))) •
        harProj K k A B f)) m ∈ O.toSubring := hw
      show ∀ m, AddMonoidAlgebra.coeff (_ - _) m ∈ O.toSubring
      intro m
      rw [MvPolynomial.coeff_sub]
      exact O.toSubring.sub_mem (h1' m) (h2' m)
    · rw [mul_smul_comm, ← hdiff, smul_sub]
      abel

end Har4

theorem fockGaussLatticeComparison_holds : FockGaussXY := Har4.fockGaussLatticeComparison_holds
alias gaussLemmaPairing_holds := _root_.Formalism.CountingSumsFrames.Har4.gaussLemmaPairing_holds
alias isotypicLattice_holds := _root_.Formalism.CountingSumsFrames.Har4.isotypicLattice_holds
theorem gaussLatticeProjection_holds : GaussProj := Har4.gaussProj_of fockLatticeProjection_holds
theorem harmonicQuotient_holds : HarQuot := Har4.harQuot_of harmonicProjection_holds gaussLatticeProjection_holds

end Formalism.CountingSumsFrames
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PolynomialDimension.MultinomialDepth.SqrtFockGaussLatticeComparisonHolds =====
