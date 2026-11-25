module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsIntersectionFamily
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsChainFirst
public import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Linter.HaveILetI
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FrameDefinitions.PermFinTwoUniv
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.SwapLoc
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.AlgebraicIndependentLinearForms, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GenericFibreLinearEquations

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.AlgebraicIndependentLinearForms =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.AlgebraicIndependentLinearForms", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsIntersectionFamily\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FrameDefinitions.PermFinTwoUniv\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.SwapLoc\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top.FlDeg.LinKer

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4
open GroundTheory.Heights₂.Heights.LowerBoundFree GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top GlobalTheory.CompanionTheory.Ar.Top.FlDeg

theorem algebraicIndependent_linearForms {F E : Type} [Field F] [Field E] [Algebra F E]
    {D κ : Type} [Fintype D] [Fintype κ] (u : D → E) (hu : AlgebraicIndependent F u)
    (v : κ → D → F) (hv : LinearIndependent F v) :
    AlgebraicIndependent F fun i => ∑ c, algebraMap F E (v i c) * u c := by
  classical
  obtain ⟨T, hT⟩ := LinearMap.exists_leftInverse_of_injective (Fintype.linearCombination F v)
    (LinearMap.ker_eq_bot.2 hv.fintypeLinearCombination_injective)
  have hTv : ∀ i, T (v i) = Pi.single i 1 := by
    intro i
    have := LinearMap.congr_fun hT (Pi.single i 1)
    simpa [Fintype.linearCombination_apply_single] using this
  have hdual : ∀ i j, ∑ c, v i c * T (Pi.single c 1) j = (Pi.single i 1 : κ → F) j := by
    intro i j
    have hvi : v i = ∑ c, v i c • (Pi.single c 1 : D → F) := by
      ext d
      simp [Finset.sum_apply, Pi.single_apply]
    rw [← hTv i]
    conv_rhs => rw [hvi]

    simp [map_sum, Finset.sum_apply]
  let A : MvPolynomial κ F →ₐ[F] MvPolynomial D F :=
    aeval fun i => ∑ c, MvPolynomial.C (v i c) * MvPolynomial.X c
  let B : MvPolynomial D F →ₐ[F] MvPolynomial κ F :=
    aeval fun c => ∑ j, MvPolynomial.C (T (Pi.single c 1) j) * MvPolynomial.X j
  have hBA : B.comp A = AlgHom.id F _ := by
    apply MvPolynomial.algHom_ext
    intro i

    simp only [A, B, AlgHom.comp_apply, aeval_X, map_sum, map_mul, algHom_C, AlgHom.id_apply,
    algebraMap_eq, Finset.mul_sum]
    rw [Finset.sum_comm]

    simp only [← mul_assoc, ← MvPolynomial.C_mul, ← Finset.sum_mul, ← map_sum, hdual]
    simp [Pi.single_apply, ite_mul]
  have hA : Function.Injective A := by
    intro f g h
    have := congrArg B h
    have e : ∀ f, B (A f) = f := fun f => by
      simpa using DFunLike.congr_fun hBA f
    rwa [e, e] at this
  have hcomp : (aeval fun i => ∑ c, algebraMap F E (v i c) * u c : MvPolynomial κ F →ₐ[F] E) =
      (aeval u).comp A := by
    apply MvPolynomial.algHom_ext
    intro i

    simp [A, map_sum, aeval_X, algHom_C]
  have : Function.Injective (aeval fun i => ∑ c, algebraMap F E (v i c) * u c :
      MvPolynomial κ F →ₐ[F] E) := by
    rw [hcomp]
    exact Function.Injective.comp (f := A) hu hA
  exact this

