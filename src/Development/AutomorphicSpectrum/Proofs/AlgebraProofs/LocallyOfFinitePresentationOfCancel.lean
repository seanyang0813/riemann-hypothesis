module

public import Mathlib.Algebra.Module.Projective
public import Mathlib.RingTheory.FiniteType
public import Mathlib.RingTheory.Finiteness.Nakayama
public import Mathlib.RingTheory.Finiteness.Projective
public import Mathlib.Algebra.Module.FinitePresentation
public import Mathlib.RingTheory.FinitePresentation
public import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic
public import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
public import Mathlib.AlgebraicGeometry.Morphisms.Finite
public import Mathlib.AlgebraicGeometry.Morphisms.FinitePresentation
public import Mathlib.AlgebraicGeometry.Morphisms.Flat
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.RingTheory.Flat.EquationalCriterion
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsRetr, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FinitePresentationOfFaithfullyFlat, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyOfFinitePresentationOfCancel

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsRetr =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsRetr", "h": "module\n\npublic import Mathlib.Algebra.Module.Projective\npublic import Mathlib.RingTheory.FiniteType\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Finiteness.Nakayama\npublic import Mathlib.RingTheory.Finiteness.Projective\n\n"}
section -- clump:auto
@[expose] public section

namespace FiniteTypeOfFiniteProjectiveExtension

