module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.ClassSame
public import Mathlib.Order.CompletePartialOrder
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.EvFLocalIdeleSelf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.FinprodNormEmbedding
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.OrdFEqOfClassOf
public import Mathlib.Analysis.Complex.Norm
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.EqOneOfForallZpow
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion
public import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
public import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.InvMemUFin
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.ValuedAtFin
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.FactorOne, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.IsIntegralOfMemCompo, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.AlgValsFinOfTors, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.NormEqOneOfForallZpow, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.PowCardSubOneMem, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.TorsUnitsOfNbhd, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.AlgValsFinMain

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.FactorOne =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.FactorOne", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.ClassSame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.L2.Host Neutral.B1

namespace PI.AlgValsFin.W

variable {L : Type} [Field L] [NumberField L]

theorem absNorm_pos (v : HeightOneSpectrum (𝓞 L)) : (0 : ℝ) < ((Ideal.absNorm v.asIdeal : ℕ) : ℝ) := by
  have h : Ideal.absNorm v.asIdeal ≠ 0 := by
    rw [Ne, Ideal.absNorm_eq_zero_iff]
    exact v.ne_bot
  exact_mod_cast Nat.pos_of_ne_zero h

theorem factor_one (N : ℝ) (hN : 0 < N) (o : ℤ) (s : ℝ) : (N ^ o) ^ s * (N ^ (-s)) ^ o = 1 := by
  have h1 : (N ^ o) ^ s = N ^ ((o : ℝ) * s) := by
    rw [← Real.rpow_intCast, ← Real.rpow_mul hN.le]
  have h2 : (N ^ (-s)) ^ o = N ^ (-s * (o : ℝ)) := by
    rw [← Real.rpow_intCast, ← Real.rpow_mul hN.le]
  have h3 : (o : ℝ) * s + -s * (o : ℝ) = 0 := by ring
  rw [h1, h2, ← Real.rpow_add hN, h3, Real.rpow_zero]

theorem keyIdOf : KeyIdOf L := by
  intro hD hL hP χ s m hχ k T hT hU
  obtain ⟨r, hr, hk⟩ := hD k T hT
  refine ⟨r, hr, ?_⟩

  have e : χ.1 (diagUnits L k) = 1 := χ.2.2 k
  rw [hk, map_mul, map_mul, map_prod] at e
  have eloc : ∀ v ∈ T, χ.1 (localIdele L v (atFin v k)) = χ.val v ^ ordF v k := by
    intro v hv
    exact hL χ v k (hU v hv)
  rw [Finset.prod_congr rfl eloc] at e
  have einf : χ.1 (infDiag k) = χ.inf k := rfl
  rw [einf] at e
  have e' := congrArg (fun u : ℂˣ => (u : ℂ)) e
  simp only [Units.val_mul, Units.coe_prod, Units.val_zpow_eq_zpow_val, Units.val_one] at e'

  have hreal : (∏ φ : L →+* ℂ, ‖φ (k : L)‖ ^ s) *
      ∏ v ∈ T, (((Ideal.absNorm v.asIdeal : ℕ) : ℝ) ^ (-s)) ^ ordF v k = 1 := by
    rw [Real.finsetProd_rpow Finset.univ (fun φ : L →+* ℂ => ‖φ (k : L)‖) (fun φ _ => norm_nonneg _) s,
      hP k T hT,
      ← Real.finsetProd_rpow T _ (fun v _ => zpow_nonneg (absNorm_pos v).le _) s,
      ← Finset.prod_mul_distrib]
    exact Finset.prod_eq_one (fun v _ => factor_one _ (absNorm_pos v) _ s)
  have hc1 : ∏ φ : L →+* ℂ, ((‖φ (k : L)‖ : ℝ) : ℂ) ^ (s : ℂ)
      = ((∏ φ : L →+* ℂ, ‖φ (k : L)‖ ^ s : ℝ) : ℂ) := by
    rw [Complex.ofReal_prod]
    refine Finset.prod_congr rfl (fun φ _ => ?_)
    rw [Complex.ofReal_cpow (norm_nonneg _)]
  have hc2 : ∏ v ∈ T, (((Ideal.absNorm v.asIdeal : ℕ) : ℂ) ^ (-(s : ℂ))) ^ ordF v k
      = ((∏ v ∈ T, (((Ideal.absNorm v.asIdeal : ℕ) : ℝ) ^ (-s)) ^ ordF v k : ℝ) : ℂ) := by
    rw [Complex.ofReal_prod]
    refine Finset.prod_congr rfl (fun v _ => ?_)
    rw [Complex.ofReal_zpow, Complex.ofReal_cpow (Nat.cast_nonneg _), Complex.ofReal_neg,
      Complex.ofReal_natCast]
  rw [← hχ k]
  simp only [Formalism.L2.Host.HChar.valTw, mul_zpow, Finset.prod_mul_distrib]
  rw [hc1, hc2]
  set A : ℝ := ∏ φ : L →+* ℂ, ‖φ (k : L)‖ ^ s with hA
  set B : ℝ := ∏ v ∈ T, (((Ideal.absNorm v.asIdeal : ℕ) : ℝ) ^ (-s)) ^ ordF v k with hB
  have hAB : (A : ℂ) * (B : ℂ) = 1 := by
    rw [← Complex.ofReal_mul, hreal, Complex.ofReal_one]
  linear_combination ((A : ℂ) * (B : ℂ)) * e' + hAB

