module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.LocDensFF
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.SingleMulVec
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CardAndAdd, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CountGen

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CardAndAdd =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CardAndAdd", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.LocDensFF\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.SingleMulVec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.OmVe

open Matrix
open PI.VolStabS (ffGram ffH)

section gen

variable {K : Type} [CommRing K] (σ : K →+* K) {M : ℕ} (J : Matrix (Fin M) (Fin M) K)

private theorem eq_or_exists_succAbove {n : ℕ} (p i : Fin (n + 1)) :
    i = p ∨ ∃ j, i = p.succAbove j := by
  by_cases h : i = p
  · exact Or.inl h
  · right
    exact (Fin.eq_self_or_eq_succAbove p i).resolve_left h

theorem gram_split (hσ : ∀ x, σ (σ x) = x) (hJ : ∀ i j, σ (J j i) = J i j) {a' : ℕ}
    (T : Matrix (Fin (a' + 1)) (Fin (a' + 1)) K) (i₀ : Fin (a' + 1)) (hr : ∀ j, T i₀ j = 0)
    (hc : ∀ j, T j i₀ = 0) (t : K) (X : Fin (a' + 1) → Fin M → K) :
    ffGram σ J X = T + Matrix.single i₀ i₀ t ↔
      ffGram σ J (fun j => X (i₀.succAbove j)) = T.submatrix i₀.succAbove i₀.succAbove ∧
        (∀ j, ffH σ J (X (i₀.succAbove j)) (X i₀) = 0) ∧ ffH σ J (X i₀) (X i₀) = t := by
  constructor
  · intro h
    have hh : ∀ i j, PI.VolStabS.ffH σ J (X i) (X j) = T i j + Matrix.single i₀ i₀ t i j :=
      fun i j => congrFun (congrFun h i) j
    refine ⟨?_, fun j => ?_, ?_⟩
    · ext j k
      show PI.VolStabS.ffH σ J (X (i₀.succAbove j)) (X (i₀.succAbove k)) =
        T (i₀.succAbove j) (i₀.succAbove k)
      have hne : i₀.succAbove j ≠ i₀ := Fin.succAbove_ne i₀ j
      rw [hh]
      simp [hne.symm]
    · have hne : i₀.succAbove j ≠ i₀ := Fin.succAbove_ne i₀ j
      rw [hh, hc]
      simp [hne.symm]
    · rw [hh, hr]
      simp
  · rintro ⟨h1, h2, h3⟩
    ext i j
    show PI.VolStabS.ffH σ J (X i) (X j) = T i j + Matrix.single i₀ i₀ t i j
    rcases eq_or_exists_succAbove i₀ i with hi | ⟨i', hi⟩ <;>
      rcases eq_or_exists_succAbove i₀ j with hj | ⟨j', hj⟩ <;> rw [hi, hj]
    · rw [h3, hr]
      simp
    · have hne : i₀.succAbove j' ≠ i₀ := Fin.succAbove_ne i₀ j'
      rw [ffH_herm σ J hσ hJ (X (i₀.succAbove j')) (X i₀), h2 j', map_zero, hr]
      simp [hne.symm]
    · have hne : i₀.succAbove i' ≠ i₀ := Fin.succAbove_ne i₀ i'
      rw [h2 i', hc]
      simp [hne.symm]
    · have hne : i₀.succAbove i' ≠ i₀ := Fin.succAbove_ne i₀ i'
      rw [show PI.VolStabS.ffH σ J (X (i₀.succAbove i')) (X (i₀.succAbove j')) =
          T (i₀.succAbove i') (i₀.succAbove j') from congrFun (congrFun h1 i') j']
      simp [hne.symm]

theorem card_split [Finite K] (hσ : ∀ x, σ (σ x) = x) (hJ : ∀ i j, σ (J j i) = J i j) {a' : ℕ}
    (T : Matrix (Fin (a' + 1)) (Fin (a' + 1)) K) (i₀ : Fin (a' + 1)) (hr : ∀ j, T i₀ j = 0)
    (hc : ∀ j, T j i₀ = 0) (t : K) (R : (Fin M → K) → Prop) :
    Nat.card {X : Fin (a' + 1) → Fin M → K // ffGram σ J X = T + Matrix.single i₀ i₀ t ∧ R (X i₀)} =
      Nat.card (Σ Y : {Y : Fin a' → Fin M → K // ffGram σ J Y = T.submatrix i₀.succAbove i₀.succAbove},
        {x : Fin M → K // (∀ j, ffH σ J (Y.1 j) x = 0) ∧ ffH σ J x x = t ∧ R x}) := by
  have key := fun X => gram_split σ J hσ hJ T i₀ hr hc t X
  apply Nat.card_congr
  refine
    { toFun := fun X => ⟨⟨fun j => X.1 (i₀.succAbove j), ((key X.1).1 X.2.1).1⟩,
        ⟨X.1 i₀, ((key X.1).1 X.2.1).2.1, ((key X.1).1 X.2.1).2.2, X.2.2⟩⟩
      invFun := fun p => ⟨Fin.insertNth (α := fun _ => Fin M → K) i₀ p.2.1 p.1.1,
        (key _).2 ⟨by simpa [Fin.insertNth_apply_succAbove] using p.1.2,
          fun j => by simpa [Fin.insertNth_apply_succAbove, Fin.insertNth_apply_same]
            using p.2.2.1 j,
          by simpa [Fin.insertNth_apply_same] using p.2.2.2.1⟩,
        by simpa [Fin.insertNth_apply_same] using p.2.2.2.2⟩
      left_inv := ?_
      right_inv := ?_ }
  · intro X
    apply Subtype.ext
    funext i
    rcases eq_or_exists_succAbove i₀ i with hi | ⟨j, hi⟩ <;> rw [hi]
    · simp [Fin.insertNth_apply_same]
    · simp [Fin.insertNth_apply_succAbove]
  · rintro ⟨⟨Y, hY⟩, ⟨x, hx⟩⟩
    apply Sigma.subtype_ext
    · apply Subtype.ext
      funext j
      simp [Fin.insertNth_apply_succAbove]
    · simp [Fin.insertNth_apply_same]

theorem card_perp [Finite K] {a' : ℕ} (T0 : Matrix (Fin a') (Fin a') K) (hu : IsUnit T0.det)
    (Y : Fin a' → Fin M → K) (hY : ffGram σ J Y = T0) :
    Nat.card {x : Fin M → K // ∀ j, ffH σ J (Y j) x = 0} * Nat.card K ^ a' = Nat.card K ^ M := by
  classical
  let f : (Fin M → K) →+ (Fin a' → K) :=
    AddMonoidHom.mk' (fun x j => PI.VolStabS.ffH σ J (Y j) x) (fun x y => by
      funext j
      exact ffH_add_right σ J (Y j) x y)
  have hsurj : Function.Surjective f := by
    intro v
    refine ⟨∑ l, (T0⁻¹ *ᵥ v) l • Y l, ?_⟩
    funext j
    show PI.VolStabS.ffH σ J (Y j) (∑ l, (T0⁻¹ *ᵥ v) l • Y l) = v j
    rw [ffH_sum_right σ J Finset.univ]
    have hT : ∀ l, PI.VolStabS.ffH σ J (Y j) (Y l) = T0 j l := fun l => congrFun (congrFun hY j) l
    simp_rw [hT]
    have hinv : T0 *ᵥ (T0⁻¹ *ᵥ v) = v := by
      rw [Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv T0 hu, Matrix.one_mulVec]
    calc ∑ l, (T0⁻¹ *ᵥ v) l * T0 j l = (T0 *ᵥ (T0⁻¹ *ᵥ v)) j := by
          simp only [Matrix.mulVec, dotProduct]
          exact Finset.sum_congr rfl (fun l _ => mul_comm _ _)
      _ = v j := by rw [hinv]
  have hker : Nat.card {x : Fin M → K // ∀ j, PI.VolStabS.ffH σ J (Y j) x = 0} = Nat.card f.ker := by
    apply Nat.card_congr
    exact Equiv.subtypeEquivRight (fun x => by
      rw [AddMonoidHom.mem_ker]
      exact ⟨fun h => by ext j; exact h j, fun h j => congrFun h j⟩)
  have hidx : f.ker.index = Nat.card (Fin a' → K) := by
    exact Nat.card_congr (QuotientAddGroup.quotientKerEquivOfSurjective f hsurj).toEquiv
  have hpow : ∀ n : ℕ, Nat.card (Fin n → K) = Nat.card K ^ n := by
    intro n
    rw [Nat.card_fun, Nat.card_fin]
  rw [hker, ← hpow a', ← hidx, AddSubgroup.card_mul_index, hpow M]

theorem card_and_add {α : Type} [Finite α] (G Q : α → Prop) :
    Nat.card {x // G x ∧ Q x} + Nat.card {x // G x ∧ ¬ Q x} = Nat.card {x // G x} := by
  classical
  rw [← Nat.card_sum]
  exact Nat.card_congr
    (((Equiv.subtypeSubtypeEquivSubtypeInter G Q).symm.sumCongr
      (Equiv.subtypeSubtypeEquivSubtypeInter G (fun x => ¬ Q x)).symm).trans
      (Equiv.sumCompl (fun y : {x // G x} => Q y.1)))

end gen

end PI.OmVe
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CardAndAdd =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CountGen =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CountGen", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.LocDensFF\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CardAndAdd\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.SingleMulVec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.OmVe

open Matrix
open PI.VolStabS (ffGram ffH)

section gen

variable {K : Type} [CommRing K] (σ : K →+* K) {M : ℕ} (J : Matrix (Fin M) (Fin M) K)

theorem count_gen [Finite K] (hσ : ∀ x, σ (σ x) = x) (hJ : ∀ i j, σ (J j i) = J i j) {a' : ℕ}
    (T : Matrix (Fin (a' + 1)) (Fin (a' + 1)) K) (i₀ : Fin (a' + 1)) (hr : ∀ j, T i₀ j = 0)
    (hc : ∀ j, T j i₀ = 0) (hu : IsUnit (T + Matrix.single i₀ i₀ 1).det) (haM : a' ≤ M)
    {k : Type} [Finite k] [Zero k] (ι : k → K) (hι : Function.Injective ι) (hι0 : ι 0 = 0)
    (hrange : ∀ x : Fin M → K, ∃ c, ffH σ J x x = ι c) (N D : ℕ)
    (hN : ∀ c, c ≠ 0 → Nat.card {X : Fin (a' + 1) → Fin M → K //
      ffGram σ J X = T + Matrix.single i₀ i₀ (ι c)} = N)
    (hD : ∀ Y : Fin a' → Fin M → K, ffGram σ J Y = T.submatrix i₀.succAbove i₀.succAbove →
      Nat.card {x : Fin M → K // (∀ j, ffH σ J (Y j) x = 0) ∧ ffH σ J x x = 0 ∧
        ¬ ∀ c : K, c • x = 0 → c = 0} = D) :
    Nat.card {X : Fin (a' + 1) → Fin M → K // ffGram σ J X = T ∧ LinearIndependent K X} +
      Nat.card {Y : Fin a' → Fin M → K // ffGram σ J Y = T.submatrix i₀.succAbove i₀.succAbove} * D +
      (Nat.card k - 1) * N =
    Nat.card {Y : Fin a' → Fin M → K // ffGram σ J Y = T.submatrix i₀.succAbove i₀.succAbove} *
      Nat.card K ^ (M - a') := by
  classical
  have : Fintype K := Fintype.ofFinite K
  have : Fintype k := Fintype.ofFinite k
  set T0 := T.submatrix i₀.succAbove i₀.succAbove with hT0
  have hu0 : IsUnit T0.det := by
    have h1 := det_corOne T i₀ hr (1 : K)
    rw [one_mul] at h1
    rw [← h1]
    exact hu
  let A : {Y : Fin a' → Fin M → K // ffGram σ J Y = T0} → k → ℕ := fun Y c =>
    Nat.card {x : Fin M → K // (∀ j, ffH σ J (Y.1 j) x = 0) ∧ ffH σ J x x = ι c}
  have hperp : ∀ Y : {Y : Fin a' → Fin M → K // ffGram σ J Y = T0},
      Nat.card {x : Fin M → K // ∀ j, ffH σ J (Y.1 j) x = 0} = Nat.card K ^ (M - a') := by
    intro Y
    have h1 := card_perp σ J T0 hu0 Y.1 Y.2
    have hK : 0 < Nat.card K := Nat.card_pos
    have h2 : Nat.card K ^ M = Nat.card K ^ (M - a') * Nat.card K ^ a' := by
      rw [← pow_add, Nat.sub_add_cancel haM]
    rw [h2] at h1
    exact Nat.eq_of_mul_eq_mul_right (pow_pos hK _) h1
  have hfib : ∀ Y : {Y : Fin a' → Fin M → K // ffGram σ J Y = T0},
      Nat.card {x : Fin M → K // ∀ j, ffH σ J (Y.1 j) x = 0} = ∑ c, A Y c := by
    intro Y
    simp only [A, Nat.card_eq_fintype_card, Fintype.card_subtype]
    rw [Finset.card_eq_sum_card_fiberwise (f := fun x => ffH σ J x x) (t := Finset.univ.image ι)
      (fun x _ => by
        obtain ⟨c, hc'⟩ := hrange x
        exact Finset.mem_image.2 ⟨c, Finset.mem_univ _, hc'.symm⟩)]
    rw [Finset.sum_image (fun a _ b _ h => hι h)]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [Finset.filter_filter]
  have htot : Nat.card {Y : Fin a' → Fin M → K // ffGram σ J Y = T0} * Nat.card K ^ (M - a') =
      ∑ c, ∑ Y, A Y c := by
    rw [Finset.sum_comm, Nat.card_eq_fintype_card, ← smul_eq_mul, ← Finset.card_univ, ← Finset.sum_const]
    refine Finset.sum_congr rfl fun Y _ => ?_
    rw [← hperp Y, hfib Y]
  have hcN : ∀ c, c ≠ 0 → ∑ Y, A Y c = N := by
    intro c hc0
    rw [← hN c hc0]
    have h1 := card_split σ J hσ hJ T i₀ hr hc (ι c) (fun _ => True)
    simp only [and_true] at h1
    rw [h1, Nat.card_sigma]
  have h0 : ∑ Y, A Y 0 = Nat.card {X : Fin (a' + 1) → Fin M → K // ffGram σ J X = T ∧ LinearIndependent K X} +
      Nat.card {Y : Fin a' → Fin M → K // ffGram σ J Y = T0} * D := by
    have hR := card_split σ J hσ hJ T i₀ hr hc 0 (fun x => ∀ c : K, c • x = 0 → c = 0)
    simp only [Matrix.single_zero, add_zero] at hR
    have hLI : Nat.card {X : Fin (a' + 1) → Fin M → K // ffGram σ J X = T ∧ LinearIndependent K X} =
        Nat.card {X : Fin (a' + 1) → Fin M → K // ffGram σ J X = T ∧ ∀ c : K, c • X i₀ = 0 → c = 0} :=
      Nat.card_congr (Equiv.subtypeEquivRight fun X =>
        ⟨fun h => ⟨h.1, (indep_iff σ J i₀ hc hu X h.1).1 h.2⟩,
          fun h => ⟨h.1, (indep_iff σ J i₀ hc hu X h.1).2 h.2⟩⟩)
    have hD' : ∑ Y : {Y : Fin a' → Fin M → K // ffGram σ J Y = T0},
        Nat.card {x : Fin M → K // (∀ j, ffH σ J (Y.1 j) x = 0) ∧ ffH σ J x x = 0 ∧
          ¬ ∀ c : K, c • x = 0 → c = 0} =
        Nat.card {Y : Fin a' → Fin M → K // ffGram σ J Y = T0} * D := by
      rw [Finset.sum_congr rfl (fun Y _ => hD Y.1 Y.2), Finset.sum_const, Finset.card_univ,
        smul_eq_mul, Nat.card_eq_fintype_card]
    rw [hLI, hR, Nat.card_sigma, ← hD', ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun Y _ => ?_
    simp only [A, hι0]
    have h2 := card_and_add (fun x : Fin M → K => (∀ j, ffH σ J (Y.1 j) x = 0) ∧ ffH σ J x x = 0)
      (fun x => ∀ c : K, c • x = 0 → c = 0)
    simp only [and_assoc] at h2
    exact h2.symm
  rw [← Finset.add_sum_erase _ _ (Finset.mem_univ (0 : k)),
    Finset.sum_congr rfl (fun c hc0 => hcN c (Finset.ne_of_mem_erase hc0)), Finset.sum_const,
    Finset.card_erase_of_mem (Finset.mem_univ _), Finset.card_univ, smul_eq_mul, h0] at htot
  rw [htot, Nat.card_eq_fintype_card (α := k)]

end gen

end PI.OmVe
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.CountGen =====
