module

public import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.Statements
public import Mathlib.RingTheory.Nullstellensatz
public import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormFormEval
public import Mathlib.RingTheory.Localization.NormTrace
public import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.IntToFracInjective
public import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.ComapMaximalIdealParDVR
import Mathlib.Tactic.Linter.Style
import Mathlib.RingTheory.OrderOfVanishing.Noetherian
import Std.Tactic.BVDecide.Normalize.Prop
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PSecBFinite
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PChowFormHomog
import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PLengthDecomp

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PChartTorsion, GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PIncidenceNull, GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormFormLocalization, GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormLength, GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParAlgIndep, GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParDVRIsDVR, GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParFracIsFractionRing, GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PPrimitiveScale, GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PSecBGeneric, GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PVertTermEq, GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.AssemblyPartial

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PChartTorsion =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PChartTorsion", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.Statements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open MvPolynomial

noncomputable section

namespace ChartTorsion

variable {D : Type} [CommRing D] {n : ℕ} (k : ℕ) (P : Ideal (MvPolynomial (Fin n) D)) (j : Fin n)

abbrev Base := Localization.Away (Ideal.Quotient.mk P (X j))

def toBase : MvPolynomial (Fin n) D →+* Base P j :=
  (algebraMap (MvPolynomial (Fin n) D ⧸ P) (Base P j)).comp (Ideal.Quotient.mk P)

def solve (i : Fin k) (m : Fin n) : MvPolynomial (Fin k × Fin n) (Base P j) :=
  if m = j then
    -(C (IsLocalization.Away.invSelf (Ideal.Quotient.mk P (X j))) *
      ∑ l ∈ Finset.univ.erase j, C (toBase P j (X l)) * X (i, l))
  else X (i, m)

def toChart : MvPolynomial (Fin n ⊕ (Fin k × Fin n)) D →+* MvPolynomial (Fin k × Fin n) (Base P j) :=
  eval₂Hom (C.comp ((toBase P j).comp C))
    (Sum.elim (fun m => C (toBase P j (X m))) (fun im => solve k P j im.1 im.2))

theorem toChart_rename (p : MvPolynomial (Fin n) D) :
    toChart k P j (rename Sum.inl p) = C (toBase P j p) := by
  induction p using MvPolynomial.induction_on with
  | C d => simp [toChart]
  | add p q hp hq => simp only [map_add (f := _), hp, hq]
  | mul_X p m hp => simp only [map_mul, hp, rename_X]; simp [toChart]

