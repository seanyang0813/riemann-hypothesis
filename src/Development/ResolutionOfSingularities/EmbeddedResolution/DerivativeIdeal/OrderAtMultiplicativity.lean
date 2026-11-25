module

public import Mathlib.RingTheory.Derivation.Basic
public import Mathlib.RingTheory.Ideal.Defs
public import Mathlib.Algebra.BigOperators.Fin
public import Mathlib.RingTheory.Ideal.BigOperators
public import Mathlib.RingTheory.Ideal.Operations
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.IdealOrder
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealOrderDecrease
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleCoordinates
public import Mathlib.LinearAlgebra.Determinant
public import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.SpanSingletonProduct
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.FormallyEtaleCoordinates
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafOrderDecrease
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealEtaleBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.ChartRing
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleChartExistence
public import Mathlib.RingTheory.Derivation.Lie
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.MultiIndexDerivation, Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LeadingForm, Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.AdaptedParameters, Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.MultiIndexDerivation =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.MultiIndexDerivation", "h": "module\n\npublic import Mathlib.RingTheory.Derivation.Basic\npublic import Mathlib.RingTheory.Ideal.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.BigOperators.Fin\npublic import Mathlib.RingTheory.Ideal.BigOperators\npublic import Mathlib.RingTheory.Ideal.Operations\n\n"}
section -- clump:auto
@[expose] public section

namespace FunctorialResolution.EmbeddedResolution

section

variable {k R : Type*} [CommRing k] [CommRing R] [Algebra k R]

def multiIndexDeriv {h : ℕ} (D : Fin h → Derivation k R R) (α : Fin h → ℕ) (x : R) : R :=
  Fin.foldr h (fun i y => (⇑(D i))^[α i] y) x

@[simp]
theorem multiIndexDeriv_of_isEmpty (D : Fin 0 → Derivation k R R) (α : Fin 0 → ℕ) :
    multiIndexDeriv D α = id := by
  funext x
  simp [multiIndexDeriv]

private theorem foldr_eq_self_of_forall_eq_self {A : Type*} :
    ∀ (n : ℕ) (f : Fin n → A → A), (∀ (i : Fin n) (y : A), f i y = y) →
      ∀ x : A, Fin.foldr n f x = x := by
  intro n
  induction n with
  | zero =>
      intro f hf x
      simp
  | succ n ih =>
      intro f hf x
      rw [Fin.foldr_succ, ih (fun i => f i.succ) (fun i y => hf i.succ y) x]
      exact hf 0 x

@[simp]
theorem multiIndexDeriv_zero {h : ℕ} (D : Fin h → Derivation k R R) (f : R) :
    multiIndexDeriv D (0 : Fin h → ℕ) f = f := by
  unfold multiIndexDeriv
  exact foldr_eq_self_of_forall_eq_self h (fun i y => (⇑(D i))^[(0 : Fin h → ℕ) i] y)
    (fun i y => by simp) f

@[simp]
theorem multiIndexDeriv_fun_zero {h : ℕ} (D : Fin h → Derivation k R R) (f : R) :
    multiIndexDeriv D (fun _ => 0) f = f :=
  multiIndexDeriv_zero D f

private theorem mul_pow_sub_one_le (J : Ideal R) (n : ℕ) :
    J * J ^ (n - 1) ≤ J ^ n := by
  cases n with
  | zero =>
      show J * J ^ 0 ≤ J ^ 0
      rw [pow_zero, Ideal.one_eq_top]
      exact le_top
  | succ m =>
      show J * J ^ m ≤ J ^ (m + 1)
      exact le_of_eq (by rw [mul_comm, ← pow_succ])

private theorem derivation_mem_pow_sub_one (J : Ideal R) (D : Derivation k R R) :
    ∀ (n : ℕ) (f : R), f ∈ J ^ n → D f ∈ J ^ (n - 1) := by
  intro n
  induction n with
  | zero =>
      intro f _
      show D f ∈ J ^ 0
      rw [pow_zero, Ideal.one_eq_top]
      exact Submodule.mem_top
  | succ m ih =>
      intro f hf
      rw [pow_succ] at hf
      show D f ∈ J ^ m
      refine Submodule.mul_induction_on (C := fun x => D x ∈ J ^ m) hf ?_ ?_
      · intro a ha b hb
        have hDa : D a ∈ J ^ (m - 1) := ih a ha
        have hL : D (a * b) = a * D b + b * D a := by
          rw [D.leibniz, smul_eq_mul, smul_eq_mul]
        show D (a * b) ∈ J ^ m
        rw [hL]
        refine Submodule.add_mem _ (Ideal.mul_mem_right _ _ ha) ?_
        exact mul_pow_sub_one_le J m (Ideal.mul_mem_mul hb hDa)
      · intro x y hx hy
        show D (x + y) ∈ J ^ m
        rw [map_add (f := _)]
        exact Submodule.add_mem _ hx hy

private theorem iterate_derivation_mem_pow_sub (J : Ideal R) (D : Derivation k R R) :
    ∀ (m n : ℕ) (f : R), f ∈ J ^ n → (⇑D)^[m] f ∈ J ^ (n - m) := by
  intro m
  induction m with
  | zero =>
      intro n f hf
      rw [Function.iterate_zero_apply, Nat.sub_zero]
      exact hf
  | succ m ih =>
      intro n f hf
      rw [Function.iterate_succ_apply]
      have h1 : D f ∈ J ^ (n - 1) := derivation_mem_pow_sub_one J D n f hf
      have h2 := ih (n - 1) (D f) h1
      have h3 : n - 1 - m = n - (m + 1) := by omega
      rw [h3] at h2
      exact h2

private theorem foldr_iterate_mem_pow_sub (J : Ideal R) :
    ∀ (h : ℕ) (D : Fin h → Derivation k R R) (α : Fin h → ℕ) (n : ℕ) (f : R), f ∈ J ^ n →
      Fin.foldr h (fun i y => (⇑(D i))^[α i] y) f ∈ J ^ (n - ∑ i, α i) := by
  intro h
  induction h with
  | zero =>
      intro D α n f hf
      have hz : ∑ i : Fin 0, α i = 0 := by simp
      rw [Fin.foldr_zero, hz, Nat.sub_zero]
      exact hf
  | succ h ih =>
      intro D α n f hf
      have hinner : Fin.foldr h (fun i y => (⇑(D i.succ))^[α i.succ] y) f
          ∈ J ^ (n - ∑ i : Fin h, α i.succ) :=
        ih (fun i => D i.succ) (fun i => α i.succ) n f hf
      have h2 := iterate_derivation_mem_pow_sub J (D 0) (α 0)
        (n - ∑ i : Fin h, α i.succ) _ hinner
      have hs0 : ∑ i, α i = α 0 + ∑ i : Fin h, α i.succ := Fin.sum_univ_succ α
      have hs : n - ∑ i, α i = n - (∑ i : Fin h, α i.succ) - α 0 := by
        rw [hs0]; omega
      rw [Fin.foldr_succ, hs]
      exact h2

theorem multiIndexDeriv_mem_pow_sub {h : ℕ} (D : Fin h → Derivation k R R) (J : Ideal R) (n : ℕ)
    {f : R} (hf : f ∈ J ^ n) (α : Fin h → ℕ) :
    multiIndexDeriv D α f ∈ J ^ (n - ∑ i, α i) := by
  exact foldr_iterate_mem_pow_sub J h D α n f hf

private theorem derivation_natCast_mul {B S : Type*} [CommRing B] [CommRing S] [Algebra B S]
    (D : Derivation B S S) (m : ℕ) (x : S) : D ((m : S) * x) = (m : S) * D x := by
  have h1 : ((m : S) * x) = m • x := by rw [nsmul_eq_mul]
  have h2 : ((m : S) * D x) = m • D x := by rw [nsmul_eq_mul]
  rw [h1, h2, map_nsmul]

