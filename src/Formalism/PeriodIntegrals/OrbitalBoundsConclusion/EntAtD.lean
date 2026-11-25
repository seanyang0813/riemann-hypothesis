module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MsMul
public import Mathlib.RingTheory.Derivation.Lie
public import Formalism.PeriodIntegrals.EntAtD
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Bridge, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CardCellsEqSumRowLen, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Expand, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.ExpCoeff, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.LapComm, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.LapForms, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.MinorAff, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.SDegMul, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.HeartPderivMinor, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Vanish, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CoreTermLe, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.EntAtDOf, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.EntAtD

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Bridge =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Bridge", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace PI.EntAtD.W

open PI.EntAtD

namespace Br

variable {H : Type} {N0 N1 : ℕ}

abbrev zF (t : H) (a : Fin N0) (b : Fin N1) : ZV H N0 N1 := ((false, t), a, b)

abbrev zT (t : H) (a : Fin N0) (b : Fin N1) : ZV H N0 N1 := ((true, t), a, b)

abbrev up (κ : ZV H N0 N1 →₀ ℕ) (t : H) (a : Fin N0) (b : Fin N1) : ZV H N0 N1 →₀ ℕ :=
  κ + Finsupp.single (zF t a b) 1 + Finsupp.single (zT t a b) 1

private theorem coeff_pd_eq_coeff_add_single_mul (i : XZ (Bool × H) N0 N1) (Q : PolyXZ H N0 N1) (ν : XZ (Bool × H) N0 N1 →₀ ℕ) :
    AddMonoidAlgebra.coeff (pd i Q) ν = AddMonoidAlgebra.coeff Q (ν + Finsupp.single i 1) * ((ν i : ℤ) + 1) := by
  show AddMonoidAlgebra.coeff (MvPolynomial.pderiv i Q) ν = _
  refine MvPolynomial.induction_on' Q (fun s c => ?_) (fun p q hp hq => ?_)
  · rw [MvPolynomial.pderiv_monomial, MvPolynomial.coeff_monomial, MvPolynomial.coeff_monomial]
    by_cases h : s = ν + Finsupp.single i 1
    · subst h
      rw [if_pos (add_tsub_cancel_right _ _), if_pos rfl]
      simp
    · rw [if_neg h, zero_mul]
      by_cases h2 : s - Finsupp.single i 1 = ν
      · rw [if_pos h2]
        have hsi : s i = 0 := by
          by_contra hne
          apply h
          rw [← h2]
          ext j
          simp only [Finsupp.tsub_apply, Finsupp.add_apply, Finsupp.single_apply]
          split_ifs with hj
          · subst hj; omega
          · omega
        simp [hsi]
      · rw [if_neg h2]
  · simp only [map_add (f := _), MvPolynomial.coeff_add, hp, hq, add_mul]

theorem coeff_lapT (t : H) (Q : PolyXZ H N0 N1) (ν : XZ (Bool × H) N0 N1 →₀ ℕ) :
    AddMonoidAlgebra.coeff (lapT N0 N1 t Q) ν =
      ∑ a : Fin N0, ∑ b : Fin N1,
        AddMonoidAlgebra.coeff Q (ν + Finsupp.single (Sum.inr (zF t a b)) 1 + Finsupp.single (Sum.inr (zT t a b)) 1) *
          (((ν (Sum.inr (zT t a b)) : ℤ) + 1) * ((ν (Sum.inr (zF t a b)) : ℤ) + 1)) := by
  unfold lapT
  simp only [LinearMap.sum_apply, MvPolynomial.coeff_sum, (show ∀ (f g : Module.End ℤ (PolyXZ H N0 N1)) (x : PolyXZ H N0 N1), (f * g) x = f (g x) from fun _ _ _ => rfl), coeff_pd_eq_coeff_add_single_mul]
  refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
  have hne : (ν + Finsupp.single (Sum.inr (zF t a b)) 1 : XZ (Bool × H) N0 N1 →₀ ℕ) (Sum.inr (zT t a b)) =
      ν (Sum.inr (zT t a b)) := by
    simp [zF, zT]
  rw [hne]
  ring

theorem symm_add_single (m : XV H N0 →₀ ℕ) (κ : ZV H N0 N1 →₀ ℕ) (v : ZV H N0 N1) :
    (Finsupp.sumFinsuppEquivProdFinsupp.symm (m, κ) : XZ (Bool × H) N0 N1 →₀ ℕ) +
        Finsupp.single (Sum.inr v) 1 =
      Finsupp.sumFinsuppEquivProdFinsupp.symm (m, κ + Finsupp.single v 1) := by
  ext x
  rcases x with x | x <;>
    simp [Finsupp.single_apply]

theorem symm_inr (m : XV H N0 →₀ ℕ) (κ : ZV H N0 N1 →₀ ℕ) (v : ZV H N0 N1) :
    (Finsupp.sumFinsuppEquivProdFinsupp.symm (m, κ) : XZ (Bool × H) N0 N1 →₀ ℕ) (Sum.inr v) = κ v := rfl

variable [Fintype H]

def wv (c κ : ZV H N0 N1 →₀ ℕ) : ℕ :=
  binomF c κ * ∏ t : H, ∏ a : Fin N0, ∏ b : Fin N1, ((c - κ) ((true, t), a, b)).factorial

def wt (μ : XZ (Bool × H) N0 N1 →₀ ℕ) (m : XV H N0 →₀ ℕ) (κ : ZV H N0 N1 →₀ ℕ) (n : H → ℕ) : ℤ :=
  if xpart μ = m ∧ κ ≤ zpart μ ∧ Bal N0 N1 n (zpart μ - κ) then (wv (zpart μ) κ : ℤ) else 0

theorem acon_eq (P : PolyXZ H N0 N1) (m : XV H N0 →₀ ℕ) (κ : ZV H N0 N1 →₀ ℕ) (n : H → ℕ) :
    Acon P m κ n = ∑ μ ∈ P.support, AddMonoidAlgebra.coeff P μ * wt μ m κ n := by
  unfold Acon wt wv
  refine Finset.sum_congr rfl fun μ _ => ?_
  split_ifs <;> (try push_cast) <;> ring

theorem nest {M : Type} [CommMonoid M] (F : H → Fin N0 → Fin N1 → M) :
    ∏ t : H, ∏ a : Fin N0, ∏ b : Fin N1, F t a b = ∏ x : H × Fin N0 × Fin N1, F x.1 x.2.1 x.2.2 := by
  simp only [Fintype.prod_prod_type]

