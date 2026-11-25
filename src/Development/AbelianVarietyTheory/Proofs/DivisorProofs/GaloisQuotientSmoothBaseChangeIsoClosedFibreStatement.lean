module

public import Mathlib.RingTheory.Ideal.Quotient.Operations
public import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs
public import Mathlib.RingTheory.Noetherian.Defs
public import Mathlib.RingTheory.TensorProduct.Maps
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Over
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Mathlib.RingTheory.Finiteness.Ideal
public import Mathlib.RingTheory.Ideal.GoingUp
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp
public import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact
public import Mathlib.RingTheory.Smooth.Basic
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsSmoothAtOfSmoothModIdealPowers
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisTransitiveOnFibresFlatBaseChange
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientAffineOpenSpecInvariantsStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCocycleUnit
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantsOfTrivialOnThickeningsStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Topology.Sheaves.Presheaf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.GenericIsoExtendsSemiAbelianDvrInducingFormal
import Mathlib.Tactic.Lemma
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.RingTheory.TotallySplit

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCompatibleMapsModPowMaximalIdealBase, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineOpenSmoothSchemeIsSpecSmoothAlgebra, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorProductSurjectiveKerOfAffinePullback, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningOpenImmersionPullbackSquare, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningPreimageEqClosedImmersionPreimage, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantMapsAffineOpenSmoothModel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothAwayOfQuotientPowEquiv, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisDescentOpenInvariantSubscheme, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoBaseChangeOverBasicOpenOfTensorBijective, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientSmoothBaseChangeIsoClosedFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientSmoothBaseChangeIsoClosedFibreStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCompatibleMapsModPowMaximalIdealBase =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCompatibleMapsModPowMaximalIdealBase", "h": "module\n\npublic import Mathlib.RingTheory.Ideal.Quotient.Operations\npublic import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs\npublic import Mathlib.RingTheory.Noetherian.Defs\npublic import Mathlib.RingTheory.TensorProduct.Maps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Mathlib.RingTheory.Finiteness.Ideal\npublic import Mathlib.RingTheory.Ideal.GoingUp\nimport Mathlib.Topology.Sheaves.Presheaf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory

