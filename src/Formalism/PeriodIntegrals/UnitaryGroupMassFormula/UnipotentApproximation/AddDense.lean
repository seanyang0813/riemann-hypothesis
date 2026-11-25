module

public import Mathlib.RingTheory.DedekindDomain.FiniteAdeleRing
public import Mathlib.RingTheory.DedekindDomain.Factorization
import Mathlib.Tactic.Linter.Style
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.AdeleApproximation.AdeleIntA

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentApproximation.MemZeroLocusGLIff, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentApproximation.AddDense

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentApproximation.MemZeroLocusGLIff =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentApproximation.MemZeroLocusGLIff", "h": "module\n\npublic import Mathlib.RingTheory.DedekindDomain.FiniteAdeleRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain

namespace PI.UnipApproxD

def AddDense : Prop :=
  ∀ (F : Type) [Field F] [NumberField F], DenseRange (algebraMap F (FiniteAdeleRing (𝓞 F) F))

end PI.UnipApproxD
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentApproximation.MemZeroLocusGLIff =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentApproximation.AddDense =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentApproximation.AddDense", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentApproximation.MemZeroLocusGLIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.DedekindDomain.Factorization\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.AdeleApproximation.AdeleIntA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnipApproxD.IntegersDenseFiniteAdeles

open IsDedekindDomain IsDedekindDomain.HeightOneSpectrum
open ReciprocityTheory.ChartRestriction.G.Lib.AdeleIntA (exists_approx exists_approx_adele)

variable {R : Type*} [CommRing R] [IsDedekindDomain R] {K : Type*} [Field K] [Algebra R K]
  [IsFractionRing R K]

private theorem val_K_lemma (v : HeightOneSpectrum R) (k : K) :
    Valued.v (algebraMap K (v.adicCompletion K) k) = v.valuation K k := by
  first
  | exact valuedAdicCompletion_eq_valuation' v k

theorem exists_small (v : HeightOneSpectrum R) {U : Set (v.adicCompletion K)}
    (hU : U ∈ nhds (0 : v.adicCompletion K)) :
    ∃ r : R, r ≠ 0 ∧ ∀ y : v.adicCompletion K, Valued.v y ≤ v.intValuation r → y ∈ U := by
  obtain ⟨γ, hγ⟩ := Valued.mem_nhds_zero.mp hU
  have hpos : (0 : WithZero (Multiplicative ℤ)) < MonoidWithZeroHom.ValueGroup₀.embedding γ.1 := by
    have := MonoidWithZeroHom.ValueGroup₀.embedding_strictMono (zero_lt_iff.mpr γ.ne_zero)
    simpa using this
  obtain ⟨k, hk⟩ := WithZero.exists_exp_neg_natCast_lt hpos.ne'
  have hI : v.asIdeal ^ k ≠ ⊥ := by
    rw [← Ideal.zero_eq_bot]; exact pow_ne_zero _ (by rw [Ideal.zero_eq_bot]; exact v.ne_bot)
  obtain ⟨r, hrI, hr⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hI
  refine ⟨r, hr, fun y hy => hγ ?_⟩
  show Valued.v.restrict y < γ.1
  rw [Valuation.restrict_lt_iff_lt_embedding]
  exact lt_of_le_of_lt (hy.trans ((v.intValuation_le_pow_iff_mem r k).mpr hrI)) hk

theorem exists_small_finset (s : Finset (HeightOneSpectrum R)) (U : ∀ v : HeightOneSpectrum R, Set (v.adicCompletion K))
    (hU : ∀ v ∈ s, U v ∈ nhds (0 : v.adicCompletion K)) :
    ∃ r : R, r ≠ 0 ∧ ∀ v ∈ s, ∀ y : v.adicCompletion K, Valued.v y ≤ v.intValuation r → y ∈ U v := by
  classical
  choose! r hr0 hr using fun v (hv : v ∈ s) => exists_small (R := R) (K := K) v (hU v hv)
  refine ⟨∏ w ∈ s, r w, Finset.prod_ne_zero_iff.mpr hr0, ?_⟩
  intro v hv y hy
  apply hr v hv y
  refine le_trans hy ?_
  rw [map_prod, ← Finset.mul_prod_erase s _ hv]
  apply mul_le_of_le_one_right'
  apply Finset.prod_le_one'
  intro w _
  first
  | exact v.intValuation_le_one (r w)

