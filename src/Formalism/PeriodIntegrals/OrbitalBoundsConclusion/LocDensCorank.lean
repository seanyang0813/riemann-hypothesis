module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGFC
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.GramCondIff
public import Formalism.SharpRestriction.CuspSpanNormBounds.LinQRawRange
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGF
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGFL
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FlCoeMul
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LocalDensityIntegral
public import Mathlib.LinearAlgebra.Quotient.Pi
public import Mathlib.RingTheory.DedekindDomain.IntegralClosure
public import Mathlib.FieldTheory.Finite.Basic
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.SplitCount
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DensInert
public import Formalism.SharpRestriction.CuspSpanNormBounds.FractionFieldToGenericStalkAlgebraMapEq
public import Formalism.PeriodIntegrals.LocDensCorank
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.ResidueEqZeroIff
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.Development

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.IndepOf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.CardCount, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FlbHZeroRight, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FlatBasisOf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGFR, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FrIcFree, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ResidueFieldCount, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.FieldCountHolds, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.EulerFactorTwo, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.CongruenceDensity, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.LocDensCorankOfCounts, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocDensCorank

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.IndepOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.IndepOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGFC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.Valuation.Extension\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula

open Formalism.MainNotions.S ValuativeRel
open Classical

namespace FC

variable {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E] [Algebra F E]
  [TopologicalSpace E] [MeasurableSpace E] {M : Loc.Model F E}
  {V : Type} [AddCommGroup V] [Module E V]
variable {ϖ : 𝒪[F]} {k : Type} [Field k] {r : M.L.O →+* k} {n : ℕ} {b : Fin n → V}
  {Λ : Submodule M.L.O V}

theorem prim_of (hR : RedData ϖ k r n b Λ) (H : Loc.HermSp M V) (hϖ : Irreducible ϖ)
    {ι : Type} [Fintype ι] (v : ι → V) (hv : ∀ a, v a ∈ Λ) (hP : H.Prim Λ v) :
    LinearIndependent k (fun a => red hR (v a)) := by
  obtain ⟨-, hind, hsat⟩ := hP
  have hϖ0 : ((ϖ : 𝒪[F]) : F) ≠ 0 := fun h => hϖ.ne_zero (Subtype.ext h)
  rw [Fintype.linearIndependent_iff]
  intro g hg a0
  choose h hh using fun a => hR.surj (g a)
  have hsum_mem : ∑ a, ((h a : M.L.O) : E) • v a ∈ Λ :=
    Submodule.sum_mem _ fun a _ => Λ.smul_mem (h a) (hv a)
  have hred : red hR (∑ a, ((h a : M.L.O) : E) • v a) = 0 := by
    rw [red_lincomb hR h v hv]
    simp only [hh]
    exact hg
  obtain ⟨w, hw, hweq⟩ := (red_zero_iff hR hsum_mem).mp hred

  have hwspan : w ∈ Submodule.span E (Set.range v) := by
    have e : w = algebraMap F E ((ϖ : F))⁻¹ • ∑ a, ((h a : M.L.O) : E) • v a := by
      rw [hweq, smul_smul, ← map_mul, inv_mul_cancel₀ hϖ0, map_one, one_smul]
    rw [e]
    exact Submodule.smul_mem _ _ (Submodule.sum_mem _ fun a _ =>
      Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩))
  obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun M.L.O).mp (hsat w hw hwspan)

  have hzero : ∑ a, (((h a : M.L.O) : E) - algebraMap F E (ϖ : F) * (c a : E)) • v a = 0 := by
    simp only [sub_smul, Finset.sum_sub_distrib, mul_smul]
    rw [← Finset.smul_sum, sub_eq_zero, hweq, ← hc]
    simp only [Subring.smul_def]
  have ha0 := Fintype.linearIndependent_iff.mp hind _ hzero a0
  rw [← hh a0]
  exact (hR.ker (h a0)).mpr ⟨c a0, (c a0).2, sub_eq_zero.mp ha0⟩

theorem indep_of (hR : RedData ϖ k r n b Λ) (hϖ : Irreducible ϖ)
    (o2 : ∀ x : E, ∃ c : 𝒪[F], c ≠ 0 ∧ algebraMap F E c * x ∈ M.L.O)
    (o3 : ∀ x ∈ M.L.O, x ≠ 0 → ∃ j : ℕ, ∃ u ∈ M.L.O, (∃ w ∈ M.L.O, u * w = 1) ∧
      x = algebraMap F E ϖ ^ j * u)
    {ι : Type} [Fintype ι] (v : ι → V) (hv : ∀ a, v a ∈ Λ)
    (hX : LinearIndependent k (fun a => red hR (v a))) : LinearIndependent E v := by
  have hϖ0 : ((ϖ : 𝒪[F]) : F) ≠ 0 := fun h => hϖ.ne_zero (Subtype.ext h)
  have hOalg : ∀ c : 𝒪[F], algebraMap F E (c : F) ∈ M.L.O := by
    intro c
    rw [M.L.O_def]
    exact (isIntegral_algebraMap (R := 𝒪[F]) (A := F) (x := c)).map (IsScalarTower.toAlgHom 𝒪[F] F E)
  rw [Fintype.linearIndependent_iff]
  intro g hg a0
  by_contra hne

  choose c hc0 hcO using fun a => o2 (g a)
  have hDne : (∏ a, c a) ≠ 0 := Finset.prod_ne_zero_iff.mpr fun a _ => hc0 a
  have hD0 : (((∏ a, c a : 𝒪[F])) : F) ≠ 0 := fun h => hDne (Subtype.ext h)
  have hDg : ∀ a, algebraMap F E ((∏ b, c b : 𝒪[F]) : F) * g a ∈ M.L.O := by
    intro a
    have e : ((∏ b, c b : 𝒪[F]) : F) = (c a : F) * ((∏ b ∈ Finset.univ.erase a, c b : 𝒪[F]) : F) := by
      rw [← Finset.mul_prod_erase Finset.univ c (Finset.mem_univ a)]
      rfl
    rw [e, map_mul, mul_comm (algebraMap F E (c a : F)), mul_assoc]
    exact M.L.O.mul_mem (hOalg _) (hcO a)
  let h : ι → M.L.O := fun a => ⟨algebraMap F E ((∏ b, c b : 𝒪[F]) : F) * g a, hDg a⟩
  have hsum : ∑ a, ((h a : M.L.O) : E) • v a = 0 := by
    simp only [h, mul_smul, ← Finset.smul_sum, hg, smul_zero]
  have hh0 : ((h a0 : M.L.O) : E) ≠ 0 := by
    intro h0
    apply hne
    have h1 := congrArg (algebraMap F E (((∏ b, c b : 𝒪[F]) : F))⁻¹ * ·) h0
    simp only [h, mul_zero, ← mul_assoc, ← map_mul, inv_mul_cancel₀ hD0, map_one, one_mul] at h1
    exact h1
  obtain ⟨j, z, hz, hzeq, a1, ha1⟩ :=
    minpow hR hϖ o3 (fun a => ((h a : M.L.O) : E)) (fun a => (h a).2) a0 hh0
  have hsumz : ∑ a, z a • v a = 0 := by
    have e1 : ∑ a, ((h a : M.L.O) : E) • v a = (algebraMap F E (ϖ : F)) ^ j • ∑ a, z a • v a := by
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [hzeq a, mul_smul]
    rw [e1] at hsum
    have h2 := congrArg (fun x => (algebraMap F E ((ϖ : F))⁻¹) ^ j • x) hsum
    simp only [smul_smul, ← mul_pow, ← map_mul, inv_mul_cancel₀ hϖ0, map_one, one_pow, one_smul,
      smul_zero] at h2
    exact h2
  have hred : ∑ a, r ⟨z a, hz a⟩ • red hR (v a) = 0 := by
    rw [← red_lincomb hR (fun a => (⟨z a, hz a⟩ : M.L.O)) v hv]
    simp only [hsumz, red_zero]
  exact ha1 (Fintype.linearIndependent_iff.mp hX _ hred a1)

