module

public import ReciprocityTheory.NeutralLocalFields.Reciprocity
public import ReciprocityTheory.ClassFieldTheory.GlobalClassField.AsGabLim
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsForallAbvSubLt
public import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
public import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipB
public import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsRationalUnitaryDeterminantMapRationalUnitaryTo
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.InvMemUFin
public import ReciprocityTheory.ClassFieldTheory.GlobalClassField.AsGabLimB
public import ReciprocityTheory.ClassFieldTheory.GlobalClassField.IsFrobAtMulOfMemInertiaGroup
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsEqOfNatCastMulMem
public import GroundTheory.GlobalFields.ComplexMultiplication.AnalyticUniformization
public import GroundTheory.GlobalFields.GlobalArtinMap.ArtinMap
public import CompanionTheory.AutomorphicTheory.PlaceSeparation.IsOpenQuotientMapArt0
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsContinuousBijectiveAbelianizationOfAlgEqui
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodExistenceCm
public import GroundTheory.GlobalFields.ComplexMultiplication.ClassGroupActionLattice
public import GroundTheory.GlobalFields.ComplexMultiplication.IdeleAction
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GalStarComplexMultiplicationPoints
public import GroundTheory.GlobalFields.ComplexMultiplication.ReductionMap
public import GroundTheory.GlobalFields.ComplexMultiplication.IdeleActionQuotient
public import GroundTheory.GlobalFields.ComplexMultiplication.MainTheorem
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsUniqueIdeleOfLinearEquivQuotientLocal
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import GroundTheory.GlobalFields.ComplexMultiplication.ClassGroupActionIso

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AbelianizationEqOfForallAbRestrictEq, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsDiagMulRayMulUnif, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ArtinMapAbelianUnique, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsAnalyticIsoOfIsAnalyticUniformization, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConjEqOnAlgebraicClosure, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdealLatticeToAddSubgroupEqIdealSub, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvSmulEqFinitePartInvSmul, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsAnalyticUniformizationOfIsAnalyticIso, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapPointEqPointMapRing, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulQuotientInvMkEqMkIffMulEquiv, Development.AutomorphicSpectrum.Proofs.GlobalProofs.EllipticMainTheoremCM

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AbelianizationEqOfForallAbRestrictEq =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AbelianizationEqOfForallAbRestrictEq", "h": "module\n\npublic import ReciprocityTheory.NeutralLocalFields.Reciprocity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ClassFieldTheory.GlobalClassField.AsGabLim\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsUniqueIdeleOfLinearEquivQuotientLocal\n\n"}
section -- clump:auto
@[expose] public section

open NumberField
open scoped nonZeroDivisors
open scoped GlobalTheory.Idele

namespace GlobalTheory.CompanionTheory.GaloisAb

theorem abelianization_eq_of_forall_abRestrict_eq :
    ∀ (K : Type) [Field K] [NumberField K] (a b : Field.absoluteGaloisGroupAbelianization K),
      (∀ (L : IntermediateField K (AlgebraicClosure K)) (h : Neutral.B1.IsFiniteAbelian K L),
        Neutral.B1.abRestrict K L h a = Neutral.B1.abRestrict K L h b) → a = b := by
  intro K _ _ a b hab
  exact ReciprocityTheory.DiscreteGroups.GlobalClassField.abRestrict_ext hab

end GlobalTheory.CompanionTheory.GaloisAb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AbelianizationEqOfForallAbRestrictEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsDiagMulRayMulUnif =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsDiagMulRayMulUnif", "h": "module\n\npublic import ReciprocityTheory.NeutralLocalFields.Reciprocity\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsForallAbvSubLt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\npublic import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipB\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Neutral.B1 ReciprocityTheory.Neutral.Bridge.HCFR

namespace GlobalTheory.RayGen

variable {K : Type} [Field K] [NumberField K]

def compAt (v : HeightOneSpectrum (𝓞 K)) : Ideles K →* v.adicCompletion K where
  toFun a := (a : AdeleRing (𝓞 K) K).2 v
  map_one' := rfl
  map_mul' _ _ := rfl

def compInf (w : InfinitePlace K) : Ideles K →* w.Completion where
  toFun a := (a : AdeleRing (𝓞 K) K).1 w
  map_one' := rfl
  map_mul' _ _ := rfl

def unifAway (𝔮 : Ideal (𝓞 K)) : Subgroup (Ideles K) :=
  Subgroup.closure {x : Ideles K | ∃ (v : HeightOneSpectrum (𝓞 K)) (π : (v.adicCompletion K)ˣ),
    ¬ v.asIdeal ∣ 𝔮 ∧ IsUniformiserAt K v (π : v.adicCompletion K) ∧ x = localIdele K v π}

theorem comp_of_mem_unifAway {𝔮 : Ideal (𝓞 K)} {b : Ideles K} (hb : b ∈ unifAway 𝔮) :
    (∀ w, compInf w b = 1) ∧ ∀ v : HeightOneSpectrum (𝓞 K), v.asIdeal ∣ 𝔮 → compAt v b = 1 := by
  induction hb using Subgroup.closure_induction with
  | mem x hx =>
    obtain ⟨v, π, hv, -, rfl⟩ := hx
    exact ⟨(localIdele_isSupportedAt K v π).1,
      fun v' hv' => (localIdele_isSupportedAt K v π).2 v' (by rintro rfl; exact hv hv')⟩
  | one => exact ⟨fun w => map_one _, fun v _ => map_one _⟩
  | mul x y _ _ hx hy =>
    exact ⟨fun w => by rw [map_mul, hx.1, hy.1, one_mul], fun v hv => by rw [map_mul, hx.2 v hv, hy.2 v hv, one_mul]⟩
  | inv x _ hx => exact ⟨fun w => by rw [map_inv, hx.1, inv_one], fun v hv => by rw [map_inv, hx.2 v hv, inv_one]⟩

theorem exists_unifAway {𝔮 : Ideal (𝓞 K)} (c : Ideles K)
    (hc : ∀ v : HeightOneSpectrum (𝓞 K), v.asIdeal ∣ 𝔮 → Valued.v (compAt v c) = 1) :
    ∃ b ∈ unifAway 𝔮, ∀ v, Valued.v (compAt v b) = Valued.v (compAt v c) := by
  classical
  choose π hπ using exists_isUniformiserAt K
  have hfin := Filter.eventually_cofinite.mp (valued_comp_eventually K c)
  let S := hfin.toFinset
  have hS : ∀ v, v ∈ S ↔ Valued.v (compAt v c) ≠ 1 := fun v => hfin.mem_toFinset
  refine ⟨∏ v ∈ S, localIdele K v (π v) ^ ordAt K v c, Subgroup.prod_mem _ fun v hv => Subgroup.zpow_mem _
    (Subgroup.subset_closure (by exact ⟨v, π v, fun h => (hS v).1 hv (hc v h), hπ v, rfl⟩)) _, fun w => ?_⟩
  have h1 : ∀ v, v ≠ w → compAt w (localIdele K v (π v) ^ ordAt K v c) = 1 := fun v hv => by
    rw [map_zpow, show compAt w (localIdele K v (π v)) = 1 from (localIdele_isSupportedAt K v _).2 w hv.symm,
      one_zpow]
  rw [map_prod]
  by_cases hw : w ∈ S
  · rw [Finset.prod_eq_single_of_mem w hw fun v _ hv => h1 v hv, map_zpow,
      show compAt w (localIdele K w (π w)) = π w from localIdele_snd_self K w _, map_zpow₀,
      valued_eq_exp_of_isUniformiserAt K w _ (hπ w), ← WithZero.exp_zsmul, ordAt]
    rw [smul_neg, neg_smul, neg_neg, smul_eq_mul, mul_one]
    exact WithZero.exp_log (valued_comp_ne_zero K c w)
  · rw [Finset.prod_eq_one fun v hv => h1 v (fun e => hw (e ▸ hv)), map_one]
    exact (not_not.1 ((hS w).not.1 hw)).symm

