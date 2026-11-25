module

public import Formalism.LocalToGlobal.KernelLattices.MuProd
public import Formalism.LocalToGlobal.Divisibility.DivisibilityProofs.TuplesP
public import Formalism.LocalToGlobal.GlobalTheory.GL1.CompactFixesLattice.AdeleIntA
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThDistC
public import Formalism.LocalToGlobal.Divisibility.TuplesLemmas
public import Formalism.LocalToGlobal.UnitaryNorms.CharProd
public import Formalism.LocalToGlobal.KernelLattices.ThDistC
public import Formalism.LocalToGlobal.Columns.ChainInst
public import Formalism.LocalToGlobal.Columns.ChainInstY
public import Formalism.LocalToGlobal.Columns.HeckeSpCount
public import Formalism.LocalToGlobal.Columns.ReductionExistsInLatticeStabilizerHolds
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ColInst
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.PenultimateKernelDiamondInvariant
public import Formalism.LocalToGlobal.Columns.HeckeExHost
public import Formalism.LocalToGlobal.Columns.ColumnsProofs.ChainCounts
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.AbsoluteValueInertPrimes
public import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.MqRowSGUnif
public import Formalism.LocalToGlobal.KernelLattices.ColInst
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Adelstab
import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
import Formalism.LocalToGlobal.Columns.AdelicLemmas
import Mathlib.Algebra.Order.Star.Int
import Formalism.LocalToGlobal.KernelLattices.XiIndCClass
import Formalism.LocalToGlobal.Columns.BaseLemmas
import Formalism.LocalToGlobal.Columns.RowFormsSel
import Mathlib.LinearAlgebra.FreeModule.IdealQuotient

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.TwistComponentsCompatibleSystem, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.TwistValueAtUniformizer, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.XiProd, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.HeckeCharacterCompatibleSystem, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.MlZFacSupport, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.HilbertNinetyNormOne, Formalism.LocalToGlobal.Columns.DetChrJoint, Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.TwistComponentsCompatibleSystem =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.TwistComponentsCompatibleSystem", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.MuProd\npublic import Formalism.LocalToGlobal.Divisibility.DivisibilityProofs.TuplesP\npublic import Formalism.LocalToGlobal.GlobalTheory.GL1.CompactFixesLattice.AdeleIntA\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThDistC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain IsDedekindDomain.HeightOneSpectrum
open scoped TensorProduct

noncomputable section

namespace Formalism.L2.Ker

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col Formalism.UG Formalism.UG.P Formalism.L2.GlobalTheoryTheory.FiltrationBoundaryCriterion.CompactFixesLatticeTheory

section XS

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem xs_intAt (P : HeightOneSpectrum (𝓞 E)) (a : E) (h : P.valuation E a ≤ 1) :
    ∃ r s : 𝓞 E, s ∉ P.asIdeal ∧ algebraMap (𝓞 E) E s * a = algebraMap (𝓞 E) E r := by
  obtain ⟨r₀, s₀, hs₀, rfl⟩ := IsFractionRing.div_surjective (A := 𝓞 E) a
  have hs0 : s₀ ≠ 0 := nonZeroDivisors.ne_zero hs₀
  have hsE : algebraMap (𝓞 E) E s₀ ≠ 0 := (map_ne_zero_iff _ (IsFractionRing.injective (𝓞 E) E)).mpr hs0
  have hv0 : P.intValuation s₀ ≠ 0 := P.intValuation_ne_zero s₀ hs0
  have hle1 : P.intValuation s₀ ≤ 1 := P.intValuation_le_one s₀
  obtain ⟨n, hn⟩ : ∃ n : ℕ, P.intValuation s₀ = WithZero.exp (-(n : ℤ)) := by
    refine ⟨(-(WithZero.log (P.intValuation s₀))).toNat, ?_⟩
    have hl : WithZero.log (P.intValuation s₀) ≤ 0 := by
      rw [WithZero.log_le_iff_le_exp hv0, WithZero.exp_zero]
      exact hle1
    rw [Int.toNat_of_nonneg (by omega), neg_neg, WithZero.exp_log hv0]
  have hsn : s₀ ∈ P.asIdeal ^ n := (P.intValuation_le_pow_iff_mem s₀ n).1 hn.le
  have hsn1 : s₀ ∉ P.asIdeal ^ (n + 1) := fun hm => by
    have h1 := (P.intValuation_le_pow_iff_mem s₀ (n + 1)).2 hm
    rw [hn, WithZero.exp_le_exp] at h1
    push_cast at h1
    omega
  have hrn : r₀ ∈ P.asIdeal ^ n := by
    rw [← intValuation_le_pow_iff_mem, ← hn]
    rw [map_div₀, valuation_of_algebraMap, valuation_of_algebraMap] at h
    exact (div_le_one₀ (zero_lt_iff.2 hv0)).1 h
  obtain ⟨J, hJ⟩ : P.asIdeal ^ n ∣ Ideal.span {s₀} := Ideal.dvd_iff_le.2 ((Ideal.span_singleton_le_iff_mem _).2 hsn)
  have hJP : ¬ J ≤ P.asIdeal := fun hle => hsn1 (by
    have h2 : Ideal.span {s₀} ≤ P.asIdeal ^ (n + 1) := by
      rw [hJ, pow_succ]
      exact Ideal.mul_mono_right hle
    exact h2 (Ideal.mem_span_singleton_self _))
  obtain ⟨j, hj, hjP⟩ := SetLike.not_le_iff_exists.1 hJP
  have h3 : r₀ * j ∈ Ideal.span {s₀} := by
    rw [hJ]
    exact Ideal.mul_mem_mul hrn hj
  obtain ⟨t, ht⟩ := Ideal.mem_span_singleton'.1 h3
  refine ⟨t, j, hjP, ?_⟩
  have h4 := congrArg (algebraMap (𝓞 E) E) ht
  rw [map_mul, map_mul] at h4
  rw [mul_div_assoc', div_eq_iff hsE, h4]
  ring

theorem xs_den (v : HeightOneSpectrum (𝓞 F)) (a : E)
    (h : ∀ P : HeightOneSpectrum (𝓞 E), P.asIdeal.under (𝓞 F) = v.asIdeal → P.valuation E a ≤ 1) :
    ∃ (d : 𝓞 F) (r : 𝓞 E), d ∉ v.asIdeal ∧ algebraMap (𝓞 E) E (algebraMap (𝓞 F) (𝓞 E) d) * a = algebraMap (𝓞 E) E r := by
  let I : Ideal (𝓞 E) :=
    { carrier := {t | ∃ r : 𝓞 E, algebraMap (𝓞 E) E t * a = algebraMap (𝓞 E) E r}
      add_mem' := by
        rintro x y ⟨r, hr⟩ ⟨r', hr'⟩
        exact ⟨r + r', by rw [map_add (f := _), add_mul, hr, hr', map_add (f := _)]⟩
      zero_mem' := ⟨0, by rw [map_zero, zero_mul]⟩
      smul_mem' := by
        rintro c x ⟨r, hr⟩
        exact ⟨c * r, by rw [smul_eq_mul, map_mul, mul_assoc, hr, map_mul]⟩ }
  by_contra hcon
  have hle : Ideal.comap (algebraMap (𝓞 F) (𝓞 E)) I ≤ v.asIdeal := by
    intro d hd
    obtain ⟨r, hr⟩ := hd
    by_contra hdv
    exact hcon ⟨d, r, hdv, hr⟩
  have := v.isPrime
  obtain ⟨Q, hQ, hQp, hQv⟩ := Ideal.exists_ideal_over_prime_of_isIntegral v.asIdeal I hle
  have hQ0 : Q ≠ ⊥ := by
    rintro rfl
    apply v.ne_bot
    rw [← hQv]
    exact Ideal.comap_bot_of_injective _ (FaithfulSMul.algebraMap_injective (𝓞 F) (𝓞 E))
  obtain ⟨r, s, hs, hrs⟩ := xs_intAt ⟨Q, hQp, hQ0⟩ a (h ⟨Q, hQp, hQ0⟩ hQv)
  exact hs (hQ ⟨r, hrs⟩)

theorem xs_elt (v : HeightOneSpectrum (𝓞 F)) (a : E)
    (h : ∀ P : HeightOneSpectrum (𝓞 E), P.asIdeal.under (𝓞 F) = v.asIdeal → P.valuation E a ≤ 1) :
    ∃ t : RInt F E, (t : AfE F E) = a ⊗ₜ[F] Formalism.L2.G.sgl F v 1 ∧
      ∀ P : HeightOneSpectrum (𝓞 E), P.valuation E a < 1 → t ∈ P.asIdeal.map (toRInt F E) := by
  obtain ⟨d, r, hd, hr⟩ := xs_den v a h
  have hval : Valued.v (algebraMap F (v.adicCompletion F) (algebraMap (𝓞 F) F d)) = 1 := by
    rw [AdeleIntA.val_R, intValuation_eq_one_iff_mem_primeCompl]
    exact Ideal.mem_primeCompl_iff.mpr hd
  have ha0 : algebraMap F (v.adicCompletion F) (algebraMap (𝓞 F) F d) ≠ 0 := by
    intro h0
    rw [h0, map_zero] at hval
    exact zero_ne_one hval
  have hc : (algebraMap F (v.adicCompletion F) (algebraMap (𝓞 F) F d))⁻¹ ∈ v.adicCompletionIntegers F := by
    rw [mem_adicCompletionIntegers, map_inv₀, hval, inv_one]
  refine ⟨toRInt F E r * ⟨(1 : E) ⊗ₜ[F] Formalism.L2.G.sgl F v (algebraMap F (v.adicCompletion F) (algebraMap (𝓞 F) F d))⁻¹, qu_right _ (qu_sgl_int v _ hc)⟩,
    ?_, fun P hP => Ideal.mul_mem_right _ _ (Ideal.mem_map_of_mem _ ?_)⟩
  · show ((algebraMap (𝓞 E) E r) ⊗ₜ[F] (1 : FiniteAdeleRing (𝓞 F) F)) *
      ((1 : E) ⊗ₜ[F] Formalism.L2.G.sgl F v (algebraMap F (v.adicCompletion F) (algebraMap (𝓞 F) F d))⁻¹) = _
    rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul, ← hr, qu_tow, ← Algebra.smul_def, TensorProduct.smul_tmul, ← map_smul, Algebra.smul_def,
      mul_inv_cancel₀ ha0]
  · rw [← valuation_lt_one_iff_mem (K := E)]
    show P.valuation E (algebraMap (𝓞 E) E r) < 1
    rw [← hr, map_mul]
    calc P.valuation E (algebraMap (𝓞 E) E (algebraMap (𝓞 F) (𝓞 E) d)) * P.valuation E a ≤ 1 * P.valuation E a :=
          mul_le_mul' (P.valuation_le_one _) le_rfl
      _ = P.valuation E a := one_mul _
      _ < 1 := hP

theorem xs_val (v : HeightOneSpectrum (𝓞 F)) (a : Eˣ) :
    ((locId E v a : (AfE F E)ˣ) : AfE F E) = (a : E) ⊗ₜ[F] Formalism.L2.G.sgl F v 1 + (1 : E) ⊗ₜ[F] (1 - Formalism.L2.G.sgl F v 1) := rfl

theorem xs_supp (v : HeightOneSpectrum (𝓞 F)) (a : Eˣ) : locId E v a ∈ suppAt E v := by
  rw [b_mem_suppAt]
  intro v' hv'
  show (Algebra.TensorProduct.map (AlgHom.id F E) (evalV F v')) ((a : E) ⊗ₜ[F] Formalism.L2.G.sgl F v 1 + (1 : E) ⊗ₜ[F] (1 - Formalism.L2.G.sgl F v 1)) = 1
  rw [map_add (f := _), Algebra.TensorProduct.map_tmul, Algebra.TensorProduct.map_tmul, map_sub, Formalism.L2.G.sgl_apply_ne F v 1 hv', TensorProduct.tmul_zero,
    zero_add, sub_zero, map_one (evalV F v')]
  rfl

theorem xs_one_sub (v : HeightOneSpectrum (𝓞 F)) : (1 : E) ⊗ₜ[F] (1 - Formalism.L2.G.sgl F v 1) ∈ RInt F E :=
  qu_right _ ((intAd F).sub_mem (intAd F).one_mem (qu_sgl_int v 1 (one_mem _)))

theorem xs_intU (v : HeightOneSpectrum (𝓞 F)) (a : Eˣ)
    (h : ∀ P : HeightOneSpectrum (𝓞 E), P.asIdeal.under (𝓞 F) = v.asIdeal → P.valuation E (a : E) = 1) : locId E v a ∈ intU F E := by
  rw [intU, Submonoid.mem_units_iff]
  constructor
  · obtain ⟨t, ht, _⟩ := xs_elt v (a : E) (fun P hP => (h P hP).le)
    show (a : E) ⊗ₜ[F] Formalism.L2.G.sgl F v 1 + (1 : E) ⊗ₜ[F] (1 - Formalism.L2.G.sgl F v 1) ∈ RInt F E
    rw [← ht]
    exact add_mem t.2 (xs_one_sub v)
  · obtain ⟨t, ht, _⟩ := xs_elt v ((a⁻¹ : Eˣ) : E) (fun P hP => by rw [Units.val_inv_eq_inv_val, map_inv₀, h P hP, inv_one])
    show ((a⁻¹ : Eˣ) : E) ⊗ₜ[F] Formalism.L2.G.sgl F v 1 + (1 : E) ⊗ₜ[F] (1 - Formalism.L2.G.sgl F v 1) ∈ RInt F E
    rw [← ht]
    exact add_mem t.2 (xs_one_sub v)

theorem xs_unit_of_oneAt {P : HeightOneSpectrum (𝓞 E)} {a : E} (h : OneAt P a) : P.valuation E a = 1 := by
  have h1 := Valuation.map_one_add_of_lt (v := P.valuation E) h
  rwa [add_sub_cancel] at h1

theorem xs_wild (v : HeightOneSpectrum (𝓞 F)) (a : Eˣ)
    (h : ∀ P : HeightOneSpectrum (𝓞 E), P.asIdeal.under (𝓞 F) = v.asIdeal → OneAt P (a : E)) : locId E v a ∈ wildAt E v := by
  obtain ⟨u, hu⟩ := b_intU _ (xs_intU v a fun P hP => xs_unit_of_oneAt (h P hP))
  rw [← hu]
  apply tpWild_proof' v u (by rw [hu]; exact xs_supp v a)
  intro P
  by_cases hP : P.asIdeal.under (𝓞 F) = v.asIdeal
  · obtain ⟨t, ht, hm⟩ := xs_elt v ((a : E) - 1) (fun P' hP' => (h P' hP').le)
    have e : (u : RInt F E) - 1 = t := Subtype.ext (by
      show ((u : RInt F E) : AfE F E) - 1 = t
      have h1 : ((u : RInt F E) : AfE F E) = ((locId E v a : (AfE F E)ˣ) : AfE F E) := congrArg Units.val hu
      rw [h1, ht, xs_val, TensorProduct.sub_tmul, ← locId_one (E := E) v]
      ring)
    rw [e]
    exact hm P (h P hP)
  · exact tpOff_proof' v P hP u (by rw [hu]; exact xs_supp v a)

theorem xs_idF (v : HeightOneSpectrum (𝓞 F)) (k : Fˣ) : locId E v (Units.map (algebraMap F E).toMonoidHom k) ∈ (idF F E).range := by
  have h1 : Formalism.L2.G.sgl F v 1 * Formalism.L2.G.sgl F v 1 = Formalism.L2.G.sgl F v 1 := by rw [← Formalism.L2.G.sgl_mul, one_mul]
  have hk : algebraMap F (FiniteAdeleRing (𝓞 F) F) (k : F) * algebraMap F (FiniteAdeleRing (𝓞 F) F) ((k⁻¹ : Fˣ) : F) = 1 := by
    rw [← map_mul, Units.mul_inv, map_one]
  let y : (FiniteAdeleRing (𝓞 F) F)ˣ :=
    { val := algebraMap F (FiniteAdeleRing (𝓞 F) F) (k : F) * Formalism.L2.G.sgl F v 1 + (1 - Formalism.L2.G.sgl F v 1)
      inv := algebraMap F (FiniteAdeleRing (𝓞 F) F) ((k⁻¹ : Fˣ) : F) * Formalism.L2.G.sgl F v 1 + (1 - Formalism.L2.G.sgl F v 1)
      val_inv := by
        linear_combination (algebraMap F (FiniteAdeleRing (𝓞 F) F) (k : F) * algebraMap F (FiniteAdeleRing (𝓞 F) F) ((k⁻¹ : Fˣ) : F)
          - algebraMap F (FiniteAdeleRing (𝓞 F) F) (k : F) - algebraMap F (FiniteAdeleRing (𝓞 F) F) ((k⁻¹ : Fˣ) : F) + 1) * h1 + Formalism.L2.G.sgl F v 1 * hk
      inv_val := by
        linear_combination (algebraMap F (FiniteAdeleRing (𝓞 F) F) (k : F) * algebraMap F (FiniteAdeleRing (𝓞 F) F) ((k⁻¹ : Fˣ) : F)
          - algebraMap F (FiniteAdeleRing (𝓞 F) F) (k : F) - algebraMap F (FiniteAdeleRing (𝓞 F) F) ((k⁻¹ : Fˣ) : F) + 1) * h1 + Formalism.L2.G.sgl F v 1 * hk }
  refine ⟨y, Units.ext ?_⟩
  show (1 : E) ⊗ₜ[F] (algebraMap F (FiniteAdeleRing (𝓞 F) F) (k : F) * Formalism.L2.G.sgl F v 1 + (1 - Formalism.L2.G.sgl F v 1)) =
    (algebraMap F E (k : F)) ⊗ₜ[F] Formalism.L2.G.sgl F v 1 + (1 : E) ⊗ₜ[F] (1 - Formalism.L2.G.sgl F v 1)
  rw [TensorProduct.tmul_add, qu_move]

end XS

theorem twist_components_compatible_system : XiSys := by
  intro F E _ _ _ _ _ L _ S ξ
  refine ⟨fun v a h => ?_, fun v k => ?_, fun v hv a h => ?_⟩
  · exact MonoidHom.mem_ker.1 ((mem_kills.1 ((Subgroup.mem_iInf.1 ξ.2.1.2) v)) (xs_wild v a h))
  · exact MonoidHom.mem_ker.1 ((mem_kills.1 ξ.2.1.1.2) (xs_idF v k))
  · have hle : inertAt E v ≤ (ξ : Chr F E L).ker := by
      by_contra hc
      exact hv hc
    exact MonoidHom.mem_ker.1 (hle ⟨xs_intU v a h, xs_supp v a⟩)

end Formalism.L2.Ker
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.TwistComponentsCompatibleSystem =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.TwistValueAtUniformizer =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.TwistValueAtUniformizer", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.MuProd\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThDistC\nimport Formalism.LocalToGlobal.Divisibility.DivisibilityProofs.TuplesP\nimport Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Adelstab\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain
open scoped TensorProduct

noncomputable section

namespace Formalism.L2.Ker

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col Formalism.UG Formalism.UG.P

section XV

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

def xvY (v : HeightOneSpectrum (𝓞 F)) (b : 𝓞 E) : RInt F E := toRInt F E b * quE E v + (1 - quE E v)

theorem xv_coe (v : HeightOneSpectrum (𝓞 F)) (w : Eˣ) (b : 𝓞 E) (hw : (w : E) = (b : E)) :
    ((xvY v b : RInt F E) : AfE F E) = ((locId E v w : (AfE F E)ˣ) : AfE F E) := by
  show ((algebraMap (𝓞 E) E b) ⊗ₜ[F] (1 : FiniteAdeleRing (𝓞 F) F)) * ((1 : E) ⊗ₜ[F] Formalism.L2.G.sgl F v 1) + (1 - (1 : E) ⊗ₜ[F] Formalism.L2.G.sgl F v 1) =
    (w : E) ⊗ₜ[F] Formalism.L2.G.sgl F v 1 + (1 : E) ⊗ₜ[F] (1 - Formalism.L2.G.sgl F v 1)
  rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul, hw, TensorProduct.tmul_sub]
  rfl

theorem xv_supp (v : HeightOneSpectrum (𝓞 F)) (w : Eˣ) : locId E v w ∈ suppAt E v := by
  unfold suppAt
  rw [Subgroup.mem_iInf]
  intro v'
  rw [Subgroup.mem_iInf]
  intro hne
  rw [MonoidHom.mem_ker]
  apply Units.ext
  show (Algebra.TensorProduct.map (AlgHom.id F E) (evalV F v')) ((w : E) ⊗ₜ[F] Formalism.L2.G.sgl F v 1 + (1 : E) ⊗ₜ[F] (1 - Formalism.L2.G.sgl F v 1)) = 1
  rw [map_add (f := _), Algebra.TensorProduct.map_tmul, Algebra.TensorProduct.map_tmul, map_sub, Formalism.L2.G.sgl_apply_ne F v 1 hne,
    TensorProduct.tmul_zero, zero_add, sub_zero, map_one (evalV F v')]
  rfl

theorem xv_cong (v : HeightOneSpectrum (𝓞 F)) (P : HeightOneSpectrum (𝓞 E)) (hv : P.asIdeal.under (𝓞 F) = v.asIdeal) (b t : 𝓞 E) (k : ℕ)
    (h : b - t ∈ P.asIdeal ^ k) : xvY v b - toRInt F E t ∈ (P.asIdeal ^ k).map (toRInt F E) := by
  have e : xvY v b - toRInt F E t = toRInt F E (b - t) * quE E v + toRInt F E (1 - t) * (1 - quE E v) := by
    unfold xvY
    rw [map_sub, map_sub, map_one]; ring
  rw [e]
  refine Ideal.add_mem _ (Ideal.mul_mem_right _ _ (Ideal.mem_map_of_mem _ h)) (Ideal.mul_mem_left _ _ (qu_one_sub_mem v _ k ?_))
  intro a ha
  have h1 : algebraMap (𝓞 F) (𝓞 E) a ∈ (v.asIdeal ^ k).map (algebraMap (𝓞 F) (𝓞 E)) := Ideal.mem_map_of_mem _ ha
  rw [Ideal.map_pow] at h1
  refine Ideal.pow_right_mono ?_ k h1
  rw [Ideal.map_le_iff_le_comap, ← hv]

theorem xv_other (v : HeightOneSpectrum (𝓞 F)) (P' : HeightOneSpectrum (𝓞 E)) (b : 𝓞 E)
    (h : P'.asIdeal.under (𝓞 F) = v.asIdeal → b - 1 ∈ P'.asIdeal) : xvY v b - 1 ∈ P'.asIdeal.map (toRInt F E) := by
  have e : xvY v b - 1 = toRInt F E (b - 1) * quE E v := by
    unfold xvY
    rw [map_sub, map_one]; ring
  rw [e]
  by_cases hP' : P'.asIdeal.under (𝓞 F) = v.asIdeal
  · exact Ideal.mul_mem_right _ _ (Ideal.mem_map_of_mem _ (h hP'))
  · refine Ideal.mul_mem_left _ _ ?_
    have hex : ∃ a : 𝓞 F, algebraMap (𝓞 F) (𝓞 E) a ∈ P'.asIdeal ∧ a ∉ v.asIdeal := by
      by_contra hcon
      push Not at hcon
      apply hP'
      have hle : P'.asIdeal.under (𝓞 F) ≤ v.asIdeal := fun a ha => hcon a ha
      have hbot : P'.asIdeal.under (𝓞 F) ≠ ⊥ := Ideal.under_ne_bot (𝓞 F) P'.ne_bot
      have hpr : (P'.asIdeal.under (𝓞 F)).IsPrime := inferInstance
      exact (hpr.isMaximal hbot).eq_of_le v.isPrime.ne_top hle
    obtain ⟨a, ha1, ha2⟩ := hex
    exact qu_eps_mem v _ a ha1 ha2

theorem xv_top (P : HeightOneSpectrum (𝓞 E)) (K : Ideal (RInt F E)) (hK : ∀ P' : HeightOneSpectrum (𝓞 E), P'.asIdeal.map (toRInt F E) ⊔ K = ⊤)
    (D : 𝓞 F) (hD0 : D ≠ 0) (hD : toRInt F E (algebraMap (𝓞 F) (𝓞 E) D) ∈ K) : K = ⊤ := by
  have hI : Ideal.span {algebraMap (𝓞 F) (𝓞 E) D} ≠ 0 := by
    rw [Ne, Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot]
    intro h
    apply adelstab_algebraMap_ne_zero (E := E) D hD0
    rw [IsScalarTower.algebraMap_apply (𝓞 F) (𝓞 E) E, h, map_zero]
  obtain ⟨n, hn⟩ := qe_strip P K (fun P' _ => hK P') _ hI 0 (by
    rw [pow_zero, one_mul, Ideal.map_span, Set.image_singleton, Ideal.span_singleton_le_iff_mem]; exact hD)
  have h1 : (P.asIdeal.map (toRInt F E)) ^ n ⊔ K = ⊤ := Ideal.pow_sup_eq_top (hK P)
  rw [← Ideal.map_pow, sup_eq_right.2 hn] at h1
  exact h1

variable {L : Type} [Field L]

theorem xv_same (ξ : Chr F E L) (v : HeightOneSpectrum (𝓞 F)) (hξ : inertAt E v ≤ ξ.ker) (P : HeightOneSpectrum (𝓞 E)) (q q' : 𝓞 E)
    (hq : q ∈ P.asIdeal) (hq2 : q ∉ P.asIdeal ^ 2) (hq' : q' ∈ P.asIdeal) (hq2' : q' ∉ P.asIdeal ^ 2) (y y' : (AfE F E)ˣ) (y₀ y₀' : RInt F E)
    (hy : (y₀ : AfE F E) = (y : AfE F E)) (hy' : (y₀' : AfE F E) = (y' : AfE F E)) (hs : y ∈ suppAt E v) (hs' : y' ∈ suppAt E v)
    (h1 : y₀ - toRInt F E q ∈ (P.asIdeal ^ 2).map (toRInt F E)) (h1' : y₀' - toRInt F E q' ∈ (P.asIdeal ^ 2).map (toRInt F E))
    (h2 : ∀ P' : HeightOneSpectrum (𝓞 E), P' ≠ P → y₀ - 1 ∈ P'.asIdeal.map (toRInt F E))
    (h2' : ∀ P' : HeightOneSpectrum (𝓞 E), P' ≠ P → y₀' - 1 ∈ P'.asIdeal.map (toRInt F E)) : ξ y = ξ y' := by
  have hle := qe_le P y y₀ hy q hq hq2 h1 h2
  have hle' := qe_le P y' y₀' hy' q' hq' hq2' h1' h2'
  have hmem : ∀ (z₀ : RInt F E) (c : 𝓞 E), c ∈ P.asIdeal → z₀ - toRInt F E c ∈ (P.asIdeal ^ 2).map (toRInt F E) → z₀ ∈ P.asIdeal.map (toRInt F E) := by
    intro z₀ c hc hz
    have e : z₀ = (z₀ - toRInt F E c) + toRInt F E c := by ring
    rw [e]
    exact add_mem (Ideal.map_mono (Ideal.pow_le_self two_ne_zero) hz) (Ideal.mem_map_of_mem _ hc)
  obtain ⟨a, ha⟩ := Ideal.mem_span_singleton'.1 (hle' (hmem y₀ q hq h1))
  obtain ⟨a', ha'⟩ := Ideal.mem_span_singleton'.1 (hle (hmem y₀' q' hq' h1'))
  have haa : a * a' = 1 := by
    have e0 : a * a' * y₀ = y₀ := by rw [mul_assoc, ha', ha]
    have e1 : ((a * a' : RInt F E) : AfE F E) * (y : AfE F E) = 1 * (y : AfE F E) := by
      rw [one_mul, ← hy]
      exact congrArg Subtype.val e0
    exact Subtype.ext (y.isUnit.mul_right_cancel e1)
  let u : (RInt F E)ˣ := ⟨a, a', haa, by rw [mul_comm]; exact haa⟩
  have hu : Units.map (RInt F E).subtype.toMonoidHom u = y * y'⁻¹ := by
    apply Units.ext
    show (a : AfE F E) = (y : AfE F E) * ((y'⁻¹ : (AfE F E)ˣ) : AfE F E)
    have e2 : (a : AfE F E) * (y' : AfE F E) = (y : AfE F E) := by
      rw [← hy, ← hy']
      exact congrArg Subtype.val ha
    rw [← e2, mul_assoc, Units.mul_inv, mul_one]
  have hw : Units.map (RInt F E).subtype.toMonoidHom u ∈ inertAt E v := by
    refine Subgroup.mem_inf.2 ⟨?_, by rw [hu]; exact mul_mem hs (inv_mem hs')⟩
    show _ ∈ (RInt F E).toSubmonoid.units
    rw [Submonoid.mem_units_iff]
    exact ⟨a.2, a'.2⟩
  have h3 := hξ hw
  rw [hu, MonoidHom.mem_ker, map_mul, map_inv, mul_inv_eq_one] at h3
  exact h3

end XV

theorem xv_tame {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {L : Type} [Field L] {S : Set ℕ}
    (ξ : Tup F E L S) (v : HeightOneSpectrum (𝓞 F)) : wildAt E v ≤ (ξ : Chr F E L).ker :=
  mem_kills.1 ((Subgroup.mem_iInf.1 ξ.2.1.2) v)

theorem twist_value_at_q : XiQ := by
  intro F E _ _ _ _ _ L _ S ξ v P hv hq w b hw hb1 hb2
  exact qVal_spec_tup ξ P hq v hv (locId E v w) (xvY v b) (xv_coe v w b hw) (xv_supp v w) (xv_cong v P hv b _ 2 hb1)
    (fun P' hne => xv_other v P' b (hb2 P' hne))

theorem twist_residue_character : XiRes := by
  intro F E _ _ _ _ _ L _ S ξ v P hv w b r hw hb hb2
  have hbP : b ∉ P.asIdeal := by
    intro h
    rw [← Ideal.Quotient.eq_zero_iff_mem, hb] at h
    exact r.ne_zero h
  have hc1 : xvY (F := F) v b - toRInt F E b ∈ P.asIdeal.map (toRInt F E) := by
    have := xv_cong v P hv b b 1 (by rw [sub_self]; exact zero_mem _)
    rwa [pow_one] at this
  have hoth : ∀ P' : HeightOneSpectrum (𝓞 E), P' ≠ P → xvY (F := F) v b - 1 ∈ P'.asIdeal.map (toRInt F E) :=
    fun P' hne => xv_other v P' b (hb2 P' hne)
  have hy0 : xvY (F := F) v b ∈ Ideal.span {xvY (F := F) v b} := Ideal.mem_span_singleton_self _
  have hK : ∀ P' : HeightOneSpectrum (𝓞 E), P'.asIdeal.map (toRInt F E) ⊔ Ideal.span {xvY (F := F) v b} = ⊤ := by
    intro P'
    rw [Ideal.eq_top_iff_one]
    by_cases hP' : P' = P
    · rw [hP']
      obtain ⟨b', i, hi, hbi⟩ := P.isMaximal.exists_inv hbP
      have e3 := congrArg (toRInt F E) hbi
      simp only [map_add (f := _), map_mul, map_one] at e3
      have e : (1 : RInt F E) = (toRInt F E i - (xvY (F := F) v b - toRInt F E b) * toRInt F E b') + xvY (F := F) v b * toRInt F E b' := by
        linear_combination -e3
      rw [e]
      exact Ideal.add_mem _ (Ideal.mem_sup_left (sub_mem (Ideal.mem_map_of_mem _ hi) (Ideal.mul_mem_right _ _ hc1)))
        (Ideal.mem_sup_right (Ideal.mul_mem_right _ _ hy0))
    · have e : (1 : RInt F E) = -(xvY (F := F) v b - 1) + xvY (F := F) v b := by ring
      rw [e]
      exact Ideal.add_mem _ (Ideal.mem_sup_left (neg_mem (hoth P' hP'))) (Ideal.mem_sup_right hy0)
  obtain ⟨D, hD0, hD⟩ := qe_denom (locId E v w) (xvY v b) (xv_coe v w b hw)
  have htop := xv_top P _ hK D hD0 hD
  obtain ⟨a, ha⟩ := Ideal.mem_span_singleton'.1 ((Ideal.eq_top_iff_one _).1 htop)
  let u : (RInt F E)ˣ := ⟨xvY v b, a, by rw [mul_comm]; exact ha, ha⟩
  have hu : Units.map (RInt F E).subtype.toMonoidHom u = locId E v w := Units.ext (xv_coe v w b hw)
  have h := b_resChar_spec (ξ : Chr F E L) (xv_tame ξ) P v hv u r b hb (by rw [hu]; exact xv_supp v w) hc1 hoth
  rw [hu] at h
  exact h

theorem twist_value_at_uniformizer : XiUnif := by
  intro F E _ _ _ _ _ L _ S ξ v P hv hQ w b hw hb1 hb2 hb3
  have hin : inertAt E v ≤ (ξ : Chr F E L).ker := by
    by_contra h
    exact hQ h
  have hY1 : xvY (F := F) v b - toRInt F E b ∈ (P.asIdeal ^ 2).map (toRInt F E) := xv_cong v P hv b b 2 (by rw [sub_self]; exact zero_mem _)
  have hY2 : ∀ P' : HeightOneSpectrum (𝓞 E), P' ≠ P → xvY (F := F) v b - 1 ∈ P'.asIdeal.map (toRInt F E) :=
    fun P' hne => xv_other v P' b (hb3 P' hne)
  have hex : ∃ k, IsUnifVal (ξ : Chr F E L) P k := by
    refine ⟨(ξ : Chr F E L) (locId E v w), fun v' hv' y y₀ b' hy hb1' hb2' hs h1 h2 => ?_⟩
    have hvv : v' = v := HeightOneSpectrum.ext (hv'.symm.trans hv)
    subst hvv
    exact xv_same (ξ : Chr F E L) v' hin P b' b hb1' hb2' hb1 hb2 y (locId E v' w) y₀ (xvY v' b) hy (xv_coe v' w b hw) hs (xv_supp v' w) h1 hY1 h2 hY2
  have hsp : IsUnifVal (ξ : Chr F E L) P (unifVal (ξ : Chr F E L) P) := by
    unfold unifVal
    rw [dite_eq_left hex]
    exact hex.choose_spec
  exact hsp v hv (locId E v w) (xvY v b) b (xv_coe v w b hw) hb1 hb2 (xv_supp v w) hY1 hY2

end Formalism.L2.Ker
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.TwistValueAtUniformizer =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.XiProd =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.XiProd", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.MuProd\npublic import Formalism.LocalToGlobal.Divisibility.TuplesLemmas\npublic import Formalism.LocalToGlobal.GlobalTheory.GL1.CompactFixesLattice.AdeleIntA\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThDistC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain IsDedekindDomain.HeightOneSpectrum
open scoped TensorProduct

noncomputable section

namespace Formalism.L2.Ker

open Formalism.L2.DIV Formalism.UG

section XP

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

def xpJ (d : FiniteAdeleRing (𝓞 F) F) (a : E) : AfE F E := a ⊗ₜ[F] d + (1 : E) ⊗ₜ[F] (1 - d)

theorem xp_J_locId (v : HeightOneSpectrum (𝓞 F)) (a : Eˣ) : ((locId E v a : (AfE F E)ˣ) : AfE F E) = xpJ (Formalism.L2.G.sgl F v 1) (a : E) := rfl

theorem xp_J_zero (a : E) : xpJ (0 : FiniteAdeleRing (𝓞 F) F) a = 1 := by
  unfold xpJ
  rw [TensorProduct.tmul_zero, zero_add, sub_zero]
  rfl

theorem xp_J_one (a : E) : xpJ (1 : FiniteAdeleRing (𝓞 F) F) a = a ⊗ₜ[F] (1 : FiniteAdeleRing (𝓞 F) F) := by
  unfold xpJ
  rw [sub_self, TensorProduct.tmul_zero, add_zero]

theorem xp_J_orth {d d' : FiniteAdeleRing (𝓞 F) F} (h : d * d' = 0) (a : E) : xpJ d a * xpJ d' a = xpJ (d + d') a := by
  have h1 : d * (1 - d') = d := by rw [mul_sub, mul_one, h, sub_zero]
  have h2 : (1 - d) * d' = d' := by rw [_root_.sub_mul, one_mul, h, sub_zero]
  have h3 : (1 - d) * (1 - d') = 1 - (d + d') := by rw [_root_.sub_mul, one_mul, h1]; ring
  unfold xpJ
  rw [add_mul, mul_add, mul_add, Algebra.TensorProduct.tmul_mul_tmul, Algebra.TensorProduct.tmul_mul_tmul, Algebra.TensorProduct.tmul_mul_tmul,
    Algebra.TensorProduct.tmul_mul_tmul, h, h1, h2, h3, TensorProduct.tmul_zero, zero_add, mul_one, one_mul, one_mul, TensorProduct.tmul_add]
  abel

theorem xp_J_same {d : FiniteAdeleRing (𝓞 F) F} (h : d * d = d) (a b : E) : xpJ d a * xpJ d b = xpJ d (a * b) := by
  have h2 : d * (1 - d) = 0 := by rw [mul_sub, mul_one, h, sub_self]
  have h3 : (1 - d) * d = 0 := by rw [_root_.sub_mul, one_mul, h, sub_self]
  have h4 : (1 - d) * (1 - d) = 1 - d := by rw [mul_sub, mul_one, h3, sub_zero]
  unfold xpJ
  rw [add_mul, mul_add, mul_add, Algebra.TensorProduct.tmul_mul_tmul, Algebra.TensorProduct.tmul_mul_tmul, Algebra.TensorProduct.tmul_mul_tmul,
    Algebra.TensorProduct.tmul_mul_tmul, h, h2, h3, h4, TensorProduct.tmul_zero, TensorProduct.tmul_zero, add_zero, zero_add, one_mul]

theorem xp_J_sub (d : FiniteAdeleRing (𝓞 F) F) (a : E) : xpJ d a = 1 + (a - 1) ⊗ₜ[F] d := by
  unfold xpJ
  rw [TensorProduct.tmul_sub, TensorProduct.sub_tmul, Algebra.TensorProduct.one_def]
  abel

theorem xp_scal (n : ℕ) (y : E) (g : FiniteAdeleRing (𝓞 F) F) :
    y ⊗ₜ[F] (((n : ℕ) : FiniteAdeleRing (𝓞 F) F) * g) = (((n : ℕ) : E) * y) ⊗ₜ[F] g := by
  have h1 : ((n : ℕ) : FiniteAdeleRing (𝓞 F) F) * g = ((n : ℕ) : F) • g := by rw [Algebra.smul_def, map_natCast]
  rw [h1, ← TensorProduct.smul_tmul, Algebra.smul_def, map_natCast]

theorem xp_J_eq (N k : ℕ) (a : E) (b : 𝓞 E) (hb : ((k : ℕ) : E) * (a - 1) = (b : E)) (g : FiniteAdeleRing (𝓞 F) F) (hg : g ∈ intAd F)
    (d : FiniteAdeleRing (𝓞 F) F) (hd : d = ((N * k : ℕ) : FiniteAdeleRing (𝓞 F) F) * g) :
    ∃ r : RInt F E, xpJ d a = ((1 + (N : RInt F E) * r : RInt F E) : AfE F E) := by
  refine ⟨toRInt F E b * ⟨(1 : E) ⊗ₜ[F] g, qu_right g hg⟩, ?_⟩
  rw [xp_J_sub, hd, xp_scal]
  push_cast
  congr 1
  show _ = (N : AfE F E) * ((algebraMap (𝓞 E) E b ⊗ₜ[F] (1 : FiniteAdeleRing (𝓞 F) F)) * ((1 : E) ⊗ₜ[F] g))
  rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
  conv_rhs => rw [← nsmul_eq_mul, TensorProduct.smul_tmul', nsmul_eq_mul]
  rw [mul_assoc, hb]

theorem xp_J_at_one (d : FiniteAdeleRing (𝓞 F) F) : xpJ d (1 : E) = 1 := by
  unfold xpJ
  rw [← TensorProduct.tmul_add, add_sub_cancel]
  rfl

theorem xp_mem_congN (N k : ℕ) (a : Eˣ) (b b' : 𝓞 E) (hb : ((k : ℕ) : E) * ((a : E) - 1) = (b : E))
    (hb' : ((k : ℕ) : E) * (((a⁻¹ : Eˣ) : E) - 1) = (b' : E)) (g : FiniteAdeleRing (𝓞 F) F) (hg : g ∈ intAd F)
    (d : FiniteAdeleRing (𝓞 F) F) (hd : d = ((N * k : ℕ) : FiniteAdeleRing (𝓞 F) F) * g) (hdd : d * d = d)
    (u : (AfE F E)ˣ) (hu : (u : AfE F E) = xpJ d (a : E)) : u ∈ congN F E N := by
  obtain ⟨r, hr⟩ := xp_J_eq N k (a : E) b hb g hg d hd
  obtain ⟨r', hr'⟩ := xp_J_eq N k ((a⁻¹ : Eˣ) : E) b' hb' g hg d hd
  let u₀ : (RInt F E)ˣ :=
    { val := 1 + (N : RInt F E) * r
      inv := 1 + (N : RInt F E) * r'
      val_inv := Subtype.ext (by
        show ((1 + (N : RInt F E) * r : RInt F E) : AfE F E) * ((1 + (N : RInt F E) * r' : RInt F E) : AfE F E) = 1
        rw [← hr, ← hr', xp_J_same hdd, Units.mul_inv, xp_J_at_one])
      inv_val := Subtype.ext (by
        show ((1 + (N : RInt F E) * r' : RInt F E) : AfE F E) * ((1 + (N : RInt F E) * r : RInt F E) : AfE F E) = 1
        rw [← hr, ← hr', xp_J_same hdd, Units.inv_mul, xp_J_at_one]) }
  unfold congN congU
  rw [Subgroup.mem_map]
  refine ⟨u₀, (mem_kerRed _ u₀).2 ?_, Units.ext ?_⟩
  · show 1 + (N : RInt F E) * r - 1 ∈ _
    rw [add_sub_cancel_left]
    exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _)
  · show ((1 + (N : RInt F E) * r : RInt F E) : AfE F E) = u
    rw [← hr, hu]

theorem xp_g (M : ℕ) (hM : 0 < M) (d : FiniteAdeleRing (𝓞 F) F) (hd : d ∈ intAd F)
    (hT : ∀ v : HeightOneSpectrum (𝓞 F), ((M : ℕ) : 𝓞 F) ∈ v.asIdeal → evalV F v d = 0) :
    ∃ g ∈ intAd F, d = ((M : ℕ) : FiniteAdeleRing (𝓞 F) F) * g := by
  have hM0 : ((M : ℕ) : F) ≠ 0 := by exact_mod_cast hM.ne'
  refine ⟨algebraMap F (FiniteAdeleRing (𝓞 F) F) ((M : ℕ) : F)⁻¹ * d, ?_, ?_⟩
  · intro v
    show algebraMap F (v.adicCompletion F) ((M : ℕ) : F)⁻¹ * d v ∈ v.adicCompletionIntegers F
    by_cases hv : ((M : ℕ) : 𝓞 F) ∈ v.asIdeal
    · have h0 : d v = 0 := hT v hv
      rw [h0, mul_zero]
      exact zero_mem _
    · have hval : Valued.v (algebraMap F (v.adicCompletion F) (algebraMap (𝓞 F) F ((M : ℕ) : 𝓞 F))) = 1 := by
        rw [Formalism.L2.GlobalTheoryTheory.FiltrationBoundaryCriterion.CompactFixesLatticeTheory.AdeleIntA.val_R, intValuation_eq_one_iff_mem_primeCompl]
        exact Ideal.mem_primeCompl_iff.mpr hv
      rw [map_natCast] at hval
      rw [mem_adicCompletionIntegers, map_mul, map_inv₀, map_inv₀, hval, inv_one, one_mul]
      exact hd v
  · rw [← mul_assoc, ← map_natCast (algebraMap F (FiniteAdeleRing (𝓞 F) F)), ← map_mul, mul_inv_cancel₀ hM0, map_one, one_mul]

def xpE (T : Finset (HeightOneSpectrum (𝓞 F))) : FiniteAdeleRing (𝓞 F) F := ∑ v ∈ T, Formalism.L2.G.sgl F v 1

open Classical in
theorem xp_E_at (T : Finset (HeightOneSpectrum (𝓞 F))) (w : HeightOneSpectrum (𝓞 F)) :
    evalV F w (xpE T) = if w ∈ T then 1 else 0 := by
  unfold xpE

  rw [map_sum]
  split_ifs with hw
  · rw [Finset.sum_eq_single w (fun b _ hb => Formalism.L2.G.sgl_apply_ne F b 1 (Ne.symm hb)) (fun h => absurd hw h), Formalism.L2.G.sgl_apply_same]
  · exact Finset.sum_eq_zero fun b hb => Formalism.L2.G.sgl_apply_ne F b 1 (fun h => hw (h ▸ hb))

theorem xp_E_idem (T : Finset (HeightOneSpectrum (𝓞 F))) : xpE T * xpE T = xpE T := by
  classical
  apply Formalism.L2.G.adele_ext
  intro w
  rw [map_mul, xp_E_at]
  split_ifs <;> simp

theorem xp_E_compl_idem (T : Finset (HeightOneSpectrum (𝓞 F))) : (1 - xpE T) * (1 - xpE T) = 1 - xpE T := by
  rw [mul_sub, mul_one, _root_.sub_mul, one_mul, xp_E_idem, sub_self, sub_zero]

theorem xp_E_orth (T : Finset (HeightOneSpectrum (𝓞 F))) : xpE T * (1 - xpE T) = 0 := by
  rw [mul_sub, mul_one, xp_E_idem, sub_self]

theorem xp_sgl_orth (T : Finset (HeightOneSpectrum (𝓞 F))) (v : HeightOneSpectrum (𝓞 F)) (hv : v ∉ T) :
    Formalism.L2.G.sgl F v 1 * xpE T = 0 := by
  classical
  apply Formalism.L2.G.adele_ext
  intro w
  rw [map_mul, map_zero]
  by_cases h : w = v
  · subst h
    rw [xp_E_at, if_neg hv, mul_zero]
  · rw [Formalism.L2.G.sgl_apply_ne F v 1 h, zero_mul]

theorem xp_E_int (T : Finset (HeightOneSpectrum (𝓞 F))) : xpE T ∈ intAd F :=
  Subring.sum_mem _ fun v _ => qu_sgl_int v 1 (one_mem _)

theorem xp_prod (T : Finset (HeightOneSpectrum (𝓞 F))) (x : Eˣ) :
    ((∏ v ∈ T, locId E v x : (AfE F E)ˣ) : AfE F E) = xpJ (xpE T) (x : E) := by
  classical
  induction T using Finset.induction_on with
  | empty =>
    rw [Finset.prod_empty, Units.val_one, xpE, Finset.sum_empty, xp_J_zero]
  | insert v T hv ih =>
    rw [Finset.prod_insert hv, Units.val_mul, ih, xp_J_locId, xp_J_orth (xp_sgl_orth T v hv)]
    unfold xpE
    rw [Finset.sum_insert hv]

theorem xp_den (a : E) : ∃ k : ℕ, 0 < k ∧ ∃ c : 𝓞 E, ((k : ℕ) : E) * a = (c : E) := by
  obtain ⟨p, q, hq, rfl⟩ := IsFractionRing.div_surjective (A := 𝓞 E) a
  have hq0 : q ≠ 0 := nonZeroDivisors.ne_zero hq
  have hI : Ideal.span {q} ≠ ⊥ := by rwa [Ne, Ideal.span_singleton_eq_bot]
  have hk : Ideal.absNorm (Ideal.span {q}) ≠ 0 := fun h => hI (Ideal.absNorm_eq_zero_iff.1 h)
  obtain ⟨t, ht⟩ := Ideal.mem_span_singleton'.1 (Ideal.absNorm_mem (Ideal.span {q}))
  refine ⟨Ideal.absNorm (Ideal.span {q}), Nat.pos_of_ne_zero hk, t * p, ?_⟩
  have hqE : algebraMap (𝓞 E) E q ≠ 0 := (map_ne_zero_iff _ (IsFractionRing.injective (𝓞 E) E)).2 hq0
  rw [← map_natCast (algebraMap (𝓞 E) E), ← ht]
  show algebraMap (𝓞 E) E (t * q) * _ = algebraMap (𝓞 E) E (t * p)
  rw [map_mul, map_mul]
  field_simp

theorem unit_sub_one_bounded_denominator (x : Eˣ) : ∃ k : ℕ, 0 < k ∧ ∃ b b' : 𝓞 E, ((k : ℕ) : E) * ((x : E) - 1) = (b : E) ∧
    ((k : ℕ) : E) * (((x⁻¹ : Eˣ) : E) - 1) = (b' : E) := by
  obtain ⟨k₁, hk₁, c₁, h₁⟩ := xp_den (x : E)
  obtain ⟨k₂, hk₂, c₂, h₂⟩ := xp_den ((x⁻¹ : Eˣ) : E)
  refine ⟨k₁ * k₂, Nat.mul_pos hk₁ hk₂, (k₂ : 𝓞 E) * (c₁ - k₁), (k₁ : 𝓞 E) * (c₂ - k₂), ?_, ?_⟩
  · have h := h₁
    push_cast at h ⊢
    linear_combination (k₂ : E) * h
  · have h := h₂
    push_cast at h ⊢
    linear_combination (k₁ : E) * h

variable (F) in
theorem xp_T_finite (M : ℕ) (hM : 0 < M) : {v : HeightOneSpectrum (𝓞 F) | ((M : ℕ) : 𝓞 F) ∈ v.asIdeal}.Finite := by
  have hI : Ideal.span {((M : ℕ) : 𝓞 F)} ≠ (0 : Ideal (𝓞 F)) := by
    rw [Ideal.zero_eq_bot, Ne, Ideal.span_singleton_eq_bot]
    exact_mod_cast hM.ne'
  refine (Ideal.finite_factors hI).subset ?_
  intro v hv
  exact Ideal.dvd_span_singleton.2 hv

theorem twist_product_formula : XiProd := by
  intro F E _ _ _ _ _ L _ S ξ x
  obtain ⟨⟨hrat, ⟨N, hN, hcong⟩, _⟩, -⟩ := (mem_tupGrp (ξ : Chr F E L)).mp ξ.2
  obtain ⟨k, hk, b, b', hb, hb'⟩ := unit_sub_one_bounded_denominator x
  have hM : 0 < N * k := Nat.mul_pos hN hk
  set T : Finset (HeightOneSpectrum (𝓞 F)) := (xp_T_finite F (N * k) hM).toFinset with hTdef
  have hmemT : ∀ v, v ∈ T ↔ ((N * k : ℕ) : 𝓞 F) ∈ v.asIdeal := fun v => by
    rw [hTdef, Set.Finite.mem_toFinset]; rfl
  have hloc : ∀ v, v ∉ T → lamX (ξ : Chr F E L) v x = 1 := by
    intro v hv
    obtain ⟨g, hg, hd⟩ := xp_g (N * k) hM (Formalism.L2.G.sgl F v 1) (qu_sgl_int v 1 (one_mem _)) (fun w hw => by
      have hwv : w ≠ v := fun h => hv ((hmemT v).2 (h ▸ hw))
      exact Formalism.L2.G.sgl_apply_ne F v 1 hwv)
    have hdd : Formalism.L2.G.sgl F v 1 * Formalism.L2.G.sgl F v 1 = Formalism.L2.G.sgl F v 1 := by rw [← Formalism.L2.G.sgl_mul, one_mul]
    exact hcong (xp_mem_congN N k x b b' hb hb' g hg _ hd hdd (locId E v x) rfl)
  have hsupp : Function.mulSupport (fun v : HeightOneSpectrum (𝓞 F) => lamX (ξ : Chr F E L) v x) ⊆ (T : Set (HeightOneSpectrum (𝓞 F))) := by
    intro v hv
    by_contra h
    exact hv (hloc v h)
  refine ⟨T.finite_toSet.subset hsupp, ?_⟩
  rw [finprod_eq_prod_of_mulSupport_subset _ hsupp]
  have e1 : (∏ v ∈ T, lamX (ξ : Chr F E L) v x) = (ξ : Chr F E L) (∏ v ∈ T, locId E v x) := by
    rw [map_prod]; rfl
  rw [e1]
  let U : (AfE F E)ˣ :=
    { val := xpJ (1 - xpE T) (x : E)
      inv := xpJ (1 - xpE T) ((x⁻¹ : Eˣ) : E)
      val_inv := by rw [xp_J_same (xp_E_compl_idem T), Units.mul_inv, xp_J_at_one]
      inv_val := by rw [xp_J_same (xp_E_compl_idem T), Units.inv_mul, xp_J_at_one] }
  have hU : (ξ : Chr F E L) U = 1 := by
    obtain ⟨g, hg, hd⟩ := xp_g (N * k) hM (1 - xpE T) (Subring.sub_mem _ (Subring.one_mem _) (xp_E_int T)) (fun w hw => by
      classical
      rw [map_sub, map_one, xp_E_at, if_pos ((hmemT w).2 hw), sub_self])
    exact hcong (xp_mem_congN N k x b b' hb hb' g hg _ hd (xp_E_compl_idem T) U rfl)
  have hprod : (∏ v ∈ T, locId E v x) * U = ratId F E x := by
    apply Units.ext
    rw [Units.val_mul, xp_prod]
    show xpJ (xpE T) (x : E) * xpJ (1 - xpE T) (x : E) = _
    rw [xp_J_orth (xp_E_orth T), add_sub_cancel, xp_J_one]
    rfl
  have hr : (ξ : Chr F E L) (ratId F E x) = 1 := hrat ⟨x, rfl⟩
  rw [← hprod, map_mul, hU, mul_one] at hr
  exact hr

end XP

end Formalism.L2.Ker
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.XiProd =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.HeckeCharacterCompatibleSystem =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.HeckeCharacterCompatibleSystem", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.MuProd\npublic import Formalism.LocalToGlobal.UnitaryNorms.CharProd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Neutral.B1 ReciprocityTheory.Neutral.Bridge.HCFR

noncomputable section

namespace Formalism.L2.Ker

open Formalism.BasicNotions Formalism.L2.Col Formalism.L2.Host

section Loc

variable {E : Type} [Field E] [NumberField E]

theorem hk_le_exp {x : WithZero (Multiplicative ℤ)} (h : x < 1) : x ≤ WithZero.exp (-1 : ℤ) := by
  by_cases h0 : x = 0
  · rw [h0]; exact zero_le
  · rw [← WithZero.exp_log h0] at h ⊢
    rw [← WithZero.exp_zero, WithZero.exp_lt_exp] at h
    rw [WithZero.exp_le_exp]
    omega

theorem hk_val_one {P : HeightOneSpectrum (𝓞 E)} {a : E} (h : OneAt P a) : P.valuation E a = 1 := by
  have e : a = 1 + (a - 1) := by ring
  rw [e]
  have h1 : P.valuation E (a - 1) < P.valuation E (1 : E) := by rw [map_one]; exact h
  rw [Valuation.map_add_eq_of_lt_left _ h1, map_one]

theorem hk_valued_sub (P : HeightOneSpectrum (𝓞 E)) (a : Eˣ) :
    Valued.v (((atFin P a : (P.adicCompletion E)ˣ) : P.adicCompletion E) - 1) = P.valuation E ((a : E) - 1) := by
  have e : ((atFin P a : (P.adicCompletion E)ˣ) : P.adicCompletion E) - 1 = (((a : E) - 1 : E) : P.adicCompletion E) := by
    show algebraMap E (P.adicCompletion E) (a : E) - 1 = algebraMap E (P.adicCompletion E) ((a : E) - 1)
    rw [map_sub, map_one]
  rw [e]
  exact HeightOneSpectrum.valuedAdicCompletion_eq_valuation' P ((a : E) - 1)

theorem hk_tame (χ : HChar E) {P : HeightOneSpectrum (𝓞 E)} (h : χ.TameAt P) (a : Eˣ) (ha : OneAt P (a : E)) : χ.locK P a = 1 := by
  refine h (atFin P a) ?_ ?_
  · show Valued.v _ = 1
    rw [_root_.PI.HeckeProdW.valued_atFin, hk_val_one ha]
  · rw [hk_valued_sub]
    exact hk_le_exp ha

theorem hk_unr (χ : HChar E) {P : HeightOneSpectrum (𝓞 E)} (h : χ.UnrAt P) (a : Eˣ) (ha : P.valuation E (a : E) = 1) : χ.locK P a = 1 := by
  refine h (atFin P a) ?_
  show Valued.v _ = 1
  rw [_root_.PI.HeckeProdW.valued_atFin, ha]

theorem hk_unif (χ : HChar E) {P : HeightOneSpectrum (𝓞 E)} (h : χ.UnrAt P) (a : Eˣ) (ha : P.valuation E (a : E) = WithZero.exp (-1 : ℤ)) :
    χ.locK P a = χ.val P := by
  refine χ.val_eq h (atFin P a) ?_
  show Valued.v _ = _
  rw [_root_.PI.HeckeProdW.valued_atFin, ha]

theorem hecke_character_local_behaviour : HLoc := fun _ _ _ χ _ =>
  ⟨fun h a ha => hk_tame χ h a ha, fun h a ha => hk_unr χ h a ha, fun h a ha => hk_unif χ h a ha⟩

end Loc

section Sys

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem hk_mem_above (v : HeightOneSpectrum (𝓞 F)) (P : HeightOneSpectrum (𝓞 E)) :
    P ∈ aboveF (L := E) F v ↔ P.asIdeal.under (𝓞 F) = v.asIdeal := by
  unfold aboveF
  rw [Set.Finite.mem_toFinset, Set.mem_ofPred_eq]
  constructor
  · intro h; rw [← h]; rfl
  · intro h; exact HeightOneSpectrum.ext h

theorem hk_lamH (χ : HChar E) (v : HeightOneSpectrum (𝓞 F)) (a : Eˣ) :
    lamH (F := F) χ v a = ∏ P ∈ aboveF (L := E) F v, χ.locK P a := by
  unfold lamH
  rw [MonoidHom.finsetProd_apply]

theorem hecke_character_compatible_system : HSys := by
  intro F E _ _ _ _ _ χ Rm ht hF hu
  refine ⟨?_, ?_, ?_⟩
  · intro v a ha
    rw [hk_lamH]
    exact Finset.prod_eq_one fun P hP => hk_tame χ (ht P) a (ha P ((hk_mem_above v P).1 hP))
  · intro v k
    rw [hk_lamH]
    have h := hF.1 v k
    unfold HChar.resFin at h
    rw [MonoidHom.finsetProd_apply] at h
    exact h
  · intro v hv a ha
    rw [hk_lamH]
    exact Finset.prod_eq_one fun P hP =>
      hk_unr χ (hu v hv P ((hk_mem_above v P).1 hP)) a (ha P ((hk_mem_above v P).1 hP))

theorem hecke_character_evaluation : HEval := by
  intro F E _ _ _ _ _ χ ht v P hP b hb
  rw [hk_lamH]
  refine Finset.prod_eq_single P ?_ ?_
  · intro P' hP' hne
    exact hk_tame χ (ht P') b (hb P' hne ((hk_mem_above v P').1 hP'))
  · intro h
    exact absurd ((hk_mem_above v P).2 hP) h

end Sys

section Prod

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem hecke_character_product_formula : HProd := by
  classical
  intro F E _ _ _ _ _ χ S hS x
  have hfin : {P : HeightOneSpectrum (𝓞 E) | ¬ P.valuation E (x : E) = 1}.Finite := by
    have h := Filter.eventually_cofinite.1 (valued_comp_eventually E (diagUnits E x))
    simpa only [diag_comp] using h
  set T0 : Finset (HeightOneSpectrum (𝓞 E)) := S ∪ hfin.toFinset with hT0
  have hval : ∀ P, P ∉ T0 → P.valuation E (x : E) = 1 := by
    intro P hP
    by_contra h
    exact hP (Finset.mem_union_right _ (hfin.mem_toFinset.2 h))
  have hone : ∀ P, P ∉ T0 → χ.locK P x = 1 := fun P hP =>
    hk_unr χ (hS P fun h => hP (Finset.mem_union_left _ h)) x (hval P hP)
  have hmain : χ.inf x * ∏ P ∈ T0, χ.locK P x = 1 := by
    have h := χ.productRule T0 (fun P hP => hS P fun h => hP (Finset.mem_union_left _ h)) x
    have h2 : (∏ᶠ (v : HeightOneSpectrum (𝓞 E)) (_ : v ∉ T0), χ.val v ^ ordF v x) = 1 := by
      refine finprod_eq_one_of_forall_eq_one fun P => ?_
      rw [finprod_eq_if]
      split_ifs with hP
      · rfl
      · have h0 : ordF P x = 0 := by
          unfold ordF
          rw [hval P hP, WithZero.log_one, neg_zero]
        rw [h0, zpow_zero]
    rw [h2, mul_one] at h
    exact h
  set T : Finset (HeightOneSpectrum (𝓞 F)) := T0.image (fun P => P.under (𝓞 F)) with hT
  have hsupp : ∀ v, v ∉ T → lamH (F := F) χ v x = 1 := by
    intro v hv
    rw [hk_lamH]
    refine Finset.prod_eq_one fun P hP => hone P fun hPT => hv ?_
    rw [hT, Finset.mem_image]
    exact ⟨P, hPT, HeightOneSpectrum.ext ((hk_mem_above v P).1 hP)⟩
  have hsub : Function.mulSupport (fun v : HeightOneSpectrum (𝓞 F) => lamH (F := F) χ v x) ⊆ ↑T := by
    intro v hv
    by_contra h
    exact hv (hsupp v h)
  refine ⟨T.finite_toSet.subset hsub, ?_⟩
  rw [finprod_eq_prod_of_mulSupport_subset _ hsub]
  have e : ∏ v ∈ T, lamH (F := F) χ v x = ∏ P ∈ T0, χ.locK P x := by
    rw [← Finset.prod_fiberwise_of_maps_to (s := T0) (t := T) (g := fun P => P.under (𝓞 F)) (fun P hP => Finset.mem_image_of_mem _ hP)]
    refine Finset.prod_congr rfl fun v _ => ?_
    rw [hk_lamH]
    symm
    refine Finset.prod_subset ?_ ?_
    · intro P hP
      rw [Finset.mem_filter] at hP
      rw [hk_mem_above, ← hP.2]
      rfl
    · intro P hP hn
      apply hone
      intro hPT
      apply hn
      rw [Finset.mem_filter]
      exact ⟨hPT, HeightOneSpectrum.ext ((hk_mem_above v P).1 hP)⟩
  rw [e]
  exact eq_inv_of_mul_eq_one_right hmain

end Prod

section Inf

theorem hk_sq (w : ℂ) (hw : w ≠ 0) : (w / ((‖w‖ : ℝ) : ℂ)) ^ 2 = w / (starRingEnd ℂ) w := by
  have h1 : ((‖w‖ : ℝ) : ℂ) ^ 2 = w * (starRingEnd ℂ) w := by
    rw [Complex.mul_conj, Complex.normSq_eq_norm_sq]
    push_cast
    rfl
  have hc : (starRingEnd ℂ) w ≠ 0 := (map_ne_zero _).2 hw
  rw [div_pow, h1]
  field_simp

theorem hecke_character_infinity_type : HInf := by
  intro X hX σ₀ χ n e hn hne x
  rw [hn x]
  refine Finset.prod_congr rfl fun τ _ => ?_
  have hw : X.embC σ₀ τ (x : X.E) ≠ 0 := (map_ne_zero _).2 x.ne_zero
  rw [hne τ, zpow_mul, show (2 : ℤ) = ((2 : ℕ) : ℤ) from rfl, zpow_natCast, hk_sq _ hw, ← hX.conjE (X.embC σ₀ τ) (x : X.E)]
  congr 1
  rw [map_div₀, map_div₀]
  rfl

end Inf

end Formalism.L2.Ker
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.HeckeCharacterCompatibleSystem =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.MlZFacSupport =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.MlZFacSupport", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ThDistC\nimport Formalism.LocalToGlobal.Columns.AdelicLemmas\npublic import Formalism.LocalToGlobal.Columns.ChainInst\npublic import Formalism.LocalToGlobal.Columns.ChainInstY\npublic import Formalism.LocalToGlobal.Columns.HeckeSpCount\npublic import Formalism.LocalToGlobal.Columns.ReductionExistsInLatticeStabilizerHolds\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ColInst\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.PenultimateKernelDiamondInvariant\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.ThDistC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain

noncomputable section

namespace Formalism.L2.Ker

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col

section LocCharMul

variable {E : Type} [Field E] [NumberField E] [StarRing E] {P : HeightOneSpectrum (𝓞 E)}

theorem ml_ne_zero {u : E} (h : IsUnit (redP P u)) : u ≠ 0 := by
  rintro rfl
  rw [redP_zero] at h
  exact not_isUnit_zero h

theorem ml_int_inv {u : E} (h : IsUnit (redP P u)) : IntAt P u⁻¹ := yIntAt_inv (intAt_of_isUnit h) h.ne_zero

theorem ml_unit_inv {u : E} (h : IsUnit (redP P u)) : IsUnit (redP P u⁻¹) :=
  isUnit_reduction_of_integralAt_inv (ml_int_inv h) (by rw [inv_inv]; exact intAt_of_isUnit h) (inv_ne_zero (ml_ne_zero h))

theorem ml_unit_mul {u w : E} (h : IsUnit (redP P u)) (h' : IsUnit (redP P w)) : IsUnit (redP P (u * w)) := by
  rw [reduction_mul (intAt_of_isUnit h) (intAt_of_isUnit h')]
  exact h.mul h'

theorem ml_qpow_pos {q : ℕ} (hq : ((q : ℕ) : 𝓞 E) ∈ P.asIdeal) (k : ℕ) : ¬ IsUnit (redP P ((q : E) ^ (k + 1))) := by
  rw [(ocbA_pow_red hq k).2]
  exact not_isUnit_zero

theorem ml_qpow_unit {q : ℕ} (hq : ((q : ℕ) : 𝓞 E) ∈ P.asIdeal) (k : ℤ) (h : IsUnit (redP P ((q : E) ^ k))) : k = 0 := by
  by_contra hne
  rcases lt_or_gt_of_ne hne with hlt | hgt
  · obtain ⟨m, hm⟩ : ∃ m : ℕ, k = -((m : ℤ) + 1) := ⟨(-k - 1).toNat, by omega⟩
    have h2 := ml_unit_inv h
    rw [hm, zpow_neg, inv_inv] at h2
    have e : (q : E) ^ ((m : ℤ) + 1) = (q : E) ^ (m + 1) := by
      rw [← zpow_natCast]; congr 1
    rw [e] at h2
    exact ml_qpow_pos hq m h2
  · obtain ⟨m, hm⟩ : ∃ m : ℕ, k = (m : ℤ) + 1 := ⟨(k - 1).toNat, by omega⟩
    have e : (q : E) ^ ((m : ℤ) + 1) = (q : E) ^ (m + 1) := by
      rw [← zpow_natCast]; congr 1
    rw [hm, e] at h
    exact ml_qpow_pos hq m h

theorem isUnit_div_pow_valuation (q : ℕ) (hq : ((q : ℕ) : 𝓞 E) ∈ P.asIdeal) (hu : ((q : ℕ) : 𝓞 E) ∉ P.asIdeal ^ 2) (a : E) (ha : a ≠ 0) :
    IsUnit (redP P (a / (q : E) ^ LocE.vP P q a)) :=
  Classical.epsilon_spec (exists_isUnit_div P q hq hu a ha)

theorem valuation_eq_of_isUnit_div_pow (q : ℕ) (hq : ((q : ℕ) : 𝓞 E) ∈ P.asIdeal) (hu : ((q : ℕ) : 𝓞 E) ∉ P.asIdeal ^ 2) (a : E) (z : ℤ)
    (h : IsUnit (redP P (a / (q : E) ^ z))) : LocE.vP P q a = z := by
  have hq0 : (q : E) ≠ 0 := ciQ_ne_zero hu
  have ha : a ≠ 0 := by
    rintro rfl
    rw [zero_div] at h
    exact ml_ne_zero h rfl
  have h1 := isUnit_div_pow_valuation q hq hu a ha
  have h2 := ml_unit_mul h (ml_unit_inv h1)
  have e : a / (q : E) ^ z * (a / (q : E) ^ LocE.vP P q a)⁻¹ = (q : E) ^ (LocE.vP P q a - z) := by
    rw [zpow_sub₀ hq0]
    have hz : (q : E) ^ z ≠ 0 := zpow_ne_zero _ hq0
    have hn : (q : E) ^ LocE.vP P q a ≠ 0 := zpow_ne_zero _ hq0
    field_simp
  rw [e] at h2
  have := ml_qpow_unit hq _ h2
  omega

theorem valuation_mul₂ (q : ℕ) (hq : ((q : ℕ) : 𝓞 E) ∈ P.asIdeal) (hu : ((q : ℕ) : 𝓞 E) ∉ P.asIdeal ^ 2) (a b : E) (ha : a ≠ 0) (hb : b ≠ 0) :
    LocE.vP P q (a * b) = LocE.vP P q a + LocE.vP P q b := by
  have hq0 : (q : E) ≠ 0 := ciQ_ne_zero hu
  apply valuation_eq_of_isUnit_div_pow q hq hu
  have e : a * b / (q : E) ^ (LocE.vP P q a + LocE.vP P q b) = a / (q : E) ^ LocE.vP P q a * (b / (q : E) ^ LocE.vP P q b) := by
    rw [zpow_add₀ hq0, mul_div_mul_comm]
  rw [e]
  exact ml_unit_mul (isUnit_div_pow_valuation q hq hu a ha) (isUnit_div_pow_valuation q hq hu b hb)

variable {K : Type} [Field K]

theorem ml_locChar_mul (q : ℕ) (hq : ((q : ℕ) : 𝓞 E) ∈ P.asIdeal) (hu : ((q : ℕ) : 𝓞 E) ∉ P.asIdeal ^ 2) (cq : K) (hcq : cq ≠ 0)
    (χ : (𝓞 E ⧸ P.asIdeal)ˣ →* Kˣ) (a b : E) (ha : a ≠ 0) (hb : b ≠ 0) :
    LocE.locChar q cq χ (a * b) = LocE.locChar q cq χ a * LocE.locChar q cq χ b := by
  have hq0 : (q : E) ≠ 0 := ciQ_ne_zero hu
  have hB := isUnit_div_pow_valuation q hq hu b hb
  unfold LocE.locChar
  rw [valuation_mul₂ q hq hu a b ha hb, zpow_add₀ hcq, zpow_add₀ hq0, mul_div_mul_comm,
    unitV_mul_unit χ (intAt_of_isUnit hB) (ml_int_inv hB) (ml_ne_zero hB)]
  ring

end LocCharMul

section Ord

variable {E : Type} [Field E] [NumberField E] [StarRing E] {n : ℕ}

theorem ml_ordDet_gmap (Q : HeightOneSpectrum (𝓞 E)) (N : Submodule (𝓞 E) (Sp E n)) (hN : Submodule.IsFullLattice E N) (γ : Sp E n ≃ₗ[E] Sp E n) :
    ordDet Q (gmap γ N) = ordE Q ((LinearEquiv.det γ : Eˣ) : E) + ordDet Q N := by
  obtain ⟨f, hf⟩ := exists_frameD Q hN
  have hf' : ∀ x, (γ * f) x ∈ localization₂ Q.asIdeal (gmap γ N) ↔ x ∈ stdAt E n Q := by
    intro x
    rw [mem_localization_gmap]
    show γ.symm (γ (f x)) ∈ _ ↔ _
    rw [LinearEquiv.symm_apply_apply]
    exact hf x
  rw [ordDet_eq_of_frame Q (gmap γ N) (γ * f) hf', ordDet_eq_of_frame Q N f hf, map_mul, Units.val_mul,
    ordE_mul Q (Units.ne_zero _) (Units.ne_zero _)]

theorem ml_ordE_finite (z : E) (hz : z ≠ 0) : {Q : HeightOneSpectrum (𝓞 E) | ordE Q z ≠ 0}.Finite := by
  obtain ⟨r, s, hs, rfl⟩ := IsFractionRing.div_surjective (A := 𝓞 E) z
  have hs0 : s ≠ 0 := nonZeroDivisors.ne_zero hs
  have hr0 : r ≠ 0 := by
    rintro rfl
    apply hz
    rw [map_zero, zero_div]
  have hsE : algebraMap (𝓞 E) E s ≠ 0 := (map_ne_zero_iff _ (FaithfulSMul.algebraMap_injective (𝓞 E) E)).2 hs0
  have hrE : algebraMap (𝓞 E) E r ≠ 0 := (map_ne_zero_iff _ (FaithfulSMul.algebraMap_injective (𝓞 E) E)).2 hr0
  have hI : Ideal.span {r * s} ≠ (0 : Ideal (𝓞 E)) := by
    intro h0
    rw [Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot] at h0
    exact (mul_ne_zero hr0 hs0) h0
  refine (Ideal.finite_factors hI).subset ?_
  intro Q hQ
  by_contra hc
  apply hQ
  have hm : r * s ∉ Q.asIdeal := fun hmem => hc (Ideal.dvd_span_singleton.2 hmem)
  have hrQ : r ∉ Q.asIdeal := fun hmem => hm (Ideal.mul_mem_right _ _ hmem)
  have hsQ : s ∉ Q.asIdeal := fun hmem => hm (Ideal.mul_mem_left _ _ hmem)
  refine ordE_eq_zero hz ⟨r, s, hsQ, ?_⟩ ⟨s, r, hrQ, ?_⟩
  · rw [mul_div_cancel₀ _ hsE]
  · rw [inv_div, mul_div_cancel₀ _ hrE]

end Ord

section Ratio

variable {X : Fields} {n : ℕ}


open Classical in
def zFac (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) (SB : Finset (HeightOneSpectrum (𝓞 X.E)))
    (mU : HeightOneSpectrum (𝓞 X.E) → X.Kˣ) (z : X.E) (v : HeightOneSpectrum (𝓞 X.F)) : X.K :=
  if ∃ P ∈ SB, P.asIdeal.under (𝓞 X.F) = v.asIdeal then 1 else ((mU (sel v) ^ ordE (sel v) z : X.Kˣ) : X.K)

theorem ml_zFac_support {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} (hsel : IsSel X sel) (SB : Finset (HeightOneSpectrum (𝓞 X.E)))
    (mU : HeightOneSpectrum (𝓞 X.E) → X.Kˣ) (z : X.E) (hz : z ≠ 0) : (Function.mulSupport (zFac sel SB mU z)).Finite := by
  refine Set.Finite.subset (Set.Finite.preimage (sel_injective hsel).injOn (ml_ordE_finite z hz)) ?_
  intro v hv
  by_contra hc
  apply hv
  have h0 : ordE (sel v) z = 0 := by
    by_contra h
    exact hc h
  unfold zFac
  split_ifs
  · rfl
  · rw [h0]
    simp

theorem ml_muOff_gmap {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} (hsel : IsSel X sel) (SB : Finset (HeightOneSpectrum (𝓞 X.E)))
    (mU : HeightOneSpectrum (𝓞 X.E) → X.Kˣ) (γ : Sp X.E n ≃ₗ[X.E] Sp X.E n) (N : Submodule (𝓞 X.E) (Sp X.E n)) (hN : IsSdLat N) :
    muOff sel SB mU (gmap γ N) = (∏ᶠ v, zFac sel SB mU ((LinearEquiv.det γ : X.Eˣ) : X.E) v) * muOff sel SB mU N := by
  rw [muOff_eq, muOff_eq, ← finprod_mul_distrib (ml_zFac_support hsel SB mU _ (Units.ne_zero _))
    (muFac_support hsel SB mU (frame_det_unit_almost_all_primes n) N hN)]
  refine finprod_congr fun v => ?_
  unfold muFac zFac
  by_cases hv : ∃ P ∈ SB, P.asIdeal.under (𝓞 X.F) = v.asIdeal
  · rw [if_pos hv, if_pos hv, if_pos hv, one_mul]
  · rw [if_neg hv, if_neg hv, if_neg hv, ← Units.val_mul, ← zpow_add, ml_ordDet_gmap (sel v) N (hcnt_isFullLattice_of_unimodular hN.1 hN.2) γ]

theorem ml_ratio {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} (hsel : IsSel X sel) (SB : Finset (HeightOneSpectrum (𝓞 X.E)))
    (mU : HeightOneSpectrum (𝓞 X.E) → X.Kˣ) (mI : SB → X.E → X.K)
    (hmul : ∀ (P : SB) (a b : X.E), a ≠ 0 → b ≠ 0 → mI P (a * b) = mI P a * mI P b)
    (γ : UF X.E n) (N : Submodule (𝓞 X.E) (Sp X.E n)) (hN : IsSdLat N) (fr : Frs X.E n SB) :
    muInvDet sel SB mU mI (gmap γ.1 N) (fun P => γ.1 * fr P) =
      ((∏ᶠ v, zFac sel SB mU ((LinearEquiv.det γ.1 : X.Eˣ) : X.E) v) * ∏ P : SB, mI P ((LinearEquiv.det γ.1 : X.Eˣ) : X.E)) *
        muInvDet sel SB mU mI N fr := by
  unfold muInvDet
  rw [ml_muOff_gmap hsel SB mU γ.1 N hN]
  have e : ∏ P : SB, mI P ((LinearEquiv.det (γ.1 * fr P) : X.Eˣ) : X.E) =
      (∏ P : SB, mI P ((LinearEquiv.det γ.1 : X.Eˣ) : X.E)) * ∏ P : SB, mI P ((LinearEquiv.det (fr P) : X.Eˣ) : X.E) := by
    rw [← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun P _ => ?_
    rw [map_mul, Units.val_mul, hmul P _ _ (Units.ne_zero _) (Units.ne_zero _)]
  rw [e]
  ring

end Ratio

end Formalism.L2.Ker
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.MlZFacSupport =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.HilbertNinetyNormOne =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.HilbertNinetyNormOne", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ThDistC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain

noncomputable section

namespace Formalism.L2.Ker

open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col

section Det

variable {E : Type} [Field E] [NumberField E] [StarRing E] {n : ℕ}

theorem mh_det_norm (γ : UF E n) : ((LinearEquiv.det γ.1 : Eˣ) : E) * star ((LinearEquiv.det γ.1 : Eˣ) : E) = 1 := by
  have e : ∀ i k, LinearMap.toMatrix' γ.1.toLinearMap k i = γ.1 (Pi.single i 1) k := by
    intro i k
    rw [LinearMap.toMatrix'_apply]
    rfl
  have h : (LinearMap.toMatrix' γ.1.toLinearMap).conjTranspose * LinearMap.toMatrix' γ.1.toLinearMap = 1 := by
    ext i j
    have h1 : hStd E n (γ.1 (Pi.single i 1)) (γ.1 (Pi.single j 1)) = hStd E n (Pi.single i 1) (Pi.single j 1) := γ.2 _ _
    have h2 : ∀ x y : Sp E n, hStd E n x y = ∑ k, star (x k) * y k := fun _ _ => rfl
    rw [h2, h2] at h1
    rw [Matrix.mul_apply]
    simp only [Matrix.conjTranspose_apply, e]
    rw [h1, Matrix.one_apply]
    by_cases hij : i = j
    · subst hij
      simp [Pi.single_apply]
    · simp [Pi.single_apply, hij, Ne.symm hij]
  have hd := congrArg Matrix.det h
  rw [Matrix.det_mul, Matrix.det_conjTranspose, Matrix.det_one, LinearMap.det_toMatrix'] at hd
  rw [LinearEquiv.coe_det, mul_comm]
  exact hd

end Det

section H90

theorem mh_exists_ne (X : Fields) (hX : X.Ok) : ∃ a : X.E, star a ≠ a := by
  by_contra hc
  push Not at hc
  have := hX.cplxE
  let w : InfinitePlace X.E := Classical.arbitrary _
  have hw : w.IsComplex := IsTotallyComplex.isComplex w
  rw [InfinitePlace.isComplex_iff] at hw
  apply hw
  rw [ComplexEmbedding.isReal_iff]
  ext x
  rw [ComplexEmbedding.conjugate_coe_eq, ← hX.conjE, hc]

theorem hilbert_ninety_norm_one (X : Fields) (hX : X.Ok) (z : X.E) (hz : z * star z = 1) : ∃ x : X.Eˣ, z = (x : X.E) / star (x : X.E) := by
  by_cases h : z = -1
  · obtain ⟨a, ha⟩ := mh_exists_ne X hX
    have h0 : a - star a ≠ 0 := fun h0 => ha (sub_eq_zero.1 h0).symm
    refine ⟨Units.mk0 (a - star a) h0, ?_⟩
    rw [Units.val_mk0, star_sub, star_star, h, ← neg_sub a (star a), div_neg, div_self h0]
  · have h0 : 1 + z ≠ 0 := fun h0 => h (by linear_combination h0)
    have h1 : star (1 + z) ≠ 0 := fun h1 => h0 (star_eq_zero.1 h1)
    refine ⟨Units.mk0 (1 + z) h0, ?_⟩
    rw [Units.val_mk0, eq_div_iff h1, star_add, star_one, mul_add, mul_one, hz, add_comm]

end H90

section Bridge

variable {E : Type} [Field E] [NumberField E] {P : HeightOneSpectrum (𝓞 E)}

theorem mh_val_unit {u : E} (h : IsUnit (redP P u)) : P.valuation E u = 1 := by
  haveI := P.isMaximal
  letI := Ideal.Quotient.field P.asIdeal
  unfold redP at h
  split_ifs at h with hex
  · obtain ⟨r', s', hs', hrs', hmk⟩ := hex.choose_spec
    have hc0 : hex.choose ≠ 0 := h.ne_zero
    have hr' : r' ∉ P.asIdeal := by
      intro hr
      apply hc0
      have h6 : Ideal.Quotient.mk P.asIdeal s' * hex.choose = 0 := by
        rw [hmk]
        exact Ideal.Quotient.eq_zero_iff_mem.mpr hr
      rcases mul_eq_zero.mp h6 with h' | h'
      · exact absurd (Ideal.Quotient.eq_zero_iff_mem.mp h') hs'
      · exact h'
    have hs1 : P.valuation E (algebraMap (𝓞 E) E s') = 1 := (le_antisymm (P.valuation_le_one s') (not_lt.mp (fun h => hs' ((P.valuation_lt_one_iff_mem s').mp h))))
    have hr1 : P.valuation E (algebraMap (𝓞 E) E r') = 1 := (le_antisymm (P.valuation_le_one r') (not_lt.mp (fun h => hr' ((P.valuation_lt_one_iff_mem r').mp h))))
    have h5 := congrArg (P.valuation E) hrs'
    rw [map_mul, hs1, one_mul, hr1] at h5
    exact h5
  · exact absurd h not_isUnit_zero

theorem mh_val_lt {w : E} (hI : IntAt P w) (h0 : redP P w = 0) : P.valuation E w < 1 := by
  haveI := P.isMaximal
  letI := Ideal.Quotient.field P.asIdeal
  have hex : ∃ c : 𝓞 E ⧸ P.asIdeal, ∃ r s : 𝓞 E, s ∉ P.asIdeal ∧ algebraMap (𝓞 E) E s * w = algebraMap (𝓞 E) E r ∧
      Ideal.Quotient.mk P.asIdeal s * c = Ideal.Quotient.mk P.asIdeal r := by
    obtain ⟨r, s, hs, hrs⟩ := hI
    have hs0 : Ideal.Quotient.mk P.asIdeal s ≠ 0 := fun h => hs (Ideal.Quotient.eq_zero_iff_mem.mp h)
    refine ⟨Ideal.Quotient.mk P.asIdeal r * (Ideal.Quotient.mk P.asIdeal s)⁻¹, r, s, hs, hrs, ?_⟩
    rw [mul_comm, mul_assoc, inv_mul_cancel₀ hs0, mul_one]
  unfold redP at h0
  rw [dite_eq_left hex] at h0
  obtain ⟨r', s', hs', hrs', hmk⟩ := hex.choose_spec
  rw [h0, mul_zero] at hmk
  have hr' : r' ∈ P.asIdeal := Ideal.Quotient.eq_zero_iff_mem.mp hmk.symm
  have hs1 : P.valuation E (algebraMap (𝓞 E) E s') = 1 := (le_antisymm (P.valuation_le_one s') (not_lt.mp (fun h => hs' ((P.valuation_lt_one_iff_mem s').mp h))))
  have h5 := congrArg (P.valuation E) hrs'
  rw [map_mul, hs1, one_mul] at h5
  rw [h5]
  exact (P.valuation_lt_one_iff_mem r').mpr hr'

theorem mh_val_pow {b : 𝓞 E} (k : ℕ) : P.valuation E (b : E) ≤ WithZero.exp (-(k : ℤ)) ↔ b ∈ P.asIdeal ^ k := by
  rw [show (b : E) = algebraMap (𝓞 E) E b from rfl, HeightOneSpectrum.valuation_of_algebraMap,
    HeightOneSpectrum.intValuation_le_pow_iff_mem]

theorem mh_val_sq {b : 𝓞 E} (h : b ∈ P.asIdeal ^ 2) : P.valuation E (b : E) ≤ WithZero.exp (-2 : ℤ) := by
  have h2 := (mh_val_pow (P := P) 2).mpr h
  simpa using h2

theorem mh_val_unif {b : 𝓞 E} (h1 : b ∈ P.asIdeal) (h2 : b ∉ P.asIdeal ^ 2) : P.valuation E (b : E) = WithZero.exp (-1 : ℤ) := by
  have hb0 : (b : E) ≠ 0 := by
    intro h0
    apply h2
    rw [NumberField.RingOfIntegers.coe_eq_zero_iff.mp h0]
    exact Submodule.zero_mem _
  have hv0 : P.valuation E (b : E) ≠ 0 := (Valuation.ne_zero_iff _).mpr hb0
  have hle1 : P.valuation E (b : E) ≤ WithZero.exp (-((1 : ℕ) : ℤ)) := (mh_val_pow 1).mpr (by simpa using h1)
  have hnle2 : ¬ P.valuation E (b : E) ≤ WithZero.exp (-((2 : ℕ) : ℤ)) := fun h => h2 ((mh_val_pow 2).mp h)
  obtain ⟨m, hm⟩ : ∃ m : ℤ, P.valuation E (b : E) = WithZero.exp m :=
    ⟨WithZero.log _, (WithZero.exp_log hv0).symm⟩
  rw [hm] at hle1 hnle2 ⊢
  rw [WithZero.exp_le_exp] at hle1 hnle2
  congr 1
  push_cast at hle1 hnle2
  omega

theorem mh_ordE_unif {a : E} {n : ℤ} (h : P.valuation E a = WithZero.exp (-n)) : ordE P a = n := by
  unfold ordE
  rw [h, WithZero.log_exp, neg_neg]

end Bridge

end Formalism.L2.Ker
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.HilbertNinetyNormOne =====

-- ===== clump member: Formalism.LocalToGlobal.Columns.DetChrJoint =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Columns.DetChrJoint", "h": "module\n\npublic import Formalism.LocalToGlobal.Columns.HeckeExHost\npublic import Formalism.LocalToGlobal.Columns.ColumnsProofs.ChainCounts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.KernelLattices.XiIndCClass\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain
open scoped TensorProduct

noncomputable section

namespace Formalism.L2.Col

namespace DetChrL

open Formalism.BasicNotions Formalism.L2.DIV Formalism.L2.Ker

section Joint

open Classical

variable {X : Fields} {Pr : Primes X}

theorem conjP_vGs (hX : X.Ok) (hPr : Pr.Ok) {P : HeightOneSpectrum (𝓞 X.E)} (hP : P ∈ Pr.vGs) :
    HeckeExHost.conjPrime₂ P ≠ P ∧ HeckeExHost.conjPrime₂ P ∉ Pr.vGs := by
  have hmem : ∀ j, P ∈ Pr.vG j → X.conjO (Pr.piG j) ∈ P.asIdeal := fun j h => ChainCounts.mem_of_mem_divs h
  have hcomap : ∀ y : 𝓞 X.E, y ∈ (HeckeExHost.conjPrime₂ P).asIdeal ↔ X.conjO y ∈ P.asIdeal := fun y => Iff.rfl
  have hcop : ∀ j, Pr.piG j ∈ P.asIdeal → X.conjO (Pr.piG j) ∈ P.asIdeal → False := by
    intro j h1 h2
    obtain ⟨a, b, hab⟩ := hPr.piG_cop j
    apply P.isPrime.ne_top
    rw [Ideal.eq_top_iff_one, ← hab]
    exact add_mem (Ideal.mul_mem_left _ _ h1) (Ideal.mul_mem_left _ _ h2)
  obtain ⟨i, hi⟩ : ∃ i, P ∈ Pr.vG i := by
    rcases Finset.mem_union.1 hP with h | h
    · exact ⟨0, h⟩
    · exact ⟨1, h⟩
  refine ⟨fun h => ?_, fun h => ?_⟩
  · have h1 : Pr.piG i ∈ (HeckeExHost.conjPrime₂ P).asIdeal := (hcomap _).2 (hmem i hi)
    rw [h] at h1
    exact hcop i h1 (hmem i hi)
  · obtain ⟨j, hj⟩ : ∃ j, HeckeExHost.conjPrime₂ P ∈ Pr.vG j := by
      rcases Finset.mem_union.1 h with h' | h'
      · exact ⟨0, h'⟩
      · exact ⟨1, h'⟩
    have h1 : Pr.piG j ∈ P.asIdeal := by
      have := (hcomap _).1 (ChainCounts.mem_of_mem_divs hj)
      rwa [HeckeExHost.conjO_conjO'] at this
    by_cases hij : j = i
    · subst hij
      exact hcop j h1 (hmem j hi)
    · have hg1 : ((Pr.g j : ℕ) : 𝓞 X.E) ∈ P.asIdeal := by
        rw [← hPr.piG_norm j]
        exact Ideal.mul_mem_right _ _ h1
      have hg2 : ((Pr.g i : ℕ) : 𝓞 X.E) ∈ P.asIdeal := by
        rw [← hPr.piG_norm i]
        exact Ideal.mul_mem_left _ _ (hmem i hi)
      have hne : Pr.g j ≠ Pr.g i := by
        have key : ∀ a b : Fin 2, a ≠ b → (a = 0 ∧ b = 1) ∨ (a = 1 ∧ b = 0) := by decide
        rcases key j i hij with ⟨h0, h1'⟩ | ⟨h0, h1'⟩
        · rw [h0, h1']; exact hPr.g_ne
        · rw [h0, h1']; exact hPr.g_ne.symm
      have hcopZ : Nat.Coprime (Pr.g j) (Pr.g i) := (Nat.coprime_primes (hPr.g_prime j) (hPr.g_prime i)).2 hne
      obtain ⟨a, b, hab⟩ : ∃ a b : ℤ, a * (Pr.g j : ℤ) + b * (Pr.g i : ℤ) = 1 := by
        refine ⟨Nat.gcdA (Pr.g j) (Pr.g i), Nat.gcdB (Pr.g j) (Pr.g i), ?_⟩
        have := Nat.gcd_eq_gcd_ab (Pr.g j) (Pr.g i)
        rw [hcopZ] at this
        push_cast at this
        linarith
      apply P.isPrime.ne_top
      rw [Ideal.eq_top_iff_one]
      have e : (1 : 𝓞 X.E) = (a : 𝓞 X.E) * ((Pr.g j : ℕ) : 𝓞 X.E) + (b : 𝓞 X.E) * ((Pr.g i : ℕ) : 𝓞 X.E) := by
        have := congrArg (fun z : ℤ => (z : 𝓞 X.E)) hab
        push_cast at this
        exact this.symm
      rw [e]
      exact add_mem (Ideal.mul_mem_left _ _ hg1) (Ideal.mul_mem_left _ _ hg2)

end Joint

section Core

open Classical

variable {X : Fields} {Pr : Primes X} {R : Ranks}

end Core

end DetChrL

end Formalism.L2.Col
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Columns.DetChrJoint =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.MuProd\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.AbsoluteValueInertPrimes\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.TwistComponentsCompatibleSystem\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.TwistValueAtUniformizer\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.XiProd\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.HeckeCharacterCompatibleSystem\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.MlZFacSupport\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.HilbertNinetyNormOne\npublic import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures.MqRowSGUnif\npublic import Formalism.LocalToGlobal.Columns.HeckeExHost\npublic import Formalism.LocalToGlobal.KernelLattices.ColInst\nimport Formalism.LocalToGlobal.Columns.AdelicLemmas\nimport Formalism.LocalToGlobal.Columns.BaseLemmas\nimport Formalism.LocalToGlobal.Columns.ChainInst\npublic import Formalism.LocalToGlobal.Columns.DetChrJoint\nimport Formalism.LocalToGlobal.Columns.RowFormsSel\nimport Formalism.LocalToGlobal.Divisibility.TuplesLemmas\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.PenultimateKernelDiamondInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain
open scoped TensorProduct

noncomputable section
namespace Formalism.L2.Ker
open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col

section Sys

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem LocSys.mul' {A : Type} [CommGroup A] {l₁ l₂ : HeightOneSpectrum (𝓞 F) → Eˣ →* A} {R₁ R₂ R : Set (HeightOneSpectrum (𝓞 F))}
    (h₁ : LocSys l₁ R₁) (h₂ : LocSys l₂ R₂) (s₁ : R₁ ⊆ R) (s₂ : R₂ ⊆ R) : LocSys (fun v => l₁ v * l₂ v) R := by
  refine ⟨?_, ?_, ?_⟩
  · intro v a h
    rw [MonoidHom.mul_apply, h₁.wild v a h, h₂.wild v a h, one_mul]
  · intro v k
    rw [MonoidHom.mul_apply, h₁.trivF v k, h₂.trivF v k, one_mul]
  · intro v hv a h
    rw [MonoidHom.mul_apply, h₁.unr v (fun h' => hv (s₁ h')) a h, h₂.unr v (fun h' => hv (s₂ h')) a h, one_mul]

theorem LocSys.map' {A B : Type} [CommGroup A] [CommGroup B] {l : HeightOneSpectrum (𝓞 F) → Eˣ →* A} {R : Set (HeightOneSpectrum (𝓞 F))}
    (h : LocSys l R) (f : A →* B) : LocSys (fun v => f.comp (l v)) R := by
  refine ⟨?_, ?_, ?_⟩
  · intro v a h'
    rw [MonoidHom.comp_apply, h.wild v a h', map_one]
  · intro v k
    rw [MonoidHom.comp_apply, h.trivF v k, map_one]
  · intro v hv a h'
    rw [MonoidHom.comp_apply, h.unr v hv a h', map_one]

theorem OneAt.one (P : HeightOneSpectrum (𝓞 E)) : OneAt P (1 : E) := by
  unfold OneAt
  rw [sub_self, map_zero]
  exact zero_lt_one

theorem OneAt.pow {P : HeightOneSpectrum (𝓞 E)} {a : E} (h : OneAt P a) (n : ℕ) : OneAt P (a ^ n) := by
  induction n with
  | zero => rw [pow_zero]; exact OneAt.one P
  | succ k ih => rw [pow_succ]; exact ih.mul h

theorem OneAt.zpow {P : HeightOneSpectrum (𝓞 E)} {a : E} (h : OneAt P a) (n : ℤ) : OneAt P (a ^ n) := by
  cases n with
  | ofNat k => rw [Int.ofNat_eq_natCast, zpow_natCast]; exact h.pow k
  | negSucc k => rw [zpow_negSucc]; exact (h.pow _).inv

end Sys

section Key

variable {X : Fields}

theorem md_key (hX : X.Ok) {A : Type} [CommGroup A] {lam : HeightOneSpectrum (𝓞 X.F) → X.Eˣ →* A} {Rm : Set (HeightOneSpectrum (𝓞 X.F))}
    (hL : LocSys lam Rm) {v : HeightOneSpectrum (𝓞 X.F)} {P : HeightOneSpectrum (𝓞 X.E)} (hPv : P.asIdeal.under (𝓞 X.F) = v.asIdeal)
    (hne : conjPrime₂ P ≠ P) (x w c : X.Eˣ) (n : ℤ) (hw : OneAt (conjPrime₂ P) (w : X.E)) (hc : OneAt (conjPrime₂ P) (c : X.E))
    (h : OneAt P ((w : X.E) ^ n * (c : X.E) / ((x : X.E) / star (x : X.E)))) : lam v x = lam v w ^ n * lam v c := by
  have := absolute_value_split_primes X hX A lam Rm hL v P hPv hne x (w ^ n * c)
    (by rw [Units.val_mul, Units.val_zpow_eq_zpow_val]; exact (hw.zpow n).mul hc)
    (by rw [Units.val_mul, Units.val_zpow_eq_zpow_val]; exact h)
  rw [this, map_mul, map_zpow]

theorem md_ordE_zpow {E : Type} [Field E] [NumberField E] (P : HeightOneSpectrum (𝓞 E)) (a : E) (n : ℤ) :
    ordE P (a ^ n) = n * ordE P a := by
  unfold ordE
  rw [map_zpow₀, WithZero.log_zpow]
  simp

theorem md_val_of_ordE {E : Type} [Field E] [NumberField E] (P : HeightOneSpectrum (𝓞 E)) {a : E} (ha : a ≠ 0) (h : ordE P a = 0) :
    P.valuation E a = 1 := by
  unfold ordE at h
  have h0 : P.valuation E a ≠ 0 := (Valuation.ne_zero_iff _).2 ha
  have h1 : WithZero.log (P.valuation E a) = 0 := by omega
  rw [← WithZero.exp_log h0, h1, WithZero.exp_zero]

theorem md_off (hX : X.Ok) {A : Type} [CommGroup A] {lam : HeightOneSpectrum (𝓞 X.F) → X.Eˣ →* A} {Rm : Set (HeightOneSpectrum (𝓞 X.F))}
    (hL : LocSys lam Rm) {v : HeightOneSpectrum (𝓞 X.F)} (hv : v ∉ Rm) {P : HeightOneSpectrum (𝓞 X.E)} (hPv : P.asIdeal.under (𝓞 X.F) = v.asIdeal)
    (hne : conjPrime₂ P ≠ P) (x w : X.Eˣ) (hw : OneAt (conjPrime₂ P) (w : X.E)) (hw1 : P.valuation X.E (w : X.E) = WithZero.exp (-1 : ℤ)) :
    lam v x = lam v w ^ ordE P ((x : X.E) / star (x : X.E)) := by
  set z : X.E := (x : X.E) / star (x : X.E) with hz
  have hz0 : z ≠ 0 := div_ne_zero x.ne_zero (star_ne_zero.2 x.ne_zero)
  set n := ordE P z with hn
  have hu0 : z / (w : X.E) ^ n ≠ 0 := div_ne_zero hz0 (zpow_ne_zero _ w.ne_zero)
  obtain ⟨c, hc1, hc2⟩ := ab_reads P (conjPrime₂ P) hne.symm (Units.mk0 _ hu0)
  rw [Units.val_mk0] at hc1
  have hvu : P.valuation X.E (z / (w : X.E) ^ n) = 1 := by
    apply md_val_of_ordE P hu0
    rw [div_eq_mul_inv, ordE_mul P hz0 (inv_ne_zero (zpow_ne_zero _ w.ne_zero)), ← zpow_neg, md_ordE_zpow P,
      mh_ordE_unif (n := 1) hw1]
    omega
  have hcP : P.valuation X.E (c : X.E) = 1 := by
    have := hc1.val_eq_one
    rw [map_div₀, hvu, div_one] at this
    exact this
  have hk := md_key hX hL hPv hne x w c n hw hc2 (by
    have e : (w : X.E) ^ n * (c : X.E) / z = (c : X.E) / (z / (w : X.E) ^ n) := by
      field_simp
    rw [e]; exact hc1)
  rw [hk, hL.unr v hv c (fun P' hP' => by
    rcases local_factor_over_two X hX P P' (hP'.trans hPv.symm) with rfl | rfl
    · exact hcP
    · exact hc2.val_eq_one), mul_one]

end Key

section Conc

open Formalism.L2.Host
open Classical

variable {X : Fields} {Pr : Primes X} {R : Ranks} (W : Wts X Pr.Word R) (Ch : Chars X Pr R.m)
  (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) {S : Set ℕ}
  (mu : Tup X.F X.E X.K S) (cst : LocCst X (rowSG Pr sel mu)) (G : ChGlob X R.m)


variable (Pr) in
def RmOf : Set (HeightOneSpectrum (𝓞 X.F)) := {v | ∃ P ∈ rowSG Pr sel mu, P.asIdeal.under (𝓞 X.F) = v.asIdeal}

def muLam (σ₀ : X.K →+* ℂ) (χ : HChar X.E) (ξ : Chr X.F X.E X.K) (v : HeightOneSpectrum (𝓞 X.F)) : X.Eˣ →* ℂˣ :=
  lamH χ v * (Units.map σ₀.toMonoidHom).comp (lamX ξ v)

theorem md_vG_sub (i : Fin 2) {Q : HeightOneSpectrum (𝓞 X.E)} (h : Q ∈ Pr.vG i) : Q ∈ Pr.vGs := by
  unfold Primes.vGs
  fin_cases i
  · exact Finset.mem_union_left _ h
  · exact Finset.mem_union_right _ h

theorem md_g_mem (hPr : Pr.Ok) {P : HeightOneSpectrum (𝓞 X.E)} {i : Fin 2} (h : ((Pr.g i : ℕ) : 𝓞 X.E) ∈ P.asIdeal) :
    P ∈ Pr.vGs ∨ conjPrime₂ P ∈ Pr.vGs := by
  rw [← hPr.piG_norm i] at h
  rcases P.isPrime.mem_or_mem h with h1 | h1
  · right
    refine md_vG_sub i ((mem_divs (ciConjPiG_ne_zero hPr i) _).2 ?_)
    rw [mem_conjP]
    show cO X.E (cO X.E (Pr.piG i)) ∈ P.asIdeal
    rw [cO_cO]
    exact h1
  · left
    exact md_vG_sub i ((mem_divs (ciConjPiG_ne_zero hPr i) _).2 h1)

theorem md_conj_eq (P : HeightOneSpectrum (𝓞 X.E)) : HeckeExHost.conjPrime₂ P = conjPrime₂ P := HeightOneSpectrum.ext rfl

variable {sel mu}

theorem md_mem_Rm {P : HeightOneSpectrum (𝓞 X.E)} (hP : P ∈ rowSG Pr sel mu) {v : HeightOneSpectrum (𝓞 X.F)}
    (hv : P.asIdeal.under (𝓞 X.F) = v.asIdeal) : v ∈ RmOf Pr sel mu := ⟨P, hP, hv⟩

theorem md_no_g (hX : X.Ok) (hPr : Pr.Ok) {v : HeightOneSpectrum (𝓞 X.F)} (hv : v ∉ RmOf Pr sel mu) {P : HeightOneSpectrum (𝓞 X.E)}
    (hP : P.asIdeal.under (𝓞 X.F) = v.asIdeal) (i : Fin 2) : ((Pr.g i : ℕ) : 𝓞 X.E) ∉ P.asIdeal := by
  intro h
  rcases md_g_mem hPr h with h1 | h1
  · exact hv (md_mem_Rm (Finset.mem_union_left _ h1) hP)
  · exact hv (md_mem_Rm (Finset.mem_union_left _ h1) ((ab_conjP_under X hX P).trans hP))

theorem md_Q_sub (hsel : IsSel X sel) : Qprime (mu : Chr X.F X.E X.K) ⊆ RmOf Pr sel mu := fun v hv =>
  md_mem_Rm (Finset.mem_union_right _ ((mem_QE sel mu _).2 ⟨v, hv, rfl⟩)) (hsel v)

theorem md_sys (hX : X.Ok) (hPr : Pr.Ok) (hsel : IsSel X sel) {σ₀ : X.K →+* ℂ} {e : X.Tau → ℚ} {j : Fin R.m} {χ : HChar X.E}
    (hχ : IsMu0 Ch σ₀ e j χ) : LocSys (muLam σ₀ χ (mu : Chr X.F X.E X.K)) (RmOf Pr sel mu) :=
  LocSys.mul' (hecke_character_compatible_system X.F X.E χ (RmOf Pr sel mu) hχ.tame hχ.triv fun _ hv _ hP => hχ.unr _ (md_no_g hX hPr hv hP))
    ((twist_components_compatible_system X.F X.E X.K S mu).map' _) (le_refl _) (md_Q_sub hsel)

theorem md_split (hX : X.Ok) (hPr : Pr.Ok) (hsel : IsSel X sel) {P : HeightOneSpectrum (𝓞 X.E)} (hP : P ∈ rowSG Pr sel mu) : conjPrime₂ P ≠ P := by
  rcases Finset.mem_union.1 hP with h | h
  · rw [← md_conj_eq]
    exact (DetChrL.conjP_vGs hX hPr h).1
  · obtain ⟨v, hv, rfl⟩ := (mem_QE sel mu P).1 h
    obtain ⟨⟨P1, P2, hne, hsp⟩, -, -⟩ := mu.good hv
    intro hc
    have hov : ∀ Q : HeightOneSpectrum (𝓞 X.E), Ideal.map (algebraMap (𝓞 X.F) (𝓞 X.E)) v.asIdeal ≤ Q.asIdeal → Q = sel v := by
      intro Q hQ
      have h1 : v.asIdeal ≤ Q.asIdeal.comap (algebraMap (𝓞 X.F) (𝓞 X.E)) := Ideal.map_le_iff_le_comap.1 hQ
      have h2 : v.asIdeal = Q.asIdeal.comap (algebraMap (𝓞 X.F) (𝓞 X.E)) :=
        v.isMaximal.eq_of_le (Ideal.comap_ne_top _ Q.isPrime.ne_top) h1
      rcases local_factor_over_two X hX (sel v) Q (h2.symm.trans (hsel v).symm) with h3 | h3
      · exact h3
      · rw [h3, hc]
    exact hne ((hov P1 (hsp ▸ Ideal.mul_le_left)).trans (hov P2 (hsp ▸ Ideal.mul_le_right)).symm)

theorem md_inj (hX : X.Ok) (hPr : Pr.Ok) (hsel : IsSel X sel) (hg : XiOffG Pr (mu : Chr X.F X.E X.K)) {P P' : HeightOneSpectrum (𝓞 X.E)}
    (hP : P ∈ rowSG Pr sel mu) (hP' : P' ∈ rowSG Pr sel mu) (h : P'.asIdeal.under (𝓞 X.F) = P.asIdeal.under (𝓞 X.F)) : P' = P := by
  have key : ∀ Q Q' : HeightOneSpectrum (𝓞 X.E), Q ∈ Pr.vGs → Q' ∈ QE sel (mu : Chr X.F X.E X.K) →
      Q'.asIdeal.under (𝓞 X.F) = Q.asIdeal.under (𝓞 X.F) → False := by
    intro Q Q' hQ hQ' hh
    obtain ⟨v, hv, rfl⟩ := (mem_QE sel mu Q').1 hQ'
    exact hg Q hQ v (hh.symm.trans (hsel v)) hv
  rcases Finset.mem_union.1 hP with h1 | h1 <;> rcases Finset.mem_union.1 hP' with h2 | h2
  · rcases local_factor_over_two X hX P P' h with h3 | h3
    · exact h3
    · exfalso
      rw [h3, ← md_conj_eq] at h2
      exact (DetChrL.conjP_vGs hX hPr h1).2 h2
  · exact (key P P' h1 h2 h).elim
  · exact (key P' P h2 h1 h.symm).elim
  · obtain ⟨v, _, rfl⟩ := (mem_QE sel mu P).1 h1
    obtain ⟨v', _, rfl⟩ := (mem_QE sel mu P').1 h2
    rw [hsel v, hsel v'] at h
    rw [HeightOneSpectrum.ext h]

theorem md_coe_ne {E : Type} [Field E] [NumberField E] {b : 𝓞 E} (h : b ≠ 0) : (b : E) ≠ 0 := by
  simpa using h

theorem md_fac_off (hX : X.AbelianUnramifiedExtensionConditions) (hPr : Pr.Ok) (hsel : IsSel X sel) {σ₀ : X.K →+* ℂ} {e : Fin R.m → X.Tau → ℚ} {m0 : Fin R.m → HChar X.E} {eta : HChar X.E}
    (hT : Ch.Tied σ₀ e m0 eta) (i : ℕ) (hi : i < R.m) (x : X.Eˣ) {v : HeightOneSpectrum (𝓞 X.F)} (hv : v ∉ RmOf Pr sel mu) :
    σ₀ (zFac sel (rowSG Pr sel mu) (mUof Ch mu i) ((x : X.E) / star (x : X.E)) v) =
      (((muLam σ₀ (m0 ⟨i, hi⟩) (mu : Chr X.F X.E X.K) v x)⁻¹ : ℂˣ) : ℂ) := by
  have hsys := md_sys (Ch := Ch) (sel := sel) (mu := mu) hX.ok hPr hsel (hT.mu0 ⟨i, hi⟩)
  unfold zFac
  rw [if_neg (show ¬ ∃ P ∈ rowSG Pr sel mu, P.asIdeal.under (𝓞 X.F) = v.asIdeal from hv)]
  by_cases hc : conjPrime₂ (sel v) = sel v
  · rw [absolute_value_inert_primes X hX.ok ℂˣ _ _ hsys v (sel v) (hsel v) hc hv (hX.unram (sel v)) x]
    have h1 : (sel v).valuation X.E (star (x : X.E)) = (sel v).valuation X.E (x : X.E) := by
      have := ab_val_star (sel v) (x : X.E)
      rwa [hc] at this
    have h2 : ordE (sel v) ((x : X.E) / star (x : X.E)) = 0 := by
      apply mh_ordE_unif
      rw [map_div₀, h1, div_self ((Valuation.ne_zero_iff _).2 x.ne_zero)]
      simp
    rw [h2]
    simp
  · obtain ⟨t, ht1, ht2⟩ := Ideal.exists_mem_pow_notMem_pow_succ (sel v).asIdeal (sel v).ne_bot (sel v).isPrime.ne_top 1
    rw [pow_one] at ht1
    obtain ⟨b, hb0, hb1, hb2⟩ := prime_approximation_holds X.E (sel v) (conjPrime₂ (sel v)) (Ne.symm hc) t
    have hbP : b ∈ (sel v).asIdeal := by
      have := (sel v).asIdeal.add_mem (Ideal.pow_le_self two_ne_zero hb1) ht1
      rwa [sub_add_cancel] at this
    have hbP2 : b ∉ (sel v).asIdeal ^ 2 := by
      intro h
      apply ht2
      have := ((sel v).asIdeal ^ 2).sub_mem h hb1
      rwa [sub_sub_cancel] at this
    have hoth : ∀ P' : HeightOneSpectrum (𝓞 X.E), P' ≠ sel v → P'.asIdeal.under (𝓞 X.F) = v.asIdeal → P' = conjPrime₂ (sel v) := by
      intro P' h1 h2
      rcases local_factor_over_two X hX.ok (sel v) P' (h2.trans (hsel v).symm) with h3 | h3
      · exact absurd h3 h1
      · exact h3
    set w : X.Eˣ := Units.mk0 (b : X.E) (md_coe_ne hb0) with hw
    have hw1 : OneAt (conjPrime₂ (sel v)) (w : X.E) := _root_.Formalism.L2.Ker.ab_one_of_mem hb2
    have hw2 : (sel v).valuation X.E (w : X.E) = WithZero.exp (-1 : ℤ) := mh_val_unif hbP hbP2
    rw [md_off hX.ok hsys hv (hsel v) hc x w hw1 hw2]
    have hunr : (m0 ⟨i, hi⟩).UnrAt (sel v) := (hT.mu0 ⟨i, hi⟩).unr _ (md_no_g hX.ok hPr hv (hsel v))
    have e1 : lamH (F := X.F) (m0 ⟨i, hi⟩) v w = (m0 ⟨i, hi⟩).val (sel v) := by
      rw [hecke_character_evaluation X.F X.E _ (hT.mu0 ⟨i, hi⟩).tame v (sel v) (hsel v) w (fun P' h1 h2 => by rw [hoth P' h1 h2]; exact hw1)]
      exact (hecke_character_local_behaviour X.E _ (sel v)).2.2 hunr w hw2
    have e2 : lamX (mu : Chr X.F X.E X.K) v w = unifVal (mu : Chr X.F X.E X.K) (sel v) :=
      twist_value_at_uniformizer X.F X.E X.K S mu v (sel v) (hsel v) (fun h => hv (md_Q_sub hsel h)) w b rfl hbP hbP2
        (fun P' h1 h2 => by rw [hoth P' h1 h2]; exact hb2)
    have e3 : Units.map σ₀.toMonoidHom (mUof Ch mu i (sel v)) = (muLam σ₀ (m0 ⟨i, hi⟩) (mu : Chr X.F X.E X.K) v w)⁻¹ := by
      unfold muLam mUof
      rw [MonoidHom.mul_apply, MonoidHom.comp_apply, e1, e2, dite_eq_left hi, map_mul, map_inv, map_inv, mul_inv]
      congr 2
      apply Units.ext
      exact hT.muVal ⟨i, hi⟩ (sel v) (md_no_g hX.ok hPr hv (hsel v))
    rw [← inv_zpow, ← e3, ← map_zpow]
    rfl

end Conc

section Bad

open Formalism.L2.Host
open Classical

variable {X : Fields} {Pr : Primes X} {R : Ranks} {Ch : Chars X Pr R.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ}
  {mu : Tup X.F X.E X.K S}

theorem md_bad (hX : X.Ok) (hPr : Pr.Ok) (hsel : IsSel X sel) {σ₀ : X.K →+* ℂ} {e : X.Tau → ℚ} {j : Fin R.m} {χ : HChar X.E}
    (hχ : IsMu0 Ch σ₀ e j χ) {P : HeightOneSpectrum (𝓞 X.E)} (hP : P ∈ rowSG Pr sel mu)
    (hq2 : ((Col.qOf P : ℕ) : 𝓞 X.E) ∉ P.asIdeal ^ 2) {v : HeightOneSpectrum (𝓞 X.F)} (hv : P.asIdeal.under (𝓞 X.F) = v.asIdeal)
    (x qu : X.Eˣ) (hqu : (qu : X.E) = ((Col.qOf P : ℕ) : X.E)) :
    ∃ (c : X.Eˣ) (c₀ : 𝓞 X.E), (c : X.E) = (c₀ : X.E) ∧
      Ideal.Quotient.mk P.asIdeal c₀ = redP P (((x : X.E) / star (x : X.E)) / ((Col.qOf P : ℕ) : X.E) ^ LocE.vP P (Col.qOf P) ((x : X.E) / star (x : X.E))) ∧
      c₀ - 1 ∈ (conjPrime₂ P).asIdeal ∧ P.valuation X.E (c : X.E) = 1 ∧
      muLam σ₀ χ (mu : Chr X.F X.E X.K) v x =
        (χ.locK P qu * Units.map σ₀.toMonoidHom (qVal (mu : Chr X.F X.E X.K) P)) ^ LocE.vP P (Col.qOf P) ((x : X.E) / star (x : X.E)) *
          (χ.locK P c * Units.map σ₀.toMonoidHom (lamX (mu : Chr X.F X.E X.K) v c)) := by
  have hsys := md_sys (Ch := Ch) (sel := sel) (mu := mu) hX hPr hsel hχ
  have hne : conjPrime₂ P ≠ P := md_split hX hPr hsel hP
  have hq : ((Col.qOf P : ℕ) : 𝓞 X.E) ∈ P.asIdeal := ciQ_mem P
  set q : ℕ := Col.qOf P with hqdef
  set z : X.E := (x : X.E) / star (x : X.E) with hz
  have hz0 : z ≠ 0 := div_ne_zero x.ne_zero (star_ne_zero.2 x.ne_zero)
  set n : ℤ := LocE.vP P q z with hn
  have hu : IsUnit (redP P (z / (q : X.E) ^ n)) := isUnit_div_pow_valuation q hq hq2 z hz0
  have hq0 : (q : X.E) ≠ 0 := ciQ_ne_zero hq2
  have hoth : ∀ P' : HeightOneSpectrum (𝓞 X.E), P' ≠ P → P'.asIdeal.under (𝓞 X.F) = v.asIdeal → P' = conjPrime₂ P := by
    intro P' h1 h2
    rcases local_factor_over_two X hX P P' (h2.trans hv.symm) with h3 | h3
    · exact absurd h3 h1
    · exact h3
  obtain ⟨b, hb0, hb1, hb2⟩ := prime_approximation_holds X.E P (conjPrime₂ P) (Ne.symm hne) ((q : ℕ) : 𝓞 X.E)
  obtain ⟨t, ht⟩ := Ideal.Quotient.mk_surjective (redP P (z / (q : X.E) ^ n))
  obtain ⟨c₀, hc0, hc1, hc2⟩ := prime_approximation_holds X.E P (conjPrime₂ P) (Ne.symm hne) t
  have hmk : Ideal.Quotient.mk P.asIdeal c₀ = redP P (z / (q : X.E) ^ n) := by
    rw [← ht]
    exact Ideal.Quotient.eq.2 (Ideal.pow_le_self two_ne_zero hc1)
  set w : X.Eˣ := Units.mk0 (b : X.E) (md_coe_ne hb0) with hw
  set c : X.Eˣ := Units.mk0 (c₀ : X.E) (md_coe_ne hc0) with hc
  have hvq : P.valuation X.E (q : X.E) = WithZero.exp (-1 : ℤ) := by
    have := mh_val_unif hq hq2
    simpa using this
  have hvu : P.valuation X.E (z / (q : X.E) ^ n) = 1 := mh_val_unit hu
  have hIu : IntAt P (z / (q : X.E) ^ n) := intAt_of_redP_ne_zero₂ hu.ne_zero

  have hwq : OneAt P ((w : X.E) / (q : X.E)) := by
    unfold OneAt
    have e1 : (w : X.E) / (q : X.E) - 1 = (((b - ((q : ℕ) : 𝓞 X.E) : 𝓞 X.E)) : X.E) / (q : X.E) := by
      rw [hw, Units.val_mk0]
      push_cast
      field_simp
    rw [e1, map_div₀, hvq]
    refine (div_lt_one₀ (by simp)).2 (lt_of_le_of_lt (mh_val_sq hb1) ?_)
    exact WithZero.exp_lt_exp.2 (by norm_num)

  have hcu : OneAt P ((c : X.E) / (z / (q : X.E) ^ n)) := by
    unfold OneAt
    have hu0 : z / (q : X.E) ^ n ≠ 0 := div_ne_zero hz0 (zpow_ne_zero _ hq0)
    have e1 : (c : X.E) / (z / (q : X.E) ^ n) - 1 = ((c₀ : X.E) - z / (q : X.E) ^ n) / (z / (q : X.E) ^ n) := by
      rw [hc, Units.val_mk0]
      field_simp
    rw [e1, map_div₀, hvu, div_one]
    refine mh_val_lt (ciIntAt_sub (IntAt.coe P c₀) hIu) ?_
    rw [redP_sub (IntAt.coe P c₀) hIu, reduction_coe, hmk, sub_self]
  have hcP : P.valuation X.E (c : X.E) = 1 := by
    have := hcu.val_eq_one
    rwa [map_div₀, hvu, div_one] at this
  have hw1 : OneAt (conjPrime₂ P) (w : X.E) := _root_.Formalism.L2.Ker.ab_one_of_mem hb2
  have hc1' : OneAt (conjPrime₂ P) (c : X.E) := _root_.Formalism.L2.Ker.ab_one_of_mem hc2
  have hk := md_key hX hsys hv hne x w c n hw1 hc1' (by
    have e : (w : X.E) ^ n * (c : X.E) / z = ((w : X.E) / (q : X.E)) ^ n * ((c : X.E) / (z / (q : X.E) ^ n)) := by
      rw [div_zpow]
      have := zpow_ne_zero n hq0
      field_simp
    rw [e]
    exact (hwq.zpow n).mul hcu)
  refine ⟨c, c₀, rfl, hmk, hc2, hcP, ?_⟩
  rw [hk]
  have e1 : lamH (F := X.F) χ v w = χ.locK P qu := by
    rw [hecke_character_evaluation X.F X.E _ hχ.tame v P hv w (fun P' h1 h2 => by rw [hoth P' h1 h2]; exact hw1)]
    have := (hecke_character_local_behaviour X.E χ P).1 (hχ.tame P) (w / qu) (by rw [Units.val_div_eq_div_val, hqu]; exact hwq)
    rw [map_div, div_eq_one] at this
    exact this
  have e2 : lamX (mu : Chr X.F X.E X.K) v w = qVal (mu : Chr X.F X.E X.K) P :=
    twist_value_at_q X.F X.E X.K S mu v P hv hq2 w b rfl hb1 (fun P' h1 h2 => by rw [hoth P' h1 h2]; exact hb2)
  have e3 : lamH (F := X.F) χ v c = χ.locK P c :=
    hecke_character_evaluation X.F X.E _ hχ.tame v P hv c (fun P' h1 h2 => by rw [hoth P' h1 h2]; exact hc1')
  unfold muLam
  rw [MonoidHom.mul_apply, MonoidHom.mul_apply, MonoidHom.comp_apply, MonoidHom.comp_apply, e1, e2, e3]

end Bad

section Law

open Formalism.L2.Host
open Classical

variable {X : Fields} {Pr : Primes X} {R : Ranks} {W : Wts X Pr.Word R} {Ch : Chars X Pr R.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ}
  {mu : Tup X.F X.E X.K S} {cst : LocCst X (rowSG Pr sel mu)} {G : ChGlob X R.m}

theorem md_fac_bad (hX : X.Ok) (hPr : Pr.Ok) (hsel : IsSel X sel) (hg : XiOffG Pr (mu : Chr X.F X.E X.K)) (hT : LawTies W Ch sel mu cst G)
    (i : ℕ) (hi : i < R.m) (P : rowSG Pr sel mu) {v : HeightOneSpectrum (𝓞 X.F)} (hv : P.1.asIdeal.under (𝓞 X.F) = v.asIdeal) (x : X.Eˣ) :
    G.σ₀ (muAtT Ch sel mu cst i P ((x : X.E) / star (x : X.E))) =
      (((muLam G.σ₀ (G.mu0 ⟨i, hi⟩) (mu : Chr X.F X.E X.K) v x)⁻¹ : ℂˣ) : ℂ) := by
  obtain ⟨-, hGt, ⟨eta, hTd⟩, -⟩ := hT
  have hχ := hTd.mu0 ⟨i, hi⟩
  have hq2 := mq_rowSG_unif mu hX hPr hsel P
  have hq : ((Col.qOf P.1 : ℕ) : 𝓞 X.E) ∈ P.1.asIdeal := ciQ_mem P.1
  have hz0 : (x : X.E) / star (x : X.E) ≠ 0 := div_ne_zero x.ne_zero (star_ne_zero.2 x.ne_zero)
  obtain ⟨c, c₀, hcc, hmk, hc2, hcP, hL⟩ := md_bad hX hPr hsel hχ P.2 hq2 hv x (Units.mk0 ((Col.qOf P.1 : ℕ) : X.E) (ciQ_ne_zero hq2)) rfl
  have hu := isUnit_div_pow_valuation (Col.qOf P.1) hq hq2 _ hz0
  have hoth : ∀ P' : HeightOneSpectrum (𝓞 X.E), P' ≠ P.1 → P'.asIdeal.under (𝓞 X.F) = v.asIdeal → P' = conjPrime₂ P.1 := by
    intro P' h1 h2
    rcases local_factor_over_two X hX P.1 P' (h2.trans hv.symm) with h3 | h3
    · exact absurd h3 h1
    · exact h3
  rw [hL]
  unfold muAtT LocE.locChar LocE.unitV
  rw [dite_eq_left hu]
  generalize LocE.vP P.1 (Col.qOf P.1) ((x : X.E) / star (x : X.E)) = n at *
  by_cases hP : P.1 ∈ Pr.vGs
  · rw [if_pos hP, if_pos hP]
    have h1 := hGt i hi P hP (Units.mk0 ((Col.qOf P.1 : ℕ) : X.E) (ciQ_ne_zero hq2)) rfl
    have h2 : lamX (mu : Chr X.F X.E X.K) v c = 1 := (twist_components_compatible_system X.F X.E X.K S mu).unr v (hg P.1 hP v hv) c (fun P' hP' => by
      by_cases h : P' = P.1
      · rw [h]; exact hcP
      · rw [hoth P' h hP', hcc]; exact (_root_.Formalism.L2.Ker.ab_one_of_mem hc2).val_eq_one)
    have h3 := hχ.atg ⟨P.1, hP⟩ c c₀ hu.unit hcc (by rw [IsUnit.unit_spec]; exact hmk.symm)
    have h4 : chiP Ch P.1 i = Ch.chi ⟨i, hi⟩ ⟨P.1, hP⟩ := by
      unfold chiP chiAt extChi
      rw [dite_eq_left hP, dite_eq_left hi]
    rw [map_mul, map_zpow₀, h1, h4, h2, map_one, mul_one]
    have hb : G.σ₀ (((qVal (mu : Chr X.F X.E X.K) P.1)⁻¹ : X.Kˣ) : X.K) = (G.σ₀ ((qVal (mu : Chr X.F X.E X.K) P.1 : X.Kˣ) : X.K))⁻¹ := by
      rw [Units.val_inv_eq_inv_val, map_inv₀]
    have hd : (((G.mu0 ⟨i, hi⟩).locK P.1 c : ℂˣ) : ℂ) = (G.σ₀ ((Ch.chi ⟨i, hi⟩ ⟨P.1, hP⟩ hu.unit : X.Kˣ) : X.K))⁻¹ :=
      h3.trans (by rw [Units.val_inv_eq_inv_val, map_inv₀])
    rw [Units.val_inv_eq_inv_val (_ * _), Units.val_mul, Units.val_zpow_eq_zpow_val, Units.val_mul, hb, hd, mul_inv, inv_inv, ← inv_zpow, mul_inv]
    rfl
  · rw [if_neg hP, if_neg hP]
    have hPQ : P.1 ∈ QE sel (mu : Chr X.F X.E X.K) := (Finset.mem_union.1 P.2).resolve_left hP
    have hng : ∀ i' : Fin 2, ((Pr.g i' : ℕ) : 𝓞 X.E) ∉ P.1.asIdeal := by
      intro i' h
      rcases md_g_mem hPr h with h1 | h1
      · exact hP h1
      · obtain ⟨v', hv', hs⟩ := (mem_QE sel mu P.1).1 hPQ
        have e : v' = v := HeightOneSpectrum.ext (by rw [← hsel v', hs, hv])
        exact hg _ h1 v ((ab_conjP_under X hX P.1).trans hv) (e ▸ hv')
    have hunr : (G.mu0 ⟨i, hi⟩).UnrAt P.1 := hχ.unr _ hng
    have hvq : P.1.valuation X.E ((Col.qOf P.1 : ℕ) : X.E) = WithZero.exp (-1 : ℤ) := by
      have := mh_val_unif hq hq2
      simpa using this
    have h1 := (hecke_character_local_behaviour X.E (G.mu0 ⟨i, hi⟩) P.1).2.2 hunr (Units.mk0 ((Col.qOf P.1 : ℕ) : X.E) (ciQ_ne_zero hq2)) hvq
    have h2 := hTd.muVal ⟨i, hi⟩ P.1 hng
    have h3 := (hecke_character_local_behaviour X.E (G.mu0 ⟨i, hi⟩) P.1).2.1 hunr c hcP
    have h4 : lamX (mu : Chr X.F X.E X.K) v c = resChar (mu : Chr X.F X.E X.K) P.1 hu.unit :=
      twist_residue_character X.F X.E X.K S mu v P.1 hv c c₀ hu.unit hcc (by rw [IsUnit.unit_spec]; exact hmk)
        (fun P' h1 h2 => by rw [hoth P' h1 h2]; exact hc2)
    unfold muqT
    rw [dite_eq_left hi, h1, h3, h4, one_mul, map_mul, map_zpow₀]
    have hL1 : G.σ₀ ((((Ch.muVal ⟨i, hi⟩ P.1)⁻¹ * (qVal (mu : Chr X.F X.E X.K) P.1)⁻¹ : X.Kˣ)) : X.K) =
        (((G.mu0 ⟨i, hi⟩).val P.1 : ℂˣ) : ℂ)⁻¹ * (G.σ₀ ((qVal (mu : Chr X.F X.E X.K) P.1 : X.Kˣ) : X.K))⁻¹ := by
      rw [Units.val_mul, Units.val_inv_eq_inv_val, Units.val_inv_eq_inv_val, map_mul, map_inv₀, map_inv₀, h2]
    have hL2 : G.σ₀ ((((resChar (mu : Chr X.F X.E X.K) P.1)⁻¹ hu.unit : X.Kˣ)) : X.K) =
        (G.σ₀ ((resChar (mu : Chr X.F X.E X.K) P.1 hu.unit : X.Kˣ) : X.K))⁻¹ := by
      rw [MonoidHom.inv_apply, Units.val_inv_eq_inv_val, map_inv₀]
    rw [hL1, hL2, Units.val_inv_eq_inv_val (_ * _), Units.val_mul, Units.val_zpow_eq_zpow_val, Units.val_mul, mul_inv, ← inv_zpow, mul_inv]
    rfl

theorem md_muAtT_mul (hX : X.Ok) (hPr : Pr.Ok) (hsel : IsSel X sel) (hT : LawTies W Ch sel mu cst G) (i : ℕ) (hi : i < R.m)
    (P : rowSG Pr sel mu) (a b : X.E) (ha : a ≠ 0) (hb : b ≠ 0) :
    muAtT Ch sel mu cst i P (a * b) = muAtT Ch sel mu cst i P a * muAtT Ch sel mu cst i P b := by
  have hq2 := mq_rowSG_unif mu hX hPr hsel P
  unfold muAtT
  refine ml_locChar_mul _ (ciQ_mem P.1) hq2 _ ?_ _ a b ha hb
  by_cases hP : P.1 ∈ Pr.vGs
  · rw [if_pos hP]
    intro h0
    have h1 := hT.2.1 i hi P hP (Units.mk0 ((Col.qOf P.1 : ℕ) : X.E) (ciQ_ne_zero hq2)) rfl
    rw [h0, map_zero] at h1
    exact mul_ne_zero (inv_ne_zero (Units.ne_zero _)) ((map_ne_zero G.σ₀).2 (Units.ne_zero _)) h1.symm
  · rw [if_neg hP]
    exact Units.ne_zero _

theorem md_prod (hX : X.AbelianUnramifiedExtensionConditions) (hPr : Pr.Ok) (hsel : IsSel X sel) (hg : XiOffG Pr (mu : Chr X.F X.E X.K)) (hT : LawTies W Ch sel mu cst G)
    (i : ℕ) (hi : i < R.m) (x : X.Eˣ) :
    G.σ₀ ((∏ᶠ v, zFac sel (rowSG Pr sel mu) (mUof Ch mu i) ((x : X.E) / star (x : X.E)) v) *
      ∏ P : rowSG Pr sel mu, muAtT Ch sel mu cst i P ((x : X.E) / star (x : X.E))) = (((G.mu0 ⟨i, hi⟩).inf x : ℂˣ) : ℂ) := by
  obtain ⟨eta, hTd⟩ := hT.2.2.1
  have hχ := hTd.mu0 ⟨i, hi⟩
  have hz0 : (x : X.E) / star (x : X.E) ≠ 0 := div_ne_zero x.ne_zero (star_ne_zero.2 x.ne_zero)
  have ha0 : ((Pr.g 0 * Pr.g 1 : ℕ) : 𝓞 X.E) ≠ 0 := by
    exact_mod_cast Nat.mul_ne_zero (hPr.g_prime 0).ne_zero (hPr.g_prime 1).ne_zero
  have hH := hecke_character_product_formula X.F X.E (G.mu0 ⟨i, hi⟩) (divs ((Pr.g 0 * Pr.g 1 : ℕ) : 𝓞 X.E)) (fun P hP => hχ.unr P (fun i' h => hP ((mem_divs ha0 P).2 (by
    push_cast
    fin_cases i'
    · exact Ideal.mul_mem_right _ _ h
    · exact Ideal.mul_mem_left _ _ h)))) x
  have hXi := twist_product_formula X.F X.E X.K S mu x
  set f : HeightOneSpectrum (𝓞 X.F) → ℂˣ := fun v => (muLam G.σ₀ (G.mu0 ⟨i, hi⟩) (mu : Chr X.F X.E X.K) v x)⁻¹ with hf
  have hXi' : (Function.mulSupport fun v : HeightOneSpectrum (𝓞 X.F) => Units.map G.σ₀.toMonoidHom (lamX (mu : Chr X.F X.E X.K) v x)).Finite := by
    refine hXi.1.subset fun v hv h => hv ?_
    show Units.map G.σ₀.toMonoidHom (lamX (mu : Chr X.F X.E X.K) v x) = 1
    rw [show lamX (mu : Chr X.F X.E X.K) v x = 1 from h, map_one]
  have hftot : ∏ᶠ v, f v = (G.mu0 ⟨i, hi⟩).inf x := by
    rw [hf, finprod_inv_distrib]
    have : (fun v => muLam G.σ₀ (G.mu0 ⟨i, hi⟩) (mu : Chr X.F X.E X.K) v x) =
        fun v => lamH (F := X.F) (G.mu0 ⟨i, hi⟩) v x * Units.map G.σ₀.toMonoidHom (lamX (mu : Chr X.F X.E X.K) v x) := rfl
    rw [this, finprod_mul_distrib hH.1 hXi', hH.2, ← MonoidHom.map_finprod _ hXi.1, hXi.2, map_one, mul_one, inv_inv]
  have hfs : (Function.mulSupport f).Finite := by
    refine (hH.1.union hXi').subset fun v hv => ?_
    by_contra hc
    rw [Set.mem_union, not_or] at hc
    apply hv
    have h1 : lamH (F := X.F) (G.mu0 ⟨i, hi⟩) v x = 1 := by
      by_contra h; exact hc.1 h
    have h2 : Units.map G.σ₀.toMonoidHom (lamX (mu : Chr X.F X.E X.K) v x) = 1 := by
      by_contra h; exact hc.2 h
    show (lamH (F := X.F) (G.mu0 ⟨i, hi⟩) v x * Units.map G.σ₀.toMonoidHom (lamX (mu : Chr X.F X.E X.K) v x))⁻¹ = 1
    rw [h1, h2, one_mul, inv_one]
  set g : HeightOneSpectrum (𝓞 X.F) → ℂˣ := fun v => if v ∈ RmOf Pr sel mu then 1 else f v with hgd
  set h : HeightOneSpectrum (𝓞 X.F) → ℂˣ := fun v => if v ∈ RmOf Pr sel mu then f v else 1 with hhd
  have hgs : (Function.mulSupport g).Finite := hfs.subset fun v hv hc => hv (by
    show (if v ∈ RmOf Pr sel mu then 1 else f v) = 1
    rw [show f v = 1 from hc, ite_self])
  have hhs : (Function.mulSupport h).Finite := hfs.subset fun v hv hc => hv (by
    show (if v ∈ RmOf Pr sel mu then f v else 1) = 1
    rw [show f v = 1 from hc, ite_self])
  have hsplit : ∏ᶠ v, f v = (∏ᶠ v, g v) * ∏ᶠ v, h v := by
    rw [← finprod_mul_distrib hgs hhs]
    refine finprod_congr fun v => ?_
    show f v = (if v ∈ RmOf Pr sel mu then 1 else f v) * (if v ∈ RmOf Pr sel mu then f v else 1)
    by_cases hv : v ∈ RmOf Pr sel mu
    · rw [if_pos hv, if_pos hv, one_mul]
    · rw [if_neg hv, if_neg hv, mul_one]
  have e1 : G.σ₀ (∏ᶠ v, zFac sel (rowSG Pr sel mu) (mUof Ch mu i) ((x : X.E) / star (x : X.E)) v) = ((∏ᶠ v, g v : ℂˣ) : ℂ) := by
    have a1 := MonoidHom.map_finprod (G.σ₀ : X.K →* ℂ) (ml_zFac_support hsel (rowSG Pr sel mu) (mUof Ch mu i) _ hz0)
    have a2 := MonoidHom.map_finprod (Units.coeHom ℂ) hgs
    refine a1.trans (Eq.trans ?_ a2.symm)
    refine finprod_congr fun v => ?_
    show G.σ₀ (zFac sel (rowSG Pr sel mu) (mUof Ch mu i) ((x : X.E) / star (x : X.E)) v) = (((if v ∈ RmOf Pr sel mu then 1 else f v : ℂˣ)) : ℂ)
    by_cases hv : v ∈ RmOf Pr sel mu
    · rw [if_pos hv]
      unfold zFac
      rw [if_pos (show ∃ P ∈ rowSG Pr sel mu, P.asIdeal.under (𝓞 X.F) = v.asIdeal from hv), map_one, Units.val_one]
    · rw [if_neg hv]
      exact md_fac_off Ch hX hPr hsel hTd i hi x hv
  have e2 : G.σ₀ (∏ P : rowSG Pr sel mu, muAtT Ch sel mu cst i P ((x : X.E) / star (x : X.E))) = ((∏ᶠ v, h v : ℂˣ) : ℂ) := by
    have hsub : Function.mulSupport h ⊆ ↑((rowSG Pr sel mu).image fun P => P.under (𝓞 X.F)) := by
      intro v hv
      by_contra hc
      apply hv
      show (if v ∈ RmOf Pr sel mu then f v else 1) = 1
      rw [if_neg]
      rintro ⟨P, hP, hPv⟩
      apply hc
      rw [Finset.coe_image]
      exact ⟨P, hP, HeightOneSpectrum.ext hPv⟩
    have ecs := Finset.prod_coe_sort (rowSG Pr sel mu) (fun P => h (P.under (𝓞 X.F)))
    rw [finprod_eq_prod_of_mulSupport_subset h hsub, Finset.prod_image (fun P hP P' hP' hh =>
      (md_inj hX.ok hPr hsel hg hP' hP (congrArg HeightOneSpectrum.asIdeal hh))), ← ecs, map_prod, Units.coe_prod]
    refine Finset.prod_congr rfl fun P _ => ?_
    show _ = (((if P.1.under (𝓞 X.F) ∈ RmOf Pr sel mu then f (P.1.under (𝓞 X.F)) else 1 : ℂˣ)) : ℂ)
    rw [if_pos (md_mem_Rm P.2 rfl)]
    exact md_fac_bad hX.ok hPr hsel hg hT i hi P rfl x
  rw [map_mul, e1, e2, ← Units.val_mul, ← hsplit, hftot]

theorem muProdLaw_of (hX : X.AbelianUnramifiedExtensionConditions) (hPr : Pr.Ok) (hsel : IsSel X sel) (hg : XiOffG Pr (mu : Chr X.F X.E X.K)) (hT : LawTies W Ch sel mu cst G)
    (i : ℕ) (hi : i < R.m) (e : X.Tau → ℤ) (he : ∀ τ, (e τ : ℚ) = (W.row τ).e ⟨i, hi⟩) (n : ℕ) :
    MuProdLaw n sel (rowSG Pr sel mu) (mUof Ch mu i) (muAtT Ch sel mu cst i) e := by
  intro γ N fr hN
  obtain ⟨x, hx⟩ := hilbert_ninety_norm_one X hX.ok _ (mh_det_norm γ)
  rw [ml_ratio hsel _ _ _ (md_muAtT_mul hX.ok hPr hsel hT i hi) γ N hN fr]
  congr 1
  apply G.σ₀.injective
  rw [hx, md_prod hX hPr hsel hg hT i hi x]
  obtain ⟨eta, hTd⟩ := hT.2.2.1
  obtain ⟨m, hm1, hm2⟩ := (hTd.mu0 ⟨i, hi⟩).inf
  rw [hecke_character_infinity_type X hX.ok G.σ₀ _ m e hm2 (fun τ => by
    have : (m τ : ℚ) = 2 * -(W.row τ).e ⟨i, hi⟩ := hm1 τ
    rw [← he τ] at this
    exact_mod_cast this) x, map_prod]
  refine Finset.prod_congr rfl fun τ _ => ?_
  rw [map_zpow₀]

end Law

section More

open Formalism.L2.Host Formalism.EigenvalueLevelCeiling
open Classical

variable {X : Fields} {Pr : Primes X} {R : Ranks} {W : Wts X Pr.Word R} {Ch : Chars X Pr R.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ}
  {mu : Tup X.F X.E X.K S} {cst : LocCst X (rowSG Pr sel mu)} {G : ChGlob X R.m}

theorem xiOffG_of_mem (hPr : Pr.Ok) (hS : ∀ i, Pr.g i ∈ S) : XiOffG Pr (mu : Chr X.F X.E X.K) := by
  intro P hP v hv hQ
  obtain ⟨i, hi⟩ := ciVGs_cases hP
  have hgP : ((Pr.g i : ℕ) : 𝓞 X.E) ∈ P.asIdeal := by
    rw [← hPr.piG_norm i]
    exact Ideal.mul_mem_left _ _ ((mem_divs (ciConjPiG_ne_zero hPr i) _).1 hi)
  have h1 : ((Pr.g i : ℕ) : 𝓞 X.F) ∈ v.asIdeal := by
    rw [← hv]
    show algebraMap (𝓞 X.F) (𝓞 X.E) ((Pr.g i : ℕ) : 𝓞 X.F) ∈ P.asIdeal
    rw [map_natCast]
    exact hgP
  have h2 : plc v ∣ Pr.g i := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_natCast] at h1
    exact (ringChar.spec _ _).mp h1
  have hpp : (plc v).Prime := by
    have : Finite (𝓞 X.F ⧸ v.asIdeal) := Ideal.finiteQuotientOfFreeOfNeBot v.asIdeal v.ne_bot
    have : v.asIdeal.IsPrime := v.isPrime
    exact CharP.char_is_prime (𝓞 X.F ⧸ v.asIdeal) (ringChar (𝓞 X.F ⧸ v.asIdeal))
  have h3 : plc v = Pr.g i := (Nat.prime_dvd_prime_iff_eq hpp (hPr.g_prime i)).mp h2
  exact (mu.good hQ).2.2 (h3 ▸ hS i)

end More

end Formalism.L2.Ker
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.LocalProductMeasures =====
