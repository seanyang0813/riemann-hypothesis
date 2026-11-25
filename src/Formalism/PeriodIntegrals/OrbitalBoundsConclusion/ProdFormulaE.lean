module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ResCharIff
public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Formalism.PeriodIntegrals.ProdFormulaE
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.TrBase
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.BasisEApply
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.DenEqOneOfForallPadicNormLeOne
public import Mathlib.NumberTheory.NumberField.ProductFormula
public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.NumberTheory.Padics.PadicNumbers
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation
public import Mathlib.NumberTheory.Padics.RingHoms
public import Mathlib.Topology.Algebra.Module.FiniteDimension
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.TrSumOf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.NormSt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.HaarAlg
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.NormTraceLeOne, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ProdFormulaEOf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ResChar, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ExistsEqEllMul, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.InjectiveOfLinearIndependent, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.T2SpaceOfIsValuativeTopology, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.SumLocalTrace, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.Assemble, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ProdFormulaE

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.NormTraceLeOne =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.NormTraceLeOne", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ResCharIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.ProdFormulaE.TrIntP

theorem norm_le_one_of_isIntegral {ℓ : ℕ} [Fact ℓ.Prime] {t : ℚ_[ℓ]} (ht : IsIntegral ℤ t) :
    ‖t‖ ≤ 1 := by
  have ht' : IsIntegral ℤ_[ℓ] t := ht.tower_top
  obtain ⟨y, hy⟩ := IsIntegrallyClosed.isIntegral_iff.1 ht'
  rw [← hy]
  exact y.norm_le_one

theorem norm_trace_le_one : St.TrInt := by
  intro ℓ _ K _ _ _ w hw
  exact norm_le_one_of_isIntegral (Algebra.isIntegral_trace hw)

end PI.ProdFormulaE.TrIntP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.NormTraceLeOne =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ProdFormulaEOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ProdFormulaEOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.ProdFormulaE\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ResCharIff\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.TrBase\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.BasisEApply\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.DenEqOneOfForallPadicNormLeOne\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.NumberTheory.NumberField.ProductFormula\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open IsDedekindDomain NumberField MeasureTheory ValuativeRel Formalism.MainNotions.S.Loc

namespace PI.ProdFormulaE.Top

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {sig : E →ₐ[F] E}

theorem modF_nonneg {K : Type} [Field K] [TopologicalSpace K] [IsTopologicalRing K]
    [LocallyCompactSpace K] (a : K) : 0 ≤ modF K a := by
  by_cases h : a = 0
  · rw [h, modF_zero]
  · exact (modF_pos h).le

theorem modK_eq (hH : St.HaarAlg) (hN : St.NormLoc) (h2 : Module.finrank F E = 2)
    {p : HeightOneSpectrum (𝓞 F)} (L : LocAt F E sig p) (M : Model L.Fp L.Ep) (hM : M.OK)
    {x : E} (hx : x ≠ 0) :
    M.modK (L.ιE x) = FinitePlace.mk p (Algebra.norm F x) := by
  haveI := L.lf
  haveI := hM.borel
  haveI := hM.haar.haar
  haveI := L.free
  haveI := Base.finite L
  haveI := L.top
  unfold Model.modK
  rw [hH L.Fp L.Ep M.mu (L.ιE x) (Base.isUnit_ιE L hx) _, hM.haar.volR, mul_one,
    ENNReal.toReal_ofReal (modF_nonneg _), Base.norm_ιE L h2, hN F p L.Fp L.ιF L.dense L.val]

theorem clause1 (hH : St.HaarAlg) (hN : St.NormLoc) (h2 : Module.finrank F E = 2)
    (L : ∀ p : HeightOneSpectrum (𝓞 F), LocAt F E sig p)
    (M : ∀ p, Model (L p).Fp (L p).Ep) (hM : ∀ p, (M p).OK) (x : E) (hx : x ≠ 0) :
    (Function.mulSupport fun p => (M p).modK ((L p).ιE x)).Finite ∧
      ∏ᶠ p, (M p).modK ((L p).ιE x) = |((Algebra.norm ℚ x : ℚ) : ℝ)|⁻¹ := by
  have hz : Algebra.norm F x ≠ 0 := Algebra.norm_ne_zero_iff.2 hx
  have he : (fun p => (M p).modK ((L p).ιE x)) =
      (fun w : FinitePlace F => w (Algebra.norm F x)) ∘ FinitePlace.equivHeightOneSpectrum.symm := by
    funext p
    rw [modK_eq hH hN h2 (L p) (M p) (hM p) hx]
    rfl
  rw [he]
  refine ⟨?_, ?_⟩
  · rw [Function.mulSupport_comp_eq_preimage]
    exact (FinitePlace.hasFiniteMulSupport hz).preimage
      (FinitePlace.equivHeightOneSpectrum.symm.injective.injOn)
  · rw [Function.comp_def, finprod_comp_equiv FinitePlace.equivHeightOneSpectrum.symm
      (f := fun w : FinitePlace F => w (Algebra.norm F x)),
      FinitePlace.prod_eq_inv_abs_norm hz, Algebra.norm_norm, Rat.cast_inv, Rat.cast_abs]

