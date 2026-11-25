module

public import Mathlib.NumberTheory.NumberField.InfinitePlace.Embeddings
public import Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic
public import Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes
public import Mathlib.Analysis.Matrix.Hermitian
public import Development.WeilBound.CoreStatements.SesquilinearFractions.DCompl
public import Development.WeilBound.CoreStatements.SesquilinearFractions.DOkBasis
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsTransition
public import Mathlib.Algebra.AffineMonoid.Basic
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot
public import Development.WeilBound.CoreStatements.SesquilinearFractions.HermSplit
public import Development.WeilBound.CoreStatements.SesquilinearFractions.PrincipalRootReZeroImSq
public import Development.WeilBound.CoreStatements.SesquilinearFractions.SesqSesquilinearSkewHermitian
public import Development.WeilBound.CoreStatements.SesquilinearFractions.CoefZeroOfPer
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeGram
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SesqSesquilinearSkewHermitian
public import Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsNsmulMemSpanFullFamily
public import Mathlib.Analysis.Complex.Order
public import Mathlib.LinearAlgebra.Matrix.PosDef
public import Development.WeilBound.CoreStatements.SesquilinearFractions.UltrametricNormProdSubLt
public import Mathlib.Data.Matrix.ColumnRowPartitioned
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.PeriodHermitianTypeCompatibility
public import Mathlib.Analysis.Normed.Field.Basic
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.Topology.MetricSpace.Ultra.Basic
public import Development.AutomorphicSpectrum.Proofs.AdelicProofs.PadicLogIdealMaxElement
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocalBasisGramDeterminantBound
import Mathlib.Tactic.Linter.Style
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PadicIntegralIffDenominator
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.LieModel
import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.VolumeFundamentalDomainStdRealBasis

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsIntegerNearConjVector, Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsIntegralPosDefPerturbation, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsIntegralPosDefPerturbation, Development.WeilBound.CoreStatements.SesquilinearFractions.AlgebraMapIntegralCoeffsRaw, Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsCommonDenominatorCoeffs, Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsOrthogonalLocalBasisExtension, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsOrthogonalLocalBasis, Development.WeilBound.CoreStatements.SesquilinearFractions.EqZeroOfCoef, Development.WeilBound.CoreStatements.SesquilinearFractions.ImIMulDivSq, Development.WeilBound.CoreStatements.SesquilinearFractions.PerDiscrete, Development.WeilBound.CoreStatements.SesquilinearFractions.QReInr, Development.WeilBound.CoreStatements.SesquilinearFractions.GramSignatureOrthogonalSplit, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GramSignatureOrthogonalSplit, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NegDefBlockOfPosDef, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PeriodGramHermitianSignature, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UltrametricDetNormStable, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PurePeriodLocalBasisExists

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsIntegerNearConjVector =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsIntegerNearConjVector", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.Embeddings\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.NumberField.CanonicalEmbedding.Basic\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

noncomputable section

namespace PositivityTheory.Xgf

