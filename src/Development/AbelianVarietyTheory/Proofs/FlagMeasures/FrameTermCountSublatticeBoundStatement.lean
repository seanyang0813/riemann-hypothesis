module

public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.RowMinor
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LinearFormsBoundedRepresentatives
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.EncardBiUnionLe
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IntegralOfUnimodular
public import Formalism.FlagUnipotentLattices.CardSubgroupsOfIndexLe
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardIntegralFramesFixedLiftLeStatement
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsFrameFixingIsometrySplitRowLatticeStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Algebra.AffineMonoid.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.MeasurePreservingPiCompProd
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsLatticeOfAdelicPoint
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsTraceOneIntegerConjDiffPrimeTo
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LinearFormsBoundedRepresentativesStatement, Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSublatticeLiftsModuloFixingUnipotent, Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSublatticeLiftsModuloFixingUnipotentStatement, Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardExactGramIntegralFrameClassesLe, Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardExactGramIntegralFrameClassesLeStatement, Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsExactGramFrameInTermClass, Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsExactGramFrameInTermClassStatement, Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameTermCountSublatticeBound, Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameTermCountSublatticeBoundStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LinearFormsBoundedRepresentativesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.LinearFormsBoundedRepresentativesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.RowMinor\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LinearFormsBoundedRepresentatives\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt GlobalTheory.LoopC
open scoped ENNReal Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.linear_forms_bounded_representatives : ∀ (D : D7) (u u' : D.what₂.Word) (F0 : Fb D u) (Λ : LatV D), Stand D u u' → IsBase D u F0 → IsRowLat D F0 Λ → ∀ M0 : LatW D, IsPrimitiveSub M0 (L0X D Λ (lf D F0)) → ∃ reps : Finset (M0 →ₗ[𝓞 D.host.E] 𝓞 D.host.E), (reps.card : ℝ) ≤ NT D u ^ 2 ∧ ∀ ψ : M0 →ₗ[𝓞 D.host.E] 𝓞 D.host.E, ∃ ψ₀ ∈ reps, ∃ v ∈ L0X D Λ (lf D F0), ∀ x : M0, ((ψ x - ψ₀ x : 𝓞 D.host.E) : D.host.E) = (D.sp.X 0).hT v x := by
  first | exact @GlobalTheory.LoopC.FunIdx.funIdx
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.LinearFormsBoundedRepresentativesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSublatticeLiftsModuloFixingUnipotent =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSublatticeLiftsModuloFixingUnipotent", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.RowMinor\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.EncardBiUnionLe\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IntegralOfUnimodular\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LinearFormsBoundedRepresentativesStatement\npublic import Formalism.FlagUnipotentLattices.CardSubgroupsOfIndexLe\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.FlagUnipotentLattices.MinkowskiFactorialBounds.MeasurePreservingPiCompProd\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Module Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt GlobalTheory.LoopC
open scoped ENNReal Classical nonZeroDivisors

namespace GlobalTheory.LoopC.Lifts

section General

variable {R K P : Type} [CommRing R] [IsDedekindDomain R] [Field K] [Algebra R K] [IsFractionRing R K]
  [AddCommGroup P] [Module R P]

theorem exists_gen_mod (I : FractionalIdeal R⁰ K) (hI : I ≠ 0) {n : R} (hn : n ≠ 0) :
    ∃ t ∈ I, ∀ s ∈ I, ∃ a : R, ∃ s' ∈ I, s = a • t + n • s' := by
  have hn' : (FractionalIdeal.spanSingleton R⁰ (algebraMap R K n)) ≠ 0 := by
    simpa [FractionalIdeal.spanSingleton_eq_zero_iff] using hn
  have hle : FractionalIdeal.spanSingleton R⁰ (algebraMap R K n) * I ≤ I :=
    FractionalIdeal.spanSingleton_mul_le_iff.2 fun z hz => by
      rw [← Algebra.smul_def]; exact (I : Submodule R K).smul_mem n hz
  obtain ⟨t, ht⟩ := IsDedekindDomain.exists_add_spanSingleton_mul_eq hle (mul_ne_zero hn' hI) one_ne_zero
  rw [mul_one] at ht
  refine ⟨t, ?_, fun s hs => ?_⟩
  · rw [← FractionalIdeal.spanSingleton_le_iff_mem, ← ht, ← FractionalIdeal.sup_eq_add]
    exact le_sup_right
  · rw [← ht, FractionalIdeal.mem_add] at hs
    obtain ⟨i, hi, j, hj, rfl⟩ := hs
    obtain ⟨s', hs', rfl⟩ := FractionalIdeal.mem_singleton_mul.1 hi
    obtain ⟨a, rfl⟩ := (FractionalIdeal.mem_spanSingleton _).1 hj
    exact ⟨a, s', hs', by rw [add_comm, Algebra.smul_def n]⟩

theorem exists_lift (φ : P →ₗ[R] K) (h : ∀ p, ∃ o : R, algebraMap R K o = φ p) :
    ∃ ψ : P →ₗ[R] R, Algebra.linearMap R K ∘ₗ ψ = φ := by
  choose f hf using h
  have hi := IsFractionRing.injective R K
  refine ⟨⟨⟨f, fun x y => hi ?_⟩, fun c x => hi ?_⟩, LinearMap.ext fun p => hf p⟩
  · simp [hf]
  · simp [hf, Algebra.smul_def]

theorem ideal_reps [CharZero R] (I : FractionalIdeal R⁰ K) (hI : I ≠ 0) (B : AddSubgroup (P →ₗ[R] R))
    (S : Finset (P →ₗ[R] R)) (hS : ∀ ψ, ∃ ψ₀ ∈ S, ψ - ψ₀ ∈ B) :
    ∃ c ∈ I, ∀ G : AddSubmonoid (P →ₗ[R] K),
      (∀ x ∈ I, ∀ ψ ∈ B, x • (Algebra.linearMap R K ∘ₗ ψ) ∈ G) →
      ∀ φ : P →ₗ[R] K, (∀ p, φ p ∈ I) → ∃ ψ₀ ∈ S, φ - c • (Algebra.linearMap R K ∘ₗ ψ₀) ∈ G := by
  haveI : Finite ((P →ₗ[R] R) ⧸ B) := by
    refine Finite.of_surjective (fun s : S => (QuotientAddGroup.mk s.1 : (P →ₗ[R] R) ⧸ B)) ?_
    intro q
    obtain ⟨ψ, rfl⟩ := QuotientAddGroup.mk_surjective q
    obtain ⟨ψ₀, h0, h1⟩ := hS ψ
    refine ⟨⟨ψ₀, h0⟩, ?_⟩
    rw [QuotientAddGroup.eq]
    simpa [neg_add_eq_sub] using h1
  have hn : B.index ≠ 0 := AddSubgroup.index_ne_zero_of_finite
  obtain ⟨c, hc, hgen⟩ := exists_gen_mod I hI (n := (B.index : R)) (by exact_mod_cast hn)
  refine ⟨c, hc, fun G hG φ hφ => ?_⟩
  have key : ∀ t ∈ I * I⁻¹, ∃ ψ : P →ₗ[R] R, t • φ - c • (Algebra.linearMap R K ∘ₗ ψ) ∈ G := by
    intro t ht
    refine FractionalIdeal.mul_induction_on ht
      (C := fun t => ∃ ψ : P →ₗ[R] R, t • φ - c • (Algebra.linearMap R K ∘ₗ ψ) ∈ G) ?_ ?_
    · intro a ha b hb
      obtain ⟨ψ, hψ⟩ := exists_lift (b • φ) (fun p => by
        have := FractionalIdeal.mul_mem_mul hb (hφ p)
        rw [inv_mul_cancel₀ hI] at this
        exact (FractionalIdeal.mem_one_iff _).1 this)
      obtain ⟨o, s', hs', rfl⟩ := hgen a ha
      refine ⟨o • ψ, ?_⟩
      have := hG s' hs' _ (B.nsmul_index_mem ψ)
      convert this using 1
      ext p
      have e := LinearMap.congr_fun hψ p
      simp only [LinearMap.comp_apply, Algebra.linearMap_apply, LinearMap.smul_apply, smul_eq_mul] at e
      simp only [LinearMap.sub_apply, LinearMap.comp_apply, Algebra.linearMap_apply, LinearMap.smul_apply,
        smul_eq_mul, Algebra.smul_def, map_mul, e, map_natCast, eq_natCast]
      ring
    · rintro x y ⟨ψ₁, h₁⟩ ⟨ψ₂, h₂⟩
      refine ⟨ψ₁ + ψ₂, ?_⟩
      convert G.add_mem h₁ h₂ using 1
      rw [LinearMap.comp_add, add_smul, smul_add]
      abel
  obtain ⟨ψ, hψ⟩ := key 1 (by rw [mul_inv_cancel₀ hI]; exact FractionalIdeal.one_mem_one _)
  obtain ⟨ψ₀, h0, h1⟩ := hS ψ
  refine ⟨ψ₀, h0, ?_⟩
  convert G.add_mem hψ (hG c hc _ h1) using 1
  rw [LinearMap.comp_sub, smul_sub, one_smul]
  abel

theorem restrict_reps (hR : ¬ IsField R) {M : Type} [AddCommGroup M] [Module R M] [Module.Finite R M]
    [Module.IsTorsionFree R M] (N : Submodule R M) (hfin : Finite (M ⧸ N)) :
    ∃ S : Finset (N →ₗ[R] R), S.card ≤ Nat.card (M ⧸ N) ∧
      ∀ ψ : N →ₗ[R] R, ∃ ψ₀ ∈ S, ∃ χ : M →ₗ[R] R, ψ - ψ₀ = χ ∘ₗ N.subtype := by
  haveI : Module.Flat R M := inferInstance
  haveI : Module.FinitePresentation R M := Module.finitePresentation_of_finite R M
  haveI : Module.Projective R M := Module.Flat.projective_of_finitePresentation
  have h := _root_.Formalism.HermitianLatticeCounting.P.cardCokernelRestriction R M R N hR hfin
  rw [Module.finrank_self, pow_one] at h
  have hpos : 0 < Nat.card (M ⧸ N) := Nat.card_pos
  haveI : Finite ((N →ₗ[R] R) ⧸ LinearMap.range (LinearMap.lcomp R R N.subtype)) :=
    Nat.finite_of_card_ne_zero (by omega)
  haveI := Fintype.ofFinite ((N →ₗ[R] R) ⧸ LinearMap.range (LinearMap.lcomp R R N.subtype))
  refine ⟨Finset.univ.image (fun q : ((N →ₗ[R] R) ⧸ LinearMap.range (LinearMap.lcomp R R N.subtype)) => q.out),
    ?_, fun ψ => ?_⟩
  · refine Finset.card_image_le.trans ?_
    rw [Finset.card_univ, ← Nat.card_eq_fintype_card, h]
  · refine ⟨(Submodule.Quotient.mk ψ : _ ⧸ LinearMap.range (LinearMap.lcomp R R N.subtype)).out,
      Finset.mem_image_of_mem _ (Finset.mem_univ _), ?_⟩
    have : (Submodule.Quotient.mk ψ : _ ⧸ LinearMap.range (LinearMap.lcomp R R N.subtype)) =
        Submodule.Quotient.mk (Submodule.Quotient.mk ψ : _ ⧸ LinearMap.range (LinearMap.lcomp R R N.subtype)).out :=
      (Quotient.out_eq _).symm
    obtain ⟨χ, hχ⟩ := (Submodule.Quotient.eq _).1 this
    exact ⟨χ, hχ.symm⟩

end General

section Record

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable (D : D7)

theorem hT_zero_symm {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E) {x y : S.V}
    (h : S.hT x y = 0) : S.hT y x = 0 := by
  have := S.herm.eq x y
  rw [h] at this
  simpa using this.symm

theorem ddS_ne_zero : ddS D ≠ 0 := by
  rw [ddS, FractionalIdeal.coeIdeal_ne_zero, Ne,
    Ideal.map_eq_bot_iff_of_injective (RingOfIntegers.algebraMap.injective _ _)]
  exact differentIdeal_ne_bot

theorem hyp_fe (a b : Fin D.R.rS) : (hS D).hT (D.sp.hypF a) (D.sp.hypE b) = if a = b then 1 else 0 := by
  have h1 := (D.sp.Y 0).herm.eq (D.sp.hypE b) (D.sp.hypF a)
  rw [D.sp.hyp_ef b a] at h1
  rw [← h1]
  by_cases h : a = b
  · subst h; simp
  · simp [h, Ne.symm h]

theorem expand {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E) {r : ℕ} (e f : Fin r → S.V)
    (h : ∀ a b, S.hT (f a) (e b) = if a = b then 1 else 0) {x : S.V}
    (hx : x ∈ Submodule.span E (Set.range e)) : x = ∑ a, S.hT (f a) x • e a := by
  obtain ⟨c, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun E).1 hx
  refine Finset.sum_congr rfl fun a _ => ?_

  simp [map_sum, h]

theorem orth_span {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E) {s : Set S.V} {y : S.V}
    (h : ∀ x ∈ s, S.hT x y = 0) : y ∈ orth S (Submodule.span E s) := by
  simp only [orth, Submodule.mem_iInf, LinearMap.mem_ker]
  intro x hx
  induction hx using Submodule.span_induction with
  | mem x hx => exact h x hx
  | zero => simp
  | add y z _ _ h1 h2 => simp [h1, h2]
  | smul c y _ h => simp [h]

theorem orth_apply {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E) {U : Submodule E S.V}
    {x y : S.V} (hy : y ∈ orth S U) (hx : x ∈ U) : S.hT x y = 0 := by
  simp only [orth, Submodule.mem_iInf, LinearMap.mem_ker] at hy
  exact hy x hx

variable {D}

theorem XS_le {T : D.host.E} (F0 : FlagG (VS D) D.R.rS T) : XS D F0 ≤ toO (hS D) F0.X := by
  refine Submodule.span_le.2 ?_
  rintro _ ⟨a, x, -, rfl⟩
  exact F0.X.smul_mem x (Submodule.subset_span ⟨a, rfl⟩)

theorem YS_le : YS D ≤ toO (hS D) (Submodule.span D.host.E (Set.range D.sp.hypF)) := by
  refine Submodule.span_le.2 ?_
  rintro _ ⟨a, x, -, rfl⟩
  exact (Submodule.span D.host.E (Set.range D.sp.hypF)).smul_mem x (Submodule.subset_span ⟨a, rfl⟩)

theorem iXY_mem_Wb (v : (D.sp.X 0).V) : D.sp.iXY 0 v ∈ Wb D := by
  refine orth_span _ ?_
  rintro _ (⟨a, rfl⟩ | ⟨a, rfl⟩)
  · exact hT_zero_symm _ (D.sp.hyp_orthX a v).1
  · exact hT_zero_symm _ (D.sp.hyp_orthX a v).2

theorem mem_of_split {u : D.what₂.Word} {F0 : Fb D u} {Λ : LatV D} (hB : IsBase D u F0) (hS' : IsSplit D F0 Λ)
    {v : (D.sp.X 0).V} (hv : v ∈ L0X D Λ (lf D F0)) : D.sp.iXY 0 v ∈ Λ := by
  have hX : F0.X = Submodule.span D.host.E (Set.range D.sp.hypE) := by rw [← hB.1]; rfl
  obtain ⟨l, hl, x, hx, e⟩ := Submodule.mem_sup.1 hv.1.1
  have hl1 := hl.1
  rw [hS'] at hl1
  obtain ⟨l', hl', y, hy, rfl⟩ := Submodule.mem_sup.1 hl1
  obtain ⟨x₁, hx₁, m, hm, rfl⟩ := Submodule.mem_sup.1 hl'
  have hx2 : x₁ + x ∈ Submodule.span D.host.E (Set.range D.sp.hypE) := by
    rw [← hX]; exact F0.X.add_mem (XS_le F0 hx₁) hx
  have hy2 : y ∈ Submodule.span D.host.E (Set.range D.sp.hypF) := YS_le hy
  have e' : (x₁ + x) + y = D.sp.iXY 0 v - m := by
    have : D.sp.iXY 0 v = x₁ + m + y + x := e.symm
    rw [this]; abel
  have hw : (x₁ + x) + y ∈ Wb D := by rw [e']; exact (Wb D).sub_mem (iXY_mem_Wb v) hm.2
  have hy0 : y = 0 := by
    rw [expand (hS D) D.sp.hypF D.sp.hypE D.sp.hyp_ef hy2]
    refine Finset.sum_eq_zero fun a _ => ?_
    have h1 := orth_apply _ hw (Submodule.subset_span (Or.inl ⟨a, rfl⟩))
    have h2 : (hS D).hT (D.sp.hypE a) (x₁ + x) = 0 := by
      rw [expand (hS D) D.sp.hypE D.sp.hypF (hyp_fe D) hx2]

      simp [map_sum, D.sp.hyp_ee]
    rw [map_add (f := _), h2, zero_add] at h1
    rw [h1, zero_smul]
  rw [hy0, add_zero] at hw e'
  have hx0 : x₁ + x = 0 := by
    rw [expand (hS D) D.sp.hypE D.sp.hypF (hyp_fe D) hx2]
    refine Finset.sum_eq_zero fun a _ => ?_
    rw [orth_apply _ hw (Submodule.subset_span (Or.inr ⟨a, rfl⟩)), zero_smul]
  rw [hx0, eq_comm, sub_eq_zero] at e'
  rw [e']
  exact hm.1

theorem iXY_injective : Function.Injective (D.sp.iXY 0) := by
  have hm := D.R.two_le_m
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro x hx
  refine (D.sp.X 0).nondeg.1 x fun y => ?_
  rw [← D.sp.iXY_isom 0 (by omega), hx, map_zero, LinearMap.zero_apply]

theorem sat_primitive {L P : LatW D} (h : P ≤ L) : IsPrimitiveSub (sat D L P) L := by
  refine ⟨inf_le_left, ?_⟩
  have : Submodule.span D.host.E ((sat D L P : LatW D) : Set (D.sp.X 0).V) =
      Submodule.span D.host.E (P : Set (D.sp.X 0).V) := by
    apply le_antisymm
    · exact Submodule.span_le.2 fun x hx => hx.2
    · exact Submodule.span_mono fun x hx => ⟨h hx, Submodule.subset_span hx⟩
  rw [this]; rfl

theorem fun_reps {u u' : D.what₂.Word} {F0 : Fb D u} {Λ : LatV D} (hSt : Stand D u u') (hB : IsBase D u F0)
    (hR : IsRowLat D F0 Λ) (hS' : IsSplit D F0 Λ) {P : LatW D} {s : ℕ} {Q : ℝ}
    (hP : SubOK D (L0X D Λ (lf D F0)) P s Q) :
    ∃ S : Finset (P →ₗ[𝓞 D.host.E] 𝓞 D.host.E), (S.card : ℝ) ≤ NT D u ^ 2 * Q ∧
      ∀ ψ : P →ₗ[𝓞 D.host.E] 𝓞 D.host.E, ∃ ψ₀ ∈ S, ∃ v ∈ L0X D Λ (lf D F0),
        ∀ p : P, (((ψ - ψ₀) p : 𝓞 D.host.E) : D.host.E) = (D.sp.X 0).hT v p := by
  obtain ⟨hPL, -, h1, hQ, -⟩ := hP
  set L := L0X D Λ (lf D F0) with hL
  set M := sat D L P with hM
  have hPM : P ≤ M := fun x hx => ⟨hPL hx, Submodule.subset_span hx⟩
  have hfg : M.FG := by
    apply Submodule.fg_of_fg_map_injective ((D.sp.iXY 0).restrictScalars (𝓞 D.host.E)) iXY_injective
    refine Submodule.FG.of_le hR.2.1.1.fg ?_
    rintro _ ⟨x, hx, rfl⟩
    exact mem_of_split hB hS' hx.1
  haveI : Module.Finite (𝓞 D.host.E) M := Module.Finite.iff_fg.2 hfg
  haveI : Module.IsTorsionFree (𝓞 D.host.E) (D.sp.X 0).V :=
    Module.IsTorsionFree.trans_faithfulSMul (𝓞 D.host.E) D.host.E _
  obtain ⟨S₁, hc₁, hS₁⟩ := restrict_reps (RingOfIntegers.not_isField D.host.E) (P.comap M.subtype)
    (Nat.finite_of_card_ne_zero (by unfold idxW at h1; omega))
  obtain ⟨S₂, hc₂, hS₂⟩ := GlobalTheory.T.linear_forms_bounded_representatives D u u' F0 Λ hSt hB hR M (sat_primitive hPL)
  let e := Submodule.comapSubtypeEquivOfLe hPM
  refine ⟨(S₂ ×ˢ S₁).image (fun q => q.2 ∘ₗ e.symm.toLinearMap + q.1 ∘ₗ Submodule.inclusion hPM), ?_, fun ψ => ?_⟩
  · have h2 : (S₁.card : ℝ) ≤ Q := le_trans (by exact_mod_cast hc₁) hQ
    refine le_trans (Nat.cast_le.2 Finset.card_image_le) ?_
    rw [Finset.card_product, Nat.cast_mul]
    exact mul_le_mul hc₂ h2 (Nat.cast_nonneg _) (sq_nonneg _)
  · obtain ⟨ψ₁, m₁, χ, hχ⟩ := hS₁ (ψ ∘ₗ e.toLinearMap)
    obtain ⟨ψ₂, m₂, v, hv, hv'⟩ := hS₂ χ
    refine ⟨_, Finset.mem_image_of_mem _ (Finset.mk_mem_product m₂ m₁), v, hv, fun p => ?_⟩
    have h3 := LinearMap.congr_fun hχ (e.symm p)
    have h4 := hv' (Submodule.inclusion hPM p)
    have h5 : ψ p - ψ₁ (e.symm p) = χ (Submodule.inclusion hPM p) := by
      simp only [LinearMap.sub_apply, LinearMap.comp_apply, LinearEquiv.coe_coe,
        LinearEquiv.apply_symm_apply] at h3
      exact h3
    rw [← h5] at h4
    refine Eq.trans ?_ h4
    congr 1
    simp only [LinearMap.sub_apply, LinearMap.add_apply, LinearMap.comp_apply, LinearEquiv.coe_coe]
    ring


variable (D) in
abbrev coefI (a : Fin D.R.rS) : FractionalIdeal (𝓞 D.host.E)⁰ D.host.E :=
  ddS D ^ (-((D.R.rS : ℤ) - (a : ℕ)))

theorem coef_mem {u : D.what₂.Word} {F0 : Fb D u} (hB : IsBase D u F0) (a : Fin D.R.rS) {y : (hS D).V}
    (hy : y ∈ XS D F0) : (hS D).hT (D.sp.hypF a) y ∈ coefI D a := by
  induction hy using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨b, x, hx, rfl⟩ := hy
    rw [hB.1, map_smul, hyp_fe]
    split_ifs with h
    · subst h; rw [smul_eq_mul, mul_one]; exact hx
    · rw [smul_zero]; exact FractionalIdeal.zero_mem _
  | zero => rw [map_zero]; exact FractionalIdeal.zero_mem _
  | add y z _ _ h1 h2 =>
    rw [map_add (f := _)]; exact (coefI D a : Submodule (𝓞 D.host.E) D.host.E).add_mem h1 h2
  | smul c y _ h =>
    rw [LinearMap.map_smul_of_tower]
    exact (coefI D a : Submodule (𝓞 D.host.E) D.host.E).smul_mem c h

theorem integralUnipotentFixingFrame_fixes_isotropic {T : D.host.E} {F : Fg D T} {Λ : LatV D} {n : (hS D).V ≃ₗ[D.host.E] (hS D).V}
    (hn : n ∈ N1 D Λ F) {x : (hS D).V} (hx : x ∈ Xsp F) : n x = x := by
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨a, rfl⟩ := hx
    have := hn.2 a.castSucc
    simpa [frame, FlagG.fvec] using this
  | zero => simp
  | add y z _ _ h1 h2 => simp [h1, h2]
  | smul c y _ h => simp [h]

def moved {T : D.host.E} (F : Fg D T) (Λ : LatV D) (P : LatW D) :
    AddSubmonoid (P →ₗ[𝓞 D.host.E] (hS D).V) where
  carrier := {χ | (∀ p, χ p ∈ Xsp F) ∧
    ∃ n ∈ N1 D Λ F, ∀ p : P, n (D.sp.iXY 0 (p : (D.sp.X 0).V)) = D.sp.iXY 0 (p : (D.sp.X 0).V) - χ p}
  zero_mem' := ⟨fun p => by simp, 1, ⟨FrEqv.one_mem_NLam, fun b => rfl⟩, fun p => by simp⟩
  add_mem' := by
    rintro χ₁ χ₂ ⟨h₁, n₁, m₁, e₁⟩ ⟨h₂, n₂, m₂, e₂⟩
    refine ⟨fun p => (Xsp F).add_mem (h₁ p) (h₂ p), n₂ * n₁, ⟨FrEqv.mul_mem_NLam m₁.1 m₂.1, fun b => ?_⟩,
      fun p => ?_⟩
    · change n₂ (n₁ _) = _
      rw [m₁.2, m₂.2]
    · change n₂ (n₁ _) = _
      rw [e₁, map_sub, e₂, integralUnipotentFixingFrame_fixes_isotropic m₂ (h₁ p), LinearMap.add_apply]
      abel

theorem eichler_moved {u : D.what₂.Word} {F0 : Fb D u} {Λ : LatV D} (hB : IsBase D u F0)
    (hR : IsRowLat D F0 Λ) (hS' : IsSplit D F0 Λ) {P : LatW D} {v : (D.sp.X 0).V}
    (hv : v ∈ L0X D Λ (lf D F0)) {w : (hS D).V} (hw : w ∈ XLam Λ (lf D F0))
    (χ : P →ₗ[𝓞 D.host.E] (hS D).V) (hχ : ∀ p : P, χ p = (D.sp.X 0).hT v p • w) :
    χ ∈ moved (lf D F0) Λ P := by
  have hm := D.R.two_le_m
  have horth : ∀ x, D.sp.iXY 0 x ∈ orth (hS D) (Xsp (lf D F0)) := by
    intro x
    refine orth_span _ ?_
    rintro _ ⟨a, rfl⟩
    change (hS D).hT (F0.e a) _ = 0
    rw [hB.1]
    exact hT_zero_symm _ (D.sp.hyp_orthX a x).1
  obtain ⟨n, hn, t, hfix, hform⟩ := GlobalTheory.EichlerUnip.eichler_mem_unipotent D _ (lf D F0) Λ hR.2.1.2.1
    (D.sp.iXY 0 v) ⟨mem_of_split hB hS' hv, horth v⟩ w hw
  refine ⟨fun p => by rw [hχ]; exact (Xsp (lf D F0)).smul_mem _ hw.2, n, ⟨hn, fun b => ?_⟩, fun p => ?_⟩
  · refine Fin.lastCases ?_ (fun a => ?_) b
    · have h1 : (hS D).hT (D.sp.iXY 0 v) F0.z = 0 := hT_zero_symm _ hv.2
      have h2 : (hS D).hT w F0.z = 0 := by
        refine orth_apply (hS D) (orth_span _ ?_) hw.2
        rintro _ ⟨a, rfl⟩
        exact F0.z_orth a
      have h3 : frame (lf D F0) (Fin.last _) = F0.z := by simp [frame, FlagG.fvec]
      rw [h3, hform, h1, h2]
      simp
    · apply hfix
      have h3 : frame (lf D F0) a.castSucc = F0.e a := by simp [frame, FlagG.fvec]
      rw [h3]
      exact Submodule.subset_span ⟨a, rfl⟩
  · rw [hform, orth_apply _ (horth p) hw.2, hχ, D.sp.iXY_isom 0 (by omega)]
    simp

theorem main : ∀ (D : D7) (u u' : D.what₂.Word) (F0 : Fb D u) (Λ : LatV D), Stand D u u' → IsBase D u F0 → IsRowLat D F0 Λ → IsSplit D F0 Λ → ∀ (P : LatW D) (s : ℕ) (Q : ℝ), SubOK D (L0X D Λ (lf D F0)) P s Q → ∃ reps : Finset (P →ₗ[𝓞 D.host.E] (hS D).V), (reps.card : ℝ) ≤ NT D u ^ (2 * D.R.rS) * Q ^ D.R.rS ∧ (∀ φ ∈ reps, ∀ p, φ p ∈ XLam Λ (lf D F0)) ∧ ∀ φ : P →ₗ[𝓞 D.host.E] (hS D).V, (∀ p, φ p ∈ XLam Λ (lf D F0)) → ∃ φ₀ ∈ reps, ∃ n ∈ N1 D Λ (lf D F0), ∀ p : P, n (D.sp.iXY 0 (p : (D.sp.X 0).V) + φ p) = D.sp.iXY 0 (p : (D.sp.X 0).V) + φ₀ p := by
  intro D u u' F0 Λ hSt hB hR hS' P s Q hP
  obtain ⟨S, hc, hS₀⟩ := fun_reps hSt hB hR hS' hP
  let B : AddSubgroup (P →ₗ[𝓞 D.host.E] 𝓞 D.host.E) :=
    { carrier := {ψ | ∃ v ∈ L0X D Λ (lf D F0), ∀ p : P, ((ψ p : 𝓞 D.host.E) : D.host.E) = (D.sp.X 0).hT v p}
      zero_mem' := ⟨0, Submodule.zero_mem _, fun p => by simp⟩
      add_mem' := by
        rintro a b ⟨v, hv, e⟩ ⟨w, hw, e'⟩
        exact ⟨v + w, Submodule.add_mem _ hv hw, fun p => by simp [e, e']⟩
      neg_mem' := by
        rintro a ⟨v, hv, e⟩
        exact ⟨-v, Submodule.neg_mem _ hv, fun p => by simp [e]⟩ }
  have hI := fun a => ideal_reps (coefI D a) (zpow_ne_zero _ (ddS_ne_zero D)) B S hS₀
  choose c hcI hgen using hI
  let j : Fin D.R.rS → ((P →ₗ[𝓞 D.host.E] D.host.E) →ₗ[𝓞 D.host.E] (P →ₗ[𝓞 D.host.E] (hS D).V)) := fun a =>
    LinearMap.llcomp (𝓞 D.host.E) P D.host.E (hS D).V
      ((LinearMap.toSpanSingleton D.host.E (hS D).V (F0.e a)).restrictScalars (𝓞 D.host.E))
  have hj : ∀ a χ p, j a χ p = χ p • F0.e a := fun _ _ _ => rfl
  have hmem : ∀ a, ∀ x ∈ coefI D a, x • F0.e a ∈ XLam Λ (lf D F0) := by
    intro a x hx
    rw [hR.2.2]
    exact Submodule.subset_span ⟨a, x, hx, rfl⟩
  let rep : (Fin D.R.rS → (P →ₗ[𝓞 D.host.E] 𝓞 D.host.E)) → (P →ₗ[𝓞 D.host.E] (hS D).V) := fun g =>
    ∑ a, j a (c a • (Algebra.linearMap (𝓞 D.host.E) D.host.E ∘ₗ g a))
  refine ⟨(Fintype.piFinset fun _ => S).image rep, ?_, ?_, fun φ hφ => ?_⟩
  · refine le_trans (Nat.cast_le.2 Finset.card_image_le) ?_
    rw [Fintype.card_piFinset_const, Nat.cast_pow, pow_mul, ← mul_pow]
    exact pow_le_pow_left₀ (Nat.cast_nonneg _) hc _
  · intro φ hφ p
    obtain ⟨g, -, rfl⟩ := Finset.mem_image.1 hφ
    simp only [rep, LinearMap.sum_apply]
    refine Submodule.sum_mem _ fun a _ => ?_
    rw [hj]
    apply hmem
    have := (coefI D a : Submodule (𝓞 D.host.E) D.host.E).smul_mem (g a p) (hcI a)
    rw [Algebra.smul_def, mul_comm] at this
    exact this
  · let co : Fin D.R.rS → (P →ₗ[𝓞 D.host.E] D.host.E) := fun a =>
      ((hS D).hT (D.sp.hypF a)).restrictScalars (𝓞 D.host.E) ∘ₗ φ
    have h1 := fun a => hgen a ((moved (lf D F0) Λ P).comap (j a).toAddMonoidHom) (by
      rintro x hx ψ ⟨v, hv, e⟩
      refine eichler_moved hB hR hS' hv (hmem a x hx) _ fun p => ?_
      change j a _ p = _
      rw [hj, smul_smul, ← e p, mul_comm]
      rfl) (co a) (fun p => coef_mem hB a (by rw [← hR.2.2]; exact hφ p))
    choose g hg hg' using h1
    have h2 : φ - rep g ∈ moved (lf D F0) Λ P := by
      have h3 : φ = ∑ a, j a (co a) := by
        ext p
        have hx : φ p ∈ Submodule.span D.host.E (Set.range D.sp.hypE) := by
          rw [← hB.1]; exact (hφ p).2
        rw [LinearMap.sum_apply, expand (hS D) D.sp.hypE D.sp.hypF (hyp_fe D) hx]
        refine Finset.sum_congr rfl fun a _ => ?_
        rw [hj, hB.1]
        rfl
      have h4 := (moved (lf D F0) Λ P).sum_mem (t := Finset.univ) fun a _ => hg' a
      convert h4 using 1
      conv_lhs => rw [h3]
      simp only [rep, ← Finset.sum_sub_distrib, ← map_sub]
      rfl
    obtain ⟨-, n, hn, e⟩ := h2
    refine ⟨rep g, Finset.mem_image_of_mem _ (Fintype.mem_piFinset.2 hg), n, hn, fun p => ?_⟩
    rw [map_add (f := _), e, integralUnipotentFixingFrame_fixes_isotropic hn (hφ p).2, LinearMap.sub_apply]
    abel

end Record

end GlobalTheory.LoopC.Lifts

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSublatticeLiftsModuloFixingUnipotent =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSublatticeLiftsModuloFixingUnipotentStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSublatticeLiftsModuloFixingUnipotentStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.RowMinor\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSublatticeLiftsModuloFixingUnipotent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt GlobalTheory.LoopC
open scoped ENNReal Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSublatticeLiftsModuloFixingUnipotentStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardExactGramIntegralFrameClassesLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardExactGramIntegralFrameClassesLe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.RowMinor\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardIntegralFramesFixedLiftLeStatement\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.EncardBiUnionLe\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsSublatticeLiftsModuloFixingUnipotentStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Module Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt GlobalTheory.LoopC GlobalTheory.LoopC.FrEqv
open scoped ENNReal Classical

namespace GlobalTheory.LoopC.FrEx

section Gen

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ} {T T' : E}

alias mem_orth := _root_.GlobalTheory.LoopC.FixedLift.mem_orth

def moveFl (n : S.V ≃ₗ[E] S.V) (hn : n ∈ Formalism.HermitianLatticesTheory.isom S.hT) (F : LFlag S r T) : LFlag S r T :=
  ⟨⟨fun a => n (F.fl.e a), n F.fl.z,
    F.fl.e_indep.map' (n : S.V →ₗ[E] S.V) n.ker,
    fun a b => (hn _ _).trans (F.fl.e_iso a b), fun a => (hn _ _).trans (F.fl.z_orth a),
    (hn _ _).trans F.fl.z_norm⟩, n F.fl.z⟩

theorem frame_moveFl (n : S.V ≃ₗ[E] S.V) (hn : n ∈ Formalism.HermitianLatticesTheory.isom S.hT) (F : LFlag S r T) (b : Fin (r + 1)) :
    frame (moveFl n hn F) b = n (frame F b) := by
  refine Fin.lastCases ?_ (fun a => ?_) b <;> simp [frame, FlagG.fvec, moveFl]

theorem eq_zero_of_orth_frame (F : LFlag S r T) (F' : LFlag S r T') (b₀ : Fin (r + 1))
    (hd : (((ZhatL F F').submatrix Fin.castSucc id).submatrix id b₀.succAbove).det ≠ 0)
    {x : S.V} (hx : x ∈ Xsp F) (h : ∀ b, S.hT x (frame F' b) = 0) : x = 0 := by
  obtain ⟨c, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun E).1 hx
  have h0 : (fun a => star (c a)) = 0 := by
    refine Matrix.eq_zero_of_vecMul_eq_zero hd ?_
    funext b
    have := h (b₀.succAbove b)

    simp only [map_sum, LinearMap.map_smulₛₗ, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul,
    starRingEnd_apply] at this
    simpa [Matrix.vecMul, dotProduct, Zhat, brS, FlagG.fvec] using this
  have : ∀ a, c a = 0 := fun a => by simpa using congrFun h0 a
  simp [this]

theorem orth_frame_of_mem_Thp {Λ : Submodule (𝓞 E) S.V} {F : LFlag S r T} {F' : LFlag S r T'}
    (hl : IsLift Λ F') (he : ∀ a, F'.fl.e a ∈ Λ) {θ : S.V} (hθ : θ ∈ Thp Λ F F') (b : Fin (r + 1)) :
    S.hT θ (frame F' b) = 0 := by
  refine _root_.Formalism.MainNotions.hT_swap_zero (mem_orth.1 hθ.2 _ (Submodule.subset_span ?_))
  refine Fin.lastCases ?_ (fun a => ?_) b
  · have : frame F' (Fin.last r) = F'.zt := by simp [frame, FlagG.fvec, hl.2]
    rw [this]
    exact Submodule.mem_sup_right (Submodule.mem_span_singleton_self _)
  · have : frame F' a.castSucc = F'.fl.e a := by simp [frame, FlagG.fvec]
    rw [this]
    exact Submodule.mem_sup_left (Submodule.mem_sup_right ⟨he a, Submodule.subset_span ⟨a, rfl⟩⟩)

end Gen

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable (D : D7)

theorem eq_zero_of_span_E {x : (hS D).V} (hx : x ∈ Submodule.span D.host.E (Set.range D.sp.hypE))
    (h : ∀ a, (hS D).hT x (D.sp.hypF a) = 0) : x = 0 := by
  obtain ⟨c, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun D.host.E).1 hx
  have : ∀ a, c a = 0 := fun a => by
    have := h a

    simp only [map_sum, LinearMap.map_smulₛₗ, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul,
    D.sp.hyp_ef] at this
    simpa using this
  simp [this]

theorem eq_zero_of_span_F {x : (hS D).V} (hx : x ∈ Submodule.span D.host.E (Set.range D.sp.hypF))
    (h : ∀ a, (hS D).hT (D.sp.hypE a) x = 0) : x = 0 := by
  obtain ⟨c, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun D.host.E).1 hx
  have : ∀ a, c a = 0 := fun a => by
    have := h a

    simp only [map_sum, map_smul, smul_eq_mul, D.sp.hyp_ef] at this
    simpa using this
  simp [this]

theorem YS_le {y : (hS D).V} (hy : y ∈ YS D) : y ∈ Submodule.span D.host.E (Set.range D.sp.hypF) := by
  have : YS D ≤ toO (hS D) (Submodule.span D.host.E (Set.range D.sp.hypF)) := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨a, x, _, rfl⟩
    exact Submodule.smul_mem (Submodule.span D.host.E (Set.range D.sp.hypF)) x (Submodule.subset_span ⟨a, rfl⟩)
  exact this hy

theorem XS_le {T : D.host.E} (F0 : FlagG (VS D) D.R.rS T) {y : (hS D).V} (hy : y ∈ XS D F0) : y ∈ F0.X := by
  have : XS D F0 ≤ toO (hS D) F0.X := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨a, x, _, rfl⟩
    exact Submodule.smul_mem F0.X x (Submodule.subset_span ⟨a, rfl⟩)
  exact this hy

theorem iXY_mem_of_split {T : D.host.E} (F0 : FlagG (VS D) D.R.rS T) (he : F0.e = D.sp.hypE) {Λ : LatV D}
    (hs : IsSplit D F0 Λ) (p : (D.sp.X 0).V) {θ : (hS D).V} (hθ : θ ∈ Λ) (hx : θ - D.sp.iXY 0 p ∈ F0.X) :
    D.sp.iXY 0 p ∈ Λ := by
  have hθ' := hθ
  rw [hs] at hθ'
  obtain ⟨_, h1, y, hy, rfl⟩ := Submodule.mem_sup.1 hθ'
  obtain ⟨a, ha, w, hw, rfl⟩ := Submodule.mem_sup.1 h1
  have haX := XS_le D F0 ha
  have hX : ∀ x ∈ F0.X, ∀ i, (hS D).hT (D.sp.hypE i) x = 0 := fun x hx i =>
    mem_orth.1 (X_le_orth (F := lf D F0) hx) _ (Submodule.subset_span ⟨i, by rw [← he]⟩)
  have hwE : ∀ i, (hS D).hT (D.sp.hypE i) w = 0 := fun i =>
    mem_orth.1 hw.2 _ (Submodule.subset_span (Or.inl ⟨i, rfl⟩))
  have hwF : ∀ i, (hS D).hT (D.sp.hypF i) w = 0 := fun i =>
    mem_orth.1 hw.2 _ (Submodule.subset_span (Or.inr ⟨i, rfl⟩))
  have hy0 : y = 0 := by
    refine eq_zero_of_span_F D (YS_le D hy) fun i => ?_
    have h1 := hX _ hx i
    have h2 : (hS D).hT (D.sp.hypE i) (D.sp.iXY 0 p) = 0 := _root_.Formalism.MainNotions.hT_swap_zero (D.sp.hyp_orthX i p).1
    rw [map_sub, map_add (f := _), map_add (f := _), h2, hX a haX i, hwE i] at h1
    simpa using h1
  subst hy0
  have h3 : w - D.sp.iXY 0 p ∈ F0.X := by
    have := F0.X.sub_mem hx haX
    convert this using 1
    abel
  have h4 : w - D.sp.iXY 0 p = 0 := by
    refine eq_zero_of_span_E D (by rw [← he]; exact h3) fun i => ?_
    rw [map_sub, LinearMap.sub_apply, _root_.Formalism.MainNotions.hT_swap_zero (hwF i)]
    have := (D.sp.hyp_orthX i p).2
    simpa using this
  rw [← sub_eq_zero.1 h4]
  exact hw.1

theorem exists_lift {T T' : D.host.E} (F0 : FlagG (VS D) D.R.rS T) (he : F0.e = D.sp.hypE) {Λ : LatV D}
    (hs : IsSplit D F0 Λ) (P : LatW D) (Z : GramM D) (b₀ : Fin (D.R.rS + 1)) (hb : rowMinor D Z b₀ ≠ 0)
    {F' : Fg D T'} (hF : F' ∈ ExSet D Λ (lf D F0) T' Z P) :
    ∃ φ : P →ₗ[𝓞 D.host.E] (hS D).V, (∀ p, φ p ∈ XLam Λ (lf D F0)) ∧
      ∀ (p : P) b, (hS D).hT (D.sp.iXY 0 (p : (D.sp.X 0).V) + φ p) (frame F' b) = 0 := by
  obtain ⟨hl, hE, hZ, hP⟩ := hF
  have ex : ∀ p : P, ∃ x, x ∈ XLam Λ (lf D F0) ∧
      ∀ b, (hS D).hT (D.sp.iXY 0 (p : (D.sp.X 0).V) + x) (frame F' b) = 0 := by
    intro p
    obtain ⟨θ, hθ, x, hx, e⟩ := Submodule.mem_sup.1 (hP p.2)
    have e' : θ + x = D.sp.iXY 0 (p : (D.sp.X 0).V) := e
    have hx' : x ∈ F0.X := hx
    have h1 : θ - D.sp.iXY 0 (p : (D.sp.X 0).V) ∈ F0.X := by
      rw [← e']; simpa using hx'
    refine ⟨θ - D.sp.iXY 0 (p : (D.sp.X 0).V),
      ⟨Λ.sub_mem hθ.1 (iXY_mem_of_split D F0 he hs _ hθ.1 h1), h1⟩, fun b => ?_⟩
    rw [add_sub_cancel]
    exact orth_frame_of_mem_Thp hl hE hθ b
  choose f hf1 hf2 using ex
  have uniq : ∀ x ∈ F0.X, (∀ b, (hS D).hT x (frame F' b) = 0) → x = 0 := fun x hx h =>
    eq_zero_of_orth_frame (lf D F0) F' b₀ (by rw [hZ]; exact hb) hx h
  have hfX : ∀ p, f p ∈ F0.X := fun p => (hf1 p).2
  refine ⟨⟨⟨f, fun p q => ?_⟩, fun c p => ?_⟩, hf1, hf2⟩
  · rw [← sub_eq_zero]
    refine uniq _ (F0.X.sub_mem (hfX _) (F0.X.add_mem (hfX _) (hfX _))) fun b => ?_
    have h1 := hf2 (p + q) b
    have h2 := hf2 p b
    have h3 := hf2 q b
    simp only [Submodule.coe_add, map_add (f := _), map_sub, LinearMap.add_apply, LinearMap.sub_apply] at h1 h2 h3 ⊢
    linear_combination h1 - h2 - h3
  · show f (c • p) = c • f p
    have e1 : c • f p = algebraMap _ D.host.E c • f p := (algebraMap_smul D.host.E c (f p)).symm
    have e2 : ((c • p : P) : (D.sp.X 0).V) = algebraMap _ D.host.E c • (p : (D.sp.X 0).V) :=
      (algebraMap_smul D.host.E c (p : (D.sp.X 0).V)).symm
    rw [e1, ← sub_eq_zero]
    refine uniq _ (F0.X.sub_mem (hfX _) (F0.X.smul_mem _ (hfX _))) fun b => ?_
    have h1 := hf2 (c • p) b
    have h2 := hf2 p b
    rw [e2] at h1
    simp only [map_add (f := _), map_sub, map_smul, LinearMap.map_smulₛₗ, LinearMap.add_apply, LinearMap.sub_apply,
      LinearMap.smul_apply, smul_eq_mul] at h1 h2 ⊢
    linear_combination h1 - (starRingEnd D.host.E) (algebraMap _ D.host.E c) * h2

theorem cntCl_ExSet_le : ∀ (D : D7) (u u' : D.what₂.Word) (F0 : Fb D u) (Λ : LatV D), Stand D u u' → IsBase D u F0 → IsRowLat D F0 Λ → IsSplit D F0 Λ → ∀ (P : LatW D) (Z : GramM D) (s : ℕ) (De Q : ℝ), 1 ≤ s → s ≤ D.R.k → SubOK D (L0X D Λ (lf D F0)) P s De → QOK D u u' Z Q → (cntCl (ExSet D Λ (lf D F0) ((Tu D u' : ℕ) : D.host.E) Z P) (TEqv D Λ (lf D F0)) : ℝ≥0∞) ≤ ENNReal.ofReal (frB D s (NT D u) De Q) := by
  intro D u u' F0 Λ hst hb hrow hsp P Z s De Q hs1 hsk hsub hQ
  obtain ⟨reps, hcard, hreps, hall⟩ := _root_.GlobalTheory.LoopC.Lifts.main D u u' F0 Λ hst hb hrow hsp P s De hsub
  obtain ⟨b₀, hb₀, -⟩ := hQ.2.2.1
  have h1 := cntCl_le_sum (TEqv_equivalence D Λ (lf D F0) (T' := ((Tu D u' : ℕ) : D.host.E))) reps
    (ExSet D Λ (lf D F0) ((Tu D u' : ℕ) : D.host.E) Z P)
    (fun φ => FixSet D Λ (lf D F0) ((Tu D u' : ℕ) : D.host.E) Z P φ) (by
      intro F' hF'
      obtain ⟨φ, hφ, hφ'⟩ := exists_lift D F0 hb.1 hsp P Z b₀ hb₀ hF'
      obtain ⟨φ₀, h₀, n, ⟨hn, hnf⟩, hnp⟩ := hall φ hφ
      obtain ⟨hl, hE, hZ, -⟩ := hF'
      refine ⟨φ₀, h₀, moveFl n hn.1.1 F', ⟨⟨(aut_mem_iff hn.1 _).2 hl.1, rfl⟩,
        fun a => (aut_mem_iff hn.1 _).2 (hE a), ?_, fun p b => ?_⟩, n, hn, 1,
        fun a b h => Matrix.one_apply_ne h.ne', fun a => by simp, ?_⟩
      · rw [← hZ]
        funext a b
        change (hS D).hT (frame (lf D F0) a) (frame (moveFl n hn.1.1 F') b) =
          (hS D).hT (frame (lf D F0) a) (frame F' b)
        rw [frame_moveFl, ← hn.1.1 (frame (lf D F0) a) (frame F' b), hnf]
      · rw [frame_moveFl, ← hnp, hn.1.1]
        exact hφ' p b
      · rw [frameAct_one]
        funext b
        exact frame_moveFl _ _ _ b)
  have h2 : (cntCl (ExSet D Λ (lf D F0) ((Tu D u' : ℕ) : D.host.E) Z P) (TEqv D Λ (lf D F0)) : ℝ≥0∞) ≤
      ∑ φ ∈ reps, (cntCl (FixSet D Λ (lf D F0) ((Tu D u' : ℕ) : D.host.E) Z P φ) (TEqv D Λ (lf D F0)) : ℝ≥0∞) := by
    have := ENat.toENNReal_le.2 h1
    refine this.trans (le_of_eq ?_)
    exact map_sum ENat.toENNRealRingHom _ _
  refine h2.trans ((Finset.sum_le_card_nsmul _ _ _ fun φ hφ =>
    GlobalTheory.T.card_integral_frames_fixed_lift_le D u u' F0 Λ hst hb hrow hsp P φ Z s De Q hs1 hsk (hreps φ hφ) hsub hQ).trans ?_)
  have hnn : 0 ≤ NT D u ^ (2 * D.R.rS) * De ^ D.R.rS := le_trans (Nat.cast_nonneg _) hcard
  rw [frB, ENNReal.ofReal_mul hnn, nsmul_eq_mul]
  gcongr
  rw [← ENNReal.ofReal_natCast]
  exact ENNReal.ofReal_le_ofReal hcard

end GlobalTheory.LoopC.FrEx

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardExactGramIntegralFrameClassesLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardExactGramIntegralFrameClassesLeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardExactGramIntegralFrameClassesLeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.RowMinor\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardExactGramIntegralFrameClassesLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt GlobalTheory.LoopC
open scoped ENNReal Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.card_exactGramIntegralFrameClasses_le : ∀ (D : D7) (u u' : D.what₂.Word) (F0 : Fb D u) (Λ : LatV D), Stand D u u' → IsBase D u F0 → IsRowLat D F0 Λ → IsSplit D F0 Λ → ∀ (P : LatW D) (Z : GramM D) (s : ℕ) (De Q : ℝ), 1 ≤ s → s ≤ D.R.k → SubOK D (L0X D Λ (lf D F0)) P s De → QOK D u u' Z Q → (cntCl (ExSet D Λ (lf D F0) ((Tu D u' : ℕ) : D.host.E) Z P) (TEqv D Λ (lf D F0)) : ℝ≥0∞) ≤ ENNReal.ofReal (frB D s (NT D u) De Q) := by
  first | exact @GlobalTheory.LoopC.FrEx.cntCl_ExSet_le
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardExactGramIntegralFrameClassesLeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsExactGramFrameInTermClass =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsExactGramFrameInTermClass", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.RowMinor\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.EncardBiUnionLe\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.IntegralOfUnimodular\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.LinearFormsBoundedRepresentatives\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsLatticeOfAdelicPoint\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsTraceOneIntegerConjDiffPrimeTo\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardIntegralFramesFixedLiftLeStatement\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Module Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt GlobalTheory.LoopC
open scoped ENNReal Classical

namespace GlobalTheory.LoopC.FrameMove

open GlobalTheory.EichlerUnip GlobalTheory.LoopC.FrEqv

section Gen

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ} {T : E}
  {Λ : Submodule (𝓞 E) S.V} {F : LFlag S r T}

theorem ext_Xflag {W : Type} [AddCommGroup W] [Module E W] (f g : S.V →ₗ[E] W) (j : ℕ)
    (h : ∀ a : Fin (r + 1), a.val < j → f (frame F a) = g (frame F a)) :
    ∀ x ∈ Xflag F j, f x = g x := by
  intro x hx
  refine LinearMap.eqOn_span (s := F.fl.e '' {i | i.1 < j}) ?_ hx
  rintro _ ⟨a, ha, rfl⟩
  have := h a.castSucc ha
  rwa [GlobalTheory.LoopC.FixedLift.frame_castSucc] at this

theorem Xflag_le_X (j : ℕ) : Xflag F j ≤ Xsp F := Submodule.span_mono (Set.image_subset_range _ _)

theorem Xflag_mono' {i j : ℕ} (h : i ≤ j) : Xflag F i ≤ Xflag F j :=
  Submodule.span_mono (Set.image_mono fun _ hi => lt_of_lt_of_le hi h)

theorem X_orth_frame {w : S.V} (hw : w ∈ Xsp F) (j : Fin (r + 1)) : S.hT w (frame F j) = 0 := by
  induction j using Fin.lastCases with
  | last =>
    rw [GlobalTheory.LoopC.FixedLift.frame_last]
    induction hw using Submodule.span_induction with
    | mem x hx => obtain ⟨a, rfl⟩ := hx; exact F.fl.z_orth a
    | zero => simp
    | add x y _ _ h1 h2 => simp [h1, h2]
    | smul c x _ h => simp [h]
  | cast a =>
    rw [GlobalTheory.LoopC.FixedLift.frame_castSucc]
    exact iso_X S F hw (Submodule.subset_span ⟨a, rfl⟩)

theorem frame_indep (hT : T ≠ 0) : LinearIndependent E (frame F) := by
  rw [Fintype.linearIndependent_iff]
  intro c hc
  have h1 : c (Fin.last r) = 0 := by
    have := congrArg (S.hT F.fl.z) hc
    have h0 : ∀ a, S.hT F.fl.z (F.fl.e a) = 0 := fun a => by
      rw [herm S, F.fl.z_orth, star_zero]
    rw [Fin.sum_univ_castSucc] at this

    simpa [GlobalTheory.LoopC.FixedLift.frame_castSucc, GlobalTheory.LoopC.FixedLift.frame_last, map_sum, h0, F.fl.z_norm, hT] using this
  rw [Fin.sum_univ_castSucc, h1, zero_smul, add_zero] at hc
  simp only [GlobalTheory.LoopC.FixedLift.frame_castSucc] at hc
  have h2 := Fintype.linearIndependent_iff.1 F.fl.e_indep _ hc
  intro i
  induction i using Fin.lastCases with
  | last => exact h1
  | cast a => exact h2 a

theorem exists_partner (hlat : Submodule.IsLattice E Λ) (hΛ : Formalism.HermitianLatticesTheory.IsUnimodular S.hT Λ) (hT : T ≠ 0)
    (aa : Fin (r + 1) → FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (h0 : ∀ j, aa j ≠ 0)
    (hc : ∀ c : Fin (r + 1) → E, ∑ j, c j • frame F j ∈ Λ ↔ ∀ j, c j ∈ aa j)
    (b : Fin (r + 1)) (s : E) (hs : s ∈ (aa b)⁻¹) :
    ∃ σ ∈ Λ, ∀ j, S.hT σ (frame F j) = if j = b then s else 0 := by
  have hli : LinearIndependent E (frame F) := frame_indep hT
  set U := Submodule.span E (Set.range (frame F))
  obtain ⟨φ, hφ⟩ := LinearMap.exists_extend (p := U) ((Basis.span hli).constr E fun j => if j = b then s else 0)
  have hφ' : ∀ j, φ (frame F j) = if j = b then s else 0 := by
    intro j
    have := LinearMap.congr_fun hφ (Basis.span hli j)
    rw [Basis.constr_basis] at this
    rw [← this]
    simp [Basis.span_apply]
  set M0 : Submodule (𝓞 E) S.V := Λ ⊓ toO S U
  have hprim : IsPrimitiveSub M0 Λ := by
    refine ⟨inf_le_left, le_antisymm (le_inf inf_le_left fun x hx => Submodule.subset_span hx) ?_⟩
    refine inf_le_inf_left _ ?_
    intro x hx
    exact (Submodule.span_le (p := U)).2 (fun y (hy : y ∈ M0) => hy.2) hx
  have hint : ∀ x : M0, ∃ o : 𝓞 E, (o : E) = φ x := by
    rintro ⟨x, hx, hxU⟩
    obtain ⟨c, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun E).1 hxU
    have h1 := FractionalIdeal.mul_mem_mul ((hc c).1 hx b) hs
    rw [mul_inv_cancel₀ (h0 b), FractionalIdeal.mem_one_iff] at h1
    obtain ⟨o, ho⟩ := h1
    refine ⟨o, ?_⟩

    simp [map_sum, hφ', ← ho]
  choose ψ hψ using hint
  let ψ' : M0 →ₗ[𝓞 E] 𝓞 E :=
    { toFun := ψ
      map_add' := fun x y => by
        apply RingOfIntegers.ext
        simp [hψ]
      map_smul' := fun c x => by
        apply RingOfIntegers.ext
        simp only [hψ, RingHom.id_apply, smul_eq_mul, map_mul, Submodule.coe_smul]
        rw [← algebraMap_smul E c (x : S.V), map_smul]
        simp }
  have hfull : Submodule.IsFullLattice E Λ :=
    { toIsLattice := hlat, span_eq_top := FunIdx.span_eq_top_of_unimodular Λ hlat hΛ }
  obtain ⟨w, hw⟩ := FunIdx.exists_dual_vec S M0 Λ hfull hprim ψ'
  refine ⟨w, ?_, fun j => ?_⟩
  · have := w.2.1
    rwa [hΛ] at this
  · obtain ⟨c, hcm, hc0⟩ : ∃ c ∈ aa j, c ≠ 0 := by
      by_contra hne
      push Not at hne
      exact h0 j (FractionalIdeal.eq_zero_iff.2 hne)
    have hm : c • frame F j ∈ M0 := by
      refine ⟨?_, U.smul_mem c (Submodule.subset_span ⟨j, rfl⟩)⟩
      have := (hc (Pi.single j c)).2 fun i => by
        by_cases h : i = j
        · subst h; simpa using hcm
        · simp [h, FractionalIdeal.zero_mem]
      simpa [Pi.single_apply] using this
    have h1 := hw ⟨_, hm⟩
    have h2 : (ψ' ⟨_, hm⟩ : E) = φ (c • frame F j) := hψ ⟨_, hm⟩
    rw [h2, map_smul, map_smul, smul_eq_mul, smul_eq_mul] at h1
    rw [← hφ']
    exact (mul_left_cancel₀ hc0 h1).symm

theorem exists_elem (θ : 𝓞 E) (hθ : (θ : E) + star (θ : E) = 1) (hΛ : Formalism.HermitianLatticesTheory.IsUnimodular S.hT Λ)
    (b : Fin (r + 1)) (s : E) (σ : S.V) (hσΛ : σ ∈ Λ)
    (hσ : ∀ j, S.hT σ (frame F j) = if j = b then s else 0) (w : S.V) (hwΛ : w ∈ Λ) (hw : w ∈ Xflag F b) :
    ∃ n ∈ NLam Λ F, n (frame F b) = frame F b - s • w ∧ ∀ j, j ≠ b → n (frame F j) = frame F j := by
  have hwX : w ∈ Xsp F := Xflag_le_X _ hw
  have hσb : ∀ x ∈ Xflag F b, S.hT σ x = 0 := by
    refine ext_Xflag (S.hT σ) 0 b fun a ha => ?_
    rw [hσ, if_neg (fun h => by rw [h] at ha; exact lt_irrefl _ ha)]
    rfl
  have hww : S.hT w w = 0 := iso_X S F hwX hwX
  have hwσ : S.hT w σ = 0 := by rw [herm S, hσb w hw, star_zero]
  have ht : (θ : E) * S.hT σ σ + star ((θ : E) * S.hT σ σ) = S.hT σ σ := by
    rw [star_mul', ← herm S σ σ, ← add_mul, hθ, one_mul]
  have htO : ∃ o : 𝓞 E, (o : E) = (θ : E) * S.hT σ σ := by
    obtain ⟨p, hp⟩ := integral_of_unimodular S hΛ hσΛ hσΛ
    exact ⟨θ * p, by rw [← hp]; simp⟩
  set t := (θ : E) * S.hT σ σ
  have hap : ∀ x, S.hT w x = 0 → eichE S σ w t hww hwσ ht x = x - S.hT σ x • w := by
    intro x hx
    change eich S σ w t x = _
    rw [eich_apply, hx]; simp
  refine ⟨eichE S σ w t hww hwσ ht, ⟨⟨fun x y => eich_isom S σ w t hww hwσ ht x y, ?_⟩, ?_, ?_⟩, ?_, ?_⟩
  · apply le_antisymm
    · rintro _ ⟨x, hx, rfl⟩
      exact eich_mem S hΛ hσΛ hwΛ htO hx
    · intro x hx
      exact ⟨eich S (-σ) w (star t) x, eich_mem S hΛ (Λ.neg_mem hσΛ) hwΛ (star_int htO) hx,
        (eichE S σ w t hww hwσ ht).apply_symm_apply x⟩
  · intro j x hx
    rw [hap x (iso_X S F hwX (Xflag_le_X _ hx)), sub_sub_cancel_left]
    by_cases hj : j + 1 ≤ b.val
    · rw [hσb x (Xflag_mono' hj hx)]; simp
    · exact Submodule.neg_mem _ (Submodule.smul_mem _ _ (Xflag_mono' (by omega) hw))
  · intro x hx
    rw [hap x ((mem_orth S).1 hx w hwX), sub_sub_cancel_left]
    exact Submodule.neg_mem _ (Submodule.smul_mem _ _ hwX)
  · rw [hap _ (X_orth_frame hwX b), hσ, if_pos rfl]
  · intro j hj
    rw [hap _ (X_orth_frame hwX j), hσ, if_neg hj]; simp

theorem exists_col (θ : 𝓞 E) (hθ : (θ : E) + star (θ : E) = 1) (hlat : Submodule.IsLattice E Λ)
    (hΛ : Formalism.HermitianLatticesTheory.IsUnimodular S.hT Λ) (hT : T ≠ 0)
    (aa : Fin (r + 1) → FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (h0 : ∀ j, aa j ≠ 0)
    (hc : ∀ c : Fin (r + 1) → E, ∑ j, c j • frame F j ∈ Λ ↔ ∀ j, c j ∈ aa j)
    (b : Fin (r + 1)) (w : S.V) (hw : w ∈ Xflag F b) (hwΛ : ∀ c ∈ aa b, c • w ∈ Λ) :
    ∃ n ∈ NLam Λ F, n (frame F b) = frame F b + w ∧ ∀ j, j ≠ b → n (frame F j) = frame F j := by
  have key : ∀ x ∈ aa b * (aa b)⁻¹, ∃ n ∈ NLam Λ F, n (frame F b) = frame F b + x • w ∧
      ∀ j, j ≠ b → n (frame F j) = frame F j := by
    intro x hx
    refine FractionalIdeal.mul_induction_on hx ?_ ?_
    · intro c hcm s hs
      obtain ⟨σ, hσΛ, hσ⟩ := exists_partner hlat hΛ hT aa h0 hc b s hs
      obtain ⟨n, hn, h1, h2⟩ := exists_elem θ hθ hΛ b s σ hσΛ hσ (-(c • w)) (Λ.neg_mem (hwΛ c hcm))
        (Submodule.neg_mem _ (Submodule.smul_mem _ _ hw))
      refine ⟨n, hn, ?_, h2⟩
      rw [h1]; module
    · rintro x y ⟨n, hn, h1, h2⟩ ⟨m, hm, e1, e2⟩
      refine ⟨m * n, mul_mem_NLam hn hm, ?_, fun j hj => ?_⟩
      · have : m w = w := ext_Xflag (m : S.V →ₗ[E] S.V) LinearMap.id b
          (fun a ha => e2 a fun h => by rw [h] at ha; exact lt_irrefl _ ha) w hw
        change m (n _) = _
        rw [h1, map_add (f := _), map_smul, e1, this]; module
      · change m (n _) = _
        rw [h2 j hj, e2 j hj]
  have := key 1 (by rw [mul_inv_cancel₀ (h0 b)]; exact FractionalIdeal.one_mem_one _)
  simpa using this

theorem exists_cols (w : Fin (r + 1) → S.V) (hw : ∀ b : Fin (r + 1), w b ∈ Xflag F b)
    (h : ∀ b, ∃ n ∈ NLam Λ F, n (frame F b) = frame F b + w b ∧ ∀ j, j ≠ b → n (frame F j) = frame F j) :
    ∃ n ∈ NLam Λ F, ∀ b, n (frame F b) = frame F b + w b := by
  have key : ∀ k : ℕ, ∃ n ∈ NLam Λ F, ∀ b : Fin (r + 1),
      n (frame F b) = frame F b + if b.val < k then w b else 0 := by
    intro k
    induction k with
    | zero => exact ⟨1, one_mem_NLam, fun b => by simp⟩
    | succ k ih =>
      obtain ⟨n, hn, h1⟩ := ih
      by_cases hk : k < r + 1
      · obtain ⟨m, hm, e1, e2⟩ := h ⟨k, hk⟩
        refine ⟨m * n, mul_mem_NLam hn hm, fun b => ?_⟩
        change m (n _) = _
        rw [h1]
        rcases lt_trichotomy b.val k with hb | hb | hb
        · have : m (w b) = w b := ext_Xflag (m : S.V →ₗ[E] S.V) LinearMap.id b
            (fun a ha => e2 a fun h => by rw [h] at ha; exact lt_asymm ha hb) _ (hw b)
          rw [if_pos hb, if_pos (by omega), map_add (f := _), this, e2 b fun h => by rw [h] at hb; exact lt_irrefl _ hb]
        · have : b = ⟨k, hk⟩ := Fin.ext hb
          rw [if_neg (by omega), if_pos (by omega), add_zero, this, e1]
        · rw [if_neg (by omega), if_neg (by omega), add_zero,
            e2 b fun h => by rw [h] at hb; exact lt_irrefl _ hb]
      · refine ⟨n, hn, fun b => ?_⟩
        have := b.2
        rw [h1, if_pos (by omega), if_pos (by omega)]
  obtain ⟨n, hn, h1⟩ := key (r + 1)
  exact ⟨n, hn, fun b => by rw [h1, if_pos b.2]⟩

theorem exists_frame_op (θ : 𝓞 E) (hθ : (θ : E) + star (θ : E) = 1) (hlat : Submodule.IsLattice E Λ)
    (hΛ : Formalism.HermitianLatticesTheory.IsUnimodular S.hT Λ) (hT : T ≠ 0)
    (aa : Fin (r + 1) → FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (h0 : ∀ j, aa j ≠ 0)
    (hanti : ∀ a b, a ≤ b → aa b ≤ aa a)
    (hc : ∀ c : Fin (r + 1) → E, ∑ j, c j • frame F j ∈ Λ ↔ ∀ j, c j ∈ aa j)
    (ξ : Matrix (Fin (r + 1)) (Fin (r + 1)) (𝓞 E)) (h1 : ∀ a b, b < a → ξ a b = 0) (h2 : ∀ a, ξ a a = 1) :
    ∃ n ∈ NLam Λ F, ∀ b, n (frame F b) = frameAct (frame F) ξ b := by
  let w : Fin (r + 1) → S.V := fun b => ∑ a, (if a < b then (ξ a b : E) else 0) • frame F a
  have hw : ∀ b : Fin (r + 1), w b ∈ Xflag F b := by
    intro b
    refine Submodule.sum_mem _ fun a _ => ?_
    split_ifs with hab
    · have ha : a.val < r := by have := b.2; have : a.val < b.val := hab; omega
      have : a = Fin.castSucc ⟨a.val, ha⟩ := rfl
      rw [this, GlobalTheory.LoopC.FixedLift.frame_castSucc]
      exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨_, hab, rfl⟩)
    · simp
  obtain ⟨n, hn, h⟩ := exists_cols w hw fun b => exists_col θ hθ hlat hΛ hT aa h0 hc b (w b) (hw b) (by
    intro c hcm
    simp only [w, Finset.smul_sum, smul_smul]
    refine (hc _).2 fun a => ?_
    split_ifs with hab
    · have := (aa a : Submodule (𝓞 E) E).smul_mem (ξ a b) (hanti a b hab.le hcm)
      rw [mul_comm]
      exact this
    · simp [FractionalIdeal.zero_mem])
  refine ⟨n, hn, fun b => ?_⟩
  rw [h]
  have : frame F b = ∑ a, (if a = b then (1 : E) else 0) • frame F a := by simp
  rw [this]
  simp only [w, frameAct, ← Finset.sum_add_distrib, ← add_smul]
  refine Finset.sum_congr rfl fun a _ => ?_
  congr 1
  rcases lt_trichotomy a b with hab | rfl | hab
  · simp [hab, hab.ne]
  · simp [h2]
  · simp [hab.ne', hab.not_gt, h1 a b hab]

theorem coord_iff (aa : Fin (r + 1) → FractionalIdeal (nonZeroDivisors (𝓞 E)) E) (hl : aa (Fin.last r) = 1)
    (hz : F.fl.z ∈ Λ) (hp : ∀ c : E, c • F.fl.z ∈ Lsub Λ F → ∃ o : 𝓞 E, (o : E) = c)
    (hX : XLam Λ F = Submodule.span (𝓞 E) {y | ∃ (a : Fin r) (x : E), x ∈ aa a.castSucc ∧ y = x • F.fl.e a})
    (c : Fin (r + 1) → E) : ∑ j, c j • frame F j ∈ Λ ↔ ∀ j, c j ∈ aa j := by
  have hsum : ∑ j, c j • frame F j = ∑ a : Fin r, c a.castSucc • F.fl.e a + c (Fin.last r) • F.fl.z := by
    rw [Fin.sum_univ_castSucc]; simp only [GlobalTheory.LoopC.FixedLift.frame_castSucc, GlobalTheory.LoopC.FixedLift.frame_last]
  have hx : ∑ a : Fin r, c a.castSucc • F.fl.e a ∈ Xsp F :=
    Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)
  have hzo : ∀ t : E, t • F.fl.z ∈ orth S (Xsp F) := fun t => Submodule.smul_mem _ _
    ((mem_orth S).2 fun x hx => by rw [← GlobalTheory.LoopC.FixedLift.frame_last]; exact X_orth_frame hx _)
  constructor
  · intro h
    rw [hsum] at h
    obtain ⟨o, ho⟩ := hp (c (Fin.last r)) ⟨by
      have e : c (Fin.last r) • F.fl.z = (∑ a : Fin r, c a.castSucc • F.fl.e a + c (Fin.last r) • F.fl.z) +
        -(∑ a : Fin r, c a.castSucc • F.fl.e a) := by abel
      rw [e]
      exact Submodule.add_mem_sup ⟨h, (orth S (Xsp F)).add_mem (X_le_orth hx) (hzo _)⟩
        ((Xsp F).neg_mem hx), hzo _⟩
    have h3 : ∑ a : Fin r, c a.castSucc • F.fl.e a ∈ XLam Λ F := by
      refine ⟨?_, hx⟩
      have := Λ.sub_mem h (smul_mem_of S ⟨o, ho⟩ hz)
      simpa using this
    have h4 : ∀ y ∈ XLam Λ F, ∃ d : Fin r → E, (∀ a, d a ∈ aa a.castSucc) ∧ y = ∑ a, d a • F.fl.e a := by
      intro y hy
      rw [hX] at hy
      induction hy using Submodule.span_induction with
      | mem y hy =>
        obtain ⟨a, x, hx, rfl⟩ := hy
        refine ⟨Pi.single a x, fun i => ?_, by simp [Pi.single_apply]⟩
        by_cases h : i = a
        · subst h; simpa using hx
        · simp [h, FractionalIdeal.zero_mem]
      | zero => exact ⟨0, fun a => FractionalIdeal.zero_mem _, by simp⟩
      | add x y _ _ h1 h2 =>
        obtain ⟨d, hd, rfl⟩ := h1
        obtain ⟨d', hd', rfl⟩ := h2
        exact ⟨d + d', fun a => (aa a.castSucc : Submodule (𝓞 E) E).add_mem (hd a) (hd' a),
          by simp [add_smul, Finset.sum_add_distrib]⟩
      | smul t x _ h1 =>
        obtain ⟨d, hd, rfl⟩ := h1
        refine ⟨t • d, fun a => (aa a.castSucc : Submodule (𝓞 E) E).smul_mem t (hd a), ?_⟩
        simp [Finset.smul_sum]
    obtain ⟨d, hd, e⟩ := h4 _ h3
    have h5 := Fintype.linearIndependent_iff.1 F.fl.e_indep (fun a => c a.castSucc - d a)
      (by simp [sub_smul, Finset.sum_sub_distrib, e])
    intro j
    induction j using Fin.lastCases with
    | last => rw [hl, FractionalIdeal.mem_one_iff]; exact ⟨o, ho⟩
    | cast a => rw [sub_eq_zero.1 (h5 a)]; exact hd a
  · intro h
    rw [hsum]
    refine Λ.add_mem (Submodule.sum_mem _ fun a _ => ?_) (smul_mem_of S ?_ hz)
    · have : c a.castSucc • F.fl.e a ∈ XLam Λ F := by
        rw [hX]; exact Submodule.subset_span ⟨a, _, h _, rfl⟩
      exact this.1
    · have := h (Fin.last r)
      rwa [hl, FractionalIdeal.mem_one_iff] at this

theorem exists_moved (hT : T ≠ 0) (n : S.V ≃ₗ[E] S.V) (hn : n ∈ Formalism.HermitianLatticesTheory.isom S.hT)
    (B : Matrix (Fin (r + 1)) (Fin (r + 1)) (𝓞 E)) (h1 : ∀ a b, b < a → B a b = 0) (h2 : ∀ a, B a a = 1) :
    ∃ G : LFlag S r T, G.zt = G.fl.z ∧ frame G = frameAct (fun a => n (frame F a)) B := by
  set g := frameAct (frame F) B with hg
  have hX : ∀ b, ∃ x ∈ Xsp F, g b = x + (B (Fin.last r) b : E) • F.fl.z := by
    intro b
    refine ⟨∑ a : Fin r, (B a.castSucc b : E) • F.fl.e a,
      Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩), ?_⟩
    simp only [hg, frameAct]
    rw [Fin.sum_univ_castSucc]; simp only [GlobalTheory.LoopC.FixedLift.frame_castSucc, GlobalTheory.LoopC.FixedLift.frame_last]
  have he : ∀ a : Fin r, g a.castSucc ∈ Xsp F := by
    intro a
    obtain ⟨x, hx, e⟩ := hX a.castSucc
    rw [e, h1 _ _ (Fin.castSucc_lt_last a)]
    simpa using hx
  have ho : ∀ x ∈ Xsp F, ∀ b, S.hT x (g b) = 0 := by
    intro x hx b

    simp [hg, frameAct, map_sum, X_orth_frame hx]
  have hli : LinearIndependent E g := by
    obtain ⟨η, -, -, e⟩ := uni_inv h1 h2
    have e' : η * B = 1 := mul_eq_one_comm.1 e
    rw [Fintype.linearIndependent_iff]
    intro c hc
    have h3 := Fintype.linearIndependent_iff.1 (frame_indep (F := F) hT)
      ((B.map (algebraMap (𝓞 E) E)).mulVec c) (by
        rw [← hc]
        simp only [hg, frameAct, Finset.smul_sum, smul_smul, Matrix.mulVec, dotProduct, Finset.sum_smul,
          Matrix.map_apply]
        rw [Finset.sum_comm]
        exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by rw [mul_comm])
    have h4 : (B.map (algebraMap (𝓞 E) E)).mulVec c = 0 := funext h3
    have h5 := congrArg ((η.map (algebraMap (𝓞 E) E)).mulVec) h4
    rw [Matrix.mulVec_mulVec, ← Matrix.map_mul, e', Matrix.map_one _ (map_zero _) (map_one _),
      Matrix.one_mulVec, Matrix.mulVec_zero] at h5
    exact fun i => congrFun h5 i
  refine ⟨⟨⟨fun a => n (g a.castSucc), n (g (Fin.last r)), ?_, fun a b => ?_, fun a => ?_, ?_⟩,
    n (g (Fin.last r))⟩, rfl, ?_⟩
  · exact (hli.comp _ (Fin.castSucc_injective r)).map' (n : S.V →ₗ[E] S.V) n.ker
  · rw [hn]; exact ho _ (he a) _
  · rw [hn]; exact ho _ (he a) _
  · rw [hn]
    obtain ⟨x, hx, e⟩ := hX (Fin.last r)
    have e1 := ho x hx (Fin.last r)
    have e2 : S.hT x F.fl.z = 0 := by rw [← GlobalTheory.LoopC.FixedLift.frame_last]; exact X_orth_frame hx _
    have e3 : S.hT F.fl.z x = 0 := by rw [herm S, e2, star_zero]
    rw [h2] at e
    have e' : g (Fin.last r) = x + F.fl.z := by simpa using e
    rw [e']
    simp [iso_X S F hx hx, e2, e3, F.fl.z_norm]
  · rw [← map_frameAct]
    funext b
    induction b using Fin.lastCases with
    | last => rw [GlobalTheory.LoopC.FixedLift.frame_last]
    | cast a => rw [GlobalTheory.LoopC.FixedLift.frame_castSucc]

theorem orth_X_of_frame {x : S.V} (h : ∀ b, S.hT (frame F b) x = 0) : x ∈ orth S (Xsp F) := by
  refine (mem_orth S).2 fun y hy => ?_
  induction hy using Submodule.span_induction with
  | mem y hy => obtain ⟨a, rfl⟩ := hy; rw [← GlobalTheory.LoopC.FixedLift.frame_castSucc]; exact h _
  | zero => simp
  | add y z _ _ h1 h2 => simp [h1, h2]
  | smul c y _ h => simp [h]

theorem mem_Hp_iff {T' : E} {G : LFlag S r T'} (hF : F.zt = F.fl.z) (hG : G.zt = G.fl.z)
    (hFe : ∀ a, F.fl.e a ∈ Λ) (hGe : ∀ a, G.fl.e a ∈ Λ) (x : S.V) :
    x ∈ Hp Λ F G ↔ (∀ b, S.hT (frame F b) x = 0) ∧ ∀ b, S.hT (frame G b) x = 0 := by
  unfold Hp UUE spanE
  rw [mem_orth]
  constructor
  · intro h
    have h' : ∀ y ∈ UU Λ F G, S.hT y x = 0 := fun y hy => h y (Submodule.subset_span hy)
    unfold UU at h'
    constructor
    · intro b
      apply h'
      refine Submodule.mem_sup_left (Submodule.mem_sup_left ?_)
      induction b using Fin.lastCases with
      | last => rw [GlobalTheory.LoopC.FixedLift.frame_last, hF]; exact Submodule.mem_sup_right (Submodule.subset_span rfl)
      | cast a =>
        rw [GlobalTheory.LoopC.FixedLift.frame_castSucc]; exact Submodule.mem_sup_left ⟨hFe a, Submodule.subset_span ⟨a, rfl⟩⟩
    · intro b
      apply h'
      induction b using Fin.lastCases with
      | last => rw [GlobalTheory.LoopC.FixedLift.frame_last, hG]; exact Submodule.mem_sup_right (Submodule.subset_span rfl)
      | cast a =>
        rw [GlobalTheory.LoopC.FixedLift.frame_castSucc]
        exact Submodule.mem_sup_left (Submodule.mem_sup_right ⟨hGe a, Submodule.subset_span ⟨a, rfl⟩⟩)
  · rintro ⟨h1, h2⟩
    let K : Submodule E S.V :=
      { carrier := {y | S.hT y x = 0}
        add_mem' := fun {a b} ha hb => by simp_all
        zero_mem' := by simp
        smul_mem' := fun c a ha => by simp_all }
    have : UU Λ F G ≤ toO S K := by
      refine sup_le (sup_le (sup_le ?_ ?_) ?_) ?_
      · exact fun y hy => (mem_orth S).1 (orth_X_of_frame h1) y hy.2
      · rw [Submodule.span_le, Set.singleton_subset_iff, hF, ← GlobalTheory.LoopC.FixedLift.frame_last]; exact h1 _
      · exact fun y hy => (mem_orth S).1 (orth_X_of_frame h2) y hy.2
      · rw [Submodule.span_le, Set.singleton_subset_iff, hG, ← GlobalTheory.LoopC.FixedLift.frame_last]; exact h2 _
    exact fun y hy => (Submodule.span_le (p := K)).2 this hy

end Gen

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem ddS_ne_zero (D : D7) : ddS D ≠ 0 := by
  unfold ddS
  rw [FractionalIdeal.coeIdeal_ne_zero, Ne, Ideal.map_eq_bot_iff_of_injective (FaithfulSMul.algebraMap_injective _ _)]
  exact differentIdeal_ne_bot

theorem ddS_anti (D : D7) {m n : ℤ} (h : m ≤ n) : ddS D ^ n ≤ ddS D ^ m := by
  obtain ⟨k, rfl⟩ := Int.le.dest h
  rw [zpow_add₀ (ddS_ne_zero D), zpow_natCast]
  have : ddS D ^ k ≤ 1 := by
    unfold ddS
    rw [← FractionalIdeal.coeIdeal_pow]
    exact FractionalIdeal.coeIdeal_le_one
  calc _ ≤ ddS D ^ m * 1 := by gcongr
    _ = _ := mul_one _

theorem e_mem_XS (D : D7) {T : D.host.E} (F : FlagG (VS D) D.R.rS T) (a : Fin D.R.rS) : F.e a ∈ XS D F := by
  refine Submodule.subset_span ⟨a, 1, ?_, (one_smul _ _).symm⟩
  have := ddS_anti D (m := -((D.R.rS : ℤ) - (a : ℕ))) (n := 0) (by have := a.2; omega)
  rw [zpow_zero] at this
  exact this (FractionalIdeal.one_mem_one _)

theorem exists_exact_frame : ∀ (D : D7) (u u' : D.what₂.Word) (F0 : Fb D u) (Λ : LatV D), Stand D u u' → IsBase D u F0 → IsRowLat D F0 Λ → ∀ (P : LatW D) (Z : GramM D), ∀ F' ∈ FrSet D Λ (lf D F0) ((Tu D u' : ℕ) : D.host.E) Z P, ∃ F'' ∈ ExSet D Λ (lf D F0) ((Tu D u' : ℕ) : D.host.E) Z P, TEqv D Λ (lf D F0) F' F'' := by
  intro D u u' F0 Λ hSt _ hR P Z F' hF'
  obtain ⟨⟨⟨hlift', -, -⟩, -, hX'⟩, ⟨A, B, hA1, hA2, hB1, hB2, hZ⟩, hP⟩ := hF'
  obtain ⟨-, ⟨hlat, hΛ, hlift, -, hprim⟩, hX⟩ := hR
  have hT : ((Tu D u : ℕ) : D.host.E) ≠ 0 := Nat.cast_ne_zero.2 hSt.2.1.ne_zero
  have hT' : ((Tu D u' : ℕ) : D.host.E) ≠ 0 := Nat.cast_ne_zero.2 hSt.2.2.1.ne_zero
  obtain ⟨θ, hθ, -⟩ := GlobalTheory.TraceOne.exists_trace_one D 2 Nat.prime_two
  have hθ' : (θ : D.host.E) + star (θ : D.host.E) = 1 := by
    have := congrArg (algebraMap (𝓞 D.host.E) D.host.E) hθ
    rw [map_add (f := _), map_one] at this
    rw [GlobalTheory.NormSum.AdLattice.star_eq_conj]
    exact this
  choose st hst using fun o : 𝓞 D.host.E => star_int (E := D.host.E) ⟨o, rfl⟩
  have hst0 : st 0 = 0 := RingOfIntegers.ext (by rw [hst]; simp)
  have hst1 : st 1 = 1 := RingOfIntegers.ext (by rw [hst]; simp)
  obtain ⟨m, hm, hmf⟩ := exists_frame_op (F := lf D F0) θ hθ' hlat hΛ hT
    (fun j => ddS D ^ (-((D.R.rS : ℤ) - (j : ℕ)))) (fun j => zpow_ne_zero _ (ddS_ne_zero D))
    (fun a b hab => ddS_anti D (by have : a.val ≤ b.val := hab; omega))
    (coord_iff _ (by simp) hlift.1 hprim hX) (fun a b => st (A b a))
    (fun a b h => by rw [hA1 b a h, hst0]) (fun a => by rw [hA2, hst1])
  have hn := symm_mem_NLam hm
  obtain ⟨G, hGz, hG⟩ := exists_moved (F := F') hT' m.symm hn.1.1 B hB1 hB2
  have he : ∀ a, F0.e a ∈ Λ := fun a => (hX.symm ▸ e_mem_XS D F0 a : F0.e a ∈ XLam Λ (lf D F0)).1
  have he' : ∀ a, F'.fl.e a ∈ Λ := fun a => (hX'.symm ▸ e_mem_XS D F'.fl a : F'.fl.e a ∈ XLam Λ F').1
  have hf' : ∀ b, frame F' b ∈ Λ := fun b => by
    induction b using Fin.lastCases with
    | last => rw [GlobalTheory.LoopC.FixedLift.frame_last]; exact hlift'.1
    | cast a => rw [GlobalTheory.LoopC.FixedLift.frame_castSucc]; exact he' a
  have hGΛ : ∀ b, frame G b ∈ Λ := fun b => by
    rw [hG]
    exact Submodule.sum_mem _ fun a _ => smul_mem_of _ ⟨_, rfl⟩ ((aut_mem_iff hn.1 _).2 (hf' a))
  have hGe : ∀ a, G.fl.e a ∈ Λ := fun a => by rw [← GlobalTheory.LoopC.FixedLift.frame_castSucc]; exact hGΛ _
  have hadj : ∀ x y, (hS D).hT x (m.symm y) = (hS D).hT (m x) y := fun x y => by
    rw [← hm.1.1 x, LinearEquiv.apply_symm_apply]
  refine ⟨G, ⟨⟨by rw [← GlobalTheory.LoopC.FixedLift.frame_last]; exact hGΛ _, hGz⟩, hGe, ?_, hP.trans ?_⟩, m.symm, hn, B, hB1, hB2, hG⟩
  · rw [hZ]
    refine Matrix.ext fun a b => ?_
    change (hS D).hT (frame (lf D F0) a) (frame G b) = _
    rw [hG]

    simp only [frameAct, map_sum, map_smul, hadj, hmf, Matrix.mul_apply, Matrix.map_apply, smul_eq_mul]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [mul_comm]
    congr 1
    rw [LinearMap.sum_apply]
    refine Finset.sum_congr rfl fun d _ => ?_
    rw [LinearMap.map_smulₛₗ, hst, LinearMap.smul_apply, starRingEnd_apply, star_star]
    rfl
  · refine Submodule.comap_mono (sup_le ?_ le_sup_right)
    rintro x ⟨hx, hxH⟩
    obtain ⟨h1, h2⟩ := (mem_Hp_iff rfl hlift'.2 he he' x).1 hxH
    have e : x = m.symm x + -(m.symm x - x) := by abel
    rw [e]
    refine Submodule.add_mem_sup ⟨(aut_mem_iff hn.1 _).2 hx, (mem_Hp_iff rfl hGz he hGe _).2 ⟨fun b => ?_, fun b => ?_⟩⟩
      (Submodule.neg_mem _ (hn.2.2 x (orth_X_of_frame h1)))
    · rw [hadj, hmf]

      simp only [frameAct, map_sum, LinearMap.sum_apply, LinearMap.map_smulₛₗ, LinearMap.smul_apply]
      refine Finset.sum_eq_zero fun c _ => ?_
      rw [h1, smul_zero]
    · rw [hG]

      simp only [frameAct, map_sum, LinearMap.sum_apply, LinearMap.map_smulₛₗ, LinearMap.smul_apply]
      refine Finset.sum_eq_zero fun c _ => ?_
      rw [hn.1.1, h2, smul_zero]

end GlobalTheory.LoopC.FrameMove

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsExactGramFrameInTermClass =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsExactGramFrameInTermClassStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsExactGramFrameInTermClassStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.RowMinor\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsExactGramFrameInTermClass\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt GlobalTheory.LoopC
open scoped ENNReal Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.exists_exactGram_frame_in_termClass : ∀ (D : D7) (u u' : D.what₂.Word) (F0 : Fb D u) (Λ : LatV D), Stand D u u' → IsBase D u F0 → IsRowLat D F0 Λ → ∀ (P : LatW D) (Z : GramM D), ∀ F' ∈ FrSet D Λ (lf D F0) ((Tu D u' : ℕ) : D.host.E) Z P, ∃ F'' ∈ ExSet D Λ (lf D F0) ((Tu D u' : ℕ) : D.host.E) Z P, TEqv D Λ (lf D F0) F' F'' := by
  first | exact @GlobalTheory.LoopC.FrameMove.exists_exact_frame
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsExactGramFrameInTermClassStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameTermCountSublatticeBound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameTermCountSublatticeBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.RowMinor\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.CardExactGramIntegralFrameClassesLeStatement\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.EncardBiUnionLe\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsExactGramFrameInTermClassStatement\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsFrameFixingIsometrySplitRowLatticeStatement\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Module Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt GlobalTheory.LoopC
open scoped ENNReal Classical

namespace GlobalTheory.LoopC.FrCount

open GlobalTheory.LoopC.FrEqv

theorem cntCl_le_of_map {α β : Type} {R : α → α → Prop} {R' : β → β → Prop} (hR : Equivalence R)
    (hR' : Equivalence R') (X : Set α) (Y : Set β) (φ : α → β)
    (h1 : ∀ a ∈ X, ∃ c, R a c ∧ φ c ∈ Y) (h2 : ∀ c c', R' (φ c) (φ c') → R c c') :
    cntCl X R ≤ cntCl Y R' := by
  rw [cntCl_eq_encard hR, cntCl_eq_encard hR']
  refine le_trans (Set.encard_le_encard ?_)
    (Set.encard_image_le (fun C : Set β => {d | ∃ c, φ c ∈ C ∧ R c d}) _)
  rintro _ ⟨a, ha, rfl⟩
  obtain ⟨c, hc, hY⟩ := h1 a ha
  refine ⟨_, ⟨φ c, hY, rfl⟩, ?_⟩
  ext d
  constructor
  · rintro ⟨c', h3, h4⟩
    exact hR.trans hc (hR.trans (h2 c c' h3) h4)
  · intro hd
    exact ⟨c, hR'.refl _, hR.trans (hR.symm hc) hd⟩

section Gen

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ} {T T' : E}

def mapFlag (n : S.V ≃ₗ[E] S.V) (hn : n ∈ Formalism.HermitianLatticesTheory.isom S.hT) (G : LFlag S r T') : LFlag S r T' where
  fl :=
    { e := fun a => n (G.fl.e a)
      z := n G.fl.z
      e_indep := G.fl.e_indep.map' (n : S.V →ₗ[E] S.V) (LinearEquiv.ker n)
      e_iso := fun a b => (hn _ _).trans (G.fl.e_iso a b)
      z_orth := fun a => (hn _ _).trans (G.fl.z_orth a)
      z_norm := (hn _ _).trans G.fl.z_norm }
  zt := n G.zt

theorem frame_mapFlag (n : S.V ≃ₗ[E] S.V) (hn : n ∈ Formalism.HermitianLatticesTheory.isom S.hT) (G : LFlag S r T') (b : Fin (r + 1)) :
    frame (mapFlag n hn G) b = n (frame G b) := by
  refine Fin.lastCases ?_ (fun i => ?_) b
  · simp [frame, FlagG.fvec, mapFlag]
  · simp [frame, FlagG.fvec, mapFlag]

theorem symm_mem_X_mapFlag (n : S.V ≃ₗ[E] S.V) (hn : n ∈ Formalism.HermitianLatticesTheory.isom S.hT) (G : LFlag S r T') {y : S.V}
    (hy : y ∈ Xsp (mapFlag n hn G)) : n.symm y ∈ Xsp G := by
  have : Xsp (mapFlag n hn G) ≤ (Xsp G).comap (n.symm : S.V →ₗ[E] S.V) := by
    refine Submodule.span_le.mpr ?_
    rintro _ ⟨a, rfl⟩
    change n.symm (n (G.fl.e a)) ∈ Xsp G
    rw [n.symm_apply_apply]
    exact Submodule.subset_span ⟨a, rfl⟩
  exact this hy

theorem fix_X {F : LFlag S r T} {n : S.V ≃ₗ[E] S.V} (hf : ∀ b, n (frame F b) = frame F b) {x : S.V}
    (hx : x ∈ Xsp F) : n x = x := by
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨a, rfl⟩ := hx
    have := hf a.castSucc
    simpa [frame, FlagG.fvec] using this
  | zero => simp
  | add y z _ _ h1 h2 => simp [h1, h2]
  | smul c y _ h => simp [h]

theorem isometry_fix_flagAnisotropicVector_of_fix_frame {F : LFlag S r T} {n : S.V ≃ₗ[E] S.V} (hf : ∀ b, n (frame F b) = frame F b) :
    n F.fl.z = F.fl.z := by
  have := hf (Fin.last _)
  simpa [frame, FlagG.fvec] using this

theorem symm_fix {n : S.V ≃ₗ[E] S.V} {x : S.V} (h : n x = x) : n.symm x = x := by
  conv_lhs => rw [← h]
  simp

theorem Xflag_le_X (F : LFlag S r T) (j : ℕ) : Xflag F j ≤ Xsp F :=
  Submodule.span_mono (Set.image_subset_range _ _)

alias mem_orth' := _root_.GlobalTheory.LoopC.FixedLift.mem_orth

theorem ap_mem_gmap {Λ : Submodule (𝓞 E) S.V} (n : S.V ≃ₗ[E] S.V) (x : S.V) :
    n x ∈ Formalism.HermitianLatticesTheory.gmap n Λ ↔ x ∈ Λ := by
  rw [mem_gmap, n.symm_apply_apply]

theorem Lsub_gmap {F : LFlag S r T} {n : S.V ≃ₗ[E] S.V} (Λ : Submodule (𝓞 E) S.V)
    (ho : ∀ x ∈ orth S (Xsp F), n x - x ∈ Xsp F) : Lsub (Formalism.HermitianLatticesTheory.gmap n Λ) F = Lsub Λ F := by
  unfold Lsub
  congr 1
  apply le_antisymm
  · refine sup_le ?_ le_sup_right
    rintro y ⟨h1, h2⟩
    have h3 : n.symm y - y ∈ Xsp F := symm_sub_mem n X_le_orth ho y h2
    have h4 : n.symm y ∈ orth S (Xsp F) := by
      simpa using (orth S (Xsp F)).add_mem (X_le_orth h3) h2
    have e : y = n.symm y - (n.symm y - y) := by abel
    rw [e]
    exact Submodule.sub_mem _ (Submodule.mem_sup_left ⟨(mem_gmap n y).1 h1, h4⟩) (Submodule.mem_sup_right h3)
  · refine sup_le ?_ le_sup_right
    rintro y ⟨h1, h2⟩
    have h3 : n y - y ∈ Xsp F := ho y h2
    have h4 : n y ∈ orth S (Xsp F) := by
      simpa using (orth S (Xsp F)).add_mem (X_le_orth h3) h2
    have e : y = n y - (n y - y) := by abel
    rw [e]
    exact Submodule.sub_mem _ (Submodule.mem_sup_left ⟨(ap_mem_gmap n y).2 h1, h4⟩) (Submodule.mem_sup_right h3)

theorem conj_mem_NLam {F : LFlag S r T} {n m : S.V ≃ₗ[E] S.V} {Λ : Submodule (𝓞 E) S.V}
    (hn : n ∈ Formalism.HermitianLatticesTheory.isom S.hT) (hf : ∀ b, n (frame F b) = frame F b)
    (ho : ∀ x ∈ orth S (Xsp F), n x - x ∈ Xsp F) (hm : m ∈ NLam (Formalism.HermitianLatticesTheory.gmap n Λ) F) :
    n.symm * (m * n) ∈ NLam Λ F := by
  refine ⟨⟨mul_mem (inv_mem hn) (mul_mem hm.1.1 hn), ?_⟩, fun j x hx => ?_, ?_⟩
  · ext x
    rw [mem_gmap, ← ap_mem_gmap n, ← aut_mem_iff hm.1, mem_gmap]
    change (n.symm * (m * n)) ((n.symm * (m * n)).symm x) ∈ Λ ↔ _
    rw [LinearEquiv.apply_symm_apply]
  · have h1 : n x = x := fix_X hf (Xflag_le_X F _ hx)
    have h2 := hm.2.1 j x hx
    have h3 : m x ∈ Xsp F := by
      simpa using (Xsp F).add_mem (Xflag_le_X F _ h2) (Xflag_le_X F _ hx)
    change n.symm (m (n x)) - x ∈ _
    rw [h1, symm_fix (fix_X hf h3)]
    exact h2
  · exact trans_sub_mem _ _ X_le_orth (trans_sub_mem _ _ X_le_orth ho hm.2.2) (symm_sub_mem n X_le_orth ho)

theorem Thp_map {F : LFlag S r T} (G : LFlag S r T') {n : S.V ≃ₗ[E] S.V} {Λ : Submodule (𝓞 E) S.V}
    (hn : n ∈ Formalism.HermitianLatticesTheory.isom S.hT) (hf : ∀ b, n (frame F b) = frame F b) (hz : F.zt = F.fl.z) {t : S.V}
    (ht : t ∈ Thp Λ F G) : n t ∈ Thp (Formalism.HermitianLatticesTheory.gmap n Λ) F (mapFlag n hn G) := by
  refine ⟨(ap_mem_gmap n t).2 ht.1, ?_⟩
  have key : UUE (Formalism.HermitianLatticesTheory.gmap n Λ) F (mapFlag n hn G) ≤ (UUE Λ F G).comap (n.symm : S.V →ₗ[E] S.V) := by
    refine Submodule.span_le.mpr ?_
    have : UU (Formalism.HermitianLatticesTheory.gmap n Λ) F (mapFlag n hn G) ≤ Formalism.HermitianLatticesTheory.gmap n (UU Λ F G) := by
      refine sup_le (sup_le (sup_le ?_ ?_) ?_) ?_
      · rintro y ⟨h1, h2⟩
        rw [mem_gmap]
        refine Submodule.mem_sup_left (Submodule.mem_sup_left (Submodule.mem_sup_left
          ⟨(mem_gmap n y).1 h1, ?_⟩))
        rw [symm_fix (fix_X hf h2)]
        exact h2
      · refine Submodule.span_le.mpr ?_
        rintro _ rfl
        change F.zt ∈ Formalism.HermitianLatticesTheory.gmap n (UU Λ F G)
        rw [mem_gmap, symm_fix (show n F.zt = F.zt by rw [hz]; exact isometry_fix_flagAnisotropicVector_of_fix_frame hf)]
        exact Submodule.mem_sup_left (Submodule.mem_sup_left (Submodule.mem_sup_right
          (Submodule.mem_span_singleton_self _)))
      · rintro y ⟨h1, h2⟩
        rw [mem_gmap]
        exact Submodule.mem_sup_left (Submodule.mem_sup_right
          ⟨(mem_gmap n y).1 h1, symm_mem_X_mapFlag n hn G h2⟩)
      · refine Submodule.span_le.mpr ?_
        rintro _ rfl
        change n G.zt ∈ Formalism.HermitianLatticesTheory.gmap n (UU Λ F G)
        rw [ap_mem_gmap]
        exact Submodule.mem_sup_right (Submodule.mem_span_singleton_self _)
    intro y hy
    exact Submodule.subset_span ((mem_gmap n y).1 (this hy))
  change n t ∈ orth S _
  rw [mem_orth']
  intro x hx
  have h1 := (mem_orth'.1 ht.2) _ (key hx)
  have h2 := hn (n.symm x) t
  rw [n.apply_symm_apply] at h2
  exact h2.trans h1

theorem Zhat_mapFlag {F : LFlag S r T} (G : LFlag S r T') {n : S.V ≃ₗ[E] S.V}
    (hn : n ∈ Formalism.HermitianLatticesTheory.isom S.hT) (hf : ∀ b, n (frame F b) = frame F b) :
    ZhatL F (mapFlag n hn G) = ZhatL F G := by
  funext a b
  change S.hT (frame F a) (frame (mapFlag n hn G) b) = S.hT (frame F a) (frame G b)
  rw [frame_mapFlag, ← hn (frame F a) (frame G b), hf]

end Gen

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem main : ∀ (D : D7) (u u' : D.what₂.Word) (F0 : Fb D u) (Λ : LatV D), Stand D u u' → IsBase D u F0 → IsRowLat D F0 Λ → ∀ (P : LatW D) (Z : GramM D) (s : ℕ) (De Q : ℝ), 1 ≤ s → s ≤ D.R.k → SubOK D (L0X D Λ (lf D F0)) P s De → QOK D u u' Z Q → (cntFr D Λ (lf D F0) ((Tu D u' : ℕ) : D.host.E) Z P : ℝ≥0∞) ≤ ENNReal.ofReal (frB D s (NT D u) De Q) := by
  intro D u u' F0 Λ hS hB hR P Z s De Q hs hk hP hQ
  obtain ⟨n, ⟨hn, hf, ho⟩, hsp, hR'⟩ := GlobalTheory.T.exists_frameFixing_isometry_split_rowLattice D u F0 Λ hB hR hS.2.1.one_lt.le
  have hL : L0X D (Formalism.HermitianLatticesTheory.gmap n Λ) (lf D F0) = L0X D Λ (lf D F0) := by
    unfold L0X L0sub
    rw [Lsub_gmap Λ ho]
  refine le_trans ?_ (GlobalTheory.T.card_exactGramIntegralFrameClasses_le D u u' F0 _ hS hB hR' hsp P Z s De Q hs hk (hL ▸ hP) hQ)
  refine ENat.toENNReal_le.2 ?_
  refine cntCl_le_of_map (TEqv_equivalence D Λ _) (TEqv_equivalence D _ _) _ _ (mapFlag n hn) ?_ ?_
  · intro a ha
    obtain ⟨c, ⟨c1, c2, c3, c4⟩, hc⟩ := GlobalTheory.T.exists_exactGram_frame_in_termClass D u u' F0 Λ hS hB hR P Z a ha
    refine ⟨c, hc, ⟨(ap_mem_gmap n _).2 c1.1, congrArg n c1.2⟩, fun a => (ap_mem_gmap n _).2 (c2 a),
      (Zhat_mapFlag c hn hf).trans c3, c4.trans ?_⟩
    apply Submodule.comap_mono
    have hX : Xsp (lf D F0) ≤ Submodule.span D.host.E (Λ : Set (VS D).V) := by
      refine Submodule.span_le.mpr ?_
      rintro _ ⟨i, rfl⟩
      apply Submodule.subset_span
      have hmem : F0.e i ∈ XS D F0 := by
        apply Submodule.subset_span
        refine ⟨i, 1, ?_, (one_smul _ _).symm⟩
        have hk : (-((D.R.rS : ℤ) - ((i : ℕ) : ℤ))) = -(((D.R.rS - (i : ℕ) : ℕ)) : ℤ) := by
          rw [Nat.cast_sub i.isLt.le]
        rw [hk]
        have hI0 : ddS D ≠ 0 := by
          unfold ddS
          rw [Ne, FractionalIdeal.coeIdeal_eq_zero, Ideal.map_eq_bot_iff_of_injective]
          · exact differentIdeal_ne_bot
          · exact FaithfulSMul.algebraMap_injective _ _
        have hJ0 : ddS D ^ (D.R.rS - (i : ℕ)) ≠ 0 := pow_ne_zero _ hI0
        have hJ1 : ddS D ^ (D.R.rS - (i : ℕ)) ≤ 1 :=
          pow_le_one' FractionalIdeal.coeIdeal_le_one _
        rw [_root_.zpow_neg, zpow_natCast]
        have h1 : (1 : FractionalIdeal (nonZeroDivisors (𝓞 D.host.E)) D.host.E) ≤
            (ddS D ^ (D.R.rS - (i : ℕ)))⁻¹ := by
          calc
            1 = ddS D ^ (D.R.rS - (i : ℕ)) * (ddS D ^ (D.R.rS - (i : ℕ)))⁻¹ := (mul_inv_cancel₀ hJ0).symm
            _ ≤ 1 * (ddS D ^ (D.R.rS - (i : ℕ)))⁻¹ := by gcongr
            _ = _ := one_mul _
        exact h1 ((FractionalIdeal.mem_one_iff _).2 ⟨1, map_one _⟩)
      rw [← hR.2.2] at hmem
      exact hmem.1
    have hU : Xsp (lf D F0) ≤ UUE Λ (lf D F0) c := by
      intro x hx
      obtain ⟨t, ht⟩ := multiple_mem_span_of_mem_localization_span (nonZeroDivisors (𝓞 D.host.E)) D.host.E _ x (hX hx)
      rw [Submodule.span_eq] at ht
      have h1 : (t : 𝓞 D.host.E) • x ∈ UU Λ (lf D F0) c :=
        Submodule.mem_sup_left (Submodule.mem_sup_left (Submodule.mem_sup_left
          ⟨ht, (toO (VS D) (Xsp (lf D F0))).smul_mem (t : 𝓞 D.host.E) hx⟩))
      have h2 : ((t : 𝓞 D.host.E) : D.host.E) • x ∈ UUE Λ (lf D F0) c := by
        rw [algebraMap_smul D.host.E (t : 𝓞 D.host.E) x]
        exact Submodule.subset_span h1
      have h3 : ((t : 𝓞 D.host.E) : D.host.E) ≠ 0 := by
        have := nonZeroDivisors.ne_zero t.2
        exact_mod_cast this
      exact (Submodule.smul_mem_iff _ h3).1 h2
    refine sup_le ?_ le_sup_right
    intro t ht
    have h1 : t ∈ orth (VS D) (Xsp (lf D F0)) :=
      mem_orth'.2 fun x hx => mem_orth'.1 ht.2 x (hU hx)
    have e : t = n t - (n t - t) := by abel
    rw [e]
    exact Submodule.sub_mem _ (Submodule.mem_sup_left (Thp_map c hn hf rfl ht))
      (Submodule.mem_sup_right (ho t h1))
  · rintro c c' ⟨m, hm, ξ, h1, h2, h3⟩
    refine ⟨_, conj_mem_NLam hn hf ho hm, ξ, h1, h2, ?_⟩
    have h4 := map_frameAct n.symm (fun a => m (frame (mapFlag n hn c) a)) ξ
    rw [← h3] at h4
    simp only [frame_mapFlag, LinearEquiv.symm_apply_apply] at h4
    exact h4

end GlobalTheory.LoopC.FrCount

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameTermCountSublatticeBound =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameTermCountSublatticeBoundStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameTermCountSublatticeBoundStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.RowMinor\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameTermCountSublatticeBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Module Matrix Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt GlobalTheory.LoopC
open scoped ENNReal Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.frameTermCount_sublattice_bound : ∀ (D : D7) (u u' : D.what₂.Word) (F0 : Fb D u) (Λ : LatV D), Stand D u u' → IsBase D u F0 → IsRowLat D F0 Λ → ∀ (P : LatW D) (Z : GramM D) (s : ℕ) (De Q : ℝ), 1 ≤ s → s ≤ D.R.k → SubOK D (L0X D Λ (lf D F0)) P s De → QOK D u u' Z Q → (cntFr D Λ (lf D F0) ((Tu D u' : ℕ) : D.host.E) Z P : ℝ≥0∞) ≤ ENNReal.ofReal (frB D s (NT D u) De Q) := by
  first | exact @GlobalTheory.LoopC.FrCount.main
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FrameTermCountSublatticeBoundStatement =====
