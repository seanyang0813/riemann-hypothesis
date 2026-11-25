module

public import Mathlib.GroupTheory.MonoidLocalization.Away
public import Mathlib.RingTheory.Finiteness.Defs
public import Mathlib.RingTheory.Ideal.Maps
public import Mathlib.RingTheory.Localization.Defs
public import Mathlib.RingTheory.Localization.Ideal
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleCoordinates
public import Mathlib.LinearAlgebra.Determinant
public import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.SpanSingletonProduct
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.FormallyEtaleCoordinates
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.ChartRing
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafOrderDecrease
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateSubscheme
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleChartExistence
import Mathlib.Tactic.Linter.Style
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.IdealGeneratorsFromBase, Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.LocalNormalForm, Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothCenterChart

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.IdealGeneratorsFromBase =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.IdealGeneratorsFromBase", "h": "module\n\npublic import Mathlib.GroupTheory.MonoidLocalization.Away\npublic import Mathlib.RingTheory.Finiteness.Defs\npublic import Mathlib.RingTheory.Ideal.Maps\npublic import Mathlib.RingTheory.Localization.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Localization.Ideal\n\n"}
section -- clump:auto
@[expose] public section

namespace FunctorialResolution.EmbeddedResolution
namespace EtaleCoordinates

private theorem algebraMap_mem_map_of_mul_mem {S : Type*} [CommRing S] (G : S) (T : Type*)
    [CommRing T] [Algebra S T] [IsLocalization (Submonoid.powers G) T] (J : Ideal S) (g r x : S)
    (hG : G = g * r) (hgx : g * x ∈ J) :
    algebraMap S T x ∈ Ideal.map (algebraMap S T) J := by
  have hGu : IsUnit (algebraMap S T G) :=
    IsLocalization.map_units T (⟨G, Submonoid.mem_powers G⟩ : Submonoid.powers G)
  rw [hG, map_mul] at hGu
  obtain ⟨u, hu⟩ := isUnit_of_mul_isUnit_left hGu
  have hx : algebraMap S T x = (↑u⁻¹ : T) * algebraMap S T (g * x) := by
    rw [map_mul, ← hu, ← mul_assoc, Units.inv_mul, one_mul]
  rw [hx]
  exact Ideal.mul_mem_left _ _ (Ideal.mem_map_of_mem _ hgx)

theorem exists_away_map_ideal_eq {S : Type*} [CommRing S] (q : Ideal S) [q.IsPrime]
    (A : Type*) [CommRing A] [Algebra S A] [IsLocalization q.primeCompl A]
    (I J : Ideal S) (hI : I.FG) (hJ : J.FG)
    (h : Ideal.map (algebraMap S A) I = Ideal.map (algebraMap S A) J) :
    ∃ g : S, g ∉ q ∧
      Ideal.map (algebraMap S (Localization.Away g)) I =
        Ideal.map (algebraMap S (Localization.Away g)) J := by
  classical
  obtain ⟨tI, htI⟩ := hI
  obtain ⟨tJ, htJ⟩ := hJ
  have keyI : ∀ u : S, ∃ g : S, g ∈ q.primeCompl ∧ (u ∈ I → g * u ∈ J) := by
    intro u
    by_cases hu : u ∈ I
    · have hmem : algebraMap S A u ∈ Ideal.map (algebraMap S A) J := by
        rw [← h]
        exact Ideal.mem_map_of_mem _ hu
      rw [IsLocalization.algebraMap_mem_map_algebraMap_iff q.primeCompl A] at hmem
      obtain ⟨g, hg, hgu⟩ := hmem
      exact ⟨g, hg, fun _ => hgu⟩
    · exact ⟨1, Submonoid.one_mem _, fun hh => absurd hh hu⟩
  have keyJ : ∀ v : S, ∃ g : S, g ∈ q.primeCompl ∧ (v ∈ J → g * v ∈ I) := by
    intro v
    by_cases hv : v ∈ J
    · have hmem : algebraMap S A v ∈ Ideal.map (algebraMap S A) I := by
        rw [h]
        exact Ideal.mem_map_of_mem _ hv
      rw [IsLocalization.algebraMap_mem_map_algebraMap_iff q.primeCompl A] at hmem
      obtain ⟨g, hg, hgv⟩ := hmem
      exact ⟨g, hg, fun _ => hgv⟩
    · exact ⟨1, Submonoid.one_mem _, fun hh => absurd hh hv⟩
  choose gI hgI hgIu using keyI
  choose gJ hgJ hgJu using keyJ
  let G : S := (∏ u ∈ tI, gI u) * ∏ v ∈ tJ, gJ v
  have hGmem : G ∈ q.primeCompl :=
    Submonoid.mul_mem _ (Submonoid.prod_mem _ fun u _ => hgI u)
      (Submonoid.prod_mem _ fun v _ => hgJ v)
  refine ⟨G, hGmem, le_antisymm ?_ ?_⟩
  · rw [← htI, Ideal.map_span, Ideal.span_le]
    rintro _ ⟨u, hu, rfl⟩
    have hu' : u ∈ tI := Finset.mem_coe.mp hu
    have huI : u ∈ I := by
      rw [← htI]
      exact Ideal.subset_span hu
    have hGeq : G = gI u * ((∏ z ∈ tI.erase u, gI z) * ∏ v ∈ tJ, gJ v) := by
      show (∏ z ∈ tI, gI z) * (∏ v ∈ tJ, gJ v) = _
      rw [← Finset.mul_prod_erase tI gI hu']
      ring
    exact algebraMap_mem_map_of_mul_mem G (Localization.Away G) J (gI u)
      ((∏ z ∈ tI.erase u, gI z) * ∏ v ∈ tJ, gJ v) u hGeq (hgIu u huI)
  · rw [← htJ, Ideal.map_span, Ideal.span_le]
    rintro _ ⟨v, hv, rfl⟩
    have hv' : v ∈ tJ := Finset.mem_coe.mp hv
    have hvJ : v ∈ J := by
      rw [← htJ]
      exact Ideal.subset_span hv
    have hGeq : G = gJ v * ((∏ u ∈ tI, gI u) * ∏ z ∈ tJ.erase v, gJ z) := by
      show (∏ u ∈ tI, gI u) * (∏ z ∈ tJ, gJ z) = _
      rw [← Finset.mul_prod_erase tJ gJ hv']
      ring
    exact algebraMap_mem_map_of_mul_mem G (Localization.Away G) I (gJ v)
      ((∏ u ∈ tI, gI u) * ∏ z ∈ tJ.erase v, gJ z) v hGeq (hgJu v hvJ)

end EtaleCoordinates
end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.IdealGeneratorsFromBase =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.LocalNormalForm =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.LocalNormalForm", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleCoordinates\npublic import Mathlib.LinearAlgebra.Determinant\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.SpanSingletonProduct\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.FormallyEtaleCoordinates\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.IdealGeneratorsFromBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct

namespace FunctorialResolution.EmbeddedResolution
namespace EtaleCoordinates

section

private theorem repr_mem_maximalIdeal_of_tmul_eq_zero {A : Type*} [CommRing A] [IsLocalRing A]
    {M : Type*} [AddCommGroup M] [Module A M] {n : Type*} [Fintype n]
    (bb : Module.Basis n A M) (x : M)
    (h : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] x = 0) (i : n) :
    bb.repr x i ∈ IsLocalRing.maximalIdeal A := by
  classical
  obtain ⟨bk, hbk⟩ : ∃ bk : Module.Basis n (IsLocalRing.ResidueField A)
      (IsLocalRing.ResidueField A ⊗[A] M),
      ∀ j, bk j = (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] bb j :=
    ⟨Algebra.TensorProduct.basis (IsLocalRing.ResidueField A) bb, fun j => by simp⟩
  have hkey : ∀ (c : A) (m : M), (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] (c • m)
      = IsLocalRing.residue A c • ((1 : IsLocalRing.ResidueField A) ⊗ₜ[A] m) := by
    intro c m
    have hA1 : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] (c • m)
        = (c • (1 : IsLocalRing.ResidueField A)) ⊗ₜ[A] m := (TensorProduct.smul_tmul c 1 m).symm
    have hA2 : c • (1 : IsLocalRing.ResidueField A) = IsLocalRing.residue A c := by
      rw [Algebra.smul_def, mul_one, IsLocalRing.ResidueField.algebraMap_eq]
    have hA3 : IsLocalRing.residue A c • ((1 : IsLocalRing.ResidueField A) ⊗ₜ[A] m)
        = (IsLocalRing.residue A c * 1) ⊗ₜ[A] m := rfl
    rw [hA1, hA2, hA3, mul_one]
  have hxsum : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] x
      = ∑ j : n, IsLocalRing.residue A (bb.repr x j) • bk j := by
    conv_lhs => rw [← bb.sum_repr x]
    rw [TensorProduct.tmul_sum]
    exact Finset.sum_congr rfl fun j _ => by rw [hkey, hbk j]
  have h2 : bk.repr ((1 : IsLocalRing.ResidueField A) ⊗ₜ[A] x) i = 0 := by
    rw [h]
    simp
  rw [hxsum, Module.Basis.repr_sum_self] at h2
  rw [← IsLocalRing.residue_eq_zero_iff]
  exact h2