theorem sat_of (hR : RedData ϖ k r n b Λ) (hϖ : Irreducible ϖ)
    (o2 : ∀ x : E, ∃ c : 𝒪[F], c ≠ 0 ∧ algebraMap F E c * x ∈ M.L.O)
    (o3 : ∀ x ∈ M.L.O, x ≠ 0 → ∃ j : ℕ, ∃ u ∈ M.L.O, (∃ w ∈ M.L.O, u * w = 1) ∧
      x = algebraMap F E ϖ ^ j * u)
    {ι : Type} [Fintype ι] (v : ι → V) (hv : ∀ a, v a ∈ Λ)
    (hX : LinearIndependent k (fun a => red hR (v a))) :
    ∀ x ∈ Λ, x ∈ Submodule.span E (Set.range v) → x ∈ Submodule.span M.L.O (Set.range v) := by
  have hϖ0 : ((ϖ : 𝒪[F]) : F) ≠ 0 := fun h => hϖ.ne_zero (Subtype.ext h)
  have hOalg : ∀ c : 𝒪[F], algebraMap F E (c : F) ∈ M.L.O := by
    intro c
    rw [M.L.O_def]
    exact (isIntegral_algebraMap (R := 𝒪[F]) (A := F) (x := c)).map (IsScalarTower.toAlgHom 𝒪[F] F E)
  have hϖO : algebraMap F E (ϖ : F) ∈ M.L.O := hOalg ϖ
  have hϖu : IsUnit (algebraMap F E (ϖ : F)) := (isUnit_iff_ne_zero.mpr hϖ0).map (algebraMap F E)
  intro x hx hxs
  obtain ⟨g, hg⟩ := (Submodule.mem_span_range_iff_exists_fun E).mp hxs

  choose c hc0 hcO using fun a => o2 (g a)
  have hDne : (∏ a, c a) ≠ 0 := Finset.prod_ne_zero_iff.mpr fun a _ => hc0 a
  have hD0 : (((∏ a, c a : 𝒪[F])) : F) ≠ 0 := fun h => hDne (Subtype.ext h)
  have hDg : ∀ a, algebraMap F E ((∏ b, c b : 𝒪[F]) : F) * g a ∈ M.L.O := by
    intro a
    have e : ((∏ b, c b : 𝒪[F]) : F) = (c a : F) * ((∏ b ∈ Finset.univ.erase a, c b : 𝒪[F]) : F) := by
      rw [← Finset.mul_prod_erase Finset.univ c (Finset.mem_univ a)]
      rfl
    rw [e, map_mul, mul_comm (algebraMap F E (c a : F)), mul_assoc]
    exact M.L.O.mul_mem (hOalg _) (hcO a)
  have hdO : algebraMap F E ((∏ b, c b : 𝒪[F]) : F) ∈ M.L.O := hOalg _
  have hdu : IsUnit (algebraMap F E ((∏ b, c b : 𝒪[F]) : F)) :=
    (isUnit_iff_ne_zero.mpr hD0).map (algebraMap F E)
  let h : ι → M.L.O := fun a => ⟨algebraMap F E ((∏ b, c b : 𝒪[F]) : F) * g a, hDg a⟩
  have hdx : algebraMap F E ((∏ b, c b : 𝒪[F]) : F) • x = ∑ a, ((h a : M.L.O) : E) • v a := by
    rw [← hg, Finset.smul_sum]
    simp only [h, mul_smul]
  by_cases hall : ∀ a, ((h a : M.L.O) : E) = 0
  · have h0 : algebraMap F E ((∏ b, c b : 𝒪[F]) : F) • x = 0 := by
      rw [hdx]
      simp [hall]
    have hx0 : x = 0 := by
      rw [← smul_zero (algebraMap F E ((∏ b, c b : 𝒪[F]) : F))] at h0
      exact hdu.smul_left_cancel.mp h0
    rw [hx0]
    exact zero_mem _
  push_neg at hall
  obtain ⟨a0, ha0⟩ := hall
  obtain ⟨j, z, hz, hzeq, a1, ha1⟩ :=
    minpow hR hϖ o3 (fun a => ((h a : M.L.O) : E)) (fun a => (h a).2) a0 ha0
  haveI : Nontrivial E := by
    by_contra hnt
    rw [not_nontrivial_iff_subsingleton] at hnt
    have h10 : (1 : M.L.O) = 0 := Subtype.ext (Subsingleton.elim _ _)
    have h11 := congrArg r h10
    simp at h11
  obtain ⟨m, u, huO, ⟨w, hwO, huw⟩, hdeq⟩ := o3 _ hdO hdu.ne_zero
  have key : (algebraMap F E (ϖ : F)) ^ m • (u • x) =
      (algebraMap F E (ϖ : F)) ^ j • ∑ a, z a • v a := by
    rw [smul_smul, ← hdeq, hdx, Finset.smul_sum]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [hzeq a, mul_smul]
  by_cases hjm : m ≤ j
  · rw [show j = m + (j - m) by omega, pow_add, mul_smul] at key
    have e1 := (hϖu.pow m).smul_left_cancel.mp key
    have hx' : x = ∑ a, (w * (algebraMap F E (ϖ : F)) ^ (j - m) * z a) • v a := by
      have e2 : x = w • (u • x) := by rw [smul_smul, mul_comm w u, huw, one_smul]
      rw [e2, e1, Finset.smul_sum, Finset.smul_sum]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [smul_smul, smul_smul, mul_assoc]
    rw [hx']
    refine Submodule.sum_mem _ fun a _ => ?_
    have hmem : w * (algebraMap F E (ϖ : F)) ^ (j - m) * z a ∈ M.L.O :=
      M.L.O.mul_mem (M.L.O.mul_mem hwO (M.L.O.pow_mem hϖO _)) (hz a)
    have h3 := Submodule.smul_mem (Submodule.span M.L.O (Set.range v)) (⟨_, hmem⟩ : M.L.O)
      (Submodule.subset_span ⟨a, rfl⟩)
    rwa [Subring.smul_def] at h3
  · push_neg at hjm
    rw [show m = j + ((m - j - 1) + 1) by omega, pow_add, mul_smul] at key
    have e1 := (hϖu.pow j).smul_left_cancel.mp key
    have hzs : ∑ a, z a • v a = algebraMap F E (ϖ : F) •
        ((algebraMap F E (ϖ : F)) ^ (m - j - 1) • (u • x)) := by
      rw [← e1, pow_succ, mul_smul, smul_comm]
    have hmemΛ : ∑ a, z a • v a ∈ Λ :=
      Submodule.sum_mem _ fun a _ => Λ.smul_mem (⟨z a, hz a⟩ : M.L.O) (hv a)
    have hred0 : red hR (∑ a, z a • v a) = 0 := by
      rw [red_zero_iff hR hmemΛ]
      refine ⟨(algebraMap F E (ϖ : F)) ^ (m - j - 1) • (u • x), ?_, hzs⟩
      have hc : (algebraMap F E (ϖ : F)) ^ (m - j - 1) * u ∈ M.L.O :=
        M.L.O.mul_mem (M.L.O.pow_mem hϖO _) huO
      have h4 := Λ.smul_mem (⟨_, hc⟩ : M.L.O) hx
      rwa [Subring.smul_def, mul_smul] at h4
    have hred : ∑ a, r ⟨z a, hz a⟩ • red hR (v a) = 0 := by
      rw [← red_lincomb hR (fun a => (⟨z a, hz a⟩ : M.L.O)) v hv]
      exact hred0
    exact absurd (Fintype.linearIndependent_iff.mp hX _ hred a1) ha1

theorem prim_iff (hR : RedData ϖ k r n b Λ) (H : Loc.HermSp M V) (hϖ : Irreducible ϖ)
    (o2 : ∀ x : E, ∃ c : 𝒪[F], c ≠ 0 ∧ algebraMap F E c * x ∈ M.L.O)
    (o3 : ∀ x ∈ M.L.O, x ≠ 0 → ∃ j : ℕ, ∃ u ∈ M.L.O, (∃ w ∈ M.L.O, u * w = 1) ∧
      x = algebraMap F E ϖ ^ j * u)
    {ι : Type} [Fintype ι] (v : ι → V) (hv : ∀ a, v a ∈ Λ) :
    H.Prim Λ v ↔ LinearIndependent k (fun a => red hR (v a)) :=
  ⟨prim_of hR H hϖ v hv, fun hX => ⟨hv, indep_of hR hϖ o2 o3 v hv hX, sat_of hR hϖ o2 o3 v hv hX⟩⟩

end FC

end PI.UnitaryGroupMassFormula.CntFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.IndepOf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.CardCount =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.CardCount", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.GramCondIff\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.IndepOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula

open Formalism.MainNotions.S ValuativeRel
open Classical

namespace FC

variable {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E] [Algebra F E]
  [TopologicalSpace E] [MeasurableSpace E] {M : Loc.Model F E}
  {V : Type} [AddCommGroup V] [Module E V]
variable {ϖ : 𝒪[F]} {k : Type} [Field k] {r : M.L.O →+* k} {n : ℕ} {b : Fin n → V}
  {Λ : Submodule M.L.O V}

theorem card_count (hR : RedData ϖ k r n b Λ) (H : Loc.HermSp M V) (hϖ : Irreducible ϖ)
    (o2 : ∀ x : E, ∃ c : 𝒪[F], c ≠ 0 ∧ algebraMap F E c * x ∈ M.L.O)
    (o3 : ∀ x ∈ M.L.O, x ≠ 0 → ∃ j : ℕ, ∃ u ∈ M.L.O, (∃ w ∈ M.L.O, u * w = 1) ∧
      x = algebraMap F E ϖ ^ j * u)
    (hint : ∀ i j, H.h (b i) (b j) ∈ M.L.O)
    (q : ℕ) (rfrob : ∀ x y : M.L.O, (y : E) = M.L.cj x → r y = r x ^ q)
    {ι : Type} [Fintype ι] (G₀ : Matrix ι ι E) (hG1 : ∀ a a', G₀ a a' ∈ M.L.O) :
    Nat.card (Set.range fun v : {v : ι → V // H.Prim Λ v ∧ ∀ a a', H.h (v a') (v a) - G₀ a a' ∈
        Submodule.span M.L.O {algebraMap F E (ϖ : F)}} =>
      fun a => Submodule.Quotient.mk (p := H.smulLat (algebraMap F E (ϖ : F)) Λ) (v.1 a)) =
    Nat.card {X : ι → Fin n → k // LinearIndependent k X ∧
      ∀ a a', ∑ i, ∑ j, X a' i * Ph r H b hint i j * X a j ^ q = r ⟨G₀ a a', hG1 a a'⟩} := by
  let Φ : {v : ι → V // H.Prim Λ v ∧ ∀ a a', H.h (v a') (v a) - G₀ a a' ∈
      Submodule.span M.L.O {algebraMap F E (ϖ : F)}} →
      {X : ι → Fin n → k // LinearIndependent k X ∧
        ∀ a a', ∑ i, ∑ j, X a' i * Ph r H b hint i j * X a j ^ q = r ⟨G₀ a a', hG1 a a'⟩} :=
    fun v => ⟨fun a => red hR (v.1 a), (prim_iff hR H hϖ o2 o3 v.1 v.2.1.1).1 v.2.1,
      fun a a' => (gram_cond_iff hR H hint q rfrob (v.2.1.1 a') (v.2.1.1 a) (G₀ a a') (hG1 a a')).1 (v.2.2 a a')⟩
  have hsurj : Function.Surjective Φ := by
    intro X
    choose x hxΛ hxr using fun a => red_lift hR (X.1 a)
    have hfx : (fun a => red hR (x a)) = X.1 := funext hxr
    have hli : LinearIndependent k (fun a => red hR (x a)) := by rw [hfx]; exact X.2.1
    refine ⟨⟨x, (prim_iff hR H hϖ o2 o3 x hxΛ).2 hli, fun a a' =>
      (gram_cond_iff hR H hint q rfrob (hxΛ a') (hxΛ a) (G₀ a a') (hG1 a a')).2 ?_⟩, ?_⟩
    · rw [hxr, hxr]; exact X.2.2 a a'
    · exact Subtype.ext hfx
  refine Nat.card_congr ((Setoid.quotientKerEquivRange _).symm.trans
    ((Quotient.congrRight ?_).trans (Setoid.quotientKerEquivOfSurjective Φ hsurj)))
  intro v v'
  rw [Setoid.ker_def, Setoid.ker_def]
  constructor
  · intro h
    apply Subtype.ext
    funext a
    have h1 := congrFun h a
    rw [Submodule.Quotient.eq] at h1
    exact (class_iff hR H (v.2.1.1 a) (v'.2.1.1 a)).1 h1
  · intro h
    funext a
    have h1 := congrFun (congrArg Subtype.val h) a
    rw [Submodule.Quotient.eq]
    exact (class_iff hR H (v.2.1.1 a) (v'.2.1.1 a)).2 h1

end FC

end PI.UnitaryGroupMassFormula.CntFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.CardCount =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FlbHZeroRight =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FlbHZeroRight", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.LinQRawRange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula

open Formalism.MainNotions.S Module
open ValuativeRel

theorem flb_int_mem {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E]
    [Algebra F E] [TopologicalSpace E] (L : Loc.LocE F E) (a : 𝒪[F]) : algebraMap F E a ∈ L.O := by
  exact (L.O_def _).2 isIntegral_algebraMap

theorem flb_cj_mem {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E]
    [Algebra F E] [TopologicalSpace E] (L : Loc.LocE F E) {x : E} (hx : x ∈ L.O) : L.cj x ∈ L.O := by
  exact (L.O_def _).2 (((L.O_def x).1 hx).map ((L.cj : E →ₐ[F] E).restrictScalars 𝒪[F]))

theorem flb_pid {E : Type} [CommRing E] (S : Subring E) (p : E) (hp : p ∈ S)
    (hfac : ∀ x ∈ S, x ≠ 0 → ∃ k : ℕ, ∃ u ∈ S, (∃ w ∈ S, u * w = 1) ∧ x = p ^ k * u) :
    IsPrincipalIdealRing S := by
  classical
  refine ⟨fun I => ?_⟩
  have hget : ∀ x : S, x ∈ I → ∀ (j : ℕ) (u : E), u ∈ S → (∃ w ∈ S, u * w = 1) →
      (x : E) = p ^ j * u → (⟨p, hp⟩ : S) ^ j ∈ I := by
    rintro x hxI j u hu ⟨w, hw, huw⟩ hxe
    have h : (⟨p, hp⟩ : S) ^ j = x * ⟨w, hw⟩ := by
      apply Subtype.ext
      simp only [SubmonoidClass.coe_pow, Subring.coe_mul, hxe]
      rw [mul_assoc, huw, mul_one]
    rw [h]
    exact I.mul_mem_right _ hxI
  by_cases hI : ∃ x ∈ I, x ≠ 0
  · have hex : ∃ k : ℕ, (⟨p, hp⟩ : S) ^ k ∈ I := by
      obtain ⟨x, hxI, hx0⟩ := hI
      obtain ⟨k, u, hu, huw, hxe⟩ := hfac x x.2 (fun h => hx0 (Subtype.ext h))
      exact ⟨k, hget x hxI k u hu huw hxe⟩
    refine ⟨⟨(⟨p, hp⟩ : S) ^ Nat.find hex, ?_⟩⟩
    apply le_antisymm
    · intro x hxI
      by_cases hx0 : x = 0
      · rw [hx0]
        exact Submodule.zero_mem _
      obtain ⟨j, u, hu, huw, hxe⟩ := hfac x x.2 (fun h => hx0 (Subtype.ext h))
      have hkj : Nat.find hex ≤ j := Nat.find_min' hex (hget x hxI j u hu huw hxe)
      rw [Ideal.submodule_span_eq, Ideal.mem_span_singleton']
      refine ⟨(⟨p, hp⟩ : S) ^ (j - Nat.find hex) * ⟨u, hu⟩, ?_⟩
      apply Subtype.ext
      simp only [SubmonoidClass.coe_pow, Subring.coe_mul, hxe]
      rw [mul_comm, ← mul_assoc, ← pow_add, Nat.add_sub_cancel' hkj]
    · rw [Ideal.submodule_span_eq, Ideal.span_le, Set.singleton_subset_iff]
      exact Nat.find_spec hex
  · push Not at hI
    refine ⟨⟨0, ?_⟩⟩
    rw [Submodule.span_singleton_eq_bot.mpr rfl]
    exact (Submodule.eq_bot_iff I).mpr hI

section Herm

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E]

theorem flb_h_add_right {M : Loc.Model F E} {V : Type} [AddCommGroup V] [Module E V]
    (H : Loc.HermSp M V) (x y y' : V) : H.h x (y + y') = H.h x y + H.h x y' := by
  rw [H.h_herm (y + y') x, H.h_add_left, map_add (f := _), ← H.h_herm, ← H.h_herm]

theorem flb_h_smul_right {M : Loc.Model F E} {V : Type} [AddCommGroup V] [Module E V]
    (H : Loc.HermSp M V) (x : V) (a : E) (y : V) : H.h x (a • y) = M.L.cj a * H.h x y := by
  rw [H.h_herm (a • y) x, H.h_smul_left, map_mul, ← H.h_herm]

theorem flb_h_sum_right {M : Loc.Model F E} {V : Type} [AddCommGroup V] [Module E V]
    (H : Loc.HermSp M V) {ι : Type} [Fintype ι] (x : V) (c : ι → E) (v : ι → V) :
    H.h x (∑ i, c i • v i) = ∑ i, M.L.cj (c i) * H.h x (v i) := by
  have hs := map_sum (AddMonoidHom.mk' (H.h x) (flb_h_add_right H x)) (fun i => c i • v i) Finset.univ
  simp only [AddMonoidHom.mk'_apply] at hs
  rw [hs]
  exact Finset.sum_congr rfl fun i _ => flb_h_smul_right H x (c i) (v i)

theorem flb_h_sum_left {M : Loc.Model F E} {V : Type} [AddCommGroup V] [Module E V]
    (H : Loc.HermSp M V) {ι : Type} [Fintype ι] (y : V) (c : ι → E) (v : ι → V) :
    H.h (∑ i, c i • v i) y = ∑ i, c i * H.h (v i) y := by
  have hs := map_sum (AddMonoidHom.mk' (fun z => H.h z y) (fun a b => H.h_add_left a b y))
    (fun i => c i • v i) Finset.univ
  simp only [AddMonoidHom.mk'_apply] at hs
  rw [hs]
  exact Finset.sum_congr rfl fun i _ => H.h_smul_left (c i) (v i) y

end Herm

end PI.UnitaryGroupMassFormula.CntFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FlbHZeroRight =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FlatBasisOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FlatBasisOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGF\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FlbHZeroRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula

open Formalism.MainNotions.S Module
open ValuativeRel

theorem flb_main {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E]
    [Algebra F E] [TopologicalSpace E] [MeasurableSpace E] (M : Loc.Model F E)
    (hE : ∀ x : E, x ≠ 0 → IsUnit x) (hnt : Nontrivial E)
    (hden : ∀ x : E, ∃ s ∈ M.L.O, s ≠ 0 ∧ s * x ∈ M.L.O)
    (hpid : IsPrincipalIdealRing M.L.O)
    (V : Type) [AddCommGroup V] [Module E V] (H : Loc.HermSp M V) (Λ : Submodule M.L.O V)
    (hΛ : H.IsSelfDual Λ) :
      ∃ b : Fin (Module.finrank E V) → V, (∀ k, b k ∈ Λ) ∧ LinearIndependent E b ∧
        (∀ x ∈ Λ, ∃ c : Fin (Module.finrank E V) → E, (∀ k, c k ∈ M.L.O) ∧ x = ∑ k, c k • b k) ∧
        ∃ Q : Matrix (Fin (Module.finrank E V)) (Fin (Module.finrank E V)) E, (∀ k l, Q k l ∈ M.L.O) ∧
          Q * Matrix.of (fun k l => H.h (b k) (b l)) = 1 := by
  classical
  haveI : NoZeroDivisors E := ⟨fun {a b} hab => by
    by_contra hne
    push_neg at hne
    obtain ⟨u, hu⟩ := hE a hne.1
    apply hne.2
    have h2 := congrArg (fun t => (↑u⁻¹ : E) * t) hab
    simp only [mul_zero, ← mul_assoc] at h2
    rwa [← hu, Units.inv_mul, one_mul] at h2⟩
  haveI : IsDomain E := NoZeroDivisors.to_isDomain E
  obtain ⟨hfg, hspan, hdual⟩ := hΛ
  haveI : Module.Finite M.L.O Λ := Module.Finite.iff_fg.mpr hfg
  haveI : NoZeroSMulDivisors M.L.O Λ := ⟨fun {r x} h => by
    by_cases hr : r = 0
    · exact Or.inl hr
    right
    have hr' : (r : E) ≠ 0 := fun h0 => hr (Subtype.ext h0)
    obtain ⟨u, hu⟩ := hE _ hr'
    have h1 : (r : E) • (x : V) = 0 := by
      have := congrArg Subtype.val h
      simpa [Submodule.coe_smul, Subring.smul_def] using this
    apply Subtype.ext
    have h2 := congrArg (fun v => (↑u⁻¹ : E) • v) h1
    simp only [smul_zero, smul_smul] at h2
    rw [← hu, Units.inv_mul, one_smul] at h2
    simpa using h2⟩
  haveI : Module.Free M.L.O Λ := Module.free_of_finite_type_torsion_free'
  let B := Module.Free.chooseBasis M.L.O Λ
  let bb : Module.Free.ChooseBasisIndex M.L.O Λ → V := fun i => (B i : V)
  have hexp : ∀ (x : V) (hx : x ∈ Λ), x = ∑ i, ((B.repr ⟨x, hx⟩ i : M.L.O) : E) • bb i := by
    intro x hx
    have h2 := congrArg Subtype.val (B.sum_repr ⟨x, hx⟩)
    simp only [Submodule.coe_sum, Submodule.coe_smul, Subring.smul_def] at h2
    exact h2.symm
  have hli : LinearIndependent E bb := by
    rw [Fintype.linearIndependent_iff]
    intro g hg i
    choose s hsO hs using fun j => hden (g j)
    set t := ∏ j, s j with ht
    have htO : t ∈ M.L.O := Subring.prod_mem _ fun j _ => hsO j
    have ht0 : t ≠ 0 := Finset.prod_ne_zero_iff.mpr fun j _ => (hs j).1
    have htg : ∀ j, t * g j ∈ M.L.O := by
      intro j
      have e : t * g j = (∏ j' ∈ Finset.univ.erase j, s j') * (s j * g j) := by
        rw [ht, ← Finset.mul_prod_erase _ _ (Finset.mem_univ j)]
        ring
      rw [e]
      exact M.L.O.mul_mem (Subring.prod_mem _ fun j' _ => hsO j') (hs j).2
    let g' : Module.Free.ChooseBasisIndex M.L.O Λ → M.L.O := fun j => ⟨t * g j, htg j⟩
    have hsum : ∑ j, g' j • B j = 0 := by
      apply Subtype.ext
      simp only [Submodule.coe_sum, Submodule.coe_smul, Subring.smul_def, Submodule.coe_zero]
      have : ∑ j, (t * g j) • bb j = t • ∑ j, g j • bb j := by
        rw [Finset.smul_sum]
        exact Finset.sum_congr rfl fun j _ => by rw [smul_smul]
      simpa [g', bb, hg] using this
    have h0 := Fintype.linearIndependent_iff.mp B.linearIndependent g' hsum i
    have h0' : t * g i = 0 := congrArg Subtype.val h0
    exact (mul_eq_zero.mp h0').resolve_left ht0
  have hsp : ⊤ ≤ Submodule.span E (Set.range bb) := by
    rw [← hspan]
    apply Submodule.span_le.mpr
    intro x hx
    rw [hexp x hx]
    exact Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
  let BE := Basis.mk hli hsp
  have hcard : Module.finrank E V = Fintype.card (Module.Free.ChooseBasisIndex M.L.O Λ) :=
    Module.finrank_eq_card_basis BE
  let eι := Fintype.equivFinOfCardEq hcard.symm
  let b : Fin (Module.finrank E V) → V := fun k => bb (eι.symm k)
  have hbΛ : ∀ k, b k ∈ Λ := fun k => (B (eι.symm k)).2
  have hlib : LinearIndependent E b := hli.comp _ eι.symm.injective
  have hexpb : ∀ x ∈ Λ, ∃ c : Fin (Module.finrank E V) → E, (∀ k, c k ∈ M.L.O) ∧
      x = ∑ k, c k • b k := by
    intro x hx
    refine ⟨fun k => ((B.repr ⟨x, hx⟩ (eι.symm k) : M.L.O) : E), fun k => Subtype.property _, ?_⟩
    exact (hexp x hx).trans
      (Equiv.sum_comp eι.symm (fun i => ((B.repr ⟨x, hx⟩ i : M.L.O) : E) • bb i)).symm
  refine ⟨b, hbΛ, hlib, hexpb, ?_⟩
  set G : Matrix (Fin (Module.finrank E V)) (Fin (Module.finrank E V)) E :=
    Matrix.of (fun k l => H.h (b k) (b l)) with hG
  have hdet0 : G.det ≠ 0 := by
    intro hd
    obtain ⟨v, hv0, hv⟩ := Matrix.exists_vecMul_eq_zero_iff.mpr hd
    set x := ∑ k, v k • b k with hx
    have hxb : ∀ l, H.h x (b l) = 0 := by
      intro l
      rw [hx, flb_h_sum_left]
      have := congrFun hv l
      simpa [Matrix.vecMul, dotProduct, hG] using this
    have hx0 : x = 0 := by
      apply H.nondeg
      intro y
      have hy := BE.sum_repr y
      rw [← hy, flb_h_sum_right]
      apply Finset.sum_eq_zero
      intro i _
      have : BE i = b (eι i) := by simp [BE, b]
      rw [this, hxb, mul_zero]
    apply hv0
    funext k
    exact Fintype.linearIndependent_iff.mp hlib v hx0.symm.symm k
  have hdet : IsUnit G.det := hE _ hdet0
  refine ⟨G⁻¹, ?_, Matrix.nonsing_inv_mul G hdet⟩
  have hQG := Matrix.nonsing_inv_mul G hdet
  intro k m
  set d := ∑ m', G⁻¹ k m' • b m' with hd
  have hdb : ∀ l, H.h d (b l) = if k = l then 1 else 0 := by
    intro l
    rw [hd, flb_h_sum_left]
    have := congrFun (congrFun hQG k) l
    simpa [Matrix.mul_apply, hG, Matrix.one_apply] using this
  have hdΛ : d ∈ Λ := by
    rw [hdual]
    intro y hy
    obtain ⟨c, hcO, rfl⟩ := hexpb y hy
    rw [flb_h_sum_right]
    simp only [hdb, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq, Finset.mem_univ, if_true]
    exact flb_cj_mem M.L (hcO k)
  obtain ⟨c', hc'O, hc'⟩ := hexpb d hdΛ
  have hz : ∑ m', (G⁻¹ k m' - c' m') • b m' = 0 := by
    simp only [sub_smul, Finset.sum_sub_distrib]
    rw [← hd, ← hc', sub_self]
  have := Fintype.linearIndependent_iff.mp hlib _ hz m
  rw [sub_eq_zero.mp this]
  exact hc'O m

theorem flatBasis_of (h1 : FLocO) : FLatBasis := by
  intro F E _ _ _ _ _ _ _ M hF hc hE V _ _ H Λ hΛ
  haveI := hF
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible 𝒪[F]
  obtain ⟨-, hden0, hfac⟩ := h1 F E M.L hF hc hE ϖ hϖ
  have hnt : Nontrivial E := Module.nontrivial_of_finrank_pos (R := F) (by rw [M.L.rank]; norm_num)
  refine flb_main M hE hnt ?_ (flb_pid M.L.O _ (flb_int_mem M.L ϖ) hfac) V H Λ hΛ
  intro x
  obtain ⟨c, hc0, hcx⟩ := hden0 x
  refine ⟨_, flb_int_mem M.L c, ?_, hcx⟩
  have hcF : (c : F) ≠ 0 := by exact_mod_cast hc0
  exact (map_ne_zero_iff _ (algebraMap F E).injective).mpr hcF

end PI.UnitaryGroupMassFormula.CntFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FlatBasisOf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGFR =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGFR", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGF\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGFL\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FlCoeMul\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LocalDensityIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula

open Formalism.MainNotions.S
open ValuativeRel

theorem fr_max {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E]
    [Algebra F E] [TopologicalSpace E] (L : Loc.LocE F E) (hl : IsNonarchimedeanLocalField F)
    (hE : ∀ x : E, x ≠ 0 → IsUnit x) (ϖ : 𝒪[F]) (hϖ : Irreducible ϖ) :
    (Ideal.span {piO L ϖ}).IsMaximal := by
  have hinj := fl_inj L
  rw [Ideal.isMaximal_iff]
  constructor
  · intro h1
    rw [Ideal.mem_span_singleton'] at h1
    obtain ⟨z, hz⟩ := h1
    have hz' : (z : E) * algebraMap F E ϖ = 1 := by
      have := congrArg Subtype.val hz
      simpa [piO] using this
    have hϖ0 : (ϖ : F) ≠ 0 := by
      intro h; apply hϖ.ne_zero; exact Subtype.ext h
    have hzF : (z : E) = algebraMap F E (ϖ : F)⁻¹ := by
      have h2 : algebraMap F E (ϖ : F) * algebraMap F E (ϖ : F)⁻¹ = 1 := by
        rw [← map_mul, mul_inv_cancel₀ hϖ0, map_one]
      calc (z : E) = (z : E) * (algebraMap F E ϖ * algebraMap F E (ϖ : F)⁻¹) := by rw [h2, mul_one]
        _ = algebraMap F E (ϖ : F)⁻¹ := by rw [← mul_assoc, hz', one_mul]
    have hmem : (ϖ : F)⁻¹ ∈ 𝒪[F] := fl_mem_int L hinj (hzF ▸ z.2)
    apply hϖ.not_isUnit
    have h3 : ϖ * ⟨_, hmem⟩ = 1 := Subtype.ext (by
      show (ϖ : F) * (ϖ : F)⁻¹ = 1
      exact mul_inv_cancel₀ hϖ0)
    exact ⟨⟨ϖ, ⟨_, hmem⟩, h3, by rw [mul_comm]; exact h3⟩, rfl⟩
  · intro J x hIJ hx hxJ
    have hnd : ¬ ∃ z ∈ L.O, (x : E) = algebraMap F E ϖ * z := by
      rintro ⟨z, hz, hxz⟩
      apply hx
      rw [Ideal.mem_span_singleton']
      exact ⟨⟨z, hz⟩, Subtype.ext (by simp [piO, hxz, mul_comm])⟩
    obtain ⟨y, hy, hxy⟩ := fl_local L hl hE hinj ϖ hϖ x x.2 hnd
    have : (1 : L.O) = x * ⟨y, hy⟩ := Subtype.ext (by simp [hxy])
    rw [this]
    exact J.mul_mem_right _ hxJ

end PI.UnitaryGroupMassFormula.CntFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGFR =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FrIcFree =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FrIcFree", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGF\nimport Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.Valuation.Integral\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\npublic import Mathlib.LinearAlgebra.Quotient.Pi\npublic import Mathlib.RingTheory.DedekindDomain.IntegralClosure\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula

open Formalism.MainNotions.S
open ValuativeRel

theorem fr_ic_free {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E]
    [Algebra F E] [TopologicalSpace E] (L : Loc.LocE F E) (hl : IsNonarchimedeanLocalField F)
    (hc : CharZero F) (hE : ∀ x : E, x ≠ 0 → IsUnit x) :
    Module.Free 𝒪[F] (integralClosure 𝒪[F] E) ∧ Module.Finite 𝒪[F] (integralClosure 𝒪[F] E) ∧
      Module.finrank 𝒪[F] (integralClosure 𝒪[F] E) = 2 := by
  haveI := hl
  haveI := hc
  have hnt : Nontrivial E := by
    by_contra h
    rw [not_nontrivial_iff_subsingleton] at h
    have := L.rank
    rw [Module.finrank_zero_of_subsingleton] at this
    omega
  letI : Field E := (show IsField E from
    ⟨exists_pair_ne E, mul_comm, fun {x} hx => (hE x hx).exists_right_inv⟩).toField
  haveI : FiniteDimensional F E := Module.finite_of_finrank_eq_succ L.rank
  set_option synthInstance.maxHeartbeats 200000 in
    haveI : Module.IsTorsionFree 𝒪[F] E := FaithfulSMul.to_isTorsionFree _ E
    refine ⟨IsIntegralClosure.module_free 𝒪[F] F E (integralClosure 𝒪[F] E),
      IsIntegralClosure.finite 𝒪[F] F E (integralClosure 𝒪[F] E), ?_⟩
    rw [IsIntegralClosure.rank 𝒪[F] F E (integralClosure 𝒪[F] E), L.rank]

theorem fr_card {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E]
    [Algebra F E] [TopologicalSpace E] (L : Loc.LocE F E) (hl : IsNonarchimedeanLocalField F)
    (hc : CharZero F) (hE : ∀ x : E, x ≠ 0 → IsUnit x) (ϖ : 𝒪[F]) (hϖ : Irreducible ϖ) :
    Nat.card (L.O ⧸ Ideal.span {piO L ϖ}) = Nat.card 𝓀[F] ^ 2 := by
  classical
  haveI := hl
  obtain ⟨hfree, hfin, hrank⟩ := fr_ic_free L hl hc hE
  set A := integralClosure 𝒪[F] E with hA

  have hOA : L.O = A.toSubring := by
    ext x
    rw [L.O_def]
    rfl
  let e : L.O ≃+* A.toSubring := RingEquiv.subringCongr hOA

  let b : Module.Basis (Fin 2) 𝒪[F] A := (Module.finBasisOfFinrankEq 𝒪[F] A hrank)

  let πA : A := algebraMap 𝒪[F] A ϖ
  have hmemI : ∀ x : A, x ∈ (Ideal.span {πA} : Ideal A) ↔ ∃ y : A, x = ϖ • y := by
    intro x
    rw [Ideal.mem_span_singleton']
    constructor
    · rintro ⟨y, rfl⟩
      exact ⟨y, by rw [Algebra.smul_def, mul_comm]⟩
    · rintro ⟨y, rfl⟩
      exact ⟨y, by rw [Algebra.smul_def, mul_comm]⟩
  let I' : Submodule 𝒪[F] A := (Ideal.span {πA} : Ideal A).restrictScalars 𝒪[F]
  let P : Submodule 𝒪[F] (Fin 2 → 𝒪[F]) := Submodule.pi Set.univ fun _ => Ideal.span {ϖ}
  have hmap : I'.map (b.equivFun : A →ₗ[𝒪[F]] (Fin 2 → 𝒪[F])) = P := by
    ext v
    simp only [Submodule.mem_map, P, Submodule.mem_pi, Set.mem_univ,
      true_implies, Ideal.mem_span_singleton']
    constructor
    · rintro ⟨x, hx, rfl⟩ i
      obtain ⟨y, rfl⟩ := (hmemI x).mp hx
      exact ⟨b.equivFun y i, by rw [LinearEquiv.coe_coe, map_smul, Pi.smul_apply, smul_eq_mul, mul_comm]⟩
    · intro h
      choose w hw using h
      refine ⟨ϖ • b.equivFun.symm w, (hmemI _).mpr ⟨_, rfl⟩, ?_⟩
      funext i
      rw [LinearEquiv.coe_coe, map_smul, LinearEquiv.apply_symm_apply, Pi.smul_apply, smul_eq_mul, ← hw i,
        mul_comm]
  have hmax : IsLocalRing.maximalIdeal 𝒪[F] = Ideal.span {ϖ} :=
    (IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).mp hϖ
  calc Nat.card (L.O ⧸ Ideal.span {piO L ϖ})
      = Nat.card (A.toSubring ⧸ Ideal.span {e (piO L ϖ)}) := by
        apply Nat.card_congr
        refine (Ideal.quotientEquiv _ _ e ?_).toEquiv
        rw [Ideal.map_span, Set.image_singleton]
        rfl
    _ = Nat.card (A ⧸ (Ideal.span {πA} : Ideal A)) := by
        rfl
    _ = Nat.card (A ⧸ I') := Nat.card_congr (Submodule.Quotient.restrictScalarsEquiv 𝒪[F] _).toEquiv.symm
    _ = Nat.card ((Fin 2 → 𝒪[F]) ⧸ P) := by
        apply Nat.card_congr
        rw [← hmap]
        exact (Submodule.Quotient.equiv I' _ b.equivFun rfl).toEquiv
    _ = Nat.card (Fin 2 → 𝒪[F] ⧸ Ideal.span {ϖ}) := Nat.card_congr (Submodule.quotientPi _).toEquiv
    _ = Nat.card (𝒪[F] ⧸ Ideal.span {ϖ}) ^ 2 := by
        rw [Nat.card_fun, Nat.card_fin]
    _ = Nat.card 𝓀[F] ^ 2 := by
        congr 1
        apply Nat.card_congr
        exact (Ideal.quotEquivOfEq hmax).toEquiv.symm

end PI.UnitaryGroupMassFormula.CntFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FrIcFree =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ResidueFieldCount =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ResidueFieldCount", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGF\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGFL\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGFR\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FrIcFree\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LocalDensityIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\npublic import Mathlib.FieldTheory.Finite.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula

open Formalism.MainNotions.S
open ValuativeRel

theorem fr_frob {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E]
    [Algebra F E] [TopologicalSpace E] (L : Loc.LocE F E) (hl : IsNonarchimedeanLocalField F)
    (hc : CharZero F) (hE : ∀ x : E, x ≠ 0 → IsUnit x) (ϖ : 𝒪[F]) (hϖ : Irreducible ϖ) :
    ∀ x y : L.O, (y : E) = L.cj x →
      Ideal.Quotient.mk (Ideal.span {piO L ϖ}) y =
        Ideal.Quotient.mk (Ideal.span {piO L ϖ}) x ^ Nat.card 𝓀[F] := by
  have := hl
  have hinj := fl_inj L
  have hmax : 𝓂[F] = Ideal.span {ϖ} := (IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).1 hϖ
  have hmaxI : (Ideal.span {piO L ϖ}).IsMaximal := fr_max L hl hE ϖ hϖ
  let I := Ideal.span {piO L ϖ}
  let : Field (L.O ⧸ I) := Ideal.Quotient.field I
  have hcard : Nat.card (L.O ⧸ I) = Nat.card 𝓀[F] ^ 2 := fr_card L hl hc hE ϖ hϖ
  have hq0 : 0 < Nat.card 𝓀[F] := Nat.card_pos
  have : Finite (L.O ⧸ I) := Nat.finite_of_card_ne_zero (by rw [hcard]; positivity)
  let : Fintype (L.O ⧸ I) := Fintype.ofFinite _
  let : Fintype 𝓀[F] := Fintype.ofFinite _
  let ι0 : 𝒪[F] →+* L.O :=
    ((algebraMap F E).comp (valuation F).integer.subtype).codRestrict L.O (fun a => fl_int_mem L a)
  have hι0 : ∀ a : 𝒪[F], (ι0 a : E) = algebraMap F E a := fun _ => rfl
  let f0 : 𝒪[F] →+* (L.O ⧸ I) := (Ideal.Quotient.mk I).comp ι0
  have hf0ϖ : f0 ϖ = 0 := by
    apply Ideal.Quotient.eq_zero_iff_mem.2
    have : ι0 ϖ = piO L ϖ := rfl
    rw [this]
    exact Ideal.subset_span rfl
  have : IsLocalHom f0 := ⟨fun a ha => by
    by_contra hna
    have ham : a ∈ 𝓂[F] := (IsLocalRing.mem_maximalIdeal a).2 hna
    rw [hmax, Ideal.mem_span_singleton'] at ham
    obtain ⟨b, rfl⟩ := ham
    rw [map_mul, hf0ϖ, mul_zero] at ha
    exact not_isUnit_zero ha⟩
  let ρ : 𝓀[F] →+* (L.O ⧸ I) := IsLocalRing.ResidueField.lift f0
  let : Algebra 𝓀[F] (L.O ⧸ I) := ρ.toAlgebra
  have hρ : ∀ a : 𝒪[F], algebraMap 𝓀[F] (L.O ⧸ I) (IsLocalRing.residue 𝒪[F] a) = f0 a := fun _ => rfl
  let cjO : L.O ≃+* L.O :=
    { toFun := fun x => ⟨L.cj x, fl_cj_mem L x.2⟩
      invFun := fun x => ⟨L.cj x, fl_cj_mem L x.2⟩
      left_inv := fun x => Subtype.ext (L.cj_cj x)
      right_inv := fun x => Subtype.ext (L.cj_cj x)
      map_mul' := fun x y => Subtype.ext (map_mul L.cj (x : E) (y : E))
      map_add' := fun x y => Subtype.ext (map_add L.cj (x : E) (y : E)) }
  have hcjι : ∀ a : 𝒪[F], cjO (ι0 a) = ι0 a := fun a => Subtype.ext (AlgEquiv.commutes L.cj _)
  have hIcj : I = I.map (cjO : L.O →+* L.O) := by
    show Ideal.span {piO L ϖ} = (Ideal.span {piO L ϖ}).map (cjO : L.O →+* L.O)
    rw [Ideal.map_span, Set.image_singleton]
    congr 2
    exact (hcjι ϖ).symm
  let σ0 : (L.O ⧸ I) ≃+* (L.O ⧸ I) := Ideal.quotientEquiv I I cjO hIcj
  have hσ0 : ∀ x : L.O, σ0 (Ideal.Quotient.mk I x) = Ideal.Quotient.mk I (cjO x) := fun _ => rfl
  let σ : (L.O ⧸ I) ≃ₐ[𝓀[F]] (L.O ⧸ I) := AlgEquiv.ofRingEquiv (f := σ0) (fun a => by
    obtain ⟨a', rfl⟩ := IsLocalRing.residue_surjective a
    rw [hρ]
    show σ0 (Ideal.Quotient.mk I (ι0 a')) = Ideal.Quotient.mk I (ι0 a')
    rw [hσ0, hcjι])
  have hσ : ∀ x : L.O, σ (Ideal.Quotient.mk I x) = Ideal.Quotient.mk I (cjO x) := fun _ => rfl
  let Fr := FiniteField.frobeniusAlgEquivOfAlgebraic 𝓀[F] (L.O ⧸ I)
  have hFr : ∀ z, Fr z = z ^ Fintype.card 𝓀[F] := fun _ => rfl
  have hkey : ∀ z, (Fr z - z) * (Fr z - σ z) = 0 := by
    intro z
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective z
    obtain ⟨t, ht⟩ := fl_trace L hinj x.2
    obtain ⟨n, hn⟩ := fl_norm L hinj x.2
    have hT : Ideal.Quotient.mk I x + σ (Ideal.Quotient.mk I x) =
        algebraMap 𝓀[F] (L.O ⧸ I) (IsLocalRing.residue 𝒪[F] t) := by
      rw [hσ, ← map_add (f := _), hρ]
      show _ = Ideal.Quotient.mk I (ι0 t)
      congr 1
      exact Subtype.ext (by rw [hι0, ht]; rfl)
    have hN : Ideal.Quotient.mk I x * σ (Ideal.Quotient.mk I x) =
        algebraMap 𝓀[F] (L.O ⧸ I) (IsLocalRing.residue 𝒪[F] n) := by
      rw [hσ, ← map_mul, hρ]
      show _ = Ideal.Quotient.mk I (ι0 n)
      congr 1
      exact Subtype.ext (by rw [hι0, hn]; rfl)
    have h0 : Ideal.Quotient.mk I x ^ 2 - algebraMap 𝓀[F] (L.O ⧸ I) (IsLocalRing.residue 𝒪[F] t) *
        Ideal.Quotient.mk I x + algebraMap 𝓀[F] (L.O ⧸ I) (IsLocalRing.residue 𝒪[F] n) = 0 := by
      rw [← hT, ← hN]; ring
    have h1 := congrArg Fr h0
    rw [map_add (f := _), map_sub, map_pow, map_mul, AlgEquiv.commutes, AlgEquiv.commutes, map_zero,
      ← hT, ← hN] at h1
    linear_combination h1
  have hq1 : 1 < Fintype.card 𝓀[F] := Fintype.one_lt_card
  have hfr : Module.finrank 𝓀[F] (L.O ⧸ I) = 2 := by
    have h := Module.card_eq_pow_finrank (K := 𝓀[F]) (V := L.O ⧸ I)
    rw [Fintype.card_eq_nat_card, hcard, Fintype.card_eq_nat_card] at h
    rw [← Fintype.card_eq_nat_card] at h
    exact (Nat.pow_right_injective hq1 h).symm
  have hσFr : σ = Fr := by
    obtain ⟨m, hm⟩ := (FiniteField.bijective_frobeniusAlgEquivOfAlgebraic_pow 𝓀[F] (L.O ⧸ I)).2 σ
    have hm2 : m.1 < 2 := hfr ▸ m.2
    rcases (by omega : m.1 = 0 ∨ m.1 = 1) with h | h
    · exfalso
      have hs1 : σ = 1 := by rw [← hm]; simp only [h, pow_zero]
      have hF1 : Fr = 1 := by
        ext z
        have := hkey z
        rw [hs1, AlgEquiv.one_apply, mul_self_eq_zero, sub_eq_zero] at this
        exact this
      have ho := FiniteField.orderOf_frobeniusAlgEquivOfAlgebraic 𝓀[F] (L.O ⧸ I)
      rw [show FiniteField.frobeniusAlgEquivOfAlgebraic 𝓀[F] (L.O ⧸ I) = 1 from hF1, orderOf_one,
        hfr] at ho
      omega
    · rw [← hm]; simp only [h, pow_one]; rfl
  intro x y hxy
  have hy : y = cjO x := Subtype.ext hxy
  rw [hy, ← hσ x, hσFr, hFr, Fintype.card_eq_nat_card]

theorem residue_field_count : FResField := by
  intro F E _ _ _ _ _ _ L hl hc hE ϖ hϖ
  exact ⟨fr_max L hl hE ϖ hϖ, fr_card L hl hc hE ϖ hϖ, fr_frob L hl hc hE ϖ hϖ⟩

end PI.UnitaryGroupMassFormula.CntFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ResidueFieldCount =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.FieldCountHolds =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.FieldCountHolds", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.SplitCount\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.GramCondIff\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DensInert\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.CardCount\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGFL\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.FlatBasisOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.LocalDensityIntegral\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.ResidueFieldCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGF\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.Development\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.LocDensCorank

open Formalism.MainNotions.S ValuativeRel PI.UnitaryGroupMassFormula.CntFormula
open Classical

theorem fld_dvd_iff {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E] [Algebra F E]
    [TopologicalSpace E] (L : Loc.LocE F E) {ϖ : 𝒪[F]} (hϖ : Irreducible ϖ) (a : 𝒪[F]) :
    (∃ z ∈ L.O, algebraMap F E (a : F) = algebraMap F E (ϖ : F) * z) ↔ ϖ ∣ a := by
  have hϖ0 : (ϖ : F) ≠ 0 := fun h => hϖ.ne_zero (Subtype.ext h)
  constructor
  · rintro ⟨z, hz, he⟩
    have hz' : z = algebraMap F E ((a : F) / ϖ) := by
      rw [div_eq_mul_inv, map_mul, he, mul_comm (algebraMap F E (ϖ : F)) z, mul_assoc, ← map_mul,
        mul_inv_cancel₀ hϖ0, map_one, mul_one]
    have hm := fl_mem_int L (fl_inj L) (hz' ▸ hz)
    refine ⟨⟨_, hm⟩, Subtype.ext ?_⟩
    show (a : F) = (ϖ : F) * ((a : F) / ϖ)
    field_simp
  · rintro ⟨c, rfl⟩
    exact ⟨algebraMap F E (c : F), fl_int_mem L c, by simp [map_mul]⟩

theorem fld_count_core {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E] [Algebra F E]
    [TopologicalSpace E] [MeasurableSpace E] (M : Loc.Model F E) (hl : IsNonarchimedeanLocalField F)
    (ϖ : 𝒪[F]) (hϖ : Irreducible ϖ)
    (o2 : ∀ x : E, ∃ c : 𝒪[F], c ≠ 0 ∧ algebraMap F E c * x ∈ M.L.O)
    (o3 : ∀ x ∈ M.L.O, x ≠ 0 → ∃ k : ℕ, ∃ u ∈ M.L.O, (∃ w ∈ M.L.O, u * w = 1) ∧ x = algebraMap F E ϖ ^ k * u)
    (k : Type) [Field k] [Fintype k] (r : M.L.O →+* k) (hsurj : Function.Surjective r)
    (hker : ∀ x : M.L.O, r x = 0 ↔ ∃ z ∈ M.L.O, (x : E) = algebraMap F E ϖ * z)
    (hcard : Fintype.card k = Nat.card 𝓀[F] ^ 2)
    (hfrob : ∀ x y : M.L.O, (y : E) = M.L.cj x → r y = r x ^ Nat.card 𝓀[F])
    (V : Type) [AddCommGroup V] [Module E V] (H : Loc.HermSp M V) (Λ : Submodule M.L.O V)
    (hΛ : H.IsSelfDual Λ)
    (b : Fin (Module.finrank E V) → V) (hbΛ : ∀ k, b k ∈ Λ) (hbind : LinearIndependent E b)
    (hbcrd : ∀ x ∈ Λ, ∃ c : Fin (Module.finrank E V) → E, (∀ k, c k ∈ M.L.O) ∧ x = ∑ k, c k • b k)
    (Q : Matrix (Fin (Module.finrank E V)) (Fin (Module.finrank E V)) E) (hQO : ∀ k l, Q k l ∈ M.L.O)
    (hQ : Q * Matrix.of (fun k l => H.h (b k) (b l)) = 1)
    (ι : Type) [Fintype ι] [DecidableEq ι] (a : ι → 𝒪[F]) :
    H.dens ϖ Λ (Matrix.diagonal (fun i => algebraMap F E (a i : F))) =
      Formalism.L2.SG.DensExact.densProd (Nat.card 𝓀[F]) (-1)
        (Module.finrank E V) (Fintype.card ι) (Finset.univ.filter fun i => ϖ ∣ a i).card := by
  have := hl
  set G₀ : Matrix ι ι E := Matrix.diagonal (fun i => algebraMap F E (a i : F)) with hG₀
  have hG1 : ∀ x y, G₀ x y ∈ M.L.O := by
    intro x y
    by_cases h : x = y
    · subst h; rw [hG₀, Matrix.diagonal_apply_eq]; exact fl_int_mem M.L (a x)
    · rw [hG₀, Matrix.diagonal_apply_ne _ h]; exact M.L.O.zero_mem
  have hG2 : ∀ x y, G₀ y x = M.L.cj (G₀ x y) := by
    intro x y
    by_cases h : x = y
    · subst h; rw [hG₀, Matrix.diagonal_apply_eq, M.L.cj.commutes]
    · rw [hG₀, Matrix.diagonal_apply_ne _ h, Matrix.diagonal_apply_ne _ (Ne.symm h), map_zero]
  have hR : FC.RedData ϖ k r (Module.finrank E V) b Λ := ⟨hker, hsurj, hbΛ, hbind, hbcrd⟩
  have hint : ∀ i j, H.h (b i) (b j) ∈ M.L.O := fun i j => (hΛ.2.2 (b i)).1 (hbΛ i) (b j) (hbΛ j)
  have hS := FC.card_count hR H hϖ o2 o3 hint (Nat.card 𝓀[F]) hfrob G₀ hG1
  let _ : Fintype 𝓀[F] := Fintype.ofFinite _
  have hqF : Fintype.card 𝓀[F] = Nat.card 𝓀[F] := Nat.card_eq_fintype_card.symm
  let ψ : 𝒪[F] →+* M.L.O := RingHom.codRestrict ((algebraMap F E).comp (𝒪[F]).subtype) M.L.O
    (fun c => FC.algO c)
  let φ0 : 𝒪[F] →+* k := r.comp ψ
  have hker0 : ∀ a ∈ IsLocalRing.maximalIdeal 𝒪[F], φ0 a = 0 := by
    intro a ha
    rw [(IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).1 hϖ, Ideal.mem_span_singleton'] at ha
    obtain ⟨c, rfl⟩ := ha
    have h0 : r (ψ ϖ) = 0 := (hker _).2 ⟨1, M.L.O.one_mem, by
      show algebraMap F E (ϖ : F) = _
      rw [mul_one]⟩
    simp only [φ0, RingHom.comp_apply, map_mul, h0, mul_zero]
  let ι0 : 𝓀[F] →+* k := Ideal.Quotient.lift (IsLocalRing.maximalIdeal 𝒪[F]) φ0 hker0
  let _ : Algebra 𝓀[F] k := ι0.toAlgebra
  have hfin : Module.finrank 𝓀[F] k = 2 := by
    have h1 := Module.card_eq_pow_finrank (K := 𝓀[F]) (V := k)
    rw [hcard, ← hqF] at h1
    exact (Nat.pow_right_injective (Fintype.one_lt_card (α := 𝓀[F]))).eq_iff.1 h1.symm
  let QO : Matrix (Fin (Module.finrank E V)) (Fin (Module.finrank E V)) M.L.O := fun i j => ⟨Q i j, hQO i j⟩
  let GO : Matrix (Fin (Module.finrank E V)) (Fin (Module.finrank E V)) M.L.O :=
    fun i j => ⟨H.h (b i) (b j), hint i j⟩
  have hQG : QO * GO = 1 := by
    have e1 : QO.map M.L.O.subtype = Q := by ext i j; rfl
    have e2 : GO.map M.L.O.subtype = Matrix.of fun k l => H.h (b k) (b l) := by ext i j; rfl
    apply Matrix.map_injective (f := M.L.O.subtype) Subtype.val_injective
    simp only
    rw [Matrix.map_mul, e1, e2, hQ, Matrix.map_one _ (map_zero _) (map_one _)]
  have hPh : IsUnit (FC.Ph r H b hint).det := by
    have h2 : (QO.map r) * (GO.map r) = 1 := by
      rw [← Matrix.map_mul, hQG, Matrix.map_one _ (map_zero r) (map_one r)]
    exact Matrix.isUnit_det_of_left_inverse h2
  have hPhH : ∀ i j, FC.Ph r H b hint j i = FC.Ph r H b hint i j ^ Fintype.card 𝓀[F] := by
    intro i j
    rw [hqF]
    exact hfrob ⟨H.h (b i) (b j), hint i j⟩ ⟨H.h (b j) (b i), hint j i⟩ (H.h_herm (b i) (b j))
  set m := Fintype.card ι
  let e := Fintype.equivFin ι
  let Gm : Matrix (Fin m) (Fin m) k := fun i j => r ⟨G₀ (e.symm j) (e.symm i), hG1 _ _⟩
  have hGmH : ∀ i j, Gm j i = Gm i j ^ Fintype.card 𝓀[F] := by
    intro i j
    rw [hqF]
    exact hfrob ⟨G₀ (e.symm j) (e.symm i), hG1 _ _⟩ ⟨G₀ (e.symm i) (e.symm j), hG1 _ _⟩
      (hG2 (e.symm j) (e.symm i))

  let d : Fin m → k := fun i => r ⟨algebraMap F E (a (e.symm i) : F), fl_int_mem M.L _⟩
  have hGmd : Gm = Matrix.diagonal d := by
    ext i j
    by_cases h : i = j
    · subst h
      rw [Matrix.diagonal_apply_eq]
      exact congrArg r (Subtype.ext (show G₀ (e.symm i) (e.symm i) = _ from Matrix.diagonal_apply_eq _ _))
    · rw [Matrix.diagonal_apply_ne _ h]
      have hne : e.symm j ≠ e.symm i := fun h' => h (e.symm.injective h').symm
      exact (congrArg r (Subtype.ext (show G₀ (e.symm j) (e.symm i) = 0 from Matrix.diagonal_apply_ne _ hne) :
        (⟨G₀ (e.symm j) (e.symm i), hG1 _ _⟩ : M.L.O) = 0)).trans (map_zero r)
  have hd0 : ∀ i, d i = 0 ↔ ϖ ∣ a (e.symm i) := by
    intro i
    rw [hker]
    exact fld_dvd_iff M.L hϖ _
  have hrank : m - Gm.rank = (Finset.univ.filter fun i => ϖ ∣ a i).card := by
    have hc := Fintype.card_subtype_compl (fun i : Fin m => d i ≠ 0)
    rw [Fintype.card_fin] at hc
    rw [hGmd, Matrix.rank_diagonal, ← hc]
    rw [← Fintype.card_subtype]
    refine Fintype.card_congr ((Equiv.subtypeEquiv e.symm fun i => ?_))
    rw [← hd0]
    exact not_not
  have hT : Nat.card {X : ι → Fin (Module.finrank E V) → k // LinearIndependent k X ∧
      ∀ a a', ∑ i, ∑ j, X a' i * FC.Ph r H b hint i j * X a j ^ Nat.card 𝓀[F] = r ⟨G₀ a a', hG1 a a'⟩} =
      Formalism.L2.SG.DensExact.countInert 𝓀[F] k (Module.finrank E V) m (FC.Ph r H b hint) Gm := by
    unfold Formalism.L2.SG.DensExact.countInert
    rw [← Nat.card_coe_set_eq]
    refine Nat.card_congr (Equiv.subtypeEquiv (Equiv.arrowCongr e (Equiv.refl _)) fun X => ?_)
    simp only [Equiv.arrowCongr_apply, Equiv.coe_refl, Set.mem_ofPred_eq, hqF]
    refine and_congr (linearIndependent_equiv e.symm).symm ⟨fun h i j => h (e.symm j) (e.symm i), fun h a a' => ?_⟩
    have := h (e a') (e a)
    simpa [Gm] using this
  have hD := density_exact_inert 𝓀[F] k hfin (Module.finrank E V) m (FC.Ph r H b hint) Gm hPh hPhH hGmH
  rw [hrank, hqF] at hD
  unfold Loc.HermSp.dens
  rw [hS, hT, ← hD]
  congr 1
  have hq0 : (Nat.card 𝓀[F] : ℝ) ≠ 0 := by
    rw [← hqF]; exact_mod_cast Fintype.card_ne_zero
  rw [show ((2 * Module.finrank E V * m : ℤ) - (m : ℤ) ^ 2) =
      ((2 * Module.finrank E V * m : ℕ) : ℤ) - ((m ^ 2 : ℕ) : ℤ) by push_cast; ring,
    zpow_sub₀ hq0, zpow_natCast, zpow_natCast]

theorem fieldCount_holds : FieldCount := by
  intro F E _ _ _ _ _ _ _ M hl hc hE V _ _ H Λ hΛ ϖ hϖ ι _ _ a _
  obtain ⟨_, o2, o3⟩ := local_density_integral F E M.L hl hc hE ϖ hϖ
  obtain ⟨rmax, rcard, rfrob⟩ := residue_field_count F E M.L hl hc hE ϖ hϖ
  obtain ⟨b, hb1, hb2, hb3, Q, hQ1, hQ2⟩ := flatBasis_of local_density_integral F E M hl hc hE V H Λ hΛ
  let _ : Field (M.L.O ⧸ Ideal.span {piO M.L ϖ}) := Ideal.Quotient.field _
  have hq : 0 < Nat.card 𝓀[F] := Nat.card_pos
  have : Finite (M.L.O ⧸ Ideal.span {piO M.L ϖ}) :=
    Nat.finite_of_card_ne_zero (by rw [rcard]; positivity)
  let _ : Fintype (M.L.O ⧸ Ideal.span {piO M.L ϖ}) := Fintype.ofFinite _
  refine fld_count_core M hl ϖ hϖ o2 o3 (M.L.O ⧸ Ideal.span {piO M.L ϖ})
    (Ideal.Quotient.mk _) Ideal.Quotient.mk_surjective ?_ ?_ rfrob V H Λ hΛ b hb1 hb2 hb3 Q hQ1 hQ2 ι a
  · intro x
    rw [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton']
    constructor
    · rintro ⟨c, hc⟩
      exact ⟨c, c.2, by rw [← hc]; simp [piO, mul_comm]⟩
    · rintro ⟨z, hz, he⟩
      exact ⟨⟨z, hz⟩, Subtype.ext (by simp [piO, he, mul_comm])⟩
  · rw [Fintype.card_eq_nat_card, rcard]

end PI.UnitaryGroupMassFormula.LocDensCorank
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.FieldCountHolds =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.EulerFactorTwo =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.EulerFactorTwo", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.FractionFieldToGenericStalkAlgebraMapEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.CntFormula

open Formalism.MainNotions.S

theorem locE_isUnit_or_exists_algEquiv_prod_swap {F E : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [CommRing E]
    [Algebra F E] [TopologicalSpace E] (L : Loc.LocE F E) :
    (∀ x : E, x ≠ 0 → IsUnit x) ∨ ∃ e : E ≃ₐ[F] F × F, ∀ x, e (L.cj x) = (e x).swap := by
  classical
  have hrank := L.rank
  have : Module.Free F E := L.free
  have : FiniteDimensional F E := Module.finite_of_finrank_pos (by rw [hrank]; norm_num)
  have : Nontrivial E := Module.nontrivial_of_finrank_pos (R := F) (by rw [hrank]; norm_num)
  have : IsReduced E := L.reduced
  by_cases hfield : ∀ x : E, x ≠ 0 → IsUnit x
  · exact Or.inl hfield
  right
  obtain ⟨x, hx⟩ := not_forall.1 hfield
  have hx0 : x ≠ 0 := fun heq => hx (fun hne => (hne heq).elim)
  have hxu : ¬ IsUnit x := fun hu => hx (fun _ => hu)
  have hfix : ∀ y : E, L.cj y = y → ∃ a : F, algebraMap F E a = y := fun y hy => (L.cj_fix y).1 hy
  obtain ⟨a, ha⟩ := hfix (x * L.cj x) (by rw [map_mul, L.cj_cj, mul_comm])
  have hN : x * L.cj x = 0 := by
    by_contra hne
    apply hxu
    have ha0 : a ≠ 0 := by
      rintro rfl
      rw [map_zero] at ha
      exact hne ha.symm
    refine IsUnit.of_mul_eq_one (L.cj x * algebraMap F E a⁻¹) ?_
    rw [← mul_assoc, ← ha, ← map_mul, mul_inv_cancel₀ ha0, map_one]
  obtain ⟨t, ht⟩ := hfix (x + L.cj x) (by rw [map_add (f := _), L.cj_cj, add_comm])
  have ht0 : t ≠ 0 := by
    rintro rfl
    rw [map_zero] at ht
    have hc : L.cj x = -x := by linear_combination -ht
    have hsq : x ^ 2 = 0 := by
      rw [hc] at hN
      linear_combination -hN
    exact hx0 (IsReduced.eq_zero x ⟨2, hsq⟩)
  have hcu : L.cj (algebraMap F E t⁻¹) = algebraMap F E t⁻¹ := L.cj.commutes _
  have hpq : x * algebraMap F E t⁻¹ + L.cj x * algebraMap F E t⁻¹ = 1 := by
    rw [← add_mul, ← ht, ← map_mul, mul_inv_cancel₀ ht0, map_one]
  set p := x * algebraMap F E t⁻¹ with hp
  set q := L.cj x * algebraMap F E t⁻¹ with hq
  have hpq0 : p * q = 0 := by
    rw [hp, hq]
    linear_combination (algebraMap F E t⁻¹ * algebraMap F E t⁻¹) * hN
  have hqp : q * p = 0 := by rw [mul_comm]; exact hpq0
  have hcp : L.cj p = q := by rw [hp, hq, map_mul, hcu]
  have hcq : L.cj q = p := by rw [hp, hq, map_mul, hcu, L.cj_cj]
  have hpp : p * p = p := by
    have h : p * (p + q) = p := by rw [hpq, mul_one]
    linear_combination h - hpq0
  have hqq : q * q = q := by
    have h : (p + q) * q = q := by rw [hpq, one_mul]
    linear_combination h - hpq0
  have hp0 : p ≠ 0 := by
    intro h
    have h1 : q = 1 := by rw [← hpq, h, zero_add]
    apply one_ne_zero (α := E)
    rw [← h1, ← hcp, h, map_zero]
  have hq0 : q ≠ 0 := by
    intro h
    have h1 : p = 1 := by rw [← hpq, h, add_zero]
    apply one_ne_zero (α := E)
    rw [← h1, ← hcq, h, map_zero]
  let g : (F × F) →ₐ[F] E :=
    { toFun := fun z => z.1 • p + z.2 • q
      map_one' := by simp [hpq]
      map_mul' := fun z w => by
        simp only [Prod.fst_mul, Prod.snd_mul, Algebra.smul_def, map_mul]
        linear_combination (-(algebraMap F E z.1 * algebraMap F E w.1)) * hpp -
          (algebraMap F E z.2 * algebraMap F E w.2) * hqq -
          (algebraMap F E z.1 * algebraMap F E w.2 + algebraMap F E z.2 * algebraMap F E w.1) * hpq0
      map_zero' := by simp
      map_add' := fun z w => by
        simp only [Prod.fst_add, Prod.snd_add, add_smul]
        abel
      commutes' := fun r => by
        simp only [Prod.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply]
        rw [← smul_add, hpq, Algebra.algebraMap_eq_smul_one] }
  have ginj : Function.Injective g := by
    rw [injective_iff_map_eq_zero]
    intro z hz
    have hz' : z.1 • p + z.2 • q = 0 := hz
    have h1 : z.1 • p = 0 := by
      have h := congrArg (· * p) hz'
      simp only [add_mul, smul_mul_assoc, hpp, hqp, smul_zero, add_zero, zero_mul] at h
      exact h
    have h2 : z.2 • q = 0 := by
      have h := congrArg (· * q) hz'
      simp only [add_mul, smul_mul_assoc, hqq, hpq0, smul_zero, zero_add, zero_mul] at h
      exact h
    rw [smul_eq_zero] at h1 h2
    exact Prod.ext (h1.resolve_right hp0) (h2.resolve_right hq0)
  have gsurj : Function.Surjective g := by
    have hdim : Module.finrank F (F × F) = Module.finrank F E := by
      rw [Module.finrank_prod, Module.finrank_self, hrank]
    exact (LinearMap.injective_iff_surjective_of_finrank_eq_finrank hdim (f := g.toLinearMap)).1 ginj
  let e0 := AlgEquiv.ofBijective g ⟨ginj, gsurj⟩
  refine ⟨e0.symm, fun y => ?_⟩
  obtain ⟨z, rfl⟩ := gsurj y
  have hez : e0.symm (g z) = z := e0.symm_apply_apply z
  have hcz : L.cj (g z) = g z.swap := by
    show L.cj (z.1 • p + z.2 • q) = z.2 • p + z.1 • q
    rw [map_add (f := _), map_smul, map_smul, hcp, hcq, add_comm]
  rw [hcz, hez]
  exact e0.symm_apply_apply z.swap

end PI.UnitaryGroupMassFormula.CntFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.EulerFactorTwo =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.CongruenceDensity =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.CongruenceDensity", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.SplitCount\npublic import Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.DensGFL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Classical

noncomputable section

namespace PI.UnitaryGroupMassFormula.LocDensCorank

open Formalism.MainNotions.S

def act {R N ι : Type} [CommRing R] [AddCommGroup N] [Module R N] [Fintype ι] (P : Matrix ι ι R)
    (v : ι → N) : ι → N :=
  fun a => ∑ i, P i a • v i

theorem act_act {R N ι : Type} [CommRing R] [AddCommGroup N] [Module R N] [Fintype ι]
    (P Q : Matrix ι ι R) (v : ι → N) : act Q (act P v) = act (P * Q) v := by
  funext a
  simp only [act, Finset.smul_sum, smul_smul, Matrix.mul_apply, Finset.sum_smul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [mul_comm]

theorem act_one {R N ι : Type} [CommRing R] [AddCommGroup N] [Module R N] [Fintype ι] [DecidableEq ι]
    (v : ι → N) : act (1 : Matrix ι ι R) v = v := by
  funext a
  simp [act, Matrix.one_apply]

theorem act_map {R N N' ι : Type} [CommRing R] [AddCommGroup N] [Module R N] [AddCommGroup N']
    [Module R N'] [Fintype ι] (f : N →ₗ[R] N') (P : Matrix ι ι R) (v : ι → N) :
    (fun a => f (act P v a)) = act P (fun a => f (v a)) := by
  funext a

  simp [act, map_sum, map_smul]

section

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E]
variable {M : Loc.Model F E} {V : Type} [AddCommGroup V] [Module E V]

def cls (H : Loc.HermSp M V) (ϖ : 𝒪[F]) (Λ : Submodule M.L.O V) {ι : Type} (G : Matrix ι ι E) :
    Set (ι → V ⧸ H.smulLat (algebraMap F E (ϖ : F)) Λ) :=
  Set.range fun v : {v : ι → V // H.Prim Λ v ∧ ∀ a b,
      H.h (v b) (v a) - G a b ∈ Submodule.span M.L.O {algebraMap F E (ϖ : F)}} =>
      fun a => Submodule.Quotient.mk (p := H.smulLat (algebraMap F E (ϖ : F)) Λ) (v.1 a)

theorem dens_eq_cls (H : Loc.HermSp M V) (ϖ : 𝒪[F]) (Λ : Submodule M.L.O V) {ι : Type} [Fintype ι]
    (G : Matrix ι ι E) :
    H.dens ϖ Λ G = (Nat.card (cls H ϖ Λ G) : ℝ) /
      (Nat.card 𝓀[F] : ℝ) ^ ((2 * Module.finrank E V * Fintype.card ι : ℤ) - (Fintype.card ι : ℤ) ^ 2) := rfl

end

section

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F]
variable {E : Type} [CommRing E] [Algebra F E] [TopologicalSpace E] [MeasurableSpace E]
variable {M : Loc.Model F E} {V : Type} [AddCommGroup V] [Module E V]

theorem mul_mem_span {ϖE x y : E} (hx : x ∈ M.L.O) (hy : y ∈ Submodule.span M.L.O {ϖE}) :
    x * y ∈ Submodule.span M.L.O {ϖE} := Submodule.smul_mem (Submodule.span M.L.O {ϖE}) (⟨x, hx⟩ : M.L.O) hy

theorem prim_act (H : Loc.HermSp M V) (Λ : Submodule M.L.O V) {ι : Type} [Fintype ι] [DecidableEq ι]
    (P B : Matrix ι ι M.L.O) (hPB : P * B = 1) (hBP : B * P = 1) {v : ι → V} (hv : H.Prim Λ v) :
    H.Prim Λ (act P v) := by
  obtain ⟨h1, h2, h3⟩ := hv
  have back : act B (act P v) = v := by rw [act_act, hPB, act_one]
  have memO : ∀ (Q : Matrix ι ι M.L.O) (w : ι → V) a, act Q w a ∈ Submodule.span M.L.O (Set.range w) :=
    fun Q w a => Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
  refine ⟨fun a => Λ.sum_mem fun i _ => Λ.smul_mem _ (h1 i), ?_, ?_⟩
  · rw [Fintype.linearIndependent_iff] at h2 ⊢
    intro g hg
    have E1 : ∀ g : ι → E, ∑ j, (∑ a, g a * (P j a : E)) • v j = ∑ a, g a • act P v a := by
      intro g
      simp only [act, Finset.sum_smul, Finset.smul_sum, Subring.smul_def, smul_smul]
      exact Finset.sum_comm
    have key : ∀ j, ∑ a, g a * (P j a : E) = 0 := h2 _ ((E1 g).trans hg)
    have hB'P' : B.map M.L.O.subtype * P.map M.L.O.subtype = 1 := by
      rw [← Matrix.map_mul, hBP, Matrix.map_one _ (map_zero _) (map_one _)]
    have hPg : Matrix.mulVec (P.map M.L.O.subtype) g = 0 := by
      funext j
      show ∑ a, (P j a : E) * g a = 0
      exact (Finset.sum_congr rfl fun a _ => mul_comm _ _).trans (key j)
    have hg0 : g = 0 := by
      rw [← Matrix.one_mulVec g, ← hB'P', ← Matrix.mulVec_mulVec, hPg, Matrix.mulVec_zero]
    intro i
    rw [hg0]
    rfl
  · intro x hxΛ hxspan
    have hE : Submodule.span E (Set.range (act P v)) ≤ Submodule.span E (Set.range v) := by
      rw [Submodule.span_le]
      rintro _ ⟨a, rfl⟩
      exact Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ (P i a : E) (Submodule.subset_span ⟨i, rfl⟩)
    have h' := h3 x hxΛ (hE hxspan)
    have hO : Submodule.span M.L.O (Set.range v) ≤ Submodule.span M.L.O (Set.range (act P v)) := by
      rw [Submodule.span_le]
      rintro _ ⟨a, rfl⟩
      have e : v a = act B (act P v) a := by rw [back]
      rw [e]
      exact memO B (act P v) a
    exact hO h'

theorem gram_act (H : Loc.HermSp M V) (ϖE : E) {ι : Type} [Fintype ι]
    (P : Matrix ι ι M.L.O) (G : Matrix ι ι E) {v : ι → V}
    (hv : ∀ a b, H.h (v b) (v a) - G a b ∈ Submodule.span M.L.O {ϖE}) (a b : ι) :
    H.h (act P v b) (act P v a) -
        (((P.map M.L.O.subtype).map M.L.cj).transpose * G * P.map M.L.O.subtype) a b
      ∈ Submodule.span M.L.O {ϖE} := by
  have hR : ∀ x y y', H.h x (y + y') = H.h x y + H.h x y' := by
    intro x y y'
    rw [H.h_herm (y + y') x, H.h_add_left, map_add (f := _), ← H.h_herm y x, ← H.h_herm y' x]
  have hS : ∀ (c : E) x y, H.h x (c • y) = M.L.cj c * H.h x y := by
    intro c x y
    rw [H.h_herm (c • y) x, H.h_smul_left, map_mul, ← H.h_herm y x]
  have hsumL : ∀ (f : ι → V) y, H.h (∑ i, f i) y = ∑ i, H.h (f i) y := fun f y =>
    map_sum (AddMonoidHom.mk' (fun x => H.h x y) (fun x x' => H.h_add_left x x' y)) f Finset.univ
  have hsumR : ∀ x (f : ι → V), H.h x (∑ i, f i) = ∑ i, H.h x (f i) := fun x f =>
    map_sum (AddMonoidHom.mk' (fun y => H.h x y) (fun y y' => hR x y y')) f Finset.univ
  have e1 : H.h (act P v b) (act P v a) = ∑ j, ∑ i, ((P j b : E) * M.L.cj (P i a)) * H.h (v j) (v i) := by
    rw [show act P v b = ∑ j, (P j b : E) • v j from rfl, show act P v a = ∑ i, (P i a : E) • v i from rfl, hsumL]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [H.h_smul_left, hsumR, Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [hS]
    ring
  have e2 : (((P.map M.L.O.subtype).map M.L.cj).transpose * G * P.map M.L.O.subtype) a b
      = ∑ j, ∑ i, ((P j b : E) * M.L.cj (P i a)) * G i j := by
    simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply, Finset.sum_mul]
    refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun i _ => ?_
    simp only [Subring.coe_subtype]
    ring
  rw [e1, e2, ← Finset.sum_sub_distrib]
  refine Submodule.sum_mem _ fun j _ => ?_
  rw [← Finset.sum_sub_distrib]
  refine Submodule.sum_mem _ fun i _ => ?_
  rw [← mul_sub]
  exact mul_mem_span (M.L.O.mul_mem (P j b).2 (PI.UnitaryGroupMassFormula.CntFormula.fl_cj_mem M.L (P i a).2)) (hv i j)

theorem cls_act (H : Loc.HermSp M V) (ϖ : 𝒪[F]) (Λ : Submodule M.L.O V) {ι : Type} [Fintype ι]
    [DecidableEq ι] (P B : Matrix ι ι M.L.O) (hPB : P * B = 1) (hBP : B * P = 1) (G : Matrix ι ι E) :
    act P '' cls H ϖ Λ G ⊆
      cls H ϖ Λ (((P.map M.L.O.subtype).map M.L.cj).transpose * G * P.map M.L.O.subtype) := by
  rintro _ ⟨_, ⟨⟨w, hw1, hw2⟩, rfl⟩, rfl⟩
  refine ⟨⟨act P w, prim_act H Λ P B hPB hBP hw1, gram_act H _ P G hw2⟩, ?_⟩
  exact act_map (Submodule.mkQ _) P w

theorem cong_dens (H : Loc.HermSp M V) (ϖ : 𝒪[F]) (Λ : Submodule M.L.O V) {ι : Type} [Fintype ι]
    [DecidableEq ι] (A : Matrix ι ι E) (hA : ∀ i j, A i j ∈ M.L.O)
    (hdet : ∃ y ∈ M.L.O, A.det * y = 1) (G : Matrix ι ι E) :
    H.dens ϖ Λ ((A.map M.L.cj).transpose * G * A) = H.dens ϖ Λ G := by
  obtain ⟨y, hy, hAy⟩ := hdet
  set P : Matrix ι ι M.L.O := Matrix.of fun i j => ⟨A i j, hA i j⟩ with hPdef
  have hPA : P.map M.L.O.subtype = A := by
    ext i j
    rfl
  have hdetA : ((P.det : M.L.O) : E) = A.det := by
    rw [← hPA]
    exact RingHom.map_det M.L.O.subtype P
  have hdetP : P.det * ⟨y, hy⟩ = 1 := by
    apply Subtype.ext
    rw [Subring.coe_mul, hdetA]
    exact hAy
  set B : Matrix ι ι M.L.O := (⟨y, hy⟩ : M.L.O) • P.adjugate with hBdef
  have hPB : P * B = 1 := by
    rw [hBdef, Matrix.mul_smul, Matrix.mul_adjugate, smul_smul, mul_comm, hdetP, one_smul]
  have hBP : B * P = 1 := by
    rw [hBdef, Matrix.smul_mul, Matrix.adjugate_mul, smul_smul, mul_comm, hdetP, one_smul]
  have hmc : ∀ X Y : Matrix ι ι E, (X * Y).map M.L.cj = X.map M.L.cj * Y.map M.L.cj := fun X Y =>
    Matrix.map_mul (f := (M.L.cj : E →+* E))
  have hAB : A * B.map M.L.O.subtype = 1 := by
    rw [← hPA, ← Matrix.map_mul, hPB, Matrix.map_one _ (map_zero _) (map_one _)]
  have hG : ((B.map M.L.O.subtype).map M.L.cj).transpose * ((A.map M.L.cj).transpose * G * A) *
      B.map M.L.O.subtype = G := by
    calc _ = ((A * B.map M.L.O.subtype).map M.L.cj).transpose * G * (A * B.map M.L.O.subtype) := by
            rw [hmc, Matrix.transpose_mul]
            simp only [Matrix.mul_assoc]
      _ = G := by
            rw [hAB, Matrix.map_one _ (map_zero _) (map_one _), Matrix.transpose_one, Matrix.one_mul,
              Matrix.mul_one]
  have h1 : act B '' cls H ϖ Λ ((A.map M.L.cj).transpose * G * A) ⊆ cls H ϖ Λ G := by
    have := cls_act H ϖ Λ B P hBP hPB ((A.map M.L.cj).transpose * G * A)
    rwa [hG] at this
  have h2 : act P '' cls H ϖ Λ G ⊆ cls H ϖ Λ ((A.map M.L.cj).transpose * G * A) := by
    have := cls_act H ϖ Λ P B hPB hBP G
    rwa [hPA] at this
  let e : cls H ϖ Λ ((A.map M.L.cj).transpose * G * A) ≃ cls H ϖ Λ G :=
    { toFun := fun x => ⟨act B x.1, h1 ⟨x.1, x.2, rfl⟩⟩
      invFun := fun x => ⟨act P x.1, h2 ⟨x.1, x.2, rfl⟩⟩
      left_inv := fun x => Subtype.ext (by
        show act P (act B x.1) = x.1
        rw [act_act, hBP, act_one])
      right_inv := fun x => Subtype.ext (by
        show act B (act P x.1) = x.1
        rw [act_act, hPB, act_one]) }
  rw [dens_eq_cls, dens_eq_cls, Nat.card_congr e]

end

theorem congruence_density : CongStep := by
  intro F E _ _ _ _ _ _ _ M V _ _ H Λ ϖ ι _ _ A a hA hdet
  exact cong_dens H ϖ Λ A hA hdet _

end PI.UnitaryGroupMassFormula.LocDensCorank
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.CongruenceDensity =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.LocDensCorankOfCounts =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.LocDensCorankOfCounts", "h": "module\n\npublic import Formalism.PeriodIntegrals.LocDensCorank\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.SplitCount\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountingFormula.EulerFactorTwo\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.CongruenceDensity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Classical

noncomputable section

namespace PI.UnitaryGroupMassFormula.LocDensCorank

theorem locDensCorank_of (hC : CongStep) (hF : FieldCount) (hS : SplitCount) :
    PI.LocDensCorank.LocDensCorank := by
  intro F E _ _ _ _ _ _ _ M hloc hchar V _ _ H Λ hsd ϖ hϖ ι _ _ A a hA hdet hcard
  rw [hC F E M V H Λ ϖ ι A a hA hdet]
  split_ifs with hE
  · exact hF F E M hloc hchar hE V H Λ hsd ϖ hϖ ι a hcard
  · exact hS F E M hloc hchar
      ((PI.UnitaryGroupMassFormula.CntFormula.locE_isUnit_or_exists_algEquiv_prod_swap M.L).resolve_left hE) V H Λ hsd ϖ hϖ ι a hcard

theorem locDensCorank_of_counts (hF : FieldCount) (hS : SplitCount) : PI.LocDensCorank.LocDensCorank := by
  exact locDensCorank_of congruence_density hF hS

end PI.UnitaryGroupMassFormula.LocDensCorank
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.LocDensCorankOfCounts =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocDensCorank =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocDensCorank", "h": "module\n\npublic import Formalism.PeriodIntegrals.LocDensCorank\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.FieldCountHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.LocDensCorankOfCounts\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalDensityCorank.ResidueEqZeroIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem local_density_corank : PI.LocDensCorank.LocDensCorank :=
  PI.UnitaryGroupMassFormula.LocDensCorank.locDensCorank_of_counts PI.UnitaryGroupMassFormula.LocDensCorank.fieldCount_holds
    PI.UnitaryGroupMassFormula.LocDensCorank.splitCount_holds
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocDensCorank =====