theorem exists_integer_near_conj_vector : ∀ (E : Type) [Field E] [NumberField E], ∃ B : ℝ, ∀ c : (E →+* ℂ) → ℂ, (∀ τ, c (ComplexEmbedding.conjugate τ) = starRingEnd ℂ (c τ)) → ∃ a : 𝓞 E, ∀ τ : E →+* ℂ, ‖τ (a : E) - c τ‖ ≤ B := by
  intro E _ _
  classical
  obtain ⟨bC, hv⟩ : ∃ bC : Module.Basis (Module.Free.ChooseBasisIndex ℤ (𝓞 E)) ℂ ((E →+* ℂ) → ℂ),
      ∀ i (τ : E →+* ℂ), bC i τ = τ (RingOfIntegers.basis E i : E) :=
    ⟨canonicalEmbedding.latticeBasis E, fun i τ => by
      rw [canonicalEmbedding.latticeBasis_apply, canonicalEmbedding.apply_at, integralBasis_apply]⟩
  refine ⟨∑ τ : E →+* ℂ, ∑ i, ‖τ (RingOfIntegers.basis E i : E)‖, fun c hc => ?_⟩
  have hsum : c = ∑ i, bC.repr c i • bC i := (bC.sum_repr c).symm
  have hcτ : ∀ τ : E →+* ℂ, c τ = ∑ i, bC.repr c i * τ (RingOfIntegers.basis E i : E) := by
    intro τ
    conv_lhs => rw [hsum]
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, hv]
  have hconj : ∀ τ : E →+* ℂ,
      ∑ i, starRingEnd ℂ (bC.repr c i) * τ (RingOfIntegers.basis E i : E) = c τ := by
    intro τ
    have h1 := hc τ
    rw [hcτ (ComplexEmbedding.conjugate τ)] at h1
    have h2 := congrArg (starRingEnd ℂ) h1

    rw [Complex.conj_conj, map_sum] at h2
    rw [← h2]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_mul, ComplexEmbedding.conjugate_coe_eq, Complex.conj_conj]
  have hli := Fintype.linearIndependent_iff.mp bC.linearIndependent
    (fun i => bC.repr c i - starRingEnd ℂ (bC.repr c i)) (by
      funext τ
      simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply, hv, sub_mul,
        Finset.sum_sub_distrib]
      rw [hconj τ, ← hcτ τ, sub_self])
  have hreal : ∀ i, (bC.repr c i).im = 0 := by
    intro i
    have h3 := congrArg Complex.im (hli i)
    rw [Complex.sub_im, Complex.conj_im, sub_neg_eq_add, Complex.zero_im] at h3
    linarith
  obtain ⟨x, hx⟩ : ∃ x : Module.Free.ChooseBasisIndex ℤ (𝓞 E) → ℝ, ∀ i, bC.repr c i = (x i : ℂ) :=
    ⟨fun i => (bC.repr c i).re, fun i => Complex.ext (by simp) (by simp [hreal i])⟩
  refine ⟨∑ i, round (x i) • RingOfIntegers.basis E i, fun τ => ?_⟩
  have hτa : τ ((∑ i, round (x i) • RingOfIntegers.basis E i : 𝓞 E) : E) =
      ∑ i, (round (x i) : ℂ) * τ (RingOfIntegers.basis E i : E) := by
    change (τ.comp (algebraMap (𝓞 E) E)) (∑ i, round (x i) • RingOfIntegers.basis E i) = _

    rw [map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_zsmul, zsmul_eq_mul]
    rfl
  have hcx : c τ = ∑ i, (x i : ℂ) * τ (RingOfIntegers.basis E i : E) := by
    rw [hcτ τ]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [hx i]
  rw [hτa, hcx, ← Finset.sum_sub_distrib]
  calc ‖∑ i, ((round (x i) : ℂ) * τ (RingOfIntegers.basis E i : E) -
          (x i : ℂ) * τ (RingOfIntegers.basis E i : E))‖
      ≤ ∑ i, ‖(round (x i) : ℂ) * τ (RingOfIntegers.basis E i : E) -
          (x i : ℂ) * τ (RingOfIntegers.basis E i : E)‖ := norm_sum_le _ _
    _ ≤ ∑ i, ‖τ (RingOfIntegers.basis E i : E)‖ := Finset.sum_le_sum fun i _ => by
        rw [← sub_mul, norm_mul]
        have hr : ‖(round (x i) : ℂ) - (x i : ℂ)‖ ≤ 1 := by
          have h := abs_sub_round (x i)
          rw [show ((round (x i) : ℤ) : ℂ) - ((x i : ℝ) : ℂ) = (((round (x i) : ℝ) - x i : ℝ) : ℂ) by
            push_cast; ring, Complex.norm_real, Real.norm_eq_abs, abs_sub_comm]
          linarith
        calc ‖(round (x i) : ℂ) - (x i : ℂ)‖ * ‖τ (RingOfIntegers.basis E i : E)‖
            ≤ 1 * ‖τ (RingOfIntegers.basis E i : E)‖ := mul_le_mul_of_nonneg_right hr (norm_nonneg _)
          _ = ‖τ (RingOfIntegers.basis E i : E)‖ := one_mul _
    _ ≤ ∑ τ' : E →+* ℂ, ∑ i, ‖τ' (RingOfIntegers.basis E i : E)‖ :=
        Finset.single_le_sum (f := fun τ' : E →+* ℂ => ∑ i, ‖τ' (RingOfIntegers.basis E i : E)‖)
          (fun τ' _ => Finset.sum_nonneg fun i _ => norm_nonneg _) (Finset.mem_univ τ)

end PositivityTheory.Xgf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsIntegerNearConjVector =====

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsIntegralPosDefPerturbation =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsIntegralPosDefPerturbation", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.Embeddings\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsIntegerNearConjVector\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Hermitian\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

noncomputable section

namespace PositivityTheory.Xgf

private theorem eventually_posDef_add_mul_conjTranspose {I J : Type} [Fintype I] [Fintype J] [DecidableEq I]
    (C : Matrix I J ℂ) (M : Matrix J J ℂ) (hM : M.IsHermitian) (h : (C * M * Cᴴ).PosDef) :
    ∀ᶠ D in nhds (0 : Matrix I J ℂ), ((C + D) * M * (C + D)ᴴ).PosDef := by
  let g : Matrix I J ℂ × (I → ℂ) → ℝ := fun p =>
    (star p.2 ⬝ᵥ (((C + p.1) * M * (C + p.1)ᴴ) *ᵥ p.2)).re
  have hg : Continuous g := by
    refine Complex.continuous_re.comp ?_
    refine Continuous.dotProduct (continuous_star.comp continuous_snd) ?_
    refine Continuous.matrix_mulVec ?_ continuous_snd
    refine Continuous.matrix_mul ?_ ?_
    · exact (continuous_const.add continuous_fst).matrix_mul continuous_const
    · exact (continuous_const.add continuous_fst).matrix_conjTranspose
  have hK : IsCompact (Metric.sphere (0 : I → ℂ) 1) := isCompact_sphere 0 1
  have key : ∀ᶠ D in nhds (0 : Matrix I J ℂ), ∀ u ∈ Metric.sphere (0 : I → ℂ) 1, 0 < g (D, u) := by
    apply hK.eventually_forall_of_forall_eventually
    intro u hu
    have hu0 : u ≠ 0 := by
      rintro rfl
      simp at hu
    have h0 : 0 < g (0, u) := by
      have hp := h.dotProduct_mulVec_pos hu0
      have hp' := (Complex.lt_def.mp hp).1
      simpa [g] using hp'
    exact hg.continuousAt.eventually (lt_mem_nhds h0)
  filter_upwards [key] with D hD
  have hH : ((C + D) * M * (C + D)ᴴ).IsHermitian := isHermitian_mul_mul_conjTranspose _ hM
  rw [Matrix.posDef_iff_dotProduct_mulVec]
  refine ⟨hH, fun x hx => ?_⟩
  have hr : 0 < ‖x‖ := norm_pos_iff.mpr hx
  set u : I → ℂ := ((‖x‖⁻¹ : ℝ) : ℂ) • x with hu_def
  have hu : u ∈ Metric.sphere (0 : I → ℂ) 1 := by
    rw [mem_sphere_zero_iff_norm, hu_def, norm_smul, Complex.norm_real, Real.norm_eq_abs,
      abs_of_pos (inv_pos.mpr hr), inv_mul_cancel₀ hr.ne']
  have hx' : x = ((‖x‖ : ℝ) : ℂ) • u := by
    rw [hu_def, smul_smul, ← Complex.ofReal_mul, mul_inv_cancel₀ hr.ne', Complex.ofReal_one, one_smul]
  have hpos := hD u hu
  rw [Complex.lt_def]
  refine ⟨?_, (hH.im_star_dotProduct_mulVec_self x).symm⟩
  rw [hx', star_smul, Matrix.mulVec_smul, dotProduct_smul, smul_dotProduct]
  simp only [smul_eq_mul, Complex.star_def, Complex.conj_ofReal, Complex.re_ofReal_mul, Complex.zero_re]
  exact mul_pos hr (mul_pos hr hpos)

theorem exists_integral_posDef_perturbation : ∀ (E : Type) [Field E] [NumberField E] (Ψ : Set (E →+* ℂ)) (I J : Type) [Fintype I] [Fintype J] [DecidableEq I] [DecidableEq J] (M : (E →+* ℂ) → Matrix J J ℂ) (C : (E →+* ℂ) → Matrix I J ℂ) (X₀ : Matrix I J (𝓞 E)) (n : ℕ), n ≠ 0 → (∀ τ ∈ Ψ, ComplexEmbedding.conjugate τ ∉ Ψ) → (∀ τ ∈ Ψ, (M τ).IsHermitian ∧ (C τ * M τ * (C τ)ᴴ).PosDef) → ∃ Y : Matrix I J (𝓞 E), ∀ τ ∈ Ψ, (((X₀ + n • Y).map fun a => τ (a : E)) * M τ * ((X₀ + n • Y).map fun a => τ (a : E))ᴴ).PosDef := by
  intro E _ _ Ψ I J _ _ _ _ M C X₀ n hn hΨ hpos
  classical
  obtain ⟨B, hB⟩ := exists_integer_near_conj_vector E
  let f : ℕ → I → J → (E →+* ℂ) → ℂ := fun k i j τ => ((k : ℂ) * C τ i j - τ (X₀ i j : E)) / n
  let c : ℕ → I → J → (E →+* ℂ) → ℂ := fun k i j σ =>
    if σ ∈ Ψ then f k i j σ
    else if ComplexEmbedding.conjugate σ ∈ Ψ then starRingEnd ℂ (f k i j (ComplexEmbedding.conjugate σ))
    else 0
  have hc : ∀ k i j σ, c k i j (ComplexEmbedding.conjugate σ) = starRingEnd ℂ (c k i j σ) := by
    intro k i j σ
    by_cases h1 : σ ∈ Ψ
    · have h2 : ComplexEmbedding.conjugate σ ∉ Ψ := hΨ σ h1
      simp [c, h1, h2]
    · by_cases h2 : ComplexEmbedding.conjugate σ ∈ Ψ
      · simp [c, h1, h2]
      · simp [c, h1, h2]
  choose a ha using fun (k : ℕ) (i : I) (j : J) => hB (c k i j) (hc k i j)
  let D : ℕ → (E →+* ℂ) → Matrix I J ℂ := fun k τ =>
    Matrix.of fun i j => ((n : ℂ) / k) * (τ (a k i j : E) - c k i j τ)
  have hX : ∀ k : ℕ, k ≠ 0 → ∀ τ ∈ Ψ,
      ((X₀ + n • Matrix.of (a k)).map fun x => τ (x : E)) = (k : ℂ) • (C τ + D k τ) := by
    intro k hk τ hτ
    ext i j
    have hk' : (k : ℂ) ≠ 0 := by exact_mod_cast hk
    have hn' : (n : ℂ) ≠ 0 := by exact_mod_cast hn
    simp only [Matrix.map_apply, Matrix.add_apply, Matrix.smul_apply, Matrix.of_apply, D, c, f,
      if_pos hτ, smul_eq_mul]
    push_cast
    simp only [map_add (f := _), nsmul_eq_mul, map_mul, map_natCast]
    field_simp
    ring
  have hD : ∀ τ, Filter.Tendsto (fun k : ℕ => D k τ) Filter.atTop (nhds 0) := by
    intro τ
    refine tendsto_pi_nhds.mpr (fun i => tendsto_pi_nhds.mpr (fun j => ?_))
    have hb : Filter.Tendsto (fun k : ℕ => (n : ℝ) * B / k) Filter.atTop (nhds 0) :=
      tendsto_const_div_atTop_nhds_zero_nat _
    refine squeeze_zero_norm' (Filter.Eventually.of_forall fun k => ?_) hb
    calc ‖D k τ i j‖ = ((n : ℝ) / k) * ‖τ (a k i j : E) - c k i j τ‖ := by
          simp only [D, Matrix.of_apply, norm_mul, norm_div, Complex.norm_natCast]
      _ ≤ ((n : ℝ) / k) * B := mul_le_mul_of_nonneg_left (ha k i j τ) (by positivity)
      _ = (n : ℝ) * B / k := by ring
  have hev : ∀ τ ∈ Ψ, ∀ᶠ k in Filter.atTop,
      ((C τ + D k τ) * M τ * (C τ + D k τ)ᴴ).PosDef := fun τ hτ =>
    (hD τ).eventually (eventually_posDef_add_mul_conjTranspose (C τ) (M τ) (hpos τ hτ).1 (hpos τ hτ).2)
  have hall : ∀ᶠ k in Filter.atTop, ∀ τ ∈ Ψ,
      ((C τ + D k τ) * M τ * (C τ + D k τ)ᴴ).PosDef :=
    (Filter.eventually_all_finite (Set.toFinite Ψ)).mpr hev
  obtain ⟨k, hk1, hk2⟩ := (hall.and (Filter.eventually_ne_atTop 0)).exists
  refine ⟨Matrix.of (a k), fun τ hτ => ?_⟩
  rw [hX k hk2 τ hτ]
  have hkpos : (0 : ℂ) < (k : ℂ) := by exact_mod_cast Nat.pos_of_ne_zero hk2
  have h2 := (hk1 τ hτ).smul (mul_pos hkpos hkpos)
  convert h2 using 1
  simp only [Matrix.conjTranspose_smul, Matrix.smul_mul, Matrix.mul_smul, smul_smul, star_natCast]

end PositivityTheory.Xgf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsIntegralPosDefPerturbation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsIntegralPosDefPerturbation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsIntegralPosDefPerturbation", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.Embeddings\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsIntegralPosDefPerturbation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

namespace GlobalTheory.CompanionTheory.Ar.Fl

theorem frame_congr_posDef_on_places : ∀ (E : Type) [Field E] [NumberField E] (Ψ : Set (E →+* ℂ)) (I J : Type) [Fintype I] [Fintype J] [DecidableEq I] [DecidableEq J] (M : (E →+* ℂ) → Matrix J J ℂ) (C : (E →+* ℂ) → Matrix I J ℂ) (X₀ : Matrix I J (𝓞 E)) (n : ℕ), n ≠ 0 → (∀ τ ∈ Ψ, ComplexEmbedding.conjugate τ ∉ Ψ) → (∀ τ ∈ Ψ, (M τ).IsHermitian ∧ (C τ * M τ * (C τ)ᴴ).PosDef) → ∃ Y : Matrix I J (𝓞 E), ∀ τ ∈ Ψ, (((X₀ + n • Y).map fun a => τ (a : E)) * M τ * ((X₀ + n • Y).map fun a => τ (a : E))ᴴ).PosDef :=
  @PositivityTheory.Xgf.exists_integral_posDef_perturbation

end GlobalTheory.CompanionTheory.Ar.Fl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsIntegralPosDefPerturbation =====

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.AlgebraMapIntegralCoeffsRaw =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.AlgebraMapIntegralCoeffsRaw", "h": "module\n\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.DCompl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Fl

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem algebraMap_bar_eq_conj (a : 𝓞 E) :
    algebraMap (𝓞 E) E (H.bar a) = IsCMField.complexConj E (algebraMap (𝓞 E) E a) := H.bar_eq a

def familyCombination (D : Datum H) {p : ℕ} (x' : Fin p → D.La) : (Fin p → 𝓞 E) →ₗ[𝓞 E] D.La where
  toFun c := ∑ a, c a • x' a
  map_add' c c' := by simp [add_smul, Finset.sum_add_distrib]
  map_smul' r c := by simp [Finset.smul_sum, smul_smul]

section Maps

variable (D : Datum H) {p : ℕ} (x' : Fin p → D.La) (m : ℕ)
  (hm : ∀ y a, ∃ g : 𝓞 E, (g : E) = m * projectionCoeffs D x' y a)

def integralCoeffsRaw (y : D.La) (a : Fin p) : 𝓞 E := Classical.choose (hm y a)

theorem algebraMap_integralCoeffsRaw (y : D.La) (a : Fin p) :
    algebraMap (𝓞 E) E (integralCoeffsRaw D x' m hm y a) = m * projectionCoeffs D x' y a := Classical.choose_spec (hm y a)

def integralCoeffs : D.La →ₗ[𝓞 E] (Fin p → 𝓞 E) where
  toFun y a := H.bar (integralCoeffsRaw D x' m hm y a)
  map_add' y y' := by
    funext a
    apply IsFractionRing.injective (𝓞 E) E
    simp only [Pi.add_apply]
    rw [map_add (f := _), algebraMap_bar_eq_conj, algebraMap_bar_eq_conj, algebraMap_bar_eq_conj, algebraMap_integralCoeffsRaw, algebraMap_integralCoeffsRaw, algebraMap_integralCoeffsRaw, projectionCoeffs_add,
      Pi.add_apply, mul_add, map_add]
  map_smul' c y := by
    funext a
    apply IsFractionRing.injective (𝓞 E) E
    simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply]
    rw [map_mul, algebraMap_bar_eq_conj, algebraMap_bar_eq_conj, algebraMap_integralCoeffsRaw, algebraMap_integralCoeffsRaw, projectionCoeffs_smul, Pi.smul_apply, smul_eq_mul,
      map_mul, map_mul, map_mul, IsCMField.complexConj_apply_apply, map_natCast]
    show _ = ((c : 𝓞 E) : E) * _
    ring

theorem conj_integralCoeffs (y : D.La) (a : Fin p) :
    IsCMField.complexConj E (algebraMap (𝓞 E) E (integralCoeffs D x' m hm y a)) = m * projectionCoeffs D x' y a := by
  show IsCMField.complexConj E (algebraMap (𝓞 E) E (H.bar (integralCoeffsRaw D x' m hm y a))) = _
  rw [algebraMap_bar_eq_conj, IsCMField.complexConj_apply_apply, algebraMap_integralCoeffsRaw]

def orthogonalComponent : D.La →ₗ[𝓞 E] D.La := (m : 𝓞 E) • LinearMap.id - familyCombination D x' ∘ₗ integralCoeffs D x' m hm

theorem orthogonalComponent_mem (hdet : (gramE D x').det ≠ 0) (y : D.La) : orthogonalComponent D x' m hm y ∈ orthogonalFamilyAlt D x' := by
  show ∀ a, sesq D (x' a) (orthogonalComponent D x' m hm y) = 0
  intro b
  have hsub : ∀ u v w : D.La, sesq D u (v - w) = sesq D u v - sesq D u w := by
    intro u v w
    simp only [sesq, map_sub, Int.cast_sub, sub_mul, Finset.sum_sub_distrib]
  have hsm : ∀ u v : D.La, sesq D u ((m : 𝓞 E) • v) = m * sesq D u v := by
    intro u v
    rw [Nat.cast_smul_eq_nsmul]
    simp only [sesq, map_nsmul, nsmul_eq_mul, Int.cast_mul, Int.cast_natCast, Finset.mul_sum,
      _root_.mul_assoc]
  have hcomb : familyCombination D x' (integralCoeffs D x' m hm y) =
      ∑ a, integralCoeffs D x' m hm y a • x' a := rfl
  have hG := congrFun (gram_mulVec_projection_coeffs D x' hdet y) b
  simp only [Matrix.mulVec, dotProduct, pairingVector] at hG
  have hd : ∀ a, IsCMField.complexConj E ((integralCoeffs D x' m hm y a : 𝓞 E) : E) =
      m * projectionCoeffs D x' y a := fun a => conj_integralCoeffs D x' m hm y a
  simp only [orthogonalComponent, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply,
    LinearMap.comp_apply]
  rw [hsub, hsm, hcomb, sesq_integral_combination]
  simp only [hd]
  rw [← hG, Finset.mul_sum]
  apply sub_eq_zero.mpr
  apply Finset.sum_congr rfl
  intro a _
  ring

end Maps

end GlobalTheory.CompanionTheory.Ar.Fl

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.AlgebraMapIntegralCoeffsRaw =====

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsCommonDenominatorCoeffs =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsCommonDenominatorCoeffs", "h": "module\n\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.DCompl\nimport Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PadicIntegralIffDenominator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Fl

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

def projectionCoeffsAddHom (D : Datum H) {p : ℕ} (x' : Fin p → D.La) (a : Fin p) : D.La →+ E :=
  AddMonoidHom.mk' (fun y => projectionCoeffs D x' y a) (fun y y' => by rw [projectionCoeffs_add]; rfl)

theorem exists_common_denominator_coeffs (D : Datum H) {p : ℕ} (x' : Fin p → D.La) (ℓ : Nat.Primes) (hdet : (gramE D x').det ≠ 0)
    (hlog : ∀ j : E →+* ℂ_[ℓ], Real.log ‖j (gramE D x').det‖ =
      -(p : ℝ) * logIdeal (j.comp (algebraMap (𝓞 E) E)) (differentIdeal ℤ (𝓞 E))) :
    ∃ m : ℕ, ¬ (ℓ : ℕ) ∣ m ∧ ∀ y a, ∃ g : 𝓞 E, (g : E) = m * projectionCoeffs D x' y a := by
  classical
  have := D.fin
  obtain ⟨k, t, ht⟩ := Module.Finite.exists_fin (R := 𝓞 E) (M := D.La)
  have hpt : ∀ i a, ∃ n : ℕ, ¬ (ℓ : ℕ) ∣ n ∧ ∃ b : 𝓞 E, (n : E) * projectionCoeffs D x' (t i) a = b := fun i a => by
    obtain ⟨n, b, hn, hb⟩ := (_root_.GlobalTheory.CompanionTheory.Relay.padic_integral_iff_denominator E ℓ _).1 (fun j => padic_norm_projectionCoeffs_le D x' ℓ hdet hlog (t i) a j)
    exact ⟨n, hn, b, hb⟩
  choose n hn b hb using hpt
  refine ⟨∏ i, ∏ a, n i a, ?_, fun y a => ?_⟩
  · intro h
    obtain ⟨i, -, hi⟩ := (Prime.dvd_finsetProd_iff (Nat.prime_iff.1 ℓ.2) _).1 h
    obtain ⟨a, -, ha⟩ := (Prime.dvd_finsetProd_iff (Nat.prime_iff.1 ℓ.2) _).1 hi
    exact hn i a ha
  · have hy : y ∈ Submodule.span (𝓞 E) (Set.range t) := ht ▸ Submodule.mem_top
    obtain ⟨c, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun (𝓞 E)).1 hy
    have hdv : ∀ i, ∃ w : ℕ, ∏ i, ∏ a, n i a = n i a * w := fun i =>
      (Finset.dvd_prod_of_mem _ (Finset.mem_univ a)).trans (Finset.dvd_prod_of_mem _ (Finset.mem_univ i))
    choose w hw using hdv
    have he : projectionCoeffs D x' (∑ i, c i • t i) a = ∑ i, IsCMField.complexConj E (c i : E) * projectionCoeffs D x' (t i) a := by
      show projectionCoeffsAddHom D x' a (∑ i, c i • t i) = _

      rw [map_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      show projectionCoeffs D x' (c i • t i) a = _
      rw [projectionCoeffs_smul, Pi.smul_apply, smul_eq_mul]
    have hmem : ((∏ i, ∏ a, n i a : ℕ) : E) * projectionCoeffs D x' (∑ i, c i • t i) a ∈ (algebraMap (𝓞 E) E).range := by
      rw [he, Finset.mul_sum]
      refine Subring.sum_mem _ fun i _ => ?_
      rw [mul_left_comm, hw i, Nat.cast_mul, mul_comm ((n i a : ℕ) : E), _root_.mul_assoc, hb i a]
      exact Subring.mul_mem _ ⟨H.bar (c i), H.bar_eq (c i)⟩ (Subring.mul_mem _ ⟨(w i : 𝓞 E), by simp⟩ ⟨b i a, rfl⟩)
    obtain ⟨g, hg⟩ := hmem
    exact ⟨g, hg⟩

end GlobalTheory.CompanionTheory.Ar.Fl

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsCommonDenominatorCoeffs =====

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsOrthogonalLocalBasisExtension =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsOrthogonalLocalBasisExtension", "h": "module\n\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.AlgebraMapIntegralCoeffsRaw\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.DOkBasis\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsCommonDenominatorCoeffs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Fl

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem rank_free_prod (L : Type) [AddCommGroup L] [Module (𝓞 E) L] (p : ℕ) :
    Module.rank (𝓞 E) ((Fin p → 𝓞 E) × L) = p + Module.rank (𝓞 E) L := by
  have h := LinearMap.rank_range_add_rank_ker (LinearMap.fst (𝓞 E) (Fin p → 𝓞 E) L)
  rw [LinearMap.range_eq_top_of_surjective _ LinearMap.fst_surjective, rank_top, rank_fin_fun,
    LinearMap.ker_fst] at h
  rw [← h, ← (LinearEquiv.ofInjective (LinearMap.inr (𝓞 E) (Fin p → 𝓞 E) L)
    LinearMap.inr_injective).rank_eq]

theorem family_orthogonal_sum_injective (D : Datum H) {p : ℕ} (x' : Fin p → D.La) (hdet : (gramE D x').det ≠ 0)
    (c : Fin p → 𝓞 E) (z : orthogonalFamilyAlt D x') (h : familyCombination D x' c + (z : D.La) = 0) : c = 0 ∧ z = 0 := by
  have hadd : ∀ u v w : D.La, sesq D u (v + w) = sesq D u v + sesq D u w := by
    intro u v w
    simp only [sesq, map_add (f := _), Int.cast_add, add_mul, Finset.sum_add_distrib]
  have hcomb : familyCombination D x' c = ∑ a, c a • x' a := rfl
  have hv : (gramE D x') *ᵥ (fun a => IsCMField.complexConj E ((c a : 𝓞 E) : E)) = 0 := by
    funext b
    have hb := congrArg (sesq D (x' b)) h
    have h0 : sesq D (x' b) 0 = 0 := by simp [sesq]
    have hz : sesq D (x' b) (z : D.La) = 0 := z.2 b
    rw [hadd, hcomb, sesq_integral_combination, hz, h0, _root_.add_zero] at hb
    simpa [Matrix.mulVec, dotProduct] using hb
  have hc0 := Matrix.eq_zero_of_mulVec_eq_zero hdet hv
  have hc : c = 0 := by
    funext a
    have ha := congrFun hc0 a
    simp only [Pi.zero_apply, map_eq_zero] at ha
    first
      | simpa using ha
  refine ⟨hc, ?_⟩
  subst hc
  have h1 : familyCombination D x' 0 = 0 := map_zero _
  rw [h1, _root_.zero_add] at h
  exact Submodule.coe_eq_zero.mp h

theorem finrank_orthogonal_family (D : Datum H) {p q : ℕ} (x' : Fin p → D.La) (ℓ : Nat.Primes) (hpq : p + q = D.p + D.q)
    (hdet : (gramE D x').det ≠ 0) (m : ℕ) (hm0 : m ≠ 0) (hm : ∀ y a, ∃ g : 𝓞 E, (g : E) = m * projectionCoeffs D x' y a) :
    Module.finrank (𝓞 E) (orthogonalFamilyAlt D x') = q := by
  classical
  haveI := D.fin
  set L2 := orthogonalFamilyAlt D x' with hL2
  let ψ : ((Fin p → 𝓞 E) × L2) →ₗ[𝓞 E] D.La := (familyCombination D x').coprod L2.subtype
  have hψ : Function.Injective ψ := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    rintro ⟨c, z⟩ h
    obtain ⟨hc, hz⟩ := family_orthogonal_sum_injective D x' hdet c z h
    rw [hc, hz]
    rfl
  have hyp : ∀ y, orthogonalComponent D x' m hm y = m • y - familyCombination D x' (integralCoeffs D x' m hm y) := by
    intro y
    simp only [orthogonalComponent, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply,
      LinearMap.comp_apply, Nat.cast_smul_eq_nsmul]
  let φ : D.La →ₗ[𝓞 E] (Fin p → 𝓞 E) × L2 :=
    (integralCoeffs D x' m hm).prod
      ((orthogonalComponent D x' m hm).codRestrict L2 (fun y => orthogonalComponent_mem D x' m hm hdet y))
  have hφ : Function.Injective φ := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro y hy
    have h1 : integralCoeffs D x' m hm y = 0 := congrArg Prod.fst hy
    have h2 : orthogonalComponent D x' m hm y = 0 := by
      have h3 := congrArg (fun w => (w.2 : D.La)) hy
      simpa [φ] using h3
    rw [hyp, h1, map_zero, sub_zero] at h2
    exact nsmul_injective_lattice D hm0 (by rw [h2, smul_zero])
  have hr : Module.rank (𝓞 E) ((Fin p → 𝓞 E) × L2) = Module.rank (𝓞 E) D.La :=
    le_antisymm (LinearMap.rank_le_of_injective ψ hψ) (LinearMap.rank_le_of_injective φ hφ)
  rw [rank_free_prod, ← Module.finrank_eq_rank (𝓞 E) D.La, D.rank, ← hpq,
    ← Module.finrank_eq_rank (𝓞 E) L2] at hr
  norm_cast at hr
  omega

theorem exists_orthogonal_local_basis_extension (D : Datum H) (p q : ℕ) (ℓ : Nat.Primes) (x' : Fin p → D.La) (hpq : p + q = D.p + D.q)
    (hdet : (gramE D x').det ≠ 0) (hlog : ∀ j : E →+* ℂ_[ℓ], Real.log ‖j (gramE D x').det‖ =
      -(p : ℝ) * logIdeal (j.comp (algebraMap (𝓞 E) E)) (differentIdeal ℤ (𝓞 E))) :
    ∃ x : Fin p ⊕ Fin q → D.La, x ∘ Sum.inl = x' ∧ IsLocBasis (𝓞 E) ℓ x ∧
      ∀ a b, sesq D (x (.inl a)) (x (.inr b)) = 0 := by
  classical
  obtain ⟨m, hmℓ, hm⟩ := exists_common_denominator_coeffs D x' ℓ hdet hlog
  have hm0 : m ≠ 0 := by
    rintro rfl
    exact hmℓ (dvd_zero _)
  haveI := D.fin
  haveI := D.proj
  set L2 := orthogonalFamilyAlt D x' with hL2
  have hfr : Module.finrank (𝓞 E) L2 = q := finrank_orthogonal_family D x' ℓ hpq hdet m hm0 hm
  obtain ⟨b0, hb0⟩ := exists_local_basis_cm_order.locBasis' (𝓞 E) (ℓ : ℕ) ℓ.prop (M := L2)
  let b : Fin q → L2 := b0 ∘ Fin.cast hfr.symm
  have hbli : LinearIndependent (𝓞 E) b := hb0.1.comp _ (Fin.cast_injective _)
  obtain ⟨n, hnℓ, hn⟩ := hb0.2
  have hrange : Set.range b = Set.range b0 := Function.Surjective.range_comp (fun i => ⟨Fin.cast hfr i, by ext; simp⟩) _
  have hyp : ∀ y, orthogonalComponent D x' m hm y = m • y - familyCombination D x' (integralCoeffs D x' m hm y) := by
    intro y
    simp only [orthogonalComponent, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply,
      LinearMap.comp_apply, Nat.cast_smul_eq_nsmul]
  refine ⟨Sum.elim x' (fun j => (b j : D.La)), rfl, ⟨?_, ?_⟩, ?_⟩
  · rw [Fintype.linearIndependent_iff]
    intro g hg
    rw [Fintype.sum_sum_type] at hg
    simp only [Sum.elim_inl, Sum.elim_inr] at hg
    set z : L2 := ∑ j, g (Sum.inr j) • b j with hz
    have hzc : (z : D.La) = ∑ j, g (Sum.inr j) • (b j : D.La) := by simp [hz]
    have hpsi := family_orthogonal_sum_injective D x' hdet (fun a => g (Sum.inl a)) z (by rw [hzc]; exact hg)
    have hg2 : ∀ j, g (Sum.inr j) = 0 := Fintype.linearIndependent_iff.mp hbli _ hpsi.2
    rintro (a | j)
    · exact congrFun hpsi.1 a
    · exact hg2 j
  · refine ⟨m * n, ?_, ?_⟩
    · rw [ℓ.prop.dvd_mul]
      push_neg
      exact ⟨hmℓ, hnℓ⟩
    · intro y
      have hdec : m • y = familyCombination D x' (integralCoeffs D x' m hm y) + orthogonalComponent D x' m hm y := by
        rw [hyp]
        abel
      rw [_root_.mul_comm m n, mul_smul, hdec, smul_add]
      apply Submodule.add_mem
      · apply nsmul_mem
        show ∑ a, integralCoeffs D x' m hm y a • x' a ∈ _
        refine Submodule.sum_mem _ (fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨Sum.inl a, rfl⟩))
      · have h1 := hn ⟨_, orthogonalComponent_mem D x' m hm hdet y⟩
        rw [← hrange] at h1
        have h2 := Submodule.mem_map_of_mem (f := L2.subtype) h1
        rw [Submodule.map_span] at h2
        have h3 := Submodule.span_mono (R := 𝓞 E) (s := L2.subtype '' Set.range b)
          (t := Set.range (Sum.elim x' (fun j => (b j : D.La)))) (by
            rintro _ ⟨_, ⟨j, rfl⟩, rfl⟩
            exact ⟨Sum.inr j, rfl⟩) h2
        simpa using h3
  · intro a j
    exact (b j).2 a

end GlobalTheory.CompanionTheory.Ar.Fl

end

namespace PositivityTheory.Xgf

theorem exists_orthogonal_local_basis : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (p q : ℕ) (ℓ : Nat.Primes) (x' : Fin p → D.La), p + q = D.p + D.q → (gramE D x').det ≠ 0 → (∀ j : E →+* ℂ_[ℓ], Real.log ‖j (gramE D x').det‖ = -(p : ℝ) * logIdeal (j.comp (algebraMap (𝓞 E) E)) (differentIdeal ℤ (𝓞 E))) → ∃ x : Fin p ⊕ Fin q → D.La, x ∘ Sum.inl = x' ∧ IsLocBasis (𝓞 E) ℓ x ∧ ∀ a b, sesq D (x (.inl a)) (x (.inr b)) = 0 :=
  fun _ _ _ _ _ D p q ℓ x' hpq hdet hlog => GlobalTheory.CompanionTheory.Ar.Fl.exists_orthogonal_local_basis_extension D p q ℓ x' hpq hdet hlog

end PositivityTheory.Xgf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsOrthogonalLocalBasisExtension =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsOrthogonalLocalBasis =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsOrthogonalLocalBasis", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsTransition\npublic import Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\npublic import Mathlib.Algebra.AffineMonoid.Basic\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsOrthogonalLocalBasisExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

theorem _root_.GlobalTheory.CompanionTheory.Relay.exists_orthogonal_local_basis : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (p q : ℕ) (ℓ : Nat.Primes) (x' : Fin p → D.La), p + q = D.p + D.q → (gramE D x').det ≠ 0 → (∀ j : E →+* ℂ_[ℓ], Real.log ‖j (gramE D x').det‖ = -(p : ℝ) * logIdeal (j.comp (algebraMap (𝓞 E) E)) (differentIdeal ℤ (𝓞 E))) → ∃ x : Fin p ⊕ Fin q → D.La, x ∘ Sum.inl = x' ∧ IsLocBasis (𝓞 E) ℓ x ∧ ∀ a b, sesq D (x (.inl a)) (x (.inr b)) = 0 := by
  exact @PositivityTheory.Xgf.exists_orthogonal_local_basis
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsOrthogonalLocalBasis =====

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.EqZeroOfCoef =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.EqZeroOfCoef", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.LieModel\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl

noncomputable section

namespace PositivityTheory.Xgf.DPer

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} (D : Datum H)
variable {Ix : Type} [Fintype Ix] (x : Ix → D.La) (hx : LinearIndependent (𝓞 E) x) (n : ℕ)
  (hn : ∀ y : D.La, n • y ∈ Submodule.span (𝓞 E) (Set.range x))

def toSpan : D.La →ₗ[𝓞 E] Submodule.span (𝓞 E) (Set.range x) where
  toFun y := ⟨n • y, hn y⟩
  map_add' y y' := Subtype.ext (smul_add _ _ _)
  map_smul' c y := Subtype.ext (smul_comm n c y)

def coef : D.La →ₗ[𝓞 E] (Ix →₀ 𝓞 E) := hx.repr ∘ₗ toSpan D x n hn

theorem coef_sum (y : D.La) : ∑ m, coef D x hx n hn y m • x m = n • y := by
  have h := hx.linearCombination_repr (toSpan D x n hn y)
  rw [Finsupp.linearCombination_apply, Finsupp.sum_fintype _ _ (by simp)] at h
  exact h

theorem planeCoef_mulVec_smul_x_eq_zero_of_ne (m : Ix) : coef D x hx n hn (x m) = Finsupp.single m (n : 𝓞 E) := by
  have e : toSpan D x n hn (x m) = (n : 𝓞 E) • (⟨x m, Submodule.subset_span ⟨m, rfl⟩⟩ : Submodule.span (𝓞 E) (Set.range x)) := by
    apply Subtype.ext
    simp [toSpan, Nat.cast_smul_eq_nsmul]
  show hx.repr (toSpan D x n hn (x m)) = _
  rw [e, map_smul, LinearIndependent.repr_eq_single hx m _ rfl, Finsupp.smul_single_one]

theorem eq_zero_of_coef (hn0 : 0 < n) (y : D.La) (h : coef D x hx n hn y = 0) : y = 0 := by
  have h0 : n • y = 0 := by
    rw [← coef_sum D x hx n hn y, h]
    simp
  have h1 : (n : 𝓞 E) • y = 0 := by
    rw [Nat.cast_smul_eq_nsmul]
    exact h0
  have hn' : (n : 𝓞 E) ≠ 0 := by exact_mod_cast hn0.ne'
  obtain ⟨s, hs⟩ := D.proj.out
  have h2 : s y = 0 := by
    have h3 := congrArg s h1
    rw [map_smul, map_zero] at h3
    exact (smul_eq_zero.mp h3).resolve_left hn'
  rw [← hs y, h2, map_zero]

end PositivityTheory.Xgf.DPer

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.EqZeroOfCoef =====

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.ImIMulDivSq =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.ImIMulDivSq", "h": "module\n\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.HermSplit\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsTransition\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.PrincipalRootReZeroImSq\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.SesqSesquilinearSkewHermitian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexConjugate

noncomputable section

namespace PositivityTheory.Xgf.DPer

open scoped Classical

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem trace_sum (A : E) : (((Algebra.trace ℚ E A : ℚ) : ℝ) : ℂ) = ∑ σ : E →+* ℂ, σ A := by
  rw [Complex.ofReal_ratCast,
    show ((Algebra.trace ℚ E A : ℚ) : ℂ) = algebraMap ℚ ℂ (Algebra.trace ℚ E A) from (eq_ratCast _ _).symm,
    trace_eq_sum_embeddings]
  exact Fintype.sum_equiv (RingHom.equivRatAlgHom (R := E) (S := ℂ)).symm _ _ (fun σ => rfl)

theorem trace_re (A : E) : ((Algebra.trace ℚ E A : ℚ) : ℝ) =
    ∑ σ ∈ Finset.univ.filter (fun σ : E →+* ℂ => σ (H.rt : E) = H.rt0), 2 * (σ A).re := by
  have h1 := congrArg Complex.re (trace_sum A)
  rw [Complex.ofReal_re, Complex.re_sum, sum_split (H := H)] at h1
  rw [h1, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun σ _ => ?_
  rw [ComplexEmbedding.conjugate_coe_eq, Complex.conj_re]
  ring

variable {g : ℕ} {ty : Fin g → (E →+* ℂ)} {p q : ℕ} (hty : IsTypeFn H p q ty)
variable (G : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) E)
variable {D : Datum H} (c : D.La →ₗ[𝓞 E] (Fin p ⊕ Fin q →₀ 𝓞 E)) (n : ℕ)

theorem per_at_inl (σ : E →+* ℂ) (h : σ (H.rt : E) = H.rt0) (y : D.La) (a : Fin p) :
    per hty c n y ((eP hty σ h).symm a).1 = σ ((c y (.inl a) : 𝓞 E) : E) / n := by
  rw [per_apply, blk_inl hty σ h _ ((eP hty σ h).symm a).2, ((eP hty σ h).symm a).2]
  simp

theorem per_at_inr (σ : E →+* ℂ) (h : σ (H.rt : E) ≠ H.rt0) (y : D.La) (a : Fin q) :
    per hty c n y ((eQ hty σ h).symm a).1 = σ ((c y (.inr a) : 𝓞 E) : E) / n := by
  rw [per_apply, blk_inr hty σ h _ ((eQ hty σ h).symm a).2, ((eQ hty σ h).symm a).2]
  simp

def blkA (y y' : D.La) : E := ∑ a : Fin p, ∑ b : Fin p,
  ((c y (.inl a) : 𝓞 E) : E) * G (.inl a) (.inl b) * IsCMField.complexConj E ((c y' (.inl b) : 𝓞 E) : E)

def blkB (y y' : D.La) : E := ∑ a : Fin q, ∑ b : Fin q,
  ((c y (.inr a) : 𝓞 E) : E) * G (.inr a) (.inr b) * IsCMField.complexConj E ((c y' (.inr b) : 𝓞 E) : E)

theorem Q_per_inl (σ : E →+* ℂ) (h : σ (H.rt : E) = H.rt0) (y y' : D.La) :
    Q hty G σ (per hty c n y) (per hty c n y') = Complex.I * (2 * σ (blkA G c y y') / ((n : ℂ) * n)) := by
  rw [Q_inl hty G σ h]

  simp only [per_at_inl, blkA, map_sum, map_mul, IsCMField.complexEmbedding_complexConj, map_div₀, map_natCast,
  Finset.mul_sum, Finset.sum_div]
  refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
  ring

theorem Q_per_inr (σ : E →+* ℂ) (h : σ (H.rt : E) ≠ H.rt0) (y y' : D.La) :
    Q hty G σ (per hty c n y) (per hty c n y') = Complex.I * (2 * σ (blkB G c y y') / ((n : ℂ) * n)) := by
  rw [Q_inr hty G σ h]

  simp only [per_at_inr, blkB, map_sum, map_mul, IsCMField.complexEmbedding_complexConj, map_div₀, map_natCast,
  Finset.mul_sum, Finset.sum_div]
  refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
  ring

theorem im_I_mul_div_sq (z : ℂ) (n : ℕ) : (Complex.I * (2 * z / ((n : ℂ) * n))).im = 2 * z.re / ((n : ℝ) * n) := by
  have e : (2 * z / ((n : ℂ) * n)) = ((2 / ((n : ℝ) * n) : ℝ) : ℂ) * z := by push_cast; ring
  rw [e, Complex.mul_im, Complex.I_re, Complex.I_im, Complex.re_ofReal_mul]
  ring

theorem herm_im (y y' : D.La) :
    (hermForm (Hm hty G) (per hty c n y) (per hty c n y')).im =
      ((Algebra.trace ℚ E (blkA G c y y' + blkB G c y y') : ℚ) : ℝ) / ((n : ℝ) * n) := by
  rw [herm_split, Complex.im_sum, sum_split (H := H), ← Finset.sum_add_distrib, trace_re (H := H),
    Finset.sum_div]
  refine Finset.sum_congr rfl fun σ hσ => ?_
  have h : σ (H.rt : E) = H.rt0 := (Finset.mem_filter.mp hσ).2
  have h' : ComplexEmbedding.conjugate σ (H.rt : E) ≠ H.rt0 := fun hc => (conjugate_rt σ).mp hc h
  rw [Q_per_inl hty G c n σ h, Q_per_inr hty G c n _ h', im_I_mul_div_sq, im_I_mul_div_sq,
    ComplexEmbedding.conjugate_coe_eq, Complex.conj_re, map_add, Complex.add_re]
  ring

theorem sesq_blocks (x : Fin p ⊕ Fin q → D.La) (hc : ∀ y, ∑ m, c y m • x m = n • y)
    (horth : ∀ a b, sesq D (x (.inl a)) (x (.inr b)) = 0) (y y' : D.La) :
    blkA (gramE D x) c y y' + blkB (gramE D x) c y y' = (n : E) * n * sesq D y y' := by
  obtain ⟨-, hl, hr, hsl, hsr, hsk, -⟩ := sesq_sesquilinear_properties D
  let L : D.La → D.La →+ E := fun y' => AddMonoidHom.mk' (fun u => sesq D u y') (fun a b => hl a b y')
  let R : D.La → D.La →+ E := fun u => AddMonoidHom.mk' (fun v => sesq D u v) (fun a b => hr u a b)
  have key : sesq D (n • y) (n • y') = (n : E) * n * sesq D y y' := by
    have e1 : sesq D (n • y) (n • y') = n • sesq D y (n • y') := map_nsmul (L (n • y')) n y
    have e2 : sesq D y (n • y') = n • sesq D y y' := map_nsmul (R y) n y'
    rw [e1, e2, nsmul_eq_mul, nsmul_eq_mul]
    ring
  rw [← key, ← hc y, ← hc y']
  have e3 : sesq D (∑ m, c y m • x m) (∑ m, c y' m • x m) = ∑ m, ∑ m', ((c y m : 𝓞 E) : E) *
      sesq D (x m) (x m') * IsCMField.complexConj E ((c y' m' : 𝓞 E) : E) := by

    rw [show sesq D (∑ m, c y m • x m) (∑ m, c y' m • x m) =
    L (∑ m, c y' m • x m) (∑ m, c y m • x m) from rfl, map_sum]
    refine Finset.sum_congr rfl fun m _ => ?_

    rw [show L (∑ m, c y' m • x m) (c y m • x m) = sesq D (c y m • x m) (∑ m, c y' m • x m) from rfl,
    hsl, show sesq D (x m) (∑ m', c y' m' • x m') = R (x m) (∑ m', c y' m' • x m') from rfl,
    map_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun m' _ => ?_
    rw [show R (x m) (c y' m' • x m') = sesq D (x m) (c y' m' • x m') from rfl, hsr]
    ring
  have horth' : ∀ a b, sesq D (x (.inr b)) (x (.inl a)) = 0 := fun a b => by
    rw [hsk, horth, map_zero, neg_zero]
  rw [e3]
  simp only [Fintype.sum_sum_type, blkA, blkB, gramE, Matrix.of_apply, horth, horth', mul_zero,
    zero_mul, Finset.sum_const_zero, add_zero, zero_add]

theorem herm_EF (hn : 0 < n) (x : Fin p ⊕ Fin q → D.La) (hc : ∀ y, ∑ m, c y m • x m = n • y)
    (horth : ∀ a b, sesq D (x (.inl a)) (x (.inr b)) = 0) (y y' : D.La) :
    (hermForm (Hm hty (gramE D x)) (per hty c n y) (per hty c n y')).im = D.EF y y' := by
  have hn' : (n : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr hn.ne'
  have h1 := trace_mul_sesq_eq_form D 1 y y'
  rw [one_smul, show ((1 : 𝓞 E) : E) = 1 by simp, _root_.one_mul] at h1
  have ht : Algebra.trace ℚ E ((n : E) * n * sesq D y y') = ((n * n : ℕ) : ℚ) * (D.EF y y' : ℚ) := by
    rw [show (n : E) * n * sesq D y y' = (n * n : ℕ) • sesq D y y' by rw [nsmul_eq_mul]; push_cast; ring,
      map_nsmul, h1, nsmul_eq_mul]
  rw [herm_im, sesq_blocks c n x hc horth, ht]
  push_cast
  field_simp

end PositivityTheory.Xgf.DPer

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.ImIMulDivSq =====

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.PerDiscrete =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.PerDiscrete", "h": "module\n\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.CoefZeroOfPer\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.PrincipalRootReZeroImSq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexConjugate

noncomputable section

namespace PositivityTheory.Xgf.DPer

open scoped Classical

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}
variable {g : ℕ} {ty : Fin g → (E →+* ℂ)} {p q : ℕ} (hty : IsTypeFn H p q ty)

theorem blk_isLeft (k : Fin g) : (blk hty k).isLeft = true ↔ ty k (H.rt : E) = H.rt0 := by
  unfold blk
  split_ifs with h <;> simp [h]

theorem blk_inj {k k' : Fin g} (ht : ty k = ty k') (hb : blk hty k = blk hty k') : k = k' := by
  have key : ∀ (τ τ' : E →+* ℂ), τ = τ' → ∀ (h : τ (H.rt : E) = H.rt0) (h' : τ' (H.rt : E) = H.rt0)
      (a : {j : Fin g // ty j = τ}) (b : {j : Fin g // ty j = τ'}),
      eP hty τ h a = eP hty τ' h' b → (a : Fin g) = b := by
    rintro τ τ' rfl h h' a b hab
    exact congrArg Subtype.val ((eP hty τ h).injective hab)
  have key' : ∀ (τ τ' : E →+* ℂ), τ = τ' → ∀ (h : τ (H.rt : E) ≠ H.rt0) (h' : τ' (H.rt : E) ≠ H.rt0)
      (a : {j : Fin g // ty j = τ}) (b : {j : Fin g // ty j = τ'}),
      eQ hty τ h a = eQ hty τ' h' b → (a : Fin g) = b := by
    rintro τ τ' rfl h h' a b hab
    exact congrArg Subtype.val ((eQ hty τ h).injective hab)
  unfold blk at hb
  by_cases h : ty k (H.rt : E) = H.rt0
  · have h' : ty k' (H.rt : E) = H.rt0 := ht ▸ h
    rw [dite_eq_left h, dite_eq_left h'] at hb
    exact key _ _ ht h h' ⟨k, rfl⟩ ⟨k', rfl⟩ (Sum.inl.inj hb)
  · have h' : ty k' (H.rt : E) ≠ H.rt0 := ht ▸ h
    rw [dite_eq_right h, dite_eq_right h'] at hb
    exact key' _ _ ht h h' ⟨k, rfl⟩ ⟨k', rfl⟩ (Sum.inr.inj hb)

variable {D : Datum H} (x : Fin p ⊕ Fin q → D.La) (c : D.La →ₗ[𝓞 E] (Fin p ⊕ Fin q →₀ 𝓞 E)) (n : ℕ)

theorem per_bx (hn0 : 0 < n) (hcx : ∀ m, c (x m) = Finsupp.single m (n : 𝓞 E)) (b : 𝓞 E) (m : Fin p ⊕ Fin q)
    (k : Fin g) : per hty c n (b • x m) k = if blk hty k = m then ty k (b : E) else 0 := by
  have hn : (n : ℂ) ≠ 0 := by exact_mod_cast hn0.ne'
  simp only [per, AddMonoidHom.coe_mk, ZeroHom.coe_mk, map_smul, hcx, Finsupp.smul_single, smul_eq_mul]
  rw [Finsupp.single_apply]
  by_cases h : blk hty k = m
  · rw [if_pos h.symm, if_pos h]
    push_cast
    rw [map_mul, map_natCast]
    field_simp
  · rw [if_neg (Ne.symm h), if_neg h]
    simp

theorem per_span (hn0 : 0 < n) (hcx : ∀ m, c (x m) = Finsupp.single m (n : 𝓞 E)) :
    Submodule.span ℝ (Set.range (per hty c n)) = ⊤ := by
  classical
  have side : ∀ k k' : Fin g, blk hty k = blk hty k' → ComplexEmbedding.conjugate (ty k) ≠ ty k' := by
    intro k k' hkk he
    have h1 := blk_isLeft hty k
    have h2 := blk_isLeft hty k'
    have h3 := conjugate_rt (H := H) (ty k)
    rw [he] at h3
    rw [hkk] at h1
    tauto
  by_contra hne
  obtain ⟨f, hf0, hle⟩ := Submodule.exists_le_ker_of_lt_top _ (lt_top_iff_ne_top.2 hne)
  set l : Fin g → ℂ := fun k => ((f (Pi.single k (1 : ℂ)) : ℝ) : ℂ) -
    Complex.I * ((f (Pi.single k Complex.I) : ℝ) : ℂ) with hl
  have hsingle : ∀ (k : Fin g) (z : ℂ), f (Pi.single k z) = (l k * z).re := by
    intro k z
    have hz : (Pi.single k z : Fin g → ℂ) =
        z.re • (Pi.single k (1 : ℂ) : Fin g → ℂ) + z.im • (Pi.single k Complex.I : Fin g → ℂ) := by
      ext j
      rcases eq_or_ne j k with rfl | hj
      · simp
      · simp [hj]
    rw [hz, map_add (f := _), map_smul, map_smul]
    simp [hl, Complex.mul_re, smul_eq_mul] <;> ring
  have hf : ∀ v : Fin g → ℂ, f v = (∑ k, l k * v k).re := by
    intro v
    conv_lhs => rw [← Finset.univ_sum_single v]

    rw [map_sum, Complex.re_sum]
    exact Finset.sum_congr rfl (fun k _ => hsingle k (v k))
  have hl0 : ∀ k0, l k0 = 0 := by
    intro k0
    set S := Finset.univ.filter (fun k => blk hty k = blk hty k0) with hS
    have hre : ∀ b : 𝓞 E, (∑ k ∈ S, l k * ty k (b : E)).re = 0 := by
      intro b
      have h1 : f (per hty c n (b • x (blk hty k0))) = 0 :=
        hle (Submodule.subset_span ⟨b • x (blk hty k0), rfl⟩)
      rw [hf] at h1
      simp only [per_bx hty x c n hn0 hcx, mul_ite, mul_zero] at h1
      rw [hS, Finset.sum_filter]
      exact h1
    set L : (E →+* ℂ) → ℂ := fun σ => ∑ k ∈ S, ((if ty k = σ then l k else 0) +
      (if ComplexEmbedding.conjugate (ty k) = σ then conj (l k) else 0)) with hL
    have hL0 : L = 0 := by
      apply emb_indep
      intro b
      have hterm : ∀ k, l k * ty k (b : E) + conj (l k) * conj (ty k (b : E)) =
          ((2 * (l k * ty k (b : E)).re : ℝ) : ℂ) := by
        intro k
        rw [← map_mul, Complex.add_conj]
      simp only [hL, Finset.sum_mul, add_mul, ite_mul, zero_mul]
      rw [Finset.sum_comm]
      simp only [Finset.sum_add_distrib, Finset.sum_ite_eq, Finset.mem_univ, if_true,
        ComplexEmbedding.conjugate_coe_eq]
      rw [← Finset.sum_add_distrib, Finset.sum_congr rfl (fun k _ => hterm k)]
      rw [← Complex.ofReal_sum, ← Finset.mul_sum, ← Complex.re_sum, hre b]
      simp
    have h0 := congrFun hL0 (ty k0)
    simp only [hL, Pi.zero_apply] at h0
    rw [Finset.sum_eq_single k0] at h0
    · simpa [side k0 k0 rfl] using h0
    · intro k hk hne
      have hk' : blk hty k = blk hty k0 := by simpa [hS] using hk
      rw [if_neg (fun h => hne (blk_inj hty h hk')), if_neg (side k k0 hk'), add_zero]
    · intro h
      exact absurd (by simp [hS]) h
  apply hf0
  apply LinearMap.ext
  intro v
  rw [hf v]
  simp [hl0]

private theorem exists_blk_inl_of_rt_eq_rt0 (σ : E →+* ℂ) (h : σ (H.rt : E) = H.rt0) (i : Fin p) :
    ∃ k, ty k = σ ∧ blk hty k = Sum.inl i := by
  refine ⟨((eP hty σ h).symm i).1, ((eP hty σ h).symm i).2, ?_⟩
  have key : ∀ (τ : E →+* ℂ), τ = σ → ∀ (h1 : τ (H.rt : E) = H.rt0) (a : {j : Fin g // ty j = τ}),
      (a : Fin g) = ((eP hty σ h).symm i).1 → eP hty τ h1 a = i := by
    rintro τ rfl h1 a ha
    have ha' : a = (eP hty τ h).symm i := Subtype.ext ha
    rw [ha']
    exact (eP hty τ h).apply_symm_apply i
  have hk := ((eP hty σ h).symm i).2
  unfold blk
  rw [dite_eq_left (by rw [hk]; exact h)]
  exact congrArg Sum.inl (key _ hk _ ⟨_, rfl⟩ rfl)

private theorem exists_blk_inr_of_rt_ne_rt0 (σ : E →+* ℂ) (h : σ (H.rt : E) ≠ H.rt0) (j : Fin q) :
    ∃ k, ty k = σ ∧ blk hty k = Sum.inr j := by
  refine ⟨((eQ hty σ h).symm j).1, ((eQ hty σ h).symm j).2, ?_⟩
  have key : ∀ (τ : E →+* ℂ), τ = σ → ∀ (h1 : τ (H.rt : E) ≠ H.rt0) (a : {i : Fin g // ty i = τ}),
      (a : Fin g) = ((eQ hty σ h).symm j).1 → eQ hty τ h1 a = j := by
    rintro τ rfl h1 a ha
    have ha' : a = (eQ hty τ h).symm j := Subtype.ext ha
    rw [ha']
    exact (eQ hty τ h).apply_symm_apply j
  have hk := ((eQ hty σ h).symm j).2
  unfold blk
  rw [dite_eq_right (by rw [hk]; exact h)]
  exact congrArg Sum.inr (key _ hk _ ⟨_, rfl⟩ rfl)

theorem per_discrete (hn0 : 0 < n) (hc : ∀ y, c y = 0 → y = 0) : DiscreteTopology (per hty c n).range := by
  have hrt0 : H.rt0 ≠ 0 := by
    intro h0
    have h := H.sqrt_neg_disc_sq
    rw [h0] at h
    have hd : (H.d : ℂ) = 0 := by linear_combination h
    exact H.d_prime.ne_zero (by exact_mod_cast hd)
  have big : ∀ y : D.La, per hty c n y ≠ 0 → 1 / (n : ℝ) ≤ ‖per hty c n y‖ := by
    intro y hy
    have hcy : c y ≠ 0 := fun h => hy (by rw [hc y h, map_zero])
    obtain ⟨m, hm⟩ : ∃ m, c y m ≠ 0 := by
      by_contra hcon
      push_neg at hcon
      exact hcy (Finsupp.ext hcon)
    have hk : ∃ k, blk hty k = m ∧ 1 ≤ ‖ty k (c y m : E)‖ := by
      rcases m with i | j
      · obtain ⟨σ, hσ, hb⟩ := exists_big (H := H) (c y (Sum.inl i)) hm true
        simp only [if_true] at hσ
        obtain ⟨k, hk1, hk2⟩ := exists_blk_inl_of_rt_eq_rt0 hty σ hσ i
        exact ⟨k, hk2, by rw [hk1]; exact hb⟩
      · obtain ⟨σ, hσ, hb⟩ := exists_big (H := H) (c y (Sum.inr j)) hm false
        simp only [Bool.false_eq_true, if_false] at hσ
        have hne : σ (H.rt : E) ≠ H.rt0 := by
          rw [hσ]
          intro h
          apply hrt0
          linear_combination (-1 / 2 : ℂ) * h
        obtain ⟨k, hk1, hk2⟩ := exists_blk_inr_of_rt_ne_rt0 hty σ hne j
        exact ⟨k, hk2, by rw [hk1]; exact hb⟩
    obtain ⟨k, hk1, hk2⟩ := hk
    have hn : (0 : ℝ) < n := by exact_mod_cast hn0
    calc 1 / (n : ℝ) ≤ ‖ty k (c y m : E)‖ / n := by gcongr
      _ = ‖per hty c n y k‖ := by rw [per_apply, hk1, norm_div]; simp
      _ ≤ ‖per hty c n y‖ := norm_le_pi_norm _ k
  rw [discreteTopology_iff_isOpen_singleton_zero, Metric.isOpen_singleton_iff]
  have hn : (0 : ℝ) < n := by exact_mod_cast hn0
  refine ⟨1 / (n : ℝ), by positivity, fun z hz => ?_⟩
  obtain ⟨z, hzmem⟩ := z
  obtain ⟨y, rfl⟩ := AddMonoidHom.mem_range.mp hzmem
  by_contra hne
  have hne' : per hty c n y ≠ 0 := fun h => hne (Subtype.ext h)
  have hb := big y hne'
  have hz' : ‖per hty c n y‖ < 1 / (n : ℝ) := by
    simpa [Subtype.dist_eq, dist_zero_right] using hz
  linarith

end PositivityTheory.Xgf.DPer

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.PerDiscrete =====

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.QReInr =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.QReInr", "h": "module\n\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.HermSplit\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.PrincipalRootReZeroImSq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexConjugate ComplexOrder

noncomputable section

namespace PositivityTheory.Xgf.DPer

open scoped Classical

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}
variable {g : ℕ} {ty : Fin g → (E →+* ℂ)} {p q : ℕ} (hty : IsTypeFn H p q ty)
variable (G : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) E)

theorem Hm_herm (hskew : ∀ m m', G m' m = -IsCMField.complexConj E (G m m')) : (Hm hty G).IsHermitian := by
  ext k k'
  simp only [Matrix.conjTranspose_apply, Hm, Matrix.of_apply]
  by_cases h : ty k = ty k'
  · rw [if_pos h.symm, if_pos h, hskew (blk hty k) (blk hty k'), map_neg,
      IsCMField.complexEmbedding_complexConj, h]
    simp [Complex.conj_I]
  · rw [if_neg (Ne.symm h), if_neg h, star_zero]

private theorem re_star_dotProduct_mulVec_pos_of_posDef {n : ℕ} (N : Matrix (Fin n) (Fin n) ℂ) (hN : N.PosDef) (x : Fin n → ℂ) :
    0 ≤ (star x ⬝ᵥ N *ᵥ x).re ∧ (x ≠ 0 → 0 < (star x ⬝ᵥ N *ᵥ x).re) :=
  ⟨(Complex.nonneg_iff.mp (hN.posSemidef.dotProduct_mulVec_nonneg x)).1,
    fun hx => (Complex.pos_iff.mp (hN.dotProduct_mulVec_pos hx)).1⟩

theorem Q_re_inl (σ : E →+* ℂ) (h : σ (H.rt : E) = H.rt0)
    (hG1 : (Matrix.of fun a b : Fin p => Complex.I * σ (G (.inl a) (.inl b))).PosDef) (z : Fin g → ℂ) :
    0 ≤ (Q hty G σ z z).re ∧ ((∃ a, z ((eP hty σ h).symm a) ≠ 0) → 0 < (Q hty G σ z z).re) := by
  set x : Fin p → ℂ := fun a => star (z ((eP hty σ h).symm a)) with hx
  have hQ : Q hty G σ z z =
      2 * (star x ⬝ᵥ (Matrix.of fun a b : Fin p => Complex.I * σ (G (.inl a) (.inl b))) *ᵥ x) := by
    rw [Q_inl hty G σ h]
    simp only [hx, dotProduct, mulVec, Matrix.of_apply, Finset.mul_sum, Pi.star_apply, Complex.star_def, Complex.conj_conj]
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
    ring
  obtain ⟨h0, h1⟩ := re_star_dotProduct_mulVec_pos_of_posDef _ hG1 x
  have hre : (Q hty G σ z z).re = 2 * (star x ⬝ᵥ (Matrix.of fun a b : Fin p =>
      Complex.I * σ (G (.inl a) (.inl b))) *ᵥ x).re := by
    rw [hQ, Complex.mul_re]
    norm_num
  rw [hre]
  refine ⟨by positivity, fun ⟨a, ha⟩ => ?_⟩
  have hx0 : x ≠ 0 := fun h0' => ha (by simpa [hx] using congrFun h0' a)
  have := h1 hx0
  positivity

theorem Q_re_inr (σ : E →+* ℂ) (h : σ (H.rt : E) ≠ H.rt0)
    (hG2 : (-(Matrix.of fun a b : Fin q => Complex.I * ComplexEmbedding.conjugate σ (G (.inr a) (.inr b)))).PosDef)
    (z : Fin g → ℂ) :
    0 ≤ (Q hty G σ z z).re ∧ ((∃ a, z ((eQ hty σ h).symm a) ≠ 0) → 0 < (Q hty G σ z z).re) := by
  set x : Fin q → ℂ := fun a => z ((eQ hty σ h).symm a) with hx
  set M : Matrix (Fin q) (Fin q) ℂ :=
    -(Matrix.of fun a b : Fin q => Complex.I * ComplexEmbedding.conjugate σ (G (.inr a) (.inr b))) with hM
  have hQ : Q hty G σ z z = 2 * starRingEnd ℂ (star x ⬝ᵥ M *ᵥ x) := by
    rw [Q_inr hty G σ h]

    simp only [hx, hM, dotProduct, mulVec, Matrix.neg_apply, Matrix.of_apply, Finset.mul_sum, map_sum,
    map_mul, map_neg, Pi.star_apply, Complex.star_def, Complex.conj_conj, Complex.conj_I,
    ComplexEmbedding.conjugate_coe_eq]
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
    ring
  obtain ⟨h0, h1⟩ := re_star_dotProduct_mulVec_pos_of_posDef _ hG2 x
  have hre : (Q hty G σ z z).re = 2 * (star x ⬝ᵥ M *ᵥ x).re := by
    rw [hQ, Complex.mul_re, Complex.conj_re, Complex.conj_im]
    norm_num
  rw [hre]
  refine ⟨by positivity, fun ⟨a, ha⟩ => ?_⟩
  have hx0 : x ≠ 0 := fun h0' => ha (by simpa [hx] using congrFun h0' a)
  have := h1 hx0
  positivity

theorem Hm_pos
    (hG1 : ∀ τ : E →+* ℂ, τ (H.rt : E) = H.rt0 →
      (Matrix.of fun a b : Fin p => Complex.I * τ (G (.inl a) (.inl b))).PosDef)
    (hG2 : ∀ τ : E →+* ℂ, τ (H.rt : E) = H.rt0 →
      (-(Matrix.of fun a b : Fin q => Complex.I * τ (G (.inr a) (.inr b)))).PosDef)
    (z : Fin g → ℂ) (hz : z ≠ 0) : 0 < (hermForm (Hm hty G) z z).re := by
  rw [herm_split, Complex.re_sum]
  have hQ : ∀ σ : E →+* ℂ, 0 ≤ (Q hty G σ z z).re ∧
      ((∃ k, ty k = σ ∧ z k ≠ 0) → 0 < (Q hty G σ z z).re) := by
    intro σ
    by_cases h : σ (H.rt : E) = H.rt0
    · obtain ⟨h1, h2⟩ := Q_re_inl hty G σ h (hG1 σ h) z
      refine ⟨h1, fun ⟨k, hk, hz⟩ => h2 ⟨eP hty σ h ⟨k, hk⟩, by simpa using hz⟩⟩
    · have hc : ComplexEmbedding.conjugate σ (H.rt : E) = H.rt0 := (conjugate_rt σ).2 h
      obtain ⟨h1, h2⟩ := Q_re_inr hty G σ h (hG2 _ hc) z
      refine ⟨h1, fun ⟨k, hk, hz⟩ => h2 ⟨eQ hty σ h ⟨k, hk⟩, by simpa using hz⟩⟩
  obtain ⟨k0, hk0⟩ : ∃ k, z k ≠ 0 := by
    by_contra hc; push Not at hc; exact hz (funext hc)
  exact Finset.sum_pos' (fun σ _ => (hQ σ).1) ⟨ty k0, Finset.mem_univ _, (hQ (ty k0)).2 ⟨k0, rfl, hk0⟩⟩

end PositivityTheory.Xgf.DPer

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.QReInr =====

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.GramSignatureOrthogonalSplit =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.GramSignatureOrthogonalSplit", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsTransition\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeGram\npublic import Mathlib.Algebra.AffineMonoid.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SesqSesquilinearSkewHermitian\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.EqZeroOfCoef\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsNsmulMemSpanFullFamily\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.ImIMulDivSq\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.PerDiscrete\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.QReInr\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.CoefZeroOfPer\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.HermSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

namespace PositivityTheory.Xgf

theorem gram_signature_orthogonal_split : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (g : ℕ) (ty : Fin g → (E →+* ℂ)) (p q : ℕ) (x : Fin p ⊕ Fin q → D.La), IsTypeFn H p q ty → p + q = D.p + D.q → LinearIndependent (𝓞 E) x → (∀ a b, sesq D (x (.inl a)) (x (.inr b)) = 0) → (∀ τ : E →+* ℂ, τ (H.rt : E) = H.rt0 → ((gramE D (x ∘ Sum.inl)).map fun a => Complex.I * τ a).PosDef ∧ (-((gramE D (x ∘ Sum.inr)).map fun a => Complex.I * τ a)).PosDef) → ∃ (P : D.La →+ (Fin g → ℂ)) (hP : IsPeriod D ty P), IsPure hP x := by
  intro E _ _ _ H D g ty p q x hty hpq hx horth hpos
  have := D.fin
  have := D.proj
  have hcard : Fintype.card (Fin p ⊕ Fin q) = Module.finrank (𝓞 E) D.La := by
    rw [D.rank, ← hpq]; simp
  obtain ⟨n, hn0, hn⟩ := exists_nsmul_mem_span_full_family x hcard hx
  have hc0 : ∀ y, DPer.coef D x hx n hn y = 0 → y = 0 := DPer.eq_zero_of_coef D x hx n hn hn0
  have hcx := DPer.planeCoef_mulVec_smul_x_eq_zero_of_ne D x hx n hn
  have hP : IsPeriod D ty (DPer.per hty (DPer.coef D x hx n hn) n) := by
    refine ⟨DPer.per_smul hty _ n, ?_, DPer.per_discrete hty _ n hn0 hc0, DPer.per_span hty x _ n hn0 hcx,
      DPer.Hm hty (gramE D x), DPer.Hm_herm hty _ ?_, DPer.Hm_pos hty _ (fun τ h => (hpos τ h).1) (fun τ h => (hpos τ h).2),
      DPer.herm_EF hty _ n hn0 x (DPer.coef_sum D x hx n hn) horth⟩
    · rw [injective_iff_map_eq_zero]
      exact fun y h => hc0 y (DPer.coef_zero_of_per hty _ n hn0 y h)
    · exact fun m m' => (_root_.GlobalTheory.CompanionTheory.Ar.Fl.Sesq.form_of_datum E H D).2.2.2.2.2.1 (x m) (x m')
  refine ⟨_, hP, fun a => ?_, fun b => ?_⟩
  · intro k hk
    exact DPer.per_inl hty _ n _ a (hcx _) k (by simpa [sgnRt] using hk)
  · intro k hk
    exact DPer.per_inr hty _ n _ b (hcx _) k (by simpa [sgnRt] using hk)

end PositivityTheory.Xgf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.GramSignatureOrthogonalSplit =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GramSignatureOrthogonalSplit =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GramSignatureOrthogonalSplit", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsTransition\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.GramSignatureOrthogonalSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

theorem _root_.GlobalTheory.CompanionTheory.Relay.gram_signature_orthogonal_split : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (g : ℕ) (ty : Fin g → (E →+* ℂ)) (p q : ℕ) (x : Fin p ⊕ Fin q → D.La), IsTypeFn H p q ty → p + q = D.p + D.q → LinearIndependent (𝓞 E) x → (∀ a b, sesq D (x (.inl a)) (x (.inr b)) = 0) → (∀ τ : E →+* ℂ, τ (H.rt : E) = H.rt0 → ((gramE D (x ∘ Sum.inl)).map fun a => Complex.I * τ a).PosDef ∧ (-((gramE D (x ∘ Sum.inr)).map fun a => Complex.I * τ a)).PosDef) → ∃ (P : D.La →+ (Fin g → ℂ)) (hP : IsPeriod D ty P), IsPure hP x := by
  first | exact @PositivityTheory.Xgf.gram_signature_orthogonal_split
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GramSignatureOrthogonalSplit =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NegDefBlockOfPosDef =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NegDefBlockOfPosDef", "h": "module\n\npublic import Mathlib.Analysis.Complex.Order\npublic import Mathlib.LinearAlgebra.Matrix.PosDef\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.UltrametricNormProdSubLt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

namespace GlobalTheory.CompanionTheory.Ar.Fl.Sylvester

theorem neg_posDef_of_compl_posDef : ∀ (p q : ℕ) (A : Matrix (Fin p) (Fin p) ℂ) (B : Matrix (Fin q) (Fin q) ℂ) (C : Matrix (Fin q) (Fin p ⊕ Fin q) ℂ), A.PosDef → B.IsHermitian → (-(C * Matrix.fromBlocks A 0 0 B * Cᴴ)).PosDef → (-B).PosDef :=
  @PositivityTheory.Xgf.negDef_block_of_posDef

end GlobalTheory.CompanionTheory.Ar.Fl.Sylvester
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NegDefBlockOfPosDef =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PeriodGramHermitianSignature =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PeriodGramHermitianSignature", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.VolumeFundamentalDomainStdRealBasis\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsTransition\npublic import Mathlib.Data.Matrix.ColumnRowPartitioned\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.PeriodHermitianTypeCompatibility\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Fl.SignTau

open GlobalTheory.CompanionTheory.Ar.Flat.RiemannTau

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem sum_type {g n : ℕ} (ty : Fin g → (E →+* ℂ)) (σ : E →+* ℂ) (e : Fin n ≃ {i // ty i = σ}) (f : Fin g → ℂ)
    (hf : ∀ j, ty j ≠ σ → f j = 0) : ∑ j, f j = ∑ a, f (e a) := by
  classical
  have h1 : ∑ a, f (e a) = ∑ i : {i // ty i = σ}, f i := Equiv.sum_comp e (fun i : {i // ty i = σ} => f i)
  rw [h1, ← Finset.sum_subtype (p := fun j => ty j = σ) (Finset.univ.filter fun j => ty j = σ) (by simp) f,
    Finset.sum_filter]
  refine Finset.sum_congr rfl fun j _ => ?_
  split_ifs with h
  · rfl
  · exact hf j h

theorem hermForm_tyPart {g n : ℕ} (ty : Fin g → (E →+* ℂ)) (σ : E →+* ℂ) (e : Fin n ≃ {i // ty i = σ})
    (M : Matrix (Fin g) (Fin g) ℂ) (z w : Fin g → ℂ) :
    hermForm M (tyPart ty σ z) (tyPart ty σ w) =
      ∑ a, ∑ b, z (e a) * M (e a) (e b) * star (w (e b)) := by
  classical
  rw [hermForm_eq_sum]
  have h1 : ∀ j, ty j ≠ σ → ∑ k, tyPart ty σ z j * M j k * star (tyPart ty σ w k) = 0 := by
    intro j hj
    apply Finset.sum_eq_zero
    intro k _
    simp [tyPart, hj]
  rw [sum_type ty σ e _ h1]
  refine Finset.sum_congr rfl fun a _ => ?_
  have h2 : ∀ k, ty k ≠ σ → tyPart ty σ z (e a) * M (e a) k * star (tyPart ty σ w k) = 0 := by
    intro k hk
    simp [tyPart, hk]
  rw [sum_type ty σ e _ h2]
  refine Finset.sum_congr rfl fun b _ => ?_
  simp [tyPart, (e a).2, (e b).2]

theorem posDef_of_hermForm {g : ℕ} {M : Matrix (Fin g) (Fin g) ℂ} (hM : M.IsHermitian)
    (hpos : ∀ z : Fin g → ℂ, z ≠ 0 → 0 < (hermForm M z z).re) : M.PosDef := by
  apply GlobalTheory.UnimodVol.posDef_of_hermForm <;> assumption

theorem fromCols_block {I : Type} [Fintype I] {p q : ℕ} (A : Matrix I (Fin p) ℂ) (B : Matrix I (Fin q) ℂ)
    (G₁ : Matrix (Fin p) (Fin p) ℂ) (G₂ : Matrix (Fin q) (Fin q) ℂ) :
    Matrix.fromCols A B * Matrix.fromBlocks G₁ 0 0 (-G₂) * (Matrix.fromCols A B)ᴴ =
      A * G₁ * Aᴴ - B * G₂ * Bᴴ := by
  rw [Matrix.fromCols_mul_fromBlocks, Matrix.conjTranspose_fromCols_eq_fromRows_conjTranspose,
    Matrix.fromCols_mul_fromRows]
  simp [sub_eq_add_neg]

private theorem add_mul_mul_conjTranspose_add_eq_of_two_smul {r p q : ℕ} (C : Matrix (Fin r) (Fin p ⊕ Fin q) ℂ)
    (V M N : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ) (key : V * ((2 : ℂ) • M) * Vᴴ = N) :
    (C * V + C * V) * M * (C * V + C * V)ᴴ = C * N * Cᴴ + C * N * Cᴴ := by
  rw [← key]
  simp only [Matrix.conjTranspose_add, Matrix.conjTranspose_mul, Matrix.add_mul, Matrix.mul_add,
    two_smul, Matrix.mul_assoc]

theorem signature_of_factor {p q : ℕ} (M W : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ)
    (G₁ : Matrix (Fin p) (Fin p) ℂ) (G₂ : Matrix (Fin q) (Fin q) ℂ) (h₁ : G₁.PosDef) (h₂ : G₂.PosDef)
    (hM : (2 : ℂ) • M = W * Matrix.fromBlocks G₁ 0 0 (-G₂) * Wᴴ) (hdet : M.det ≠ 0) :
    M.IsHermitian ∧ (∃ C : Matrix (Fin p) (Fin p ⊕ Fin q) ℂ, (C * M * Cᴴ).PosDef) ∧
      ∃ C : Matrix (Fin q) (Fin p ⊕ Fin q) ℂ, (-(C * M * Cᴴ)).PosDef := by
  have hN : (Matrix.fromBlocks G₁ 0 0 (-G₂))ᴴ = Matrix.fromBlocks G₁ 0 0 (-G₂) := by
    rw [Matrix.fromBlocks_conjTranspose, h₁.1.eq, Matrix.conjTranspose_neg, h₂.1.eq,
      Matrix.conjTranspose_zero, Matrix.conjTranspose_zero]
  have hMh : M.IsHermitian := by
    have h2 : ((2 : ℂ) • M)ᴴ = (2 : ℂ) • M := by
      rw [hM, Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hN,
        Matrix.mul_assoc]
    rw [Matrix.conjTranspose_smul] at h2
    have h3 : (2 : ℂ) • Mᴴ = (2 : ℂ) • M := by simpa using h2
    exact smul_right_injective _ two_ne_zero h3
  have hW : IsUnit W.det := by
    rw [isUnit_iff_ne_zero]
    intro h0
    have h4 := congrArg Matrix.det hM
    rw [Matrix.det_smul, Matrix.det_mul, Matrix.det_mul, h0] at h4
    simp [hdet] at h4
  have hVW : W⁻¹ * W = 1 := Matrix.nonsing_inv_mul W hW
  have hWV : Wᴴ * (W⁻¹)ᴴ = 1 := by
    rw [← Matrix.conjTranspose_mul, hVW, Matrix.conjTranspose_one]
  have key : W⁻¹ * ((2 : ℂ) • M) * (W⁻¹)ᴴ = Matrix.fromBlocks G₁ 0 0 (-G₂) := by
    rw [hM]
    calc W⁻¹ * (W * Matrix.fromBlocks G₁ 0 0 (-G₂) * Wᴴ) * (W⁻¹)ᴴ
        = (W⁻¹ * W) * Matrix.fromBlocks G₁ 0 0 (-G₂) * (Wᴴ * (W⁻¹)ᴴ) := by
          simp only [Matrix.mul_assoc]
      _ = Matrix.fromBlocks G₁ 0 0 (-G₂) := by rw [hVW, hWV, Matrix.one_mul, Matrix.mul_one]
  refine ⟨hMh, ⟨Matrix.fromCols (1 : Matrix (Fin p) (Fin p) ℂ) (0 : Matrix (Fin p) (Fin q) ℂ) * W⁻¹ +
      Matrix.fromCols (1 : Matrix (Fin p) (Fin p) ℂ) (0 : Matrix (Fin p) (Fin q) ℂ) * W⁻¹, ?_⟩,
    ⟨Matrix.fromCols (0 : Matrix (Fin q) (Fin p) ℂ) (1 : Matrix (Fin q) (Fin q) ℂ) * W⁻¹ +
      Matrix.fromCols (0 : Matrix (Fin q) (Fin p) ℂ) (1 : Matrix (Fin q) (Fin q) ℂ) * W⁻¹, ?_⟩⟩
  · rw [add_mul_mul_conjTranspose_add_eq_of_two_smul _ _ _ _ key, fromCols_block]
    simp only [Matrix.mul_one, Matrix.one_mul, Matrix.conjTranspose_one, Matrix.zero_mul, sub_zero]
    exact h₁.add h₁
  · rw [add_mul_mul_conjTranspose_add_eq_of_two_smul _ _ _ _ key, fromCols_block]
    simp only [Matrix.mul_one, Matrix.one_mul, Matrix.conjTranspose_one, Matrix.zero_mul, zero_sub,
      neg_add_rev, neg_neg]
    exact h₂.add h₂

theorem conj_cmHostRoot_ne_self (H : Host E) : starRingEnd ℂ H.rt0 ≠ H.rt0 := by
  intro h
  have him : H.rt0.im = 0 := Complex.conj_eq_iff_im.mp h
  have hre := congrArg Complex.re H.sqrt_neg_disc_sq
  have hd : (0 : ℝ) < H.d := by exact_mod_cast H.d_prime.pos
  simp [sq, Complex.mul_re, him] at hre
  nlinarith [mul_self_nonneg H.rt0.re]

end GlobalTheory.CompanionTheory.Ar.Fl.SignTau

private theorem posDef_reindex_of_hermForm_re_pos {E : Type} [Field E] [NumberField E] [IsCMField E] {g n : ℕ}
    (ty : Fin g → (E →+* ℂ)) (σ : E →+* ℂ) (e : Fin n ≃ {i // ty i = σ})
    (Hm : Matrix (Fin g) (Fin g) ℂ) (hH : Hm.IsHermitian)
    (hpos : ∀ z : Fin g → ℂ, z ≠ 0 → 0 < (hermForm Hm z z).re) :
    (Matrix.of fun a b => Hm (e a) (e b)).PosDef := by
  classical
  apply GlobalTheory.CompanionTheory.Ar.Fl.SignTau.posDef_of_hermForm
  · ext a b
    simp only [Matrix.conjTranspose_apply, Matrix.of_apply]
    exact hH.apply _ _
  · intro z hz
    let w : Fin g → ℂ := fun i => if h : ty i = σ then z (e.symm ⟨i, h⟩) else 0
    have hw : ∀ a, w (e a) = z a := fun a => by simp [w, (e a).2]
    have hw0 : ∀ i, ty i ≠ σ → w i = 0 := fun i hi => by simp [w, hi]
    have hwz : w ≠ 0 := by
      obtain ⟨a, ha⟩ := Function.ne_iff.mp hz
      exact fun h => ha (by simpa [h] using (hw a).symm)
    have key : hermForm Hm w w = hermForm (Matrix.of fun a b => Hm (e a) (e b)) z z := by
      rw [GlobalTheory.CompanionTheory.Ar.Flat.RiemannTau.hermForm_eq_sum, GlobalTheory.CompanionTheory.Ar.Flat.RiemannTau.hermForm_eq_sum]
      have h1 : ∀ j, ty j ≠ σ → ∑ k, w j * Hm j k * star (w k) = 0 := fun j hj => by
        simp [hw0 j hj]
      rw [GlobalTheory.CompanionTheory.Ar.Fl.SignTau.sum_type ty σ e _ h1]
      refine Finset.sum_congr rfl fun a _ => ?_
      have h2 : ∀ k, ty k ≠ σ → w (e a) * Hm (e a) k * star (w k) = 0 := fun k hk => by
        simp [hw0 k hk]
      rw [GlobalTheory.CompanionTheory.Ar.Fl.SignTau.sum_type ty σ e _ h2]
      refine Finset.sum_congr rfl fun b _ => ?_
      simp [hw]
    rw [← key]
    exact hpos w hwz

theorem GlobalTheory.CompanionTheory.Ar.Fl.signature_tau_gram : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (g : ℕ) (ty : Fin g → (E →+* ℂ)) (P : D.La →+ (Fin g → ℂ)) (p q : ℕ) (X : Fin p ⊕ Fin q → D.La) (τ : E →+* ℂ), IsPeriod D ty P → IsTypeFn H p q ty → LinearIndependent (𝓞 E) X → p + q = D.p + D.q → τ (H.rt : E) = H.rt0 → ((gramE D X).map fun a => Complex.I * τ a).IsHermitian ∧ (∃ C : Matrix (Fin p) (Fin p ⊕ Fin q) ℂ, (C * ((gramE D X).map fun a => Complex.I * τ a) * Cᴴ).PosDef) ∧ ∃ C : Matrix (Fin q) (Fin p ⊕ Fin q) ℂ, (-(C * ((gramE D X).map fun a => Complex.I * τ a) * Cᴴ)).PosDef := by
  intro E _ _ _ H D g ty P p q X τ hP hT hX hpq hτ
  obtain ⟨-, -, -, -, Hm, hH, hpos, hEF⟩ := id hP
  obtain ⟨-, hcomp, hC⟩ := GlobalTheory.CompanionTheory.Ar.Flat.riemann_tau_component E H D g ty P Hm hP hH hEF
  have hτc : ComplexEmbedding.conjugate τ (H.rt : E) ≠ H.rt0 := by
    rw [ComplexEmbedding.conjugate_coe_eq, hτ]
    exact GlobalTheory.CompanionTheory.Ar.Fl.SignTau.conj_cmHostRoot_ne_self H
  let e₁ : Fin p ≃ {i // ty i = τ} := (Finite.equivFinOfCardEq ((hT τ).1 hτ)).symm
  let e₂ : Fin q ≃ {i // ty i = ComplexEmbedding.conjugate τ} :=
    (Finite.equivFinOfCardEq ((hT (ComplexEmbedding.conjugate τ)).2 hτc)).symm
  let G₁ : Matrix (Fin p) (Fin p) ℂ := Matrix.of fun a b => Hm (e₁ a) (e₁ b)
  let G₂ : Matrix (Fin q) (Fin q) ℂ := (Matrix.of fun a b => Hm (e₂ a) (e₂ b))ᵀ
  let A : Matrix (Fin p ⊕ Fin q) (Fin p) ℂ := Matrix.of fun m a => P (X m) (e₁ a)
  let B : Matrix (Fin p ⊕ Fin q) (Fin q) ℂ := Matrix.of fun m b => star (P (X m) (e₂ b))
  have h₁ : G₁.PosDef := posDef_reindex_of_hermForm_re_pos ty τ e₁ Hm hH hpos
  have h₂ : G₂.PosDef := (posDef_reindex_of_hermForm_re_pos ty (ComplexEmbedding.conjugate τ) e₂ Hm hH hpos).transpose
  have hfac : (2 : ℂ) • ((gramE D X).map fun a => Complex.I * τ a) =
      Matrix.fromCols A B * Matrix.fromBlocks G₁ 0 0 (-G₂) * (Matrix.fromCols A B)ᴴ := by
    rw [GlobalTheory.CompanionTheory.Ar.Fl.SignTau.fromCols_block]
    ext m n
    have key := hcomp τ (X m) (X n)
    rw [GlobalTheory.CompanionTheory.Ar.Fl.SignTau.hermForm_tyPart ty τ e₁,
      GlobalTheory.CompanionTheory.Ar.Fl.SignTau.hermForm_tyPart ty (ComplexEmbedding.conjugate τ) e₂] at key
    have hA : (A * G₁ * Aᴴ) m n =
        ∑ a, ∑ b, P (X m) (e₁ a) * Hm (e₁ a) (e₁ b) * star (P (X n) (e₁ b)) := by
      simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.of_apply, A, G₁, Finset.sum_mul]
      rw [Finset.sum_comm]
    have hB : (B * G₂ * Bᴴ) m n =
        star (∑ a, ∑ b, P (X m) (e₂ a) * Hm (e₂ a) (e₂ b) * star (P (X n) (e₂ b))) := by
      simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Matrix.transpose_apply, Matrix.of_apply, B, G₂,
        Finset.sum_mul, star_sum, star_mul', star_star]
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => ?_
      rw [hH.apply]
    rw [Matrix.sub_apply, hA, hB, key]
    simp only [Matrix.smul_apply, Matrix.map_apply, smul_eq_mul]
    rw [show gramE D X m n = sesq D (X m) (X n) from rfl]
    ring
  have hdetA : (gramE D X).det ≠ 0 := hC 0 (Fin p ⊕ Fin q) X (by simp [hpq]) hX
  have hdetM : ((gramE D X).map fun a => Complex.I * τ a).det ≠ 0 := by
    have hM' : ((gramE D X).map fun a => Complex.I * τ a) = Complex.I • (τ.mapMatrix (gramE D X)) := by
      ext m n
      simp [Matrix.map_apply]
    rw [hM', Matrix.det_smul, ← RingHom.map_det]
    exact mul_ne_zero (pow_ne_zero _ Complex.I_ne_zero) ((map_ne_zero τ).mpr hdetA)
  exact GlobalTheory.CompanionTheory.Ar.Fl.SignTau.signature_of_factor _ (Matrix.fromCols A B) G₁ G₂ h₁ h₂ hfac hdetM
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PeriodGramHermitianSignature =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UltrametricDetNormStable =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UltrametricDetNormStable", "h": "module\n\npublic import Mathlib.Analysis.Normed.Field.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\npublic import Mathlib.Topology.MetricSpace.Ultra.Basic\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.UltrametricNormProdSubLt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

namespace GlobalTheory.CompanionTheory.Ar.Fl

theorem norm_det_eq_of_entries_close : ∀ (A : Type) [NormedField A] [IsUltrametricDist A] (I : Type) [Fintype I] [DecidableEq I] (M M' : Matrix I I A) (r : ℝ), 0 < r → (∀ a b, ‖M a b‖ ≤ r) → (∀ a b, ‖M' a b - M a b‖ < r) → ‖M.det‖ = r ^ Fintype.card I → ‖M'.det‖ = r ^ Fintype.card I :=
  @PositivityTheory.Xgf.ultrametric_det_norm_stable

end GlobalTheory.CompanionTheory.Ar.Fl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UltrametricDetNormStable =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PurePeriodLocalBasisExists =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PurePeriodLocalBasisExists", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsTransition\npublic import Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\npublic import Mathlib.Algebra.AffineMonoid.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AdelicProofs.PadicLogIdealMaxElement\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.Embeddings\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsIntegralPosDefPerturbation\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsOrthogonalLocalBasis\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.GramSignatureOrthogonalSplit\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocalBasisGramDeterminantBound\npublic import Mathlib.Analysis.Complex.Order\npublic import Mathlib.LinearAlgebra.Matrix.PosDef\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NegDefBlockOfPosDef\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PeriodGramHermitianSignature\npublic import Mathlib.Analysis.Normed.Field.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\npublic import Mathlib.Topology.MetricSpace.Ultra.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UltrametricDetNormStable\nimport Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeGram\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SesqSesquilinearSkewHermitian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.Matrix.ColumnRowPartitioned\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.Valuation.Integral\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Fl.DSplit

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem norm_int_le (ℓ : Nat.Primes) (j : E →+* ℂ_[ℓ]) (b : 𝓞 E) : ‖j (b : E)‖ ≤ 1 :=
  _root_.PositivityTheory.Xgf.NI.norm_le_one_of_isIntegral (map_isIntegral_int j b.isIntegral_coe)

theorem norm_prime_lt (ℓ : Nat.Primes) : ‖(((ℓ : ℕ) : ℂ_[ℓ]))‖ < 1 := by
  have h : (((ℓ : ℕ) : ℂ_[ℓ])) = algebraMap ℚ_[ℓ] ℂ_[ℓ] ((ℓ : ℕ) : ℚ_[ℓ]) := by simp
  rw [h, norm_algebraMap', Padic.norm_p]
  exact inv_lt_one_of_one_lt₀ (by exact_mod_cast ℓ.2.one_lt)

theorem exists_bound (D : Datum H) (ℓ : Nat.Primes) (j : E →+* ℂ_[ℓ]) :
    ∃ r : ℝ, 0 < r ∧ Real.log r = -logIdeal (j.comp (algebraMap (𝓞 E) E)) (differentIdeal ℤ (𝓞 E)) ∧
      ∀ x y, ‖j (sesq D x y)‖ ≤ r := by
  have hinj : Function.Injective (j.comp (algebraMap (𝓞 E) E)) :=
    j.injective.comp (RingOfIntegers.coe_injective)
  obtain ⟨a, ha, ha0, -, hlog⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Fl.exists_logIdeal_attained E ℓ (j.comp (algebraMap (𝓞 E) E)) (differentIdeal ℤ (𝓞 E)) hinj
    differentIdeal_ne_bot
  have hn : 0 < ‖j (a : E)‖ := by
    rw [norm_pos_iff]
    intro h
    exact ha0 (hinj (by simpa using h))
  refine ⟨‖j (a : E)‖⁻¹, inv_pos.2 hn, ?_, fun x y => ?_⟩
  · rw [Real.log_inv]
    exact congrArg Neg.neg hlog.symm
  · obtain ⟨b, hb⟩ := (_root_.GlobalTheory.CompanionTheory.Ar.Fl.Sesq.form_of_datum E H D).2.2.2.2.2.2 a ha x y
    have h1 : ‖j (a : E)‖ * ‖j (sesq D x y)‖ = ‖j (b : E)‖ := by rw [← norm_mul, ← map_mul, hb]
    have h2 := norm_int_le ℓ j b
    rw [← h1] at h2
    rw [← one_div, le_div_iff₀ hn]
    linarith

theorem sesq_sum_left (D : Datum H) {J : Type} (s : Finset J) (f : J → D.La) (y : D.La) :
    sesq D (∑ m ∈ s, f m) y = ∑ m ∈ s, sesq D (f m) y := by
  let φ : D.La →+ E := AddMonoidHom.mk' (fun x => sesq D x y) (fun a b => (_root_.GlobalTheory.CompanionTheory.Ar.Fl.Sesq.form_of_datum E H D).2.1 a b y)
  exact map_sum φ f s

theorem sesq_sum_right (D : Datum H) {J : Type} (s : Finset J) (f : J → D.La) (y : D.La) :
    sesq D y (∑ m ∈ s, f m) = ∑ m ∈ s, sesq D y (f m) := by
  let φ : D.La →+ E := AddMonoidHom.mk' (fun x => sesq D y x) (fun a b => (_root_.GlobalTheory.CompanionTheory.Ar.Fl.Sesq.form_of_datum E H D).2.2.1 y a b)
  exact map_sum φ f s

theorem sesq_comb (D : Datum H) {J : Type} [Fintype J] (x : J → D.La) (u v : J → 𝓞 E) :
    sesq D (∑ m, u m • x m) (∑ n, v n • x n) =
      ∑ n, (∑ m, (u m : E) * sesq D (x m) (x n)) * IsCMField.complexConj E (v n : E) := by
  rw [sesq_sum_right]
  refine Finset.sum_congr rfl fun n _ => ?_
  rw [(_root_.GlobalTheory.CompanionTheory.Ar.Fl.Sesq.form_of_datum E H D).2.2.2.2.1, sesq_sum_left, mul_comm]
  congr 1
  exact Finset.sum_congr rfl fun m _ => (_root_.GlobalTheory.CompanionTheory.Ar.Fl.Sesq.form_of_datum E H D).2.2.2.1 _ _ _

theorem gram_comb_map (D : Datum H) (τ : E →+* ℂ) {I J : Type} [Fintype J] (x : J → D.La)
    (X : Matrix I J (𝓞 E)) :
    ((gramE D (fun a => ∑ m, X a m • x m)).map fun a => Complex.I * τ a) =
      (X.map fun a => τ (a : E)) * ((gramE D x).map fun a => Complex.I * τ a) * (X.map fun a => τ (a : E))ᴴ := by
  ext a b

  simp only [Matrix.map_apply, gramE, Matrix.of_apply, Matrix.mul_apply, Matrix.conjTranspose_apply, sesq_comb,
  map_sum, map_mul, Finset.mul_sum, Finset.sum_mul, IsCMField.complexEmbedding_complexConj, starRingEnd_apply]
  refine Finset.sum_congr rfl fun n _ => Finset.sum_congr rfl fun m _ => ?_
  ring

theorem norm_diff_lt (D : Datum H) (ℓ : Nat.Primes) (j : E →+* ℂ_[ℓ]) {r : ℝ} (hr : 0 < r)
    (hb : ∀ x y, ‖j (sesq D x y)‖ ≤ r) (u u' v v' : D.La) :
    ‖j (sesq D (u + ((ℓ : ℕ) : 𝓞 E) • v) (u' + ((ℓ : ℕ) : 𝓞 E) • v')) - j (sesq D u u')‖ < r := by
  obtain ⟨-, hl, hr', hsl, hsr, -, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Fl.Sesq.form_of_datum E H D
  have hcast : ((((ℓ : ℕ) : 𝓞 E)) : E) = ((ℓ : ℕ) : E) := map_natCast (algebraMap (𝓞 E) E) _
  have e : j (sesq D (u + ((ℓ : ℕ) : 𝓞 E) • v) (u' + ((ℓ : ℕ) : 𝓞 E) • v')) - j (sesq D u u') =
      ((ℓ : ℕ) : ℂ_[ℓ]) * (j (sesq D v u') + j (sesq D u v') + ((ℓ : ℕ) : ℂ_[ℓ]) * j (sesq D v v')) := by
    rw [hl, hr', hr', hsl, hsl, hsr, hsr, hcast, map_natCast (IsCMField.complexConj E)]
    simp only [map_add (f := _), map_mul, map_natCast]
    ring
  have hc := norm_prime_lt ℓ
  have hc0 : 0 ≤ ‖(((ℓ : ℕ) : ℂ_[ℓ]))‖ := norm_nonneg _
  have h3 : ‖((ℓ : ℕ) : ℂ_[ℓ]) * j (sesq D v v')‖ ≤ r := by
    rw [norm_mul]
    exact (mul_le_of_le_one_left (norm_nonneg _) hc.le).trans (hb v v')
  have h4 : ‖j (sesq D v u') + j (sesq D u v') + ((ℓ : ℕ) : ℂ_[ℓ]) * j (sesq D v v')‖ ≤ r :=
    (IsUltrametricDist.norm_add_le_max _ _).trans (max_le
      ((IsUltrametricDist.norm_add_le_max _ _).trans (max_le (hb _ _) (hb _ _))) h3)
  rw [e, norm_mul]
  calc _ ≤ ‖(((ℓ : ℕ) : ℂ_[ℓ]))‖ * r := mul_le_mul_of_nonneg_left h4 hc0
    _ < 1 * r := mul_lt_mul_of_pos_right hc hr
    _ = r := one_mul r

theorem conj_ne (τ : E →+* ℂ) (h : τ (H.rt : E) = H.rt0) :
    (ComplexEmbedding.conjugate τ) (H.rt : E) ≠ H.rt0 := by
  have hd : (0 : ℝ) < H.d := by exact_mod_cast H.d_prime.pos
  have hsq := H.sqrt_neg_disc_sq
  have him : H.rt0 ≠ 0 := by
    intro h0
    rw [h0] at hsq
    simp at hsq
    exact H.d_prime.ne_zero hsq
  have h1 : H.rt0.re * H.rt0.re - H.rt0.im * H.rt0.im = -(H.d : ℝ) := by
    have := congrArg Complex.re hsq
    simpa [pow_two] using this
  have h2 : H.rt0.re * H.rt0.im + H.rt0.im * H.rt0.re = 0 := by
    have := congrArg Complex.im hsq
    simpa [pow_two] using this
  have h3 : H.rt0.re * H.rt0.im = 0 := by linarith [mul_comm H.rt0.re H.rt0.im]
  have hre : H.rt0.re = 0 := by
    rcases mul_eq_zero.1 h3 with h4 | h4
    · exact h4
    · rw [h4] at h1
      nlinarith [mul_self_nonneg H.rt0.re]
  rw [ComplexEmbedding.conjugate_coe_eq, h]
  intro h5
  have h6 := congrArg Complex.im h5
  simp at h6
  exact him (Complex.ext hre (by simpa using (by linarith : H.rt0.im = 0)))

theorem exists_emb (E : Type) [Field E] [NumberField E] (ℓ : Nat.Primes) : Nonempty (E →+* ℂ_[ℓ]) :=
  ⟨(IsAlgClosed.lift : E →ₐ[ℚ] ℂ_[ℓ]).toRingHom⟩

theorem norm_det_close (D : Datum H) (p : ℕ) (ℓ : Nat.Primes) (x x' w : Fin p → D.La)
    (hx' : ∀ a, x' a = x a + ((ℓ : ℕ) : 𝓞 E) • w a) (hx0 : (gramE D x).det ≠ 0)
    (hxn : ∀ j : E →+* ℂ_[ℓ], Real.log ‖j (gramE D x).det‖ =
      -(p : ℝ) * logIdeal (j.comp (algebraMap (𝓞 E) E)) (differentIdeal ℤ (𝓞 E))) :
    (gramE D x').det ≠ 0 ∧ ∀ j : E →+* ℂ_[ℓ], Real.log ‖j (gramE D x').det‖ =
      -(p : ℝ) * logIdeal (j.comp (algebraMap (𝓞 E) E)) (differentIdeal ℤ (𝓞 E)) := by
  have key : ∀ j : E →+* ℂ_[ℓ], 0 < ‖j (gramE D x').det‖ ∧ Real.log ‖j (gramE D x').det‖ =
      -(p : ℝ) * logIdeal (j.comp (algebraMap (𝓞 E) E)) (differentIdeal ℤ (𝓞 E)) := by
    intro j
    obtain ⟨r, hr, hlog, hb⟩ := exists_bound D ℓ j
    have hd0 : 0 < ‖j (gramE D x).det‖ := norm_pos_iff.2 ((map_ne_zero j).2 hx0)
    have hdet : ‖((gramE D x).map j).det‖ = r ^ Fintype.card (Fin p) := by
      have e : ((gramE D x).map j).det = j (gramE D x).det := (RingHom.map_det j _).symm
      rw [e, Fintype.card_fin, ← Real.exp_log hd0, hxn j, ← Real.exp_log (pow_pos hr p), Real.log_pow, hlog]
      congr 1
      ring
    have h := _root_.GlobalTheory.CompanionTheory.Ar.Fl.norm_det_eq_of_entries_close ℂ_[ℓ] (Fin p) ((gramE D x).map j) ((gramE D x').map j) r hr
      (fun a b => hb _ _) (fun a b => by
        simp only [Matrix.map_apply, gramE, Matrix.of_apply, hx']
        exact norm_diff_lt D ℓ j hr hb _ _ _ _) hdet
    have e' : ((gramE D x').map j).det = j (gramE D x').det := (RingHom.map_det j _).symm
    rw [e', Fintype.card_fin] at h
    refine ⟨by rw [h]; exact pow_pos hr p, ?_⟩
    rw [h, Real.log_pow, hlog]
    ring
  obtain ⟨j⟩ := exists_emb E ℓ
  refine ⟨fun h0 => ?_, fun j => (key j).2⟩
  have := (key j).1
  rw [h0] at this
  simp at this

theorem neg_compl (D : Datum H) {g : ℕ} {ty : Fin g → (E →+* ℂ)} {P₀ : D.La →+ (Fin g → ℂ)} {p q : ℕ}
    (hP₀ : IsPeriod D ty P₀) (hty : IsTypeFn H p q ty) (hpq : p + q = D.p + D.q)
    (x : Fin p ⊕ Fin q → D.La) (hli : LinearIndependent (𝓞 E) x)
    (horth : ∀ a b, sesq D (x (.inl a)) (x (.inr b)) = 0) (τ : E →+* ℂ) (hτ : τ (H.rt : E) = H.rt0)
    (hpos : ((gramE D (x ∘ Sum.inl)).map fun a => Complex.I * τ a).PosDef) :
    (-((gramE D (x ∘ Sum.inr)).map fun a => Complex.I * τ a)).PosDef := by
  obtain ⟨hH, -, C, hC⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Fl.signature_tau_gram E H D g ty P₀ p q x τ hP₀ hty hli hpq hτ
  have hblk : ((gramE D x).map fun a => Complex.I * τ a) =
      Matrix.fromBlocks ((gramE D (x ∘ Sum.inl)).map fun a => Complex.I * τ a) 0 0
        ((gramE D (x ∘ Sum.inr)).map fun a => Complex.I * τ a) := by
    ext (a | a) (b | b)
    · simp [gramE]
    · simp [gramE, horth]
    · have h := (_root_.GlobalTheory.CompanionTheory.Ar.Fl.Sesq.form_of_datum E H D).2.2.2.2.2.1 (x (.inl b)) (x (.inr a))
      simp [gramE, h, horth]
    · simp [gramE]
  rw [hblk] at hC
  refine _root_.GlobalTheory.CompanionTheory.Ar.Fl.Sylvester.neg_posDef_of_compl_posDef p q _ _ C hpos ?_ hC
  ext i k
  have h := congrFun (congrFun hH (.inr i)) (.inr k)
  simpa [gramE] using h

end GlobalTheory.CompanionTheory.Ar.Fl.DSplit

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

theorem GlobalTheory.CompanionTheory.Ar.Fl.DSplit.exists_split_period : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (g : ℕ) (ty : Fin g → (E →+* ℂ)) (P₀ : D.La →+ (Fin g → ℂ)) (p q : ℕ) (ℓ : Nat.Primes), IsPeriod D ty P₀ → IsTypeFn H p q ty → p + q = D.p + D.q → ∃ (P : D.La →+ (Fin g → ℂ)) (hP : IsPeriod D ty P) (x : Fin p ⊕ Fin q → D.La), IsLocBasis (𝓞 E) ℓ x ∧ IsPure hP x := by
  intro E _ _ _ H D g ty P₀ p q ℓ hP₀ hty hpq
  obtain ⟨x, hxb, hx0, hxn⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Fl.LocR.exists_locBasis_first_unimodular E H D p q ℓ hpq
  have hli := hxb.1
  let Ψ : Set (E →+* ℂ) := {τ | τ (H.rt : E) = H.rt0}
  let M : (E →+* ℂ) → Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ :=
    fun τ => (gramE D x).map fun a => Complex.I * τ a
  have hC : ∀ τ : E →+* ℂ, ∃ C : Matrix (Fin p) (Fin p ⊕ Fin q) ℂ, τ ∈ Ψ → (C * M τ * Cᴴ).PosDef := by
    intro τ
    by_cases h : τ ∈ Ψ
    · obtain ⟨C, hC⟩ := (_root_.GlobalTheory.CompanionTheory.Ar.Fl.signature_tau_gram E H D g ty P₀ p q x τ hP₀ hty hli hpq h).2.1
      exact ⟨C, fun _ => hC⟩
    · exact ⟨0, fun h' => absurd h' h⟩
  choose C hC using hC
  obtain ⟨Y, hY⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Fl.frame_congr_posDef_on_places E Ψ (Fin p) (Fin p ⊕ Fin q) M C (Matrix.fromCols 1 0) (ℓ : ℕ) ℓ.2.ne_zero
    (fun τ h => DSplit.conj_ne τ h)
    (fun τ h => ⟨(_root_.GlobalTheory.CompanionTheory.Ar.Fl.signature_tau_gram E H D g ty P₀ p q x τ hP₀ hty hli hpq h).1, hC τ h⟩)
  let X : Matrix (Fin p) (Fin p ⊕ Fin q) (𝓞 E) := Matrix.fromCols 1 0 + (ℓ : ℕ) • Y
  let x' : Fin p → D.La := fun a => ∑ m, X a m • x m
  let w : Fin p → D.La := fun a => ∑ m, Y a m • x m
  have hx' : ∀ a, x' a = (x ∘ Sum.inl) a + (((ℓ : ℕ) : 𝓞 E)) • w a := by
    intro a
    simp only [x', w, X, Matrix.add_apply, Matrix.smul_apply, add_smul, Finset.sum_add_distrib, Finset.smul_sum,
      nsmul_eq_mul, mul_smul, Function.comp]
    congr 1
    simp [Fintype.sum_sum_type, Matrix.one_apply, ite_smul]
  obtain ⟨hd0, hdn⟩ := DSplit.norm_det_close D p ℓ (x ∘ Sum.inl) x' w hx' hx0 hxn
  obtain ⟨x₂, hx₂, hb₂, horth⟩ := _root_.GlobalTheory.CompanionTheory.Relay.exists_orthogonal_local_basis E H D p q ℓ x' hpq hd0 hdn
  have hpos : ∀ τ : E →+* ℂ, τ (H.rt : E) = H.rt0 →
      ((gramE D (x₂ ∘ Sum.inl)).map fun a => Complex.I * τ a).PosDef := by
    intro τ hτ
    rw [hx₂, DSplit.gram_comb_map D τ x X]
    exact hY τ hτ
  obtain ⟨P, hP, hpure⟩ := _root_.GlobalTheory.CompanionTheory.Relay.gram_signature_orthogonal_split E H D g ty p q x₂ hty hpq hb₂.1 horth fun τ hτ =>
    ⟨hpos τ hτ, DSplit.neg_compl D hP₀ hty hpq x₂ hb₂.1 horth τ hτ (hpos τ hτ)⟩
  exact ⟨P, hP, x₂, hb₂, hpure⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PurePeriodLocalBasisExists =====
