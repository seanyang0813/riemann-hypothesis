module

public import Mathlib.Algebra.Algebra.ZMod
public import Mathlib.RingTheory.AlgebraicIndependent.Basic
public import Mathlib.RingTheory.Ideal.Quotient.Defs
public import Mathlib.RingTheory.Algebraic.Defs
public import Mathlib.RingTheory.AlgebraicIndependent.TranscendenceBasis
public import Mathlib.RingTheory.Ideal.GoingUp
public import Mathlib.RingTheory.Jacobson.Ring
public import Mathlib.RingTheory.KrullDimension.Basic
public import GroundTheory.ArithmeticGeometry.AbelianVarieties.JacobianSmoothness.RingKrullDimLeRingKrullDimQuotientAddOne
public import ReciprocityTheory.CommutativeAlgebra.PolynomialHeights.HeightAddRingKrullDimQuotientMvPolynomialField
public import GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.StatementsIntDim
import GroundTheory.HeightsAndTheta.Heights.HeightComparison.POrbitChartResidue
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.IntDimTrdeg, GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.IntDimBounds, GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.PIntDomainDim

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.IntDimTrdeg =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.IntDimTrdeg", "h": "module\n\npublic import Mathlib.Algebra.Algebra.ZMod\npublic import Mathlib.RingTheory.AlgebraicIndependent.Basic\npublic import Mathlib.RingTheory.Ideal.Quotient.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Algebraic.Defs\npublic import Mathlib.RingTheory.AlgebraicIndependent.TranscendenceBasis\npublic import Mathlib.RingTheory.Ideal.GoingUp\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights

open Algebra Cardinal MvPolynomial

noncomputable section