theorem fibFin (hR : St.ResCharIff) {q : ℕ} (hq : q.Prime) :
    {p : HeightOneSpectrum (𝓞 F) | resChar p = q}.Finite := by
  have hne : Ideal.span {(q : 𝓞 F)} ≠ 0 := by
    rw [Ne, Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot]
    exact_mod_cast hq.ne_zero
  refine (Ideal.finite_factors hne).subset fun p hp => ?_
  simp only [Set.mem_ofPred_eq] at hp ⊢
  rw [Ideal.dvd_span_singleton]
  exact (hR F p q hq).1 hp

theorem transport {K : Type} [Field K] [TopologicalSpace K] {m : ℕ} (ℓ : ℕ) (h : m = ℓ)
    [Fact m.Prime] [Fact ℓ.Prime] [Algebra ℚ_[m] K] (hc : Continuous (algebraMap ℚ_[m] K))
    (hf : FiniteDimensional ℚ_[m] K) :
    ∃ A : Algebra ℚ_[ℓ] K, Continuous (@algebraMap ℚ_[ℓ] K _ _ A) ∧
      @FiniteDimensional ℚ_[ℓ] K _ _ A.toModule ∧
      ∀ (w : K) (a : ℚ), ‖@Algebra.trace ℚ_[ℓ] K _ _ A w - (a : ℚ_[ℓ])‖ =
        ‖Algebra.trace ℚ_[m] K w - (a : ℚ_[m])‖ := by
  subst h
  exact ⟨inferInstance, hc, hf, fun _ _ => rfl⟩

