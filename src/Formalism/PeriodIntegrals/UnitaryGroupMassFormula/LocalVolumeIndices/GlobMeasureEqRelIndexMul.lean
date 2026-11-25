module

public import Formalism.SharpRestriction.CuspSpanNormBounds.GlobAut
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.EntriesLat
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalVolumeIndices.MassDataKppVolOf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalVolumeIndices.Bridge
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.LinearIndependentOneBeta
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.FiniteNeighbourhoodSecond
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalVolumeIndices.LocBEOfNatCast
import Formalism.LocalToGlobal.SiegelLatticeTheory.FundamentalEquivalence.AdBridge
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.CoordFin, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.LatticeOfEntriesIntegral, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalVolumeIndices.GlobMeasureEqRelIndexMul

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.CoordFin =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.CoordFin", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.GlobAut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FundamentalEquivalence.AdBridge\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.InvTopW

open NumberField IsDedekindDomain Matrix Topology Filter
open scoped TensorProduct Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.MainNotions.S (AutInst uMat)
open Formalism.L2.SG.AdBridge

theorem tmul_mem_IntAf (I : AutInst) {x : I.E} (hx : x ∈ Formalism.UG.intOE I.E)
    {a : Formalism.MainNotions.S.Af I.F} (ha : a ∈ Formalism.UG.intAd I.F) :
    x ⊗ₜ[I.F] a ∈ Formalism.MainNotions.S.IntAf I.F I.E := by
  have h1 : x ⊗ₜ[I.F] (1 : Formalism.MainNotions.S.Af I.F) ∈ Formalism.MainNotions.S.IntAf I.F I.E :=
    Subring.subset_closure (Or.inl ⟨⟨x, hx⟩, rfl⟩)
  have h2 : (1 : I.E) ⊗ₜ[I.F] a ∈ Formalism.MainNotions.S.IntAf I.F I.E :=
    Subring.subset_closure (Or.inr ⟨⟨a, ha⟩, rfl⟩)
  have h3 := mul_mem h1 h2
  rwa [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul] at h3

theorem tmul_natCast_mul (I : AutInst) (N : ℕ) (b : I.E) (z : Formalism.MainNotions.S.Af I.F) :
    b ⊗ₜ[I.F] ((N : Formalism.MainNotions.S.Af I.F) * z) = (N : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) * (b ⊗ₜ[I.F] z) := by
  rw [← nsmul_eq_mul, ← nsmul_eq_mul, TensorProduct.tmul_smul]

end PI.InvTopW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.CoordFin =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.LatticeOfEntriesIntegral =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.LatticeOfEntriesIntegral", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.EntriesLat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.InvTopW

open NumberField Matrix
open scoped TensorProduct
open Formalism.MainNotions.S (AutInst)

private theorem exists_nat_mul_lemma {E : Type} [Field E] [NumberField E] (x : E) :
    ∃ d : ℕ, 1 ≤ d ∧ (d : E) * x ∈ Formalism.UG.intOE E := by
  have H : ∃ y : ℤ, y ≠ 0 ∧ IsIntegral ℤ ((y : E) * x) := by
    have hq : IsIntegral ℚ x := Algebra.IsIntegral.isIntegral x
    first
    | (obtain ⟨m, hm⟩ := IsIntegral.exists_multiple_integral_of_isLocalization (nonZeroDivisors ℤ) x hq
       exact ⟨m, nonZeroDivisors.coe_ne_zero m, by rw [← zsmul_eq_mul]; exact hm⟩)
  obtain ⟨y, hy0, hint⟩ := H
  have hmem : (y : E) * x ∈ Formalism.UG.intOE E :=
    RingHom.mem_range.2 ((IsIntegralClosure.isIntegral_iff (A := 𝓞 E)).1 hint)
  obtain ⟨n, rfl | rfl⟩ := Int.eq_nat_or_neg y
  · refine ⟨n, Nat.one_le_iff_ne_zero.2 (by rintro rfl; simp at hy0), ?_⟩
    simpa using hmem
  · refine ⟨n, Nat.one_le_iff_ne_zero.2 (by rintro rfl; simp at hy0), ?_⟩
    simpa using hmem