theorem trdeg_lt_of_surjective_of_ker_ne_bot {R B C : Type} [CommRing R] [CommRing B] [IsDomain B]
    [CommRing C] [IsDomain C] [Algebra R B] [Algebra R C] (f : B →ₐ[R] C)
    (hf : Function.Surjective f) (hker : RingHom.ker f ≠ ⊥)
    (hinj : Function.Injective (algebraMap R C)) (hfin : trdeg R B < ℵ₀) :
    trdeg R C < trdeg R B := by
  have : Nontrivial R := (algebraMap R C).domain_nontrivial
  have : FaithfulSMul R C := (faithfulSMul_iff_algebraMap_injective R C).2 hinj
  obtain ⟨s, hs⟩ := exists_isTranscendenceBasis R C
  have hCle : trdeg R C ≤ trdeg R B := trdeg_le_of_surjective f hf
  have hs_card : #s = trdeg R C := hs.cardinalMk_eq_trdeg
  have : Finite s := Cardinal.lt_aleph0_iff_finite.mp (hs_card ▸ hCle.trans_lt hfin)
  let y : s → B := fun i => Function.surjInv hf (i : C)
  have hfy : ∀ i, f (y i) = i := fun i => Function.surjInv_eq hf _
  have hfy' : (fun i => f (y i)) = ((↑) : s → C) := funext hfy
  have hy : AlgebraicIndependent R y := AlgebraicIndependent.of_comp f (by
    change AlgebraicIndependent R (fun i => f (y i))
    rw [hfy']
    exact hs.1)
  by_contra hlt
  push Not at hlt
  have hyb : IsTranscendenceBasis R y :=
    hy.isTranscendenceBasis_of_trdeg_le_of_finite (hlt.trans hs_card.ge)
  have halg := hyb.isAlgebraic
  obtain ⟨q, hq, hq0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hker
  have hne := Ideal.under_ne_bot_of_algebraic_mem hq0 hq (halg.isAlgebraic q)
  obtain ⟨a, ha, ha0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hne
  have ha' : f (a : B) = 0 := by
    simpa [Ideal.mem_comap, RingHom.mem_ker] using ha
  obtain ⟨P, hP⟩ : ∃ P : MvPolynomial s R, aeval y P = a := by
    have h : (a : B) ∈ (aeval y : MvPolynomial s R →ₐ[R] B).range := by
      rw [← Algebra.adjoin_range_eq_range_aeval]
      exact a.2
    exact h
  have hPx : aeval ((↑) : s → C) P = 0 := by
    rw [← hfy', ← comp_aeval_apply, hP, ha']
  have hP0 : P = 0 := hs.1 (hPx.trans (map_zero _).symm)
  apply ha0
  apply Subtype.ext
  rw [← hP, hP0, map_zero]
  rfl

theorem trdeg_zmod_quotient_le {B : Type} [CommRing B] [IsDomain B] [Algebra ℤ B]
    (hinj : Function.Injective (algebraMap ℤ B)) (p : ℕ) [Fact p.Prime] (Q : Ideal B) [Q.IsPrime]
    [CharP (B ⧸ Q) p] :
    (letI := ZMod.algebra (B ⧸ Q) p
     trdeg (ZMod p) (B ⧸ Q) ≤ trdeg ℤ B) := by
  let := ZMod.algebra (B ⧸ Q) p
  have : FaithfulSMul (ZMod p) (B ⧸ Q) :=
    (faithfulSMul_iff_algebraMap_injective _ _).2 (algebraMap (ZMod p) (B ⧸ Q)).injective
  obtain ⟨s, hs⟩ := exists_isTranscendenceBasis (ZMod p) (B ⧸ Q)
  rw [← hs.cardinalMk_eq_trdeg]
  let y : s → B := fun i => Function.surjInv Ideal.Quotient.mk_surjective (i : B ⧸ Q)
  have hy : (fun i => Ideal.Quotient.mkₐ ℤ Q (y i)) = ((↑) : s → B ⧸ Q) :=
    funext fun i => Function.surjInv_eq Ideal.Quotient.mk_surjective _
  have hp0 : (p : B) ≠ 0 := by
    intro h
    have : algebraMap ℤ B (p : ℤ) = algebraMap ℤ B 0 := by simpa using h
    exact (Nat.Prime.ne_zero (Fact.out : p.Prime)) (by exact_mod_cast hinj this)

  have hred : ∀ P : MvPolynomial s ℤ, aeval y P = 0 →
      MvPolynomial.map (algebraMap ℤ (ZMod p)) P = 0 := by
    intro P hP
    apply hs.1
    have hc : (algebraMap (ZMod p) (B ⧸ Q)).comp (algebraMap ℤ (ZMod p)) = algebraMap ℤ (B ⧸ Q) :=
      RingHom.ext_int _ _
    rw [map_zero, aeval_def, eval₂_map, hc, ← aeval_def, ← hy, ← comp_aeval_apply, hP, map_zero]
  have key : ∀ n : ℕ, ∀ P : MvPolynomial s ℤ, aeval y P = 0 →
      ∀ m, P.coeff m ≠ 0 → (P.coeff m).natAbs ≤ n → False := by
    intro n
    induction n using Nat.strong_induction_on with
    | _ n ih =>
      intro P hP m hm hn
      have hdvd : C (p : ℤ) ∣ P := by
        rw [C_dvd_iff_dvd_coeff]
        intro i
        have := congrArg (AddMonoidAlgebra.coeff · i) (hred P hP)
        rw [coeff_map, AddMonoidAlgebra.coeff_zero, Finsupp.zero_apply, algebraMap_int_eq, eq_intCast,
          ZMod.intCast_zmod_eq_zero_iff_dvd] at this
        exact this
      obtain ⟨P', rfl⟩ := hdvd
      have hP' : aeval y P' = 0 := by
        rw [map_mul, aeval_C] at hP
        rcases mul_eq_zero.mp hP with h | h
        · exact absurd (by simpa using h) hp0
        · exact h
      rw [coeff_C_mul] at hm hn
      have hm' : P'.coeff m ≠ 0 := right_ne_zero_of_mul hm
      have hlt : (P'.coeff m).natAbs < n := by
        rw [Int.natAbs_mul] at hn
        have h2 : 2 ≤ ((p : ℤ)).natAbs := by
          simpa using (Fact.out : p.Prime).two_le
        have h1 : 0 < (P'.coeff m).natAbs := Int.natAbs_pos.mpr hm'
        nlinarith
      exact ih _ hlt P' hP' m hm' le_rfl
  refine AlgebraicIndependent.cardinalMk_le_trdeg (R := ℤ) (x := y) ?_
  rw [algebraicIndependent_iff]
  intro P hP
  by_contra hne
  obtain ⟨m, hm⟩ := MvPolynomial.ne_zero_iff.mp hne
  exact key _ P hP m hm le_rfl

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.IntDimTrdeg =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.IntDimBounds =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.IntDimBounds", "h": "module\n\nimport GroundTheory.HeightsAndTheta.Heights.HeightComparison.POrbitChartResidue\npublic import Mathlib.RingTheory.AlgebraicIndependent.Basic\npublic import Mathlib.RingTheory.Jacobson.Ring\npublic import Mathlib.RingTheory.KrullDimension.Basic\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.JacobianSmoothness.RingKrullDimLeRingKrullDimQuotientAddOne\npublic import GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.IntDimTrdeg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.CommutativeAlgebra.PolynomialHeights.HeightAddRingKrullDimQuotientMvPolynomialField\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.style.haveILetI false

namespace GroundTheory.Heights₂.Heights

open Algebra Cardinal
open scoped TensorProduct

noncomputable section

theorem isJacobsonRing_int : IsJacobsonRing ℤ := by
  apply GroundTheory.Heights₂.Heights.int_isJacobsonRing

theorem ringKrullDim_le_add_one_of_quotient_le {B : Type} [CommRing B] [IsDomain B] (n : ℕ∞)
    (h : ∀ Q : Ideal B, Q.IsPrime → Q ≠ ⊥ → ringKrullDim (B ⧸ Q) ≤ n) :
    ringKrullDim B ≤ ((n + 1 : ℕ∞) : WithBot ℕ∞) := by
  let P0 : PrimeSpectrum B := ⟨⊥, Ideal.isPrime_bot⟩
  have hco : Order.coheight P0 ≤ n + 1 := by
    rw [Order.coheight_eq_iSup_gt_coheight]
    refine iSup₂_le fun Q hQ => ?_
    have hQ0 : Q.asIdeal ≠ ⊥ := by
      intro h0
      have : Q = P0 := PrimeSpectrum.ext h0
      rw [this] at hQ
      exact lt_irrefl _ hQ
    have h1 := h Q.asIdeal Q.isPrime hQ0
    rw [← GroundTheory.Arith.Abelian.Jacobian.coheight_eq_ringKrullDim_quotient] at h1
    have h2 : Order.coheight Q ≤ n := by exact_mod_cast h1
    exact add_le_add h2 le_rfl
  show Order.krullDim (PrimeSpectrum B) ≤ _
  rw [Order.krullDim_eq_iSup_coheight_of_nonempty]
  refine WithBot.coe_le_coe.mpr (iSup_le fun Q => ?_)
  have hle : P0 ≤ Q := by
    change (⊥ : Ideal B) ≤ Q.asIdeal
    exact bot_le
  exact (Order.coheight_anti hle).trans hco

theorem ringKrullDim_le_trdeg_add_one_int (t : ℕ) : ∀ (B : Type) [CommRing B] [IsDomain B]
    [Algebra ℤ B] [Algebra.FiniteType ℤ B], Function.Injective (algebraMap ℤ B) →
    trdeg ℤ B = t → ringKrullDim B ≤ (((t + 1 : ℕ) : ℕ∞) : WithBot ℕ∞) := by
  induction t using Nat.strong_induction_on with
  | _ t ih =>
  intro B _ _ _ _ hinj ht
  have hfin : trdeg ℤ B < ℵ₀ := by rw [ht]; exact Cardinal.natCast_lt_aleph0
  have key := ringKrullDim_le_add_one_of_quotient_le (B := B) (t : ℕ∞) (fun Q hQ hQ0 => by
    haveI := hQ
    haveI : Algebra.FiniteType ℤ (B ⧸ Q) :=
      .of_surjective (Ideal.Quotient.mkₐ ℤ Q) (Ideal.Quotient.mkₐ_surjective ℤ Q)
    by_cases hc : Function.Injective (algebraMap ℤ (B ⧸ Q))
    · have hlt := trdeg_lt_of_surjective_of_ker_ne_bot (Ideal.Quotient.mkₐ ℤ Q)
        (Ideal.Quotient.mkₐ_surjective ℤ Q)
        (fun h => hQ0 (by rw [← Ideal.mk_ker (I := Q)]; exact h)) hc hfin
      obtain ⟨t', ht'⟩ := Cardinal.lt_aleph0.mp (hlt.trans hfin)
      rw [ht, ht'] at hlt
      have hlt' : t' < t := by exact_mod_cast hlt
      refine (ih t' hlt' (B ⧸ Q) hc ht').trans ?_
      exact_mod_cast (show t' + 1 ≤ t by omega)
    · have hp0 : ringChar (B ⧸ Q) ≠ 0 := by
        intro h0
        have hc0 := ringChar.charP (B ⧸ Q)
        rw [h0] at hc0
        haveI : CharZero (B ⧸ Q) := (CharP.charP_zero_iff_charZero _).mp hc0
        apply hc
        have e : algebraMap ℤ (B ⧸ Q) = Int.castRingHom (B ⧸ Q) := RingHom.ext_int _ _
        rw [e]
        exact Int.cast_injective
      haveI : CharP (B ⧸ Q) (ringChar (B ⧸ Q)) := ringChar.charP _
      have hpp : (ringChar (B ⧸ Q)).Prime :=
        (CharP.char_is_prime_or_zero (B ⧸ Q) (ringChar (B ⧸ Q))).resolve_right hp0
      haveI : Fact (ringChar (B ⧸ Q)).Prime := ⟨hpp⟩
      letI := ZMod.algebra (B ⧸ Q) (ringChar (B ⧸ Q))
      haveI := IsScalarTower.of_algebraMap_eq' (RingHom.ext_int (algebraMap ℤ (B ⧸ Q))
        ((algebraMap (ZMod (ringChar (B ⧸ Q))) (B ⧸ Q)).comp (algebraMap ℤ (ZMod (ringChar (B ⧸ Q))))))
      haveI : Algebra.FiniteType (ZMod (ringChar (B ⧸ Q))) (B ⧸ Q) :=
        Algebra.FiniteType.of_restrictScalars_finiteType ℤ _ _
      have hle := trdeg_zmod_quotient_le hinj (ringChar (B ⧸ Q)) Q
      rw [ht] at hle
      obtain ⟨s, hs⟩ := Cardinal.lt_aleph0.mp (hle.trans_lt Cardinal.natCast_lt_aleph0)
      rw [hs] at hle
      have hst : s ≤ t := by exact_mod_cast hle
      rw [GroundTheory.Arith.Abelian.Jacobian.ringKrullDim_eq_trdeg (ZMod (ringChar (B ⧸ Q))), hs,
        Cardinal.toENat_nat]
      exact_mod_cast hst)
  refine key.trans (le_of_eq ?_)
  push_cast
  rfl

theorem le_ringKrullDim_int (B : Type) [CommRing B] [IsDomain B] [Algebra.FiniteType ℤ B]
    (hinj : Function.Injective (algebraMap ℤ B)) (t : ℕ) (ht : trdeg ℤ B = t) :
    (((t + 1 : ℕ) : ℕ∞) : WithBot ℕ∞) ≤ ringKrullDim B := by
  letI : Algebra B (ℚ ⊗[ℤ] B) := Algebra.TensorProduct.rightAlgebra
  let M := Algebra.algebraMapSubmonoid B (nonZeroDivisors ℤ)
  have hM : M ≤ nonZeroDivisors B := by
    rintro _ ⟨n, hn, rfl⟩
    apply mem_nonZeroDivisors_of_ne_zero
    intro h
    exact nonZeroDivisors.ne_zero hn (hinj (h.trans (map_zero _).symm))
  haveI : IsLocalization M (ℚ ⊗[ℤ] B) := IsLocalization.tensorRight _ _
  haveI : IsDomain (ℚ ⊗[ℤ] B) := IsLocalization.isDomain_of_le_nonZeroDivisors _ hM

  have hBL : Function.Injective (algebraMap B (ℚ ⊗[ℤ] B)) := IsLocalization.injective _ hM
  haveI : FaithfulSMul B (ℚ ⊗[ℤ] B) := (faithfulSMul_iff_algebraMap_injective _ _).2 hBL
  haveI : FaithfulSMul ℤ B := (faithfulSMul_iff_algebraMap_injective _ _).2 hinj
  haveI : FaithfulSMul ℤ ℚ :=
    (faithfulSMul_iff_algebraMap_injective _ _).2 (algebraMap ℤ ℚ).injective_int
  haveI : FaithfulSMul ℚ (ℚ ⊗[ℤ] B) :=
    (faithfulSMul_iff_algebraMap_injective _ _).2 (algebraMap ℚ (ℚ ⊗[ℤ] B)).injective
  haveI := IsScalarTower.of_algebraMap_eq' (RingHom.ext_int (algebraMap ℤ (ℚ ⊗[ℤ] B))
    ((algebraMap B (ℚ ⊗[ℤ] B)).comp (algebraMap ℤ B)))
  haveI := IsScalarTower.of_algebraMap_eq' (RingHom.ext_int (algebraMap ℤ (ℚ ⊗[ℤ] B))
    ((algebraMap ℚ (ℚ ⊗[ℤ] B)).comp (algebraMap ℤ ℚ)))
  haveI : Algebra.IsAlgebraic B (ℚ ⊗[ℤ] B) := IsLocalization.isAlgebraic _ M
  haveI : Algebra.IsAlgebraic ℤ ℚ := IsLocalization.isAlgebraic ℚ (nonZeroDivisors ℤ)
  have h1 := trdeg_add_eq ℤ B (A := ℚ ⊗[ℤ] B)
  have h2 := trdeg_add_eq ℤ ℚ (A := ℚ ⊗[ℤ] B)
  rw [trdeg_eq_zero (R := B) (A := ℚ ⊗[ℤ] B), add_zero] at h1
  rw [trdeg_eq_zero (R := ℤ) (A := ℚ), zero_add] at h2
  have htL : trdeg ℚ (ℚ ⊗[ℤ] B) = t := by rw [h2, ← h1, ht]

  obtain ⟨m, hm⟩ := Ideal.exists_maximal (ℚ ⊗[ℤ] B)
  have hmh : m.height = t := ReciprocityTheory.CA.height_eq_of_isMaximal_of_trdeg_eq_field (K := ℚ) t htL m
  have hPh : (m.under B).height = t := (IsLocalization.height_under M m).trans hmh
  have hdisj : Disjoint (M : Set B) (m.under B) :=
    (IsLocalization.disjoint_under_iff M _ m).2 hm.ne_top
  have hnm : ¬ (m.under B).IsMaximal := by
    intro hPm
    letI := Ideal.Quotient.field (m.under B)
    haveI : IsJacobsonRing ℤ := isJacobsonRing_int
    haveI : Algebra.FiniteType ℤ (B ⧸ m.under B) :=
      .of_surjective (Ideal.Quotient.mkₐ ℤ _) (Ideal.Quotient.mkₐ_surjective ℤ _)
    haveI := finite_of_finite_type_of_isJacobsonRing ℤ (B ⧸ m.under B)
    haveI : Algebra.IsIntegral ℤ (B ⧸ m.under B) := Algebra.IsIntegral.of_finite ℤ _
    apply Int.not_isField
    refine isField_of_isIntegral_of_isField ?_ (Field.toIsField (B ⧸ m.under B))
    have e : algebraMap ℤ (B ⧸ m.under B) = (Ideal.Quotient.mk _).comp (algebraMap ℤ B) :=
      RingHom.ext_int _ _
    rw [e, injective_iff_map_eq_zero]
    intro n hn
    by_contra hn0
    rw [RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem] at hn
    exact Set.disjoint_left.mp hdisj ⟨n, mem_nonZeroDivisors_of_ne_zero hn0, rfl⟩ hn
  obtain ⟨N, hN, hPN⟩ := (m.under B).exists_le_maximal (Ideal.IsPrime.ne_top inferInstance)
  have hlt : m.under B < N := lt_of_le_of_ne hPN (fun h => hnm (h ▸ hN))
  have hh := Ideal.height_add_one_le_of_lt_of_isPrime hlt
  rw [hPh] at hh
  calc (((t + 1 : ℕ) : ℕ∞) : WithBot ℕ∞) ≤ (N.height : WithBot ℕ∞) := by
        exact_mod_cast hh
    _ ≤ ringKrullDim B := Ideal.height_le_ringKrullDim_of_isPrime

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.IntDimBounds =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.PIntDomainDim =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.PIntDomainDim", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.StatementsIntDim\npublic import GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.IntDimBounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GroundTheory.Heights₂.Heights

open Algebra

theorem IntDomainDim.proof : IntDomainDim.Statement := by
  intro A _ inst _ _ hinj
  obtain rfl : inst = Ring.toIntAlgebra A := Subsingleton.elim _ _
  have hfin : trdeg ℤ A < Cardinal.aleph0 := trdeg_lt_aleph0_of_finiteType
  obtain ⟨t, ht⟩ := Cardinal.lt_aleph0.mp hfin
  rw [ht, Cardinal.toENat_nat]
  have h1 := ringKrullDim_le_trdeg_add_one_int t A hinj ht
  have h2 := le_ringKrullDim_int A hinj t ht
  push_cast at h1 h2
  exact le_antisymm h1 h2

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.WeightedHomogeneous.PIntDomainDim =====