private lemma exists_retr {C D : Type*} [CommRing C] [CommRing D] [Algebra C D] [Module.Finite C D]
    [Module.Projective C D] (h : Function.Injective (algebraMap C D)) :
    ∃ π : D →ₗ[C] C, π 1 = 1 := by
  let J : Ideal C := LinearMap.range (LinearMap.applyₗ (R := C) (M := D) (M₂ := C) (1 : D))
  obtain ⟨n, f, g, -, -, hfg⟩ := Module.Finite.exists_comp_eq_id_of_projective C D
  have key : ∀ d : D, d ∈ J • (⊤ : Submodule C D) := by
    intro d
    have hd : d = ∑ i, g d i • f (Pi.single i 1) := by
      have e1 : d = f (g d) := by
        have := LinearMap.congr_fun hfg d
        simpa using this.symm
      conv_lhs => rw [e1, ← Finset.univ_sum_single (g d)]

      rw [map_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [← map_smul]
      congr 1
      ext j
      simp [Pi.single_apply]
    rw [hd]
    refine Submodule.sum_mem _ fun i _ => Submodule.smul_mem_smul ?_ trivial
    refine LinearMap.mem_range.2 ⟨(LinearMap.proj i).comp (g.comp (LinearMap.mulLeft C d)), ?_⟩
    simp
  obtain ⟨r, hr1, hr0⟩ := Submodule.exists_sub_one_mem_and_smul_eq_zero_of_fg_of_le_smul J ⊤
    (Module.Finite.fg_top) (fun d _ => key d)
  have hr : r = 0 := h (by simpa [Algebra.smul_def] using hr0 1 trivial)
  have h1 : (1 : C) ∈ J := by
    have := J.neg_mem hr1
    simpa [hr] using this
  obtain ⟨π, hπ⟩ := LinearMap.mem_range.1 h1
  exact ⟨π, by simpa using hπ⟩

end FiniteTypeOfFiniteProjectiveExtension

theorem UpperTheory.Reformulated.B.FiniteTypeDescent.main.{u_1, u_2, u_3} :
    ∀ (R : Type u_1) (C : Type u_2) (D : Type u_3) [inst : CommRing R] [inst_1 : CommRing C] [inst_2 : CommRing D]
      [inst_3 : Algebra R C] [inst_4 : Algebra C D] [inst_5 : Algebra R D] [IsScalarTower R C D] [Module.Finite C D]
      [Module.Projective C D],
      Function.Injective (⇑(Algebra.algebraMap C D) : C → D) → ∀ [Algebra.FiniteType R D], Algebra.FiniteType R C := by
  intro R C D _ _ _ _ _ _ _ _ _ hinj hft
  obtain ⟨π, hπ⟩ := FiniteTypeOfFiniteProjectiveExtension.exists_retr (C := C) (D := D) hinj
  obtain ⟨B₀, hB₀, hB₀D⟩ := exists_subalgebra_of_fg R C D hft.out (Module.Finite.fg_top)
  haveI : Module.Finite B₀ D := ⟨hB₀D⟩
  let π' : D →ₗ[B₀] C := π.restrictScalars B₀
  have hsurj : Function.Surjective π' := fun c =>
    ⟨algebraMap C D c, by
      show π (algebraMap C D c) = c
      rw [Algebra.algebraMap_eq_smul_one, map_smul, hπ, smul_eq_mul, mul_one]⟩
  haveI : Module.Finite B₀ C := Module.Finite.of_surjective π' hsurj
  haveI : Algebra.FiniteType R B₀ := ⟨B₀.fg_top.2 hB₀⟩
  exact Algebra.FiniteType.trans (S := B₀) inferInstance inferInstance
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsRetr =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FinitePresentationOfFaithfullyFlat =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FinitePresentationOfFaithfullyFlat", "h": "module\n\npublic import Mathlib.Algebra.Module.FinitePresentation\npublic import Mathlib.RingTheory.FinitePresentation\npublic import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsRetr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\npublic import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.FinPresDescent

theorem ker_fg_of_projective {P C M : Type*} [CommRing P] [CommRing C] [Algebra P C]
    [AddCommGroup M] [Module P M] [Module C M] [IsScalarTower P C M]
    (hsurj : Function.Surjective (algebraMap P C))
    [Module.FinitePresentation P M] [Module.Projective C M]
    (faith : ∀ c : C, (∀ m : M, c • m = 0) → c = 0) :
    (RingHom.ker (algebraMap P C)).FG := by
  classical
  obtain ⟨n, π, hπ⟩ := Module.Finite.exists_fin' P M
  have hker : (LinearMap.ker π).FG := Module.FinitePresentation.fg_ker π hπ
  let b : Fin n → M := fun i => π (Pi.single i 1)
  have hπb : ∀ x, π x = ∑ i, x i • b i := fun x => by
    rw [LinearMap.pi_apply_eq_sum_univ π x]
    refine Finset.sum_congr rfl fun i _ => ?_
    congr 2
    ext j
    simp [Pi.single_apply, eq_comm]
  have hπC : ∀ x, π x = ∑ i, algebraMap P C (x i) • b i := fun x => by
    rw [hπb]
    simp only [algebraMap_smul]
  let πC : (Fin n → C) →ₗ[C] M := Fintype.linearCombination C b
  have hπCs : Function.Surjective πC := by
    intro m
    obtain ⟨x, rfl⟩ := hπ m
    refine ⟨fun i => algebraMap P C (x i), ?_⟩
    rw [hπC, Fintype.linearCombination_apply]
  obtain ⟨s, hs⟩ := Module.projective_lifting_property πC LinearMap.id hπCs
  have hs' : ∀ m, ∑ i, s m i • b i = m := fun m => by
    have := LinearMap.congr_fun hs m
    simpa [πC, Fintype.linearCombination_apply] using this
  choose v hv using fun (p : Fin n × Fin n) => hsurj (s (b p.1) p.2)
  let E : (Fin n → P) → Fin n → P := fun x j => ∑ i, x i * v (i, j)
  have key1 : ∀ x j, algebraMap P C (E x j) = s (π x) j := fun x j => by
    have hsx : s (π x) = ∑ i, algebraMap P C (x i) • s (b i) := by

      rw [hπC, map_sum]
      simp only [map_smul]
    rw [hsx, Finset.sum_apply]

    simp only [E, map_sum, map_mul, hv, Pi.smul_apply, smul_eq_mul]
  have key2 : ∀ x, π (fun j => E x j) = π x := fun x => by
    rw [hπC]
    simp only [key1]
    exact hs' _
  obtain ⟨G, hG⟩ := hker
  let I₀ : Ideal P := Ideal.span ((fun q : (Fin n → P) × Fin n => E q.1 q.2) ''
    ((G : Set (Fin n → P)) ×ˢ Set.univ))
  have hI₀ : I₀.FG := ⟨(G ×ˢ Finset.univ).image (fun q : (Fin n → P) × Fin n => E q.1 q.2), by
    simp [I₀]⟩
  have key3 : ∀ x ∈ LinearMap.ker π, ∀ j, E x j ∈ I₀ := by
    intro x hx j
    rw [← hG] at hx
    induction hx using Submodule.span_induction with
    | mem x hx => exact Ideal.subset_span ⟨(x, j), ⟨hx, trivial⟩, rfl⟩
    | zero => simp [E]
    | add x y _ _ hx hy =>
      have : E (x + y) j = E x j + E y j := by simp [E, add_mul, Finset.sum_add_distrib]
      rw [this]; exact I₀.add_mem hx hy
    | smul t x _ hx =>
      have : E (t • x) j = t * E x j := by simp [E, Finset.mul_sum, mul_assoc]
      rw [this]; exact I₀.mul_mem_left t hx
  let T : Ideal P := Ideal.span (Set.range v)
  have hET : ∀ x j, E x j ∈ T := fun x j =>
    T.sum_mem fun i _ => T.mul_mem_left _ (Ideal.subset_span ⟨(i, j), rfl⟩)
  have hle : (⊤ : Submodule P M) ≤ T • (⊤ : Submodule P M) := by
    intro m _
    obtain ⟨x, rfl⟩ := hπ m
    rw [← key2, hπb]
    exact Submodule.sum_mem _ fun i _ => Submodule.smul_mem_smul (hET x i) trivial
  obtain ⟨r, hr, hr0⟩ := Submodule.exists_sub_one_mem_and_smul_eq_zero_of_fg_of_le_smul T ⊤
    Module.Finite.fg_top hle
  have hrI : r ∈ RingHom.ker (algebraMap P C) := by
    rw [RingHom.mem_ker]
    refine faith _ fun m => ?_
    rw [algebraMap_smul]
    exact hr0 m trivial
  have key5 : ∀ a ∈ RingHom.ker (algebraMap P C), ∀ p, a * v p ∈ I₀ := by
    rintro a ha ⟨i, j⟩
    have hx : (Pi.single i a : Fin n → P) ∈ LinearMap.ker π := by
      rw [LinearMap.mem_ker, hπC]
      refine Finset.sum_eq_zero fun k _ => ?_
      by_cases hk : k = i
      · subst hk
        rw [Pi.single_eq_same, RingHom.mem_ker.1 ha, zero_smul]
      · rw [Pi.single_eq_of_ne hk, map_zero, zero_smul]
    have := key3 _ hx j
    simpa [E, Pi.single_apply] using this
  have key6 : ∀ a ∈ RingHom.ker (algebraMap P C), ∀ t ∈ T, a * t ∈ I₀ := by
    intro a ha t ht
    induction ht using Submodule.span_induction with
    | mem t ht => obtain ⟨p, rfl⟩ := ht; exact key5 a ha p
    | zero => simp
    | add x y _ _ hx hy => rw [mul_add]; exact I₀.add_mem hx hy
    | smul c x _ hx =>
      rw [smul_eq_mul, mul_left_comm]; exact I₀.mul_mem_left c hx
  have hI₀le : I₀ ≤ RingHom.ker (algebraMap P C) := by
    refine Ideal.span_le.2 ?_
    rintro _ ⟨⟨g, j⟩, ⟨hg, -⟩, rfl⟩
    have hgk : g ∈ LinearMap.ker π := by
      rw [← hG]; exact Submodule.subset_span hg
    change algebraMap P C (E g j) = 0
    rw [key1, LinearMap.mem_ker.1 hgk, map_zero]
    rfl
  have heq : RingHom.ker (algebraMap P C) = I₀ ⊔ Ideal.span {r} := by
    apply le_antisymm
    · intro a ha
      have h1 : a * (r - 1) ∈ I₀ := key6 a ha _ hr
      have h2 : a * r ∈ Ideal.span {r} := Ideal.mul_mem_left _ a (Ideal.mem_span_singleton_self r)
      have : a = a * r + -(a * (r - 1)) := by ring
      rw [this]
      exact Submodule.add_mem_sup h2 (I₀.neg_mem h1) |> fun h => by
        rw [sup_comm]; exact h
    · refine sup_le hI₀le ?_
      rw [Ideal.span_singleton_le_iff_mem]
      exact hrI
  rw [heq]
  exact Submodule.FG.sup hI₀ (Submodule.fg_span_singleton r)

end GlobalTheory.CompanionTheory.FinPresDescent


open GlobalTheory.CompanionTheory.FinPresDescent in
theorem GlobalTheory.CompanionTheory.FinPresDescent.finitePresentation_of_finite_projective_faithfullyFlat :
    ∀ (R C D : Type) [CommRing R] [CommRing C] [CommRing D] [Algebra R C] [Algebra C D]
      [Algebra R D] [IsScalarTower R C D], Module.Finite C D → Module.Projective C D →
      Module.FaithfullyFlat C D → Algebra.FinitePresentation R D →
      Algebra.FinitePresentation R C := by
  intro R C D _ _ _ _ _ _ _ hfin hproj hff hfp
  have hinj : Function.Injective (algebraMap C D) := FaithfulSMul.algebraMap_injective C D
  haveI : Algebra.FiniteType R D := inferInstance
  haveI : Algebra.FiniteType R C := _root_.UpperTheory.Reformulated.B.FiniteTypeDescent.main R C D hinj
  obtain ⟨k, f, hf⟩ := Algebra.FiniteType.iff_quotient_mvPolynomial''.1 ‹Algebra.FiniteType R C›
  letI : Algebra (MvPolynomial (Fin k) R) C := f.toRingHom.toAlgebra
  letI : Algebra (MvPolynomial (Fin k) R) D := ((algebraMap C D).comp f.toRingHom).toAlgebra
  haveI : IsScalarTower (MvPolynomial (Fin k) R) C D := .of_algebraMap_eq fun _ => rfl
  haveI : IsScalarTower R (MvPolynomial (Fin k) R) D := .of_algebraMap_eq fun r => by
    change algebraMap R D r = algebraMap C D (f (algebraMap R _ r))
    rw [f.commutes, ← IsScalarTower.algebraMap_apply]
  haveI : Algebra.FinitePresentation (MvPolynomial (Fin k) R) D :=
    Algebra.FinitePresentation.of_restrict_scalars_finitePresentation R _ D
  haveI : Module.Finite (MvPolynomial (Fin k) R) C :=
    Module.Finite.of_surjective (Algebra.linearMap _ C) hf
  haveI : Module.Finite (MvPolynomial (Fin k) R) D := Module.Finite.trans C D
  haveI : Module.FinitePresentation (MvPolynomial (Fin k) R) D :=
    Module.FinitePresentation.of_finite_of_finitePresentation _ D
  have hker := ker_fg_of_projective (P := MvPolynomial (Fin k) R) (C := C) (M := D) hf
    (fun c hc => hinj (by simpa [Algebra.smul_def] using hc 1))
  exact ⟨k, f, hf, hker⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FinitePresentationOfFaithfullyFlat =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyOfFinitePresentationOfCancel =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyOfFinitePresentationOfCancel", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.AlgebraicGeometry.Morphisms.FinitePresentation\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Mathlib.RingTheory.FinitePresentation\npublic import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FinitePresentationOfFaithfullyFlat\npublic import Mathlib.RingTheory.Flat.EquationalCriterion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry

namespace GlobalTheory.CompanionTheory.LfpDescent

lemma affine_case {X Y S : Scheme.{0}} [IsAffine X] [IsAffine Y] [IsAffine S] (q : X ⟶ Y)
    (f : Y ⟶ S) [IsFinite q] [Flat q] [LocallyOfFinitePresentation q] [Surjective q]
    [LocallyOfFinitePresentation (q ≫ f)] : LocallyOfFinitePresentation f := by
  rw [HasRingHomProperty.iff_of_isAffine (P := @LocallyOfFinitePresentation)]
  have h1 : q.appTop.hom.Finite :=
    Scheme.Hom.finite_appTop q
  have h2 : q.appTop.hom.FaithfullyFlat :=
    (Flat.flat_and_surjective_iff_faithfullyFlat_of_isAffine q).1 ⟨inferInstance, inferInstance⟩
  have h3 : q.appTop.hom.FinitePresentation :=
    (HasRingHomProperty.iff_of_isAffine (P := @LocallyOfFinitePresentation)).1 inferInstance
  have h4 : (q.appTop.hom.comp f.appTop.hom).FinitePresentation := by
    have := (HasRingHomProperty.iff_of_isAffine (P := @LocallyOfFinitePresentation)).1
      (inferInstance : LocallyOfFinitePresentation (q ≫ f))
    rwa [Scheme.Hom.comp_appTop, CommRingCat.hom_comp] at this
  letI : Algebra Γ(S, ⊤) Γ(Y, ⊤) := f.appTop.hom.toAlgebra
  letI : Algebra Γ(Y, ⊤) Γ(X, ⊤) := q.appTop.hom.toAlgebra
  letI : Algebra Γ(S, ⊤) Γ(X, ⊤) := (q.appTop.hom.comp f.appTop.hom).toAlgebra
  haveI : IsScalarTower Γ(S, ⊤) Γ(Y, ⊤) Γ(X, ⊤) := IsScalarTower.of_algebraMap_eq' rfl
  haveI : Module.Finite Γ(Y, ⊤) Γ(X, ⊤) := h1
  haveI : Algebra.FinitePresentation Γ(Y, ⊤) Γ(X, ⊤) := h3
  haveI : Module.FaithfullyFlat Γ(Y, ⊤) Γ(X, ⊤) := h2
  haveI : Module.FinitePresentation Γ(Y, ⊤) Γ(X, ⊤) :=
    Module.FinitePresentation.of_finite_of_finitePresentation _ _
  have hp : Module.Projective Γ(Y, ⊤) Γ(X, ⊤) := Module.Flat.projective_of_finitePresentation
  exact _root_.GlobalTheory.CompanionTheory.FinPresDescent.finitePresentation_of_finite_projective_faithfullyFlat _ _ _ inferInstance hp inferInstance h4

theorem descends : ∀ {X Y S : Scheme.{0}} (q : X ⟶ Y) (f : Y ⟶ S), IsFinite q → Flat q →
    LocallyOfFinitePresentation q → Surjective q → LocallyOfFinitePresentation (q ≫ f) →
    LocallyOfFinitePresentation f := by
  intro X Y S q f _ _ _ _ _
  let I := {p : S.affineOpens × Y.affineOpens // (p.2 : Y.Opens) ≤ f ⁻¹ᵁ (p.1 : S.Opens)}
  haveI := HasRingHomProperty.instIsZariskiLocalAtSource (P := @LocallyOfFinitePresentation.{0})
  refine IsZariskiLocalAtSource.of_iSup_eq_top (P := @LocallyOfFinitePresentation.{0}) (fun i : I ↦ (i.1.2 : Y.Opens)) ?_ ?_
  · rw [eq_top_iff]
    rintro y -
    obtain ⟨U, hU, hyU, -⟩ := exists_isAffineOpen_mem_and_subset (x := f y) (U := ⊤) trivial
    obtain ⟨V, hV, hyV, hVU⟩ := exists_isAffineOpen_mem_and_subset (x := y) (U := f ⁻¹ᵁ U) hyU
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨(⟨U, hU⟩, ⟨V, hV⟩), hVU⟩, hyV⟩
  · rintro ⟨⟨⟨U, hU⟩, ⟨V, hV⟩⟩, e⟩
    dsimp only at e ⊢
    haveI : IsAffine U.toScheme := hU
    haveI : IsAffine V.toScheme := hV
    haveI : IsAffine (q ⁻¹ᵁ V).toScheme := (hV.preimage q)
    have hc : (q ∣_ V) ≫ f.resLE U V e =
        (q ≫ f).resLE U (q ⁻¹ᵁ V) (by simpa using (Scheme.Hom.preimage_mono q e)) := by
      rw [← Scheme.Hom.resLE_eq_morphismRestrict, Scheme.Hom.resLE_comp_resLE]
    haveI : LocallyOfFinitePresentation ((q ∣_ V) ≫ f.resLE U V e) := by
      rw [hc]; delta Scheme.Hom.resLE; infer_instance
    haveI : Surjective (q ∣_ V) := IsZariskiLocalAtTarget.restrict ‹Surjective q› V
    haveI : LocallyOfFinitePresentation (f.resLE U V e) := affine_case (q ∣_ V) _
    rw [← Scheme.Hom.resLE_comp_ι f e]
    infer_instance

end GlobalTheory.CompanionTheory.LfpDescent
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyOfFinitePresentationOfCancel =====
