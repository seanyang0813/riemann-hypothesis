module

public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.GenericBlockMatrixIsBlockDiag
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.BlockDiagonalMinorVanishing
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.TransPtBase
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
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.AnalyticForms.LeviForms.IsRegFamilyInhabitStatement
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.IsFieldIntersection
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.RationalSections.IsRatSectionOn
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagModelBaseProjectionPoints

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.MetricProofs.BlockMinorSumFrameIdentity, Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagCoverFramesPullback

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.BlockMinorSumFrameIdentity =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MetricProofs.BlockMinorSumFrameIdentity", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.GenericBlockMatrixIsBlockDiag\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BlockDiagonalMinorVanishing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Proofs.MetricProofs.TransPtBase\nimport ReciprocityTheory.AnalyticForms.LeviForms.IsRegFamilyInhabitStatement\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.IsFieldIntersection\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.RationalSections.IsRatSectionOn\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial MeasureTheory Filter Topology Matrix ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M ReciprocityTheory.AnForm.P ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I2 ReciprocityTheory.ChartRestriction.G.AI.I4 GlobalTheory.CompanionTheory.Ar.PB GroundTheory.Heights₂.Heights GroundTheory.Heights₂.Heights.LowerBoundFree
open scoped ComplexOrder Classical
open GlobalTheory.CompanionTheory.Ar.PB.CovGraph

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.PB.CovGraph.FrameExt

section Minors

variable {R : Type} [CommRing R] {S : Type} [CommRing S] {N : ℕ}

theorem minorIJ_map (ρ : R →+* S) (T : Matrix (Fin N) (Fin N) R) (I J : Finset (Fin N)) :
    minorIJ (T.map ρ) I J = ρ (minorIJ T I J) := by
  unfold minorIJ
  split_ifs with e
  · rw [RingHom.map_det]
    rfl
  · simp

theorem detFac_map (ρ : R →+* S) (j : ℕ) (i : Fin N) (T : Matrix (Fin N) (Fin N) R) :
    detFac j i (T.map ρ) = ρ (detFac j i T) := by
  unfold detFac
  simp only [minorIJ_map, map_mul]
  split_ifs <;> simp

def moveMat (R : Type) [CommRing R] (I C : Finset (Fin N)) (e : I.card = C.card) : Matrix (Fin N) (Fin N) R :=
  fun a b => ∑ t : Fin C.card, if a = I.orderEmbOfFin e t ∧ b = C.orderEmbOfFin rfl t then 1 else 0

theorem moveMat_apply (I C : Finset (Fin N)) (e : I.card = C.card) (s t : Fin C.card) :
    moveMat R I C e (I.orderEmbOfFin e s) (C.orderEmbOfFin rfl t) = if s = t then 1 else 0 := by
  unfold moveMat
  rw [Finset.sum_eq_single t]
  · simp
  · intro t' _ h
    rw [if_neg]
    rintro ⟨-, h2⟩
    exact h ((C.orderEmbOfFin rfl).injective h2).symm
  · simp

theorem moveMat_eq_zero (I C : Finset (Fin N)) (e : I.card = C.card) {a b : Fin N}
    (h : ¬ (a ∈ I ∧ b ∈ C)) : moveMat R I C e a b = 0 := by
  unfold moveMat
  refine Finset.sum_eq_zero fun t _ => if_neg ?_
  rintro ⟨rfl, rfl⟩
  exact h ⟨Finset.orderEmbOfFin_mem _ _ _, Finset.orderEmbOfFin_mem _ _ _⟩

theorem moveMat_blockDiag (j : ℕ) (I C : Finset (Fin N)) (e : I.card = C.card)
    (h : ∀ a ∈ I, ∀ b ∈ C, ((a : ℕ) < N - j ↔ (b : ℕ) < N - j)) : IsBlockDiag j (moveMat R I C e) :=
  fun a b hab => moveMat_eq_zero I C e fun hm => hab (h a hm.1 b hm.2)

theorem minorIJ_moveMat (I C I' : Finset (Fin N)) (e : I.card = C.card) :
    minorIJ (moveMat R I C e) I' C = if I' = I then 1 else 0 := by
  by_cases hI : I' = I
  · subst hI
    rw [if_pos rfl]
    unfold minorIJ
    rw [dite_eq_left e]
    have : (moveMat R I' C e).submatrix (I'.orderEmbOfFin e) (C.orderEmbOfFin rfl) = 1 := by
      ext s t
      rw [Matrix.submatrix_apply, moveMat_apply, Matrix.one_apply]
    rw [this, det_one]
  · rw [if_neg hI]
    unfold minorIJ
    split_ifs with e'
    · have hex : ∃ a ∈ I', a ∉ I := by
        by_contra hc
        push_neg at hc
        exact hI (Finset.eq_of_subset_of_card_le hc (by rw [e, e']))
      obtain ⟨a, ha, haI⟩ := hex
      have hr : a ∈ Set.range (I'.orderEmbOfFin e') := by
        rw [Finset.range_orderEmbOfFin]
        exact ha
      obtain ⟨s, rfl⟩ := hr
      refine det_eq_zero_of_row_eq_zero s fun t => ?_
      rw [Matrix.submatrix_apply]
      exact moveMat_eq_zero I C e fun hm => haI hm.1
    · rfl

theorem stepRows_same (j : ℕ) (hj : j ≤ N) (i : Fin N) {I : Finset (Fin N)} (hI : IsStepRows N j i I) :
    ∀ a ∈ I, ∀ b ∈ stepCols N j i, ((a : ℕ) < N - j ↔ (b : ℕ) < N - j) := by
  intro a ha b hb
  have hi := i.2
  have ha' := hI.2 ha
  simp only [stepCols, Finset.mem_filter, Finset.mem_univ, true_and] at hb
  by_cases c : (i : ℕ) + 1 ≤ j
  · rw [if_pos c] at ha' hb
    simp only [wIdx, Finset.mem_filter, Finset.mem_univ, true_and] at ha'
    omega
  · rw [if_neg c] at ha' hb
    simp only [omIdx, Finset.mem_filter, Finset.mem_univ, true_and] at ha'
    omega

theorem stepCols_nonempty (j : ℕ) (hj : j ≤ N) (i : Fin N) (hp : IsProperStep N j i) :
    stepCols N j i ≠ ∅ := by
  have hi := i.2
  obtain ⟨h1, h2⟩ := hp
  by_cases c : (i : ℕ) + 1 ≤ j
  · refine Finset.Nonempty.ne_empty ⟨⟨N - j, by omega⟩, ?_⟩
    simp only [stepCols, Finset.mem_filter, Finset.mem_univ, true_and]
    rw [if_pos c]
    omega
  · refine Finset.Nonempty.ne_empty ⟨⟨0, by omega⟩, ?_⟩
    simp only [stepCols, Finset.mem_filter, Finset.mem_univ, true_and]
    rw [if_neg c]
    omega

theorem coeff_eq (j : ℕ) (hj : j ≤ N) (i : Fin N) (T : Matrix (Fin N) (Fin N) R) (c u : Finset (Fin N) → R) (D P : R)
    (H : ∀ h : Matrix (Fin N) (Fin N) R, IsBlockDiag j h →
      D * ∑ I, c I * minorIJ (T * h) I (stepCols N j i) = P * ∑ I, u I * minorIJ h I (stepCols N j i))
    (I₀ : Finset (Fin N)) (hI : IsStepRows N j i I₀) :
    D * ∑ I, c I * minorIJ T I I₀ = P * u I₀ := by
  have h1 := H (moveMat R I₀ (stepCols N j i) hI.1) (moveMat_blockDiag j _ _ _ (stepRows_same j hj i hI))
  have cb := (_root_.GlobalTheory.CompanionTheory.Ar.PB.MinorCalc.minors_main R N j i hj).1
  simp only [cb, minorIJ_moveMat, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true] at h1
  exact h1

theorem map_identity (j : ℕ) (hj : j ≤ N) (i : Fin N) (hC : stepCols N j i ≠ ∅) (T : Matrix (Fin N) (Fin N) R)
    (c u : Finset (Fin N) → R) (D P : R)
    (H : ∀ h : Matrix (Fin N) (Fin N) R, IsBlockDiag j h →
      D * ∑ I, c I * minorIJ (T * h) I (stepCols N j i) = P * ∑ I, u I * minorIJ h I (stepCols N j i))
    (ρ : R →+* S) (h : Matrix (Fin N) (Fin N) S) (hh : IsBlockDiag j h) :
    ρ D * ∑ I, ρ (c I) * minorIJ (T.map ρ * h) I (stepCols N j i) =
      ρ P * ∑ I, ρ (u I) * minorIJ h I (stepCols N j i) := by
  have cb := (_root_.GlobalTheory.CompanionTheory.Ar.PB.MinorCalc.minors_main S N j i hj).1
  have l : ρ D * ∑ I, ρ (c I) * minorIJ (T.map ρ * h) I (stepCols N j i) =
      ∑ I', ρ (D * ∑ I, c I * minorIJ T I I') * minorIJ h I' (stepCols N j i) := by

    simp only [cb, minorIJ_map, map_mul, map_sum, Finset.mul_sum, Finset.sum_mul]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring
  have r : ρ P * ∑ I, ρ (u I) * minorIJ h I (stepCols N j i) =
      ∑ I', ρ (P * u I') * minorIJ h I' (stepCols N j i) := by
    simp only [map_mul, Finset.mul_sum]
    exact Finset.sum_congr rfl fun _ _ => by ring
  rw [l, r]
  refine Finset.sum_congr rfl fun I' _ => ?_
  by_cases hI : IsStepRows N j i I'
  · rw [coeff_eq j hj i T c u D P H I' hI]
  · rw [((_root_.GlobalTheory.CompanionTheory.Ar.PB.MinorCalc.minors_main S N j i hj).2.1 h I' hh hI).resolve_right hC, mul_zero, mul_zero]

end Minors

theorem frame_identity_map : ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Φ : Type) [Field Φ] (y : (Σ k, ι k) → Φ) (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N j : ℕ) (M : FlagModel y Ψ N j) (S : Type) [CommRing S] (ρ : M.Ω →+* S) (F : FrameData ι Ψ N M.Ω M.blk), M.IsFrame F → ∀ (p : Ψ × Fin N) (k : K), M.blk p = some k → ∀ (m : ι k) (h : Matrix (Fin N) (Fin N) S), IsBlockDiag j h → detFac j p.2 ((F.T p.1).map ρ) * ∑ I, ρ (M.coef ⟨k, m⟩ I) * minorIJ ((F.T p.1).map ρ * h) I (stepCols N j p.2) = ρ (∏ k', M.x ⟨k', F.c k'⟩ ^ M.b p k') * ∑ I, ρ (F.u ⟨k, m⟩ I) * minorIJ h I (stepCols N j p.2) := by
  intro K _ ι _ Φ _ y Ψ _ _ N j M S _ ρ F hF p k hp m h hh
  have hprop : IsProperStep N j p.2 := by
    by_contra hc
    rw [(M.blk_none p).2 hc] at hp
    exact absurd hp (by simp)
  rw [detFac_map]
  exact map_identity j M.j_le p.2 (stepCols_nonempty j M.j_le p.2 hprop) (F.T p.1) _ _ _ _
    (fun h' hh' => hF.2.1 p k hp m h' hh') ρ h hh

end GlobalTheory.CompanionTheory.Ar.PB.CovGraph.FrameExt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.BlockMinorSumFrameIdentity =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagCoverFramesPullback =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagCoverFramesPullback", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.TransPtBase\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.GenericBlockMatrixIsBlockDiag\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BlockDiagonalMinorVanishing\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BlockMinorSumFrameIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagModelBaseProjectionPoints\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial MeasureTheory Filter Topology Matrix ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M ReciprocityTheory.AnForm.P ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I2 ReciprocityTheory.ChartRestriction.G.AI.I4 GlobalTheory.CompanionTheory.Ar.PB GroundTheory.Heights₂.Heights GroundTheory.Heights₂.Heights.LowerBoundFree
open scoped ComplexOrder Classical
open GlobalTheory.CompanionTheory.Ar.PB.CovGraph

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.PB.CovGraph.StepExpr

section Minors

variable {R S : Type} [CommRing R] [CommRing S] {N : ℕ}

theorem minor_map (f : R →+* S) (A : Matrix (Fin N) (Fin N) R) (I J : Finset (Fin N)) :
    minorIJ (A.map f) I J = f (minorIJ A I J) := by
  unfold minorIJ
  split_ifs with e
  · rw [RingHom.map_det]; rfl
  · rw [map_zero]

theorem stepCols_ne_empty (j : ℕ) (i : Fin N) : stepCols N j i ≠ ∅ := by
  have hi := i.2
  apply Finset.Nonempty.ne_empty
  by_cases h : (i : ℕ) + 1 ≤ j
  · exact ⟨⟨N - j, by omega⟩, by simp [stepCols, h]; omega⟩
  · exact ⟨⟨0, by omega⟩, by simp [stepCols, h]; omega⟩

theorem det_map_ne {A B : Type} [Field A] [Field B] (f : A →+* B) {T : Matrix (Fin N) (Fin N) A} (hd : T.det ≠ 0) :
    (T.map f).det ≠ 0 := by
  rw [← RingHom.mapMatrix_apply, ← RingHom.map_det]
  exact (map_ne_zero f).2 hd

theorem inv_map' {A B : Type} [Field A] [Field B] (f : A →+* B) {T : Matrix (Fin N) (Fin N) A} (hd : T.det ≠ 0) :
    (T⁻¹).map f = (T.map f)⁻¹ := by
  refine (Matrix.inv_eq_right_inv ?_).symm
  rw [← Matrix.map_mul, Matrix.mul_nonsing_inv _ (isUnit_iff_ne_zero.2 hd)]
  exact Matrix.map_one _ (map_zero f) (map_one f)

end Minors

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {Φ : Type} [Field Φ] {y : (Σ k, ι k) → Φ}
  {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N j : ℕ}

theorem flag_in_frame_blockDiag {E : Type} [Field E] {T g : Matrix (Fin N) (Fin N) E}
    (hT : IsBlockDiag j T) (hd : T.det ≠ 0) (hg : IsBlockDiag j g) : IsBlockDiag j (T⁻¹ * g) :=
  (hT.inv (isUnit_iff_ne_zero.2 hd)).mul hg

theorem read_minor (M : FlagModel y Ψ N j) (F : FrameData ι Ψ N M.Ω M.blk) (hF : M.IsFrame F)
    (p : Ψ × Fin N) (k : K) (hk : M.blk p = some k) (I' : Finset (Fin N)) (hI' : IsStepRows N j p.2 I') :
    detFac j p.2 ((F.T p.1).map (algebraMap M.Ω Φ)) *
        ∑ m : ι k, algebraMap M.Ω Φ (F.u' I' ⟨k, m⟩) * y ⟨k, m⟩ =
      algebraMap M.Ω Φ (∏ k', M.x ⟨k', F.c k'⟩ ^ M.b p k') *
        minorIJ (((F.T p.1).map (algebraMap M.Ω Φ))⁻¹ * M.g p.1) I' (stepCols N j p.2) := by
  set α : M.Ω →+* Φ := algebraMap M.Ω Φ with hα
  set T := (F.T p.1).map α with hTdef
  have hdet : T.det ≠ 0 := det_map_ne α (hF.1 p.1).2
  have hTb : IsBlockDiag j T := (hF.1 p.1).1.map α
  set h := T⁻¹ * M.g p.1 with hh
  have hb : IsBlockDiag j h := flag_in_frame_blockDiag hTb hdet (M.g_block p.1)
  have hTh : T * h = M.g p.1 := by
    rw [hh, Matrix.mul_nonsing_inv_cancel_left _ _ (isUnit_iff_ne_zero.2 hdet)]
  have hy : ∀ m : ι k, detFac j p.2 T * y ⟨k, m⟩ =
      α (∏ k', M.x ⟨k', F.c k'⟩ ^ M.b p k') * ∑ I, α (F.u ⟨k, m⟩ I) * minorIJ h I (stepCols N j p.2) := fun m => by
    have := _root_.GlobalTheory.CompanionTheory.Ar.PB.CovGraph.FrameExt.frame_identity_map K ι Φ y Ψ N j M Φ α F hF p k hk m h hb
    rw [← hTdef, hTh] at this
    rw [M.y_step p k hk m]
    exact this
  have hv : ∀ I, ¬ IsStepRows N j p.2 I → minorIJ h I (stepCols N j p.2) = 0 := fun I hI =>
    ((_root_.GlobalTheory.CompanionTheory.Ar.PB.MinorCalc.minors_main Φ N j p.2 M.j_le).2.1 h I hb hI).resolve_right (stepCols_ne_empty j p.2)
  calc detFac j p.2 T * ∑ m : ι k, α (F.u' I' ⟨k, m⟩) * y ⟨k, m⟩
      = ∑ m : ι k, α (F.u' I' ⟨k, m⟩) * (detFac j p.2 T * y ⟨k, m⟩) := by
        rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun m _ => by ring
    _ = α (∏ k', M.x ⟨k', F.c k'⟩ ^ M.b p k') * ∑ I, (∑ m : ι k, α (F.u' I' ⟨k, m⟩) * α (F.u ⟨k, m⟩ I)) *
          minorIJ h I (stepCols N j p.2) := by
        simp only [hy, Finset.mul_sum, Finset.sum_mul]
        rw [Finset.sum_comm]
        exact Finset.sum_congr rfl fun I _ => Finset.sum_congr rfl fun m _ => by ring
    _ = _ := by
        congr 1
        have hs : ∀ I, IsStepRows N j p.2 I → ∑ m : ι k, α (F.u' I' ⟨k, m⟩) * α (F.u ⟨k, m⟩ I) = if I' = I then 1 else 0 := fun I hI => by
          have := hF.2.2.1 p k hk I' I hI' hI

          simp only [← map_mul, ← map_sum, this]
          split_ifs <;> simp
        rw [Finset.sum_eq_single I' (fun I _ hne => ?_) (by simp), hs I' hI', if_pos rfl, one_mul]
        by_cases hI : IsStepRows N j p.2 I
        · rw [hs I hI, if_neg (Ne.symm hne), zero_mul]
        · rw [hv I hI, mul_zero]

theorem transPt_eq_smul_sum : ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Φ : Type) [Field Φ] (y : (Σ k, ι k) → Φ) (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N j : ℕ) (M : FlagModel y Ψ N j) (K' : Type) [Fintype K'] (ι' : K' → Type) [∀ k, Fintype (ι' k)] (Φ' : Type) [Field Φ'] (y' : (Σ k, ι' k) → Φ') (M' : FlagModel y' Ψ N j) (Cv : FlagCover M' M) (F' : FrameData ι' Ψ N M'.Ω M'.blk) (F : FrameData ι Ψ N M.Ω M.blk), M'.IsFrame F' → M.IsFrame F → (∀ k, M'.x ⟨k, F'.c k⟩ ≠ 0) → (∀ k, M.x ⟨k, F.c k⟩ ≠ 0) → ∀ (p : Ψ × Fin N) (k : K) (k' : K'), M.blk p = some k → M'.blk p = some k' → ∃ c : Φ', c ≠ 0 ∧ ∀ m : ι k, transPt Cv ⟨k, m⟩ = c * ∑ m' : ι' k', algebraMap M'.Ω Φ' (coE Cv F' F p ⟨k, m⟩ ⟨k', m'⟩) * y' ⟨k', m'⟩ := by
  intro K _ ι _ Φ _ y Ψ _ _ N j M K' _ ι' _ Φ' _ y' M' Cv F' F hF' hF hc' hc p k k' hk hk'
  set α : M'.Ω →+* Φ' := algebraMap M'.Ω Φ' with hα
  set ρ : M.Ω →+* Φ' := α.comp Cv.φ with hρ
  set T' := (F'.T p.1).map α with hT'
  set T := (F.T p.1).map ρ with hT
  have hdetφ : ((F.T p.1).map Cv.φ).det ≠ 0 := det_map_ne Cv.φ (hF.1 p.1).2
  have hdet' : T'.det ≠ 0 := det_map_ne α (hF'.1 p.1).2
  have hdet : T.det ≠ 0 := det_map_ne ρ (hF.1 p.1).2
  have hTb' : IsBlockDiag j T' := (hF'.1 p.1).1.map α
  have hTb : IsBlockDiag j T := (hF.1 p.1).1.map ρ
  set h' := T'⁻¹ * M'.g p.1 with hh'
  set h₀ := T⁻¹ * M'.g p.1 with hh₀
  have hb' : IsBlockDiag j h' := flag_in_frame_blockDiag hTb' hdet' (M'.g_block p.1)
  have hb₀ : IsBlockDiag j h₀ := flag_in_frame_blockDiag hTb hdet (M'.g_block p.1)
  have hTh₀ : T * h₀ = M'.g p.1 := by
    rw [hh₀, Matrix.mul_nonsing_inv_cancel_left _ _ (isUnit_iff_ne_zero.2 hdet)]
  have hμ' : α (∏ k'', M'.x ⟨k'', F'.c k''⟩ ^ M'.b p k'') ≠ 0 :=
    (map_ne_zero α).2 (Finset.prod_ne_zero_iff.2 fun k'' _ => zpow_ne_zero _ (hc' k''))
  have hμ : ρ (∏ k'', M.x ⟨k'', F.c k''⟩ ^ M.b p k'') ≠ 0 :=
    (map_ne_zero ρ).2 (Finset.prod_ne_zero_iff.2 fun k'' _ => zpow_ne_zero _ (hc k''))
  have hd' : detFac j p.2 T' ≠ 0 := _root_.GlobalTheory.CompanionTheory.Ar.PB.CPts.detFac_ne_zero M'.j_le p.2 hTb' hdet'
  have hd : detFac j p.2 T ≠ 0 := _root_.GlobalTheory.CompanionTheory.Ar.PB.CPts.detFac_ne_zero M.j_le p.2 hTb hdet
  set μ' := α (∏ k'', M'.x ⟨k'', F'.c k''⟩ ^ M'.b p k'') with hμ'def
  set μ := ρ (∏ k'', M.x ⟨k'', F.c k''⟩ ^ M.b p k'') with hμdef
  set d' := detFac j p.2 T' with hd'def
  set d := detFac j p.2 T with hddef
  have hread : ∀ I', IsStepRows N j p.2 I' → minorIJ h' I' (stepCols N j p.2) =
      d' / μ' * ∑ m' : ι' k', α (F'.u' I' ⟨k', m'⟩) * y' ⟨k', m'⟩ := fun I' hI' => by
    have := read_minor M' F' hF' p k' hk' I' hI'
    rw [div_mul_eq_mul_div, eq_div_iff hμ', mul_comm]
    exact this.symm
  have hv : ∀ I, ¬ IsStepRows N j p.2 I → minorIJ h' I (stepCols N j p.2) = 0 := fun I hI =>
    ((_root_.GlobalTheory.CompanionTheory.Ar.PB.MinorCalc.minors_main Φ' N j p.2 M'.j_le).2.1 h' I hb' hI).resolve_right (stepCols_ne_empty j p.2)
  have hmat : h₀ = (trMat Cv F' F p.1).map α * h' := by
    have e : ((F.T p.1).map Cv.φ).map α = T := Matrix.ext fun _ _ => rfl
    rw [trMat, Matrix.map_mul, inv_map' α hdetφ, e, ← hT', hh', Matrix.mul_assoc,
      Matrix.mul_nonsing_inv_cancel_left _ _ (isUnit_iff_ne_zero.2 hdet')]
  have e3 : ∀ I, minorIJ h₀ I (stepCols N j p.2) =
      ∑ I' ∈ Finset.univ.filter (IsStepRows N j p.2),
        α (minorIJ (trMat Cv F' F p.1) I I') * minorIJ h' I' (stepCols N j p.2) := fun I => by
    rw [hmat, (_root_.GlobalTheory.CompanionTheory.Ar.PB.MinorCalc.minors_main Φ' N j p.2 M'.j_le).1]
    simp only [minor_map]
    refine (Finset.sum_subset (Finset.filter_subset _ _) fun I' _ hI' => ?_).symm
    rw [hv I' (by simpa using hI'), mul_zero]
  have e1 : ∀ m : ι k, d * transPt Cv ⟨k, m⟩ =
      μ * ∑ I, α (Cv.φ (F.u ⟨k, m⟩ I)) * minorIJ h₀ I (stepCols N j p.2) := fun m => by
    have := _root_.GlobalTheory.CompanionTheory.Ar.PB.CovGraph.FrameExt.frame_identity_map K ι Φ y Ψ N j M Φ' ρ F hF p k hk m h₀ hb₀
    rw [← hT, hTh₀] at this
    rw [transPt_step Cv p k hk m]
    exact this
  refine ⟨μ / d * (d' / μ'), mul_ne_zero (div_ne_zero hμ hd) (div_ne_zero hd' hμ'), fun m => ?_⟩
  have htr : transPt Cv ⟨k, m⟩ = μ / d * ∑ I, α (Cv.φ (F.u ⟨k, m⟩ I)) * minorIJ h₀ I (stepCols N j p.2) := by
    rw [div_mul_eq_mul_div, eq_div_iff hd, mul_comm]
    exact e1 m
  have hR : ∑ m' : ι' k', α (coE Cv F' F p ⟨k, m⟩ ⟨k', m'⟩) * y' ⟨k', m'⟩ =
      ∑ I, ∑ I' ∈ Finset.univ.filter (IsStepRows N j p.2),
        α (Cv.φ (F.u ⟨k, m⟩ I)) * α (minorIJ (trMat Cv F' F p.1) I I') *
          ∑ m' : ι' k', α (F'.u' I' ⟨k', m'⟩) * y' ⟨k', m'⟩ := by

    simp only [coE, map_sum, map_mul, Finset.sum_mul, Finset.mul_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun I _ => ?_
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun I' _ => Finset.sum_congr rfl fun m' _ => by ring
  rw [htr, mul_assoc, hR]
  congr 1
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun I _ => ?_
  rw [e3 I, Finset.mul_sum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun I' hI' => ?_
  rw [hread I' (Finset.mem_filter.1 hI').2]
  ring

end GlobalTheory.CompanionTheory.Ar.PB.CovGraph.StepExpr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagCoverFramesPullback =====
