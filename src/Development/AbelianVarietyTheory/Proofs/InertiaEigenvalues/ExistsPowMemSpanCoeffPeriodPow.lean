module

public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGaloisPrescribedUnramifiedKummer
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DvdSubOfDvdSubX
public import Mathlib.RingTheory.PowerSeries.WeierstrassPreparation
public import Mathlib.RingTheory.Polynomial.Eisenstein.Distinguished
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsStratHom
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TopologicalBasisBasicFacts
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemBallOfGaugeLt
import Mathlib.Algebra.AffineMonoid.UniqueSums
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.RingTheory.WittVector.DiscreteValuationRing
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.RingTheory.AdicCompletion.Noetherian
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.PowerSeries.Ideal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeffEqZeroOfRootsContainLthRootsConjugates, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeffZeroNeZeroOfWittFrobeniusExpandDvd, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAlgEquivExtendingWittTiltFrobenius, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpandMapDvdOfBreuilKisinFrobeniusDvd, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IrreducibleMapUnramifiedWittToFractionFieldOfEis, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormEqOfIsRootMinpolyUnramifiedRootsOfUnityField, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormLtOneOfIsRootDistinguishedWittPolynomial, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeierstrassPreparationWittOfTiltFiniteField, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsUnitOfFrobeniusDvdEisensteinPowMul, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowMemSpanCoeffPeriodPow

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeffEqZeroOfRootsContainLthRootsConjugates =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeffEqZeroOfRootsContainLthRootsConjugates", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGaloisPrescribedUnramifiedKummer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemBallOfGaugeLt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BKReal GlobalTheory.Per GlobalTheory.BSP
open scoped Formalism.Per NNReal
open Matrix

namespace GlobalTheory.ExpandCoeff

open Polynomial