theorem exists_nat_den {E : Type} [Field E] [NumberField E] (s : Finset E) :
    ∃ d : ℕ, 1 ≤ d ∧ ∀ x ∈ s, (d : E) * x ∈ Formalism.UG.intOE E := by
  classical
  refine Finset.induction_on s ⟨1, le_rfl, by simp⟩ ?_
  intro a s _ ih
  obtain ⟨d, hd, hds⟩ := ih
  obtain ⟨e, he, hea⟩ := exists_nat_mul_lemma a
  refine ⟨d * e, Nat.mul_pos hd he, fun x hx => ?_⟩
  rcases Finset.mem_insert.1 hx with rfl | hx
  · rw [Nat.cast_mul, mul_assoc]
    exact mul_mem (natCast_mem _ d) hea
  · rw [Nat.cast_mul, mul_comm (d : E), mul_assoc]
    exact mul_mem (natCast_mem _ e) (hds x hx)

theorem algebraMap_mem_intOE {E : Type} [Field E] [NumberField E] (a : 𝓞 E) :
    algebraMap (𝓞 E) E a ∈ Formalism.UG.intOE E := by
  first
  | exact RingHom.mem_range_self _ a

theorem exists_den_lat {E : Type} [Field E] [NumberField E] {n : ℕ}
    (L : Submodule (𝓞 E) (Fin n → E)) (hL : L.FG) :
    ∃ d : ℕ, 1 ≤ d ∧ ∀ x ∈ L, ∀ i, (d : E) * x i ∈ Formalism.UG.intOE E := by
  classical
  obtain ⟨S, hS⟩ := hL
  obtain ⟨d, hd, hds⟩ := exists_nat_den (S.biUnion fun v => Finset.univ.image v)
  refine ⟨d, hd, fun x hx i => ?_⟩
  let K : Submodule (𝓞 E) (Fin n → E) :=
    { carrier := {x | ∀ i, (d : E) * x i ∈ Formalism.UG.intOE E}
      add_mem' := by
        intro a b ha hb i
        rw [Pi.add_apply, mul_add]
        exact add_mem (ha i) (hb i)
      zero_mem' := by
        intro i
        rw [Pi.zero_apply, mul_zero]
        exact zero_mem _
      smul_mem' := by
        intro r a ha i
        rw [Pi.smul_apply, Algebra.smul_def, mul_left_comm]
        exact mul_mem (algebraMap_mem_intOE r) (ha i) }
  have hSK : Submodule.span (𝓞 E) (S : Set (Fin n → E)) ≤ K := by
    rw [Submodule.span_le]
    intro v hv
    show ∀ j, (d : E) * v j ∈ Formalism.UG.intOE E
    intro j
    exact hds _ (Finset.mem_biUnion.2 ⟨v, Finset.mem_coe.1 hv,
      Finset.mem_image.2 ⟨j, Finset.mem_univ _, rfl⟩⟩)
  rw [← hS] at hx
  exact (show ∀ i, (d : E) * x i ∈ Formalism.UG.intOE E from hSK hx) i