private theorem iterate_derivation_natCast_mul {B S : Type*} [CommRing B] [CommRing S] [Algebra B S]
    (D : Derivation B S S) (m c : ℕ) (x : S) :
    (⇑D)^[m] ((c : S) * x) = (c : S) * (⇑D)^[m] x := by
  induction m with
  | zero => simp
  | succ m ih =>
      simp only [Function.iterate_succ_apply']
      rw [ih, derivation_natCast_mul]

private theorem iterate_derivation_sum {B S : Type*} [CommRing B] [CommRing S] [Algebra B S]
    (D : Derivation B S S) (m : ℕ) {ι : Type*} (s : Finset ι) (F : ι → S) :
    (⇑D)^[m] (∑ i ∈ s, F i) = ∑ i ∈ s, (⇑D)^[m] (F i) := by
  induction m with
  | zero => simp
  | succ m ih =>
      simp only [Function.iterate_succ_apply']

      rw [ih, map_sum]

private theorem sum_choose_succ_mul_eq {S : Type*} [CommRing S] (u v : ℕ → S) (n : ℕ) :
    (∑ i ∈ Finset.range (n + 1), ((n.choose i : ℕ) : S) * (u (i + 1) * v (n - i)))
        + (∑ i ∈ Finset.range (n + 1), ((n.choose i : ℕ) : S) * (u i * v (n + 1 - i)))
      = ∑ i ∈ Finset.range (n + 1 + 1), (((n + 1).choose i : ℕ) : S) * (u i * v (n + 1 - i)) := by
  have e1 : (∑ i ∈ Finset.range (n + 1), ((n.choose i : ℕ) : S) * (u (i + 1) * v (n - i)))
      = (∑ i ∈ Finset.range n, ((n.choose i : ℕ) : S) * (u (i + 1) * v (n - i)))
        + u (n + 1) * v 0 := by
    rw [Finset.sum_range_succ]
    simp
  have e2 : (∑ i ∈ Finset.range (n + 1), ((n.choose i : ℕ) : S) * (u i * v (n + 1 - i)))
      = (∑ i ∈ Finset.range n, ((n.choose (i + 1) : ℕ) : S) * (u (i + 1) * v (n - i)))
        + u 0 * v (n + 1) := by
    rw [Finset.sum_range_succ']
    simp
  have e3 : (∑ i ∈ Finset.range (n + 1 + 1), (((n + 1).choose i : ℕ) : S) * (u i * v (n + 1 - i)))
      = (∑ i ∈ Finset.range (n + 1), (((n + 1).choose (i + 1) : ℕ) : S) * (u (i + 1) * v (n - i)))
        + u 0 * v (n + 1) := by
    rw [Finset.sum_range_succ']
    simp
  have e4 : (∑ i ∈ Finset.range (n + 1),
        (((n + 1).choose (i + 1) : ℕ) : S) * (u (i + 1) * v (n - i)))
      = (∑ i ∈ Finset.range n, (((n + 1).choose (i + 1) : ℕ) : S) * (u (i + 1) * v (n - i)))
        + u (n + 1) * v 0 := by
    rw [Finset.sum_range_succ]
    simp
  have e5 : (∑ i ∈ Finset.range n,
        (((n + 1).choose (i + 1) : ℕ) : S) * (u (i + 1) * v (n - i)))
      = (∑ i ∈ Finset.range n, ((n.choose i : ℕ) : S) * (u (i + 1) * v (n - i)))
        + (∑ i ∈ Finset.range n, ((n.choose (i + 1) : ℕ) : S) * (u (i + 1) * v (n - i))) := by
    rw [← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    have hc : ((n + 1).choose (i + 1) : ℕ) = n.choose i + n.choose (i + 1) :=
      Nat.choose_succ_succ n i
    rw [hc]
    push_cast
    ring
  rw [e1, e2, e3, e4, e5]
  ring

private theorem iterate_derivation_mul {B S : Type*} [CommRing B] [CommRing S] [Algebra B S]
    (D : Derivation B S S) (n : ℕ) (x y : S) :
    (⇑D)^[n] (x * y)
      = ∑ i ∈ Finset.range (n + 1), ((n.choose i : ℕ) : S) * ((⇑D)^[i] x * (⇑D)^[n - i] y) := by
  induction n with
  | zero => simp
  | succ n ih =>
      have hstep : ∀ i ∈ Finset.range (n + 1),
          D (((n.choose i : ℕ) : S) * ((⇑D)^[i] x * (⇑D)^[n - i] y))
            = ((n.choose i : ℕ) : S) * ((⇑D)^[i + 1] x * (⇑D)^[n - i] y)
              + ((n.choose i : ℕ) : S) * ((⇑D)^[i] x * (⇑D)^[n + 1 - i] y) := by
        intro i hi
        rw [Finset.mem_range] at hi
        have e1 : D ((⇑D)^[i] x) = (⇑D)^[i + 1] x := (Function.iterate_succ_apply' (⇑D) i x).symm
        have e2 : D ((⇑D)^[n - i] y) = (⇑D)^[n + 1 - i] y := by
          have hni : n + 1 - i = n - i + 1 := by omega
          rw [hni]
          exact (Function.iterate_succ_apply' (⇑D) (n - i) y).symm
        rw [derivation_natCast_mul, D.leibniz, e1, e2]
        simp only [smul_eq_mul]
        ring

      rw [Function.iterate_succ_apply', ih, map_sum]
      refine Eq.trans (Finset.sum_congr rfl hstep) ?_
      rw [Finset.sum_add_distrib]
      exact sum_choose_succ_mul_eq (fun i => (⇑D)^[i] x) (fun i => (⇑D)^[i] y) n

private theorem multiIndexDeriv_succ {B S : Type*} [CommRing B] [CommRing S] [Algebra B S]
    {m : ℕ} (D : Fin (m + 1) → Derivation B S S) (α : Fin (m + 1) → ℕ) (x : S) :
    multiIndexDeriv D α x
      = (⇑(D 0))^[α 0] (multiIndexDeriv (fun i => D i.succ) (fun i => α i.succ) x) := by
  simp only [multiIndexDeriv, Fin.foldr_succ]

private theorem fin_cons_self_tail {m : ℕ} (β : Fin (m + 1) → ℕ) :
    Fin.cons (β 0) (fun i => β i.succ) = β := by
  funext i
  refine Fin.cases ?_ ?_ i
  · simp
  · intro j
    simp

private def finSuccFunEquivProd (m : ℕ) : (Fin (m + 1) → ℕ) ≃ ℕ × (Fin m → ℕ) where
  toFun β := (β 0, fun i => β i.succ)
  invFun p := Fin.cons p.1 p.2
  left_inv β := fin_cons_self_tail β
  right_inv p := by
    rcases p with ⟨a, b⟩
    simp

private theorem sum_piFinset_succ {M : Type*} [AddCommMonoid M] {m : ℕ}
    (s : Fin (m + 1) → Finset ℕ) (F : (Fin (m + 1) → ℕ) → M) :
    ∑ β ∈ Fintype.piFinset s, F β
      = ∑ j ∈ s 0, ∑ γ ∈ Fintype.piFinset (fun i => s i.succ), F (Fin.cons j γ) := by
  rw [← Finset.sum_product']
  refine Finset.sum_equiv (finSuccFunEquivProd m) ?_ ?_
  · intro β
    constructor
    · intro hβ
      have hβ' := Fintype.mem_piFinset.1 hβ
      exact Finset.mem_product.2 ⟨hβ' 0, Fintype.mem_piFinset.2 (fun i => hβ' i.succ)⟩
    · intro hβ
      have h1 := Finset.mem_product.1 hβ
      refine Fintype.mem_piFinset.2 (fun i => ?_)
      refine Fin.cases ?_ ?_ i
      · exact h1.1
      · intro j
        exact Fintype.mem_piFinset.1 h1.2 j
  · intro β _
    exact congrArg F (fin_cons_self_tail β).symm

theorem multiIndexDeriv_mul {h : ℕ} (D : Fin h → Derivation k R R) (α : Fin h → ℕ) (f g : R) :
    multiIndexDeriv D α (f * g) =
      ∑ β ∈ Fintype.piFinset fun i => Finset.range (α i + 1),
        ((∏ i, (α i).choose (β i) : ℕ) : R) * multiIndexDeriv D β f *
          multiIndexDeriv D (fun i => α i - β i) g := by
  induction h with
  | zero =>
      have hset : (Fintype.piFinset fun i : Fin 0 => Finset.range (α i + 1))
          = {fun _ => 0} := by
        refine Finset.eq_singleton_iff_unique_mem.2 ⟨?_, ?_⟩
        · exact Fintype.mem_piFinset.2 (fun i => i.elim0)
        · intro x _
          funext i
          exact i.elim0
      rw [hset, Finset.sum_singleton]
      simp
  | succ h ih =>
      have hcons : ∀ (j : ℕ) (γ : Fin h → ℕ) (x : R),
          multiIndexDeriv D (Fin.cons j γ) x
            = (⇑(D 0))^[j] (multiIndexDeriv (fun i => D i.succ) γ x) := by
        intro j γ x
        rw [multiIndexDeriv_succ D (Fin.cons j γ) x]
        simp
      have hcons2 : ∀ (j : ℕ) (γ : Fin h → ℕ) (x : R),
          multiIndexDeriv D (fun i => α i - (Fin.cons j γ : Fin (h + 1) → ℕ) i) x
            = (⇑(D 0))^[α 0 - j]
                (multiIndexDeriv (fun i => D i.succ) (fun i => α i.succ - γ i) x) := by
        intro j γ x
        rw [multiIndexDeriv_succ D (fun i => α i - (Fin.cons j γ : Fin (h + 1) → ℕ) i) x]
        simp
      have key : ∀ γ : Fin h → ℕ,
          (⇑(D 0))^[α 0] (((∏ i, (α i.succ).choose (γ i) : ℕ) : R)
              * multiIndexDeriv (fun i => D i.succ) γ f
              * multiIndexDeriv (fun i => D i.succ) (fun i => α i.succ - γ i) g)
            = ∑ j ∈ Finset.range (α 0 + 1),
                ((∏ i, (α i).choose ((Fin.cons j γ : Fin (h + 1) → ℕ) i) : ℕ) : R)
                  * multiIndexDeriv D (Fin.cons j γ) f
                  * multiIndexDeriv D (fun i => α i - (Fin.cons j γ : Fin (h + 1) → ℕ) i) g := by
        intro γ
        have hA : ((∏ i, (α i.succ).choose (γ i) : ℕ) : R)
              * multiIndexDeriv (fun i => D i.succ) γ f
              * multiIndexDeriv (fun i => D i.succ) (fun i => α i.succ - γ i) g
            = ((∏ i, (α i.succ).choose (γ i) : ℕ) : R)
              * (multiIndexDeriv (fun i => D i.succ) γ f
                * multiIndexDeriv (fun i => D i.succ) (fun i => α i.succ - γ i) g) :=
          mul_assoc _ _ _
        rw [hA, iterate_derivation_natCast_mul, iterate_derivation_mul, Finset.mul_sum]
        refine Finset.sum_congr rfl (fun j _ => ?_)
        rw [hcons j γ f, hcons2 j γ g, Fin.prod_univ_succ]
        simp only [Fin.cons_zero, Fin.cons_succ]
        push_cast
        ring
      rw [multiIndexDeriv_succ D α (f * g), ih (fun i => D i.succ) (fun i => α i.succ),
        iterate_derivation_sum]
      refine Eq.trans (Finset.sum_congr rfl (fun γ _ => key γ)) ?_
      rw [Finset.sum_comm]
      exact (sum_piFinset_succ (fun i : Fin (h + 1) => Finset.range (α i + 1))
        (fun β => ((∏ i, (α i).choose (β i) : ℕ) : R) * multiIndexDeriv D β f *
          multiIndexDeriv D (fun i => α i - β i) g)).symm

theorem multiIndexDeriv_mul_sub_sum_mem {h : ℕ} (D : Fin h → Derivation k R R) (J : Ideal R)
    (r s : ℕ) (α : Fin h → ℕ) (hα : ∑ i, α i = r + s) {f g : R}
    (hf : f ∈ J ^ r) (hg : g ∈ J ^ s) :
    multiIndexDeriv D α (f * g) -
        ∑ β ∈ (Fintype.piFinset fun i => Finset.range (α i + 1)).filter
            (fun β => ∑ i, β i = r),
          ((∏ i, (α i).choose (β i) : ℕ) : R) * multiIndexDeriv D β f *
            multiIndexDeriv D (fun i => α i - β i) g ∈ J := by
  rw [multiIndexDeriv_mul D α f g,
    ← Finset.sum_filter_add_sum_filter_not
      (Fintype.piFinset fun i => Finset.range (α i + 1)) (fun β => ∑ i, β i = r),
    add_sub_cancel_left]
  refine Ideal.sum_mem _ ?_
  intro β hβ
  rw [Finset.mem_filter] at hβ
  obtain ⟨hβmem, hβne⟩ := hβ
  have hβi : ∀ i, β i ≤ α i := fun i =>
    Nat.lt_succ_iff.mp (Finset.mem_range.mp (Fintype.mem_piFinset.mp hβmem i))
  have h1 : (∑ i, (α i - β i)) + ∑ i, β i = r + s := by
    rw [← hα, ← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl fun i _ => Nat.sub_add_cancel (hβi i)
  by_cases hlt : ∑ i, β i < r
  · have hmem : multiIndexDeriv D β f ∈ J ^ (r - ∑ i, β i) :=
      multiIndexDeriv_mem_pow_sub D J r hf β
    have hx : multiIndexDeriv D β f ∈ J := by
      have hpos : 0 < r - ∑ i, β i := by omega
      exact Ideal.pow_le_self hpos.ne' hmem
    exact Ideal.mul_mem_right _ _ (Ideal.mul_mem_left _ _ hx)
  · have hmem : multiIndexDeriv D (fun i => α i - β i) g ∈ J ^ (s - ∑ i, (α i - β i)) :=
      multiIndexDeriv_mem_pow_sub D J s hg (fun i => α i - β i)
    have hy : multiIndexDeriv D (fun i => α i - β i) g ∈ J := by
      have hpos : 0 < s - ∑ i, (α i - β i) := by omega
      exact Ideal.pow_le_self hpos.ne' hmem
    exact Ideal.mul_mem_left _ _ hy

private theorem foldr_comm_of_comm {A : Type*} (E : A → A) :
    ∀ (n : ℕ) (F : Fin n → A → A), (∀ (i : Fin n) (y : A), E (F i y) = F i (E y)) →
      ∀ x : A, E (Fin.foldr n F x) = Fin.foldr n F (E x) := by
  intro n
  induction n with
  | zero =>
      intro F _ x
      simp
  | succ n ih =>
      intro F hF x
      rw [Fin.foldr_succ, Fin.foldr_succ, hF 0,
        ih (fun i => F i.succ) (fun i y => hF i.succ y) x]

private theorem multiIndexDeriv_add_of_comm_forall :
    ∀ (n : ℕ) (D : Fin n → Derivation k R R),
      (∀ i j : Fin n, ∀ x : R, D i (D j x) = D j (D i x)) →
      ∀ (α β : Fin n → ℕ) (x : R),
        multiIndexDeriv D (α + β) x = multiIndexDeriv D α (multiIndexDeriv D β x) := by
  intro n
  induction n with
  | zero =>
      intro D _ α β x
      simp
  | succ n ih =>
      intro D hD α β x
      have key : ∀ (γ : Fin (n + 1) → ℕ) (y : R),
          multiIndexDeriv D γ y =
            (⇑(D 0))^[γ 0]
              (multiIndexDeriv (fun i : Fin n => D i.succ) (fun i : Fin n => γ i.succ) y) := by
        intro γ y
        exact Fin.foldr_succ (fun (i : Fin (n + 1)) (z : R) => (⇑(D i))^[γ i] z) y
      have hcomm0 : ∀ (γ : Fin n → ℕ) (y : R),
          (⇑(D 0)) (multiIndexDeriv (fun i : Fin n => D i.succ) γ y) =
            multiIndexDeriv (fun i : Fin n => D i.succ) γ ((⇑(D 0)) y) := by
        intro γ y
        have hc : ∀ (i : Fin n) (z : R),
            (⇑(D 0)) ((⇑(D i.succ))^[γ i] z) = (⇑(D i.succ))^[γ i] ((⇑(D 0)) z) := by
          intro i z
          have hcomm : Function.Commute (⇑(D 0) : R → R) (⇑(D i.succ) : R → R) :=
            fun w => hD 0 i.succ w
          exact hcomm.iterate_right (γ i) z
        exact foldr_comm_of_comm (⇑(D 0)) n (fun i z => (⇑(D i.succ))^[γ i] z) hc y
      have hcomm : ∀ (m : ℕ) (γ : Fin n → ℕ) (y : R),
          (⇑(D 0))^[m] (multiIndexDeriv (fun i : Fin n => D i.succ) γ y) =
            multiIndexDeriv (fun i : Fin n => D i.succ) γ ((⇑(D 0))^[m] y) := by
        intro m γ y
        have hc : Function.Commute (multiIndexDeriv (fun i : Fin n => D i.succ) γ)
            (⇑(D 0) : R → R) := fun w => (hcomm0 γ w).symm
        exact (hc.iterate_right m y).symm
      have hidx : (fun i : Fin n => (α + β) i.succ)
          = (fun i : Fin n => α i.succ) + (fun i : Fin n => β i.succ) := by
        funext i
        simp
      rw [key (α + β) x, hidx,
        ih (fun i : Fin n => D i.succ) (fun i j w => hD i.succ j.succ w)
          (fun i : Fin n => α i.succ) (fun i : Fin n => β i.succ) x,
        key β x, key α, Pi.add_apply, Function.iterate_add_apply,
        hcomm (β 0) (fun i : Fin n => α i.succ)
          (multiIndexDeriv (fun i : Fin n => D i.succ) (fun i : Fin n => β i.succ) x)]

theorem multiIndexDeriv_add {h : ℕ} (D : Fin h → Derivation k R R)
    (hD : ∀ i j : Fin h, ∀ x : R, D i (D j x) = D j (D i x)) (α β : Fin h → ℕ) (x : R) :
    multiIndexDeriv D (α + β) x = multiIndexDeriv D α (multiIndexDeriv D β x) :=
  multiIndexDeriv_add_of_comm_forall h D hD α β x

def unitMultiIndex {h : ℕ} (i : Fin h) : Fin h → ℕ := fun j => if j = i then 1 else 0

theorem sum_unitMultiIndex {h : ℕ} (i : Fin h) : ∑ j, unitMultiIndex i j = 1 := by
  simp [unitMultiIndex]

private theorem foldr_eq_of_eq_id_of_ne {A : Type*} :
    ∀ (n : ℕ) (F : Fin n → A → A) (i : Fin n) (f : A → A),
      (∀ j : Fin n, j ≠ i → ∀ y : A, F j y = y) → (∀ y : A, F i y = f y) →
      ∀ x : A, Fin.foldr n F x = f x := by
  intro n
  induction n with
  | zero =>
      intro F i
      exact i.elim0
  | succ m ih =>
      intro F i
      induction i using Fin.cases with
      | zero =>
          intro f hne heq x
          have hinner : Fin.foldr m (fun j : Fin m => F j.succ) x = x :=
            foldr_eq_self_of_forall_eq_self m (fun j : Fin m => F j.succ)
              (fun j y => hne j.succ (Fin.succ_ne_zero j) y) x
          rw [Fin.foldr_succ]
          show F 0 (Fin.foldr m (fun j : Fin m => F j.succ) x) = f x
          rw [hinner]
          exact heq x
      | succ j =>
          intro f hne heq x
          have hinner : Fin.foldr m (fun j' : Fin m => F j'.succ) x = f x :=
            ih (fun j' : Fin m => F j'.succ) j f
              (fun j' hj' y => hne j'.succ (fun hc => hj' (Fin.succ_injective m hc)) y)
              (fun y => heq y) x
          rw [Fin.foldr_succ]
          show F 0 (Fin.foldr m (fun j' : Fin m => F j'.succ) x) = f x
          rw [hinner]
          exact hne 0 (Ne.symm (Fin.succ_ne_zero j)) (f x)

theorem multiIndexDeriv_unitMultiIndex {h : ℕ} (D : Fin h → Derivation k R R) (i : Fin h) (x : R) :
    multiIndexDeriv D (unitMultiIndex i) x = D i x := by
  show Fin.foldr h (fun j y => (⇑(D j))^[unitMultiIndex i j] y) x = D i x
  refine foldr_eq_of_eq_id_of_ne h (fun j y => (⇑(D j))^[unitMultiIndex i j] y) i
    (⇑(D i)) ?_ ?_ x
  · intro j hj y
    simp [unitMultiIndex, hj]
  · intro y
    simp [unitMultiIndex]

theorem multiIndexDeriv_add_unitMultiIndex_apply_first {h : ℕ} (D : Fin h → Derivation k R R)
    (hD : ∀ i j : Fin h, ∀ x : R, D i (D j x) = D j (D i x)) (α : Fin h → ℕ) (i : Fin h) (x : R) :
    multiIndexDeriv D (α + unitMultiIndex i) x = multiIndexDeriv D α (D i x) := by
  rw [multiIndexDeriv_add D hD α (unitMultiIndex i) x, multiIndexDeriv_unitMultiIndex D i x]

end

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.MultiIndexDerivation =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LeadingForm =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LeadingForm", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.IdealOrder\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.MultiIndexDerivation\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealOrderDecrease\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace FunctorialResolution.EmbeddedResolution

open IsLocalRing

def multiIndicesOfDegree (h r : ℕ) : Finset (Fin h → ℕ) :=
  (Fintype.piFinset fun _ : Fin h => Finset.range (r + 1)).filter fun β => ∑ i, β i = r

theorem mem_multiIndicesOfDegree {h r : ℕ} (β : Fin h → ℕ) :
    β ∈ multiIndicesOfDegree h r ↔ ∑ i, β i = r := by
  simp only [multiIndicesOfDegree, Finset.mem_filter, Fintype.mem_piFinset, Finset.mem_range]
  constructor
  · exact fun hβ => hβ.2
  · intro hs
    refine ⟨fun i => ?_, hs⟩
    have h1 : β i ≤ r := by
      rw [← hs]
      exact Finset.single_le_sum (f := β) (fun j _ => Nat.zero_le _) (Finset.mem_univ i)
    omega

private theorem mem_maximalIdeal_pow_succ_of_multiIndexDeriv_mem {k R : Type*} [CommRing k] [CommRing R]
    [IsLocalRing R] [Algebra k R] {h : ℕ} (x : Fin h → R) (D : Fin h → Derivation k R R)
    (hx : Ideal.span (Set.range x) = IsLocalRing.maximalIdeal R)
    (hD : ∀ i j, D i (x j) = if i = j then 1 else 0)
    (hDD : ∀ i j : Fin h, ∀ a : R, D i (D j a) = D j (D i a))
    (hunit : ∀ n : ℕ, 1 ≤ n → IsUnit ((n : ℕ) : R)) (r : ℕ) :
    ∀ f : R, f ∈ IsLocalRing.maximalIdeal R ^ r →
      (∀ β : Fin h → ℕ, (∑ i, β i = r) → multiIndexDeriv D β f ∈ IsLocalRing.maximalIdeal R) →
      f ∈ IsLocalRing.maximalIdeal R ^ (r + 1) := by
  induction r with
  | zero =>
    intro f _ hβ
    have h0 := hβ (fun _ => 0) (by simp)
    rw [multiIndexDeriv_fun_zero] at h0
    simpa using h0
  | succ r ih =>
    intro f hf hβ
    have key : ∀ i, D i f ∈ IsLocalRing.maximalIdeal R ^ (r + 1) := by
      intro i
      refine ih (D i f) ?_ ?_
      · have h1 := multiIndexDeriv_mem_pow_sub D (IsLocalRing.maximalIdeal R) (r + 1) hf
          (unitMultiIndex i)
        rw [multiIndexDeriv_unitMultiIndex, sum_unitMultiIndex] at h1
        simpa using h1
      · intro β hβ'
        have hsum : ∑ j, (β + unitMultiIndex i) j = r + 1 := by
          simp only [Pi.add_apply]
          rw [Finset.sum_add_distrib, hβ', sum_unitMultiIndex]
        have h2 := hβ (β + unitMultiIndex i) hsum
        rwa [multiIndexDeriv_add_unitMultiIndex_apply_first D hDD β i f] at h2
    have hfx : f ∈ Ideal.span (Set.range x) ^ (r + 1) := by rw [hx]; exact hf
    have hdx : ∀ i, D i f ∈ Ideal.span (Set.range x) ^ (r + 1) := by
      intro i; rw [hx]; exact key i
    have hres := mem_pow_succ_of_deriv_mem_pow k x D hD (hunit (r + 1) (by omega)) hfx hdx
    rw [hx] at hres
    exact hres

theorem mem_maximalIdeal_pow_succ_iff_multiIndexDeriv_mem {k R : Type*} [CommRing k] [CommRing R]
    [IsLocalRing R] [Algebra k R] {h : ℕ} (x : Fin h → R) (D : Fin h → Derivation k R R)
    (hx : Ideal.span (Set.range x) = IsLocalRing.maximalIdeal R)
    (hD : ∀ i j, D i (x j) = if i = j then 1 else 0)
    (hDD : ∀ i j : Fin h, ∀ a : R, D i (D j a) = D j (D i a))
    (hunit : ∀ n : ℕ, 1 ≤ n → IsUnit ((n : ℕ) : R))
    (r : ℕ) {f : R} (hf : f ∈ IsLocalRing.maximalIdeal R ^ r) :
    f ∈ IsLocalRing.maximalIdeal R ^ (r + 1) ↔
      ∀ β ∈ multiIndicesOfDegree h r, multiIndexDeriv D β f ∈ IsLocalRing.maximalIdeal R := by
  constructor
  · intro hfs β hβ
    have hβ' : ∑ i, β i = r := (mem_multiIndicesOfDegree β).mp hβ
    have hm := multiIndexDeriv_mem_pow_sub D (IsLocalRing.maximalIdeal R) (r + 1) hfs β
    rw [hβ'] at hm
    have hr1 : r + 1 - r = 1 := by omega
    rw [hr1, pow_one] at hm
    exact hm
  · intro hall
    exact mem_maximalIdeal_pow_succ_of_multiIndexDeriv_mem x D hx hD hDD hunit r f hf
      (fun β hb => hall β ((mem_multiIndicesOfDegree β).mpr hb))

private theorem idealOrder_eq_of_le_of_not_le {R : Type*} [CommRing R] [IsLocalRing R] {n : ℕ}
    {I : Ideal R} (h1 : I ≤ IsLocalRing.maximalIdeal R ^ n)
    (h2 : ¬ I ≤ IsLocalRing.maximalIdeal R ^ (n + 1)) : idealOrder I = (n : ℕ∞) := by
  have h3 : (n : ℕ∞) ≤ idealOrder I := (le_idealOrder_iff I n).mpr h1
  have h4 : ¬ (((n + 1 : ℕ) : ℕ∞) ≤ idealOrder I) := fun hc =>
    h2 ((le_idealOrder_iff I (n + 1)).mp hc)
  rw [not_le] at h4
  obtain ⟨m, hm⟩ := ENat.ne_top_iff_exists.mp (ne_top_of_lt h4)
  rw [← hm] at h3 h4 ⊢
  have hle : n ≤ m := by exact_mod_cast h3
  have hlt : m < n + 1 := by exact_mod_cast h4
  have hme : m = n := by omega
  exact_mod_cast hme

private def ofDigitsFin (N : ℕ) {h : ℕ} (β : Fin h → ℕ) : ℕ := ∑ i, β i * N ^ (i : ℕ)

private theorem ofDigits_add (N : ℕ) {h : ℕ} (β γ : Fin h → ℕ) :
    ofDigitsFin N (fun i => β i + γ i) = ofDigitsFin N β + ofDigitsFin N γ := by
  simp only [ofDigitsFin, add_mul]
  rw [Finset.sum_add_distrib]

private theorem ofDigits_fin_succ (N : ℕ) {n : ℕ} (δ : Fin (n + 1) → ℕ) :
    ofDigitsFin N δ = δ 0 + (ofDigitsFin N fun i : Fin n => δ i.succ) * N := by
  simp only [ofDigitsFin]
  rw [Fin.sum_univ_succ, Finset.sum_mul]
  congr 1
  · simp
  · refine Finset.sum_congr rfl fun i _ => ?_
    rw [Fin.val_succ, pow_succ, mul_assoc]

private theorem ofDigits_injective_of_lt (N : ℕ) (hN : 0 < N) : ∀ (h : ℕ) (β γ : Fin h → ℕ),
    (∀ i, β i < N) → (∀ i, γ i < N) → ofDigitsFin N β = ofDigitsFin N γ → β = γ := by
  intro h
  induction h with
  | zero =>
    intro β γ _ _ _
    funext i
    exact i.elim0
  | succ n ih =>
    intro β γ hβ hγ hsum
    rw [ofDigits_fin_succ N β, ofDigits_fin_succ N γ] at hsum
    have h0 : β 0 = γ 0 := by
      have hmod : (β 0 + (ofDigitsFin N fun i : Fin n => β i.succ) * N) % N
          = (γ 0 + (ofDigitsFin N fun i : Fin n => γ i.succ) * N) % N := by rw [hsum]
      rwa [Nat.add_mul_mod_self_right, Nat.add_mul_mod_self_right,
        Nat.mod_eq_of_lt (hβ 0), Nat.mod_eq_of_lt (hγ 0)] at hmod
    rw [h0] at hsum
    have h1 : (ofDigitsFin N fun i : Fin n => β i.succ) = ofDigitsFin N fun i : Fin n => γ i.succ :=
      Nat.eq_of_mul_eq_mul_right hN (Nat.add_left_cancel hsum)
    have h2 := ih _ _ (fun i => hβ i.succ) (fun i => hγ i.succ) h1
    funext i
    refine Fin.cases ?_ ?_ i
    · exact h0
    · intro j
      exact congrFun h2 j

private theorem exists_ofDigits_le_of_sum_eq {h : ℕ} (P : (Fin h → ℕ) → Prop) (r N : ℕ)
    (hex : ∃ β : Fin h → ℕ, (∑ i, β i = r) ∧ P β) :
    ∃ β₀ : Fin h → ℕ, (∑ i, β₀ i = r) ∧ P β₀ ∧
      ∀ β : Fin h → ℕ, (∑ i, β i = r) → P β → ofDigitsFin N β₀ ≤ ofDigitsFin N β := by
  classical
  obtain ⟨β₁, hβ₁, hP₁⟩ := hex
  obtain ⟨β₀, hmem, hmin⟩ := Finset.exists_min_image
    ((multiIndicesOfDegree h r).filter P) (ofDigitsFin N)
    ⟨β₁, Finset.mem_filter.mpr ⟨(mem_multiIndicesOfDegree β₁).mpr hβ₁, hP₁⟩⟩
  rw [Finset.mem_filter, mem_multiIndicesOfDegree] at hmem
  exact ⟨β₀, hmem.1, hmem.2, fun β hβ hPβ =>
    hmin β (Finset.mem_filter.mpr ⟨(mem_multiIndicesOfDegree β).mpr hβ, hPβ⟩)⟩

private theorem sum_notMem_of_unique_notMem {R : Type*} [CommRing R] {I : Ideal R} {ι : Type*}
    [DecidableEq ι] (t : Finset ι) (F : ι → R) (a : ι) (ha : a ∈ t) (hFa : F a ∉ I)
    (hrest : ∀ b ∈ t, b ≠ a → F b ∈ I) : (∑ b ∈ t, F b) ∉ I := by
  intro hsum
  refine hFa ?_
  have h1 : (∑ b ∈ t.erase a, F b) ∈ I :=
    Ideal.sum_mem _ fun b hb => hrest b (Finset.mem_of_mem_erase hb) (Finset.ne_of_mem_erase hb)
  have h2 : F a + ∑ b ∈ t.erase a, F b = ∑ b ∈ t, F b := Finset.add_sum_erase t F ha
  have h3 := sub_mem hsum h1
  rw [← h2, add_sub_cancel_right] at h3
  exact h3

private theorem mul_notMem_maximalIdeal_pow_add_succ {k R : Type*} [CommRing k] [CommRing R]
    [IsLocalRing R] [Algebra k R] {h : ℕ} (x : Fin h → R) (D : Fin h → Derivation k R R)
    (hx : Ideal.span (Set.range x) = IsLocalRing.maximalIdeal R)
    (hD : ∀ i j, D i (x j) = if i = j then 1 else 0)
    (hDD : ∀ i j : Fin h, ∀ a : R, D i (D j a) = D j (D i a))
    (hunit : ∀ n : ℕ, 1 ≤ n → IsUnit ((n : ℕ) : R))
    {r s : ℕ} {f g : R} (hf : f ∈ IsLocalRing.maximalIdeal R ^ r)
    (hnf : f ∉ IsLocalRing.maximalIdeal R ^ (r + 1))
    (hg : g ∈ IsLocalRing.maximalIdeal R ^ s)
    (hng : g ∉ IsLocalRing.maximalIdeal R ^ (s + 1)) :
    f * g ∉ IsLocalRing.maximalIdeal R ^ (r + s + 1) := by
  have hfex : ∃ β : Fin h → ℕ, (∑ i, β i = r) ∧
      multiIndexDeriv D β f ∉ IsLocalRing.maximalIdeal R := by
    by_contra hcon
    push Not at hcon
    refine hnf ((mem_maximalIdeal_pow_succ_iff_multiIndexDeriv_mem x D hx hD hDD hunit r hf).mpr ?_)
    intro β hβ
    exact hcon β ((mem_multiIndicesOfDegree β).mp hβ)
  have hgex : ∃ γ : Fin h → ℕ, (∑ i, γ i = s) ∧
      multiIndexDeriv D γ g ∉ IsLocalRing.maximalIdeal R := by
    by_contra hcon
    push Not at hcon
    refine hng ((mem_maximalIdeal_pow_succ_iff_multiIndexDeriv_mem x D hx hD hDD hunit s hg).mpr ?_)
    intro γ hγ
    exact hcon γ ((mem_multiIndicesOfDegree γ).mp hγ)
  obtain ⟨β₀, hβ₀deg, hβ₀f, hβ₀min⟩ := exists_ofDigits_le_of_sum_eq
    (fun β => multiIndexDeriv D β f ∉ IsLocalRing.maximalIdeal R) r (r + s + 1) hfex
  obtain ⟨γ₀, hγ₀deg, hγ₀g, hγ₀min⟩ := exists_ofDigits_le_of_sum_eq
    (fun γ => multiIndexDeriv D γ g ∉ IsLocalRing.maximalIdeal R) s (r + s + 1) hgex
  obtain ⟨α, hα⟩ : ∃ α : Fin h → ℕ, ∀ i, α i = β₀ i + γ₀ i := ⟨_, fun _ => rfl⟩
  have hαsum : ∑ i, α i = r + s := by
    have hc : ∑ i, α i = ∑ i, (β₀ i + γ₀ i) := Finset.sum_congr rfl fun i _ => hα i
    rw [hc, Finset.sum_add_distrib, hβ₀deg, hγ₀deg]
  have hbase : ofDigitsFin (r + s + 1) α
      = ofDigitsFin (r + s + 1) β₀ + ofDigitsFin (r + s + 1) γ₀ := by
    rw [← ofDigits_add]
    exact congrArg (ofDigitsFin (r + s + 1)) (funext hα)
  intro hmem
  have hfg : f * g ∈ IsLocalRing.maximalIdeal R ^ (r + s) := by
    rw [pow_add]
    exact Ideal.mul_mem_mul hf hg
  have hkey := (mem_maximalIdeal_pow_succ_iff_multiIndexDeriv_mem x D hx hD hDD hunit (r + s) hfg).mp hmem
    α ((mem_multiIndicesOfDegree α).mpr hαsum)
  have hsub := multiIndexDeriv_mul_sub_sum_mem D (IsLocalRing.maximalIdeal R) r s α hαsum hf hg
  have hT := sub_mem hkey hsub
  rw [sub_sub_cancel] at hT
  refine (sum_notMem_of_unique_notMem _ _ β₀ ?_ ?_ ?_) hT
  · rw [Finset.mem_filter, Fintype.mem_piFinset]
    refine ⟨fun i => Finset.mem_range.mpr ?_, hβ₀deg⟩
    have := hα i
    omega
  · have hγeq : (fun i => α i - β₀ i) = γ₀ := by
      funext i
      have := hα i
      omega
    rw [hγeq]
    have hcne : (∏ i, (α i).choose (β₀ i)) ≠ 0 := by
      rw [Finset.prod_ne_zero_iff]
      intro i _
      refine (Nat.choose_pos ?_).ne'
      have := hα i
      omega
    exact IsLocalRing.notMem_maximalIdeal.mpr
      (((hunit _ (Nat.one_le_iff_ne_zero.mpr hcne)).mul
        (IsLocalRing.notMem_maximalIdeal.mp hβ₀f)).mul
        (IsLocalRing.notMem_maximalIdeal.mp hγ₀g))
  · intro β hβt hβne
    rw [Finset.mem_filter, Fintype.mem_piFinset] at hβt
    obtain ⟨hβrange, hβsum⟩ := hβt
    have hβle : ∀ i, β i ≤ α i := fun i =>
      Nat.lt_succ_iff.mp (Finset.mem_range.mp (hβrange i))
    by_cases hcase : multiIndexDeriv D β f ∈ IsLocalRing.maximalIdeal R
    · exact Ideal.mul_mem_right _ _ (Ideal.mul_mem_left _ _ hcase)
    · have hmin1 : ofDigitsFin (r + s + 1) β₀ ≤ ofDigitsFin (r + s + 1) β := hβ₀min β hβsum hcase
      have hbβ : ∀ i, β i < r + s + 1 := by
        intro i
        have h1 : β i ≤ r := by
          rw [← hβsum]
          exact Finset.single_le_sum (f := β) (fun j _ => Nat.zero_le _) (Finset.mem_univ i)
        omega
      have hbβ₀ : ∀ i, β₀ i < r + s + 1 := by
        intro i
        have h1 : β₀ i ≤ r := by
          rw [← hβ₀deg]
          exact Finset.single_le_sum (f := β₀) (fun j _ => Nat.zero_le _) (Finset.mem_univ i)
        omega
      have hne : ofDigitsFin (r + s + 1) β₀ ≠ ofDigitsFin (r + s + 1) β := fun heq =>
        hβne (ofDigits_injective_of_lt (r + s + 1) (by omega) h β β₀ hbβ hbβ₀ heq.symm)
      have hstrict : ofDigitsFin (r + s + 1) β₀ < ofDigitsFin (r + s + 1) β :=
        lt_of_le_of_ne hmin1 hne
      have hγsum : ∑ i, (α i - β i) = s := by
        have h1 : ∑ i, ((α i - β i) + β i) = ∑ i, α i :=
          Finset.sum_congr rfl fun i _ => by
            have := hβle i
            omega
        rw [Finset.sum_add_distrib, hβsum, hαsum] at h1
        omega
      have hsplit : ofDigitsFin (r + s + 1) β + ofDigitsFin (r + s + 1) (fun i => α i - β i)
          = ofDigitsFin (r + s + 1) α := by
        rw [← ofDigits_add]
        exact congrArg (ofDigitsFin (r + s + 1)) (funext fun i => by
          show β i + (α i - β i) = α i
          have := hβle i
          omega)
      have hγlt : ofDigitsFin (r + s + 1) (fun i => α i - β i) < ofDigitsFin (r + s + 1) γ₀ := by
        omega
      have hgmem : multiIndexDeriv D (fun i => α i - β i) g ∈ IsLocalRing.maximalIdeal R := by
        by_contra hcon2
        exact absurd (hγ₀min _ hγsum hcon2) (by omega)
      exact Ideal.mul_mem_left _ _ hgmem

theorem idealOrder_mul {k R : Type*} [CommRing k] [CommRing R] [IsLocalRing R]
    [IsNoetherianRing R] [Algebra k R] {h : ℕ} (x : Fin h → R) (D : Fin h → Derivation k R R)
    (hx : Ideal.span (Set.range x) = IsLocalRing.maximalIdeal R)
    (hD : ∀ i j, D i (x j) = if i = j then 1 else 0)
    (hDD : ∀ i j : Fin h, ∀ a : R, D i (D j a) = D j (D i a))
    (hunit : ∀ n : ℕ, 1 ≤ n → IsUnit ((n : ℕ) : R)) (I J : Ideal R) :
    idealOrder (I * J) = idealOrder I + idealOrder J := by
  by_cases hI : I = ⊥
  · subst hI
    have hbm : (⊥ : Ideal R) * J = ⊥ := by
      refine le_antisymm (Ideal.mul_le.mpr ?_) bot_le
      intro a ha b _
      rw [Ideal.mem_bot] at ha ⊢
      rw [ha, zero_mul]
    rw [hbm, idealOrder_bot]
    exact le_antisymm le_self_add le_top
  · by_cases hJ : J = ⊥
    · subst hJ
      have hbm : I * (⊥ : Ideal R) = ⊥ := by
        refine le_antisymm (Ideal.mul_le.mpr ?_) bot_le
        intro a _ b hb
        rw [Ideal.mem_bot] at hb ⊢
        rw [hb, mul_zero]
      rw [hbm, idealOrder_bot]
      exact le_antisymm le_add_self le_top
    · obtain ⟨r, hr⟩ := exists_idealOrder_eq_coe hI
      obtain ⟨s, hs⟩ := exists_idealOrder_eq_coe hJ
      have hIr : I ≤ IsLocalRing.maximalIdeal R ^ r :=
        (le_idealOrder_iff I r).mp (le_of_eq hr.symm)
      have hJs : J ≤ IsLocalRing.maximalIdeal R ^ s :=
        (le_idealOrder_iff J s).mp (le_of_eq hs.symm)
      have hIn : ¬ I ≤ IsLocalRing.maximalIdeal R ^ (r + 1) := by
        intro hc
        have hle := (le_idealOrder_iff I (r + 1)).mpr hc
        rw [hr] at hle
        have hnat : r + 1 ≤ r := by exact_mod_cast hle
        omega
      have hJn : ¬ J ≤ IsLocalRing.maximalIdeal R ^ (s + 1) := by
        intro hc
        have hle := (le_idealOrder_iff J (s + 1)).mpr hc
        rw [hs] at hle
        have hnat : s + 1 ≤ s := by exact_mod_cast hle
        omega
      obtain ⟨a, haI, han⟩ : ∃ a ∈ I, a ∉ IsLocalRing.maximalIdeal R ^ (r + 1) := by
        by_contra hc
        push Not at hc
        exact hIn fun y hy => hc y hy
      obtain ⟨b, hbJ, hbn⟩ : ∃ b ∈ J, b ∉ IsLocalRing.maximalIdeal R ^ (s + 1) := by
        by_contra hc
        push Not at hc
        exact hJn fun y hy => hc y hy
      have hmul : a * b ∉ IsLocalRing.maximalIdeal R ^ (r + s + 1) :=
        mul_notMem_maximalIdeal_pow_add_succ x D hx hD hDD hunit (hIr haI) han (hJs hbJ) hbn
      have h1 : ¬ I * J ≤ IsLocalRing.maximalIdeal R ^ (r + s + 1) := fun hc =>
        hmul (hc (Ideal.mul_mem_mul haI hbJ))
      have h2 : I * J ≤ IsLocalRing.maximalIdeal R ^ (r + s) := by
        rw [pow_add]
        exact Ideal.mul_mono hIr hJs
      rw [idealOrder_eq_of_le_of_not_le h2 h1, hr, hs]
      exact Nat.cast_add r s

theorem idealOrder_pow {k R : Type*} [CommRing k] [CommRing R] [IsLocalRing R]
    [IsNoetherianRing R] [Algebra k R] {h : ℕ} (x : Fin h → R) (D : Fin h → Derivation k R R)
    (hx : Ideal.span (Set.range x) = IsLocalRing.maximalIdeal R)
    (hD : ∀ i j, D i (x j) = if i = j then 1 else 0)
    (hDD : ∀ i j : Fin h, ∀ a : R, D i (D j a) = D j (D i a))
    (hunit : ∀ n : ℕ, 1 ≤ n → IsUnit ((n : ℕ) : R)) (I : Ideal R) (c : ℕ) :
    idealOrder (I ^ c) = (c : ℕ∞) * idealOrder I := by
  induction c with
  | zero =>
    rw [pow_zero, Ideal.one_eq_top, idealOrder_top]
    simp
  | succ c ih =>
    rw [pow_succ, idealOrder_mul x D hx hD hDD hunit, ih, Nat.cast_add, Nat.cast_one, add_mul,
      one_mul]

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LeadingForm =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.AdaptedParameters =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.AdaptedParameters", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleCoordinates\npublic import Mathlib.LinearAlgebra.Determinant\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.SpanSingletonProduct\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.FormallyEtaleCoordinates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct

namespace FunctorialResolution.EmbeddedResolution
namespace EtaleCoordinates

section

private theorem exists_section_mod_maximalIdeal_sq (k : Type*) [CommRing k] (A : Type*)
    [CommRing A] [Algebra k A] [IsLocalRing A] [Algebra k (IsLocalRing.ResidueField A)]
    [IsScalarTower k A (IsLocalRing.ResidueField A)]
    [Algebra.FormallySmooth k (IsLocalRing.ResidueField A)] :
    ∃ w : A → A,
      (∀ a : A, a - w a ∈ IsLocalRing.maximalIdeal A) ∧
      (∀ a b : A, w a + w b - w (a + b) ∈ IsLocalRing.maximalIdeal A ^ 2) ∧
      (∀ (c : k) (a : A), c • w a - w (c • a) ∈ IsLocalRing.maximalIdeal A ^ 2) ∧
      (∀ a b : A, w a * w b - w (a * b) ∈ IsLocalRing.maximalIdeal A ^ 2) ∧
      (∀ a : A, a ∈ IsLocalRing.maximalIdeal A → w a ∈ IsLocalRing.maximalIdeal A ^ 2) := by
  classical
  have hsq : ∀ a ∈ IsLocalRing.maximalIdeal A ^ 2,
      (IsScalarTower.toAlgHom k A (IsLocalRing.ResidueField A)) a = 0 := by
    intro a ha
    show algebraMap A (IsLocalRing.ResidueField A) a = 0
    rw [IsLocalRing.ResidueField.algebraMap_eq, IsLocalRing.residue_eq_zero_iff]
    exact Ideal.pow_le_self (by norm_num) ha
  obtain ⟨ρ, hρmk⟩ : ∃ ρ : (A ⧸ IsLocalRing.maximalIdeal A ^ 2) →ₐ[k]
      IsLocalRing.ResidueField A,
      ∀ a : A, ρ (Ideal.Quotient.mk (IsLocalRing.maximalIdeal A ^ 2) a)
        = IsLocalRing.residue A a := by
    refine ⟨Ideal.Quotient.liftₐ (IsLocalRing.maximalIdeal A ^ 2)
      (IsScalarTower.toAlgHom k A (IsLocalRing.ResidueField A)) hsq, fun a => ?_⟩
    show algebraMap A (IsLocalRing.ResidueField A) a = IsLocalRing.residue A a
    rw [IsLocalRing.ResidueField.algebraMap_eq]
  have hρsurj : Function.Surjective ρ := by
    intro c
    obtain ⟨a, ha⟩ := IsLocalRing.residue_surjective (R := A) c
    exact ⟨Ideal.Quotient.mk _ a, by rw [hρmk a]; exact ha⟩
  have hker2 : RingHom.ker (ρ : (A ⧸ IsLocalRing.maximalIdeal A ^ 2) →+*
      IsLocalRing.ResidueField A) ^ 2 = ⊥ := by
    have hexp : RingHom.ker (ρ : (A ⧸ IsLocalRing.maximalIdeal A ^ 2) →+*
        IsLocalRing.ResidueField A) ^ 2
        = RingHom.ker (ρ : (A ⧸ IsLocalRing.maximalIdeal A ^ 2) →+*
            IsLocalRing.ResidueField A)
          * RingHom.ker (ρ : (A ⧸ IsLocalRing.maximalIdeal A ^ 2) →+*
            IsLocalRing.ResidueField A) := pow_two _
    rw [hexp]
    refine le_antisymm ?_ bot_le
    rw [Ideal.mul_le]
    intro u hu v hv
    have hu' : ρ u = 0 := RingHom.mem_ker.mp hu
    have hv' : ρ v = 0 := RingHom.mem_ker.mp hv
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective u
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective v
    have ha : a ∈ IsLocalRing.maximalIdeal A := by
      rw [← IsLocalRing.residue_eq_zero_iff, ← hρmk a]
      exact hu'
    have hb : b ∈ IsLocalRing.maximalIdeal A := by
      rw [← IsLocalRing.residue_eq_zero_iff, ← hρmk b]
      exact hv'
    refine (Submodule.mem_bot _).mpr ?_
    rw [← map_mul, Ideal.Quotient.eq_zero_iff_mem, pow_two]
    exact Ideal.mul_mem_mul ha hb
  obtain ⟨σ, hσ⟩ : ∃ σ : IsLocalRing.ResidueField A →ₐ[k]
      (A ⧸ IsLocalRing.maximalIdeal A ^ 2), ∀ c, ρ (σ c) = c := by
    refine ⟨Algebra.FormallySmooth.liftOfSurjective
      (AlgHom.id k (IsLocalRing.ResidueField A)) ρ hρsurj ⟨2, hker2⟩, fun c => ?_⟩
    have h := Algebra.FormallySmooth.comp_liftOfSurjective
      (AlgHom.id k (IsLocalRing.ResidueField A)) ρ hρsurj ⟨2, hker2⟩
    have h2 := DFunLike.congr_fun h c
    simpa using h2
  obtain ⟨w, hw⟩ : ∃ w : A → A, ∀ a : A,
      Ideal.Quotient.mk (IsLocalRing.maximalIdeal A ^ 2) (w a)
        = σ (IsLocalRing.residue A a) := by
    refine ⟨fun a => Function.surjInv Ideal.Quotient.mk_surjective
      (σ (IsLocalRing.residue A a)), fun a => ?_⟩
    exact Function.surjInv_eq Ideal.Quotient.mk_surjective _
  refine ⟨w, ?_, ?_, ?_, ?_, ?_⟩
  · intro a
    rw [← IsLocalRing.residue_eq_zero_iff, map_sub, sub_eq_zero, ← hρmk (w a), hw a,
      hσ (IsLocalRing.residue A a)]
  · intro a b
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_add (f := _), hw a, hw b, hw (a + b), map_add (f := _),
      map_add, sub_self]
  · intro c a
    have hres : IsLocalRing.residue A (c • a) = c • IsLocalRing.residue A a := by
      rw [Algebra.smul_def, map_mul, Algebra.smul_def,
        ← IsLocalRing.ResidueField.algebraMap_eq,
        ← IsScalarTower.algebraMap_apply k A (IsLocalRing.ResidueField A)]
    have hmk : Ideal.Quotient.mk (IsLocalRing.maximalIdeal A ^ 2) (c • w a)
        = c • Ideal.Quotient.mk (IsLocalRing.maximalIdeal A ^ 2) (w a) := by
      rw [Algebra.smul_def, map_mul, Algebra.smul_def, ← Ideal.Quotient.algebraMap_eq,
        ← IsScalarTower.algebraMap_apply k A (A ⧸ IsLocalRing.maximalIdeal A ^ 2)]
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, hw (c • a), hmk, hres, map_smul, hw a,
      sub_self]
  · intro a b
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_mul, hw a, hw b, hw (a * b), map_mul,
      map_mul, sub_self]
  · intro a ha
    have hres : IsLocalRing.residue A a = 0 := by
      rw [IsLocalRing.residue_eq_zero_iff]
      exact ha
    rw [← Ideal.Quotient.eq_zero_iff_mem, hw a, hres, map_zero]

private theorem mem_maximalIdeal_sq_of_tmul_D_eq_zero (k : Type*) [CommRing k] (A : Type*)
    [CommRing A] [Algebra k A] [IsLocalRing A] [Algebra k (IsLocalRing.ResidueField A)]
    [IsScalarTower k A (IsLocalRing.ResidueField A)]
    [Algebra.FormallySmooth k (IsLocalRing.ResidueField A)]
    (x : A) (hx : x ∈ IsLocalRing.maximalIdeal A)
    (h0 : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] KaehlerDifferential.D k A x = 0) :
    x ∈ IsLocalRing.maximalIdeal A ^ 2 := by
  classical
  obtain ⟨w, h1, h2, h3, h4, h5⟩ := exists_section_mod_maximalIdeal_sq k A
  have hco : ∀ (a b : A) (ha : a ∈ IsLocalRing.maximalIdeal A)
      (hb : b ∈ IsLocalRing.maximalIdeal A),
      a - b ∈ IsLocalRing.maximalIdeal A ^ 2 →
      Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨a, ha⟩
        = Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨b, hb⟩ := by
    intro a b ha hb hab
    exact (Ideal.toCotangent_eq _).mpr hab
  have hadd : ∀ a b : A,
      Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨a + b - w (a + b), h1 (a + b)⟩
        = Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨a - w a, h1 a⟩
          + Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨b - w b, h1 b⟩ := by
    intro a b
    rw [← map_add (f := _)]
    refine hco _ _ _ _ ?_
    show a + b - w (a + b) - ((a - w a) + (b - w b)) ∈ IsLocalRing.maximalIdeal A ^ 2
    have heq : a + b - w (a + b) - ((a - w a) + (b - w b)) = w a + w b - w (a + b) := by ring
    rw [heq]
    exact h2 a b
  have hsmul : ∀ (c : k) (a : A),
      Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨c • a - w (c • a), h1 (c • a)⟩
        = (RingHom.id k) c •
          Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨a - w a, h1 a⟩ := by
    intro c a
    show Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨c • a - w (c • a), h1 (c • a)⟩
      = c • Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨a - w a, h1 a⟩
    rw [← algebraMap_smul A c
      (Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨a - w a, h1 a⟩), ← map_smul]
    refine hco _ _ _ _ ?_
    show c • a - w (c • a) - (algebraMap k A c) • (a - w a)
      ∈ IsLocalRing.maximalIdeal A ^ 2
    have heq : c • a - w (c • a) - (algebraMap k A c) • (a - w a)
        = c • w a - w (c • a) := by
      rw [Algebra.smul_def c a, Algebra.smul_def c (w a), smul_eq_mul]
      ring
    rw [heq]
    exact h3 c a
  have hleib : ∀ a b : A,
      Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨a * b - w (a * b), h1 (a * b)⟩
        = a • Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨b - w b, h1 b⟩
          + b • Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨a - w a, h1 a⟩ := by
    intro a b
    rw [← map_smul, ← map_smul, ← map_add (f := _)]
    refine hco _ _ _ _ ?_
    show a * b - w (a * b) - (a • (b - w b) + b • (a - w a))
      ∈ IsLocalRing.maximalIdeal A ^ 2
    have heq : a * b - w (a * b) - (a • (b - w b) + b • (a - w a))
        = -((a - w a) * (b - w b)) + (w a * w b - w (a * b)) := by
      simp only [smul_eq_mul]
      ring
    rw [heq]
    refine Submodule.add_mem _ (neg_mem ?_) (h4 a b)
    rw [pow_two]
    exact Ideal.mul_mem_mul (h1 a) (h1 b)
  obtain ⟨Dder, hDderapp⟩ : ∃ D : Derivation k A (IsLocalRing.maximalIdeal A).Cotangent,
      ∀ a : A, D a = Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨a - w a, h1 a⟩ :=
    ⟨Derivation.mk'
      { toFun := fun a => Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨a - w a, h1 a⟩
        map_add' := hadd
        map_smul' := hsmul } hleib, fun a => rfl⟩
  have hDx : Dder x = Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨x, hx⟩ := by
    rw [hDderapp x]
    refine hco _ _ _ _ ?_
    show x - w x - x ∈ IsLocalRing.maximalIdeal A ^ 2
    have heq : x - w x - x = -(w x) := by ring
    rw [heq]
    exact neg_mem (h5 x hx)
  let instModKappa : Module (IsLocalRing.ResidueField A)
      (IsLocalRing.maximalIdeal A).Cotangent :=
    inferInstanceAs (Module (A ⧸ IsLocalRing.maximalIdeal A) _)
  let instTowerKappa : IsScalarTower A (IsLocalRing.ResidueField A)
      (IsLocalRing.maximalIdeal A).Cotangent :=
    inferInstanceAs (IsScalarTower A (A ⧸ IsLocalRing.maximalIdeal A) _)
  have hlin := congrArg (fun z => (Dder.liftKaehlerDifferential.liftBaseChange
    (IsLocalRing.ResidueField A)) z) h0
  have hDx0 : Dder x = 0 := by
    simpa [LinearMap.liftBaseChange_tmul, Derivation.liftKaehlerDifferential_comp_D] using hlin
  have hz : Ideal.toCotangent (IsLocalRing.maximalIdeal A) ⟨x, hx⟩ = 0 := by
    rw [← hDx]
    exact hDx0
  exact (Ideal.toCotangent_eq_zero _ ⟨x, hx⟩).mp hz

private theorem exists_fun_sum_smul_eq_of_mem_span {K M : Type*} [CommRing K] [AddCommGroup M]
    [Module K M] {n : ℕ} (v : Fin n → M) {x : M}
    (hx : x ∈ Submodule.span K (Set.range v)) :
    ∃ c : Fin n → K, ∑ i, c i • v i = x := by
  classical
  let P : Submodule K M :=
    { carrier := {y : M | ∃ c : Fin n → K, ∑ i, c i • v i = y}
      zero_mem' := ⟨0, by simp⟩
      add_mem' := by
        intro a b ha hb
        obtain ⟨ca, hca⟩ := ha
        obtain ⟨cb, hcb⟩ := hb
        refine ⟨ca + cb, ?_⟩
        rw [← hca, ← hcb, ← Finset.sum_add_distrib]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [Pi.add_apply, add_smul]
      smul_mem' := by
        intro r a ha
        obtain ⟨ca, hca⟩ := ha
        refine ⟨r • ca, ?_⟩
        rw [← hca, Finset.smul_sum]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [Pi.smul_apply, smul_assoc] }
  have hsub : Set.range v ⊆ (P : Set M) := by
    rintro _ ⟨i, rfl⟩
    show ∃ c : Fin n → K, ∑ j, c j • v j = v i
    refine ⟨Pi.single i 1, ?_⟩
    rw [Finset.sum_eq_single_of_mem i (Finset.mem_univ i)]
    · simp
    · intro j _ hj
      simp [hj]
  exact (Submodule.span_le.mpr hsub) hx

private theorem exists_local_parameters (k : Type*) [CommRing k] (A : Type*) [CommRing A]
    [Algebra k A] [IsLocalRing A] [IsNoetherianRing A]
    [Algebra k (IsLocalRing.ResidueField A)]
    [IsScalarTower k A (IsLocalRing.ResidueField A)]
    [Algebra.FormallySmooth k (IsLocalRing.ResidueField A)] :
    ∃ (h : ℕ) (y : Fin h → A),
      Ideal.span (Set.range y) = IsLocalRing.maximalIdeal A ∧
      LinearIndependent (IsLocalRing.ResidueField A)
        (fun i : Fin h => (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
          KaehlerDifferential.D k A (y i)) := by
  classical
  obtain ⟨sF, hsF0⟩ : (IsLocalRing.maximalIdeal A).FG := IsNoetherian.noetherian _
  have hsF : Ideal.span (↑sF : Set A) = IsLocalRing.maximalIdeal A := hsF0
  obtain ⟨b, hbsub, hbspan, hbind⟩ :=
    exists_linearIndependent (K := IsLocalRing.ResidueField A)
      (t := ((fun a : A => (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
        KaehlerDifferential.D k A a) '' (↑sF : Set A)))
  have hbfin : b.Finite := Set.Finite.subset (Set.Finite.image _ sF.finite_toSet) hbsub
  let instFintypeB : Fintype b := hbfin.fintype
  choose pre hpre1 hpre2 using fun x : b => hbsub x.2
  obtain ⟨y, hy⟩ : ∃ y : Fin (Fintype.card b) → A,
      ∀ i, y i = pre ((Fintype.equivFin b).symm i) := ⟨_, fun _ => rfl⟩
  have hfun : (fun i : Fin (Fintype.card b) => (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
      KaehlerDifferential.D k A (y i))
      = fun i : Fin (Fintype.card b) =>
        ((((Fintype.equivFin b).symm i : b) : IsLocalRing.ResidueField A ⊗[A]
          KaehlerDifferential k A)) := by
    funext i
    rw [hy i]
    exact hpre2 _
  have hind : LinearIndependent (IsLocalRing.ResidueField A)
      (fun i : Fin (Fintype.card b) => (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
        KaehlerDifferential.D k A (y i)) := by
    rw [hfun]
    exact hbind.comp _ (Fintype.equivFin b).symm.injective
  have hrange : Set.range (fun i : Fin (Fintype.card b) =>
      (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] KaehlerDifferential.D k A (y i)) = b := by
    rw [hfun]
    ext v
    constructor
    · rintro ⟨i, rfl⟩
      exact ((Fintype.equivFin b).symm i).2
    · intro hv
      exact ⟨(Fintype.equivFin b) ⟨v, hv⟩, by simp⟩
  have hymem : ∀ i, y i ∈ IsLocalRing.maximalIdeal A := by
    intro i
    rw [← hsF, hy i]
    exact Submodule.subset_span (hpre1 _)
  refine ⟨Fintype.card b, y, ?_, hind⟩
  refine le_antisymm ?_ ?_
  · rw [Ideal.span_le]
    rintro _ ⟨i, rfl⟩
    exact hymem i
  · have hkey : ∀ a ∈ (↑sF : Set A),
        a ∈ Ideal.span (Set.range y) ⊔ IsLocalRing.maximalIdeal A ^ 2 := by
      intro a ha
      have hav : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] KaehlerDifferential.D k A a
          ∈ Submodule.span (IsLocalRing.ResidueField A)
            (Set.range (fun i : Fin (Fintype.card b) =>
              (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
                KaehlerDifferential.D k A (y i))) := by
        rw [hrange, hbspan]
        exact Submodule.subset_span ⟨a, ha, rfl⟩
      obtain ⟨c, hc0⟩ := exists_fun_sum_smul_eq_of_mem_span
        (fun i : Fin (Fintype.card b) => (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
          KaehlerDifferential.D k A (y i)) hav
      have hc : (∑ i, c i • ((1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
          KaehlerDifferential.D k A (y i)))
          = (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] KaehlerDifferential.D k A a := hc0
      obtain ⟨c', hc'⟩ : ∃ c' : Fin (Fintype.card b) → A,
          ∀ i, IsLocalRing.residue A (c' i) = c i := by
        have hsurj : Function.Surjective (IsLocalRing.residue A) :=
          Ideal.Quotient.mk_surjective
        choose c' hc' using fun i => hsurj (c i)
        exact ⟨c', hc'⟩
      have hsum : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
          KaehlerDifferential.D k A (∑ i, c' i * y i)
          = ∑ i, c i • ((1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
            KaehlerDifferential.D k A (y i)) := by

        rw [map_sum, TensorProduct.tmul_sum]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [mul_comm (c' i) (y i),
          KaehlerDifferential.residue_tmul_D_mul_of_mem_maximalIdeal k A (y i) (c' i) (hymem i),
          hc' i]
      have hx0 : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
          KaehlerDifferential.D k A (a - ∑ i, c' i * y i) = 0 := by
        rw [map_sub, TensorProduct.tmul_sub, hsum, hc, sub_self]
      have hxm : a - ∑ i, c' i * y i ∈ IsLocalRing.maximalIdeal A := by
        refine Submodule.sub_mem _ ?_
          (Submodule.sum_mem _ fun i _ => Ideal.mul_mem_left _ _ (hymem i))
        rw [← hsF]
        exact Submodule.subset_span ha
      have hxsq := mem_maximalIdeal_sq_of_tmul_D_eq_zero k A _ hxm hx0
      have hrewrite : a = (a - ∑ i, c' i * y i) + ∑ i, c' i * y i := by ring
      rw [hrewrite]
      refine Submodule.add_mem _ (Submodule.mem_sup_right hxsq) (Submodule.mem_sup_left ?_)
      exact Ideal.sum_mem _ fun i _ => Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨i, rfl⟩)
    have hsmul : (IsLocalRing.maximalIdeal A • IsLocalRing.maximalIdeal A : Ideal A)
        = IsLocalRing.maximalIdeal A ^ 2 := by
      rw [Ideal.smul_eq_mul, pow_two]
    have hstep : Ideal.span (↑sF : Set A) ≤ Ideal.span (Set.range y)
        ⊔ IsLocalRing.maximalIdeal A • IsLocalRing.maximalIdeal A := by
      rw [Ideal.span_le]
      intro a ha
      rw [SetLike.mem_coe, hsmul]
      exact hkey a ha
    rw [hsF] at hstep
    have hbotne : (⊥ : Ideal A) ≠ ⊤ := by
      intro hcon
      have hmem1 : (1 : A) ∈ (⊥ : Ideal A) := by
        rw [hcon]; exact Submodule.mem_top
      simp at hmem1
    exact Submodule.le_of_le_smul_of_le_jacobson_bot (IsNoetherian.noetherian _)
      (IsLocalRing.jacobson_eq_maximalIdeal (⊥ : Ideal A) hbotne).ge hstep

private theorem residue_det_ne_zero_of_basis_tmul {A : Type*} [CommRing A] [IsLocalRing A]
    {M : Type*} [AddCommGroup M] [Module A M] {ι : Type*} [Fintype ι] [DecidableEq ι]
    (bA : Module.Basis ι A M) (G : ι → M)
    (B' : Module.Basis ι (IsLocalRing.ResidueField A) (IsLocalRing.ResidueField A ⊗[A] M))
    (hB' : ∀ i, B' i = (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] G i) :
    IsLocalRing.residue A (bA.det G) ≠ 0 := by
  classical
  obtain ⟨bk, hbk⟩ : ∃ bk : Module.Basis ι (IsLocalRing.ResidueField A)
      (IsLocalRing.ResidueField A ⊗[A] M),
      ∀ i, bk i = (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] bA i :=
    ⟨Algebra.TensorProduct.basis (IsLocalRing.ResidueField A) bA, fun i => by simp⟩
  have hkey : ∀ (c : A) (m : M), (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] (c • m)
      = IsLocalRing.residue A c • ((1 : IsLocalRing.ResidueField A) ⊗ₜ[A] m) := by
    intro c m
    have hA1 : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] (c • m)
        = (c • (1 : IsLocalRing.ResidueField A)) ⊗ₜ[A] m := (TensorProduct.smul_tmul c 1 m).symm
    have hA2 : c • (1 : IsLocalRing.ResidueField A) = IsLocalRing.residue A c := by
      rw [Algebra.smul_def, mul_one, IsLocalRing.ResidueField.algebraMap_eq]
    have hA3 : IsLocalRing.residue A c • ((1 : IsLocalRing.ResidueField A) ⊗ₜ[A] m)
        = (IsLocalRing.residue A c * 1) ⊗ₜ[A] m := rfl
    rw [hA1, hA2, hA3, mul_one]
  have hmat : ∀ i j : ι, bk.repr (B' j) i = IsLocalRing.residue A (bA.toMatrix G i j) := by
    intro i j
    have hGj : B' j = ∑ l : ι, IsLocalRing.residue A (bA.repr (G j) l) • bk l := by
      rw [hB' j]
      conv_lhs => rw [← bA.sum_repr (G j)]
      rw [TensorProduct.tmul_sum]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [hkey, hbk l]
    rw [hGj, Module.Basis.toMatrix_apply]
    simp only [Module.Basis.repr_sum_self]
  have hdet : bk.det (⇑B') = IsLocalRing.residue A (bA.det G) := by
    rw [Module.Basis.det_apply, Module.Basis.det_apply, RingHom.map_det]
    congr 1
    ext i j
    simp only [Module.Basis.toMatrix_apply]
    exact hmat i j
  rw [← hdet]
  exact (bk.isUnit_det B').ne_zero

theorem exists_adapted_parameters (k : Type*) [CommRing k] (ι : Type*) [Fintype ι] [DecidableEq ι]
    (S : Type*) [CommRing S] [Algebra k S] [Algebra (MvPolynomial ι k) S]
    [IsScalarTower k (MvPolynomial ι k) S] [Algebra.FormallyEtale (MvPolynomial ι k) S]
    (q : Ideal S) [q.IsPrime] (A : Type*) [CommRing A] [Algebra S A] [Algebra k A]
    [IsScalarTower k S A] [IsLocalization q.primeCompl A] [IsLocalRing A] [IsNoetherianRing A]
    [Algebra k (IsLocalRing.ResidueField A)] [IsScalarTower k A (IsLocalRing.ResidueField A)]
    [Algebra.FormallySmooth k (IsLocalRing.ResidueField A)] :
    ∃ (g : S) (w : ι → S) (J : Finset ι),
      g ∉ q ∧
      (∀ j ∈ J, w j ∈ q) ∧
      Ideal.map (algebraMap S A) (Ideal.span (w '' (↑J : Set ι))) =
        IsLocalRing.maximalIdeal A ∧
      (∀ j ∉ J, ∃ i : ι, w j = coord k ι S i) ∧
      g = (basisKaehler k ι S).det (fun i : ι => KaehlerDifferential.D k S (w i)) ∧
      IsUnit (algebraMap S (Localization.Away g)
        ((basisKaehler k ι S).det fun i : ι => KaehlerDifferential.D k S (w i))) := by
  classical
  have instFEloc : Algebra.FormallyEtale S A :=
    Algebra.FormallyEtale.of_isLocalization (M := q.primeCompl)
  let instPA : Algebra (MvPolynomial ι k) A :=
    ((algebraMap S A).comp (algebraMap (MvPolynomial ι k) S)).toAlgebra
  have instT1 : IsScalarTower (MvPolynomial ι k) S A :=
    IsScalarTower.of_algebraMap_eq fun _ => rfl
  have t2Space_cuspAdeles : IsScalarTower k (MvPolynomial ι k) A :=
    IsScalarTower.of_algebraMap_eq fun x => by
      rw [IsScalarTower.algebraMap_apply k S A x,
        IsScalarTower.algebraMap_apply k (MvPolynomial ι k) S x]
      rfl
  have instFEPA : Algebra.FormallyEtale (MvPolynomial ι k) A :=
    Algebra.FormallyEtale.comp (MvPolynomial ι k) S A
  obtain ⟨h, y, hyspan, hyind⟩ := exists_local_parameters k A
  obtain ⟨s, hsq, hsspan, hsind⟩ := exists_generators_maximalIdeal_of_linearIndependent_D k S q A h y hyspan hyind
  obtain ⟨bk, hbk⟩ : ∃ bk : Module.Basis ι (IsLocalRing.ResidueField A)
      (IsLocalRing.ResidueField A ⊗[A] KaehlerDifferential k A),
      ∀ i, bk i = (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] (basisKaehler k ι A i) :=
    ⟨Algebra.TensorProduct.basis (IsLocalRing.ResidueField A) (basisKaehler k ι A),
      fun i => by simp⟩
  obtain ⟨Jst, B, hbasisInl, hbasisInr⟩ := exists_basis_sum_of_linearIndependent bk h
    (fun i : Fin h => (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
      KaehlerDifferential.D k A (algebraMap S A (s i))) hsind
  have hcard1 : Module.finrank (IsLocalRing.ResidueField A)
      (IsLocalRing.ResidueField A ⊗[A] KaehlerDifferential k A)
      = Fintype.card (Fin h ⊕ {j : ι // j ∈ Jst}) := Module.finrank_eq_card_basis B
  have hcard2 : Module.finrank (IsLocalRing.ResidueField A)
      (IsLocalRing.ResidueField A ⊗[A] KaehlerDifferential k A) = Fintype.card ι :=
    Module.finrank_eq_card_basis bk
  have hcard3 : Fintype.card {j : ι // j ∈ Jst} + Fintype.card {j : ι // ¬ (j ∈ Jst)}
      = Fintype.card ι := by
    rw [← Fintype.card_sum]
    exact Fintype.card_congr (Equiv.sumCompl (fun j : ι => j ∈ Jst))
  rw [Fintype.card_sum, Fintype.card_fin] at hcard1
  have hcard4 : Fintype.card {j : ι // ¬ (j ∈ Jst)} = h := by omega
  have e : {j : ι // ¬ (j ∈ Jst)} ≃ Fin h := Fintype.equivFinOfCardEq hcard4
  obtain ⟨τ, hτl, hτr⟩ : ∃ τ : Fin h ⊕ {j : ι // j ∈ Jst} ≃ ι,
      (∀ l : Fin h, τ (Sum.inl l) = ((e.symm l : ι))) ∧
      (∀ j : {j : ι // j ∈ Jst}, τ (Sum.inr j) = (j : ι)) :=
    ⟨(Equiv.sumCongr e.symm (Equiv.refl {j : ι // j ∈ Jst})).trans
      ((Equiv.sumComm _ _).trans (Equiv.sumCompl (fun j : ι => j ∈ Jst))),
      fun l => rfl, fun j => rfl⟩
  obtain ⟨w, hwJ, hwn⟩ : ∃ w : ι → S, (∀ j, j ∈ Jst → w j = coord k ι S j) ∧
      (∀ x : {j : ι // ¬ (j ∈ Jst)}, w (x : ι) = s (e x)) := by
    refine ⟨fun j => if hj : j ∈ Jst then coord k ι S j else s (e ⟨j, hj⟩),
      fun j hj => ?_, fun x => ?_⟩
    · exact dif_pos hj
    · exact dif_neg x.2
  have hbasisApply : ∀ x : Fin h ⊕ {j : ι // j ∈ Jst},
      B x = (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
        KaehlerDifferential.D k A (algebraMap S A (w (τ x))) := by
    rintro (l | j)
    · rw [hbasisInl l, hτl l, hwn (e.symm l), Equiv.apply_symm_apply]
    · rw [hbasisInr j, hτr j, hwJ (j : ι) j.2, hbk (j : ι), basisKaehler_apply,
        algebraMap_coord]
  have hB'G : ∀ i : ι, (B.reindex τ) i = (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
      KaehlerDifferential.D k A (algebraMap S A (w i)) := by
    intro i
    rw [Module.Basis.reindex_apply, hbasisApply (τ.symm i), Equiv.apply_symm_apply]
  have hdetne := residue_det_ne_zero_of_basis_tmul (basisKaehler k ι A)
    (fun i : ι => KaehlerDifferential.D k A (algebraMap S A (w i))) (B.reindex τ) hB'G
  have hdetA : algebraMap S A ((basisKaehler k ι S).det
      (fun i : ι => KaehlerDifferential.D k S (w i)))
      = (basisKaehler k ι A).det
        (fun i : ι => KaehlerDifferential.D k A (algebraMap S A (w i))) :=
    algebraMap_det_basisKaehler k ι S A w
  have hmapq : Ideal.map (algebraMap S A) q = IsLocalRing.maximalIdeal A :=
    IsLocalization.AtPrime.map_eq_maximalIdeal q A
  refine ⟨(basisKaehler k ι S).det (fun i : ι => KaehlerDifferential.D k S (w i)), w, Jstᶜ,
    ?_, ?_, ?_, ?_, rfl, ?_⟩
  · intro hgq
    apply hdetne
    rw [← hdetA, IsLocalRing.residue_eq_zero_iff, ← hmapq]
    exact Ideal.mem_map_of_mem _ hgq
  · intro j hj
    have hj' : ¬ (j ∈ Jst) := Finset.mem_compl.mp hj
    have hwj : w j = s (e ⟨j, hj'⟩) := hwn ⟨j, hj'⟩
    rw [hwj]
    exact hsq _
  · rw [Ideal.map_span, ← hsspan]
    congr 1
    ext x
    constructor
    · rintro ⟨u, ⟨j, hj, rfl⟩, rfl⟩
      have hj' : ¬ (j ∈ Jst) := Finset.mem_compl.mp (Finset.mem_coe.mp hj)
      have hwj : w j = s (e ⟨j, hj'⟩) := hwn ⟨j, hj'⟩
      exact ⟨e ⟨j, hj'⟩, by rw [hwj]⟩
    · rintro ⟨i, rfl⟩
      refine ⟨w ((e.symm i : ι)), ⟨(e.symm i : ι), ?_, rfl⟩, ?_⟩
      · exact Finset.mem_coe.mpr (Finset.mem_compl.mpr (e.symm i).2)
      · have hwj : w ((e.symm i : ι)) = s (e (e.symm i)) := hwn (e.symm i)
        rw [hwj, Equiv.apply_symm_apply]
  · intro j hj
    have hj' : j ∈ Jst := by
      by_contra hc
      exact hj (Finset.mem_compl.mpr hc)
    exact ⟨j, hwJ j hj'⟩
  · exact IsLocalization.map_units
      (Localization.Away ((basisKaehler k ι S).det fun i : ι => KaehlerDifferential.D k S (w i)))
      ⟨_, Submonoid.mem_powers _⟩

end

end EtaleCoordinates
end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.AdaptedParameters =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleCoordinates\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafOrderDecrease\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealEtaleBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LeadingForm\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.AdaptedParameters\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.ChartRing\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleChartExistence\nimport Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.FormallyEtaleCoordinates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Derivation.Lie\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

universe u

open AlgebraicGeometry CategoryTheory TopologicalSpace

namespace FunctorialResolution.EmbeddedResolution

namespace EtaleCoordinates

theorem partialDeriv_comm (k : Type*) [CommRing k] (ι : Type*) [Fintype ι] [DecidableEq ι]
    (T : Type*) [CommRing T] [Algebra k T] [Algebra (MvPolynomial ι k) T]
    [IsScalarTower k (MvPolynomial ι k) T] [Algebra.FormallyEtale (MvPolynomial ι k) T]
    (i j : ι) (a : T) :
    partialDeriv k ι T i (partialDeriv k ι T j a)
      = partialDeriv k ι T j (partialDeriv k ι T i a) := by
  have hzero : ⁅partialDeriv k ι T i, partialDeriv k ι T j⁆ = (0 : Derivation k T T) := by
    refine derivation_ext_of_coord k ι T T _ _ ?_
    intro l
    rw [Derivation.commutator_apply]
    simp only [partialDeriv_coord]
    split_ifs <;> simp
  have h2 : ⁅partialDeriv k ι T i, partialDeriv k ι T j⁆ a = 0 := by
    rw [hzero]; simp
  rw [Derivation.commutator_apply] at h2
  linear_combination h2

end EtaleCoordinates

private theorem exists_commuting_dual_derivations (k : Type*) [CommRing k] (ι : Type*) [Fintype ι]
    [DecidableEq ι] (A : Type*) [CommRing A] [Algebra k A] [Algebra.FormallySmooth k A]
    (e : Module.Basis ι A (KaehlerDifferential k A)) (w : ι → A)
    (hdet : IsUnit (e.det fun i : ι => KaehlerDifferential.D k A (w i))) :
    ∃ D : ι → Derivation k A A,
      (∀ i j : ι, D i (w j) = if i = j then 1 else 0) ∧
      (∀ i j : ι, ∀ a : A, D i (D j a) = D j (D i a)) := by
  let _ : Algebra (MvPolynomial ι k) A :=
    (MvPolynomial.aeval w : MvPolynomial ι k →ₐ[k] A).toRingHom.toAlgebra
  have : IsScalarTower k (MvPolynomial ι k) A :=
    IsScalarTower.of_algebraMap_eq fun a => by
      rw [RingHom.algebraMap_toAlgebra]
      simp [MvPolynomial.algebraMap_eq]
  have : Algebra.FormallyEtale (MvPolynomial ι k) A :=
    EtaleCoordinates.formallyEtale_aeval_of_isUnit_det e w hdet
  have hcoord : ∀ i : ι, EtaleCoordinates.coord k ι A i = w i := by
    intro i
    rw [EtaleCoordinates.coord_def, RingHom.algebraMap_toAlgebra]
    simp
  refine ⟨fun i => EtaleCoordinates.partialDeriv k ι A i, ?_, ?_⟩
  · intro i j
    rw [← hcoord j]
    exact EtaleCoordinates.partialDeriv_coord k ι A i j
  · intro i j a
    exact EtaleCoordinates.partialDeriv_comm k ι A i j a

theorem exists_regularParameters_of_formallyEtale (k : Type*) [CommRing k] (ι : Type*) [Fintype ι]
    [DecidableEq ι] (S : Type*) [CommRing S] [Algebra k S] [Algebra (MvPolynomial ι k) S]
    [IsScalarTower k (MvPolynomial ι k) S] [Algebra.FormallyEtale (MvPolynomial ι k) S]
    (q : Ideal S) [q.IsPrime] (A : Type*) [CommRing A] [Algebra S A] [Algebra k A]
    [IsScalarTower k S A] [IsLocalization q.primeCompl A] [IsLocalRing A] [IsNoetherianRing A]
    [Algebra k (IsLocalRing.ResidueField A)] [IsScalarTower k A (IsLocalRing.ResidueField A)]
    [Algebra.FormallySmooth k (IsLocalRing.ResidueField A)] :
    ∃ (h : ℕ) (x : Fin h → A) (D : Fin h → Derivation k A A),
      Ideal.span (Set.range x) = IsLocalRing.maximalIdeal A ∧
      (∀ i j : Fin h, D i (x j) = if i = j then 1 else 0) ∧
      (∀ i j : Fin h, ∀ a : A, D i (D j a) = D j (D i a)) := by
  obtain ⟨g, w, J, hgq, -, hspan, -, hgdet, -⟩ :=
    EtaleCoordinates.exists_adapted_parameters k ι S q A
  let _ : Algebra (MvPolynomial ι k) A :=
    ((algebraMap S A).comp (algebraMap (MvPolynomial ι k) S)).toAlgebra
  have halg : (algebraMap (MvPolynomial ι k) A)
      = (algebraMap S A).comp (algebraMap (MvPolynomial ι k) S) := rfl
  have : IsScalarTower (MvPolynomial ι k) S A :=
    IsScalarTower.of_algebraMap_eq fun z => by rw [halg]; rfl
  have : IsScalarTower k (MvPolynomial ι k) A :=
    IsScalarTower.of_algebraMap_eq fun a => by
      rw [halg, RingHom.comp_apply, ← IsScalarTower.algebraMap_apply k (MvPolynomial ι k) S,
        ← IsScalarTower.algebraMap_apply k S A]
  have : Algebra.FormallyEtale S A := Algebra.FormallyEtale.of_isLocalization q.primeCompl
  have : Algebra.FormallyEtale (MvPolynomial ι k) A :=
    Algebra.FormallyEtale.comp (MvPolynomial ι k) S A
  have : Algebra.FormallySmooth k A := Algebra.FormallySmooth.comp k (MvPolynomial ι k) A
  obtain ⟨e, he⟩ : ∃ e : Module.Basis ι A (KaehlerDifferential k A),
      IsUnit (e.det fun i : ι => KaehlerDifferential.D k A (algebraMap S A (w i))) := by
    refine ⟨EtaleCoordinates.basisKaehler k ι A, ?_⟩
    rw [← EtaleCoordinates.algebraMap_det_basisKaehler k ι S A w, ← hgdet]
    exact IsLocalization.map_units (M := q.primeCompl) A ⟨g, hgq⟩
  obtain ⟨D, hD, hDD⟩ :=
    exists_commuting_dual_derivations k ι A e (fun i => algebraMap S A (w i)) he
  obtain ⟨h, ix, hix, hrange⟩ :
      ∃ (h : ℕ) (ix : Fin h → ι), Function.Injective ix ∧ Set.range ix = (↑J : Set ι) := by
    refine ⟨J.card, fun i => ((J.equivFin.symm i : {a : ι // a ∈ J}) : ι), ?_, ?_⟩
    · intro a b hab
      exact J.equivFin.symm.injective (Subtype.ext hab)
    · ext l
      simp only [Set.mem_range, Finset.mem_coe]
      constructor
      · rintro ⟨i, rfl⟩
        exact (J.equivFin.symm i).2
      · intro hl
        exact ⟨J.equivFin ⟨l, hl⟩, by simp⟩
  have hset : (algebraMap S A) '' (w '' (↑J : Set ι))
      = Set.range fun i => algebraMap S A (w (ix i)) := by
    rw [← hrange]
    ext a
    constructor
    · rintro ⟨b, ⟨l, ⟨i, rfl⟩, rfl⟩, rfl⟩
      exact ⟨i, rfl⟩
    · rintro ⟨i, rfl⟩
      exact ⟨w (ix i), ⟨ix i, ⟨i, rfl⟩, rfl⟩, rfl⟩
  refine ⟨h, fun i => algebraMap S A (w (ix i)), fun i => D (ix i), ?_, ?_, ?_⟩
  · rw [← hspan, Ideal.map_span, hset]
  · intro i j
    rw [hD]
    simp only [show (ix i = ix j) ↔ (i = j) from ⟨fun hc => hix hc, fun hc => by rw [hc]⟩]
  · intro i j a
    exact hDD (ix i) (ix j) a

theorem exists_regularParameters_stalk_of_smooth (k : Type u) [Field k] [CharZero k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p] (x : X) :
    letI := stalkAlgebra k p x;
    ∃ (h : ℕ) (y : Fin h → X.presheaf.stalk x)
      (D : Fin h → Derivation k (X.presheaf.stalk x) (X.presheaf.stalk x)),
      Ideal.span (Set.range y) = IsLocalRing.maximalIdeal (X.presheaf.stalk x) ∧
      (∀ i j : Fin h, D i (y j) = if i = j then 1 else 0) ∧
      (∀ i j : Fin h, ∀ a : X.presheaf.stalk x, D i (D j a) = D j (D i a)) := by
  let _ := stalkAlgebra k p x
  obtain ⟨U, m, hxU, hU, ⟨c⟩⟩ := exists_etaleChart p x
  let _ := sectionsAlgebra k p U
  let _ := c.algebra
  let _ : DecidableEq (ULift.{u} (Fin m)) := Classical.decEq _
  have := c.algebra_formallyEtale hU
  have := c.isScalarTower
  let _ : Algebra Γ(X, U) (X.presheaf.stalk x) := (X.presheaf.germ U x hxU).hom.toAlgebra
  have : IsScalarTower k Γ(X, U) (X.presheaf.stalk x) :=
    isScalarTower_stalk k p U x hxU (algebraMap_sectionsAlgebra k p U)
      (algebraMap_stalkAlgebra k p x) rfl
  have : IsLocalization ((hU.primeIdealOf ⟨x, hxU⟩).asIdeal).primeCompl
      (X.presheaf.stalk x) := hU.isLocalization_stalk ⟨x, hxU⟩
  have := isNoetherianRing_stalk k p x
  let _ : Algebra k (IsLocalRing.ResidueField (X.presheaf.stalk x)) :=
    ((IsLocalRing.residue (X.presheaf.stalk x)).comp (stalkAlgebraMap k p x)).toAlgebra
  have : IsScalarTower k (X.presheaf.stalk x)
      (IsLocalRing.ResidueField (X.presheaf.stalk x)) :=
    IsScalarTower.of_algebraMap_eq fun a => by
      rw [IsLocalRing.ResidueField.algebraMap_eq]
      rfl
  have := formallySmooth_residueField k p x rfl
  exact exists_regularParameters_of_formallyEtale k (ULift.{u} (Fin m)) Γ(X, U)
    ((hU.primeIdealOf ⟨x, hxU⟩).asIdeal) (X.presheaf.stalk x)

theorem orderAt_mul (k : Type u) [Field k] [CharZero k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (I J : X.IdealSheafData) (x : X) :
    orderAt (I * J) x = orderAt I x + orderAt J x := by
  let _ := stalkAlgebra k p x
  have := isNoetherianRing_stalk k p x
  obtain ⟨h, y, D, hspan, hD, hDD⟩ := exists_regularParameters_stalk_of_smooth k p x
  simp only [orderAt_eq_idealOrder, stalkIdeal_mul]
  exact idealOrder_mul y D hspan hD hDD (fun n hn => isUnit_natCast_stalk k p x hn)
    (stalkIdeal I x) (stalkIdeal J x)

theorem orderAt_pow (k : Type u) [Field k] [CharZero k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (I : X.IdealSheafData) (c : ℕ) (x : X) :
    orderAt (I ^ c) x = (c : ℕ∞) * orderAt I x := by
  let _ := stalkAlgebra k p x
  have := isNoetherianRing_stalk k p x
  obtain ⟨h, y, D, hspan, hD, hDD⟩ := exists_regularParameters_stalk_of_smooth k p x
  simp only [orderAt_eq_idealOrder, stalkIdeal_pow]
  exact idealOrder_pow y D hspan hD hDD (fun n hn => isUnit_natCast_stalk k p x hn)
    (stalkIdeal I x) c

theorem natCast_mul_le_mul_iff {c : ℕ} (hc : 1 ≤ c) (m : ℕ) (a : ℕ∞) :
    (c : ℕ∞) * (m : ℕ∞) ≤ (c : ℕ∞) * a ↔ (m : ℕ∞) ≤ a := by
  induction a using ENat.recTopCoe with
  | top =>
    have hc0 : (c : ℕ∞) ≠ 0 := by
      simp only [ne_eq, Nat.cast_eq_zero]
      omega
    have htop : (c : ℕ∞) * ⊤ = ⊤ := by simp [hc0]
    simp [htop]
  | coe n =>
    constructor
    · intro hle
      have h' : c * m ≤ c * n := by exact_mod_cast hle
      have h'' : m ≤ n := Nat.le_of_mul_le_mul_left h' (by omega)
      exact_mod_cast h''
    · intro hle
      have h' : m ≤ n := by exact_mod_cast hle
      have h'' : c * m ≤ c * n := Nat.mul_le_mul (le_refl c) h'
      exact_mod_cast h''

theorem orderAtLeastLocus_pow_mul (k : Type u) [Field k] [CharZero k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (I : X.IdealSheafData) {c : ℕ} (hc : 1 ≤ c) (m : ℕ) :
    orderAtLeastLocus (I ^ c) (c * m) = orderAtLeastLocus I m := by
  ext x
  rw [mem_orderAtLeastLocus_iff, mem_orderAtLeastLocus_iff, orderAt_pow k p I c x, Nat.cast_mul]
  exact natCast_mul_le_mul_iff hc m (orderAt I x)

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity =====