end PI.AlgValsFin.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.FactorOne =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.IsIntegralOfMemCompo =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.IsIntegralOfMemCompo", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.ClassSame\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.L2.Host

namespace PI.AlgValsFin.W

variable {L : Type} [Field L] [NumberField L]

def compo (L : Type) [Field L] [NumberField L] : IntermediateField ℚ ℂ :=
  ⨆ φ : L →+* ℂ, φ.toRatAlgHom.fieldRange

instance (φ : L →+* ℂ) : FiniteDimensional ℚ φ.toRatAlgHom.fieldRange :=
  LinearEquiv.finiteDimensional (AlgEquiv.ofInjectiveField φ.toRatAlgHom).toLinearEquiv

instance : FiniteDimensional ℚ (compo L) := by
  unfold compo; infer_instance

theorem mem_compo (φ : L →+* ℂ) (x : L) : φ x ∈ compo L :=
  (le_iSup (fun ψ : L →+* ℂ => ψ.toRatAlgHom.fieldRange) φ) (AlgHom.mem_fieldRange.mpr ⟨x, rfl⟩)

theorem prod_mem_compo (m : (L →+* ℂ) → ℤ) (k : L) : ∏ φ : L →+* ℂ, φ k ^ m φ ∈ compo L :=
  prod_mem fun φ _ => zpow_mem (mem_compo φ k) _

theorem isIntegral_of_mem_compo {y : ℂ} (hy : y ∈ compo L) : IsIntegral ℚ y := by
  have h := (IsIntegral.of_finite ℚ (⟨y, hy⟩ : compo L)).map (compo L).val
  exact h

theorem eq_of_key {a b P z : ℂ} (e : a * b⁻¹ * P * z = 1) : a = b * (P * z)⁻¹ := by
  have hb : b ≠ 0 := by rintro rfl; simp at e
  have hP : P ≠ 0 := by rintro rfl; simp at e
  have hz : z ≠ 0 := by rintro rfl; simp at e
  field_simp
  field_simp at e
  linear_combination e