theorem ker_eq_span_homogeneous {F E : Type} [Field F] [Field E] [Algebra F E]
    {P D : Type} [Fintype P] [Fintype D] (u : D → E) (hu : AlgebraicIndependent F u)
    (l : P → D → F) :
    RingHom.ker (aeval (fun p => ∑ c, algebraMap F E (l p c) * u c) : MvPolynomial P F →ₐ[F] E) =
      Ideal.span {f : MvPolynomial P F | f.IsHomogeneous 1 ∧
        aeval (fun p => ∑ c, algebraMap F E (l p c) * u c) f = 0} := by
  classical
  set x : P → E := fun p => ∑ c, algebraMap F E (l p c) * u c with hx
  set S : Set (MvPolynomial P F) := {f | f.IsHomogeneous 1 ∧ aeval x f = 0} with hS
  obtain ⟨κ, a, ha, hspan, hli⟩ := exists_linearIndependent' F l
  haveI : Finite κ := Finite.of_injective a ha
  haveI : Fintype κ := Fintype.ofFinite κ
  have hc : ∀ p, ∃ c : κ → F, ∑ i, c i • l (a i) = l p := by
    intro p
    have hp : l p ∈ Submodule.span F (Set.range (l ∘ a)) := by
      rw [hspan]
      exact Submodule.subset_span ⟨p, rfl⟩
    simpa using (Submodule.mem_span_range_iff_exists_fun F).1 hp
  choose c hc using hc
  let ρ' : MvPolynomial P F →ₐ[F] MvPolynomial κ F :=
    aeval fun p => ∑ i, MvPolynomial.C (c p i) * MvPolynomial.X i
  let ρ : MvPolynomial P F →ₐ[F] MvPolynomial P F := (rename a).comp ρ'
  have hρX : ∀ p, ρ (MvPolynomial.X p) = ∑ i, MvPolynomial.C (c p i) * MvPolynomial.X (a i) := by
    intro p

    simp [ρ, ρ', map_sum, aeval_X, rename_X]
  have hxp : ∀ p, x p = ∑ i, algebraMap F E (c p i) * x (a i) := by
    intro p
    simp only [hx, Finset.mul_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun d _ => ?_
    have : l p d = ∑ i, c p i * l (a i) d := by
      rw [← hc p]
      simp [Finset.sum_apply]

    rw [this, map_sum, Finset.sum_mul]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_mul, mul_assoc]
  have hmem : ∀ p, MvPolynomial.X p - ρ (MvPolynomial.X p) ∈ S := by
    intro p
    refine ⟨?_, ?_⟩
    · rw [hρX]
      exact (isHomogeneous_X F p).sub
        (IsHomogeneous.sum _ _ _ fun i _ => isHomogeneous_C_mul_X (c p i) (a i))
    · rw [hρX]

      simp only [map_sub, aeval_X, map_sum, map_mul, algHom_C]
      simpa [sub_eq_zero] using hxp p
  have hle : Ideal.span S ≤ RingHom.ker (aeval x : MvPolynomial P F →ₐ[F] E) := by
    rw [Ideal.span_le]
    intro f hf
    exact hf.2
  have hq : (Ideal.Quotient.mkₐ F (Ideal.span S)).comp ρ = Ideal.Quotient.mkₐ F (Ideal.span S) := by
    apply MvPolynomial.algHom_ext
    intro p
    simp only [AlgHom.comp_apply, Ideal.Quotient.mkₐ_eq_mk]
    exact (Ideal.Quotient.eq.2 (Ideal.subset_span (hmem p))).symm
  have hdiff : ∀ f, f - ρ f ∈ Ideal.span S := by
    intro f
    have := DFunLike.congr_fun hq f
    simp only [AlgHom.comp_apply, Ideal.Quotient.mkₐ_eq_mk] at this
    exact Ideal.Quotient.eq.1 this.symm
  refine le_antisymm ?_ hle
  intro f hf
  have hf0 : aeval x f = 0 := hf
  have h1 : aeval x (ρ f) = 0 := by
    have := hle (hdiff f)
    have h2 : aeval x (f - ρ f) = 0 := this
    rw [map_sub, hf0, zero_sub, neg_eq_zero] at h2
    exact h2
  have hind : AlgebraicIndependent F (x ∘ a) :=
    algebraicIndependent_linearForms u hu (l ∘ a) hli
  have h2 : ρ' f = 0 := by
    apply hind
    rw [map_zero, ← h1]
    simp [ρ, aeval_rename]
  have h3 : ρ f = 0 := by simp [ρ, h2]
  simpa [h3] using hdiff f

theorem ker_linearForms_span : ∀ (F E : Type) [Field F] [Field E] [Algebra F E] (K : Type) [Fintype K]
    (ι : K → Type) [∀ k, Fintype (ι k)] (k₀ : K), (∀ a : K, a = k₀) → ∀ (C : Type) [Fintype C]
    (u : C → E) (l : (Σ k, ι k) → C → F), AlgebraicIndependent F u →
    ∃ S : Set (MRingOver F ι), (∀ f ∈ S, IsMultiHomog f fun _ => 1) ∧
      RingHom.ker (aeval (fun p => ∑ c, algebraMap F E (l p c) * u c) : MRingOver F ι →ₐ[F] E) =
        Ideal.span S := by
  intro F E _ _ _ K _ ι _ k₀ hk C _ u l hu
  refine ⟨_, ?_, ker_eq_span_homogeneous u hu l⟩
  rintro f ⟨hf, -⟩ m hm k
  have hd : ∑ p : (Σ k, ι k), m p = 1 := by
    have h : Finsupp.degree m = 1 := by
      rw [Finsupp.degree_eq_weight_one]
      exact hf (mem_support_iff.1 hm)
    rw [← h, Finsupp.degree_apply]
    exact (Finset.sum_subset (Finset.subset_univ _)
      fun p _ hp => by simpa using hp).symm
  rw [Fintype.sum_sigma] at hd
  have hk' : ∀ j : K, j = k := fun j => (hk j).trans (hk k).symm
  rw [Fintype.sum_eq_single k (fun j hj => absurd (hk' j) hj)] at hd
  exact hd

end GlobalTheory.CompanionTheory.Ar.Top.FlDeg.LinKer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.AlgebraicIndependentLinearForms =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GenericFibreLinearEquations =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GenericFibreLinearEquations", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsChainFirst\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.AlgebraicIndependentLinearForms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.LocalProperties.Reduced\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top.FlDeg.FibreLin

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4
open GroundTheory.Heights₂.Heights.LowerBoundFree GlobalTheory.CompanionTheory.Ar.Top.FlDeg

theorem exists_int_poly {σ : Type} (p : MvPolynomial σ ℚ) :
    ∃ (n : ℤ) (f : MvPolynomial σ ℤ), n ≠ 0 ∧ map (Int.castRingHom ℚ) f = C (n : ℚ) * p := by
  induction p using MvPolynomial.induction_on with
  | C a =>
    refine ⟨a.den, C a.num, by exact_mod_cast a.den_ne_zero, ?_⟩
    rw [map_C, ← C_mul]
    congr 1
    simp [Rat.den_mul_eq_num]
  | add p q hp hq =>
    obtain ⟨n, f, hn, hf⟩ := hp
    obtain ⟨m, g, hm, hg⟩ := hq
    refine ⟨n * m, C m * f + C n * g, mul_ne_zero hn hm, ?_⟩
    simp only [map_add (f := _), map_mul, hf, hg, map_C, Int.coe_castRingHom, Int.cast_mul]
    ring
  | mul_X p i hp =>
    obtain ⟨n, f, hn, hf⟩ := hp
    exact ⟨n, f * X i, hn, by simp only [map_mul, hf, map_X]; ring⟩

theorem map_aeval_int {σ A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (x : σ → A)
    (f : MvPolynomial σ ℤ) : φ (aeval x f) = aeval (fun i => φ (x i)) f := by
  induction f using MvPolynomial.induction_on with
  | C a => simp
  | add p q hp hq => simp [hp, hq]
  | mul_X p i hp => simp [hp]

theorem exists_int_value {σ E : Type} [Field E] [Algebra ℚ E] (x : σ → E) (p : MvPolynomial σ ℚ) :
    ∃ (n : ℤ) (f : MvPolynomial σ ℤ), n ≠ 0 ∧ aeval x f = (n : E) * aeval x p := by
  obtain ⟨n, f, hn, hf⟩ := exists_int_poly p
  refine ⟨n, f, hn, ?_⟩
  have h := congrArg (aeval x) hf
  have h2 : aeval x (map (Int.castRingHom ℚ) f) = aeval x f := aeval_map_algebraMap (R := ℤ) ℚ x f
  rw [h2, map_mul, aeval_C] at h
  simpa using h

theorem exists_quot {σ E : Type} [Field E] [Algebra ℚ E] [CharZero E] (x : σ → E) (c : E)
    (hc : c ∈ IntermediateField.adjoin ℚ (Set.range x)) :
    ∃ f g : MvPolynomial σ ℤ, aeval x g ≠ 0 ∧ c = aeval x f / aeval x g := by
  obtain ⟨p, q, hpq⟩ := (IntermediateField.mem_adjoin_range_iff ℚ x c).1 hc
  by_cases hq : aeval x q = 0
  · exact ⟨0, 1, by simp, by simp [hpq, hq]⟩
  obtain ⟨n, f, hn, hf⟩ := exists_int_value x p
  obtain ⟨m, g, hm, hg⟩ := exists_int_value x q
  have hn' : (n : E) ≠ 0 := by exact_mod_cast hn
  have hm' : (m : E) ≠ 0 := by exact_mod_cast hm
  refine ⟨(m : MvPolynomial σ ℤ) * f, (n : MvPolynomial σ ℤ) * g, ?_, ?_⟩
  · simp only [map_mul, map_intCast, hg]
    exact mul_ne_zero hn' (mul_ne_zero hm' hq)
  · simp only [map_mul, map_intCast, hf, hg, hpq]
    field_simp

section Gen

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
  {K' : Type} [Fintype K'] {ι' : K' → Type} [∀ k, Fintype (ι' k)]

def genOf (E : Type) [Field E] [Algebra ℚ E] [CharZero E] (v : (Σ k, ι k) → (Σ k', ι' k')) (P' : Ideal (MRing ι'))
    (x' : (Σ k', ι' k') → E) (h : RingHom.ker (aeval x' : MRing ι' →ₐ[ℤ] E) = P') : GenFibre v P' where
  Φ := IntermediateField.adjoin ℚ (Set.range (x' ∘ v))
  Φ' := E
  x := fun p => ⟨x' (v p), IntermediateField.subset_adjoin _ _ ⟨p, rfl⟩⟩
  x' := x'
  ker_x := by
    ext f
    rw [RingHom.mem_ker, imageZ, Ideal.mem_comap, ← h, RingHom.mem_ker]
    have e := map_aeval_int (algebraMap (IntermediateField.adjoin ℚ (Set.range (x' ∘ v))) E)
      (fun p => ⟨x' (v p), IntermediateField.subset_adjoin _ _ ⟨p, rfl⟩⟩) f
    have e2 : aeval x' ((rename v : MRing ι →ₐ[ℤ] MRing ι').toRingHom f) = aeval (x' ∘ v) f :=
      aeval_rename v x' f
    rw [e2, ← map_eq_zero_iff _ (algebraMap (IntermediateField.adjoin ℚ (Set.range (x' ∘ v))) E).injective, e]
    rfl
  gen := by
    intro c
    obtain ⟨f, g, hg, hc⟩ := exists_quot (x' ∘ v) c.1 c.2
    have e := fun f => map_aeval_int (algebraMap (IntermediateField.adjoin ℚ (Set.range (x' ∘ v))) E)
      (fun p => ⟨x' (v p), IntermediateField.subset_adjoin _ _ ⟨p, rfl⟩⟩) f
    refine ⟨f, g, ?_, ?_⟩
    · intro h0
      apply hg
      have := e g
      rw [h0, map_zero] at this
      exact this.symm
    · apply (algebraMap (IntermediateField.adjoin ℚ (Set.range (x' ∘ v))) E).injective
      rw [map_div₀, e, e]
      exact hc
  genericFibre_ker_target := h
  compat := fun _ => rfl

end Gen

theorem indep_over_rest {F E I C : Type} [Field F] [Field E] [Algebra F E] (e : I → E)
    (he : AlgebraicIndependent F e) (r : Option C → I) (hr : Function.Injective r) :
    AlgebraicIndependent (IntermediateField.adjoin F (e '' (Set.range r)ᶜ)) (e ∘ r) := by
  have h1 := ((AlgebraicIndependent.iff_adjoin_image_compl (Set.range r)).1 he).2
  have h2 := IntermediateField.algebraicIndependent_adjoin_iff.2 h1
  exact h2.comp (Set.rangeFactorization r) (Set.rangeFactorization_injective.2 hr)

theorem indep_scaled {F E D : Type} [Field F] [Field E] [Algebra F E] (y : Option D → E)
    (hy : AlgebraicIndependent F y) (w : F) (hw : w ≠ 0) :
    AlgebraicIndependent F (fun c => y (some c) * y none * algebraMap F E w) := by
  let f : D → MvPolynomial (Option D) F := fun c => X (some c) * X none * C w
  let L : MvPolynomial (Option D) F →ₐ[F] MvPolynomial D F :=
    aeval fun o => o.elim (C w⁻¹) X
  have hL : (L.comp (aeval f)) = AlgHom.id F _ := by
    ext c
    simp [f, L, mul_assoc, ← C_mul, hw]
  have hinj : Function.Injective (aeval f : MvPolynomial D F →ₐ[F] MvPolynomial (Option D) F) :=
    Function.LeftInverse.injective (g := L) fun p => by
      simpa using DFunLike.congr_fun hL p
  rw [algebraicIndependent_iff_injective_aeval]
  have hc : (aeval (fun c => y (some c) * y none * algebraMap F E w) : MvPolynomial D F →ₐ[F] E) =
      (aeval y).comp (aeval f) := by
    ext c
    simp [f]
  rw [hc]
  exact (algebraicIndependent_iff_injective_aeval.1 hy).comp hinj

theorem ker_aeval_inst {σ E : Type} [Field E] (a : Algebra ℤ E) (x : σ → E) :
    RingHom.ker (@aeval ℤ E σ _ _ a x) = RingHom.ker (@aeval ℤ E σ _ _ (Ring.toIntAlgebra E) x) := by
  obtain rfl : a = Ring.toIntAlgebra E := Subsingleton.elim _ _
  rfl

theorem indep_of_le {F E D : Type} [Field F] [Field E] [Algebra F E] (A B : IntermediateField F E) (hle : A ≤ B)
    (y : Option D → E) (hy : AlgebraicIndependent B y) (w : E) (hw0 : w ≠ 0) (hw : w ∈ B) :
    AlgebraicIndependent A (fun c => y (some c) * y none * w⁻¹) := by
  have hne : (⟨w⁻¹, inv_mem hw⟩ : B) ≠ 0 := fun h => inv_ne_zero hw0 (congrArg Subtype.val h)
  have h2 := indep_scaled y hy ⟨w⁻¹, inv_mem hw⟩ hne
  let _ : Algebra A B := (IntermediateField.inclusion hle).toRingHom.toAlgebra
  have : IsScalarTower A B E := .of_algebraMap_eq fun _ => rfl
  exact h2.restrictScalars (IntermediateField.inclusion hle).toRingHom.injective

section Flag

variable (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (K : Type)

abbrev GRing : Type := MvPolynomial (Ψ × Fin N × Fin N) ℚ

def minorPolynomial (τ : Ψ) (r : ℕ) (hr : r ≤ N) (A : Fin r → Fin N) : GRing Ψ N :=
  Matrix.det (Matrix.of fun a b : Fin r => (X (τ, Fin.castLE hr a, A b) : GRing Ψ N))

abbrev CF : Type := FractionRing (MvPolynomial K (ΩFl Ψ N))

def thF : GRing Ψ N →+* CF Ψ N K :=
  (algebraMap (ΩFl Ψ N) (CF Ψ N K)).comp (algebraMap (GRing Ψ N) (ΩFl Ψ N))


variable {K} in
def tF (k : K) : CF Ψ N K := algebraMap (MvPolynomial K (ΩFl Ψ N)) (CF Ψ N K) (X k)

variable {Ψ N K}


omit [Fintype Ψ] in
theorem minorPolynomial_succ (τ : Ψ) (r : ℕ) (hr : r + 1 ≤ N) (A : Fin (r + 1) → Fin N) :
    minorPolynomial Ψ N τ (r + 1) hr A = ∑ b : Fin (r + 1), (-1) ^ (r + (b : ℕ)) * X (τ, ⟨r, hr⟩, A b) *
      minorPolynomial Ψ N τ r (by omega) (fun a => A (b.succAbove a)) := by
  unfold minorPolynomial
  rw [Matrix.det_succ_row _ (Fin.last r)]
  refine Finset.sum_congr rfl fun b _ => ?_
  simp only [Fin.val_last, Matrix.of_apply, Fin.succAbove_last]
  congr 2

def xP (j : K → FlBlock Ψ N) (p : Σ k, PIdx j k) : CF Ψ N K :=
  thF Ψ N K (minorPolynomial Ψ N (j p.1).1 ((j p.1).2 + 1) (step_le _) p.2.1) * tF Ψ N p.1

omit [Fintype Ψ] in
theorem xP_eq (j : K → FlBlock Ψ N) (p : Σ k, PIdx j k) :
    xP j p = algebraMap (MvPolynomial K (ΩFl Ψ N)) (CF Ψ N K) (C (yPart j p) * X p.1) := by
  rw [map_mul, xP, tF, thF, RingHom.comp_apply, IsScalarTower.algebraMap_apply (ΩFl Ψ N)
    (MvPolynomial K (ΩFl Ψ N)) (CF Ψ N K), MvPolynomial.algebraMap_eq]
  rfl

omit [Fintype Ψ] in
theorem aeval_xP [Fintype K] (j : K → FlBlock Ψ N) (f : MRing (PIdx j)) :
    aeval (xP j) f = algebraMap _ (CF Ψ N K) (mConeMap (yPart j) f) := by
  induction f using MvPolynomial.induction_on with
  | C a => simp [mConeMap]
  | add p q hp hq => simp only [map_add (f := _), hp, hq]
  | mul_X p q hp =>
    simp only [map_mul, hp, aeval_X]
    simp only [mConeMap, aeval_X, xP_eq, map_mul]

omit [Fintype Ψ] in
theorem ker_xP [Fintype K] (j : K → FlBlock Ψ N) :
    RingHom.ker (aeval (xP j) : MRing (PIdx j) →ₐ[ℤ] CF Ψ N K) = PPart j := by
  ext f
  rw [RingHom.mem_ker, aeval_xP, map_eq_zero_iff _ (IsFractionRing.injective _ _), PPart, mCoordIdeal,
    RingHom.mem_ker]


variable (Ψ N K) in
def eF : K ⊕ (Ψ × Fin N × Fin N) → CF Ψ N K :=
  Sum.elim (tF Ψ N) (fun v => thF Ψ N K (X v))

omit [Fintype Ψ] [DecidableEq Ψ] in
theorem indep_eF : AlgebraicIndependent ℚ (eF Ψ N K) := by
  have hx : AlgebraicIndependent ℚ (fun v : Ψ × Fin N × Fin N => algebraMap (GRing Ψ N) (ΩFl Ψ N) (X v)) :=
    (algebraicIndependent_X _ ℚ).map' (f := (algebraMap (GRing Ψ N) (ΩFl Ψ N)).toRatAlgHom)
      (IsFractionRing.injective _ _)
  have hy : AlgebraicIndependent (ΩFl Ψ N) (tF Ψ N : K → CF Ψ N K) :=
    (algebraicIndependent_X _ (ΩFl Ψ N)).map'
      (f := IsScalarTower.toAlgHom (ΩFl Ψ N) (MvPolynomial K (ΩFl Ψ N)) (CF Ψ N K))
      (IsFractionRing.injective _ _)
  haveI : @IsScalarTower ℚ (ΩFl Ψ N) (CF Ψ N K) Algebra.toSMul Algebra.toSMul Algebra.toSMul :=
    .of_algebraMap_eq' (Subsingleton.elim _ _)
  exact hx.sumElim_comp hy

def rowF (j : K → FlBlock Ψ N) (k₀ : K) : Fin N :=
  ⟨(j k₀).2, Nat.lt_of_lt_of_le (j k₀).2.2 (Nat.sub_le _ _)⟩

def specF (j : K → FlBlock Ψ N) (k₀ : K) : Option (Fin N) → K ⊕ (Ψ × Fin N × Fin N)
  | none => Sum.inl k₀
  | some c => Sum.inr ((j k₀).1, rowF j k₀, c)

omit [Fintype Ψ] [DecidableEq Ψ] in
theorem specF_injective (j : K → FlBlock Ψ N) (k₀ : K) : Function.Injective (specF j k₀) := by
  rintro (_ | a) (_ | b) h
  · rfl
  · simp [specF] at h
  · simp [specF] at h
  · simp only [specF, Sum.inr.injEq, Prod.mk.injEq, true_and] at h
    rw [h]

abbrev restF (j : K → FlBlock Ψ N) (k₀ : K) : IntermediateField ℚ (CF Ψ N K) :=
  IntermediateField.adjoin ℚ (eF Ψ N K '' (Set.range (specF j k₀))ᶜ)

omit [Fintype Ψ] [DecidableEq Ψ] in
theorem tF_mem_rest (j : K → FlBlock Ψ N) {k₀ k : K} (hk : k ≠ k₀) : tF Ψ N k ∈ restF j k₀ := by
  refine IntermediateField.subset_adjoin _ _ ⟨Sum.inl k, ?_, rfl⟩
  rintro ⟨(_ | c), h⟩
  · exact hk (Sum.inl.inj h).symm
  · simp [specF] at h

theorem det_mem {R E S : Type} [CommRing R] [Field E] [SetLike S E] [SubringClass S E] (A : S) (θ : R →+* E) {n : ℕ}
    (M : Matrix (Fin n) (Fin n) R) (h : ∀ a b, θ (M a b) ∈ A) : θ M.det ∈ A := by

  rw [Matrix.det_apply', map_sum]
  refine sum_mem fun σ _ => ?_
  rw [map_mul, map_prod]
  refine mul_mem ?_ (prod_mem fun i _ => h _ _)
  simpa using intCast_mem A _

omit [Fintype Ψ] in
theorem xP_mem_rest (j : K → FlBlock Ψ N) (hj : IsChain j) {k₀ : K} (htop : ∀ k, ((j k).2 : ℕ) ≤ (j k₀).2)
    {k : K} (hk : k ≠ k₀) (A : PIdx j k) : xP j ⟨k, A⟩ ∈ restF j k₀ := by
  refine mul_mem (det_mem _ _ _ fun a b => ?_) (tF_mem_rest j hk)
  refine IntermediateField.subset_adjoin _ _ ⟨Sum.inr _, ?_, rfl⟩
  rintro ⟨(_ | c), h⟩
  · simp [specF] at h
  · simp only [specF, Sum.inr.injEq, Prod.mk.injEq] at h
    obtain ⟨h1, h2, -⟩ := h
    have h3 : (a : ℕ) = (j k₀).2 := by
      have := congrArg Fin.val h2
      simpa [rowF] using this.symm
    have h4 : (a : ℕ) < (j k).2 + 1 := a.2
    have h5 := htop k
    exact hk (hj.inj (Prod.ext h1.symm (Fin.ext (by omega))))

abbrev PhiF (j : K → FlBlock Ψ N) (k₀ : K) : IntermediateField ℚ (CF Ψ N K) :=
  IntermediateField.adjoin ℚ (Set.range (xP j ∘ dropV j k₀))

omit [Fintype Ψ] in
theorem phi_le_rest (j : K → FlBlock Ψ N) (hj : IsChain j) {k₀ : K} (htop : ∀ k, ((j k).2 : ℕ) ≤ (j k₀).2) :
    PhiF j k₀ ≤ restF j k₀ := by
  refine IntermediateField.adjoin_le_iff.2 ?_
  rintro _ ⟨⟨⟨k, hk⟩, A⟩, rfl⟩
  exact xP_mem_rest j hj htop hk A

omit [Fintype Ψ] in
theorem xP_eq_minor (j : K → FlBlock Ψ N) (k : K) (τ : Ψ) (r : ℕ) (hr : r ≤ N) (h1 : (j k).1 = τ)
    (h2 : ((j k).2 : ℕ) + 1 = r) (B : Fin r → Fin N) (hB : StrictMono B) :
    ∃ B' : PIdx j k, xP j ⟨k, B'⟩ = thF Ψ N K (minorPolynomial Ψ N τ r hr B) * tF Ψ N k := by
  have key : ∀ q : FlBlock Ψ N, q.1 = τ → (q.2 : ℕ) + 1 = r → ∃ B' : FlIdx Ψ N q,
      minorPolynomial Ψ N q.1 (q.2 + 1) (step_le _) B'.1 = minorPolynomial Ψ N τ r hr B := by
    rintro ⟨τ', i⟩ h1 h2
    subst h1 h2
    exact ⟨⟨B, hB⟩, rfl⟩
  obtain ⟨B', h⟩ := key (j k) h1 h2
  exact ⟨B', by simp only [xP]; rw [h]⟩


omit [Fintype Ψ] in
theorem exists_scale (j : K → FlBlock Ψ N) (hj : IsChain j) (k₀ : K) (s : ℕ) (hs : s = (j k₀).2) (hsN : s ≤ N) :
    ∃ w : CF Ψ N K, w ≠ 0 ∧ w ∈ restF j k₀ ∧ ∀ B : Fin s → Fin N, StrictMono B →
      thF Ψ N K (minorPolynomial Ψ N (j k₀).1 s hsN B) * w ∈ PhiF j k₀ := by
  cases s with
  | zero =>
    refine ⟨1, one_ne_zero, one_mem _, fun B _ => ?_⟩
    simp only [minorPolynomial, Matrix.det_isEmpty, map_one, mul_one]
    exact one_mem _
  | succ s' =>
    have hlt := (j k₀).2.2
    obtain ⟨kp, hkp⟩ := hj.down k₀ ((j k₀).1, ⟨s', by omega⟩) rfl (by simp only; omega)
    have hne : kp ≠ k₀ := by
      rintro rfl
      have := congrArg (fun q : FlBlock Ψ N => (q.2 : ℕ)) hkp
      simp only at this
      omega
    refine ⟨tF Ψ N kp, (map_ne_zero_iff _ (IsFractionRing.injective _ _)).2 (X_ne_zero _),
      tF_mem_rest j hne, fun B hB => ?_⟩
    obtain ⟨B', h⟩ := xP_eq_minor j kp (j k₀).1 (s' + 1) hsN (by rw [hkp]) (by rw [hkp]) B hB
    rw [← h]
    exact IntermediateField.subset_adjoin _ _ ⟨⟨⟨kp, hne⟩, B'⟩, rfl⟩

def uF (j : K → FlBlock Ψ N) (k₀ : K) (w : CF Ψ N K) (c : Fin N) : CF Ψ N K :=
  thF Ψ N K (X ((j k₀).1, rowF j k₀, c)) * tF Ψ N k₀ * w⁻¹

omit [Fintype Ψ] [DecidableEq Ψ] in
theorem indep_uF (j : K → FlBlock Ψ N) (k₀ : K) (hle : PhiF j k₀ ≤ restF j k₀) (w : CF Ψ N K) (hw0 : w ≠ 0)
    (hw : w ∈ restF j k₀) : AlgebraicIndependent (PhiF j k₀) (uF j k₀ w) := by
  exact indep_of_le (PhiF j k₀) (restF j k₀) hle _
    (indep_over_rest (eF Ψ N K) indep_eF (specF j k₀) (specF_injective j k₀)) w hw0 hw

omit [Fintype Ψ] in
theorem xP_mem_span (j : K → FlBlock Ψ N) (k₀ : K) (w : CF Ψ N K) (hw0 : w ≠ 0)
    (hB : ∀ B : Fin (j k₀).2 → Fin N, StrictMono B →
      thF Ψ N K (minorPolynomial Ψ N (j k₀).1 (j k₀).2 (by have := (j k₀).2.2; omega) B) * w ∈ PhiF j k₀)
    (A : PIdx j k₀) : xP j ⟨k₀, A⟩ ∈ Submodule.span (PhiF j k₀) (Set.range (uF j k₀ w)) := by
  simp only [xP]

  rw [minorPolynomial_succ, map_sum, Finset.sum_mul]
  refine Submodule.sum_mem _ fun b _ => ?_
  have hm := hB (fun a => A.1 (b.succAbove a)) (A.2.comp (Fin.strictMono_succAbove b))
  have hs : ((-1 : CF Ψ N K) ^ (((j k₀).2 : ℕ) + (b : ℕ))) ∈ PhiF j k₀ := pow_mem (neg_mem (one_mem _)) _
  have e : thF Ψ N K ((-1) ^ (((j k₀).2 : ℕ) + (b : ℕ)) * X ((j k₀).1, ⟨(j k₀).2, step_le _⟩, A.1 b) *
        minorPolynomial Ψ N (j k₀).1 (j k₀).2 (by have := (j k₀).2.2; omega) (fun a => A.1 (b.succAbove a))) * tF Ψ N k₀ =
      (⟨_, mul_mem hs hm⟩ : PhiF j k₀) • uF j k₀ w (A.1 b) := by
    rw [Algebra.smul_def, IntermediateField.algebraMap_apply]
    simp only [map_mul, map_pow, map_neg, map_one, uF, rowF]
    field_simp
  rw [e]
  exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨_, rfl⟩)

end Flag

theorem fibre_lin : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (K : Type) [Fintype K] [DecidableEq K]
    (j : K → FlBlock Ψ N), IsChain j → ∀ k₀ : K, (∀ k, ((j k).2 : ℕ) ≤ (j k₀).2) → (∃ k, k ≠ k₀) →
    ∃ G : GenFibre (dropV j k₀) (PPart j),
    ∃ S : Set (MRingOver G.Φ (fibreIdx (PIdx j) (Subtype.val : {k // k ≠ k₀} → K))),
      (∀ f ∈ S, IsMultiHomog f fun _ => 1) ∧
      fibreIdeal (Subtype.val : {k // k ≠ k₀} → K) G = Ideal.span S := by
  intro Ψ _ _ N K _ _ j hj k₀ htop _
  have hlt := (j k₀).2.2
  obtain ⟨w, hw0, hw, hB⟩ := exists_scale j hj k₀ (j k₀).2 rfl (by omega)
  have hind := indep_uF j k₀ (phi_le_rest j hj htop) w hw0 hw
  have hspan := xP_mem_span j k₀ w hw0 hB
  let κ : {k // k ≠ k₀} → K := Subtype.val
  have hk₀ : k₀ ∉ Set.range κ := by
    rintro ⟨⟨k, hk⟩, h⟩
    exact hk h
  have huniq : ∀ a : FibreBlock κ, a = ⟨k₀, hk₀⟩ := by
    rintro ⟨a, ha⟩
    refine Subtype.ext (by_contra fun h => ha ⟨⟨a, h⟩, rfl⟩)
  have hform : ∀ q : Σ k : FibreBlock κ, PIdx j k.1, ∃ l : Fin N → PhiF j k₀,
      xP j ⟨q.1.1, q.2⟩ = ∑ c, algebraMap (PhiF j k₀) (CF Ψ N K) (l c) * uF j k₀ w c := by
    have h : ∀ k (_ : k = k₀) (A : PIdx j k), ∃ l : Fin N → PhiF j k₀,
        xP j ⟨k, A⟩ = ∑ c, algebraMap (PhiF j k₀) (CF Ψ N K) (l c) * uF j k₀ w c := by
      rintro k rfl A
      obtain ⟨l, hl⟩ := (Submodule.mem_span_range_iff_exists_fun _).1 (hspan A)
      exact ⟨l, by rw [← hl]; simp only [Algebra.smul_def]⟩
    exact fun q => h _ (congrArg Subtype.val (huniq q.1)) q.2
  choose l hl using hform
  obtain ⟨S, hS1, hS2⟩ := GlobalTheory.CompanionTheory.Ar.Top.FlDeg.LinKer.ker_linearForms_span (PhiF j k₀) (CF Ψ N K) (FibreBlock κ) (fibreIdx (PIdx j) κ) ⟨k₀, hk₀⟩ huniq
    (Fin N) (uF j k₀ w) l hind
  refine ⟨genOf (CF Ψ N K) (dropV j k₀) (PPart j) (xP j) ((ker_aeval_inst _ (xP j)).symm.trans (ker_xP j)), S, hS1, ?_⟩
  refine Eq.trans ?_ hS2
  have hfun : (fun q : Σ k : FibreBlock κ, PIdx j k.1 => xP j ⟨q.1.1, q.2⟩) =
      fun q => ∑ c, algebraMap (PhiF j k₀) (CF Ψ N K) (l q c) * uF j k₀ w c := funext hl
  exact congrArg (fun y => RingHom.ker (aeval y : MRingOver (PhiF j k₀) (fibreIdx (PIdx j) κ) →ₐ[PhiF j k₀] CF Ψ N K)) hfun

end GlobalTheory.CompanionTheory.Ar.Top.FlDeg.FibreLin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GenericFibreLinearEquations =====
