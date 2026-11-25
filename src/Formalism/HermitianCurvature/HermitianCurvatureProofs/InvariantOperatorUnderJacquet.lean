module

public import Formalism.HermitianCurvature.StatementQr
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LemmaDDeterminantIdentity
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmMove
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AnisotropicColumnSums
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliCoordinates
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameEntries
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftDerivativeCurves
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.QuantumMinorCommutation
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.QuantumMinorExpansion
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightTypeAction
public import Formalism.HermitianCurvature.StatementQ
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumDualVectorEqZeta
public import Mathlib.LinearAlgebra.Lagrange
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CmHalfIntegralGeneratorMemAlgebraicClosure
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentHeisenbergDecomposition
public import Mathlib.Analysis.SpecialFunctions.Log.Deriv
public import Formalism.HermitianCurvature.StatementJF
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAdjointnessFromHermitian
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellHermitian
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellOpenDomain
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliWordSumExpansion
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenAdelicUnipotentTimesIntegralOutsideSet
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LUFactorOrbitBounds
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ModelLevelMultiplier
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OperatorPreservesFusionForms
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.QxChain
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothWordsAll
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeylConjugationFixedColumn.ReflectionScalarDualIsotropic
import Mathlib.Analysis.InnerProductSpace.Calculus
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.InterlaceSignTwo
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SandwichRhoAction
import Formalism.HermitianCurvature.HermitianCurvatureProofs.WordKeyIdentity

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.AlgebraicQuantumDeterminant, Formalism.HermitianCurvature.HermitianCurvatureProofs.DeterminantGeneric, Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftTypeAction, Formalism.HermitianCurvature.HermitianCurvatureProofs.QxPIRttLevel, Formalism.HermitianCurvature.HermitianCurvatureProofs.RttUpperRelationsFromDescent, Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.AlgebraicQuantumDeterminant =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.AlgebraicQuantumDeterminant", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementQr\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LemmaDDeterminantIdentity\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QmMove\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset

noncomputable section

namespace Formalism.FourierDecayAlt.P.ScalarCastIdentities

open Formalism.REAL Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Qr