theorem assemble : Assemble L := by
  classical
  intro hTors hKey hPow hSame χ s m hm
  obtain ⟨N, hN0, hN⟩ := hTors χ
  obtain ⟨h, hh0, hk⟩ := hPow
  obtain ⟨ι, hι, c, hc⟩ := hSame
  haveI := hι
  have hz : ∀ r ∈ UFin L, ((χ.1 r : ℂˣ) : ℂ) ^ N = 1 := by
    intro r hr
    rw [← Units.val_pow_eq_pow_val, hN r hr, Units.val_one]
  let U := {i : ι // ∃ v, c v = i ∧ χ.UnrAt v}
  let f : U → ℂ := fun i => χ.valTw s i.2.choose
  let S : Set ℂ := ((Polynomial.nthRoots N (1 : ℂ)).toFinset : Set ℂ) ∪ Set.range f
  haveI : Finite S := ((Set.toFinite _).union (Set.finite_range f)).to_subtype
  have hA : ∀ v, χ.UnrAt v → ∃ P ∈ compo L, ∃ z : ℂ, z ^ N = 1 ∧ χ.valTw s v ^ h * (P * z) = 1 := by
    intro v hv
    obtain ⟨kv, hkv⟩ := hk v
    have h1 : ∀ u, u ∉ ({v} : Finset (HeightOneSpectrum (𝓞 L))) → ordF u kv = 0 := by
      intro u hu
      rw [hkv u, if_neg (fun h' => hu (Finset.mem_singleton.mpr h'))]
    have h2 : ∀ u ∈ ({v} : Finset (HeightOneSpectrum (𝓞 L))), χ.UnrAt u := by
      intro u hu
      rw [Finset.mem_singleton.mp hu]
      exact hv
    obtain ⟨r, hr, e⟩ := hKey χ s m hm kv {v} h1 h2
    refine ⟨_, prod_mem_compo m (kv : L), _, hz r hr, ?_⟩
    rw [Finset.prod_singleton, hkv v, if_pos rfl, zpow_natCast] at e
    rw [← mul_assoc]
    exact e
  let C : IntermediateField ℚ ℂ := compo L ⊔ IntermediateField.adjoin ℚ S
  have hCcompo : compo L ≤ C := le_sup_left
  have hSsub : ∀ x ∈ S, x ∈ C := fun x hx => (le_sup_right : IntermediateField.adjoin ℚ S ≤ C)
    (IntermediateField.subset_adjoin ℚ S hx)
  have hmu : ∀ z : ℂ, z ^ N = 1 → z ∈ C := fun z hz' =>
    hSsub z (Or.inl (by simp [Polynomial.mem_nthRoots hN0, hz']))
  have hf : ∀ i : U, f i ∈ C := fun i => hSsub _ (Or.inr ⟨i, rfl⟩)
  have hval : ∀ v, χ.UnrAt v → χ.valTw s v ∈ C := by
    intro v hv
    have hex : ∃ v', c v' = c v ∧ χ.UnrAt v' := ⟨v, rfl, hv⟩
    have hw := hex.choose_spec
    have hwC : χ.valTw s hex.choose ∈ C := hf ⟨c v, hex⟩
    by_cases hvw : v = hex.choose
    · rw [hvw]
      exact hwC
    · obtain ⟨k, hkk⟩ := hc v hex.choose hw.1.symm
      have h1 : ∀ u, u ∉ ({v, hex.choose} : Finset (HeightOneSpectrum (𝓞 L))) → ordF u k = 0 := by
        intro u hu
        simp only [Finset.mem_insert, Finset.mem_singleton, not_or] at hu
        rw [hkk u, if_neg hu.1, if_neg hu.2, sub_zero]
      have h2 : ∀ u ∈ ({v, hex.choose} : Finset (HeightOneSpectrum (𝓞 L))), χ.UnrAt u := by
        intro u hu
        simp only [Finset.mem_insert, Finset.mem_singleton] at hu
        rcases hu with rfl | rfl
        · exact hv
        · exact hw.2
      obtain ⟨r, hr, e⟩ := hKey χ s m hm k {v, hex.choose} h1 h2
      have o1 : ordF v k = 1 := by rw [hkk]; simp [hvw]
      have o2 : ordF hex.choose k = -1 := by rw [hkk]; simp [Ne.symm hvw]
      rw [Finset.prod_pair hvw, o1, o2, zpow_one, zpow_neg_one] at e
      rw [eq_of_key e]
      exact C.mul_mem hwC (C.inv_mem (C.mul_mem (hCcompo (prod_mem_compo m (k : L))) (hmu _ (hz r hr))))
  have hint : ∀ x ∈ S, IsIntegral ℚ x := by
    intro x hx
    rcases hx with hx | ⟨i, rfl⟩
    · have hx' : x ^ N = 1 := by simpa [Polynomial.mem_nthRoots hN0] using hx
      exact IsIntegral.of_pow hN0 (by rw [hx']; exact isIntegral_one)
    · obtain ⟨P, hP, z, hzN, e⟩ := hA _ i.2.choose_spec.2
      have hpow : (f i) ^ (h * N) ∈ compo L := by
        have e1 : (f i) ^ h = (P * z)⁻¹ := eq_inv_of_mul_eq_one_left e
        rw [pow_mul, e1, inv_pow, mul_pow, hzN, mul_one]
        exact inv_mem (pow_mem hP N)
      exact IsIntegral.of_pow (Nat.mul_pos hh0 hN0) (isIntegral_of_mem_compo hpow)
  haveI : FiniteDimensional ℚ (IntermediateField.adjoin ℚ S) :=
    IntermediateField.finiteDimensional_adjoin hint
  haveI hC : FiniteDimensional ℚ C := IntermediateField.finiteDimensional_sup _ _
  refine ⟨C.toSubfield, ?_, fun v hv => ⟨⟨χ.valTw s v, hval v hv⟩, rfl⟩⟩
  let e : C ≃ₗ[ℚ] C.toSubfield :=
    { toFun := fun x => ⟨x.1, x.2⟩
      invFun := fun x => ⟨x.1, x.2⟩
      map_add' := fun x y => rfl
      map_smul' := fun q x => rfl
      left_inv := fun x => rfl
      right_inv := fun x => rfl }
  exact LinearEquiv.finiteDimensional e

end PI.AlgValsFin.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.IsIntegralOfMemCompo =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.AlgValsFinOfTors =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.AlgValsFinOfTors", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.ClassSame\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.EvFLocalIdeleSelf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.FactorOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.FinprodNormEmbedding\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.IsIntegralOfMemCompo\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.OrdFEqOfClassOf\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.ValuedAtFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AlgValsFin.W

theorem algValsFin_of_tors (L : Type) [Field L] [NumberField L] (hT : TorsUnits L) : AlgValsFin L :=
  assemble hT (keyIdOf decomp locVal prodNorm) classPow classSame

end PI.AlgValsFin.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.AlgValsFinOfTors =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.NormEqOneOfForallZpow =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.NormEqOneOfForallZpow", "h": "module\n\npublic import Mathlib.Analysis.Complex.Norm\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.EqOneOfForallZpow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AlgValsFin.W

end PI.AlgValsFin.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.NormEqOneOfForallZpow =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.PowCardSubOneMem =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.PowCardSubOneMem", "h": "module\n\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain IsDedekindDomain.HeightOneSpectrum WithZero

namespace PI.AlgValsFin.W

variable {L : Type} [Field L] [NumberField L] (v : HeightOneSpectrum (𝓞 L))

theorem val_alg (y : L) : Valued.v (algebraMap L (v.adicCompletion L) y) = v.valuation L y := by
  exact valuedAdicCompletion_eq_valuation' v y

theorem val_pow_sub_le {x b : v.adicCompletion L} (hx : Valued.v x ≤ 1) (hb : Valued.v b ≤ 1) (k : ℕ) :
    Valued.v (x ^ k - b ^ k) ≤ Valued.v (x - b) := by
  have key : x ^ k - b ^ k = (∑ i ∈ Finset.range k, x ^ i * b ^ (k - 1 - i)) * (x - b) :=
    (geom_sum₂_mul x b k).symm
  rw [key, map_mul]
  have hs : Valued.v (∑ i ∈ Finset.range k, x ^ i * b ^ (k - 1 - i)) ≤ 1 := by
    apply Valuation.map_sum_le
    intro i _
    rw [map_mul, map_pow, map_pow]
    exact mul_le_one' (pow_le_one₀ zero_le' hx) (pow_le_one₀ zero_le' hb)
  exact mul_le_of_le_one_left' hs

theorem pow_card_sub_one_mem (n : ℕ) (b : 𝓞 L) (hb : b ∉ v.asIdeal) :
    b ^ Nat.card ((𝓞 L ⧸ v.asIdeal ^ n)ˣ) - 1 ∈ v.asIdeal ^ n := by
  obtain ⟨y, i, hi, hyi⟩ := v.isMaximal.exists_inv hb
  have h1 : (y * ∑ k ∈ Finset.range n, i ^ k) * b = 1 - i ^ n := by
    have hyb : y * b = 1 - i := by linear_combination hyi
    calc (y * ∑ k ∈ Finset.range n, i ^ k) * b = (y * b) * ∑ k ∈ Finset.range n, i ^ k := by ring
      _ = (1 - i) * ∑ k ∈ Finset.range n, i ^ k := by rw [hyb]
      _ = 1 - i ^ n := mul_neg_geom_sum i n
  have hcb : Ideal.Quotient.mk (v.asIdeal ^ n) (y * ∑ k ∈ Finset.range n, i ^ k) *
      Ideal.Quotient.mk (v.asIdeal ^ n) b = 1 := by
    rw [← map_mul, h1, map_sub, map_one,
      (Ideal.Quotient.eq_zero_iff_mem).mpr (Ideal.pow_mem_pow hi n), sub_zero]
  let u : (𝓞 L ⧸ v.asIdeal ^ n)ˣ := ⟨Ideal.Quotient.mk _ b, Ideal.Quotient.mk _ (y * ∑ k ∈ Finset.range n, i ^ k),
    by rw [mul_comm]; exact hcb, hcb⟩
  have hu : u ^ Nat.card ((𝓞 L ⧸ v.asIdeal ^ n)ˣ) = 1 := pow_card_eq_one'
  have h2 := congrArg Units.val hu
  rw [Units.val_pow_eq_pow_val, Units.val_one] at h2
  rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_pow, map_one]
  exact sub_eq_zero.mpr h2

theorem card_units_pos (n : ℕ) : 0 < Nat.card ((𝓞 L ⧸ v.asIdeal ^ n)ˣ) := by
  haveI : Finite (𝓞 L ⧸ v.asIdeal ^ n) := Ideal.finiteQuotientOfFreeOfNeBot _ (pow_ne_zero n v.ne_bot)
  exact Nat.card_pos

theorem exists_pow_close (n : ℕ) : ∃ N : ℕ, 0 < N ∧ ∀ x : v.adicCompletion L, Valued.v x = 1 →
    Valued.v (x ^ N - 1) ≤ exp (-(n : ℤ)) := by
  classical
  refine ⟨Nat.card ((𝓞 L ⧸ v.asIdeal ^ n)ˣ), card_units_pos v n, ?_⟩
  intro x hx
  set N := Nat.card ((𝓞 L ⧸ v.asIdeal ^ n)ˣ) with hN
  have hlt1 : (exp (-((n : ℤ) + 1)) : ℤᵐ⁰) < exp (-(n : ℤ)) := by
    rw [exp_lt_exp]
    omega
  have hle1 : (exp (-(n : ℤ)) : ℤᵐ⁰) ≤ 1 := by
    rw [← exp_zero, exp_le_exp]
    omega
  obtain ⟨y, hy⟩ : ∃ y : L, algebraMap L (v.adicCompletion L) y ∈
      {z : v.adicCompletion L | Valued.v (z - x) < exp (-((n : ℤ) + 1))} := by
    obtain ⟨π, hπ⟩ := v.intValuation_exists_uniformizer
    set w : v.adicCompletion L := algebraMap L (v.adicCompletion L) (algebraMap (𝓞 L) L π) ^ (n + 1)
      with hw_def
    have hw : Valued.v w = exp (-((n : ℤ) + 1)) := by
      rw [hw_def, map_pow, val_alg, valuation_of_algebraMap, hπ, ← WithZero.exp_nsmul]
      congr 1
      ring
    have hw0 : w ≠ 0 := by
      intro h0
      rw [h0, map_zero] at hw
      exact exp_ne_zero hw.symm
    have hnhds : {z : v.adicCompletion L | Valued.v (z - x) < exp (-((n : ℤ) + 1))} ∈ nhds x := by
      refine Valued.mem_nhds.2 ⟨Units.mk0 (Valued.v.restrict w) ((Valuation.ne_zero_iff _).2 hw0),
        fun z hz => ?_⟩
      simp only [Set.mem_setOf_eq, Units.val_mk0] at hz ⊢
      rw [← hw]
      exact (Valuation.restrict_lt_iff _).1 hz
    exact (denseRange_algebraMap L v).mem_nhds hnhds
  simp only [Set.mem_setOf_eq] at hy
  have hy1 : v.valuation L y ≤ 1 := by
    rw [← val_alg]
    calc Valued.v (algebraMap L (v.adicCompletion L) y)
        = Valued.v ((algebraMap L (v.adicCompletion L) y - x) + x) := by rw [sub_add_cancel]
      _ ≤ max (Valued.v (algebraMap L (v.adicCompletion L) y - x)) (Valued.v x) :=
          Valuation.map_add _ _ _
      _ ≤ 1 := max_le (le_trans hy.le (le_trans hlt1.le hle1)) hx.le
  obtain ⟨a, s, hs, rfl⟩ := IsFractionRing.div_surjective (A := 𝓞 L) (K := L) y
  have hs0 : algebraMap (𝓞 L) L s ≠ 0 :=
    (map_ne_zero_iff _ (IsFractionRing.injective (𝓞 L) L)).2 (nonZeroDivisors.ne_zero hs)
  have hsv : v.intValuation s ≠ 0 := by
    rw [← valuation_of_algebraMap (K := L)]
    exact (Valuation.ne_zero_iff _).2 hs0
  have has : v.intValuation a ≤ v.intValuation s := by
    rw [map_div₀, valuation_of_algebraMap, valuation_of_algebraMap,
      div_le_one₀ (zero_lt_iff.2 hsv)] at hy1
    exact hy1
  obtain ⟨g, hg⟩ := WithZero.ne_zero_iff_exists.1 hsv
  obtain ⟨t, ht⟩ := v.exists_intValuation_mul_sub_lt has (Multiplicative.ofAdd (-((n : ℤ) + 1)) * g)
  have hyt : Valued.v (algebraMap L (v.adicCompletion L) (algebraMap (𝓞 L) L a / algebraMap (𝓞 L) L s) -
      algebraMap L (v.adicCompletion L) (algebraMap (𝓞 L) L t)) < exp (-((n : ℤ) + 1)) := by
    rw [← map_sub, val_alg]
    have e : algebraMap (𝓞 L) L a / algebraMap (𝓞 L) L s - algebraMap (𝓞 L) L t =
        algebraMap (𝓞 L) L (a - t * s) / algebraMap (𝓞 L) L s := by
      rw [map_sub, map_mul, sub_div, mul_div_assoc, div_self hs0, mul_one]
    rw [e, map_div₀, valuation_of_algebraMap, valuation_of_algebraMap,
      div_lt_iff₀ (zero_lt_iff.2 hsv), ← hg]
    calc v.intValuation (a - t * s) < ((Multiplicative.ofAdd (-((n : ℤ) + 1)) * g : Multiplicative ℤ) : ℤᵐ⁰) := ht
      _ = exp (-((n : ℤ) + 1)) * (g : ℤᵐ⁰) := by rw [WithZero.coe_mul]; rfl
  set B := algebraMap L (v.adicCompletion L) (algebraMap (𝓞 L) L t) with hB
  set Y := algebraMap L (v.adicCompletion L) (algebraMap (𝓞 L) L a / algebraMap (𝓞 L) L s) with hY
  have hxb : Valued.v (x - B) < exp (-((n : ℤ) + 1)) := by
    have e : x - B = -(Y - x) + (Y - B) := by ring
    rw [e]
    exact lt_of_le_of_lt (Valuation.map_add _ _ _) (max_lt (by rwa [Valuation.map_neg]) hyt)
  have hb1 : Valued.v B ≤ 1 := by
    rw [hB, val_alg, valuation_of_algebraMap]
    exact v.intValuation_le_one t
  have hbP : t ∉ v.asIdeal := by
    intro hmem
    have h1 : v.intValuation t ≤ exp (-((1 : ℕ) : ℤ)) := by
      rw [intValuation_le_pow_iff_mem, pow_one]
      exact hmem
    have h1' : Valued.v B < 1 := by
      rw [hB, val_alg, valuation_of_algebraMap]
      refine lt_of_le_of_lt h1 ?_
      rw [← exp_zero, exp_lt_exp]
      omega
    have h2 : Valued.v (x - B) < 1 := lt_of_lt_of_le hxb (le_trans hlt1.le hle1)
    have h3 : Valued.v x < 1 := by
      have e : x = (x - B) + B := by ring
      rw [e]
      exact lt_of_le_of_lt (Valuation.map_add _ _ _) (max_lt h2 h1')
    rw [hx] at h3
    exact lt_irrefl _ h3
  have hpow := pow_card_sub_one_mem v n t hbP
  have h2 : Valued.v (B ^ N - 1) ≤ exp (-(n : ℤ)) := by
    rw [hB, ← map_pow, ← map_pow, ← map_one (algebraMap L (v.adicCompletion L)), ← map_sub, val_alg,
      ← map_one (algebraMap (𝓞 L) L), ← map_sub, valuation_of_algebraMap, intValuation_le_pow_iff_mem]
    exact hpow
  have h1 : Valued.v (x ^ N - B ^ N) ≤ exp (-(n : ℤ)) :=
    le_trans (val_pow_sub_le v hx.le hb1 N) (le_trans hxb.le hlt1.le)
  calc Valued.v (x ^ N - 1) = Valued.v ((x ^ N - B ^ N) + (B ^ N - 1)) := by
        rw [sub_add_sub_cancel]
    _ ≤ max (Valued.v (x ^ N - B ^ N)) (Valued.v (B ^ N - 1)) := Valuation.map_add _ _ _
    _ ≤ exp (-(n : ℤ)) := max_le h1 h2

end PI.AlgValsFin.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.PowCardSubOneMem =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.TorsUnitsOfNbhd =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.TorsUnitsOfNbhd", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.ClassSame\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.EvFLocalIdeleSelf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.NormEqOneOfForallZpow\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.PowCardSubOneMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.NeutralLocalFields.LocalFieldComparison.HCFFromRecipA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.L2.Host Neutral.B1 ReciprocityTheory.Neutral.Bridge.HCFR

namespace PI.AlgValsFin.W

def ufinSub (L : Type) [Field L] [NumberField L] : Subgroup (Ideles L) where
  carrier := UFin L
  one_mem' := ⟨rfl, fun v => by
    show Valued.v (1 : v.adicCompletion L) = 1
    exact map_one _⟩
  mul_mem' := fun {a b} ha hb => ⟨by
    change (a : AdeleRing (𝓞 L) L).1 * (b : AdeleRing (𝓞 L) L).1 = 1
    rw [ha.1, hb.1, mul_one],
    fun v => by rw [comp_mul, map_mul, ha.2 v, hb.2 v, mul_one]⟩
  inv_mem' := fun {a} ha => by
    refine ⟨?_, fun v => ?_⟩
    · have e : (a : AdeleRing (𝓞 L) L).1 * (a⁻¹ : Ideles L).val.1 = 1 := by
        change ((a * a⁻¹ : Ideles L) : AdeleRing (𝓞 L) L).1 = 1
        rw [mul_inv_cancel]; rfl
      rw [ha.1, one_mul] at e
      exact e
    · have e := congrArg Valued.v (comp_mul_inv L a v)
      rw [map_mul, ha.2 v, one_mul, map_one] at e
      exact e

variable {L : Type} [Field L] [NumberField L]

theorem pow_close (S : Finset (HeightOneSpectrum (𝓞 L))) (n : ℕ) :
    ∃ M : ℕ, 0 < M ∧ ∀ y ∈ UFin L, ∀ v ∈ S,
      Valued.v (((y ^ M : Ideles L) : AdeleRing (𝓞 L) L).2 v - 1) ≤ WithZero.exp (-(n : ℤ)) := by
  choose N hNpos hN using fun v : HeightOneSpectrum (𝓞 L) => exists_pow_close v n
  refine ⟨∏ v ∈ S, N v, Finset.prod_pos fun v _ => hNpos v, fun y hy v hv => ?_⟩
  obtain ⟨r, hr⟩ : N v ∣ ∏ w ∈ S, N w := Finset.dvd_prod_of_mem N hv
  have hcomp : ((y ^ (∏ w ∈ S, N w) : Ideles L) : AdeleRing (𝓞 L) L).2 v =
      ((y : AdeleRing (𝓞 L) L).2 v) ^ (∏ w ∈ S, N w) := by
    rw [← evF_val, ← evF_val, map_pow, Units.val_pow_eq_pow_val]
  rw [hcomp, hr, pow_mul]
  have hy1 : Valued.v ((y : AdeleRing (𝓞 L) L).2 v) = 1 := hy.2 v
  have hx1 : Valued.v (((y : AdeleRing (𝓞 L) L).2 v) ^ N v) ≤ 1 := by
    rw [map_pow, hy1, one_pow]
  calc Valued.v ((((y : AdeleRing (𝓞 L) L).2 v) ^ N v) ^ r - 1)
      = Valued.v ((((y : AdeleRing (𝓞 L) L).2 v) ^ N v) ^ r - 1 ^ r) := by rw [one_pow]
    _ ≤ Valued.v (((y : AdeleRing (𝓞 L) L).2 v) ^ N v - 1) :=
        val_pow_sub_le v hx1 (by rw [map_one]) r
    _ ≤ WithZero.exp (-(n : ℤ)) := hN v _ hy1

theorem torsUnits_of_nbhd (L : Type) [Field L] [NumberField L]
    (hnb : ∀ W : Set (Ideles L), IsOpen W → (1 : Ideles L) ∈ W →
      ∃ (S : Finset (HeightOneSpectrum (𝓞 L))) (n : ℕ), ∀ x ∈ UFin L,
        (∀ v ∈ S, Valued.v ((x : AdeleRing (𝓞 L) L).2 v - 1) ≤ WithZero.exp (-(n : ℤ))) → x ∈ W) :
    TorsUnits L := by
  intro χ
  set W : Set (Ideles L) := χ.1 ⁻¹' {u : ℂˣ | ‖(u : ℂ) - 1‖ < 1} with hW
  have hWo : IsOpen W := by
    refine IsOpen.preimage χ.2.1 ?_
    exact isOpen_lt (continuous_norm.comp (Units.continuous_val.sub continuous_const)) continuous_const
  have hW1 : (1 : Ideles L) ∈ W := by
    simp [hW]
  obtain ⟨S, n, hSn⟩ := hnb W hWo hW1
  obtain ⟨M, hM, hclose⟩ := pow_close (L := L) S n
  refine ⟨M, hM, fun x hx => ?_⟩
  have hmem : ∀ k : ℤ, (x ^ k) ^ M ∈ W := by
    intro k
    have hk : x ^ k ∈ UFin L := (ufinSub L).zpow_mem hx k
    have hkM : (x ^ k) ^ M ∈ UFin L := (ufinSub L).pow_mem hk M
    exact hSn _ hkM (fun v hv => hclose _ hk v hv)
  have hz : ((χ.1 (x ^ M) : ℂˣ) : ℂ) = 1 := by
    apply _root_.UpperTheory.Reformulated.B.Qk23.eq_one_of_forall_zpow
    intro k
    have e : ((χ.1 (x ^ M) : ℂˣ) : ℂ) ^ k = ((χ.1 ((x ^ k) ^ M) : ℂˣ) : ℂ) := by
      rw [← Units.val_zpow_eq_zpow_val, ← map_zpow, ← zpow_natCast, ← zpow_natCast, ← zpow_mul,
        ← zpow_mul, mul_comm]
    rw [e]
    exact hmem k
  rw [← map_pow]
  exact Units.ext hz

end PI.AlgValsFin.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.TorsUnitsOfNbhd =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.AlgValsFinMain =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.AlgValsFinMain", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.ClassSame\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.AlgValsFinOfTors\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.InvMemUFin\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.TorsUnitsOfNbhd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AlgValsFin.W

theorem torsUnits (L : Type) [Field L] [NumberField L] : TorsUnits L :=
  torsUnits_of_nbhd L fun W hW h1 => exists_nbhd W hW h1

theorem algValsFin_main (L : Type) [Field L] [NumberField L] : AlgValsFin L :=
  algValsFin_of_tors L (torsUnits L)

end PI.AlgValsFin.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AlgebraicValuesFinite.AlgValsFinMain =====