theorem incIdeal_le_ker : incIdeal P k ≤ RingHom.ker (toChart k P j) := by
  refine sup_le (Ideal.map_le_iff_le_comap.2 fun p hp => ?_)
    (Ideal.span_le.2 (Set.range_subset_iff.2 fun i => ?_))
  · show toChart k P j (rename Sum.inl p) = 0
    rw [toChart_rename]
    simp [toBase, Ideal.Quotient.eq_zero_iff_mem.2 hp]
  · show toChart k P j _ = 0

    simp only [map_sum, map_mul]
    rw [← Finset.add_sum_erase _ _ (Finset.mem_univ j)]
    have hs : ∀ l ∈ Finset.univ.erase j,
        toChart k P j (X (Sum.inr (i, l))) * toChart k P j (X (Sum.inl l)) =
          C (toBase P j (X l)) * X (i, l) := by
      intro l hl
      simp [toChart, solve, Finset.ne_of_mem_erase hl, mul_comm]
    rw [Finset.sum_congr rfl hs]
    have h1 : C (IsLocalization.Away.invSelf (Ideal.Quotient.mk P (X j))) * C (toBase P j (X j)) =
        (1 : MvPolynomial (Fin k × Fin n) (Base P j)) := by
      rw [← C_mul, mul_comm, toBase, RingHom.comp_apply, IsLocalization.Away.mul_invSelf, C_1]
    simp only [toChart, eval₂Hom_X', Sum.elim_inl, Sum.elim_inr, solve, ↓reduceIte]
    linear_combination (-(∑ l ∈ Finset.univ.erase j, C (toBase P j (X l)) * X (i, l))) * h1

abbrev Loc := Localization.Away (Ideal.Quotient.mk (incIdeal P k) (X (Sum.inl j)))

def toLoc : MvPolynomial (Fin n ⊕ (Fin k × Fin n)) D →+* Loc k P j :=
  (algebraMap _ (Loc k P j)).comp (Ideal.Quotient.mk (incIdeal P k))

theorem toLoc_mem {g : MvPolynomial (Fin n ⊕ (Fin k × Fin n)) D} (hg : g ∈ incIdeal P k) :
    toLoc k P j g = 0 := by
  simp [toLoc, Ideal.Quotient.eq_zero_iff_mem.2 hg]

def quotToLoc : MvPolynomial (Fin n) D ⧸ P →+* Loc k P j :=
  Ideal.Quotient.lift P ((toLoc k P j).comp (rename Sum.inl).toRingHom) fun _ hp =>
    toLoc_mem k P j (Ideal.mem_sup_left (Ideal.mem_map_of_mem _ hp))

theorem quotToLoc_mk (p : MvPolynomial (Fin n) D) :
    quotToLoc k P j (Ideal.Quotient.mk P p) = toLoc k P j (rename Sum.inl p) := rfl

theorem isUnit_quotToLoc : IsUnit (quotToLoc k P j (Ideal.Quotient.mk P (X j))) := by
  rw [quotToLoc_mk, rename_X]
  exact IsLocalization.Away.algebraMap_isUnit (Ideal.Quotient.mk (incIdeal P k) (X (Sum.inl j)))

def baseToLoc : Base P j →+* Loc k P j :=
  IsLocalization.Away.lift _ (isUnit_quotToLoc k P j)

theorem baseToLoc_toBase (p : MvPolynomial (Fin n) D) :
    baseToLoc k P j (toBase P j p) = toLoc k P j (rename Sum.inl p) := by
  simp [baseToLoc, toBase, quotToLoc_mk]

def back : MvPolynomial (Fin k × Fin n) (Base P j) →+* Loc k P j :=
  eval₂Hom (baseToLoc k P j) fun im => toLoc k P j (X (Sum.inr im))

theorem back_toChart (g : MvPolynomial (Fin n ⊕ (Fin k × Fin n)) D) :
    back k P j (toChart k P j g) = toLoc k P j g := by
  suffices h : (back k P j).comp (toChart k P j) = toLoc k P j from congrArg (· g) h
  apply MvPolynomial.ringHom_ext
  · intro d
    have := baseToLoc_toBase k P j (C d)
    simpa [back, toChart] using this
  · rintro (m | ⟨i, m⟩)
    · have := baseToLoc_toBase k P j (X m)
      simpa [back, toChart] using this
    · by_cases hm : m = j
      · subst hm
        have hinc : toLoc k P m (∑ l, X (Sum.inr (i, l)) * X (Sum.inl l)) = 0 :=
          toLoc_mem k P m (Ideal.mem_sup_right (Ideal.subset_span ⟨i, rfl⟩))

        rw [← Finset.add_sum_erase _ _ (Finset.mem_univ m), map_add (f := _), map_sum] at hinc
        have hinv : baseToLoc k P m (IsLocalization.Away.invSelf (Ideal.Quotient.mk P (X m))) *
            toLoc k P m (X (Sum.inl m)) = 1 := by
          have e := baseToLoc_toBase k P m (X m)
          rw [rename_X] at e
          rw [← e, toBase, RingHom.comp_apply, ← map_mul, mul_comm, IsLocalization.Away.mul_invSelf,
            map_one]

        simp only [RingHom.comp_apply, toChart, eval₂Hom_X', Sum.elim_inr, solve, ↓reduceIte,
        back, map_neg, map_mul, map_sum, eval₂Hom_C, eval₂Hom_X', baseToLoc_toBase, rename_X]
        simp only [map_mul] at hinc
        set u := toLoc k P m (X (Sum.inr (i, m)))
        set xm := toLoc k P m (X (Sum.inl m))
        set inv := baseToLoc k P m (IsLocalization.Away.invSelf (Ideal.Quotient.mk P (X m)))
        have hS : ∑ l ∈ Finset.univ.erase m, toLoc k P m (X (Sum.inl l)) *
              toLoc k P m (X (Sum.inr (i, l))) =
            ∑ l ∈ Finset.univ.erase m, toLoc k P m (X (Sum.inr (i, l))) *
              toLoc k P m (X (Sum.inl l)) :=
          Finset.sum_congr rfl fun _ _ => mul_comm _ _
        rw [hS]
        linear_combination (-inv) * hinc + u * hinv
      · simp [back, toChart, solve, hm]

end ChartTorsion


open ChartTorsion in
theorem ChartTorsion.proof : ChartTorsion.Statement := by
  intro D _ _ n k P hP hPD c g hc hcg j
  by_cases hj : (X j : MvPolynomial (Fin n) D) ∈ P
  · refine ⟨1, Ideal.mul_mem_right _ _ (Ideal.mem_sup_left ?_)⟩
    simpa using Ideal.mem_map_of_mem (rename (R := D) (Sum.inl (β := Fin k × Fin n))) hj
  have hx : Ideal.Quotient.mk P (X j) ≠ 0 := fun h => hj (Ideal.Quotient.eq_zero_iff_mem.1 h)
  have hle : Submonoid.powers (Ideal.Quotient.mk P (X j)) ≤ nonZeroDivisors _ :=
    powers_le_nonZeroDivisors_of_noZeroDivisors hx
  have : IsDomain (Base P j) := IsLocalization.isDomain_localization hle
  have hcz : toChart k P j (C c) ≠ 0 := by
    simp only [toChart, eval₂Hom_C, RingHom.comp_apply, ne_eq, C_eq_zero, toBase]
    rw [map_eq_zero_iff _ (IsLocalization.injective (Base P j) hle)]
    intro h
    exact hc (hPD c (Ideal.Quotient.eq_zero_iff_mem.1 h))
  have hg0 : toChart k P j g = 0 := by
    have h := incIdeal_le_ker k P j hcg
    rw [RingHom.mem_ker, map_mul] at h
    exact (mul_eq_zero.1 h).resolve_left hcz
  have hl : toLoc k P j g = 0 := by
    rw [← back_toChart, hg0, map_zero]
  obtain ⟨⟨_, N, rfl⟩, hN⟩ := (IsLocalization.map_eq_zero_iff
    (Submonoid.powers (Ideal.Quotient.mk (incIdeal P k) (X (Sum.inl j)))) _ _).1 hl
  refine ⟨N, Ideal.Quotient.eq_zero_iff_mem.1 ?_⟩
  simpa [map_mul, map_pow] using hN

end

end GroundTheory.Heights₂.Heights.Vertical
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PChartTorsion =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PIncidenceNull =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PIncidenceNull", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.Statements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Nullstellensatz\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open MvPolynomial

theorem IncidenceNull.proof : IncidenceNull.Statement := by
  intro F _ n k I f hf
  have hvan : ∀ j : Fin n, rename Sum.inr f * X (Sum.inl j) ∈
      MvPolynomial.vanishingIdeal F
        (MvPolynomial.zeroLocus (AlgebraicClosure F) (incIdeal I k)) := by
    intro j z hz
    have hI : ∀ g ∈ I, aeval (z ∘ Sum.inl) g = 0 := by
      intro g hg
      have hmem : rename Sum.inl g ∈ incIdeal I k :=
        Ideal.mem_sup_left (Ideal.mem_map_of_mem _ hg)
      have h := hz _ hmem
      rwa [aeval_rename] at h
    have hlin : ∀ i : Fin k, ∑ j, (z ∘ Sum.inr) (i, j) * (z ∘ Sum.inl) j = 0 := by
      intro i
      have hmem : (∑ j, X (Sum.inr (i, j)) * X (Sum.inl j) :
          MvPolynomial (Fin n ⊕ (Fin k × Fin n)) F) ∈ incIdeal I k :=
        Ideal.mem_sup_right (Ideal.subset_span ⟨i, rfl⟩)
      have h := hz _ hmem
      simpa using h
    rw [map_mul, aeval_rename, aeval_X]
    by_cases hx : z ∘ Sum.inl = 0
    · have h0 : z (Sum.inl j) = 0 := congrFun hx j
      rw [h0, mul_zero]
    · have hu : z ∘ Sum.inr ∈ incidence I k := ⟨z ∘ Sum.inl, hx, hI, hlin⟩
      rw [(hf.2 f).2 dvd_rfl _ hu, zero_mul]
  have hrad : ∀ j : Fin n, ∃ m, (rename Sum.inr f * X (Sum.inl j)) ^ m ∈ incIdeal I k := by
    intro j
    have h := hvan j
    rw [MvPolynomial.vanishingIdeal_zeroLocus_eq_radical] at h
    exact h
  choose m hm using hrad
  exact ⟨Finset.univ.sup m, fun j =>
    Ideal.pow_mem_of_pow_mem _ (hm j) (Finset.le_sup (Finset.mem_univ j))⟩

end GroundTheory.Heights₂.Heights.Vertical
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PIncidenceNull =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormFormLocalization =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormFormLocalization", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormFormEval\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Localization.NormTrace\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open MvPolynomial

noncomputable section

theorem NormFormLocalization.proof : NormFormLocalization.Statement := by
  intro R F A A' _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ n x
  classical
  let b := Module.Free.chooseBasis R A
  let b' := b.localizationLocalization F (nonZeroDivisors R) A'
  have hM : ∀ j, Algebra.leftMulMatrix b' (algebraMap A A' (x j)) =
      (algebraMap R F).mapMatrix (Algebra.leftMulMatrix b (x j)) := fun j =>
    (Algebra.map_leftMulMatrix_localization R (nonZeroDivisors R) b (x j)).symm
  rw [normForm_eq_det b, normForm_eq_det b', RingHom.map_det]
  congr 1
  ext i k

  simp only [hM, RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.sum_apply, Matrix.smul_apply,
  smul_eq_mul, map_sum, map_mul, map_X, map_C]

end

end GroundTheory.Heights₂.Heights.Vertical
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormFormLocalization =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormLength =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormLength", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.Statements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.OrderOfVanishing.Noetherian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open Module

noncomputable section

section NormLength

variable {R B : Type*} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R] [CommRing B]
  [Algebra R B] [Module.Free R B] [Module.Finite R B]

theorem ord_prod {ι : Type*} (s : Finset ι) (a : ι → R) (ha : ∀ i ∈ s, a i ≠ 0) :
    Ring.ord R (∏ i ∈ s, a i) = ∑ i ∈ s, Ring.ord R (a i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert j s hj ih =>
    rw [Finset.prod_insert hj, Finset.sum_insert hj, Ring.ord_mul, ih fun i hi => ha i (by simp [hi])]
    exact mem_nonZeroDivisors_of_ne_zero
      (Finset.prod_ne_zero_iff.mpr fun i hi => ha i (by simp [hi]))

theorem ord_norm_eq_length {b : B} (hb : Function.Injective (fun x : B => b * x)) :
    Ring.ord R (Algebra.norm R b) = Module.length R (B ⧸ Ideal.span {b}) := by
  classical
  let bs := Module.Free.chooseBasis R B
  let ι := Module.Free.ChooseBasisIndex R B
  let N : Submodule R B := (Ideal.span {b}).restrictScalars R
  let m : B →ₗ[R] B := Algebra.lmul R B b
  have hm : Function.Injective m := hb
  have hrange : LinearMap.range m = N := by
    ext x
    simp only [LinearMap.mem_range, Submodule.restrictScalars_mem, Ideal.mem_span_singleton', N, m]
    constructor
    · rintro ⟨y, rfl⟩
      exact ⟨y, mul_comm y b⟩
    · rintro ⟨y, rfl⟩
      exact ⟨y, mul_comm b y⟩
  let φ : B ≃ₗ[R] N := (LinearEquiv.ofInjective m hm).trans (LinearEquiv.ofEq _ _ hrange)
  have h : Module.finrank R N = Module.finrank R B := φ.finrank_eq.symm
  let a := Submodule.smithNormalFormCoeffs bs h
  let b' := Submodule.smithNormalFormTopBasis bs h
  let ab := Submodule.smithNormalFormBotBasis bs h
  have ab_eq : ∀ i, (ab i : B) = a i • b' i := Submodule.smithNormalFormBotBasis_def bs h
  have ha : ∀ i, a i ≠ 0 := Submodule.smithNormalFormCoeffs_ne_zero bs h

  have hlen : Module.length R (B ⧸ Ideal.span {b}) = ∑ i, Ring.ord R (a i) := by
    rw [← (Submodule.Quotient.restrictScalarsEquiv R (Ideal.span {b})).length_eq,
      (Submodule.quotientEquivPiSpan N bs h).length_eq, Module.length_pi_of_fintype]
    rfl

  let E : B ≃ₗ[R] N := b'.equiv ab (Equiv.refl ι)
  let D : B →ₗ[R] B := N.subtype ∘ₗ E.toLinearMap
  let u : B ≃ₗ[R] B := φ.trans E.symm
  have hmDu : m = D ∘ₗ u.toLinearMap := by
    ext x
    simp [D, u, φ]
  have hDb : ∀ j, D (b' j) = a j • b' j := fun j => by
    simp only [D, E, LinearMap.coe_comp, Function.comp_apply, Submodule.coe_subtype,
      LinearEquiv.coe_coe, Basis.equiv_apply]
    exact ab_eq j
  have hD : LinearMap.toMatrix b' b' D = Matrix.diagonal a := by
    ext i j
    rw [LinearMap.toMatrix_apply, Matrix.diagonal_apply, hDb, map_smul, Basis.repr_self]
    by_cases hij : i = j
    · subst hij
      simp
    · simp [hij]
  have hdet : Algebra.norm R b = (∏ i, a i) * LinearMap.det (u : B →ₗ[R] B) := by
    rw [Algebra.norm_apply, show Algebra.lmul R B b = m from rfl, hmDu, LinearMap.det_comp,
      ← LinearMap.det_toMatrix b' D, hD, Matrix.det_diagonal]
  rw [hdet, Ring.ord_mul_of_isUnit_right (LinearEquiv.isUnit_det' u), ord_prod _ _ fun i _ => ha i,
    hlen]

end NormLength

theorem NormLength.proof : NormLength.Statement := by
  intro R B _ _ _ _ _ _ _ b hb
  exact ord_norm_eq_length hb

end

end GroundTheory.Heights₂.Heights.Vertical
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormLength =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParAlgIndep =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParAlgIndep", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.IntToFracInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open MvPolynomial NumberField IsDedekindDomain

noncomputable section

attribute [local instance] MvPolynomial.algebraMvPolynomial

theorem eval_parYF_comp (K : Type*) [Field K] [NumberField K] (e n : ℕ) :
    (eval₂Hom (kToFrac K e n) (parYF K e n)).comp
        (algebraMap (MvPolynomial (Par e n) (𝓞 K)) (MvPolynomial (Par e n) K)) =
      algebraMap (MvPolynomial (Par e n) (𝓞 K)) (ParFrac K e n) := by
  refine MvPolynomial.ringHom_ext (fun x => ?_) (fun p => ?_)
  · simp only [RingHom.coe_comp, Function.comp_apply, MvPolynomial.algebraMap_def, map_C,
      eval₂Hom_C]
    rw [kToFrac, IsFractionRing.lift_algebraMap, RingHom.comp_apply]
  · simp [parYF]

theorem ParAlgIndep.proof : ParAlgIndep.Statement := by
  intro K _ _ e n
  let _ := (kToFrac K e n).toAlgebra
  rw [algebraicIndependent_iff_injective_aeval]
  change Function.Injective (eval₂Hom (kToFrac K e n) (parYF K e n))
  let M : Submonoid (MvPolynomial (Par e n) (𝓞 K)) := (nonZeroDivisors (𝓞 K)).map C
  rw [injective_iff_map_eq_zero]
  intro z hz
  obtain ⟨⟨a, s⟩, rfl⟩ := IsLocalization.mk'_surjective M z
  have h := IsLocalization.mk'_spec (MvPolynomial (Par e n) K) a s
  have hc := eval_parYF_comp K e n
  have ha : algebraMap (MvPolynomial (Par e n) (𝓞 K)) (ParFrac K e n) a = 0 := by
    rw [← hc, RingHom.comp_apply, ← h, map_mul, hz, zero_mul]
  have ha0 : a = 0 := IsFractionRing.injective _ _ (ha.trans (map_zero _).symm)
  subst ha0
  exact IsLocalization.mk'_zero _

end

end GroundTheory.Heights₂.Heights.Vertical
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParAlgIndep =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParDVRIsDVR =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParDVRIsDVR", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.IntToFracInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open MvPolynomial NumberField IsDedekindDomain IsLocalRing

noncomputable section

theorem ParDVRIsDVR.proof : ParDVRIsDVR.Statement := by
  intro K _ _ e n v
  let A := MvPolynomial (Par e n) (𝓞 K)
  let R := ParDVR e n v
  let Rv := Localization.AtPrime v.asIdeal
  have : IsDiscreteValuationRing Rv :=
    IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain (𝓞 K) v.ne_bot Rv
  have : IsNoetherianRing R :=
    IsLocalization.isNoetherianRing (parPrime e n v).primeCompl R inferInstance

  have hC : ∀ s : 𝓞 K, s ∉ v.asIdeal → (C s : A) ∉ parPrime e n v := by
    intro s hs h
    rw [parPrime, MvPolynomial.mem_map_C_iff] at h
    exact hs (by simpa using h 0)
  have hOR : algebraMap (𝓞 K) R = (algebraMap A R).comp C := by
    rw [IsScalarTower.algebraMap_eq (𝓞 K) A R, MvPolynomial.algebraMap_eq]
  let φ : Rv →+* R := IsLocalization.lift (M := v.asIdeal.primeCompl) (g := algebraMap (𝓞 K) R)
    fun s => by
      rw [hOR, RingHom.comp_apply]
      exact IsLocalization.map_units R (⟨C (s : 𝓞 K), hC s s.2⟩ : (parPrime e n v).primeCompl)
  have hφ : φ.comp (algebraMap (𝓞 K) Rv) = algebraMap (𝓞 K) R := IsLocalization.lift_comp _
  have hmax : maximalIdeal R = (maximalIdeal Rv).map φ := by
    rw [← IsLocalization.AtPrime.map_eq_maximalIdeal (parPrime e n v) R,
      ← IsLocalization.AtPrime.map_eq_maximalIdeal v.asIdeal Rv, Ideal.map_map, hφ, hOR, ← Ideal.map_map]
    rfl
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible Rv
  have hspan : maximalIdeal R = Ideal.span {φ ϖ} := by
    rw [hmax, (IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).mp hϖ, Ideal.map_span,
      Set.image_singleton]

  have hne : maximalIdeal R ≠ ⊥ := by
    obtain ⟨x, hx, hx0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot v.ne_bot
    intro hbot
    have hmem : algebraMap (𝓞 K) R x ∈ maximalIdeal R := by
      rw [← IsLocalization.AtPrime.map_eq_maximalIdeal (parPrime e n v) R, hOR, RingHom.comp_apply]
      exact Ideal.mem_map_of_mem _ (Ideal.mem_map_of_mem C hx)
    rw [hbot, Ideal.mem_bot, hOR, RingHom.comp_apply] at hmem
    have hinj : Function.Injective (algebraMap A R) :=
      IsLocalization.injective R (Ideal.primeCompl_le_nonZeroDivisors (parPrime e n v))
    exact hx0 (MvPolynomial.C_injective _ _ (hinj (by rw [hmem, map_zero, map_zero])))
  have hnf : ¬IsField R := fun h => hne (isField_iff_maximalIdeal_eq.mp h)
  exact ((IsDiscreteValuationRing.TFAE R hnf).out 5 1).mp
    (show (maximalIdeal R).IsPrincipal from ⟨⟨φ ϖ, hspan⟩⟩)

end

end GroundTheory.Heights₂.Heights.Vertical
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParDVRIsDVR =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParFracIsFractionRing =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParFracIsFractionRing", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.ComapMaximalIdealParDVR\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open MvPolynomial NumberField IsDedekindDomain

noncomputable section

theorem ParFracIsFractionRing.proof : ParFracIsFractionRing.Statement := by
  intro K _ _ e n v
  let := (parToFrac e n v).toAlgebra
  have : IsScalarTower (MvPolynomial (Par e n) (𝓞 K)) (ParDVR e n v) (ParFrac K e n) :=
    IsScalarTower.of_algebraMap_eq fun x => by
      change _ = parToFrac e n v (algebraMap _ _ x)
      unfold parToFrac
      rw [IsLocalization.lift_eq]
  exact IsFractionRing.isFractionRing_of_isDomain_of_isLocalization (parPrime e n v).primeCompl
    (ParDVR e n v) (ParFrac K e n)

end

end GroundTheory.Heights₂.Heights.Vertical
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParFracIsFractionRing =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PPrimitiveScale =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PPrimitiveScale", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.IntToFracInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open MvPolynomial NumberField IsDedekindDomain nonZeroDivisors

noncomputable section

theorem PrimitiveScale.proof : PrimitiveScale.Statement := by
  intro K _ _ v σ f hf
  classical
  set J : FractionalIdeal (𝓞 K)⁰ K := FractionalIdeal.spanFinset (𝓞 K) f.support (fun m => f.coeff m)
    with hJdef
  have hJ : J ≠ 0 := by
    rw [hJdef, FractionalIdeal.spanFinset_ne_zero]
    obtain ⟨m, hm⟩ := MvPolynomial.ne_zero_iff.mp hf
    exact ⟨m, MvPolynomial.mem_support_iff.mpr hm, hm⟩
  have hJJ : J * J⁻¹ = 1 := mul_inv_cancel₀ hJ
  have hcoeff : ∀ m, f.coeff m ∈ J := by
    intro m
    by_cases hm : f.coeff m = 0
    · rw [hm, ← FractionalIdeal.mem_coe]; exact Submodule.zero_mem _
    · rw [← FractionalIdeal.mem_coe, hJdef, FractionalIdeal.spanFinset_coe]
      exact Submodule.subset_span ⟨m, MvPolynomial.mem_support_iff.mpr hm, rfl⟩
  have hint : ∀ c ∈ J⁻¹, ∀ m, ∃ y : 𝓞 K, algebraMap (𝓞 K) K y = c * f.coeff m := by
    intro c hc m
    have h1 : f.coeff m * c ∈ J * J⁻¹ := FractionalIdeal.mul_mem_mul (hcoeff m) hc
    rw [hJJ, FractionalIdeal.mem_one_iff] at h1
    obtain ⟨y, hy⟩ := h1
    exact ⟨y, by rw [hy, mul_comm]⟩

  have hex : ∃ c ∈ J⁻¹, ∃ m, ∃ y : 𝓞 K, algebraMap (𝓞 K) K y = c * f.coeff m ∧ y ∉ v.asIdeal := by
    by_contra hne
    push Not at hne
    let S : Submodule (𝓞 K) K := Submodule.map (Algebra.linearMap (𝓞 K) K) v.asIdeal
    have hle : ((J * J⁻¹ : FractionalIdeal (𝓞 K)⁰ K) : Submodule (𝓞 K) K) ≤ S := by
      rw [FractionalIdeal.coe_mul, Submodule.mul_le]
      intro j hj c hc
      have hJS : (J : Submodule (𝓞 K) K) ≤ S.comap (LinearMap.mulRight (𝓞 K) c) := by
        rw [hJdef, FractionalIdeal.spanFinset_coe, Submodule.span_le]
        rintro _ ⟨m, -, rfl⟩
        obtain ⟨y, hy⟩ := hint c hc m
        refine Submodule.mem_map.mpr ⟨y, hne c hc m y hy, ?_⟩
        simp only [Algebra.linearMap_apply, LinearMap.mulRight_apply]
        rw [hy, mul_comm]
      exact hJS hj
    have h1 : (1 : K) ∈ S := by
      apply hle
      rw [hJJ, FractionalIdeal.mem_coe, FractionalIdeal.mem_one_iff]
      exact ⟨1, map_one _⟩
    obtain ⟨y, hy, hy1⟩ := Submodule.mem_map.mp h1
    have : y = 1 := by
      apply IsFractionRing.injective (𝓞 K) K
      simpa using hy1
    rw [this] at hy
    exact v.isPrime.ne_top ((Ideal.eq_top_iff_one _).mpr hy)
  obtain ⟨c, hc, m0, y0, hy0, hy0v⟩ := hex
  have hcoeffs : ((C c * f).coeffs : Set K) ⊆ Set.range (algebraMap (𝓞 K) K) := by
    intro a ha
    obtain ⟨m, -, rfl⟩ := MvPolynomial.mem_coeffs_iff.mp ha
    obtain ⟨y, hy⟩ := hint c hc m
    exact ⟨y, by rw [hy, MvPolynomial.coeff_C_mul]⟩
  obtain ⟨g, hg⟩ := MvPolynomial.mem_range_map_iff_coeffs_subset.mpr hcoeffs
  have hc0 : c ≠ 0 := by
    rintro rfl
    apply hy0v
    have : algebraMap (𝓞 K) K y0 = 0 := by rw [hy0, zero_mul]
    rw [(IsFractionRing.injective (𝓞 K) K).eq_iff.mp (this.trans (map_zero _).symm)]
    exact zero_mem _
  refine ⟨c, g, hc0, hg, m0, ?_⟩
  have hgm : algebraMap (𝓞 K) K (g.coeff m0) = algebraMap (𝓞 K) K y0 := by
    rw [hy0, ← MvPolynomial.coeff_map, hg, MvPolynomial.coeff_C_mul]
  rwa [(IsFractionRing.injective (𝓞 K) K) hgm]

end

end GroundTheory.Heights₂.Heights.Vertical
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PPrimitiveScale =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PSecBGeneric =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PSecBGeneric", "h": "module\n\nimport GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PSecBFinite\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.IntToFracInjective\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open MvPolynomial NumberField IsDedekindDomain

noncomputable section

namespace SecBGeneric

variable {K : Type*} [Field K] [NumberField K]

theorem parToFrac_comp_algebraMap (e n : ℕ) (v : HeightOneSpectrum (𝓞 K)) :
    (parToFrac e n v).comp (algebraMap (𝓞 K) (ParDVR e n v)) =
      (kToFrac K e n).comp (algebraMap (𝓞 K) K) := by
  ext x
  simp only [RingHom.comp_apply]
  rw [IsScalarTower.algebraMap_apply (𝓞 K) (MvPolynomial (Par e n) (𝓞 K)) (ParDVR e n v), parToFrac,
    IsLocalization.lift_eq, kToFrac, IsFractionRing.lift_algebraMap, RingHom.comp_apply,
    MvPolynomial.algebraMap_eq]

theorem parToFrac_parY (e n : ℕ) (v : HeightOneSpectrum (𝓞 K)) (p : Par e n) :
    parToFrac e n v (parY e n v p) = parYF K e n p := by
  rw [parY, parToFrac, IsLocalization.lift_eq, parYF]

theorem map_linForm {R S : Type*} [CommRing R] [CommRing S] {n : ℕ} (f : R →+* S) (u : Fin n → R) :
    MvPolynomial.map f (linForm u) = linForm (fun j => f (u j)) := by

  simp [linForm, map_sum]

theorem map_integralModel {n : ℕ} (I : Ideal (MvPolynomial (Fin n) K)) :
    (integralModel I).map (MvPolynomial.map (algebraMap (𝓞 K) K)) = I := by
  apply GroundTheory.Heights₂.Heights.Vertical.SecBFinite.map_integralModel

theorem map_secIdeal {n : ℕ} (e : ℕ) (I : Ideal (MvPolynomial (Fin n) K)) (v : HeightOneSpectrum (𝓞 K)) :
    (secIdeal (modelR e I v) (parY e n v)).map (MvPolynomial.map (parToFrac e n v)) =
      secIdeal (idealF e I) (parYF K e n) := by
  have h1 : (modelR e I v).map (MvPolynomial.map (parToFrac e n v)) = idealF e I := by
    have hc : (MvPolynomial.map (parToFrac e n v)).comp
        (MvPolynomial.map (algebraMap (𝓞 K) (ParDVR e n v)) : MvPolynomial (Fin n) (𝓞 K) →+* _) =
        (MvPolynomial.map (kToFrac K e n)).comp (MvPolynomial.map (algebraMap (𝓞 K) K)) := by
      refine RingHom.ext fun p => ?_
      simp only [RingHom.comp_apply, MvPolynomial.map_map, parToFrac_comp_algebraMap]
    rw [modelR, Ideal.map_map, hc, ← Ideal.map_map, map_integralModel, idealF]
  have h2 : (Ideal.span (Set.range (secForm (parY e n v)))).map (MvPolynomial.map (parToFrac e n v)) =
      Ideal.span (Set.range (secForm (parYF K e n))) := by
    rw [Ideal.map_span, ← Set.range_comp]
    congr 2
    funext i
    simp [secForm, map_linForm, parToFrac_parY]
  have h3 : (Ideal.span {chartForm (parY e n v) - 1}).map (MvPolynomial.map (parToFrac e n v)) =
      Ideal.span {chartForm (parYF K e n) - 1} := by
    rw [Ideal.map_span, Set.image_singleton, map_sub, map_one, chartForm, chartForm, map_linForm]
    simp only [parToFrac_parY]
  rw [secIdeal, secIdeal, Ideal.map_sup, Ideal.map_sup, h1, h2, h3]

end SecBGeneric


open SecBGeneric in
theorem SecBGeneric.proof : SecBGeneric.Statement := by
  intro K _ _ n e I v _
  have hJ := map_secIdeal e I v
  let M : Submonoid (MvPolynomial (Fin n) (ParDVR e n v)) :=
    (nonZeroDivisors (ParDVR e n v)).map (MvPolynomial.C : ParDVR e n v →+* MvPolynomial (Fin n) (ParDVR e n v))
  let φ : SecB e I v →+* SecAlg (idealF e I) (parYF K e n) :=
    Ideal.quotientMap _ (MvPolynomial.map (parToFrac e n v)) (hJ ▸ Ideal.le_comap_map)
  refine ⟨φ, fun j => ?_, fun r => ?_, ?_⟩
  · simp [φ, secCoord, Ideal.quotientMap_mk]
  · have hr : algebraMap (ParDVR e n v) (SecB e I v) r =
        Ideal.Quotient.mk (secIdeal (modelR e I v) (parY e n v)) (C r) := rfl
    rw [hr]
    simp only [φ, Ideal.quotientMap_mk, map_C]
    rfl
  let := φ.toAlgebra
  let : Algebra (ParDVR e n v) (ParFrac K e n) := (parToFrac e n v).toAlgebra
  have : IsScalarTower (MvPolynomial (Par e n) (𝓞 K)) (ParDVR e n v) (ParFrac K e n) :=
    IsScalarTower.of_algebraMap_eq' (IsLocalization.lift_comp _).symm
  have : IsFractionRing (ParDVR e n v) (ParFrac K e n) :=
    IsFractionRing.isFractionRing_of_isDomain_of_isLocalization (parPrime e n v).primeCompl _ _
  let : Algebra (MvPolynomial (Fin n) (ParDVR e n v)) (MvPolynomial (Fin n) (ParFrac K e n)) :=
    MvPolynomial.algebraMvPolynomial
  have := MvPolynomial.isLocalization (σ := Fin n) (nonZeroDivisors (ParDVR e n v)) (ParFrac K e n)
  have key := IsLocalization.of_surjective M
    (MvPolynomial (Fin n) (ParFrac K e n)) (S' := SecAlg (idealF e I) (parYF K e n))
    (Ideal.Quotient.mk (secIdeal (modelR e I v) (parY e n v))) Ideal.Quotient.mk_surjective
    (Ideal.Quotient.mk (secIdeal (idealF e I) (parYF K e n))) Ideal.Quotient.mk_surjective
    (Ideal.quotientMap_comp_mk _).symm
    (by rw [Ideal.mk_ker, Ideal.mk_ker, ← hJ]; rfl)
  have hM : Algebra.algebraMapSubmonoid (SecB e I v) (nonZeroDivisors (ParDVR e n v)) =
      M.map (Ideal.Quotient.mk (secIdeal (modelR e I v) (parY e n v))) := by
    ext x
    simp only [M, Algebra.algebraMapSubmonoid, Submonoid.mem_map, exists_exists_and_eq_and]
    exact Iff.rfl
  rw [hM]
  exact key

end

end GroundTheory.Heights₂.Heights.Vertical
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PSecBGeneric =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PVertTermEq =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PVertTermEq", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.IntToFracInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open MvPolynomial NumberField IsDedekindDomain

noncomputable section

theorem vertComps_finite {K : Type*} [Field K] [NumberField K] {n : ℕ}
    (I : Ideal (MvPolynomial (Fin n) K)) (u : Fin n → 𝓞 K) (v : HeightOneSpectrum (𝓞 K)) :
    (vertComps I u v).Finite :=
  (Ideal.finite_minimalPrimes_of_isNoetherianRing _ _).subset fun _ hW => hW.1.1

theorem VertTermEq.proof : VertTermEq.Statement := by
  intro K _ _ n e I u v
  have hfin := vertComps_finite I u v
  unfold vertTermAt vertDeg
  rw [finsum_mem_eq_finite_toFinset_sum _ hfin, finsum_mem_eq_finite_toFinset_sum _ hfin,
    Nat.cast_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun W _ => ?_
  push_cast
  ring

end

end GroundTheory.Heights₂.Heights.Vertical
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PVertTermEq =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.AssemblyPartial =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.AssemblyPartial", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.ComapMaximalIdealParDVR\nimport GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PChartTorsion\nimport GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PChowFormHomog\nimport GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PIncidenceNull\nimport GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PLengthDecomp\nimport GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormFormEval\nimport GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormFormLocalization\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PNormLength\nimport GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParAlgIndep\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParDVRIsDVR\nimport GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PParFracIsFractionRing\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PPrimitiveScale\nimport GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PSecBFinite\npublic import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PSecBGeneric\nimport GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.PVertTermEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open MvPolynomial NumberField IsDedekindDomain

alias NormLength.full := _root_.GroundTheory.Heights₂.Heights.Vertical.NormLength.proof
theorem VertTermEq.full : VertTermEq.Statement := VertTermEq.proof
theorem ParAlgIndep.full : ParAlgIndep.Statement := ParAlgIndep.proof
theorem NormFormEval.full : NormFormEval.Statement := NormFormEval.proof
theorem ChartTorsion.full : ChartTorsion.Statement := ChartTorsion.proof
theorem ChowFormHomog.full : ChowFormHomog.Statement := ChowFormHomog.proof
theorem IncidenceNull.full : IncidenceNull.Statement := IncidenceNull.proof
theorem LengthDecomp.full : LengthDecomp.Statement := LengthDecomp.proof
theorem NormFormLocalization.full : NormFormLocalization.Statement := NormFormLocalization.proof
alias ParDVRIsDVR.full := _root_.GroundTheory.Heights₂.Heights.Vertical.ParDVRIsDVR.proof
theorem ParFracIsFractionRing.full : ParFracIsFractionRing.Statement := ParFracIsFractionRing.proof
alias PrimitiveScale.full := _root_.GroundTheory.Heights₂.Heights.Vertical.PrimitiveScale.proof
alias SecBGeneric.full := _root_.GroundTheory.Heights₂.Heights.Vertical.SecBGeneric.proof
theorem SecBFinite.full : SecBFinite.Statement :=
  SecBFinite.proof IncidenceNull.full ChartTorsion.full PrimitiveScale.full

end GroundTheory.Heights₂.Heights.Vertical
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.AssemblyPartial =====