theorem exists_maximalIdeal_pow_le_map_maximalIdeal (R : Type) [CommRing R] [IsLocalRing R]
    (R' : Type) [CommRing R'] [IsLocalRing R'] [IsNoetherianRing R'] [Algebra R R']
    [Module.Finite R R'] :
    ∃ N : ℕ, maximalIdeal R' ^ N ≤ (maximalIdeal R).map (algebraMap R R') := by
  have hrad : maximalIdeal R' ≤ ((maximalIdeal R).map (algebraMap R R')).radical := by
    rw [Ideal.radical_eq_sInf]
    refine le_sInf ?_
    rintro P ⟨hIP, hP⟩
    haveI := hP
    have hc : P.comap (algebraMap R R') = maximalIdeal R := by
      apply le_antisymm
      · exact IsLocalRing.le_maximalIdeal (Ideal.IsPrime.comap (algebraMap R R')).ne_top
      · exact Ideal.map_le_iff_le_comap.1 hIP
    have hmax : P.IsMaximal :=
      Ideal.isMaximal_of_isIntegral_of_isMaximal_under (R := R) P (by
        change (P.comap (algebraMap R R')).IsMaximal
        rw [hc]; infer_instance)
    exact (IsLocalRing.eq_maximalIdeal hmax).ge
  obtain ⟨n, hn⟩ := Ideal.exists_radical_pow_le_of_fg _
    (IsNoetherian.noetherian ((maximalIdeal R).map (algebraMap R R')).radical)
  exact ⟨n, (Ideal.pow_right_mono hrad n).trans hn⟩

theorem exists_compatible_maps_mod_pow_maximalIdeal_base : ∀ (R : Type) [CommRing R] [IsLocalRing R] (R' : Type) [CommRing R'] [IsLocalRing R'] [IsNoetherianRing R'] [Algebra R R'] [Module.Finite R R'] (C' : Type) [CommRing C'] [Algebra R C'] [Algebra R' C'] [IsScalarTower R R' C'] (Γ : Type) (actC : Γ → (C' ≃ₐ[R] C')) (O : Type) [CommRing O] [Algebra R O] (i' : ∀ e : ℕ, O →ₐ[R] C' ⧸ (maximalIdeal R' ^ (e + 1)).map (algebraMap R' C')), (∀ e x y, Ideal.Quotient.mk _ y = i' (e + 1) x → Ideal.Quotient.mk _ y = i' e x) → (∀ e σ x y, Ideal.Quotient.mk _ y = i' e x → Ideal.Quotient.mk _ (actC σ y) = i' e x) → (∀ e, Function.Surjective (Algebra.TensorProduct.lift (i' e) ((Ideal.Quotient.mkₐ R _).comp (IsScalarTower.toAlgHom R R' C')) fun _ _ => Commute.all _ _) ∧ RingHom.ker (Algebra.TensorProduct.lift (i' e) ((Ideal.Quotient.mkₐ R _).comp (IsScalarTower.toAlgHom R R' C')) fun _ _ => Commute.all _ _) = (maximalIdeal R' ^ (e + 1)).map (Algebra.TensorProduct.includeRight : R' →ₐ[R] TensorProduct R O R')) → ∃ i : ∀ e : ℕ, O →ₐ[R] C' ⧸ (maximalIdeal R ^ (e + 1)).map (algebraMap R C'), (∀ e x y, Ideal.Quotient.mk _ y = i (e + 1) x → Ideal.Quotient.mk _ y = i e x) ∧ (∀ e σ x y, Ideal.Quotient.mk _ y = i e x → Ideal.Quotient.mk _ (actC σ y) = i e x) ∧ (∀ e, Function.Surjective (Algebra.TensorProduct.lift (i e) ((Ideal.Quotient.mkₐ R _).comp (IsScalarTower.toAlgHom R R' C')) fun _ _ => Commute.all _ _) ∧ RingHom.ker (Algebra.TensorProduct.lift (i e) ((Ideal.Quotient.mkₐ R _).comp (IsScalarTower.toAlgHom R R' C')) fun _ _ => Commute.all _ _) = (maximalIdeal R ^ (e + 1)).map (algebraMap R (TensorProduct R O R'))) := by
  intro R _ _ R' _ _ _ _ _ C' _ _ _ _ Γ actC O _ _ i' hcomp hinv hsk
  obtain ⟨N, hN⟩ := exists_maximalIdeal_pow_le_map_maximalIdeal R R'
  have hR' : ∀ e : ℕ, maximalIdeal R' ^ (N * (e + 1) + 1) ≤
      (maximalIdeal R ^ (e + 1)).map (algebraMap R R') := by
    intro e
    calc maximalIdeal R' ^ (N * (e + 1) + 1) ≤ maximalIdeal R' ^ (N * (e + 1)) :=
          Ideal.pow_le_pow_right (Nat.le_succ _)
      _ = (maximalIdeal R' ^ N) ^ (e + 1) := pow_mul _ _ _
      _ ≤ ((maximalIdeal R).map (algebraMap R R')) ^ (e + 1) := Ideal.pow_right_mono hN _
      _ = _ := (Ideal.map_pow _ _ _).symm
  have hle : ∀ e : ℕ, (maximalIdeal R' ^ (N * (e + 1) + 1)).map (algebraMap R' C') ≤
      (maximalIdeal R ^ (e + 1)).map (algebraMap R C') := by
    intro e
    rw [Ideal.map_le_iff_le_comap]
    refine (hR' e).trans ?_
    rw [Ideal.map_le_iff_le_comap]
    intro r hr
    simp only [Ideal.mem_comap, ← IsScalarTower.algebraMap_apply]
    exact Ideal.mem_map_of_mem _ hr
  have hJ : ∀ e : ℕ, (maximalIdeal R ^ (e + 1 + 1)).map (algebraMap R C') ≤
      (maximalIdeal R ^ (e + 1)).map (algebraMap R C') :=
    fun e => Ideal.map_mono (Ideal.pow_le_pow_right (Nat.le_succ _))
  have hiter : ∀ a b : ℕ, a ≤ b → ∀ x y,
      Ideal.Quotient.mk ((maximalIdeal R' ^ (b + 1)).map (algebraMap R' C')) y = i' b x →
      Ideal.Quotient.mk ((maximalIdeal R' ^ (a + 1)).map (algebraMap R' C')) y = i' a x := by
    intro a b hab
    induction b, hab using Nat.le_induction with
    | base => exact fun x y h => h
    | succ b _ ih => exact fun x y h => ih x y (hcomp b x y h)
  let i : ∀ e : ℕ, O →ₐ[R] C' ⧸ (maximalIdeal R ^ (e + 1)).map (algebraMap R C') :=
    fun e => (Ideal.Quotient.factorₐ R (hle e)).comp (i' (N * (e + 1)))
  have hi : ∀ e x, i e x = Ideal.Quotient.factorₐ R (hle e) (i' (N * (e + 1)) x) :=
    fun _ _ => rfl
  have hlift : ∀ e x y, Ideal.Quotient.mk ((maximalIdeal R ^ (e + 1)).map (algebraMap R C')) y
      = i e x → ∃ y', Ideal.Quotient.mk ((maximalIdeal R' ^ (N * (e + 1) + 1)).map
        (algebraMap R' C')) y' = i' (N * (e + 1)) x ∧
        y - y' ∈ (maximalIdeal R ^ (e + 1)).map (algebraMap R C') := by
    intro e x y h
    obtain ⟨y', hy'⟩ := Ideal.Quotient.mk_surjective (i' (N * (e + 1)) x)
    refine ⟨y', hy', ?_⟩
    rw [← Ideal.Quotient.eq, h, hi, ← hy', Ideal.Quotient.factorₐ_apply_mk]
  refine ⟨i, ?_, ?_, ?_⟩
  · intro e x y h
    obtain ⟨y', hy', hd⟩ := hlift (e + 1) x y h
    have h2 := hiter (N * (e + 1)) (N * (e + 1 + 1)) (Nat.mul_le_mul_left _ (Nat.le_succ _)) x y' hy'
    rw [Ideal.Quotient.eq.2 (hJ e hd), hi, ← h2, Ideal.Quotient.factorₐ_apply_mk]
  · intro e σ x y h
    obtain ⟨y', hy', hd⟩ := hlift e x y h
    have hst : (maximalIdeal R ^ (e + 1)).map (algebraMap R C') ≤
        ((maximalIdeal R ^ (e + 1)).map (algebraMap R C')).comap (actC σ) := by
      rw [Ideal.map_le_iff_le_comap]
      intro r hr
      simp only [Ideal.mem_comap, AlgEquiv.commutes]
      exact Ideal.mem_map_of_mem _ hr
    have hσ : actC σ y - actC σ y' ∈ (maximalIdeal R ^ (e + 1)).map (algebraMap R C') := by
      rw [← map_sub]; exact hst hd
    rw [Ideal.Quotient.eq.2 hσ, hi, ← hinv (N * (e + 1)) σ x y' hy', Ideal.Quotient.factorₐ_apply_mk]
  · intro e
    obtain ⟨hsur, hker⟩ := hsk (N * (e + 1))
    set L' := Algebra.TensorProduct.lift (i' (N * (e + 1)))
      ((Ideal.Quotient.mkₐ R _).comp (IsScalarTower.toAlgHom R R' C')) fun _ _ => Commute.all _ _
      with hL'
    have hfac : Algebra.TensorProduct.lift (i e)
        ((Ideal.Quotient.mkₐ R _).comp (IsScalarTower.toAlgHom R R' C')) (fun _ _ => Commute.all _ _)
        = (Ideal.Quotient.factorₐ R (hle e)).comp L' := by
      apply Algebra.TensorProduct.ext'
      intro a b
      rw [AlgHom.comp_apply, hL', Algebra.TensorProduct.lift_tmul, Algebra.TensorProduct.lift_tmul,
        map_mul, hi]
      congr 1
    rw [hfac]
    refine ⟨?_, ?_⟩
    · intro z
      obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective z
      obtain ⟨t, ht⟩ := hsur (Ideal.Quotient.mk _ c)
      exact ⟨t, by simp [ht]⟩
    apply le_antisymm
    · intro t ht
      rw [RingHom.mem_ker, AlgHom.comp_apply] at ht
      obtain ⟨c, hc⟩ := Ideal.Quotient.mk_surjective (L' t)
      have hcJ : c ∈ (maximalIdeal R ^ (e + 1)).map (algebraMap R C') := by
        rw [← Ideal.Quotient.eq_zero_iff_mem, ← Ideal.Quotient.factorₐ_apply_mk R (hle e), hc]
        exact ht
      have hsub : (maximalIdeal R ^ (e + 1)).map (algebraMap R C') ≤
          (((maximalIdeal R ^ (e + 1)).map (algebraMap R (TensorProduct R O R'))).map L').comap
            (Ideal.Quotient.mk ((maximalIdeal R' ^ (N * (e + 1) + 1)).map (algebraMap R' C'))) := by
        rw [Ideal.map_le_iff_le_comap]
        intro r hr
        simp only [Ideal.mem_comap, Ideal.Quotient.mk_algebraMap]
        rw [← AlgHom.commutes L' r]
        exact Ideal.mem_map_of_mem _ (Ideal.mem_map_of_mem _ hr)
      have hmem := hsub hcJ
      rw [Ideal.mem_comap, hc] at hmem
      obtain ⟨t', ht'K, ht'⟩ := (Ideal.mem_map_iff_of_surjective L' hsur).1 hmem
      have hdiff : t - t' ∈ RingHom.ker L' := by
        rw [RingHom.mem_ker, map_sub, ht', sub_self]
      rw [hker] at hdiff
      have hKK : (maximalIdeal R' ^ (N * (e + 1) + 1)).map
          (Algebra.TensorProduct.includeRight : R' →ₐ[R] TensorProduct R O R') ≤
          (maximalIdeal R ^ (e + 1)).map (algebraMap R (TensorProduct R O R')) := by
        rw [Ideal.map_le_iff_le_comap]
        refine (hR' e).trans ?_
        rw [Ideal.map_le_iff_le_comap]
        intro r hr
        simp only [Ideal.mem_comap, AlgHom.commutes]
        exact Ideal.mem_map_of_mem _ hr
      simpa using Ideal.add_mem _ (hKK hdiff) ht'K
    · rw [Ideal.map_le_iff_le_comap]
      intro r hr
      simp only [Ideal.mem_comap, RingHom.mem_ker, AlgHom.commutes]
      rw [← Ideal.Quotient.mk_algebraMap, Ideal.Quotient.eq_zero_iff_mem]
      exact Ideal.mem_map_of_mem _ hr

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCompatibleMapsModPowMaximalIdealBase =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineOpenSmoothSchemeIsSpecSmoothAlgebra =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineOpenSmoothSchemeIsSpecSmoothAlgebra", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem affineChart_smooth : ∀ (R : Type) [CommRing R] (Y : Over (Sp R)), Smooth Y.hom → ∀ (W : Y.left.Opens), IsAffineOpen W → ∃ (O : Type) (_ : CommRing O) (_ : Algebra R O) (k : Sp O ⟶ Y.left) (_ : IsOpenImmersion k), k.opensRange = W ∧ k ≫ Y.hom = spMap (algebraMap R O) ∧ Algebra.Smooth R O := by
  intro R _ Y hY W hW
  let alg : R →+* Γ(Y.left, W) :=
    (Y.hom.appLE ⊤ W (fun _ _ => trivial)).hom.comp (Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom
  letI : Algebra R Γ(Y.left, W) := alg.toAlgebra
  have s₀ : hW.fromSpec ≫ Y.hom = spMap alg := by
    rw [← IsAffineOpen.SpecMap_appLE_fromSpec Y.hom (isAffineOpen_top _) hW (fun _ _ => trivial),
      IsAffineOpen.fromSpec_top, Scheme.isoSpec_Spec_inv, ← Spec.map_comp]; rfl
  have h1 : RingHom.Smooth (Y.hom.appLE ⊤ W (fun _ _ => trivial)).hom :=
    HasRingHomProperty.appLE @Smooth Y.hom hY ⟨⊤, isAffineOpen_top _⟩ ⟨W, hW⟩ (fun _ _ => trivial)
  have h2 : RingHom.Smooth alg :=
    RingHom.Smooth.respectsIso.2 _ (Scheme.ΓSpecIso (CommRingCat.of R)).symm.commRingCatIsoToRingEquiv h1
  exact ⟨Γ(Y.left, W), inferInstance, inferInstance, hW.fromSpec, inferInstance, hW.opensRange_fromSpec, s₀, h2⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineOpenSmoothSchemeIsSpecSmoothAlgebra =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorProductSurjectiveKerOfAffinePullback =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorProductSurjectiveKerOfAffinePullback", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem tensor_of_pullback_surj_ker : ∀ {R O R' Q : Type} [CommRing R] [CommRing O] [CommRing R'] [CommRing Q] [Algebra R O] [Algebra R R'] [Algebra R Q] (I : Ideal R') (a : O →ₐ[R] Q) (b : R' ⧸ I →ₐ[R] Q), IsPullback (spMap (a : O →+* Q)) (spMap (b : R' ⧸ I →+* Q)) (spMap (algebraMap R O)) (spMap (algebraMap R (R' ⧸ I))) → Function.Surjective (Algebra.TensorProduct.lift a (b.comp (Ideal.Quotient.mkₐ R I)) fun _ _ => Commute.all _ _) ∧ RingHom.ker (Algebra.TensorProduct.lift a (b.comp (Ideal.Quotient.mkₐ R I)) fun _ _ => Commute.all _ _) = I.map (Algebra.TensorProduct.includeRight : R' →ₐ[R] TensorProduct R O R') := by
  intro R O R' Q _ _ _ _ _ _ _ I a b hP
  set t : TensorProduct R O (R' ⧸ I) →ₐ[R] Q := Algebra.TensorProduct.lift a b fun _ _ => Commute.all _ _ with ht
  have H0 := isPullback_SpecMap_of_isPushout _ _ _ _ (CommRingCat.isPushout_tensorProduct R O (R' ⧸ I))
  have e1 : Spec.map (CommRingCat.ofHom (t : TensorProduct R O (R' ⧸ I) →+* Q)) ≫
      Spec.map (CommRingCat.ofHom (S := TensorProduct R O (R' ⧸ I)) Algebra.TensorProduct.includeLeftRingHom) =
      spMap (a : O →+* Q) := by
    rw [← Spec.map_comp]; congr 1; ext x; simp [ht]
  have e2 : Spec.map (CommRingCat.ofHom (t : TensorProduct R O (R' ⧸ I) →+* Q)) ≫
      Spec.map (CommRingCat.ofHom (S := TensorProduct R O (R' ⧸ I)) Algebra.TensorProduct.includeRight.toRingHom) =
      spMap (b : R' ⧸ I →+* Q) := by
    rw [← Spec.map_comp]; congr 1; ext x; simp [ht]
  have hiso : IsIso (Spec.map (CommRingCat.ofHom (t : TensorProduct R O (R' ⧸ I) →+* Q))) := by
    have : Spec.map (CommRingCat.ofHom (t : TensorProduct R O (R' ⧸ I) →+* Q)) = (hP.isoIsPullback _ _ H0).hom := by
      apply H0.hom_ext
      · rw [e1, IsPullback.isoIsPullback_hom_fst]
      · rw [e2, IsPullback.isoIsPullback_hom_snd]
    rw [this]; infer_instance
  rw [isIso_SpecMap_iff] at hiso
  have hbij : Function.Bijective t := hiso
  have hcomp : (Algebra.TensorProduct.lift a (b.comp (Ideal.Quotient.mkₐ R I)) fun _ _ => Commute.all _ _) =
      t.comp (Algebra.TensorProduct.map (AlgHom.id R O) (Ideal.Quotient.mkₐ R I)) := by
    apply Algebra.TensorProduct.ext'
    intro x y
    simp [ht]
  have hmk : Function.Surjective (Ideal.Quotient.mkₐ R I) := Ideal.Quotient.mkₐ_surjective R I
  rw [hcomp]
  refine ⟨hbij.2.comp (LinearMap.lTensor_surjective O hmk), ?_⟩
  have : RingHom.ker (t.comp (Algebra.TensorProduct.map (AlgHom.id R O) (Ideal.Quotient.mkₐ R I))) =
      RingHom.ker (Algebra.TensorProduct.map (AlgHom.id R O) (Ideal.Quotient.mkₐ R I)) := by
    ext x
    simp only [RingHom.mem_ker, AlgHom.comp_apply]
    constructor
    · intro h; exact hbij.1 (by rw [h, map_zero])
    · intro h; rw [h, map_zero]
  rw [this, Algebra.TensorProduct.lTensor_ker _ hmk]
  congr 1
  ext x
  simp [Ideal.Quotient.eq_zero_iff_mem]

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorProductSurjectiveKerOfAffinePullback =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningOpenImmersionPullbackSquare =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningOpenImmersionPullbackSquare", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.ThickChart

theorem isPushout_quotMap (R C : Type) [CommRing R] [CommRing C] [Algebra R C] (K : Ideal R) :
    IsPushout (CommRingCat.ofHom (algebraMap R C)) (CommRingCat.ofHom (Ideal.Quotient.mk K))
      (CommRingCat.ofHom (Ideal.Quotient.mk (K.map (algebraMap R C))))
      (CommRingCat.ofHom (Ideal.quotientMap (K.map (algebraMap R C)) (algebraMap R C) Ideal.le_comap_map)) := by
  refine ⟨⟨by ext x; rfl⟩, ⟨PushoutCocone.IsColimit.mk _ (fun s => CommRingCat.ofHom
    (Ideal.Quotient.lift (K.map (algebraMap R C)) s.inl.hom ?_)) ?_ ?_ ?_⟩⟩
  · intro a ha
    have : K.map (algebraMap R C) ≤ RingHom.ker s.inl.hom := by
      rw [Ideal.map_le_iff_le_comap]
      intro x hx
      have h := congrArg (fun f => f.hom x) s.condition
      simp only [CommRingCat.hom_comp, CommRingCat.hom_ofHom, RingHom.comp_apply] at h
      rw [Ideal.mem_comap, RingHom.mem_ker, h, Ideal.Quotient.eq_zero_iff_mem.2 hx, map_zero]
    exact this ha
  · intro s
    ext x
    rfl
  · intro s
    ext x
    exact congrArg (fun f => f.hom x) s.condition
  · intro s m h1 _
    ext x
    exact congrArg (fun f => f.hom x) h1

theorem isPullback_quotMap (R C : Type) [CommRing R] [CommRing C] [Algebra R C] (K : Ideal R) :
    IsPullback (spMap (Ideal.Quotient.mk (K.map (algebraMap R C))))
      (spMap (Ideal.quotientMap (K.map (algebraMap R C)) (algebraMap R C) Ideal.le_comap_map))
      (spMap (algebraMap R C)) (spMap (Ideal.Quotient.mk K)) :=
  isPullback_SpecMap_of_isPushout _ _ _ _ (isPushout_quotMap R C K)

theorem thick_chart : ∀ (R' : Type) [CommRing R'] (I : Ideal R') (G' : Over (Sp R')) (C' : Type) [CommRing C'] [Algebra R' C'] (j : Sp C' ⟶ G'.left) [IsOpenImmersion j], j ≫ G'.hom = spMap (algebraMap R' C') → ∀ (e : ℕ), ∃ (je : Sp (C' ⧸ (I ^ (e + 1)).map (algebraMap R' C')) ⟶ (thickObj R' I e G').left) (_ : IsOpenImmersion je), je.opensRange = (pullback.fst G'.hom (thick R' I e)) ⁻¹ᵁ j.opensRange ∧ IsPullback je (spMap (Ideal.Quotient.mk ((I ^ (e + 1)).map (algebraMap R' C')))) (pullback.fst G'.hom (thick R' I e)) j ∧ je ≫ (thickObj R' I e G').hom = spMap (Ideal.quotientMap ((I ^ (e + 1)).map (algebraMap R' C')) (algebraMap R' C') Ideal.le_comap_map) := by
  intro R' _ I G' C' _ _ j _ hj e
  have outer := isPullback_quotMap R' C' (I ^ (e + 1))
  have right : IsPullback (pullback.snd G'.hom (thick R' I e)) (pullback.fst G'.hom (thick R' I e))
      (thick R' I e) G'.hom := (IsPullback.of_hasPullback G'.hom (thick R' I e)).flip
  have hw : (spMap (Ideal.Quotient.mk ((I ^ (e + 1)).map (algebraMap R' C'))) ≫ j) ≫ G'.hom =
      spMap (Ideal.quotientMap ((I ^ (e + 1)).map (algebraMap R' C')) (algebraMap R' C') Ideal.le_comap_map) ≫
        thick R' I e := by
    rw [Category.assoc, hj]
    exact outer.w
  let je := pullback.lift _ _ hw
  have hje1 : je ≫ pullback.fst G'.hom (thick R' I e) = spMap (Ideal.Quotient.mk ((I ^ (e + 1)).map (algebraMap R' C'))) ≫ j :=
    pullback.lift_fst _ _ _
  have hje2 : je ≫ pullback.snd G'.hom (thick R' I e) =
      spMap (Ideal.quotientMap ((I ^ (e + 1)).map (algebraMap R' C')) (algebraMap R' C') Ideal.le_comap_map) :=
    pullback.lift_snd _ _ _
  have big : IsPullback (je ≫ pullback.snd G'.hom (thick R' I e))
      (spMap (Ideal.Quotient.mk ((I ^ (e + 1)).map (algebraMap R' C')))) (thick R' I e) (j ≫ G'.hom) := by
    rw [hje2, hj]
    exact outer.flip
  have sq : IsPullback je (spMap (Ideal.Quotient.mk ((I ^ (e + 1)).map (algebraMap R' C'))))
      (pullback.fst G'.hom (thick R' I e)) j := IsPullback.of_right big hje1 right
  haveI hoi : IsOpenImmersion je := MorphismProperty.of_isPullback (P := @IsOpenImmersion) sq.flip inferInstance
  refine ⟨je, hoi, ?_, sq, hje2⟩
  have h1 : sq.isoPullback.hom ≫ pullback.fst (pullback.fst G'.hom (thick R' I e)) j = je := sq.isoPullback_hom_fst
  have h2 : Set.range je = Set.range (pullback.fst (pullback.fst G'.hom (thick R' I e)) j) := by
    rw [← h1, Scheme.Hom.comp_base, TopCat.coe_comp, Set.range_comp,
      Set.range_eq_univ.mpr sq.isoPullback.hom.surjective, Set.image_univ]
  apply TopologicalSpace.Opens.ext
  rw [Scheme.Hom.coe_opensRange, h2, IsOpenImmersion.range_pullbackFst]

end GlobalTheory.Mum.ThickChart
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningOpenImmersionPullbackSquare =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningPreimageEqClosedImmersionPreimage =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningPreimageEqClosedImmersionPreimage", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.GenericIsoExtendsSemiAbelianDvrInducingFormal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.ThickPre

lemma thickTrans_surj (R' : Type) [CommRing R'] (I : Ideal R') (e : ℕ)
    (t : Spec (CommRingCat.of (R' ⧸ I ^ (e + 1 + 1)))) : ∃ t', (thickTrans R' I e) t' = t := by
  have hs : Function.Surjective (Ideal.Quotient.factor (Ideal.pow_le_pow_right (Nat.le_succ (e + 1))) :
      R' ⧸ I ^ (e + 1 + 1) →+* R' ⧸ I ^ (e + 1)) := Ideal.Quotient.factor_surjective _
  have hr := _root_.range_comap_of_surjective _ _ hs
  have ht : (t : PrimeSpectrum _) ∈ Set.range (PrimeSpectrum.comap
      (Ideal.Quotient.factor (Ideal.pow_le_pow_right (Nat.le_succ (e + 1))) :
        R' ⧸ I ^ (e + 1 + 1) →+* R' ⧸ I ^ (e + 1))) := by
    rw [hr]
    intro x hx
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective x
    have ha : a ∈ I ^ (e + 1) := by
      rw [SetLike.mem_coe, RingHom.mem_ker, Ideal.Quotient.factor_mk, Ideal.Quotient.eq_zero_iff_mem] at hx
      exact hx
    have h2 : (Ideal.Quotient.mk (I ^ (e + 1 + 1)) a) ^ 2 = 0 := by
      rw [← map_pow, Ideal.Quotient.eq_zero_iff_mem]
      have : a ^ 2 ∈ I ^ ((e + 1) * 2) := by rw [pow_mul]; exact Ideal.pow_mem_pow ha 2
      exact Ideal.pow_le_pow_right (by omega) this
    exact t.isPrime.mem_of_pow_mem 2 (by rw [h2]; exact Ideal.zero_mem _)
  obtain ⟨t', ht'⟩ := ht
  exact ⟨t', ht'⟩

lemma thickMap_surj (R' : Type) [CommRing R'] (I : Ideal R') (e : ℕ) (G' : Over (Sp R')) :
    Function.Surjective (thickMap R' I e G') := by
  intro y
  obtain ⟨t', ht'⟩ := thickTrans_surj R' I e (pullback.snd G'.hom (thick R' I (e + 1)) y)
  have hc : G'.hom (pullback.fst G'.hom (thick R' I (e + 1)) y) = thick R' I e t' := by
    have h1 : G'.hom (pullback.fst G'.hom (thick R' I (e + 1)) y) =
        thick R' I (e + 1) (pullback.snd G'.hom (thick R' I (e + 1)) y) := by
      rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, pullback.condition]
    rw [h1, ← ht', ← Scheme.Hom.comp_apply, thickTrans_comp]
  obtain ⟨z, hz, -⟩ := Scheme.Pullback.exists_preimage_pullback _ _ hc
  refine ⟨z, (pullback.fst G'.hom (thick R' I (e + 1))).isClosedEmbedding.injective ?_⟩
  rw [← Scheme.Hom.comp_apply, thickMap, pullback.lift_fst, Category.comp_id, hz]

end GlobalTheory.Mum.ThickPre

theorem GlobalTheory.Mum.thick_preimage_eq (R' : Type) [CommRing R'] (I : Ideal R') (G' : Over (Sp R')) (Y : Scheme.{0})
    (φ : ∀ e : ℕ, (thickObj R' I e G').left ⟶ Y) (hφ : ∀ e, thickMap R' I e G' ≫ φ (e + 1) = φ e)
    (V : G'.left.Opens) (W : Y.Opens)
    (h0 : φ 0 ⁻¹ᵁ W = (pullback.fst G'.hom (thick R' I 0)) ⁻¹ᵁ V) :
    ∀ e, φ e ⁻¹ᵁ W = (pullback.fst G'.hom (thick R' I e)) ⁻¹ᵁ V := by
  intro e
  induction e with
  | zero => exact h0
  | succ e ih =>
    have h1 : thickMap R' I e G' ⁻¹ᵁ (φ (e + 1) ⁻¹ᵁ W) =
        thickMap R' I e G' ⁻¹ᵁ ((pullback.fst G'.hom (thick R' I (e + 1))) ⁻¹ᵁ V) := by
      rw [← Scheme.Hom.comp_preimage, ← Scheme.Hom.comp_preimage, hφ, ih, thickMap, pullback.lift_fst,
        Category.comp_id]
    ext y
    obtain ⟨x, rfl⟩ := GlobalTheory.Mum.ThickPre.thickMap_surj R' I e G' y
    have := congrArg (fun U : Scheme.Opens _ => x ∈ U) h1
    simpa using this
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningPreimageEqClosedImmersionPreimage =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantMapsAffineOpenSmoothModel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantMapsAffineOpenSmoothModel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineOpenSmoothSchemeIsSpecSmoothAlgebra\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TensorProductSurjectiveKerOfAffinePullback\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningOpenImmersionPullbackSquare\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningPreimageEqClosedImmersionPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem exists_invariant_maps_of_affine_open : ∀ (R : Type) [CommRing R] (R' : Type) [CommRing R'] [IsLocalRing R'] [Algebra R R'] (G' : Over (Sp R')) (act : Gal (algebraMap R R') → (G'.left ⟶ G'.left)), ∀ (Y : Over (Sp R)) (φ : ∀ e : ℕ, (thickObj R' (maximalIdeal R') e G').left ⟶ Y.left), Smooth Y.hom → (∀ e, IsPullback (φ e) (thickObj R' (maximalIdeal R') e G').hom Y.hom (thick R' (maximalIdeal R') e ≫ spMap (algebraMap R R'))) → (∀ e, thickMap R' (maximalIdeal R') e G' ≫ φ (e + 1) = φ e) → (∀ e σ, ∃ h : (thickObj R' (maximalIdeal R') e G').left ⟶ (thickObj R' (maximalIdeal R') e G').left, h ≫ (pullback.fst G'.hom (thick R' (maximalIdeal R') e)) = (pullback.fst G'.hom (thick R' (maximalIdeal R') e)) ≫ act σ ∧ h ≫ φ e = φ e) → ∀ (C' : Type) [CommRing C'] [Algebra R C'] [Algebra R' C'] [IsScalarTower R R' C'] (actC : Gal (algebraMap R R') →* (C' ≃ₐ[R] C')) (j : Sp C' ⟶ G'.left) [IsOpenImmersion j], j ≫ G'.hom = spMap (algebraMap R' C') → (∀ σ, spMap (actC σ : C' →+* C') ≫ j = j ≫ act σ) → ∀ W : Y.left.Opens, IsAffineOpen W → φ 0 ⁻¹ᵁ W = (pullback.fst G'.hom (thick R' (maximalIdeal R') 0)) ⁻¹ᵁ j.opensRange → ∃ (O : Type) (_ : CommRing O) (_ : Algebra R O) (i : ∀ e : ℕ, O →ₐ[R] C' ⧸ (maximalIdeal R' ^ (e + 1)).map (algebraMap R' C')), Algebra.Smooth R O ∧ (∀ e x y, Ideal.Quotient.mk _ y = i (e + 1) x → Ideal.Quotient.mk _ y = i e x) ∧ (∀ e σ x y, Ideal.Quotient.mk _ y = i e x → Ideal.Quotient.mk _ (actC σ y) = i e x) ∧ (∀ e, Function.Surjective (Algebra.TensorProduct.lift (i e) ((Ideal.Quotient.mkₐ R _).comp (IsScalarTower.toAlgHom R R' C')) fun _ _ => Commute.all _ _) ∧ RingHom.ker (Algebra.TensorProduct.lift (i e) ((Ideal.Quotient.mkₐ R _).comp (IsScalarTower.toAlgHom R R' C')) fun _ _ => Commute.all _ _) = (maximalIdeal R' ^ (e + 1)).map (Algebra.TensorProduct.includeRight : R' →ₐ[R] TensorProduct R O R')) := by
  intro R _ R' _ _ _ G' act Y φ hsm hpb hcomp hact C' _ _ _ _ actC j _ hj hjσ W hW h0
  obtain ⟨O, _, _, k, _, hkW, hkY, hOsm⟩ := _root_.GlobalTheory.Mum.affineChart_smooth R Y hsm W hW
  have hopen := _root_.GlobalTheory.Mum.thick_preimage_eq R' (maximalIdeal R') G' Y.left φ hcomp j.opensRange W h0
  have hB := fun e => _root_.GlobalTheory.Mum.ThickChart.thick_chart R' (maximalIdeal R') G' C' j hj e
  choose je hjeo hjer hjep hjeh using hB
  have hi : ∀ e, ∃ i : O →ₐ[R] C' ⧸ (maximalIdeal R' ^ (e + 1)).map (algebraMap R' C'),
      spMap (i : O →+* _) ≫ k = je e ≫ φ e := by
    intro e
    have hr : Set.range (je e ≫ φ e) ⊆ Set.range k := by
      rintro _ ⟨z, rfl⟩
      have h1 : je e z ∈ (je e).opensRange := ⟨z, rfl⟩
      rw [hjer, ← hopen, ← hkW] at h1
      exact h1
    obtain ⟨f, hf⟩ := Spec.map_surjective (IsOpenImmersion.lift k (je e ≫ φ e) hr)
    have hf' : Spec.map f ≫ k = je e ≫ φ e := by rw [hf]; exact IsOpenImmersion.lift_fac _ _ _
    have hc : CommRingCat.ofHom (algebraMap R O) ≫ f =
        CommRingCat.ofHom (algebraMap R (C' ⧸ (maximalIdeal R' ^ (e + 1)).map (algebraMap R' C'))) := by
      apply Spec.map_injective
      rw [Spec.map_comp]
      change Spec.map f ≫ spMap (algebraMap R O) = _
      rw [← hkY, ← Category.assoc, hf', Category.assoc, (hpb e).w, ← Category.assoc, hjeh]
      simp only [thick, spMap, ← Spec.map_comp]
      congr 1
      ext r
      simp
      exact (IsScalarTower.algebraMap_apply _ _ _ _).symm
    refine ⟨{ f.hom with commutes' := fun r => congrArg (fun g => g.hom r) hc }, ?_⟩
    exact hf'
  choose i hi using hi
  refine ⟨O, inferInstance, inferInstance, i, hOsm, ?_, ?_, ?_⟩
  · intro e x y hxy
    have hle : (maximalIdeal R' ^ (e + 1 + 1)).map (algebraMap R' C') ≤
        (maximalIdeal R' ^ (e + 1)).map (algebraMap R' C') :=
      Ideal.map_mono (Ideal.pow_le_pow_right (Nat.le_succ _))
    have hsq : spMap (Ideal.Quotient.factor hle) ≫ je (e + 1) = je e ≫ thickMap R' (maximalIdeal R') e G' := by
      apply pullback.hom_ext
      · simp only [Category.assoc, thickMap, pullback.map, pullback.lift_fst, Category.comp_id]
        rw [(hjep (e + 1)).w, (hjep e).w, ← Category.assoc]
        congr 1
        simp only [spMap, ← Spec.map_comp]
        congr 1
      · have h1 := hjeh (e + 1)
        have h2 := hjeh e
        simp only [thickObj, Over.pullback_obj_hom] at h1 h2
        simp only [Category.assoc, thickMap, pullback.map, pullback.lift_snd]
        rw [h1, ← Category.assoc, h2]
        simp only [spMap, thickTrans, ← Spec.map_comp, ← CommRingCat.ofHom_comp]
        congr 2
        ext z
        simp only [RingHom.coe_comp, Function.comp_apply, Ideal.quotientMap_mk, Ideal.Quotient.factor_mk]
    have hsp : spMap (i e : O →+* _) = spMap ((Ideal.Quotient.factor hle).comp (i (e + 1) : O →+* _)) := by
      rw [← cancel_mono k, hi, ← hcomp e, ← Category.assoc, ← hsq, Category.assoc, ← hi]
      simp only [spMap, CommRingCat.ofHom_comp, Spec.map_comp, Category.assoc]
    have hr := congrArg (fun g => g.hom x) (Spec.map_injective hsp)
    simp only [CommRingCat.hom_ofHom, RingHom.coe_comp, Function.comp_apply] at hr
    have hr' : i e x = Ideal.Quotient.factor hle (i (e + 1) x) := hr
    rw [hr', ← hxy, Ideal.Quotient.factor_mk]
  · intro e σ x y hxy
    obtain ⟨h, hh1, hh2⟩ := hact e σ
    have w : (je e ≫ h) ≫ pullback.fst G'.hom (thick R' (maximalIdeal R') e) =
        (spMap (Ideal.Quotient.mk ((maximalIdeal R' ^ (e + 1)).map (algebraMap R' C'))) ≫
          spMap (actC σ : C' →+* C')) ≫ j := by
      rw [Category.assoc, hh1, ← Category.assoc, (hjep e).w, Category.assoc, Category.assoc, hjσ]
    have hκ1 := (hjep e).lift_fst _ _ w
    have hκ2 := (hjep e).lift_snd _ _ w
    have hκi : (hjep e).lift _ _ w ≫ spMap (i e : O →+* _) = spMap (i e : O →+* _) := by
      rw [← cancel_mono k, Category.assoc, hi, ← Category.assoc, hκ1, Category.assoc, hh2]
    obtain ⟨κ', hκ'⟩ := Spec.map_surjective ((hjep e).lift _ _ w)
    rw [← hκ'] at hκ2 hκi
    simp only [spMap, ← Spec.map_comp] at hκ2 hκi
    have r1 := congrArg (fun g => g.hom y) (Spec.map_injective hκ2)
    have r2 := congrArg (fun g => g.hom x) (Spec.map_injective hκi)
    simp only [CommRingCat.hom_comp, CommRingCat.hom_ofHom, RingHom.coe_comp, Function.comp_apply] at r1 r2
    have r1' : κ'.hom (Ideal.Quotient.mk _ y) = Ideal.Quotient.mk _ (actC σ y) := r1
    have r2' : κ'.hom (i e x) = i e x := r2
    rw [← hxy] at r2' ⊢
    rw [← r1', r2']
  · intro e
    have hpbO : IsPullback (spMap (i e : O →+* _)) (je e) k (φ e) :=
      IsOpenImmersion.isPullback _ _ _ _ (hi e).symm (by rw [hkW, hopen, hjer])
    have hp2 := hpbO.paste_vert (hpb e)
    rw [hjeh, hkY] at hp2
    have hthick : thick R' (maximalIdeal R') e ≫ spMap (algebraMap R R') =
        spMap (algebraMap R (R' ⧸ maximalIdeal R' ^ (e + 1))) := by
      simp only [thick, spMap, ← Spec.map_comp]
      rfl
    rw [hthick] at hp2
    let b : R' ⧸ maximalIdeal R' ^ (e + 1) →ₐ[R] C' ⧸ (maximalIdeal R' ^ (e + 1)).map (algebraMap R' C') :=
      { Ideal.quotientMap ((maximalIdeal R' ^ (e + 1)).map (algebraMap R' C')) (algebraMap R' C')
          Ideal.le_comap_map with
        commutes' := fun r => by
          simp
          exact (IsScalarTower.algebraMap_apply _ _ _ _).symm }
    have hb : (Ideal.Quotient.mkₐ R ((maximalIdeal R' ^ (e + 1)).map (algebraMap R' C'))).comp
        (IsScalarTower.toAlgHom R R' C') = b.comp (Ideal.Quotient.mkₐ R _) := by
      ext r
      simp [b, Ideal.quotientMap_mk]
    rw [hb]
    exact _root_.GlobalTheory.Mum.tensor_of_pullback_surj_ker (maximalIdeal R' ^ (e + 1)) (i e) b hp2

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantMapsAffineOpenSmoothModel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothAwayOfQuotientPowEquiv =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothAwayOfQuotientPowEquiv", "h": "module\n\npublic import Mathlib.RingTheory.Smooth.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsSmoothAtOfSmoothModIdealPowers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.SmoothAdic

open TensorProduct

theorem exists_smooth_away_of_quotient_pow_equiv : ∀ (R : Type) [CommRing R] [IsLocalRing R] [IsNoetherianRing R] (O C : Type) [CommRing O] [Algebra R O] [CommRing C] [Algebra R C], Algebra.Smooth R O → Algebra.FiniteType R C → (∀ e : ℕ, Nonempty ((O ⧸ (maximalIdeal R ^ (e + 1)).map (algebraMap R O)) ≃ₐ[R] (C ⧸ (maximalIdeal R ^ (e + 1)).map (algebraMap R C)))) → ∀ q : Ideal C, q.IsPrime → q.comap (algebraMap R C) = maximalIdeal R → ∃ g : C, g ∉ q ∧ Algebra.Smooth R (Localization.Away g) := by
  intro R _ _ _ O C _ _ _ _ hO hC hiso q hq hqm
  have hsm : ∀ e : ℕ, Algebra.Smooth (R ⧸ maximalIdeal R ^ (e + 1))
      (TensorProduct R (R ⧸ maximalIdeal R ^ (e + 1)) C) := by
    intro e
    obtain ⟨φ⟩ := hiso e
    let J := maximalIdeal R ^ (e + 1)
    let φ' : (O ⧸ J.map (algebraMap R O)) ≃ₐ[R ⧸ J] (C ⧸ J.map (algebraMap R C)) :=
      AlgEquiv.extendScalarsOfSurjective Ideal.Quotient.mk_surjective φ
    let ψ : ((R ⧸ J) ⊗[R] O) ≃ₐ[R ⧸ J] ((R ⧸ J) ⊗[R] C) :=
      ((Algebra.TensorProduct.quotIdealMapEquivQuotTensor O J).symm.trans φ').trans
        (Algebra.TensorProduct.quotIdealMapEquivQuotTensor C J)
    exact Algebra.Smooth.of_equiv ψ
  haveI := hq
  haveI : Algebra.IsSmoothAt R q :=
    isSmoothAt_of_smooth_quotient_pow R (maximalIdeal R) (maximalIdeal.isMaximal R).ne_top C hsm q hqm
  haveI : Algebra.FinitePresentation R C := Algebra.FinitePresentation.of_finiteType.mp hC
  obtain ⟨g, hg, hs⟩ := Algebra.IsSmoothAt.exists_notMem_smooth R q
  exact ⟨g, hg, hs⟩

end GlobalTheory.SmoothAdic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothAwayOfQuotientPowEquiv =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisDescentOpenInvariantSubscheme =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisDescentOpenInvariantSubscheme", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientAffineOpenSpecInvariantsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisTransitiveOnFibresFlatBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum

theorem exists_opens_preimage_le_of_isClosedMap {F Y : Scheme.{0}} (φ : F ⟶ Y) (hφ : IsClosedMap φ) (y : Y)
    (T : F.Opens) (hT : ∀ p, φ p = y → p ∈ T) : ∃ N : Y.Opens, y ∈ N ∧ φ ⁻¹ᵁ N ≤ T := by
  refine ⟨⟨(φ '' (T : Set F)ᶜ)ᶜ, (hφ _ T.2.isClosed_compl).isOpen_compl⟩, ?_, ?_⟩
  · rintro ⟨p, hp, e⟩
    exact hp (hT p e)
  · intro p hp
    by_contra h
    exact hp ⟨p, h, rfl⟩

theorem exists_basicOpen_le_of_finite {A : Type} [CommRing A] (s : Set (PrimeSpectrum A)) (hs : s.Finite)
    (U : Set (PrimeSpectrum A)) (hU : IsOpen U) (hsU : s ⊆ U) :
    ∃ b : A, s ⊆ PrimeSpectrum.basicOpen b ∧ (PrimeSpectrum.basicOpen b : Set (PrimeSpectrum A)) ⊆ U := by
  obtain ⟨I, hI⟩ := (PrimeSpectrum.isClosed_iff_zeroLocus_ideal _).1 hU.isClosed_compl
  by_cases hne : s = ∅
  · subst hne
    exact ⟨0, by simp, by simp⟩
  obtain ⟨a, ha⟩ := Set.nonempty_iff_ne_empty.2 hne
  have key : ¬ ((I : Set A) ⊆ ⋃ i ∈ s, (i.asIdeal : Set A)) := by
    rw [Ideal.subset_union_prime_finite hs a a (fun i _ _ _ => i.2)]
    rintro ⟨i, hi, hle⟩
    have : i ∈ Uᶜ := by rw [hI]; exact hle
    exact this (hsU hi)
  obtain ⟨b, hb, hb'⟩ := Set.not_subset.1 key
  refine ⟨b, fun i hi h => hb' (Set.mem_iUnion₂.2 ⟨i, hi, h⟩), fun i hi => ?_⟩
  by_contra h
  have : i ∈ PrimeSpectrum.zeroLocus (I : Set A) := hI ▸ h
  exact hi (this hb)

theorem exists_basicOpen_le_of_finite' {G : Scheme.{0}} {W : G.Opens} (hW : IsAffineOpen W) (s : Set G) (hs : s.Finite)
    (hsW : s ⊆ W) (U : G.Opens) (hsU : s ⊆ U) : ∃ b : Γ(G, W), s ⊆ G.basicOpen b ∧ G.basicOpen b ≤ U := by
  obtain ⟨b, h₁, h₂⟩ := exists_basicOpen_le_of_finite (A := Γ(G, W)) (hW.fromSpec ⁻¹' s)
    (hs.preimage hW.fromSpec.isOpenEmbedding.injective.injOn) _
    (hW.fromSpec ⁻¹ᵁ U).2 (fun p hp => hsU hp)
  refine ⟨b, fun p hp => ?_, ?_⟩
  · have : p ∈ Set.range hW.fromSpec := by rw [hW.range_fromSpec]; exact hsW hp
    obtain ⟨q, rfl⟩ := this
    rw [← hW.fromSpec_image_basicOpen]
    exact ⟨q, h₁ hp, rfl⟩
  · rw [← hW.fromSpec_image_basicOpen]
    rintro _ ⟨q, hq, rfl⟩
    exact h₂ hq

theorem exists_affine_preimage_eq_basicOpen {F G Y : Scheme.{0}} (κ : F ⟶ G) [IsClosedImmersion κ] (φ : F ⟶ Y)
    (hφ : IsClosedMap φ) {W : G.Opens} (hW : IsAffineOpen W) (y : Y) (hfin : (κ '' {p | φ p = y}).Finite)
    (hy : ∀ p, φ p = y → κ p ∈ W) :
    ∃ (O : Y.Opens) (b : Γ(G, W)), y ∈ O ∧ IsAffineOpen O ∧ φ ⁻¹ᵁ O = κ ⁻¹ᵁ G.basicOpen b := by
  obtain ⟨N, hyN, hN⟩ := exists_opens_preimage_le_of_isClosedMap φ hφ y (κ ⁻¹ᵁ W) hy
  obtain ⟨_, ⟨O₁, hO₁, rfl⟩, hyO₁, hO₁N⟩ := Y.isBasis_affineOpens.exists_subset_of_mem_open hyN N.2
  let U : G.Opens := ⟨(κ '' ((φ ⁻¹ᵁ O₁ : F.Opens) : Set F)ᶜ)ᶜ,
    (κ.isClosedEmbedding.isClosedMap _ (φ ⁻¹ᵁ O₁).2.isClosed_compl).isOpen_compl⟩
  obtain ⟨b₁, hb₁, hb₁'⟩ := exists_basicOpen_le_of_finite' hW _ hfin (by rintro _ ⟨p, hp, rfl⟩; exact hy p hp) U (by
    rintro _ ⟨p, hp, rfl⟩ ⟨q, hq, e⟩
    obtain rfl := κ.isClosedEmbedding.injective e
    apply hq
    change φ q ∈ O₁
    rw [hp]; exact hyO₁)
  have hle : κ ⁻¹ᵁ G.basicOpen b₁ ≤ φ ⁻¹ᵁ O₁ := fun p hp => by
    by_contra h
    exact hb₁' hp ⟨p, h, rfl⟩
  obtain ⟨N₂, hyN₂, hN₂⟩ := exists_opens_preimage_le_of_isClosedMap φ hφ y (κ ⁻¹ᵁ G.basicOpen b₁)
    (fun p hp => hb₁ ⟨p, hp, rfl⟩)
  obtain ⟨g, hg, hyg⟩ := IsAffineOpen.exists_basicOpen_le hO₁ (V := N₂) ⟨y, hyN₂⟩ hyO₁
  have hS : IsAffineOpen (κ ⁻¹ᵁ W) := hW.preimage κ
  rw [Scheme.preimage_basicOpen] at hle hN₂
  obtain ⟨s, hs⟩ := hS.basicOpen_basicOpen_is_basicOpen (κ.app W b₁) (φ.appLE O₁ _ hle g)
  obtain ⟨b, rfl⟩ := κ.app_surjective W hW s
  refine ⟨Y.basicOpen g, b, hyg, hO₁.basicOpen g, ?_⟩
  rw [Scheme.preimage_basicOpen κ, hs, Scheme.basicOpen_appLE, eq_comm, inf_eq_right]
  exact fun p hp => hN₂ (hg hp)

theorem exists_affine_preimage_iff_not_mem {F G Y : Scheme.{0}} (κ : F ⟶ G) [IsClosedImmersion κ] (φ : F ⟶ Y)
    (hφ : IsClosedMap φ) {A : Type} [CommRing A] (J : Sp A ⟶ G) [IsOpenImmersion J] (y : Y)
    (hfin : (κ '' {p | φ p = y}).Finite) (hy : ∀ p, φ p = y → κ p ∈ Set.range J) :
    ∃ (O : Y.Opens) (b : A), y ∈ O ∧ IsAffineOpen O ∧
      ∀ p, φ p ∈ O ↔ ∃ q : PrimeSpectrum A, J q = κ p ∧ b ∉ q.asIdeal := by
  obtain ⟨O, b, h₁, h₂, h₃⟩ := exists_affine_preimage_eq_basicOpen κ φ hφ (isAffineOpen_opensRange J) y hfin hy
  have e : (⊤ : (Sp A).Opens) ≤ J ⁻¹ᵁ J.opensRange := fun q _ => ⟨q, rfl⟩
  refine ⟨O, (Scheme.ΓSpecIso (.of A)).hom (J.appLE _ _ e b), h₁, h₂, fun p => ?_⟩
  have h₄ := basicOpen_eq_of_affine' (R := .of A) (J.appLE _ _ e b)
  rw [Scheme.basicOpen_appLE, top_inf_eq] at h₄
  have h₅ : ∀ q : PrimeSpectrum A, J q ∈ G.basicOpen b ↔
      (Scheme.ΓSpecIso (.of A)).hom (J.appLE _ _ e b) ∉ q.asIdeal := fun q => by
    change q ∈ J ⁻¹ᵁ G.basicOpen b ↔ _
    rw [h₄]; rfl
  change p ∈ φ ⁻¹ᵁ O ↔ _
  rw [h₃]
  change κ p ∈ G.basicOpen b ↔ _
  constructor
  · intro h
    obtain ⟨q, hq⟩ := G.basicOpen_le b h
    exact ⟨q, hq, (h₅ q).1 (by rw [hq]; exact h)⟩
  · rintro ⟨q, hq, h⟩
    rw [← hq]; exact (h₅ q).2 h

theorem exists_act_eq_of_apply_eq {R R' : Type} [CommRing R] [CommRing R'] [Algebra R R']
    (hinj : Function.Injective (algebraMap R R')) (hG : IsGal (algebraMap R R')) {F G T : Scheme.{0}} (t : T ⟶ Sp R')
    [IsClosedImmersion t] (κ : F ⟶ G) (gm : G ⟶ Sp R') (s : F ⟶ T) (hs : κ ≫ gm = s ≫ t)
    (act : Gal (algebraMap R R') → (G ⟶ G)) (hact : ∀ σ, act σ ≫ gm = gm ≫ spMap (Gal.hom σ)) (Y : Over (Sp R))
    (hY : Flat Y.hom) (φ : F ⟶ Y.left) (hφ : IsPullback φ s Y.hom (t ≫ spMap (algebraMap R R')))
    (hinv : ∀ σ, ∃ h : F ⟶ F, h ≫ κ = κ ≫ act σ ∧ h ≫ φ = φ) (p q : F) (e : φ p = φ q) :
    ∃ σ, act σ (κ p) = κ q := by
  let u : F ⟶ pullback Y.hom (spMap (algebraMap R R')) := pullback.lift φ (s ≫ t) (by rw [hφ.w, Category.assoc])
  have hu₁ : u ≫ pullback.fst _ _ = φ := pullback.lift_fst _ _ _
  have hu₂ : u ≫ pullback.snd _ _ = s ≫ t := pullback.lift_snd _ _ _
  have hu : IsPullback s u t (pullback.snd Y.hom (spMap (algebraMap R R'))) := by
    refine IsPullback.of_bot (v₂₁ := pullback.fst _ _) ?_ hu₂.symm (IsPullback.of_hasPullback _ _).flip
    rw [hu₁]; exact hφ.flip
  have : IsClosedImmersion u := MorphismProperty.of_isPullback (P := @IsClosedImmersion) hu inferInstance
  obtain ⟨σ, h, h₁, h₂, h₃⟩ := _root_.GlobalTheory.Mum.gal_transitive_on_fibres R R' hinj hG Y hY _ _ _ (IsPullback.of_hasPullback _ _) (u p) (u q) (by
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, hu₁, e])
  obtain ⟨k, k₁, k₂⟩ := hinv σ
  have hk : k ≫ u = u ≫ h := by
    apply pullback.hom_ext
    · rw [Category.assoc, Category.assoc, h₁, hu₁, k₂]
    · rw [Category.assoc, Category.assoc, h₂, hu₂, ← Category.assoc u, hu₂, ← hs, ← Category.assoc k, k₁, Category.assoc,
        hact, Category.assoc]
  have hkp : k p = q := u.isClosedEmbedding.injective (by
    rw [← h₃, ← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, hk])
  exact ⟨σ, by rw [← hkp, ← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, k₁]⟩

theorem mem_range_thick_of_finite {R R' : Type} [CommRing R] [IsLocalRing R] [CommRing R'] [IsLocalRing R'] (ρ : R →+* R')
    (hρ : ρ.Finite) (P : Sp R') (hP : spMap ρ P = closedPoint R) (e : ℕ) :
    P ∈ Set.range (thick R' (maximalIdeal R') e) := by
  have h₁ : (P.asIdeal.comap ρ).IsMaximal := by
    have : P.asIdeal.comap ρ = maximalIdeal R := congrArg PrimeSpectrum.asIdeal hP
    rw [this]; infer_instance
  have := P.2
  have h₂ : P.asIdeal.IsMaximal := Ideal.isMaximal_of_isIntegral_of_isMaximal_comap' ρ hρ.to_isIntegral _ h₁
  have h₃ : P.asIdeal = maximalIdeal R' := eq_maximalIdeal h₂
  change P ∈ Set.range (PrimeSpectrum.comap (Ideal.Quotient.mk (maximalIdeal R' ^ (e + 1))))
  rw [range_comap_of_surjective _ _ Ideal.Quotient.mk_surjective, Ideal.mk_ker]
  intro a ha
  change a ∈ P.asIdeal
  rw [h₃]
  exact Ideal.pow_le_self (Nat.succ_ne_zero e) ha

theorem exists_affine_chart : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] [Algebra R R'], Base R → FinExt (algebraMap R R') → IsGal (algebraMap R R') → ∀ (G' : Over (Sp R')) (act : Gal (algebraMap R R') → (G'.left ⟶ G'.left)), (∀ σ, act σ ≫ G'.hom = G'.hom ≫ spMap (Gal.hom σ)) → act 1 = 𝟙 _ → (∀ σ τ, act (σ * τ) = act σ ≫ act τ) → ∀ (H : G'.left.Opens) (hH : ∀ σ, act σ ⁻¹ᵁ H = H) (X : Over (Sp R)) (π : H.toScheme ⟶ X.left), π ≫ X.hom = H.ι ≫ G'.hom ≫ spMap (algebraMap R R') → IsAffineHom π → (∀ σ, (act σ).resLE H H (hH σ).ge ≫ π = π) → (∀ x y : H.toScheme, π x = π y → ∃ σ, act σ (H.ι x) = H.ι y) → (∀ V : X.left.Opens, Function.Injective (π.app V).hom ∧ ∀ f : Γ(H.toScheme, π ⁻¹ᵁ V), (∀ σ (h : π ⁻¹ᵁ V ≤ ((act σ).resLE H H (hH σ).ge) ⁻¹ᵁ (π ⁻¹ᵁ V)), (((act σ).resLE H H (hH σ).ge).appLE _ _ h).hom f = f) → f ∈ Set.range (π.app V).hom) → ∀ (Y : Over (Sp R)) (φ : ∀ e : ℕ, (thickObj R' (maximalIdeal R') e G').left ⟶ Y.left), Smooth Y.hom → (∀ e, IsPullback (φ e) (thickObj R' (maximalIdeal R') e G').hom Y.hom (thick R' (maximalIdeal R') e ≫ spMap (algebraMap R R'))) → (∀ e, thickMap R' (maximalIdeal R') e G' ≫ φ (e + 1) = φ e) → (∀ e σ, ∃ h : (thickObj R' (maximalIdeal R') e G').left ⟶ (thickObj R' (maximalIdeal R') e G').left, h ≫ (pullback.fst G'.hom (thick R' (maximalIdeal R') e)) = (pullback.fst G'.hom (thick R' (maximalIdeal R') e)) ≫ act σ ∧ h ≫ φ e = φ e) → ∀ x : H.toScheme, spMap (algebraMap R R') (G'.hom (H.ι x)) = closedPoint R → ∃ (V : X.left.Opens) (O : Y.left.Opens), π x ∈ V ∧ IsAffineOpen V ∧ IsAffineOpen O ∧ φ 0 ⁻¹ᵁ O = (pullback.fst G'.hom (thick R' (maximalIdeal R') 0)) ⁻¹ᵁ (H.ι ''ᵁ (π ⁻¹ᵁ V)) := by
  intro R _ _ _ R' _ _ _ _ hB hF hG G' act hact h1 hmul H hH X π hπ haff hinv horb hsec Y φ hY hφ _ hh x hx
  have := hG.1
  have := Fintype.ofFinite (Gal (algebraMap R R'))
  have hx₀ : H.ι x ∈ Set.range (pullback.fst G'.hom (thick R' (maximalIdeal R') 0)) := by
    rw [Scheme.Pullback.range_fst]
    exact mem_range_thick_of_finite _ hF.2.2 _ hx 0
  obtain ⟨x₀, hx₀⟩ := hx₀
  have ht : IsClosedImmersion (thick R' (maximalIdeal R') 0) :=
    IsClosedImmersion.spec_of_surjective _ Ideal.Quotient.mk_surjective
  have hρ : IsFinite (spMap (algebraMap R R')) := (IsFinite.SpecMap_iff _).2 hF.2.2
  have hfin : IsFinite (φ 0) := MorphismProperty.of_isPullback (P := @IsFinite) (hφ 0).flip inferInstance
  have orb := exists_act_eq_of_apply_eq hF.2.1 hG (thick R' (maximalIdeal R') 0)
    (pullback.fst G'.hom (thick R' (maximalIdeal R') 0)) G'.hom _ pullback.condition act hact Y inferInstance (φ 0) (hφ 0) (hh 0)
  have hh₀ := hh 0
  have hκ : IsClosedImmersion (pullback.fst G'.hom (thick R' (maximalIdeal R') 0)) := inferInstance
  generalize pullback.fst G'.hom (thick R' (maximalIdeal R') 0) = κ at *
  obtain ⟨_, ⟨V₁, hV₁, rfl⟩, hxV₁, -⟩ := X.left.isBasis_affineOpens.exists_subset_of_mem_open (Set.mem_univ (π x)) isOpen_univ
  obtain ⟨C', _, _, _, _, actC, C, j, l, hj, hl, hlr, hpb, -, -, hcomm, -, hC⟩ :=
    _root_.GlobalTheory.Mum.quot_affine_spec_invariants R R' hB hF hG G' act hact h1 hmul H hH X π hπ haff hinv horb hsec V₁ hV₁
  have lift : ∀ (z : H.toScheme) (w : Sp C), π z = l w → ∃ q : Sp C', j q = z ∧ spMap (algebraMap C C') q = w :=
    fun z w e => Scheme.exists_preimage_of_isPullback hpb z w e
  have hw : ∀ q, π (j q) = l (spMap (algebraMap C C') q) := fun q => by
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, hpb.w]
  have hc : ∀ σ q, (j ≫ H.ι) (spMap (actC σ : C' →+* C') q) = act σ ((j ≫ H.ι) q) := fun σ q => by
    rw [← Scheme.Hom.comp_apply, hcomm, ← Scheme.Hom.comp_apply, Category.assoc]
  obtain ⟨w₀, hw₀⟩ : π x ∈ Set.range l := by rw [hlr]; exact hxV₁
  obtain ⟨q₀, hq₀, -⟩ := lift x w₀ hw₀.symm
  have hq₀' : (j ≫ H.ι) q₀ = κ x₀ := by rw [Scheme.Hom.comp_apply, hq₀, hx₀]
  obtain ⟨O, b, hyO, hO, hb⟩ := exists_affine_preimage_iff_not_mem κ (φ 0) (φ 0).isClosedMap (j ≫ H.ι) (φ 0 x₀)
    ((Set.finite_range fun σ => act σ (κ x₀)).subset (by
      rintro _ ⟨p, hp, rfl⟩
      exact orb x₀ p hp.symm))
    (fun p hp => by
      obtain ⟨σ, hσ⟩ := orb x₀ p hp.symm
      exact ⟨_, (hc σ q₀).trans (by rw [hq₀', hσ])⟩)
  let c : C := ⟨∏ σ, actC σ b, (hC _).2 fun τ => by
    rw [map_prod]
    exact Fintype.prod_equiv (Equiv.mulLeft τ) _ _ fun σ => by simp⟩
  have key : ∀ p, φ 0 p ∈ O ↔ ∃ q : PrimeSpectrum C', (j ≫ H.ι) q = κ p ∧ (c : C') ∉ q.asIdeal := fun p => by
    constructor
    · intro hp
      obtain ⟨q, hq, -⟩ := (hb p).1 hp
      refine ⟨q, hq, fun hm => ?_⟩
      obtain ⟨σ, -, hσ⟩ := (q.2.prod_mem_iff).1 hm
      obtain ⟨k, k₁, k₂⟩ := hh₀ σ
      obtain ⟨q', hq', hb'⟩ := (hb (k p)).1 (by rw [← Scheme.Hom.comp_apply, k₂]; exact hp)
      have : q' = spMap (actC σ : C' →+* C') q := (j ≫ H.ι).isOpenEmbedding.injective
        ((hq'.trans (by rw [hq, ← Scheme.Hom.comp_apply k κ, k₁, Scheme.Hom.comp_apply])).trans (hc σ q).symm)
      rw [this] at hb'
      exact hb' hσ
    · rintro ⟨q, hq, hm⟩
      refine (hb p).2 ⟨q, hq, fun hm' => hm ?_⟩
      exact (q.2.prod_mem_iff).2 ⟨1, Finset.mem_univ _, by simpa using hm'⟩
  have key₂ : ∀ z : H.toScheme, π z ∈ l ''ᵁ (PrimeSpectrum.basicOpen c : (Sp C).Opens) ↔
      ∃ q : PrimeSpectrum C', j q = z ∧ (c : C') ∉ q.asIdeal := fun z => by
    constructor
    · rintro ⟨w, hw', e⟩
      obtain ⟨q, hq, rfl⟩ := lift z w e.symm
      exact ⟨q, hq, hw'⟩
    · rintro ⟨q, rfl, hq⟩
      exact ⟨_, hq, (hw q).symm⟩
  refine ⟨l ''ᵁ (PrimeSpectrum.basicOpen c : (Sp C).Opens), O, ?_, ?_, hO, ?_⟩
  · obtain ⟨q, hq, hm⟩ := (key x₀).1 hyO
    refine (key₂ x).2 ⟨q, H.ι.isOpenEmbedding.injective ?_, hm⟩
    rw [← hx₀, ← hq]; exact (Scheme.Hom.comp_apply _ _ _).symm
  · refine IsAffineOpen.image_of_isOpenImmersion ?_ l
    rw [← basicOpen_eq_of_affine (R := .of C)]
    exact (isAffineOpen_top _).basicOpen _
  · ext p
    refine (key p).trans ⟨?_, ?_⟩
    · rintro ⟨q, hq, hm⟩
      exact ⟨j q, (key₂ _).2 ⟨q, rfl, hm⟩, hq⟩
    · rintro ⟨z, hz, e⟩
      obtain ⟨q, rfl, hm⟩ := (key₂ z).1 hz
      exact ⟨q, e, hm⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisDescentOpenInvariantSubscheme =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoBaseChangeOverBasicOpenOfTensorBijective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoBaseChangeOverBasicOpenOfTensorBijective", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.LocIso

theorem isPullback_resLE_opensRange {W W' Y Z T S : Scheme.{0}} (π : Z ⟶ Y) (s : Z ⟶ T) (b : Y ⟶ S)
    (c : T ⟶ S) (i : W ⟶ Y) [IsOpenImmersion i] (k : W' ⟶ Z) (p : W' ⟶ W)
    (h₁ : IsPullback k p π i) (h₂ : IsPullback p (k ≫ s) (i ≫ b) c) :
    IsPullback (π.resLE i.opensRange (π ⁻¹ᵁ i.opensRange) le_rfl) ((π ⁻¹ᵁ i.opensRange).ι ≫ s)
      (i.opensRange.ι ≫ b) c := by
  let e : W ≅ i.opensRange.toScheme := IsOpenImmersion.isoOfRangeEq i i.opensRange.ι (by simp)
  have he : e.hom ≫ i.opensRange.ι = i := IsOpenImmersion.isoOfRangeEq_hom_fac _ _ _
  have hR : IsPullback (π.resLE i.opensRange (π ⁻¹ᵁ i.opensRange) le_rfl) (π ⁻¹ᵁ i.opensRange).ι
      i.opensRange.ι π := by
    rw [Scheme.Hom.resLE_eq_morphismRestrict]; exact isPullback_morphismRestrict π _
  have hW : IsPullback (p ≫ e.hom) k i.opensRange.ι π := by
    refine IsPullback.of_iso h₁.flip (Iso.refl _) e (Iso.refl _) (Iso.refl _) ?_ ?_ ?_ ?_ <;> simp [he]
  let φ := IsPullback.isoIsPullback _ _ hW hR
  refine IsPullback.of_iso h₂ φ e (Iso.refl _) (Iso.refl _) ?_ ?_ ?_ ?_
  · exact (IsPullback.isoIsPullback_hom_fst _ _ hW hR).symm
  · rw [Iso.refl_hom, Category.comp_id, ← Category.assoc, IsPullback.isoIsPullback_hom_snd]
  · simp [← he]
  · simp

theorem isLocalization_tensor (R R' C' : Type) [CommRing R] [CommRing R'] [CommRing C'] [Algebra R R']
    [Algebra R C'] [Algebra R' C'] [IsScalarTower R R' C'] (C : Subalgebra R C') (f g : C)
    (hcok : ∀ x : C', ∃ n : ℕ, (f : C') ^ n * x ∈ Set.range (Algebra.TensorProduct.lift C.val
      (IsScalarTower.toAlgHom R R' C') fun _ _ => Commute.all _ _))
    (hker : ∀ t : TensorProduct R C R', (Algebra.TensorProduct.lift C.val (IsScalarTower.toAlgHom R R' C')
      fun _ _ => Commute.all _ _) t = 0 → ∃ n : ℕ, ((f ^ n) ⊗ₜ[R] (1 : R')) * t = 0) :
    letI : Algebra (TensorProduct R C R') (Localization.Away (algebraMap C C' (f * g))) :=
      ((algebraMap C' _).comp (Algebra.TensorProduct.lift C.val (IsScalarTower.toAlgHom R R' C')
        fun _ _ => Commute.all _ _).toRingHom).toAlgebra
    IsLocalization (Submonoid.powers ((f * g) ⊗ₜ[R] (1 : R'))) (Localization.Away (algebraMap C C' (f * g))) := by
  set Φ := Algebra.TensorProduct.lift C.val (IsScalarTower.toAlgHom R R' C') fun _ _ => Commute.all _ _ with hΦdef
  letI : Algebra (TensorProduct R C R') (Localization.Away (algebraMap C C' (f * g))) :=
    ((algebraMap C' _).comp Φ.toRingHom).toAlgebra
  have hΦ : ∀ c : C, Φ (c ⊗ₜ[R] (1 : R')) = algebraMap C C' c := fun c => by simp [Φ]
  have halg : ∀ t, algebraMap (TensorProduct R C R') (Localization.Away (algebraMap C C' (f * g))) t =
      algebraMap C' _ (Φ t) := fun t => rfl
  have hpow : ∀ n : ℕ, ((f * g) ⊗ₜ[R] (1 : R')) ^ n = ((g ^ n) ⊗ₜ[R] (1 : R')) * ((f ^ n) ⊗ₜ[R] (1 : R')) := by
    intro n
    rw [Algebra.TensorProduct.tmul_pow, Algebra.TensorProduct.tmul_mul_tmul, _root_.mul_pow, one_pow, _root_.mul_one, _root_.mul_comm (g ^ n)]
  refine (isLocalization_iff _ _).mpr ⟨?_, ?_, ?_⟩
  · rintro ⟨_, n, rfl⟩
    rw [halg, map_pow, hΦ, map_pow]
    exact (IsLocalization.Away.algebraMap_isUnit _).pow n
  · intro z
    obtain ⟨⟨a, ⟨_, m, rfl⟩⟩, hz⟩ := IsLocalization.surj (Submonoid.powers (algebraMap C C' (f * g))) z
    obtain ⟨k, t, ht⟩ := hcok a
    refine ⟨⟨t * ((g ^ k) ⊗ₜ[R] (1 : R')), ⟨((f * g) ⊗ₜ[R] (1 : R')) ^ (m + k), m + k, rfl⟩⟩, ?_⟩
    rw [halg, halg, map_pow Φ, hΦ, map_mul Φ, hΦ, ht, pow_add, map_mul (algebraMap C' _), ← _root_.mul_assoc, hz,
      ← map_mul (algebraMap C' _)]
    refine congrArg (algebraMap C' _) ?_
    have hco : ∀ c : C, algebraMap C C' c = (c : C') := fun _ => rfl
    simp only [hco, MulMemClass.coe_mul, SubmonoidClass.coe_pow]
    ring
  · intro x y hxy
    rw [halg, halg] at hxy
    obtain ⟨⟨_, m, rfl⟩, hm⟩ := IsLocalization.exists_of_eq (M := Submonoid.powers (algebraMap C C' (f * g))) hxy
    have h0 : Φ (((f * g) ⊗ₜ[R] (1 : R')) ^ m * (x - y)) = 0 := by
      rw [map_mul, map_pow, hΦ, map_sub, mul_sub]
      exact sub_eq_zero.mpr hm
    obtain ⟨n, hn⟩ := hker _ h0
    refine ⟨⟨((f * g) ⊗ₜ[R] (1 : R')) ^ (n + m), n + m, rfl⟩, ?_⟩
    change ((f * g) ⊗ₜ[R] (1 : R')) ^ (n + m) * x = ((f * g) ⊗ₜ[R] (1 : R')) ^ (n + m) * y
    rw [← sub_eq_zero, ← mul_sub, pow_add, hpow, _root_.mul_assoc, _root_.mul_assoc, hn, mul_zero]

theorem exists_smooth_basicOpen_iso : ∀ (R R' : Type) [CommRing R] [CommRing R'] [Algebra R R'] (X : Over (Sp R)) (Z : Scheme.{0}) (π : Z ⟶ X.left) (s : Z ⟶ Sp R') (hX : π ≫ X.hom = s ≫ spMap (algebraMap R R')) (C' : Type) [CommRing C'] [Algebra R C'] [Algebra R' C'] [IsScalarTower R R' C'] (C : Subalgebra R C') (j : Sp C' ⟶ Z) (l : Sp C ⟶ X.left) [IsOpenImmersion l], IsPullback j (spMap (algebraMap C C')) π l → j ≫ s = spMap (algebraMap R' C') → l ≫ X.hom = spMap (algebraMap R C) → ∀ f g : C, (∀ x : C', ∃ n : ℕ, (f : C') ^ n * x ∈ Set.range (Algebra.TensorProduct.lift C.val (IsScalarTower.toAlgHom R R' C') fun _ _ => Commute.all _ _)) → (∀ t : TensorProduct R C R', (Algebra.TensorProduct.lift C.val (IsScalarTower.toAlgHom R R' C') fun _ _ => Commute.all _ _) t = 0 → ∃ n : ℕ, ((f ^ n) ⊗ₜ[R] (1 : R')) * t = 0) → Algebra.Smooth R (Localization.Away g) → ∀ q : Sp C, f ∉ q.asIdeal → g ∉ q.asIdeal → ∃ V : X.left.Opens, l q ∈ V ∧ IsAffineOpen V ∧ Smooth (V.ι ≫ X.hom) ∧ IsIso (pullback.lift (π.resLE V (π ⁻¹ᵁ V) le_rfl) ((π ⁻¹ᵁ V).ι ≫ s) (by rw [Scheme.Hom.resLE_comp_ι_assoc, hX]; simp only [Category.assoc]) : (π ⁻¹ᵁ V).toScheme ⟶ pullback (V.ι ≫ X.hom) (spMap (algebraMap R R'))) := by
  intro R R' _ _ _ X Z π s hX C' _ _ _ _ C j l _ hP hj hl f g hcok hker hsm q hf hg
  let A := Localization.Away (f * g)
  let A' := Localization.Away (algebraMap C C' (f * g))
  let φ : A →+* A' := IsLocalization.Away.map A A' (algebraMap C C') (f * g)
  have hφ : φ.comp (algebraMap C A) = (algebraMap C' A').comp (algebraMap C C') := IsLocalization.map_comp _
  have hLoc : IsPushout (CommRingCat.ofHom (algebraMap C C')) (CommRingCat.ofHom (algebraMap C A))
      (CommRingCat.ofHom (algebraMap C' A')) (CommRingCat.ofHom φ) := by
    have : IsLocalization ((Submonoid.powers (f * g)).map (algebraMap C C')) A' := by
      rw [Submonoid.map_powers]; infer_instance
    exact CommRingCat.isPushout_of_isLocalization _ _ hφ (Submonoid.powers (f * g))
  haveI : IsOpenImmersion (spMap (algebraMap C A)) := IsOpenImmersion.of_isLocalization (f * g)
  have h₁ : IsPullback (spMap (algebraMap C' A') ≫ j) (spMap φ) π (spMap (algebraMap C A) ≫ l) :=
    (isPullback_SpecMap_of_isPushout _ _ _ _ hLoc).paste_horiz hP
  have hRing : IsPushout (CommRingCat.ofHom (algebraMap R A)) (CommRingCat.ofHom (algebraMap R R'))
      (CommRingCat.ofHom φ) (CommRingCat.ofHom (algebraMap R' A')) := by
    let Φ := Algebra.TensorProduct.lift C.val (IsScalarTower.toAlgHom R R' C') fun _ _ => Commute.all _ _
    letI : Algebra (TensorProduct R C R') A' := ((algebraMap C' A').comp Φ.toRingHom).toAlgebra
    have hL := isLocalization_tensor R R' C' C f g hcok hker
    have Q1 := CommRingCat.isPushout_tensorProduct R C R'
    have : IsLocalization ((Submonoid.powers (f * g)).map
        (Algebra.TensorProduct.includeLeftRingHom : C →+* TensorProduct R C R')) A' := by
      rw [Submonoid.map_powers]; exact hL
    have H : φ.comp (algebraMap C A) = (algebraMap (TensorProduct R C R') A').comp
        Algebra.TensorProduct.includeLeftRingHom := by
      rw [hφ]
      ext c
      simp [RingHom.algebraMap_toAlgebra, Φ]
    have Q2 := CommRingCat.isPushout_of_isLocalization (S := TensorProduct R C R') (Rₘ := A) (Sₘ := A')
      Algebra.TensorProduct.includeLeftRingHom φ H (Submonoid.powers (f * g))
    have Q := (Q1.flip.paste_vert Q2).flip
    convert Q using 1
    · ext r; simp [RingHom.algebraMap_toAlgebra, Φ, ← IsScalarTower.algebraMap_apply]
  have hs : (spMap (algebraMap C' A') ≫ j) ≫ s = spMap (algebraMap R' A') := by
    rw [Category.assoc, hj, ← Spec.map_comp, ← CommRingCat.ofHom_comp, ← IsScalarTower.algebraMap_eq]
  have hb : (spMap (algebraMap C A) ≫ l) ≫ X.hom = spMap (algebraMap R A) := by
    rw [Category.assoc, hl, ← Spec.map_comp, ← CommRingCat.ofHom_comp, ← IsScalarTower.algebraMap_eq]
  have h₂ : IsPullback (spMap φ) ((spMap (algebraMap C' A') ≫ j) ≫ s)
      ((spMap (algebraMap C A) ≫ l) ≫ X.hom) (spMap (algebraMap R R')) := by
    rw [hs, hb]; exact isPullback_SpecMap_of_isPushout _ _ _ _ hRing
  have hG := isPullback_resLE_opensRange π s X.hom (spMap (algebraMap R R')) _ _ _ h₁ h₂
  refine ⟨(spMap (algebraMap C A) ≫ l).opensRange, ?_, isAffineOpen_opensRange _, ?_, ?_⟩
  · obtain ⟨w, hw⟩ : q ∈ Set.range (PrimeSpectrum.comap (algebraMap C A)) := by
      rw [PrimeSpectrum.localization_away_comap_range A (f * g)]
      exact fun h => (q.isPrime.mem_or_mem h).elim hf hg
    refine ⟨w, ?_⟩
    first
      | exact (Scheme.Hom.comp_apply _ _ _).trans (congrArg l hw)
  · let B := Localization.Away (algebraMap C (Localization.Away g) f)
    haveI : Algebra.Smooth R B := Algebra.Smooth.comp R (Localization.Away g) B
    haveI : Algebra.Smooth R A :=
      Algebra.Smooth.of_equiv ((IsLocalization.algEquiv (Submonoid.powers (f * g)) B A).restrictScalars R)
    haveI : Smooth (spMap (algebraMap R A)) :=
      HasRingHomProperty.Spec_iff.mpr (RingHom.smooth_algebraMap.mpr inferInstance)
    let e := IsOpenImmersion.isoOfRangeEq (spMap (algebraMap C A) ≫ l)
      (spMap (algebraMap C A) ≫ l).opensRange.ι (by simp)
    have hfac : e.hom ≫ (spMap (algebraMap C A) ≫ l).opensRange.ι = spMap (algebraMap C A) ≫ l :=
      IsOpenImmersion.isoOfRangeEq_hom_fac _ _ _
    have : (spMap (algebraMap C A) ≫ l).opensRange.ι ≫ X.hom = e.inv ≫ spMap (algebraMap R A) := by
      calc _ = e.inv ≫ (e.hom ≫ (spMap (algebraMap C A) ≫ l).opensRange.ι) ≫ X.hom := by simp
        _ = _ := by rw [hfac, hb]
    rw [this]; infer_instance
  · convert (inferInstance : IsIso hG.isoPullback.hom)
    apply pullback.hom_ext
    · exact (pullback.lift_fst _ _ _).trans hG.isoPullback_hom_fst.symm
    · exact (pullback.lift_snd _ _ _).trans hG.isoPullback_hom_snd.symm

end GlobalTheory.Mum.LocIso
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoBaseChangeOverBasicOpenOfTensorBijective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientSmoothBaseChangeIsoClosedFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientSmoothBaseChangeIsoClosedFibre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCocycleUnit\npublic import Mathlib.RingTheory.Ideal.Quotient.Operations\npublic import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs\npublic import Mathlib.RingTheory.Noetherian.Defs\npublic import Mathlib.RingTheory.TensorProduct.Maps\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCompatibleMapsModPowMaximalIdealBase\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantMapsAffineOpenSmoothModel\npublic import Mathlib.RingTheory.Smooth.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothAwayOfQuotientPowEquiv\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisDescentOpenInvariantSubscheme\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientAffineOpenSpecInvariantsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantsOfTrivialOnThickeningsStatement\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoBaseChangeOverBasicOpenOfTensorBijective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem quotient_smooth_and_baseChange_iso : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] (ρ : R →+* R'), FinExt ρ → IsGal ρ → ∀ (D : DegData R (maximalIdeal R)) (D' : DegData R' (maximalIdeal R')) (hD : IsPullDeg ρ D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R'))) (G' : Over (Sp R')) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (U' : Unif (maximalIdeal R') D' A' G') (a : GalAct ρ hD U'), ∀ (H : G'.left.Opens) (hH : ∀ σ, a.act σ ⁻¹ᵁ H = H), (∀ x ∈ H, ∃ O : G'.left.Opens, IsAffineOpen O ∧ O ≤ H ∧ ∀ σ, a.act σ x ∈ O) → ∀ (X : Over (Sp R)) (π : H.toScheme ⟶ X.left) (hX : π ≫ X.hom = H.ι ≫ G'.hom ≫ spMap ρ), IsAffineHom π → Surjective π → (∀ σ, (a.act σ).resLE H H (hH σ).ge ≫ π = π) → (∀ x y : H.toScheme, π x = π y → ∃ σ, a.act σ (H.ι x) = H.ι y) → (∀ V : X.left.Opens, Function.Injective (π.app V).hom ∧ ∀ f : Γ(H.toScheme, π ⁻¹ᵁ V), (∀ σ (h : π ⁻¹ᵁ V ≤ ((a.act σ).resLE H H (hH σ).ge) ⁻¹ᵁ (π ⁻¹ᵁ V)), (((a.act σ).resLE H H (hH σ).ge).appLE _ _ h).hom f = f) → f ∈ Set.range (π.app V).hom) → ∀ x : H.toScheme, spMap ρ (G'.hom (H.ι x)) = closedPoint R → ∃ V : X.left.Opens, π x ∈ V ∧ IsAffineOpen V ∧ Smooth (V.ι ≫ X.hom) ∧ IsIso (pullback.lift (π.resLE V (π ⁻¹ᵁ V) le_rfl) ((π ⁻¹ᵁ V).ι ≫ H.ι ≫ G'.hom) (by rw [Scheme.Hom.resLE_comp_ι_assoc, hX]; simp only [Category.assoc]) : (π ⁻¹ᵁ V).toScheme ⟶ pullback (V.ι ≫ X.hom) (spMap ρ)) := by
  intro R _ _ _ hR R' _ _ _ ρ hρ hΓ D D' hD A' G' _ _ hG U' a H hH _ X π hX hπ _ hinv hfib hsec x hx
  obtain ⟨_, rfl⟩ : ∃ _ : Algebra R R', algebraMap R R' = ρ := ⟨ρ.toAlgebra, rfl⟩
  have hw := fun σ => (a.cart σ).1.w
  obtain ⟨Y, φ, hY, hφ, hsucc, hσ⟩ := @GlobalTheory.FormalModel.exists_model R _ _ _ hR R' _ _ _ _ D D' hD A' G' _ _ U' a
  obtain ⟨V, W, hxV, hV, hW, hVW⟩ := @_root_.GlobalTheory.Mum.exists_affine_chart R _ _ _ R' _ _ _ _ hR hρ hΓ G' a.act hw a.act_one a.act_mul H hH X π hX hπ hinv
    hfib hsec Y φ hY hφ hsucc hσ x hx
  obtain ⟨C', _, _, _, _, actC, C, j, l, hj, hl, hlV, hP, hjs, hls, hact, hlin, hC⟩ := @_root_.GlobalTheory.Mum.quot_affine_spec_invariants R _ _ _ R' _ _ _ _ hR hρ hΓ G'
    a.act hw a.act_one a.act_mul H hH X π hX hπ hinv hfib hsec V hV
  have hr : Set.range j = π ⁻¹' (V : Set X.left) := by
    rw [← hlV, ← Scheme.Pullback.range_fst π l, ← hP.isoPullback_hom_fst, Scheme.Hom.comp_base, TopCat.coe_comp,
      Set.range_comp, hP.isoPullback.hom.surjective.range_eq, Set.image_univ]
  have hr' : (j ≫ H.ι).opensRange = H.ι ''ᵁ (π ⁻¹ᵁ V) := by
    ext1
    rw [Scheme.Hom.coe_opensRange, Scheme.Hom.comp_base, TopCat.coe_comp, Set.range_comp, hr]
    rfl
  obtain ⟨O, _, _, i', hO, h₁, h₂, h₃⟩ := @_root_.GlobalTheory.Mum.exists_invariant_maps_of_affine_open R _ R' _ _ _ G' a.act Y φ hY hφ hsucc hσ C' _ _ _ _ actC (j ≫ H.ι) _
    (by rw [Category.assoc, hjs]) (fun σ => by rw [hact, Category.assoc]) W hW (by rw [hVW, hr'])
  have : IsNoetherianRing R := hR.1.1
  have : IsNoetherianRing R' := hρ.1.1
  have : Module.Finite R R' := RingHom.finite_algebraMap.1 hρ.2.2
  obtain ⟨i, k₁, k₂, k₃⟩ := @_root_.GlobalTheory.exists_compatible_maps_mod_pow_maximalIdeal_base R _ _ R' _ _ _ _ _ C' _ _ _ _ _ (fun σ => actC σ) O _ _ i' h₁ h₂ h₃
  have : Algebra.FiniteType R' C' := by
    have := U'.smooth
    have : LocallyOfFiniteType (spMap (algebraMap R' C')) := by rw [← hjs]; infer_instance
    exact RingHom.finiteType_algebraMap.1 ((HasRingHomProperty.Spec_iff (P := @LocallyOfFiniteType)).1 this)
  obtain ⟨hft, -, f, hf, hf₁, hf₂, hiso⟩ := _root_.GlobalTheory.InvAlg.invariants_of_trivial_on_thickenings R hR.1 R' hρ.2.1 hΓ C' actC hlin O i k₁ k₂ k₃ C hC
  obtain ⟨p, rfl⟩ : x ∈ Set.range j := by rw [hr]; exact hxV
  let q : Sp C := spMap (algebraMap C C') p
  have hq : l q = π (j p) := by rw [← Scheme.Hom.comp_apply, ← hP.w, Scheme.Hom.comp_apply]
  have hq' : q.asIdeal.comap (algebraMap R C) = maximalIdeal R := by
    have : spMap (algebraMap R C) q = closedPoint R := by
      rw [← hx, ← hls, Scheme.Hom.comp_apply, hq, ← Scheme.Hom.comp_apply, hX]
      simp only [Scheme.Hom.comp_apply]
    exact congrArg PrimeSpectrum.asIdeal this
  obtain ⟨g, hg, hsm⟩ := @_root_.GlobalTheory.SmoothAdic.exists_smooth_away_of_quotient_pow_equiv R _ _ _ O C _ _ _ _ hO hft hiso q.asIdeal q.isPrime hq'
  have hfq : f ∉ q.asIdeal := fun h => q.isPrime.ne_top ((Ideal.eq_top_iff_one _).2 (by
    have := q.asIdeal.sub_mem h (Ideal.map_le_iff_le_comap.2 hq'.ge hf)
    rwa [sub_sub_cancel] at this))
  rw [← hq]
  exact @_root_.GlobalTheory.Mum.LocIso.exists_smooth_basicOpen_iso R R' _ _ _ X H.toScheme π (H.ι ≫ G'.hom) (by rw [hX, Category.assoc]) C' _ _ _ _ C j l hl hP hjs hls f g hf₁ hf₂
    hsm q hfq hg

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientSmoothBaseChangeIsoClosedFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientSmoothBaseChangeIsoClosedFibreStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientSmoothBaseChangeIsoClosedFibreStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientSmoothBaseChangeIsoClosedFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientSmoothBaseChangeIsoClosedFibreStatement =====