theorem transport_at (L : ∀ p : HeightOneSpectrum (𝓞 F), LocAt F E sig p) (q : ℕ) [Fact q.Prime]
    (i : {p : HeightOneSpectrum (𝓞 F) // resChar p = q}) :
    ∃ A : Algebra ℚ_[q] (L i.1).Fp, Continuous (@algebraMap ℚ_[q] (L i.1).Fp _ _ A) ∧
      @FiniteDimensional ℚ_[q] (L i.1).Fp _ _ A.toModule ∧
      ∀ (w : (L i.1).Fp) (a : ℚ), ‖@Algebra.trace ℚ_[q] (L i.1).Fp _ _ A w - (a : ℚ_[q])‖ =
        (haveI := (L i.1).ellPrime
         ‖Algebra.trace ℚ_[resChar i.1] (L i.1).Fp w - (a : ℚ_[resChar i.1])‖) :=
  haveI := (L i.1).ellPrime
  transport q i.2 (L i.1).qlCont (L i.1).qlFin

def fam (L : ∀ p : HeightOneSpectrum (𝓞 F), LocAt F E sig p) (q : ℕ) [Fact q.Prime] :
    Tr.LocFam F q {p : HeightOneSpectrum (𝓞 F) // resChar p = q} where
  P i := i.1
  K i := (L i.1).Fp
  fld _ := inferInstance
  vr _ := inferInstance
  top _ := inferInstance
  lf i := (L i.1).lf
  cz i := (L i.1).char0
  alg i := (transport_at L q i).choose
  cont i := (transport_at L q i).choose_spec.1
  fin i := (transport_at L q i).choose_spec.2.1
  ιF i := (L i.1).ιF
  dense i := (L i.1).dense
  val i := (L i.1).val

theorem fam_over (hR : St.ResCharIff) (L : ∀ p : HeightOneSpectrum (𝓞 F), LocAt F E sig p)
    (q : ℕ) [hq : Fact q.Prime] : (fam L q).Over := by
  refine ⟨Subtype.val_injective, fun p => ⟨?_, fun h => ⟨⟨p, (hR F p q hq.out).2 h⟩, rfl⟩⟩⟩
  rintro ⟨i, rfl⟩
  exact (hR F i.1 q hq.out).1 i.2

theorem clause2 (hT : Tr.TrSum) (hI : St.TrInt) (hR : St.ResCharIff) (h2 : Module.finrank F E = 2)
    (L : ∀ p : HeightOneSpectrum (𝓞 F), LocAt F E sig p) (x : E) :
    (Function.mulSupport fun p => (L p).psiE ((L p).ιE x)).Finite ∧
      ∏ᶠ p, (L p).psiE ((L p).ιE x) =
        Complex.exp (2 * Real.pi * Complex.I * (((Algebra.trace ℚ E x : ℚ) : ℂ))) := by
  classical
  set z := Algebra.trace F E x with hzdef
  have hex (p : HeightOneSpectrum (𝓞 F)) :
      ∃ a : ℚ, (∃ n : ℕ, a.den = (resChar p) ^ n) ∧
        (haveI := (L p).ellPrime
         ‖Algebra.trace ℚ_[resChar p] (L p).Fp ((L p).ιF z) - (a : ℚ_[resChar p])‖ ≤ 1) ∧
        (L p).psiE ((L p).ιE x) = Complex.exp (2 * Real.pi * Complex.I * (a : ℂ)) := by
    obtain ⟨a, ha, hn, he⟩ := (L p).psiE_def ((L p).ιE x)
    exact ⟨a, ha, by rwa [Base.trace_ιE_ql (L p) h2] at hn, he⟩
  choose a ha hn he using hex
  have hfun : (fun p => (L p).psiE ((L p).ιE x)) =
      fun p => Complex.exp (2 * Real.pi * Complex.I * ((a p : ℚ) : ℂ)) := funext he
  rw [hfun]
  have hprime : ∀ p : HeightOneSpectrum (𝓞 F), (resChar p).Prime := fun p => (L p).ellPrime.out
  let fib : ℕ → Finset (HeightOneSpectrum (𝓞 F)) := fun q =>
    if hq : q.Prime then (fibFin hR hq).toFinset else ∅
  have hfib : ∀ p q, p ∈ fib q ↔ resChar p = q := by
    intro p q
    by_cases hq : q.Prime
    · simp only [fib, dif_pos hq, Set.Finite.mem_toFinset, Set.mem_ofPred_eq]
    · simp only [fib, dif_neg hq, Finset.notMem_empty, false_iff]
      rintro rfl
      exact hq (hprime p)

  have hfin : {p | (a p).den ≠ 1}.Finite := by
    obtain ⟨d, hd0, hdint⟩ :=
      (IsFractionRing.isAlgebraic_iff ℤ ℚ F |>.mpr (.of_finite ℚ z)).exists_integral_multiple
    have hne : Ideal.span {((d : ℤ) : 𝓞 F)} ≠ 0 := by
      rw [Ne, Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot]
      exact_mod_cast hd0
    refine (Ideal.finite_factors hne).subset fun p hp => ?_
    simp only [Set.mem_ofPred_eq] at hp ⊢
    rw [Ideal.dvd_span_singleton]
    by_contra hdp
    apply hp
    haveI := (L p).ellPrime
    have hres : ((resChar p : ℕ) : 𝓞 F) ∈ p.asIdeal := (hR F p (resChar p) (hprime p)).1 rfl
    have hnd : ¬ ((resChar p : ℕ) : ℤ) ∣ d := by
      rintro ⟨k, hk⟩
      apply hdp
      rw [hk, Int.cast_mul]
      exact p.asIdeal.mul_mem_right _ (by exact_mod_cast hres)
    have hd1 : ‖(d : ℚ_[resChar p])‖ = 1 :=
      le_antisymm (Padic.norm_int_le_one d)
        (not_lt.1 fun h => hnd (Padic.norm_intCast_lt_one_iff.1 h))
    have hint : IsIntegral ℤ ((L p).ιF (d • z)) := hdint.map (L p).ιF.toIntAlgHom
    haveI := (L p).qlFin
    have hT1 := hI (resChar p) (L p).Fp ((L p).ιF (d • z)) hint
    have hsm : (L p).ιF (d • z) = algebraMap ℚ_[resChar p] (L p).Fp (d : ℚ_[resChar p]) *
        (L p).ιF z := by
      rw [zsmul_eq_mul, map_mul, map_intCast, map_intCast]
    rw [hsm, ← Algebra.smul_def, map_smul, smul_eq_mul, norm_mul, hd1,
      one_mul] at hT1
    obtain ⟨n, hn'⟩ := ha p
    exact Frac.den_eq_one_of_norm_le_one hn' hT1 (hn p)
  refine Frac.finprod_exp resChar hprime a ha fib hfib hfin _ fun q hq => ?_

  have hfs : Set.Finite {p : HeightOneSpectrum (𝓞 F) | resChar p = q} := fibFin hR hq.out
  haveI : Fintype {p : HeightOneSpectrum (𝓞 F) // resChar p = q} := hfs.fintype
  have hsum := hT F q _ (fam L q) (fam_over hR L q) z
  have htr : Algebra.trace ℚ F z = Algebra.trace ℚ E x := Algebra.trace_trace x
  rw [htr] at hsum
  have hsub : ∑ i ∈ fib q, (a i : ℚ_[q]) =
      ∑ i : {p : HeightOneSpectrum (𝓞 F) // resChar p = q}, (a i.1 : ℚ_[q]) :=
    Finset.sum_subtype _ (fun p => hfib p q) _
  rw [hsub, ← eq_ratCast (algebraMap ℚ ℚ_[q]), ← hsum]
  refine Frac.norm_sum_sub_sum_le_one _ _ _ fun i _ => ?_
  have h1 := (transport_at L q i).choose_spec.2.2 ((L i.1).ιF z) (a i.1)
  exact h1.trans_le (hn i.1)

theorem prodFormulaE_of (hH : St.HaarAlg) (hN : St.NormLoc) (hT : Tr.TrSum) (hI : St.TrInt)
    (hR : St.ResCharIff) : PI.ProdFormulaE.ProdFormulaE := by
  intro F E _ _ _ _ _ sig h2 L
  exact ⟨fun M hM x hx => clause1 hH hN h2 L M hM x hx, fun x => clause2 hT hI hR h2 L x⟩

end PI.ProdFormulaE.Top

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ProdFormulaEOf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ResChar =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ResChar", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ResCharIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open IsDedekindDomain NumberField

namespace PI.ProdFormulaE.ResCharP

theorem eq_iff_mem_asIdeal : St.ResCharIff := by
  intro F _ _ p ℓ hℓ
  show ringChar (𝓞 F ⧸ p.asIdeal) = ℓ ↔ _
  haveI : p.asIdeal.IsPrime := p.isPrime
  have hz : ((ℓ : 𝓞 F ⧸ p.asIdeal) = 0) ↔ (ℓ : 𝓞 F) ∈ p.asIdeal := by
    rw [← map_natCast (Ideal.Quotient.mk p.asIdeal), Ideal.Quotient.eq_zero_iff_mem]
  rw [← hz]
  constructor
  · intro h
    rw [← h]
    exact ringChar.Nat.cast_ringChar
  · intro h
    rcases hℓ.eq_one_or_self_of_dvd _ (ringChar.dvd h) with h1 | h1
    · exfalso
      have hc := ringChar.Nat.cast_ringChar (R := 𝓞 F ⧸ p.asIdeal)
      rw [h1, Nat.cast_one] at hc
      exact one_ne_zero hc
    · exact h1

end PI.ProdFormulaE.ResCharP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ResChar =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ExistsEqEllMul =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ExistsEqEllMul", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.NumberTheory.Padics.PadicNumbers\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.Padics.RingHoms\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open IsDedekindDomain NumberField

namespace PI.ProdFormulaE.Tr

theorem exists_eq_ell_mul {F : Type} [Field F] [NumberField F] (ℓ : ℕ) [Fact ℓ.Prime] (X : 𝓞 F)
    (h : ∀ v : IsDedekindDomain.HeightOneSpectrum (𝓞 F), (ℓ : 𝓞 F) ∈ v.asIdeal →
      v.valuation F (X : F) ≤ v.valuation F (ℓ : F)) :
    ∃ Z : 𝓞 F, X = ℓ * Z := by
  have hℓ : (ℓ : F) ≠ 0 := Nat.cast_ne_zero.2 (Fact.out : ℓ.Prime).ne_zero
  have hval : ∀ v : IsDedekindDomain.HeightOneSpectrum (𝓞 F), v.valuation F ((X : F) / ℓ) ≤ 1 := by
    intro v
    rw [map_div₀]
    have hℓv : v.valuation F (ℓ : F) = v.intValuation (ℓ : 𝓞 F) := by
      rw [← IsDedekindDomain.HeightOneSpectrum.valuation_of_algebraMap (K := F)]
      simp
    by_cases hv : (ℓ : 𝓞 F) ∈ v.asIdeal
    · have hpos : v.valuation F (ℓ : F) ≠ 0 := (Valuation.ne_zero_iff _).2 hℓ
      exact (div_le_one₀ (zero_lt_iff.2 hpos)).2 (h v hv)
    · rw [hℓv, IsDedekindDomain.HeightOneSpectrum.intValuation_eq_one_iff.2 hv, div_one]
      exact IsDedekindDomain.HeightOneSpectrum.valuation_le_one v X
  obtain ⟨Z, hZ⟩ := IsDedekindDomain.HeightOneSpectrum.mem_integers_of_valuation_le_one (R := 𝓞 F) F
    ((X : F) / ℓ) hval
  refine ⟨Z, ?_⟩
  apply IsFractionRing.injective (𝓞 F) F
  have hZ' : algebraMap (𝓞 F) F Z = (X : F) / ℓ := hZ
  have hc : (ℓ : F) * ((X : F) / ℓ) = X := by field_simp
  rw [map_mul, hZ', map_natCast, hc]

theorem exists_int_approx (ℓ : ℕ) [Fact ℓ.Prime] (c : ℚ_[ℓ]) (hc : ‖c‖ ≤ 1) :
    ∃ m : ℤ, ‖(c - m) / ℓ‖ ≤ 1 := by
  obtain ⟨n, -, hn⟩ := PadicInt.exists_mem_range (⟨c, hc⟩ : ℤ_[ℓ])
  rw [IsLocalRing.mem_maximalIdeal, PadicInt.mem_nonunits, PadicInt.norm_lt_one_iff_dvd] at hn
  obtain ⟨y, hy⟩ := hn
  refine ⟨n, ?_⟩
  have hy' : c - (n : ℚ_[ℓ]) = ℓ * (y : ℚ_[ℓ]) := by
    have := congrArg (fun w : ℤ_[ℓ] => (w : ℚ_[ℓ])) hy
    push_cast at this
    exact this
  have hℓ : (ℓ : ℚ_[ℓ]) ≠ 0 := Nat.cast_ne_zero.2 (Fact.out : ℓ.Prime).ne_zero
  rw [show ((n : ℤ) : ℚ_[ℓ]) = (n : ℚ_[ℓ]) by push_cast; rfl, hy', mul_div_cancel_left₀ _ hℓ]
  exact y.norm_le_one

end PI.ProdFormulaE.Tr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ExistsEqEllMul =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.InjectiveOfLinearIndependent =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.InjectiveOfLinearIndependent", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.TrBase\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ExistsEqEllMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.Padics.RingHoms\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open IsDedekindDomain NumberField TensorProduct ValuativeRel

namespace PI.ProdFormulaE.Tr

variable {F : Type} [Field F] [NumberField F] {ℓ : ℕ} [Fact ℓ.Prime] {ι : Type}

lemma vle_iff' {K : Type*} [Field K] [ValuativeRel K] (x y : K) :
    x ≤ᵥ y ↔ valuation K x ≤ valuation K y := by
  exact (Valuation.Compatible.vle_iff_le (v := valuation K) x y)

lemma valuation_natCast_le_one' {K : Type*} [Field K] [ValuativeRel K] (n : ℕ) :
    valuation K (n : K) ≤ 1 := by
  induction n with
  | zero => simp
  | succ n ih =>
    push_cast
    exact Valuation.map_add_le _ ih (by simp)

private theorem isClosed_setOf_valuation_le_one {K : Type} [Field K] [ValuativeRel K] [TopologicalSpace K]
    [IsNonarchimedeanLocalField K] : IsClosed {x : K | valuation K x ≤ 1} := by
  have h := Valuation.isClosed_closedBall (R := K) (v := valuation K) 1
  first
  | (convert h using 3 with x; simp)

lemma LocFam.valuation_algebraMap_le_one (D : LocFam F ℓ ι) (i : ι) (c : ℚ_[ℓ]) (hc : ‖c‖ ≤ 1) :
    valuation (D.K i) (algebraMap ℚ_[ℓ] (D.K i) c) ≤ 1 := by
  let c' : ℤ_[ℓ] := ⟨c, hc⟩
  change valuation (D.K i) (algebraMap ℚ_[ℓ] (D.K i) (c' : ℚ_[ℓ])) ≤ 1
  refine PadicInt.denseRange_natCast.induction_on c'
    (p := fun z : ℤ_[ℓ] => valuation (D.K i) (algebraMap ℚ_[ℓ] (D.K i) (z : ℚ_[ℓ])) ≤ 1) ?_ ?_
  · exact isClosed_setOf_valuation_le_one.preimage ((D.cont i).comp continuous_subtype_val)
  · intro n
    simpa using valuation_natCast_le_one' (K := D.K i) n

lemma LocFam.valuation_ιF_le_one (D : LocFam F ℓ ι) (i : ι) (x : 𝓞 F) :
    valuation (D.K i) (D.ιF i (x : F)) ≤ 1 := by
  have h := (D.val i (x : F) 1).2 (by simpa using (D.P i).valuation_le_one x)
  simpa [vle_iff'] using h

theorem LocFam.linearIndependent [Fintype ι] (D : LocFam F ℓ ι) (hD : D.Over)
    (hA : ∀ X : 𝓞 F, (∀ v : HeightOneSpectrum (𝓞 F), (ℓ : 𝓞 F) ∈ v.asIdeal →
      v.valuation F (X : F) ≤ v.valuation F (ℓ : F)) → ∃ Z : 𝓞 F, X = ℓ * Z)
    (hB : ∀ c : ℚ_[ℓ], ‖c‖ ≤ 1 → ∃ m : ℤ, ‖(c - m) / ℓ‖ ≤ 1) :
    LinearIndependent ℚ_[ℓ] (fun k => D.Φ (1 ⊗ₜ integralBasis F k)) := by
  classical
  set b := integralBasis F with hb_def
  set bZ := RingOfIntegers.basis F with hbZ
  have hbb : ∀ k, b k = algebraMap (𝓞 F) F (bZ k) := fun k => by
    rw [hb_def, hbZ, integralBasis_apply]
  have hw : ∀ k i, D.Φ (1 ⊗ₜ b k) i = D.ιF i (b k) := fun k i => by
    rw [LocFam.Φ_tmul, map_one, one_mul]
  rw [Fintype.linearIndependent_iff]
  intro g hg
  by_contra hne
  push_neg at hne
  obtain ⟨k1, hk1⟩ := hne
  obtain ⟨k0, -, hk0⟩ := Finset.exists_max_image Finset.univ (fun k => ‖g k‖) ⟨k1, Finset.mem_univ _⟩
  have hg0 : g k0 ≠ 0 := by
    intro h
    have h' := hk0 k1 (Finset.mem_univ _)
    rw [h, norm_zero] at h'
    exact hk1 (norm_le_zero_iff.1 h')
  set c : _ → ℚ_[ℓ] := fun k => g k / g k0 with hc_def
  have hc1 : ∀ k, ‖c k‖ ≤ 1 := fun k => by
    simp only [hc_def, norm_div]
    exact div_le_one_of_le₀ (hk0 k (Finset.mem_univ _)) (norm_nonneg _)
  have hck0 : c k0 = 1 := div_self hg0
  have hrel : ∀ i, ∑ k, algebraMap ℚ_[ℓ] (D.K i) (c k) * D.ιF i (b k) = 0 := by
    intro i
    have h := congrFun hg i
    simp only [Finset.sum_apply, Pi.smul_apply, hw, Pi.zero_apply] at h
    have h2 := congrArg (fun y => algebraMap ℚ_[ℓ] (D.K i) (g k0)⁻¹ * y) h
    simp only [mul_zero, Finset.mul_sum, Algebra.smul_def] at h2
    rw [← h2]
    refine Finset.sum_congr rfl fun k _ => ?_
    simp only [hc_def, div_eq_inv_mul, map_mul, mul_assoc]
  choose m hm using fun k => hB (c k) (hc1 k)
  set d : _ → ℚ_[ℓ] := fun k => (c k - m k) / ℓ with hd_def
  have hd1 : ∀ k, ‖d k‖ ≤ 1 := hm
  have hℓ0 : (ℓ : ℚ_[ℓ]) ≠ 0 := Nat.cast_ne_zero.2 (Fact.out : ℓ.Prime).ne_zero
  have hcd : ∀ k, c k - m k = ℓ * d k := fun k => by
    simp only [hd_def]
    field_simp
  set X : 𝓞 F := ∑ k, m k • bZ k with hX_def
  have hXF : ((X : 𝓞 F) : F) = ∑ k, (m k : F) * b k := by
    first
    | (rw [hX_def]; simp [hbb, zsmul_eq_mul])
  have hval : ∀ v : HeightOneSpectrum (𝓞 F), (ℓ : 𝓞 F) ∈ v.asIdeal →
      v.valuation F (X : F) ≤ v.valuation F (ℓ : F) := by
    intro v hv
    obtain ⟨i, rfl⟩ := (hD.2 v).2 hv
    rw [← D.val i, vle_iff']
    have hterm : ∀ k, D.ιF i ((m k : F) * b k) = algebraMap ℚ_[ℓ] (D.K i) (c k) * D.ιF i (b k)
        - (ℓ : D.K i) * (algebraMap ℚ_[ℓ] (D.K i) (d k) * D.ιF i (b k)) := by
      intro k
      have e : (m k : ℚ_[ℓ]) = c k - ℓ * d k := by rw [← hcd]; ring
      have e' : ((m k : ℤ) : D.K i) = algebraMap ℚ_[ℓ] (D.K i) (c k)
          - (ℓ : D.K i) * algebraMap ℚ_[ℓ] (D.K i) (d k) := by
        rw [← map_intCast (algebraMap ℚ_[ℓ] (D.K i)), e, map_sub, map_mul, map_natCast]
      rw [map_mul, map_intCast, e']
      ring
    have hιX : D.ιF i (X : F) =
        -((ℓ : D.K i) * ∑ k, algebraMap ℚ_[ℓ] (D.K i) (d k) * D.ιF i (b k)) := by

      rw [hXF, map_sum, Finset.sum_congr rfl fun k _ => hterm k, Finset.sum_sub_distrib, hrel i,
      Finset.mul_sum]
      ring
    have hsum : valuation (D.K i) (∑ k, algebraMap ℚ_[ℓ] (D.K i) (d k) * D.ιF i (b k)) ≤ 1 := by
      refine Valuation.map_sum_le _ fun k _ => ?_
      rw [map_mul, hbb]
      exact mul_le_one' (LocFam.valuation_algebraMap_le_one D i _ (hd1 k))
        (LocFam.valuation_ιF_le_one D i (bZ k))
    rw [hιX, Valuation.map_neg, map_mul, map_natCast (D.ιF i) ℓ]
    first
    | exact mul_le_of_le_one_right' hsum
  obtain ⟨Z, hZ⟩ := hA X hval
  have hrepr : ∀ k, bZ.repr X k = m k := fun k => by
    rw [hX_def, bZ.repr_sum_self]
  have hmk : m k0 = ℓ * bZ.repr Z k0 := by
    have h := congrArg (fun y => bZ.repr y k0) hZ
    simp only [hrepr] at h
    rw [h]
    have e : ((ℓ : 𝓞 F) * Z) = (ℓ : ℤ) • Z := by rw [zsmul_eq_mul]; push_cast; rfl
    rw [e, LinearEquiv.map_smul, Finsupp.smul_apply, smul_eq_mul]
  have e := hcd k0
  rw [hck0, hmk] at e
  push_cast at e
  have h1 : (1 : ℚ_[ℓ]) = ℓ * (((bZ.repr Z k0 : ℤ) : ℚ_[ℓ]) + d k0) := by linear_combination e
  have hn := congrArg norm h1
  rw [norm_one, norm_mul] at hn
  have hlt : ‖(ℓ : ℚ_[ℓ])‖ < 1 := Padic.norm_p_lt_one
  have hle : ‖((bZ.repr Z k0 : ℤ) : ℚ_[ℓ]) + d k0‖ ≤ 1 :=
    (Padic.nonarchimedean _ _).trans (max_le (Padic.norm_int_le_one _) (hd1 k0))
  nlinarith [norm_nonneg (ℓ : ℚ_[ℓ]), norm_nonneg (((bZ.repr Z k0 : ℤ) : ℚ_[ℓ]) + d k0)]

theorem LocFam.injective_of_linearIndependent [Fintype ι] (D : LocFam F ℓ ι)
    (hl : LinearIndependent ℚ_[ℓ] (fun k => D.Φ (1 ⊗ₜ integralBasis F k))) :
    Function.Injective D.Φ := by
  classical
  set bb := Algebra.TensorProduct.basis ℚ_[ℓ] (integralBasis F) with hbb
  have hb : ∀ k, bb k = 1 ⊗ₜ integralBasis F k := fun k => Algebra.TensorProduct.basis_apply _ _
  refine (injective_iff_map_eq_zero D.Φ).2 fun x hx => ?_
  rw [← bb.sum_repr x] at hx ⊢

  simp only [map_sum, map_smul, hb] at hx
  have h0 := (Fintype.linearIndependent_iff.1 hl) (fun k => bb.repr x k) hx
  simp [h0]

theorem toPi_injective : TrInj := by
  intro F _ _ ℓ _ ι _ D hD
  exact LocFam.injective_of_linearIndependent D
    (LocFam.linearIndependent D hD (exists_eq_ell_mul ℓ) (exists_int_approx ℓ))

end PI.ProdFormulaE.Tr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.InjectiveOfLinearIndependent =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.T2SpaceOfIsValuativeTopology =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.T2SpaceOfIsValuativeTopology", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.TrBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Topology.Algebra.Module.FiniteDimension\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open IsDedekindDomain NumberField TensorProduct ValuativeRel Filter Topology

namespace PI.ProdFormulaE.Tr

variable {F : Type} [Field F] [NumberField F]

theorem exists_approx {ι : Type} [Finite ι] (P : ι → HeightOneSpectrum (𝓞 F))
    (hP : Function.Injective P) (b : ι → F) (c : F) (hc : c ≠ 0) :
    ∃ x : F, ∀ i, (P i).valuation F (x - b i) ≤ (P i).valuation F c := by
  classical
  obtain ⟨d, hd⟩ := IsLocalization.exist_integer_multiples_of_finite (nonZeroDivisors (𝓞 F)) b
  have hd' : ∀ i, ∃ a : 𝓞 F, algebraMap (𝓞 F) F a = (d : 𝓞 F) • b i :=
    fun i => RingHom.mem_rangeS.1 (hd i)
  choose a ha using hd'
  have hd0 : algebraMap (𝓞 F) F (d : 𝓞 F) ≠ 0 :=
    (map_ne_zero_iff _ (IsFractionRing.injective (𝓞 F) F)).2 (nonZeroDivisors.coe_ne_zero d)
  have hw : ∀ i, (P i).valuation F (algebraMap (𝓞 F) F (d : 𝓞 F) * c) ≠ 0 := fun i =>
    (Valuation.ne_zero_iff _).2 (mul_ne_zero hd0 hc)
  have hn : ∀ i, WithZero.exp (-((WithZero.log ((P i).valuation F (algebraMap (𝓞 F) F (d : 𝓞 F) * c))).natAbs : ℤ))
      ≤ (P i).valuation F (algebraMap (𝓞 F) F (d : 𝓞 F) * c) := by
    intro i
    conv_rhs => rw [← WithZero.exp_log (hw i)]
    rw [WithZero.exp_le_exp, Int.natCast_natAbs]
    exact neg_abs_le _
  cases nonempty_fintype ι
  obtain ⟨y, hy⟩ := IsDedekindDomain.exists_forall_sub_mem_ideal (s := Finset.univ)
    (fun i => (P i).asIdeal)
    (fun i => (WithZero.log ((P i).valuation F (algebraMap (𝓞 F) F (d : 𝓞 F) * c))).natAbs)
    (fun i _ => (P i).prime) (fun i _ j _ hij h => hij (hP (HeightOneSpectrum.ext h)))
    (fun i => a i.1)
  refine ⟨algebraMap (𝓞 F) F y / algebraMap (𝓞 F) F (d : 𝓞 F), fun i => ?_⟩
  have h1 := ((P i).intValuation_le_pow_iff_mem _ _).2 (hy i (Finset.mem_univ _))
  have h2 : (P i).valuation F (algebraMap (𝓞 F) F (y - a i)) ≤
      (P i).valuation F (algebraMap (𝓞 F) F (d : 𝓞 F) * c) := by
    rw [HeightOneSpectrum.valuation_of_algebraMap]
    exact h1.trans (hn i)
  have h3 : algebraMap (𝓞 F) F (d : 𝓞 F) *
      (algebraMap (𝓞 F) F y / algebraMap (𝓞 F) F (d : 𝓞 F) - b i) = algebraMap (𝓞 F) F (y - a i) := by
    rw [map_sub, ha i, Algebra.smul_def]
    field_simp
  have key : (P i).valuation F (algebraMap (𝓞 F) F (d : 𝓞 F)) *
      (P i).valuation F (algebraMap (𝓞 F) F y / algebraMap (𝓞 F) F (d : 𝓞 F) - b i) ≤
      (P i).valuation F (algebraMap (𝓞 F) F (d : 𝓞 F)) * (P i).valuation F c := by
    rw [← map_mul, ← map_mul, h3]
    exact h2
  exact (mul_le_mul_iff_right₀ (zero_lt_iff.2 ((Valuation.ne_zero_iff _).2 hd0))).1 key

theorem t2Space_of_isValuativeTopology_alt (K : Type) [Field K] [ValuativeRel K] [TopologicalSpace K]
    [IsValuativeTopology K] : T2Space K := by
  apply IsTopologicalAddGroup.t2Space_of_zero_sep
  intro x hx
  refine ⟨{z | valuation K z < valuation K x}, ?_, fun h => lt_irrefl (valuation K x) h⟩
  rw [IsValuativeTopology.mem_nhds_zero_iff]
  exact ⟨Units.mk0 _ ((Valuation.ne_zero_iff _).2 hx), fun z hz => by simpa using hz⟩

variable {ℓ : ℕ} [Fact ℓ.Prime] {ι : Type}

private theorem exists_valuation_sub_lt_of_injective [Finite ι] (D : LocFam F ℓ ι) (hP : Function.Injective D.P)
    (k : ∀ i, D.K i) (γ : ∀ i, (ValueGroupWithZero (D.K i))ˣ) :
    ∃ x : F, ∀ i, valuation (D.K i) (D.ιF i x - k i) < γ i := by
  have hl : ∀ i, Tendsto (fun N : ℕ => D.ιF i ((ℓ : F) ^ N)) atTop (𝓝 0) := by
    intro i
    have h0 : Tendsto (fun N : ℕ => (ℓ : ℚ_[ℓ]) ^ N) atTop (𝓝 0) :=
      tendsto_pow_atTop_nhds_zero_of_norm_lt_one Padic.norm_p_lt_one
    have h1 := ((D.cont i).tendsto 0).comp h0
    rw [map_zero] at h1
    convert h1 using 1
    funext N
    simp
  have hev : ∀ᶠ N in atTop, ∀ i, valuation (D.K i) (D.ιF i ((ℓ : F) ^ N)) < γ i := by
    rw [Filter.eventually_all]
    intro i
    exact hl i ((IsValuativeTopology.hasBasis_nhds_zero (D.K i)).mem_of_mem (i := γ i) trivial)
  obtain ⟨N, hN⟩ := hev.exists
  have hb : ∀ i, ∃ b : F, valuation (D.K i) (D.ιF i b - k i) < γ i := by
    intro i
    obtain ⟨_, hz, b, rfl⟩ := mem_closure_iff_nhds.1 (D.dense i (k i)) _
      ((IsValuativeTopology.hasBasis_nhds (k i)).mem_of_mem (i := γ i) trivial)
    exact ⟨b, hz⟩
  choose b hb using hb
  have hc : ((ℓ : F) ^ N) ≠ 0 :=
    pow_ne_zero _ (Nat.cast_ne_zero.2 (Fact.out : ℓ.Prime).ne_zero)
  obtain ⟨x, hx⟩ := exists_approx D.P hP b _ hc
  refine ⟨x, fun i => ?_⟩
  have h1 : valuation (D.K i) (D.ιF i (x - b i)) ≤ valuation (D.K i) (D.ιF i ((ℓ : F) ^ N)) :=
    (Valuation.vle_iff_le (valuation (D.K i))).1 ((D.val i _ _).2 (hx i))
  have h2 : D.ιF i x - k i = D.ιF i (x - b i) + (D.ιF i (b i) - k i) := by
    rw [map_sub]
    ring
  rw [h2]
  exact Valuation.map_add_lt _ (lt_of_le_of_lt h1 (hN i)) (hb i)

theorem LocFam.denseDiag [Finite ι] (D : LocFam F ℓ ι) (hP : Function.Injective D.P) :
    DenseRange (fun x : F => fun i => D.ιF i x) := by
  rw [DenseRange, dense_iff_inter_open]
  rintro U hU ⟨k, hk⟩
  obtain ⟨I, u, hu, hIU⟩ := isOpen_pi_iff.1 hU k hk
  have hγ : ∀ i, ∃ γ : (ValueGroupWithZero (D.K i))ˣ,
      i ∈ I → {z | valuation (D.K i) (z - k i) < γ} ⊆ u i := by
    intro i
    by_cases hi : i ∈ I
    · obtain ⟨γ, -, hγ⟩ :=
        (IsValuativeTopology.hasBasis_nhds (k i)).mem_iff.1 ((hu i hi).1.mem_nhds (hu i hi).2)
      exact ⟨γ, fun _ => hγ⟩
    · exact ⟨1, fun h => absurd h hi⟩
  choose γ hγ using hγ
  obtain ⟨x, hx⟩ := exists_valuation_sub_lt_of_injective D hP k γ
  exact ⟨_, hIU (fun i hi => hγ i hi (hx i)), x, rfl⟩

theorem toPi_surjective : TrSurj := by
  intro F _ _ ℓ _ ι _ D hD
  have : ∀ i, T2Space (D.K i) := fun i => t2Space_of_isValuativeTopology_alt (D.K i)
  have : ∀ i, ContinuousSMul ℚ_[ℓ] (D.K i) := fun i => ⟨by
    simp_rw [Algebra.smul_def]
    exact ((D.cont i).comp continuous_fst).mul continuous_snd⟩
  have hcl : IsClosed (LinearMap.range D.Φ.toLinearMap : Set (∀ i, D.K i)) :=
    Submodule.closed_of_finiteDimensional _
  have hdense : Dense (LinearMap.range D.Φ.toLinearMap : Set (∀ i, D.K i)) := by
    refine Dense.mono ?_ (LocFam.denseDiag D hD.1)
    rintro _ ⟨x, rfl⟩
    refine ⟨1 ⊗ₜ x, ?_⟩
    funext i
    simp [LocFam.Φ_tmul]
  intro y
  have hy : y ∈ closure (LinearMap.range D.Φ.toLinearMap : Set (∀ i, D.K i)) := by
    rw [hdense.closure_eq]
    trivial
  rw [hcl.closure_eq] at hy
  obtain ⟨z, hz⟩ := LinearMap.mem_range.1 hy
  exact ⟨z, by simpa using hz⟩

end PI.ProdFormulaE.Tr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.T2SpaceOfIsValuativeTopology =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.SumLocalTrace =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.SumLocalTrace", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.TrBase\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.InjectiveOfLinearIndependent\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.T2SpaceOfIsValuativeTopology\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.TrSumOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.ProdFormulaE.Tr

theorem sumLocalTrace : TrSum := trSum_of toPi_injective toPi_surjective

end PI.ProdFormulaE.Tr
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.SumLocalTrace =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.Assemble =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.Assemble", "h": "module\n\npublic import Formalism.PeriodIntegrals.ProdFormulaE\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ResCharIff\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.NormSt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.NormTraceLeOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ProdFormulaEOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.ResChar\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.SumLocalTrace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.ProdFormulaE.Assemble

theorem prodFormulaE_of_haar (hH : St.HaarAlg) : PI.ProdFormulaE.ProdFormulaE :=
  Top.prodFormulaE_of hH modulus_eq_finitePlace Tr.sumLocalTrace TrIntP.norm_trace_le_one ResCharP.eq_iff_mem_asIdeal

end PI.ProdFormulaE.Assemble
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.Assemble =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ProdFormulaE =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ProdFormulaE", "h": "module\n\npublic import Formalism.PeriodIntegrals.ProdFormulaE\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.Assemble\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ProductFormulaHaar.HaarAlg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem product_formula_e : PI.ProdFormulaE.ProdFormulaE :=
  PI.ProdFormulaE.Assemble.prodFormulaE_of_haar PI.ProdFormulaE.HaarAlgP.haarScaling
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ProdFormulaE =====
