module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.HformSelfStar
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartSplitOfOne
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.HformSingleLeft
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.IdealMulPrincipal
public import Mathlib.NumberTheory.NumberField.ClassNumber
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.StGenusOf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.DictPlan
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartShortOf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.HformSmulRight
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.HmkFactor
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.DictAll
public import Mathlib.RingTheory.DedekindDomain.Different
public import Mathlib.Analysis.Matrix.Spectrum
public import Mathlib.Algebra.Star.UnitaryStarAlgAut
public import Formalism.PeriodIntegrals.AdelClassFin
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartBetween, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SpComp, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SpDen, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SplHformZero, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.BlkMulVecCat, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.ExistsBoundedMultiplier, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.IsImgTrans, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.KsetMulVecMem, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.UnitsModSq, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.StHOfOpen, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.Partial, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorBasis, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorCodifferent, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorGramDet, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorMajorantE, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.AdelClassFinOfSvReal, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorReal, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdelClassFin

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartBetween =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartBetween", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.HformSelfStar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open NumberField

theorem partBetween : PartBetween := by
  intro E _ _ m N hN δ hδ
  obtain ⟨k, n, hn⟩ := Submodule.fg_iff_exists_fin_generating_family.mp hN
  have hne : Ideal.span {δ} ≠ ⊥ := by rwa [Ne, Ideal.span_singleton_eq_bot]
  haveI : Finite ((𝓞 E) ⧸ Ideal.span {δ}) := by
    first
      | exact (Ideal.absNorm_ne_zero_iff _).mp (by rw [Ne, Ideal.absNorm_eq_zero_iff]; exact hne)
  have hδE : algebraMap (𝓞 E) E δ ≠ 0 := by
    intro h
    apply hδ
    exact IsFractionRing.injective (𝓞 E) E (by rw [h, map_zero])
  let g := Function.surjInv (Ideal.Quotient.mk_surjective (I := Ideal.span {δ}))
  let T : Set (Fin m → E) := Set.range (fun c : Fin k → ((𝓞 E) ⧸ Ideal.span {δ}) =>
    (algebraMap (𝓞 E) E δ)⁻¹ • ∑ i, (algebraMap (𝓞 E) E (g (c i))) • n i)
  have hT : T.Finite := Set.finite_range _
  have key : ∀ x : Fin m → E, δ • x ∈ N → ∃ t ∈ T, x - t ∈ N := by
    intro x hx
    rw [← hn] at hx
    obtain ⟨a, ha⟩ := (Submodule.mem_span_range_iff_exists_fun (𝓞 E)).mp hx
    have hq : ∀ i, ∃ q : 𝓞 E, algebraMap (𝓞 E) E (a i) -
        algebraMap (𝓞 E) E (g (Ideal.Quotient.mk (Ideal.span {δ}) (a i))) =
        algebraMap (𝓞 E) E δ * algebraMap (𝓞 E) E q := by
      intro i
      have h := Function.surjInv_eq (Ideal.Quotient.mk_surjective (I := Ideal.span {δ}))
        (Ideal.Quotient.mk (Ideal.span {δ}) (a i))
      rw [Ideal.Quotient.eq, Ideal.mem_span_singleton] at h
      obtain ⟨c, hc⟩ := h
      refine ⟨-c, ?_⟩
      rw [← map_sub, ← map_mul, mul_neg, ← hc, neg_sub]
    choose q hq using hq
    refine ⟨_, ⟨fun i => Ideal.Quotient.mk (Ideal.span {δ}) (a i), rfl⟩, ?_⟩
    have hx2 : x = (algebraMap (𝓞 E) E δ)⁻¹ • ∑ i, a i • n i := by
      rw [ha, ← algebraMap_smul E δ x, smul_smul, inv_mul_cancel₀ hδE, one_smul]
    have e1 : ∀ i, a i • n i - (algebraMap (𝓞 E) E (g (Ideal.Quotient.mk (Ideal.span {δ}) (a i)))) • n i =
        (algebraMap (𝓞 E) E δ) • (q i • n i) := by
      intro i
      rw [← algebraMap_smul E (a i), ← algebraMap_smul E (q i), smul_smul, ← sub_smul, hq i]
    have hdiff : x - (algebraMap (𝓞 E) E δ)⁻¹ • ∑ i, (algebraMap (𝓞 E) E
        (g (Ideal.Quotient.mk (Ideal.span {δ}) (a i)))) • n i = ∑ i, q i • n i := by
      rw [hx2, ← smul_sub, ← Finset.sum_sub_distrib]
      simp_rw [e1]
      rw [← Finset.smul_sum, smul_smul, inv_mul_cancel₀ hδE, one_smul]
    show x - (algebraMap (𝓞 E) E δ)⁻¹ • ∑ i, (algebraMap (𝓞 E) E
        (g (Ideal.Quotient.mk (Ideal.span {δ}) (a i)))) • n i ∈ N
    rw [hdiff, ← hn]
    exact (Submodule.mem_span_range_iff_exists_fun (𝓞 E)).mpr ⟨q, rfl⟩
  apply Set.Finite.subset (hT.powerset.image (fun S => N ⊔ Submodule.span (𝓞 E) S))
  intro M hM
  obtain ⟨hNM, hMδ⟩ := hM
  refine ⟨(M : Set (Fin m → E)) ∩ T, Set.inter_subset_right, ?_⟩
  apply le_antisymm
  · exact sup_le hNM (Submodule.span_le.mpr Set.inter_subset_left)
  · intro x hx
    obtain ⟨t, htT, hxt⟩ := key x (hMδ x hx)
    have htM : t ∈ M := by
      have h := M.sub_mem hx (hNM hxt)
      rwa [sub_sub_cancel] at h
    have e : x = (x - t) + t := by abel
    rw [e]
    exact Submodule.add_mem _ (Submodule.mem_sup_left hxt)
      (Submodule.mem_sup_right (Submodule.subset_span ⟨htM, htT⟩))

end PIW.AdelClassFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartBetween =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SpComp =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SpComp", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartSplitOfOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open scoped Matrix

