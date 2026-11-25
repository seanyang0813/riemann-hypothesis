module

public import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.EpsteinZeta.DedekindFactorK
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
public import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.LineR
public import Mathlib.RingTheory.DedekindDomain.Different
public import Mathlib.RingTheory.FractionalIdeal.Inverse
public import Mathlib.RingTheory.FractionalIdeal.Norm
public import Mathlib.RingTheory.Ideal.Norm.RelNorm
public import Mathlib.NumberTheory.NumberField.Norm
public import Mathlib.Analysis.SpecialFunctions.Log.Basic
public import Mathlib.NumberTheory.NumberField.Basic
public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Formalism.LocalToGlobal.GlobalTheory.GL3.Statement
public import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.LeadingConstantNeZero
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.IsDiscriminantTwelfthRootOfIdealLattice
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.SumEmbDualBasisComplex, Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.FractionalIdealDualFamily, Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.LiftMOneExt, Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.MapMulLeftDenSpanImageEqMapNum, Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.CoeIdealDifferentNeZero, Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.NormSum, Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.Period

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.SumEmbDualBasisComplex =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.SumEmbDualBasisComplex", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.EpsteinZeta.DedekindFactorK\npublic import Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5

open NumberField Classical
open scoped Pointwise

theorem liftM_coe_of_mem (M : IntermediateField ℚ ℂ) {x : ℂ} (h : x ∈ M) : ((liftM M x : M) : ℂ) = x := by
  rw [liftM, dite_eq_left h]

theorem sum_emb_eq_trace_complex (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E]
    (φ₀ : K →+* ℂ) (ι : Type) [Fintype ι]
    (emb : ι → E →+* ℂ) (hinj : Function.Injective emb)
    (hres : ∀ i (y : K), emb i (algebraMap K E y) = φ₀ y)
    (hcard : Fintype.card ι = Module.finrank K E) (a : E) :
    ∑ i, emb i a = φ₀ (Algebra.trace K E a) := by
  letI : Algebra K ℂ := φ₀.toAlgebra
  haveI : FiniteDimensional K E := Module.Finite.of_restrictScalars_finite ℚ K E
  let f : ι → (E →ₐ[K] ℂ) := fun i => { emb i with commutes' := fun y => hres i y }
  have hfinj : Function.Injective f := fun i j h => hinj (RingHom.ext fun x => AlgHom.congr_fun h x)
  have hbij : Function.Bijective f :=
    (Fintype.bijective_iff_injective_and_card f).mpr ⟨hfinj, by rw [hcard, AlgHom.card K E ℂ]⟩
  have htr := trace_eq_sum_embeddings ℂ (K := K) (L := E) (x := a)
  calc ∑ i, emb i a = ∑ i, f i a := rfl
    _ = ∑ σ : E →ₐ[K] ℂ, σ a := hbij.sum_comp (fun σ => σ a)
    _ = φ₀ (Algebra.trace K E a) := htr.symm

theorem sum_emb_eq_trace (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E]
    (φ₀ : K →+* ℂ) (M : IntermediateField ℚ ℂ) [NumberField M] (ι : Type) [Fintype ι] [DecidableEq ι]
    (emb : ι → E →+* ℂ) (hinj : Function.Injective emb)
    (hres : ∀ i (y : K), emb i (algebraMap K E y) = φ₀ y)
    (hcard : Fintype.card ι = Module.finrank K E) (hM : ∀ i y, emb i y ∈ M) (a : E) :
    ∑ i, liftM M (emb i a) = liftM M (φ₀ (Algebra.trace K E a)) := by
  have hsum := sum_emb_eq_trace_complex K E φ₀ ι emb hinj hres hcard a
  have hmem : φ₀ (Algebra.trace K E a) ∈ M := hsum ▸ M.sum_mem (fun i _ => hM i a)
  apply Subtype.ext
  rw [IntermediateField.coe_sum, liftM_coe_of_mem M hmem, ← hsum]
  exact Finset.sum_congr rfl fun i _ => liftM_coe_of_mem M (hM i a)

theorem sum_emb_dualBasis_complex (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E]
    (φ₀ : K →+* ℂ) (ι : Type) [Fintype ι] [DecidableEq ι]
    (emb : ι → E →+* ℂ) (hinj : Function.Injective emb)
    (hres : ∀ i (y : K), emb i (algebraMap K E y) = φ₀ y)
    (hcard : Fintype.card ι = Module.finrank K E) {κ : Type} [Fintype κ] [DecidableEq κ] (e : Module.Basis κ K E)
    (i k : ι) :
    ∑ j, emb i (e j) * emb k ((Algebra.traceForm K E).dualBasis (traceForm_nondegenerate K E) e j) =
      if i = k then 1 else 0 := by
  have hexp : ∀ x, emb k x = ∑ i', emb i' x * ∑ j, emb i' (e j) * emb k (((Algebra.traceForm K E).dualBasis (traceForm_nondegenerate K E) e) j) := by
    intro x
    conv_lhs => rw [← ((Algebra.traceForm K E).dualBasis (traceForm_nondegenerate K E) e).sum_repr x]

    rw [map_sum]
    simp only [LinearMap.BilinForm.dualBasis_repr_apply, Algebra.traceForm_apply, Algebra.smul_def, map_mul,
      hres, ← sum_emb_eq_trace_complex K E φ₀ ι emb hinj hres hcard, Finset.sum_mul, Finset.mul_sum]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun i' _ => Finset.sum_congr rfl fun j _ => by ring
  have hLI : LinearIndependent ℂ (fun i => ((emb i : E →+* ℂ) : E → ℂ)) :=
    (linearIndependent_monoidHom E ℂ).comp (fun i => (emb i).toMonoidHom)
      (fun i j h => hinj (RingHom.ext fun x => DFunLike.congr_fun h x))
  rw [Fintype.linearIndependent_iff] at hLI
  have h := hLI (fun i' => (∑ j, emb i' (e j) * emb k (((Algebra.traceForm K E).dualBasis (traceForm_nondegenerate K E) e) j)) - if i' = k then 1 else 0) (by
    funext x
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply, sub_mul,
      Finset.sum_sub_distrib, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq', Finset.mem_univ, if_true]
    rw [sub_eq_zero, hexp x]
    exact Finset.sum_congr rfl fun _ _ => mul_comm _ _) i
  rwa [sub_eq_zero] at h

theorem sum_emb_dualBasis (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E]
    (φ₀ : K →+* ℂ) (M : IntermediateField ℚ ℂ) [NumberField M] (ι : Type) [Fintype ι] [DecidableEq ι]
    (emb : ι → E →+* ℂ) (hinj : Function.Injective emb)
    (hres : ∀ i (y : K), emb i (algebraMap K E y) = φ₀ y)
    (hcard : Fintype.card ι = Module.finrank K E) (hM : ∀ i y, emb i y ∈ M) {κ : Type} [Fintype κ] [DecidableEq κ] (e : Module.Basis κ K E)
    (i k : ι) :
    ∑ j, liftM M (emb i (e j)) *
        liftM M (emb k ((Algebra.traceForm K E).dualBasis (traceForm_nondegenerate K E) e j)) =
      if i = k then 1 else 0 := by
  have hc := sum_emb_dualBasis_complex K E φ₀ ι emb hinj hres hcard e i k
  apply Subtype.ext
  rw [IntermediateField.coe_sum]
  simp only [IntermediateField.coe_mul, liftM_coe_of_mem M (hM _ _)]
  rw [hc]
  split_ifs <;> simp

end Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.SumEmbDualBasisComplex =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.FractionalIdealDualFamily =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.FractionalIdealDualFamily", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.LineR\npublic import Mathlib.RingTheory.DedekindDomain.Different\npublic import Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.SumEmbDualBasisComplex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5

open NumberField Classical
open scoped Pointwise

lemma coe_lift_intermediate {M : IntermediateField ℚ ℂ} {z : ℂ} (h : z ∈ M) : ((liftM M z : M) : ℂ) = z := by
  unfold liftM
  rw [dite_eq_left h]

lemma lift_integral_mem_range (M : IntermediateField ℚ ℂ) [NumberField M] {z : ℂ} (hz : z ∈ M)
    (hi : IsIntegral ℤ z) : liftM M z ∈ (algebraMap (𝓞 M) M).range := by
  have hint : IsIntegral ℤ (liftM M z) := by
    rw [← isIntegral_algHom_iff ((IntermediateField.val M).restrictScalars ℤ) Subtype.val_injective]
    have h1 : ((IntermediateField.val M).restrictScalars ℤ) (liftM M z) = z := coe_lift_intermediate hz
    rw [h1]
    exact hi
  exact ⟨⟨liftM M z, hint⟩, rfl⟩

theorem mem_mmR_of (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E]
    (φ₀ : K →+* ℂ) (M : IntermediateField ℚ ℂ) [NumberField M] (ι : Type) [Fintype ι] [DecidableEq ι]
    (emb : ι → E →+* ℂ) (hinj : Function.Injective emb)
    (hres : ∀ i (y : K), emb i (algebraMap K E y) = φ₀ y)
    (hcard : Fintype.card ι = Module.finrank K E) (hM : ∀ i y, emb i y ∈ M) (I : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (hI : I ≠ 0) (v : ι → M)
    (hv : v ∈ mmR M emb I) :
    ∀ b ∈ ((FractionalIdeal.dual (𝓞 K) K I : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) : Submodule (𝓞 E) E), ∑ i, v i * liftM M (emb i b) ∈ (algebraMap (𝓞 M) M).range := by
  intro b hb
  have hι : Nonempty ι := by
    rw [← Fintype.card_pos_iff, hcard]; exact Module.finrank_pos
  obtain ⟨i0⟩ := hι
  have hφ : ∀ y, φ₀ y ∈ M := fun y => by rw [← hres i0 y]; exact hM i0 _
  have hb' : ∀ a ∈ (I : Submodule (𝓞 E) E), Algebra.trace K E (b * a) ∈ (algebraMap (𝓞 K) K).range := by
    intro a ha
    have := (FractionalIdeal.mem_dual hI).mp hb a ha
    simpa [Algebra.traceForm_apply] using this
  refine Submodule.span_induction (p := fun v _ => ∑ i, v i * liftM M (emb i b) ∈ (algebraMap (𝓞 M) M).range) ?_ ?_ ?_ ?_ hv
  · rintro w ⟨a, ha, rfl⟩
    have : ∑ i, liftM M (emb i a) * liftM M (emb i b) = liftM M (φ₀ (Algebra.trace K E (a * b))) := by
      rw [← sum_emb_eq_trace K E φ₀ M ι emb hinj hres hcard hM]
      refine Finset.sum_congr rfl fun i _ => ?_
      apply Subtype.ext
      rw [IntermediateField.coe_mul, coe_lift_intermediate (hM i a), coe_lift_intermediate (hM i b), coe_lift_intermediate (hM i (a * b)), map_mul]
    simp only [this]
    obtain ⟨t, ht⟩ := hb' a ha
    apply lift_integral_mem_range M (hφ _)
    rw [mul_comm a b, ← ht]
    exact (t.isIntegral_coe).map φ₀.toIntAlgHom
  · simp
  · intro x y _ _ hx hy
    simp only [Pi.add_apply, add_mul, Finset.sum_add_distrib]
    exact add_mem hx hy
  · intro c x _ hx
    simp only [Pi.smul_apply, Algebra.smul_def, mul_assoc, ← Finset.mul_sum]
    exact mul_mem ⟨c, rfl⟩ hx

lemma fractional_ideal_span_top (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E]
    (I : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (hI : I ≠ 0) :
    Submodule.span K ((I : Submodule (𝓞 E) E) : Set E) = ⊤ := by
  have hne : (I : Submodule (𝓞 E) E) ≠ ⊥ := by
    intro h; apply hI; apply FractionalIdeal.coeToSubmodule_injective; simpa using h
  obtain ⟨a, haI, ha0⟩ := (Submodule.ne_bot_iff _).mp hne
  rw [eq_top_iff]
  intro x _
  obtain ⟨m, hm0, hmz⟩ := exists_integral_multiples ℤ ℚ ({x / a} : Finset E)
  have hw := hmz (x / a) (by simp)
  let w : 𝓞 E := ⟨m • (x / a), hw⟩
  have hwa : w • a ∈ (I : Submodule (𝓞 E) E) := Submodule.smul_mem _ w haI
  have hx : x = ((m : K)⁻¹) • (w • a) := by
    have hm : (m : E) ≠ 0 := by exact_mod_cast hm0
    rw [Algebra.smul_def, Algebra.smul_def]
    show x = algebraMap K E ((m : K)⁻¹) * ((m • (x / a)) * a)
    rw [map_inv₀, map_intCast, zsmul_eq_mul]
    field_simp
  rw [hx]
  exact Submodule.smul_mem _ _ (Submodule.subset_span hwa)

lemma fractional_ideal_dual_family (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E]
    (I : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) :
    ∃ (n : ℕ) (g : Fin n → E) (f : Fin n → ((I : Submodule (𝓞 E) E).restrictScalars (𝓞 K) →ₗ[𝓞 K] 𝓞 K)),
      (∀ j, g j ∈ (I : Submodule (𝓞 E) E)) ∧
      ∀ y : (I : Submodule (𝓞 E) E).restrictScalars (𝓞 K), (y : E) = ∑ j, f j y • g j := by
  set P := (I : Submodule (𝓞 E) E).restrictScalars (𝓞 K)
  have : Module.IsTorsionFree (𝓞 K) E := Module.IsTorsionFree.trans_faithfulSMul (𝓞 K) K E
  have : Module.IsTorsionFree (𝓞 K) P := inferInstance
  have hfg : P.FG := (FractionalIdeal.fg_of_isNoetherianRing le_rfl I).restrictScalars
  have : Module.Finite (𝓞 K) P := Module.Finite.iff_fg.mpr hfg
  have : Module.FinitePresentation (𝓞 K) P := Module.finitePresentation_of_finite (𝓞 K) P
  have : Module.Projective (𝓞 K) P := Module.Flat.projective_of_finitePresentation
  obtain ⟨n, F, G, -, -, hFG⟩ := Module.Finite.exists_comp_eq_id_of_projective (𝓞 K) P
  refine ⟨n, fun i => (F (Pi.single i 1) : E), fun i => (LinearMap.proj i).comp G,
    fun i => (F (Pi.single i 1)).2, fun y => ?_⟩
  have e1 : F (G y) = y := by
    have := congrArg (fun φ => φ y) hFG
    simpa using this
  have e2 : y = ∑ i, ((LinearMap.proj i).comp G) y • F (Pi.single i 1) := by
    conv_lhs => rw [← e1]
    rw [LinearMap.pi_apply_eq_sum_univ F (G y)]
    refine Finset.sum_congr rfl fun i _ => ?_
    simp only [LinearMap.coe_comp, Function.comp_apply, LinearMap.coe_proj, Function.eval]
    congr 2
    ext j
    simp [Pi.single_apply, eq_comm]
  conv_lhs => rw [e2]
  simp

lemma trace_dual_of_functional (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E]
    (P : Submodule (𝓞 K) E) {κ : Type} [Fintype κ] (e : Module.Basis κ K E) (he : ∀ l, e l ∈ P)
    (f : P →ₗ[𝓞 K] 𝓞 K) :
    ∃ b : E, ∀ y (hy : y ∈ P), Algebra.traceForm K E b y = algebraMap (𝓞 K) K (f ⟨y, hy⟩) := by
  let F : E →ₗ[K] K := ∑ l, algebraMap (𝓞 K) K (f ⟨e l, he l⟩) • e.coord l
  refine ⟨((Algebra.traceForm K E).toDual (traceForm_nondegenerate K E)).symm F, fun y hy => ?_⟩
  rw [← LinearMap.BilinForm.toDual_def (traceForm_nondegenerate K E), LinearEquiv.apply_symm_apply]
  obtain ⟨d, hd⟩ := IsLocalization.exist_integer_multiples_of_finset (nonZeroDivisors (𝓞 K))
    (Finset.univ.image (e.repr y))
  have hc : ∀ l, ∃ c : 𝓞 K, algebraMap (𝓞 K) K c = algebraMap (𝓞 K) K d * e.repr y l := by
    intro l
    obtain ⟨c, hc⟩ := hd (e.repr y l) (Finset.mem_image_of_mem _ (Finset.mem_univ l))
    exact ⟨c, by rw [hc]; exact Algebra.smul_def _ _⟩
  choose c hc using hc
  have hdy : (d : 𝓞 K) • (⟨y, hy⟩ : P) = ∑ l, c l • (⟨e l, he l⟩ : P) := by
    apply Subtype.ext
    simp only [SetLike.val_smul, Submodule.coe_sum]
    conv_lhs => rw [← e.sum_repr y]
    rw [Finset.smul_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [← algebraMap_smul K (c l), hc l, ← algebraMap_smul K (d : 𝓞 K), smul_smul]
  have hf := congrArg (fun z => algebraMap (𝓞 K) K (f z)) hdy

  simp only [map_smul, map_sum, smul_eq_mul, map_mul] at hf
  have hd0 : algebraMap (𝓞 K) K (d : 𝓞 K) ≠ 0 := by
    rw [Ne, ← map_zero (algebraMap (𝓞 K) K), (IsFractionRing.injective (𝓞 K) K).eq_iff]
    exact nonZeroDivisors.ne_zero d.2
  apply mul_left_cancel₀ hd0
  rw [hf]
  simp only [hc]
  rw [LinearMap.sum_apply, Finset.mul_sum]
  refine Finset.sum_congr rfl fun l _ => ?_
  simp only [LinearMap.smul_apply, Module.Basis.coord_apply, smul_eq_mul]
  ring

theorem mem_mmR_iff (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E]
    (φ₀ : K →+* ℂ) (M : IntermediateField ℚ ℂ) [NumberField M] (ι : Type) [Fintype ι] [DecidableEq ι]
    (emb : ι → E →+* ℂ) (hinj : Function.Injective emb)
    (hres : ∀ i (y : K), emb i (algebraMap K E y) = φ₀ y)
    (hcard : Fintype.card ι = Module.finrank K E) (hM : ∀ i y, emb i y ∈ M) (I : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (hI : I ≠ 0) (v : ι → M) :
    v ∈ mmR M emb I ↔
      ∀ b ∈ ((FractionalIdeal.dual (𝓞 K) K I : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) : Submodule (𝓞 E) E), ∑ i, v i * liftM M (emb i b) ∈ (algebraMap (𝓞 M) M).range := by
  refine ⟨mem_mmR_of K E φ₀ M ι emb hinj hres hcard hM I hI v, fun hv => ?_⟩
  obtain ⟨i0⟩ : Nonempty ι := by rw [← Fintype.card_pos_iff, hcard]; exact Module.finrank_pos
  have hφ : ∀ y, φ₀ y ∈ M := fun y => by rw [← hres i0 y]; exact hM i0 _
  let ψ : ι → E →+* M := fun i => (emb i).codRestrict M (hM i)
  let φM : K →+* M := φ₀.codRestrict M hφ
  have hψ : ∀ i y, liftM M (emb i y) = ψ i y := fun i y =>
    Subtype.ext (by rw [coe_lift_intermediate (hM i y)]; rfl)
  have hψK : ∀ i (t : K) (y : E), ψ i (t • y) = φM t * ψ i y := fun i t y => by
    rw [Algebra.smul_def, map_mul]; congr 1; exact Subtype.ext (hres i t)
  set P := (I : Submodule (𝓞 E) E).restrictScalars (𝓞 K)
  obtain ⟨s, hs, hspan, hli⟩ := exists_linearIndependent K ((I : Submodule (𝓞 E) E) : Set E)
  let e : Module.Basis s K E := Module.Basis.mk hli (by rw [Subtype.range_coe, hspan, fractional_ideal_span_top K E I hI])
  letI : Fintype s := @Fintype.ofFinite _ (Module.Finite.finite_basis e)
  have he : ∀ l, e l ∈ P := fun l => by rw [Module.Basis.mk_apply]; exact hs l.2
  obtain ⟨n, g, f, hg, hfg⟩ := fractional_ideal_dual_family K E I
  choose b hb using fun j => trace_dual_of_functional K E P e he (f j)
  have hbd : ∀ j, b j ∈ ((FractionalIdeal.dual (𝓞 K) K I : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) :
      Submodule (𝓞 E) E) :=
    fun j => (FractionalIdeal.mem_dual hI).mpr fun a ha => ⟨f j ⟨a, ha⟩, (hb j a ha).symm⟩
  have hid : ∀ y (hy : y ∈ P), y = ∑ j, Algebra.traceForm K E (b j) y • g j := by
    intro y hy
    conv_lhs => rw [show y = ((⟨y, hy⟩ : P) : E) from rfl, hfg ⟨y, hy⟩]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [hb j y hy, algebraMap_smul]
  set e' := (Algebra.traceForm K E).dualBasis (traceForm_nondegenerate K E) e with he'
  have hbexp : ∀ j, b j = ∑ l, Algebra.traceForm K E (b j) (e l) • e' l := fun j => by
    conv_lhs => rw [← e'.sum_repr (b j)]
    simp [e']
  have key : ∀ i k, ∑ j, ψ i (b j) * ψ k (g j) = if k = i then 1 else 0 := by
    intro i k
    have hdb := sum_emb_dualBasis K E φ₀ M ι emb hinj hres hcard hM e k i
    simp only [hψ, ← he'] at hdb
    rw [← hdb]
    have h1 : ∀ l, ψ k (e l) = ∑ j, φM (Algebra.traceForm K E (b j) (e l)) * ψ k (g j) := fun l => by
      conv_lhs => rw [hid (e l) (he l)]

      rw [map_sum]; simp only [hψK]
    have h2 : ∀ j, ψ i (b j) = ∑ l, φM (Algebra.traceForm K E (b j) (e l)) * ψ i (e' l) := fun j => by
      conv_lhs => rw [hbexp j]

      rw [map_sum]; simp only [hψK]
    simp only [h1, h2, Finset.sum_mul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun j _ => ?_
    ring
  choose c hc using fun j => RingHom.mem_range.mp (hv (b j) (hbd j))
  have hv' : v = ∑ j, c j • (fun i => liftM M (emb i (g j))) := by
    funext k
    rw [Finset.sum_apply]
    simp only [Pi.smul_apply, Algebra.smul_def, hc, hψ, Finset.sum_mul]
    rw [Finset.sum_comm]
    simp only [mul_assoc, ← Finset.mul_sum, key]
    simp
  rw [hv']
  exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨g j, hg j, rfl⟩)

end Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.FractionalIdealDualFamily =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.LiftMOneExt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.LiftMOneExt", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.LineR\npublic import Mathlib.RingTheory.FractionalIdeal.Inverse\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5

open NumberField Classical
open scoped Pointwise

theorem liftM_val_ext {M : IntermediateField ℚ ℂ} {x : ℂ} (h : x ∈ M) : ((liftM M x : M) : ℂ) = x := by
  simp [liftM, h]

theorem liftM_mul_ext {E : Type} [Field E] (M : IntermediateField ℚ ℂ) (σ : E →+* ℂ) (hσ : ∀ y, σ y ∈ M)
    (a b : E) : liftM M (σ (a * b)) = liftM M (σ a) * liftM M (σ b) := by
  apply Subtype.ext
  rw [liftM_val_ext (hσ (a * b)), IntermediateField.coe_mul, liftM_val_ext (hσ a),
    liftM_val_ext (hσ b), map_mul]

theorem liftM_add_ext {E : Type} [Field E] (M : IntermediateField ℚ ℂ) (σ : E →+* ℂ) (hσ : ∀ y, σ y ∈ M)
    (a b : E) : liftM M (σ (a + b)) = liftM M (σ a) + liftM M (σ b) := by
  apply Subtype.ext
  rw [liftM_val_ext (hσ (a + b)), IntermediateField.coe_add, liftM_val_ext (hσ a),
    liftM_val_ext (hσ b), map_add]

theorem liftM_one_ext {E : Type} [Field E] (M : IntermediateField ℚ ℂ) (σ : E →+* ℂ) :
    liftM M (σ 1) = 1 := by
  apply Subtype.ext
  rw [map_one, liftM_val_ext (one_mem M), IntermediateField.coe_one]

theorem liftM_int_ext {E : Type} [Field E] [NumberField E] (M : IntermediateField ℚ ℂ) [NumberField M]
    (σ : E →+* ℂ) (hσ : ∀ y, σ y ∈ M) (e : 𝓞 E) :
    liftM M (σ (algebraMap (𝓞 E) E e)) ∈ (algebraMap (𝓞 M) M).range := by
  have h1 : IsIntegral ℤ (σ (algebraMap (𝓞 E) E e)) :=
    (RingOfIntegers.isIntegral_coe e).map σ.toIntAlgHom
  have hx : IsIntegral ℤ (liftM M (σ (algebraMap (𝓞 E) E e))) := by
    rw [← isIntegral_algHom_iff (algebraMap M ℂ).toIntAlgHom (algebraMap M ℂ).injective]
    change IsIntegral ℤ ((liftM M (σ (algebraMap (𝓞 E) E e)) : M) : ℂ)
    rwa [liftM_val_ext (hσ _)]
  exact ⟨⟨_, hx⟩, rfl⟩

theorem mem_imI_iff {E : Type} [Field E] [NumberField E] (M : IntermediateField ℚ ℂ) [NumberField M]
    (σ : E →+* ℂ) (hσ : ∀ y, σ y ∈ M) (J : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (hJ : J ≠ 0) (x : M) :
    x ∈ imI M σ J ↔
      ∀ b ∈ ((J⁻¹ : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) : Submodule (𝓞 E) E), x * liftM M (σ b) ∈ (algebraMap (𝓞 M) M).range := by
  have hJJ : (1 : E) ∈ (J : Submodule (𝓞 E) E) * ((J⁻¹ : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) :
      Submodule (𝓞 E) E) := by
    rw [← FractionalIdeal.coe_mul, mul_inv_cancel₀ hJ, FractionalIdeal.coe_one]
    exact Submodule.mem_one.2 ⟨1, map_one _⟩
  have hint : ∀ z ∈ (J : Submodule (𝓞 E) E) * ((J⁻¹ : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) :
      Submodule (𝓞 E) E), liftM M (σ z) ∈ (algebraMap (𝓞 M) M).range := by
    intro z hz
    rw [← FractionalIdeal.coe_mul, mul_inv_cancel₀ hJ, FractionalIdeal.coe_one] at hz
    obtain ⟨y, rfl⟩ := Submodule.mem_one.1 hz
    exact liftM_int_ext M σ hσ y
  constructor
  · intro hx
    induction hx using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨a, ha, rfl⟩ := hy
      intro b hb
      rw [← liftM_mul_ext M σ hσ]
      exact hint _ (Submodule.mul_mem_mul ha hb)
    | zero =>
      intro b _
      rw [zero_mul]
      exact zero_mem _
    | add y z _ _ hy hz =>
      intro b hb
      rw [add_mul]
      exact add_mem (hy b hb) (hz b hb)
    | smul r y _ hy =>
      intro b hb
      rw [smul_mul_assoc, Algebra.smul_def]
      exact mul_mem (RingHom.mem_range_self _ r) (hy b hb)
  · intro hx
    have key : ∀ z ∈ (J : Submodule (𝓞 E) E) * ((J⁻¹ : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) :
        Submodule (𝓞 E) E), x * liftM M (σ z) ∈ imI M σ J := by
      intro z hz
      induction hz using Submodule.mul_induction_on' with
      | mem_mul_mem a ha b hb =>
        obtain ⟨r, hr⟩ := hx b hb
        rw [liftM_mul_ext M σ hσ, mul_comm (liftM M (σ a)), ← mul_assoc, ← hr, ← Algebra.smul_def]
        exact Submodule.smul_mem _ r (Submodule.subset_span ⟨a, ha, rfl⟩)
      | add y _ z _ hy hz =>
        rw [liftM_add_ext M σ hσ, mul_add]
        exact add_mem hy hz
    have := key 1 hJJ
    rwa [liftM_one_ext, mul_one] at this

end Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.LiftMOneExt =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.MapMulLeftDenSpanImageEqMapNum =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.MapMulLeftDenSpanImageEqMapNum", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.LineR\npublic import Mathlib.RingTheory.FractionalIdeal.Norm\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.Ideal.Norm.RelNorm\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.NumberTheory.NumberField.Norm\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5

open NumberField Classical
open scoped Pointwise

private lemma algebraMap_ringOfIntegers_tower {E F : Type} [Field E] [NumberField E] [Field F] [NumberField F] [Algebra E F]
    (x : 𝓞 E) : algebraMap (𝓞 F) F (algebraMap (𝓞 E) (𝓞 F) x) = algebraMap E F (algebraMap (𝓞 E) E x) := rfl

theorem map_mulLeft_den_span_image_eq_map_num {E F : Type} [Field E] [NumberField E] [Field F] [NumberField F] [Algebra E F]
    (J : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) :
    Submodule.map (LinearMap.mulLeft (𝓞 F) ((algebraMap (𝓞 E) (𝓞 F) (J.den : 𝓞 E) : 𝓞 F) : F))
        (Submodule.span (𝓞 F) (algebraMap E F '' (J : Set E))) =
      Submodule.map (Algebra.linearMap (𝓞 F) F) (J.num.map (algebraMap (𝓞 E) (𝓞 F))) := by
  have hden := FractionalIdeal.den_mul_self_eq_num J
  rw [Submodule.map_span, Ideal.map, Ideal.span, Submodule.map_span]
  congr 1
  ext y
  constructor
  · rintro ⟨_, ⟨j, hj, rfl⟩, rfl⟩
    have h1 : J.den • j ∈ J.den • (J : Submodule (𝓞 E) E) :=
      Submodule.smul_mem_pointwise_smul j _ _ hj
    rw [hden] at h1
    obtain ⟨n, hn, hnj⟩ := Submodule.mem_map.mp h1
    refine ⟨algebraMap (𝓞 E) (𝓞 F) n, ⟨n, hn, rfl⟩, ?_⟩
    show algebraMap (𝓞 F) F (algebraMap (𝓞 E) (𝓞 F) n) =
      algebraMap (𝓞 F) F (algebraMap (𝓞 E) (𝓞 F) (J.den : 𝓞 E)) * algebraMap E F j
    rw [algebraMap_ringOfIntegers_tower, algebraMap_ringOfIntegers_tower, ← map_mul]
    congr 1
  · rintro ⟨_, ⟨n, hn, rfl⟩, rfl⟩
    have h1 : algebraMap (𝓞 E) E n ∈ Submodule.map (Algebra.linearMap (𝓞 E) E) J.num :=
      Submodule.mem_map_of_mem hn
    rw [← hden] at h1
    obtain ⟨j, hj, hjn⟩ := (Submodule.mem_smul_pointwise_iff_exists _ _ _).mp h1
    refine ⟨algebraMap E F j, ⟨j, hj, rfl⟩, ?_⟩
    show algebraMap (𝓞 F) F (algebraMap (𝓞 E) (𝓞 F) (J.den : 𝓞 E)) * algebraMap E F j =
      algebraMap (𝓞 F) F (algebraMap (𝓞 E) (𝓞 F) n)
    rw [algebraMap_ringOfIntegers_tower, algebraMap_ringOfIntegers_tower, ← map_mul, ← Algebra.smul_def]
    exact congrArg (algebraMap E F) hjn

theorem index_image_ideal {E F : Type} [Field E] [NumberField E] [Field F] [NumberField F] [Algebra E F]
    (J : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (s : F)
    (hs : s ∈ Submodule.span (𝓞 F) (algebraMap E F '' (J : Set E))) :
    ((((Submodule.span (𝓞 F) {s}).toAddSubgroup.addSubgroupOf
        (Submodule.span (𝓞 F) (algebraMap E F '' (J : Set E))).toAddSubgroup).index : ℕ) : ℚ) *
        (Ideal.absNorm J.num : ℚ) ^ Module.finrank E F =
      |Algebra.norm ℚ s| * |Algebra.norm ℚ ((J.den : 𝓞 E) : E)| ^ Module.finrank E F := by
  set A := Submodule.span (𝓞 F) (algebraMap E F '' (J : Set E)) with hA
  set c : 𝓞 F := algebraMap (𝓞 E) (𝓞 F) (J.den : 𝓞 E) with hcdef
  have hc : (c : F) = algebraMap E F ((J.den : 𝓞 E) : E) := rfl
  have hden0 : ((J.den : 𝓞 E) : E) ≠ 0 := by
    have := nonZeroDivisors.coe_ne_zero J.den
    exact_mod_cast this
  have hc0 : (c : F) ≠ 0 := by rw [hc]; exact (map_ne_zero _).mpr hden0
  set f := LinearMap.mulLeft (𝓞 F) (c : F) with hf
  have hfinj : Function.Injective f := fun x y h => mul_left_cancel₀ hc0 h
  set I2 : Ideal (𝓞 F) := J.num.map (algebraMap (𝓞 E) (𝓞 F)) with hI2
  have hmapA : Submodule.map f A = Submodule.map (Algebra.linearMap (𝓞 F) F) I2 := map_mulLeft_den_span_image_eq_map_num J
  have hcs : (c : F) * s ∈ Submodule.map (Algebra.linearMap (𝓞 F) F) I2 := by
    rw [← hmapA]; exact ⟨s, hs, rfl⟩
  obtain ⟨t, ht, hts⟩ := hcs
  simp only [Algebra.linearMap_apply] at hts
  have hmaps : Submodule.map f (Submodule.span (𝓞 F) {s}) =
      Submodule.map (Algebra.linearMap (𝓞 F) F) (Ideal.span {t}) := by
    rw [Ideal.span, Submodule.map_span, Submodule.map_span, Set.image_singleton, Set.image_singleton]
    simp only [Algebra.linearMap_apply, hts]
    rfl
  have hginj : Function.Injective (Algebra.linearMap (𝓞 F) F) := RingOfIntegers.coe_injective
  have hrel : (((Submodule.span (𝓞 F) {s}).toAddSubgroup.addSubgroupOf A.toAddSubgroup).index) =
      (Ideal.span {t}).toAddSubgroup.relIndex I2.toAddSubgroup := by
    change (Submodule.span (𝓞 F) {s}).toAddSubgroup.relIndex A.toAddSubgroup = _
    have h1 := AddSubgroup.relIndex_map_map_of_injective (f := (f : F →+ F))
      (Submodule.span (𝓞 F) {s}).toAddSubgroup A.toAddSubgroup hfinj
    rw [← h1, ← Submodule.map_toAddSubgroup, ← Submodule.map_toAddSubgroup, hmaps, hmapA,
      Submodule.map_toAddSubgroup, Submodule.map_toAddSubgroup]
    exact AddSubgroup.relIndex_map_map_of_injective
      (f := ((Algebra.linearMap (𝓞 F) F) : 𝓞 F →+ F)) _ _ hginj
  have hle : (Ideal.span {t}).toAddSubgroup ≤ I2.toAddSubgroup := by
    intro x hx
    exact (Ideal.span_singleton_le_iff_mem _).mpr ht hx
  have hmul := AddSubgroup.relIndex_mul_index hle
  rw [← Ideal.absNorm_eq_index, ← Ideal.absNorm_eq_index, Ideal.absNorm_span_singleton, hI2,
    Ideal.absNorm_algebraMap, ← IsFractionRing.finrank_eq (𝓞 E) E (𝓞 F) F] at hmul
  rw [hrel]
  have hnt : ((Algebra.norm ℤ t : ℤ) : ℚ) = Algebra.norm ℚ s * (Algebra.norm ℚ ((J.den : 𝓞 E) : E)) ^ Module.finrank E F := by
    rw [Algebra.coe_norm_int, show ((t : F)) = (c : F) * s from hts, map_mul, hc, mul_comm]
    congr 1
    rw [← Algebra.norm_norm (S := E), Algebra.norm_algebraMap, map_pow]
  have hq := congrArg (fun n : ℕ => (n : ℚ)) hmul
  simp only [Nat.cast_mul, Nat.cast_pow] at hq
  rw [hq, Nat.cast_natAbs, Int.cast_abs, hnt, abs_mul, abs_pow]

theorem index_imI_ext {E F : Type} [Field E] [NumberField E] [Field F] [NumberField F] [Algebra E F]
    (J : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (s : F)
    (hs : s ∈ Submodule.span (𝓞 F) (algebraMap E F '' (J : Set E))) :
    ((((Submodule.span (𝓞 F) {s}).toAddSubgroup.addSubgroupOf
        (Submodule.span (𝓞 F) (algebraMap E F '' (J : Set E))).toAddSubgroup).index : ℕ) : ℚ) ^
        Module.finrank ℚ E * (FractionalIdeal.absNorm J : ℚ) ^ Module.finrank ℚ F =
      |Algebra.norm ℚ s| ^ Module.finrank ℚ E := by
  have haux := index_image_ideal J s hs
  have hJ : (FractionalIdeal.absNorm J : ℚ) =
      (Ideal.absNorm J.num : ℚ) / |Algebra.norm ℚ ((J.den : 𝓞 E) : E)| := by
    rw [FractionalIdeal.absNorm_eq, Int.cast_abs, Algebra.coe_norm_int]
  have hD : |Algebra.norm ℚ ((J.den : 𝓞 E) : E)| ≠ 0 := by
    refine abs_ne_zero.mpr (Algebra.norm_ne_zero_iff.mpr ?_)
    exact (map_ne_zero_iff _ (IsFractionRing.injective (𝓞 E) E)).mpr (nonZeroDivisors.coe_ne_zero J.den)
  have hf : Module.finrank ℚ F = Module.finrank ℚ E * Module.finrank E F :=
    (Module.finrank_mul_finrank ℚ E F).symm
  rw [hJ, hf, div_pow, ← mul_div_assoc, div_eq_iff (pow_ne_zero _ hD),
    mul_comm (Module.finrank ℚ E) (Module.finrank E F), pow_mul, pow_mul, ← mul_pow, ← mul_pow, haux]

theorem index_imI {E : Type} [Field E] [NumberField E] (M : IntermediateField ℚ ℂ) [NumberField M]
    (σ : E →+* ℂ) (hσ : ∀ y, σ y ∈ M) (J : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (hJ : J ≠ 0) (s : M) (hs0 : s ≠ 0)
    (hs : s ∈ imI M σ J) :
    ((((Submodule.span (𝓞 M) {s}).toAddSubgroup.addSubgroupOf
        (imI M σ J).toAddSubgroup).index : ℕ) : ℝ) ^ Module.finrank ℚ E *
      ((FractionalIdeal.absNorm J : ℚ) : ℝ) ^ Module.finrank ℚ M =
      |((Algebra.norm ℚ s : ℚ) : ℝ)| ^ Module.finrank ℚ E := by
  letI : Algebra E M := (σ.codRestrict M hσ).toAlgebra
  have hlift : ∀ a, algebraMap E M a = liftM M (σ a) := fun a =>
    Subtype.ext (by rw [show ((liftM M (σ a) : M) : ℂ) = σ a by simp [liftM, hσ a]]; rfl)
  have hI : imI M σ J = Submodule.span (𝓞 M) (algebraMap E M '' (J : Set E)) := by
    unfold imI
    congr 1
    ext y
    constructor
    · rintro ⟨a, ha, rfl⟩
      exact ⟨a, ha, hlift a⟩
    · rintro ⟨a, ha, rfl⟩
      exact ⟨a, ha, hlift a⟩
  rw [hI] at hs ⊢
  have h := index_imI_ext (E := E) (F := M) J s hs
  exact_mod_cast h

end Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.MapMulLeftDenSpanImageEqMapNum =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.CoeIdealDifferentNeZero =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.CoeIdealDifferentNeZero", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.LineR\npublic import Mathlib.RingTheory.DedekindDomain.Different\npublic import Mathlib.RingTheory.FractionalIdeal.Norm\npublic import Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.FractionalIdealDualFamily\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.LiftMOneExt\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.MapMulLeftDenSpanImageEqMapNum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5

open NumberField Classical
open scoped Pointwise

theorem dual_eq_inv_mul_different (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E]
    (I : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) :
    (FractionalIdeal.dual (𝓞 K) K I : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) =
      (I * ((differentIdeal (𝓞 K) (𝓞 E) : Ideal (𝓞 E)) : FractionalIdeal (nonZeroDivisors (𝓞 E)) E))⁻¹ := by
  rw [coeIdeal_differentIdeal (𝓞 K) K E (𝓞 E), FractionalIdeal.dual_eq_mul_inv (𝓞 K) K I, mul_inv,
    inv_inv, mul_comm]

theorem coeIdeal_different_ne_zero (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E] :
    ((differentIdeal (𝓞 K) (𝓞 E) : Ideal (𝓞 E)) : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) ≠ 0 := by
  rw [coeIdeal_differentIdeal (𝓞 K) K E (𝓞 E)]
  exact inv_ne_zero (FractionalIdeal.dual_ne_zero (𝓞 K) K one_ne_zero)

theorem lineR_eq (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E]
    (φ₀ : K →+* ℂ) (M : IntermediateField ℚ ℂ) [NumberField M] (ι : Type) [Fintype ι] [DecidableEq ι]
    (emb : ι → E →+* ℂ) (hinj : Function.Injective emb)
    (hres : ∀ i (y : K), emb i (algebraMap K E y) = φ₀ y)
    (hcard : Fintype.card ι = Module.finrank K E) (hM : ∀ i y, emb i y ∈ M) (I : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (i : ι) :
    lineR M emb I i = imI M (emb i) (I * ((differentIdeal (𝓞 K) (𝓞 E) : Ideal (𝓞 E)) : FractionalIdeal (nonZeroDivisors (𝓞 E)) E)) := by
  have h0 : liftM M 0 = 0 := by
    rw [liftM, dite_eq_left (zero_mem M)]
    rfl
  by_cases hI : I = 0
  · subst hI
    rw [zero_mul]
    have hm : mmR M emb (0 : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) = ⊥ := by
      rw [mmR, Submodule.span_eq_bot]
      rintro v ⟨a, ha, rfl⟩
      have ha0 : a = 0 := by simpa using ha
      subst ha0
      funext k
      simp [h0]
    have hR : imI M (emb i) (0 : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) = ⊥ := by
      rw [imI, Submodule.span_eq_bot]
      rintro y ⟨a, ha, rfl⟩
      have ha0 : a = 0 := by simpa using ha
      subst ha0
      simp [h0]
    rw [hR, lineR, hm]
    ext x
    simp
  · have hJ : I * ((differentIdeal (𝓞 K) (𝓞 E) : Ideal (𝓞 E)) :
        FractionalIdeal (nonZeroDivisors (𝓞 E)) E) ≠ 0 :=
      mul_ne_zero hI (coeIdeal_different_ne_zero K E)
    ext x
    rw [lineR, Submodule.mem_comap, mem_mmR_iff K E φ₀ M ι emb hinj hres hcard hM I hI,
      mem_imI_iff M (emb i) (hM i) _ hJ, ← dual_eq_inv_mul_different K E I]
    refine forall₂_congr fun b _ => ?_
    simp [Pi.single_apply]

theorem index_lineR (K E : Type) [Field K] [Field E] [NumberField K] [NumberField E] [Algebra K E]
    (φ₀ : K →+* ℂ) (M : IntermediateField ℚ ℂ) [NumberField M] (ι : Type) [Fintype ι] [DecidableEq ι]
    (emb : ι → E →+* ℂ) (hinj : Function.Injective emb)
    (hres : ∀ i (y : K), emb i (algebraMap K E y) = φ₀ y)
    (hcard : Fintype.card ι = Module.finrank K E) (hM : ∀ i y, emb i y ∈ M) (I : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (hI : I ≠ 0) (i : ι) (s : M) (hs0 : s ≠ 0)
    (hs : s ∈ lineR M emb I i) :
    ((((Submodule.span (𝓞 M) {s}).toAddSubgroup.addSubgroupOf
        (lineR M emb I i).toAddSubgroup).index : ℕ) : ℝ) ^ Module.finrank ℚ E *
      ((FractionalIdeal.absNorm (I * ((differentIdeal (𝓞 K) (𝓞 E) : Ideal (𝓞 E)) : FractionalIdeal (nonZeroDivisors (𝓞 E)) E)) : ℚ) : ℝ) ^
        Module.finrank ℚ M =
      |((Algebra.norm ℚ s : ℚ) : ℝ)| ^ Module.finrank ℚ E := by
  have hJ : I * ((differentIdeal (𝓞 K) (𝓞 E) : Ideal (𝓞 E)) :
      FractionalIdeal (nonZeroDivisors (𝓞 E)) E) ≠ 0 :=
    mul_ne_zero hI (coeIdeal_different_ne_zero K E)
  have heq := lineR_eq K E φ₀ M ι emb hinj hres hcard hM I i
  rw [heq] at hs ⊢
  exact index_imI M (emb i) (hM i) _ hJ s hs0 hs

end Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.CoeIdealDifferentNeZero =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.NormSum =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.NormSum", "h": "module\n\npublic import Mathlib.Analysis.SpecialFunctions.Log.Basic\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.Statement\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.IsDiscriminantTwelfthRootOfIdealLattice\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5

open NumberField Classical
open scoped Pointwise
open Formalism.BasicNotions (D7)
open Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity (IsLat jL Uniformization CMTransitive LinkPer KroneckerLimit DedekindFactor)
open Formalism.MainNotions.TaylorLogMetric (lamConj lamOf embT meanLogOm DataIn tor0 IsCurveIdeal IsDiscriminantTwelfthRootOfIdealLattice per22 logOmVal)

theorem br_sum_log_norm_sq (M : IntermediateField ℚ ℂ) [NumberField M] (s : M) (hs : s ≠ 0) :
    ∑ ρ : M →ₐ[ℚ] ℂ, Real.log (‖ρ s‖ ^ 2) = 2 * Real.log |((Algebra.norm ℚ s : ℚ) : ℝ)| := by
  have hρ : ∀ ρ : M →ₐ[ℚ] ℂ, ρ s ≠ 0 := fun ρ => (map_ne_zero ρ).2 hs
  rw [← Real.log_prod (fun ρ _ => by have := hρ ρ; positivity)]
  have hN := Algebra.norm_eq_prod_embeddings ℚ ℂ s
  have h1 : ∏ ρ : M →ₐ[ℚ] ℂ, ‖ρ s‖ ^ 2 = |((Algebra.norm ℚ s : ℚ) : ℝ)| ^ 2 := by
    rw [Finset.prod_pow, ← norm_prod]
    convert congrArg (fun z : ℂ => ‖z‖ ^ 2) hN.symm using 2
    simp
  rw [h1, Real.log_pow]
  push_cast; ring

end Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.NormSum =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.Period =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.Period", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.LeadingConstantNeZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.LineR\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.DifferentIdeal.CoeIdealDifferentNeZero\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.NormSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5

open NumberField Classical
open scoped Pointwise
open Formalism.BasicNotions (D7)
open Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity (IsLat jL Uniformization CMTransitive LinkPer KroneckerLimit DedekindFactor)
open Formalism.MainNotions.TaylorLogMetric (lamConj lamOf embT meanLogOm DataIn tor0 IsCurveIdeal IsDiscriminantTwelfthRootOfIdealLattice per22 logOmVal)

theorem br_ellT_eq (D : D7) (M : IntermediateField ℚ ℂ) [NumberField M] (τ : D.what₂.Tau) :
    Formalism.MainNotions.TaylorLogMetric.ellT D M τ = lineR M (embT D) D.host.AA0 τ := rfl

theorem br_brN_eq (D : D7) : brN D = ((FractionalIdeal.absNorm (D.host.AA0 *
    ((differentIdeal (𝓞 D.host.K) (𝓞 D.host.E) : Ideal (𝓞 D.host.E)) :
      FractionalIdeal (nonZeroDivisors (𝓞 D.host.E)) D.host.E)) : ℚ) : ℝ) := rfl

theorem br_exists_ellT (D : D7) (M : IntermediateField ℚ ℂ) [NumberField M]
    (hemb : ∀ τ x, embT D τ x ∈ M) (τ : D.what₂.Tau) :
    ∃ s : M, s ≠ 0 ∧ s ∈ Formalism.MainNotions.TaylorLogMetric.ellT D M τ := by
  rw [br_ellT_eq, lineR_eq D.host.K D.host.E (brPhi D) M D.what₂.Tau (embT D) (br_embT_injective D)
    (br_embT_res D) (br_card_tau D) hemb]
  have hJ : D.host.AA0 * ((differentIdeal (𝓞 D.host.K) (𝓞 D.host.E) : Ideal (𝓞 D.host.E)) :
      FractionalIdeal (nonZeroDivisors (𝓞 D.host.E)) D.host.E) ≠ 0 :=
    mul_ne_zero (leading_constant_ne_zero D) (coeIdeal_different_ne_zero _ _)
  obtain ⟨a, ha, ha0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot
    (FractionalIdeal.coeToSubmodule_ne_bot.mpr hJ)
  refine ⟨liftM M (embT D τ a), ?_, Submodule.subset_span ⟨a, ha, rfl⟩⟩
  have hm := hemb τ a
  unfold liftM
  rw [dite_eq_left hm]
  intro h
  have : embT D τ a = 0 := congrArg Subtype.val h
  exact ha0 ((map_eq_zero (embT D τ)).mp this)

theorem br_meanLogOm_eq (D : D7) (Λ : AddSubgroup ℂ) (M : IntermediateField ℚ ℂ) [NumberField M]
    (hemb : ∀ τ x, embT D τ x ∈ M) (τ : D.what₂.Tau)
    (hpos : ∀ ρ : M →ₐ[ℚ] ℂ, 0 < area (lamConj M ρ Λ)) :
    meanLogOm D Λ M τ =
      -(2 / (Module.finrank ℚ D.host.E : ℝ)) * Real.log (brN D) +
        (∑ ρ : M →ₐ[ℚ] ℂ, Real.log (area (lamConj M ρ Λ) / Real.pi)) /
          (Module.finrank ℚ M : ℝ) := by
  have hex := br_exists_ellT D M hemb τ
  unfold meanLogOm
  dsimp only
  set s : M := Classical.epsilon (fun s : M => s ≠ 0 ∧ s ∈ Formalism.MainNotions.TaylorLogMetric.ellT D M τ) with hsdef
  have hs : s ≠ 0 ∧ s ∈ Formalism.MainNotions.TaylorLogMetric.ellT D M τ := Classical.epsilon_spec hex
  rw [br_ellT_eq] at hs ⊢
  have hidx := index_lineR D.host.K D.host.E (brPhi D) M D.what₂.Tau (embT D) (br_embT_injective D)
    (br_embT_res D) (br_card_tau D) hemb D.host.AA0 (leading_constant_ne_zero D) τ s hs.1 hs.2
  rw [← br_brN_eq] at hidx
  set x : ℝ := ((((Submodule.span (𝓞 M) {s}).toAddSubgroup.addSubgroupOf
        (lineR M (embT D) D.host.AA0 τ).toAddSubgroup).index : ℕ) : ℝ) with hxdef
  set e : ℕ := Module.finrank ℚ D.host.E with he
  set m : ℕ := Module.finrank ℚ M with hm
  set ns : ℝ := |((Algebra.norm ℚ s : ℚ) : ℝ)| with hns
  have hns0 : ns ≠ 0 := by
    rw [hns, abs_ne_zero, Rat.cast_ne_zero]
    exact (Algebra.norm_ne_zero_iff).mpr hs.1
  have hrhs : ns ^ e ≠ 0 := pow_ne_zero _ hns0
  have hl : x ^ e * brN D ^ m ≠ 0 := hidx ▸ hrhs
  have hx0 : x ^ e ≠ 0 := left_ne_zero_of_mul hl
  have hN0 : brN D ^ m ≠ 0 := right_ne_zero_of_mul hl
  have hlog : (e : ℝ) * Real.log x + (m : ℝ) * Real.log (brN D) = (e : ℝ) * Real.log ns := by
    have := congrArg Real.log hidx
    rw [Real.log_mul hx0 hN0, Real.log_pow, Real.log_pow, Real.log_pow] at this
    exact this
  have he0 : (e : ℝ) ≠ 0 := by
    rw [he]; exact_mod_cast (Module.finrank_pos : 0 < Module.finrank ℚ D.host.E).ne'
  have hm0 : (m : ℝ) ≠ 0 := by
    rw [hm]; exact_mod_cast (Module.finrank_pos : 0 < Module.finrank ℚ M).ne'
  have hterm : ∀ ρ : M →ₐ[ℚ] ℂ, Formalism.MainNotions.TaylorLogMetric.logMet M Λ ρ s =
      Real.log Real.pi + Real.log (‖ρ s‖ ^ 2) - Real.log (area (lamConj M ρ Λ)) := by
    intro ρ
    unfold Formalism.MainNotions.TaylorLogMetric.logMet
    rw [br_area_eq]
    have hρ : ‖ρ s‖ ^ 2 ≠ 0 := pow_ne_zero _ (norm_ne_zero_iff.mpr ((map_ne_zero ρ).mpr hs.1))
    rw [Real.log_div (mul_ne_zero Real.pi_ne_zero hρ) (hpos ρ).ne', Real.log_mul Real.pi_ne_zero hρ]
  have hsum : ∑ ρ : M →ₐ[ℚ] ℂ, Formalism.MainNotions.TaylorLogMetric.logMet M Λ ρ s =
      (m : ℝ) * Real.log Real.pi + 2 * Real.log ns -
        ∑ ρ : M →ₐ[ℚ] ℂ, Real.log (area (lamConj M ρ Λ)) := by
    rw [Finset.sum_congr rfl (fun ρ _ => hterm ρ), Finset.sum_sub_distrib, Finset.sum_add_distrib,
      br_sum_log_norm_sq M s hs.1, Finset.sum_const, Finset.card_univ, AlgHom.card, nsmul_eq_mul]
  have hsum2 : ∑ ρ : M →ₐ[ℚ] ℂ, Real.log (area (lamConj M ρ Λ) / Real.pi) =
      ∑ ρ : M →ₐ[ℚ] ℂ, Real.log (area (lamConj M ρ Λ)) - (m : ℝ) * Real.log Real.pi := by
    rw [Finset.sum_congr rfl (fun ρ _ => Real.log_div (hpos ρ).ne' Real.pi_ne_zero),
      Finset.sum_sub_distrib, Finset.sum_const, Finset.card_univ, AlgHom.card, nsmul_eq_mul]
  rw [hsum, hsum2]
  field_simp
  linear_combination 2 * hlog

end Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.Period =====