theorem coeff_eq_zero_of_roots : ∀ (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (E : Polynomial (Wq l a)), E.Monic →
    Irreducible (E.map (GlobalTheory.TameFrob.iota l a)) → ∀ z : Om l, z ≠ 0 →
    (∀ z' : Om l, Polynomial.aeval z' (minpoly (↥(Kunr l a)) z) = 0 → ∀ y : Om l, y ^ l = z' →
      (E.map (GlobalTheory.TameFrob.iotaO l a)).IsRoot y) →
    ∀ i, ¬ l ∣ i → E.coeff i = 0 := by
  intro l hl a _ E hE hirr z hz hroot i hi
  have hl0 : 0 < l := hl.out.pos
  set K := ↥(Kunr l a)
  have hzi : IsIntegral K z := Algebra.IsIntegral.isIntegral z
  set m := minpoly K z with hm
  set φ := algebraMap K (Om l)
  set EK := E.map (GlobalTheory.TameFrob.iota l a) with hEKdef
  set Q := E.map (GlobalTheory.TameFrob.iotaO l a) with hQdef
  have hcomp : φ.comp (GlobalTheory.TameFrob.iota l a) = GlobalTheory.TameFrob.iotaO l a := RingHom.ext fun w => rfl
  have hmapQ : EK.map φ = Q := by rw [hEKdef, Polynomial.map_map, hcomp]
  have hev : ∀ y : Om l, Polynomial.aeval y EK = Q.eval y := fun y => by
    rw [Polynomial.aeval_def, ← Polynomial.eval_map, hmapQ]
  obtain ⟨y0, hy0⟩ := IsAlgClosed.exists_pow_nat_eq z hl0
  have hQ0 : Q.IsRoot y0 := hroot z (minpoly.aeval K z) y0 hy0
  have hEK : EK.Monic := hE.map _
  have hEKmin : EK = minpoly K y0 := minpoly.eq_of_irreducible_of_monic hirr (by rw [hev]; exact hQ0) hEK
  set P := Polynomial.expand K l m with hPdef
  have hPmon : P.Monic := (minpoly.monic hzi).expand hl0
  have hPy0 : Polynomial.aeval y0 P = 0 := by
    rw [hPdef, Polynomial.expand_aeval, hy0, minpoly.aeval]
  have hdvd : EK ∣ P := hEKmin ▸ minpoly.dvd K y0 hPy0

  have hmsep : m.Separable := Algebra.IsSeparable.isSeparable K z
  have hc0 : m.coeff 0 ≠ 0 := minpoly.coeff_zero_ne_zero hzi hz
  have hPsep : P.Separable := by
    unfold Polynomial.Separable
    rw [Polynomial.derivative_expand]
    have h1 : IsCoprime P (Polynomial.expand K l (Polynomial.derivative m)) :=
      IsCoprime.map hmsep (Polynomial.expand K l).toRingHom
    have h2 : IsCoprime P (Polynomial.X ^ (l - 1)) := by
      refine IsCoprime.pow_right ?_
      refine IsCoprime.symm ((Polynomial.irreducible_X.coprime_iff_not_dvd).2 ?_)
      rw [Polynomial.X_dvd_iff, hPdef, Polynomial.coeff_expand hl0, if_pos (dvd_zero l), Nat.zero_div]
      exact hc0
    have h3 : IsCoprime P ((l : K[X])) := by
      have hu : IsUnit ((l : K[X])) := by
        rw [← Polynomial.C_eq_natCast]
        exact Polynomial.isUnit_C.2 (IsUnit.mk0 _ (Nat.cast_ne_zero.2 hl.out.ne_zero))
      exact ⟨0, ↑(hu.unit⁻¹), by rw [zero_mul, zero_add, IsUnit.val_inv_mul]⟩
    exact h1.mul_right (h3.mul_right h2)
  set P' := P.map φ with hP'def
  have hP'sep : P'.Separable := hPsep.map
  have hP'0 : P' ≠ 0 := (hPmon.map φ).ne_zero
  have hQne : Q ≠ 0 := (hE.map _).ne_zero
  have hnod : P'.roots.Nodup := Polynomial.nodup_roots hP'sep
  have hcard : Multiset.card P'.roots = P'.natDegree :=
    (Polynomial.splits_iff_card_roots).1 (IsAlgClosed.splits P')
  have hle : P'.roots ≤ Q.roots := by
    refine (Multiset.le_iff_subset hnod).2 fun y hy => ?_
    rw [Polynomial.mem_roots hP'0, Polynomial.IsRoot, hP'def, Polynomial.eval_map, ← Polynomial.aeval_def,
      hPdef, Polynomial.expand_aeval] at hy
    exact (Polynomial.mem_roots hQne).2 (hroot _ hy y rfl)
  have hdeg : P.natDegree ≤ EK.natDegree := by
    have e1 : P'.natDegree = P.natDegree := Polynomial.natDegree_map φ
    have e2 : EK.natDegree = Q.natDegree := by
      rw [hEKdef, hQdef, Polynomial.natDegree_map_eq_of_injective (GlobalTheory.TameFrob.iota_injective l a),
        Polynomial.natDegree_map_eq_of_injective (GlobalTheory.TameFrob.iotaO_injective l a)]
    rw [← e1, e2, ← hcard]
    exact (Multiset.card_le_card hle).trans (Polynomial.card_roots' Q)
  have hEq : P = EK := Polynomial.eq_of_monic_of_dvd_of_natDegree_le hEK hPmon hdvd hdeg
  have hci : GlobalTheory.TameFrob.iota l a (E.coeff i) = 0 := by
    rw [← Polynomial.coeff_map, ← hEKdef, ← hEq, hPdef, Polynomial.coeff_expand hl0, if_neg hi]
  exact GlobalTheory.TameFrob.iota_injective l a (hci.trans (map_zero _).symm)

end GlobalTheory.ExpandCoeff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeffEqZeroOfRootsContainLthRootsConjugates =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeffZeroNeZeroOfWittFrobeniusExpandDvd =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeffZeroNeZeroOfWittFrobeniusExpandDvd", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\nimport Mathlib.Algebra.AffineMonoid.UniqueSums\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemBallOfGaugeLt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BKReal GlobalTheory.Per GlobalTheory.BSP
open scoped Formalism.Per NNReal
open Matrix

namespace GlobalTheory

theorem coeff_zero_ne_zero_of_expand_map_dvd {R : Type*} [CommRing R] [IsDomain R] (l : ℕ) (hl : 2 ≤ l)
    (σ : R →+* R) (P E : Polynomial R) (M : ℕ) (hP : P ≠ 0) (hE : E.coeff 0 ≠ 0)
    (h : Polynomial.expand R l (P.map σ) ∣ E ^ M * P) : P.coeff 0 ≠ 0 := by
  obtain ⟨P0, hP0, hnd⟩ := Polynomial.exists_eq_pow_rootMultiplicity_mul_and_not_dvd P hP 0
  generalize Polynomial.rootMultiplicity 0 P = k at hP0
  simp only [map_zero, sub_zero] at hP0 hnd
  intro h0
  have hk : k ≠ 0 := by
    rintro rfl
    apply hnd
    rw [Polynomial.X_dvd_iff]
    simpa [hP0] using h0
  have h1 : (Polynomial.X : Polynomial R) ^ k * Polynomial.X ∣ Polynomial.expand R l (P.map σ) := by
    rw [hP0, Polynomial.map_mul, map_mul, Polynomial.map_pow, Polynomial.map_X, map_pow,
      Polynomial.expand_X, ← pow_mul, ← pow_succ]
    refine Dvd.dvd.mul_right (pow_dvd_pow _ ?_) _
    have : 1 ≤ k := Nat.one_le_iff_ne_zero.mpr hk
    nlinarith
  have h2 := h1.trans h
  have h3 : E ^ M * P = Polynomial.X ^ k * (E ^ M * P0) := by rw [hP0]; ring
  rw [h3, mul_dvd_mul_iff_left (pow_ne_zero _ Polynomial.X_ne_zero)] at h2
  rcases Polynomial.prime_X.dvd_or_dvd h2 with h4 | h4
  · exact hE (Polynomial.X_dvd_iff.mp (Polynomial.prime_X.dvd_of_dvd_pow h4))
  · exact hnd h4

theorem coeff_zero_ne_zero_of_frobenius_dvd_pow_mul :
    ∀ (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (P E : Polynomial (Wq l a)) (M : ℕ), P.Monic → E.coeff 0 ≠ 0 →
    Polynomial.expand (Wq l a) l (P.map (sigma l a : Wq l a →+* Wq l a)) ∣ E ^ M * P → P.coeff 0 ≠ 0 := by
  intro l hl a _ P E M hP hE h
  exact coeff_zero_ne_zero_of_expand_map_dvd l hl.out.two_le _ P E M hP.ne_zero hE h

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeffZeroNeZeroOfWittFrobeniusExpandDvd =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAlgEquivExtendingWittTiltFrobenius =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAlgEquivExtendingWittTiltFrobenius", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGaloisPrescribedUnramifiedKummer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemBallOfGaugeLt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BKReal GlobalTheory.Per GlobalTheory.BSP
open scoped Formalism.Per NNReal
open Matrix

namespace GlobalTheory.TameFrob

theorem exists_algEquiv_iotaO_sigma : ∀ (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a], ∃ Φ : Om l ≃ₐ[ℚ_[l]] Om l,
    ∀ w : Wq l a, Φ (GlobalTheory.TameFrob.iotaO l a w) = GlobalTheory.TameFrob.iotaO l a (sigma l a w) := by
  intro l _ a _
  letI : Algebra (Wq l a) ↥(Kunr l a) := algK l a
  letI : IsFractionRing (Wq l a) ↥(Kunr l a) := by
    refine (isLocalization_iff (nonZeroDivisors (Wq l a)) ↥(Kunr l a)).2 ⟨?_, ?_, ?_⟩
    · intro s
      refine IsUnit.mk0 _ fun h => nonZeroDivisors.coe_ne_zero s (iota_injective l a ?_)
      rw [← algebraMap_K, h, map_zero]
    · intro y
      obtain ⟨w, s, hs, h⟩ := exists_frac l a y
      exact ⟨⟨w, ⟨s, mem_nonZeroDivisors_of_ne_zero hs⟩⟩, Subtype.ext (by simpa [algebraMap_K] using h)⟩
    · intro x y h
      exact ⟨1, by rw [iota_injective l a h]⟩
  let fr : ↥(Kunr l a) →+* Om l :=
    IsFractionRing.lift (g := (iotaO l a).comp (sigma l a).toRingEquiv.toRingHom)
      ((iotaO_injective l a).comp (sigma l a).injective)
  have hfr (w : Wq l a) : fr (iota l a w) = iotaO l a (sigma l a w) :=
    IsFractionRing.lift_algebraMap _ w
  let f : ↥(Kunr l a) →ₐ[ℚ_[l]] Om l := {
    toRingHom := fr
    commutes' := by
      intro r
      have h : fr.comp (algebraMap ℚ_[l] ↥(Kunr l a)) = algebraMap ℚ_[l] (Om l) := by
        refine IsLocalization.ringHom_ext (nonZeroDivisors ℤ_[l]) (RingHom.ext fun u => ?_)
        have h1 : algebraMap ℚ_[l] ↥(Kunr l a) (algebraMap ℤ_[l] ℚ_[l] u) =
            iota l a (algebraMap ℤ_[l] (Wq l a) u) :=
          Subtype.ext (by rw [coe_iota, iotaO_algebraMap]; rfl)
        simp only [RingHom.comp_apply]
        rw [h1, hfr, AlgEquiv.commutes, iotaO_algebraMap]
        rfl
      exact RingHom.congr_fun h r }
  let φ : Om l →ₐ[ℚ_[l]] Om l := f.liftNormal (Om l)
  refine ⟨AlgEquiv.ofBijective φ φ.normal_bijective, fun w => ?_⟩
  have h := AlgHom.liftNormal_commutes f (Om l) (iota l a w)
  rw [AlgEquiv.ofBijective_apply]
  exact h.trans (hfr w)

end GlobalTheory.TameFrob
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAlgEquivExtendingWittTiltFrobenius =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpandMapDvdOfBreuilKisinFrobeniusDvd =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpandMapDvdOfBreuilKisinFrobeniusDvd", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DvdSubOfDvdSubX\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemBallOfGaugeLt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BKReal GlobalTheory.Per GlobalTheory.BSP
open scoped Formalism.Per NNReal
open Matrix

noncomputable section

namespace GlobalTheory

theorem expand_map_dvd_of_frobS_dvd : ∀ (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (P Q : Polynomial (Wq l a)), P.Monic →
    (∀ i < P.natDegree, (l : Wq l a) ∣ P.coeff i) → frobS l a (P : (Wq l a)⟦X⟧) ∣ (Q : (Wq l a)⟦X⟧) →
    Polynomial.expand (Wq l a) l (P.map (sigma l a : Wq l a →+* Wq l a)) ∣ Q := by
  intro l hl a _ P Q hP hdvd hQ
  have hl0 : 0 < l := hl.out.pos
  set σ : Wq l a →+* Wq l a := (sigma l a : Wq l a →+* Wq l a) with hσ
  have hσinj : Function.Injective σ := (sigma l a).injective
  have hcoe : frobS l a (P : (Wq l a)⟦X⟧) =
      ((Polynomial.expand (Wq l a) l (P.map σ) : Polynomial (Wq l a)) : (Wq l a)⟦X⟧) := by
    refine PowerSeries.ext fun n => ?_
    change PowerSeries.coeff n (PowerSeries.map σ (PowerSeries.expand l hl.out.ne_zero (P : (Wq l a)⟦X⟧))) = _
    rw [PowerSeries.coeff_map, PowerSeries.coeff_expand, Polynomial.coeff_coe, Polynomial.coeff_coe, Polynomial.coeff_expand hl0]
    split_ifs <;> simp [Polynomial.coeff_map]
  rw [hcoe] at hQ
  haveI : IsAdicComplete (Ideal.span {(l : Wq l a)}) (Wq l a) := WittVector.isAdicCompleteIdealSpanP
  have hmon : (Polynomial.expand (Wq l a) l (P.map σ)).Monic := (hP.map σ).expand hl0
  have hdeg : (Polynomial.expand (Wq l a) l (P.map σ)).natDegree = P.natDegree * l := by
    rw [Polynomial.natDegree_expand, Polynomial.natDegree_map_eq_of_injective hσinj]
  have H : (Polynomial.expand (Wq l a) l (P.map σ)).IsDistinguishedAt (Ideal.span {(l : Wq l a)}) :=
    { mem := fun {n} hn => by
        rw [Ideal.mem_span_singleton, Polynomial.coeff_expand hl0]
        rw [hdeg] at hn
        split_ifs with h
        · rw [Polynomial.coeff_map]
          have hlt : n / l < P.natDegree := by
            rw [Nat.div_lt_iff_lt_mul hl0]; exact hn
          obtain ⟨c, hc⟩ := hdvd _ hlt
          refine ⟨σ c, ?_⟩
          rw [hc, map_mul, map_natCast]
        · exact dvd_zero _
      monic := hmon }
  exact GlobalTheory.NB.LT.poly_dvd_of_dvd H hQ

end GlobalTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpandMapDvdOfBreuilKisinFrobeniusDvd =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IrreducibleMapUnramifiedWittToFractionFieldOfEis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IrreducibleMapUnramifiedWittToFractionFieldOfEis", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGaloisPrescribedUnramifiedKummer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.DiscreteValuationRing\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemBallOfGaugeLt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BKReal GlobalTheory.Per GlobalTheory.BSP
open scoped Formalism.Per NNReal
open Matrix

noncomputable section

namespace GlobalTheory.TameFrob

open Polynomial

attribute [local instance] algK isFractionRing

theorem irreducible_map_iota_of_eisenstein : ∀ (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (E : Polynomial (Wq l a)), E.Monic → 0 < E.natDegree →
    (∀ i < E.natDegree, (l : Wq l a) ∣ E.coeff i) → (∃ w : (Wq l a)ˣ, E.coeff 0 = (l : Wq l a) * w) →
    Irreducible (E.map (GlobalTheory.TameFrob.iota l a)) := by
  intro l _ a _ E hmon hdeg hdiv ⟨w, hw⟩
  have hP : (Ideal.span {(l : Wq l a)}).IsPrime := by
    rw [← WittVector.ker_constantCoeff]; exact RingHom.ker_isPrime _
  have hl0 : (l : Wq l a) ≠ 0 := fun h => by
    have := congrArg (iotaO l a) h
    rw [map_natCast, map_zero] at this
    exact (Fact.out : l.Prime).ne_zero (by exact_mod_cast this)
  have hW : Irreducible E := by
    refine Polynomial.IsEisensteinAt.irreducible ⟨?_, ?_, ?_⟩ hP hmon.isPrimitive hdeg
    · rw [hmon.leadingCoeff]
      exact fun h => hP.ne_top ((Ideal.eq_top_iff_one _).2 h)
    · intro n hn
      exact Ideal.mem_span_singleton.2 (hdiv n hn)
    · rw [hw, Ideal.span_singleton_pow, Ideal.mem_span_singleton]
      rintro ⟨c, hc⟩
      have h1 : (l : Wq l a) * ((w : Wq l a) - l * c) = 0 := by linear_combination hc
      have h2 : (w : Wq l a) = l * c := by
        have := (mul_eq_zero.1 h1).resolve_left hl0
        linear_combination this
      have h3 := congrArg WittVector.constantCoeff h2
      rw [map_mul, map_natCast, CharP.cast_eq_zero, zero_mul] at h3
      exact (w.isUnit.map WittVector.constantCoeff).ne_zero h3
  have h := (hmon.irreducible_iff_irreducible_map_fraction_map (K := ↥(Kunr l a))).1 hW
  exact h

end GlobalTheory.TameFrob
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IrreducibleMapUnramifiedWittToFractionFieldOfEis =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormEqOfIsRootMinpolyUnramifiedRootsOfUnityField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormEqOfIsRootMinpolyUnramifiedRootsOfUnityField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemBallOfGaugeLt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BKReal GlobalTheory.Per GlobalTheory.BSP
open scoped Formalism.Per NNReal
open Matrix

namespace GlobalTheory

theorem conj_norm_eq_of_minpoly_root :
    ∀ (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (z z' : Om l),
    Polynomial.aeval z' (minpoly (↥(Kunr l a)) z) = 0 → ‖z'‖ = ‖z‖ := by
  intro l _ a _ z z' h
  have hint : IsIntegral (↥(Kunr l a)) z := Algebra.IsIntegral.isIntegral z
  have hm : minpoly (↥(Kunr l a)) z' = minpoly (↥(Kunr l a)) z :=
    (minpoly.eq_of_irreducible_of_monic (minpoly.irreducible hint) h (minpoly.monic hint)).symm
  obtain ⟨τ, hτ⟩ := ((Normal.minpoly_eq_iff_mem_orbit (Om l)).1 hm)
  have hτ' : τ • z = z' := hτ
  rw [← hτ']
  exact (spectralNorm_eq_of_equiv (τ.restrictScalars ℚ_[l]) z).symm

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormEqOfIsRootMinpolyUnramifiedRootsOfUnityField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormLtOneOfIsRootDistinguishedWittPolynomial =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormLtOneOfIsRootDistinguishedWittPolynomial", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGaloisPrescribedUnramifiedKummer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemBallOfGaugeLt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BKReal GlobalTheory.Per GlobalTheory.BSP
open scoped Formalism.Per NNReal
open Matrix

noncomputable section

namespace GlobalTheory.RootLt

open Polynomial

theorem norm_iotaO_le_one (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (w : Wq l a) :
    ‖GlobalTheory.TameFrob.iotaO l a w‖ ≤ 1 := by
  have hw : w ∈ Submodule.span ℤ_[l] (Set.range (WittVector.teichmuller l : Fq l a → Wq l a)) := by
    rw [span_teich]; trivial
  induction hw using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨z, rfl⟩ := hx
    set ω := GlobalTheory.TameFrob.iotaO l a (WittVector.teichmuller l z)
    have hω : ω ^ l ^ a = ω := by
      simp only [ω]
      rw [← map_pow, ← map_pow, Fq.pow_card]
    by_contra h
    push_neg at h
    have h2 : 1 < l ^ a := Nat.one_lt_pow (NeZero.ne a) (Fact.out : l.Prime).one_lt
    have h3 : ‖ω‖ ^ 1 < ‖ω‖ ^ l ^ a := pow_lt_pow_right₀ h h2
    rw [pow_one, ← norm_pow, hω] at h3
    exact lt_irrefl _ h3
  | zero => simp
  | add x y _ _ hx hy =>
    rw [map_add (f := _)]
    exact (IsUltrametricDist.norm_add_le_max _ _).trans (max_le hx hy)
  | smul c x _ hx =>
    rw [Algebra.smul_def, map_mul, GlobalTheory.TameFrob.iotaO_algebraMap, norm_mul]
    have hc : ‖algebraMap ℚ_[l] (Om l) (c : ℚ_[l])‖ ≤ 1 :=
      (PadicAlgCl.norm_extends l (c : ℚ_[l])).le.trans c.2
    calc _ ≤ 1 * 1 := mul_le_mul hc hx (norm_nonneg _) zero_le_one
      _ = 1 := one_mul 1

theorem norm_lt_one_of_isRoot : ∀ (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (P : Polynomial (Wq l a)), P.Monic →
    (∀ i < P.natDegree, (l : Wq l a) ∣ P.coeff i) → ∀ x : Om l, (P.map (GlobalTheory.TameFrob.iotaO l a)).IsRoot x → ‖x‖ < 1 := by
  intro l _ a _ P hP hdiv x hx
  set d := P.natDegree with hd
  rcases Nat.eq_zero_or_pos d with h0 | hpos
  · have : P = 1 := Polynomial.eq_one_of_monic_natDegree_zero hP h0
    rw [this, Polynomial.map_one] at hx
    simp [Polynomial.IsRoot] at hx
  by_contra hge
  push_neg at hge
  have hlpos : (0 : ℝ) < l := by exact_mod_cast (Fact.out : l.Prime).pos
  have hl1 : (1 : ℝ) < l := by exact_mod_cast (Fact.out : l.Prime).one_lt

  have hnl : ‖GlobalTheory.TameFrob.iotaO l a (l : Wq l a)‖ = (l : ℝ)⁻¹ := by
    rw [map_natCast, ← map_natCast (algebraMap ℚ_[l] (Om l)), PadicAlgCl.norm_extends, Padic.norm_p]
  have hcoef : ∀ i < d, ‖GlobalTheory.TameFrob.iotaO l a (P.coeff i)‖ ≤ (l : ℝ)⁻¹ := by
    intro i hi
    obtain ⟨c, hc⟩ := hdiv i hi
    rw [hc, map_mul, norm_mul, hnl]
    calc _ ≤ (l : ℝ)⁻¹ * 1 := mul_le_mul_of_nonneg_left (norm_iotaO_le_one l a c) (by positivity)
      _ = _ := mul_one _
  have hxd : (1 : ℝ) ≤ ‖x‖ ^ d := one_le_pow₀ hge

  have heq : x ^ d + ∑ i ∈ Finset.range d, GlobalTheory.TameFrob.iotaO l a (P.coeff i) * x ^ i = 0 := by
    have h := hx
    rw [Polynomial.IsRoot, hP.as_sum] at h

    simpa [Polynomial.eval_finsetSum, Polynomial.map_add (f := _), Polynomial.map_pow, Polynomial.map_sum,
    Polynomial.map_mul] using h
  have hsum : ‖∑ i ∈ Finset.range d, GlobalTheory.TameFrob.iotaO l a (P.coeff i) * x ^ i‖ ≤ (l : ℝ)⁻¹ * ‖x‖ ^ d := by
    refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg (by positivity) fun i hi => ?_
    have hi' := Finset.mem_range.1 hi
    rw [norm_mul, norm_pow]
    exact mul_le_mul (hcoef i hi') (pow_le_pow_right₀ hge hi'.le) (by positivity) (by positivity)
  have hxeq : x ^ d = -∑ i ∈ Finset.range d, GlobalTheory.TameFrob.iotaO l a (P.coeff i) * x ^ i :=
    eq_neg_of_add_eq_zero_left heq
  have h1 : ‖x‖ ^ d ≤ (l : ℝ)⁻¹ * ‖x‖ ^ d := by
    calc ‖x‖ ^ d = ‖x ^ d‖ := (norm_pow _ _).symm
      _ = ‖∑ i ∈ Finset.range d, GlobalTheory.TameFrob.iotaO l a (P.coeff i) * x ^ i‖ := by rw [hxeq, norm_neg]
      _ ≤ _ := hsum
  have h2 : (l : ℝ)⁻¹ * ‖x‖ ^ d < ‖x‖ ^ d := by
    have : (l : ℝ)⁻¹ < 1 := inv_lt_one_of_one_lt₀ hl1
    nlinarith
  exact lt_irrefl _ (h1.trans_lt h2)

end GlobalTheory.RootLt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormLtOneOfIsRootDistinguishedWittPolynomial =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeierstrassPreparationWittOfTiltFiniteField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeierstrassPreparationWittOfTiltFiniteField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.PowerSeries.WeierstrassPreparation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.DiscreteValuationRing\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemBallOfGaugeLt\npublic import Mathlib.RingTheory.Polynomial.Eisenstein.Distinguished\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BKReal GlobalTheory.Per GlobalTheory.BSP
open scoped Formalism.Per NNReal
open Matrix

namespace GlobalTheory

theorem weierstrass_prep_not_dvd_l : ∀ (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (g : (Wq l a)⟦X⟧), ¬ (l : (Wq l a)⟦X⟧) ∣ g →
    ∃ (P : Polynomial (Wq l a)) (U : (Wq l a)⟦X⟧), IsUnit U ∧ P.Monic ∧
      (∀ i < P.natDegree, (l : Wq l a) ∣ P.coeff i) ∧ g = U * (P : (Wq l a)⟦X⟧) := by
  intro l _ a _ g hg
  haveI : IsAdicComplete (Ideal.span {(l : Wq l a)}) (Wq l a) := WittVector.isAdicCompleteIdealSpanP
  have hsurj : Function.Surjective (WittVector.constantCoeff (p := l) (R := Fq l a)) :=
    fun x => ⟨WittVector.teichmuller l x, by simp⟩
  have hm : IsLocalRing.maximalIdeal (Wq l a) = Ideal.span {(l : Wq l a)} := by
    rw [← WittVector.ker_constantCoeff]
    haveI := RingHom.ker_isMaximal_of_surjective _ hsurj
    exact (IsLocalRing.eq_maximalIdeal this).symm
  haveI : IsAdicComplete (IsLocalRing.maximalIdeal (Wq l a)) (Wq l a) := hm ▸ inferInstance
  have hg' : g.map (IsLocalRing.residue (Wq l a)) ≠ 0 := by
    intro h0
    apply hg
    apply dvd_of_map_eq_zero l a g
    ext n
    have h1 : IsLocalRing.residue (Wq l a) (coeff n g) = 0 := by
      simpa using congrArg (coeff n) h0
    rw [IsLocalRing.residue_eq_zero_iff, hm, ← WittVector.ker_constantCoeff, RingHom.mem_ker] at h1
    simpa using h1
  obtain ⟨f, h, H⟩ := g.exists_isWeierstrassFactorization hg'
  refine ⟨f, h, H.isUnit, H.isDistinguishedAt.monic, fun i hi => ?_, ?_⟩
  · have := H.isDistinguishedAt.mem hi
    rw [hm] at this
    exact Ideal.mem_span_singleton.1 this
  · rw [H.eq_mul, mul_comm]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeierstrassPreparationWittOfTiltFiniteField =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsUnitOfFrobeniusDvdEisensteinPowMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsUnitOfFrobeniusDvdEisensteinPowMul", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsStratHom\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGaloisPrescribedUnramifiedKummer\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeffEqZeroOfRootsContainLthRootsConjugates\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsAdicCompleteOfPowLe\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeffZeroNeZeroOfWittFrobeniusExpandDvd\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsAlgEquivExtendingWittTiltFrobenius\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExpandMapDvdOfBreuilKisinFrobeniusDvd\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IrreducibleMapUnramifiedWittToFractionFieldOfEis\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormEqOfIsRootMinpolyUnramifiedRootsOfUnityField\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NormLtOneOfIsRootDistinguishedWittPolynomial\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeierstrassPreparationWittOfTiltFiniteField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BKReal GlobalTheory.Per GlobalTheory.BSP
open scoped Formalism.Per NNReal
open Matrix

noncomputable section
namespace GlobalTheory.LemZ

theorem descend : ∀ (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (P Q : Polynomial (Wq l a)), P.Monic →
    (∀ i < P.natDegree, (l : Wq l a) ∣ P.coeff i) → frobS l a (P : (Wq l a)⟦X⟧) ∣ (Q : (Wq l a)⟦X⟧) →
    Polynomial.expand (Wq l a) l (P.map (sigma l a : Wq l a →+* Wq l a)) ∣ Q := _root_.GlobalTheory.expand_map_dvd_of_frobS_dvd

theorem irr : ∀ (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (E : Polynomial (Wq l a)), E.Monic → 0 < E.natDegree →
    (∀ i < E.natDegree, (l : Wq l a) ∣ E.coeff i) → (∃ w : (Wq l a)ˣ, E.coeff 0 = (l : Wq l a) * w) →
    Irreducible (E.map (GlobalTheory.TameFrob.iota l a)) := _root_.GlobalTheory.TameFrob.irreducible_map_iota_of_eisenstein

theorem conj : ∀ (l : ℕ) [Fact l.Prime] (a : ℕ) [NeZero a] (z z' : Om l),
    Polynomial.aeval z' (minpoly (↥(Kunr l a)) z) = 0 → ‖z'‖ = ‖z‖ := _root_.GlobalTheory.conj_norm_eq_of_minpoly_root

theorem isUnit_of_frob_dvd : ∀ (l : ℕ) [Fact l.Prime] (K : FinExt l) (bk : BK K), ∀ g : bk.S, ¬ (l : bk.S) ∣ g →
    ∀ M : ℕ, frobS l bk.a g ∣ bk.E ^ M * g → IsUnit g := by
  intro l _ K bk g hg M hdvd
  classical
  obtain ⟨P, U, hU, hPm, hPd, rfl⟩ := _root_.GlobalTheory.weierstrass_prep_not_dvd_l l bk.a g hg
  have h1 : frobS l bk.a (P : (Wq l bk.a)⟦X⟧) ∣ ((bk.Ep ^ M * P : Polynomial (Wq l bk.a)) : (Wq l bk.a)⟦X⟧) := by
    rw [map_mul] at hdvd
    have h3 : frobS l bk.a (P : (Wq l bk.a)⟦X⟧) ∣ bk.E ^ M * (P : (Wq l bk.a)⟦X⟧) * U := by
      have := (dvd_mul_left _ _).trans hdvd
      rw [show bk.E ^ M * (U * (P : (Wq l bk.a)⟦X⟧)) = bk.E ^ M * (P : (Wq l bk.a)⟦X⟧) * U by ring] at this
      exact this
    rw [Polynomial.coe_mul, Polynomial.coe_pow]
    exact hU.dvd_mul_right.1 h3
  have h2 := _root_.GlobalTheory.expand_map_dvd_of_frobS_dvd l bk.a P _ hPm hPd h1
  by_cases hd : P.natDegree = 0
  · rw [Polynomial.eq_one_of_monic_natDegree_zero hPm hd, Polynomial.coe_one, mul_one]
    exact hU
  exfalso
  have hl0 : (l : Wq l bk.a) ≠ 0 := fun h => by
    have := congrArg (GlobalTheory.TameFrob.iotaO l bk.a) h
    rw [map_natCast, map_zero] at this
    exact (Fact.out : l.Prime).ne_zero (by exact_mod_cast this)
  have hE0 : bk.Ep.coeff 0 ≠ 0 := by
    obtain ⟨w, hw⟩ := bk.coeff_zero
    rw [hw]
    exact mul_ne_zero hl0 w.ne_zero
  have hP0 := _root_.GlobalTheory.coeff_zero_ne_zero_of_frobenius_dvd_pow_mul l bk.a P bk.Ep M hPm hE0 h2
  set ι := GlobalTheory.TameFrob.iotaO l bk.a with hι
  have hιinj : Function.Injective ι := GlobalTheory.TameFrob.iotaO_injective l bk.a
  set Pι := P.map ι with hPι
  have hPι0 : Pι ≠ 0 := (hPm.map ι).ne_zero
  have hdeg : Pι.degree ≠ 0 := by
    rw [hPι, Polynomial.degree_map_eq_of_injective hιinj, Polynomial.degree_eq_natDegree hPm.ne_zero]
    exact_mod_cast hd
  obtain ⟨x0, hx0⟩ := IsAlgClosed.exists_root Pι hdeg
  have hne : Pι.roots.toFinset.Nonempty := ⟨x0, Multiset.mem_toFinset.2 ((Polynomial.mem_roots hPι0).2 hx0)⟩
  obtain ⟨x, hxs, hxmax⟩ := Finset.exists_max_image _ (fun y : Om l => ‖y‖) hne
  have hx : Pι.IsRoot x := (Polynomial.mem_roots hPι0).1 (Multiset.mem_toFinset.1 hxs)
  have hmax : ∀ y : Om l, Pι.IsRoot y → ‖y‖ ≤ ‖x‖ := fun y hy =>
    hxmax y (Multiset.mem_toFinset.2 ((Polynomial.mem_roots hPι0).2 hy))
  set r := ‖x‖ with hr
  have hr1 : r < 1 := _root_.GlobalTheory.RootLt.norm_lt_one_of_isRoot l bk.a P hPm hPd x hx
  have hxne : x ≠ 0 := by
    rintro rfl
    apply hP0
    apply hιinj
    simpa [hPι, Polynomial.IsRoot, Polynomial.eval_zero_map, ← Polynomial.coeff_zero_eq_eval_zero] using hx
  have hr0 : 0 < r := norm_pos_iff.2 hxne
  obtain ⟨Φ, hΦ⟩ := _root_.GlobalTheory.TameFrob.exists_algEquiv_iotaO_sigma l bk.a
  have hn : ∀ y, ‖Φ y‖ = ‖y‖ := fun y => (spectralNorm_eq_of_equiv Φ y).symm
  set z := Φ x with hzdef
  have hz : ‖z‖ = r := hn x
  have hz0 : z ≠ 0 := fun h => by rw [h, norm_zero] at hz; exact hr0.ne hz
  set Q := P.map (sigma l bk.a : Wq l bk.a →+* Wq l bk.a) with hQ
  have hQι : Q.map ι = Pι.map (Φ : Om l →+* Om l) := by
    rw [hQ, hPι, Polynomial.map_map, Polynomial.map_map]
    congr 1
    ext w
    exact (hΦ w).symm
  have hzQ : (Q.map ι).IsRoot z := by
    rw [hQι]
    exact hx.map (Φ : Om l →+* Om l)
  have hcomp : (algebraMap (↥(Kunr l bk.a)) (Om l)).comp (GlobalTheory.TameFrob.iota l bk.a) = ι := RingHom.ext fun w => rfl
  have haev : ∀ y : Om l, Polynomial.aeval y (Q.map (GlobalTheory.TameFrob.iota l bk.a)) = (Q.map ι).eval y := fun y => by
    rw [Polynomial.aeval_def, Polynomial.eval₂_map, hcomp, Polynomial.eval_map]
  have hmdvd : minpoly (↥(Kunr l bk.a)) z ∣ Q.map (GlobalTheory.TameFrob.iota l bk.a) := by
    apply minpoly.dvd
    rw [haev]
    exact hzQ
  have key : ∀ z' : Om l, Polynomial.aeval z' (minpoly (↥(Kunr l bk.a)) z) = 0 → ∀ y : Om l, y ^ l = z' →
      (bk.Ep.map ι).IsRoot y := by
    intro z' hz' y hy
    have hnz' : ‖z'‖ = r := (_root_.GlobalTheory.conj_norm_eq_of_minpoly_root l bk.a z z' hz').trans hz
    have hz'Q : (Q.map ι).IsRoot z' := by
      obtain ⟨c, hc⟩ := hmdvd
      rw [Polynomial.IsRoot, ← haev, hc, map_mul, hz', zero_mul]
    have hyE : ((bk.Ep ^ M * P).map ι).IsRoot y := by
      have h4 : ((Polynomial.expand (Wq l bk.a) l Q).map ι).IsRoot y := by
        rw [Polynomial.IsRoot, Polynomial.map_expand, Polynomial.expand_eval, hy]
        exact hz'Q
      obtain ⟨c, hc⟩ := h2
      rw [Polynomial.IsRoot, hc, Polynomial.map_mul, Polynomial.eval_mul, h4.eq_zero, zero_mul]
    have hyr : r < ‖y‖ := by
      by_contra hle
      push_neg at hle
      have h5 : ‖y‖ ^ l = r := by rw [← norm_pow, hy, hnz']
      have h6 : r ^ l < r := pow_lt_self_of_lt_one₀ hr0 hr1 (Fact.out : l.Prime).one_lt
      have h7 : ‖y‖ ^ l ≤ r ^ l := pow_le_pow_left₀ (norm_nonneg _) hle l
      linarith
    have hyP : ¬ Pι.IsRoot y := fun h => absurd (hmax y h) (not_le.2 hyr)
    rw [Polynomial.IsRoot, Polynomial.map_mul, Polynomial.map_pow, Polynomial.eval_mul, Polynomial.eval_pow] at hyE
    have h8 := (mul_eq_zero.1 hyE).resolve_right hyP
    rcases Nat.eq_zero_or_pos M with hM | hM
    · rw [hM, pow_zero] at h8; exact absurd h8 one_ne_zero
    · exact (pow_eq_zero_iff hM.ne').1 h8
  have hirr := _root_.GlobalTheory.TameFrob.irreducible_map_iota_of_eisenstein l bk.a bk.Ep bk.monic bk.deg_pos bk.dvd_coeff bk.coeff_zero
  have hc := _root_.GlobalTheory.ExpandCoeff.coeff_eq_zero_of_roots l bk.a bk.Ep bk.monic hirr z hz0 key
  obtain ⟨i, hi, hci⟩ := bk.not_expand
  exact hci (hc i hi)

end GlobalTheory.LemZ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsUnitOfFrobeniusDvdEisensteinPowMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowMemSpanCoeffPeriodPow =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowMemSpanCoeffPeriodPow", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsStratHom\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsUnitOfFrobeniusDvdEisensteinPowMul\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TopologicalBasisBasicFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.AdicCompletion.Noetherian\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PowerSeries.Ideal\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.DiscreteValuationRing\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct PowerSeries GlobalTheory.Prism GlobalTheory.BKReal GlobalTheory.Per GlobalTheory.BSP
open scoped Formalism.Per NNReal
open Matrix

namespace GlobalTheory.BSP.CoeffIdeal

theorem principal_of_saturated {S k : Type} [CommRing S] [IsNoetherianRing S] [CommRing k]
    [IsPrincipalIdealRing k] (π : S →+* k) (hπ : Function.Surjective π) (p : S)
    (hker : ∀ x, π x = 0 → p ∣ x) (hp : Ideal.span {p} ≤ Ideal.jacobson ⊥) (P : Ideal S)
    (hP : ∀ x, p * x ∈ P → x ∈ P) : ∃ g, P = Ideal.span {g} := by
  obtain ⟨g', hg'⟩ := (IsPrincipalIdealRing.principal (P.map π)).principal
  have h0 : g' ∈ P.map π := by rw [hg']; exact Submodule.mem_span_singleton_self _
  obtain ⟨g, hg, rfl⟩ := (Ideal.mem_map_iff_of_surjective π hπ).1 h0
  refine ⟨g, le_antisymm ?_ ((Ideal.span_singleton_le_iff_mem _).2 hg)⟩
  refine Submodule.le_of_le_smul_of_le_jacobson_bot (IsNoetherian.noetherian P) hp fun x hx => ?_
  have h1 : π x ∈ P.map π := Ideal.mem_map_of_mem π hx
  rw [hg'] at h1
  obtain ⟨c', hc'⟩ := Submodule.mem_span_singleton.1 h1
  obtain ⟨c, rfl⟩ := hπ c'
  obtain ⟨y, hy⟩ := hker (x - c * g) (by rw [map_sub, map_mul, ← hc', smul_eq_mul, sub_self])
  have hyP : y ∈ P := hP y (hy ▸ P.sub_mem hx (P.mul_mem_left c hg))
  have e : x = c * g + p • y := by rw [smul_eq_mul, ← hy]; ring
  rw [e]
  exact Submodule.add_mem_sup (Ideal.mul_mem_left _ c (Ideal.mem_span_singleton_self g))
    (Submodule.smul_mem_smul (Ideal.mem_span_singleton_self p) hyP)

theorem c_frob_mem {S A : Type} [CommRing S] [IsNoetherianRing S] [CommRing A] {s : S →+* A} {I : Ideal S}
    {ι : Type} (TB : TopBasis s I ι) (hI : I ≤ Ideal.jacobson ⊥) (φ : S →+* S) (Φ : A →+* A)
    (hφ : ∀ a, s (φ a) = Φ (s a)) (hφI : I.map φ ≤ I) (x : A) (N : Ideal S) (hN : ∀ i, φ (TB.c i x) ∈ N)
    (j : ι) : TB.c j (Φ x) ∈ N := by
  have hH : IsHausdorff I (S ⧸ N) := IsHausdorff.of_le_jacobson _ _ (by simpa only [Ideal.jacobson_bot] using hI)
  refine Ideal.Quotient.eq_zero_iff_mem.1 (hH.haus _ fun n => ?_)
  have hF : ∀ i, i ∉ (TB.fin x n).toFinset → TB.c i x ∈ I ^ n := fun i hi => by simpa using hi
  have h1 := Ideal.mem_map_of_mem Φ (TB.approx x n _ hF)
  have e : Φ.comp s = s.comp φ := RingHom.ext fun a => (hφ a).symm
  rw [Ideal.map_map, e, ← Ideal.map_map, Ideal.map_pow] at h1
  have h2 := TB.c_mem_of_mem_map _ _ (Ideal.map_mono (Ideal.pow_right_mono hφI n) h1) j

  rw [map_sub, map_sub, map_sum, map_sum] at h2
  have h3 : ∑ i ∈ (TB.fin x n).toFinset, TB.c j (Φ (s (TB.c i x) * TB.b i)) ∈ N :=
    N.sum_mem fun i _ => by
      rw [map_mul, ← hφ, TB.c_mul]
      exact N.mul_mem_right _ (hN i)
  have h4 : Ideal.Quotient.mk N (TB.c j (Φ x)) =
      (TB.c j (Φ x) - ∑ i ∈ (TB.fin x n).toFinset, TB.c j (Φ (s (TB.c i x) * TB.b i))) • (1 : S ⧸ N) := by
    rw [Algebra.smul_def, mul_one, Ideal.Quotient.algebraMap_eq, Ideal.Quotient.eq]
    simpa using h3
  rw [SModEq.zero, h4]
  exact Submodule.smul_mem_smul h2 Submodule.mem_top

variable (l : ℕ) [hl : Fact l.Prime] (a : ℕ) [NeZero a]

theorem prime_l : Prime (l : (Wq l a)⟦X⟧) := by
  have key : ∀ x : (Wq l a)⟦X⟧, (l : (Wq l a)⟦X⟧) ∣ x →
      PowerSeries.map (WittVector.constantCoeff (p := l) (R := Fq l a)) x = 0 := by
    rintro _ ⟨y, rfl⟩
    rw [map_mul, map_natCast, l_eq_zero, zero_mul]
  refine ⟨l_ne_zero l a, fun h => ?_, fun x y h => ?_⟩
  · have := key 1 h.dvd
    rw [map_one] at this
    exact one_ne_zero this
  · have := key _ h
    rw [map_mul] at this
    exact (mul_eq_zero.1 this).imp (dvd_of_map_eq_zero l a x) (dvd_of_map_eq_zero l a y)

theorem ne_zero_of_isPer {K : FinExt l} (bk : BK K) {τ : Ainf l} (h : bk.IsPer τ) : τ ≠ 0 := by
  rintro rfl
  obtain ⟨-, ε, η, ⟨-, hδ1⟩, h⟩ := h
  rw [map_zero, eq_comm, Units.mul_right_eq_zero, sub_eq_zero] at h
  have h1 : ε = 1 := by
    have := congrArg (fun w : Ainf l => w.coeff 0) h
    simpa using this
  exact hδ1 (by rw [h1, map_one, map_one])

end GlobalTheory.BSP.CoeffIdeal


open GlobalTheory.BSP.CoeffIdeal in
theorem GlobalTheory.BSP.pow_l_mem_span_coeff : ∀ (l : ℕ) [Fact l.Prime] (K : FinExt l) (bk : BK K) (τ : Ainf l), bk.IsPer τ → ∀ (ι : Type) (TB : TopBasis bk.ev bk.J ι) (M : ℕ), ∃ r : ℕ, (l : bk.S) ^ r ∈ Ideal.span (Set.range fun i => TB.c i (τ ^ M)) := by
  intro l _ K bk τ hτ ι TB M
  set I : Ideal bk.S := Ideal.span (Set.range fun i => TB.c i (τ ^ M)) with hI
  have hJ : bk.J ≤ Ideal.jacobson ⊥ := by
    have := bk.complete
    exact IsAdicComplete.le_jacobson_bot _
  have hpr := prime_l l bk.a
  let P : Ideal bk.S :=
    { carrier := {x | ∃ r : ℕ, (l : bk.S) ^ r * x ∈ I}
      zero_mem' := ⟨0, by simp⟩
      add_mem' := by
        rintro x y ⟨r, hr⟩ ⟨t, ht⟩
        refine ⟨r + t, ?_⟩
        have := I.add_mem (I.mul_mem_left ((l : bk.S) ^ t) hr) (I.mul_mem_left ((l : bk.S) ^ r) ht)
        convert this using 1
        ring
      smul_mem' := by
        rintro c x ⟨r, hr⟩
        refine ⟨r, ?_⟩
        rw [smul_eq_mul, mul_left_comm]
        exact I.mul_mem_left c hr }
  have hsat : ∀ x, (l : bk.S) * x ∈ P → x ∈ P := by
    rintro x ⟨r, hr⟩
    exact ⟨r + 1, by rwa [pow_succ, mul_assoc]⟩
  have hIP : I ≤ P := fun x hx => ⟨0, by simpa using hx⟩
  obtain ⟨g, hg⟩ := principal_of_saturated
    (PowerSeries.map (WittVector.constantCoeff (p := l) (R := Fq l bk.a)))
    (PowerSeries.map_surjective _ (WittVector.constantCoeff_surjective l)) (l : bk.S)
    (dvd_of_map_eq_zero l bk.a) (le_sup_left.trans hJ) P hsat
  have hgP : g ∈ P := by rw [hg]; exact Ideal.mem_span_singleton_self g
  have hdvd : ∀ i, g ∣ TB.c i (τ ^ M) := fun i => by
    rw [← Ideal.mem_span_singleton, ← hg]
    exact hIP (Ideal.subset_span ⟨i, rfl⟩)
  have hg0 : g ≠ 0 := by
    rintro rfl
    exact pow_ne_zero M (ne_zero_of_isPer l bk hτ) (TB.eq_zero_of_c _ fun i => zero_dvd_iff.1 (hdvd i))
  have hlg : ¬ (l : bk.S) ∣ g := by
    rintro ⟨y, hy⟩
    have h1 : y ∈ P := hsat y (hy ▸ hgP)
    rw [hg, Ideal.mem_span_singleton] at h1
    obtain ⟨z, hz⟩ := h1
    refine hpr.not_unit (IsUnit.of_mul_eq_one z (mul_left_cancel₀ hg0 ?_))
    rw [mul_one]
    conv_rhs => rw [hy, hz]
    ring
  have hφJ : bk.J.map (frobS l bk.a) ≤ bk.J := by
    rw [Ideal.map_sup, Ideal.map_span, Ideal.map_span, Set.image_singleton, Set.image_singleton, map_natCast]
    refine sup_le le_sup_left ((Ideal.span_singleton_le_iff_mem _).2 ?_)
    obtain ⟨b, hb⟩ := frobS_eq l bk.a bk.E
    rw [hb, add_comm]
    exact Submodule.add_mem_sup (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _))
      (Ideal.pow_mem_of_mem _ (Ideal.mem_span_singleton_self _) _ (Fact.out : l.Prime).pos)
  have hE : ∀ j, frobS l bk.a g ∣ bk.E ^ M * TB.c j (τ ^ M) := fun j => by
    have := c_frob_mem TB hJ (frobS l bk.a) WittVector.frobenius bk.ev_frob hφJ (τ ^ M)
      (Ideal.span {frobS l bk.a g}) (fun i => Ideal.mem_span_singleton.2 (map_dvd _ (hdvd i))) j
    rwa [map_pow, hτ.1, mul_pow, ← map_pow, TB.c_mul, Ideal.mem_span_singleton] at this
  have hEI : ∀ x ∈ I, frobS l bk.a g ∣ bk.E ^ M * x := fun x hx => by
    induction hx using Submodule.span_induction with
    | mem x hx => obtain ⟨i, rfl⟩ := hx; exact hE i
    | zero => simp
    | add x y _ _ hx hy => rw [mul_add]; exact dvd_add hx hy
    | smul c x _ hx => rw [smul_eq_mul, mul_left_comm]; exact hx.mul_left c
  obtain ⟨r, hr⟩ := hgP
  have hlφ : ¬ (l : bk.S) ∣ frobS l bk.a g := by
    obtain ⟨b, hb⟩ := frobS_eq l bk.a g
    rw [hb]
    intro h
    exact hlg (hpr.dvd_of_dvd_pow ((dvd_add_left (dvd_mul_right _ b)).1 h))
  have hfin : frobS l bk.a g ∣ bk.E ^ M * g := by
    obtain ⟨z, hz⟩ := hEI _ hr
    obtain ⟨w, hw⟩ : (l : bk.S) ^ r ∣ z :=
      hpr.pow_dvd_of_dvd_mul_left r hlφ ⟨bk.E ^ M * g, by rw [← hz]; ring⟩
    refine ⟨w, mul_left_cancel₀ (pow_ne_zero r hpr.ne_zero) ?_⟩
    rw [mul_left_comm, hz, hw]
    ring
  have hu := _root_.GlobalTheory.LemZ.isUnit_of_frob_dvd l K bk g hlg M hfin
  exact ⟨r, (I.mul_unit_mem_iff_mem hu).1 hr⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsPowMemSpanCoeffPeriodPow =====
