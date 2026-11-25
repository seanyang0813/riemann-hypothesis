module

public import Formalism.LocalToGlobal.Columns.StdLatUnimodular
public import Formalism.LocalToGlobal.IndefiniteReal.DatumVec
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ToEAfMulIncAMemOfIsIdemSum
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitEmbeddingValuedEqIntValuationInteger
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ConjPrincipalFractionalIntegralIdempotentSum
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsEqMulOfResSNeOne
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.TameHeckeIntegralUnitsEqResidueCharProduct
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl
import Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem
import Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IdempotentSumIntegralDivUniformisersIffReduction, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IdempotentSumIntegralDivUniformisersIffReductionStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IdempotentSumIntegralDivUniformisersIffReduction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IdempotentSumIntegralDivUniformisersIffReduction", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.StdLatUnimodular\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ToEAfMulIncAMemOfIsIdemSum\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitEmbeddingValuedEqIntValuationInteger\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ConjPrincipalFractionalIntegralIdempotentSum\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsEqMulOfResSNeOne\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.TameHeckeIntegralUnitsEqResidueCharProduct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem\nimport Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.ConjTwist GlobalTheory.GalTw ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Classical
namespace GlobalTheory.IdemKerDiv

theorem intAt_inv_mul {E : Type} [Field E] [NumberField E] (P : HeightOneSpectrum (𝓞 E))
    {ϖ p : 𝓞 E} (hϖ : ϖ ∈ P.asIdeal) (hϖ2 : ϖ ∉ P.asIdeal ^ 2) (hp : p ∈ P.asIdeal) :
    Formalism.L2.Col.IntAt P ((ϖ : E)⁻¹ * (p : E)) := by
  have hϖ0 : ϖ ≠ 0 := by rintro rfl; exact hϖ2 (Ideal.zero_mem _)
  obtain ⟨J, hJ⟩ : P.asIdeal ∣ Ideal.span {ϖ} :=
    Ideal.dvd_iff_le.mpr ((Ideal.span_singleton_le_iff_mem _).mpr hϖ)
  have hJP : ¬ J ≤ P.asIdeal := by
    intro h
    apply hϖ2
    have : Ideal.span {ϖ} ≤ P.asIdeal ^ 2 := by
      rw [hJ, pow_two]; exact Ideal.mul_mono_right h
    exact this (Ideal.mem_span_singleton_self ϖ)
  obtain ⟨s, hsJ, hsP⟩ := Set.not_subset.mp hJP
  have hsp : s * p ∈ Ideal.span {ϖ} := by
    rw [hJ, mul_comm s p]; exact Ideal.mul_mem_mul hp hsJ
  obtain ⟨r, hr⟩ := Ideal.mem_span_singleton'.mp hsp
  refine ⟨r, s, hsP, ?_⟩
  have hϖE : (ϖ : E) ≠ 0 := by exact_mod_cast hϖ0
  have h1 : (r : E) * (ϖ : E) = (s : E) * (p : E) := by exact_mod_cast hr
  show (s : E) * ((ϖ : E)⁻¹ * (p : E)) = (r : E)
  field_simp
  linear_combination -h1



theorem integral_div_iff : ∀ (D : D7) (Q : Finset (Pl D.host.E)) (es : Pl D.host.E → AE D) (ϖ : Pl D.host.E → 𝓞 D.host.E), (∀ PP ∈ Q, Formalism.L2.NTheta.IsIdemAt (es PP) PP) → (∑ PP ∈ Q, es PP) * cA D (∑ PP ∈ Q, es PP) = 0 → (∀ PP ∈ Q, ϖ PP ∈ PP.asIdeal ∧ ϖ PP ∉ PP.asIdeal ^ 2) → ∀ N : EAf D, ∀ hN : N ∈ Formalism.L2.Herm.intAf D.host.F D.host.E, toEAf D (∑ PP ∈ Q, es PP) * N = N → (toEAf D (∑ PP ∈ Q, es PP * incA D ((ϖ PP : D.host.E)⁻¹)) * N ∈ Formalism.L2.Herm.intAf D.host.F D.host.E ↔ ∀ PP ∈ Q, resS D.host.F PP ⟨N, hN⟩ = 0) := by
  intro D Q es ϖ hid horth hϖ N hN hfix
  have hE : ∀ P ∈ Q, toEAf D (es P) ∈ Formalism.L2.Herm.intAf D.host.F D.host.E :=
    fun P hP => (GlobalTheory.IdemRes.resS_idem_eq_one D (es P) P (hid P hP)).1
  have hϖ0 : ∀ P ∈ Q, ((ϖ P : 𝓞 D.host.E) : D.host.E) ≠ 0 := by
    intro P hP h
    have : ϖ P = 0 := by exact_mod_cast h
    exact (hϖ P hP).2 (this ▸ Ideal.zero_mem _)
  have hmul : ∀ P ∈ Q, ∀ P' ∈ Q, es P * es P' = if P = P' then es P else 0 := by
    intro P hP P' hP'
    split_ifs with h
    · subst h; exact (hid P hP).1.1
    · exact GlobalTheory.SplitIdeleModulus.idemAt_mul_eq_zero (hid P hP) (hid P' hP') h
  have hpp : (∑ P ∈ Q, es P * incA D ((ϖ P : D.host.E))) *
      (∑ P ∈ Q, es P * incA D ((ϖ P : D.host.E)⁻¹)) = ∑ P ∈ Q, es P := by
    rw [Finset.sum_mul_sum]
    apply Finset.sum_congr rfl
    intro P hP
    rw [Finset.sum_eq_single P]
    · calc es P * incA D (ϖ P : D.host.E) * (es P * incA D ((ϖ P : D.host.E))⁻¹)
            = (es P * es P) * incA D ((ϖ P : D.host.E) * (ϖ P : D.host.E)⁻¹) := by
              rw [map_mul]; ring
          _ = es P := by rw [(hid P hP).1.1, mul_inv_cancel₀ (hϖ0 P hP), map_one, mul_one]
    · intro P' hP' hne
      calc es P * incA D (ϖ P : D.host.E) * (es P' * incA D ((ϖ P' : D.host.E))⁻¹)
            = (es P * es P') * incA D ((ϖ P : D.host.E) * (ϖ P' : D.host.E)⁻¹) := by
              rw [map_mul]; ring
          _ = 0 := by rw [hmul P hP P' hP', if_neg (Ne.symm hne), zero_mul]
    · intro h; exact absurd hP h
  have hoToS : ∀ x : 𝓞 D.host.E,
      ((oToS D.host.F D.host.E x : Formalism.L2.Herm.intAf D.host.F D.host.E) : EAf D) =
        toEAf D (incA D (x : D.host.E)) := by
    intro x; rw [GlobalTheory.IdemIntegral.toEAf_incA]; rfl
  constructor
  · intro hM PP hPP
    refine (_root_.Formalism.L2.DIV.resS_eq_zero_iff (F := D.host.F) (E := D.host.E) PP ⟨N, hN⟩).mpr ?_
    obtain ⟨M, hMdef⟩ : ∃ M, M = toEAf D (∑ P ∈ Q, es P * incA D ((ϖ P : D.host.E))⁻¹) * N :=
      ⟨_, rfl⟩
    rw [← hMdef] at hM
    let eI : Pl D.host.E → Formalism.L2.Herm.intAf D.host.F D.host.E :=
      fun P => if h : P ∈ Q then ⟨toEAf D (es P), hE P h⟩ else 0
    have hsplit : (⟨N, hN⟩ : Formalism.L2.Herm.intAf D.host.F D.host.E) =
        (∑ P ∈ Q, eI P * oToS D.host.F D.host.E (ϖ P)) * ⟨M, hM⟩ := by
      apply Subtype.ext
      have hs : ((∑ P ∈ Q, eI P * oToS D.host.F D.host.E (ϖ P) :
          Formalism.L2.Herm.intAf D.host.F D.host.E) : EAf D) =
          toEAf D (∑ P ∈ Q, es P * incA D ((ϖ P : D.host.E))) := by

        rw [map_sum]
        push_cast
        apply Finset.sum_congr rfl
        intro P hP
        simp only [eI, dif_pos hP, map_mul, hoToS]
      show N = ((∑ P ∈ Q, eI P * oToS D.host.F D.host.E (ϖ P) :
          Formalism.L2.Herm.intAf D.host.F D.host.E) : EAf D) * M
      rw [hs, hMdef, ← mul_assoc, ← map_mul, hpp, hfix]
    rw [hsplit]
    refine Ideal.mul_mem_right _ _ (Ideal.sum_mem _ fun P hP => ?_)
    by_cases hPe : P = PP
    · subst hPe
      exact Ideal.mul_mem_left _ _ (Ideal.mem_map_of_mem _ (hϖ P hP).1)
    · refine Ideal.mul_mem_right _ _ ?_
      refine (_root_.Formalism.L2.DIV.resS_eq_zero_iff (F := D.host.F) (E := D.host.E) PP _).mp ?_
      simp only [eI, dif_pos hP]
      exact GlobalTheory.TameProd.resS_idem_eq_zero (hid P hP) hPe _
  · intro hres

    rw [map_sum, Finset.sum_mul]
    refine Subring.sum_mem _ fun P hP => ?_
    have hmem : (⟨N, hN⟩ : Formalism.L2.Herm.intAf D.host.F D.host.E) ∈
        Ideal.map (oToS D.host.F D.host.E) P.asIdeal :=
      (_root_.Formalism.L2.DIV.resS_eq_zero_iff (F := D.host.F) (E := D.host.E) P ⟨N, hN⟩).mp (hres P hP)
    have key : ∀ x : Formalism.L2.Herm.intAf D.host.F D.host.E,
        x ∈ Ideal.map (oToS D.host.F D.host.E) P.asIdeal →
        toEAf D (es P * incA D ((ϖ P : D.host.E))⁻¹) * (x : EAf D) ∈
          Formalism.L2.Herm.intAf D.host.F D.host.E := by
      intro x hx
      change x ∈ Submodule.span _ _ at hx
      induction hx using Submodule.span_induction with
      | mem y hy =>
        obtain ⟨p, hp, rfl⟩ := hy
        rw [hoToS, ← map_mul, mul_assoc, ← map_mul]
        exact GlobalTheory.IdemIntegral.mem_of_idemAt (hid P hP) (intAt_inv_mul P (hϖ P hP).1 (hϖ P hP).2 hp)
      | zero => simp
      | add a b _ _ ha hb =>
        rw [Subring.coe_add, mul_add]; exact add_mem ha hb
      | smul a b _ hb =>
        rw [smul_eq_mul, Subring.coe_mul, mul_left_comm]; exact mul_mem a.2 hb
    exact key _ hmem

end GlobalTheory.IdemKerDiv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IdempotentSumIntegralDivUniformisersIffReduction =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IdempotentSumIntegralDivUniformisersIffReductionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IdempotentSumIntegralDivUniformisersIffReductionStatement", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IdempotentSumIntegralDivUniformisersIffReduction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem\nimport Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.ConjTwist GlobalTheory.GalTw ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Classical

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IdempotentSumIntegralDivUniformisersIffReductionStatement =====