theorem up_apply_false (κ : ZV H N0 N1 →₀ ℕ) (t : H) (a : Fin N0) (b : Fin N1) (t' : H) (a' : Fin N0)
    (b' : Fin N1) :
    up κ t a b ((false, t'), a', b') = κ ((false, t'), a', b') + if (t', a', b') = (t, a, b) then 1 else 0 := by
  simp only [up, zF, zT, Finsupp.add_apply, Finsupp.single_apply]
  split_ifs <;> simp_all

theorem up_apply_true (κ : ZV H N0 N1 →₀ ℕ) (t : H) (a : Fin N0) (b : Fin N1) (t' : H) (a' : Fin N0)
    (b' : Fin N1) :
    up κ t a b ((true, t'), a', b') = κ ((true, t'), a', b') + if (t', a', b') = (t, a, b) then 1 else 0 := by
  simp only [up, zF, zT, Finsupp.add_apply, Finsupp.single_apply]
  split_ifs <;> simp_all

theorem sum_ind (t t' : H) (a : Fin N0) (b : Fin N1) :
    (∑ a' : Fin N0, ∑ b' : Fin N1, if (t', a', b') = (t, a, b) then 1 else 0 : ℕ) = if t' = t then 1 else 0 := by
  by_cases ht : t' = t
  · subst ht
    rw [if_pos rfl, Finset.sum_eq_single a, Finset.sum_eq_single b]
    all_goals first
      | (simp; done)
  · rw [if_neg ht]
    exact Finset.sum_eq_zero fun a' _ => Finset.sum_eq_zero fun b' _ => by simp [ht]

theorem bal_up (n n' : H → ℕ) (t : H) (hn : ∀ s, n s = n' s + if s = t then 1 else 0) (a : Fin N0)
    (b : Fin N1) (k : ZV H N0 N1 →₀ ℕ) : Bal N0 N1 n (up k t a b) ↔ Bal N0 N1 n' k := by
  unfold Bal
  simp only [up_apply_false, up_apply_true, Finset.sum_add_distrib, sum_ind, hn]
  constructor
  · rintro ⟨h1, h2⟩
    exact ⟨fun s a' b' => Nat.add_right_cancel (h1 s a' b'), fun s => Nat.add_right_cancel (h2 s)⟩
  · rintro ⟨h1, h2⟩
    exact ⟨fun s a' b' => by rw [h1 s a' b'], fun s => by rw [h2 s]⟩

private theorem finsupp_le_apply_of_le {c d : ZV H N0 N1 →₀ ℕ} (h : c ≤ d) (x : ZV H N0 N1) : c x ≤ d x := by
  first
    | exact h x

theorem tsub_up {c κ : ZV H N0 N1 →₀ ℕ} {t : H} {a : Fin N0} {b : Fin N1} (hle : up κ t a b ≤ c) :
    c - κ = up (c - up κ t a b) t a b := by
  ext x
  have hx := finsupp_le_apply_of_le hle x
  simp only [up, Finsupp.tsub_apply, Finsupp.add_apply] at hx ⊢
  omega

theorem fact_up (k : ZV H N0 N1 →₀ ℕ) (t : H) (a : Fin N0) (b : Fin N1) :
    ∏ t' : H, ∏ a' : Fin N0, ∏ b' : Fin N1, ((up k t a b) ((true, t'), a', b')).factorial =
      (k (zT t a b) + 1) * ∏ t' : H, ∏ a' : Fin N0, ∏ b' : Fin N1, (k ((true, t'), a', b')).factorial := by
  simp only [nest]
  rw [← Finset.mul_prod_erase Finset.univ
      (fun x : H × Fin N0 × Fin N1 => ((up k t a b) ((true, x.1), x.2.1, x.2.2)).factorial)
      (Finset.mem_univ (t, a, b)),
    ← Finset.mul_prod_erase Finset.univ
      (fun x : H × Fin N0 × Fin N1 => (k ((true, x.1), x.2.1, x.2.2)).factorial)
      (Finset.mem_univ (t, a, b))]
  have h1 : ∀ x ∈ (Finset.univ : Finset (H × Fin N0 × Fin N1)).erase (t, a, b),
      ((up k t a b) ((true, x.1), x.2.1, x.2.2)).factorial = (k ((true, x.1), x.2.1, x.2.2)).factorial := by
    intro x hx
    have hne : ¬ (x.1, x.2.1, x.2.2) = (t, a, b) := by simpa using hx
    rw [up_apply_true, if_neg hne, add_zero]
  rw [Finset.prod_congr rfl h1]
  try dsimp only
  rw [up_apply_true, if_pos rfl, Nat.factorial_succ]
  ring

private theorem up_zF (κ : ZV H N0 N1 →₀ ℕ) (t : H) (a : Fin N0) (b : Fin N1) :
    up κ t a b (zF t a b) = κ (zF t a b) + 1 := by
  rw [up_apply_false, if_pos rfl]

private theorem up_zT (κ : ZV H N0 N1 →₀ ℕ) (t : H) (a : Fin N0) (b : Fin N1) :
    up κ t a b (zT t a b) = κ (zT t a b) + 1 := by
  rw [up_apply_true, if_pos rfl]

private theorem succ_mul_succ_mul_mul_eq_of_mul_succ_eq (x y A A0 B B0 R d1 d2 : ℕ) (e1 : A * (x + 1) = A0 * d1) (e2 : B * (y + 1) = B0 * d2) :
    (y + 1) * (x + 1) * (A * (B * R)) = A0 * (B0 * R) * d1 * d2 := by
  calc (y + 1) * (x + 1) * (A * (B * R)) = (A * (x + 1)) * (B * (y + 1)) * R := by ring
    _ = (A0 * d1) * (B0 * d2) * R := by rw [e1, e2]
    _ = A0 * (B0 * R) * d1 * d2 := by ring

theorem binom_up {c κ : ZV H N0 N1 →₀ ℕ} {t : H} {a : Fin N0} {b : Fin N1} (hle : up κ t a b ≤ c) :
    (κ (zT t a b) + 1) * (κ (zF t a b) + 1) * binomF c (up κ t a b) =
      binomF c κ * ((c - κ) (zF t a b)) * ((c - κ) (zT t a b)) := by
  have hleF : κ (zF t a b) + 1 ≤ c (zF t a b) := by
    have h := finsupp_le_apply_of_le hle (zF t a b)
    rwa [up_zF] at h
  have hleT : κ (zT t a b) + 1 ≤ c (zT t a b) := by
    have h := finsupp_le_apply_of_le hle (zT t a b)
    rwa [up_zT] at h
  have hne : zT t a b ≠ zF t a b := by simp [zF, zT]
  have hF : zF t a b ∈ c.support := Finsupp.mem_support_iff.2 (by omega)
  have hT : zT t a b ∈ c.support.erase (zF t a b) :=
    Finset.mem_erase.2 ⟨hne, Finsupp.mem_support_iff.2 (by omega)⟩
  have hrest : ∀ v ∈ (c.support.erase (zF t a b)).erase (zT t a b),
      (c v).choose (up κ t a b v) = (c v).choose (κ v) := by
    intro v hv
    have hvT := Finset.ne_of_mem_erase hv
    have hvF := Finset.ne_of_mem_erase (Finset.mem_of_mem_erase hv)
    simp only [up, Finsupp.add_apply, Finsupp.single_apply, if_neg (Ne.symm hvF), if_neg (Ne.symm hvT),
      add_zero]
  unfold binomF
  rw [← Finset.mul_prod_erase c.support (fun v => (c v).choose (up κ t a b v)) hF,
    ← Finset.mul_prod_erase _ (fun v => (c v).choose (up κ t a b v)) hT,
    ← Finset.mul_prod_erase c.support (fun v => (c v).choose (κ v)) hF,
    ← Finset.mul_prod_erase _ (fun v => (c v).choose (κ v)) hT,
    Finset.prod_congr rfl hrest]
  try dsimp only
  rw [up_zF, up_zT, Finsupp.tsub_apply, Finsupp.tsub_apply]
  exact succ_mul_succ_mul_mul_eq_of_mul_succ_eq _ _ _ _ _ _ _ _ _ (Nat.choose_succ_right_eq _ _) (Nat.choose_succ_right_eq _ _)

private theorem alg_lemma_8 (p q B B0 P' F T : ℕ) (hB : p * q * B = B0 * F * T) (hFT : F = T) :
    p * q * (B * P') = B0 * (T * P') * T := by
  subst hFT
  calc p * q * (B * P') = (p * q * B) * P' := by ring
    _ = _ := by rw [hB]; ring

theorem wv_up {c κ : ZV H N0 N1 →₀ ℕ} {t : H} {a : Fin N0} {b : Fin N1} (hle : up κ t a b ≤ c)
    (hFG : (c - κ) (zF t a b) = (c - κ) (zT t a b)) :
    (κ (zT t a b) + 1) * (κ (zF t a b) + 1) * wv c (up κ t a b) = wv c κ * (c - κ) (zT t a b) := by
  have hB := binom_up hle
  have hP := fact_up (c - up κ t a b) t a b
  rw [← tsub_up hle] at hP
  have hv : (c - up κ t a b) (zT t a b) + 1 = (c - κ) (zT t a b) := by
    rw [tsub_up hle, up_zT]
  unfold wv
  rw [hP, hv]
  exact alg_lemma_8 _ _ _ _ _ _ _ hB hFG

private theorem up_le_of_le_of_lt_zF_of_lt_zT {c κ : ZV H N0 N1 →₀ ℕ} {t : H} {a : Fin N0} {b : Fin N1} (h : κ ≤ c)
    (hF : κ (zF t a b) < c (zF t a b)) (hT : κ (zT t a b) < c (zT t a b)) : up κ t a b ≤ c := by
  intro v
  have hv := finsupp_le_apply_of_le h v
  by_cases h1 : v = zF t a b
  · subst h1
    rw [up_zF]
    omega
  · by_cases h2 : v = zT t a b
    · subst h2
      rw [up_zT]
      omega
    · simp only [up, Finsupp.add_apply, Finsupp.single_apply, if_neg (Ne.symm h1), if_neg (Ne.symm h2)]
      omega

theorem term_eq (μ : XZ (Bool × H) N0 N1 →₀ ℕ) (m : XV H N0 →₀ ℕ) (κ : ZV H N0 N1 →₀ ℕ) (n n' : H → ℕ)
    (t : H) (hn : ∀ s, n s = n' s + if s = t then 1 else 0) (a : Fin N0) (b : Fin N1) :
    ((κ (zT t a b) : ℤ) + 1) * ((κ (zF t a b) : ℤ) + 1) * wt μ m (up κ t a b) n' =
      if xpart μ = m ∧ κ ≤ zpart μ ∧ Bal N0 N1 n (zpart μ - κ) then
        (wv (zpart μ) κ : ℤ) * ((zpart μ - κ) (zT t a b) : ℤ) else 0 := by
  unfold wt
  by_cases hup : up κ t a b ≤ zpart μ
  · have hκ : κ ≤ zpart μ := le_trans (le_self_add.trans le_self_add) hup
    have hB : Bal N0 N1 n (zpart μ - κ) ↔ Bal N0 N1 n' (zpart μ - up κ t a b) := by
      rw [tsub_up hup]
      exact bal_up n n' t hn a b _
    have hiff : (xpart μ = m ∧ up κ t a b ≤ zpart μ ∧ Bal N0 N1 n' (zpart μ - up κ t a b)) ↔
        (xpart μ = m ∧ κ ≤ zpart μ ∧ Bal N0 N1 n (zpart μ - κ)) :=
      ⟨fun h => ⟨h.1, hκ, hB.2 h.2.2⟩, fun h => ⟨h.1, hup, hB.1 h.2.2⟩⟩
    by_cases h : xpart μ = m ∧ κ ≤ zpart μ ∧ Bal N0 N1 n (zpart μ - κ)
    · rw [if_pos (hiff.2 h), if_pos h]
      exact_mod_cast wv_up hup (h.2.2.1 t a b)
    · rw [if_neg (fun h' => h (hiff.1 h')), if_neg h, mul_zero]
  · have hn1 : ¬ (xpart μ = m ∧ up κ t a b ≤ zpart μ ∧ Bal N0 N1 n' (zpart μ - up κ t a b)) :=
      fun h' => hup h'.2.1
    rw [if_neg hn1, mul_zero]
    by_cases h : xpart μ = m ∧ κ ≤ zpart μ ∧ Bal N0 N1 n (zpart μ - κ)
    · rw [if_pos h]
      obtain ⟨-, hκ, hb⟩ := h
      have hFG : (zpart μ - κ) (zF t a b) = (zpart μ - κ) (zT t a b) := hb.1 t a b
      have e1 : (zpart μ - κ) (zF t a b) = zpart μ (zF t a b) - κ (zF t a b) := Finsupp.tsub_apply _ _ _
      have e2 : (zpart μ - κ) (zT t a b) = zpart μ (zT t a b) - κ (zT t a b) := Finsupp.tsub_apply _ _ _
      have h0 : (zpart μ - κ) (zT t a b) = 0 := by
        by_contra hne
        exact hup (up_le_of_le_of_lt_zF_of_lt_zT hκ (by omega) (by omega))
      rw [h0, Nat.cast_zero, mul_zero]
    · rw [if_neg h]

theorem mono_step (μ : XZ (Bool × H) N0 N1 →₀ ℕ) (m : XV H N0 →₀ ℕ) (κ : ZV H N0 N1 →₀ ℕ) (n n' : H → ℕ)
    (t : H) (hn : ∀ s, n s = n' s + if s = t then 1 else 0) :
    ((n' t : ℤ) + 1) * wt μ m κ n =
      ∑ a : Fin N0, ∑ b : Fin N1,
        ((κ (zT t a b) : ℤ) + 1) * ((κ (zF t a b) : ℤ) + 1) * wt μ m (up κ t a b) n' := by
  simp only [term_eq μ m κ n n' t hn]
  unfold wt
  by_cases h : xpart μ = m ∧ κ ≤ zpart μ ∧ Bal N0 N1 n (zpart μ - κ)
  · simp only [if_pos h]
    have hs := h.2.2.2 t
    rw [hn t, if_pos rfl] at hs
    have hs' : (∑ a : Fin N0, ∑ b : Fin N1, ((zpart μ - κ) (zT t a b) : ℤ)) = (n' t : ℤ) + 1 := by
      exact_mod_cast hs
    simp only [← Finset.mul_sum, hs']
    ring
  · simp only [if_neg h, mul_zero, Finset.sum_const_zero]

theorem acon_step (P : PolyXZ H N0 N1) (m : XV H N0 →₀ ℕ) (κ : ZV H N0 N1 →₀ ℕ) (n n' : H → ℕ) (t : H)
    (hn : ∀ s, n s = n' s + if s = t then 1 else 0) :
    ((n' t : ℤ) + 1) * Acon P m κ n =
      ∑ a : Fin N0, ∑ b : Fin N1,
        ((κ (zT t a b) : ℤ) + 1) * ((κ (zF t a b) : ℤ) + 1) * Acon P m (up κ t a b) n' := by
  simp only [acon_eq, Finset.mul_sum]
  have hb : ∀ μ ∈ P.support,
      ((n' t : ℤ) + 1) * (AddMonoidAlgebra.coeff P μ * wt μ m κ n) =
        ∑ a : Fin N0, ∑ b : Fin N1, ((κ (zT t a b) : ℤ) + 1) * ((κ (zF t a b) : ℤ) + 1) *
          (AddMonoidAlgebra.coeff P μ * wt μ m (up κ t a b) n') := by
    intro μ _
    have := mono_step μ m κ n n' t hn
    calc ((n' t : ℤ) + 1) * (AddMonoidAlgebra.coeff P μ * wt μ m κ n)
        = AddMonoidAlgebra.coeff P μ * (((n' t : ℤ) + 1) * wt μ m κ n) := by ring
      _ = AddMonoidAlgebra.coeff P μ * ∑ a : Fin N0, ∑ b : Fin N1,
          ((κ (zT t a b) : ℤ) + 1) * ((κ (zF t a b) : ℤ) + 1) * wt μ m (up κ t a b) n' := by rw [this]
      _ = _ := by
        simp only [Finset.mul_sum]
        refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
        ring
  rw [Finset.sum_congr rfl hb, Finset.sum_comm]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Finset.sum_comm]

variable [DecidableEq H]

private theorem prod_factorial_eq_succ_mul_of_update (n n' : H → ℕ) (s : H) (hn : ∀ u, n u = n' u + if u = s then 1 else 0) :
    (∏ u : H, ((n u).factorial : ℤ)) = ((n' s : ℤ) + 1) * ∏ u : H, ((n' u).factorial : ℤ) := by
  rw [← Finset.mul_prod_erase Finset.univ (fun u => ((n u).factorial : ℤ)) (Finset.mem_univ s),
    ← Finset.mul_prod_erase Finset.univ (fun u => ((n' u).factorial : ℤ)) (Finset.mem_univ s)]
  have h1 : ∀ u ∈ (Finset.univ : Finset H).erase s, ((n u).factorial : ℤ) = ((n' u).factorial : ℤ) := by
    intro u hu
    rw [hn u, if_neg (Finset.ne_of_mem_erase hu), add_zero]
  rw [Finset.prod_congr rfl h1]
  try dsimp only
  rw [hn s, if_pos rfl, Nat.factorial_succ]
  push_cast
  ring

private theorem bal_zero_iff (k : ZV H N0 N1 →₀ ℕ) : Bal N0 N1 (fun _ => 0) k ↔ k = 0 := by
  unfold Bal
  constructor
  · rintro ⟨h1, h2⟩
    have hT : ∀ t a b, k ((true, t), a, b) = 0 := by
      intro t a b
      have h : ∑ a : Fin N0, ∑ b : Fin N1, k ((true, t), a, b) = 0 := h2 t
      rw [Finset.sum_eq_zero_iff] at h
      have h' := h a (Finset.mem_univ _)
      rw [Finset.sum_eq_zero_iff] at h'
      exact h' b (Finset.mem_univ _)
    ext ⟨⟨bb, t⟩, a, b⟩
    cases bb
    · simp [h1 t a b, hT t a b]
    · simp [hT t a b]
  · rintro rfl
    exact ⟨fun _ _ _ => rfl, fun _ => by simp⟩

theorem bridge_list (L : List H) (P : PolyXZ H N0 N1) (m : XV H N0 →₀ ℕ) (κ : ZV H N0 N1 →₀ ℕ) :
    (∏ t : H, ((L.count t).factorial : ℤ)) * Acon P m κ (fun t => L.count t) =
      AddMonoidAlgebra.coeff ((L.map (lapT N0 N1)).prod P) (Finsupp.sumFinsuppEquivProdFinsupp.symm (m, κ)) := by
  induction L generalizing κ with
  | nil =>
    simp only [List.count_nil, Nat.factorial_zero, Nat.cast_one, Finset.prod_const_one, one_mul,
      List.map_nil, List.prod_nil, (show ∀ (x : PolyXZ H N0 N1), (1 : Module.End ℤ (PolyXZ H N0 N1)) x = x from fun _ => rfl)]
    unfold Acon
    have key : ∀ μ : XZ (Bool × H) N0 N1 →₀ ℕ,
        (xpart μ = m ∧ κ ≤ zpart μ ∧ Bal N0 N1 (fun _ => 0) (zpart μ - κ)) ↔
          μ = Finsupp.sumFinsuppEquivProdFinsupp.symm (m, κ) := by
      intro μ
      rw [bal_zero_iff, tsub_eq_zero_iff_le]
      constructor
      · rintro ⟨h1, h2, h3⟩
        have hz : zpart μ = κ := le_antisymm h3 h2
        rw [← h1, ← hz]
        simp [xpart, zpart]
      · rintro rfl
        simp [xpart, zpart]
    rw [Finset.sum_eq_single (Finsupp.sumFinsuppEquivProdFinsupp.symm (m, κ))]
    · rw [if_pos ((key _).2 rfl)]
      simp [zpart, binomF]
    · intro μ _ hne
      rw [if_neg (fun h => hne ((key μ).1 h))]
    · intro hν
      rw [if_pos ((key _).2 rfl)]
      have h0 : AddMonoidAlgebra.coeff P (Finsupp.sumFinsuppEquivProdFinsupp.symm (m, κ)) = 0 := by
        by_contra h
        exact hν (MvPolynomial.mem_support_iff.2 h)
      rw [h0, zero_mul, zero_mul]
  | cons s L ih =>
    have hn : ∀ u, (s :: L).count u = L.count u + if u = s then 1 else 0 := by
      intro u
      by_cases h : u = s
      · subst h
        simp
      · simp [h, Ne.symm h]
    rw [prod_factorial_eq_succ_mul_of_update (fun u => (s :: L).count u) (fun u => L.count u) s hn]
    rw [List.map_cons, List.prod_cons, (show ∀ (f g : Module.End ℤ (PolyXZ H N0 N1)) (x : PolyXZ H N0 N1), (f * g) x = f (g x) from fun _ _ _ => rfl), coeff_lapT]
    simp only [symm_add_single, symm_inr, ← ih]
    rw [mul_right_comm, acon_step P m κ (fun u => (s :: L).count u) (fun u => L.count u) s
      (fun u => by rw [hn u]; split_ifs <;> rfl),
      Finset.sum_mul]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [Finset.sum_mul]
    refine Finset.sum_congr rfl fun b _ => ?_
    ring

private theorem prod_map_flatMap_replicate (n : H → ℕ) (l : List H) :
    ((l.flatMap fun t => List.replicate (n t) t).map (lapT N0 N1)).prod =
      (l.map fun t => lapT N0 N1 t ^ n t).prod := by
  induction l with
  | nil => simp
  | cons x l ih => simp [ih]

theorem lapAll_eq_list (n : H → ℕ) :
    lapAll (H := H) N0 N1 n =
      (((Finset.univ : Finset H).toList.flatMap fun t => List.replicate (n t) t).map (lapT N0 N1)).prod := by
  unfold lapAll
  rw [prod_map_flatMap_replicate]

private theorem count_flatMap_replicate (n : H → ℕ) (s : H) (l : List H) :
    (l.flatMap fun t => List.replicate (n t) t).count s = (l.map fun t => if t = s then n t else 0).sum := by
  induction l with
  | nil => simp
  | cons x l ih =>
    by_cases h : x = s
    · subst h
      simp [ih]
    · simp [ih, h, List.count_replicate, List.count_append]

theorem count_list (n : H → ℕ) (s : H) :
    ((Finset.univ : Finset H).toList.flatMap fun t => List.replicate (n t) t).count s = n s := by
  rw [count_flatMap_replicate]
  first
    | (rw [Finset.sum_map_toList]; simp; done)

end Br

theorem pBridge : PBridge := by
  unfold PBridge
  intro H _ _ N0 N1 P m κ2 n
  have h := Br.bridge_list (H := H) ((Finset.univ : Finset H).toList.flatMap fun t => List.replicate (n t) t)
    P m κ2
  simp only [Br.count_list] at h
  rw [Br.lapAll_eq_list]
  exact h

end PI.EntAtD.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Bridge =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CardCellsEqSumRowLen =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CardCellsEqSumRowLen", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace PI.EntAtD.W

open PI.EntAtD Formalism.BasicNotions Formalism.MainNotions.G

theorem card_cells_eq_sum_rowLen (α : YoungDiagram) (n : ℕ) (h : ∀ r, n ≤ r → α.rowLen r = 0) :
    α.cells.card = ∑ r ∈ Finset.range n, α.rowLen r := by
  rw [Finset.card_eq_sum_card_fiberwise (f := Prod.fst) (t := Finset.range n)]
  · refine Finset.sum_congr rfl fun r _ => ?_
    rw [YoungDiagram.rowLen_eq_card]
    first
      | rfl
  · intro x hx
    simp only [Finset.mem_coe, Finset.mem_range] at hx ⊢
    by_contra hc
    have h0 := h x.1 (not_lt.mp hc)
    have hx' : (x.1, x.2) ∈ α := hx
    rw [YoungDiagram.mem_iff_lt_rowLen] at hx'
    omega

theorem rowContractionBound_le_cPr (α β : YoungDiagram) :
    rowContractionBound α β ≤ cPr α β := by
  let rows := insert 0 (α.cells.image Prod.fst)
  have h0 : 0 ∈ rows := Finset.mem_insert_self _ _
  have hcard : α.cells.card = ∑ r ∈ rows, α.rowLen r := by
    rw [Finset.card_eq_sum_card_fiberwise (f := Prod.fst) (t := rows)]
    · refine Finset.sum_congr rfl fun r _ => ?_
      rw [YoungDiagram.rowLen_eq_card]
      rfl
    · intro x hx
      exact Finset.mem_insert_of_mem (Finset.mem_image_of_mem Prod.fst hx)
  have hrest : (∑ r ∈ rows.erase 0, min (α.rowLen r) (β.rowLen 0)) ≤
      ∑ r ∈ rows.erase 0, α.rowLen r :=
    Finset.sum_le_sum fun _ _ => min_le_left _ _
  change (∑ r ∈ rows, min (α.rowLen r) (β.rowLen 0)) ≤ cPr α β
  rw [cPr, hcard, ← Finset.add_sum_erase rows α.rowLen h0,
    ← Finset.add_sum_erase rows (fun r => min (α.rowLen r) (β.rowLen 0)) h0]
  omega

theorem cPr_le_ctD (D : D7) (u : D.what₂.Word) (i : ℕ) (nu : Pl D → YoungDiagram)
    (hrow : ∀ z r, (((nu z).rowLen r : ℕ) : ℝ) =
      if r < D.R.N i then DV.nuRow D u (i + 1) (tauPl D z) r else 0)
    (hN : 2 ≤ D.R.N i) (t : HH D) :
    (cPr (nu (false, t)) (nu (true, t)) : ℝ) ≤ ctD D u (i + 1) t := by
  have hN0 : 0 < D.R.N i := by omega
  have hN1 : 1 < D.R.N i := by omega

  have hr : ∀ z r, r < D.R.N i → DV.nuRow D u (i + 1) (tauPl D z) r = ((nu z).rowLen r : ℝ) := by
    intro z r hr'
    rw [hrow z r, if_pos hr']
  have hz : ∀ z r, D.R.N i ≤ r → (nu z).rowLen r = 0 := by
    intro z r hr'
    have hz0 := hrow z r
    rw [if_neg (by omega)] at hz0
    exact_mod_cast hz0
  have hsum := card_cells_eq_sum_rowLen (nu (false, t)) (D.R.N i) (hz _)
  have habs : nuAbs D u (i + 1) (tauPl D (false, t)) = ((nu (false, t)).cells.card : ℝ) := by
    rw [hsum]
    unfold nuAbs
    rw [Nat.add_sub_cancel]
    push_cast
    refine Finset.sum_congr rfl fun r hr' => ?_
    exact hr _ r (Finset.mem_range.mp hr')
  have h0le : (nu (false, t)).rowLen 0 ≤ (nu (false, t)).cells.card := by
    rw [hsum]
    exact Finset.single_le_sum (f := fun r => (nu (false, t)).rowLen r)
      (fun _ _ => Nat.zero_le _) (Finset.mem_range.mpr hN0)
  unfold cPr ctD
  rw [habs, hr (false, t) 0 hN0, hr (false, t) 1 hN1, hr (true, t) 0 hN0]
  push_cast [Nat.cast_sub h0le]
  have hm1 := min_le_left ((nu (false, t)).rowLen 0 : ℝ) ((nu (true, t)).rowLen 0 : ℝ)
  have hm2 := min_le_right ((nu (false, t)).rowLen 0 : ℝ) ((nu (true, t)).rowLen 0 : ℝ)
  have ha1 : (0 : ℝ) ≤ ((nu (false, t)).rowLen 1 : ℝ) := Nat.cast_nonneg _
  split_ifs <;> linarith

theorem entAtD_of_core (h : CoreBound) : PI.EntAtD.EntAtD := by
  unfold PI.EntAtD.EntAtD
  intro D Dx nu hrow hcol Th hTh u μ w hLF hram i hi L L'
  have hS := hTh u μ w hLF hram i hi L L'
  have hc := h (HH D) (D.R.N i) (D.R.N (i + 1)) (D.what₂.places.resChar w) (nu u i)
    (Th u μ w i L L') hS
  have hN : 2 ≤ D.R.N i := by
    show 2 ≤ D.R.k + i * (D.R.t + 1)
    have h2 := D.R.two_le_m
    have h3 := D.R.m_add_three_le_k
    exact le_trans (by omega : 2 ≤ D.R.k) (Nat.le_add_right _ _)

  have hle : ∑ t : HH D, (cPr (nu u i (false, t)) (nu u i (true, t)) : ℝ) ≤
      ∑ t : HH D, ctD D u (i + 1) t :=
    Finset.sum_le_sum fun t _ => cPr_le_ctD D u i (nu u i) (hrow u i hi) hN t
  have hp : (1 : ℝ) ≤ (D.what₂.places.resChar w : ℝ) := by
    have hpr : (D.what₂.places.resChar w).Prime := Fact.out
    exact_mod_cast hpr.one_lt.le
  unfold KvalGe at hc ⊢
  intro I m
  refine (hc I m).trans ?_
  apply Real.rpow_le_rpow_of_exponent_le hp
  linarith

end PI.EntAtD.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CardCellsEqSumRowLen =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Expand =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Expand", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace PI.EntAtD.W

open PI.EntAtD

theorem fprod_split_cast {H : Type} {N0 N1 p : ℕ} [Fact p.Prime] (κ κ2 : ZV H N0 N1 →₀ ℕ) (h : κ2 ≤ κ) :
    (κ.prod fun _ k => (k.factorial : ℂ_[p])) =
      ((binomF κ κ2 : ℕ) : ℂ_[p]) * ((κ - κ2).prod fun _ k => (k.factorial : ℂ_[p])) *
        (κ2.prod fun _ k => (k.factorial : ℂ_[p])) := by
  classical
  have hs1 : (κ - κ2).support ⊆ κ.support := by
    intro v hv
    rw [Finsupp.mem_support_iff, Finsupp.tsub_apply] at hv
    rw [Finsupp.mem_support_iff]
    omega
  have hs2 : κ2.support ⊆ κ.support := by
    intro v hv
    rw [Finsupp.mem_support_iff] at hv ⊢
    have := h v
    omega
  rw [Finsupp.prod_of_support_subset _ hs1 _ (fun _ _ => by simp),
    Finsupp.prod_of_support_subset _ hs2 _ (fun _ _ => by simp),
    Finsupp.prod_of_support_subset κ subset_rfl _ (fun _ _ => by simp)]
  simp only [binomF]
  rw [Nat.cast_prod, ← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun v _ => ?_
  rw [Finsupp.tsub_apply, mul_right_comm]
  exact_mod_cast (Nat.choose_mul_factorial_mul_factorial (h v)).symm

theorem fcoeff_mul {H : Type} [DecidableEq H] {N0 N1 p : ℕ} [Fact p.Prime] (E sg : MvPowerSeries (ZV H N0 N1) ℂ_[p])
    (κ : ZV H N0 N1 →₀ ℕ) :
    (κ.prod fun _ k => (k.factorial : ℂ_[p])) * MvPowerSeries.coeff κ (E * sg) =
      ∑ κ2 ∈ Finset.Iic κ, ((binomF κ κ2 : ℕ) : ℂ_[p]) *
        (((κ - κ2).prod fun _ k => (k.factorial : ℂ_[p])) * MvPowerSeries.coeff (κ - κ2) E) *
        ((κ2.prod fun _ k => (k.factorial : ℂ_[p])) * MvPowerSeries.coeff κ2 sg) := by
  rw [MvPowerSeries.coeff_mul, Finset.mul_sum]
  refine Finset.sum_nbij' (fun x => x.2) (fun κ2 => (κ - κ2, κ2)) ?_ ?_ ?_ ?_ ?_
  · intro x hx
    simp at hx
    simp only [Finset.mem_Iic]
    rw [← hx]
    exact le_add_self
  · intro κ2 hκ2
    simp only [Finset.mem_Iic] at hκ2
    simpa using tsub_add_cancel_of_le hκ2
  · intro x hx
    simp at hx
    refine Prod.ext ?_ rfl
    show κ - x.2 = x.1
    rw [← hx, add_tsub_cancel_right]
  · intro κ2 _
    rfl
  · intro x hx
    simp at hx
    have hle : x.2 ≤ κ := by
      rw [← hx]
      exact le_add_self
    have h1 : κ - x.2 = x.1 := by
      rw [← hx, add_tsub_cancel_right]
    rw [fprod_split_cast κ x.2 hle, h1]
    ring

theorem prof_le_totalDegree {H : Type} {N0 N1 : ℕ} (P : PolyXZ H N0 N1) (μ : XZ (Bool × H) N0 N1 →₀ ℕ)
    (hμ : μ ∈ P.support) (κ2 : ZV H N0 N1 →₀ ℕ) (t : H) :
    ∑ a : Fin N0, ∑ b : Fin N1, (zpart μ - κ2) ((true, t), a, b) ≤ P.totalDegree := by
  classical
  calc ∑ a : Fin N0, ∑ b : Fin N1, (zpart μ - κ2) ((true, t), a, b)
      ≤ ∑ a : Fin N0, ∑ b : Fin N1, μ (Sum.inr ((true, t), a, b)) := by
        refine Finset.sum_le_sum fun a _ => Finset.sum_le_sum fun b _ => ?_
        rw [Finsupp.tsub_apply]
        exact tsub_le_self.trans (by
          first
          | exact le_of_eq rfl)
    _ = ∑ x ∈ (Finset.univ : Finset (Fin N0 × Fin N1)).image
          (fun ab => (Sum.inr ((true, t), ab.1, ab.2) : XZ (Bool × H) N0 N1)), μ x := by
        rw [Finset.sum_image (by intro x _ y _ h; simpa [Prod.ext_iff] using h), Fintype.sum_prod_type]
    _ ≤ ∑ x ∈ μ.support, μ x :=
        Finset.sum_le_sum_of_ne_zero fun x _ hx => Finsupp.mem_support_iff.2 hx
    _ ≤ P.totalDegree := MvPolynomial.le_totalDegree hμ

theorem expand_gen {H : Type} [Fintype H] [DecidableEq H] {N0 N1 p : ℕ} [Fact p.Prime] (S : ℂ_[p])
    (ut : H → ℂ_[p]) (E sg : MvPowerSeries (ZV H N0 N1) ℂ_[p])
    (hE : ∀ κ : ZV H N0 N1 →₀ ℕ, (κ.prod fun _ k => (k.factorial : ℂ_[p])) * MvPowerSeries.coeff κ E =
      if ∀ t a b, κ ((false, t), a, b) = κ ((true, t), a, b) then
        ∏ t : H, ∏ a : Fin N0, ∏ b : Fin N1,
          ((κ ((true, t), a, b)).factorial : ℂ_[p]) * (-(S * ut t)) ^ κ ((true, t), a, b)
      else 0)
    (P : PolyXZ H N0 N1) (m : XV H N0 →₀ ℕ) :
    AddMonoidAlgebra.coeff (applyAt0 N0 N1 p (E * sg) P) m =
      ∑ κ2 ∈ P.support.biUnion (fun μ => Finset.Iic (zpart μ)),
        ∑ n ∈ Fintype.piFinset (fun _ : H => Finset.range (P.totalDegree + 1)),
          ((κ2.prod fun _ k => (k.factorial : ℂ_[p])) * MvPowerSeries.coeff κ2 sg) *
            (∏ t : H, (-(S * ut t)) ^ n t) * ((Acon P m κ2 n : ℤ) : ℂ_[p]) := by
  classical
  let T : (XZ (Bool × H) N0 N1 →₀ ℕ) → (ZV H N0 N1 →₀ ℕ) → ℂ_[p] := fun μ κ2 =>
    if xpart μ = m ∧ κ2 ≤ zpart μ ∧
        (∀ t a b, (zpart μ - κ2) ((false, t), a, b) = (zpart μ - κ2) ((true, t), a, b)) then
      ((AddMonoidAlgebra.coeff P μ : ℤ) : ℂ_[p]) * ((binomF (zpart μ) κ2 : ℕ) : ℂ_[p]) *
        (∏ t : H, ∏ a : Fin N0, ∏ b : Fin N1,
          (((zpart μ - κ2) ((true, t), a, b)).factorial : ℂ_[p]) *
            (-(S * ut t)) ^ (zpart μ - κ2) ((true, t), a, b)) *
        ((κ2.prod fun _ k => (k.factorial : ℂ_[p])) * MvPowerSeries.coeff κ2 sg)
    else 0
  have hL : AddMonoidAlgebra.coeff (applyAt0 N0 N1 p (E * sg) P) m =
      ∑ μ ∈ P.support, ∑ κ2 ∈ P.support.biUnion (fun μ => Finset.Iic (zpart μ)), T μ κ2 := by
    simp only [applyAt0, MvPolynomial.coeff_sum, MvPolynomial.coeff_monomial]
    refine Finset.sum_congr rfl fun μ hμ => ?_
    by_cases hx : xpart μ = m
    · rw [if_pos hx, mul_assoc, fcoeff_mul, Finset.mul_sum]
      rw [← Finset.sum_subset (Finset.subset_biUnion_of_mem (fun μ => Finset.Iic (zpart μ)) hμ)
        (fun κ2 _ hn => by
          simp only [T]
          rw [if_neg]
          exact fun h => hn (Finset.mem_Iic.2 h.2.1))]
      refine Finset.sum_congr rfl fun κ2 hκ2 => ?_
      have hle : κ2 ≤ zpart μ := Finset.mem_Iic.1 hκ2
      rw [hE]
      simp only [T]
      by_cases hb : ∀ t a b, (zpart μ - κ2) ((false, t), a, b) = (zpart μ - κ2) ((true, t), a, b)
      · rw [if_pos hb, if_pos ⟨hx, hle, hb⟩]
        ring
      · rw [if_neg hb, if_neg (fun h => hb h.2.2)]
        ring
    · rw [if_neg hx]
      symm
      refine Finset.sum_eq_zero fun κ2 _ => ?_
      simp only [T]
      rw [if_neg]
      exact fun h => hx h.1
  have hR : (∑ κ2 ∈ P.support.biUnion (fun μ => Finset.Iic (zpart μ)),
        ∑ n ∈ Fintype.piFinset (fun _ : H => Finset.range (P.totalDegree + 1)),
          ((κ2.prod fun _ k => (k.factorial : ℂ_[p])) * MvPowerSeries.coeff κ2 sg) *
            (∏ t : H, (-(S * ut t)) ^ n t) * ((Acon P m κ2 n : ℤ) : ℂ_[p])) =
      ∑ κ2 ∈ P.support.biUnion (fun μ => Finset.Iic (zpart μ)), ∑ μ ∈ P.support, T μ κ2 := by
    refine Finset.sum_congr rfl fun κ2 _ => ?_
    simp only [Acon, Int.cast_sum, Finset.mul_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun μ hμ => ?_
    by_cases hQ : xpart μ = m ∧ κ2 ≤ zpart μ ∧
        (∀ t a b, (zpart μ - κ2) ((false, t), a, b) = (zpart μ - κ2) ((true, t), a, b))
    · have hB : Bal N0 N1 (fun t => ∑ a : Fin N0, ∑ b : Fin N1, (zpart μ - κ2) ((true, t), a, b))
          (zpart μ - κ2) := And.intro hQ.2.2 fun t => rfl
      rw [Finset.sum_eq_single (fun t => ∑ a : Fin N0, ∑ b : Fin N1, (zpart μ - κ2) ((true, t), a, b))]
      · rw [if_pos ⟨hQ.1, hQ.2.1, hB⟩]
        simp only [T]
        rw [if_pos hQ]
        push_cast
        simp only [Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum] <;> ring
      · intro n _ hn
        rw [if_neg, Int.cast_zero, mul_zero]
        rintro ⟨_, _, hB'⟩
        exact hn (funext fun t => (hB'.2 t).symm)
      · intro hn
        exfalso
        exact hn (Fintype.mem_piFinset.2 fun t =>
          Finset.mem_range.2 (Nat.lt_succ_of_le (prof_le_totalDegree P μ hμ κ2 t)))
    · simp only [T]
      rw [if_neg hQ]
      refine Finset.sum_eq_zero fun n _ => ?_
      rw [if_neg, Int.cast_zero, mul_zero]
      rintro ⟨h1, h2, hB'⟩
      exact hQ ⟨h1, h2, hB'.1⟩
  rw [hL, hR, Finset.sum_comm]

theorem expand_of (hX : PExpCoeff) : PExpand := by
  intro H _ _ N0 N1 p _ S ut sg P m
  exact expand_gen S ut _ sg (fun κ => hX H N0 N1 p S ut κ) P m

end PI.EntAtD.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Expand =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.ExpCoeff =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.ExpCoeff", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace PI.EntAtD.W

open PI.EntAtD

namespace ExponentialCoefficients

variable {H : Type} [Fintype H] [DecidableEq H] {N0 N1 : ℕ}

abbrev JI (H : Type) (N0 N1 : ℕ) : Type := H × Fin N0 × Fin N1

def vX (s : Bool) (j : JI H N0 N1) : ZV H N0 N1 := ((s, j.1), j.2.1, j.2.2)

def eJ (j : JI H N0 N1) : ZV H N0 N1 →₀ ℕ :=
  Finsupp.single (vX false j) 1 + Finsupp.single (vX true j) 1

def eK (k : JI H N0 N1 → ℕ) : ZV H N0 N1 →₀ ℕ :=
  Finsupp.equivFunOnFinite.symm (fun v => k (v.1.2, v.2))

theorem eK_apply (k : JI H N0 N1 → ℕ) (s : Bool) (t : H) (a : Fin N0) (b : Fin N1) :
    eK k ((s, t), a, b) = k (t, a, b) := by
  first
  | rfl

theorem sum_eJ (k : JI H N0 N1 → ℕ) : ∑ j, k j • eJ j = eK k := by
  ext ⟨⟨s, t⟩, a, b⟩
  rw [eK_apply, Finsupp.finsetSum_apply, Finset.sum_eq_single (t, a, b)]
  · cases s <;> simp [eJ, vX]
  · rintro ⟨t', a', b'⟩ _ hne
    simp only [eJ, vX, Finsupp.add_apply, Finsupp.smul_apply, Finsupp.single_apply, smul_eq_mul,
      Prod.mk.injEq]
    split_ifs <;> simp_all
  · intro h
    exact absurd (Finset.mem_univ _) h

theorem eK_eq_iff (k : JI H N0 N1 → ℕ) (κ : ZV H N0 N1 →₀ ℕ) :
    κ = eK k ↔ (∀ t a b, κ ((false, t), a, b) = κ ((true, t), a, b)) ∧ k = fun j => κ (vX true j) := by
  constructor
  · rintro rfl
    refine ⟨fun t a b => by rw [eK_apply, eK_apply], ?_⟩
    funext ⟨t, a, b⟩
    exact (eK_apply k true t a b).symm
  · rintro ⟨h1, rfl⟩
    ext ⟨⟨s, t⟩, a, b⟩
    rw [eK_apply]
    cases s
    · exact h1 t a b
    · rfl

theorem prod_monomial' {σ ι R : Type*} [CommSemiring R] (s : Finset ι) (f : ι → σ →₀ ℕ) (a : ι → R) :
    ∏ i ∈ s, MvPowerSeries.monomial (f i) (a i) =
      MvPowerSeries.monomial (∑ i ∈ s, f i) (∏ i ∈ s, a i) := by
  classical
  refine Finset.induction_on s ?_ ?_
  · simp [MvPowerSeries.monomial_zero_one]
  · intro i s hi ih
    rw [Finset.prod_insert hi, Finset.prod_insert hi, Finset.sum_insert hi, ih,
      MvPowerSeries.monomial_mul_monomial]

variable (p : ℕ) [Fact p.Prime]

theorem f_eq (S : ℂ_[p]) (ut : H → ℂ_[p]) :
    (-(S • ∑ t : H, ut t • ∑ a : Fin N0, ∑ b : Fin N1,
        (MvPowerSeries.X ((false, t), a, b) * MvPowerSeries.X ((true, t), a, b) :
          MvPowerSeries (ZV H N0 N1) ℂ_[p]))) =
      ∑ j : JI H N0 N1, MvPowerSeries.monomial (eJ j) (-(S * ut j.1)) := by
  have key : ∀ (c : ℂ_[p]) (n : ZV H N0 N1 →₀ ℕ),
      c • (MvPowerSeries.monomial n (1 : ℂ_[p])) = MvPowerSeries.monomial n c := by
    intro c n
    rw [← map_smul, smul_eq_mul, mul_one]
  simp only [Finset.smul_sum, ← Finset.sum_neg_distrib, Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun t _ => Finset.sum_congr rfl fun a _ =>
    Finset.sum_congr rfl fun b _ => ?_
  rw [MvPowerSeries.X, MvPowerSeries.X, MvPowerSeries.monomial_mul_monomial, mul_one, smul_smul,
    ← neg_smul, key]
  rfl

theorem cc_zero (S : ℂ_[p]) (ut : H → ℂ_[p]) :
    MvPowerSeries.constantCoeff
      (∑ j : JI H N0 N1, MvPowerSeries.monomial (eJ j) (-(S * ut j.1))) = 0 := by

  rw [map_sum]
  refine Finset.sum_eq_zero fun j _ => ?_
  rw [← MvPowerSeries.coeff_zero_eq_constantCoeff_apply, MvPowerSeries.coeff_monomial, if_neg]
  intro h
  have h2 := DFunLike.congr_fun h (vX false j)
  simp [eJ, vX] at h2

theorem coeff_pow (S : ℂ_[p]) (ut : H → ℂ_[p]) (κ : ZV H N0 N1 →₀ ℕ) (d : ℕ) :
    MvPowerSeries.coeff κ ((∑ j : JI H N0 N1, MvPowerSeries.monomial (eJ j) (-(S * ut j.1))) ^ d) =
      if (∀ t a b, κ ((false, t), a, b) = κ ((true, t), a, b)) ∧ ∑ j, κ (vX true j) = d then
        ((Nat.multinomial Finset.univ fun j => κ (vX true j) : ℕ) : ℂ_[p]) *
          ∏ j, (-(S * ut j.1)) ^ κ (vX true j)
      else 0 := by
  classical
  have hn : ∀ (n : ℕ) (m : ZV H N0 N1 →₀ ℕ) (c : ℂ_[p]),
      (n : MvPowerSeries (ZV H N0 N1) ℂ_[p]) * MvPowerSeries.monomial m c =
        MvPowerSeries.monomial m ((n : ℂ_[p]) * c) := by
    intro n m c
    rw [← nsmul_eq_mul, ← map_nsmul, nsmul_eq_mul]
  have hterm : ∀ k : JI H N0 N1 → ℕ,
      (Nat.multinomial Finset.univ k : MvPowerSeries (ZV H N0 N1) ℂ_[p]) *
          ∏ j, MvPowerSeries.monomial (eJ j) (-(S * ut j.1)) ^ k j =
        MvPowerSeries.monomial (eK k)
          ((Nat.multinomial Finset.univ k : ℂ_[p]) * ∏ j, (-(S * ut j.1)) ^ k j) := by
    intro k
    simp only [MvPowerSeries.monomial_pow]
    rw [prod_monomial', sum_eJ, hn]

  rw [Finset.sum_pow_eq_sum_piAntidiag, map_sum]
  simp only [hterm, MvPowerSeries.coeff_monomial]
  split_ifs with h
  · rw [Finset.sum_eq_single (fun j => κ (vX true j))]
    · rw [if_pos ((eK_eq_iff _ _).2 ⟨h.1, rfl⟩)]
    · intro k _ hk
      rw [if_neg]
      intro he
      exact hk ((eK_eq_iff k κ).1 he).2
    · intro hn'
      exfalso
      apply hn'
      rw [Finset.mem_piAntidiag]
      exact ⟨h.2, fun i _ => Finset.mem_univ i⟩
  · refine Finset.sum_eq_zero fun k hk => ?_
    rw [if_neg]
    intro he
    apply h
    obtain ⟨h1, h2⟩ := (eK_eq_iff k κ).1 he
    refine ⟨h1, ?_⟩
    rw [Finset.mem_piAntidiag] at hk
    subst h2
    exact hk.1

end ExponentialCoefficients

theorem pExpCoeff : PExpCoeff := by
  intro H _ _ N0 N1 p _ S ut κ
  have hs : PowerSeries.HasSubst (∑ j : ExponentialCoefficients.JI H N0 N1,
      MvPowerSeries.monomial (ExponentialCoefficients.eJ j) (-(S * ut j.1))) :=
    PowerSeries.HasSubst.of_constantCoeff_zero (ExponentialCoefficients.cc_zero p S ut)
  rw [expS, ExponentialCoefficients.f_eq, PowerSeries.coeff_subst hs]
  simp only [ExponentialCoefficients.coeff_pow, PowerSeries.coeff_exp, smul_eq_mul]
  split_ifs with hbal
  · rw [finsum_eq_single _ (∑ j, κ (ExponentialCoefficients.vX true j)) ?_]
    · rw [if_pos ⟨hbal, rfl⟩]
      have hκ : (κ.prod fun _ k => (k.factorial : ℂ_[p])) =
          ∏ j : ExponentialCoefficients.JI H N0 N1, ((κ (ExponentialCoefficients.vX true j)).factorial : ℂ_[p]) ^ 2 := by
        rw [Finsupp.prod_fintype _ _ (fun _ => by simp)]
        let e : (Bool × ExponentialCoefficients.JI H N0 N1) ≃ ZV H N0 N1 :=
          { toFun := fun x => ExponentialCoefficients.vX x.1 x.2
            invFun := fun v => (v.1.1, v.1.2, v.2)
            left_inv := fun _ => rfl
            right_inv := fun _ => rfl }
        rw [← e.prod_comp, Fintype.prod_prod_type, Fintype.prod_bool, ← Finset.prod_mul_distrib]
        refine Finset.prod_congr rfl fun j _ => ?_
        obtain ⟨t, a, b⟩ := j
        simp only [e, Equiv.coe_fn_mk, ExponentialCoefficients.vX]
        rw [← hbal t a b, sq]
      have hR : (∏ t : H, ∏ a : Fin N0, ∏ b : Fin N1,
          ((κ ((true, t), a, b)).factorial : ℂ_[p]) * (-(S * ut t)) ^ κ ((true, t), a, b)) =
          ∏ j : ExponentialCoefficients.JI H N0 N1, ((κ (ExponentialCoefficients.vX true j)).factorial : ℂ_[p]) *
            (-(S * ut j.1)) ^ κ (ExponentialCoefficients.vX true j) := by
        simp only [Fintype.prod_prod_type] <;> rfl
      have hM := congrArg (Nat.cast (R := ℂ_[p]))
        (Nat.multinomial_spec Finset.univ (fun j => κ (ExponentialCoefficients.vX true j)))
      push_cast at hM
      have hD : ((∑ j, κ (ExponentialCoefficients.vX true j)).factorial : ℂ_[p]) ≠ 0 :=
        Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero _)
      rw [hκ, hR, Finset.prod_mul_distrib, Finset.prod_pow, map_div₀, map_one, map_natCast]
      rw [← hM] at hD ⊢
      have hMne := right_ne_zero_of_mul hD
      field_simp
    · intro d hd
      rw [if_neg, mul_zero]
      rintro ⟨_, h⟩
      exact hd h.symm
  · rw [finsum_eq_zero_of_forall_eq_zero, mul_zero]
    intro d
    rw [if_neg, mul_zero]
    rintro ⟨h, _⟩
    exact hbal h

end PI.EntAtD.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.ExpCoeff =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.LapComm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.LapComm", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace PI.EntAtD.W

open PI.EntAtD

theorem pderiv_pderiv_comm {σ R : Type} [CommRing R] (v w : σ) (f : MvPolynomial σ R) :
    MvPolynomial.pderiv v (MvPolynomial.pderiv w f) = MvPolynomial.pderiv w (MvPolynomial.pderiv v f) := by
  have hX : ∀ i j k : σ, MvPolynomial.pderiv i (MvPolynomial.pderiv j (MvPolynomial.X k : MvPolynomial σ R)) = 0 := by
    intro i j k
    by_cases h : k = j
    · subst h; simp
    · simp [MvPolynomial.pderiv_X_of_ne h]
  induction f using MvPolynomial.induction_on with
  | C a => simp
  | add p q hp hq => simp only [map_add (f := _), hp, hq]
  | mul_X p k hp =>
    simp only [Derivation.leibniz, smul_eq_mul, map_add (f := _), hX, mul_zero, zero_add, hp]
    ring

theorem pd_comm {H : Type} {N0 N1 : ℕ} (v w : XZ (Bool × H) N0 N1) :
    Commute (pd (H := H) (N0 := N0) (N1 := N1) v) (pd w) := by
  refine LinearMap.ext fun f => ?_
  exact pderiv_pderiv_comm (R := ℤ) v w f

theorem pLapComm : PLapComm := by
  intro H N0 N1 t t'
  unfold lapT
  refine Commute.sum_left _ _ _ fun a _ => Commute.sum_left _ _ _ fun b _ => ?_
  refine Commute.sum_right _ _ _ fun a' _ => Commute.sum_right _ _ _ fun b' _ => ?_
  exact ((pd_comm _ _).mul_right (pd_comm _ _)).mul_left ((pd_comm _ _).mul_right (pd_comm _ _))

end PI.EntAtD.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.LapComm =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.LapForms =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.LapForms", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MsMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Derivation.Lie\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators

namespace PI.EntAtD.W

open PI.EntAtD MvPolynomial

section LapFormsSec

variable {H : Type} {N0 N1 : ℕ}

lemma der_sum_apply {ι : Type} (s : Finset ι)
    (D : ι → Derivation ℤ (PolyXZ H N0 N1) (PolyXZ H N0 N1)) (x : PolyXZ H N0 N1) :
    (∑ i ∈ s, D i) x = ∑ i ∈ s, D i x := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert i s hi ih => rw [Finset.sum_insert hi, Finset.sum_insert hi, Derivation.add_apply, ih]

lemma pderiv_comm' (i j : XZ (Bool × H) N0 N1) (P : PolyXZ H N0 N1) :
    pderiv i (pderiv j P) = pderiv j (pderiv i P) := by
  have h : ⁅(pderiv (R := ℤ) i : Derivation ℤ (PolyXZ H N0 N1) (PolyXZ H N0 N1)), pderiv (R := ℤ) j⁆ = 0 := by
    apply MvPolynomial.derivation_ext
    intro k
    rw [Derivation.commutator_apply, Derivation.zero_apply]
    by_cases hj : k = j
    · subst hj
      by_cases hi : k = i
      · subst hi; simp
      · simp [pderiv_X_of_ne hi]
    · by_cases hi : k = i
      · subst hi; simp [pderiv_X_of_ne hj]
      · simp [pderiv_X_of_ne hi, pderiv_X_of_ne hj]
  have h2 := congrArg (fun D : Derivation ℤ (PolyXZ H N0 N1) (PolyXZ H N0 N1) => D P) h
  simp only [Derivation.commutator_apply, Derivation.zero_apply] at h2
  exact sub_eq_zero.mp h2

lemma pd_inr_X_inl (v : (Bool × H) × Fin N0 × Fin N1) (u : (Bool × H) × ℕ × Fin N0) :
    pderiv (Sum.inr v : XZ (Bool × H) N0 N1) (X (Sum.inl u) : PolyXZ H N0 N1) = 0 :=
  pderiv_X_of_ne Sum.inl_ne_inr

def lfo (t : H) (c : ℕ × Fin N1) : PolyXZ H N0 N1 :=
  ∑ a : Fin N0, X (Sum.inl ((false, t), c.1, a)) * X (Sum.inr ((false, t), a, c.2))

def tmL (t : H) (L : List (ℕ × Fin N1)) (h : PolyXZ H N0 N1) : PolyXZ H N0 N1 :=
  (L.map (lfo (N0 := N0) t)).prod * h

def nzc (L : List (ℕ × Fin N1)) : ℕ := (L.map fun c => if c.1 = 0 then 0 else 1).sum

def z0c (L : List (ℕ × Fin N1)) : ℕ := (L.map fun c => if c.1 = 0 then 1 else 0).sum

lemma dRow_apply (t : H) (r : ℕ) (b : Fin N1) (P : PolyXZ H N0 N1) :
    dRow (N0 := N0) t r b P =
      ∑ a : Fin N0, X (Sum.inl ((false, t), r, a)) * pderiv (Sum.inr ((true, t), a, b)) P := by
  simp [dRow, smul_eq_mul]

lemma lap_apply (t : H) (P : PolyXZ H N0 N1) :
    lapT N0 N1 t P = ∑ a : Fin N0, ∑ b : Fin N1,
      pderiv (Sum.inr ((false, t), a, b)) (pderiv (Sum.inr ((true, t), a, b)) P) := by
  simp only [lapT, LinearMap.sum_apply, Module.End.mul_apply]
  rfl

lemma pw_lfo (t : H) (c : ℕ × Fin N1) (a : Fin N0) (b : Fin N1) :
    pderiv (Sum.inr ((true, t), a, b)) (lfo (N0 := N0) t c) = 0 := by
  unfold lfo

  rw [map_sum]
  apply Finset.sum_eq_zero
  intro a' _
  rw [Derivation.leibniz, pd_inr_X_inl, pderiv_X_of_ne (by simp), smul_zero, smul_zero, add_zero]

lemma pz_lfo (t : H) (c : ℕ × Fin N1) (a : Fin N0) (b : Fin N1) :
    pderiv (Sum.inr ((false, t), a, b)) (lfo (N0 := N0) t c) =
      if b = c.2 then X (Sum.inl ((false, t), c.1, a)) else 0 := by
  have key : ∀ a' : Fin N0, pderiv (Sum.inr ((false, t), a, b))
      (X (Sum.inl ((false, t), c.1, a')) * X (Sum.inr ((false, t), a', c.2)) : PolyXZ H N0 N1) =
      if a' = a ∧ c.2 = b then X (Sum.inl ((false, t), c.1, a')) else 0 := by
    intro a'
    rw [Derivation.leibniz, pd_inr_X_inl, smul_zero, add_zero, smul_eq_mul]
    split_ifs with h
    · obtain ⟨rfl, hb⟩ := h
      rw [hb, pderiv_X_self, mul_one]
    · rw [pderiv_X_of_ne, mul_zero]
      intro e
      simp only [Sum.inr.injEq, Prod.mk.injEq] at e
      exact h ⟨e.2.1, e.2.2⟩
  unfold lfo

  rw [map_sum, Finset.sum_congr rfl (fun a' _ => key a')]
  by_cases hb : b = c.2
  · subst hb
    simp
  · have hb' : c.2 ≠ b := fun h => hb h.symm
    simp [hb, hb']

lemma pw_prod (t : H) (L : List (ℕ × Fin N1)) (a : Fin N0) (b : Fin N1) :
    pderiv (Sum.inr ((true, t), a, b)) ((L.map (lfo (N0 := N0) t)).prod) = 0 := by
  induction L with
  | nil => simp
  | cons c L ih =>
    rw [List.map_cons, List.prod_cons, Derivation.leibniz, ih, pw_lfo, smul_zero, smul_zero, add_zero]

lemma lap_mul (t : H) (f h : PolyXZ H N0 N1)
    (hf : ∀ a b, pderiv (Sum.inr ((true, t), a, b)) f = 0)
    (hh : ∀ a b, pderiv (Sum.inr ((false, t), a, b)) h = 0) :
    lapT N0 N1 t (f * h) = ∑ a : Fin N0, ∑ b : Fin N1,
      pderiv (Sum.inr ((false, t), a, b)) f * pderiv (Sum.inr ((true, t), a, b)) h := by
  rw [lap_apply]
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro b _
  have e1 : pderiv (Sum.inr ((true, t), a, b)) (f * h) = f * pderiv (Sum.inr ((true, t), a, b)) h := by
    rw [Derivation.leibniz, hf, smul_zero, add_zero, smul_eq_mul]
  rw [e1, Derivation.leibniz, pderiv_comm' (Sum.inr ((false, t), a, b)), hh, map_zero, smul_zero, zero_add,
    smul_eq_mul, mul_comm]

def Gf (t : H) (f h : PolyXZ H N0 N1) : PolyXZ H N0 N1 :=
  ∑ a : Fin N0, ∑ b : Fin N1,
    pderiv (Sum.inr ((false, t), a, b)) f * pderiv (Sum.inr ((true, t), a, b)) h

lemma Gf_cons (t : H) (c : ℕ × Fin N1) (P h : PolyXZ H N0 N1) :
    Gf t (lfo t c * P) h = P * dRow (N0 := N0) t c.1 c.2 h + lfo t c * Gf t P h := by
  have h1 : ∀ a : Fin N0, ∑ b : Fin N1, P * (if b = c.2 then X (Sum.inl ((false, t), c.1, a)) else 0) *
      pderiv (Sum.inr ((true, t), a, b)) h =
      P * (X (Sum.inl ((false, t), c.1, a)) * pderiv (Sum.inr ((true, t), a, c.2)) h) := by
    intro a
    rw [Finset.sum_eq_single c.2]
    · simp [mul_assoc]
    · intro b _ hb
      simp [hb]
    · simp
  simp only [Gf, Derivation.leibniz, smul_eq_mul, pz_lfo, add_mul, Finset.sum_add_distrib]
  rw [Finset.sum_congr rfl (fun a _ => h1 a), dRow_apply]
  simp only [Finset.mul_sum, mul_assoc]
  rw [add_comm]

lemma zf_dRow (t : H) (r : ℕ) (b : Fin N1) (h : PolyXZ H N0 N1)
    (hh : ∀ a b, pderiv (Sum.inr ((false, t), a, b)) h = 0) :
    ∀ a b', pderiv (Sum.inr ((false, t), a, b')) (dRow (N0 := N0) t r b h) = 0 := by
  intro a b'

  rw [dRow_apply, map_sum]
  apply Finset.sum_eq_zero
  intro a' _
  rw [Derivation.leibniz, pderiv_comm' (Sum.inr ((false, t), a, b')), hh, map_zero, smul_zero, zero_add,
    pd_inr_X_inl, smul_zero]

lemma dRow_comm (t : H) (r : ℕ) (b : Fin N1) (r' : ℕ) (b' : Fin N1) (P : PolyXZ H N0 N1) :
    dRow (N0 := N0) t r b (dRow t r' b' P) = dRow t r' b' (dRow t r b P) := by

  simp only [dRow_apply, map_sum, Derivation.leibniz, pd_inr_X_inl, smul_eq_mul, mul_zero,
  Finset.sum_const_zero, add_zero, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro a _
  apply Finset.sum_congr rfl
  intro a' _
  rw [pderiv_comm' (Sum.inr ((true, t), a, b))]
  ring

lemma sdeg_comm {A : Type} [CommRing A] {ι : Type} (d : ι → Derivation ℤ A A) (E : A → A)
    (hE : ∀ j x, d j (E x) = E (d j x)) (hE0 : E 0 = 0) :
    ∀ (k : ℕ) (h : A), SDegD d k h → SDegD d k (E h) := by
  intro k
  induction k with
  | zero =>
    intro h hk
    simp only [SDegD] at hk ⊢
    intro j
    rw [hE, hk j, hE0]
  | succ k ih =>
    intro h hk
    simp only [SDegD] at hk ⊢
    intro j
    rw [hE]
    exact ih _ (hk j)

def RelL (L' : List (ℕ × Fin N1)) (k' : ℕ) (L : List (ℕ × Fin N1)) (k : ℕ) : Prop :=
  (nzc L' + 1 ≤ nzc L ∧ z0c L' ≤ z0c L ∧ k' ≤ k) ∨
    (nzc L' ≤ nzc L ∧ z0c L' + 1 ≤ z0c L ∧ k' + 1 ≤ k)

def GS (t : H) (L : List (ℕ × Fin N1)) (k : ℕ) : Set (PolyXZ H N0 N1) :=
  {Q | ∃ (L' : List (ℕ × Fin N1)) (h' : PolyXZ H N0 N1) (k' : ℕ), Q = tmL t L' h' ∧
    (∀ a b, pderiv (Sum.inr ((false, t), a, b)) h' = 0) ∧
    SDegD (fun b : Fin N1 => dRow (N0 := N0) t 0 b) k' h' ∧ RelL L' k' L k}

private def rowCount (L : List (ℕ × Fin N1)) (r : ℕ) : ℕ :=
  (L.map Prod.fst).count r

private theorem rowCount_cons (c : ℕ × Fin N1) (L : List (ℕ × Fin N1)) (r : ℕ) :
    rowCount (c :: L) r = rowCount L r + if c.1 = r then 1 else 0 := by
  simp [rowCount, List.count_cons]

private def RowStep (L' : List (ℕ × Fin N1)) (degree' : ℕ → ℕ)
    (L : List (ℕ × Fin N1)) (degree : ℕ → ℕ) (rows : Finset ℕ) : Prop :=
  ∃ r ∈ rows, ∀ j,
    rowCount L' j + (if j = r then 1 else 0) ≤ rowCount L j ∧
      degree' j + (if j = r then 1 else 0) ≤ degree j

private theorem rowStep_budget_lt {L' L : List (ℕ × Fin N1)} {degree' degree : ℕ → ℕ}
    {rows : Finset ℕ} (h : RowStep L' degree' L degree rows) :
    (∑ j ∈ rows, min (rowCount L' j) (degree' j)) <
      ∑ j ∈ rows, min (rowCount L j) (degree j) := by
  obtain ⟨r, hr, h⟩ := h
  refine Finset.sum_lt_sum (fun j _ => ?_) ⟨r, hr, ?_⟩
  · obtain ⟨hcount, hdegree⟩ := h j
    omega
  · obtain ⟨hcount, hdegree⟩ := h r
    simp at hcount hdegree
    omega

private def RowGenerators (t : H) (L : List (ℕ × Fin N1)) (degree : ℕ → ℕ)
    (rows : Finset ℕ) : Set (PolyXZ H N0 N1) :=
  {Q | ∃ (L' : List (ℕ × Fin N1)) (h' : PolyXZ H N0 N1) (degree' : ℕ → ℕ),
    Q = tmL t L' h' ∧ (∀ c ∈ L', c.1 ∈ rows) ∧
    (∀ a b, pderiv (Sum.inr ((false, t), a, b)) h' = 0) ∧
    (∀ r, SDegD (fun b : Fin N1 => dRow (N0 := N0) t r b) (degree' r) h') ∧
    RowStep L' degree' L degree rows}

private theorem gf_mem_rows (t : H) (rows : Finset ℕ) (L : List (ℕ × Fin N1)) :
    ∀ (h : PolyXZ H N0 N1) (degree : ℕ → ℕ), (∀ c ∈ L, c.1 ∈ rows) →
      (∀ a b, pderiv (Sum.inr ((false, t), a, b)) h = 0) →
      (∀ r, SDegD (fun b : Fin N1 => dRow (N0 := N0) t r b) (degree r) h) →
      Gf t (L.map (lfo (N0 := N0) t)).prod h ∈ Submodule.span ℤ (RowGenerators t L degree rows) := by
  induction L with
  | nil =>
    intro h degree _ _ _
    simp [Gf]
  | cons c L ih =>
    intro h degree hrows hh hdegree
    have hc : c.1 ∈ rows := hrows c (by simp)
    have hL : ∀ e ∈ L, e.1 ∈ rows := fun e he => hrows e (List.mem_cons_of_mem _ he)
    rw [List.map_cons, List.prod_cons, Gf_cons]
    apply add_mem
    · cases hcap : degree c.1 with
      | zero =>
        have hz := hdegree c.1
        rw [hcap] at hz
        rw [show dRow (N0 := N0) t c.1 c.2 h = 0 from hz c.2, mul_zero]
        exact zero_mem _
      | succ k =>
        let degree' : ℕ → ℕ := fun r => if r = c.1 then k else degree r
        apply Submodule.subset_span
        refine ⟨L, dRow (N0 := N0) t c.1 c.2 h, degree', rfl, hL, zf_dRow t _ _ h hh, ?_, ?_⟩
        · intro r
          by_cases hr : r = c.1
          · subst r
            have hlocal := hdegree c.1
            rw [hcap] at hlocal
            have hself : degree' c.1 = k := by simp [degree']
            rw [hself]
            exact hlocal c.2
          · simpa [degree', hr] using
              sdeg_comm _ (dRow (N0 := N0) t c.1 c.2) (fun j x => dRow_comm t r j c.1 c.2 x)
                (map_zero _) (degree r) h (hdegree r)
        · refine ⟨c.1, hc, fun r => ?_⟩
          rw [rowCount_cons]
          by_cases hr : r = c.1
          · subst r
            simp [degree', hcap]
          · have hrc : c.1 ≠ r := Ne.symm hr
            simp [degree', hr, hrc]
    · have key : ∀ x ∈ Submodule.span ℤ (RowGenerators (N0 := N0) t L degree rows),
          lfo t c * x ∈ Submodule.span ℤ (RowGenerators (N0 := N0) t (c :: L) degree rows) := by
        intro x hx
        induction hx using Submodule.span_induction with
        | mem x hx =>
          obtain ⟨L', h', degree', rfl, hrows', hz, hd, r, hr, hstep⟩ := hx
          apply Submodule.subset_span
          refine ⟨c :: L', h', degree', ?_, ?_, hz, hd, r, hr, ?_⟩
          · simp only [tmL, List.map_cons, List.prod_cons, mul_assoc]
          · intro e he
            rcases List.mem_cons.1 he with rfl | he
            · exact hc
            · exact hrows' e he
          · intro j
            obtain ⟨hcount, hdegree⟩ := hstep j
            rw [rowCount_cons, rowCount_cons]
            exact ⟨by omega, hdegree⟩
        | zero => rw [mul_zero]; exact zero_mem _
        | add x y _ _ hx hy => rw [mul_add]; exact add_mem hx hy
        | smul a x _ hx => rw [mul_smul_comm]; exact Submodule.smul_mem _ a hx
      exact key _ (ih h degree hL hh hdegree)

private theorem lap_tm_rows_zero (t : H) (rows : Finset ℕ) (n : ℕ) :
    ∀ (L : List (ℕ × Fin N1)) (h : PolyXZ H N0 N1) (degree : ℕ → ℕ),
      (∀ c ∈ L, c.1 ∈ rows) →
      (∀ a b, pderiv (Sum.inr ((false, t), a, b)) h = 0) →
      (∀ r, SDegD (fun b : Fin N1 => dRow (N0 := N0) t r b) (degree r) h) →
      (∑ r ∈ rows, min (rowCount L r) (degree r)) < n →
      (lapT N0 N1 t ^ n) (tmL t L h) = 0 := by
  induction n with
  | zero => intro L h degree _ _ _ hb; omega
  | succ n ih =>
    intro L h degree hrows hh hdegree hb
    rw [pow_succ, Module.End.mul_apply]
    have e : lapT N0 N1 t (tmL t L h) = Gf t (L.map (lfo (N0 := N0) t)).prod h :=
      lap_mul t _ h (pw_prod t L) hh
    rw [e]
    have key : ∀ x ∈ Submodule.span ℤ (RowGenerators (N0 := N0) t L degree rows),
        (lapT N0 N1 t ^ n) x = 0 := by
      intro x hx
      induction hx using Submodule.span_induction with
      | mem x hx =>
        obtain ⟨L', h', degree', rfl, hrows', hz, hd, hstep⟩ := hx
        exact ih L' h' degree' hrows' hz hd (by have := rowStep_budget_lt hstep; omega)
      | zero => exact map_zero _
      | add x y _ _ hx hy => rw [map_add (f := _), hx, hy, add_zero]
      | smul a x _ hx => rw [map_smul, hx, smul_zero]
    exact key _ (gf_mem_rows t rows L h degree hrows hh hdegree)

def MS (t : H) (a b : ℕ) : Submodule ℤ (PolyXZ H N0 N1) :=
  Submodule.span ℤ {Q | ∃ L : List (ℕ × Fin N1), Q = tmL t L 1 ∧ nzc L = a ∧ z0c L = b}

private def RowSpan (t : H) (rows : Finset ℕ) (counts : ℕ → ℕ) :
    Submodule ℤ (PolyXZ H N0 N1) :=
  Submodule.span ℤ {Q | ∃ L : List (ℕ × Fin N1), Q = tmL t L 1 ∧
    (∀ c ∈ L, c.1 ∈ rows) ∧ ∀ r, rowCount L r = counts r}

private theorem rowSpan_mul (t : H) (rows : Finset ℕ) {a b : ℕ → ℕ} {P Q : PolyXZ H N0 N1}
    (hP : P ∈ RowSpan t rows a) (hQ : Q ∈ RowSpan t rows b) :
    P * Q ∈ RowSpan t rows (fun r => a r + b r) := by
  induction hP using Submodule.span_induction with
  | mem P hP =>
    obtain ⟨L, rfl, hL, eL⟩ := hP
    induction hQ using Submodule.span_induction with
    | mem Q hQ =>
      obtain ⟨M, rfl, hM, eM⟩ := hQ
      apply Submodule.subset_span
      refine ⟨L ++ M, by simp [tmL], ?_, ?_⟩
      · intro c hc
        exact (List.mem_append.1 hc).elim (hL c) (hM c)
      · intro r
        simp only [rowCount, List.map_append, List.count_append]
        exact congrArg₂ (· + ·) (eL r) (eM r)
    | zero => rw [mul_zero]; exact zero_mem _
    | add x y _ _ hx hy => rw [mul_add]; exact add_mem hx hy
    | smul a x _ hx => rw [mul_smul_comm]; exact Submodule.smul_mem _ a hx
  | zero => rw [zero_mul]; exact zero_mem _
  | add x y _ _ hx hy => rw [add_mul]; exact add_mem hx hy
  | smul a x _ hx => rw [smul_mul_assoc]; exact Submodule.smul_mem _ a hx

private theorem rowSpan_prod (t : H) (rows : Finset ℕ) {ι : Type} (s : Finset ι)
    (f : ι → PolyXZ H N0 N1) (counts : ι → ℕ → ℕ)
    (h : ∀ i ∈ s, f i ∈ RowSpan t rows (counts i)) :
    (∏ i ∈ s, f i) ∈ RowSpan t rows (fun r => ∑ i ∈ s, counts i r) := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    simp only [Finset.prod_empty, Finset.sum_empty]
    apply Submodule.subset_span
    exact ⟨[], by simp [tmL], by simp, by simp [rowCount]⟩
  | insert i s hi ih =>
    simp only [Finset.prod_insert hi, Finset.sum_insert hi]
    exact rowSpan_mul t rows (h i (Finset.mem_insert_self i s))
      (ih (fun j hj => h j (Finset.mem_insert_of_mem hj)))

private theorem rowCount_ofFn {p : ℕ} (g : Fin p → ℕ × Fin N1) (r : ℕ) :
    rowCount (List.ofFn g) r = ∑ i : Fin p, (if (g i).1 = r then 1 else 0) := by
  induction p with
  | zero => simp [rowCount]
  | succ p ih =>
    rw [List.ofFn_succ, rowCount_cons, ih, Fin.sum_univ_succ, add_comm]

private theorem minor_mem_rows (t : H) (rows : Finset ℕ) (p : ℕ)
    (hp : ∀ r < p, r ∈ rows) (I : Fin p ↪o Fin N1) :
    minorXZ (Lt := Bool × H) N0 N1 (false, t) p I ∈
      RowSpan t rows (fun r => if r < p then 1 else 0) := by
  classical
  unfold minorXZ
  rw [Matrix.det_apply]
  apply Submodule.sum_mem
  intro σ _
  rw [Units.smul_def]
  apply Submodule.smul_mem
  apply Submodule.subset_span
  refine ⟨List.ofFn fun i : Fin p => (((σ i : Fin p) : ℕ), I i), ?_, ?_, ?_⟩
  · simp only [tmL, List.map_ofFn, List.prod_ofFn, mul_one, Matrix.of_apply]
    rfl
  · intro c hc
    obtain ⟨i, rfl⟩ := List.mem_ofFn.1 hc
    exact hp _ (σ i).2
  · intro r
    rw [rowCount_ofFn, Equiv.sum_comp σ (fun j : Fin p => if (j : ℕ) = r then 1 else 0)]
    change (∑ j : Fin p, if (j : ℕ) = r then 1 else 0) = (if r < p then 1 else 0)
    by_cases hr : r < p
    · rw [ite_eq_left hr, Finset.sum_eq_single ⟨r, hr⟩]
      · simp
      · intro j _ hj
        exact ite_eq_right (fun e => hj (Fin.ext e))
      · simp
    · rw [ite_eq_right hr]
      apply Finset.sum_eq_zero
      intro j _
      exact ite_eq_right (fun e => hr (by simpa only [e] using j.2))

theorem lap_product_minors_rows_zero (t : H) (α : YoungDiagram)
    (I : ∀ c : Fin (α.rowLen 0), Fin (α.colLen c) ↪o Fin N1)
    (g : PolyXZ H N0 N1) (degree : ℕ → ℕ) (rows : Finset ℕ) (n : ℕ)
    (hrows : ∀ r c, (r, c) ∈ α → r ∈ rows)
    (hg : ∀ a b, pderiv (Sum.inr ((false, t), a, b)) g = 0)
    (hdegree : ∀ r, SDegD (fun b : Fin N1 => dRow (N0 := N0) t r b) (degree r) g)
    (hn : (∑ r ∈ rows, min (α.rowLen r) (degree r)) < n) :
    (lapT N0 N1 t ^ n) ((∏ c : Fin (α.rowLen 0),
      minorXZ (Lt := Bool × H) N0 N1 (false, t) (α.colLen c) (I c)) * g) = 0 := by
  classical
  let counts : ℕ → ℕ := fun r => ∑ c : Fin (α.rowLen 0), if r < α.colLen c then 1 else 0
  have hF : (∏ c : Fin (α.rowLen 0), minorXZ (Lt := Bool × H) N0 N1 (false, t) (α.colLen c) (I c)) ∈
      RowSpan t rows counts :=
    rowSpan_prod t rows Finset.univ _ _ fun c _ =>
      minor_mem_rows t rows _ (fun r hr => hrows r c (YoungDiagram.mem_iff_lt_colLen.mpr hr)) (I c)
  have hcounts (r : ℕ) : counts r ≤ α.rowLen r := by
    unfold counts
    rw [Finset.sum_boole, ← Finset.card_range (α.rowLen r)]
    apply Finset.card_le_card_of_injOn (fun c : Fin (α.rowLen 0) => (c : ℕ))
    · intro c hc
      have hr := (Finset.mem_filter.1 hc).2
      exact Finset.mem_range.2 (YoungDiagram.mem_iff_lt_rowLen.1 (YoungDiagram.mem_iff_lt_colLen.2 hr))
    · intro a _ b _ e
      exact Fin.ext e
  have key : ∀ x ∈ RowSpan (N0 := N0) (N1 := N1) t rows counts, (lapT N0 N1 t ^ n) (x * g) = 0 := by
    intro x hx
    induction hx using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨L, rfl, hL, eL⟩ := hx
      have e : tmL t L 1 * g = tmL t L g := by simp [tmL]
      rw [e]
      refine lap_tm_rows_zero t rows n L g degree hL hg hdegree (lt_of_le_of_lt ?_ hn)
      exact Finset.sum_le_sum fun r _ => by rw [eL]; exact min_le_min_right _ (hcounts r)
    | zero => rw [zero_mul, map_zero]
    | add x y _ _ hx hy => rw [add_mul, map_add (f := _), hx, hy, add_zero]
    | smul a x _ hx => rw [smul_mul_assoc, map_smul, hx, smul_zero]
  exact key _ hF

end LapFormsSec

end PI.EntAtD.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.LapForms =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.MinorAff =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.MinorAff", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators

namespace PI.EntAtD.W

open PI.EntAtD

section DerDet

variable {R A : Type} [CommRing R] [CommRing A] [Algebra R A]

theorem minorAff_derProd {ι : Type} [DecidableEq ι] (D : Derivation R A A) (f : ι → A) (s : Finset ι) :
    D (∏ j ∈ s, f j) = ∑ i ∈ s, (∏ j ∈ s.erase i, f j) * D (f i) := by
  refine Finset.induction_on s ?_ ?_
  · simp
  · intro i s hi ih
    rw [Finset.prod_insert hi, Derivation.leibniz, ih, Finset.sum_insert hi, Finset.erase_insert hi,
      smul_eq_mul, smul_eq_mul, add_comm, Finset.mul_sum]
    congr 1
    refine Finset.sum_congr rfl fun k hk => ?_
    rw [Finset.erase_insert_of_ne (by rintro rfl; exact hi hk),
      Finset.prod_insert (fun h => hi (Finset.mem_of_mem_erase h)), mul_assoc]

theorem minorAff_derDet (D : Derivation R A A) {k : ℕ} (M : Matrix (Fin k) (Fin k) A) :
    D M.det = ∑ i, (M.updateCol i (fun r => D (M r i))).det := by
  classical

  simp only [Matrix.det_apply, map_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun σ _ => ?_
  rw [Units.smul_def, map_zsmul, minorAff_derProd, Finset.smul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  have h1 : ∏ j, (M.updateCol i (fun r => D (M r i))) (σ j) j =
      D (M (σ i) i) * ∏ j ∈ Finset.univ.erase i, M (σ j) j := by
    rw [← Finset.mul_prod_erase Finset.univ _ (Finset.mem_univ i), Matrix.updateCol_self]
    congr 1
    refine Finset.prod_congr rfl fun j hj => ?_
    exact Matrix.updateCol_ne (Finset.ne_of_mem_erase hj)
  rw [Units.smul_def, h1, mul_comm]

theorem minorAff_sumApply {ι : Type} [DecidableEq ι] (s : Finset ι) (D : ι → Derivation R A A) (x : A) :
    (∑ i ∈ s, D i) x = ∑ i ∈ s, D i x := by
  refine Finset.induction_on s ?_ ?_
  · simp
  · intro i s hi ih
    rw [Finset.sum_insert hi, Finset.sum_insert hi, Derivation.add_apply, ih]

end DerDet

theorem dRow_dRow_minorXZ_eq_zero (H : Type) (N0 N1 : ℕ) (t : H) (row k : ℕ)
    (I : Fin k ↪o Fin N1) (b b' : Fin N1) :
    dRow (N0 := N0) t row b (dRow (N0 := N0) t row b'
      (minorXZ (Lt := Bool × H) N0 N1 (true, t) k I)) = 0 := by
  classical
  let y : Fin k → PolyXZ H N0 N1 := fun i => ∑ a : Fin N0,
    (MvPolynomial.X (Sum.inl ((false, t), row, a)) : PolyXZ H N0 N1) *
      MvPolynomial.X (Sum.inl ((true, t), (i : ℕ), a))
  have hD : ∀ (bb : Fin N1) (f : PolyXZ H N0 N1), dRow (N0 := N0) t row bb f =
      ∑ a : Fin N0, (MvPolynomial.X (Sum.inl ((false, t), row, a)) : PolyXZ H N0 N1) *
        MvPolynomial.pderiv (R := ℤ) (Sum.inr ((true, t), a, bb)) f := by
    intro bb f
    simp only [dRow]
    rw [minorAff_sumApply]
    simp only [Derivation.smul_apply, smul_eq_mul]
  have hE : ∀ (bb c : Fin N1) (i : Fin k), dRow (N0 := N0) t row bb
      (∑ a : Fin N0, (MvPolynomial.X (Sum.inl ((true, t), (i : ℕ), a)) : PolyXZ H N0 N1) *
        MvPolynomial.X (Sum.inr ((true, t), a, c))) = if c = bb then y i else 0 := by
    intro bb c i
    rw [hD]
    by_cases hc : c = bb
    · subst hc

      simp [y, map_sum, Derivation.leibniz, MvPolynomial.pderiv_X, Pi.single_apply]

    · simp [map_sum, Derivation.leibniz, MvPolynomial.pderiv_X, hc]
  have hy : ∀ (bb : Fin N1) (i : Fin k), dRow (N0 := N0) t row bb (y i) = 0 := by
    intro bb i
    rw [hD]

    simp [y, map_sum, Derivation.leibniz, MvPolynomial.pderiv_X]
  simp only [minorXZ]

  rw [minorAff_derDet, map_sum]
  refine Finset.sum_eq_zero fun c _ => ?_
  by_cases hc : I c = b'
  · have hcol : (fun r => dRow (N0 := N0) t row b' (Matrix.of (fun i k' : Fin k => ∑ a : Fin N0,
        (MvPolynomial.X (Sum.inl ((true, t), (i : ℕ), a)) : PolyXZ H N0 N1) *
          MvPolynomial.X (Sum.inr ((true, t), a, I k'))) r c)) = y := by
      funext r
      rw [Matrix.of_apply, hE, if_pos hc]
    rw [hcol, minorAff_derDet]
    refine Finset.sum_eq_zero fun l _ => ?_
    by_cases hl : l = c
    · subst hl
      apply Matrix.det_eq_zero_of_column_eq_zero l
      intro r
      simp only [Matrix.updateCol_self, hy]
    · by_cases hIl : I l = b
      · apply Matrix.det_zero_of_column_eq hl
        intro r
        simp only [Matrix.updateCol_self, Matrix.updateCol_ne hl, Matrix.updateCol_ne (Ne.symm hl),
          Matrix.of_apply, hE, if_pos hIl]
      · apply Matrix.det_eq_zero_of_column_eq_zero l
        intro r
        simp only [Matrix.updateCol_self, Matrix.updateCol_ne hl, Matrix.of_apply, hE, if_neg hIl]
  · have hcol : (fun r => dRow (N0 := N0) t row b' (Matrix.of (fun i k' : Fin k => ∑ a : Fin N0,
        (MvPolynomial.X (Sum.inl ((true, t), (i : ℕ), a)) : PolyXZ H N0 N1) *
          MvPolynomial.X (Sum.inr ((true, t), a, I k'))) r c)) = fun _ => 0 := by
      funext r
      rw [Matrix.of_apply, hE, if_neg hc]
    rw [hcol]
    convert map_zero (dRow (N0 := N0) t row b)
    exact Matrix.det_eq_zero_of_column_eq_zero c fun r => Matrix.updateCol_self

end PI.EntAtD.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.MinorAff =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.SDegMul =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.SDegMul", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators

namespace PI.EntAtD.W

section SDeg

variable {A : Type} [CommRing A] {ι : Type} (d : ι → Derivation ℤ A A)

theorem sdegMul_zero : ∀ k : ℕ, SDegD d k (0 : A)
  | 0 => fun j => by simp
  | k + 1 => fun j => by simpa using sdegMul_zero k

theorem sdegMul_add : ∀ (k : ℕ) (a b : A), SDegD d k a → SDegD d k b → SDegD d k (a + b)
  | 0, a, b, ha, hb => fun j => by simp [map_add (f := _), ha j, hb j]
  | k + 1, a, b, ha, hb => fun j => by
    rw [map_add (f := _)]
    exact sdegMul_add k _ _ (ha j) (hb j)

theorem symbol_degree_mul : ∀ (n k l : ℕ) (f g : A), k + l = n → SDegD d k f → SDegD d l g → SDegD d n (f * g) := by
  intro n
  induction n with
  | zero =>
    intro k l f g hn hf hg
    obtain ⟨rfl, rfl⟩ : k = 0 ∧ l = 0 := ⟨by omega, by omega⟩
    intro j
    simp only [Derivation.leibniz, hf j, hg j, smul_zero, add_zero]
  | succ n ih =>
    intro k l f g hn hf hg j
    rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
    apply sdegMul_add
    · cases l with
      | zero => rw [show d j g = 0 from hg j, mul_zero]; exact sdegMul_zero d n
      | succ l => exact ih k l f (d j g) (by omega) hf (hg j)
    · cases k with
      | zero => rw [show d j f = 0 from hf j, mul_zero]; exact sdegMul_zero d n
      | succ k => exact ih l k g (d j f) (by omega) hg (hf j)

end SDeg

theorem pSDegMul : PSDegMul := by
  intro A _ ι d f g k l hf hg
  exact symbol_degree_mul d (k + l) k l f g rfl hf hg

end PI.EntAtD.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.SDegMul =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.HeartPderivMinor =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.HeartPderivMinor", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.LapForms\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.MinorAff\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.SDegMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace PI.EntAtD.W

open PI.EntAtD

section Ker

variable {A : Type} [CommRing A] (D : Derivation ℤ A A)

end Ker

private theorem derivation_prod_eq_zero_of_forall' {R A ι : Type} [CommRing R] [CommRing A] [Algebra R A]
    (D : Derivation R A A) (s : Finset ι) (f : ι → A) (h : ∀ i ∈ s, D (f i) = 0) :
    D (∏ i ∈ s, f i) = 0 := by
  classical
  revert h
  refine Finset.induction_on s ?_ ?_
  · intro _
    simp
  · intro i s hi ih h
    rw [Finset.prod_insert hi, Derivation.leibniz, h i (Finset.mem_insert_self i s),
      ih (fun j hj => h j (Finset.mem_insert_of_mem hj)), smul_zero, smul_zero, add_zero]

private theorem derivation_det_eq_zero_of_entries {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (D : Derivation R A A) {k : ℕ} (M : Matrix (Fin k) (Fin k) A) (h : ∀ i j, D (M i j) = 0) :
    D M.det = 0 := by

  rw [Matrix.det_apply, map_sum]
  refine Finset.sum_eq_zero fun σ _ => ?_
  rw [Units.smul_def, map_zsmul, derivation_prod_eq_zero_of_forall' D _ _ (fun i _ => h _ _), smul_zero]

theorem heart_pderiv_minor {Lt : Type} [Fintype Lt] [DecidableEq Lt] (N0 N1 : ℕ) (s s' : Lt) (hs : s ≠ s')
    (k : ℕ) (I : Fin k ↪o Fin N1) (a : Fin N0) (b : Fin N1) :
    MvPolynomial.pderiv (R := ℤ) (Sum.inr (s', a, b)) (minorXZ N0 N1 s k I) = 0 := by
  simp only [minorXZ]
  apply derivation_det_eq_zero_of_entries
  intro i j

  rw [Matrix.of_apply, map_sum]
  refine Finset.sum_eq_zero fun a0 _ => ?_
  rw [Derivation.leibniz, MvPolynomial.pderiv_X, MvPolynomial.pderiv_X]
  simp [hs]

private theorem derivation_finset_sum_apply' {R A ι : Type} [CommRing R] [CommRing A] [Algebra R A]
    (s : Finset ι) (D : ι → Derivation R A A) (x : A) : (∑ i ∈ s, D i) x = ∑ i ∈ s, D i x := by
  classical
  refine Finset.induction_on s ?_ ?_
  · simp
  · intro i s hi ih
    rw [Finset.sum_insert hi, Finset.sum_insert hi, Derivation.add_apply, ih]

theorem heart_dRow_zero {H : Type} {N0 N1 : ℕ} (t : H) (r : ℕ) (b : Fin N1) (f : PolyXZ H N0 N1)
    (h : ∀ a : Fin N0, MvPolynomial.pderiv (R := ℤ) (Sum.inr ((true, t), a, b)) f = 0) :
    dRow (N0 := N0) t r b f = 0 := by
  simp only [dRow]
  rw [derivation_finset_sum_apply']
  refine Finset.sum_eq_zero fun a _ => ?_
  rw [Derivation.smul_apply, h a, smul_zero]

theorem heart_sdeg_prod (hS : PSDegMul) {A : Type} [CommRing A] {ι : Type} (d : ι → Derivation ℤ A A)
    {κ : Type} [DecidableEq κ] (s : Finset κ) (f : κ → A) (k : κ → ℕ) :
    (∀ i ∈ s, SDegD d (k i) (f i)) → SDegD d (∑ i ∈ s, k i) (∏ i ∈ s, f i) := by
  refine Finset.induction_on s ?_ ?_
  · intro _
    rw [Finset.sum_empty, Finset.prod_empty]
    intro j
    exact (d j).map_one_eq_zero
  · intro i s hi ih h
    rw [Finset.sum_insert hi, Finset.prod_insert hi]
    exact hS A ι d _ _ _ _ (h i (Finset.mem_insert_self i s))
      (ih fun j hj => h j (Finset.mem_insert_of_mem hj))

private theorem factor_for_lapT (H : Type) [Fintype H] [DecidableEq H] (N0 N1 : ℕ)
    (nu : Bool × H → YoungDiagram) (I : ColChoice N1 nu) (t : H) :
    ∃ R : PolyXZ H N0 N1,
      Gxz N0 N1 nu I =
        (∏ c : Fin ((nu (false, t)).rowLen 0),
          minorXZ N0 N1 (false, t) ((nu (false, t)).colLen c) (I (false, t) c)) *
        ((∏ c : Fin ((nu (true, t)).rowLen 0),
          minorXZ N0 N1 (true, t) ((nu (true, t)).colLen c) (I (true, t) c)) * R) ∧
      (∀ a b, pd (Sum.inr ((false, t), a, b))
        ((∏ c : Fin ((nu (true, t)).rowLen 0),
          minorXZ N0 N1 (true, t) ((nu (true, t)).colLen c) (I (true, t) c)) * R) = 0) ∧
      (∀ a b, MvPolynomial.pderiv (R := ℤ) (Sum.inr ((true, t), a, b)) R = 0) := by
  let P : Bool × H → PolyXZ H N0 N1 := fun s => ∏ c : Fin ((nu s).rowLen 0),
    minorXZ (Lt := Bool × H) N0 N1 s ((nu s).colLen c) (I s c)
  let R : PolyXZ H N0 N1 := ∏ s ∈ (Finset.univ.erase (false, t)).erase (true, t), P s
  have hne : (true, t) ≠ (false, t) := by simp
  have hmem : (true, t) ∈ Finset.univ.erase (false, t) := by simp
  have hG : Gxz N0 N1 nu I = P (false, t) * (P (true, t) * R) := by
    show (∏ s, P s) = _
    rw [← Finset.mul_prod_erase Finset.univ P (Finset.mem_univ (false, t)),
      ← Finset.mul_prod_erase (Finset.univ.erase (false, t)) P hmem]
  have hnoP : ∀ (s s' : Bool × H), s ≠ s' → ∀ (a : Fin N0) (b : Fin N1),
      MvPolynomial.pderiv (R := ℤ) (Sum.inr (s', a, b)) (P s) = 0 := by
    intro s s' hs a b
    apply derivation_prod_eq_zero_of_forall'
    intro c _
    convert heart_pderiv_minor N0 N1 s s' hs _ (I s c) a b
  have hnoR : ∀ (s' : Bool × H), s' = (false, t) ∨ s' = (true, t) → ∀ (a : Fin N0) (b : Fin N1),
      MvPolynomial.pderiv (R := ℤ) (Sum.inr (s', a, b)) R = 0 := by
    intro s' hs' a b
    apply derivation_prod_eq_zero_of_forall'
    intro s hs
    apply hnoP s s' _ a b
    rintro rfl
    rcases hs' with rfl | rfl
    · exact Finset.ne_of_mem_erase (Finset.mem_of_mem_erase hs) rfl
    · exact Finset.ne_of_mem_erase hs rfl
  have h1 : ∀ (a : Fin N0) (b : Fin N1), pd (Sum.inr ((false, t), a, b)) (P (true, t) * R) = 0 := by
    intro a b
    show MvPolynomial.pderiv (R := ℤ) (Sum.inr ((false, t), a, b)) (P (true, t) * R) = 0
    rw [Derivation.leibniz, hnoP (true, t) (false, t) hne a b, hnoR (false, t) (Or.inl rfl) a b,
      smul_zero, smul_zero, add_zero]
  exact ⟨R, hG, h1, fun a b => hnoR (true, t) (Or.inr rfl) a b⟩

/-- Above the row-by-row contraction bound, the local Laplacian kills the product of minors. -/
theorem lapT_pow_Gxz_eq_zero_of_rowContractionBound
    (H : Type) [Fintype H] [DecidableEq H] (N0 N1 : ℕ) (nu : Bool × H → YoungDiagram)
    (I : ColChoice N1 nu) (t : H) (n : ℕ)
    (hn : rowContractionBound (nu (false, t)) (nu (true, t)) < n) :
    (lapT N0 N1 t ^ n) (Gxz N0 N1 nu I) = 0 := by
  obtain ⟨R, hG, h1, hR⟩ := factor_for_lapT H N0 N1 nu I t
  let P : PolyXZ H N0 N1 := ∏ c : Fin ((nu (true, t)).rowLen 0),
    minorXZ N0 N1 (true, t) ((nu (true, t)).colLen c) (I (true, t) c)
  have hdegree (row : ℕ) :
      SDegD (fun b : Fin N1 => dRow (N0 := N0) t row b) ((nu (true, t)).rowLen 0) (P * R) := by
    have hR0 : SDegD (fun b : Fin N1 => dRow (N0 := N0) t row b) 0 R := by
      intro b
      exact heart_dRow_zero t row b R (fun a => hR a b)
    have hP := heart_sdeg_prod pSDegMul (fun b : Fin N1 => dRow (N0 := N0) t row b)
      Finset.univ _ (fun _ => 1)
      (fun c _ j j' => dRow_dRow_minorXZ_eq_zero H N0 N1 t row _ (I (true, t) c) j' j)
    rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin, smul_eq_mul, mul_one] at hP
    exact pSDegMul _ _ _ P R _ 0 hP hR0
  rw [hG]
  exact lap_product_minors_rows_zero t (nu (false, t)) (I (false, t)) (P * R)
    (fun _ => (nu (true, t)).rowLen 0) (insert 0 ((nu (false, t)).cells.image Prod.fst)) n
    (fun r c h => Finset.mem_insert_of_mem (Finset.mem_image.2 ⟨(r, c), (YoungDiagram.mem_cells _).2 h, rfl⟩))
    h1 hdegree hn

end PI.EntAtD.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.HeartPderivMinor =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Vanish =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Vanish", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.HeartPderivMinor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace PI.EntAtD.W

open PI.EntAtD

theorem list_prod_eq_mul_of_mem {M : Type} [Monoid M] (x : M) :
    ∀ l : List M, (∀ y ∈ l, Commute y x) → x ∈ l → ∃ r : M, l.prod = r * x := by
  intro l
  induction l with
  | nil =>
    intro _ hx
    exact absurd hx List.not_mem_nil
  | cons a l ih =>
    intro hc hx
    have hc' : ∀ y ∈ l, Commute y x := fun y hy => hc y (List.mem_cons_of_mem _ hy)
    rcases List.mem_cons.1 hx with h | h
    · subst a
      exact ⟨l.prod, by rw [List.prod_cons, (Commute.list_prod_left l x hc').eq]⟩
    · obtain ⟨r, hr⟩ := ih hc' h
      exact ⟨a * r, by rw [List.prod_cons, hr, mul_assoc]⟩

private theorem acon_eq_zero_of_lapT_pow (hB : PBridge) (hC : PLapComm)
    (H : Type) [Fintype H] [DecidableEq H] (N0 N1 : ℕ) (nu : Bool × H → YoungDiagram)
    (I : ColChoice N1 nu) (m : XV H N0 →₀ ℕ) (κ2 : ZV H N0 N1 →₀ ℕ) (n : H → ℕ) (t : H)
    (hZ : (lapT N0 N1 t ^ n t) (Gxz N0 N1 nu I) = 0) :
    Acon (Gxz N0 N1 nu I) m κ2 n = 0 := by
  have hzero : lapAll N0 N1 n (Gxz N0 N1 nu I) = 0 := by
    obtain ⟨r, hr⟩ := list_prod_eq_mul_of_mem (lapT (H := H) N0 N1 t ^ n t)
      ((Finset.univ : Finset H).toList.map fun t => lapT N0 N1 t ^ n t)
      (fun y hy => by
        obtain ⟨t', _, rfl⟩ := List.mem_map.1 hy
        exact (hC H N0 N1 t' t).pow_pow _ _)
      (List.mem_map.2 ⟨t, Finset.mem_toList.2 (Finset.mem_univ t), rfl⟩)
    unfold lapAll
    rw [hr, mul_apply_eq_comp, hZ, map_zero]
  have h := hB H N0 N1 (Gxz N0 N1 nu I) m κ2 n
  rw [hzero, AddMonoidAlgebra.coeff_zero] at h
  rcases mul_eq_zero.1 h with h | h
  · exact absurd h (Finset.prod_ne_zero_iff.2 fun t' _ => by exact_mod_cast (Nat.factorial_ne_zero (n t')))
  · exact h

/-- Terms beyond the row-by-row contraction bound vanish in the kernel expansion. -/
theorem acon_eq_zero_of_rowContractionBound (hB : PBridge) (hC : PLapComm)
    (H : Type) [Fintype H] [DecidableEq H] (N0 N1 : ℕ) (nu : Bool × H → YoungDiagram)
    (I : ColChoice N1 nu) (m : XV H N0 →₀ ℕ) (κ2 : ZV H N0 N1 →₀ ℕ) (n : H → ℕ) (t : H)
    (ht : rowContractionBound (nu (false, t)) (nu (true, t)) < n t) :
    Acon (Gxz N0 N1 nu I) m κ2 n = 0 :=
  acon_eq_zero_of_lapT_pow hB hC H N0 N1 nu I m κ2 n t
    (lapT_pow_Gxz_eq_zero_of_rowContractionBound H N0 N1 nu I t (n t) ht)

end PI.EntAtD.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Vanish =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CoreTermLe =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CoreTermLe", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Vanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace PI.EntAtD.W

open PI.EntAtD

theorem coreTerm_le {H : Type} [Fintype H] (p : ℕ) [Fact p.Prime] (S : ℂ_[p]) (ut : H → ℂ_[p])
    (hS : ‖S‖ ≤ (p : ℝ) ^ ((1 : ℝ) / 2)) (hut : ∀ t, ‖ut t‖ ≤ 1) (X : ℂ_[p]) (hX : ‖X‖ ≤ 1) (A : ℤ)
    (n c : H → ℕ) (hn : ∀ t, n t ≤ c t) :
    ‖X * (∏ t : H, (-(S * ut t)) ^ n t) * ((A : ℤ) : ℂ_[p])‖ ≤
      (p : ℝ) ^ ((∑ t : H, (c t : ℝ)) / 2) := by
  have hp1 : (1 : ℝ) ≤ p := by exact_mod_cast (Fact.out : p.Prime).one_lt.le
  have hp0 : (0 : ℝ) < p := by linarith
  have hq0 : (0 : ℝ) ≤ (p : ℝ) ^ ((1 : ℝ) / 2) := Real.rpow_nonneg hp0.le _
  have hq1 : (1 : ℝ) ≤ (p : ℝ) ^ ((1 : ℝ) / 2) := Real.one_le_rpow hp1 (by norm_num)
  have hA : ‖((A : ℤ) : ℂ_[p])‖ ≤ 1 := IsUltrametricDist.norm_intCast_le_one ℂ_[p] A
  have h2 : ∏ t : H, ‖(-(S * ut t)) ^ n t‖ ≤ (p : ℝ) ^ ((∑ t : H, (c t : ℝ)) / 2) := by
    calc ∏ t : H, ‖(-(S * ut t)) ^ n t‖ ≤ ∏ t : H, ((p : ℝ) ^ ((1 : ℝ) / 2)) ^ c t := by
          apply Finset.prod_le_prod₀ (fun t _ => norm_nonneg _)
          intro t _
          rw [norm_pow, norm_neg, norm_mul]
          calc (‖S‖ * ‖ut t‖) ^ n t ≤ ((p : ℝ) ^ ((1 : ℝ) / 2)) ^ n t := by
                apply pow_le_pow_left₀ (mul_nonneg (norm_nonneg _) (norm_nonneg _))
                calc ‖S‖ * ‖ut t‖ ≤ (p : ℝ) ^ ((1 : ℝ) / 2) * 1 :=
                      mul_le_mul hS (hut t) (norm_nonneg _) hq0
                  _ = _ := mul_one _
            _ ≤ _ := pow_le_pow_right₀ hq1 (hn t)
      _ = _ := by
          rw [Finset.sum_div, Real.rpow_sum_of_pos hp0]
          refine Finset.prod_congr rfl (fun t _ => ?_)
          rw [← Real.rpow_natCast, ← Real.rpow_mul hp0.le]
          congr 1
          ring
  rw [norm_mul, norm_mul, norm_prod]
  calc ‖X‖ * (∏ t : H, ‖(-(S * ut t)) ^ n t‖) * ‖((A : ℤ) : ℂ_[p])‖
      ≤ 1 * (p : ℝ) ^ ((∑ t : H, (c t : ℝ)) / 2) * 1 := by
        apply mul_le_mul (mul_le_mul hX h2 (Finset.prod_nonneg fun _ _ => norm_nonneg _) zero_le_one)
          hA (norm_nonneg _)
        exact mul_nonneg zero_le_one (Real.rpow_nonneg hp0.le _)
    _ = _ := by ring

private theorem core_of_cutoff (hE : PExpand)
    (cutoff : YoungDiagram → YoungDiagram → ℕ)
    (hV : ∀ (H : Type) [Fintype H] [DecidableEq H] (N0 N1 : ℕ)
      (nu : Bool × H → YoungDiagram) (I : ColChoice N1 nu)
      (m : XV H N0 →₀ ℕ) (κ2 : ZV H N0 N1 →₀ ℕ) (n : H → ℕ) (t : H),
      cutoff (nu (false, t)) (nu (true, t)) < n t → Acon (Gxz N0 N1 nu I) m κ2 n = 0)
    (H : Type) [Fintype H] [DecidableEq H] (N0 N1 p : ℕ) [Fact p.Prime]
    (nu : Bool × H → YoungDiagram) (Th : MvPowerSeries (ZV H N0 N1) ℂ_[p])
    (hTh : ShapeH H p Th) :
    KvalGe N0 N1 p nu Th (-((∑ t : H, (cutoff (nu (false, t)) (nu (true, t)) : ℝ)) / 2)) := by
  intro I m
  obtain ⟨S, hS, ut, hut, sg, hsg, rfl⟩ := hTh
  rw [hE H N0 N1 p S ut sg (Gxz N0 N1 nu I) m, neg_neg]
  have hp0 : (0 : ℝ) < p := by exact_mod_cast (Fact.out : p.Prime).pos
  have hB0 : (0 : ℝ) ≤ (p : ℝ) ^ ((∑ t : H, (cutoff (nu (false, t)) (nu (true, t)) : ℝ)) / 2) :=
    Real.rpow_nonneg hp0.le _
  refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg hB0 (fun κ2 _ => ?_)
  refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg hB0 (fun n _ => ?_)
  by_cases hn : ∃ t, cutoff (nu (false, t)) (nu (true, t)) < n t
  · obtain ⟨t, ht⟩ := hn
    rw [hV H N0 N1 nu I m κ2 n t ht]
    simpa using hB0
  · simp only [not_exists, not_lt] at hn
    exact coreTerm_le p S ut hS hut _ (hsg κ2) _ n (fun t => cutoff (nu (false, t)) (nu (true, t))) hn

/-- The discriminant-place kernel bound using all rows of the diagrams. -/
theorem core_of_rowContractionBound (hE : PExpand) (hB : PBridge) (hC : PLapComm)
    (H : Type) [Fintype H] [DecidableEq H] (N0 N1 p : ℕ) [Fact p.Prime]
    (nu : Bool × H → YoungDiagram) (Th : MvPowerSeries (ZV H N0 N1) ℂ_[p])
    (hTh : ShapeH H p Th) :
    KvalGe N0 N1 p nu Th
      (-((∑ t : H, (rowContractionBound (nu (false, t)) (nu (true, t)) : ℝ)) / 2)) :=
  core_of_cutoff hE rowContractionBound (acon_eq_zero_of_rowContractionBound hB hC) H N0 N1 p nu Th hTh

end PI.EntAtD.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CoreTermLe =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.EntAtDOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.EntAtDOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.PMinorAff\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CardCellsEqSumRowLen\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.CoreTermLe\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Expand\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.HeartPderivMinor\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Vanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace PI.EntAtD.W

open PI.EntAtD

theorem entAtD_of_all_rows (hX : PExpCoeff) (hB : PBridge) (hC : PLapComm) : PI.EntAtD.EntAtD := by
  apply entAtD_of_core
  intro H _ _ N0 N1 p _ nu Th hTh
  have h := core_of_rowContractionBound (expand_of hX) hB hC H N0 N1 p nu Th hTh
  have hsum : (∑ t : H, (rowContractionBound (nu (false, t)) (nu (true, t)) : ℝ)) ≤
      ∑ t : H, (cPr (nu (false, t)) (nu (true, t)) : ℝ) :=
    Finset.sum_le_sum fun t _ => by exact_mod_cast rowContractionBound_le_cPr (nu (false, t)) (nu (true, t))
  have hp : (1 : ℝ) ≤ p := by exact_mod_cast (Fact.out : p.Prime).one_lt.le
  intro I m
  refine (h I m).trans ?_
  apply Real.rpow_le_rpow_of_exponent_le hp
  linarith

end PI.EntAtD.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.EntAtDOf =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.EntAtD =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.EntAtD", "h": "module\n\npublic import Formalism.PeriodIntegrals.EntAtD\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.Bridge\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.EntAtDOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.ExpCoeff\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.LapComm\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.LapForms\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.MinorAff\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PartialDerivativeMinors.SDegMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem jet_bound_ramified_prime : PI.EntAtD.EntAtD :=
  PI.EntAtD.W.entAtD_of_all_rows PI.EntAtD.W.pExpCoeff PI.EntAtD.W.pBridge PI.EntAtD.W.pLapComm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.EntAtD =====