theorem valued_lt_one_of_mem (v : HeightOneSpectrum (𝓞 K)) {x : 𝓞 K} (hx : x ∈ v.asIdeal) :
    Valued.v (algebraMap K (v.adicCompletion K) (x : K)) < 1 := by
  have e : algebraMap K (v.adicCompletion K) (x : K) =
      ((algebraMap (𝓞 K) K x : K) : v.adicCompletion K) := rfl
  rw [e, HeightOneSpectrum.valuedAdicCompletion_eq_valuation']
  exact (v.valuation_lt_one_iff_mem x).2 hx

theorem exists_approx {𝔮 : Ideal (𝓞 K)} (h𝔮 : 𝔮 ≠ ⊥) {x : 𝓞 K} (hx : x ∈ 𝔮) (hx0 : x ≠ 0) (a : Ideles K) :
    ∃ k : Kˣ, (∀ v : HeightOneSpectrum (𝓞 K), v.asIdeal ∣ 𝔮 →
      Valued.v (compAt v ((diagUnits K k)⁻¹ * a) - 1) ≤ Valued.v (algebraMap K (v.adicCompletion K) (x : K))) ∧
      ∀ w : InfinitePlace K, w.IsReal → IsSquare (compInf w ((diagUnits K k)⁻¹ * a)) := by
  classical
  let T := (Ideal.finite_factors h𝔮).toFinset
  let t' : InfinitePlace K → ℝ := fun w =>
    if hw : w.IsReal then InfinitePlace.Completion.ringEquivRealOfIsReal hw (compInf w a) else 1
  have ht' : ∀ w, t' w ≠ 0 := fun w => by
    simp only [t']
    split_ifs with hw
    · exact (map_ne_zero _).2 (inf_comp_ne_zero K a w)
    · exact one_ne_zero
  let t : (K →+* ℝ) → ℝ := fun σ => t' (InfinitePlace.mk (Complex.ofRealHom.comp σ))
  let r : ∀ v : HeightOneSpectrum (𝓞 K), v.adicCompletion K := fun v =>
    (algebraMap K (v.adicCompletion K) (x : K) * compAt v a)⁻¹
  let U : Set (((v : T) → v.1.adicCompletion K) × ((K →+* ℝ) → ℝ)) :=
    (⋂ v : T, {y | (y.1 v - compAt v.1 a) * r v.1 ∈ v.1.adicCompletionIntegers K}) ∩
      ⋂ σ : K →+* ℝ, {y | 0 < y.2 σ * t σ}
  have : Finite (K →+* ℝ) :=
    Finite.of_injective (fun σ : K →+* ℝ => Complex.ofRealHom.comp σ) (fun σ τ h => by
      ext y
      simpa using RingHom.congr_fun h y)
  have hU : IsOpen U := by
    refine (isOpen_iInter_of_finite fun v => ?_).inter (isOpen_iInter_of_finite fun σ => ?_)
    · have h : IsOpen (v.1.adicCompletionIntegers K : Set (v.1.adicCompletion K)) :=
        Valued.isOpen_valuationSubring _
      exact h.preimage ((((continuous_apply v).comp continuous_fst).sub continuous_const).mul continuous_const)
    · exact isOpen_lt continuous_const (((continuous_apply σ).comp continuous_snd).mul continuous_const)
  obtain ⟨k, hk1, hk2⟩ := (GlobalTheory.LocalQuad.denseRange_finite_real K T).exists_mem_open hU
    ⟨(fun v => compAt v.1 a, t), Set.mem_iInter.2 fun v => by simp,
      Set.mem_iInter.2 fun σ => mul_self_pos.2 (ht' _)⟩
  have hxK : (x : K) ≠ 0 := by exact_mod_cast hx0
  have h1 : ∀ v : HeightOneSpectrum (𝓞 K), v.asIdeal ∣ 𝔮 →
      Valued.v (algebraMap K (v.adicCompletion K) k - compAt v a) ≤
        Valued.v (algebraMap K (v.adicCompletion K) (x : K)) * Valued.v (compAt v a) := fun v hv => by
    have h : Valued.v ((algebraMap K (v.adicCompletion K) k - compAt v a) * r v) ≤ 1 :=
      Set.mem_iInter.1 hk1 ⟨v, (Ideal.finite_factors h𝔮).mem_toFinset.2 hv⟩
    have h0 : Valued.v (algebraMap K (v.adicCompletion K) (x : K) * compAt v a) ≠ 0 :=
      (map_ne_zero _).2 (mul_ne_zero ((map_ne_zero _).2 hxK) (comp_ne_zero K a v))
    rwa [map_mul, map_inv₀, mul_inv_le_iff₀ (zero_lt_iff.2 h0), one_mul, map_mul] at h
  have h2 : ∀ v : HeightOneSpectrum (𝓞 K), v.asIdeal ∣ 𝔮 →
      Valued.v (algebraMap K (v.adicCompletion K) k) = Valued.v (compAt v a) := fun v hv => by
    refine Valuation.map_eq_of_sub_lt _ ((h1 v hv).trans_lt ?_)
    exact mul_lt_of_lt_one_left (zero_lt_iff.2 (valued_comp_ne_zero K a v))
      (valued_lt_one_of_mem v (Ideal.le_of_dvd hv hx))
  have h3 : ∀ (w : InfinitePlace K) (hw : w.IsReal), 0 < InfinitePlace.embedding_of_isReal hw k *
      InfinitePlace.Completion.ringEquivRealOfIsReal hw (compInf w a) := fun w hw => by
    have h : 0 < InfinitePlace.embedding_of_isReal hw k * t (InfinitePlace.embedding_of_isReal hw) :=
      Set.mem_iInter.1 hk2 _
    have e : InfinitePlace.mk (Complex.ofRealHom.comp (InfinitePlace.embedding_of_isReal hw)) = w := by
      refine Eq.trans ?_ (InfinitePlace.mk_embedding w)
      congr 1
      ext y
      simp
    change 0 < _ * t' _ at h
    rw [e] at h
    simpa only [t', dif_pos hw] using h
  by_cases hk : k = 0
  · subst hk
    refine ⟨1, fun v hv => absurd (h2 v hv).symm ?_, fun w hw => absurd (h3 w hw) (by simp)⟩
    rw [map_zero, map_zero]
    exact valued_comp_ne_zero K a v
  refine ⟨Units.mk0 k hk, fun v hv => ?_, fun w hw => ?_⟩
  · have hk' : algebraMap K (v.adicCompletion K) k ≠ 0 := (map_ne_zero _).2 hk
    rw [map_mul, map_inv, show compAt v (diagUnits K (Units.mk0 k hk)) = algebraMap K (v.adicCompletion K) k from rfl,
      show (algebraMap K (v.adicCompletion K) k)⁻¹ * compAt v a - 1 =
        (compAt v a - algebraMap K (v.adicCompletion K) k) * (algebraMap K (v.adicCompletion K) k)⁻¹ by
          field_simp, map_mul, map_inv₀, h2 v hv, Valuation.map_sub_swap,
      mul_inv_le_iff₀ (c := Valued.v (compAt v a)) (zero_lt_iff.2 (valued_comp_ne_zero K a v))]
    exact h1 v hv
  · let e := InfinitePlace.Completion.ringEquivRealOfIsReal hw
    have he : e (algebraMap K w.Completion k) = InfinitePlace.embedding_of_isReal hw k := by
      simp [e, AbsoluteValue.Completion.algebraMap_def, WithAbs.algebraMap_right_apply]
    have hp : 0 < e (compInf w ((diagUnits K (Units.mk0 k hk))⁻¹ * a)) := by
      rw [map_mul, map_inv, show compInf w (diagUnits K (Units.mk0 k hk)) = algebraMap K w.Completion k from rfl,
        map_mul, map_inv₀, he, mul_comm, ← div_eq_mul_inv, div_pos_iff, ← mul_pos_iff, mul_comm]
      exact h3 w hw
    have := (Real.isSquare_iff.2 hp.le).map e.symm
    rwa [e.symm_apply_apply] at this

theorem exists_diag_mul_ray_mul_unif : ∀ (K : Type) [Field K] [NumberField K] (𝔮 : Ideal (𝓞 K)), 𝔮 ≠ ⊥ → ∀ a : Ideles K, ∃ k : Kˣ, ∃ u ∈ rayUnits K 𝔮 {w | w.IsReal}, ∃ b ∈ Subgroup.closure {x : Ideles K | ∃ (v : HeightOneSpectrum (𝓞 K)) (π : (v.adicCompletion K)ˣ), ¬ v.asIdeal ∣ 𝔮 ∧ IsUniformiserAt K v (π : v.adicCompletion K) ∧ x = localIdele K v π}, a = diagUnits K k * u * b := by
  intro K _ _ 𝔮 h𝔮 a
  obtain ⟨x, hx, hx0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot h𝔮
  obtain ⟨k, hk1, hk2⟩ := exists_approx h𝔮 hx hx0 a
  set c := (diagUnits K k)⁻¹ * a with hc
  obtain ⟨b, hb, hbv⟩ := exists_unifAway (𝔮 := 𝔮) c fun v hv => by
    rw [Valuation.map_eq_of_sub_lt _ (x := 1), map_one]
    rw [map_one]
    exact (hk1 v hv).trans_lt (valued_lt_one_of_mem v (Ideal.le_of_dvd hv hx))
  obtain ⟨hb1, hb2⟩ := comp_of_mem_unifAway hb
  refine ⟨k, c * b⁻¹, ⟨fun w hw => ?_, fun v => ?_⟩, b, hb, by rw [hc]; group⟩
  · change IsSquare (compInf w (c * b⁻¹))
    rw [map_mul, map_inv, hb1, inv_one, mul_one]
    exact hk2 w hw
  · have h1 : Valued.v (compAt v (c * b⁻¹)) = 1 := by
      rw [map_mul, map_inv, map_mul, map_inv₀, hbv]
      exact mul_inv_cancel₀ (valued_comp_ne_zero K c v)
    refine ⟨h1, ?_⟩
    change ∃ x ∈ 𝔮, Valued.v (compAt v (c * b⁻¹) - 1) ≤ _
    by_cases hv : v.asIdeal ∣ 𝔮
    · rw [map_mul, map_inv, hb2 v hv, inv_one, mul_one]
      exact ⟨x, hx, hk1 v hv⟩
    · obtain ⟨y, hy, hyv⟩ := SetLike.not_le_iff_exists.mp (Ideal.dvd_iff_le.not.1 hv)
      refine ⟨y, hy, ?_⟩
      rw [valued_algebraMap_eq_one K v y hyv]
      exact Valuation.map_sub_le _ h1.le (map_one _).le

end GlobalTheory.RayGen

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsDiagMulRayMulUnif =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ArtinMapAbelianUnique =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ArtinMapAbelianUnique", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex\npublic import ReciprocityTheory.NeutralLocalFields.Reciprocity\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsRationalUnitaryDeterminantMapRationalUnitaryTo\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsDiagMulRayMulUnif\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.InvMemUFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ClassFieldTheory.GlobalClassField.AsGabLimB\npublic import ReciprocityTheory.ClassFieldTheory.GlobalClassField.IsFrobAtMulOfMemInertiaGroup\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Neutral.B1
open scoped nonZeroDivisors

namespace GlobalTheory.CompanionTheory.ArtinUniq

variable {K : Type} [Field K] [NumberField K]

theorem exists_ideal_unramified (L : Type) [Field L] [NumberField L] [Algebra K L] :
    ∃ 𝔡 : Ideal (𝓞 K), 𝔡 ≠ ⊥ ∧
      ∀ v : HeightOneSpectrum (𝓞 K), ¬ v.asIdeal ∣ 𝔡 → IsUnramifiedIn K v L := by
  refine ⟨(differentIdeal (𝓞 K) (𝓞 L)).under (𝓞 K), ?_, fun v hv Q hQ hl => ?_⟩
  · obtain ⟨x, hx, hx0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot
      (differentIdeal_ne_bot (A := 𝓞 K) (B := 𝓞 L))
    exact Ideal.comap_ne_bot_of_integral_mem hx0 hx (Algebra.IsIntegral.isIntegral x)
  · have hnd : ¬ Q ∣ differentIdeal (𝓞 K) (𝓞 L) := fun hd => hv (Ideal.dvd_iff_le.2 (by
      rw [hl.over]
      exact Ideal.comap_mono (Ideal.dvd_iff_le.1 hd)))
    exact Ideal.ramificationIdx_eq_one_iff.2 (not_dvd_differentIdeal_iff.1 hnd)

theorem mem_of_units_of_unif (v : HeightOneSpectrum (𝓞 K)) (M : Subgroup (v.adicCompletion K)ˣ)
    (hu : ∀ x : (v.adicCompletion K)ˣ, Valued.v (x : v.adicCompletion K) = 1 → x ∈ M)
    (π : (v.adicCompletion K)ˣ) (hπ : IsUniformiserAt K v (π : v.adicCompletion K)) (hM : π ∈ M)
    (x : (v.adicCompletion K)ˣ) : x ∈ M := by
  have key : ∀ x : (v.adicCompletion K)ˣ, Valued.v (x : v.adicCompletion K) ≤ 1 → x ∈ M := by
    intro x hx
    obtain ⟨hπ1, hirr⟩ := hπ
    have hxm : (x : v.adicCompletion K) ∈ v.adicCompletionIntegers K := hx
    have hx0 : (⟨x, hxm⟩ : v.adicCompletionIntegers K) ≠ 0 := fun h0 =>
      x.ne_zero (congrArg Subtype.val h0)
    obtain ⟨n, u, e⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hx0 hirr
    have e' : (x : v.adicCompletion K) =
        ((u : v.adicCompletionIntegers K) : v.adicCompletion K) * (π : v.adicCompletion K) ^ n :=
      congrArg Subtype.val e
    have h1 : Valued.v ((u : v.adicCompletionIntegers K) : v.adicCompletion K) ≤ 1 :=
      (u : v.adicCompletionIntegers K).2
    have h2 : Valued.v (((u⁻¹ : (v.adicCompletionIntegers K)ˣ) : v.adicCompletionIntegers K) :
        v.adicCompletion K) ≤ 1 := ((u⁻¹ : (v.adicCompletionIntegers K)ˣ) : v.adicCompletionIntegers K).2
    have h3 : Valued.v ((u : v.adicCompletionIntegers K) : v.adicCompletion K) *
        Valued.v (((u⁻¹ : (v.adicCompletionIntegers K)ˣ) : v.adicCompletionIntegers K) :
        v.adicCompletion K) = 1 := by
      rw [← map_mul]
      have : ((u : v.adicCompletionIntegers K) : v.adicCompletion K) *
          (((u⁻¹ : (v.adicCompletionIntegers K)ˣ) : v.adicCompletionIntegers K) :
          v.adicCompletion K) = 1 := congrArg Subtype.val u.mul_inv
      rw [this, map_one]
    have h4 : Valued.v ((u : v.adicCompletionIntegers K) : v.adicCompletion K) = 1 :=
      le_antisymm h1 (h3 ▸ mul_le_of_le_one_right' h2)
    have hy : x * (π ^ n)⁻¹ ∈ M := by
      refine hu _ ?_
      have : ((x * (π ^ n)⁻¹ : (v.adicCompletion K)ˣ) : v.adicCompletion K) =
          ((u : v.adicCompletionIntegers K) : v.adicCompletion K) := by
        rw [Units.val_mul, e', Units.val_inv_eq_inv_val, Units.val_pow_eq_pow_val]
        exact mul_inv_cancel_right₀ (pow_ne_zero n π.ne_zero) _
      rw [this, h4]
    have := M.mul_mem hy (M.pow_mem hM n)
    rwa [inv_mul_cancel_right] at this
  rcases le_total (Valued.v (x : v.adicCompletion K)) 1 with h | h
  · exact key x h
  · refine inv_mem_iff.1 (key x⁻¹ ?_)
    rw [Units.val_inv_eq_inv_val, map_inv₀]
    exact inv_le_one_of_one_le₀ h

theorem localIdele_eq {Art Art' : IdeleClassGroup K →* Field.absoluteGaloisGroupAbelianization K}
    (hA : IsGlobalArtinMap K Art) (hA' : IsGlobalArtinMap K Art')
    (L : IntermediateField K (AlgebraicClosure K)) (h : IsFiniteAbelian K L)
    (v : HeightOneSpectrum (𝓞 K)) (hv : IsUnramifiedIn K v L) (x : (v.adicCompletion K)ˣ) :
    abRestrict K L h (Art (QuotientGroup.mk (localIdele K v x))) =
      abRestrict K L h (Art' (QuotientGroup.mk (localIdele K v x))) := by
  haveI := h.finiteDimensional
  haveI : NumberField L := NumberField.of_module_finite K L
  obtain ⟨π, hπ⟩ := exists_isUniformiserAt K v
  obtain ⟨Q, hQ, hQv⟩ := ReciprocityTheory.DiscreteGroups.GlobalClassField.exists_liesOver (K := K) L v
  refine mem_of_units_of_unif v (MonoidHom.eqLocus (localComposite K Art L h v)
    (localComposite K Art' L h v)) (fun y hy => ?_) π hπ ?_ x
  · have hy' : Valued.v ((localIdele K v y : AdeleRing (𝓞 K) K).2 v) = 1 := by
      rw [localIdele_snd_self]
      exact hy
    exact ((hA.2.2.2.1 L h v hv _ (localIdele_isSupportedAt K v y)).2 hy').trans
      ((hA'.2.2.2.1 L h v hv _ (localIdele_isSupportedAt K v y)).2 hy').symm
  · have hπ' : IsUniformiserAt K v ((localIdele K v π : AdeleRing (𝓞 K) K).2 v) := by
      rw [localIdele_snd_self]
      exact hπ
    exact ReciprocityTheory.DiscreteGroups.GlobalClassField.isFrobAt_unique v Q hv _ _
      ((hA.2.2.2.1 L h v hv _ (localIdele_isSupportedAt K v π)).1 hπ' Q hQ hQv)
      ((hA'.2.2.2.1 L h v hv _ (localIdele_isSupportedAt K v π)).1 hπ' Q hQ hQv)

def infI : (InfiniteAdeleRing K)ˣ →* Ideles K :=
  Units.map (MonoidHom.inl (InfiniteAdeleRing K) (FiniteAdeleRing (𝓞 K) K) : _ →* _)

theorem inf_mem [_root_.NumberField.IsTotallyComplex K] (N : Subgroup (Ideles K)) (m : ℕ) (hm : 0 < m)
    (hpow : ∀ x : Ideles K, x ^ m ∈ N) (y : (InfiniteAdeleRing K)ˣ) :
    infI y ∈ N := by
  haveI : ∀ w : InfinitePlace K, IsAlgClosed w.Completion := fun w =>
    IsAlgClosed.of_ringEquiv ℂ _
      (InfinitePlace.Completion.ringEquivComplexOfIsComplex (IsTotallyComplex.isComplex w)).symm
  choose r hr using fun w : InfinitePlace K =>
    IsAlgClosed.exists_pow_nat_eq ((y : InfiniteAdeleRing K) w) hm
  obtain ⟨r', hb⟩ : ∃ r' : InfiniteAdeleRing K, r' ^ m = (y : InfiniteAdeleRing K) :=
    ⟨r, funext hr⟩
  obtain ⟨z, rfl⟩ : IsUnit r' := (isUnit_pow_iff hm.ne').1 (hb ▸ y.isUnit)
  have e : z ^ m = y := Units.ext (by rw [Units.val_pow_eq_pow_val, hb])
  rw [← e, map_pow]
  exact hpow _

theorem valued_le_of_mem (v : HeightOneSpectrum (𝓞 K)) (n : ℕ) {x : 𝓞 K}
    (hx : x ∈ v.asIdeal ^ n) :
    Valued.v (algebraMap K (v.adicCompletion K) (x : K)) ≤ WithZero.exp (-(n : ℤ)) := by
  have e2 : algebraMap K (v.adicCompletion K) (x : K) =
      ((algebraMap (𝓞 K) K x : K) : v.adicCompletion K) := rfl
  rw [e2, HeightOneSpectrum.valuedAdicCompletion_eq_valuation',
    HeightOneSpectrum.valuation_of_algebraMap]
  exact (v.intValuation_le_pow_iff_mem x n).2 hx

theorem exists_modulus (𝔡 : Ideal (𝓞 K)) (h𝔡 : 𝔡 ≠ ⊥) (S : Finset (HeightOneSpectrum (𝓞 K)))
    (n : ℕ) : ∃ 𝔮 : Ideal (𝓞 K), 𝔮 ≠ ⊥ ∧ 𝔡 ∣ 𝔮 ∧ ∀ v ∈ S, 𝔮 ≤ v.asIdeal ^ n := by
  refine ⟨𝔡 * ∏ v ∈ S, v.asIdeal ^ n,
    mul_ne_zero h𝔡 (Finset.prod_ne_zero_iff.2 fun v _ => pow_ne_zero n v.ne_bot),
    dvd_mul_right _ _, fun v hv => ?_⟩
  exact Ideal.le_of_dvd ((Finset.dvd_prod_of_mem (fun v : HeightOneSpectrum (𝓞 K) =>
    v.asIdeal ^ n) hv).mul_left _)

theorem abRestrict_eq : ∀ (K : Type) [Field K] [NumberField K] [_root_.NumberField.IsTotallyComplex K]
    (Art Art' : IdeleClassGroup K →* Field.absoluteGaloisGroupAbelianization K),
    IsGlobalArtinMap K Art → IsGlobalArtinMap K Art' →
    ∀ (L : IntermediateField K (AlgebraicClosure K)) (h : IsFiniteAbelian K L)
      (c : IdeleClassGroup K),
      abRestrict K L h (Art c) = abRestrict K L h (Art' c) := by
  intro K _ _ _ Art Art' hA hA' L h c
  haveI := h.finiteDimensional
  haveI := h.isGalois
  haveI : NumberField L := NumberField.of_module_finite K L
  let f : Ideles K →* (L ≃ₐ[K] L) :=
    (abRestrict K L h).comp (Art.comp (QuotientGroup.mk' (diagUnits K).range))
  let f' : Ideles K →* (L ≃ₐ[K] L) :=
    (abRestrict K L h).comp (Art'.comp (QuotientGroup.mk' (diagUnits K).range))
  let N : Subgroup (Ideles K) := MonoidHom.eqLocus f f'
  have hfib : ∀ (B : IdeleClassGroup K →* Field.absoluteGaloisGroupAbelianization K),
      Continuous B → ∀ τ : L ≃ₐ[K] L,
      IsOpen {a : Ideles K | abRestrict K L h (B (QuotientGroup.mk a)) = τ} := fun B hB τ =>
    (ReciprocityTheory.DiscreteGroups.GlobalClassField.isOpen_abRestrict_fiber h τ).preimage (hB.comp continuous_quot_mk)
  have hopen : IsOpen (N : Set (Ideles K)) := by
    have e : (N : Set (Ideles K)) = ⋃ τ : L ≃ₐ[K] L,
        {a : Ideles K | abRestrict K L h (Art (QuotientGroup.mk a)) = τ} ∩
        {a : Ideles K | abRestrict K L h (Art' (QuotientGroup.mk a)) = τ} := by
      ext a
      simp only [Set.mem_iUnion, Set.mem_inter_iff, Set.mem_setOf_eq]
      exact ⟨fun ha => ⟨_, rfl, ha.symm⟩, fun ⟨τ, h1, h2⟩ => h1.trans h2.symm⟩
    rw [e]
    exact isOpen_iUnion fun τ => (hfib Art hA.1 τ).inter (hfib Art' hA'.1 τ)
  obtain ⟨𝔡, h𝔡, hun⟩ := exists_ideal_unramified (K := K) L
  obtain ⟨S, n, hS⟩ := PI.AlgValsFin.W.exists_nbhd (N : Set (Ideles K)) hopen N.one_mem
  obtain ⟨𝔮, h𝔮, hd𝔮, hS𝔮⟩ := exists_modulus 𝔡 h𝔡 S n
  have hpow : ∀ x : Ideles K, x ^ Nat.card (L ≃ₐ[K] L) ∈ N := fun x => by
    show f _ = f' _
    rw [map_pow, map_pow, pow_card_eq_one', pow_card_eq_one']
  have hray : ∀ u ∈ rayUnits K 𝔮 {w | w.IsReal}, u ∈ N := by
    rintro u ⟨-, hu⟩
    have e : u = infI
        (Units.map (MonoidHom.fst (InfiniteAdeleRing K) (FiniteAdeleRing (𝓞 K) K) : _ →* _) u) *
        GlobalTheory.Mem.Chr.finPartI K u :=
      Units.ext (Prod.ext (mul_one _).symm (one_mul _).symm)
    rw [e]
    refine N.mul_mem (inf_mem N _ Nat.card_pos hpow _) (hS _ ⟨rfl, fun v => (hu v).1⟩ fun v hv => ?_)
    obtain ⟨-, x, hx, hle⟩ := hu v
    exact hle.trans (valued_le_of_mem v n (hS𝔮 v hv hx))
  have hloc : Subgroup.closure {x : Ideles K | ∃ (v : HeightOneSpectrum (𝓞 K))
      (π : (v.adicCompletion K)ˣ), ¬ v.asIdeal ∣ 𝔮 ∧
        IsUniformiserAt K v (π : v.adicCompletion K) ∧ x = localIdele K v π} ≤ N := by
    refine (Subgroup.closure_le _).2 ?_
    rintro _ ⟨v, π, hv, -, rfl⟩
    exact localIdele_eq hA hA' L h v (hun v fun hd => hv (hd.trans hd𝔮)) π
  have hdiag : (diagUnits K).range ≤ N := by
    rintro _ ⟨k, rfl⟩
    have e : QuotientGroup.mk' (diagUnits K).range (diagUnits K k) = 1 :=
      (QuotientGroup.eq_one_iff _).2 ⟨k, rfl⟩
    show abRestrict K L h (Art (QuotientGroup.mk' (diagUnits K).range (diagUnits K k))) =
      abRestrict K L h (Art' (QuotientGroup.mk' (diagUnits K).range (diagUnits K k)))
    simp only [e, map_one]
  obtain ⟨a, rfl⟩ := QuotientGroup.mk_surjective c
  obtain ⟨k, u, hu, b, hb, e⟩ := GlobalTheory.RayGen.exists_diag_mul_ray_mul_unif K 𝔮 h𝔮 a
  have ha : a ∈ N := e ▸ N.mul_mem (N.mul_mem (hdiag ⟨k, rfl⟩) (hray u hu)) (hloc hb)
  exact ha

end GlobalTheory.CompanionTheory.ArtinUniq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ArtinMapAbelianUnique =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsAnalyticIsoOfIsAnalyticUniformization =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsAnalyticIsoOfIsAnalyticUniformization", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsEqOfNatCastMulMem\npublic import GroundTheory.GlobalFields.ComplexMultiplication.AnalyticUniformization\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField
open scoped nonZeroDivisors
open scoped GlobalTheory.Idele

noncomputable section

namespace GlobalTheory.CompanionTheory.EllipticUniformization

theorem exists_analyticIso_of_isAnalyticUniformization (Λ : Submodule ℤ ℂ)
    (E : WeierstrassCurve ℂ) (f : ℂ →+ E.toAffine.Point)
    (hf : GroundTheory.Global.Elliptic.IsAnalyticUniformization Λ f) :
    ∃ ξ : (ℂ ⧸ Λ.toAddSubgroup) ≃+ E.toAffine.Point,
      GlobalTheory.EllipticCM.IsAnalyticIso ξ ∧ ∀ z : ℂ, ξ (QuotientAddGroup.mk z) = f z := by
  let φ : (ℂ ⧸ Λ.toAddSubgroup) →+ E.toAffine.Point :=
    QuotientAddGroup.lift Λ.toAddSubgroup f fun z hz => (hf.map_eq_zero_iff z).2 hz
  have hφ : ∀ z : ℂ, φ (QuotientAddGroup.mk z) = f z := fun z => rfl
  have hinj : Function.Injective φ := by
    refine (injective_iff_map_eq_zero φ).2 fun x hx => ?_
    obtain ⟨z, rfl⟩ := QuotientAddGroup.mk_surjective x
    rw [hφ] at hx
    exact (QuotientAddGroup.eq_zero_iff z).2 ((hf.map_eq_zero_iff z).1 hx)
  have hsurj : Function.Surjective φ := fun P => by
    obtain ⟨z, rfl⟩ := hf.surjective P
    exact ⟨QuotientAddGroup.mk z, hφ z⟩
  let ξ : (ℂ ⧸ Λ.toAddSubgroup) ≃+ E.toAffine.Point :=
    AddEquiv.ofBijective φ ⟨hinj, hsurj⟩
  have hξ : ∀ z : ℂ, ξ (QuotientAddGroup.mk z) = f z := fun z => rfl
  refine ⟨ξ, fun z hz => ?_, hξ⟩
  have hz0 : f z ≠ 0 := fun h => hz ((hf.map_eq_zero_iff z).1 h)
  obtain ⟨X, Y, hX, hY, hev⟩ := hf.analyticAt_affine z hz0
  refine ⟨X, Y, hX, hY, hev.mono fun w hw => ?_⟩
  obtain ⟨h, hw⟩ := hw
  exact ⟨h, (hξ w).trans hw⟩

end GlobalTheory.CompanionTheory.EllipticUniformization
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsAnalyticIsoOfIsAnalyticUniformization =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConjEqOnAlgebraicClosure =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConjEqOnAlgebraicClosure", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsEqOfNatCastMulMem\npublic import GroundTheory.GlobalFields.GlobalArtinMap.ArtinMap\npublic import CompanionTheory.AutomorphicTheory.PlaceSeparation.IsOpenQuotientMapArt0\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsContinuousBijectiveAbelianizationOfAlgEqui\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PeriodExistenceCm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField
open scoped nonZeroDivisors
open scoped GlobalTheory.Idele

noncomputable section

namespace GlobalTheory.CompanionTheory.EllipticCM

theorem exists_conj_eq_on_algebraicClosure {K : Type} [Field K] [Algebra K ℂ]
    (σ : ℂ ≃ₐ[K] ℂ) (ι : AlgebraicClosure K →ₐ[K] ℂ)
    (g : AlgebraicClosure K ≃ₐ[K] AlgebraicClosure K) (hσ : ∀ x, σ (ι x) = ι (g x))
    (e : algebraicClosure K ℂ ≃ₐ[K] AlgebraicClosure K) :
    ∃ ρ : algebraicClosure K ℂ ≃ₐ[K] algebraicClosure K ℂ,
      ∀ y : algebraicClosure K ℂ,
        (((ρ * ((e.trans g).trans e.symm) * ρ⁻¹) y : algebraicClosure K ℂ) : ℂ) = σ (y : ℂ) := by
  let ι' : algebraicClosure K ℂ →ₐ[K] ℂ := ι.comp (e : algebraicClosure K ℂ →ₐ[K] AlgebraicClosure K)
  have hmem : ∀ y, ι' y ∈ (algebraicClosure K ℂ).toSubalgebra := fun y =>
    mem_algebraicClosure_iff.2 ((Algebra.IsAlgebraic.isAlgebraic y).algHom ι')
  let ρ₀ : algebraicClosure K ℂ →ₐ[K] algebraicClosure K ℂ :=
    ι'.codRestrict (algebraicClosure K ℂ).toSubalgebra hmem
  let ρ : algebraicClosure K ℂ ≃ₐ[K] algebraicClosure K ℂ :=
    AlgEquiv.ofBijective ρ₀ (Algebra.IsAlgebraic.algHom_bijective ρ₀)
  have hρ : ∀ w, ((ρ w : algebraicClosure K ℂ) : ℂ) = ι (e w) := fun _ => rfl
  refine ⟨ρ, fun y => ?_⟩
  obtain ⟨z, rfl⟩ := ρ.surjective y
  have h1 : (ρ * ((e.trans g).trans e.symm) * ρ⁻¹) (ρ z) = ρ (e.symm (g (e z))) := by
    simp [AlgEquiv.mul_apply, AlgEquiv.aut_inv]
  rw [h1, hρ, hρ, hσ, AlgEquiv.apply_symm_apply]

theorem exists_globalArtinMap_tied : ∀ (K : Type) [Field K] [NumberField K] [IsTotallyComplex K] [Algebra K ℂ], Module.finrank ℚ K = 2 → ∃ Art₀ : Neutral.B1.IdeleClassGroup K →* Field.absoluteGaloisGroupAbelianization K, Neutral.B1.IsGlobalArtinMap K Art₀ ∧ ∀ (σ : ℂ ≃ₐ[K] ℂ) (s : Neutral.B1.Ideles K), GlobalTheory.EllipticCM.RestrictsTo σ (Art₀ (QuotientGroup.mk s)) → ∀ x : GroundTheory.LocalField.maximalAbelianExtension K (algebraicClosure K ℂ), ((GroundTheory.Global.artinMap K (algebraicClosure K ℂ) (GroundTheory.Global.IdeleClassGroup.mk K s) x : algebraicClosure K ℂ) : ℂ) = σ ((x : algebraicClosure K ℂ) : ℂ) := by
  intro K _ _ _ _ _
  let e : algebraicClosure K ℂ ≃ₐ[K] AlgebraicClosure K := IsAlgClosure.equiv K _ _
  obtain ⟨Art, hArt, hArtσ⟩ := GlobalTheory.LatVal.exists_globalArtinMap
    (CompanionTheory.FamInh.isGlobalArtin_inv (E := K) (Ω := algebraicClosure K ℂ)) e
  obtain ⟨φ, -, hφb, hφ⟩ := GlobalTheory.HeckeGal.exists_abMap_of_algEquiv e
  refine ⟨Art, hArt, ?_⟩
  rintro σ s ⟨ι, g, hσ, hg⟩ x
  obtain ⟨ρ, hρ⟩ := exists_conj_eq_on_algebraicClosure σ ι g hσ e
  obtain ⟨τ, hτ⟩ := GlobalTheory.HeckeGal.toAb_surjective (E := K) (Ω := algebraicClosure K ℂ)
    (CompanionTheory.FamInh.art0 K (algebraicClosure K ℂ) s)
  have h1 : Art (QuotientGroup.mk s) = Neutral.B1.toAb K ((e.symm.trans τ).trans e) :=
    hArtσ s τ (by rw [hτ, MonoidHom.inv_apply, inv_inv])
  have h2 : (e.symm.trans ((e.trans g).trans e.symm)).trans e = g := by
    ext y
    simp
  have h3 : GlobalTheory.HeckeGal.toAb K (algebraicClosure K ℂ) ((e.trans g).trans e.symm) =
      GlobalTheory.HeckeGal.toAb K (algebraicClosure K ℂ) τ :=
    hφb.1 (by rw [hφ, hφ, h2, hg, h1])
  have h4 : GlobalTheory.HeckeGal.toAb K (algebraicClosure K ℂ) (ρ * ((e.trans g).trans e.symm) * ρ⁻¹) =
      CompanionTheory.FamInh.art0 K (algebraicClosure K ℂ) s := by
    rw [map_mul, map_mul, map_inv, h3, hτ, mul_comm (GlobalTheory.HeckeGal.toAb K _ ρ), mul_inv_cancel_right]
  have h5 := GroundTheory.LocalField.topologicalAbelianizationEquiv_mk_apply K (algebraicClosure K ℂ)
    (ρ * ((e.trans g).trans e.symm) * ρ⁻¹) x
  have h6 : GroundTheory.LocalField.topologicalAbelianizationEquiv K (algebraicClosure K ℂ)
      (((ρ * ((e.trans g).trans e.symm) * ρ⁻¹ : algebraicClosure K ℂ ≃ₐ[K] algebraicClosure K ℂ)) :
        TopologicalAbelianization (algebraicClosure K ℂ ≃ₐ[K] algebraicClosure K ℂ)) =
      GroundTheory.Global.artinMap K (algebraicClosure K ℂ) (GroundTheory.Global.IdeleClassGroup.mk K s) := by
    refine Eq.trans (congrArg (GroundTheory.LocalField.topologicalAbelianizationEquiv K (algebraicClosure K ℂ)) h4) ?_
    exact (GroundTheory.LocalField.topologicalAbelianizationEquiv K (algebraicClosure K ℂ)).apply_symm_apply _
  rw [h6] at h5
  rw [h5, hρ]

end GlobalTheory.CompanionTheory.EllipticCM

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConjEqOnAlgebraicClosure =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdealLatticeToAddSubgroupEqIdealSub =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdealLatticeToAddSubgroupEqIdealSub", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsEqOfNatCastMulMem\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ClassGroupActionLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField
open scoped nonZeroDivisors
open scoped GlobalTheory.Idele

namespace GlobalTheory.CompanionTheory.EllipticDict

theorem idealLattice_toAddSubgroup_eq_idealSub :
    ∀ {K : Type} [Field K] [NumberField K] [Algebra K ℂ] (I : FractionalIdeal (𝓞 K)⁰ K),
      (GroundTheory.Global.Elliptic.idealLattice (algebraMap K ℂ) I).toAddSubgroup =
        GlobalTheory.EllipticCM.idealSub I := by
  intro K _ _ _ I
  ext z
  constructor
  · rintro ⟨x, hx, rfl⟩
    exact ⟨x, hx, rfl⟩
  · rintro ⟨x, hx, rfl⟩
    exact ⟨x, hx, rfl⟩

end GlobalTheory.CompanionTheory.EllipticDict
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdealLatticeToAddSubgroupEqIdealSub =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvSmulEqFinitePartInvSmul =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvSmulEqFinitePartInvSmul", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsEqOfNatCastMulMem\npublic import GroundTheory.GlobalFields.ComplexMultiplication.IdeleAction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField
open scoped nonZeroDivisors
open scoped GlobalTheory.Idele

namespace GlobalTheory.CompanionTheory.EllipticCM

theorem ord_eq_ord_vw_finitePart {K : Type} [Field K] [NumberField K]
    (s : GroundTheory.Global.IdeleGroup K) (v : IsDedekindDomain.HeightOneSpectrum (𝓞 K)) :
    GroundTheory.Global.IdeleGroup.ord v s =
      GlobalTheory.Idele.ord_vw (GlobalTheory.EllipticCM.finitePart (K := K) s) v :=
  rfl

theorem coe_smul_eq_finitePart_smul {K : Type} [Field K] [NumberField K]
    (s : GroundTheory.Global.IdeleGroup K) (𝔞 : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    ((s • 𝔞 : (FractionalIdeal (𝓞 K)⁰ K)ˣ) : FractionalIdeal (𝓞 K)⁰ K) =
      (GlobalTheory.EllipticCM.finitePart (K := K) s) • (𝔞 : FractionalIdeal (𝓞 K)⁰ K) := by
  refine GlobalTheory.Idele.eq_of_count_eq (Units.ne_zero _)
    (GlobalTheory.Idele.smul_ne_zero _ (Units.ne_zero _)) fun v => ?_
  rw [GroundTheory.Global.IdeleGroup.count_smul, GlobalTheory.Idele.count_smul _ (Units.ne_zero _),
    ord_eq_ord_vw_finitePart]

theorem inv_smul_eq_finitePart_inv_smul {K : Type} [Field K] [NumberField K]
    (s : GroundTheory.Global.IdeleGroup K) (𝔞 : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    ((s⁻¹ • 𝔞 : (FractionalIdeal (𝓞 K)⁰ K)ˣ) : FractionalIdeal (𝓞 K)⁰ K) =
      (GlobalTheory.EllipticCM.finitePart (K := K) s)⁻¹ • (𝔞 : FractionalIdeal (𝓞 K)⁰ K) :=
  coe_smul_eq_finitePart_smul s⁻¹ 𝔞

end GlobalTheory.CompanionTheory.EllipticCM
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvSmulEqFinitePartInvSmul =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsAnalyticUniformizationOfIsAnalyticIso =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsAnalyticUniformizationOfIsAnalyticIso", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsEqOfNatCastMulMem\npublic import GroundTheory.GlobalFields.ComplexMultiplication.AnalyticUniformization\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ClassGroupActionLattice\nimport GroundTheory.GlobalFields.ComplexMultiplication.ClassGroupActionIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField
open scoped nonZeroDivisors
open scoped GlobalTheory.Idele

noncomputable section

namespace GlobalTheory.CompanionTheory.EllipticCM

open WeierstrassCurve GroundTheory.Global.Elliptic GroundTheory.Arith.Abelian

theorem variableChangePoint_latticePoint {X : WeierstrassCurve ℂ} {L : PeriodPair}
    {C : VariableChange ℂ} (h : C • X = GlobalTheory.latticeCurve L) (h' : C⁻¹ • weierstrassCurve L = X)
    (z : ℂ) :
    GlobalTheory.variableChangePoint C h (GlobalTheory.latticePoint L z) = vcPoint C⁻¹ h' (toPoint L z) := by
  by_cases hz : z ∈ L.lattice
  · rw [GlobalTheory.latticePoint_of_mem L hz, toPoint_of_mem hz, map_zero, vcPoint_zero]
  · rw [GlobalTheory.latticePoint_of_notMem L hz, toPoint_of_notMem hz, GlobalTheory.variableChangePoint_some,
      vcPoint_some, Affine.Point.some.injEq]
    have hu : (C.u : ℂ) ≠ 0 := C.u.ne_zero
    constructor
    · simp only [vcX, VariableChange.inv_def, inv_inv, Units.val_inv_eq_inv_val]
      field_simp
      ring
    · simp only [vcY, VariableChange.inv_def, inv_inv, Units.val_inv_eq_inv_val]
      field_simp
      ring

theorem isAnalyticUniformization_of_isAnalyticIso {K : Type} [Field K] [NumberField K]
    [IsTotallyComplex K] [Algebra K ℂ] (X : WeierstrassCurve ℂ)
    [X.IsElliptic] (𝔞 : FractionalIdeal (𝓞 K)⁰ K)
    (ξ : (ℂ ⧸ GlobalTheory.EllipticCM.idealSub 𝔞) ≃+ X.toAffine.Point)
    (hξ : GlobalTheory.EllipticCM.IsAnalyticIso ξ) :
    GroundTheory.Global.Elliptic.IsAnalyticUniformization
      (GroundTheory.Global.Elliptic.idealLattice (algebraMap K ℂ) 𝔞)
      (ξ.toAddMonoidHom.comp (QuotientAddGroup.mk' _)) := by
  obtain ⟨L, C, h⟩ := GlobalTheory.exists_variableChange_eq_latticeCurve X
  obtain ⟨α, hα, hΛ, hz⟩ := hξ.exists_mul h
  have e : GlobalTheory.latticeCurve L = weierstrassCurve L := by
    simp [GlobalTheory.latticeCurve, weierstrassCurve, neg_div]
  have h' : C⁻¹ • weierstrassCurve L = X := by
    rw [← e, ← h, inv_smul_smul]
  have hΛ' : ∀ z, z ∈ idealLattice (algebraMap K ℂ) 𝔞 ↔ α * z ∈ L.lattice := fun z => by
    rw [← hΛ]
    rfl
  open Complex Filter Topology Set in
  open scoped PeriodPair in
  have hf0 :
      IsAnalyticUniformization L.lattice (toPointHom L) := by
    refine {
      map_eq_zero_iff := fun z ↦ toPoint_eq_zero_iff
      surjective := toPoint_surjective
      analyticAt_affine := ?analyticAt_affine
      analyticAt_infinity := ?analyticAt_infinity }
    case analyticAt_affine =>
      intro z hz
      have hz' : z ∉ L.lattice := fun h ↦ hz (toPoint_of_mem h)
      refine ⟨℘[L], fun w ↦ ℘'[L] w / 2, L.analyticOnNhd_weierstrassP z hz',
        (L.analyticOnNhd_derivWeierstrassP z hz').div_const, ?_⟩
      filter_upwards [L.isClosed_lattice.isOpen_compl.mem_nhds hz'] with w hw
      exact ⟨_, toPoint_of_notMem hw⟩
    case analyticAt_infinity =>
      intro z hz
      have hzL : z ∈ L.lattice := toPoint_eq_zero_iff.1 hz
      set F : ℂ → ℂ := fun w ↦ ℘[L] w / (℘'[L] w / 2)
      set G : ℂ → ℂ := fun w ↦ 1 / (℘'[L] w / 2)
      have hP := L.meromorphic_weierstrassP z
      have hD : MeromorphicAt (fun w ↦ ℘'[L] w / 2) z := (L.meromorphic_derivWeierstrassP z).div
        (MeromorphicAt.const 2 z)
      have oD : meromorphicOrderAt (fun w ↦ ℘'[L] w / 2) z = -3 := by
        have e : (fun w ↦ ℘'[L] w / 2) = (fun _ ↦ (2 : ℂ)⁻¹) * ℘'[L] := by
          funext w; simp only [Pi.mul_apply]; ring
        rw [e, meromorphicOrderAt_mul_of_ne_zero analyticAt_const (by norm_num),
          meromorphicOrderAt_derivWeierstrassP L hzL]
      have hF : MeromorphicAt F z := hP.div hD
      have hG : MeromorphicAt G z := (MeromorphicAt.const 1 z).div hD
      have oF : meromorphicOrderAt F z = 1 := by
        rw [show F = ℘[L] * (fun w ↦ ℘'[L] w / 2)⁻¹ from funext fun w ↦ div_eq_mul_inv _ _,
          meromorphicOrderAt_mul hP hD.inv, meromorphicOrderAt_inv, oD,
          L.order_weierstrassP z hzL]
        rfl
      have oG : meromorphicOrderAt G z = 3 := by
        rw [show G = (fun w ↦ ℘'[L] w / 2)⁻¹ from funext fun w ↦ one_div _,
          meromorphicOrderAt_inv, oD]
        rfl
      have hFz : limPunctured F z = 0 := limPunctured_eq_zero_of_pos (by rw [oF]; exact zero_lt_one)
      have hGz : limPunctured G z = 0 := limPunctured_eq_zero_of_pos (by rw [oG]; norm_num)
      refine ⟨limPunctured F, limPunctured G,
        analyticAt_limPunctured hF (by rw [oF]; exact zero_le_one),
        analyticAt_limPunctured hG (by rw [oG]; norm_num), ?_⟩
      have hne : ∀ᶠ w in 𝓝[≠] z, w ∉ L.lattice ∧ ℘'[L] w / 2 ≠ 0 := by
        refine (eventually_nhdsWithin_iff.2 ?_).and
          ((meromorphicOrderAt_ne_top_iff_eventually_ne_zero hD).1 (by rw [oD]; decide))
        filter_upwards [L.compl_lattice_sdiff_singleton_mem_nhds z] with w hw hwz hwL
        exact hw ⟨hwL, hwz⟩
      rw [eventually_nhdsWithin_iff] at hne
      filter_upwards [hne] with w hw
      by_cases hwz : w = z
      · subst hwz
        exact Or.inl ⟨hz, hFz, hGz⟩
      obtain ⟨hwL, hw0⟩ := hw hwz
      have hDa : AnalyticAt ℂ (fun w ↦ ℘'[L] w / 2) w :=
        (L.analyticOnNhd_derivWeierstrassP w hwL).div_const
      have hFw : limPunctured F w = F w := limPunctured_eq_of_continuousAt
        ((L.analyticOnNhd_weierstrassP w hwL).div hDa hw0).continuousAt
      have hGw : limPunctured G w = G w := limPunctured_eq_of_continuousAt
        (analyticAt_const.div hDa hw0).continuousAt
      have hGne : G w ≠ 0 := one_div_ne_zero hw0
      have hw0' : ℘'[L] w ≠ 0 := fun h ↦ hw0 (by rw [h, zero_div])
      have e1 : F w / G w = ℘[L] w := by
        simp only [F, G]; field_simp
      have e2 : 1 / G w = ℘'[L] w / 2 := by
        simp only [G]; field_simp
      refine Or.inr ⟨by rw [hGw]; exact hGne, ?_⟩
      rw [hFw, hGw]
      refine ⟨by rw [e1, e2]; exact WeierstrassCurve.Affine.equation_iff_nonsingular.1 (equation_weierstrassP L hwL), ?_⟩
      show toPoint L w = _
      rw [toPoint_of_notMem hwL]
      exact point_some_congr e1.symm e2.symm
  have hvc {Λ : Submodule ℤ ℂ} {E E' : WeierstrassCurve ℂ} {f : ℂ →+ E.toAffine.Point}
  (hf : IsAnalyticUniformization Λ f) (C : VariableChange ℂ)
      (h : C • E = E') : IsAnalyticUniformization Λ ((vcPointEquiv C h).toAddMonoidHom.comp f) := by
    refine {
      map_eq_zero_iff := ?map_eq_zero_iff
      surjective := (vcPointEquiv C h).surjective.comp hf.surjective
      analyticAt_affine := ?analyticAt_affine
      analyticAt_infinity := ?analyticAt_infinity }
    case map_eq_zero_iff =>
      intro z
      rw [AddMonoidHom.comp_apply, AddEquiv.coe_toAddMonoidHom, vcPointEquiv_apply, vcPoint_eq_zero_iff,
        hf.map_eq_zero_iff]
    case analyticAt_affine =>
      intro z hz
      have hz' : f z ≠ 0 := fun h0 ↦ hz (by
        rw [AddMonoidHom.comp_apply, h0, map_zero])
      obtain ⟨X, Y, hX, hY, hev⟩ := hf.analyticAt_affine z hz'
      refine ⟨fun w ↦ vcX C (X w), fun w ↦ vcY C (X w) (Y w), ?_, ?_, ?_⟩
      · simp only [vcX]; fun_prop
      · simp only [vcY]; fun_prop
      filter_upwards [hev] with w ⟨hw, e⟩
      rw [AddMonoidHom.comp_apply, AddEquiv.coe_toAddMonoidHom, vcPointEquiv_apply, e, vcPoint_some]
      exact ⟨_, rfl⟩
    case analyticAt_infinity =>
      intro z hz
      have hz' : f z = 0 := by
        rw [AddMonoidHom.comp_apply, AddEquiv.coe_toAddMonoidHom, vcPointEquiv_apply,
          vcPoint_eq_zero_iff] at hz
        exact hz
      obtain ⟨U, V, hU, hV, hev⟩ := hf.analyticAt_infinity z hz'
      have h0 : U z = 0 ∧ V z = 0 := by
        rcases hev.self_of_nhds with ⟨-, hU0, hV0⟩ | ⟨-, h1, e⟩
        · exact ⟨hU0, hV0⟩
        · exact absurd (e.symm.trans hz') (Affine.Point.some_ne_zero _)
      set v : ℂ := ((C.u⁻¹ : ℂˣ) : ℂ)
      have hv : v ≠ 0 := Units.ne_zero _
      set D : ℂ → ℂ := fun w ↦ 1 - C.s * U w + C.s * C.r * V w - C.t * V w
      have hD : AnalyticAt ℂ D z := by simp only [D]; fun_prop
      have hDz : D z = 1 := by simp only [D, h0.1, h0.2]; ring
      have hDne : ∀ᶠ w in 𝓝 z, D w ≠ 0 :=
        hD.continuousAt.eventually_ne (by rw [hDz]; exact one_ne_zero)
      refine ⟨fun w ↦ (U w - C.r * V w) / (v * D w), fun w ↦ V w / (v ^ 3 * D w), ?_, ?_, ?_⟩
      · exact (hU.sub (analyticAt_const.mul hV)).div (analyticAt_const.mul hD)
          (mul_ne_zero hv (by rw [hDz]; exact one_ne_zero))
      · exact hV.div (analyticAt_const.mul hD) (mul_ne_zero (pow_ne_zero 3 hv) (by rw [hDz]; exact one_ne_zero))
      filter_upwards [hev, hDne] with w hw hDw
      rw [AddMonoidHom.comp_apply, AddEquiv.coe_toAddMonoidHom, vcPointEquiv_apply]
      rcases hw with ⟨hf0, hU0, hV0⟩ | ⟨hV0, hw, e⟩
      · left
        rw [hf0]
        exact ⟨rfl, by rw [hU0, hV0]; simp, by rw [hV0]; simp⟩
      · right
        refine ⟨div_ne_zero hV0 (mul_ne_zero (pow_ne_zero 3 hv) hDw), ?_⟩
        rw [e, vcPoint_some]
        apply exists_point_some_eq
        · simp only [vcX]
          field_simp
          ring
        · simp only [vcY, D]
          field_simp
          ring
  have hmul
  {Λ Λ' : Submodule ℤ ℂ} {E : WeierstrassCurve ℂ}
      {f : ℂ →+ E.toAffine.Point} (hf : IsAnalyticUniformization Λ f) {c : ℂ} (hc : c ≠ 0)
      (hΛ : ∀ z, z ∈ Λ' ↔ c * z ∈ Λ) :
      IsAnalyticUniformization Λ' (f.comp (AddMonoidHom.mulLeft c)) := by
    refine {
      map_eq_zero_iff := ?map_eq_zero_iff
      surjective := ?surjective
      analyticAt_affine := ?analyticAt_affine
      analyticAt_infinity := ?analyticAt_infinity }
    case map_eq_zero_iff =>
      intro z
      rw [AddMonoidHom.comp_apply, AddMonoidHom.coe_mulLeft, hf.map_eq_zero_iff, hΛ]
    case surjective =>
      intro P
      obtain ⟨y, rfl⟩ := hf.surjective P
      exact ⟨c⁻¹ * y, by rw [AddMonoidHom.comp_apply, AddMonoidHom.coe_mulLeft, mul_inv_cancel_left₀ hc]⟩
    case analyticAt_affine =>
      intro z hz
      obtain ⟨X, Y, hX, hY, hev⟩ := hf.analyticAt_affine (c * z) hz
      have ht : Tendsto (fun w ↦ c * w) (𝓝 z) (𝓝 (c * z)) := (continuous_const_mul c).tendsto z
      refine ⟨fun w ↦ X (c * w), fun w ↦ Y (c * w), hX.comp_of_eq (by fun_prop) rfl,
        hY.comp_of_eq (by fun_prop) rfl, ?_⟩
      filter_upwards [ht.eventually hev] with w hw
      exact hw
    case analyticAt_infinity =>
      intro z hz
      obtain ⟨U, V, hU, hV, hev⟩ := hf.analyticAt_infinity (c * z) hz
      have ht : Tendsto (fun w ↦ c * w) (𝓝 z) (𝓝 (c * z)) := (continuous_const_mul c).tendsto z
      refine ⟨fun w ↦ U (c * w), fun w ↦ V (c * w), hU.comp_of_eq (by fun_prop) rfl,
        hV.comp_of_eq (by fun_prop) rfl, ?_⟩
      filter_upwards [ht.eventually hev] with w hw
      exact hw
  have hf := hvc (hmul hf0 hα hΛ') C⁻¹ h'
  convert hf using 1
  ext z
  simp only [AddMonoidHom.comp_apply, AddEquiv.coe_toAddMonoidHom, vcPointEquiv_apply,
    AddMonoidHom.coe_mulLeft]
  exact (hz z).trans (variableChangePoint_latticePoint h h' _)

end GlobalTheory.CompanionTheory.EllipticCM
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsAnalyticUniformizationOfIsAnalyticIso =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapPointEqPointMapRing =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapPointEqPointMapRing", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GalStarComplexMultiplicationPoints\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ReductionMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsUniqueIdeleOfLinearEquivQuotientLocal\n\n"}
section -- clump:auto
@[expose] public section

open NumberField
open scoped nonZeroDivisors
open scoped GlobalTheory.Idele

namespace GlobalTheory.CompanionTheory.ConjPointDict

theorem mapPoint_eq_pointMapRing : ∀ [DecidableEq ℂ] (X : WeierstrassCurve ℂ) (σ : ℂ →+* ℂ)
    (P : X.toAffine.Point), GlobalTheory.ConjPoint.mapPoint X σ P = GroundTheory.Global.pointMapRing σ X P := by
  intro _ X σ P
  rcases P with _ | ⟨x, y, h⟩
  · rfl
  · obtain ⟨h', e⟩ := GroundTheory.Global.pointMapRing_some σ X h
    rw [e]
    rfl

end GlobalTheory.CompanionTheory.ConjPointDict
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapPointEqPointMapRing =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulQuotientInvMkEqMkIffMulEquiv =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulQuotientInvMkEqMkIffMulEquiv", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsEqOfNatCastMulMem\npublic import GroundTheory.GlobalFields.ComplexMultiplication.IdeleActionQuotient\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField
open scoped nonZeroDivisors
open scoped GlobalTheory.Idele

namespace GlobalTheory.CompanionTheory.IdeleQuot

open IsDedekindDomain IsDedekindDomain.HeightOneSpectrum

variable {K : Type} [Field K] [NumberField K]

theorem finitePart_apply (s : GroundTheory.Global.IdeleGroup K) (v : HeightOneSpectrum (𝓞 K)) :
    ((GlobalTheory.EllipticCM.finitePart (K := K) s : (FiniteAdeleRing (𝓞 K) K)ˣ) :
      FiniteAdeleRing (𝓞 K) K) v =
      (GroundTheory.Global.IdeleGroup.finiteProj v s : v.adicCompletion K) := by
  rw [GroundTheory.Global.IdeleGroup.coe_finiteProj]
  rfl

theorem finitePart_inv (s : GroundTheory.Global.IdeleGroup K) :
    GlobalTheory.EllipticCM.finitePart (K := K) s⁻¹ = (GlobalTheory.EllipticCM.finitePart (K := K) s)⁻¹ :=
  map_inv (Units.map (MonoidHom.snd (InfiniteAdeleRing K) (FiniteAdeleRing (𝓞 K) K))) s

theorem ord_vw_finitePart (s : GroundTheory.Global.IdeleGroup K) (v : HeightOneSpectrum (𝓞 K)) :
    GlobalTheory.Idele.ord_vw (GlobalTheory.EllipticCM.finitePart (K := K) s) v =
      GroundTheory.Global.IdeleGroup.ord v s :=
  rfl

theorem coe_smul_eq_finitePart_smul (s : GroundTheory.Global.IdeleGroup K)
    (𝔞 : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    ((s • 𝔞 : (FractionalIdeal (𝓞 K)⁰ K)ˣ) : FractionalIdeal (𝓞 K)⁰ K) =
      GlobalTheory.EllipticCM.finitePart (K := K) s • (𝔞 : FractionalIdeal (𝓞 K)⁰ K) :=
  GlobalTheory.Idele.eq_of_count_eq (Units.ne_zero _) (GlobalTheory.Idele.smul_ne_zero _ 𝔞.ne_zero) fun v => by
    rw [GroundTheory.Global.IdeleGroup.count_smul, GlobalTheory.Idele.count_smul _ 𝔞.ne_zero, ord_vw_finitePart]

theorem smulQuotient_inv_mk_eq_mk_iff_mulEquiv :
    ∀ {K : Type} [Field K] [NumberField K] (s : GroundTheory.Global.IdeleGroup K)
      (𝔞 : (FractionalIdeal (𝓞 K)⁰ K)ˣ) (x y : K),
      GroundTheory.Global.IdeleGroup.smulQuotient s⁻¹ 𝔞 (Submodule.Quotient.mk x) =
          Submodule.Quotient.mk y ↔
        GlobalTheory.Idele.mulEquiv (GlobalTheory.EllipticCM.finitePart (K := K) s)⁻¹ 𝔞.ne_zero rfl
          (Submodule.Quotient.mk x) = Submodule.Quotient.mk y := by
  intro K _ _ s 𝔞 x y
  rw [GroundTheory.Global.IdeleGroup.smulQuotient_mk_eq_mk_iff, GlobalTheory.Idele.mulEquiv_mk_eq_mk_iff]
  refine forall_congr' fun v => ?_
  rw [← finitePart_inv, finitePart_apply s⁻¹ v, coe_smul_eq_finitePart_smul]
  rfl

end GlobalTheory.CompanionTheory.IdeleQuot
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulQuotientInvMkEqMkIffMulEquiv =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.EllipticMainTheoremCM =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.EllipticMainTheoremCM", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsEqOfNatCastMulMem\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AbelianizationEqOfForallAbRestrictEq\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex\npublic import ReciprocityTheory.NeutralLocalFields.Reciprocity\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ArtinMapAbelianUnique\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsAnalyticIsoOfIsAnalyticUniformization\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsConjEqOnAlgebraicClosure\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdealLatticeToAddSubgroupEqIdealSub\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvSmulEqFinitePartInvSmul\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsAnalyticUniformizationOfIsAnalyticIso\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapPointEqPointMapRing\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmulQuotientInvMkEqMkIffMulEquiv\npublic import GroundTheory.GlobalFields.ComplexMultiplication.MainTheorem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField
open scoped nonZeroDivisors GlobalTheory.Idele

namespace GlobalTheory.CompanionTheory.Hypotheses₂

theorem ellipticMainTheoremCM : GlobalTheory.Published.EllipticMainTheoremCM := by
  classical
  intro K _ _ _ _ h2 Art hArt σ s hs X _ 𝔞 h𝔞 ξ hξ
  obtain ⟨Art₀, hArt₀, hlink⟩ := GlobalTheory.CompanionTheory.EllipticCM.exists_globalArtinMap_tied K h2
  have hEq : Art = Art₀ := MonoidHom.ext fun c =>
    GlobalTheory.CompanionTheory.GaloisAb.abelianization_eq_of_forall_abRestrict_eq K _ _ fun L h =>
      _root_.GlobalTheory.CompanionTheory.ArtinUniq.abRestrict_eq K Art Art₀ hArt hArt₀ L h c
  subst hEq
  have hfound := hlink σ s hs
  let 𝔞u : (FractionalIdeal (𝓞 K)⁰ K)ˣ := Units.mk0 𝔞 h𝔞
  have hf := GlobalTheory.CompanionTheory.EllipticCM.isAnalyticUniformization_of_isAnalyticIso X 𝔞 ξ hξ
  obtain ⟨f', ⟨hf', hrel⟩, -⟩ :=
    GroundTheory.Global.Elliptic.main_theorem_complexMultiplication h2 σ s hfound 𝔞u hf
  have hid : ((s⁻¹ • 𝔞u : (FractionalIdeal (𝓞 K)⁰ K)ˣ) : FractionalIdeal (𝓞 K)⁰ K) =
      (GlobalTheory.EllipticCM.finitePart (K := K) s)⁻¹ • 𝔞 :=
    GlobalTheory.CompanionTheory.EllipticCM.inv_smul_eq_finitePart_inv_smul s 𝔞u
  rw [hid] at hf'
  have hex := GlobalTheory.CompanionTheory.EllipticUniformization.exists_analyticIso_of_isAnalyticUniformization _ _ f' hf'
  rw [GlobalTheory.CompanionTheory.EllipticDict.idealLattice_toAddSubgroup_eq_idealSub] at hex
  obtain ⟨ξ', hξ', hξf⟩ := hex
  refine GlobalTheory.EllipticCM.transports_of_exists h𝔞 rfl hξ' fun x => ?_
  obtain ⟨t, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  obtain ⟨y, hy⟩ := Submodule.Quotient.mk_surjective _
    (GlobalTheory.Idele.mulEquiv (GlobalTheory.EllipticCM.finitePart (K := K) s)⁻¹ h𝔞 rfl (Submodule.Quotient.mk t))
  rw [← hy]
  have hq := (GlobalTheory.CompanionTheory.IdeleQuot.smulQuotient_inv_mk_eq_mk_iff_mulEquiv s 𝔞u t y).2 hy.symm
  have h3 := hrel t y hq
  rw [GlobalTheory.CompanionTheory.ConjPointDict.mapPoint_eq_pointMapRing, GlobalTheory.EllipticCM.torsionIncl_mk,
    GlobalTheory.EllipticCM.torsionIncl_mk, hξf, h3]
  rfl

end GlobalTheory.CompanionTheory.Hypotheses₂
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.EllipticMainTheoremCM =====