theorem denseRange : DenseRange (algebraMap K (FiniteAdeleRing R K)) := by
  classical
  intro x
  rw [mem_closure_iff_nhds]
  intro t ht
  have hc : Continuous (fun y : FiniteAdeleRing R K => x + y) := continuous_const.add continuous_id
  have h1 : (fun y : FiniteAdeleRing R K => x + y) ⁻¹' t ∈ nhds (0 : FiniteAdeleRing R K) :=
    hc.continuousAt.preimage_mem_nhds (by rwa [add_zero])
  have hAopen : ∀ v : HeightOneSpectrum R,
      IsOpen (v.adicCompletionIntegers K : Set (v.adicCompletion K)) :=
    fun v => Valued.isOpen_valuationSubring _
  let z0 : ∀ v : HeightOneSpectrum R, (v.adicCompletionIntegers K : Set (v.adicCompletion K)) :=
    fun v => ⟨0, (v.adicCompletionIntegers K).zero_mem⟩
  have h1' : ((fun y : FiniteAdeleRing R K => x + y) ⁻¹' t :
        Set (RestrictedProduct (fun v : HeightOneSpectrum R => v.adicCompletion K)
          (fun v => (v.adicCompletionIntegers K : Set (v.adicCompletion K))) Filter.cofinite)) ∈
      nhds (RestrictedProduct.structureMap (fun v : HeightOneSpectrum R => v.adicCompletion K)
        (fun v => (v.adicCompletionIntegers K : Set (v.adicCompletion K))) Filter.cofinite z0) := h1
  rw [RestrictedProduct.nhds_eq_map_structureMap hAopen, Filter.mem_map, nhds_pi,
    Filter.mem_pi'] at h1'
  obtain ⟨I, u, hu, hIu⟩ := h1'
  have hW : ∀ v, ∃ W : Set (v.adicCompletion K), W ∈ nhds (0 : v.adicCompletion K) ∧
      ∀ y : v.adicCompletion K, (hy : y ∈ (v.adicCompletionIntegers K : Set (v.adicCompletion K))) →
        y ∈ W → (⟨y, hy⟩ : (v.adicCompletionIntegers K : Set (v.adicCompletion K))) ∈ u v := by
    intro v
    obtain ⟨W, hW, hWu⟩ := (mem_nhds_subtype _ (z0 v) (u v)).mp (hu v)
    exact ⟨W, hW, fun y hy hyW => hWu hyW⟩
  choose W hW0 hWu using hW
  obtain ⟨r, hr, hsmall⟩ := exists_small_finset I W (fun v _ => hW0 v)
  obtain ⟨u0, hu0⟩ := exists_approx_adele x
  obtain ⟨a, ha⟩ := exists_approx _ hu0 r hr
  refine ⟨algebraMap K (FiniteAdeleRing R K) (u0 + algebraMap R K a), ?_, _, rfl⟩
  have ey : ∀ v : HeightOneSpectrum R,
      (algebraMap K (FiniteAdeleRing R K) (u0 + algebraMap R K a) - x) v =
        -((x - algebraMap K (FiniteAdeleRing R K) u0) v -
          algebraMap K (v.adicCompletion K) (algebraMap R K a)) := by
    intro v
    show algebraMap K (v.adicCompletion K) (u0 + algebraMap R K a) - x v =
      -((x v - algebraMap K (v.adicCompletion K) u0) - algebraMap K (v.adicCompletion K) (algebraMap R K a))
    rw [map_add (f := _)]; ring
  have hval : ∀ v : HeightOneSpectrum R,
      Valued.v ((algebraMap K (FiniteAdeleRing R K) (u0 + algebraMap R K a) - x) v) ≤ v.intValuation r := by
    intro v
    rw [ey, Valuation.map_neg]
    exact ha v
  have hint : ∀ v : HeightOneSpectrum R,
      (algebraMap K (FiniteAdeleRing R K) (u0 + algebraMap R K a) - x) v ∈
        (v.adicCompletionIntegers K : Set (v.adicCompletion K)) := by
    intro v
    rw [SetLike.mem_coe, mem_adicCompletionIntegers]
    exact (hval v).trans (v.intValuation_le_one r)
  let z : ∀ v : HeightOneSpectrum R, (v.adicCompletionIntegers K : Set (v.adicCompletion K)) :=
    fun v => ⟨(algebraMap K (FiniteAdeleRing R K) (u0 + algebraMap R K a) - x) v, hint v⟩
  have hz : z ∈ Set.pi (↑I) u := fun v hv => hWu v _ (hint v) (hsmall v hv _ (hval v))
  have hmem := hIu hz
  have e : x + (algebraMap K (FiniteAdeleRing R K) (u0 + algebraMap R K a) - x) =
      algebraMap K (FiniteAdeleRing R K) (u0 + algebraMap R K a) := add_sub_cancel x _
  rw [← e]
  exact hmem

end PI.UnipApproxD.IntegersDenseFiniteAdeles

namespace PI.UnipApproxD

open NumberField IsDedekindDomain

theorem additive_dense_integers : AddDense := by
  intro F _ _
  exact IntegersDenseFiniteAdeles.denseRange

end PI.UnipApproxD
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentApproximation.AddDense =====
