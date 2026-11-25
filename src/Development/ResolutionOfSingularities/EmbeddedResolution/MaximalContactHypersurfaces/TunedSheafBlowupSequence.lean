module

public import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedIdeal
public import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheaf
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafOrderDecrease
public import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedIdealSheaf
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.ControlledTransform
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupDerivativeIdealBound
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PowerContainmentAndOrderLocus
import Mathlib.Tactic.Linter.Style
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafSmoothPullback
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupSmoothness
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedIdealPowers, Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafLcm, Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafPullback, Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafBlowupSequence

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedIdealPowers =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedIdealPowers", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace FunctorialResolution.EmbeddedResolution

theorem tuningWeight_sub (m : ℕ) (c c' : ℕ → ℕ) (h : ∀ j, c' j ≤ c j) :
    tuningWeight m (fun j => c j - c' j) = tuningWeight m c - tuningWeight m c' := by
  have h2 : (fun j => (c j - c' j) + c' j) = c := funext fun j => Nat.sub_add_cancel (h j)
  have key : tuningWeight m (fun j => c j - c' j) + tuningWeight m c' = tuningWeight m c := by
    rw [← tuningWeight_fun_add m (fun j => c j - c' j) c', h2]
  omega

private theorem tuningWeight_ite (m j q : ℕ) (hj : j ∈ Finset.range m) :
    tuningWeight m (fun i => if i = j then q else 0) = (m - j) * q := by
  simp only [tuningWeight_eq_sum]
  rw [Finset.sum_eq_single j]
  · simp
  · intro b _ hb
    simp [hb]
  · intro hcon
    exact absurd hj hcon

theorem exists_le_tuningWeight_eq_mul (m L r : ℕ) (hL : 0 < L)
    (hdvd : ∀ w : ℕ, 1 ≤ w → w ≤ m → w ∣ L) (c : ℕ → ℕ)
    (hc : r * L + (m - 1) * L ≤ tuningWeight m c) :
    ∃ c' : ℕ → ℕ, (∀ j, c' j ≤ c j) ∧ tuningWeight m c' = r * L := by
  induction r generalizing c with
  | zero =>
      refine ⟨fun _ => 0, fun i => Nat.zero_le _, ?_⟩
      simp [tuningWeight_eq_sum]
  | succ r ih =>
      have hWpos : 0 < tuningWeight m c :=
        lt_of_lt_of_le (mul_pos (Nat.succ_pos r) hL) (le_trans (Nat.le_add_right _ _) hc)
      have hm : 0 < m := by
        rcases Nat.eq_zero_or_pos m with h0 | h0
        · rw [h0] at hWpos
          simp [tuningWeight_eq_sum] at hWpos
        · exact h0
      have hlt1 : ∀ a b : ℕ, a < b → a ≤ b - 1 := by
        intro a b h
        omega
      have hex : ∃ j ∈ Finset.range m, L ≤ (m - j) * c j := by
        by_contra hcon
        push Not at hcon
        have h1 : tuningWeight m c ≤ ∑ _x ∈ Finset.range m, (L - 1) := by
          rw [tuningWeight_eq_sum]
          refine Finset.sum_le_sum ?_
          intro i hi
          exact hlt1 _ _ (hcon i hi)
        have h2 : ∑ _x ∈ Finset.range m, (L - 1) = m * (L - 1) := by
          rw [Finset.sum_const, Finset.card_range, smul_eq_mul]
        rw [h2] at h1
        have hA : m * (L - 1) + m = m * L := by
          have h' : L - 1 + 1 = L := Nat.sub_add_cancel hL
          calc m * (L - 1) + m = m * (L - 1 + 1) := by ring
            _ = m * L := by rw [h']
        have hB : (m - 1) * L + L = m * L := by
          have h' : m - 1 + 1 = m := Nat.sub_add_cancel hm
          calc (m - 1) * L + L = (m - 1 + 1) * L := by ring
            _ = m * L := by rw [h']
        have hC : L ≤ (r + 1) * L := by
          calc L = 1 * L := (one_mul L).symm
            _ ≤ (r + 1) * L := Nat.mul_le_mul (by omega) (le_refl L)
        have key : ∀ X Y Z W mm p : ℕ,
            X + Y ≤ Z → Z + mm = W → Y + p = W → p ≤ X → 1 ≤ mm → False := by
          intro X Y Z W mm p k1 k2 k3 k4 k5
          omega
        exact key ((r + 1) * L) ((m - 1) * L) (m * (L - 1)) (m * L) m L
          (le_trans hc h1) hA hB hC hm
      obtain ⟨j, hjmem, hjL⟩ := hex
      have hjm : j < m := Finset.mem_range.mp hjmem
      have hw0 : 0 < m - j := Nat.sub_pos_of_lt hjm
      have hw1 : 1 ≤ m - j := hw0
      obtain ⟨q, hq⟩ := hdvd (m - j) hw1 (Nat.sub_le m j)
      have hqc : q ≤ c j := by
        refine Nat.le_of_mul_le_mul_left ?_ hw0
        rw [← hq]
        exact hjL
      have hule : ∀ i, (if i = j then q else 0) ≤ c i := by
        intro i
        by_cases hij : i = j
        · rw [if_pos hij, hij]
          exact hqc
        · rw [if_neg hij]
          exact Nat.zero_le _
      have hu : tuningWeight m (fun i => if i = j then q else 0) = L := by
        rw [tuningWeight_ite m j q hjmem]
        exact hq.symm
      have hd : tuningWeight m (fun i => c i - (if i = j then q else 0)) = tuningWeight m c - L := by
        have h := tuningWeight_sub m c (fun i => if i = j then q else 0) hule
        rw [hu] at h
        exact h
      have hc2 : r * L + L + (m - 1) * L ≤ tuningWeight m c := by
        calc r * L + L + (m - 1) * L = (r + 1) * L + (m - 1) * L := by ring
          _ ≤ tuningWeight m c := hc
      have hc' : r * L + (m - 1) * L
          ≤ tuningWeight m (fun i => c i - (if i = j then q else 0)) := by
        rw [hd]
        have h9 : ∀ A B C W : ℕ, A + C + B ≤ W → A + B ≤ W - C := by
          intro A B C W h
          omega
        exact h9 _ _ _ _ hc2
      obtain ⟨e, he1, he2⟩ := ih (fun i => c i - (if i = j then q else 0)) hc'
      refine ⟨fun i => e i + (if i = j then q else 0), ?_, ?_⟩
      · intro i
        have h1 : e i ≤ c i - (if i = j then q else 0) := he1 i
        have h2 : (if i = j then q else 0) ≤ c i := hule i
        show e i + (if i = j then q else 0) ≤ c i
        by_cases hij : i = j
        · rw [if_pos hij] at h1 h2 ⊢
          omega
        · rw [if_neg hij] at h1 h2 ⊢
          omega
      · have hsplit : tuningWeight m (fun i => e i + (if i = j then q else 0))
            = tuningWeight m e + tuningWeight m (fun i => if i = j then q else 0) :=
          tuningWeight_fun_add m e (fun i => if i = j then q else 0)
        rw [hsplit, he2, hu]
        ring

section

variable (k : Type*) [CommRing k] {S : Type*} [CommRing S] [Algebra k S]

theorem tunedIdeal_pow_le (J : Ideal S) (m a n : ℕ) :
    tunedIdeal k J m a ^ n ≤ tunedIdeal k J m (n * a) := by
  induction n with
  | zero => simp [tunedIdeal_zero]
  | succ n ih =>
      calc tunedIdeal k J m a ^ (n + 1)
          = tunedIdeal k J m a ^ n * tunedIdeal k J m a := pow_succ _ _
        _ ≤ tunedIdeal k J m (n * a) * tunedIdeal k J m a := Ideal.mul_mono ih le_rfl
        _ ≤ tunedIdeal k J m (n * a + a) := tunedIdeal_mul_le k J m _ _
        _ = tunedIdeal k J m ((n + 1) * a) := by
            rw [(by ring : n * a + a = (n + 1) * a)]

theorem tunedIdeal_mul_eq_tunedIdeal_add (J : Ideal S) (m L : ℕ) (hL : 0 < L)
    (hdvd : ∀ w : ℕ, 1 ≤ w → w ≤ m → w ∣ L) (r t : ℕ) (ht : (m - 1) * L ≤ t) :
    tunedIdeal k J m (r * L) * tunedIdeal k J m t = tunedIdeal k J m (r * L + t) := by
  refine le_antisymm (tunedIdeal_mul_le k J m _ _) ?_
  rw [tunedIdeal_le_iff]
  intro c hc
  have hc2 : r * L + (m - 1) * L ≤ tuningWeight m c :=
    le_trans (Nat.add_le_add_left ht (r * L)) hc
  obtain ⟨c', hc'le, hc'w⟩ := exists_le_tuningWeight_eq_mul m L r hL hdvd c hc2
  have h2 : (fun j => c' j + (c j - c' j)) = c := funext fun j => Nat.add_sub_cancel' (hc'le j)
  have hsplit : tuningMonomial k J m c' * tuningMonomial k J m (fun j => c j - c' j)
      = tuningMonomial k J m c := by
    rw [tuningMonomial_mul_fun_add k J m c' (fun j => c j - c' j), h2]
  rw [← hsplit]
  refine Ideal.mul_mono ?_ ?_
  · exact tuningMonomial_le_tunedIdeal k J m (r * L) c' (le_of_eq hc'w.symm)
  · refine tuningMonomial_le_tunedIdeal k J m t _ ?_
    rw [tuningWeight_sub m c c' hc'le, hc'w]
    have h9 : ∀ A B W : ℕ, A + B ≤ W → B ≤ W - A := by
      intro A B W h
      omega
    exact h9 (r * L) t (tuningWeight m c) hc

theorem tunedIdeal_pow_eq_tunedIdeal_mul (J : Ideal S) (m L : ℕ) (hL : 0 < L)
    (hdvd : ∀ w : ℕ, 1 ≤ w → w ≤ m → w ∣ L) (r : ℕ) (hr : m - 1 ≤ r) (j : ℕ) (hj : 1 ≤ j) :
    tunedIdeal k J m (r * L) ^ j = tunedIdeal k J m (j * (r * L)) := by
  induction j with
  | zero => exact absurd hj (by omega)
  | succ n ih =>
      rcases Nat.eq_zero_or_pos n with hn | hn
      · subst hn
        simp
      · have hn1 : 1 ≤ n := hn
        have ihn := ih hn1
        have hmt : (m - 1) * L ≤ n * (r * L) := by
          calc (m - 1) * L ≤ r * L := Nat.mul_le_mul hr (le_refl L)
            _ = 1 * (r * L) := (one_mul _).symm
            _ ≤ n * (r * L) := Nat.mul_le_mul hn1 (le_refl (r * L))
        calc tunedIdeal k J m (r * L) ^ (n + 1)
            = tunedIdeal k J m (r * L) ^ n * tunedIdeal k J m (r * L) := pow_succ _ _
          _ = tunedIdeal k J m (n * (r * L)) * tunedIdeal k J m (r * L) := by rw [ihn]
          _ = tunedIdeal k J m (r * L) * tunedIdeal k J m (n * (r * L)) := mul_comm _ _
          _ = tunedIdeal k J m (r * L + n * (r * L)) :=
              tunedIdeal_mul_eq_tunedIdeal_add k J m L hL hdvd r (n * (r * L)) hmt
          _ = tunedIdeal k J m ((n + 1) * (r * L)) := by
              rw [(by ring : r * L + n * (r * L) = (n + 1) * (r * L))]

theorem derivIdealIterate_tunedIdeal_pow_le (J : Ideal S) (m L : ℕ) (hL : 0 < L)
    (hdvd : ∀ w : ℕ, 1 ≤ w → w ≤ m → w ∣ L) (r : ℕ) (hr : m - 1 ≤ r) (i : ℕ) (hi : i < r * L) :
    derivIdealIterate k i (tunedIdeal k J m (r * L)) ^ (r * L) ≤
      tunedIdeal k J m (r * L) ^ (r * L - i) := by
  have hi' : 1 ≤ r * L - i := Nat.one_le_iff_ne_zero.mpr (Nat.sub_ne_zero_of_lt hi)
  calc derivIdealIterate k i (tunedIdeal k J m (r * L)) ^ (r * L)
      ≤ tunedIdeal k J m (r * L - i) ^ (r * L) :=
        Ideal.pow_right_mono (derivIdealIterate_tunedIdeal_le k J m (r * L) i) (r * L)
    _ ≤ tunedIdeal k J m (r * L * (r * L - i)) := tunedIdeal_pow_le k J m (r * L - i) (r * L)
    _ = tunedIdeal k J m ((r * L - i) * (r * L)) := by
        rw [Nat.mul_comm (r * L) (r * L - i)]
    _ = tunedIdeal k J m (r * L) ^ (r * L - i) :=
        (tunedIdeal_pow_eq_tunedIdeal_mul k J m L hL hdvd r hr (r * L - i) hi').symm

end

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedIdealPowers =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafLcm =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafLcm", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheaf\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafOrderDecrease\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedIdealPowers\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedIdealSheaf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open AlgebraicGeometry CategoryTheory

namespace FunctorialResolution.EmbeddedResolution

private theorem dvd_foldr_lcm : ∀ (l : List ℕ) (w : ℕ), w ∈ l → w ∣ l.foldr Nat.lcm 1
  | [], w, h => absurd h (by simp)
  | (a :: l), w, h => by
      show w ∣ Nat.lcm a (l.foldr Nat.lcm 1)
      rcases List.mem_cons.mp h with h | h
      · subst h
        exact Nat.dvd_lcm_left _ _
      · exact dvd_trans (dvd_foldr_lcm l w h) (Nat.dvd_lcm_right _ _)

theorem dvd_lcmUpTo (m w : ℕ) (hw : 1 ≤ w) (hwm : w ≤ m) : w ∣ lcmUpTo m :=
  dvd_foldr_lcm _ w (List.mem_range'_1.mpr ⟨hw, by omega⟩)

private theorem foldr_lcm_consecutive_pos :
    ∀ (n s : ℕ), 0 < s → 0 < (List.range' s n).foldr Nat.lcm 1
  | 0, s, _ => Nat.one_pos
  | (n + 1), s, hs => by
      have h := foldr_lcm_consecutive_pos n (s + 1) (Nat.succ_pos s)
      show 0 < Nat.lcm s ((List.range' (s + 1) n).foldr Nat.lcm 1)
      exact Nat.pos_of_ne_zero (Nat.lcm_ne_zero (Nat.ne_of_gt hs) (Nat.ne_of_gt h))

theorem lcmUpTo_pos (m : ℕ) : 0 < lcmUpTo m :=
  foldr_lcm_consecutive_pos m 1 Nat.one_pos

private theorem le_of_not_natCast_succ_le {a : ℕ∞} {s : ℕ}
    (h : ¬ (((s + 1 : ℕ)) : ℕ∞) ≤ a) : a ≤ (s : ℕ∞) := by
  rcases eq_or_ne a ⊤ with rfl | hne
  · exact absurd le_top h
  · obtain ⟨n, rfl⟩ := ENat.ne_top_iff_exists.mp hne
    have hn : ¬ (s + 1 ≤ n) := fun hh => h (by exact_mod_cast hh)
    have hns : n ≤ s := by omega
    exact_mod_cast hns

theorem tunedSheaf_mul_eq_add : TunedSheafMulEqAdd.{u} := by
  intro k hk hchar hnoeth X p hsmooth hft I m hm hmax r t ht
  refine Scheme.IdealSheafData.ext (funext ?_)
  intro U
  rw [Scheme.IdealSheafData.ideal_mul, Pi.mul_apply, tunedSheaf_ideal, tunedSheaf_ideal,
    tunedSheaf_ideal]
  exact @tunedIdeal_mul_eq_tunedIdeal_add k _ _ _ (sectionsAlgebra k p U.1) (I.ideal U) m (lcmUpTo m)
    (lcmUpTo_pos m) (fun w hw1 hw2 => dvd_lcmUpTo m w hw1 hw2) r t ht

theorem tunedSheaf_pow_eq_mul : TunedSheafPowEqMul.{u} := by
  intro k hk hchar hnoeth X p hsmooth hft I m hm hmax r hr j hj
  refine Scheme.IdealSheafData.ext (funext ?_)
  intro U
  rw [Scheme.IdealSheafData.ideal_pow, Pi.pow_apply, tunedSheaf_ideal, tunedSheaf_ideal]
  exact @tunedIdeal_pow_eq_tunedIdeal_mul k _ _ _ (sectionsAlgebra k p U.1) (I.ideal U) m (lcmUpTo m)
    (lcmUpTo_pos m) (fun w hw1 hw2 => dvd_lcmUpTo m w hw1 hw2) r hr j hj

theorem isDerivBalanced_tunedSheaf_mul_lcmUpTo : IsDerivBalancedTunedSheafMulLcm.{u} := by
  intro k hk hchar hnoeth X p hsmooth hft I m hm hmax r hr i hi
  refine Scheme.IdealSheafData.le_def.mpr ?_
  intro U
  rw [Scheme.IdealSheafData.ideal_pow, Scheme.IdealSheafData.ideal_pow, Pi.pow_apply,
    Pi.pow_apply, derivIdealSheafIterate_ideal, tunedSheaf_ideal]
  exact @derivIdealIterate_tunedIdeal_pow_le k _ _ _ (sectionsAlgebra k p U.1) (I.ideal U) m
    (lcmUpTo m) (lcmUpTo_pos m) (fun w hw1 hw2 => dvd_lcmUpTo m w hw1 hw2) r hr i hi

theorem orderAtLeastLocus_tunedSheaf_eq_and_order_le : CoSupportTunedSheafEqAndOrderLE.{u} := by
  intro k hk hchar hnoeth X p hsmooth hft I m hm hmax s hs
  have hC := maxContactIdealTunedSheafEq k X p I m hm hmax s hs
  refine ⟨?_, ?_⟩
  · have hA := support_derivIdealSheafIterate_eq_orderAtLeastLocus k p (tunedSheaf k p I m s) hs
    have hB := support_derivIdealSheafIterate_eq_orderAtLeastLocus k p I hm
    rw [← hA, hC]
    exact hB
  · intro x
    have hordI : orderAt I x ≤ (m : ℕ∞) := hmax.orderLE x
    have hx2 : x ∉ orderAtLeastLocus I (m + 1) := by
      rw [mem_orderAtLeastLocus_iff]
      intro hcon
      have hle := le_trans hcon hordI
      have hmm : m + 1 ≤ m := by exact_mod_cast hle
      omega
    have hcs : orderAtLeastLocus (derivIdealSheafIterate k p (m - 1) I) ((m + 1) - (m - 1))
        = orderAtLeastLocus I (m + 1) := orderAtLeastLocus_derivIdealSheafIterate k p I (by omega)
    have ha : ¬ (((2 : ℕ) : ℕ∞) ≤ orderAt (derivIdealSheafIterate k p (m - 1) I) x) := by
      rw [← mem_orderAtLeastLocus_iff]
      have h2 : (2 : ℕ) = (m + 1) - (m - 1) := by omega
      rw [h2, hcs]
      exact hx2
    refine le_of_not_natCast_succ_le ?_
    intro hcon
    have he : 2 + (s - 1) = s + 1 := by omega
    have h1 : (((2 + (s - 1) : ℕ)) : ℕ∞) ≤ orderAt (tunedSheaf k p I m s) x := by
      rw [he]
      exact hcon
    have h2 := le_orderAt_derivIdealSheafIterate k p (tunedSheaf k p I m s) x 2 (s - 1) h1
    rw [hC] at h2
    exact ha h2

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafLcm =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafPullback =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafPullback", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.ControlledTransform\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheaf\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupDerivativeIdealBound\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafSmoothPullback\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

namespace FunctorialResolution.EmbeddedResolution

theorem _root_.FunctorialResolution.Blowup.IsLocallyGeneratedByNonZeroDivisor.le_of_pow_mul_le_pow_mul {Y : Scheme.{u}}
    {F B B' : Y.IdealSheafData} (hF : FunctorialResolution.Blowup.IsLocallyGeneratedByNonZeroDivisor F) (n : ℕ)
    (h : F ^ n * B ≤ F ^ n * B') : B ≤ B' :=
  (hF.pow n).le_of_mul_le_mul h

theorem comap_prod_map_range {X Y : Scheme.{u}} (π : Y ⟶ X) (f : ℕ → X.IdealSheafData) (m : ℕ) :
    (((List.range m).map f).prod).comap π =
      ((List.range m).map (fun j => (f j).comap π)).prod := by
  induction m with
  | zero =>
    simp
  | succ n ih =>
    rw [List.range_succ, List.map_append, List.prod_append, List.map_append, List.prod_append,
      AlgebraicGeometry.Scheme.IdealSheafData.comap_mul, ih]
    simp

private theorem prod_map_range_le {X : Scheme.{u}} (f g : ℕ → X.IdealSheafData) :
    ∀ m : ℕ, (∀ j, j < m → f j ≤ g j) →
      ((List.range m).map f).prod ≤ ((List.range m).map g).prod := fun _ h =>
  List.prod_le_prod' fun j hj => h j (List.mem_range.mp hj)

private theorem prod_map_range_congr {X : Scheme.{u}} (f g : ℕ → X.IdealSheafData) :
    ∀ m : ℕ, (∀ j, j < m → f j = g j) →
      ((List.range m).map f).prod = ((List.range m).map g).prod := fun _ h =>
  congrArg List.prod (List.map_congr_left fun j hj => h j (List.mem_range.mp hj))

private theorem prod_map_pow_mul_pow_eq {X : Scheme.{u}} (F : X.IdealSheafData)
    (G : ℕ → X.IdealSheafData) (w c : ℕ → ℕ) (n : ℕ) :
    ((List.range n).map (fun j => (F ^ (w j) * G j) ^ (c j))).prod =
      F ^ (∑ j ∈ Finset.range n, w j * c j) *
        ((List.range n).map (fun j => G j ^ (c j))).prod := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [List.range_succ, List.map_append, List.prod_append, List.map_append, List.prod_append,
      ih, Finset.sum_range_succ, pow_add]
    simp only [List.map_cons, List.map_nil, List.prod_cons, List.prod_nil, mul_one, mul_pow,
      ← pow_mul]
    rw [mul_mul_mul_comm]

theorem comap_tunedSheaf_le_exceptionalIdeal_pow_mul (k : Type u) [Field k] [CharZero k]
    [IsNoetherianRing k] {P P₁ : Scheme.{u}} (p : P ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.Smooth p] [LocallyOfFiniteType p] [IsLocallyNoetherian P₁]
    (π : P₁ ⟶ P) [LocallyOfFiniteType (π ≫ p)] (p₁ : P₁ ⟶ Spec (CommRingCat.of k))
    [LocallyOfFiniteType p₁] (hp₁ : p₁ = π ≫ p)
    (Z : P.IdealSheafData) (E : List P.IdealSheafData) (hZ : HasStrictNormalCrossingsWith p Z E)
    (hπ : Blowup.IsBlowupAlongIdealSheaf π Z) (A : P.IdealSheafData) (m : ℕ) (hA : A ≤ Z ^ m) (u : ℕ) :
    (tunedSheaf k p A m u).comap π ≤
      Blowup.exceptionalIdeal π Z ^ u *
        tunedSheaf k p₁ (controlledTransform π Z A m hπ hA) m u := by
  subst hp₁
  refine le_trans (Scheme.IdealSheafData.comap_iSup π
    (fun c : {c : ℕ → ℕ // u ≤ ∑ j ∈ Finset.range m, (m - j) * c j} =>
      ((List.range m).map (fun j => derivIdealSheafIterate k p j A ^ (c.1 j))).prod)).le
    (iSup_le ?_)
  rintro ⟨c, hc⟩
  refine le_trans (le_of_eq (comap_prod_map_range π
    (fun j => derivIdealSheafIterate k p j A ^ c j) m)) ?_
  refine le_trans (prod_map_range_le _
    (fun j => (Blowup.exceptionalIdeal π Z ^ (m - j) *
      derivIdealSheafIterate k (π ≫ p) j (controlledTransform π Z A m hπ hA)) ^ c j) m ?_) ?_
  · intro j hj
    refine le_trans (le_of_eq (AlgebraicGeometry.Scheme.IdealSheafData.comap_pow
      (derivIdealSheafIterate k p j A) π (c j))) ?_
    exact pow_le_pow_left'
      (comap_derivIdealSheafIterate_le_exceptionalIdeal_pow_mul k p π Z E hZ hπ A m hA j
        (Nat.le_of_lt hj)) (c j)
  · refine le_trans (le_of_eq (prod_map_pow_mul_pow_eq (Blowup.exceptionalIdeal π Z)
      (fun j => derivIdealSheafIterate k (π ≫ p) j (controlledTransform π Z A m hπ hA))
      (fun j => m - j) c m)) ?_
    refine mul_le_mul' (pow_le_pow_right_of_le_one' le_top hc) ?_
    exact le_iSup (fun d : {c : ℕ → ℕ // u ≤ ∑ j ∈ Finset.range m, (m - j) * c j} =>
      ((List.range m).map (fun j => derivIdealSheafIterate k (π ≫ p) j
        (controlledTransform π Z A m hπ hA) ^ (d.1 j))).prod) ⟨c, hc⟩

theorem comap_tunedSheaf_of_smooth (k : Type u) [Field k] [CharZero k] [IsNoetherianRing k]
    {P Y : Scheme.{u}} (p : P ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    [LocallyOfFiniteType p] (h : Y ⟶ P) [AlgebraicGeometry.Smooth h]
    (q : Y ⟶ Spec (CommRingCat.of k)) [LocallyOfFiniteType q] (hq : q = h ≫ p)
    (A : P.IdealSheafData) (m u : ℕ) :
    (tunedSheaf k p A m u).comap h = tunedSheaf k q (A.comap h) m u := by
  subst hq
  refine le_antisymm ?_ ?_
  · refine le_trans (Scheme.IdealSheafData.comap_iSup h
      (fun c : {c : ℕ → ℕ // u ≤ ∑ j ∈ Finset.range m, (m - j) * c j} =>
        ((List.range m).map (fun j => derivIdealSheafIterate k p j A ^ (c.1 j))).prod)).le
      (iSup_le ?_)
    rintro ⟨c, hc⟩
    refine le_trans (le_of_eq (comap_prod_map_range h
      (fun j => derivIdealSheafIterate k p j A ^ c j) m)) ?_
    refine le_trans (prod_map_range_le _
      (fun j => derivIdealSheafIterate k (h ≫ p) j (A.comap h) ^ c j) m ?_) ?_
    · intro j _
      refine le_of_eq ?_
      show (derivIdealSheafIterate k p j A ^ c j).comap h
          = derivIdealSheafIterate k (h ≫ p) j (A.comap h) ^ c j
      rw [AlgebraicGeometry.Scheme.IdealSheafData.comap_pow,
        derivIdealSheafIterate_comap k p h j A]
    · exact le_iSup (fun d : {c : ℕ → ℕ // u ≤ ∑ j ∈ Finset.range m, (m - j) * c j} =>
        ((List.range m).map (fun j =>
          derivIdealSheafIterate k (h ≫ p) j (A.comap h) ^ (d.1 j))).prod) ⟨c, hc⟩
  · refine le_trans (le_of_eq (tunedSheaf_eq_iSup k (h ≫ p) (A.comap h) m u)) (iSup_le ?_)
    rintro ⟨c, hc⟩
    refine le_trans (le_of_eq ?_) (AlgebraicGeometry.Scheme.IdealSheafData.comap_mono h
      (le_iSup (fun d : {c : ℕ → ℕ // u ≤ ∑ j ∈ Finset.range m, (m - j) * c j} =>
        ((List.range m).map (fun j => derivIdealSheafIterate k p j A ^ (d.1 j))).prod) ⟨c, hc⟩))
    refine Eq.trans (prod_map_range_congr _
      (fun j => (derivIdealSheafIterate k p j A ^ c j).comap h) m ?_)
      (comap_prod_map_range h (fun j => derivIdealSheafIterate k p j A ^ c j) m).symm
    intro j _
    show derivIdealSheafIterate k (h ≫ p) j (A.comap h) ^ c j
        = (derivIdealSheafIterate k p j A ^ c j).comap h
    rw [AlgebraicGeometry.Scheme.IdealSheafData.comap_pow, derivIdealSheafIterate_comap k p h j A]

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafPullback =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafBlowupSequence =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafBlowupSequence", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheaf\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PowerContainmentAndOrderLocus\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedIdealSheaf\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafLcm\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafPullback\nimport Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupSmoothness\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafOrderDecrease\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

namespace FunctorialResolution.EmbeddedResolution

private theorem exists_affineOpen_mem {X : Scheme.{u}} (x : X) :
    ∃ U : X.affineOpens, x ∈ U.1.1 := by
  have hx : x ∈ (⨆ U : X.affineOpens, (U : X.Opens)) := by
    rw [AlgebraicGeometry.iSup_affineOpens_eq_top X]
    trivial
  obtain ⟨U, hU⟩ := TopologicalSpace.Opens.mem_iSup.mp hx
  exact ⟨U, hU⟩

private theorem stalkIdeal_iSup_le_of_forall {X : Scheme.{u}} {ι : Type}
    (F : ι → X.IdealSheafData) (x : X) (Jd : Ideal (X.presheaf.stalk x))
    (h : ∀ i, stalkIdeal (F i) x ≤ Jd) : stalkIdeal (iSup F) x ≤ Jd := by
  obtain ⟨U, hxU0⟩ := exists_affineOpen_mem x
  have hxU : x ∈ U.1 := hxU0
  have hUeq : (iSup F).ideal U = ⨆ i, (F i).ideal U := by
    simp only [Scheme.IdealSheafData.ideal_iSup, iSup_apply]
  rw [stalkIdeal_eq_map_germ _ x U hxU, hUeq, (Ideal.gc_map_comap _).l_iSup]
  refine iSup_le fun i => ?_
  rw [← stalkIdeal_eq_map_germ (F i) x U hxU]
  exact h i

private theorem sum_map_range_eq_sum_range (w : ℕ → ℕ) (n : ℕ) :
    ((List.range n).map w).sum = ∑ j ∈ Finset.range n, w j := by
  induction n with
  | zero => simp
  | succ t ih =>
      rw [List.range_succ, List.map_append, List.sum_append, ih, Finset.sum_range_succ]
      simp

private theorem prod_map_range_pow_ite_eq {X : Scheme.{u}} (f : ℕ → X.IdealSheafData) (s n : ℕ) :
    ((List.range (n + 1)).map (fun j => f j ^ (if j = 0 then s else 0))).prod = f 0 ^ s := by
  induction n with
  | zero => simp
  | succ t ih =>
      rw [List.range_succ, List.map_append, List.prod_append, ih]
      simp

private theorem mem_orderAtLeastLocus_prod_map_of_forall {X : Scheme.{u}} (x : X)
    (g : ℕ → X.IdealSheafData) (w : ℕ → ℕ) (h : ∀ j, x ∈ orderAtLeastLocus (g j) (w j)) (l : List ℕ) :
    x ∈ orderAtLeastLocus ((l.map g).prod) ((l.map w).sum) := by
  induction l with
  | nil =>
      simp only [List.map_nil, List.prod_nil, List.sum_nil]
      rw [orderAtLeastLocus_zero]
      exact Set.mem_univ x
  | cons a t ih =>
      simp only [List.map_cons, List.prod_cons, List.sum_cons]
      exact inter_orderAtLeastLocus_subset_orderAtLeastLocus_mul _ _ _ _ ⟨h a, ih⟩

theorem orderAtLeastLocus_subset_orderAtLeastLocus_tunedSheaf (k : Type u) [Field k] [IsNoetherianRing k]
    {Y : Scheme.{u}} (p : Y ⟶ Spec (CommRingCat.of k)) [LocallyOfFiniteType p]
    (A : Y.IdealSheafData) (m n : ℕ) :
    orderAtLeastLocus A m ⊆ orderAtLeastLocus (tunedSheaf k p A m n) n := by
  intro x hx
  rw [mem_orderAtLeastLocus_iff_stalkIdeal_le_maximalIdeal_pow, tunedSheaf_eq_iSup]
  refine stalkIdeal_iSup_le_of_forall _ x _ ?_
  rintro ⟨c, hc⟩
  refine (mem_orderAtLeastLocus_iff_stalkIdeal_le_maximalIdeal_pow _ n x).mp ?_
  have key := mem_orderAtLeastLocus_prod_map_of_forall x (fun j => derivIdealSheafIterate k p j A ^ c j)
      (fun j => c j * (m - j))
      (fun j => orderAtLeastLocus_subset_orderAtLeastLocus_pow _ _ _
        (orderAtLeastLocus_subset_orderAtLeastLocus_derivIdealSheafIterate k p A j m hx)) (List.range m)
  have hn : n ≤ ((List.range m).map (fun j => c j * (m - j))).sum := by
    rw [sum_map_range_eq_sum_range]
    refine le_trans hc (le_of_eq ?_)
    exact Finset.sum_congr rfl fun j _ => Nat.mul_comm _ _
  exact orderAtLeastLocus_subset_of_le _ hn key

theorem orderAtLeastLocus_pow_mul_eq_orderAtLeastLocus (k : Type u) [Field k] [CharZero k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p] (A : X.IdealSheafData)
    (m : ℕ) {s : ℕ} (hs : 1 ≤ s) :
    orderAtLeastLocus (A ^ s) (m * s) = orderAtLeastLocus A m := by
  rw [mul_comm]
  exact orderAtLeastLocus_pow_mul k p A hs m

theorem orderAtLeastLocus_eq_of_pow_le_of_le_tunedSheaf (k : Type u) [Field k] [CharZero k]
    [IsNoetherianRing k] {X : Scheme.{u}} (p : X ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.Smooth p] [LocallyOfFiniteType p] (I J : X.IdealSheafData) (m : ℕ)
    {s : ℕ} (hs : 1 ≤ s) (h1 : I ^ s ≤ J) (h2 : J ≤ tunedSheaf k p I m (m * s)) :
    orderAtLeastLocus J (m * s) = orderAtLeastLocus I m := by
  refine Set.Subset.antisymm ?_ ?_
  · rw [← orderAtLeastLocus_pow_mul_eq_orderAtLeastLocus k p I m hs]
    exact orderAtLeastLocus_subset_of_le_ideal h1 (m * s)
  · exact fun x hx => orderAtLeastLocus_subset_of_le_ideal h2 (m * s)
      (orderAtLeastLocus_subset_orderAtLeastLocus_tunedSheaf k p I m (m * s) hx)

theorem pow_le_tunedSheaf (k : Type u) [Field k] [IsNoetherianRing k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [LocallyOfFiniteType p] (I : X.IdealSheafData)
    {m : ℕ} (hm : 1 ≤ m) (s : ℕ) :
    I ^ s ≤ tunedSheaf k p I m (m * s) := by
  obtain ⟨m', rfl⟩ : ∃ m', m = m' + 1 := ⟨m - 1, by omega⟩
  have hsum : (m' + 1) * s ≤
      ∑ j ∈ Finset.range (m' + 1), (m' + 1 - j) * (if j = 0 then s else 0) := by
    have h := Finset.sum_eq_single_of_mem (s := Finset.range (m' + 1))
      (f := fun j => (m' + 1 - j) * (if j = 0 then s else 0)) 0
      (Finset.mem_range.mpr (Nat.succ_pos m'))
      (fun b _ hb => by simp [hb])
    rw [h]
    simp
  have hle := le_iSup
    (fun c : {c : ℕ → ℕ // (m' + 1) * s ≤ ∑ j ∈ Finset.range (m' + 1), (m' + 1 - j) * c j} =>
      ((List.range (m' + 1)).map (fun j => derivIdealSheafIterate k p j I ^ (c.1 j))).prod)
    ⟨fun j => if j = 0 then s else 0, hsum⟩
  rw [tunedSheaf_eq_iSup]
  refine le_trans (le_of_eq ?_) hle
  have := prod_map_range_pow_ite_eq (fun j => derivIdealSheafIterate k p j I) s m'
  rw [this]
  simp

theorem exists_tuningExponent_eq {m : ℕ} (hm : 1 ≤ m) :
    ∃ r s : ℕ, m - 1 ≤ r ∧ tuningExponent m = r * lcmUpTo m ∧ 1 ≤ s ∧ tuningExponent m = m * s := by
  rcases Nat.lt_or_ge m 2 with h | h
  · have hm1 : m = 1 := by omega
    subst hm1
    refine ⟨1, 1, by omega, ?_, le_rfl, ?_⟩
    · rw [tuningExponent_one, lcmUpTo_one]
    · rw [tuningExponent_one]
  · obtain ⟨t, ht⟩ := dvd_lcmUpTo m m (by omega) le_rfl
    have htpos : 0 < t := by
      rcases Nat.eq_zero_or_pos t with h0 | h0
      · rw [h0, Nat.mul_zero] at ht
        have hpos := lcmUpTo_pos m
        omega
      · exact h0
    refine ⟨m - 1, (m - 1) * t, le_rfl, tuningExponent_of_two_le h, ?_, ?_⟩
    · have : 0 < (m - 1) * t := Nat.mul_pos (by omega) htpos
      omega
    · rw [tuningExponent_of_two_le h, ht]
      ring

private theorem smooth_projectionToBase_comp_of_snc (k : Type u) [Field k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (E : List X.IdealSheafData) (d : BlowupSequenceData X)
    (hiso : AlgebraicGeometry.Smooth d.isoZero.hom)
    (hsnc : ∀ i, i < d.length → HasStrictNormalCrossingsWith (d.projectionToBase i ≫ p) (d.center i) (d.boundaryFrom E i)) :
    ∀ i, i ≤ d.length → AlgebraicGeometry.Smooth (d.projectionToBase i ≫ p) := by
  intro i
  induction i with
  | zero =>
      intro _
      have := hiso
      rw [BlowupSequenceData.projectionToBase_zero]
      infer_instance
  | succ j ih =>
      intro hj
      have := ih (Nat.le_of_succ_le hj)
      have hb := smooth_comp_of_isBlowupAlongIdealSheaf (hsnc j hj) (d.isBlowup j hj)
      rw [BlowupSequenceData.projectionToBase_succ, Category.assoc]
      exact hb

private theorem locallyOfFiniteType_projectionToBase_comp_of_snc (k : Type u) [Field k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (E : List X.IdealSheafData) (d : BlowupSequenceData X)
    (hiso : AlgebraicGeometry.Smooth d.isoZero.hom)
    (hsnc : ∀ i, i < d.length → HasStrictNormalCrossingsWith (d.projectionToBase i ≫ p) (d.center i) (d.boundaryFrom E i)) :
    ∀ i, i ≤ d.length → LocallyOfFiniteType (d.projectionToBase i ≫ p) := by
  intro i hi
  have := smooth_projectionToBase_comp_of_snc k p E d hiso hsnc i hi
  infer_instance

private theorem pow_le_and_le_tunedSheaf_of_isBlowupAlongIdealSheaf (k : Type u) [Field k] [CharZero k]
    [IsNoetherianRing k] {P P₁ : Scheme.{u}} (p : P ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.Smooth p] [LocallyOfFiniteType p] (π : P₁ ⟶ P)
    (p₁ : P₁ ⟶ Spec (CommRingCat.of k)) [LocallyOfFiniteType p₁] (hp₁ : p₁ = π ≫ p)
    (Z : P.IdealSheafData) (E : List P.IdealSheafData) (hZ : HasStrictNormalCrossingsWith p Z E)
    (hπ : Blowup.IsBlowupAlongIdealSheaf π Z) (m s : ℕ) (A B : P.IdealSheafData) (A' B' : P₁.IdealSheafData)
    (hA : A ≤ Z ^ m)
    (hA' : Blowup.exceptionalIdeal π Z ^ m * A' = A.comap π)
    (hB' : Blowup.exceptionalIdeal π Z ^ (m * s) * B' = B.comap π)
    (h1 : A ^ s ≤ B) (h2 : B ≤ tunedSheaf k p A m (m * s)) :
    A' ^ s ≤ B' ∧ B' ≤ tunedSheaf k p₁ A' m (m * s) := by
  have : IsLocallyNoetherian P₁ := LocallyOfFiniteType.isLocallyNoetherian p₁
  have : LocallyOfFiniteType (π ≫ p) := by
    rw [← hp₁]
    infer_instance
  have hF : Blowup.IsLocallyGeneratedByNonZeroDivisor (Blowup.exceptionalIdeal π Z) := isLocallyGeneratedByNonZeroDivisor_exceptionalIdeal hπ
  constructor
  · refine hF.le_of_pow_mul_le_pow_mul (m * s) ?_
    have hcm : (A.comap π) ^ s ≤ B.comap π := by
      rw [← AlgebraicGeometry.Scheme.IdealSheafData.comap_pow]
      exact Scheme.IdealSheafData.comap_mono π h1
    calc Blowup.exceptionalIdeal π Z ^ (m * s) * A' ^ s
        = (Blowup.exceptionalIdeal π Z ^ m * A') ^ s := by rw [mul_pow, ← pow_mul]
      _ = (A.comap π) ^ s := by rw [hA']
      _ ≤ B.comap π := hcm
      _ = Blowup.exceptionalIdeal π Z ^ (m * s) * B' := hB'.symm
  · refine hF.le_of_pow_mul_le_pow_mul (m * s) ?_
    have hct : A' = controlledTransform π Z A m hπ hA :=
      eq_controlledTransform_of_mul_eq_comap π Z A m hπ hA A' hA'
    calc Blowup.exceptionalIdeal π Z ^ (m * s) * B' = B.comap π := hB'
      _ ≤ (tunedSheaf k p A m (m * s)).comap π := Scheme.IdealSheafData.comap_mono π h2
      _ ≤ Blowup.exceptionalIdeal π Z ^ (m * s) *
            tunedSheaf k p₁ (controlledTransform π Z A m hπ hA) m (m * s) :=
          comap_tunedSheaf_le_exceptionalIdeal_pow_mul k p π p₁ hp₁ Z E hZ hπ A m hA (m * s)
      _ = Blowup.exceptionalIdeal π Z ^ (m * s) * tunedSheaf k p₁ A' m (m * s) := by rw [hct]

private theorem orderAtLeastLocus_eq_and_exceptionalIdeal_dvd_of_blowupSequence (k : Type u) [Field k] [CharZero k]
    [IsNoetherianRing k] {X : Scheme.{u}} (p : X ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.Smooth p] [LocallyOfFiniteType p] (I J : X.IdealSheafData) (m s : ℕ)
    (hs : 1 ≤ s) (h1 : I ^ s ≤ J) (h2 : J ≤ tunedSheaf k p I m (m * s))
    (E : List X.IdealSheafData) (d : BlowupSequenceData X)
    (hiso : AlgebraicGeometry.Smooth d.isoZero.hom)
    (hft : ∀ i, i ≤ d.length → LocallyOfFiniteType (d.projectionToBase i ≫ p))
    (hsnc : ∀ i, i < d.length → HasStrictNormalCrossingsWith (d.projectionToBase i ≫ p) (d.center i) (d.boundaryFrom E i))
    (hord : ∀ i, i < d.length →
      orderAtLeastLocus (d.controlledTransform J (m * s) i) (m * s) = orderAtLeastLocus (d.controlledTransform I m i) m →
      ((d.center i).support : Set ↥(d.obj i)) ⊆ orderAtLeastLocus (d.controlledTransform I m i) m) :
    (∀ i, i ≤ d.length →
        orderAtLeastLocus (d.controlledTransform J (m * s) i) (m * s) = orderAtLeastLocus (d.controlledTransform I m i) m) ∧
    (∀ i, i < d.length → ∃ B : (d.obj (i + 1)).IdealSheafData,
        Blowup.exceptionalIdeal (d.map i) (d.center i) ^ m * B = (d.controlledTransform I m i).comap (d.map i)) ∧
    (∀ i, i < d.length → ∃ B : (d.obj (i + 1)).IdealSheafData,
        Blowup.exceptionalIdeal (d.map i) (d.center i) ^ (m * s) * B =
          (d.controlledTransform J (m * s) i).comap (d.map i)) := by
  have hsm : ∀ i, i ≤ d.length → AlgebraicGeometry.Smooth (d.projectionToBase i ≫ p) :=
    smooth_projectionToBase_comp_of_snc k p E d hiso hsnc
  have key : ∀ i, i ≤ d.length →
      (d.controlledTransform I m i) ^ s ≤ d.controlledTransform J (m * s) i ∧
      ∀ [_hq : LocallyOfFiniteType (d.projectionToBase i ≫ p)],
        d.controlledTransform J (m * s) i ≤
          tunedSheaf k (d.projectionToBase i ≫ p) (d.controlledTransform I m i) m (m * s) := by
    intro i
    induction i with
    | zero =>
        intro _
        constructor
        · simp only [BlowupSequenceData.controlledTransform_zero]
          rw [← AlgebraicGeometry.Scheme.IdealSheafData.comap_pow]
          exact Scheme.IdealSheafData.comap_mono _ h1
        · intro hq0
          have := hq0
          have := hiso
          simp only [BlowupSequenceData.controlledTransform_zero]
          have heq : (tunedSheaf k p I m (m * s)).comap d.isoZero.hom
              = tunedSheaf k (d.projectionToBase 0 ≫ p) (I.comap d.isoZero.hom) m (m * s) :=
            comap_tunedSheaf_of_smooth k p d.isoZero.hom (d.projectionToBase 0 ≫ p) rfl I m (m * s)
          rw [← heq]
          exact Scheme.IdealSheafData.comap_mono _ h2
    | succ j ih =>
        intro hj
        have hj' : j < d.length := hj
        have hjle : j ≤ d.length := Nat.le_of_succ_le hj
        obtain ⟨ih1, ih2⟩ := ih hjle
        have := hsm j hjle
        have := hft j hjle
        have := hft (j + 1) hj
        have hcosj : orderAtLeastLocus (d.controlledTransform J (m * s) j) (m * s)
            = orderAtLeastLocus (d.controlledTransform I m j) m :=
          orderAtLeastLocus_eq_of_pow_le_of_le_tunedSheaf k (d.projectionToBase j ≫ p) _ _ m hs ih1 ih2
        have hordj := hord j hj' hcosj
        have hAZ : d.controlledTransform I m j ≤ d.center j ^ m :=
          le_pow_of_hasStrictNormalCrossingsWith (d.projectionToBase j ≫ p) (d.center j) _ (d.boundaryFrom E j) (hsnc j hj') m hordj
        have hBZ : d.controlledTransform J (m * s) j ≤ d.center j ^ (m * s) := by
          refine le_pow_of_hasStrictNormalCrossingsWith (d.projectionToBase j ≫ p) (d.center j) _ (d.boundaryFrom E j)
            (hsnc j hj') (m * s) ?_
          rw [hcosj]
          exact hordj
        have : IsLocallyNoetherian (d.obj (j + 1)) :=
          LocallyOfFiniteType.isLocallyNoetherian (d.projectionToBase (j + 1) ≫ p)
        obtain ⟨A1, hA1, -⟩ := existsUnique_pow_mul_eq_comap_of_isBlowupAlongIdealSheaf (d.map j) (d.center j)
          (d.controlledTransform I m j) m (d.isBlowup j hj') hAZ
        obtain ⟨B1, hB1, -⟩ := existsUnique_pow_mul_eq_comap_of_isBlowupAlongIdealSheaf (d.map j) (d.center j)
          (d.controlledTransform J (m * s) j) (m * s) (d.isBlowup j hj') hBZ
        have hA1' : Blowup.exceptionalIdeal (d.map j) (d.center j) ^ m * d.controlledTransform I m (j + 1)
            = (d.controlledTransform I m j).comap (d.map j) :=
          d.pow_exceptionalIdeal_mul_controlledTransform_succ I m j ⟨A1, hA1⟩
        have hB1' : Blowup.exceptionalIdeal (d.map j) (d.center j) ^ (m * s) *
              d.controlledTransform J (m * s) (j + 1)
            = (d.controlledTransform J (m * s) j).comap (d.map j) :=
          d.pow_exceptionalIdeal_mul_controlledTransform_succ J (m * s) j ⟨B1, hB1⟩
        have hp1 : d.projectionToBase (j + 1) ≫ p = d.map j ≫ (d.projectionToBase j ≫ p) := by
          rw [BlowupSequenceData.projectionToBase_succ, Category.assoc]
        obtain ⟨r1, r2⟩ := pow_le_and_le_tunedSheaf_of_isBlowupAlongIdealSheaf k (d.projectionToBase j ≫ p) (d.map j)
          (d.projectionToBase (j + 1) ≫ p) hp1
          (d.center j) (d.boundaryFrom E j) (hsnc j hj') (d.isBlowup j hj') m s
          (d.controlledTransform I m j) (d.controlledTransform J (m * s) j) (d.controlledTransform I m (j + 1))
          (d.controlledTransform J (m * s) (j + 1)) hAZ hA1' hB1' ih1 ih2
        refine ⟨r1, ?_⟩
        intro _
        exact r2
  have hcos : ∀ i, i ≤ d.length →
      orderAtLeastLocus (d.controlledTransform J (m * s) i) (m * s) = orderAtLeastLocus (d.controlledTransform I m i) m := by
    intro i hi
    have := hsm i hi
    have := hft i hi
    exact orderAtLeastLocus_eq_of_pow_le_of_le_tunedSheaf k (d.projectionToBase i ≫ p) _ _ m hs
      (key i hi).1 (key i hi).2
  have hdiv : ∀ i, i < d.length →
      (d.controlledTransform I m i ≤ d.center i ^ m) ∧
        (d.controlledTransform J (m * s) i ≤ d.center i ^ (m * s)) := by
    intro i hi
    have := hsm i (Nat.le_of_succ_le hi)
    have hordi := hord i hi (hcos i (Nat.le_of_succ_le hi))
    constructor
    · exact le_pow_of_hasStrictNormalCrossingsWith (d.projectionToBase i ≫ p) (d.center i) _ (d.boundaryFrom E i) (hsnc i hi) m hordi
    · refine le_pow_of_hasStrictNormalCrossingsWith (d.projectionToBase i ≫ p) (d.center i) _ (d.boundaryFrom E i)
        (hsnc i hi) (m * s) ?_
      rw [hcos i (Nat.le_of_succ_le hi)]
      exact hordi
  refine ⟨hcos, ?_, ?_⟩
  · intro i hi
    have := hft (i + 1) hi
    have : IsLocallyNoetherian (d.obj (i + 1)) :=
      LocallyOfFiniteType.isLocallyNoetherian (d.projectionToBase (i + 1) ≫ p)
    obtain ⟨B, hB, -⟩ := existsUnique_pow_mul_eq_comap_of_isBlowupAlongIdealSheaf (d.map i) (d.center i)
      (d.controlledTransform I m i) m (d.isBlowup i hi) (hdiv i hi).1
    exact ⟨B, hB⟩
  · intro i hi
    have := hft (i + 1) hi
    have : IsLocallyNoetherian (d.obj (i + 1)) :=
      LocallyOfFiniteType.isLocallyNoetherian (d.projectionToBase (i + 1) ≫ p)
    obtain ⟨B, hB, -⟩ := existsUnique_pow_mul_eq_comap_of_isBlowupAlongIdealSheaf (d.map i) (d.center i)
      (d.controlledTransform J (m * s) i) (m * s) (d.isBlowup i hi) (hdiv i hi).2
    exact ⟨B, hB⟩

theorem isMarked_iff_of_pow_le_of_le_tunedSheaf : IsMarkedIffOfPowLeOfLeTunedSheaf.{u} := by
  intro k hk1 hk2 hk3 X p hp1 hp2 I m _hm _hmax s hs J h1 h2 E d
  have hiso : AlgebraicGeometry.Smooth d.isoZero.hom := inferInstance
  constructor
  · constructor
    · intro hI
      have hft := locallyOfFiniteType_projectionToBase_comp_of_snc k p E d hiso hI.center_snc
      obtain ⟨hc, -, hdivJ⟩ := orderAtLeastLocus_eq_and_exceptionalIdeal_dvd_of_blowupSequence k p I J m s hs h1 h2 E d
        hiso hft hI.center_snc (fun i hi _ => hI.center_order i hi)
      exact { divisible := hdivJ
              center_order := fun i hi => by
                rw [hc i (Nat.le_of_succ_le hi)]
                exact hI.center_order i hi
              center_smooth := hI.center_smooth
              center_snc := hI.center_snc }
    · intro hJ
      have hft := locallyOfFiniteType_projectionToBase_comp_of_snc k p E d hiso hJ.center_snc
      obtain ⟨hc, hdivI, -⟩ := orderAtLeastLocus_eq_and_exceptionalIdeal_dvd_of_blowupSequence k p I J m s hs h1 h2 E d
        hiso hft hJ.center_snc
        (fun i hi heq => by
          rw [← heq]
          exact hJ.center_order i hi)
      exact { divisible := hdivI
              center_order := fun i hi => by
                rw [← hc i (Nat.le_of_succ_le hi)]
                exact hJ.center_order i hi
              center_smooth := hJ.center_smooth
              center_snc := hJ.center_snc }
  · intro hI i hi
    have hft := locallyOfFiniteType_projectionToBase_comp_of_snc k p E d hiso hI.center_snc
    obtain ⟨hc, -, -⟩ := orderAtLeastLocus_eq_and_exceptionalIdeal_dvd_of_blowupSequence k p I J m s hs h1 h2 E d
      hiso hft hI.center_snc (fun i hi _ => hI.center_order i hi)
    exact hc i hi

theorem isMarked_iff_balanced_tunedSheaf : IsMarkedIffBalancedTunedSheaf.{u} := by
  intro k hk1 hk2 hk3 X p hp1 hp2 I m hm hmax E d
  obtain ⟨r, s, hr, hre, hs, hms⟩ := exists_tuningExponent_eq hm
  have hWe : balancedTunedSheaf k p I m = tunedSheaf k p I m (m * s) := by rw [balancedTunedSheaf_eq, hms]
  have h1 : I ^ s ≤ balancedTunedSheaf k p I m := by
    rw [hWe]
    exact pow_le_tunedSheaf k p I hm s
  have h2 : balancedTunedSheaf k p I m ≤ tunedSheaf k p I m (m * s) := le_of_eq hWe
  have hmarked := isMarked_iff_of_pow_le_of_le_tunedSheaf.{u} k X p I m hm hmax s hs
    (balancedTunedSheaf k p I m) h1 h2 E d
  rw [← hms] at hmarked
  have he1 : 1 ≤ tuningExponent m := by
    rw [hms]
    exact Nat.mul_pos hm hs
  refine ⟨hmarked.1, hmarked.2, ?_, ?_⟩
  · have h5 := isMaxContactInvariantTunedSheaf.{u} k X p I m hm hmax
      (tuningExponent m) he1
    rw [balancedTunedSheaf_eq]
    exact h5
  · have h8 := isDerivBalanced_tunedSheaf_mul_lcmUpTo.{u} k X p I m hm hmax r hr
    rw [← hre] at h8
    rw [balancedTunedSheaf_eq]
    exact h8

theorem tunedSheafProperties_of_succ_le_of_mul_le (h1 : TunedSheafSuccLe.{u}) (h2 : TunedSheafMulLeAdd.{u}) :
    TunedSheafProperties.{u} := by
  exact {
    isMarked_tuned_iff := isMarked_iff_balanced_tunedSheaf.{u}
    tunedSheaf_succ_le := h1
    tunedSheaf_mul_le := h2
    derivIdealSheaf_tunedSheaf_succ := derivIdealSheaf_tunedSheaf_succ.{u}
    derivIdealSheafIter_pred_tunedSheaf := maxContactIdealTunedSheafEq.{u}
    derivIdealSheafIter_mul_derivIdealSheaf_le_tunedSheaf :=
      isMaxContactInvariantTunedSheaf.{u}
    tunedSheaf_mul_eq := tunedSheaf_mul_eq_add.{u}
    tunedSheaf_pow := tunedSheaf_pow_eq_mul.{u}
    derivIdealSheafIter_tunedSheaf_pow_le := isDerivBalanced_tunedSheaf_mul_lcmUpTo.{u}
    coSupport_tunedSheaf_eq_and_orderLE := orderAtLeastLocus_tunedSheaf_eq_and_order_le.{u}
    isMarked_iff_of_pow_le_of_le_tunedSheaf := isMarked_iff_of_pow_le_of_le_tunedSheaf.{u} }

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafBlowupSequence =====