private theorem residue_det_ne_zero_of_tmul_eq_basis {A : Type*} [CommRing A] [IsLocalRing A]
    {M : Type*} [AddCommGroup M] [Module A M] {ι : Type*} [Fintype ι] [DecidableEq ι]
    (bA : Module.Basis ι A M) (G : ι → M)
    (B' : Module.Basis ι (IsLocalRing.ResidueField A) (IsLocalRing.ResidueField A ⊗[A] M))
    (hB' : ∀ i, B' i = (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] G i) :
    IsLocalRing.residue A (bA.det G) ≠ 0 := by
  classical
  obtain ⟨bk, hbk⟩ : ∃ bk : Module.Basis ι (IsLocalRing.ResidueField A)
      (IsLocalRing.ResidueField A ⊗[A] M),
      ∀ i, bk i = (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] bA i :=
    ⟨Algebra.TensorProduct.basis (IsLocalRing.ResidueField A) bA, fun i => by simp⟩
  have hkey : ∀ (c : A) (m : M), (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] (c • m)
      = IsLocalRing.residue A c • ((1 : IsLocalRing.ResidueField A) ⊗ₜ[A] m) := by
    intro c m
    have hA1 : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] (c • m)
        = (c • (1 : IsLocalRing.ResidueField A)) ⊗ₜ[A] m := (TensorProduct.smul_tmul c 1 m).symm
    have hA2 : c • (1 : IsLocalRing.ResidueField A) = IsLocalRing.residue A c := by
      rw [Algebra.smul_def, mul_one, IsLocalRing.ResidueField.algebraMap_eq]
    have hA3 : IsLocalRing.residue A c • ((1 : IsLocalRing.ResidueField A) ⊗ₜ[A] m)
        = (IsLocalRing.residue A c * 1) ⊗ₜ[A] m := rfl
    rw [hA1, hA2, hA3, mul_one]
  have hmat : ∀ i j : ι, bk.repr (B' j) i = IsLocalRing.residue A (bA.toMatrix G i j) := by
    intro i j
    have hGj : B' j = ∑ l : ι, IsLocalRing.residue A (bA.repr (G j) l) • bk l := by
      rw [hB' j]
      conv_lhs => rw [← bA.sum_repr (G j)]
      rw [TensorProduct.tmul_sum]
      refine Finset.sum_congr rfl fun l _ => ?_
      rw [hkey, hbk l]
    rw [hGj, Module.Basis.repr_sum_self, Module.Basis.toMatrix_apply]
  have hdet : bk.det (⇑B') = IsLocalRing.residue A (bA.det G) := by
    rw [Module.Basis.det_apply, Module.Basis.det_apply, RingHom.map_det]
    congr 1
    ext i j
    simp only [Module.Basis.toMatrix_apply]
    exact hmat i j
  rw [← hdet]
  exact (bk.isUnit_det B').ne_zero

private theorem mem_maximalIdeal_mul_of_tmul_D_eq_zero (k : Type*) [CommRing k] (A : Type*)
    [CommRing A] [Algebra k A] [IsLocalRing A] {n : Type*} [Fintype n]
    (bb : Module.Basis n A (KaehlerDifferential k A))
    (J : Ideal A) (hJmax : J ≤ IsLocalRing.maximalIdeal A)
    [Algebra.FormallySmooth k (A ⧸ J)] (z : A) (hz : z ∈ J)
    (h0 : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] KaehlerDifferential.D k A z = 0) :
    z ∈ IsLocalRing.maximalIdeal A * J := by
  classical
  obtain ⟨Jm, hJmdef⟩ : ∃ Jm : Ideal A, Jm = IsLocalRing.maximalIdeal A * J := ⟨_, rfl⟩
  have hmulJ : ∀ c ∈ IsLocalRing.maximalIdeal A, ∀ u ∈ J, c * u ∈ Jm := by
    intro c hc u hu
    rw [hJmdef]
    exact Ideal.mul_mem_mul hc hu
  have hJmle : Jm ≤ J := by
    rw [hJmdef]
    exact Ideal.mul_le_right
  have hsmulg : ∀ (c : A) (x : A ⧸ Jm), c • x = Ideal.Quotient.mk Jm c * x := by
    intro c x
    rw [Algebra.smul_def, Ideal.Quotient.algebraMap_eq]
  have hsmulmk : ∀ c u : A,
      c • (Ideal.Quotient.mk Jm u) = Ideal.Quotient.mk Jm (c * u) := by
    intro c u
    rw [hsmulg, ← map_mul]
  have hρ0 : ∀ a ∈ Jm, (Ideal.Quotient.mkₐ A J) a = 0 := by
    intro a ha
    show Ideal.Quotient.mk J a = 0
    exact Ideal.Quotient.eq_zero_iff_mem.mpr (hJmle ha)
  let ρA : (A ⧸ Jm) →ₐ[A] (A ⧸ J) :=
    Ideal.Quotient.liftₐ Jm (Ideal.Quotient.mkₐ A J) hρ0
  let ρ : (A ⧸ Jm) →ₐ[k] (A ⧸ J) := ρA.restrictScalars k
  have hρmkA : ∀ a : A, ρA (Ideal.Quotient.mk Jm a) = Ideal.Quotient.mk J a := fun _ => rfl
  have hρmk : ∀ a : A, ρ (Ideal.Quotient.mk Jm a) = Ideal.Quotient.mk J a := fun _ => rfl
  have hρsurj : Function.Surjective ρ := by
    intro c
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective c
    exact ⟨Ideal.Quotient.mk Jm a, hρmk a⟩
  have hker2 : RingHom.ker (ρ : (A ⧸ Jm) →+* (A ⧸ J)) ^ 2 = ⊥ := by
    rw [pow_two]
    refine le_antisymm (Ideal.mul_le.mpr ?_) bot_le
    intro u hu v hv
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective u
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective v
    have ha : a ∈ J := by
      have h1 : Ideal.Quotient.mk J a = 0 := by
        rw [← hρmk a]
        exact RingHom.mem_ker.mp hu
      exact Ideal.Quotient.eq_zero_iff_mem.mp h1
    have hb : b ∈ J := by
      have h1 : Ideal.Quotient.mk J b = 0 := by
        rw [← hρmk b]
        exact RingHom.mem_ker.mp hv
      exact Ideal.Quotient.eq_zero_iff_mem.mp h1
    refine (Submodule.mem_bot _).mpr ?_
    rw [← map_mul, Ideal.Quotient.eq_zero_iff_mem]
    exact hmulJ a (hJmax ha) b hb
  have hprod : ∀ u v : A ⧸ Jm, ρA u = 0 → ρA v = 0 → u * v = 0 := by
    intro u v hu hv
    have hmem : u * v ∈ RingHom.ker (ρ : (A ⧸ Jm) →+* (A ⧸ J)) ^ 2 := by
      rw [pow_two]
      exact Ideal.mul_mem_mul (RingHom.mem_ker.mpr hu) (RingHom.mem_ker.mpr hv)
    rw [hker2] at hmem
    simpa using hmem
  obtain ⟨σ, hσ⟩ : ∃ σ : (A ⧸ J) →ₐ[k] (A ⧸ Jm), ∀ c, ρ (σ c) = c := by
    refine ⟨Algebra.FormallySmooth.liftOfSurjective
      (AlgHom.id k (A ⧸ J)) ρ hρsurj ⟨2, hker2⟩, fun c => ?_⟩
    have h := Algebra.FormallySmooth.comp_liftOfSurjective
      (AlgHom.id k (A ⧸ J)) ρ hρsurj ⟨2, hker2⟩
    have h2 := DFunLike.congr_fun h c
    simpa using h2
  have hρσ : ∀ c : A ⧸ J, ρA (σ c) = c := fun c => hσ c
  have hkerel : ∀ a : A,
      ρA (Ideal.Quotient.mk Jm a - σ (Ideal.Quotient.mk J a)) = 0 := by
    intro a
    rw [map_sub, hρmkA a, hρσ (Ideal.Quotient.mk J a), sub_self]
  have hmkJmsmul : ∀ (c : k) (a : A),
      Ideal.Quotient.mk Jm (c • a) = c • Ideal.Quotient.mk Jm a := by
    intro c a
    rw [Algebra.smul_def, map_mul, Algebra.smul_def, ← Ideal.Quotient.algebraMap_eq,
      ← IsScalarTower.algebraMap_apply k A (A ⧸ Jm)]
  have hmkJsmul : ∀ (c : k) (a : A),
      Ideal.Quotient.mk J (c • a) = c • Ideal.Quotient.mk J a := by
    intro c a
    rw [Algebra.smul_def, map_mul, Algebra.smul_def, ← Ideal.Quotient.algebraMap_eq,
      ← IsScalarTower.algebraMap_apply k A (A ⧸ J)]
  have hadd : ∀ a b : A,
      Ideal.Quotient.mk Jm (a + b) - σ (Ideal.Quotient.mk J (a + b))
        = (Ideal.Quotient.mk Jm a - σ (Ideal.Quotient.mk J a))
          + (Ideal.Quotient.mk Jm b - σ (Ideal.Quotient.mk J b)) := by
    intro a b
    simp only [map_add (f := _)]
    ring
  have hsmulk : ∀ (c : k) (a : A),
      Ideal.Quotient.mk Jm (c • a) - σ (Ideal.Quotient.mk J (c • a))
        = (RingHom.id k) c • (Ideal.Quotient.mk Jm a - σ (Ideal.Quotient.mk J a)) := by
    intro c a
    show Ideal.Quotient.mk Jm (c • a) - σ (Ideal.Quotient.mk J (c • a))
      = c • (Ideal.Quotient.mk Jm a - σ (Ideal.Quotient.mk J a))
    rw [hmkJmsmul c a, hmkJsmul c a, map_smul, smul_sub]
  have hleib : ∀ a b : A,
      Ideal.Quotient.mk Jm (a * b) - σ (Ideal.Quotient.mk J (a * b))
        = a • (Ideal.Quotient.mk Jm b - σ (Ideal.Quotient.mk J b))
          + b • (Ideal.Quotient.mk Jm a - σ (Ideal.Quotient.mk J a)) := by
    intro a b
    have hz2 := hprod (Ideal.Quotient.mk Jm a - σ (Ideal.Quotient.mk J a))
      (Ideal.Quotient.mk Jm b - σ (Ideal.Quotient.mk J b)) (hkerel a) (hkerel b)
    rw [hsmulg a, hsmulg b]
    simp only [map_mul]
    linear_combination -hz2
  obtain ⟨Dder, hDapp⟩ : ∃ D : Derivation k A (A ⧸ Jm),
      ∀ a : A, D a = Ideal.Quotient.mk Jm a - σ (Ideal.Quotient.mk J a) :=
    ⟨Derivation.mk'
      { toFun := fun a => Ideal.Quotient.mk Jm a - σ (Ideal.Quotient.mk J a)
        map_add' := hadd
        map_smul' := hsmulk } hleib, fun _ => rfl⟩
  have hderivLift : ∀ a : A,
      Dder.liftKaehlerDifferential (KaehlerDifferential.D k A a) = Dder a := by
    intro a
    simp [Derivation.liftKaehlerDifferential_comp_D]
  have hcomp : ∀ ω : KaehlerDifferential k A,
      ρA (Dder.liftKaehlerDifferential ω) = 0 := by
    have hker : (⊤ : Submodule A (KaehlerDifferential k A)) ≤
        LinearMap.ker (ρA.toLinearMap.comp Dder.liftKaehlerDifferential) := by
      rw [← KaehlerDifferential.span_range_derivation, Submodule.span_le]
      rintro y ⟨a, rfl⟩
      rw [SetLike.mem_coe, LinearMap.mem_ker, LinearMap.comp_apply]
      show ρA (Dder.liftKaehlerDifferential (KaehlerDifferential.D k A a)) = 0
      rw [hderivLift a, hDapp a]
      exact hkerel a
    intro ω
    have h2 := hker (Submodule.mem_top : ω ∈ ⊤)
    rw [LinearMap.mem_ker, LinearMap.comp_apply] at h2
    exact h2
  have hcoef : ∀ i : n,
      bb.repr (KaehlerDifferential.D k A z) i ∈ IsLocalRing.maximalIdeal A :=
    fun i => repr_mem_maximalIdeal_of_tmul_eq_zero bb (KaehlerDifferential.D k A z) h0 i
  have hLb : ∀ i : n, ∃ u : A, u ∈ J ∧
      Dder.liftKaehlerDifferential (bb i) = Ideal.Quotient.mk Jm u := by
    intro i
    obtain ⟨u, hu⟩ := Ideal.Quotient.mk_surjective (Dder.liftKaehlerDifferential (bb i))
    refine ⟨u, ?_, hu.symm⟩
    have h1 : ρA (Ideal.Quotient.mk Jm u) = 0 := by
      rw [hu]
      exact hcomp (bb i)
    rw [hρmkA u] at h1
    exact Ideal.Quotient.eq_zero_iff_mem.mp h1
  have hsum : Dder.liftKaehlerDifferential (KaehlerDifferential.D k A z) = 0 := by
    conv_lhs => rw [← bb.sum_repr (KaehlerDifferential.D k A z)]

    rw [map_sum]
    refine Finset.sum_eq_zero fun i _ => ?_
    obtain ⟨u, huJ, hu⟩ := hLb i
    rw [map_smul, hu, hsmulmk, Ideal.Quotient.eq_zero_iff_mem]
    exact hmulJ _ (hcoef i) u huJ
  have hzval : Ideal.Quotient.mk Jm z
      = Dder.liftKaehlerDifferential (KaehlerDifferential.D k A z) := by
    rw [hderivLift z, hDapp z, Ideal.Quotient.eq_zero_iff_mem.mpr hz, map_zero, sub_zero]
  have hfinal : Ideal.Quotient.mk Jm z = 0 := by
    rw [hzval, hsum]
  rw [← hJmdef]
  exact Ideal.Quotient.eq_zero_iff_mem.mp hfinal

private theorem ideal_eq_span_of_tmul_D_mem_span (k : Type*) [CommRing k] (A : Type*) [CommRing A]
    [Algebra k A] [IsLocalRing A] {n : Type*} [Fintype n]
    (bb : Module.Basis n A (KaehlerDifferential k A))
    (J : Ideal A) (hJfg : J.FG)
    (hJmax : J ≤ IsLocalRing.maximalIdeal A) [Algebra.FormallySmooth k (A ⧸ J)] (r : ℕ)
    (x : Fin r → A) (hxJ : ∀ i : Fin r, x i ∈ J)
    (hspan : ∀ y ∈ J,
      (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] KaehlerDifferential.D k A y ∈
        Submodule.span (IsLocalRing.ResidueField A)
          (Set.range fun i : Fin r =>
            (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] KaehlerDifferential.D k A (x i))) :
    J = Ideal.span (Set.range x) := by
  classical
  have hsmeq : (IsLocalRing.maximalIdeal A • J : Ideal A)
      = IsLocalRing.maximalIdeal A * J := by
    rw [Ideal.smul_eq_mul]
  refine le_antisymm ?_ ?_
  · have hstep : J ≤ Ideal.span (Set.range x) ⊔ IsLocalRing.maximalIdeal A • J := by
      rw [hsmeq]
      intro y hy
      have hy' := hspan y hy
      rw [Submodule.mem_span_range_iff_exists_fun] at hy'
      obtain ⟨c, hc⟩ := hy'
      obtain ⟨c', hc'⟩ : ∃ c' : Fin r → A, ∀ i, IsLocalRing.residue A (c' i) = c i := by
        have hsurj : Function.Surjective (IsLocalRing.residue A) :=
          Ideal.Quotient.mk_surjective
        choose c' hc' using fun i => hsurj (c i)
        exact ⟨c', hc'⟩
      have hsum : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
          KaehlerDifferential.D k A (∑ i, c' i * x i)
          = ∑ i, c i • ((1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
            KaehlerDifferential.D k A (x i)) := by

        rw [map_sum, TensorProduct.tmul_sum]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [mul_comm (c' i) (x i),
          KaehlerDifferential.residue_tmul_D_mul_of_mem_maximalIdeal, hc' i]
        exact hJmax (hxJ i)
      have h0 : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
          KaehlerDifferential.D k A (y - ∑ i, c' i * x i) = 0 := by
        rw [map_sub, TensorProduct.tmul_sub, hsum, hc, sub_self]
      have hmemJ : y - ∑ i, c' i * x i ∈ J :=
        Submodule.sub_mem _ hy
          (Submodule.sum_mem _ fun i _ => Ideal.mul_mem_left _ _ (hxJ i))
      have hsq := mem_maximalIdeal_mul_of_tmul_D_eq_zero k A bb J hJmax _ hmemJ h0
      have hrw : y = (y - ∑ i, c' i * x i) + ∑ i, c' i * x i := by ring
      rw [hrw]
      refine Submodule.add_mem _ (Submodule.mem_sup_right hsq) (Submodule.mem_sup_left ?_)
      exact Ideal.sum_mem _ fun i _ => Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨i, rfl⟩)
    have hbotne : (⊥ : Ideal A) ≠ ⊤ := by
      intro hcon
      have hmem1 : (1 : A) ∈ (⊥ : Ideal A) := by
        rw [hcon]; exact Submodule.mem_top
      have hz : (1 : A) = 0 := by simp at hmem1
      exact one_ne_zero hz
    exact Submodule.le_of_le_smul_of_le_jacobson_bot hJfg
      (IsLocalRing.jacobson_eq_maximalIdeal (⊥ : Ideal A) hbotne).ge hstep
  · rw [Ideal.span_le]
    rintro _ ⟨i, rfl⟩
    exact hxJ i

private theorem map_eq_of_map_eq_of_away_mul {S : Type*} [CommRing S] {T₁ T₂ : Type*}
    [CommRing T₁] [CommRing T₂] [Algebra S T₁] [Algebra S T₂] (g₁ d : S)
    [IsLocalization (Submonoid.powers g₁) T₁]
    [IsLocalization (Submonoid.powers (g₁ * d)) T₂] (I J : Ideal S)
    (h : Ideal.map (algebraMap S T₁) I = Ideal.map (algebraMap S T₁) J) :
    Ideal.map (algebraMap S T₂) I = Ideal.map (algebraMap S T₂) J := by
  have hgu : IsUnit (algebraMap S T₂ (g₁ * d)) :=
    IsLocalization.map_units (M := Submonoid.powers (g₁ * d)) T₂
      ⟨g₁ * d, Submonoid.mem_powers _⟩
  rw [map_mul] at hgu
  have hg1u : IsUnit (algebraMap S T₂ g₁) := isUnit_of_mul_isUnit_left hgu
  have hFu : ∀ y : Submonoid.powers g₁, IsUnit (algebraMap S T₂ (y : S)) := by
    rintro ⟨y, m, rfl⟩
    show IsUnit (algebraMap S T₂ (g₁ ^ m))
    rw [map_pow]
    exact hg1u.pow m
  obtain ⟨F, hF⟩ : ∃ F : T₁ →+* T₂, F.comp (algebraMap S T₁) = algebraMap S T₂ :=
    ⟨IsLocalization.lift (M := Submonoid.powers g₁) (S := T₁) hFu,
      RingHom.ext fun x => IsLocalization.lift_eq hFu x⟩
  calc Ideal.map (algebraMap S T₂) I
      = Ideal.map F (Ideal.map (algebraMap S T₁) I) := by rw [Ideal.map_map, hF]
    _ = Ideal.map F (Ideal.map (algebraMap S T₁) J) := by rw [h]
    _ = Ideal.map (algebraMap S T₂) J := by rw [Ideal.map_map, hF]

private theorem formallyEtale_away_of_isUnit_det (k : Type*) [CommRing k] (ι : Type*) [Fintype ι]
    [DecidableEq ι] (S : Type*) [CommRing S] [Algebra k S] [Algebra (MvPolynomial ι k) S]
    [IsScalarTower k (MvPolynomial ι k) S] [Algebra.FormallyEtale (MvPolynomial ι k) S]
    (g : S) (T : Type*) [CommRing T] [Algebra S T] [IsLocalization (Submonoid.powers g) T]
    (w : ι → S)
    (hdet : IsUnit (algebraMap S T
      ((basisKaehler k ι S).det fun i : ι => KaehlerDifferential.D k S (w i)))) :
    @Algebra.FormallyEtale (MvPolynomial ι k) T _ _
      (RingHom.toAlgebra
        (MvPolynomial.eval₂Hom ((algebraMap S T).comp (algebraMap k S))
          (fun j : ι => algebraMap S T (w j)))) := by
  classical
  let instKT : Algebra k T := ((algebraMap S T).comp (algebraMap k S)).toAlgebra
  let instAlgebraMvPolynomial : Algebra (MvPolynomial ι k) T :=
    ((algebraMap S T).comp (algebraMap (MvPolynomial ι k) S)).toAlgebra
  have instTkS : IsScalarTower k S T := IsScalarTower.of_algebraMap_eq fun _ => rfl
  have instTPS : IsScalarTower (MvPolynomial ι k) S T :=
    IsScalarTower.of_algebraMap_eq fun _ => rfl
  have instTkP : IsScalarTower k (MvPolynomial ι k) T :=
    IsScalarTower.of_algebraMap_eq fun x => by
      rw [IsScalarTower.algebraMap_apply k S T x,
        IsScalarTower.algebraMap_apply k (MvPolynomial ι k) S x]
      rfl
  have instFEST : Algebra.FormallyEtale S T :=
    Algebra.FormallyEtale.of_isLocalization (M := Submonoid.powers g)
  have instFEPT : Algebra.FormallyEtale (MvPolynomial ι k) T :=
    Algebra.FormallyEtale.comp (MvPolynomial ι k) S T
  have instFSkT : Algebra.FormallySmooth k T :=
    Algebra.FormallySmooth.comp k (MvPolynomial ι k) T
  have hdet' : IsUnit ((basisKaehler k ι T).det
      fun i : ι => KaehlerDifferential.D k T (algebraMap S T (w i))) := by
    rw [← algebraMap_det_basisKaehler k ι S T w]
    exact hdet
  have h := formallyEtale_aeval_of_isUnit_det (basisKaehler k ι T)
    (fun i : ι => algebraMap S T (w i)) hdet'
  exact h

end

section

variable (k : Type*) [CommRing k] (ι : Type*) [Fintype ι] [DecidableEq ι]
  (S : Type*) [CommRing S] [Algebra k S] [Algebra (MvPolynomial ι k) S]
  [IsScalarTower k (MvPolynomial ι k) S] [Algebra.FormallyEtale (MvPolynomial ι k) S]
  [IsNoetherianRing S] (I q : Ideal S) [q.IsPrime]

theorem exists_away_ideal_eq_span_and_isUnit_det
    (A : Type*) [CommRing A] [Algebra S A] [Algebra k A] [IsScalarTower k S A]
    [IsLocalization q.primeCompl A] [IsLocalRing A] [IsNoetherianRing A]
    [Algebra.FormallySmooth k (A ⧸ Ideal.map (algebraMap S A) I)]
    (hIq : I ≤ q) :
    ∃ (g : S) (w : ι → S) (T : Finset ι),
      g ∉ q ∧
      (∀ j ∈ T, w j ∈ I) ∧
      Ideal.map (algebraMap S (Localization.Away g)) (Ideal.span (w '' (↑T : Set ι))) =
        Ideal.map (algebraMap S (Localization.Away g)) I ∧
      (∀ j ∉ T, ∃ i : ι, w j = coord k ι S i) ∧
      IsUnit (algebraMap S (Localization.Away g)
        ((basisKaehler k ι S).det fun i : ι => KaehlerDifferential.D k S (w i))) := by
  classical
  have instFEloc : Algebra.FormallyEtale S A :=
    Algebra.FormallyEtale.of_isLocalization (M := q.primeCompl)
  let instPA : Algebra (MvPolynomial ι k) A :=
    ((algebraMap S A).comp (algebraMap (MvPolynomial ι k) S)).toAlgebra
  have instT1 : IsScalarTower (MvPolynomial ι k) S A :=
    IsScalarTower.of_algebraMap_eq fun _ => rfl
  have t2Space_cuspAdeles : IsScalarTower k (MvPolynomial ι k) A :=
    IsScalarTower.of_algebraMap_eq fun x => by
      rw [IsScalarTower.algebraMap_apply k S A x,
        IsScalarTower.algebraMap_apply k (MvPolynomial ι k) S x]
      rfl
  have instFEPA : Algebra.FormallyEtale (MvPolynomial ι k) A :=
    Algebra.FormallyEtale.comp (MvPolynomial ι k) S A
  have hmapq : Ideal.map (algebraMap S A) q = IsLocalRing.maximalIdeal A :=
    IsLocalization.AtPrime.map_eq_maximalIdeal q A
  have hJAm : Ideal.map (algebraMap S A) I ≤ IsLocalRing.maximalIdeal A := by
    rw [← hmapq]
    exact Ideal.map_mono hIq
  obtain ⟨tF, htF⟩ : I.FG := IsNoetherian.noetherian I
  have hspanI : Ideal.span (↑(tF.image (algebraMap S A)) : Set A)
      = Ideal.map (algebraMap S A) I := by
    rw [Finset.coe_image, ← htF, Ideal.map_span]
  obtain ⟨bset, hbsub, hbspan, hbind⟩ :=
    exists_linearIndependent (K := IsLocalRing.ResidueField A)
      (t := ((fun a : A => (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
        KaehlerDifferential.D k A a) '' (↑(tF.image (algebraMap S A)) : Set A)))
  have hbfin : bset.Finite :=
    Set.Finite.subset (Set.Finite.image _ (Finset.finite_toSet _)) hbsub
  let _ : Fintype bset := hbfin.fintype
  choose pre hpre1 hpre2 using fun v : bset => hbsub v.2
  have hpre1' : ∀ v : bset, ∃ t : S, t ∈ tF ∧ algebraMap S A t = pre v := by
    intro v
    have hv := hpre1 v
    rw [Finset.mem_coe, Finset.mem_image] at hv
    obtain ⟨t, ht, hts⟩ := hv
    exact ⟨t, ht, hts⟩
  choose pres hpres1 hpres2 using hpre1'
  obtain ⟨s, hs⟩ : ∃ s : Fin (Fintype.card bset) → S,
      ∀ i, s i = pres ((Fintype.equivFin bset).symm i) := ⟨_, fun _ => rfl⟩
  have hsI : ∀ i, s i ∈ I := by
    intro i
    rw [hs i, ← htF]
    exact Submodule.subset_span (Finset.mem_coe.mpr (hpres1 _))
  have hfun : (fun i : Fin (Fintype.card bset) => (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
      KaehlerDifferential.D k A (algebraMap S A (s i)))
      = fun i : Fin (Fintype.card bset) =>
        (((Fintype.equivFin bset).symm i : bset) :
          IsLocalRing.ResidueField A ⊗[A] KaehlerDifferential k A) := by
    funext i
    rw [hs i, hpres2]
    exact hpre2 _
  have hind : LinearIndependent (IsLocalRing.ResidueField A)
      (fun i : Fin (Fintype.card bset) => (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
        KaehlerDifferential.D k A (algebraMap S A (s i))) := by
    rw [hfun]
    exact hbind.comp _ (Fintype.equivFin bset).symm.injective
  have hrange : Set.range (fun i : Fin (Fintype.card bset) =>
      (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
        KaehlerDifferential.D k A (algebraMap S A (s i))) = bset := by
    rw [hfun]
    ext v
    constructor
    · rintro ⟨i, rfl⟩
      exact ((Fintype.equivFin bset).symm i).2
    · intro hv
      exact ⟨(Fintype.equivFin bset) ⟨v, hv⟩, by simp⟩
  have hxJ : ∀ i, algebraMap S A (s i) ∈ Ideal.map (algebraMap S A) I := fun i =>
    Ideal.mem_map_of_mem _ (hsI i)
  have hgen : ∀ y ∈ Ideal.map (algebraMap S A) I,
      (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] KaehlerDifferential.D k A y ∈
        Submodule.span (IsLocalRing.ResidueField A)
          ((fun a : A => (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
            KaehlerDifferential.D k A a) '' (↑(tF.image (algebraMap S A)) : Set A)) := by
    intro y hy
    rw [← hspanI] at hy
    obtain ⟨f, -, hf⟩ := Submodule.mem_span_finset.mp hy

    rw [← hf, map_sum, TensorProduct.tmul_sum]
    refine Submodule.sum_mem _ fun a ha => ?_
    have ham : a ∈ IsLocalRing.maximalIdeal A := by
      refine hJAm ?_
      rw [← hspanI]
      exact Submodule.subset_span (Finset.mem_coe.mpr ha)
    have heq : (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] KaehlerDifferential.D k A (f a • a)
        = IsLocalRing.residue A (f a) •
          ((1 : IsLocalRing.ResidueField A) ⊗ₜ[A] KaehlerDifferential.D k A a) := by
      rw [smul_eq_mul, mul_comm,
        KaehlerDifferential.residue_tmul_D_mul_of_mem_maximalIdeal]
      exact ham
    rw [heq]
    exact Submodule.smul_mem _ _
      (Submodule.subset_span ⟨a, Finset.mem_coe.mpr ha, rfl⟩)
  have hspanx : ∀ y ∈ Ideal.map (algebraMap S A) I,
      (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] KaehlerDifferential.D k A y ∈
        Submodule.span (IsLocalRing.ResidueField A)
          (Set.range fun i : Fin (Fintype.card bset) =>
            (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
              KaehlerDifferential.D k A (algebraMap S A (s i))) := by
    intro y hy
    rw [hrange, hbspan]
    exact hgen y hy
  have hJAeq : Ideal.map (algebraMap S A) I
      = Ideal.span (Set.range fun i : Fin (Fintype.card bset) => algebraMap S A (s i)) :=
    ideal_eq_span_of_tmul_D_mem_span k A (basisKaehler k ι A) (Ideal.map (algebraMap S A) I)
      (IsNoetherian.noetherian _) hJAm
      (Fintype.card bset) (fun i => algebraMap S A (s i)) hxJ hspanx
  obtain ⟨bkk, hbk⟩ : ∃ bkk : Module.Basis ι (IsLocalRing.ResidueField A)
      (IsLocalRing.ResidueField A ⊗[A] KaehlerDifferential k A),
      ∀ i, bkk i = (1 : IsLocalRing.ResidueField A) ⊗ₜ[A] (basisKaehler k ι A i) :=
    ⟨Algebra.TensorProduct.basis (IsLocalRing.ResidueField A) (basisKaehler k ι A),
      fun i => by simp⟩
  obtain ⟨Jst, B, hbasisInl, hbasisInr⟩ := exists_basis_sum_of_linearIndependent bkk (Fintype.card bset)
    (fun i : Fin (Fintype.card bset) => (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
      KaehlerDifferential.D k A (algebraMap S A (s i))) hind
  have hcard1 : Module.finrank (IsLocalRing.ResidueField A)
      (IsLocalRing.ResidueField A ⊗[A] KaehlerDifferential k A)
      = Fintype.card (Fin (Fintype.card bset) ⊕ {j : ι // j ∈ Jst}) :=
    Module.finrank_eq_card_basis B
  have hcard2 : Module.finrank (IsLocalRing.ResidueField A)
      (IsLocalRing.ResidueField A ⊗[A] KaehlerDifferential k A) = Fintype.card ι :=
    Module.finrank_eq_card_basis bkk
  have hcard3 : Fintype.card {j : ι // j ∈ Jst} + Fintype.card {j : ι // ¬ (j ∈ Jst)}
      = Fintype.card ι := by
    rw [← Fintype.card_sum]
    exact Fintype.card_congr (Equiv.sumCompl (fun j : ι => j ∈ Jst))
  rw [Fintype.card_sum, Fintype.card_fin] at hcard1
  have hcard4 : Fintype.card {j : ι // ¬ (j ∈ Jst)} = Fintype.card bset := by omega
  have e : {j : ι // ¬ (j ∈ Jst)} ≃ Fin (Fintype.card bset) := Fintype.equivFinOfCardEq hcard4
  obtain ⟨τ, hτl, hτr⟩ : ∃ τ : Fin (Fintype.card bset) ⊕ {j : ι // j ∈ Jst} ≃ ι,
      (∀ l : Fin (Fintype.card bset), τ (Sum.inl l) = ((e.symm l : ι))) ∧
      (∀ j : {j : ι // j ∈ Jst}, τ (Sum.inr j) = (j : ι)) :=
    ⟨(Equiv.sumCongr e.symm (Equiv.refl {j : ι // j ∈ Jst})).trans
      ((Equiv.sumComm _ _).trans (Equiv.sumCompl (fun j : ι => j ∈ Jst))),
      fun l => rfl, fun j => rfl⟩
  obtain ⟨w, hwJ, hwn⟩ : ∃ w : ι → S, (∀ j, j ∈ Jst → w j = coord k ι S j) ∧
      (∀ x : {j : ι // ¬ (j ∈ Jst)}, w (x : ι) = s (e x)) := by
    refine ⟨fun j => if hj : j ∈ Jst then coord k ι S j else s (e ⟨j, hj⟩),
      fun j hj => ?_, fun x => ?_⟩
    · exact dif_pos hj
    · exact dif_neg x.2
  have hbasisApply : ∀ x : Fin (Fintype.card bset) ⊕ {j : ι // j ∈ Jst},
      B x = (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
        KaehlerDifferential.D k A (algebraMap S A (w (τ x))) := by
    rintro (l | j)
    · rw [hbasisInl l, hτl l, hwn (e.symm l), Equiv.apply_symm_apply]
    · rw [hbasisInr j, hτr j, hwJ (j : ι) j.2, hbk (j : ι), basisKaehler_apply,
        algebraMap_coord]
  have hB'G : ∀ i : ι, (B.reindex τ) i = (1 : IsLocalRing.ResidueField A) ⊗ₜ[A]
      KaehlerDifferential.D k A (algebraMap S A (w i)) := by
    intro i
    rw [Module.Basis.reindex_apply, hbasisApply (τ.symm i), Equiv.apply_symm_apply]
  have hdetne := residue_det_ne_zero_of_tmul_eq_basis (basisKaehler k ι A)
    (fun i : ι => KaehlerDifferential.D k A (algebraMap S A (w i))) (B.reindex τ) hB'G
  have hdetA : algebraMap S A ((basisKaehler k ι S).det
      (fun i : ι => KaehlerDifferential.D k S (w i)))
      = (basisKaehler k ι A).det
        (fun i : ι => KaehlerDifferential.D k A (algebraMap S A (w i))) :=
    algebraMap_det_basisKaehler k ι S A w
  have hg₀q : ((basisKaehler k ι S).det fun i : ι => KaehlerDifferential.D k S (w i)) ∉ q := by
    intro hgq
    apply hdetne
    rw [← hdetA, IsLocalRing.residue_eq_zero_iff, ← hmapq]
    exact Ideal.mem_map_of_mem _ hgq
  have hspanA : Ideal.map (algebraMap S A) (Ideal.span (w '' (↑(Jstᶜ) : Set ι)))
      = Ideal.map (algebraMap S A) I := by
    rw [Ideal.map_span, hJAeq]
    congr 1
    ext v
    constructor
    · rintro ⟨u, ⟨j, hj, rfl⟩, rfl⟩
      have hj' : ¬ (j ∈ Jst) := Finset.mem_compl.mp (Finset.mem_coe.mp hj)
      have hwj : w j = s (e ⟨j, hj'⟩) := hwn ⟨j, hj'⟩
      exact ⟨e ⟨j, hj'⟩, by rw [hwj]⟩
    · rintro ⟨i, rfl⟩
      refine ⟨w ((e.symm i : ι)), ⟨(e.symm i : ι), ?_, rfl⟩, ?_⟩
      · exact Finset.mem_coe.mpr (Finset.mem_compl.mpr (e.symm i).2)
      · have hwj : w ((e.symm i : ι)) = s (e (e.symm i)) := hwn (e.symm i)
        rw [hwj, Equiv.apply_symm_apply]
  obtain ⟨g₁, hg₁q, hg₁eq⟩ := exists_away_map_ideal_eq q A
    (Ideal.span (w '' (↑(Jstᶜ) : Set ι))) I
    (Submodule.fg_span (Set.Finite.image w (Finset.finite_toSet _)))
    (IsNoetherian.noetherian I) hspanA
  refine ⟨g₁ * ((basisKaehler k ι S).det fun i : ι => KaehlerDifferential.D k S (w i)), w,
    Jstᶜ, ?_, ?_, ?_, ?_, ?_⟩
  · intro hmem
    rcases Ideal.IsPrime.mem_or_mem ‹q.IsPrime› hmem with h1 | h2
    · exact hg₁q h1
    · exact hg₀q h2
  · intro j hj
    have hj' : ¬ (j ∈ Jst) := Finset.mem_compl.mp hj
    have hwj : w j = s (e ⟨j, hj'⟩) := hwn ⟨j, hj'⟩
    rw [hwj]
    exact hsI _
  · exact map_eq_of_map_eq_of_away_mul g₁
      ((basisKaehler k ι S).det fun i : ι => KaehlerDifferential.D k S (w i)) _ _ hg₁eq
  · intro j hj
    have hj' : j ∈ Jst := by
      by_contra hc
      exact hj (Finset.mem_compl.mpr hc)
    exact ⟨j, hwJ j hj'⟩
  · have hu : IsUnit (algebraMap S
        (Localization.Away (g₁ *
          ((basisKaehler k ι S).det fun i : ι => KaehlerDifferential.D k S (w i))))
        (g₁ * ((basisKaehler k ι S).det fun i : ι => KaehlerDifferential.D k S (w i)))) :=
      IsLocalization.map_units _ ⟨_, Submonoid.mem_powers _⟩
    rw [map_mul] at hu
    exact isUnit_of_mul_isUnit_right hu

theorem exists_away_ideal_eq_span_and_formallyEtale
    (A : Type*) [CommRing A] [Algebra S A] [Algebra k A] [IsScalarTower k S A]
    [IsLocalization q.primeCompl A] [IsLocalRing A] [IsNoetherianRing A]
    [Algebra.FormallySmooth k (A ⧸ Ideal.map (algebraMap S A) I)]
    (hIq : I ≤ q) :
    ∃ (g : S) (w : ι → S) (T : Finset ι),
      g ∉ q ∧
      (∀ j ∈ T, w j ∈ I) ∧
      Ideal.map (algebraMap S (Localization.Away g)) (Ideal.span (w '' (↑T : Set ι))) =
        Ideal.map (algebraMap S (Localization.Away g)) I ∧
      (∀ j ∉ T, ∃ i : ι, w j = coord k ι S i) ∧
      @Algebra.FormallyEtale (MvPolynomial ι k) (Localization.Away g) _ _
        (RingHom.toAlgebra
          (MvPolynomial.eval₂Hom
            ((algebraMap S (Localization.Away g)).comp (algebraMap k S))
            (fun j : ι => algebraMap S (Localization.Away g) (w j)))) := by
  classical
  obtain ⟨g, w, T, hgq, hwI, hmap, hcoord, hdet⟩ :=
    exists_away_ideal_eq_span_and_isUnit_det k ι S I q A hIq
  exact ⟨g, w, T, hgq, hwI, hmap, hcoord,
    formallyEtale_away_of_isUnit_det k ι S g (Localization.Away g) w hdet⟩

end

end EtaleCoordinates
end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.LocalNormalForm =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothCenterChart =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothCenterChart", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.ChartRing\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafOrderDecrease\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateSubscheme\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleChartExistence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.LocalNormalForm\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory Opposite AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem algebraMap_quotient_map_mk {R : Type u} [CommRing R] {A : Type u} [CommRing A] [Algebra R A]
    (I : Ideal R) (r : R) :
    algebraMap (R ⧸ I) (A ⧸ Ideal.map (algebraMap R A) I) (Ideal.Quotient.mk I r)
      = Ideal.Quotient.mk (Ideal.map (algebraMap R A) I) (algebraMap R A r) := rfl

private theorem algebraMap_quotient_apply {k R : Type u} [CommRing k] [CommRing R] [Algebra k R]
    (I : Ideal R) (a : k) :
    algebraMap k (R ⧸ I) a = Ideal.Quotient.mk I (algebraMap k R a) := rfl

private theorem formallySmooth_quotient_map_of_isLocalization (k : Type u) [CommRing k] {R : Type u} [CommRing R]
    [Algebra k R] (M : Submonoid R) (A : Type u) [CommRing A] [Algebra R A] [IsLocalization M A]
    [Algebra k A] [IsScalarTower k R A] (I : Ideal R)
    (h : Algebra.FormallySmooth k (R ⧸ I)) :
    Algebra.FormallySmooth k (A ⧸ Ideal.map (algebraMap R A) I) := by
  have := h
  have hloc : IsLocalization (Algebra.algebraMapSubmonoid (R ⧸ I) M)
      (A ⧸ Ideal.map (algebraMap R A) I) := inferInstance
  have : Algebra.FormallyEtale (R ⧸ I) (A ⧸ Ideal.map (algebraMap R A) I) :=
    Algebra.FormallyEtale.of_isLocalization (Algebra.algebraMapSubmonoid (R ⧸ I) M)
  have : IsScalarTower k (R ⧸ I) (A ⧸ Ideal.map (algebraMap R A) I) := by
    refine IsScalarTower.of_algebraMap_eq (fun a => ?_)
    rw [algebraMap_quotient_apply I a, algebraMap_quotient_map_mk I (algebraMap k R a),
      algebraMap_quotient_apply (Ideal.map (algebraMap R A) I) a, IsScalarTower.algebraMap_apply k R A]
  exact Algebra.FormallySmooth.comp k (R ⧸ I) (A ⧸ Ideal.map (algebraMap R A) I)

private theorem map_algebraMap_eq_map_map_of_algEquiv {R L M : Type u} [CommRing R] [CommRing L]
    [CommRing M] [Algebra R L] [Algebra R M] (e : L ≃ₐ[R] M) (J : Ideal R) :
    Ideal.map (algebraMap R M) J
      = Ideal.map e.toAlgHom.toRingHom (Ideal.map (algebraMap R L) J) := by
  rw [Ideal.map_map]
  refine congrArg (fun φ : R →+* M => Ideal.map φ J) ?_
  exact RingHom.ext fun r => (e.commutes r).symm

private theorem ι_appLE_eq_topIso_inv {X : Scheme.{u}} (U : X.Opens)
    (e : (⊤ : U.toScheme.Opens) ≤ U.ι ⁻¹ᵁ U) : U.ι.appLE U ⊤ e = U.topIso.inv := by
  rw [Scheme.Opens.ι_appLE U U ⊤ e, Scheme.Opens.topIso_inv]
  refine congrArg (fun h => X.presheaf.map h) ?_
  exact Quiver.Hom.unop_inj (Subsingleton.elim _ _)

private theorem ofIdealTop_ideal_top {Y : Scheme.{u}} (J : Ideal Γ(Y, ⊤))
    (hY : IsAffineOpen (⊤ : Y.Opens)) :
    (Scheme.IdealSheafData.ofIdealTop J).ideal ⟨⊤, hY⟩ = J := by
  rw [Scheme.IdealSheafData.ofIdealTop_ideal]
  have h1 : (homOfLE (le_refl (⊤ : Y.Opens)) : (⊤ : Y.Opens) ⟶ ⊤) = 𝟙 _ := rfl
  rw [h1, op_id, CategoryTheory.Functor.map_id]
  exact Ideal.map_id J

private theorem affineSpaceGlobalSectionsHom_eq_eval₂Hom (k : Type u) [Field k] (m : ℕ) :
    affineSpaceGlobalSectionsHom k m =
      MvPolynomial.eval₂Hom
        (((Scheme.ΓSpecIso (CommRingCat.of k)).inv ≫ (affineSpaceFinToSpec k m).appTop).hom)
        (fun i : ULift.{u} (Fin m) => AffineSpace.coord (Spec (CommRingCat.of k)) i) := by
  show ((Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial (ULift.{u} (Fin m)) k))).inv ≫
      (AffineSpace.SpecIso (ULift.{u} (Fin m)) (CommRingCat.of k)).hom.appTop).hom = _
  rw [AffineSpace.SpecIso_hom_appTop, ← Category.assoc, Iso.inv_hom_id, Category.id_comp,
    CommRingCat.hom_ofHom]

private theorem affineSpaceGlobalSectionsHom_X (k : Type u) [Field k] (m : ℕ) (i : ULift.{u} (Fin m)) :
    affineSpaceGlobalSectionsHom k m (MvPolynomial.X i) = AffineSpace.coord (Spec (CommRingCat.of k)) i := by
  rw [affineSpaceGlobalSectionsHom_eq_eval₂Hom, MvPolynomial.eval₂Hom_X']

private theorem affineSpaceGlobalSectionsHom_C (k : Type u) [Field k] (m : ℕ) (b : k) :
    affineSpaceGlobalSectionsHom k m (MvPolynomial.C b) =
      (affineSpaceFinToSpec k m).appTop.hom ((Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom b) := by
  rw [affineSpaceGlobalSectionsHom_eq_eval₂Hom, MvPolynomial.eval₂Hom_C]
  rfl

private def affineSpaceGlobalSectionsEquiv (k : Type u) [Field k] (m : ℕ) :
    MvPolynomial (ULift.{u} (Fin m)) k ≃+* Γ(affineSpaceFin k m, ⊤) where
  toFun := affineSpaceGlobalSectionsHom k m
  invFun := fun z =>
    (Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial (ULift.{u} (Fin m)) k))).hom.hom
      ((AffineSpace.SpecIso (ULift.{u} (Fin m)) (CommRingCat.of k)).inv.appTop.hom z)
  left_inv := by
    intro x
    have e : (Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial (ULift.{u} (Fin m)) k))).inv ≫
        ((AffineSpace.SpecIso (ULift.{u} (Fin m)) (CommRingCat.of k)).hom.appTop ≫
          (AffineSpace.SpecIso (ULift.{u} (Fin m)) (CommRingCat.of k)).inv.appTop) ≫
        (Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial (ULift.{u} (Fin m)) k))).hom = 𝟙 _ := by
      rw [← Scheme.Hom.comp_appTop, Iso.inv_hom_id, Scheme.Hom.id_appTop, Category.id_comp,
        Iso.inv_hom_id]
    exact congrArg
      (fun φ : CommRingCat.of (MvPolynomial (ULift.{u} (Fin m)) k) ⟶
        CommRingCat.of (MvPolynomial (ULift.{u} (Fin m)) k) => φ.hom x) e
  right_inv := by
    intro z
    have e : (AffineSpace.SpecIso (ULift.{u} (Fin m)) (CommRingCat.of k)).inv.appTop ≫
        ((Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial (ULift.{u} (Fin m)) k))).hom ≫
          (Scheme.ΓSpecIso (CommRingCat.of (MvPolynomial (ULift.{u} (Fin m)) k))).inv) ≫
        (AffineSpace.SpecIso (ULift.{u} (Fin m)) (CommRingCat.of k)).hom.appTop = 𝟙 _ := by
      rw [Iso.hom_inv_id, Category.id_comp, ← Scheme.Hom.comp_appTop, Iso.hom_inv_id,
        Scheme.Hom.id_appTop]
    exact congrArg
      (fun φ : Γ(affineSpaceFin k m, ⊤) ⟶ Γ(affineSpaceFin k m, ⊤) => φ.hom z) e
  map_mul' := (affineSpaceGlobalSectionsHom k m).map_mul
  map_add' := (affineSpaceGlobalSectionsHom k m).map_add

theorem sectionsAlgebraMap_apply_eq (k : Type u) [CommRing k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) (U : X.Opens) (a : k) :
    sectionsAlgebraMap k p U a =
      (p.appLE ⊤ U (le_preimage_top k p U)).hom
        ((Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom a) := by
  rw [sectionsAlgebraMap_eq]
  rfl

private theorem appLE_top_comp_app (k : Type u) [CommRing k] {X W : Scheme.{u}}
    (f : W ⟶ X) (p : X ⟶ Spec (CommRingCat.of k)) (U : X.Opens) :
    p.appLE ⊤ U (le_preimage_top k p U) ≫ f.app U
      = (f ≫ p).appLE ⊤ (f ⁻¹ᵁ U) (le_preimage_top k (f ≫ p) (f ⁻¹ᵁ U)) := by
  have hn := f.c.naturality (homOfLE (le_preimage_top k p U)).op
  show (p.app ⊤ ≫ X.presheaf.map (homOfLE (le_preimage_top k p U)).op) ≫ f.app U
      = (f ≫ p).app ⊤ ≫ W.presheaf.map (homOfLE (le_preimage_top k (f ≫ p) (f ⁻¹ᵁ U))).op
  rw [Category.assoc]
  exact congrArg (fun t => p.app ⊤ ≫ t) hn

private theorem app_sectionsAlgebraMap (k : Type u) [CommRing k] {X W : Scheme.{u}}
    (f : W ⟶ X) (p : X ⟶ Spec (CommRingCat.of k)) (U : X.Opens) (a : k) :
    (f.app U).hom (sectionsAlgebraMap k p U a)
      = sectionsAlgebraMap k (f ≫ p) (f ⁻¹ᵁ U) a := by
  rw [sectionsAlgebraMap_apply_eq, sectionsAlgebraMap_apply_eq]
  exact congrArg
    (fun φ : Γ(Spec (CommRingCat.of k), ⊤) ⟶ Γ(W, f ⁻¹ᵁ U) =>
      φ.hom ((Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom a)) (appLE_top_comp_app k f p U)

theorem mem_basicOpen_of_notMem_primeIdealOf {X : Scheme.{u}} {U : X.Opens}
    (hU : IsAffineOpen U) {x : X} (hx : x ∈ U) (g : Γ(X, U))
    (hg : g ∉ (hU.primeIdealOf ⟨x, hx⟩).asIdeal) : x ∈ X.basicOpen g := by
  have h1 : hU.fromSpec.base (hU.primeIdealOf ⟨x, hx⟩) = x := hU.fromSpec_primeIdealOf ⟨x, hx⟩
  have h2 : hU.fromSpec ⁻¹ᵁ (X.basicOpen g) = PrimeSpectrum.basicOpen g :=
    hU.fromSpec_preimage_basicOpen g
  have h3 : hU.primeIdealOf ⟨x, hx⟩ ∈ hU.fromSpec ⁻¹ᵁ (X.basicOpen g) := by
    rw [h2]
    exact (PrimeSpectrum.mem_basicOpen g _).mpr hg
  have h4 : hU.fromSpec.base (hU.primeIdealOf ⟨x, hx⟩) ∈ X.basicOpen g := h3
  rwa [h1] at h4

theorem ideal_le_primeIdealOf {X : Scheme.{u}} (Z : X.IdealSheafData) {U : X.Opens}
    (hU : IsAffineOpen U) {x : X} (hx : x ∈ U) (hxZ : x ∈ Z.support) :
    Z.ideal ⟨U, hU⟩ ≤ (hU.primeIdealOf ⟨x, hx⟩).asIdeal := by
  have h : x ∈ X.zeroLocus (↑(Z.ideal ⟨U, hU⟩) : Set Γ(X, U)) :=
    (Scheme.IdealSheafData.mem_support_iff_of_mem (I := Z) (U := ⟨U, hU⟩) hx).mp hxZ
  intro f hf
  by_contra hfp
  have hx' : x ∈ X.basicOpen f := mem_basicOpen_of_notMem_primeIdealOf hU hx f hfp
  rw [Scheme.mem_zeroLocus_iff] at h
  exact h f hf hx'

theorem restrictIdeal_eq_coordIdeal_of_ideal_eq_span {X : Scheme.{u}} {k : Type u} [Field k]
    {p : X ⟶ Spec (CommRingCat.of k)} {U : X.Opens} (hU : IsAffineOpen U) {m : ℕ}
    (c : EtaleChart p U m) (Z : X.IdealSheafData) (S : Finset (Fin m))
    (h : Z.ideal ⟨U, hU⟩ = Ideal.span (c.coord '' (S : Set (Fin m)))) :
    restrictIdeal Z U = c.coordIdeal S := by
  have : IsAffine U.toScheme := hU
  have hTop : IsAffineOpen (⊤ : U.toScheme.Opens) := isAffineOpen_top U.toScheme
  have e : (⊤ : U.toScheme.Opens) ≤ U.ι ⁻¹ᵁ U := fun z _ => z.2
  have hsets : (U.topIso.inv.hom) '' (c.coord '' (S : Set (Fin m)))
      = (c.map.appTop.hom) ''
        ((fun i : Fin m => AffineSpace.coord (Spec (CommRingCat.of k)) (ULift.up i)) ''
          (S : Set (Fin m))) := by
    rw [Set.image_image, Set.image_image]
    refine congrArg (fun g : Fin m → Γ(U.toScheme, ⊤) => g '' (S : Set (Fin m))) ?_
    funext j
    rw [EtaleChart.coord_def]
    exact Iso.hom_inv_id_apply U.topIso _
  rw [restrictIdeal_eq_comap_ι, c.coordIdeal_eq_comap_coordSubspaceIdeal, coordSubspaceIdeal_eq_ofIdealTop_span_coord]
  apply Scheme.IdealSheafData.ext_of_isAffine
  rw [Scheme.IdealSheafData.comap_ideal_eq_map_appLE Z U.ι ⟨U, hU⟩ ⟨⊤, hTop⟩ e,
    Scheme.IdealSheafData.comap_ideal_top_eq_map_appTop, ofIdealTop_ideal_top, h,
    ι_appLE_eq_topIso_inv, Ideal.map_span, Ideal.map_span]
  exact congrArg Ideal.span hsets

theorem etale_homOfVector_of_ringHom_etale {X : Scheme.{u}} {k : Type u} [Field k]
    (p : X ⟶ Spec (CommRingCat.of k)) {U : X.Opens} (hU : IsAffineOpen U) {m : ℕ}
    (y : ULift.{u} (Fin m) → Γ(X, U))
    (f : MvPolynomial (ULift.{u} (Fin m)) k →+* Γ(X, U))
    (hC : ∀ a : k, f (MvPolynomial.C a) = sectionsAlgebraMap k p U a)
    (hX : ∀ i : ULift.{u} (Fin m), f (MvPolynomial.X i) = y i)
    (hf : f.Etale) :
    AlgebraicGeometry.Etale
      (AffineSpace.homOfVector (U.ι ≫ p) (fun i => U.topIso.inv.hom (y i))) := by
  have : IsAffine U.toScheme := hU
  have hresp : RingHom.RespectsIso @RingHom.Etale :=
    (AlgebraicGeometry.HasRingHomProperty.isLocal_ringHomProperty
      (P := @AlgebraicGeometry.Etale)).respectsIso
  have hover : AffineSpace.homOfVector (U.ι ≫ p) (fun i => U.topIso.inv.hom (y i)) ≫
      affineSpaceFinToSpec k m = U.ι ≫ p := by simp
  have e1 : (affineSpaceFinToSpec k m).appTop ≫
      (AffineSpace.homOfVector (U.ι ≫ p) (fun i => U.topIso.inv.hom (y i))).appTop
        = (U.ι ≫ p).appTop := by
    rw [← Scheme.Hom.comp_appTop, hover]
  have e2 : p.appLE ⊤ U (le_preimage_top k p U) ≫ U.topIso.inv = (U.ι ≫ p).appTop :=
    appLE_top_comp_topIso_inv p U (le_preimage_top k p U)
  have key : ((AffineSpace.homOfVector (U.ι ≫ p)
        (fun i => U.topIso.inv.hom (y i))).appTop.hom).comp (affineSpaceGlobalSectionsHom k m)
      = (U.topIso.inv.hom).comp f := by
    apply MvPolynomial.ringHom_ext
    · intro b
      show (AffineSpace.homOfVector (U.ι ≫ p) (fun i => U.topIso.inv.hom (y i))).appTop.hom
          (affineSpaceGlobalSectionsHom k m (MvPolynomial.C b))
          = U.topIso.inv.hom (f (MvPolynomial.C b))
      rw [affineSpaceGlobalSectionsHom_C, hC, sectionsAlgebraMap_apply_eq]
      exact congrArg (fun φ : Γ(Spec (CommRingCat.of k), ⊤) ⟶ Γ(U.toScheme, ⊤) =>
        φ.hom ((Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom b)) (e1.trans e2.symm)
    · intro i
      show (AffineSpace.homOfVector (U.ι ≫ p) (fun i => U.topIso.inv.hom (y i))).appTop.hom
          (affineSpaceGlobalSectionsHom k m (MvPolynomial.X i))
          = U.topIso.inv.hom (f (MvPolynomial.X i))
      rw [affineSpaceGlobalSectionsHom_X, hX]
      exact AffineSpace.homOfVector_appTop_coord (U.ι ≫ p)
        (fun i => U.topIso.inv.hom (y i)) i
  have hA : (AffineSpace.homOfVector (U.ι ≫ p) (fun i => U.topIso.inv.hom (y i))).appTop.hom
      = ((U.topIso.inv.hom).comp f).comp (affineSpaceGlobalSectionsEquiv k m).symm.toRingHom := by
    refine RingHom.ext fun z => ?_
    have h1 := DFunLike.congr_fun key ((affineSpaceGlobalSectionsEquiv k m).symm z)
    simp only [RingHom.comp_apply] at h1 ⊢
    rw [show affineSpaceGlobalSectionsHom k m ((affineSpaceGlobalSectionsEquiv k m).symm z) = z from
      (affineSpaceGlobalSectionsEquiv k m).apply_symm_apply z] at h1
    exact h1
  rw [AlgebraicGeometry.HasRingHomProperty.iff_of_isAffine (P := @AlgebraicGeometry.Etale), hA]
  exact hresp.right _ (affineSpaceGlobalSectionsEquiv k m).symm
    (hresp.left f U.topIso.commRingCatIsoToRingEquiv.symm hf)

theorem exists_etaleChart_coord_eq {X : Scheme.{u}} {k : Type u} [Field k]
    (p : X ⟶ Spec (CommRingCat.of k)) {U : X.Opens} (hU : IsAffineOpen U) {m : ℕ}
    (y : ULift.{u} (Fin m) → Γ(X, U))
    (f : MvPolynomial (ULift.{u} (Fin m)) k →+* Γ(X, U))
    (hC : ∀ a : k, f (MvPolynomial.C a) = sectionsAlgebraMap k p U a)
    (hX : ∀ i : ULift.{u} (Fin m), f (MvPolynomial.X i) = y i)
    (hf : f.Etale) :
    ∃ c : EtaleChart p U m, ∀ j : Fin m, c.coord j = y (ULift.up j) := by
  refine ⟨⟨AffineSpace.homOfVector (U.ι ≫ p) (fun i => U.topIso.inv.hom (y i)),
    by simp, etale_homOfVector_of_ringHom_etale p hU y f hC hX hf⟩, fun j => ?_⟩
  rw [EtaleChart.coord_def, AffineSpace.homOfVector_appTop_coord]
  exact Iso.inv_hom_id_apply U.topIso (y (ULift.up j))

theorem exists_chart_ideal_eq_span_coord {X : Scheme.{u}} {k : Type u} [Field k] [CharZero k]
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p] (Z : X.IdealSheafData)
    [AlgebraicGeometry.Smooth (Z.subschemeι ≫ p)] (x : X) (hx : x ∈ Z.support) :
    ∃ (U : X.Opens) (hU : IsAffineOpen U) (m : ℕ) (c : EtaleChart p U m) (S : Finset (Fin m)),
      x ∈ U ∧ Z.ideal ⟨U, hU⟩ = Ideal.span (c.coord '' (S : Set (Fin m))) := by
  obtain ⟨U₀, m, hxU₀, hU₀, ⟨c⟩⟩ := exists_etaleChart p x
  let _ : Algebra k Γ(X, U₀) := sectionsAlgebra k p U₀
  have hk : (algebraMap k Γ(X, U₀)) = sectionsAlgebraMap k p U₀ :=
    algebraMap_sectionsAlgebra k p U₀
  let _ : Algebra (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, U₀) := c.algebra
  have : IsScalarTower k (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, U₀) := c.isScalarTower
  have : Algebra.FormallyEtale (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, U₀) :=
    c.algebra_formallyEtale hU₀
  have : IsNoetherianRing Γ(X, U₀) := isNoetherianRing_sections k p ⟨U₀, hU₀⟩ hk
  have : DecidableEq (ULift.{u} (Fin m)) := Classical.decEq _
  let P : PrimeSpectrum Γ(X, U₀) := hU₀.primeIdealOf ⟨x, hxU₀⟩
  have hIq : Z.ideal ⟨U₀, hU₀⟩ ≤ P.asIdeal := ideal_le_primeIdealOf Z hU₀ hxU₀ hx
  have : IsNoetherianRing (Localization.AtPrime P.asIdeal) :=
    IsLocalization.isNoetherianRing P.asIdeal.primeCompl
      (Localization.AtPrime P.asIdeal) inferInstance
  have hVaff : IsAffineOpen (Z.subschemeι ⁻¹ᵁ U₀) := isAffineOpen_preimage_subschemeι Z hU₀
  let _ : Algebra k Γ(Z.subscheme, Z.subschemeι ⁻¹ᵁ U₀) :=
    sectionsAlgebra k (Z.subschemeι ≫ p) (Z.subschemeι ⁻¹ᵁ U₀)
  have : Algebra.FormallySmooth k Γ(Z.subscheme, Z.subschemeι ⁻¹ᵁ U₀) :=
    formallySmooth_sections k (Z.subschemeι ≫ p) (Z.subschemeι ⁻¹ᵁ U₀) hVaff
      (algebraMap_sectionsAlgebra k (Z.subschemeι ≫ p) (Z.subschemeι ⁻¹ᵁ U₀))
  have hker : RingHom.ker (Z.subschemeι.app U₀).hom = Z.ideal ⟨U₀, hU₀⟩ :=
    Z.ker_subschemeι_app ⟨U₀, hU₀⟩
  have hsurj : Function.Surjective ⇑((Z.subschemeι.app U₀).hom) :=
    Z.subschemeι_app_surjective ⟨U₀, hU₀⟩
  let Φ : Γ(X, U₀) →ₐ[k] Γ(Z.subscheme, Z.subschemeι ⁻¹ᵁ U₀) :=
    { (Z.subschemeι.app U₀).hom with
      commutes' := fun a => app_sectionsAlgebraMap k Z.subschemeι p U₀ a }
  have hΦsurj : Function.Surjective ⇑Φ := hsurj
  have hkerΦ : RingHom.ker (Φ : Γ(X, U₀) →+* Γ(Z.subscheme, Z.subschemeι ⁻¹ᵁ U₀))
      = Z.ideal ⟨U₀, hU₀⟩ := hker
  have hfs : Algebra.FormallySmooth k (Γ(X, U₀) ⧸ Z.ideal ⟨U₀, hU₀⟩) := by
    have e1 : (Γ(X, U₀) ⧸ Z.ideal ⟨U₀, hU₀⟩) ≃ₐ[k]
        (Γ(X, U₀) ⧸ RingHom.ker (Φ : Γ(X, U₀) →+* Γ(Z.subscheme, Z.subschemeι ⁻¹ᵁ U₀))) :=
      Ideal.quotientEquivAlgOfEq k hkerΦ.symm
    have e2 : (Γ(X, U₀) ⧸ RingHom.ker (Φ : Γ(X, U₀) →+* Γ(Z.subscheme, Z.subschemeι ⁻¹ᵁ U₀)))
        ≃ₐ[k] Γ(Z.subscheme, Z.subschemeι ⁻¹ᵁ U₀) :=
      Ideal.quotientKerAlgEquivOfSurjective hΦsurj
    exact Algebra.FormallySmooth.of_equiv (e1.trans e2).symm
  have : Algebra.FormallySmooth k
      ((Localization.AtPrime P.asIdeal) ⧸
        Ideal.map (algebraMap Γ(X, U₀) (Localization.AtPrime P.asIdeal))
          (Z.ideal ⟨U₀, hU₀⟩)) :=
    formallySmooth_quotient_map_of_isLocalization k P.asIdeal.primeCompl
      (Localization.AtPrime P.asIdeal) (Z.ideal ⟨U₀, hU₀⟩) hfs
  obtain ⟨g, w, T, hgq, hwI, hspanmap, hcoords, hfe⟩ :=
    EtaleCoordinates.exists_away_ideal_eq_span_and_formallyEtale k (ULift.{u} (Fin m)) Γ(X, U₀)
      (Z.ideal ⟨U₀, hU₀⟩) P.asIdeal (Localization.AtPrime P.asIdeal) hIq
  have hxU : x ∈ X.basicOpen g := mem_basicOpen_of_notMem_primeIdealOf hU₀ hxU₀ g hgq
  let _ : Algebra k Γ(X, X.basicOpen g) := sectionsAlgebra k p (X.basicOpen g)
  let _ : Algebra (MvPolynomial (ULift.{u} (Fin m)) k) (Localization.Away g) :=
    RingHom.toAlgebra (MvPolynomial.eval₂Hom
      ((algebraMap Γ(X, U₀) (Localization.Away g)).comp (algebraMap k Γ(X, U₀)))
      (fun j : ULift.{u} (Fin m) => algebraMap Γ(X, U₀) (Localization.Away g) (w j)))
  have : Algebra.FormallyEtale (MvPolynomial (ULift.{u} (Fin m)) k) (Localization.Away g) := hfe
  let _ : Algebra (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, X.basicOpen g) :=
    RingHom.toAlgebra (MvPolynomial.eval₂Hom
      ((algebraMap Γ(X, U₀) Γ(X, X.basicOpen g)).comp (algebraMap k Γ(X, U₀)))
      (fun j : ULift.{u} (Fin m) => algebraMap Γ(X, U₀) Γ(X, X.basicOpen g) (w j)))
  have : IsLocalization.Away g Γ(X, X.basicOpen g) := hU₀.isLocalization_basicOpen g
  let e : Localization.Away g ≃ₐ[Γ(X, U₀)] Γ(X, X.basicOpen g) :=
    IsLocalization.algEquiv (Submonoid.powers g) (Localization.Away g) Γ(X, X.basicOpen g)
  have hcomm : (e.toAlgHom.toRingHom).comp
      (MvPolynomial.eval₂Hom
        ((algebraMap Γ(X, U₀) (Localization.Away g)).comp (algebraMap k Γ(X, U₀)))
        (fun j : ULift.{u} (Fin m) => algebraMap Γ(X, U₀) (Localization.Away g) (w j)))
      = MvPolynomial.eval₂Hom
        ((algebraMap Γ(X, U₀) Γ(X, X.basicOpen g)).comp (algebraMap k Γ(X, U₀)))
        (fun j : ULift.{u} (Fin m) => algebraMap Γ(X, U₀) Γ(X, X.basicOpen g) (w j)) := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp only [RingHom.comp_apply, MvPolynomial.eval₂Hom_C]
      exact e.commutes _
    · intro i
      simp only [RingHom.comp_apply, MvPolynomial.eval₂Hom_X']
      exact e.commutes _
  let E : Localization.Away g ≃ₐ[MvPolynomial (ULift.{u} (Fin m)) k] Γ(X, X.basicOpen g) :=
    AlgEquiv.ofRingEquiv (f := e.toRingEquiv)
      (fun z => congrArg
        (fun φ : MvPolynomial (ULift.{u} (Fin m)) k →+* Γ(X, X.basicOpen g) => φ z) hcomm)
  have : Algebra.FormallyEtale (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, X.basicOpen g) :=
    Algebra.FormallyEtale.of_equiv E
  have : Algebra.FiniteType k Γ(X, X.basicOpen g) :=
    finiteType_sections k p ⟨X.basicOpen g, hU₀.basicOpen g⟩
      (algebraMap_sectionsAlgebra k p (X.basicOpen g))
  have : IsScalarTower k (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, X.basicOpen g) := by
    refine IsScalarTower.of_algebraMap_eq (fun a => ?_)
    have h1 : algebraMap (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, X.basicOpen g)
        (algebraMap k (MvPolynomial (ULift.{u} (Fin m)) k) a)
        = algebraMap Γ(X, U₀) Γ(X, X.basicOpen g) (algebraMap k Γ(X, U₀) a) := by
      rw [MvPolynomial.algebraMap_eq]
      exact MvPolynomial.eval₂Hom_C _ _ a
    rw [h1]
    exact (sectionsAlgebraMap_restrict_apply k p (X.basicOpen_le g) a).symm
  have : Algebra.FiniteType (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, X.basicOpen g) :=
    Algebra.FiniteType.of_restrictScalars_finiteType k
      (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, X.basicOpen g)
  have : Algebra.FinitePresentation (MvPolynomial (ULift.{u} (Fin m)) k)
      Γ(X, X.basicOpen g) := Algebra.FinitePresentation.of_finiteType.mp inferInstance
  have : Algebra.Etale (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, X.basicOpen g) := by
    constructor <;> infer_instance
  have hC : ∀ a : k, (MvPolynomial.eval₂Hom
      ((algebraMap Γ(X, U₀) Γ(X, X.basicOpen g)).comp (algebraMap k Γ(X, U₀)))
      (fun j : ULift.{u} (Fin m) => algebraMap Γ(X, U₀) Γ(X, X.basicOpen g) (w j)))
        (MvPolynomial.C a) = sectionsAlgebraMap k p (X.basicOpen g) a := by
    intro a
    rw [MvPolynomial.eval₂Hom_C]
    exact sectionsAlgebraMap_restrict_apply k p (X.basicOpen_le g) a
  have hX : ∀ i : ULift.{u} (Fin m), (MvPolynomial.eval₂Hom
      ((algebraMap Γ(X, U₀) Γ(X, X.basicOpen g)).comp (algebraMap k Γ(X, U₀)))
      (fun j : ULift.{u} (Fin m) => algebraMap Γ(X, U₀) Γ(X, X.basicOpen g) (w j)))
        (MvPolynomial.X i) = algebraMap Γ(X, U₀) Γ(X, X.basicOpen g) (w i) :=
    fun i => MvPolynomial.eval₂Hom_X' _ _ i
  have hf : (MvPolynomial.eval₂Hom
      ((algebraMap Γ(X, U₀) Γ(X, X.basicOpen g)).comp (algebraMap k Γ(X, U₀)))
      (fun j : ULift.{u} (Fin m) =>
        algebraMap Γ(X, U₀) Γ(X, X.basicOpen g) (w j))).Etale :=
    ‹Algebra.Etale (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, X.basicOpen g)›
  obtain ⟨c', hc'⟩ := exists_etaleChart_coord_eq p (hU₀.basicOpen g)
    (fun i : ULift.{u} (Fin m) => algebraMap Γ(X, U₀) Γ(X, X.basicOpen g) (w i))
    (MvPolynomial.eval₂Hom
      ((algebraMap Γ(X, U₀) Γ(X, X.basicOpen g)).comp (algebraMap k Γ(X, U₀)))
      (fun j : ULift.{u} (Fin m) => algebraMap Γ(X, U₀) Γ(X, X.basicOpen g) (w j)))
    hC hX hf
  refine ⟨X.basicOpen g, hU₀.basicOpen g, m, c', T.image ULift.down, hxU, ?_⟩
  have hmap : Ideal.map (algebraMap Γ(X, U₀) Γ(X, X.basicOpen g)) (Z.ideal ⟨U₀, hU₀⟩)
      = Z.ideal ⟨X.basicOpen g, hU₀.basicOpen g⟩ := Z.map_ideal_basicOpen ⟨U₀, hU₀⟩ g
  have htrans : Ideal.map (algebraMap Γ(X, U₀) Γ(X, X.basicOpen g))
        (Ideal.span (w '' (↑T : Set (ULift.{u} (Fin m)))))
      = Ideal.map (algebraMap Γ(X, U₀) Γ(X, X.basicOpen g)) (Z.ideal ⟨U₀, hU₀⟩) := by
    rw [map_algebraMap_eq_map_map_of_algEquiv e, map_algebraMap_eq_map_map_of_algEquiv e, hspanmap]
  have hSset : ((T.image ULift.down : Finset (Fin m)) : Set (Fin m))
      = ULift.down '' (↑T : Set (ULift.{u} (Fin m))) := Finset.coe_image
  have himg : (fun i : ULift.{u} (Fin m) => algebraMap Γ(X, U₀) Γ(X, X.basicOpen g) (w i))
      = c'.coord ∘ ULift.down := by
    funext i
    show algebraMap Γ(X, U₀) Γ(X, X.basicOpen g) (w i) = c'.coord i.down
    rw [hc' i.down]
  rw [← hmap, ← htrans, Ideal.map_span]
  refine congrArg Ideal.span ?_
  rw [Set.image_image, hSset, ← Set.image_comp]
  exact congrArg (fun h : ULift.{u} (Fin m) → Γ(X, X.basicOpen g) =>
    h '' (↑T : Set (ULift.{u} (Fin m)))) himg

theorem exists_chart_restrictIdeal_eq_coordIdeal {X : Scheme.{u}} {k : Type u} [Field k]
    [CharZero k] (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (Z : X.IdealSheafData) [AlgebraicGeometry.Smooth (Z.subschemeι ≫ p)] (x : X)
    (hx : x ∈ Z.support) :
    ∃ (U : X.Opens) (m : ℕ) (c : EtaleChart p U m) (S : Finset (Fin m)),
      x ∈ U ∧ IsAffineOpen U ∧ restrictIdeal Z U = c.coordIdeal S := by
  obtain ⟨U, hU, m, c, S, hxU, hspan⟩ := exists_chart_ideal_eq_span_coord p Z x hx
  exact ⟨U, m, c, S, hxU, hU, restrictIdeal_eq_coordIdeal_of_ideal_eq_span hU c Z S hspan⟩

theorem hasStrictNormalCrossingsWith_nil_of_smooth {X : Scheme.{u}} {k : Type u} [Field k] [CharZero k]
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p] (Z : X.IdealSheafData)
    [AlgebraicGeometry.Smooth (Z.subschemeι ≫ p)] :
    HasStrictNormalCrossingsWith p Z [] := by
  unfold HasStrictNormalCrossingsWith
  intro x hx
  obtain ⟨U, m, c, S, hxU, hU, hres⟩ := exists_chart_restrictIdeal_eq_coordIdeal p Z x hx
  refine ⟨U, hxU, m, c, fun _ => none, S, ?_, ?_, ?_, hres⟩
  · intro i hi
    simp at hi
  · intro i hi
    simp at hi
  · intro i hi
    simp at hi

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothCenterChart =====
