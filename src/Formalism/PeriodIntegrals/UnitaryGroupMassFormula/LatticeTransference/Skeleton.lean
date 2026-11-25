module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.TransferenceKey
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.DualTransport
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Minima, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Skeleton

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Minima =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Minima", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.TransferenceKey\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module
open scoped InnerProductSpace

namespace PI

variable {N : ℕ}

lemma succMin_nonneg (M : Submodule ℤ (EuclideanSpace ℝ (Fin N))) (i : ℕ) : 0 ≤ succMin M i := Real.sInf_nonneg fun _ ht => ht.1

lemma finrank_span_lt_succMin (M : Submodule ℤ (EuclideanSpace ℝ (Fin N))) (i : ℕ) (hi : 1 ≤ i) :
    finrank ℝ (Submodule.span ℝ {x : EuclideanSpace ℝ (Fin N) | x ∈ M ∧ ‖x‖ < succMin M i}) < i := by
  by_contra hcon
  push_neg at hcon
  obtain ⟨b, hbS, hbspan, hbli⟩ := exists_linearIndependent ℝ
    {x : EuclideanSpace ℝ (Fin N) | x ∈ M ∧ ‖x‖ < succMin M i}
  have hbfin : b.Finite := hbli.setFinite
  letI := hbfin.fintype
  have hcard := finrank_span_set_eq_card hbli
  rw [hbspan] at hcard
  have hle : i ≤ Fintype.card b := by rw [← Set.toFinset_card]; omega
  let e : Fin i ↪ b := (Fin.castLEEmb hle).trans (Fintype.equivFin b).symm.toEmbedding
  let v : Fin i → EuclideanSpace ℝ (Fin N) := fun j => (e j : EuclideanSpace ℝ (Fin N))
  have hvli : LinearIndependent ℝ v := hbli.comp e e.injective
  have hvS : ∀ j, v j ∈ M ∧ ‖v j‖ < succMin M i := fun j => hbS (e j).2
  have hne : (Finset.univ : Finset (Fin i)).Nonempty := ⟨⟨0, hi⟩, Finset.mem_univ _⟩
  have ht_lt : Finset.univ.sup' hne (fun j => ‖v j‖) < succMin M i :=
    (Finset.sup'_lt_iff hne).2 fun j _ => (hvS j).2
  have ht_mem : Finset.univ.sup' hne (fun j => ‖v j‖) ∈ {t : ℝ | 0 ≤ t ∧
      ∃ v : Fin i → EuclideanSpace ℝ (Fin N), (∀ j, v j ∈ M) ∧ LinearIndependent ℝ v ∧ ∀ j, ‖v j‖ ≤ t} :=
    ⟨(norm_nonneg _).trans (Finset.le_sup' (fun j => ‖v j‖) (Finset.mem_univ ⟨0, hi⟩)),
      v, fun j => (hvS j).1, hvli, fun j => Finset.le_sup' (fun j => ‖v j‖) (Finset.mem_univ j)⟩
  have hinf : succMin M i ≤ Finset.univ.sup' hne (fun j => ‖v j‖) :=
    csInf_le ⟨0, fun t ht => ht.1⟩ ht_mem
  exact lt_irrefl (succMin M i) (lt_of_le_of_lt hinf ht_lt)

theorem minima_of_key (h : TransferenceKey) : TransferenceMinima := by
  intro N M hdisc hspan i hi hiN
  have hA0 : 0 ≤ succMin M i := succMin_nonneg M i
  have hB0 : 0 ≤ succMin (dualZ M) (N + 1 - i) := succMin_nonneg _ _
  rcases hB0.eq_or_lt with hB | hB
  · rw [← hB, mul_zero]; positivity
  haveI : DiscreteTopology M := hdisc
  haveI : IsZLattice ℝ M := ⟨hspan⟩
  set A := succMin M i with hAdef
  set B := succMin (dualZ M) (N + 1 - i) with hBdef
  set Sd : Submodule ℝ (EuclideanSpace ℝ (Fin N)) :=
    Submodule.span ℝ {y : EuclideanSpace ℝ (Fin N) | y ∈ dualZ M ∧ ‖y‖ < B} with hSddef
  set V' : Submodule ℝ (EuclideanSpace ℝ (Fin N)) :=
    Submodule.span ℝ {x : EuclideanSpace ℝ (Fin N) | x ∈ M ∧ ‖x‖ < A} with hV'def
  have hSd : finrank ℝ Sd < N + 1 - i := finrank_span_lt_succMin (dualZ M) (N + 1 - i) (by omega)
  have hV' : finrank ℝ V' < i := finrank_span_lt_succMin M i hi
  have hE : finrank ℝ (EuclideanSpace ℝ (Fin N)) = N := finrank_euclideanSpace_fin
  have h1 : finrank ℝ Sd + finrank ℝ Sdᗮ = N := (Submodule.finrank_add_finrank_orthogonal Sd).trans hE
  have h2 : finrank ℝ V' + finrank ℝ V'ᗮ = N := (Submodule.finrank_add_finrank_orthogonal V').trans hE
  have h3 := Submodule.finrank_sup_add_finrank_inf_eq Sdᗮ V'ᗮ
  have h4 : finrank ℝ (Sdᗮ ⊔ V'ᗮ : Submodule ℝ (EuclideanSpace ℝ (Fin N))) ≤ N := (Submodule.finrank_le _).trans hE.le
  have hne : (Sdᗮ ⊓ V'ᗮ : Submodule ℝ (EuclideanSpace ℝ (Fin N))) ≠ ⊥ := by
    intro h0
    rw [h0, finrank_bot] at h3
    omega
  obtain ⟨u0, hu0W, hu0ne⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hne
  have hu0pos : 0 < ‖u0‖ := norm_pos_iff.2 hu0ne
  have hN1 : (1 : ℝ) ≤ N := by exact_mod_cast (by omega : 1 ≤ N)
  suffices hAB : A ≤ N / B by rwa [le_div_iff₀ hB] at hAB
  apply le_of_forall_pos_le_add
  intro ε hε
  set c : ℝ := N / (2 * B) + ε / 2 with hcdef
  have hc : 0 < c := by positivity
  set u : EuclideanSpace ℝ (Fin N) := (c / ‖u0‖) • u0 with hudef
  have hun : ‖u‖ = c := by
    rw [hudef, norm_smul, Real.norm_eq_abs, abs_of_pos (div_pos hc hu0pos), div_mul_cancel₀ _ hu0pos.ne']
  have huW : u ∈ (Sdᗮ ⊓ V'ᗮ : Submodule ℝ (EuclideanSpace ℝ (Fin N))) :=
    Submodule.smul_mem _ _ hu0W
  have huSd : u ∈ Sdᗮ := (Submodule.mem_inf.1 huW).1
  have huV : u ∈ V'ᗮ := (Submodule.mem_inf.1 huW).2
  obtain ⟨l, hlM, hl⟩ := h (EuclideanSpace ℝ (Fin N)) M B u hB (fun y hy hyB => by
    have hyd : y ∈ dualZ M := fun x hx => by
      obtain ⟨n, hn⟩ := hy x hx
      exact ⟨n, by rw [real_inner_comm]; exact hn⟩
    have hySd : y ∈ Sd := Submodule.subset_span ⟨hyd, hyB⟩
    exact ⟨0, by rw [Submodule.inner_left_of_mem_orthogonal hySd huSd]; simp⟩)
  rw [hE] at hl
  have hul : ‖u - l‖ ≤ N / (2 * B) := by
    rw [le_div_iff₀ (by positivity)]; linarith
  have hlV : l ∉ V' := by
    intro hlV
    have hin : inner ℝ u l = 0 := Submodule.inner_left_of_mem_orthogonal hlV huV
    have hsq : ‖u - l‖ ^ 2 = ‖u‖ ^ 2 + ‖l‖ ^ 2 := by
      rw [@norm_sub_sq_real, hin]; ring
    have hsq2 : ‖u‖ ^ 2 ≤ ‖u - l‖ ^ 2 := by rw [hsq]; nlinarith [sq_nonneg ‖l‖]
    have hge : ‖u‖ ≤ ‖u - l‖ := by nlinarith [norm_nonneg (u - l), norm_nonneg u]
    linarith
  have hlA : A ≤ ‖l‖ := by
    by_contra hlt
    push_neg at hlt
    exact hlV (Submodule.subset_span ⟨hlM, hlt⟩)
  have htri : ‖l‖ ≤ ‖u‖ + ‖u - l‖ := by
    calc ‖l‖ = ‖u - (u - l)‖ := by rw [sub_sub_cancel]
      _ ≤ ‖u‖ + ‖u - l‖ := norm_sub_le _ _
  have hhalf : (N : ℝ) / (2 * B) + N / (2 * B) = N / B := by field_simp; ring
  linarith

end PI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Minima =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Skeleton =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Skeleton", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.TransferenceKey\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.DualTransport\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Minima\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Module

namespace PI.Tr

theorem key_of (hL : KeyLarge) (hS : KeySmall) : PI.TransferenceKey := by
  intro E _ _ _ Λ _ _ lam u hlam hu
  rcases Nat.lt_or_ge (finrank ℝ E) 2 with h | h
  · exact hS E Λ lam u (by omega) hlam hu
  · exact hL E Λ lam u h hlam hu

theorem transferenceCover_of' (hP : PoissonGauss) (hG : GaussStep) (hS : KeySmall) :
    PI.TransferenceCover := PI.cover_of_key (key_of (hG hP) hS)

theorem transferenceMinima_of' (hP : PoissonGauss) (hG : GaussStep) (hS : KeySmall) :
    PI.TransferenceMinima := PI.minima_of_key (key_of (hG hP) hS)

end PI.Tr
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeTransference.Skeleton =====