theorem core {A ι : Type*} [Ring A] [Fintype ι] (y η : ι → A) (C : A) (m1 m0 mm : ι → ι → A)
    (n0 nm : ι → ι → ι → ι → A)
    (hyη : ∀ a b, y a * η b = η b * y a)
    (J : ∀ i q l p, m1 i l * m0 q p - m1 q l * m0 i p = C * n0 i q l p)
    (DV : ∀ j, C * y j = y j * C - ∑ l, y l * m1 j l)
    (MC : ∀ q p i, m0 q p * η i - η i * m0 q p = ∑ a, n0 a q i p * η a)
    (BaseTypeSubspacesMapOntoBothSides : ∀ j, ∑ i, η i * mm i j = ∑ i, m0 i j * η i)
    (PairingFactorsThroughPeriods : ∀ j, ∑ i, η i * m0 i j = ∑ i, m1 i j * η i)
    (L3 : ∀ q c p, ∑ a, η a * nm a q c p = ∑ a, n0 a q c p * η a) (q p : ι) :
    C * (∑ a, ∑ c, η a * y c * nm a q c p) + (∑ j, y j * m1 q j) * (∑ i, η i * mm i p) =
      (∑ i, ∑ j, η i * y j * m0 i j) * m0 q p := by
  have h1 : ∑ a, ∑ c, η a * y c * nm a q c p = ∑ c, y c * ∑ a, n0 a q c p * η a := by
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [← L3, Finset.mul_sum]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [← hyη, mul_assoc]
  have h2 : ∑ i, ∑ j, η i * y j * m0 i j = ∑ j, y j * ∑ i, m1 i j * η i := by
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [← PairingFactorsThroughPeriods, Finset.mul_sum]
    refine Finset.sum_congr rfl fun a _ => ?_
    rw [← hyη, mul_assoc]
  rw [h1, h2, BaseTypeSubspacesMapOntoBothSides]
  have e1 : C * ∑ c, y c * ∑ a, n0 a q c p * η a =
      ∑ l, y l * (C * ∑ a, n0 a q l p * η a) - ∑ l, y l * ∑ c, m1 c l * ∑ a, n0 a q c p * η a := by
    rw [Finset.mul_sum]
    have : ∀ c, C * (y c * ∑ a, n0 a q c p * η a) =
        y c * (C * ∑ a, n0 a q c p * η a) - ∑ l, y l * (m1 c l * ∑ a, n0 a q c p * η a) := by
      intro c
      rw [← mul_assoc, DV, sub_mul, Finset.sum_mul, mul_assoc]
      congr 1
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [mul_assoc]
    rw [Finset.sum_congr rfl fun c _ => this c, Finset.sum_sub_distrib, Finset.sum_comm]
    congr 1
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [Finset.mul_sum]
  have e2 : (∑ j, y j * ∑ i, m1 i j * η i) * m0 q p =
      ∑ l, y l * (∑ i, m1 i l * (m0 q p * η i)) - ∑ l, y l * ∑ c, m1 c l * ∑ a, n0 a q c p * η a := by
    rw [Finset.sum_mul, ← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [mul_assoc, Finset.sum_mul, ← mul_sub, ← Finset.sum_sub_distrib]
    congr 1
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [mul_assoc, ← mul_sub, ← MC, sub_sub_cancel]
  rw [e1, e2, sub_add_eq_add_sub]
  congr 1
  rw [Finset.sum_mul, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [mul_assoc, ← mul_add]
  congr 1
  rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [← mul_assoc, ← mul_assoc, ← mul_assoc, ← add_mul, ← J, sub_add_cancel]

theorem asym_sum {B : Type*} [AddCommGroup B] {t : ℕ} (T : Fin t → Fin t → Fin t → Fin t → B) :
    ∑ i, ∑ i', (if i < i' then T i i' i i' - T i' i i i' else 0) =
      ∑ a, ∑ b, if a = b then 0 else eps a b • T a b (min a b) (max a b) := by
  have h : ∀ a b : Fin t, (if a = b then 0 else eps a b • T a b (min a b) (max a b)) =
      (if a < b then T a b a b else 0) - (if b < a then T a b b a else 0) := by
    intro a b
    rcases lt_trichotomy a b with h | h | h
    · have h' : a.val < b.val := h
      rw [if_neg h.ne, if_pos h, if_neg (not_lt.2 h.le), min_eq_left h.le, max_eq_right h.le, eps, if_pos h', one_smul,
        sub_zero]
    · subst h
      simp
    · have h' : ¬ a.val < b.val := not_lt.2 (le_of_lt h)
      rw [if_neg h.ne', if_neg (not_lt.2 h.le), if_pos h, min_eq_right h.le, max_eq_left h.le, eps, if_neg h', neg_smul,
        one_smul, zero_sub]
  simp_rw [h]
  simp_rw [Finset.sum_sub_distrib]
  rw [Finset.sum_comm (f := fun a b => if b < a then T a b b a else 0), ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun i' _ => ?_
  split_ifs <;> simp

def mS {A : Type*} [Ring A] [Algebra ℂ A] {t : ℕ} (E : Fin t → Fin t → A) (i j : Fin t) (w : ℂ) : A :=
  ((-1 : ℂ) ^ ((i : ℕ) + (j : ℕ))) • qminor E (skip1 i) (skip1 j) w

def nS {A : Type*} [Ring A] [Algebra ℂ A] {t : ℕ} (E : Fin t → Fin t → A) (a q c p : Fin t) (w : ℂ) : A :=
  if a = q ∨ c = p then 0 else
    (((eps a q : ℤ) : ℂ) * ((eps c p : ℤ) : ℂ) * (-1 : ℂ) ^ ((a : ℕ) + (q : ℕ) + (c : ℕ) + (p : ℕ))) •
      qminor E (skip2 (min a q) (max a q)) (skip2 (min c p) (max c p)) w

theorem cast_mul_eq_smul {A : Type*} [Ring A] [Algebra ℂ A] (z : ℤ) (a : A) : ((z : ℤ) : A) * a = ((z : ℤ) : ℂ) • a := by
  rw [← zsmul_eq_mul, Int.cast_smul_eq_zsmul]

theorem zsmul_eq_csmul {A : Type*} [Ring A] [Algebra ℂ A] (z : ℤ) (a : A) : z • a = ((z : ℤ) : ℂ) • a := by
  rw [Int.cast_smul_eq_zsmul]

theorem min_add_max {t : ℕ} (a b : Fin t) : ((min a b : Fin t) : ℕ) + ((max a b : Fin t) : ℕ) = (a : ℕ) + (b : ℕ) := by
  rw [Fin.coe_min, Fin.coe_max]; omega

section Conv

variable {A : Type*} [Ring A] [Algebra ℂ A] {t : ℕ} (E : Fin t → Fin t → A)

theorem chY_eq (w : ℂ) (y : Fin t → A) (ξ : Fin t → ℂ) :
    chY E w y ξ = ∑ q, ξ q • ∑ j, y j * mS E q j w := by
  unfold chY mS
  refine Finset.sum_congr rfl fun q _ => ?_
  rw [Finset.smul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [mul_smul_comm, smul_smul, mul_comm]

theorem chX_eq (w : ℂ) (x : Fin t → ℂ) (η : Fin t → A) :
    chX E w x η = ∑ p, x p • ∑ i, η i * mS E i p w := by
  unfold chX mS
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun q _ => ?_
  rw [Finset.smul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [mul_smul_comm, smul_smul, mul_comm]

theorem chYY_eq (w : ℂ) (y η : Fin t → A) :
    chYY E w y η = ∑ i, ∑ j, η i * y j * mS E i j w := by
  unfold chYY mS
  refine Finset.sum_congr rfl fun q _ => ?_
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [mul_smul_comm]

theorem chatA_eq (w : ℂ) (x ξ : Fin t → ℂ) :
    chatA E w x ξ = ∑ q, ∑ p, (ξ q * x p) • mS E q p w := by
  unfold chatA mS
  refine Finset.sum_congr rfl fun q _ => ?_
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [smul_smul]
  congr 1
  ring

theorem secondChern_eq_double_sum (w : ℂ) (y : Fin t → A) (x : Fin t → ℂ) (η : Fin t → A) (ξ : Fin t → ℂ) :
    ch2 E w y x η ξ = ∑ q, ∑ p, (ξ q * x p) • ∑ a, ∑ c, η a * y c * nS E a q c p w := by
  set U : Fin t → Fin t → Fin t → Fin t → Fin t → Fin t → Fin t → Fin t → A := fun a b c d i i' j j' =>
    ((-1 : ℂ) ^ ((i : ℕ) + (i' : ℕ) + (j : ℕ) + (j' : ℕ))) •
      ((ξ b • η a) * (x d • y c) * qminor E (skip2 i i') (skip2 j j') w) with hU
  have s1 : ch2 E w y x η ξ = ∑ i, ∑ i', (if i < i' then
      (∑ j, ∑ j', if j < j' then U i i' j j' i i' j j' - U i i' j' j i i' j j' else 0) -
      (∑ j, ∑ j', if j < j' then U i' i j j' i i' j j' - U i' i j' j i i' j j' else 0) else 0) := by
    unfold ch2
    refine Finset.sum_congr rfl fun i _ => ?_
    refine Finset.sum_congr rfl fun i' _ => ?_
    by_cases h : i < i'
    · rw [if_pos h, ← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun j' _ => ?_
      by_cases h' : j < j'
      · rw [if_pos ⟨h, h'⟩, if_pos h', if_pos h']
        simp only [hU, sub_mul, mul_sub, smul_sub]
        abel
      · rw [if_neg (fun hh => h' hh.2), if_neg h', if_neg h', sub_zero]
    · rw [if_neg h]
      refine Finset.sum_eq_zero fun j _ => Finset.sum_eq_zero fun j' _ => ?_
      rw [if_neg (fun hh => h hh.1)]
  rw [s1, asym_sum (fun a b i i' => ∑ j, ∑ j', if j < j' then U a b j j' i i' j j' - U a b j' j i i' j j' else 0)]
  have s2 : ∀ a b i i', (∑ j, ∑ j', if j < j' then U a b j j' i i' j j' - U a b j' j i i' j j' else 0) =
      ∑ c, ∑ d, if c = d then 0 else eps c d • U a b c d i i' (min c d) (max c d) := fun a b i i' =>
    asym_sum (fun c d j j' => U a b c d i i' j j')
  simp_rw [s2]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun b _ => ?_
  have s3 : ∀ a : Fin t, (if a = b then (0 : A) else eps a b • ∑ c, ∑ d, if c = d then 0 else
      eps c d • U a b c d (min a b) (max a b) (min c d) (max c d)) =
      ∑ d, ∑ c, (ξ b * x d) • (η a * y c * nS E a b c d w) := by
    intro a
    rw [Finset.sum_comm]
    by_cases hab : a = b
    · rw [if_pos hab]
      symm
      refine Finset.sum_eq_zero fun j _ => Finset.sum_eq_zero fun j' _ => ?_
      rw [nS, if_pos (Or.inl hab), mul_zero, smul_zero]
    · rw [if_neg hab, Finset.smul_sum]
      refine Finset.sum_congr rfl fun d _ => ?_
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun c _ => ?_
      by_cases hcd : c = d
      · rw [if_pos hcd, nS, if_pos (Or.inr hcd), mul_zero, smul_zero, smul_zero]
      · rw [if_neg hcd, nS, if_neg (by tauto)]
        simp only [hU]
        rw [show ((min a b : Fin t) : ℕ) + ((max a b : Fin t) : ℕ) + ((min c d : Fin t) : ℕ) + ((max c d : Fin t) : ℕ) =
          (a : ℕ) + (b : ℕ) + (c : ℕ) + (d : ℕ) by
            have h1 := min_add_max a b
            have h2 := min_add_max c d
            omega]
        simp only [zsmul_eq_csmul, smul_mul_assoc, mul_smul_comm, smul_smul]
        congr 1
        ring
  rw [Finset.sum_congr rfl fun a _ => s3 a, Finset.sum_comm]
  refine Finset.sum_congr rfl fun d _ => ?_
  rw [Finset.smul_sum]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Finset.smul_sum]

end Conv

section Red

variable {A : Type*} [Ring A] [Algebra ℂ A] {t : ℕ} (E : Fin t → Fin t → A)

def Core (y η : Fin t → A) (u : ℂ) (p q : Fin t) : Prop :=
  qdet E (u + 1) * (∑ a, ∑ c, η a * y c * nS E a q c p (u - 1)) +
      (∑ j, y j * mS E q j (u + 1)) * (∑ i, η i * mS E i p (u - 1)) =
    (∑ i, ∑ j, η i * y j * mS E i j u) * mS E q p u

theorem single_sum (q : Fin t) (F : Fin t → A) : ∑ q', (Pi.single q (1 : ℂ) : Fin t → ℂ) q' • F q' = F q := by
  simp [Pi.single_apply]

theorem sum_single_single_smul (q p : Fin t) (F : Fin t → Fin t → A) :
    ∑ q', ∑ p', ((Pi.single q (1 : ℂ) : Fin t → ℂ) q' * (Pi.single p (1 : ℂ) : Fin t → ℂ) p') • F q' p' = F q p := by
  simp_rw [mul_smul, ← Finset.smul_sum, single_sum]

theorem basis_iff_core (y η : Fin t → A) (u : ℂ) (p q : Fin t) :
    (qdet E (u + 1) * ch2 E (u - 1) y (Pi.single p 1) η (Pi.single q 1) +
          chY E (u + 1) y (Pi.single q 1) * chX E (u - 1) (Pi.single p 1) η =
        chYY E u y η * chatA E u (Pi.single p 1) (Pi.single q 1)) ↔ Core E y η u p q := by
  rw [secondChern_eq_double_sum, chY_eq, chX_eq, chYY_eq, chatA_eq, sum_single_single_smul, single_sum, single_sum, sum_single_single_smul]
  exact Iff.rfl

theorem algDet_of_core (y η : Fin t → A) (u : ℂ) (h : ∀ p q, Core E y η u p q) (x ξ : Fin t → ℂ) :
    qdet E (u + 1) * ch2 E (u - 1) y x η ξ + chY E (u + 1) y ξ * chX E (u - 1) x η =
      chYY E u y η * chatA E u x ξ := by
  rw [secondChern_eq_double_sum, chY_eq, chX_eq, chYY_eq, chatA_eq, Finset.mul_sum, Finset.sum_mul, ← Finset.sum_add_distrib,
    Finset.mul_sum]
  refine Finset.sum_congr rfl fun q _ => ?_
  rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib, Finset.mul_sum]
  refine Finset.sum_congr rfl fun p _ => ?_
  rw [mul_smul_comm, smul_mul_smul_comm, mul_smul_comm, ← smul_add]
  congr 1
  exact h p q

end Red

section Trans

variable {A : Type} [Ring A] [Algebra ℂ A] {t : ℕ} (E : Fin t → Fin t → A)

theorem J_signed (hJ : QJacobi) (hE : GlRel E) (u : ℂ) (i q l p : Fin t) :
    mS E i l (u + 1) * mS E q p u - mS E q l (u + 1) * mS E i p u = qdet E (u + 1) * nS E i q l p u := by
  have h := hJ A t E hE u i q l p
  have a1 : mS E i l (u + 1) * mS E q p u = ((-1 : ℂ) ^ ((i : ℕ) + (q : ℕ) + (l : ℕ) + (p : ℕ))) •
      (qminor E (skip1 i) (skip1 l) (u + 1) * qminor E (skip1 q) (skip1 p) u) := by
    unfold mS
    rw [smul_mul_smul_comm]
    congr 1
    ring
  have a2 : mS E q l (u + 1) * mS E i p u = ((-1 : ℂ) ^ ((i : ℕ) + (q : ℕ) + (l : ℕ) + (p : ℕ))) •
      (qminor E (skip1 q) (skip1 l) (u + 1) * qminor E (skip1 i) (skip1 p) u) := by
    unfold mS
    rw [smul_mul_smul_comm]
    congr 1
    ring
  rw [a1, a2, ← smul_sub, h, nS]
  by_cases hc : i = q ∨ l = p
  · rw [if_pos hc, if_pos hc, smul_zero, mul_zero]
  · rw [if_neg hc, if_neg hc, cast_mul_eq_smul, mul_smul_comm, smul_smul]
    congr 1
    push_cast
    ring

theorem DV_signed (hD : DetVec) (hE : GlRel E) (y : Fin t → A) (hy : IsVec E y) (w : ℂ) (j : Fin t) :
    qdet E w * y j = y j * qdet E w - ∑ l, y l * mS E j l w := by
  rw [hD A t E y hE hy w j]
  congr 1
  refine Finset.sum_congr rfl fun l _ => ?_
  rw [cast_mul_eq_smul, mS, mul_smul_comm]
  push_cast
  rfl

theorem MC_signed (hM : MinorCov) (hE : GlRel E) (η : Fin t → A) (hη : IsCov E η) (u : ℂ) (q p i : Fin t) :
    mS E q p u * η i - η i * mS E q p u = ∑ a, nS E a q i p u * η a := by
  have h := hM A t E η hE hη u q p i
  have a1 : mS E q p u * η i - η i * mS E q p u = ((-1 : ℂ) ^ ((q : ℕ) + (p : ℕ))) •
      (qminor E (skip1 q) (skip1 p) u * η i - η i * qminor E (skip1 q) (skip1 p) u) := by
    unfold mS
    rw [smul_mul_assoc, mul_smul_comm, smul_sub]
  rw [a1, h]
  by_cases hi : i = p
  · rw [if_pos hi, smul_zero]
    symm
    refine Finset.sum_eq_zero fun a _ => ?_
    rw [nS, if_pos (Or.inr hi), zero_mul]
  · rw [if_neg hi, Finset.smul_sum]
    refine Finset.sum_congr rfl fun a _ => ?_
    by_cases ha : a = q
    · rw [if_pos ha, nS, if_pos (Or.inl ha), smul_zero, zero_mul]
    · rw [if_neg ha, nS, if_neg (by tauto), cast_mul_eq_smul, smul_smul, smul_mul_assoc]
      congr 1
      push_cast
      ring

theorem covariant_commutes_signed_column_sum (hE : GlRel E) (η : Fin t → A) (hη : IsCov E η) (hηη : ∀ a b, η a * η b = η b * η a) (j : Fin t)
    (w : ℂ) : ∑ i, η i * mS E i j (w - 1) = ∑ i, mS E i j w * η i := by
  rcases t with _ | t
  · exact j.elim0
  · have h := quantum_minor_move.2 A (t + 1) t E η hE hη hηη id (skip1 j) w
    have hs : ∀ i : Fin (t + 1), (id ∘ i.succAbove : Fin t → Fin (t + 1)) = skip1 i := fun i =>
      funext fun k => (skip_succ_identity t i k).symm
    simp only [hs, id, cast_mul_eq_smul] at h
    push_cast at h
    have l1 : ∑ i, η i * mS E i j (w - 1) = ((-1 : ℂ) ^ (j : ℕ)) •
        ∑ i : Fin (t + 1), ((-1 : ℂ) ^ (i : ℕ)) • (η i * qminor E (skip1 i) (skip1 j) (w - 1)) := by
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [mS, mul_smul_comm, smul_smul, pow_add, mul_comm]
    have l2 : ∑ i, mS E i j w * η i = ((-1 : ℂ) ^ (j : ℕ)) •
        ∑ i : Fin (t + 1), ((-1 : ℂ) ^ (i : ℕ)) • (qminor E (skip1 i) (skip1 j) w * η i) := by
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [mS, smul_mul_assoc, smul_smul, pow_add, mul_comm]
    rw [l1, l2, h]

theorem skip_comp (t : ℕ) (q : Fin (t + 2)) (k : Fin (t + 1)) :
    (skip1 q ∘ k.succAbove : Fin t → Fin (t + 2)) = skip2 (min (skip1 q k) q) (max (skip1 q k) q) := by
  funext j
  apply Fin.ext
  rw [Function.comp, ← skip_succ_identity]
  simp only [skip1, skip2, Fin.coe_min, Fin.coe_max, apply_ite Fin.val]
  split_ifs <;> omega

theorem skip_one_ne (t : ℕ) (q : Fin (t + 1)) (k : Fin t) : skip1 q k ≠ q := by
  intro h
  have h' := congrArg Fin.val h
  simp only [skip1, apply_ite Fin.val] at h'
  split_ifs at h' <;> omega

theorem eps_skip (t : ℕ) (q : Fin (t + 1)) (k : Fin t) :
    ((eps (skip1 q k) q : ℤ) : ℂ) * (-1 : ℂ) ^ ((skip1 q k : Fin (t + 1)) : ℕ) = (-1 : ℂ) ^ (k : ℕ) := by
  by_cases h : k.val < q.val
  · have h1 : ((skip1 q k : Fin (t + 1)) : ℕ) = k.val := by simp only [skip1, apply_ite Fin.val]; rw [if_pos h]
    rw [eps, h1, if_pos h]
    simp
  · have h1 : ((skip1 q k : Fin (t + 1)) : ℕ) = k.val + 1 := by simp only [skip1, apply_ite Fin.val]; rw [if_neg h]
    rw [eps, h1, if_neg (by omega)]
    push_cast
    ring

theorem covariant_commutes_signed_minor_sum (hE : GlRel E) (η : Fin t → A) (hη : IsCov E η) (hηη : ∀ a b, η a * η b = η b * η a) (q c p : Fin t)
    (w : ℂ) : ∑ a, η a * nS E a q c p (w - 1) = ∑ a, nS E a q c p w * η a := by
  by_cases hcp : c = p
  · have h0 : ∀ a w', nS E a q c p w' = 0 := fun a w' => by rw [nS, if_pos (Or.inr hcp)]
    simp only [h0, mul_zero, zero_mul]
  rcases t with _ | _ | t
  · exact q.elim0
  · have h0 : ∀ a w', nS E a q c p w' = 0 := fun a w' => by rw [nS, if_pos (Or.inl (Fin.ext (by omega)))]
    simp only [h0, mul_zero, zero_mul]
  · have h := quantum_minor_move.2 A (t + 2) t E η hE hη hηη (skip1 q) (skip2 (min c p) (max c p)) w
    have hs : ∀ k : Fin (t + 1), (skip1 q ∘ k.succAbove : Fin t → Fin (t + 1 + 1)) =
        skip2 (min (skip1 q k) q) (max (skip1 q k) q) := fun k => skip_comp t q k
    simp only [hs, cast_mul_eq_smul] at h
    push_cast at h
    have key : ∀ (k : Fin (t + 1)) (w' : ℂ), nS E (q.succAbove k) q c p w' =
        ((((eps c p : ℤ) : ℂ) * (-1 : ℂ) ^ ((q : ℕ) + (c : ℕ) + (p : ℕ))) * (-1 : ℂ) ^ (k : ℕ)) •
          qminor E (skip2 (min (skip1 q k) q) (max (skip1 q k) q)) (skip2 (min c p) (max c p)) w' := by
      intro k w'
      rw [← skip_succ_identity, nS, if_neg (by have := skip_one_ne _ q k; tauto), ← eps_skip (t + 1) q k]
      congr 1
      ring
    have hq : ∀ w', nS E q q c p w' = 0 := fun w' => by rw [nS, if_pos (Or.inl rfl)]
    rw [Fin.sum_univ_succAbove _ q, Fin.sum_univ_succAbove _ q, hq, hq, mul_zero, zero_mul, zero_add, zero_add]
    have l1 : ∑ k : Fin (t + 1), η (q.succAbove k) * nS E (q.succAbove k) q c p (w - 1) =
        (((eps c p : ℤ) : ℂ) * (-1 : ℂ) ^ ((q : ℕ) + (c : ℕ) + (p : ℕ))) • ∑ k : Fin (t + 1), ((-1 : ℂ) ^ (k : ℕ)) •
          (η (skip1 q k) * qminor E (skip2 (min (skip1 q k) q) (max (skip1 q k) q)) (skip2 (min c p) (max c p))
            (w - 1)) := by
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [key, mul_smul_comm, smul_smul, skip_succ_identity]
    have l2 : ∑ k : Fin (t + 1), nS E (q.succAbove k) q c p w * η (q.succAbove k) =
        (((eps c p : ℤ) : ℂ) * (-1 : ℂ) ^ ((q : ℕ) + (c : ℕ) + (p : ℕ))) • ∑ k : Fin (t + 1), ((-1 : ℂ) ^ (k : ℕ)) •
          (qminor E (skip2 (min (skip1 q k) q) (max (skip1 q k) q)) (skip2 (min c p) (max c p)) w *
            η (skip1 q k)) := by
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [key, smul_mul_assoc, smul_smul, skip_succ_identity]
    rw [l1, l2, h]

theorem core_holds (hJ : QJacobi) (hD : DetVec) (hM : MinorCov) (hE : GlRel E) (y η : Fin t → A) (hy : IsVec E y)
    (hη : IsCov E η) (hc : Commute2 y η) (u : ℂ) (p q : Fin t) : Core E y η u p q := by
  have PairingFactorsThroughPeriods : ∀ j, ∑ i, η i * mS E i j u = ∑ i, mS E i j (u + 1) * η i := by
    intro j
    have := covariant_commutes_signed_column_sum E hE η hη hc.2.1 j (u + 1)
    rwa [add_sub_cancel_right] at this
  exact core y η (qdet E (u + 1)) (fun i j => mS E i j (u + 1)) (fun i j => mS E i j u) (fun i j => mS E i j (u - 1))
    (fun a q c p => nS E a q c p u) (fun a q c p => nS E a q c p (u - 1)) hc.2.2
    (fun i q l p => J_signed E hJ hE u i q l p) (fun j => DV_signed E hD hE y hy (u + 1) j)
    (fun q p i => MC_signed E hM hE η hη u q p i) (fun j => covariant_commutes_signed_column_sum E hE η hη hc.2.1 j u) PairingFactorsThroughPeriods
    (fun q c p => covariant_commutes_signed_minor_sum E hE η hη hc.2.1 q c p u) q p

end Trans

end Formalism.FourierDecayAlt.P.ScalarCastIdentities

theorem Formalism.FourierDecayAlt.P.qr_algDetBasis_of :
    Formalism.FourierDecayAlt.Qr.QJacobi → Formalism.FourierDecayAlt.Qr.DetVec → Formalism.FourierDecayAlt.Qr.MinorCov → Formalism.FourierDecayAlt.Qr.AlgDetBasis := by
  intro hJ hD hM A _ _ t E y η hE hy hη hc u p q
  exact (Formalism.FourierDecayAlt.P.ScalarCastIdentities.basis_iff_core E y η u p q).2
    (Formalism.FourierDecayAlt.P.ScalarCastIdentities.core_holds E hJ hD hM hE y η hy hη hc u p q)

theorem Formalism.FourierDecayAlt.P.qr_algDet_of : Formalism.FourierDecayAlt.Qr.AlgDetBasis → Formalism.FourierDecayAlt.Qr.AlgDet := by
  intro h A _ _ t E y η hE hy hη hc u x ξ
  exact Formalism.FourierDecayAlt.P.ScalarCastIdentities.algDet_of_core E y η u
    (fun p q => (Formalism.FourierDecayAlt.P.ScalarCastIdentities.basis_iff_core E y η u p q).1 (h A t E y η hE hy hη hc u p q)) x ξ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.AlgebraicQuantumDeterminant =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.DeterminantGeneric =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.DeterminantGeneric", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementQr\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AlgebraicQuantumDeterminant\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AnisotropicColumnSums\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliCoordinates\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameEntries\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftDerivativeCurves\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.QuantumMinorCommutation\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.QuantumMinorExpansion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q

theorem algebraic_quantum_determinant : Qr.AlgDet :=
  qr_algDet_of (qr_algDetBasis_of quantum_jacobi_identity quantum_determinant_vector quantum_minor_covariance)

theorem capelli_hat_frame : Qr.ChatFrame := qr_chatFrame_of frame_minor

theorem determinant_hat : DetHat :=
  qr_detHat_of algebraic_quantum_determinant capelli_hat_frame capelli_right_good left_right_swap

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.DeterminantGeneric =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftTypeAction =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftTypeAction", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightTypeAction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset Filter Topology

noncomputable section

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

namespace QrD

section Left

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] [NormedAddCommGroup Wq]
  [NormedSpace ℂ Wq] [FiniteDimensional ℂ Wp] {z z' : Fin (2 * r + k + 1) → ℂ} {π : Mx k r → (Wp →L[ℂ] Wp)}
  {π' : Mx k r → (Wq →L[ℂ] Wq)} {D : Set (Mx k r)} {J : Mx k r → (Wq →L[ℂ] Wp)}

theorem mem_left (hD : IsDom k r z z' (Fin.last r) D) {g h : Mx k r} (hg : g ∈ Glev k r (Fin.last r) ∩ D)
    (hh : h ∈ UWset k r z) : h * g ∈ Glev k r (Fin.last r) ∩ D := by
  obtain ⟨hgG, hgD⟩ := hg
  refine ⟨?_, ?_⟩
  · simp only [Glev, UH, UWset, Set.mem_setOf_eq] at hgG hh ⊢
    refine ⟨?_, fun a ha => ?_⟩
    · rw [conjTranspose_mul]
      calc gᴴ * hᴴ * Hpk k r * (h * g) = gᴴ * (hᴴ * Hpk k r * h) * g := by simp only [Matrix.mul_assoc]
        _ = Hpk k r := by rw [hh.1, hgG.1]
    · rw [← mulVec_mulVec, ← mulVec_mulVec, (hgG.2 a ha).1, (hgG.2 a ha).2]
      exact hh.2.1 a
  · have h1z' : (1 : Mx k r) ∈ UWset k r z' := by simp [UWset, UH]
    have h1N : (1 : Mx k r) ∈ Nlev k r (Fin.last r) := by simp [Nlev, QuantumDeterminants.Nset, Glev, UH, Matrix.one_apply]
    have hS := hD.2 g ⟨hgG, hgD⟩ h ⟨h, hh, 1, h1N, by simp⟩ 1 ⟨1, h1z', 1, h1N, by simp⟩
    simpa using hS

theorem J_left (hπ : IsCRepOn (UWset k r z) π) (hJ : J ∈ FFl k r z z' π π' (Fin.last r) D) {g h : Mx k r}
    (hg : g ∈ Glev k r (Fin.last r) ∩ D) (hh : h ∈ UWset k r z) : J (h * g) = (π h).comp (J g) := by
  have h1z : (1 : Mx k r) ∈ UWset k r z := by simp [UWset, UH]
  have h1z' : (1 : Mx k r) ∈ UWset k r z' := by simp [UWset, UH]
  simp only [FFl, Set.mem_setOf_eq] at hJ
  have e1 := hJ.2.2.2 g hg 1 h1z 1 h1z'
  have e2 := hJ.2.2.2 g hg h hh 1 h1z'
  rw [one_mul, mul_one, hπ.1] at e1
  have e1' : J g ∘SL π' 1 = J g := by
    ext x
    exact (congrArg (fun T => T x) e1).symm
  rw [mul_one] at e2
  rw [e2, e1']

theorem ld_left (hD : IsDom k r z z' (Fin.last r) D) (hπ : IsCRepOn (UWset k r z) π)
    (hc : ContinuousOn π (UWset k r z)) (hJ : J ∈ FFl k r z z' π π' (Fin.last r) D)
    {F : Mx k r → (Wq →L[ℂ] Wp)} {B : Wp →L[ℂ] Wp}
    (hF : ∀ g ∈ Glev k r (Fin.last r) ∩ D, F g = B.comp (J g)) {X : Mx k r} (hX : InLieW k r z X)
    {g : Mx k r} (hg : g ∈ Glev k r (Fin.last r) ∩ D) : LdV X F g = (B.comp (dOp π X)).comp (J g) := by
  have hfun : (fun t : ℝ => F (NormedSpace.exp ((t : ℂ) • X) * g)) =
      fun t : ℝ => (B.comp (π (NormedSpace.exp ((t : ℂ) • X)))).comp (J g) := by
    funext t
    have hu := exp_uw hX t
    rw [hF _ (mem_left hD hg hu), J_left hπ hJ hg hu, ContinuousLinearMap.comp_assoc]
  unfold LdV
  rw [hfun]
  have hd := dOp_hasDeriv hπ hc hX
  let L : (Wp →L[ℂ] Wp) →L[ℝ] (Wq →L[ℂ] Wp) :=
    (((ContinuousLinearMap.compL ℂ Wq Wp Wp).flip (J g)).comp
      ((ContinuousLinearMap.compL ℂ Wp Wp Wp) B)).restrictScalars ℝ
  have key : HasDerivAt (fun t : ℝ => (B.comp (π (NormedSpace.exp ((t : ℂ) • X)))).comp (J g))
      ((B.comp (dOp π X)).comp (J g)) 0 := by
    have h2 := L.hasFDerivAt.comp_hasDerivAt (0 : ℝ) hd
    convert h2 using 1
    all_goals first | rfl
  exact key.deriv

theorem lz_left (hD : IsDom k r z z' (Fin.last r) D) (hπ : IsCRepOn (UWset k r z) π)
    (hc : ContinuousOn π (UWset k r z)) (hJ : J ∈ FFl k r z z' π π' (Fin.last r) D)
    {F : Mx k r → (Wq →L[ℂ] Wp)} {B : Wp →L[ℂ] Wp}
    (hF : ∀ g ∈ Glev k r (Fin.last r) ∩ D, F g = B.comp (J g)) {Z : Mx k r}
    (h1 : InLieW k r z (hpart1 (Hpk k r) Z)) (h2 : InLieW k r z (hpart2 (Hpk k r) Z))
    {g : Mx k r} (hg : g ∈ Glev k r (Fin.last r) ∩ D) :
    LZ (Hpk k r) Z F g = (B.comp (ecOp π Z)).comp (J g) := by
  unfold LZ
  rw [ld_left hD hπ hc hJ hF h1 hg, ld_left hD hπ hc hJ hF h2 hg]
  ext v
  simp [ecOp]

theorem fold_left (hD : IsDom k r z z' (Fin.last r) D) (hπ : IsCRepOn (UWset k r z) π)
    (hc : ContinuousOn π (UWset k r z)) (hJ : J ∈ FFl k r z z' π π' (Fin.last r) D)
    (L : List (ℂ × Mx k r))
    (hL : ∀ p ∈ L, InLieW k r z (hpart1 (Hpk k r) p.2) ∧ InLieW k r z (hpart2 (Hpk k r) p.2)) :
    ∀ (F : Mx k r → (Wq →L[ℂ] Wp)) (B : Wp →L[ℂ] Wp), (∀ g ∈ Glev k r (Fin.last r) ∩ D, F g = B.comp (J g)) →
      ∀ g ∈ Glev k r (Fin.last r) ∩ D, ∀ v,
        (L.map fun p => fun y : Mx k r → (Wq →L[ℂ] Wp) => p.1 • y + LZ (Hpk k r) p.2 y).foldl (fun h T => T h) F g v =
          B ((L.map fun p => fun y : Wp => p.1 • y + EcRep (Hpk k r) π p.2 y).foldr (fun T h => T h) (J g v)) := by
  induction L with
  | nil => intro F B hF g hg v; simp [hF g hg]
  | cons p L ih =>
    intro F B hF g hg v
    obtain ⟨h1, h2⟩ := hL p (by simp)
    have hF' : ∀ g ∈ Glev k r (Fin.last r) ∩ D,
        (p.1 • F + LZ (Hpk k r) p.2 F) g = (p.1 • B + B.comp (ecOp π p.2)).comp (J g) := by
      intro g hg
      rw [Pi.add_apply, Pi.smul_apply, lz_left hD hπ hc hJ hF h1 h2 hg, hF g hg]
      ext x
      simp
    have := ih (fun q hq => hL q (by simp [hq])) _ _ hF' g hg v
    simp only [List.map_cons, List.foldl_cons, List.foldr_cons]
    rw [this]
    simp [ecRep_eq hπ hc h1 h2]

end Left

end QrD

theorem left_type_action : Formalism.FourierDecayAlt.Q.LeftTypeAction := by
  intro Wp Wq _ _ _ _ _ k r m z z' π π' D hz hz' hD hπ hc J hJ g hg Bs hB w v
  unfold capLft capRep qmFrev qmF
  have key : ∀ σ : Equiv.Perm (Fin m), ∀ g ∈ Glev k r (Fin.last r) ∩ D, ∀ v,
      ((List.ofFn fun j => ((if σ j = j then w - ((j : ℕ) : ℂ) else 0), unitB (Hpk k r) Bs (σ j) j)).map
          fun p => fun y : Mx k r → (Wq →L[ℂ] Wp) => p.1 • y + LZ (Hpk k r) p.2 y).foldl (fun h T => T h) J g v =
        (ContinuousLinearMap.id ℂ Wp)
          (((List.ofFn fun j => ((if σ j = j then w - ((j : ℕ) : ℂ) else 0), unitB (Hpk k r) Bs (σ j) j)).map
            fun p => fun y : Wp => p.1 • y + EcRep (Hpk k r) π p.2 y).foldr (fun T h => T h) (J g v)) :=
    fun σ => QrD.fold_left hD hπ hc hJ _ (by
      intro p hp
      simp only [List.mem_ofFn] at hp
      obtain ⟨j, rfl⟩ := hp
      exact QrD.frame_lie hB (σ j) j) J (ContinuousLinearMap.id ℂ Wp) (fun g _ => by simp)
  simp only [List.map_ofFn, Function.comp_def, ite_smul, zero_smul, ContinuousLinearMap.id_apply] at key
  simp only [id, Finset.sum_apply, Pi.smul_apply, ContinuousLinearMap.sum_apply,
    ContinuousLinearMap.smul_apply]
  refine Finset.sum_congr rfl fun σ _ => ?_
  rw [key σ g hg v]

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftTypeAction =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.QxPIRttLevel =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.QxPIRttLevel", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementQ\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumDualVectorEqZeta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem Formalism.FourierDecayAlt.P.rtt_level_from_upper : Formalism.FourierDecayAlt.Q.RTTLevelFromUpper := by
  intro hU hLT hGI hFF _ k r i
  induction i using Fin.cases with
  | succ l => exact hU k r l
  | zero =>
    intro Wp Wq _ _ _ _ z z' π π' D hz hz' hD J hJ g hg u v a b c d
    obtain ⟨π₁, π₁', D₁, f, hw, hw', hD₁, hf, hfJ⟩ := hFF Wp Wq k r z z' π π' D hz hz' hD J hJ
    have key : ∀ (Y Y' : ℂ) (p q p' q' : Fin 2),
        Formalism.FourierDecayAlt.Q.tL k (1 + r) (Formalism.QuantumDeterminants.liftVec k 1 r z) (Formalism.QuantumDeterminants.liftVec k 1 r z') ⟨1, by omega⟩
                  Y p q (Formalism.FourierDecayAlt.Q.tL k (1 + r) (Formalism.QuantumDeterminants.liftVec k 1 r z) (Formalism.QuantumDeterminants.liftVec k 1 r z')
                    ⟨1, by omega⟩ Y' p' q' f) (Formalism.QuantumDeterminants.ιLev k 1 r g) =
          Formalism.FourierDecayAlt.Q.tL k r z z' 0 Y p q (Formalism.FourierDecayAlt.Q.tL k r z z' 0 Y' p' q' J) g := by
      intro Y Y' p q p' q'
      rw [hLT (Wq →L[ℂ] Wp) k 1 r z z' Y p q _ g hg.1.1]
      refine (Formalism.FourierDecayAlt.P.Qx2.ll_tL (i := 0) hD.1 z z' Y p q).loc _ _ ?_ g hg
      intro x hx
      rw [hLT (Wq →L[ℂ] Wp) k 1 r z z' Y' p' q' f x hx.1.1]
      refine (Formalism.FourierDecayAlt.P.Qx2.ll_tL (i := 0) hD.1 z z' Y' p' q').loc _ _ ?_ x hx
      intro y hy
      exact (hfJ y hy.1.1).2
    have hιg : Formalism.QuantumDeterminants.ιLev k 1 r g ∈ Formalism.FourierDecayAlt.Q.Glev k (1 + r) ⟨1, by omega⟩ ∩ D₁ := by
      refine ⟨?_, (hfJ g hg.1.1).1.mpr hg.2⟩
      rw [hGI k 1 r]
      exact ⟨g, hg.1.1, rfl⟩
    have h1 : Formalism.FourierDecayAlt.Q.RTTAt k (1 + r) ⟨1, by omega⟩ := hU k (1 + r) ⟨0, by omega⟩
    have h := h1 Wp Wq _ _ π₁ π₁' D₁ hw hw' hD₁ f hf _ hιg u v a b c d
    simp only [key] at h
    exact h
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.QxPIRttLevel =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RttUpperRelationsFromDescent =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RttUpperRelationsFromDescent", "h": "module\n\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WeylConjugationFixedColumn.ReflectionScalarDualIsotropic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SumDualVectorEqZeta\npublic import Mathlib.LinearAlgebra.Lagrange\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CmHalfIntegralGeneratorMemAlgebraicClosure\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentHeisenbergDecomposition\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.InnerProductSpace.Calculus\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.SpecialFunctions.Log.Deriv\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.YangianSpanCharacter.T

noncomputable section

namespace Formalism.FourierDecayAlt.P.Qx7

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q
open scoped ContDiff

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

local macro "distrib_module" : tactic =>
  `(tactic| (simp only [mul_sub, sub_mul, mul_add, add_mul, smul_mul_assoc, mul_smul_comm,
    mul_assoc, smul_sub, smul_add, smul_smul]; module))

section Qdet

variable {A : Type} [Ring A] [Algebra ℂ A]

theorem rtt_entry (QQ : ℂ → Matrix (Fin 2) (Fin 2) A) (h : Formalism.FourierDecayAlt.W.IsRTT QQ) (Y Y' : ℂ) (a b c d : Fin 2) :
    (Y' - Y) • (QQ Y' a b * QQ Y c d - QQ Y c d * QQ Y' a b) =
      QQ Y' c b * QQ Y a d - QQ Y c b * QQ Y' a d := by
  have h0 := congrFun (congrFun (h Y Y') (a, c)) (b, d)
  fin_cases a <;> fin_cases b <;> fin_cases c <;> fin_cases d <;>
    simp [E1, E2, Pf, Matrix.mul_apply, Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply,
      Fintype.sum_prod_type, Fin.sum_univ_two, sub_mul, mul_sub] at h0 ⊢ <;>
    (rw [smul_sub]; linear_combination (norm := abel) h0)

theorem idempotent_mul_comm (r s t : Matrix (Fin 2) (Fin 2) A) (D : ℂ)
    (hst : ∀ a b c d, (1 : ℂ) • (s a b * t c d - t c d * s a b) = s c b * t a d - t c b * s a d)
    (hts : ∀ a b c d, (-1 : ℂ) • (t a b * s c d - s c d * t a b) = t c b * s a d - s c b * t a d)
    (hsr : ∀ a b c d, (1 - D) • (s a b * r c d - r c d * s a b) = s c b * r a d - r c b * s a d)
    (hrt : ∀ a b c d, D • (r a b * t c d - t c d * r a b) = r c b * t a d - t c b * r a d)
    (a b : Fin 2) :
    (s 0 0 * t 1 1 - s 1 0 * t 0 1) * r a b = r a b * (s 0 0 * t 1 1 - s 1 0 * t 0 1) := by
  fin_cases a <;> fin_cases b
  · show (s 0 0 * t 1 1 - s 1 0 * t 0 1) * r 0 0 = r 0 0 * (s 0 0 * t 1 1 - s 1 0 * t 0 1)
    linear_combination (norm := distrib_module) (1 : ℂ) • (r 0 1 * hst 0 0 1 0) +
      (1 : ℂ) • (r 0 0 * hst 1 0 0 1) +
      (1 : ℂ) • (r 0 0 * hst 1 1 0 0) +
      (1 : ℂ) • (hsr 0 0 0 1 * t 1 0) +
      (-1 : ℂ) • (hsr 1 0 0 1 * t 0 0) +
      (D/2 : ℂ) • (r 0 1 * hts 0 0 1 0) +
      (-D/2 : ℂ) • (hts 0 0 1 0 * r 0 1) +
      (-D/2 : ℂ) • (r 0 1 * hts 1 0 0 0) +
      (D/2 : ℂ) • (hts 1 0 0 0 * r 0 1) +
      (-1 : ℂ) • (s 1 0 * hrt 0 1 0 0) +
      (1 : ℂ) • (s 0 0 * hrt 0 1 1 0)
  · show (s 0 0 * t 1 1 - s 1 0 * t 0 1) * r 0 1 = r 0 1 * (s 0 0 * t 1 1 - s 1 0 * t 0 1)
    linear_combination (norm := distrib_module) (1 : ℂ) • (r 0 0 * hst 1 1 0 1) +
      (D : ℂ) • (hst 1 1 0 1 * r 0 0) +
      (-1 : ℂ) • (hsr 0 1 0 0 * t 1 1) +
      (1 : ℂ) • (hsr 1 1 0 0 * t 0 1) +
      (-1 : ℂ) • (hts 0 0 1 1 * r 0 1) +
      (-D/2 : ℂ) • (r 0 0 * hts 0 1 1 1) +
      (1 : ℂ) • (hts 1 0 0 1 * r 0 1) +
      (D/2 : ℂ) • (r 0 0 * hts 1 1 0 1) +
      (1 : ℂ) • (s 1 1 * hrt 0 0 0 1) +
      (-1 : ℂ) • (s 0 1 * hrt 0 0 1 1)
  · show (s 0 0 * t 1 1 - s 1 0 * t 0 1) * r 1 0 = r 1 0 * (s 0 0 * t 1 1 - s 1 0 * t 0 1)
    linear_combination (norm := distrib_module) (1 : ℂ) • (hst 0 0 1 1 * r 1 0) +
      (1 : ℂ) • (r 1 0 * hst 1 0 0 1) +
      (-1 : ℂ) • (t 1 1 * hsr 1 0 0 0) +
      (1 : ℂ) • (t 1 0 * hsr 1 1 0 0) +
      (D/2 : ℂ) • (r 0 0 * hts 1 0 1 1) +
      (1/2 - D/2 : ℂ) • (hts 1 0 1 1 * r 0 0) +
      (-D/2 : ℂ) • (r 0 0 * hts 1 1 1 0) +
      (D/2 - 1/2 : ℂ) • (hts 1 1 1 0 * r 0 0) +
      (1 : ℂ) • (hrt 0 0 1 0 * s 1 1) +
      (-1 : ℂ) • (hrt 0 0 1 1 * s 1 0)
  · show (s 0 0 * t 1 1 - s 1 0 * t 0 1) * r 1 1 = r 1 1 * (s 0 0 * t 1 1 - s 1 0 * t 0 1)
    linear_combination (norm := distrib_module) (D/2 : ℂ) • (r 1 0 * hst 0 1 1 1) +
      (1/2 : ℂ) • (r 1 1 * hst 1 0 0 1) +
      (-1/2 : ℂ) • (hst 1 0 0 1 * r 1 1) +
      (D/2 : ℂ) • (hst 1 0 1 1 * r 0 1) +
      (1/2 : ℂ) • (r 1 0 * hst 1 1 0 1) +
      (-1/2 : ℂ) • (hsr 0 1 1 0 * t 1 1) +
      (-1/2 : ℂ) • (t 1 1 * hsr 1 0 0 1) +
      (1/2 : ℂ) • (t 1 0 * hsr 1 1 0 1) +
      (1/2 : ℂ) • (hsr 1 1 1 0 * t 0 1) +
      (-1/2 : ℂ) • (hts 0 0 1 1 * r 1 1) +
      (D/4 : ℂ) • (hts 0 1 1 1 * r 1 0) +
      (D/4 : ℂ) • (r 0 1 * hts 1 0 1 1) +
      (1/4 : ℂ) • (hts 1 0 1 1 * r 0 1) +
      (1/2 : ℂ) • (hts 1 1 0 0 * r 1 1) +
      (-D/4 : ℂ) • (hts 1 1 0 1 * r 1 0) +
      (-D/4 : ℂ) • (r 0 1 * hts 1 1 1 0) +
      (-1/4 : ℂ) • (hts 1 1 1 0 * r 0 1) +
      (1/2 : ℂ) • (hrt 0 1 1 0 * s 1 1) +
      (-1/2 : ℂ) • (hrt 0 1 1 1 * s 1 0) +
      (1/2 : ℂ) • (s 1 1 * hrt 1 0 0 1) +
      (-1/2 : ℂ) • (s 0 1 * hrt 1 0 1 1)

end Qdet

theorem qdet_main : Formalism.FourierDecayAlt.Q.QdetFromRTT := by
  intro A _ _ QQ h Y
  have hst : ∀ a b c d, (1 : ℂ) • (QQ (Y + 1) a b * QQ Y c d - QQ Y c d * QQ (Y + 1) a b) =
      QQ (Y + 1) c b * QQ Y a d - QQ Y c b * QQ (Y + 1) a d := fun a b c d => by
    have h0 := rtt_entry QQ h Y (Y + 1) a b c d
    rwa [show Y + 1 - Y = 1 by ring] at h0
  have hts : ∀ a b c d, (-1 : ℂ) • (QQ Y a b * QQ (Y + 1) c d - QQ (Y + 1) c d * QQ Y a b) =
      QQ Y c b * QQ (Y + 1) a d - QQ (Y + 1) c b * QQ Y a d := fun a b c d => by
    have h0 := rtt_entry QQ h (Y + 1) Y a b c d
    rwa [show Y - (Y + 1) = -1 by ring] at h0
  refine ⟨QQ (Y + 1) 0 0 * QQ Y 1 1 - QQ (Y + 1) 1 0 * QQ Y 0 1, ?_, ?_, ?_⟩
  · ext c d
    fin_cases c <;> fin_cases d <;>
      simp [Formalism.YangianSpanCharacter.T.J, Matrix.mul_apply, Fin.sum_univ_two, Matrix.transpose_apply]
    · linear_combination (norm := distrib_module) hst 0 0 1 0
    · abel
    · linear_combination (norm := distrib_module) hst 0 1 1 0 + hst 0 0 1 1
    · linear_combination (norm := distrib_module) hst 0 1 1 1
  · ext c a
    fin_cases c <;> fin_cases a <;>
      simp [Formalism.YangianSpanCharacter.T.J, Matrix.mul_apply, Fin.sum_univ_two, Matrix.transpose_apply]
    · linear_combination (norm := distrib_module) hst 0 0 0 1
    · linear_combination (norm := distrib_module) hst 1 0 0 1
    · linear_combination (norm := distrib_module) hst 0 0 1 1
    · linear_combination (norm := distrib_module) hst 1 0 1 1
  · intro Y' a b
    refine idempotent_mul_comm (QQ Y') (QQ (Y + 1)) (QQ Y) (Y' - Y) hst hts (fun a b c d => ?_)
      (fun a b c d => rtt_entry QQ h Y Y' a b c d) a b
    have h0 := rtt_entry QQ h Y' (Y + 1) a b c d
    rwa [show Y + 1 - Y' = 1 - (Y' - Y) by ring] at h0

section Mono

def logD (A B c : ℂ) : ℂ →L[ℝ] ℂ :=
  (A / c) • (ContinuousLinearMap.id ℝ ℂ) + (B / star c) • (Complex.conjCLE : ℂ →L[ℝ] ℂ)

theorem logD_apply (A B c h : ℂ) : logD A B c h = A / c * h + B / star c * star h := by
  simp [logD]

def LD (f : ℂ → ℂ) (c A B : ℂ) : Prop := HasFDerivAt f (f c • logD A B c) c

theorem LD.mul {f g : ℂ → ℂ} {c A B A' B' : ℂ} (hf : LD f c A B) (hg : LD g c A' B') :
    LD (fun x => f x * g x) c (A + A') (B + B') := by
  refine (HasFDerivAt.mul hf hg).congr_fderiv (ContinuousLinearMap.ext fun x => ?_)
  simp [logD_apply]
  ring

theorem LD.star {f : ℂ → ℂ} {c A B : ℂ} (hf : LD f c A B) :
    LD (fun x => star (f x)) c (star B) (star A) := by
  refine ((Complex.conjCLE : ℂ →L[ℝ] ℂ).hasFDerivAt.comp c hf).congr_fderiv (ContinuousLinearMap.ext fun x => ?_)
  simp only [ContinuousLinearMap.comp_apply, _root_.smul_apply, logD_apply, smul_eq_mul,
    ContinuousLinearEquiv.coe_coe, Complex.conjCLE_apply, map_mul, map_add, map_div₀, Complex.star_def,
    Complex.conj_conj]
  ring

theorem LD_zpow (n : ℤ) {c : ℂ} (hc : c ≠ 0) : LD (fun x => x ^ n) c n 0 := by
  refine (((hasDerivAt_zpow n c (Or.inl hc)).hasFDerivAt).restrictScalars ℝ).congr_fderiv (ContinuousLinearMap.ext fun x => ?_)
  simp [logD_apply, zpow_sub_one₀ hc]
  field_simp

theorem cpow_norm_eq (γ : ℂ) {x : ℂ} (hx : x ≠ 0) :
    ((‖x‖ : ℝ) : ℂ) ^ (2 * γ) = Complex.exp (γ * ((Real.log (‖x‖ ^ 2) : ℝ) : ℂ)) := by
  have h0 : ((‖x‖ : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (norm_ne_zero_iff.2 hx)
  rw [Complex.cpow_def_of_ne_zero h0, ← Complex.ofReal_log (norm_nonneg x), Real.log_pow]
  push_cast
  ring_nf

theorem LD_norm (γ : ℂ) {c : ℂ} (hc : c ≠ 0) : LD (fun x => ((‖x‖ : ℝ) : ℂ) ^ (2 * γ)) c γ γ := by
  have hn : ‖c‖ ^ 2 ≠ 0 := pow_ne_zero 2 (norm_ne_zero_iff.2 hc)
  have h1 : HasFDerivAt (fun x : ℂ => ‖x‖ ^ 2) (2 • (innerSL ℝ c)) c := (hasStrictFDerivAt_norm_sq c).hasFDerivAt
  have h2 := h1.log hn
  have h3 : HasFDerivAt (fun x : ℂ => ((Real.log (‖x‖ ^ 2) : ℝ) : ℂ))
      (Complex.ofRealCLM.comp ((‖c‖ ^ 2)⁻¹ • (2 • (innerSL ℝ c)))) c :=
    (Complex.ofRealCLM.hasFDerivAt (x := Real.log (‖c‖ ^ 2))).comp c h2
  have h4a : HasFDerivAt (fun x : ℂ => γ * ((Real.log (‖x‖ ^ 2) : ℝ) : ℂ))
      (γ • (Complex.ofRealCLM.comp ((‖c‖ ^ 2)⁻¹ • (2 • (innerSL ℝ c))))) c := h3.const_mul γ
  have h4 := h4a.cexp
  have hev : (fun x : ℂ => ((‖x‖ : ℝ) : ℂ) ^ (2 * γ)) =ᶠ[nhds c]
      fun x : ℂ => Complex.exp (γ * ((Real.log (‖x‖ ^ 2) : ℝ) : ℂ)) := by
    filter_upwards [isOpen_ne.mem_nhds hc] with x hx
    exact cpow_norm_eq γ hx
  have h5 := h4.congr_of_eventuallyEq hev
  refine h5.congr_fderiv (ContinuousLinearMap.ext fun x => ?_)
  have e1 : ((‖c‖ : ℝ) : ℂ) ^ 2 = c * star c := by
    rw [Complex.star_def, Complex.mul_conj, Complex.normSq_eq_norm_sq]; push_cast; rfl
  have e2 : ((2 * (inner ℝ c x : ℝ) : ℝ) : ℂ) = star c * x + c * star x := by
    rw [Complex.inner, Complex.star_def]
    have := Complex.add_conj (x * (starRingEnd ℂ) c)
    rw [map_mul, Complex.conj_conj] at this
    rw [← this]
    ring
  have hsc : star c ≠ 0 := star_ne_zero.2 hc
  simp only [logD_apply, cpow_norm_eq γ hc, _root_.smul_apply, ContinuousLinearMap.comp_apply,
    smul_eq_mul, innerSL_apply_apply, Complex.ofRealCLM_apply, nsmul_eq_mul, Nat.cast_ofNat]
  have e3 : (((‖c‖ ^ 2)⁻¹ * (2 * (inner ℝ c x : ℝ)) : ℝ) : ℂ) = 1 / c * x + 1 / star c * star x := by
    rw [Complex.ofReal_mul, e2, Complex.ofReal_inv, Complex.ofReal_pow, e1]
    field_simp
  rw [e3]; ring

def mu (β : ℂ) (n : ℤ) (s s' : ℕ) (c : ℂ) : ℂ :=
  ((‖c‖ : ℝ) : ℂ) ^ (2 * β) * c ^ n * (c ^ s)⁻¹ * (star c ^ s')⁻¹

theorem LD_mu (β : ℂ) (n : ℤ) (s s' : ℕ) {c : ℂ} (hc : c ≠ 0) :
    LD (mu β n s s') c (β + n - s) (β - s') := by
  have h1 := ((LD_norm β hc).mul (LD_zpow n hc)).mul (LD_zpow (-(s : ℤ)) hc)
  have h2 := h1.mul (LD_zpow (-(s' : ℤ)) hc).star
  have e : (fun x : ℂ => ((‖x‖ : ℝ) : ℂ) ^ (2 * β) * x ^ n * x ^ (-(s : ℤ)) * star (x ^ (-(s' : ℤ)))) = mu β n s s' := by
    funext x
    simp [mu, _root_.zpow_neg, star_inv₀]
  rw [e] at h2
  have eA : β + (n : ℂ) + ((-(s : ℤ) : ℤ) : ℂ) + star (0 : ℂ) = β + n - s := by push_cast; simp; ring
  have eB : β + 0 + 0 + star (((-(s' : ℤ) : ℤ) : ℂ)) = β - s' := by push_cast; simp; ring
  rw [eA, eB] at h2
  exact h2

end Mono

section Rep

variable {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

structure Term (k r : ℕ) (E : Type*) where
  co : ℂ
  s : ℕ
  s' : ℕ
  Ψ : Mx k r → E

def ev (β : ℂ) (n : ℤ) (l : Fin r) (L : List (Term k r E)) (c : Fin r → ℂ) (g : Mx k r) : E :=
  (L.map fun t => (t.co * mu β n t.s t.s' (c l)) • t.Ψ g).sum

variable (β : ℂ) (n : ℤ) (l : Fin r)

@[simp] theorem ev_nil (c : Fin r → ℂ) (g : Mx k r) : ev β n l ([] : List (Term k r E)) c g = 0 := rfl

@[simp] theorem ev_cons (t : Term k r E) (L : List (Term k r E)) (c : Fin r → ℂ) (g : Mx k r) :
    ev β n l (t :: L) c g = (t.co * mu β n t.s t.s' (c l)) • t.Ψ g + ev β n l L c g := by
  simp [ev]

@[simp] theorem ev_append (L L' : List (Term k r E)) (c : Fin r → ℂ) (g : Mx k r) :
    ev β n l (L ++ L') c g = ev β n l L c g + ev β n l L' c g := by
  simp [ev]

def WD (l : Fin r) (F : (Fin r → ℂ) → E) (c : Fin r → ℂ) (P Pb : E) : Prop :=
  ∃ F' : (Fin r → ℂ) →L[ℝ] E, HasFDerivAt F F' c ∧
    c l • ((1 / 2 : ℂ) • (F' (Pi.single l 1) - Complex.I • F' (Pi.single l Complex.I))) = P ∧
    star (c l) • ((1 / 2 : ℂ) • (F' (Pi.single l 1) + Complex.I • F' (Pi.single l Complex.I))) = Pb

theorem WD.pOp {F : (Fin r → ℂ) → E} {c : Fin r → ℂ} {P Pb : E} (h : WD l F c P Pb) (hc : c ∈ OmX r) :
    pOp l F c = P ∧ pbOp l F c = Pb := by
  obtain ⟨F', hF, h1, h2⟩ := h
  exact ⟨by simp only [Formalism.QuantumDeterminants.pOp, if_pos hc, wirt, hF.fderiv, h1],
    by simp only [Formalism.QuantumDeterminants.pbOp, if_pos hc, wirtBar, hF.fderiv, h2]⟩

theorem WD.add {F G : (Fin r → ℂ) → E} {c : Fin r → ℂ} {P Pb Q Qb : E} (hF : WD l F c P Pb) (hG : WD l G c Q Qb) :
    WD l (fun x => F x + G x) c (P + Q) (Pb + Qb) := by
  obtain ⟨F', hF', h1, h2⟩ := hF
  obtain ⟨G', hG', g1, g2⟩ := hG
  refine ⟨F' + G', hF'.add hG', ?_, ?_⟩
  · rw [← h1, ← g1]; simp only [_root_.add_apply]; module
  · rw [← h2, ← g2]; simp only [_root_.add_apply]; module

theorem WD.zero (c : Fin r → ℂ) : WD l (fun _ => (0 : E)) c 0 0 :=
  ⟨0, hasFDerivAt_const _ _, by simp, by simp⟩

theorem WD.congr {F G : (Fin r → ℂ) → E} {c : Fin r → ℂ} {P Pb : E} (hG : WD l G c P Pb)
    (h : F =ᶠ[nhds c] G) : WD l F c P Pb := by
  obtain ⟨G', hG', g1, g2⟩ := hG
  exact ⟨G', hG'.congr_of_eventuallyEq h, g1, g2⟩

theorem WD_term (co : ℂ) (s s' : ℕ) (v : E) {c : Fin r → ℂ} (hc : c l ≠ 0) :
    WD l (fun x : Fin r → ℂ => (co * mu β n s s' (x l)) • v) c
      ((((β + n - s) * co) * mu β n s s' (c l)) • v) ((((β - s') * co) * mu β n s s' (c l)) • v) := by
  have h0 : HasFDerivAt (mu β n s s') (mu β n s s' (c l) • logD (β + n - s) (β - s') (c l)) (c l) := LD_mu β n s s' hc
  have h1 : HasFDerivAt (fun x : Fin r → ℂ => mu β n s s' (x l))
      ((mu β n s s' (c l) • logD (β + n - s) (β - s') (c l)).comp (ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin r => ℂ) l)) c :=
    HasFDerivAt.comp (g := mu β n s s') c h0
      ((ContinuousLinearMap.proj (R := ℝ) (φ := fun _ : Fin r => ℂ) l).hasFDerivAt (x := c))
  have h2 := (h1.const_mul co).smul_const v
  have hs : (starRingEnd ℂ) (c l) ≠ 0 := (map_ne_zero _).2 hc
  refine ⟨_, h2, ?_, ?_⟩
  · simp only [ContinuousLinearMap.smulRight_apply, _root_.smul_apply, ContinuousLinearMap.comp_apply,
      ContinuousLinearMap.proj_apply, Pi.single_eq_same, logD_apply, smul_eq_mul, smul_smul, ← sub_smul]
    congr 1
    simp only [star_one, Complex.star_def, Complex.conj_I]
    field_simp
    ring_nf
    simp only [Complex.I_sq]
    ring
  · simp only [ContinuousLinearMap.smulRight_apply, _root_.smul_apply, ContinuousLinearMap.comp_apply,
      ContinuousLinearMap.proj_apply, Pi.single_eq_same, logD_apply, smul_eq_mul, smul_smul, ← add_smul]
    congr 1
    simp only [star_one, Complex.star_def, Complex.conj_I]
    field_simp
    ring_nf
    simp only [Complex.I_sq]
    ring

def sc (κ : ℕ → ℕ → ℂ) (L : List (Term k r E)) : List (Term k r E) :=
  L.map fun t => { t with co := κ t.s t.s' * t.co }

theorem WD_ev (L : List (Term k r E)) (g : Mx k r) {c : Fin r → ℂ} (hc : c l ≠ 0) :
    WD l (fun x => ev β n l L x g) c (ev β n l (sc (fun s _ => β + n - s) L) c g)
      (ev β n l (sc (fun _ s' => β - s') L) c g) := by
  induction L with
  | nil => exact WD.zero l c
  | cons t L ih =>
    simp only [sc, List.map_cons, ev_cons] at ih ⊢
    exact (WD_term β n l t.co t.s t.s' (t.Ψ g) hc).add l ih

theorem ev_sc_add (a : ℂ) (κ : ℕ → ℕ → ℂ) (L : List (Term k r E)) (c : Fin r → ℂ) (g : Mx k r) :
    ev β n l (sc (fun s s' => a + κ s s') L) c g = a • ev β n l L c g + ev β n l (sc κ L) c g := by
  induction L with
  | nil => simp [sc]
  | cons t L ih =>
    simp only [sc, List.map_cons, ev_cons] at ih ⊢
    rw [ih]; module

theorem ev_sc_sub (a : ℂ) (κ : ℕ → ℕ → ℂ) (L : List (Term k r E)) (c : Fin r → ℂ) (g : Mx k r) :
    ev β n l (sc (fun s s' => a - κ s s') L) c g = a • ev β n l L c g - ev β n l (sc κ L) c g := by
  induction L with
  | nil => simp [sc]
  | cons t L ih =>
    simp only [sc, List.map_cons, ev_cons] at ih ⊢
    rw [ih]; module

end Rep

section Rep2

variable {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
variable (β : ℂ) (n : ℤ) (l : Fin r)

theorem isOpen_omX (r : ℕ) : IsOpen (OmX r) := by
  rw [show OmX r = ⋂ l, {x : Fin r → ℂ | x l ≠ 0} by ext; simp [OmX]]
  exact isOpen_iInter_of_finite fun l => isOpen_ne.preimage (continuous_apply l)

def Rep (G : Set (Mx k r)) (Φ : Fn k r E) (L : List (Term k r E)) : Prop :=
  ∀ c ∈ OmX r, ∀ g ∈ G, Φ c g = ev β n l L c g

def shS (L : List (Term k r E)) : List (Term k r E) := L.map fun t => { t with s := t.s + 1 }

def shS' (L : List (Term k r E)) : List (Term k r E) := L.map fun t => { t with s' := t.s' + 1 }

def opQ (T : (Mx k r → E) → Mx k r → E) (L : List (Term k r E)) : List (Term k r E) :=
  L.map fun t => { t with Ψ := T t.Ψ }

def AllP (P : (Mx k r → E) → Prop) (L : List (Term k r E)) : Prop := ∀ t ∈ L, P t.Ψ

theorem AllP.sc {P : (Mx k r → E) → Prop} {L : List (Term k r E)} (h : AllP P L) (κ : ℕ → ℕ → ℂ) :
    AllP P (sc κ L) := by
  simp only [AllP, Qx7.sc, List.mem_map]
  rintro t ⟨t', ht', rfl⟩
  exact h t' ht'

theorem AllP.shS {P : (Mx k r → E) → Prop} {L : List (Term k r E)} (h : AllP P L) : AllP P (shS L) := by
  simp only [AllP, Qx7.shS, List.mem_map]
  rintro t ⟨t', ht', rfl⟩
  exact h t' ht'

theorem AllP.shS' {P : (Mx k r → E) → Prop} {L : List (Term k r E)} (h : AllP P L) : AllP P (shS' L) := by
  simp only [AllP, Qx7.shS', List.mem_map]
  rintro t ⟨t', ht', rfl⟩
  exact h t' ht'

theorem AllP.opQ {P : (Mx k r → E) → Prop} {L : List (Term k r E)} (h : AllP P L)
    {T : (Mx k r → E) → Mx k r → E} (hT : ∀ f, P f → P (T f)) : AllP P (opQ T L) := by
  simp only [AllP, Qx7.opQ, List.mem_map]
  rintro t ⟨t', ht', rfl⟩
  exact hT _ (h t' ht')

theorem AllP.append {P : (Mx k r → E) → Prop} {L L' : List (Term k r E)} (h : AllP P L) (h' : AllP P L') :
    AllP P (L ++ L') := by
  intro t ht
  exact (List.mem_append.1 ht).elim (h t) (h' t)

variable {β n l}

theorem Rep.pp {G : Set (Mx k r)} {Φ : Fn k r E} {L : List (Term k r E)} (h : Rep β n l G Φ L) (Y : ℂ) :
    Rep β n l G (crd (fun f => Y • f + pOp l f) Φ) (sc (fun s _ => Y + (β + n - s)) L) := by
  intro c hc g hg
  have hev : (fun c' => Φ c' g) =ᶠ[nhds c] fun c' => ev β n l L c' g := by
    filter_upwards [(isOpen_omX r).mem_nhds hc] with x hx using h x hx g hg
  have h1 := (((WD_ev β n l L g (hc l)).congr l hev).pOp l hc).1
  show (Y • (fun c' => Φ c' g) + pOp l (fun c' => Φ c' g)) c = _
  rw [Pi.add_apply, Pi.smul_apply, h1, h c hc g hg]
  exact (ev_sc_add β n l Y (fun s _ => β + n - s) L c g).symm

theorem Rep.pb {G : Set (Mx k r)} {Φ : Fn k r E} {L : List (Term k r E)} (h : Rep β n l G Φ L) (Y : ℂ) :
    Rep β n l G (crd (fun f => Y • f - pbOp l f) Φ) (sc (fun _ s' => Y - (β - s')) L) := by
  intro c hc g hg
  have hev : (fun c' => Φ c' g) =ᶠ[nhds c] fun c' => ev β n l L c' g := by
    filter_upwards [(isOpen_omX r).mem_nhds hc] with x hx using h x hx g hg
  have h1 := (((WD_ev β n l L g (hc l)).congr l hev).pOp l hc).2
  show (Y • (fun c' => Φ c' g) - pbOp l (fun c' => Φ c' g)) c = _
  rw [Pi.sub_apply, Pi.smul_apply, h1, h c hc g hg]
  exact (ev_sc_sub β n l Y (fun _ s' => β - s') L c g).symm

theorem ev_shS (L : List (Term k r E)) (c : Fin r → ℂ) (g : Mx k r) :
    ev β n l (shS L) c g = (c l)⁻¹ • ev β n l L c g := by
  induction L with
  | nil => simp [shS]
  | cons t L ih =>
    simp only [shS, List.map_cons, ev_cons] at ih ⊢
    rw [ih, smul_add, smul_smul]
    congr 2
    simp only [mu, pow_succ, mul_inv]
    ring

theorem ev_shS' (L : List (Term k r E)) (c : Fin r → ℂ) (g : Mx k r) :
    ev β n l (shS' L) c g = (star (c l))⁻¹ • ev β n l L c g := by
  induction L with
  | nil => simp [shS']
  | cons t L ih =>
    simp only [shS', List.map_cons, ev_cons] at ih ⊢
    rw [ih, smul_add, smul_smul]
    congr 2
    simp only [mu, pow_succ, mul_inv]
    ring

theorem Rep.ci {G : Set (Mx k r)} {Φ : Fn k r E} {L : List (Term k r E)} (h : Rep β n l G Φ L) :
    Rep β n l G (crd (ciOp l) Φ) (shS L) := by
  intro c hc g hg
  show (c l)⁻¹ • Φ c g = _
  rw [h c hc g hg, ev_shS]

theorem Rep.cbi {G : Set (Mx k r)} {Φ : Fn k r E} {L : List (Term k r E)} (h : Rep β n l G Φ L) :
    Rep β n l G (crd (cbiOp l) Φ) (shS' L) := by
  intro c hc g hg
  show (star (c l))⁻¹ • Φ c g = _
  rw [h c hc g hg, ev_shS']

theorem Rep.add {G : Set (Mx k r)} {Φ Φ' : Fn k r E} {L L' : List (Term k r E)} (h : Rep β n l G Φ L)
    (h' : Rep β n l G Φ' L') : Rep β n l G (Φ + Φ') (L ++ L') := by
  intro c hc g hg
  show Φ c g + Φ' c g = _
  rw [h c hc g hg, h' c hc g hg, ev_append]

theorem smooth_ev {i : Fin (r + 1)} {D : Set (Mx k r)} {L : List (Term k r E)}
    (hL : AllP (SmoothLev k r i D) L) (c : Fin r → ℂ) : SmoothLev k r i D (fun x => ev β n l L c x) := by
  induction L with
  | nil => exact Qx2.smooth_zero
  | cons t L ih =>
    simp only [ev_cons]
    exact Qx2.smooth_add (Qx2.smooth_smul (hL t (by simp)) _) (ih fun t' ht' => hL t' (by simp [ht']))

theorem LL_ev {i : Fin (r + 1)} {D : Set (Mx k r)} {T : (Mx k r → E) → Mx k r → E} (hT : Qx2.LL k r i D T)
    {L : List (Term k r E)} (hL : AllP (SmoothLev k r i D) L) (c : Fin r → ℂ) {g : Mx k r}
    (hg : g ∈ Glev k r i ∩ D) : T (fun x => ev β n l L c x) g = ev β n l (opQ T L) c g := by
  induction L with
  | nil =>
    simpa [opQ, smul_zero, add_zero, one_smul] using
      hT.lin (fun _ => 0) (fun _ => 0) 1 Qx2.smooth_zero Qx2.smooth_zero g hg
  | cons t L ih =>
    have hL' : AllP (SmoothLev k r i D) L := fun t' ht' => hL t' (by simp [ht'])
    have e : (fun x => ev β n l (t :: L) c x) =
        fun y => ev β n l L c y + (t.co * mu β n t.s t.s' (c l)) • t.Ψ y := by
      funext y; rw [ev_cons, add_comm]
    rw [e, hT.lin _ _ _ (smooth_ev hL' c) (hL t (by simp)) g hg, ih hL']
    simp only [opQ, List.map_cons, ev_cons]
    rw [add_comm]

theorem Rep.qq {i : Fin (r + 1)} {D : Set (Mx k r)} {T : (Mx k r → E) → Mx k r → E} (hT : Qx2.LL k r i D T)
    {Φ : Fn k r E} {L : List (Term k r E)} (h : Rep β n l (Glev k r i ∩ D) Φ L)
    (hL : AllP (SmoothLev k r i D) L) : Rep β n l (Glev k r i ∩ D) (grp T Φ) (opQ T L) := by
  intro c hc g hg
  show T (Φ c) g = _
  rw [hT.loc (Φ c) (fun x => ev β n l L c x) (fun x hx => h c hc x hx) g hg, LL_ev hT hL c hg]

end Rep2

section Chain

variable {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

def capelliCorner11OnTermSums (β : ℂ) (n : ℤ) (T : Fin 2 → Fin 2 → (Mx k r → E) → Mx k r → E) (Y : ℂ) (L : List (Term k r E)) :
    List (Term k r E) :=
  sc (fun _ s' => Y - (β - s')) (opQ (T 0 0) (sc (fun s _ => Y + (β + n - s)) L) ++ opQ (T 0 1) (shS L)) ++
    shS' (opQ (T 1 0) (sc (fun s _ => Y + (β + n - s)) L) ++ opQ (T 1 1) (shS L))

theorem AllP.capelliCorner11OnTermSums {P : (Mx k r → E) → Prop} {L : List (Term k r E)} (h : AllP P L) (β : ℂ) (n : ℤ)
    {T : Fin 2 → Fin 2 → (Mx k r → E) → Mx k r → E} (hT : ∀ a b f, P f → P (T a b f)) (Y : ℂ) :
    AllP P (capelliCorner11OnTermSums β n T Y L) :=
  ((((h.sc _).opQ (hT 0 0)).append (h.shS.opQ (hT 0 1))).sc _).append
    ((((h.sc _).opQ (hT 1 0)).append (h.shS.opQ (hT 1 1))).shS')

theorem Rep.chain {β : ℂ} {n : ℤ} {l : Fin r} {D : Set (Mx k r)} (hD : IsOpen D) (z z' : Fin (2 * r + k + 1) → ℂ)
    (Y : ℂ) {Φ : Fn k r E} {L : List (Term k r E)} (h : Rep β n l (Glev k r l.succ ∩ D) Φ L)
    (hL : AllP (SmoothLev k r l.succ D) L) :
    Rep β n l (Glev k r l.succ ∩ D) (oMul (TLs k l Y) (oMul (QL k r z z' l.succ Y) (TL k l Y)) 0 0 Φ)
      (capelliCorner11OnTermSums β n (tL k r z z' l.succ Y) Y L) := by
  have e : oMul (TLs k l Y) (oMul (QL k r z z' l.succ Y) (TL k l Y)) 0 0 Φ =
      crd (fun f => Y • f - pbOp l f)
        (grp (tL k r z z' l.succ Y 0 0) (crd (fun f => Y • f + pOp l f) Φ) +
          grp (tL k r z z' l.succ Y 0 1) (crd (ciOp l) Φ)) +
      crd (cbiOp l)
        (grp (tL k r z z' l.succ Y 1 0) (crd (fun f => Y • f + pOp l f) Φ) +
          grp (tL k r z z' l.succ Y 1 1) (crd (ciOp l) Φ)) := by
    simp only [oMul, Fin.sum_univ_two]
    rfl
  rw [e]
  have ll := fun a b => Qx2.ll_tL (E := E) (i := l.succ) hD z z' Y a b
  exact ((((h.pp Y).qq (ll 0 0) (hL.sc _)).add (h.ci.qq (ll 0 1) hL.shS)).pb Y).add
    ((((h.pp Y).qq (ll 1 0) (hL.sc _)).add (h.ci.qq (ll 1 1) hL.shS)).cbi)

end Chain

theorem smooth_phi (γ : ℂ) (n : ℤ) :
    ContDiffOn ℝ ∞ (fun x : ℂ => ((‖x‖ : ℝ) : ℂ) ^ (2 * γ) * x ^ n) {c | c ≠ 0} := by
  have h1 : ContDiffOn ℝ ∞ (fun x : ℂ => Complex.exp (γ * ((Real.log (‖x‖ ^ 2) : ℝ) : ℂ))) {c | c ≠ 0} := by
    refine (Complex.contDiff_exp (𝕜 := ℝ)).comp_contDiffOn (contDiffOn_const.mul
      (Complex.ofRealCLM.contDiff.comp_contDiffOn ?_))
    exact (contDiff_norm_sq ℝ).contDiffOn.log fun x hx => pow_ne_zero 2 (norm_ne_zero_iff.2 hx)
  have h2 : ContDiffOn ℝ ∞ (fun x : ℂ => ((‖x‖ : ℝ) : ℂ) ^ (2 * γ)) {c | c ≠ 0} :=
    h1.congr fun x hx => cpow_norm_eq γ hx
  have h3 : ContDiffOn ℝ ∞ (fun x : ℂ => x ^ n) {c | c ≠ 0} := by
    rcases n with m | m
    · simp only [Int.ofNat_eq_natCast, zpow_natCast]
      exact (contDiff_id.pow m).contDiffOn
    · simp only [zpow_negSucc]
      exact (contDiff_id.pow (m + 1)).contDiffOn.inv fun x hx => pow_ne_zero _ hx
  exact h2.mul h3

section W1

open scoped ComplexConjugate

variable {k r : ℕ}

local notation "⟪" u ", " v "⟫" => herm (Hpk k r) u v

lemma Hh : (Hpk k r)ᴴ = Hpk k r := B2x8.Hpk_herm k r

lemma herm_bvec_right (u : Fin (2 * r + k + 1) → ℂ) (j : Fin (2 * r + k + 1)) :
    ⟪u, bvec j⟫ = (Hpk k r *ᵥ u) j := by
  simp [herm, bvec, Pi.star_single]

lemma eI_ne_esI (a b : Fin r) : eI k r a ≠ esI k r b := by
  intro h; have := congrArg Fin.val h; simp only [eI, esI] at this; omega

lemma eI_inj {a b : Fin r} : eI k r a = eI k r b ↔ a = b := by
  exact ⟨fun h => Fin.ext (by simpa [eI] using congrArg Fin.val h), by rintro rfl; rfl⟩

lemma esI_inj {a b : Fin r} : esI k r a = esI k r b ↔ a = b := by
  constructor
  · intro h; have := congrArg Fin.val h; simp only [esI] at this; exact Fin.ext (by omega)
  · rintro rfl; rfl

variable {l : Fin r}

local notation "𝐞" => bvec (eI k r l)
local notation "𝐬" => bvec (esI k r l)

lemma weyl_cell_mem_level_group {c : ℂ} (hc : c ≠ 0) : w1 k r l c ∈ Glev k r l.castSucc := by
  apply PI.IsotropicReflections.reflection_mem_Glev_castSucc <;> assumption

lemma reflection_mul_mem_lower_level {c : ℂ} (hc : c ≠ 0) {g : Mx k r} (hg : g ∈ Glev k r l.succ) :
    w1 k r l c * g ∈ Glev k r l.castSucc := by
  have hw := weyl_cell_mem_level_group (k := k) (r := r) (l := l) hc
  have hlt : ∀ a : Fin r, a.val < l.castSucc.val → a.val < l.succ.val := fun a ha => by
    simp only [Fin.val_castSucc, Fin.val_succ] at *; omega
  exact ⟨B2x8.al_mul_mem hw.1 hg.1, fun a ha =>
    ⟨by rw [← Matrix.mulVec_mulVec, (hg.2 a (hlt a ha)).1, (hw.2 a ha).1],
      by rw [← Matrix.mulVec_mulVec, (hg.2 a (hlt a ha)).2, (hw.2 a ha).2]⟩⟩

end W1

section Generic

theorem AllP.mono {k r : ℕ} {E : Type*} {P Q : (Mx k r → E) → Prop} {L : List (Term k r E)} (h : AllP P L)
    (hPQ : ∀ f, P f → Q f) : AllP Q L := fun t ht => hPQ _ (h t ht)

def xAB {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] (k r : ℕ) (z z' : Fin (2 * r + k + 1) → ℂ)
    (i : Fin (r + 1)) (J : Mx k r → E) (g : Mx k r) (Y Y' : ℂ) (A B : Fin 2 × Fin 2) : E :=
  (Y' - Y) • (tL k r z z' i Y' A.1 B.1 (tL k r z z' i Y A.2 B.2 J) g -
      tL k r z z' i Y A.2 B.2 (tL k r z z' i Y' A.1 B.1 J) g) -
    (tL k r z z' i Y' A.2 B.1 (tL k r z z' i Y A.1 B.2 J) g - tL k r z z' i Y A.2 B.1 (tL k r z z' i Y' A.1 B.2 J) g)

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] [NormedAddCommGroup Wq] [NormedSpace ℂ Wq]

theorem rtt_generic (hCS : ChainStep) (hRS : ResSurj) (hCC : CapCommute) (hTP : TPreservesFF) (hInd : RTTIndependence)
    (k r : ℕ) (l : Fin r) (z z' : Fin (2 * r + k + 1) → ℂ) (π : Mx k r → (Wp →L[ℂ] Wp)) (π' : Mx k r → (Wq →L[ℂ] Wq))
    (D : Set (Mx k r)) (hz : inWb k r z) (hz' : inWb k r z') (hD : IsDom k r z z' l.succ D)
    (J : Mx k r → (Wq →L[ℂ] Wp)) (hJ : J ∈ FFl k r z z' π π' l.succ D) (g : Mx k r) (hg : g ∈ Glev k r l.succ ∩ D)
    (Y Y' : ℂ) (hne : Y' ≠ Y + 1) (A B : Fin 2 × Fin 2) : xAB k r z z' l.succ J g Y Y' A B = 0 := by
  refine hInd (Wq →L[ℂ] Wp) (xAB k r z z' l.succ J g Y Y') Y Y' hne ?_ A B
  intro c₀ hc₀ β n
  obtain ⟨D₀, hD₀, -, hiff, Jt, hJt, hval⟩ := hRS Wp Wq k r z z' π π' l D
    (fun x : ℂ => ((‖x‖ : ℝ) : ℂ) ^ (2 * (β - ((Mdim k r l - 1 : ℕ) : ℂ) / 2)) * x ^ n) J hz hz' hD (smooth_phi _ n) hJ
  have rep0 : Rep β n l (Glev k r l.succ ∩ D) (res1 k r l Jt) [⟨1, 0, 0, J⟩] := by
    intro c hc x hx
    show ((‖c l‖ ^ (Mdim k r l - 1) : ℝ) : ℂ) • Jt (w1 k r l (c l) * x) = _
    rw [hval (c l) (hc l) x hx, smul_smul]
    simp only [ev_cons, ev_nil, add_zero]
    congr 1
    have h0 : ((‖c l‖ : ℝ) : ℂ) ≠ 0 := by exact_mod_cast norm_ne_zero_iff.2 (hc l)
    have e : ((‖c l‖ : ℝ) : ℂ) ^ (2 * β) = ((‖c l‖ : ℝ) : ℂ) ^ (((Mdim k r l - 1 : ℕ)) : ℂ) *
        ((‖c l‖ : ℝ) : ℂ) ^ (2 * (β - ((Mdim k r l - 1 : ℕ) : ℂ) / 2)) := by
      rw [← Complex.cpow_add _ _ h0]; congr 1; ring
    rw [mu, e, Complex.cpow_natCast]
    push_cast
    simp only [pow_zero, inv_one, mul_one, one_mul]
    ring
  have step : ∀ (y : ℂ) (J' : Mx k r → (Wq →L[ℂ] Wp)) (L : List (Term k r (Wq →L[ℂ] Wp))),
      J' ∈ FFl k r z z' π π' l.castSucc D₀ → Rep β n l (Glev k r l.succ ∩ D) (res1 k r l J') L →
      AllP (fun f => f ∈ FFl k r z z' π π' l.succ D) L →
      Rep β n l (Glev k r l.succ ∩ D) (res1 k r l (tL k r z z' l.castSucc y 0 0 J'))
        (capelliCorner11OnTermSums β n (tL k r z z' l.succ y) y L) := by
    intro y J' L hJ' hR hL c hc x hx
    rw [hCS Wp Wq k r z z' π π' l D₀ y 0 0 hz hz' hD₀ J' hJ' c hc x hx.1 ((hiff (c l) (hc l) x hx.1).2 hx.2)]
    exact Rep.chain hD.1 z z' y hR (hL.mono fun f hf => hf.1) c hc x hx
  have all0 : AllP (fun f => f ∈ FFl k r z z' π π' l.succ D) [(⟨1, 0, 0, J⟩ : Term k r (Wq →L[ℂ] Wp))] := by
    intro t ht
    rw [List.mem_singleton] at ht
    subst ht
    exact hJ
  have hP : ∀ (y : ℂ) (a b : Fin 2) (f : Mx k r → (Wq →L[ℂ] Wp)), f ∈ FFl k r z z' π π' l.succ D →
      tL k r z z' l.succ y a b f ∈ FFl k r z z' π π' l.succ D :=
    fun y a b f hf => hTP Wp Wq k r z z' π π' l.succ D y a b hz hz' hD f hf
  have hA : ∀ y : ℂ, tL k r z z' l.castSucc y 0 0 Jt ∈ FFl k r z z' π π' l.castSucc D₀ :=
    fun y => hTP Wp Wq k r z z' π π' l.castSucc D₀ y 0 0 hz hz' hD₀ Jt hJt
  have r1 := step Y' _ _ (hA Y) (step Y Jt _ hJt rep0 all0) (all0.capelliCorner11OnTermSums β n (hP Y) Y)
  have r2 := step Y _ _ (hA Y') (step Y' Jt _ hJt rep0 all0) (all0.capelliCorner11OnTermSums β n (hP Y') Y')
  have hc : (fun _ : Fin r => c₀) ∈ OmX r := fun _ => hc₀
  have hmem : w1 k r l c₀ * g ∈ Glev k r l.castSucc ∩ D₀ :=
    ⟨reflection_mul_mem_lower_level hc₀ hg.1, (hiff c₀ hc₀ g hg.1).2 hg.2⟩
  have comm := hCC (Wq →L[ℂ] Wp) k r l.castSucc D₀ Jt hD₀.1 hJt.1 _ hmem (uC k r l.castSucc Y') (uC k r l.castSucc Y)
  have key := (r1 _ hc g hg).symm.trans ((congrArg (fun v => ((‖c₀‖ ^ (Mdim k r l - 1) : ℝ) : ℂ) • v) comm).trans (r2 _ hc g hg))
  simp only [capelliCorner11OnTermSums, sc, shS, shS', opQ, List.map_cons, List.map_nil, List.cons_append, List.nil_append, ev_cons, ev_nil,
    mu] at key
  simp only [Fintype.sum_prod_type, Fin.sum_univ_two, xAB, Prod.mk.injEq, Fin.isValue, zero_ne_one, one_ne_zero,
    and_true, and_false, ↓reduceIte, Fin.val_zero, Fin.val_one]
  linear_combination (norm := module) (Y' - Y - 1) • key

end Generic

section Cont

open Polynomial in
theorem polyAt_interp {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {N : ℕ} {φ : ℂ → E}
    (h : Qx2.PolyAt N φ) (Y : ℂ) :
    φ Y = ∑ i ∈ Finset.range N,
      (Lagrange.basis (Finset.range N) (fun i : ℕ => (i : ℂ)) i).eval Y • φ (i : ℂ) := by
  obtain ⟨c, hc⟩ := h
  have hinj : Set.InjOn (fun i : ℕ => (i : ℂ)) (Finset.range N) := fun a _ b _ h => Nat.cast_injective h
  have hpow : ∀ j ∈ Finset.range N, Y ^ j = ∑ i ∈ Finset.range N,
      (Lagrange.basis (Finset.range N) (fun i : ℕ => (i : ℂ)) i).eval Y * (i : ℂ) ^ j := by
    intro j hj
    have hdeg : (X ^ j : ℂ[X]).degree < (Finset.range N).card := by
      rw [degree_X_pow, Finset.card_range]; exact_mod_cast Finset.mem_range.1 hj
    have h1 := congrArg (Polynomial.eval Y) (Lagrange.eq_interpolate hinj hdeg)
    simp only [Lagrange.interpolate_apply, eval_finsetSum, eval_mul, eval_C, eval_pow, eval_X] at h1
    rw [h1]
    exact Finset.sum_congr rfl fun i _ => mul_comm _ _
  simp only [hc, Finset.smul_sum, smul_smul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j hj => ?_
  rw [← Finset.sum_smul, ← hpow j hj]

theorem polyAt_continuous {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {N : ℕ} {φ : ℂ → E}
    (h : Qx2.PolyAt N φ) : Continuous φ := by
  obtain ⟨c, hc⟩ := h
  rw [show φ = fun Y => ∑ j ∈ Finset.range N, Y ^ j • c j from funext hc]
  exact continuous_finsetSum _ fun j _ => (continuous_pow j).smul continuous_const

theorem LL_sum {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {i : Fin (r + 1)} {D : Set (Mx k r)}
    {T : (Mx k r → E) → Mx k r → E} (hT : Qx2.LL k r i D T) (a : ℕ → ℂ)
    {c : ℕ → Mx k r → E} (hc : ∀ j, SmoothLev k r i D (c j)) {x : Mx k r} (hx : x ∈ Glev k r i ∩ D) (N : ℕ) :
    T (fun y => ∑ j ∈ Finset.range N, a j • c j y) x = ∑ j ∈ Finset.range N, a j • T (c j) x := by
  induction N with
  | zero =>
    simpa using hT.lin (fun _ => 0) (fun _ => 0) 1 Qx2.smooth_zero Qx2.smooth_zero x hx
  | succ N ih =>
    simp only [Finset.sum_range_succ]
    rw [hT.lin _ _ (a N) (Qx2.smooth_lin_sum a hc N) (hc N) x hx, ih]

variable {k r : ℕ} {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]

theorem polyAt_tL (hLead : Leading) (z z' : Fin (2 * r + k + 1) → ℂ) (i : Fin (r + 1)) (hz : inWb k r z)
    (hz' : inWb k r z') {D : Set (Mx k r)} (hD : IsOpen D) {f : Mx k r → E} (hf : SmoothLev k r i D f)
    {g : Mx k r} (hg : g ∈ Glev k r i ∩ D) (a b : Fin 2) :
    Qx2.PolyAt (mdim k r i + 1) (fun Y => tL k r z z' i Y a b f g) := by
  obtain ⟨A, hA⟩ := hLead E k r z z' i hz hz'
  have h := hA D f hD hf g hg
  have hm : mdim k r i - 1 + 1 = mdim k r i := by unfold mdim; omega
  have low : ∀ p q : Fin 2, Qx2.PolyAt (mdim k r i)
      (fun Y : ℂ => ∑ j ∈ Finset.range (mdim k r i - 1), Y ^ j • A p q j f g) := by
    intro p q
    have h1 : Qx2.PolyAt (mdim k r i - 1 + 1)
        (fun Y : ℂ => ∑ j ∈ Finset.range (mdim k r i - 1), Y ^ j • A p q j f g) :=
      Qx2.PolyAt.succ ⟨fun j => A p q j f g, fun _ => rfl⟩
    rwa [hm] at h1
  have top : ∀ e : E, Qx2.PolyAt (mdim k r i) (fun Y : ℂ => Y ^ (mdim k r i - 1) • e) := by
    intro e
    have h1 := Qx2.polyAt_monomial (mdim k r i - 1) e
    rwa [hm] at h1
  have h00 : Qx2.PolyAt (mdim k r i + 1) (fun Y => tL k r z z' i Y 0 0 f g) :=
    ((Qx2.polyAt_monomial (mdim k r i) (f g)).add
      (Qx2.PolyAt.succ ⟨fun j => A 0 0 j f g, fun _ => rfl⟩)).congr fun Y => (h Y).1
  have h01 : Qx2.PolyAt (mdim k r i + 1) (fun Y => tL k r z z' i Y 0 1 f g) :=
    (((top (zetaL k r z z' i g • f g)).neg.add (low 0 1)).succ).congr fun Y => by
      rw [(h Y).2.1, smul_smul, mul_comm]
  have h10 : Qx2.PolyAt (mdim k r i + 1) (fun Y => tL k r z z' i Y 1 0 f g) :=
    (((top (star (zetaL k r z z' i g) • f g)).neg.add (low 1 0)).succ).congr fun Y => by
      rw [(h Y).2.2.1, smul_smul, mul_comm]
  have h11 : Qx2.PolyAt (mdim k r i + 1) (fun Y => tL k r z z' i Y 1 1 f g) :=
    ((low 1 1).succ).congr fun Y => (h Y).2.2.2
  fin_cases a <;> fin_cases b
  exacts [h00, h01, h10, h11]

theorem cont_inner (hLead : Leading) (z z' : Fin (2 * r + k + 1) → ℂ) (i : Fin (r + 1)) (hz : inWb k r z)
    (hz' : inWb k r z') {D : Set (Mx k r)} (hD : IsOpen D) {f : Mx k r → E} (hf : SmoothLev k r i D f)
    (a b : Fin 2) (hs : ∀ u : ℂ, SmoothLev k r i D (tL k r z z' i u a b f))
    {g : Mx k r} (hg : g ∈ Glev k r i ∩ D) (v : ℂ) (c d : Fin 2) :
    Continuous (fun u => tL k r z z' i v c d (tL k r z z' i u a b f) g) := by
  have ll := Qx2.ll_tL (E := E) (i := i) hD z z' v c d
  have hrep : ∀ u : ℂ, tL k r z z' i v c d (tL k r z z' i u a b f) g =
      ∑ j ∈ Finset.range (mdim k r i + 1),
        (Lagrange.basis (Finset.range (mdim k r i + 1)) (fun j : ℕ => (j : ℂ)) j).eval u •
          tL k r z z' i v c d (tL k r z z' i (j : ℂ) a b f) g := by
    intro u
    rw [ll.loc (tL k r z z' i u a b f) (fun x => ∑ j ∈ Finset.range (mdim k r i + 1),
        (Lagrange.basis (Finset.range (mdim k r i + 1)) (fun j : ℕ => (j : ℂ)) j).eval u •
          tL k r z z' i (j : ℂ) a b f x)
      (fun x hx => polyAt_interp (polyAt_tL hLead z z' i hz hz' hD hf hx a b) u) g hg]
    exact LL_sum ll _ (fun j => hs (j : ℂ)) hg _
  rw [show (fun u => tL k r z z' i v c d (tL k r z z' i u a b f) g) = _ from funext hrep]
  exact continuous_finsetSum _ fun j _ => (Polynomial.continuous _).smul continuous_const

end Cont

theorem upper_from_steps : Formalism.FourierDecayAlt.Q.RTTUpperFromSteps := by
  intro hCS hRS hCC hTP _ _ hInd hLead _ k r l Wp Wq _ _ _ _ z z' π π' D hz hz' hD J hJ g hg u v a b c d
  have hP : ∀ (y : ℂ) (p q : Fin 2), tL k r z z' l.succ y p q J ∈ FFl k r z z' π π' l.succ D :=
    fun y p q => hTP Wp Wq k r z z' π π' l.succ D y p q hz hz' hD J hJ
  have c1 : ∀ (p q p' q' : Fin 2),
      Continuous (fun u' => tL k r z z' l.succ u' p q (tL k r z z' l.succ v p' q' J) g) := fun p q p' q' =>
    polyAt_continuous (polyAt_tL hLead z z' l.succ hz hz' hD.1 (hP v p' q').1 hg p q)
  have c2 : ∀ (p q p' q' : Fin 2),
      Continuous (fun u' => tL k r z z' l.succ v p q (tL k r z z' l.succ u' p' q' J) g) := fun p q p' q' =>
    cont_inner hLead z z' l.succ hz hz' hD.1 hJ.1 p' q' (fun y => (hP y p' q').1) hg v p q
  have hcont : Continuous (fun u' => xAB k r z z' l.succ J g v u' (a, c) (b, d)) :=
    ((continuous_id.sub continuous_const).smul ((c1 a b c d).sub (c2 c d a b))).sub ((c1 c b a d).sub (c2 c b a d))
  have hcl : IsClosed {u' : ℂ | xAB k r z z' l.succ J g v u' (a, c) (b, d) = 0} := isClosed_eq hcont continuous_const
  have hsub : {u' : ℂ | u' ≠ v + 1} ⊆ {u' : ℂ | xAB k r z z' l.succ J g v u' (a, c) (b, d) = 0} := fun u' hu' =>
    rtt_generic hCS hRS hCC hTP hInd k r l z z' π π' D hz hz' hD J hJ g hg v u' hu' (a, c) (b, d)
  have hden : Dense {u' : ℂ | u' ≠ v + 1} := dense_compl_singleton (v + 1)
  have h0 : xAB k r z z' l.succ J g v u (a, c) (b, d) = 0 :=
    (closure_minimal hsub hcl) (hden.closure_eq ▸ Set.mem_univ u)
  exact sub_eq_zero.1 h0

end Formalism.FourierDecayAlt.P.Qx7

namespace Formalism.FourierDecayAlt.P

theorem quantum_determinant_from_rtt : Formalism.FourierDecayAlt.Q.QdetFromRTT := Qx7.qdet_main

theorem rtt_upper_relations_from_descent : Formalism.FourierDecayAlt.Q.RTTUpperFromSteps := Qx7.upper_from_steps

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RttUpperRelationsFromDescent =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementJF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ActualAdjointnessFromHermitian\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellHermitian\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellOpenDomain\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliWordSumExpansion\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DeterminantGeneric\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.InterlaceSignTwo\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsOpenAdelicUnipotentTimesIntegralOutsideSet\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LUFactorOrbitBounds\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LeftTypeAction\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LemmaDDeterminantIdentity\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ModelLevelMultiplier\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OperatorPreservesFusionForms\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.QxChain\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.QxPIRttLevel\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RttUpperRelationsFromDescent\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SandwichRhoAction\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothWordsAll\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.WordKeyIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

theorem jacquet_derivative_formula : Formalism.FourierDecayAlt.JF.JWords :=
  bessel_words_of_domain bessel_integral_domain

theorem jacquet_smooth_coordinates : Formalism.FourierDecayAlt.JF.JqSmooth :=
  bessel_smooth_of_parts jacquet_derivative_formula big_cell_domain

theorem casimir_under_jacquet_integral : Formalism.FourierDecayAlt.JF.CVUnderInt :=
  capelli_under_integral_of_parts jacquet_derivative_formula capelli_word_sum rewrite_rho_action

theorem right_transfer_upper_levels : Formalism.FourierDecayAlt.Q.RTTUpper :=
  rtt_upper_relations_from_descent chain_descent_relation resSurj_statement capelli_commutation operator_preserves_fusion_forms
    transfer_triples rtt_sandwich rtt_independence leading_term_alt transfer_linear_local

theorem right_transfer_all_levels : Formalism.FourierDecayAlt.Q.RTTLevel :=
  rtt_level_from_upper right_transfer_upper_levels level_transfer level_group_image flag_frame_transfer
    transfer_linear_local

namespace JacquetIntegral

theorem detCore : Formalism.FourierDecayAlt.Q.DetAt fun P => Fin.last P.r :=
  determinant_capelli_from_descent right_transfer_all_levels quantum_determinant_from_rtt determinant_hat right_type_action
    left_type_action operator_preserves_fusion_forms transfer_linear_local

end JacquetIntegral

theorem actual_operators_exist : Formalism.FourierDecayAlt.Q.ActualOpsExist :=
  actual_operators_from_parts operator_preserves_fusion_forms transfer_linear_local transfer_joint_smooth radial_operators

theorem actual_adjointness : Formalism.FourierDecayAlt.Q.ActualAdjoint :=
  actual_adjointness_from_hermitian _root_.qnHermHaar

theorem actual_start : Formalism.FourierDecayAlt.Q.ActualStart :=
  actual_start_from_level_starts right_transfer_all_levels JacquetIntegral.detCore transfer_linear_local

namespace JacquetIntegral

theorem normalFormActual_of_fromModule (h : Formalism.FourierDecayAlt.Q.NormalFormFromModule) : Formalism.FourierDecayAlt.Q.NormalFormActual :=
  h actual_start zeta_commutes leading_term_alt spectral_two_by_two actual_operators_exist

theorem levelStartActual_of_normalForm (h : Formalism.FourierDecayAlt.Q.NormalFormActual) : Formalism.FourierDecayAlt.Q.LevelStartActual :=
  level_start_from_normal_form h actual_start model_is_normal_form interlace_sign_two

theorem levelStartActual_of_fromModule (h : Formalism.FourierDecayAlt.Q.NormalFormFromModule) : Formalism.FourierDecayAlt.Q.LevelStartActual :=
  levelStartActual_of_normalForm (normalFormActual_of_fromModule h)

end JacquetIntegral

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet =====