theorem exists_single_mem {E : Type} [Field E] [NumberField E] {n : ℕ}
    (L : Submodule (𝓞 E) (Fin n → E)) (hL : Submodule.span E (L : Set (Fin n → E)) = ⊤)
    (j : Fin n) : ∃ d : ℕ, 1 ≤ d ∧ (d : E) • Pi.single j (1 : E) ∈ L := by
  have hnat : ∀ (d : ℕ) (v : Fin n → E), v ∈ L → (d : E) • v ∈ L := fun d v hv => by
    rw [Nat.cast_smul_eq_nsmul]
    exact nsmul_mem hv d
  let K : Submodule E (Fin n → E) :=
    { carrier := {x | ∃ d : ℕ, 1 ≤ d ∧ (d : E) • x ∈ L}
      add_mem' := by
        rintro a b ⟨d1, h1, ha⟩ ⟨d2, h2, hb⟩
        refine ⟨d1 * d2, Nat.mul_pos h1 h2, ?_⟩
        have e : ((d1 * d2 : ℕ) : E) • (a + b) = (d2 : E) • ((d1 : E) • a) + (d1 : E) • ((d2 : E) • b) := by
          rw [smul_add, smul_smul, smul_smul, Nat.cast_mul, mul_comm (d2 : E) (d1 : E)]
        rw [e]
        exact add_mem (hnat d2 _ ha) (hnat d1 _ hb)
      zero_mem' := ⟨1, le_rfl, by rw [smul_zero]; exact L.zero_mem⟩
      smul_mem' := by
        rintro r x ⟨d, hd, hx⟩
        obtain ⟨d', hd', hr⟩ := exists_nat_den ({r} : Finset E)
        obtain ⟨s, hs⟩ := RingHom.mem_range.1 (hr r (Finset.mem_singleton_self r))
        refine ⟨d' * d, Nat.mul_pos hd' hd, ?_⟩
        have e : ((d' * d : ℕ) : E) • (r • x) = s • ((d : E) • x) := by
          rw [← algebraMap_smul E s ((d : E) • x), hs, smul_smul, smul_smul, Nat.cast_mul]
          congr 1
          ring
        rw [e]
        exact L.smul_mem s hx }
  have hK : Submodule.span E (L : Set (Fin n → E)) ≤ K := by
    rw [Submodule.span_le]
    intro x hx
    show ∃ d : ℕ, 1 ≤ d ∧ (d : E) • x ∈ L
    exact ⟨1, le_rfl, by rw [Nat.cast_one, one_smul]; exact hx⟩
  have hmem : Pi.single j (1 : E) ∈ Submodule.span E (L : Set (Fin n → E)) := by
    rw [hL]
    exact Submodule.mem_top
  exact hK hmem

theorem exists_good_den {E : Type} [Field E] [NumberField E] {n : ℕ}
    (L : Submodule (𝓞 E) (Fin n → E)) (hF : L.FG)
    (hS : Submodule.span E (L : Set (Fin n → E)) = ⊤) :
    ∃ c : ℕ, 1 ≤ c ∧ (∀ x ∈ L, ∀ i, (c : E) * x i ∈ Formalism.UG.intOE E) ∧
      ∀ j, (c : E) • Pi.single j (1 : E) ∈ L := by
  obtain ⟨d, hd, hdL⟩ := exists_den_lat L hF
  choose e he1 he2 using fun j => exists_single_mem L hS j
  refine ⟨d * ∏ j, e j, Nat.mul_pos hd (Finset.prod_pos fun j _ => he1 j), fun x hx i => ?_,
    fun j => ?_⟩
  · rw [Nat.cast_mul, mul_comm (d : E), mul_assoc]
    exact mul_mem (natCast_mem _ _) (hdL x hx i)
  · obtain ⟨m, hm⟩ := Finset.dvd_prod_of_mem e (Finset.mem_univ j)
    rw [hm, show d * (e j * m) = d * m * e j by ring, Nat.cast_mul, mul_smul,
      Nat.cast_smul_eq_nsmul]
    exact nsmul_mem (he2 j) _

section Loc

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem inclE_mem_int (x : E) (hx : x ∈ Formalism.UG.intOE E) :
    Formalism.UG.inclE (F := F) (Formalism.MainNotions.S.Af F) x ∈ Formalism.MainNotions.S.IntAf F E := by
  first
  | exact Subring.subset_closure (Or.inl ⟨⟨x, hx⟩, rfl⟩)

theorem lat_den {n : ℕ} (L : Submodule (𝓞 E) (Fin n → E)) (c : ℕ)
    (hc : ∀ x ∈ L, ∀ i, (c : E) * x i ∈ Formalism.UG.intOE E) :
    ∀ y ∈ Formalism.MainNotions.S.lamAf (F := F) L, ∀ i,
      (c : E ⊗[F] Formalism.MainNotions.S.Af F) * y i ∈ Formalism.MainNotions.S.IntAf F E := by
  intro y hy
  let K : Submodule (Formalism.MainNotions.S.IntAf F E) (Fin n → E ⊗[F] Formalism.MainNotions.S.Af F) :=
    { carrier := {y | ∀ i, (c : E ⊗[F] Formalism.MainNotions.S.Af F) * y i ∈ Formalism.MainNotions.S.IntAf F E}
      add_mem' := by
        intro a b ha hb i
        rw [Pi.add_apply, mul_add]
        exact add_mem (ha i) (hb i)
      zero_mem' := by
        intro i
        rw [Pi.zero_apply, mul_zero]
        exact zero_mem _
      smul_mem' := by
        intro r a ha i
        rw [Pi.smul_apply, Subring.smul_def, smul_eq_mul, mul_left_comm]
        exact mul_mem r.2 (ha i) }
  have hK : Formalism.MainNotions.S.lamAf (F := F) L ≤ K := by
    unfold Formalism.MainNotions.S.lamAf
    rw [Submodule.span_le]
    rintro _ ⟨x, rfl⟩
    show ∀ i, (c : E ⊗[F] Formalism.MainNotions.S.Af F) * Formalism.UG.inclE (F := F) (Formalism.MainNotions.S.Af F) ((x : Fin n → E) i) ∈
      Formalism.MainNotions.S.IntAf F E
    intro i
    have h := inclE_mem_int (F := F) _ (hc x x.2 i)
    rw [map_mul, map_natCast] at h
    exact h
  exact hK hy

theorem single_mem_lat {n : ℕ} (L : Submodule (𝓞 E) (Fin n → E)) (c : ℕ)
    (hs : ∀ j, (c : E) • Pi.single j (1 : E) ∈ L) (j : Fin n) :
    Pi.single j (c : E ⊗[F] Formalism.MainNotions.S.Af F) ∈ Formalism.MainNotions.S.lamAf (F := F) L := by
  have hx : (fun i => Formalism.UG.inclE (F := F) (Formalism.MainNotions.S.Af F)
      (((c : E) • Pi.single j (1 : E) : Fin n → E) i)) = Pi.single j (c : E ⊗[F] Formalism.MainNotions.S.Af F) := by
    funext i
    by_cases h : i = j
    · subst h
      simp
    · simp [Pi.single_eq_of_ne h]
  rw [← hx]
  unfold Formalism.MainNotions.S.lamAf
  exact Submodule.subset_span ⟨⟨_, hs j⟩, rfl⟩

theorem int_vec_mem {n : ℕ} (L : Submodule (𝓞 E) (Fin n → E)) (c : ℕ)
    (hs : ∀ j, (c : E) • Pi.single j (1 : E) ∈ L) (u : Fin n → E ⊗[F] Formalism.MainNotions.S.Af F)
    (hu : ∀ i, u i ∈ Formalism.MainNotions.S.IntAf F E) :
    (fun i => (c : E ⊗[F] Formalism.MainNotions.S.Af F) * u i) ∈ Formalism.MainNotions.S.lamAf (F := F) L := by
  have h : (fun i => (c : E ⊗[F] Formalism.MainNotions.S.Af F) * u i) =
      ∑ j, (⟨u j, hu j⟩ : Formalism.MainNotions.S.IntAf F E) • Pi.single j (c : E ⊗[F] Formalism.MainNotions.S.Af F) := by
    funext i
    rw [Finset.sum_apply]
    simp [Pi.single_apply, Subring.smul_def, mul_comm]
  rw [h]
  exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (single_mem_lat L c hs j)

end Loc

theorem lat_data (I : AutInst) : ∃ c : ℕ, 1 ≤ c ∧
    (∀ y ∈ I.Lf, ∀ i, (c : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) * y i ∈ Formalism.MainNotions.S.IntAf I.F I.E) ∧
    ∀ u : Fin I.n → I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F, (∀ i, u i ∈ Formalism.MainNotions.S.IntAf I.F I.E) →
      (fun i => (c : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) * u i) ∈ I.Lf := by
  obtain ⟨c, hc, h1, h2⟩ := exists_good_den I.L I.L_fg I.L_span
  exact ⟨c, hc, lat_den I.L c h1, fun u hu => int_vec_mem I.L c h2 u hu⟩

theorem matrix_entries_integral (I : AutInst) (c g : ℕ)
    (h1 : ∀ y ∈ I.Lf, ∀ i, (c : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) * y i ∈ Formalism.MainNotions.S.IntAf I.F I.E)
    (h2 : ∀ u : Fin I.n → I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F, (∀ i, u i ∈ Formalism.MainNotions.S.IntAf I.F I.E) →
      (fun i => (c : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) * u i) ∈ I.Lf)
    (X : Matrix (Fin I.n) (Fin I.n) (I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F))
    (hX : ∀ i j, InNInt I (g * c * c) (X i j)) (y : Fin I.n → I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F)
    (hy : y ∈ I.Lf) :
    ∃ z ∈ I.Lf, X *ᵥ y = (g : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) • z := by
  choose w hw hXw using hX
  refine ⟨fun i => (c : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) * ∑ k, w i k * ((c : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) * y k), h2 _ (fun i => ?_), ?_⟩
  · exact sum_mem fun k _ => mul_mem (hw i k) (h1 y hy k)
  · funext i
    simp only [Matrix.mulVec, dotProduct, Pi.smul_apply, smul_eq_mul, hXw]
    simp only [Finset.mul_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    push_cast
    ring

theorem entries_integral_of_lattice : EntriesLat := by
  intro I g hg
  obtain ⟨c, hc, h1, h2⟩ := lat_data I
  refine ⟨g * c * c, Nat.mul_pos (Nat.mul_pos hg hc) hc, ?_⟩
  intro M M' hMM' hM hM'
  have hsm : ∀ z ∈ I.Lf, ((g : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F) • z) ∈ I.Lf := fun z hz =>
    I.Lf.smul_mem (⟨(g : I.E ⊗[I.F] Formalism.MainNotions.S.Af I.F), natCast_mem _ g⟩ : Formalism.MainNotions.S.IntAf I.F I.E) hz
  have hM'M : M' * M = 1 := by
    first
    | exact mul_eq_one_comm.1 hMM'
  refine ⟨fun y => ⟨fun hy => ?_, fun hy => ?_⟩, fun y hy => matrix_entries_integral I c g h1 h2 (M - 1) hM y hy⟩
  · obtain ⟨z, hz, e⟩ := matrix_entries_integral I c g h1 h2 (M - 1) hM y hy
    have h3 : M *ᵥ y = y + (M - 1) *ᵥ y := by
      rw [Matrix.sub_mulVec, Matrix.one_mulVec]
      abel
    rw [h3, e]
    exact add_mem hy (hsm z hz)
  · obtain ⟨z, hz, e⟩ := matrix_entries_integral I c g h1 h2 (M' - 1) hM' (M *ᵥ y) hy
    have h3 : y = M *ᵥ y + (M' - 1) *ᵥ (M *ᵥ y) := by
      rw [Matrix.sub_mulVec, Matrix.one_mulVec, Matrix.mulVec_mulVec, hM'M, Matrix.one_mulVec]
      abel
    rw [h3, e]
    exact add_mem hy (hsm z hz)

end PI.InvTopW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.LatticeOfEntriesIntegral =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalVolumeIndices.GlobMeasureEqRelIndexMul =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalVolumeIndices.GlobMeasureEqRelIndexMul", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalVolumeIndices.MassDataKppVolOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalVolumeIndices.Bridge\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.EntriesLat\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.LinearIndependentOneBeta\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.CoordFin\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.FiniteNeighbourhoodSecond\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InvariantTopologyComparison.LatticeOfEntriesIntegral\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalVolumeIndices.LocBEOfNatCast\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.MassDataKppVolLemmas

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge Topology Filter
open scoped ENNReal TensorProduct Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.MainNotions.S (AutInst)

section Haar

variable {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [MeasurableSpace G]
  [BorelSpace G]

theorem Glob_measure_eq_relIndex_mul (μ : Measure G) [μ.IsMulLeftInvariant] (K H : Subgroup G)
    (hle : H ≤ K) (ho : IsOpen (H : Set G)) (hi : H.relIndex K ≠ 0) :
    μ K = (H.relIndex K : ℝ≥0∞) * μ H := by
  have hK : IsOpen (K : Set G) := Subgroup.isOpen_mono hle ho
  classical
  haveI : (H.subgroupOf K).FiniteIndex := ⟨hi⟩
  haveI : Fintype (K ⧸ H.subgroupOf K) := Fintype.ofFinite _
  have hc : H.relIndex K = Fintype.card (K ⧸ H.subgroupOf K) := by
    rw [Subgroup.relIndex, Subgroup.index_eq_card, Nat.card_eq_fintype_card]
  have hU : (K : Set G) =
      ⋃ q : K ⧸ H.subgroupOf K, (fun y => (q.out : G)⁻¹ * y) ⁻¹' (H : Set G) := by
    ext x
    simp only [Set.mem_iUnion, Set.mem_preimage, SetLike.mem_coe]
    constructor
    · intro hx
      refine ⟨QuotientGroup.mk ⟨x, hx⟩, ?_⟩
      obtain ⟨h, hh⟩ := QuotientGroup.mk_out_eq_mul (H.subgroupOf K) (⟨x, hx⟩ : K)
      rw [hh]
      have h2 : ((h : K) : G) ∈ H := Subgroup.mem_subgroupOf.mp h.2
      simpa [mul_assoc] using H.inv_mem h2
    · rintro ⟨q, hq⟩
      have h1 : (q.out : G) ∈ K := q.out.2
      have h2 : (q.out : G)⁻¹ * x ∈ K := hle hq
      simpa using K.mul_mem h1 h2
  have hD : Pairwise (Function.onFun Disjoint
      fun q : K ⧸ H.subgroupOf K => (fun y => (q.out : G)⁻¹ * y) ⁻¹' (H : Set G)) := by
    intro q q' hne
    refine Set.disjoint_left.mpr ?_
    intro x hx hx'
    have h1 : (q.out : G)⁻¹ * x ∈ H := hx
    have h2 : (q'.out : G)⁻¹ * x ∈ H := hx'
    apply hne
    rw [← QuotientGroup.out_eq' q, ← QuotientGroup.out_eq' q', QuotientGroup.eq,
      Subgroup.mem_subgroupOf]
    have h3 := H.mul_mem h1 (H.inv_mem h2)
    simpa [mul_assoc] using h3
  have hM : ∀ q : K ⧸ H.subgroupOf K,
      MeasurableSet ((fun y => (q.out : G)⁻¹ * y) ⁻¹' (H : Set G)) :=
    fun q => (ho.preimage (continuous_const.mul continuous_id)).measurableSet
  rw [hc, hU, MeasureTheory.measure_iUnion hD hM, tsum_fintype]
  simp only [MeasureTheory.measure_preimage_mul, Finset.sum_const, Finset.card_univ, nsmul_eq_mul]

end Haar

section Top

variable {F E : Type} [Field F] [NumberField F] [Field E] [Algebra F E] [FiniteDimensional F E]

theorem Glob_topRing : IsTopologicalRing (Af F ⊗[F] E) := by
  first
    | exact IsModuleTopology.isTopologicalRing (Af F) (Af F ⊗[F] E)

theorem Glob_topGroup (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) :
    IsTopologicalGroup (HA (Af F) σ J) := by
  haveI : IsTopologicalRing (Af F ⊗[F] E) := Glob_topRing
  first
    | exact inferInstanceAs (IsTopologicalGroup (HR (Af F) σ J))

end Top

variable (I : AutInst)

def Glob_basis : Module.Basis (Fin 2) (Af I.F) (Af I.F ⊗[I.F] I.E) :=
  Algebra.TensorProduct.basis (Af I.F) (PI.InvTopW.basisE I)

theorem Glob_swap_symm_tmul (a : Af I.F) (x : I.E) : (swapE I).symm (a ⊗ₜ[I.F] x) = x ⊗ₜ[I.F] a := by
  first
    | rfl

theorem Glob_nhd_zero (N : ℕ) (hN : 1 ≤ N) :
    ∀ᶠ t in 𝓝 (0 : Af I.F ⊗[I.F] I.E), PI.InvTopW.InNInt I N ((swapE I).symm t) := by
  have : IsModuleTopology (Af I.F) (Af I.F ⊗[I.F] I.E) := ⟨rfl⟩
  have hA := PI.InvTopW.finite_neighbourhood_first I.F N hN
  have hev : ∀ k : Fin 2, ∀ᶠ t in 𝓝 (0 : Af I.F ⊗[I.F] I.E),
      (Glob_basis I).coord k t ∈ {a : FiniteAdeleRing (𝓞 I.F) I.F |
        ∃ z ∈ Formalism.UG.intAd I.F, a = (N : FiniteAdeleRing (𝓞 I.F) I.F) * z} := by
    intro k
    have hc : Continuous ((Glob_basis I).coord k) := IsModuleTopology.continuous_of_linearMap _
    refine hc.continuousAt.preimage_mem_nhds ?_
    rw [map_zero]
    exact hA
  filter_upwards [Filter.eventually_all.2 hev] with t ht
  choose z hz hzt using ht
  refine ⟨∑ k, PI.InvTopW.basisE I k ⊗ₜ[I.F] z k,
    Subring.sum_mem _ fun k _ => PI.InvTopW.tmul_mem_IntAf I (PI.InvTopW.basisE_mem I k) (hz k), ?_⟩
  have ht : t = ∑ k, ((Glob_basis I).coord k t) ⊗ₜ[I.F] PI.InvTopW.basisE I k := by
    conv_lhs => rw [← (Glob_basis I).sum_repr t]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [Glob_basis, Algebra.TensorProduct.basis_apply, TensorProduct.smul_tmul', smul_eq_mul, mul_one]
    rfl

  rw [ht, map_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [Glob_swap_symm_tmul, hzt k]
  exact PI.InvTopW.tmul_natCast_mul I N _ _

abbrev Glob_m (h : HA (Af I.F) I.cm.sig I.J) : Matrix (Fin I.n) (Fin I.n) (Af I.F ⊗[I.F] I.E) :=
  ((HA.mat (Af I.F) I.cm.sig I.J h : GL (Fin I.n) (Af I.F ⊗[I.F] I.E)) : Matrix (Fin I.n) (Fin I.n) _)

theorem Glob_m_one : Glob_m I 1 = 1 := rfl

theorem Glob_continuous_m : Continuous (Glob_m I) := by
  first
    | fun_prop

theorem Glob_nhd_one (hb : AdBridgeIso I) (g : ℕ) (hg : 1 ≤ g) :
    tf I hb '' I.Kg g ∈ 𝓝 (1 : HA (Af I.F) I.cm.sig I.J) := by
  have : FiniteDimensional I.F I.E := Module.Finite.of_restrictScalars_finite ℚ _ _
  have := Glob_topRing (F := I.F) (E := I.E)
  have := Glob_topGroup (F := I.F) (E := I.E) I.cm.sig I.J
  obtain ⟨N, hN, hE⟩ := PI.InvTopW.entries_integral_of_lattice I g hg
  have hm := Glob_continuous_m I
  have hev : ∀ i j, ∀ᶠ h in 𝓝 (1 : HA (Af I.F) I.cm.sig I.J),
      PI.InvTopW.InNInt I N ((swapE I).symm ((Glob_m I h - 1) i j)) ∧
        PI.InvTopW.InNInt I N ((swapE I).symm ((Glob_m I h⁻¹ - 1) i j)) := by
    intro i j
    refine Filter.Eventually.and ?_ ?_
    · have hc : Continuous fun h => (Glob_m I h - 1) i j :=
        (hm.sub continuous_const).matrix_elem i j
      have h0 : (Glob_m I 1 - 1) i j = 0 := by rw [Glob_m_one, sub_self]; rfl
      have ht := hc.tendsto 1
      rw [h0] at ht
      exact ht.eventually (Glob_nhd_zero I N hN)
    · have hc : Continuous fun h => (Glob_m I h⁻¹ - 1) i j :=
        ((hm.comp continuous_inv).sub continuous_const).matrix_elem i j
      have h0 : (Glob_m I (1 : HA (Af I.F) I.cm.sig I.J)⁻¹ - 1) i j = 0 := by
        rw [inv_one, Glob_m_one, sub_self]; rfl
      have ht := hc.tendsto 1
      rw [h0] at ht
      exact ht.eventually (Glob_nhd_zero I N hN)
  have hall : ∀ᶠ h in 𝓝 (1 : HA (Af I.F) I.cm.sig I.J), ∀ i j,
      PI.InvTopW.InNInt I N ((swapE I).symm ((Glob_m I h - 1) i j)) ∧
        PI.InvTopW.InNInt I N ((swapE I).symm ((Glob_m I h⁻¹ - 1) i j)) := by
    simp only [Filter.eventually_all]
    exact hev
  filter_upwards [hall] with h hh
  obtain ⟨x, rfl⟩ := Bridge_tf_surjective I hb h
  refine ⟨x, ?_, rfl⟩
  have hmx : ∀ y : I.Gf, I.fmat y = (Glob_m I (tf I hb y)).map (swapE I).symm := by
    intro y
    have := Bridge_mat I hb y
    rw [Glob_m, this]
    ext i j
    simp
  have hent : ∀ y : I.Gf, ∀ i j, (I.fmat y - 1) i j = (swapE I).symm ((Glob_m I (tf I hb y) - 1) i j) := by
    intro y i j
    rw [hmx y, Matrix.sub_apply, Matrix.sub_apply, Matrix.map_apply, map_sub, Matrix.one_apply,
      Matrix.one_apply]
    split_ifs <;> simp
  have hinv : tf I hb x⁻¹ = (tf I hb x)⁻¹ := map_inv (tfHom I hb) x
  have hMM : I.fmat x * I.fmat x⁻¹ = 1 := by
    rw [← LocB_fmat_mul I, mul_inv_cancel, LocB_fmat_one I]
  have hK := hE (I.fmat x) (I.fmat x⁻¹) hMM
    (fun i j => by rw [hent x i j]; exact (hh i j).1)
    (fun i j => by rw [hent x⁻¹ i j, hinv]; exact (hh i j).2)
  exact ⟨hK.1, hK.2⟩

section HidaSetting

variable {D : D7} (X : HidaSetting D) (hb : AdBridgeIso X.B.I)

def Glob_K2Sub (hK : X.LevelSubgroupCharacter) : Subgroup X.B.I.Gf where
  carrier := X.K2
  one_mem' := hK.1
  mul_mem' := fun {a c} ha hc => hK.2.1 a ha c hc
  inv_mem' := fun {a} ha => hK.2.2.1 a ha

def Glob_KppH (hK : X.LevelSubgroupCharacter) : Subgroup (HA (Af X.B.I.F) X.B.I.cm.sig X.B.I.J) :=
  (Glob_K2Sub X hK).map (tfHom X.B.I hb)

theorem Glob_coe_KppH (hK : X.LevelSubgroupCharacter) : (Glob_KppH X hb hK : Set _) = levelUnitary X hb := by
  first
    | rfl

theorem Glob_KppS_eq (hK : X.LevelSubgroupCharacter) : KppS X hb = Glob_KppH X hb hK := by
  unfold KppS
  rw [← Glob_coe_KppH X hb hK, Subgroup.closure_eq]

theorem Glob_KppH_le (hK : X.LevelSubgroupCharacter) (hL : X.LevelSubgroupNormalized) : Glob_KppH X hb hK ≤ KfS X := by
  rintro _ ⟨x, hx, rfl⟩
  exact (Bridge_mem_Kf_iff X.B.I hb x).2 (hL.2.1 x hx)

theorem Glob_isOpen_KppH (hK : X.LevelSubgroupCharacter) (hL : X.LevelSubgroupNormalized) :
    IsOpen (Glob_KppH X hb hK : Set (HA (Af X.B.I.F) X.B.I.cm.sig X.B.I.J)) := by
  haveI := Glob_topGroup X.B.I.cm.sig X.B.I.J
  have hg : 1 ≤ X.B.g := by
    rw [X.g_eq]
    exact Nat.mul_pos (D.host.g_prime 0).pos (D.host.g_prime 1).pos
  refine Subgroup.isOpen_of_mem_nhds _ (g := 1) (Filter.mem_of_superset (Glob_nhd_one X.B.I hb X.B.g hg) ?_)
  rw [Glob_coe_KppH X hb hK]
  rintro _ ⟨x, hx, rfl⟩
  exact ⟨x, (hL.1 x hx).1, rfl⟩

theorem Glob_globIdx (hK : X.LevelSubgroupCharacter) (hL : X.LevelSubgroupNormalized) : GlobIdx X hb := by
  intro hi
  have : FiniteDimensional X.B.I.F X.B.I.E := Module.Finite.of_restrictScalars_finite ℚ _ _
  have := Glob_topGroup (F := X.B.I.F) (E := X.B.I.E) X.B.I.cm.sig X.B.I.J
  have : BorelSpace (HA (Af X.B.I.F) X.B.I.cm.sig X.B.I.J) := ⟨rfl⟩
  have : X.measG.μGf.IsHaarMeasure := X.measG_norm.2.2.1
  have hK2 : levelUnitary X hb = (KppS X hb : Set (HA (Af X.B.I.F) X.B.I.cm.sig X.B.I.J)) := by
    rw [Glob_KppS_eq X hb hK, Glob_coe_KppH]
  rw [hK2]
  have hle : KppS X hb ≤ KfS X := by rw [Glob_KppS_eq X hb hK]; exact Glob_KppH_le X hb hK hL
  have ho : IsOpen (KppS X hb : Set (HA (Af X.B.I.F) X.B.I.cm.sig X.B.I.J)) := by
    rw [Glob_KppS_eq X hb hK]; exact Glob_isOpen_KppH X hb hK hL
  exact Glob_measure_eq_relIndex_mul X.measG.μGf (KfS X) (KppS X hb) hle ho hi

end HidaSetting

theorem global_index_every_setting : GlobIdxAll := by
  intro D X hb hK _ hL
  exact Glob_globIdx X hb hK hL

end PI.MassDataKppVolLemmas
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalVolumeIndices.GlobMeasureEqRelIndexMul =====