theorem spComp : SpComp := by
  intro E _ k m P R hPR
  have hsurj : Function.Surjective (Matrix.toLin' P) := fun v =>
    ⟨R *ᵥ v, by rw [Matrix.toLin'_apply, Matrix.mulVec_mulVec, hPR, Matrix.one_mulVec]⟩
  have hsum := LinearMap.finrank_range_add_finrank_ker (Matrix.toLin' P)
  have hrank : Module.finrank E (LinearMap.range (Matrix.toLin' P)) = k := by
    rw [LinearMap.range_eq_top.mpr hsurj, finrank_top, Module.finrank_fin_fun]
  rw [hrank, Module.finrank_fin_fun] at hsum
  have hker : Module.finrank E (LinearMap.ker (Matrix.toLin' P)) = m - k := by omega
  refine ⟨by omega, ?_⟩
  let b : Module.Basis (Fin (m - k)) E (LinearMap.ker (Matrix.toLin' P)) := Module.finBasisOfFinrankEq E _ hker
  have hU : ∀ y : Fin (m - k) → E,
      (Matrix.of fun i j => (b j : Fin m → E) i) *ᵥ y =
        ((b.equivFun.symm y : LinearMap.ker (Matrix.toLin' P)) : Fin m → E) := by
    intro y
    ext i
    rw [Module.Basis.equivFun_symm_apply]
    simp [Matrix.mulVec, dotProduct, mul_comm]
  refine ⟨Matrix.of fun i j => (b j : Fin m → E) i, ?_, ?_, ?_⟩
  · ext i j
    have h := congrFun (LinearMap.mem_ker.mp (b j).2) i
    rw [Matrix.toLin'_apply] at h
    exact h
  · intro y y' h
    simp only [hU] at h
    exact b.equivFun.symm.injective (Subtype.ext h)
  · intro w hw
    refine ⟨b.equivFun ⟨w, LinearMap.mem_ker.mpr (by rw [Matrix.toLin'_apply]; exact hw)⟩, ?_⟩
    rw [hU, LinearEquiv.symm_apply_apply]

end PIW.AdelClassFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SpComp =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SpDen =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SpDen", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartSplitOfOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open NumberField

theorem spDen : SpDen := by
  intro E _ _ k X
  have h : ∀ p : Fin k × Fin k, ∃ D : ℕ, 1 ≤ D ∧ (D : E) * X p.1 p.2 ∈ (algebraMap (𝓞 E) E).range := by
    intro p
    obtain ⟨y, hy, hint⟩ := IsAlgebraic.exists_integral_multiple (IsFractionRing.isAlgebraic_iff ℤ ℚ E |>.mpr (.of_finite ℚ (X p.1 p.2)))
    refine ⟨y.natAbs, Int.natAbs_pos.2 hy, ?_⟩
    have hmem : (y : E) * X p.1 p.2 ∈ (algebraMap (𝓞 E) E).range :=
      ⟨⟨(y : E) * X p.1 p.2, by rw [mem_integralClosure_iff]; simpa [zsmul_eq_mul] using hint⟩, rfl⟩
    have h2 : (y.natAbs : ℤ) = y ∨ (y.natAbs : ℤ) = -y := by
      rcases Int.natAbs_eq y with h | h
      · exact Or.inl h.symm
      · right; linarith
    rw [← Int.cast_natCast]
    rcases h2 with h2 | h2 <;> rw [h2]
    · exact hmem
    · rw [Int.cast_neg, neg_mul]; exact neg_mem hmem
  choose Dp hDp1 hDp using h
  refine ⟨∏ p, Dp p, Finset.one_le_prod' fun p _ => hDp1 p, fun i j => ?_⟩
  obtain ⟨c, hc⟩ := Finset.dvd_prod_of_mem Dp (Finset.mem_univ (i, j))
  rw [hc, Nat.cast_mul, mul_comm (Dp (i, j) : E), mul_assoc]
  exact Subring.mul_mem _ ⟨c, by simp⟩ (hDp (i, j))

end PIW.AdelClassFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SpDen =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SplHformZero =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SplHformZero", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartSplitOfOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.HformSingleLeft\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open Formalism.UG NumberField
open scoped Matrix

theorem spl_ker {E : Type} [Field E] [StarRing E] {m k : ℕ} (J : Matrix (Fin m) (Fin m) E)
    (V : Matrix (Fin m) (Fin k) E)
    (hΓ : (cT (starRingEnd E) V * J * V).det ≠ 0) (w : Fin m → E) :
    (cT (starRingEnd E) V * J) *ᵥ (w - V *ᵥ ((cT (starRingEnd E) V * J * V)⁻¹ *ᵥ
      ((cT (starRingEnd E) V * J) *ᵥ w))) = 0 := by
  simp [Matrix.mulVec_sub, Matrix.mulVec_mulVec, ← Matrix.mul_assoc,
    Matrix.mul_nonsing_inv _ (isUnit_iff_ne_zero.mpr hΓ)]

theorem spl_cross {E : Type} [Field E] [StarRing E] {m k n : ℕ} (J : Matrix (Fin m) (Fin m) E)
    (V : Matrix (Fin m) (Fin k) E) (U : Matrix (Fin m) (Fin n) E) (h : cT (starRingEnd E) V * J * U = 0)
    (c : Fin k → E) (w : Fin n → E) : hform (starRingEnd E) J (V *ᵥ c) (U *ᵥ w) = 0 := by
  have e1 : ∀ x y : Fin m → E,
      hform (starRingEnd E) J x y = (fun i => starRingEnd E (x i)) ⬝ᵥ (J *ᵥ y) := by
    intro x y
    simp only [hform, dotProduct, Matrix.mulVec, Finset.mul_sum, mul_assoc]
  have e2 : (fun i => starRingEnd E ((V *ᵥ c) i)) =
      (V.map (starRingEnd E)) *ᵥ (fun k => starRingEnd E (c k)) := by
    funext i

    simp only [Matrix.mulVec, dotProduct, map_sum, map_mul, Matrix.map_apply]
  have h' : (V.map (starRingEnd E))ᵀ * J * U = 0 := h
  rw [e1, e2, dotProduct_comm, Matrix.dotProduct_mulVec, ← Matrix.mulVec_transpose, dotProduct_comm]
  simp only [Matrix.mulVec_mulVec, ← Matrix.mul_assoc, h', Matrix.zero_mulVec, dotProduct_zero]

theorem spLat : SpLat := by
  intro E _ _ _ m k n d D J M V U hp hV hD hΓ hΓD hVJU hU hsurj
  obtain ⟨hH, hdet, hfg, hsp, hint, hdual⟩ := hp
  have hD0 : (D : E) ≠ 0 := Nat.cast_ne_zero.mpr (by omega)
  have hR : ∀ x ∈ M, ∀ c : E, c ∈ (algebraMap (𝓞 E) E).range → c • x ∈ M := by
    rintro x hx c ⟨a, rfl⟩
    rw [algebraMap_smul]
    exact M.smul_mem a hx
  have hVc : ∀ c : Fin k → E, (∀ i, c i ∈ (algebraMap (𝓞 E) E).range) → V *ᵥ c ∈ M := by
    intro c hc
    have e : V *ᵥ c = ∑ i, c i • (fun r => V r i) := by
      ext r
      simp [Matrix.mulVec, dotProduct, Finset.sum_apply, mul_comm]
    rw [e]
    exact Submodule.sum_mem _ fun i _ => hR _ (hV i) _ (hc i)
  have dec : ∀ z ∈ M, ∃ c : Fin k → E, (∀ i, c i ∈ (algebraMap (𝓞 E) E).range) ∧ ∃ y : Fin n → E,
      U *ᵥ y ∈ M ∧ (D : E) • z = V *ᵥ c + U *ᵥ y := by
    intro z hz
    set c := (cT (starRingEnd E) V * J * V)⁻¹ *ᵥ ((cT (starRingEnd E) V * J) *ᵥ ((D : E) • z)) with hc
    have hci : ∀ i, c i ∈ (algebraMap (𝓞 E) E).range := by
      intro i
      have hg : ∀ j, ((cT (starRingEnd E) V * J) *ᵥ z) j ∈ (algebraMap (𝓞 E) E).range := fun j => by
        rw [cT_mulVec_apply]
        exact hint _ (hV j) _ hz
      rw [hc, Matrix.mulVec_smul, Matrix.mulVec_smul, Pi.smul_apply, smul_eq_mul]
      generalize (cT (starRingEnd E) V * J) *ᵥ z = g at hg ⊢
      simp only [Matrix.mulVec, dotProduct, Finset.mul_sum]
      refine Subring.sum_mem _ fun j _ => ?_
      rw [← mul_assoc]
      exact Subring.mul_mem _ (hΓD i j) (hg j)
    obtain ⟨y, hy⟩ := hsurj _ (spl_ker J V hΓ ((D : E) • z))
    have hDz : (D : E) • z ∈ M := by
      rw [Nat.cast_smul_eq_nsmul]
      exact nsmul_mem hz D
    refine ⟨c, hci, y, ?_, ?_⟩
    · rw [hy]
      exact M.sub_mem hDz (hVc c hci)
    · rw [hy]
      abel
  have hsplit : ∀ w : Fin m → E, ∃ c, ∃ y, w = V *ᵥ c + U *ᵥ y := by
    intro w
    obtain ⟨y, hy⟩ := hsurj _ (spl_ker J V hΓ w)
    exact ⟨_, y, by rw [hy]; abel⟩
  refine ⟨⟨?_, ?_, ?_, ?_, ?_, ?_⟩, dec⟩
  ·
    have hcc : cT (starRingEnd E) (cT (starRingEnd E) U) = U := by
      ext i j
      simp [cT]
    unfold IsHerm at hH ⊢
    rw [cT_mul, cT_mul, hH, hcc, Matrix.mul_assoc]
  ·
    intro h0
    obtain ⟨a, ha0, ha⟩ := Matrix.exists_mulVec_eq_zero_iff.mpr h0
    have orth : ∀ w, hform (starRingEnd E) J w (U *ᵥ a) = 0 := by
      intro w
      obtain ⟨c, y, rfl⟩ := hsplit w
      rw [hform_add_left, spl_cross J V U hVJU, zero_add, hform_mulVec, hform_eq, ha, dotProduct_zero]
    have hJa : J *ᵥ (U *ᵥ a) = 0 := by
      ext i
      rw [← hform_single_left]
      exact orth _
    have hUa : U *ᵥ a = 0 := by
      by_contra hne
      exact hdet (Matrix.exists_mulVec_eq_zero_iff.mp ⟨_, hne, hJa⟩)
    exact ha0 (hU (by rw [hUa, Matrix.mulVec_zero]))
  ·
    refine Submodule.fg_of_fg_map_injective (f := (Matrix.mulVecLin U).restrictScalars (𝓞 E))
      (fun a b h => hU h) ?_
    exact Submodule.FG.of_le hfg (Submodule.map_comap_le _ _)
  ·
    set W : Submodule E (Fin m → E) := LinearMap.range (Matrix.mulVecLin V) ⊔
      (Submodule.span E (M.comap ((Matrix.mulVecLin U).restrictScalars (𝓞 E)) : Set (Fin n → E))).map
        (Matrix.mulVecLin U) with hW
    have hMW : Submodule.span E (M : Set (Fin m → E)) ≤ W := by
      rw [Submodule.span_le]
      intro z hz
      obtain ⟨c, -, y, hyM, hz'⟩ := dec z hz
      refine Submodule.mem_sup.mpr ⟨V *ᵥ ((D : E)⁻¹ • c), ⟨_, rfl⟩, U *ᵥ ((D : E)⁻¹ • y),
        Submodule.mem_map_of_mem (Submodule.smul_mem _ _ (Submodule.subset_span hyM)), ?_⟩
      rw [Matrix.mulVec_smul, Matrix.mulVec_smul, ← smul_add, ← hz', smul_smul, inv_mul_cancel₀ hD0, one_smul]
    rw [hsp, top_le_iff] at hMW
    rw [Submodule.eq_top_iff']
    intro y0
    have h0 : U *ᵥ y0 ∈ W := by rw [hMW]; exact Submodule.mem_top
    obtain ⟨a, ⟨c, rfl⟩, b, hb, hab⟩ := Submodule.mem_sup.mp h0
    obtain ⟨y, hy, rfl⟩ := Submodule.mem_map.mp hb
    simp only [Matrix.mulVecLin_apply] at hab
    have hP : ∀ v, (cT (starRingEnd E) V * J) *ᵥ (U *ᵥ v) = 0 := fun v => by
      rw [Matrix.mulVec_mulVec, hVJU, Matrix.zero_mulVec]
    have hc0 : c = 0 := by
      have e1 : (cT (starRingEnd E) V * J * V) *ᵥ c = 0 := by
        have := congrArg (fun v => (cT (starRingEnd E) V * J) *ᵥ v) hab
        simp only [Matrix.mulVec_add, hP, add_zero, Matrix.mulVec_mulVec] at this
        exact this
      have := congrArg (fun v => (cT (starRingEnd E) V * J * V)⁻¹ *ᵥ v) e1
      simpa [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr hΓ)] using this
    rw [hc0, Matrix.mulVec_zero, zero_add] at hab
    have : y = y0 := hU hab
    rw [← this]
    exact hy
  ·
    intro x hx y hy
    rw [← hform_mulVec]
    exact hint _ hx _ hy
  ·
    intro w hw
    have h1 : (d : E) • ((D : E) • (U *ᵥ w)) ∈ M := by
      refine hdual _ fun z hz => ?_
      obtain ⟨c, -, y, hyM, hz'⟩ := dec z hz
      have e : hform (starRingEnd E) J z ((D : E) • (U *ᵥ w)) =
          hform (starRingEnd E) J ((D : E) • z) (U *ᵥ w) := by
        have h1 := hform_smul J 1 (D : E) z (U *ᵥ w)
        have h2 := hform_smul J (D : E) 1 z (U *ᵥ w)
        rw [one_smul] at h1 h2
        rw [h1, h2, star_one, star_natCast]
        ring
      rw [e, hz', hform_add_left, spl_cross J V U hVJU, zero_add, hform_mulVec]
      exact hw y hyM
    show U *ᵥ (((d * D : ℕ) : E) • w) ∈ M
    rw [Nat.cast_mul, mul_smul, Matrix.mulVec_smul, Matrix.mulVec_smul]
    exact h1

end PIW.AdelClassFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SplHformZero =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.BlkMulVecCat =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.BlkMulVecCat", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartSplitOfOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.HformSingleLeft\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartBetween\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SpComp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SpDen\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SplHformZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open Formalism.UG NumberField
open scoped Matrix

namespace SpO

def cat {E : Type} [Field E] {m k n : ℕ} (e : Fin k ⊕ Fin n ≃ Fin m) (c : Fin k → E) (y : Fin n → E) :
    Fin m → E :=
  fun r => Sum.elim c y (e.symm r)

def blk {E : Type} [Field E] {m k n : ℕ} (e : Fin k ⊕ Fin n ≃ Fin m) (V : Matrix (Fin m) (Fin k) E)
    (W : Matrix (Fin m) (Fin n) E) : Matrix (Fin m) (Fin m) E :=
  Matrix.of fun r s => Sum.elim (fun i => V r i) (fun j => W r j) (e.symm s)

def catR {E : Type} [Field E] (R : Type) [CommRing R] [Algebra R E] {m k n : ℕ} (e : Fin k ⊕ Fin n ≃ Fin m) :
    (Fin n → E) →ₗ[R] (Fin m → E) where
  toFun y := cat e 0 y
  map_add' y y' := by
    funext r
    simp only [cat, Pi.add_apply]
    cases e.symm r <;> simp
  map_smul' a y := by
    funext r
    simp only [cat, Pi.smul_apply, RingHom.id_apply]
    cases e.symm r <;> simp

theorem catR_apply {E : Type} [Field E] (R : Type) [CommRing R] [Algebra R E] {m k n : ℕ}
    (e : Fin k ⊕ Fin n ≃ Fin m) (y : Fin n → E) : catR R e y = cat e 0 y := rfl

theorem cat_add {E : Type} [Field E] {m k n : ℕ} (e : Fin k ⊕ Fin n ≃ Fin m) (c : Fin k → E) (y : Fin n → E) :
    cat e c 0 + cat e 0 y = cat e c y := by
  funext r
  simp only [cat, Pi.add_apply]
  cases e.symm r <;> simp

theorem blk_mulVec {E : Type} [Field E] {m k n : ℕ} (e : Fin k ⊕ Fin n ≃ Fin m) (V : Matrix (Fin m) (Fin k) E)
    (W : Matrix (Fin m) (Fin n) E) (x : Fin m → E) :
    blk e V W *ᵥ x = V *ᵥ (fun i => x (e (Sum.inl i))) + W *ᵥ (fun j => x (e (Sum.inr j))) := by
  funext r
  simp only [Matrix.mulVec, dotProduct, blk, Matrix.of_apply, Pi.add_apply]
  rw [← Equiv.sum_comp e, Fintype.sum_sum_type]
  simp

theorem blk_mulVec_cat {E : Type} [Field E] {m k n : ℕ} (e : Fin k ⊕ Fin n ≃ Fin m) (V : Matrix (Fin m) (Fin k) E)
    (W : Matrix (Fin m) (Fin n) E) (c : Fin k → E) (y : Fin n → E) :
    blk e V W *ᵥ cat e c y = V *ᵥ c + W *ᵥ y := by
  rw [blk_mulVec]
  simp [cat]

theorem single_inl {E : Type} [Field E] {m k n : ℕ} (e : Fin k ⊕ Fin n ≃ Fin m) (i : Fin k) :
    (Pi.single (e (Sum.inl i)) (1 : E) : Fin m → E) = cat e (Pi.single i 1) 0 := by
  funext r
  obtain ⟨t, rfl⟩ := e.surjective r
  cases t with
  | inl a => simp [cat, Pi.single_apply, e.injective.eq_iff]
  | inr b => simp [cat, e.injective.eq_iff]

theorem single_inr {E : Type} [Field E] {m k n : ℕ} (e : Fin k ⊕ Fin n ≃ Fin m) (j : Fin n) :
    (Pi.single (e (Sum.inr j)) (1 : E) : Fin m → E) = cat e 0 (Pi.single j 1) := by
  funext r
  obtain ⟨t, rfl⟩ := e.surjective r
  cases t with
  | inl a => simp [cat, e.injective.eq_iff]
  | inr b => simp [cat, Pi.single_apply, e.injective.eq_iff]

theorem cat_eq_sum {E : Type} [Field E] {m k n : ℕ} (e : Fin k ⊕ Fin n ≃ Fin m) (c : Fin k → E) :
    cat e c 0 = ∑ i, c i • (Pi.single (e (Sum.inl i)) (1 : E) : Fin m → E) := by
  funext r
  obtain ⟨t, rfl⟩ := e.surjective r
  cases t with
  | inl a => simp [cat, Finset.sum_apply, Pi.single_apply, e.injective.eq_iff]
  | inr b => simp [cat, Finset.sum_apply, e.injective.eq_iff]

theorem entry_eq {E : Type} [Field E] [StarRing E] {m : ℕ} (J A : Matrix (Fin m) (Fin m) E) (r s : Fin m) :
    (cT (starRingEnd E) A * J * A) r s =
      hform (starRingEnd E) J (A *ᵥ Pi.single r 1) (A *ᵥ Pi.single s 1) := by
  simp only [cT, hform, Matrix.mul_apply, Matrix.mulVec_single_one, Matrix.transpose_apply,
    Matrix.map_apply, Finset.sum_mul]
  rw [Finset.sum_comm]
  rfl

end SpO

open SpO in
theorem spOne : SpOne := by
  intro E _ _ _ m k hk ih d hd Γ hΓ
  classical
  by_cases hkm : k ≤ m
  swap
  · refine ⟨∅, Set.finite_empty, ?_⟩
    rintro p ⟨_, v, _, hvΓ⟩
    exfalso
    apply hkm
    have hg : cT (starRingEnd E) (Matrix.of fun r i => v i r) * p.1 * (Matrix.of fun r i => v i r) = Γ :=
      (gram_eq p.1 v).symm.trans (Set.mem_singleton_iff.mp hvΓ)
    refine (spComp E k m (cT (starRingEnd E) (Matrix.of fun r i => v i r) * p.1)
      ((Matrix.of fun r i => v i r) * Γ⁻¹) ?_).1
    rw [← Matrix.mul_assoc, hg, Matrix.mul_nonsing_inv _ (isUnit_iff_ne_zero.mpr hΓ)]
  obtain ⟨D, hD1, hDΓ⟩ := spDen E k Γ⁻¹
  have hnm : m - k < m := by omega
  have hdD : 1 ≤ d * D := Nat.one_le_iff_ne_zero.2 (Nat.mul_ne_zero (by omega) (by omega))
  obtain ⟨T', hT'f, hT'⟩ := ih (m - k) hnm (d * D) hdD
  let e : Fin k ⊕ Fin (m - k) ≃ Fin m := finSumFinEquiv.trans (finCongr (by omega))
  let N : Submodule (𝓞 E) (Fin (m - k) → E) → Submodule (𝓞 E) (Fin m → E) := fun M' =>
    Submodule.span (𝓞 E) (Set.range fun i : Fin k => (Pi.single (e (Sum.inl i)) (1 : E) : Fin m → E)) ⊔
      M'.map (catR (𝓞 E) e)
  let Jb : Matrix (Fin (m - k)) (Fin (m - k)) E → Matrix (Fin m) (Fin m) E := fun J' =>
    Matrix.of fun r s => Matrix.fromBlocks Γ 0 0 J' (e.symm r) (e.symm s)
  let T : Set (Matrix (Fin m) (Fin m) E × Submodule (𝓞 E) (Fin m → E)) :=
    ⋃ q' ∈ {q' | q' ∈ T' ∧ q'.2.FG}, (fun M₀ => (Jb q'.1, M₀)) ''
      {M₀ : Submodule (𝓞 E) (Fin m → E) | N q'.2 ≤ M₀ ∧ ∀ x ∈ M₀, (D : 𝓞 E) • x ∈ N q'.2}
  have hD0 : (D : 𝓞 E) ≠ 0 := by
    intro h0
    have h1 := congrArg (algebraMap (𝓞 E) E) h0
    rw [map_natCast, map_zero, Nat.cast_eq_zero] at h1
    omega
  refine ⟨T, ?_, ?_⟩
  · refine Set.Finite.biUnion (hT'f.subset (by exact fun q h => h.1)) fun q' hq' => ?_
    refine Set.Finite.image _ (partBetween E m (N q'.2) ?_ (D : 𝓞 E) hD0)
    exact (Submodule.fg_span (Set.finite_range _)).sup (hq'.2.map _)
  rintro p ⟨hp, v, hv, hvΓ⟩
  have hg : cT (starRingEnd E) (Matrix.of fun r i => v i r) * p.1 * (Matrix.of fun r i => v i r) = Γ :=
    (gram_eq p.1 v).symm.trans (Set.mem_singleton_iff.mp hvΓ)
  set V : Matrix (Fin m) (Fin k) E := Matrix.of fun r i => v i r with hVdef
  have hPR : (cT (starRingEnd E) V * p.1) * (V * Γ⁻¹) = 1 := by
    rw [← Matrix.mul_assoc, hg, Matrix.mul_nonsing_inv _ (isUnit_iff_ne_zero.mpr hΓ)]
  obtain ⟨-, U, hPU, hUinj, hUsurj⟩ := spComp E k m _ _ hPR
  have hVM : ∀ i, (fun r => V r i) ∈ p.2 := fun i => hv i
  obtain ⟨hLat', hdec⟩ := spLat E m k (m - k) d D p.1 p.2 V U hp hVM hD1 (by rw [hg]; exact hΓ)
    (by rw [hg]; exact hDΓ) hPU hUinj hUsurj
  obtain ⟨q', hq', B, hB1, hB2⟩ := hT' _ hLat'
  set W : Matrix (Fin m) (Fin (m - k)) E := U * (B : Matrix (Fin (m - k)) (Fin (m - k)) E) with hWdef
  set A : Matrix (Fin m) (Fin m) E := blk e V W with hAdef
  have hJh : p.1ᴴ = p.1 := (isHerm_iff _).1 hp.1
  have hUV : cT (starRingEnd E) U * p.1 * V = 0 := by
    have h := congrArg Matrix.conjTranspose hPU
    rw [cT_star] at h ⊢
    rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hJh,
      Matrix.conjTranspose_zero, ← Matrix.mul_assoc] at h
    exact h
  have hPW : cT (starRingEnd E) V * p.1 * W = 0 := by
    rw [hWdef, ← Matrix.mul_assoc, hPU, Matrix.zero_mul]
  have hWy : ∀ y, W *ᵥ y = U *ᵥ ((B : Matrix (Fin (m - k)) (Fin (m - k)) E) *ᵥ y) := fun y => by
    rw [hWdef, Matrix.mulVec_mulVec]
  have hker : ∀ x, A *ᵥ x = 0 → x = 0 := by
    intro x hx
    rw [hAdef, blk_mulVec] at hx
    have h1 := congrArg (fun z => (cT (starRingEnd E) V * p.1) *ᵥ z) hx
    simp only [Matrix.mulVec_add, Matrix.mulVec_mulVec, hg, hPW, Matrix.zero_mulVec, add_zero,
      Matrix.mulVec_zero] at h1
    have hΓu : IsUnit Γ := (Matrix.isUnit_iff_isUnit_det Γ).mpr (isUnit_iff_ne_zero.mpr hΓ)
    have hc0 : (fun i => x (e (Sum.inl i))) = 0 :=
      Matrix.mulVec_injective_iff_isUnit.mpr hΓu (by rw [h1, Matrix.mulVec_zero])
    rw [hc0, Matrix.mulVec_zero, zero_add, hWy] at hx
    have hBy : (B : Matrix (Fin (m - k)) (Fin (m - k)) E) *ᵥ (fun j => x (e (Sum.inr j))) = 0 :=
      hUinj (by rw [hx, Matrix.mulVec_zero])
    have hy0 : (fun j => x (e (Sum.inr j))) = 0 :=
      Matrix.mulVec_injective_iff_isUnit.mpr (Units.isUnit B) (by rw [hBy, Matrix.mulVec_zero])
    funext r
    obtain ⟨t, rfl⟩ := e.surjective r
    cases t with
    | inl i => exact congrFun hc0 i
    | inr j => exact congrFun hy0 j
  have hAinj : Function.Injective A.mulVec := by
    intro x x' h
    have := hker (x - x') (by rw [Matrix.mulVec_sub]; exact sub_eq_zero.mpr h)
    exact sub_eq_zero.mp this
  have hdetA : A.det ≠ 0 :=
    ((Matrix.isUnit_iff_isUnit_det A).mp (Matrix.mulVec_injective_iff_isUnit.mp hAinj)).ne_zero
  set A' : GL (Fin m) E := Matrix.GeneralLinearGroup.mkOfDetNeZero A hdetA with hA'def
  have hA'v : (A' : Matrix (Fin m) (Fin m) E) = A := rfl
  have hAcat : ∀ c y, A *ᵥ cat e c y = V *ᵥ c + U *ᵥ ((B : Matrix (Fin (m - k)) (Fin (m - k)) E) *ᵥ y) := by
    intro c y
    rw [hAdef, blk_mulVec_cat, hWy]
  have hcol1 : ∀ i, A *ᵥ Pi.single (e (Sum.inl i)) 1 = V *ᵥ Pi.single i 1 := fun i => by
    rw [single_inl, hAcat, Matrix.mulVec_zero, Matrix.mulVec_zero, add_zero]
  have hcol2 : ∀ j, A *ᵥ Pi.single (e (Sum.inr j)) 1 =
      U *ᵥ ((B : Matrix (Fin (m - k)) (Fin (m - k)) E) *ᵥ Pi.single j 1) := fun j => by
    rw [single_inr, hAcat, Matrix.mulVec_zero, zero_add]
  set M₀ : Submodule (𝓞 E) (Fin m → E) := p.2.comap (A.mulVecLin.restrictScalars (𝓞 E)) with hM₀
  have hmem : ∀ x, x ∈ M₀ ↔ A *ᵥ x ∈ p.2 := fun x => Iff.rfl
  have hfg' : q'.2.FG := by
    have heq : q'.2 = (p.2.comap (U.mulVecLin.restrictScalars (𝓞 E))).map
        (((B⁻¹ : GL (Fin (m - k)) E) : Matrix (Fin (m - k)) (Fin (m - k)) E).mulVecLin.restrictScalars (𝓞 E)) := by
      ext w
      simp only [Submodule.mem_map, LinearMap.restrictScalars_apply, Matrix.mulVecLin_apply]
      constructor
      · intro hw
        refine ⟨(B : Matrix (Fin (m - k)) (Fin (m - k)) E) *ᵥ w, (hB2 _).2 ⟨w, hw, rfl⟩, ?_⟩
        rw [Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.one_mulVec]
      · rintro ⟨u, hu, rfl⟩
        obtain ⟨w, hw, rfl⟩ := (hB2 u).1 hu
        rw [Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.one_mulVec]
        exact hw
    rw [heq]
    exact hLat'.2.2.1.map _
  have hNle : N q'.2 ≤ M₀ := by
    refine sup_le ?_ ?_
    · rw [Submodule.span_le]
      rintro _ ⟨i, rfl⟩
      rw [SetLike.mem_coe, hmem, hcol1, Matrix.mulVec_single_one]
      exact hv i
    · rw [Submodule.map_le_iff_le_comap]
      intro y hy
      rw [Submodule.mem_comap, catR_apply, hmem, hAcat, Matrix.mulVec_zero, zero_add]
      exact (hB2 _).2 ⟨y, hy, rfl⟩
  have hDN : ∀ x ∈ M₀, (D : 𝓞 E) • x ∈ N q'.2 := by
    intro x hx
    obtain ⟨c, hc, y', hy'M, hdecx⟩ := hdec _ ((hmem x).1 hx)
    obtain ⟨y0, hy0, hBy0⟩ := (hB2 y').1 hy'M
    have hxe : (D : 𝓞 E) • x = cat e c 0 + catR (𝓞 E) e y0 := by
      apply hAinj
      rw [Nat.cast_smul_eq_nsmul, ← Nat.cast_smul_eq_nsmul E, Matrix.mulVec_smul, hdecx, catR_apply,
        cat_add, hAcat, hBy0]
    rw [hxe]
    refine Submodule.add_mem _ (Submodule.mem_sup_left ?_) (Submodule.mem_sup_right (Submodule.mem_map_of_mem hy0))
    rw [cat_eq_sum]
    refine Submodule.sum_mem _ fun i _ => ?_
    obtain ⟨a, ha⟩ := hc i
    rw [← ha, algebraMap_smul]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
  refine ⟨(Jb q'.1, M₀), Set.mem_biUnion (x := q') ⟨hq', hfg'⟩ (Set.mem_image_of_mem _ ⟨hNle, hDN⟩), A', ?_, ?_⟩
  · show cT (starRingEnd E) (A' : Matrix (Fin m) (Fin m) E) * p.1 * (A' : Matrix (Fin m) (Fin m) E) = Jb q'.1
    rw [hA'v]
    ext r s
    obtain ⟨t, rfl⟩ := e.surjective r
    obtain ⟨t', rfl⟩ := e.surjective s
    rw [entry_eq]
    simp only [Jb, Matrix.of_apply, Equiv.symm_apply_apply]
    rcases t with i | j <;> rcases t' with i' | j'
    · rw [hcol1, hcol1, hform_mulVec, hg, hform_single, Matrix.fromBlocks_apply₁₁]
    · rw [hcol1, hcol2, spl_cross p.1 V U hPU, Matrix.fromBlocks_apply₁₂, Matrix.zero_apply]
    · rw [hcol2, hcol1, spl_cross p.1 U V hUV, Matrix.fromBlocks_apply₂₁, Matrix.zero_apply]
    · rw [hcol2, hcol2, hform_mulVec, hform_mulVec, hB1, hform_single, Matrix.fromBlocks_apply₂₂]
  · intro w
    constructor
    · intro hw
      refine ⟨((A'⁻¹ : GL (Fin m) E) : Matrix (Fin m) (Fin m) E) *ᵥ w, ?_, ?_⟩
      · show A *ᵥ (((A'⁻¹ : GL (Fin m) E) : Matrix (Fin m) (Fin m) E) *ᵥ w) ∈ p.2
        rw [← hA'v, Matrix.mulVec_mulVec, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.one_mulVec]
        exact hw
      · rw [Matrix.mulVec_mulVec, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.one_mulVec]
    · rintro ⟨u, hu, rfl⟩
      rw [hA'v]
      exact hu

end PIW.AdelClassFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.BlkMulVecCat =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.ExistsBoundedMultiplier =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.ExistsBoundedMultiplier", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.IdealMulPrincipal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.NumberField.ClassNumber\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open NumberField
open scoped nonZeroDivisors

private lemma exists_mem_ne_zero_mul_dvd_of_mul_isPrincipal {R : Type*} [CommRing R] (I J : Ideal R)
    (hIJ : I * J ≠ ⊥) (hP : Submodule.IsPrincipal (I * J)) :
    ∃ c ∈ I, c ≠ 0 ∧ ∀ e ∈ J, ∀ g ∈ I, ∃ q : R, e * g = c * q := by
  obtain ⟨⟨c, hc⟩⟩ := hP
  have hcmem : c ∈ I * J := by
    rw [hc]; exact Submodule.mem_span_singleton_self c
  refine ⟨c, Ideal.mul_le.2 (fun a ha b _ => I.mul_mem_right b ha) hcmem, ?_, ?_⟩
  · rintro rfl
    apply hIJ
    rw [hc]; exact Submodule.span_singleton_eq_bot.2 rfl
  · intro e he g hg
    have hmem : e * g ∈ I * J := by
      rw [mul_comm I J]; exact Ideal.mul_mem_mul he hg
    rw [hc] at hmem
    obtain ⟨q, hq⟩ := Ideal.mem_span_singleton.1 hmem
    exact ⟨q, hq⟩

private lemma ideal_mem_nonZeroDivisors_of_ne_bot {E : Type} [Field E] [NumberField E] (I : Ideal (𝓞 E)) (hI : I ≠ ⊥) :
    I ∈ nonZeroDivisors (Ideal (𝓞 E)) :=
  mem_nonZeroDivisors_iff_ne_zero.2 (by rwa [Ideal.zero_eq_bot])

private lemma coe_nonZeroDivisors_ideal_ne_bot {E : Type} [Field E] [NumberField E] (K : ↥(nonZeroDivisors (Ideal (𝓞 E)))) :
    (K : Ideal (𝓞 E)) ≠ ⊥ := by
  have h := nonZeroDivisors.coe_ne_zero K
  rwa [Ideal.zero_eq_bot] at h

private lemma mul_isPrincipal_of_classGroup_mk0_eq_inv {E : Type} [Field E] [NumberField E] (I K : ↥(nonZeroDivisors (Ideal (𝓞 E))))
    (hK : ClassGroup.mk0 K = (ClassGroup.mk0 I)⁻¹) :
    Submodule.IsPrincipal ((I : Ideal (𝓞 E)) * (K : Ideal (𝓞 E))) := by
  have hK1 : ClassGroup.mk0 (I * K) = 1 := by
    rw [map_mul, hK, mul_inv_cancel]
  exact (ClassGroup.mk0_eq_one_iff (I * K).2).1 hK1

private lemma exists_bounded_norm_ideal_mul_isPrincipal {E : Type} [Field E] [NumberField E] :
    ∃ B : ℕ, ∀ I : Ideal (𝓞 E), I ≠ ⊥ → ∃ J : Ideal (𝓞 E), J ≠ ⊥ ∧ Ideal.absNorm J ≤ B ∧
      I * J ≠ ⊥ ∧ Submodule.IsPrincipal (I * J) := by
  letI hF : Fintype (ClassGroup (𝓞 E)) := NumberField.RingOfIntegers.instFintypeClassGroup E
  choose rep hrep using (ClassGroup.mk0_surjective (R := 𝓞 E))
  refine ⟨Finset.univ.sup (fun x => Ideal.absNorm ((rep x : Ideal (𝓞 E)))), ?_⟩
  intro I hI
  refine ⟨rep (ClassGroup.mk0 ⟨I, ideal_mem_nonZeroDivisors_of_ne_bot I hI⟩)⁻¹, coe_nonZeroDivisors_ideal_ne_bot _,
    Finset.le_sup (f := fun x => Ideal.absNorm ((rep x : Ideal (𝓞 E)))) (Finset.mem_univ _),
    coe_nonZeroDivisors_ideal_ne_bot (⟨I, ideal_mem_nonZeroDivisors_of_ne_bot I hI⟩ * rep (ClassGroup.mk0 ⟨I, ideal_mem_nonZeroDivisors_of_ne_bot I hI⟩)⁻¹),
    mul_isPrincipal_of_classGroup_mk0_eq_inv ⟨I, ideal_mem_nonZeroDivisors_of_ne_bot I hI⟩ _ (hrep _)⟩

theorem existsBoundedMultiplier : IdealBoundAll := by
  intro E _ _
  obtain ⟨B, hB⟩ := exists_bounded_norm_ideal_mul_isPrincipal (E := E)
  refine ⟨B, fun I hI => ?_⟩
  obtain ⟨J, hJ0, hJB, hIJ0, hP⟩ := hB I hI
  obtain ⟨c, hcI, hc0, hc⟩ := exists_mem_ne_zero_mul_dvd_of_mul_isPrincipal I J hIJ0 hP
  exact ⟨c, hcI, hc0, Ideal.absNorm J,
    Nat.one_le_iff_ne_zero.2 (fun h => hJ0 (Ideal.absNorm_eq_zero_iff.1 h)), hJB, hc _ (Ideal.absNorm_mem J)⟩

end PIW.AdelClassFin

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.ExistsBoundedMultiplier =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.IsImgTrans =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.IsImgTrans", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.StGenusOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open Formalism.MainNotions.S PI.AdelClassFin NumberField
open scoped TensorProduct Matrix

theorem stCong : StCong := by
  intro I U hU
  obtain ⟨g, hg, hsub⟩ := I.topf_basis U (hU.mem_nhds U.one_mem)
  exact ⟨g, hg, fun x hx => hsub hx⟩

theorem stTop : StTop := by
  intro hC hK hG I U hU
  classical
  obtain ⟨g, hg, hgU⟩ := hC I U hU
  obtain ⟨T, hT⟩ := hK I g hg
  obtain ⟨S, hS⟩ := hG I
  refine ⟨(S ×ˢ T).image (fun p => p.1 * p.2), fun x => ?_⟩
  obtain ⟨γ, hγ, s, hs, k, hk, rfl⟩ := hS x
  obtain ⟨t, ht, u, hu, rfl⟩ := hT k hk
  refine ⟨γ, hγ, s * t, Finset.mem_image.mpr ⟨(s, t), Finset.mem_product.mpr ⟨hs, ht⟩, rfl⟩, u, hgU hu, ?_⟩
  simp only [mul_assoc]

theorem stGenusOf : StGenusOf := by
  intro hD hH I
  classical
  obtain ⟨Λ, hΛ1, hΛ2, hΛ3⟩ := hD I
  obtain ⟨T, hT⟩ := hH I.F I.E I.cm I.n I.J I.J_herm I.J_det
  have huniq : ∀ {g : GL (Fin I.n) I.E} {A B B' : Submodule (𝓞 I.E) (Fin I.n → I.E)},
      IsImg g A B → IsImg g A B' → B = B' := by
    intro g A B B' h h'
    ext v
    exact (h v).trans (h' v).symm
  let rep : Submodule (𝓞 I.E) (Fin I.n → I.E) → I.Gf := fun M₀ =>
    if h : ∃ y, Λ y = M₀ then Classical.choose h else 1
  have hrep : ∀ M₀, (∃ y, Λ y = M₀) → Λ (rep M₀) = M₀ := by
    intro M₀ h
    show Λ (dite _ _ _) = M₀
    rw [dite_eq_left h]
    exact Classical.choose_spec h
  refine ⟨T.image rep, fun x => ?_⟩
  obtain ⟨hfg, hspan, hsd⟩ := hΛ1 x
  obtain ⟨γ, hγ, M₀, hM₀, himg⟩ := hT (Λ x) hfg hspan hsd
  obtain ⟨c', -, -, hc'⟩ := hΛ3 γ⁻¹ (Subgroup.inv_mem _ hγ)
  have hrange : ∃ y, Λ y = M₀ := by
    refine ⟨c' * x, ?_⟩
    ext v
    rw [hc' x v]
    constructor
    · rintro ⟨w, hw, rfl⟩
      obtain ⟨w0, hw0, rfl⟩ := (himg w).1 hw
      rw [Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.one_mulVec]
      exact hw0
    · intro hv
      refine ⟨(γ : Matrix (Fin I.n) (Fin I.n) I.E) *ᵥ v, (himg _).2 ⟨v, hv, rfl⟩, ?_⟩
      rw [Matrix.mulVec_mulVec, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.one_mulVec]
  obtain ⟨c, hcG, -, hc⟩ := hΛ3 γ hγ
  have heq : Λ (c * rep M₀) = Λ x := huniq (hc (rep M₀)) (by rw [hrep M₀ hrange]; exact himg)
  obtain ⟨k, hk, hxk⟩ := hΛ2 _ _ heq
  exact ⟨c, hcG, rep M₀, Finset.mem_image_of_mem _ hM₀, k, hk, hxk⟩

end PIW.AdelClassFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.IsImgTrans =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.KsetMulVecMem =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.KsetMulVecMem", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.DictPlan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open Formalism.MainNotions.S PI.AdelClassFin NumberField
open scoped TensorProduct Matrix

def StLatFin : Prop :=
  ∀ (I : AutInst) (g : ℕ), 1 ≤ g → ∃ R : Finset (Fin I.n → I.E ⊗[I.F] Af I.F), (∀ r ∈ R, r ∈ I.Lf) ∧
    ∀ y ∈ I.Lf, ∃ r ∈ R, ∃ z ∈ I.Lf, y - r = (g : I.E ⊗[I.F] Af I.F) • z

theorem kset_mulVec_mem (I : AutInst) {k : I.Gf} (hk : k ∈ I.Kset) {y : Fin I.n → I.E ⊗[I.F] Af I.F}
    (hy : y ∈ I.Lf) : I.fmat k *ᵥ y ∈ I.Lf := (hk y).mp hy

theorem kset_inv (I : AutInst) {k : I.Gf} (hk : k ∈ I.Kset) : k⁻¹ ∈ I.Kset := by
  show ((k⁻¹ : I.Gf) : GL (Fin I.n) (I.E ⊗[I.F] Af I.F)) ∈ Formalism.UG.stabGL I.Lf
  rw [Subgroup.coe_inv]
  exact Subgroup.inv_mem _ hk

theorem kset_mul (I : AutInst) {k t : I.Gf} (hk : k ∈ I.Kset) (ht : t ∈ I.Kset) : k * t ∈ I.Kset := by
  show ((k * t : I.Gf) : GL (Fin I.n) (I.E ⊗[I.F] Af I.F)) ∈ Formalism.UG.stabGL I.Lf
  rw [Subgroup.coe_mul]
  exact Subgroup.mul_mem _ hk ht

theorem stKFin_of (hL : StLatFin) : StKFin := by
  classical
  intro I g hg
  obtain ⟨R, hRLf, hR⟩ := hL I g hg
  choose! rep hrepR z hz hrepEq using hR
  let Ψ : I.Kset → (R → R) := fun k r =>
    ⟨rep (I.fmat k *ᵥ (r : Fin I.n → I.E ⊗[I.F] Af I.F)),
      hrepR _ (kset_mulVec_mem I k.2 (hRLf r r.2))⟩
  refine ⟨Finset.univ.image (fun φ : R → R =>
    if h : ∃ k, Ψ k = φ then ((h.choose : I.Kset) : I.Gf) else 1), ?_⟩
  intro k hk
  have hex : ∃ k', Ψ k' = Ψ ⟨k, hk⟩ := ⟨_, rfl⟩
  obtain ⟨t, htdef⟩ : ∃ t : I.Kset, t = hex.choose := ⟨_, rfl⟩
  have htΨ : Ψ t = Ψ ⟨k, hk⟩ := by rw [htdef]; exact hex.choose_spec
  refine ⟨(t : I.Gf), Finset.mem_image.mpr ⟨Ψ ⟨k, hk⟩, Finset.mem_univ _, by rw [dite_eq_left hex, htdef]⟩,
    (t : I.Gf)⁻¹ * k, ?_, (mul_inv_cancel_left (t : I.Gf) k).symm⟩
  refine ⟨kset_mul I (kset_inv I t.2) hk, ?_⟩
  intro y hy
  have hrR : rep y ∈ R := hrepR y hy
  have hkr := hrepEq (I.fmat k *ᵥ rep y) (kset_mulVec_mem I hk (hRLf _ hrR))
  have htr := hrepEq (I.fmat t *ᵥ rep y) (kset_mulVec_mem I t.2 (hRLf _ hrR))
  have hrep_eq : rep (I.fmat k *ᵥ rep y) = rep (I.fmat t *ᵥ rep y) := by
    have h1 := congrFun htΨ ⟨rep y, hrR⟩
    exact (congrArg Subtype.val h1).symm
  have hfu : I.fmat ((t : I.Gf)⁻¹ * k) = I.fmat (t : I.Gf)⁻¹ * I.fmat k := by
    simp only [Formalism.MainNotions.S.AutInst.fmat, Subgroup.coe_mul, Units.val_mul]
  have hinv : I.fmat (t : I.Gf)⁻¹ * I.fmat t = 1 := by
    simp only [Formalism.MainNotions.S.AutInst.fmat, Subgroup.coe_inv, Units.inv_mul]
  refine ⟨I.fmat (t : I.Gf)⁻¹ *ᵥ ((z (I.fmat k *ᵥ rep y) - z (I.fmat t *ᵥ rep y)) +
      (I.fmat k *ᵥ z y - I.fmat t *ᵥ z y)), ?_, ?_⟩
  · apply kset_mulVec_mem I (kset_inv I t.2)
    exact I.Lf.add_mem (I.Lf.sub_mem (hz _ (kset_mulVec_mem I hk (hRLf _ hrR)))
      (hz _ (kset_mulVec_mem I t.2 (hRLf _ hrR))))
      (I.Lf.sub_mem (kset_mulVec_mem I hk (hz y hy)) (kset_mulVec_mem I t.2 (hz y hy)))
  · have hyd : y = rep y + (g : I.E ⊗[I.F] Af I.F) • z y := by rw [← hrepEq y hy, add_sub_cancel]
    have hkrd : I.fmat k *ᵥ rep y = rep (I.fmat k *ᵥ rep y) +
        (g : I.E ⊗[I.F] Af I.F) • z (I.fmat k *ᵥ rep y) := by rw [← hkr, add_sub_cancel]
    have htrd : I.fmat t *ᵥ rep y = rep (I.fmat t *ᵥ rep y) +
        (g : I.E ⊗[I.F] Af I.F) • z (I.fmat t *ᵥ rep y) := by rw [← htr, add_sub_cancel]
    have hy' : y = I.fmat (t : I.Gf)⁻¹ *ᵥ (I.fmat t *ᵥ y) := by
      rw [Matrix.mulVec_mulVec, hinv, Matrix.one_mulVec]
    have hdiff : I.fmat k *ᵥ y - I.fmat t *ᵥ y = (g : I.E ⊗[I.F] Af I.F) •
        ((z (I.fmat k *ᵥ rep y) - z (I.fmat t *ᵥ rep y)) + (I.fmat k *ᵥ z y - I.fmat t *ᵥ z y)) := by
      conv_lhs => rw [hyd, Matrix.mulVec_add, Matrix.mulVec_add, Matrix.mulVec_smul, Matrix.mulVec_smul,
        hkrd, htrd, hrep_eq]
      rw [smul_add, smul_sub, smul_sub]
      abel
    rw [hfu, Matrix.sub_mulVec, ← Matrix.mulVec_mulVec, Matrix.one_mulVec]
    calc I.fmat (t : I.Gf)⁻¹ *ᵥ (I.fmat k *ᵥ y) - y
        = I.fmat (t : I.Gf)⁻¹ *ᵥ (I.fmat k *ᵥ y) - I.fmat (t : I.Gf)⁻¹ *ᵥ (I.fmat t *ᵥ y) := by
          rw [← hy']
      _ = I.fmat (t : I.Gf)⁻¹ *ᵥ (I.fmat k *ᵥ y - I.fmat t *ᵥ y) := (Matrix.mulVec_sub _ _ _).symm
      _ = _ := by rw [hdiff, Matrix.mulVec_smul]

theorem lat_mod_fin (I : AutInst) (g : ℕ) (hgpos : 0 < g) : ∃ R : Finset (Fin I.n → I.E), (∀ r ∈ R, r ∈ I.L) ∧
    ∀ l ∈ I.L, ∃ r ∈ R, ∃ l' ∈ I.L, l = r + (g : ℤ) • l' := by
  classical
  have hZfg : (I.L.restrictScalars ℤ).FG := I.L_fg.restrictScalars
  obtain ⟨m, s, hs⟩ := Submodule.fg_iff_exists_fin_generating_family.mp hZfg
  have hmem : ∀ v, v ∈ I.L ↔ ∃ c : Fin m → ℤ, ∑ i, c i • s i = v := by
    intro v
    rw [← Submodule.restrictScalars_mem ℤ, ← hs, Submodule.mem_span_range_iff_exists_fun]
  have hsL : ∀ i, s i ∈ I.L := fun i => (hmem (s i)).mpr ⟨Pi.single i 1, by simp [Pi.single_apply]⟩
  have hcomb : ∀ c : Fin m → ℤ, ∑ i, c i • s i ∈ I.L := fun c => (hmem _).mpr ⟨c, rfl⟩
  refine ⟨(Fintype.piFinset fun _ : Fin m => Finset.range g).image
    (fun c : Fin m → ℕ => ∑ i, ((c i : ℕ) : ℤ) • s i), ?_, ?_⟩
  · intro r hr
    obtain ⟨c, -, rfl⟩ := Finset.mem_image.mp hr
    exact hcomb _
  · intro l hl
    obtain ⟨c, rfl⟩ := (hmem l).mp hl
    have hg0 : (g : ℤ) ≠ 0 := by exact_mod_cast hgpos.ne'
    refine ⟨∑ i, (((c i % g).toNat : ℕ) : ℤ) • s i, Finset.mem_image.mpr ⟨fun i => (c i % g).toNat, ?_, rfl⟩,
      ∑ i, (c i / g) • s i, hcomb _, ?_⟩
    · rw [Fintype.mem_piFinset]
      intro i
      rw [Finset.mem_range]
      have h1 := Int.emod_nonneg (c i) hg0
      have h2 := Int.emod_lt_of_pos (c i) (by exact_mod_cast hgpos : (0 : ℤ) < g)
      omega
    · rw [Finset.smul_sum, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [smul_smul, ← add_smul, Int.toNat_of_nonneg (Int.emod_nonneg (c i) hg0), add_comm, Int.mul_ediv_add_emod]

theorem iv_add_smul (I : AutInst) (r l : Fin I.n → I.E) (g : ℕ) :
    iv I (r + (g : ℤ) • l) = iv I r + (g : I.E ⊗[I.F] Af I.F) • iv I l := by
  funext i
  simp [iv, zsmul_eq_mul]

theorem iv_mem (I : AutInst) {l : Fin I.n → I.E} (hl : l ∈ I.L) : iv I l ∈ I.Lf := Submodule.subset_span ⟨⟨l, hl⟩, rfl⟩

theorem stLatFin_of (h : LDense) : StLatFin := by
  intro I g hg
  obtain ⟨R, hRL, hR⟩ := lat_mod_fin I g (by omega)
  classical
  refine ⟨R.image (iv I), ?_, ?_⟩
  · intro r hr
    obtain ⟨r0, hr0, rfl⟩ := Finset.mem_image.mp hr
    exact iv_mem I (hRL r0 hr0)
  · intro y hy
    obtain ⟨l, hl, y', hy', hyeq⟩ := h I g (by omega) y hy
    obtain ⟨r, hr, l', hl', hleq⟩ := hR l hl
    refine ⟨iv I r, Finset.mem_image_of_mem _ hr, iv I l' + y', I.Lf.add_mem (iv_mem I hl') hy', ?_⟩
    rw [hyeq, hleq, iv_add_smul, smul_add]
    abel

end PIW.AdelClassFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.KsetMulVecMem =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.UnitsModSq =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.UnitsModSq", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.HformSelfStar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open NumberField NumberField.Units

theorem units_mod_sq (F : Type) [Field F] [NumberField F] :
    ∃ U : Set F, U.Finite ∧ ∀ c : (𝓞 F)ˣ, ∃ w ∈ U, ∃ v : (𝓞 F)ˣ,
      algebraMap (𝓞 F) F (c : 𝓞 F) = w * algebraMap (𝓞 F) F (v : 𝓞 F) ^ 2 := by
  classical
  let g : torsion F × (Fin (rank F) → Fin 2) → F := fun p =>
    algebraMap (𝓞 F) F (((p.1 : (𝓞 F)ˣ) * ∏ i, fundSystem F i ^ (((p.2 i : ℕ) : ℤ)) : (𝓞 F)ˣ) : 𝓞 F)
  refine ⟨Set.range g, Set.finite_range g, fun c => ?_⟩
  obtain ⟨⟨ζ, e⟩, he, -⟩ := exist_unique_eq_mul_prod F c
  dsimp only at he
  let f : Fin (rank F) → Fin 2 := fun i => ⟨(e i % 2).toNat, by omega⟩
  refine ⟨g (ζ, f), Set.mem_range_self _, ∏ i, fundSystem F i ^ (e i / 2), ?_⟩
  have key : c = ((ζ : (𝓞 F)ˣ) * ∏ i, fundSystem F i ^ (((f i : ℕ) : ℤ))) *
      (∏ i, fundSystem F i ^ (e i / 2)) ^ 2 := by
    rw [he, mul_assoc, ← Finset.prod_pow, ← Finset.prod_mul_distrib]
    congr 1
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [sq, ← zpow_add, ← zpow_add]
    congr 1
    have h2 : (((f i : ℕ) : ℤ)) = e i % 2 := Int.toNat_of_nonneg (Int.emod_nonneg _ (by norm_num))
    omega
  rw [key, Units.val_mul, map_mul, Units.val_pow_eq_pow_val, map_pow]

theorem partUnits : PartUnits := by
  intro F E _ _ _ _ _ _ hc C
  classical
  obtain ⟨U, hUf, hU⟩ := units_mod_sq F
  let S : Set (Ideal (𝓞 E)) := {I | Ideal.absNorm I ≤ ⌊C⌋₊}
  have hSf : S.Finite := Ideal.finite_setOfPred_absNorm_le _
  let P : Ideal (𝓞 E) → Prop := fun I => ∃ y : 𝓞 E, I = Ideal.span {y} ∧
    star (algebraMap (𝓞 E) E y) = algebraMap (𝓞 E) E y ∧ y ≠ 0
  let rep : Ideal (𝓞 E) → E := fun I => if h : P I then algebraMap (𝓞 E) E h.choose else 1
  refine ⟨Set.image2 (fun w I => algebraMap F E w * rep I) U S \ {0}, (hUf.image2 _ hSf).sdiff,
    fun h => h.2 rfl, ?_⟩
  rintro a ⟨x, rfl⟩ hstar ha hN
  have hinj : Function.Injective (algebraMap (𝓞 E) E) := RingOfIntegers.coe_injective
  have hx0 : x ≠ 0 := by rintro rfl; exact ha (map_zero _)
  have hxS : Ideal.span {x} ∈ S := by
    show Ideal.absNorm _ ≤ _
    rw [Ideal.absNorm_span_singleton]
    apply Nat.le_floor
    have h1 := Algebra.coe_norm_int x
    rw [Nat.cast_natAbs, Int.cast_abs]
    rw [h1]
    exact hN
  have hP : P (Ideal.span {x}) := ⟨x, rfl, hstar, hx0⟩
  obtain ⟨hyI, hys, hy0⟩ := hP.choose_spec
  have hrep : rep (Ideal.span {x}) = algebraMap (𝓞 E) E hP.choose := dif_pos hP
  obtain ⟨w, hw⟩ : Associated hP.choose x := Ideal.span_singleton_eq_span_singleton.mp hyI.symm
  have hyE : algebraMap (𝓞 E) E hP.choose ≠ 0 := fun h => hy0 (hinj (h.trans (map_zero _).symm))
  have h1 : algebraMap (𝓞 E) E x =
      algebraMap (𝓞 E) E hP.choose * algebraMap (𝓞 E) E (w : 𝓞 E) := by
    rw [← map_mul]
    exact congrArg _ hw.symm
  have hWs : star (algebraMap (𝓞 E) E (w : 𝓞 E)) = algebraMap (𝓞 E) E (w : 𝓞 E) := by
    refine mul_left_cancel₀ hyE ?_
    calc algebraMap (𝓞 E) E hP.choose * star (algebraMap (𝓞 E) E (w : 𝓞 E))
        = star (algebraMap (𝓞 E) E hP.choose) * star (algebraMap (𝓞 E) E (w : 𝓞 E)) := by
          rw [hys]
      _ = star (algebraMap (𝓞 E) E hP.choose * algebraMap (𝓞 E) E (w : 𝓞 E)) :=
          (star_mul' _ _).symm
      _ = _ := by rw [← h1, hstar, h1]
  obtain ⟨c, hcW⟩ := (hc.fixed _).1 hWs
  have hWW' : algebraMap (𝓞 E) E (w : 𝓞 E) * algebraMap (𝓞 E) E ((w⁻¹ : (𝓞 E)ˣ) : 𝓞 E) = 1 := by
    rw [← map_mul, ← Units.val_mul, mul_inv_cancel, Units.val_one, map_one]
  have hc0 : c ≠ 0 := by
    rintro rfl
    rw [← hcW, map_zero, zero_mul] at hWW'
    exact zero_ne_one hWW'
  have hW' : algebraMap (𝓞 E) E ((w⁻¹ : (𝓞 E)ˣ) : 𝓞 E) = algebraMap F E c⁻¹ := by
    rw [map_inv₀, hcW]
    exact eq_inv_of_mul_eq_one_right hWW'
  have hci : IsIntegral ℤ c := by
    refine (isIntegral_algebraMap_iff (B := E) ).mp ?_
    rw [hcW]
    exact (w : 𝓞 E).2
  have hci' : IsIntegral ℤ c⁻¹ := by
    refine (isIntegral_algebraMap_iff (B := E) ).mp ?_
    rw [← hW']
    exact ((w⁻¹ : (𝓞 E)ˣ) : 𝓞 E).2
  let cu : (𝓞 F)ˣ :=
    { val := ⟨c, hci⟩
      inv := ⟨c⁻¹, hci'⟩
      val_inv := RingOfIntegers.ext (show c * c⁻¹ = 1 from mul_inv_cancel₀ hc0)
      inv_val := RingOfIntegers.ext (show c⁻¹ * c = 1 from inv_mul_cancel₀ hc0) }
  obtain ⟨w0, hw0U, v, hv⟩ := hU cu
  have hcv : c = w0 * algebraMap (𝓞 F) F (v : 𝓞 F) ^ 2 := hv
  let u : (𝓞 E)ˣ := Units.map (RingOfIntegers.mapRingHom (algebraMap F E)).toMonoidHom v
  have hu : algebraMap (𝓞 E) E (u : 𝓞 E) = algebraMap F E (algebraMap (𝓞 F) F (v : 𝓞 F)) := rfl
  have hus : star (algebraMap (𝓞 E) E (u : 𝓞 E)) = algebraMap (𝓞 E) E (u : 𝓞 E) :=
    (hc.fixed _).2 ⟨_, hu.symm⟩
  have main : algebraMap (𝓞 E) E x = star (algebraMap (𝓞 E) E (u : 𝓞 E)) *
      algebraMap (𝓞 E) E (u : 𝓞 E) * (algebraMap F E w0 * rep (Ideal.span {x})) := by
    rw [hus, hrep, h1, ← hcW, hcv, map_mul, map_pow, hu]
    ring
  refine ⟨u, algebraMap F E w0 * rep (Ideal.span {x}),
    ⟨Set.mem_image2_of_mem hw0U hxS, fun h0 => ha ?_⟩, main⟩
  rw [main]
  rw [Set.mem_singleton_iff.mp h0, mul_zero]

end PIW.AdelClassFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.UnitsModSq =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.StHOfOpen =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.StHOfOpen", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartShortOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartSplitOfOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.IdealMulPrincipal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.HformSmulRight\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.HmkFactor\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.UnitsModSq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PIW.AdelClassFin

theorem stH_of_open (hO : SpOne) (hI : IdealBoundAll) (h1 : SvMajE) (h2 : SvCodiff) (h3 : SvBasis) (h4 : SvGramDet)
    (h5 : SvReal) : StH :=
  stH_of_parts (partShort_of partMink h1 h2 h3 h4 h5) partUnits (partIso_of hI) (partSplit_of_one hO)

end PIW.AdelClassFin
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.StHOfOpen =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.Partial =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.Partial", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.IdealMulPrincipal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartShortOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartSplitOfOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.DictAll\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.IsImgTrans\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.KsetMulVecMem\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.StHOfOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

theorem stKFin : StKFin := stKFin_of (stLatFin_of lattice_dense)

theorem adelClassFin_of_H (h : StH) : PI.AdelClassFin.AdelClassFin :=
  stTop stCong stKFin (stGenusOf stDict h)

theorem adelClassFin_of_open (h1 : SpOne) (h2 : IdealBoundAll) (h3 : SvMajE) (h4 : SvCodiff) (h5 : SvBasis)
    (h6 : SvGramDet) (h7 : SvReal) : PI.AdelClassFin.AdelClassFin :=
  adelClassFin_of_H (stH_of_open h1 h2 h3 h4 h5 h6 h7)

end PIW.AdelClassFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.Partial =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorBasis =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorBasis", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartShortOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open NumberField

theorem successive_vector_basis : SvBasis := by
  intro E _ _ m M hfg hspan
  classical
  let M' : Submodule ℤ (Fin m → E) := M.restrictScalars ℤ
  have hfg' : M'.FG := hfg.restrictScalars
  have : Module.Finite ℤ M' := Module.Finite.iff_fg.2 hfg'
  have : Module.Free ℤ M' := Module.free_of_finite_type_torsion_free'
  let b := Module.Free.chooseBasis ℤ M'
  let e0 : Module.Free.ChooseBasisIndex ℤ M' → Fin m → E := fun i => (b i : Fin m → E)
  have hli : LinearIndependent ℤ e0 := b.linearIndependent.map' M'.subtype (Submodule.ker_subtype _)
  have hliQ : LinearIndependent ℚ e0 := (LinearIndependent.iff_fractionRing ℤ ℚ).1 hli
  have hrep : ∀ x (hx : x ∈ M), x = ∑ i, (b.repr ⟨x, hx⟩ i) • e0 i := by
    intro x hx
    have h1 := congrArg Subtype.val (b.sum_repr (⟨x, hx⟩ : M')).symm
    rw [Submodule.coe_sum] at h1
    simpa only [Submodule.coe_smul] using h1
  have hmemM : ∀ x ∈ M, x ∈ Submodule.span ℚ (Set.range e0) := by
    intro x hx
    rw [hrep x hx]
    refine Submodule.sum_mem _ fun i _ => ?_
    rw [← Int.cast_smul_eq_zsmul ℚ]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
  have hstab : ∀ c : E, ∀ v ∈ Submodule.span ℚ (Set.range e0), c • v ∈ Submodule.span ℚ (Set.range e0) := by
    intro c v hv
    induction hv using Submodule.span_induction with
    | mem v hv =>
      obtain ⟨i, rfl⟩ := hv
      obtain ⟨y, hy0, hyi⟩ := IsAlgebraic.exists_integral_multiple ((IsFractionRing.isAlgebraic_iff ℤ ℚ E).2 (Algebra.IsAlgebraic.isAlgebraic c))
      let α : 𝓞 E := ⟨y • c, hyi⟩
      have hαv : α • e0 i ∈ M := M.smul_mem α (b i).2
      have hyQ : (y : ℚ) ≠ 0 := Int.cast_ne_zero.2 hy0
      have : c • e0 i = ((y : ℚ)⁻¹) • (α • e0 i) := by
        have hα : (α • e0 i) = ((y : E) * c) • e0 i := by
          rw [Algebra.smul_def (A := E)] at *
          show ((y • c : E)) • e0 i = _
          rw [zsmul_eq_mul]
        rw [hα, mul_smul, ← smul_assoc]
        rw [show ((y : ℚ)⁻¹ • ((y : E))) = (1 : E) by
          rw [Algebra.smul_def, map_inv₀, map_intCast, inv_mul_cancel₀ (Int.cast_ne_zero.2 hy0)]]
        rw [one_smul]
      rw [this]
      exact Submodule.smul_mem _ _ (hmemM _ hαv)
    | zero => rw [smul_zero]; exact Submodule.zero_mem _
    | add x y _ _ hx hy => rw [smul_add]; exact Submodule.add_mem _ hx hy
    | smul q x _ hx => rw [smul_comm]; exact Submodule.smul_mem _ _ hx
  have hspanQ : Submodule.span ℚ (Set.range e0) = ⊤ := by
    let W : Submodule E (Fin m → E) :=
      { toAddSubmonoid := (Submodule.span ℚ (Set.range e0)).toAddSubmonoid
        smul_mem' := fun c v hv => hstab c v hv }
    have hle : Submodule.span E (M : Set (Fin m → E)) ≤ W := Submodule.span_le.2 fun x hx => hmemM x hx
    rw [hspan] at hle
    rw [eq_top_iff]
    intro v _
    exact hle (Submodule.mem_top)
  let B : Module.Basis (Module.Free.ChooseBasisIndex ℤ M') ℚ (Fin m → E) :=
    Module.Basis.mk hliQ (by rw [hspanQ])
  have hcard : Fintype.card (Module.Free.ChooseBasisIndex ℤ M') = m * Module.finrank ℚ E := by
    rw [← Module.finrank_eq_card_basis B, Module.finrank_pi_fintype]
    simp
  let σ : Fin (m * Module.finrank ℚ E) ≃ Module.Free.ChooseBasisIndex ℤ M' := (Fintype.equivFinOfCardEq hcard).symm
  refine ⟨e0 ∘ σ, hliQ.comp σ σ.injective, fun i => (b (σ i)).2, fun x hx => ?_⟩
  refine ⟨fun i => b.repr ⟨x, hx⟩ (σ i), ?_⟩
  conv_lhs => rw [hrep x hx]
  rw [← Equiv.sum_comp σ]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Int.cast_smul_eq_zsmul]
  rfl

end PIW.AdelClassFin

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorBasis =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorCodifferent =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorCodifferent", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartShortOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.DedekindDomain.Different\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open NumberField

theorem successive_vector_codifferent : SvCodiff := by
  intro E _ _
  refine ⟨(NumberField.discr E).natAbs, Int.natAbs_pos.2 (NumberField.discr_ne_zero E), fun y hy => ?_⟩
  have hmem : y ∈ Submodule.traceDual ℤ ℚ (1 : Submodule (𝓞 E) E) := by
    rw [Submodule.mem_traceDual]
    intro a ha
    obtain ⟨a', rfl⟩ := Submodule.mem_one.1 ha
    rw [Algebra.traceForm_apply, mul_comm]
    exact hy a'
  have hint := isIntegral_discr_mul_of_mem_traceDual (A := ℤ) (K := ℚ)
    (1 : Submodule (𝓞 E) E) (b := integralBasis E)
    (fun i => by rw [integralBasis_apply]; exact RingOfIntegers.isIntegral_coe _)
    (Submodule.mem_one.2 ⟨1, map_one _⟩) hmem
  rw [← NumberField.coe_discr] at hint
  have hx : IsIntegral ℤ (((NumberField.discr E : ℤ) : E) * y) := by
    convert hint using 1
    rw [Algebra.smul_def, mul_one, map_intCast]
  obtain ⟨z, hz⟩ := (IsIntegralClosure.isIntegral_iff (A := 𝓞 E)).1 hx
  obtain ⟨n, hn⟩ : ∃ n : ℕ, n = (NumberField.discr E).natAbs := ⟨_, rfl⟩
  rw [← hn]
  rcases Int.natAbs_eq (NumberField.discr E) with h | h
  · rw [← hn] at h
    refine ⟨z, ?_⟩
    rw [hz, h, Int.cast_natCast]
  · rw [← hn] at h
    refine ⟨-z, ?_⟩
    rw [map_neg, hz, h, Int.cast_neg, Int.cast_natCast, neg_mul, neg_neg]

end PIW.AdelClassFin

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorCodifferent =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorGramDet =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorGramDet", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartShortOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.HformSmulRight\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open Formalism.UG NumberField
open scoped Matrix

section GD

variable {E : Type} [Field E] [NumberField E] [StarRing E] {m : ℕ} (J : Matrix (Fin m) (Fin m) E)

theorem gd_qsmul (q : ℚ) (x : Fin m → E) : q • x = ((q : E)) • x := by
  ext i
  simp [Rat.smul_def]

theorem gd_star_rat (q : ℚ) : star ((q : E)) = (q : E) := by
  first
    | exact star_ratCast q

def gdLeft (y : Fin m → E) : (Fin m → E) →ₗ[ℚ] ℚ where
  toFun x := Algebra.trace ℚ E (hform (starRingEnd E) J x y)
  map_add' x x' := by rw [hform_add_left', map_add (f := _)]
  map_smul' q x := by
    rw [gd_qsmul, hform_smul_left', gd_star_rat, RingHom.id_apply, smul_eq_mul, ← Rat.smul_def, map_smul,
      smul_eq_mul]

def gdRight (x : Fin m → E) : (Fin m → E) →ₗ[ℚ] ℚ where
  toFun y := Algebra.trace ℚ E (hform (starRingEnd E) J x y)
  map_add' y y' := by rw [hform_add_right', map_add (f := _)]
  map_smul' q y := by
    rw [gd_qsmul, hform_smul_right', RingHom.id_apply, smul_eq_mul, ← Rat.smul_def, map_smul, smul_eq_mul]

theorem gd_int_smul (c : ℤ) (x : Fin m → E) : ((c : E)) • x = ((c : ℚ)) • x := by
  rw [gd_qsmul, Rat.cast_intCast]

end GD

theorem successive_vector_gram_det : SvGramDet := by
  classical
  intro F E _ _ _ _ _ _ cm m d δ hd hδ hcod p hp e hli he hspan
  simp only [Lat, Set.mem_setOf_eq] at hp
  obtain ⟨hJh, hJdet, -, -, hMint, hMdual⟩ := hp
  set J := p.1 with hJdef
  set M := p.2 with hMdef
  have hO : ∀ b : E, b ∈ (algebraMap (𝓞 E) E).range → star b ∈ (algebraMap (𝓞 E) E).range := by
    intro b hb
    obtain ⟨β, rfl⟩ := RingHom.mem_range.mp hb
    have hint : IsIntegral ℤ (starRingEnd E (algebraMap (𝓞 E) E β)) :=
      IsIntegral.map (starRingEnd E).toIntAlgHom β.isIntegral_coe
    exact RingHom.mem_range.mpr ((IsIntegralClosure.isIntegral_iff (A := 𝓞 E)).mp hint)
  have F1 : ∀ x y : Fin m → E,
      hform (starRingEnd E) J x y = (fun i => starRingEnd E (x i)) ⬝ᵥ (J *ᵥ y) := by
    intro x y
    simp only [hform, dotProduct, Matrix.mulVec, Finset.mul_sum, mul_assoc]
  have hsingle : ∀ (i : Fin m) (v : Fin m → E), hform (starRingEnd E) J (Pi.single i 1) v = (J *ᵥ v) i := by
    intro i v
    rw [F1]
    have hs : (fun a => starRingEnd E ((Pi.single i (1 : E) : Fin m → E) a)) = Pi.single i 1 := by
      funext a
      by_cases h : a = i
      · subst h
        simp
      · simp [h]
    rw [hs]
    first
      | rw [single_dotProduct, one_mul]
  have hnd : ∀ y : Fin m → E, (∀ x, hform (starRingEnd E) J x y = 0) → y = 0 := by
    intro y hy
    have hJy : J *ᵥ y = 0 := by
      funext i
      rw [← hsingle, Pi.zero_apply]
      exact hy _
    have h6 : y = J⁻¹ *ᵥ (J *ᵥ y) := by
      rw [Matrix.mulVec_mulVec y J⁻¹ J, Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr hJdet),
        Matrix.one_mulVec]
    rw [h6, hJy, Matrix.mulVec_zero]
  have htr : ∀ z : E, (∀ b : E, Algebra.trace ℚ E (b * z) = 0) → z = 0 := by
    intro z hz
    by_contra hne
    have h1 := hz z⁻¹
    rw [inv_mul_cancel₀ hne, ← map_one (algebraMap ℚ E), Algebra.trace_algebraMap, nsmul_eq_mul,
      mul_one, Nat.cast_eq_zero] at h1
    exact (Module.finrank_pos (R := ℚ) (M := E)).ne' h1
  have hRt : ∀ x y, gdRight J x y = Algebra.trace ℚ E (hform (starRingEnd E) J x y) := fun x y => rfl
  have hLt : ∀ x y, gdLeft J y x = Algebra.trace ℚ E (hform (starRingEnd E) J x y) := fun x y => rfl
  have Br : ∀ (x : Fin m → E) (q : Fin (m * Module.finrank ℚ E) → ℚ),
      Algebra.trace ℚ E (hform (starRingEnd E) J x (∑ k, q k • e k)) =
        ∑ k, q k * Algebra.trace ℚ E (hform (starRingEnd E) J x (e k)) := by
    intro x q

    rw [← hRt, map_sum]
    simp only [map_smul, smul_eq_mul]
    simp only [hRt]
  have Bl : ∀ (y : Fin m → E) (q : Fin (m * Module.finrank ℚ E) → ℚ),
      Algebra.trace ℚ E (hform (starRingEnd E) J (∑ k, q k • e k) y) =
        ∑ k, q k * Algebra.trace ℚ E (hform (starRingEnd E) J (e k) y) := by
    intro y q

    rw [← hLt, map_sum]
    simp only [map_smul, smul_eq_mul]
    simp only [hLt]
  have hGe : ∀ i j, gramTr J e i j = Algebra.trace ℚ E (hform (starRingEnd E) J (e i) (e j)) :=
    fun i j => rfl
  have hdetG : (gramTr J e).det ≠ 0 := by
    rcases isEmpty_or_nonempty (Fin (m * Module.finrank ℚ E)) with hE | hE
    · rw [Matrix.det_isEmpty]
      exact one_ne_zero
    have hcard : Fintype.card (Fin (m * Module.finrank ℚ E)) = Module.finrank ℚ (Fin m → E) := by
      rw [Fintype.card_fin]
      first
        | simp [Module.finrank_pi_fintype]
        | rw [Module.finrank_pi_fintype]; simp
    let bs := basisOfLinearIndependentOfCardEqFinrank hli hcard
    have hbs : ∀ i, bs i = e i := fun i => by simp [bs]
    rw [Ne, ← Matrix.exists_mulVec_eq_zero_iff]
    rintro ⟨v, hv0, hv⟩
    have hy : ∑ j, v j • e j = 0 := by
      apply hnd
      intro x
      apply htr
      intro b
      have e1 : b * hform (starRingEnd E) J x (∑ j, v j • e j) =
          hform (starRingEnd E) J (star b • x) (∑ j, v j • e j) := by
        rw [hform_smul_left', star_star]
      rw [e1]
      have hf : gdLeft J (∑ j, v j • e j) = 0 := by
        refine bs.ext fun i => ?_
        rw [hbs, LinearMap.zero_apply, hLt, Br]
        have h2 := congrFun hv i
        rw [Pi.zero_apply] at h2
        refine Eq.trans ?_ h2
        simp only [Matrix.mulVec, dotProduct]
        exact Finset.sum_congr rfl fun k _ => by rw [hGe, mul_comm]
      have h3 := LinearMap.congr_fun hf (star b • x)
      rw [LinearMap.zero_apply, hLt] at h3
      exact h3
    apply hv0
    funext i
    exact (Fintype.linearIndependent_iff.mp hli) v hy i
  refine ⟨hdetG, ?_⟩
  set Gi := (gramTr J e)⁻¹ with hGi
  have hGGi : gramTr J e * Gi = 1 := Matrix.mul_nonsing_inv _ (isUnit_iff_ne_zero.mpr hdetG)
  obtain ⟨w, hw⟩ : ∃ w : Fin (m * Module.finrank ℚ E) → Fin m → E,
      ∀ j, w j = ∑ k, Gi k j • e k := ⟨_, fun j => rfl⟩
  have hBw : ∀ i j, Algebra.trace ℚ E (hform (starRingEnd E) J (e i) (w j)) =
      (1 : Matrix (Fin (m * Module.finrank ℚ E)) (Fin (m * Module.finrank ℚ E)) ℚ) i j := by
    intro i j
    rw [hw, Br, ← hGGi, Matrix.mul_apply]
    exact Finset.sum_congr rfl fun k _ => by rw [hGe, mul_comm]
  have hint : ∀ x ∈ M, ∀ j, Algebra.trace ℚ E (hform (starRingEnd E) J x (w j)) ∈
      (algebraMap ℤ ℚ).range := by
    intro x hx j
    obtain ⟨c, rfl⟩ := hspan x hx
    have e2 : ∑ i, ((c i : ℤ) : E) • e i = ∑ i, ((c i : ℚ)) • e i :=
      Finset.sum_congr rfl fun i _ => gd_int_smul _ _
    rw [e2, Bl]
    simp only [hBw, Matrix.one_apply]
    refine RingHom.mem_range.mpr ⟨c j, ?_⟩
    simp
  have hdual : ∀ j, (d : E) • ((δ : E) • w j) ∈ M := by
    intro j
    apply hMdual
    intro x hx
    rw [hform_smul_right']
    apply hcod
    intro a
    have hsa : star (algebraMap (𝓞 E) E a) • x ∈ M := by
      obtain ⟨a', ha'⟩ := RingHom.mem_range.mp (hO _ (RingHom.mem_range.mpr ⟨a, rfl⟩))
      rw [← ha', algebraMap_smul]
      exact M.smul_mem a' hx
    have e3 : algebraMap (𝓞 E) E a * hform (starRingEnd E) J x (w j) =
        hform (starRingEnd E) J (star (algebraMap (𝓞 E) E a) • x) (w j) := by
      rw [hform_smul_left', star_star]
    rw [e3]
    exact hint _ hsa j
  have hn : ∀ (n : ℕ) (v : Fin m → E), (n : E) • v = (n : ℚ) • v := fun n v => by
    rw [gd_qsmul, Rat.cast_natCast]
  have hC : ∀ j, ∃ C : Fin (m * Module.finrank ℚ E) → ℤ,
      ∀ k, (C k : ℚ) = (d : ℚ) * (δ : ℚ) * Gi k j := by
    intro j
    obtain ⟨C, hCe⟩ := hspan _ (hdual j)
    refine ⟨C, ?_⟩
    have e4 : (d : E) • ((δ : E) • w j) = ∑ k, ((d : ℚ) * (δ : ℚ) * Gi k j) • e k := by
      rw [hn, hn, hw, Finset.smul_sum, Finset.smul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [smul_smul, smul_smul, mul_assoc]
    have e5 : ∑ k, ((C k : ℚ) - (d : ℚ) * (δ : ℚ) * Gi k j) • e k = 0 := by
      simp only [sub_smul, Finset.sum_sub_distrib]
      rw [sub_eq_zero, ← e4, hCe]
      exact Finset.sum_congr rfl fun k _ => (gd_int_smul _ _).symm
    intro k
    exact sub_eq_zero.mp ((Fintype.linearIndependent_iff.mp hli) _ e5 k)
  choose C hCj using hC
  set C' : Matrix (Fin (m * Module.finrank ℚ E)) (Fin (m * Module.finrank ℚ E)) ℤ :=
    Matrix.of fun k j => C j k with hC'
  have hdq : (0 : ℚ) < (d : ℚ) * (δ : ℚ) := by
    have h1 : (0 : ℚ) < d := Nat.cast_pos.mpr hd
    have h2 : (0 : ℚ) < δ := Nat.cast_pos.mpr hδ
    positivity
  have hCm : C'.map (Int.cast : ℤ → ℚ) = ((d : ℚ) * (δ : ℚ)) • Gi := by
    ext k j
    simp [hC', hCj]
  have hdetC : ((C'.det : ℤ) : ℚ) =
      ((d : ℚ) * (δ : ℚ)) ^ (m * Module.finrank ℚ E) * ((gramTr J e).det)⁻¹ := by
    have h1 : ((C'.det : ℤ) : ℚ) = (C'.map (Int.cast : ℤ → ℚ)).det := (Int.castRingHom ℚ).map_det C'
    rw [h1, hCm, Matrix.det_smul, Fintype.card_fin, hGi, Matrix.det_nonsing_inv, Ring.inverse_eq_inv']
  have hCne : C'.det ≠ 0 := by
    intro h0
    rw [h0, Int.cast_zero] at hdetC
    exact mul_ne_zero (pow_ne_zero _ hdq.ne') (inv_ne_zero hdetG) hdetC.symm
  have h1 : (1 : ℚ) ≤ |((C'.det : ℤ) : ℚ)| := by exact_mod_cast Int.one_le_abs hCne
  have hpos : 0 < |(gramTr J e).det| := abs_pos.mpr hdetG
  set X := ((d : ℚ) * (δ : ℚ)) ^ (m * Module.finrank ℚ E) with hX
  have hXpos : 0 < X := pow_pos hdq _
  rw [hdetC, abs_mul, abs_inv, abs_of_pos hXpos] at h1
  have key : |(gramTr J e).det| ≤ X := by
    have h2 := mul_le_mul_of_nonneg_left h1 hpos.le
    rwa [mul_one, mul_comm X, ← mul_assoc, mul_inv_cancel₀ hpos.ne', one_mul] at h2
  rw [hX] at key
  push_cast
  exact key

end PIW.AdelClassFin

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorGramDet =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorMajorantE =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorMajorantE", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartShortOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Spectrum\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Star.UnitaryStarAlgAut\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open Formalism.UG NumberField Matrix
open scoped ComplexOrder

theorem svM_conj_form {n : ℕ} (U : Matrix (Fin n) (Fin n) ℂ) (d z : Fin n → ℂ) :
    star z ⬝ᵥ ((U * diagonal d * star U) *ᵥ z) =
      ∑ i, star ((star U *ᵥ z) i) * (d i * (star U *ᵥ z) i) := by
  rw [Matrix.star_eq_conjTranspose, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec,
    Matrix.dotProduct_mulVec]
  have h : star z ᵥ* U = star (Uᴴ *ᵥ z) := by
    rw [Matrix.star_mulVec, Matrix.conjTranspose_conjTranspose]
  rw [h]
  simp only [dotProduct, Pi.star_apply, Matrix.mulVec_diagonal]

theorem svM_term (r : ℝ) (w : ℂ) : star w * ((r : ℂ) * w) = ((r * ‖w‖ ^ 2 : ℝ) : ℂ) := by
  simp only [Complex.star_def, Complex.ofReal_mul, Complex.ofReal_pow]
  rw [mul_left_comm, Complex.conj_mul']

theorem successive_vector_majorant : SvMaj := by
  intro n J hJ hdet
  set U : Matrix (Fin n) (Fin n) ℂ := (hJ.eigenvectorUnitary : Matrix (Fin n) (Fin n) ℂ) with hUdef
  set ev := hJ.eigenvalues with hev
  have hspec : J = U * diagonal (fun i => ((ev i : ℝ) : ℂ)) * star U := by
    have h := hJ.spectral_theorem
    rw [Unitary.conjStarAlgAut_apply] at h
    exact h
  have hUU : star U * U = 1 := Matrix.mem_unitaryGroup_iff'.1 hJ.eigenvectorUnitary.2
  have hUU' : U * star U = 1 := Matrix.mem_unitaryGroup_iff.1 hJ.eigenvectorUnitary.2
  have hev0 : ∀ i, ev i ≠ 0 := by
    intro i h
    apply hdet
    rw [hJ.det_eq_prod_eigenvalues]
    exact Finset.prod_eq_zero (Finset.mem_univ i) (by rw [← hev, h]; simp)
  refine ⟨U * diagonal (fun i => ((|ev i| : ℝ) : ℂ)) * star U, ?_, ?_, ?_⟩
  · have hD : (diagonal (fun i => ((|ev i| : ℝ) : ℂ))).PosDef := by
      rw [Matrix.posDef_diagonal_iff]
      intro i
      exact Complex.zero_lt_real.2 (abs_pos.2 (hev0 i))
    have hinj : Function.Injective (star U).mulVec := by
      intro x y hxy
      have := congrArg (fun v => U *ᵥ v) hxy
      simpa [Matrix.mulVec_mulVec, hUU'] using this
    have h2 := hD.conjTranspose_mul_mul_same hinj
    rwa [Matrix.star_eq_conjTranspose, Matrix.conjTranspose_conjTranspose,
      ← Matrix.star_eq_conjTranspose] at h2
  · have hdU : U.det * (star U).det = 1 := by rw [← Matrix.det_mul, hUU', Matrix.det_one]
    rw [Matrix.det_mul, Matrix.det_mul, mul_right_comm, hdU, one_mul, Matrix.det_diagonal,
      hJ.det_eq_prod_eigenvalues, norm_prod]
    push_cast
    apply Finset.prod_congr rfl
    intro i _
    simp [hev]
  · intro z
    rw [hspec, svM_conj_form, svM_conj_form]
    simp only [svM_term]
    rw [← Complex.ofReal_sum, ← Complex.ofReal_sum, Complex.norm_real, Complex.ofReal_re,
      Real.norm_eq_abs]
    refine (Finset.abs_sum_le_sum_abs _ _).trans (le_of_eq (Finset.sum_congr rfl fun i _ => ?_))
    rw [abs_mul, abs_sq]

theorem successive_vector_majorant_e : SvMajE := by
  intro F E _ _ _ _ _ _ hCM m J hJ hdet
  have hstar : ∀ (φ : E →+* ℂ) (a : E), φ (star a) = starRingEnd ℂ (φ a) := hCM.cmUnram.2.1
  have hTC : NumberField.IsTotallyComplex E := hCM.cmUnram.1
  have hne : ∀ φ : E →+* ℂ, ComplexEmbedding.conjugate φ ≠ φ := by
    intro φ h
    have hc := hTC.isComplex (InfinitePlace.mk φ)
    rw [InfinitePlace.isComplex_mk_iff] at hc
    exact hc (ComplexEmbedding.isReal_iff.2 h)
  have hJe : ∀ i j, star (J j i) = J i j := by
    intro i j
    have := congrFun (congrFun hJ i) j
    simp only [Formalism.UG.cT, Matrix.transpose_apply, Matrix.map_apply] at this
    exact this
  have hherm : ∀ φ : E →+* ℂ, (J.map φ).IsHermitian := by
    intro φ
    refine Matrix.IsHermitian.ext fun i j => ?_
    simp only [Matrix.map_apply]
    rw [← hJe i j, hstar]
    rfl
  have hdetφ : ∀ φ : E →+* ℂ, (J.map φ).det ≠ 0 := by
    intro φ
    rw [← RingHom.mapMatrix_apply, ← RingHom.map_det]
    exact (map_ne_zero φ).2 hdet
  have hmapT : ∀ M : Matrix (Fin m) (Fin m) ℂ, M.IsHermitian → M.map (starRingEnd ℂ) = Mᵀ := by
    intro M hM
    ext i j
    rw [Matrix.map_apply, Matrix.transpose_apply, ← hM.apply j i]
    rfl
  have hid : ∀ (N : Matrix (Fin m) (Fin m) ℂ) (z : Fin m → ℂ),
      star z ⬝ᵥ (N.map (starRingEnd ℂ) *ᵥ z) = starRingEnd ℂ (z ⬝ᵥ (N *ᵥ star z)) := by
    intro N z

    simp [dotProduct, mulVec, map_sum, map_mul]
  choose H0 hH0 using fun φ : E →+* ℂ => successive_vector_majorant m (J.map φ) (hherm φ) (hdetφ φ)
  let ι := Fintype.equivFin (E →+* ℂ)
  refine ⟨fun φ => if ι φ < ι (ComplexEmbedding.conjugate φ) then H0 φ
    else (H0 (ComplexEmbedding.conjugate φ)).map (starRingEnd ℂ), ?_⟩
  intro φ
  have hcc : ComplexEmbedding.conjugate (ComplexEmbedding.conjugate φ) = φ := star_star φ
  by_cases hp : ι φ < ι (ComplexEmbedding.conjugate φ)
  · have hp' : ¬ ι (ComplexEmbedding.conjugate φ) < ι φ := lt_asymm hp
    simp only [if_pos hp]
    refine ⟨(hH0 φ).1, (hH0 φ).2.1, (hH0 φ).2.2, ?_⟩
    rw [hcc, if_neg hp']
  · set ψ := ComplexEmbedding.conjugate φ with hψ
    have hψφ : ι ψ < ι (ComplexEmbedding.conjugate ψ) := by
      rw [hψ, hcc]
      refine lt_of_le_of_ne (not_lt.1 hp) fun h => hne φ (ι.injective h.symm ▸ rfl)
    have hJφ : J.map φ = (J.map ψ).map (starRingEnd ℂ) := by
      ext i j
      simp [hψ, ComplexEmbedding.conjugate_coe_eq]
    have hM := hH0 ψ
    simp only [if_neg hp, if_pos hψφ, ← hψ]
    refine ⟨?_, ?_, ?_, ?_⟩
    · rw [hmapT _ hM.1.1]
      exact hM.1.transpose
    · have hdc : ∀ N : Matrix (Fin m) (Fin m) ℂ,
          (N.map (starRingEnd ℂ)).det = starRingEnd ℂ N.det := fun N => by
        rw [← RingHom.mapMatrix_apply, ← RingHom.map_det]
      rw [hmapT _ hM.1.1, Matrix.det_transpose, hM.2.1, hJφ, hdc, Complex.norm_conj]
    · intro z
      have h1 := hM.2.2 (star z)
      rw [star_star] at h1
      rw [hJφ, hid, hid, Complex.norm_conj, Complex.conj_re]
      exact h1
    · rw [Matrix.map_map]
      ext i j
      simp

end PIW.AdelClassFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorMajorantE =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.AdelClassFinOfSvReal =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.AdelClassFinOfSvReal", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartShortOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.BlkMulVecCat\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.ExistsBoundedMultiplier\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.Partial\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorBasis\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorCodifferent\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorGramDet\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorMajorantE\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

theorem adelClassFin_of_svReal (h : SvReal) : PI.AdelClassFin.AdelClassFin :=
  adelClassFin_of_open spOne existsBoundedMultiplier successive_vector_majorant_e successive_vector_codifferent successive_vector_basis successive_vector_gram_det h

end PIW.AdelClassFin

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.AdelClassFinOfSvReal =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorReal =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorReal", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.PartShortOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.AdelClassFin

open Formalism.UG NumberField Matrix
open scoped ComplexOrder

section Gen

variable {ι κ : Type*} [Fintype ι] [Fintype κ] [DecidableEq ι] [DecidableEq κ]

theorem svR_form {o : Type*} [Fintype o] (X : Matrix o κ ℂ) (A : Matrix o o ℂ) (v : κ → ℂ) :
    star (X *ᵥ v) ⬝ᵥ (A *ᵥ (X *ᵥ v)) = star v ⬝ᵥ ((Xᴴ * A * X) *ᵥ v) := by
  rw [Matrix.star_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec,
    Matrix.mul_assoc]

theorem svR_det (eq : κ ≃ ι) (X : Matrix ι κ ℂ) (B : Matrix ι ι ℂ) :
    (Xᴴ * B * X).det = star (X.submatrix eq id).det * B.det * (X.submatrix eq id).det := by
  have hY : Xᴴ * B * X = (X.submatrix eq id)ᴴ * B.submatrix eq eq * X.submatrix eq id := by
    rw [Matrix.conjTranspose_submatrix, Matrix.submatrix_mul_equiv, Matrix.submatrix_mul_equiv,
      Matrix.submatrix_id_id]
  rw [hY, Matrix.det_mul, Matrix.det_mul, Matrix.det_conjTranspose, Matrix.det_submatrix_equiv_self]

theorem svR_entry {o : Type*} [Fintype o] (X : Matrix o κ ℂ) (A : Matrix o o ℂ) (i j : κ) :
    (Xᴴ * A * X) i j = ∑ k, ∑ l, star (X k i) * A k l * X l j := by
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Finset.sum_mul]
  rw [Finset.sum_comm]

end Gen

section Coord

variable {E : Type} [Field E] [NumberField E] [StarRing E]

def svP {m N : ℕ} (e : Fin N → Fin m → E) (φ : E →+* ℂ) : Matrix (Fin m) (Fin N) ℂ :=
  Matrix.of fun k i => φ (e i k)

def svBig {m N : ℕ} (e : Fin N → Fin m → E) : Matrix (Fin m × (E →+* ℂ)) (Fin N) ℂ :=
  Matrix.of fun p i => p.2 (e i p.1)

theorem svBig_block [DecidableEq (E →+* ℂ)] {m N : ℕ} (e : Fin N → Fin m → E)
    (A : (E →+* ℂ) → Matrix (Fin m) (Fin m) ℂ) :
    (svBig e)ᴴ * blockDiagonal A * svBig e = ∑ φ, (svP e φ)ᴴ * A φ * svP e φ := by
  ext i j
  rw [svR_entry, Matrix.sum_apply]
  simp_rw [svR_entry]
  simp only [svBig, svP, Matrix.of_apply, Matrix.blockDiagonal_apply, Fintype.sum_prod_type,
    mul_ite, ite_mul, mul_zero, zero_mul, Finset.sum_ite_eq, Finset.mem_univ, if_true]
  rw [Finset.sum_comm]

theorem svR_hform (hst : ∀ (φ : E →+* ℂ) (a : E), φ (star a) = starRingEnd ℂ (φ a)) {m : ℕ}
    (J : Matrix (Fin m) (Fin m) E) (φ : E →+* ℂ) (x y : Fin m → E) :
    φ (hform (starRingEnd E) J x y) = ∑ k, ∑ l, star (φ (x k)) * φ (J k l) * φ (y l) := by

  simp only [hform, map_sum, map_mul, starRingEnd_apply]
  simp only [hst, starRingEnd_apply]

theorem svR_hdot (hst : ∀ (φ : E →+* ℂ) (a : E), φ (star a) = starRingEnd ℂ (φ a)) {m : ℕ}
    (J : Matrix (Fin m) (Fin m) E) (φ : E →+* ℂ) (x y : Fin m → E) :
    φ (hform (starRingEnd E) J x y) =
      star (fun k => φ (x k)) ⬝ᵥ (J.map φ *ᵥ fun l => φ (y l)) := by
  rw [svR_hform hst]
  simp only [dotProduct, Matrix.mulVec, Matrix.map_apply, Pi.star_apply, Finset.mul_sum, mul_assoc]

theorem svR_trace (hst : ∀ (φ : E →+* ℂ) (a : E), φ (star a) = starRingEnd ℂ (φ a)) {m N : ℕ}
    (J : Matrix (Fin m) (Fin m) E) (e : Fin N → Fin m → E) :
    (gramTr J e).map (Rat.castHom ℂ) = ∑ φ, (svP e φ)ᴴ * J.map φ * svP e φ := by
  ext i j
  rw [Matrix.map_apply, Matrix.sum_apply]
  simp_rw [svR_entry]
  simp only [gramTr, svP, Matrix.of_apply, Matrix.map_apply]
  have hcast : ∀ q : ℚ, (Rat.castHom ℂ) q = algebraMap ℚ ℂ q := fun q => by simp
  rw [hcast, trace_eq_sum_embeddings ℂ, ← Equiv.sum_comp (RingHom.equivRatAlgHom E ℂ)]
  refine Finset.sum_congr rfl (fun φ _ => ?_)
  exact svR_hform hst J φ (e i) (e j)

theorem svR_conj {m N : ℕ} (e : Fin N → Fin m → E) (H : (E →+* ℂ) → Matrix (Fin m) (Fin m) ℂ)
    (φ : E →+* ℂ) (hc : H (ComplexEmbedding.conjugate φ) = (H φ).map (starRingEnd ℂ)) :
    (svP e (ComplexEmbedding.conjugate φ))ᴴ * H (ComplexEmbedding.conjugate φ) *
        svP e (ComplexEmbedding.conjugate φ) = ((svP e φ)ᴴ * H φ * svP e φ).map (starRingEnd ℂ) := by
  ext i j
  rw [hc, Matrix.map_apply, svR_entry, svR_entry]

  simp only [svP, Matrix.of_apply, Matrix.map_apply, ComplexEmbedding.conjugate_coe_eq, map_sum,
  map_mul, starRingEnd_apply, star_star]

end Coord

theorem successive_vector_real : SvReal := by
  intro F E _ _ _ _ _ _ hcm m J hJ H hH e hdet
  classical
  have hst : ∀ (φ : E →+* ℂ) (a : E), φ (star a) = starRingEnd ℂ (φ a) := hcm.cmUnram.2.1

  set M : Matrix (Fin (m * Module.finrank ℚ E)) (Fin (m * Module.finrank ℚ E)) ℂ :=
    ∑ φ, (svP e φ)ᴴ * H φ * svP e φ with hM

  have hMc : ∀ i j, starRingEnd ℂ (M i j) = M i j := by
    intro i j

    simp only [hM, Matrix.sum_apply, map_sum]
    have hT : ∀ φ : E →+* ℂ, starRingEnd ℂ (((svP e φ)ᴴ * H φ * svP e φ) i j) =
        ((svP e (ComplexEmbedding.conjugate φ))ᴴ * H (ComplexEmbedding.conjugate φ) *
          svP e (ComplexEmbedding.conjugate φ)) i j := by
      intro φ
      rw [svR_conj e H φ (hH φ).2.2.2, Matrix.map_apply]
    simp_rw [hT]
    exact Equiv.sum_comp ((ComplexEmbedding.involutive_conjugate E).toPerm _)
      (fun φ => ((svP e φ)ᴴ * H φ * svP e φ) i j)

  have hHh : ∀ φ, (H φ)ᴴ = H φ := fun φ => (hH φ).1.1
  have hMH : Mᴴ = M := by
    simp only [hM, Matrix.conjTranspose_sum, Matrix.conjTranspose_mul,
      Matrix.conjTranspose_conjTranspose, hHh, Matrix.mul_assoc]
  set R : Matrix (Fin (m * Module.finrank ℚ E)) (Fin (m * Module.finrank ℚ E)) ℝ :=
    M.map Complex.re with hR
  have hMR : R.map (fun x : ℝ => (x : ℂ)) = M := by
    ext i j
    simp only [hR, Matrix.map_apply]
    exact Complex.conj_eq_iff_re.1 (hMc i j)

  have hsum : ∀ u, star u ⬝ᵥ (M *ᵥ u) =
      ∑ φ : E →+* ℂ, star (svP e φ *ᵥ u) ⬝ᵥ (H φ *ᵥ (svP e φ *ᵥ u)) := by
    intro u
    rw [hM, Matrix.sum_mulVec, dotProduct_sum]
    simp_rw [svR_form]
  have hq : ∀ v : Fin (m * Module.finrank ℚ E) → ℝ, v ⬝ᵥ (R *ᵥ v) =
      (star (fun i => (v i : ℂ)) ⬝ᵥ (M *ᵥ fun i => (v i : ℂ))).re := by
    intro v
    rw [← hMR]
    simp only [dotProduct, Matrix.mulVec, Matrix.map_apply, Pi.star_apply, Complex.star_def,
      Complex.conj_ofReal, Complex.re_sum, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im,
      Complex.im_sum, zero_mul, sub_zero, mul_zero]
  have hnn : ∀ u, 0 ≤ (star u ⬝ᵥ (M *ᵥ u)).re := by
    intro u
    rw [hsum, Complex.re_sum]
    exact Finset.sum_nonneg (fun φ _ => (norm_nonneg _).trans ((hH φ).2.2.1 _))

  have hcard : Fintype.card (Fin (m * Module.finrank ℚ E)) = Fintype.card (Fin m × (E →+* ℂ)) := by
    simp [Fintype.card_prod, NumberField.Embeddings.card]
  set eqv : Fin (m * Module.finrank ℚ E) ≃ Fin m × (E →+* ℂ) := Fintype.equivOfCardEq hcard
  set d := ((svBig e).submatrix eqv id).det with hd
  have hdG : ((gramTr J e).det : ℂ) = star d * (∏ φ : E →+* ℂ, (J.map φ).det) * d := by
    have h1 := congrArg Matrix.det (svR_trace hst J e)
    rw [← svBig_block e (fun φ => J.map φ), svR_det eqv, Matrix.det_blockDiagonal] at h1
    rw [← h1, ← RingHom.mapMatrix_apply, ← RingHom.map_det]
    simp
  have hdM : M.det = star d * (∏ φ : E →+* ℂ, (H φ).det) * d := by
    rw [hM, ← svBig_block e H, svR_det eqv, Matrix.det_blockDiagonal]
  have hRdet : R.det = |((gramTr J e).det : ℝ)| := by
    have h1 : ((R.det : ℝ) : ℂ) = M.det := by
      rw [← hMR]
      exact RingHom.map_det Complex.ofRealHom R
    have h2 : M.det = ((‖((gramTr J e).det : ℂ)‖ : ℝ) : ℂ) := by
      rw [hdM, hdG]
      simp only [(fun φ => (hH φ).2.1 : ∀ φ, (H φ).det = ((‖(J.map φ).det‖ : ℝ) : ℂ))]
      rw [norm_mul, norm_mul, norm_star, norm_prod]
      push_cast
      have hs : star d * d = ((‖d‖ ^ 2 : ℝ) : ℂ) := by
        rw [mul_comm, Complex.star_def, Complex.mul_conj, Complex.normSq_eq_norm_sq]
      calc star d * (∏ φ : E →+* ℂ, ((‖(J.map φ).det‖ : ℝ) : ℂ)) * d
          = (star d * d) * (∏ φ : E →+* ℂ, ((‖(J.map φ).det‖ : ℝ) : ℂ)) := by ring
        _ = _ := by rw [hs]; push_cast; ring
    have h3 := h1.trans h2
    rw [Complex.ofReal_inj] at h3
    rw [h3, Complex.norm_ratCast]
  refine ⟨R, ?_, hRdet, ?_⟩
  ·
    have hRh : R.IsHermitian := by
      ext i j
      simp only [hR, Matrix.conjTranspose_apply, Matrix.map_apply, star_trivial]
      have := congrFun (congrFun hMH i) j
      rw [Matrix.conjTranspose_apply] at this
      rw [← this, Complex.star_def, Complex.conj_re]
    have hPSD : R.PosSemidef := by
      refine Matrix.posSemidef_iff_dotProduct_mulVec.2 ⟨hRh, fun v => ?_⟩
      rw [star_trivial, hq v]
      exact hnn _
    refine (hPSD.posDef_iff_isUnit).2 ((Matrix.isUnit_iff_isUnit_det R).2 (isUnit_iff_ne_zero.2 ?_))
    rw [hRdet]
    exact abs_ne_zero.2 (Rat.cast_ne_zero.2 hdet)
  · intro c
    have hx : ∀ φ : E →+* ℂ, (fun k => φ ((∑ i, (c i : E) • e i) k)) =
        svP e φ *ᵥ fun i => ((c i : ℝ) : ℂ) := by
      intro φ
      ext k

      simp only [svP, Matrix.mulVec, dotProduct, Matrix.of_apply, Finset.sum_apply, Pi.smul_apply,
      smul_eq_mul, map_sum, map_mul, map_intCast]
      refine Finset.sum_congr rfl (fun i _ => ?_)
      push_cast
      ring
    calc ∑ φ : E →+* ℂ, ‖φ (hform (starRingEnd E) J (∑ i, (c i : E) • e i) (∑ i, (c i : E) • e i))‖
        ≤ ∑ φ : E →+* ℂ, (star (svP e φ *ᵥ fun i => ((c i : ℝ) : ℂ)) ⬝ᵥ
            (H φ *ᵥ (svP e φ *ᵥ fun i => ((c i : ℝ) : ℂ)))).re := by
          refine Finset.sum_le_sum (fun φ _ => ?_)
          rw [svR_hdot hst, hx φ]
          exact (hH φ).2.2.1 _
      _ = (star (fun i => ((c i : ℝ) : ℂ)) ⬝ᵥ (M *ᵥ fun i => ((c i : ℝ) : ℂ))).re := by
          rw [hsum, Complex.re_sum]
      _ = (fun i => (c i : ℝ)) ⬝ᵥ (R *ᵥ fun i => (c i : ℝ)) := (hq _).symm

end PIW.AdelClassFin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorReal =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdelClassFin =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdelClassFin", "h": "module\n\npublic import Formalism.PeriodIntegrals.AdelClassFin\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.AdelClassFinOfSvReal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.SuccessiveVectorReal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem adelic_class_set_finite : PI.AdelClassFin.AdelClassFin :=
  PIW.AdelClassFin.adelClassFin_of_svReal PIW.AdelClassFin.successive_vector_real
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdelClassFin =====
