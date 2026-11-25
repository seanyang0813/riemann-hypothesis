module

public import Mathlib.RingTheory.Ideal.Cotangent
public import Mathlib.LinearAlgebra.Dual.Lemmas
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalRingDualNumber
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupSchemeStalkEvalAtOriginOriginStalkConstants
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpecMapFromSpecStalkOriginCompStructureEq
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntDerApply
public import Development.AbelianVarietyTheory.BlockTheory.JetGauges.HodgeTateCharacterSystems
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CotangentBidualToTangentFunctionInjective
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GermOriginConstantSectionEqOriginStalkConstants
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldApplyConstantEqZero
import Mathlib.Algebra.Module.StablyFree.Basic
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
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DerivationFamilyCotangentBasis, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTangentVectorOfOriginDerivation, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTangentVectorOfOriginDerivationStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldEvalOriginEqTangentDerivativ, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldEvalOriginEqTangentDerivativStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.OriginLocalRingNoetherianFreeUnitSectionConormal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.OriginLocalRingNoetherianFreeUnitSectionConormalStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentDerivativeAtOriginAddTangentVector, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentDerivativeAtOriginSmulTangentVector, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentVectorEqOfTangentDerivativeAtOriginEq, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothCommGroupLocalCoordinatesAtOrigin, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothCommGroupLocalCoordinatesAtOriginStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DerivationFamilyCotangentBasis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DerivationFamilyCotangentBasis", "h": "module\n\npublic import Mathlib.RingTheory.Ideal.Cotangent\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dual.Lemmas\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory.CoordsAlg

noncomputable def cotFun {R A : Type} [CommRing R] [CommRing A] [Algebra R A] (I : Ideal A)
    (f : I →ₗ[R] R) (hf : ∀ x : I, (x : A) ∈ I ^ 2 → f x = 0) : Module.Dual R I.Cotangent :=
  ((I • ⊤ : Submodule A I).restrictScalars R).liftQ f (fun x hx => by
      refine LinearMap.mem_ker.mpr (hf x ?_)
      rw [← Ideal.toCotangent_eq_zero]
      exact (Submodule.Quotient.mk_eq_zero _).mpr hx) ∘ₗ
    (Submodule.Quotient.restrictScalarsEquiv R (I • ⊤ : Submodule A I)).symm.toLinearMap

theorem coords_of_derivation_basis : ∀ (R A : Type) [CommRing R] [IsLocalRing R] [CommRing A] [IsLocalRing A] [IsNoetherianRing A] [Algebra R A] (e : A →+* R), (∀ r, e (algebraMap R A r) = r) → Module.Free R (RingHom.ker e).Cotangent → Module.Finite R (RingHom.ker e).Cotangent → ∀ (n : ℕ) (dv : Fin n → A → R), (∀ a x y, dv a (x + y) = dv a x + dv a y) → (∀ a x y, dv a (x * y) = e x * dv a y + e y * dv a x) → (∀ a r, dv a (algebraMap R A r) = 0) → (∀ D : A → R, (∀ x y, D (x + y) = D x + D y) → (∀ x y, D (x * y) = e x * D y + e y * D x) → (∀ r, D (algebraMap R A r) = 0) → ∃! c : Fin n → R, ∀ x, D x = ∑ a, c a * dv a x) → ∃ z : Fin n → A, (∀ i, e (z i) = 0) ∧ (∀ a i, dv a (z i) = if a = i then 1 else 0) ∧ maximalIdeal A = (maximalIdeal R).map (algebraMap R A) ⊔ Ideal.span (Set.range z) := by
  intro R A _ _ _ _ _ _ e he hfree hfin n dv hadd hmul halg huniq
  set I := RingHom.ker e with hIdef
  let dH : Fin n → A →+ R := fun a => AddMonoidHom.mk' (dv a) (hadd a)
  have hdH : ∀ a x, dv a x = dH a x := fun _ _ => rfl
  have hsmul : ∀ a r x, dv a (algebraMap R A r * x) = r * dv a x := by
    intro a r x; rw [hmul, he, halg]; ring
  have hI2 : ∀ a x, x ∈ I ^ 2 → dv a x = 0 := by
    intro a x hx
    rw [pow_two] at hx
    refine Submodule.mul_induction_on hx ?_ ?_
    · intro u hu v hv
      rw [hmul, (RingHom.mem_ker).1 hu, (RingHom.mem_ker).1 hv]; ring
    · intro u v hu hv; rw [hadd, hu, hv, add_zero]
  have hdec : ∀ x : A, x - algebraMap R A (e x) ∈ I := fun x => by
    simp [I, RingHom.mem_ker, he]
  let fa : Fin n → (I →ₗ[R] R) := fun a =>
    { toFun := fun x => dv a x
      map_add' := fun x y => hadd a x y
      map_smul' := fun r x => by
        simp only [Submodule.coe_smul_of_tower, Algebra.smul_def, RingHom.id_apply]
        exact hsmul a r x }
  let ℓ : Fin n → Module.Dual R I.Cotangent := fun a => cotFun I (fa a) (fun x hx => hI2 a x hx)
  have hℓ : ∀ a (x : I), ℓ a (I.toCotangent x) = dv a x := fun _ _ => rfl
  let Ψ : (Fin n → R) →ₗ[R] Module.Dual R I.Cotangent :=
    ∑ a, (LinearMap.proj a : (Fin n → R) →ₗ[R] R).smulRight (ℓ a)
  have hΨ : ∀ c (x : I), Ψ c (I.toCotangent x) = ∑ a, c a * dv a x := by
    intro c x
    simp [Ψ, LinearMap.sum_apply, hℓ]

  have hΨinj : Function.Injective Ψ := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro c hc
    have h0 : ∀ x : A, ∑ a, c a * dv a x = 0 := by
      intro x
      have hx := hΨ c ⟨_, hdec x⟩
      rw [hc] at hx
      have : ∀ a, dv a (x - algebraMap R A (e x)) = dv a x := by
        intro a; rw [hdH, map_sub, ← hdH, ← hdH, halg, sub_zero]
      simp only [this] at hx
      exact hx.symm
    obtain ⟨c0, -, hc0⟩ := huniq (fun _ => 0) (fun _ _ => by simp) (fun _ _ => by simp)
      (fun _ => rfl)
    have h1 : c = c0 := hc0 c (fun x => (h0 x).symm)
    have h2 : (0 : Fin n → R) = c0 := hc0 0 (fun x => by simp)
    rw [h1, ← h2]
  have hΨsurj : Function.Surjective Ψ := by
    intro φ
    let D : A → R := fun x => φ (I.toCotangent ⟨_, hdec x⟩)
    have Dadd : ∀ x y, D (x + y) = D x + D y := by
      intro x y
      simp only [D, ← map_add (f := _)]
      congr 2
      ext; simp; ring
    have Dalg : ∀ r, D (algebraMap R A r) = 0 := by
      intro r
      simp only [D]
      have : (⟨_, hdec (algebraMap R A r)⟩ : I) = 0 := by ext; simp [he]
      rw [this, map_zero, map_zero]
    have Dmul : ∀ x y, D (x * y) = e x * D y + e y * D x := by
      intro x y
      have hsq : (x - algebraMap R A (e x)) * (y - algebraMap R A (e y)) ∈ I ^ 2 := by
        rw [pow_two]; exact Ideal.mul_mem_mul (hdec x) (hdec y)
      have key : (⟨_, hdec (x * y)⟩ : I) = e x • (⟨_, hdec y⟩ : I) + e y • (⟨_, hdec x⟩ : I) +
          ⟨_, Ideal.pow_le_self two_ne_zero hsq⟩ := by
        ext
        simp only [Submodule.coe_add, Submodule.coe_smul_of_tower, Algebra.smul_def, map_mul]
        ring
      have hw0 : I.toCotangent ⟨(x - algebraMap R A (e x)) * (y - algebraMap R A (e y)),
          Ideal.pow_le_self two_ne_zero hsq⟩ = 0 := (I.toCotangent_eq_zero _).2 hsq
      simp only [D]
      rw [key]
      simp only [map_add (f := _), LinearMap.map_smul_of_tower, hw0,
        add_zero, map_smul, smul_eq_mul]
    obtain ⟨c, hc, -⟩ := huniq D Dadd Dmul Dalg
    refine ⟨c, ?_⟩
    ext w
    obtain ⟨x, rfl⟩ := I.toCotangent_surjective w
    rw [hΨ, ← hc]
    simp only [D]
    congr 2
    ext
    simp [(RingHom.mem_ker).1 x.2]
  let Ψe : (Fin n → R) ≃ₗ[R] Module.Dual R I.Cotangent :=
    LinearEquiv.ofBijective Ψ ⟨hΨinj, hΨsurj⟩
  have hΨsingle : ∀ a, Ψ (Pi.single a 1) = ℓ a := by
    intro a
    ext w
    obtain ⟨x, rfl⟩ := I.toCotangent_surjective w
    rw [hΨ, hℓ]
    simp [Pi.single_apply]
  let w : Fin n → I.Cotangent := fun i =>
    (Module.evalEquiv R I.Cotangent).symm
      ((LinearMap.proj i : (Fin n → R) →ₗ[R] R) ∘ₗ Ψe.symm.toLinearMap)
  have hw : ∀ a i, ℓ a (w i) = if a = i then 1 else 0 := by
    intro a i
    simp only [w, Module.apply_evalEquiv_symm_apply, LinearMap.comp_apply, LinearEquiv.coe_coe,
      LinearMap.proj_apply]
    have : Ψe.symm (ℓ a) = Pi.single a 1 := by
      rw [LinearEquiv.symm_apply_eq]; exact (hΨsingle a).symm
    rw [this]
    by_cases h : a = i
    · subst h; simp
    · simp [h, Ne.symm h]
  choose y hy using fun i => I.toCotangent_surjective (w i)
  have hzI : ∀ i, (y i : A) ∈ I := fun i => (y i).2
  have hdz : ∀ a i, dv a (y i : A) = if a = i then 1 else 0 := by
    intro a i; rw [← hℓ, hy, hw]
  have hImax : I ≤ maximalIdeal A := by
    intro x hx
    rw [mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    have := hu.map e
    rw [(RingHom.mem_ker).1 hx] at this
    exact not_isUnit_zero this
  have hnak : I ≤ Ideal.span (Set.range fun i => (y i : A)) := by
    refine Submodule.le_of_le_smul_of_le_jacobson_bot (I := maximalIdeal A)
      (IsNoetherian.noetherian I) ?_ ?_
    · rw [IsLocalRing.jacobson_eq_maximalIdeal ⊥ bot_ne_top]
    · intro x hx
      set s := ∑ a, algebraMap R A (dv a x) * (y a : A) with hs
      have hsI : s ∈ Ideal.span (Set.range fun i => (y i : A)) :=
        Ideal.sum_mem _ fun a _ => Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨a, rfl⟩)
      have hsI' : s ∈ I := Ideal.sum_mem _ fun a _ => Ideal.mul_mem_left _ _ (hzI a)
      have hr : x - s ∈ I := I.sub_mem hx hsI'
      have hdr : ∀ b, dv b (x - s) = 0 := by
        intro b

        rw [hdH, map_sub, hs, map_sum]
        simp only [← hdH, hsmul, hdz]
        simp
      have hcot : I.toCotangent ⟨x - s, hr⟩ = 0 := by
        refine (Module.forall_dual_apply_eq_zero_iff R _).1 fun φ => ?_
        obtain ⟨c, rfl⟩ := hΨsurj φ
        rw [hΨ]; simp [hdr]
      have hsq : x - s ∈ I ^ 2 := (I.toCotangent_eq_zero _).1 hcot
      have hxs : x = s + (x - s) := by ring
      rw [hxs]
      refine Submodule.add_mem_sup hsI ?_
      rw [pow_two] at hsq
      exact Submodule.smul_mono_left hImax hsq
  refine ⟨fun i => (y i : A), fun i => (RingHom.mem_ker).1 (y i).2, hdz, ?_⟩
  have hmapR : (maximalIdeal R).map (algebraMap R A) ≤ maximalIdeal A := by
    rw [Ideal.map_le_iff_le_comap]
    intro r hr
    rw [Ideal.mem_comap, mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    have := hu.map e
    rw [he] at this
    exact (mem_maximalIdeal r).1 hr this
  apply le_antisymm
  · intro x hx
    have hex : e x ∈ maximalIdeal R := by
      rw [mem_maximalIdeal, mem_nonunits_iff]
      intro hu
      have h1 : algebraMap R A (e x) ∈ maximalIdeal A := by
        have := (maximalIdeal A).sub_mem hx (hImax (hdec x))
        simpa using this
      exact (mem_maximalIdeal _).1 h1 (hu.map _)
    have hxe : x = algebraMap R A (e x) + (x - algebraMap R A (e x)) := by ring
    rw [hxe]
    exact Submodule.add_mem_sup (Ideal.mem_map_of_mem _ hex) (hnak (hdec x))
  · refine sup_le hmapR ?_
    rw [Ideal.span_le]
    rintro _ ⟨i, rfl⟩
    exact hImax (hzI i)

end GlobalTheory.CoordsAlg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DerivationFamilyCotangentBasis =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTangentVectorOfOriginDerivation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTangentVectorOfOriginDerivation", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalRingDualNumber\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupSchemeStalkEvalAtOriginOriginStalkConstants\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SpecMapFromSpecStalkOriginCompStructureEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.Heat GlobalTheory.FormalOrigin
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CoordsOrigin

noncomputable section
namespace GlobalTheory.CoordsOrigin

variable {R : Type} [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G]

def derHom (D : G.left.presheaf.stalk (origin G) → R) (hadd : ∀ x y, D (x + y) = D x + D y)
    (hmul : ∀ x y, D (x * y) = evO G x * D y + evO G y * D x) (hc : ∀ r, D (constO G r) = 0) :
    G.left.presheaf.stalk (origin G) →+* DualNumber R where
  toFun f := TrivSqZeroExt.inl (evO G f) + TrivSqZeroExt.inr (D f)
  map_one' := by
    have h1 : D 1 = 0 := by simpa using hc 1
    ext <;> simp [h1]
  map_mul' x y := by
    ext <;> simp [hmul]
    ring
  map_zero' := by
    have h0 : D 0 = 0 := by simpa using hadd 0 0
    ext <;> simp [h0]
  map_add' x y := by
    ext <;> simp [hadd]

end GlobalTheory.CoordsOrigin

namespace GlobalTheory.CoordsOrigin
theorem exists_tan_of_derivation (R : Type) [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G]
    [IsCommMonObj G] (D : G.left.presheaf.stalk (origin G) → R) (hadd : ∀ x y, D (x + y) = D x + D y)
    (hmul : ∀ x y, D (x * y) = evO G x * D y + evO G y * D x) (hc : ∀ r, D (constO G r) = 0) :
    ∃ v : TanM (𝟙 (Sp R)) G, ∀ f, tanDer G v f = D f := by
  set ψ := derHom G D hadd hmul hc with hψdef
  have hψ : ∀ f, ψ f = TrivSqZeroExt.inl (evO G f) + TrivSqZeroExt.inr (D f) := fun f => rfl
  haveI : IsLocalHom (evO G) := Scheme.isLocalHom_stalkClosedPointTo' (R := R) (η[G]).left
  haveI hloc : IsLocalHom ψ := ⟨fun a ha => by
    have h2 : IsUnit (ψ a).fst := (TrivSqZeroExt.isUnit_iff_isUnit_fst).1 ha
    simp only [hψ, TrivSqZeroExt.fst_add, TrivSqZeroExt.fst_inl, TrivSqZeroExt.fst_inr, add_zero] at h2
    exact isUnit_of_map_unit (evO G) a h2⟩
  haveI hloc' : IsLocalHom (CommRingCat.ofHom ψ).hom := hloc
  let p : Sp (DualNumber R) ⟶ G.left := spMap ψ ≫ G.left.fromSpecStalk (origin G)
  have hcomp : ψ.comp (constO G) = algebraMap R (DualNumber R) := by
    ext r <;> simp [hψ, evO_constO, hc, TrivSqZeroExt.algebraMap_eq_inl]
  have hover : p ≫ G.hom = (overAt (𝟙 (Sp R)) (DualNumber R)).hom := by
    simp only [p, Category.assoc]
    rw [spMap_fromSpecStalk_origin_hom, hcomp]
    simp [overAt]
  let w : overAt (𝟙 (Sp R)) (DualNumber R) ⟶ G := Over.homMk p hover
  have hw : smT (𝟙 (Sp R)) 0 w = 1 := by
    apply Over.OverMorphism.ext
    rw [smT_left, one_left]
    have e1 : (epsMul (0 : R)).comp ψ = (algebraMap R (DualNumber R)).comp (evO G) := by
      ext f <;> simp [hψ, epsMul, TrivSqZeroExt.algebraMap_eq_inl]
    have e2 : spMap (evO G) ≫ G.left.fromSpecStalk (origin G) = (η[G]).left :=
      Scheme.Spec_stalkClosedPointTo_fromSpecStalk (R := CommRingCat.of R) (η[G]).left
    change spMap (epsMul (0 : R)) ≫ spMap ψ ≫ G.left.fromSpecStalk (origin G) = _
    have e3 : spMap (epsMul (0 : R)) ≫ spMap ψ = spMap ((epsMul (0 : R)).comp ψ) := by
      simp only [spMap, ← Spec.map_comp]; rfl
    have e4 : spMap ((algebraMap R (DualNumber R)).comp (evO G)) = spMap (algebraMap R (DualNumber R)) ≫ spMap (evO G) := by
      simp only [spMap, ← Spec.map_comp]; rfl
    rw [← Category.assoc, e3, e1, e4, Category.assoc, e2]
    simp [overAt]
  refine ⟨ReciprocityTheory.ChartRestriction.G.PullbackSections.mkT w hw, fun f => ?_⟩
  rw [tanDer_eq]
  have key : (G.left.presheaf.stalkCongr (Inseparable.of_eq (tv_closedPoint G (ReciprocityTheory.ChartRestriction.G.PullbackSections.mkT w hw)).symm)).hom ≫
      Scheme.stalkClosedPointTo (R := CommRingCat.of (DualNumber R)) (tv (ReciprocityTheory.ChartRestriction.G.PullbackSections.mkT w hw)).left =
      CommRingCat.ofHom ψ := by
    refine TopCat.Presheaf.stalk_hom_ext _ fun U hU => ?_
    rw [TopCat.Presheaf.stalkCongr_hom]
    erw [TopCat.Presheaf.germ_stalkSpecializes_assoc]
    exact Scheme.germ_stalkClosedPointTo_Spec_fromSpecStalk (CommRingCat.ofHom ψ) U _
  rw [key]
  simp [hψ]
end GlobalTheory.CoordsOrigin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTangentVectorOfOriginDerivation =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTangentVectorOfOriginDerivationStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTangentVectorOfOriginDerivationStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalRingDualNumber\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTangentVectorOfOriginDerivation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.Heat GlobalTheory.FormalOrigin
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CoordsOrigin

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTangentVectorOfOriginDerivationStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldEvalOriginEqTangentDerivativ =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldEvalOriginEqTangentDerivativ", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalRingDualNumber\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.Heat GlobalTheory.FormalOrigin
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CoordsOrigin

noncomputable section

namespace GlobalTheory.CoordsOrigin

variable {A : Type} [CommRing A] [IsLocalRing A] {X : Scheme.{0}}

theorem valR_eq_germ (x : Sp A ⟶ X) (U : X.Opens) (hx : x (IsLocalRing.closedPoint A) ∈ U) (f : Γ(X, U)) :
    valR x U f = (X.presheaf.germ U _ hx ≫ Scheme.stalkClosedPointTo (R := CommRingCat.of A) x).hom f := by
  have e : X.presheaf.germ U _ hx ≫ Scheme.stalkClosedPointTo (R := CommRingCat.of A) x =
      x.appLE U ⊤ (Scheme.preimage_eq_top_of_closedPoint_mem x hx).ge ≫ (Scheme.ΓSpecIso (CommRingCat.of A)).hom := by
    rw [Scheme.germ_stalkClosedPointTo]
    simp [Iso.trans_hom, Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_map_assoc]
  rw [e, valR, dite_eq_left (Scheme.preimage_eq_top_of_closedPoint_mem x hx).ge]
  rfl

end GlobalTheory.CoordsOrigin

namespace GlobalTheory.CoordsOrigin

variable {R : Type} [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G]

theorem eta_hom : (η[G]).left ≫ G.hom = 𝟙 (Sp R) := Over.w (η[G])

theorem isTr_eta_tv (v : TanM (𝟙 (Sp R)) G) :
    IsTr G (RingHom.id R) (η[G]).left v (tv v).left := by
  have hη := eta_hom G
  refine ⟨1, Over.homMk (tv v).left ?_, ?_, ?_, ?_⟩
  · have := Over.w (tv v)
    simp only [Over.mk_hom, Category.comp_id] at this ⊢
    rw [this, hη, Category.comp_id]
  · rw [one_left]
    simp [hη]
  · have hd : dualMap (RingHom.id R) = RingHom.id (DualNumber R) := by
      ext x <;> simp [dualMap]
    simp [hd, spMap]
  · rw [_root_.one_mul]
    rfl

theorem evO_germ_of_isInv (v : TanM (𝟙 (Sp R)) G) (dd : Fld G.left) (hinv : IsInv G v dd) (O : G.left.Opens)
    (hO : origin G ∈ O) (f : Γ(G.left, O)) :
    evO G ((G.left.presheaf.germ O (origin G) hO).hom (dd O f)) =
      tanDer G v ((G.left.presheaf.germ O (origin G) hO).hom f) := by
  have hη := eta_hom G
  have hg : (η[G]).left ≫ G.hom = spMap (RingHom.id R) := by
    rw [hη]; simp [spMap]
  have hO' : (tv v).left (IsLocalRing.closedPoint (DualNumber R)) ∈ O := by
    rw [tv_closedPoint]; exact hO
  have htop : ⊤ ≤ (η[G]).left ⁻¹ᵁ O := (Scheme.preimage_eq_top_of_closedPoint_mem _ hO).ge
  have key := hinv.2 R (RingHom.id R) (η[G]).left (tv v).left O f hg htop (isTr_eta_tv G v)
  rw [valR_eq_germ _ O hO', valR_eq_germ (η[G]).left O hO] at key
  rw [tanDer_eq, evO]
  have e2 : G.left.presheaf.germ O (origin G) hO ≫
      (G.left.presheaf.stalkCongr (Inseparable.of_eq (tv_closedPoint G v).symm)).hom =
        G.left.presheaf.germ O _ hO' := by
    rw [TopCat.Presheaf.stalkCongr_hom]
    exact TopCat.Presheaf.germ_stalkSpecializes _ _ _
  rw [← CommRingCat.comp_apply, ← Category.assoc, e2]
  exact key.symm
end GlobalTheory.CoordsOrigin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldEvalOriginEqTangentDerivativ =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldEvalOriginEqTangentDerivativStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldEvalOriginEqTangentDerivativStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalRingDualNumber\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldEvalOriginEqTangentDerivativ\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.Heat GlobalTheory.FormalOrigin
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CoordsOrigin

theorem _root_.GlobalTheory.T.invariantVectorField_eval_origin_eq_tangentDerivative : ∀ (R : Type) [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (v : TanM (𝟙 (Sp R)) G) (dd : Fld G.left), IsInv G v dd → ∀ (O : G.left.Opens) (hO : origin G ∈ O) (f : Γ(G.left, O)), evO G ((G.left.presheaf.germ O (origin G) hO).hom (dd O f)) = tanDer G v ((G.left.presheaf.germ O (origin G) hO).hom f) := by
  first | exact @GlobalTheory.CoordsOrigin.evO_germ_of_isInv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldEvalOriginEqTangentDerivativStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OriginLocalRingNoetherianFreeUnitSectionConormal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.OriginLocalRingNoetherianFreeUnitSectionConormal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntDerApply\npublic import Development.AbelianVarietyTheory.BlockTheory.JetGauges.HodgeTateCharacterSystems\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CotangentBidualToTangentFunctionInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalRingDualNumber\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.Heat GlobalTheory.FormalOrigin
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CoordsOrigin

noncomputable section

namespace GlobalTheory.CoordsOrigin
variable {R : Type} [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G]

theorem constO_eq_strMap : constO G = (GlobalTheory.IndefiniteRowSideFullHecke.HodgeTateCharacterSystems.strMap G).hom := by
  ext r
  rw [GlobalTheory.HodgeTateCompare.strMap_eq]
  have h1 : (StructureSheaf.toStalk R (G.hom (origin G))).hom r =
      ((Spec (CommRingCat.of R)).presheaf.germ ⊤ (G.hom (origin G)) trivial).hom
        ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom r) := by
    rw [Scheme.ΓSpecIso_inv]
    rfl
  have h2 := congrArg (fun q => q.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom r))
    (Scheme.Hom.germ_stalkMap G.hom ⊤ (origin G) trivial)
  simp only [CommRingCat.hom_comp, RingHom.comp_apply] at h2
  change _ = (G.hom.stalkMap (origin G)).hom ((StructureSheaf.toStalk R (G.hom (origin G))).hom r)
  rw [h1, h2]
  simp [constO, Scheme.Hom.appLE]
  first
    | (erw [CommRingCat.comp_apply, TopCat.Presheaf.germ_res_apply]; done)
    | (erw [CommRingCat.comp_apply, TopCat.Presheaf.germ_res_apply]; rfl)

theorem free_finite_cotangent_of_eq [Smooth G.hom] (φ : R →+* G.left.presheaf.stalk (origin G))
    (hφ : φ = (GlobalTheory.IndefiniteRowSideFullHecke.HodgeTateCharacterSystems.strMap G).hom) :
    letI : Algebra R (G.left.presheaf.stalk (origin G)) := φ.toAlgebra
    Module.Free R (RingHom.ker (evO G)).Cotangent ∧ Module.Finite R (RingHom.ker (evO G)).Cotangent := by
  subst hφ
  obtain ⟨h1, h2⟩ := GlobalTheory.HodgeTateCompare.finite_projective_of_smooth (G := G)
  change Module.Free R (GlobalTheory.IndefiniteRowSideFullHecke.HodgeTateCharacterSystems.Cotangent G) ∧ Module.Finite R (GlobalTheory.IndefiniteRowSideFullHecke.HodgeTateCharacterSystems.Cotangent G)
  exact ⟨Module.free_of_flat_of_isLocalRing, h1⟩

end GlobalTheory.CoordsOrigin

theorem GlobalTheory.CoordsOrigin.noetherian_free_cotangent : ∀ (R : Type) [CommRing R] [IsLocalRing R] [IsNoetherianRing R]
    (G : Over (Sp R)) [GrpObj G], Smooth G.hom → IsNoetherianRing (G.left.presheaf.stalk (origin G)) ∧
      (letI : Algebra R (G.left.presheaf.stalk (origin G)) := (constO G).toAlgebra;
        Module.Free R (RingHom.ker (evO G)).Cotangent ∧ Module.Finite R (RingHom.ker (evO G)).Cotangent) := by
  intro R _ _ _ G _ hs
  haveI := hs
  haveI : IsLocallyNoetherian G.left := LocallyOfFiniteType.isLocallyNoetherian G.hom
  exact ⟨inferInstance, GlobalTheory.CoordsOrigin.free_finite_cotangent_of_eq G _ (GlobalTheory.CoordsOrigin.constO_eq_strMap G)⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OriginLocalRingNoetherianFreeUnitSectionConormal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OriginLocalRingNoetherianFreeUnitSectionConormalStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.OriginLocalRingNoetherianFreeUnitSectionConormalStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntDerApply\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OriginLocalRingNoetherianFreeUnitSectionConormal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalRingDualNumber\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.Heat GlobalTheory.FormalOrigin
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CoordsOrigin

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OriginLocalRingNoetherianFreeUnitSectionConormalStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentDerivativeAtOriginAddTangentVector =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentDerivativeAtOriginAddTangentVector", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalRingDualNumber\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.Heat GlobalTheory.FormalOrigin
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CoordsOrigin

noncomputable section

namespace GlobalTheory.CoordsOrigin.OriginCoordinatesAdd

theorem isLocalRing_tsz (S M : Type) [CommRing S] [IsLocalRing S] [AddCommGroup M] [Module S M] [Module Sᵐᵒᵖ M]
    [IsCentralScalar S M] : IsLocalRing (TrivSqZeroExt S M) :=
  IsLocalRing.of_isUnit_or_isUnit_one_sub_self fun x => by
    rcases IsLocalRing.isUnit_or_isUnit_one_sub_self x.fst with h | h
    · exact Or.inl ((TrivSqZeroExt.isUnit_iff_isUnit_fst).2 h)
    · exact Or.inr ((TrivSqZeroExt.isUnit_iff_isUnit_fst).2 (by simpa using h))

theorem isLocalHom_map {S M N : Type} [CommRing S] [AddCommGroup M] [Module S M] [AddCommGroup N] [Module S N]
    [Module Sᵐᵒᵖ M] [IsCentralScalar S M] [Module Sᵐᵒᵖ N] [IsCentralScalar S N] (L : M →ₗ[S] N) :
    IsLocalHom ((TrivSqZeroExt.map L : TrivSqZeroExt S M →ₐ[S] TrivSqZeroExt S N) : TrivSqZeroExt S M →+* TrivSqZeroExt S N) :=
  ⟨fun a ha => (TrivSqZeroExt.isUnit_iff_isUnit_fst).2 (by
    simpa using (TrivSqZeroExt.isUnit_iff_isUnit_fst).1 ha)⟩

variable {X : Scheme.{0}}

def valAt {A : Type} [CommRing A] [IsLocalRing A] (x : Sp A ⟶ X) (p : X) (h : x (IsLocalRing.closedPoint A) = p) :
    X.presheaf.stalk p →+* A :=
  ((X.presheaf.stalkCongr (Inseparable.of_eq h.symm)).hom ≫
    Scheme.stalkClosedPointTo (R := CommRingCat.of A) x).hom

theorem valAt_comp {A B : Type} [CommRing A] [IsLocalRing A] [CommRing B] [IsLocalRing B] (g : A →+* B)
    [IsLocalHom g] (x : Sp A ⟶ X) (p : X) (hx : x (IsLocalRing.closedPoint A) = p)
    (hy : (spMap g ≫ x) (IsLocalRing.closedPoint B) = p) (f : X.presheaf.stalk p) :
    valAt (spMap g ≫ x) p hy f = g (valAt x p hx f) := by
  subst hx
  let ψ : X.presheaf.stalk (x (IsLocalRing.closedPoint A)) ⟶ CommRingCat.of B :=
    Scheme.stalkClosedPointTo (R := CommRingCat.of A) x ≫ CommRingCat.ofHom g
  have hψl : IsLocalHom ψ.hom := by
    show IsLocalHom (g.comp (Scheme.stalkClosedPointTo (R := CommRingCat.of A) x).hom)
    infer_instance
  have e1 : Spec.map ψ ≫ X.fromSpecStalk _ = spMap g ≫ x := by
    simp only [ψ, Spec.map_comp, Category.assoc]
    rw [Scheme.Spec_stalkClosedPointTo_fromSpecStalk]
  have e2 := congrArg (SpecToEquivOfLocalRing X (CommRingCat.of B)) e1
  have e3 : (SpecToEquivOfLocalRing X (CommRingCat.of B)) (Spec.map ψ ≫ X.fromSpecStalk _) = ⟨_, ψ, hψl⟩ :=
    (SpecToEquivOfLocalRing X (CommRingCat.of B)).apply_symm_apply ⟨_, ψ, hψl⟩
  rw [e3] at e2
  obtain ⟨h1, h2⟩ := SpecToEquivOfLocalRing_eq_iff.1 e2.symm
  dsimp only [SpecToEquivOfLocalRing, Equiv.coe_fn_mk] at h2
  have h2' : Scheme.stalkClosedPointTo (R := CommRingCat.of B) (spMap g ≫ x) =
      (X.presheaf.stalkCongr (Inseparable.of_eq hy.symm)).inv ≫ ψ := h2
  simp only [valAt, h2', Iso.hom_inv_id_assoc]
  simp only [TopCat.Presheaf.stalkCongr_hom, TopCat.Presheaf.stalkSpecializes_refl, Category.id_comp, ψ]
  rfl

theorem valAt_congr {A : Type} [CommRing A] [IsLocalRing A] {x x' : Sp A ⟶ X} (e : x = x') (p : X)
    (h : x (IsLocalRing.closedPoint A) = p) (h' : x' (IsLocalRing.closedPoint A) = p) :
    valAt x p h = valAt x' p h' := by
  subst e; rfl

end GlobalTheory.CoordsOrigin.OriginCoordinatesAdd

namespace GlobalTheory.CoordsOrigin

open GlobalTheory.CoordsOrigin.OriginCoordinatesAdd

theorem tanDer_add : ∀ (R : Type) [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G]
    (u v : TanM (𝟙 (Sp R)) G) (f : G.left.presheaf.stalk (origin G)),
    tanDer G (u + v) f = tanDer G u f + tanDer G v f := by
  intro R _ _ G _ _ u v f
  haveI : IsLocalRing (TrivSqZeroExt R (R × R)) := isLocalRing_tsz R (R × R)
  let P : overAt (𝟙 (Sp R)) (TrivSqZeroExt R (R × R)) ⟶ G :=
    (homAt (𝟙 (Sp R)) (tm (LinearMap.inl R R R)) ≫ tv u) * (homAt (𝟙 (Sp R)) (tm (LinearMap.inr R R R)) ≫ tv v)
  have hz : (0 : R →ₗ[R] R) = (0 : R) • (LinearMap.id : R →ₗ[R] R) := by simp
  have hid : ∀ w : overAt (𝟙 (Sp R)) (DualNumber R) ⟶ G,
      homAt (𝟙 (Sp R)) (tm (LinearMap.id : R →ₗ[R] R)) ≫ w = w := by
    intro w
    simp only [tm]
    rw [TrivSqZeroExt.map_id, homAt_id, Category.id_comp]
  have hfst : homAt (𝟙 (Sp R)) (tm (LinearMap.fst R R R)) ≫ P = tv u := by
    simp only [P]
    rw [MonObj.comp_mul, ← Category.assoc, ← Category.assoc, homAt_comp, homAt_comp,
      ← TrivSqZeroExt.map_comp_map, ← TrivSqZeroExt.map_comp_map, LinearMap.fst_comp_inl, LinearMap.fst_comp_inr, hz]
    change _ * smT (𝟙 (Sp R)) 0 (tv v) = _
    rw [ReciprocityTheory.ChartRestriction.G.PullbackSections.tv_mem, _root_.mul_one, hid]
  have hsnd : homAt (𝟙 (Sp R)) (tm (LinearMap.snd R R R)) ≫ P = tv v := by
    simp only [P]
    rw [MonObj.comp_mul, ← Category.assoc, ← Category.assoc, homAt_comp, homAt_comp,
      ← TrivSqZeroExt.map_comp_map, ← TrivSqZeroExt.map_comp_map, LinearMap.snd_comp_inl, LinearMap.snd_comp_inr, hz]
    change smT (𝟙 (Sp R)) 0 (tv u) * _ = _
    rw [ReciprocityTheory.ChartRestriction.G.PullbackSections.tv_mem, _root_.one_mul, hid]
  have hsum : homAt (𝟙 (Sp R)) (tm (LinearMap.coprod (LinearMap.id : R →ₗ[R] R) LinearMap.id)) ≫ P = tv (u + v) := by
    simp only [P]
    rw [MonObj.comp_mul, ← Category.assoc, ← Category.assoc, homAt_comp, homAt_comp,
      ← TrivSqZeroExt.map_comp_map, ← TrivSqZeroExt.map_comp_map, LinearMap.coprod_inl, LinearMap.coprod_inr,
      hid, hid, ReciprocityTheory.ChartRestriction.G.PullbackSections.tv_add]
  have hP : P.left (IsLocalRing.closedPoint (TrivSqZeroExt R (R × R))) = origin G := by
    have e : spMap ((tm (LinearMap.fst R R R) : TrivSqZeroExt R (R × R) →ₐ[R] DualNumber R) :
        TrivSqZeroExt R (R × R) →+* DualNumber R) ≫ P.left = (tv u).left := congrArg (fun q => q.left) hfst
    haveI := isLocalHom_map (LinearMap.fst R R R)
    have e0 : spMap ((tm (LinearMap.fst R R R) : TrivSqZeroExt R (R × R) →ₐ[R] DualNumber R) :
        TrivSqZeroExt R (R × R) →+* DualNumber R) (IsLocalRing.closedPoint (DualNumber R)) =
        IsLocalRing.closedPoint (TrivSqZeroExt R (R × R)) :=
      Spec_closedPoint (f := CommRingCat.ofHom _)
    rw [← e0, ← tv_closedPoint G u, ← e]
    rfl
  have key : ∀ (L : R × R →ₗ[R] R) (w : TanM (𝟙 (Sp R)) G), homAt (𝟙 (Sp R)) (tm L) ≫ P = tv w →
      tanDer G w f = L (valAt P.left (origin G) hP f).snd := by
    intro L w hw
    haveI := isLocalHom_map L
    have e : (tv w).left = spMap ((tm L : TrivSqZeroExt R (R × R) →ₐ[R] DualNumber R) :
        TrivSqZeroExt R (R × R) →+* DualNumber R) ≫ P.left := (congrArg (fun q => q.left) hw).symm
    have hy : (spMap ((tm L : TrivSqZeroExt R (R × R) →ₐ[R] DualNumber R) :
        TrivSqZeroExt R (R × R) →+* DualNumber R) ≫ P.left) (IsLocalRing.closedPoint (DualNumber R)) = origin G :=
      e ▸ tv_closedPoint G w
    rw [tanDer_eq]
    change (valAt (tv w).left (origin G) (tv_closedPoint G w) f).snd = _
    rw [valAt_congr e (origin G) _ hy, valAt_comp _ P.left (origin G) hP hy]
    simp [tm]
  rw [key _ _ hsum, key _ _ hfst, key _ _ hsnd]
  simp

end GlobalTheory.CoordsOrigin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentDerivativeAtOriginAddTangentVector =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentDerivativeAtOriginSmulTangentVector =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentDerivativeAtOriginSmulTangentVector", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalRingDualNumber\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.Heat GlobalTheory.FormalOrigin
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CoordsOrigin

noncomputable section

namespace GlobalTheory.CoordsOrigin


set_option backward.isDefEq.respectTransparency false in
theorem stalkClosedPointTo_localMap_comp {X : Scheme.{0}} {A B : CommRingCat.{0}} [IsLocalRing A] [IsLocalRing B]
    (x : Spec A ⟶ X) (g : A ⟶ B) [IsLocalHom g.hom] (y : Spec B ⟶ X) (hy : y = Spec.map g ≫ x) (x₀ : X)
    (h₁ : x (IsLocalRing.closedPoint A) = x₀) (h₂ : y (IsLocalRing.closedPoint B) = x₀) :
    (X.presheaf.stalkCongr (Inseparable.of_eq h₂.symm)).hom ≫ Scheme.stalkClosedPointTo y =
      ((X.presheaf.stalkCongr (Inseparable.of_eq h₁.symm)).hom ≫ Scheme.stalkClosedPointTo x) ≫ g := by
  subst h₁
  have hy' : y = Spec.map (Scheme.stalkClosedPointTo x ≫ g) ≫ X.fromSpecStalk _ := by
    rw [hy, Spec.map_comp, Category.assoc, Scheme.Spec_stalkClosedPointTo_fromSpecStalk]
  clear hy
  subst hy'
  haveI : IsLocalHom (Scheme.stalkClosedPointTo x ≫ g).hom := by
    rw [CommRingCat.hom_comp]; infer_instance
  refine TopCat.Presheaf.stalk_hom_ext _ fun U hU => ?_
  simp only [TopCat.Presheaf.stalkCongr_hom, Category.assoc, TopCat.Presheaf.germ_stalkSpecializes_assoc]
  exact Scheme.germ_stalkClosedPointTo_Spec_fromSpecStalk (Scheme.stalkClosedPointTo x ≫ g) U _

theorem tanDer_smul : ∀ (R : Type) [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (r : R) (v : TanM (𝟙 (Sp R)) G) (f : G.left.presheaf.stalk (origin G)), tanDer G (r • v) f = r * tanDer G v f := by
  intro R _ _ G _ _ r v f
  have hl : IsLocalHom (CommRingCat.ofHom (epsMul r)).hom := ⟨fun a ha => (TrivSqZeroExt.isUnit_iff_isUnit_fst).2 (by
    simpa [epsMul] using (TrivSqZeroExt.isUnit_iff_isUnit_fst).1 ha)⟩
  have hy : (tv (r • v)).left = Spec.map (CommRingCat.ofHom (epsMul r)) ≫ (tv v).left := by
    rw [ReciprocityTheory.ChartRestriction.G.PullbackSections.tv_smul, smT_left]
  have key := stalkClosedPointTo_localMap_comp (A := CommRingCat.of (DualNumber R)) (B := CommRingCat.of (DualNumber R))
    (tv v).left (CommRingCat.ofHom (epsMul r)) (tv (r • v)).left hy (origin G) (tv_closedPoint G v)
    (tv_closedPoint G (r • v))
  rw [tanDer_eq, tanDer_eq]
  refine (congrArg (fun φ => (φ.hom f).snd) key).trans ?_
  have hs : ∀ a : DualNumber R, (epsMul r a).snd = r * a.snd := fun a => by simp [epsMul]
  exact hs _

end GlobalTheory.CoordsOrigin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentDerivativeAtOriginSmulTangentVector =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentVectorEqOfTangentDerivativeAtOriginEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentVectorEqOfTangentDerivativeAtOriginEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalRingDualNumber\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.Heat GlobalTheory.FormalOrigin
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CoordsOrigin

noncomputable section

namespace GlobalTheory.CoordsOrigin

variable {R : Type} [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G]

def tvStalk (v : TanM (𝟙 (Sp R)) G) : G.left.presheaf.stalk (origin G) ⟶ CommRingCat.of (DualNumber R) :=
  (G.left.presheaf.stalkCongr (Inseparable.of_eq (tv_closedPoint G v).symm)).hom ≫
    Scheme.stalkClosedPointTo (R := CommRingCat.of (DualNumber R)) (tv v).left

instance isLocalHom_tvStalk (v : TanM (𝟙 (Sp R)) G) : IsLocalHom (tvStalk G v).hom := by
  rw [tvStalk, CommRingCat.hom_comp]
  haveI := isLocalHom_of_isIso (G.left.presheaf.stalkCongr (Inseparable.of_eq (tv_closedPoint G v).symm)).hom
  haveI := Scheme.isLocalHom_stalkClosedPointTo (R := CommRingCat.of (DualNumber R)) (tv v).left
  exact RingHom.isLocalHom_comp _ _

theorem specMap_fromSpecStalk_congr {X : Scheme.{0}} {A : CommRingCat.{0}} {x y : X} (h : x = y)
    (s : X.presheaf.stalk y ⟶ A) :
    Spec.map ((X.presheaf.stalkCongr (Inseparable.of_eq h)).hom ≫ s) ≫ X.fromSpecStalk x =
      Spec.map s ≫ X.fromSpecStalk y := by
  subst h
  rw [TopCat.Presheaf.stalkCongr_hom, TopCat.Presheaf.stalkSpecializes_refl, Category.id_comp]

theorem tv_left_eq (v : TanM (𝟙 (Sp R)) G) :
    (tv v).left = Spec.map (tvStalk G v) ≫ G.left.fromSpecStalk (origin G) := by
  rw [tvStalk, specMap_fromSpecStalk_congr (tv_closedPoint G v).symm]
  exact (Scheme.Spec_stalkClosedPointTo_fromSpecStalk _).symm

theorem isLocalHom_epsMul_zero : IsLocalHom (epsMul (0 : R)) :=
  ⟨fun a ha => (TrivSqZeroExt.isUnit_iff_isUnit_fst).2 (by
    simpa [epsMul] using (TrivSqZeroExt.isUnit_iff_isUnit_fst).1 ha)⟩

theorem tvStalk_fst (u v : TanM (𝟙 (Sp R)) G) (f : G.left.presheaf.stalk (origin G)) :
    ((tvStalk G u).hom f).fst = ((tvStalk G v).hom f).fst := by
  haveI := isLocalHom_epsMul_zero (R := R)
  have hl : ∀ w : TanM (𝟙 (Sp R)) G, IsLocalHom (tvStalk G w ≫ CommRingCat.ofHom (epsMul (0 : R))).hom := by
    intro w
    rw [CommRingCat.hom_comp, CommRingCat.hom_ofHom]
    infer_instance
  have hw : ∀ w : TanM (𝟙 (Sp R)) G, Spec.map (tvStalk G w ≫ CommRingCat.ofHom (epsMul (0 : R))) ≫
      G.left.fromSpecStalk (origin G) = (smT (𝟙 (Sp R)) 0 (tv w)).left := by
    intro w
    rw [smT_left, tv_left_eq G w, Spec.map_comp, Category.assoc]
  have e : Spec.map (tvStalk G u ≫ CommRingCat.ofHom (epsMul (0 : R))) ≫ G.left.fromSpecStalk (origin G) =
      Spec.map (tvStalk G v ≫ CommRingCat.ofHom (epsMul (0 : R))) ≫ G.left.fromSpecStalk (origin G) := by
    rw [hw, hw, ReciprocityTheory.ChartRestriction.G.PullbackSections.tv_mem, ReciprocityTheory.ChartRestriction.G.PullbackSections.tv_mem]
  have e2 := (SpecToEquivOfLocalRing G.left (CommRingCat.of (DualNumber R))).symm.injective
    (a₁ := ⟨origin G, tvStalk G u ≫ CommRingCat.ofHom (epsMul (0 : R)), hl u⟩)
    (a₂ := ⟨origin G, tvStalk G v ≫ CommRingCat.ofHom (epsMul (0 : R)), hl v⟩)
    (by rw [SpecToEquivOfLocalRing_symm_apply, SpecToEquivOfLocalRing_symm_apply]; exact e)
  obtain ⟨_, e3⟩ := SpecToEquivOfLocalRing_eq_iff.mp e2
  simp only [TopCat.Presheaf.stalkCongr_hom, TopCat.Presheaf.stalkSpecializes_refl, Category.id_comp] at e3
  have e4 : epsMul (0 : R) ((tvStalk G u).hom f) = epsMul (0 : R) ((tvStalk G v).hom f) := by
    have := congrArg (fun q : G.left.presheaf.stalk (origin G) ⟶ CommRingCat.of (DualNumber R) => q.hom f) e3
    simpa using this
  have e5 := congrArg TrivSqZeroExt.fst e4
  simpa [epsMul] using e5

theorem tanM_eq_of_tanDer : ∀ (R : Type) [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G]
    (u v : TanM (𝟙 (Sp R)) G), (∀ f, tanDer G u f = tanDer G v f) → u = v := by
  intro R _ _ G _ _ u v h
  apply ReciprocityTheory.ChartRestriction.G.PullbackSections.tanM_ext
  apply Over.OverMorphism.ext
  have hs : tvStalk G u = tvStalk G v := by
    ext f
    · exact tvStalk_fst G u v f
    · have hu := tanDer_eq G u f
      have hv := tanDer_eq G v f
      exact hu.symm.trans ((h f).trans hv)
  rw [tv_left_eq G u, tv_left_eq G v, hs]

end GlobalTheory.CoordsOrigin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentVectorEqOfTangentDerivativeAtOriginEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothCommGroupLocalCoordinatesAtOrigin =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothCommGroupLocalCoordinatesAtOrigin", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntDerApply\npublic import Mathlib.RingTheory.Ideal.Cotangent\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DerivationFamilyCotangentBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTangentVectorOfOriginDerivationStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GermOriginConstantSectionEqOriginStalkConstants\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldApplyConstantEqZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantVectorFieldEvalOriginEqTangentDerivativStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OriginLocalRingNoetherianFreeUnitSectionConormalStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocalRingDualNumber\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentDerivativeAtOriginAddTangentVector\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentDerivativeAtOriginSmulTangentVector\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentVectorEqOfTangentDerivativeAtOriginEq\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupSchemeStalkEvalAtOriginOriginStalkConstants\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.Heat GlobalTheory.FormalOrigin
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CoordsOrigin

namespace GlobalTheory.CoordsOrigin

theorem coords_at_origin : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], Smooth G.hom → ∀ (n : ℕ) (v : Module.Basis (Fin n) R (TanM (𝟙 (Sp R)) G)) (dd : Fin n → Fld G.left), (∀ a, IsInv G (v a) (dd a)) → ∀ δ : Fin n → Derivation ℤ (G.left.presheaf.stalk (origin G)) (G.left.presheaf.stalk (origin G)), (∀ a O (hO : origin G ∈ O) f, δ a ((G.left.presheaf.germ O (origin G) hO).hom f) = (G.left.presheaf.germ O (origin G) hO).hom (dd a O f)) → ∃ z : Fin n → G.left.presheaf.stalk (origin G), (∀ i, evO G (z i) = 0) ∧ (∀ a i, evO G (δ a (z i)) = if a = i then 1 else 0) ∧ maximalIdeal (G.left.presheaf.stalk (origin G)) = (maximalIdeal R).map (constO G) ⊔ Ideal.span (Set.range z) := by
  intro R _ _ _ _ G _ _ hsm n v dd hinv δ hδ
  letI : Algebra R (G.left.presheaf.stalk (origin G)) := (constO G).toAlgebra
  obtain ⟨hN, hF, hFin⟩ := _root_.GlobalTheory.CoordsOrigin.noetherian_free_cotangent R G hsm
  have key : ∀ a f, evO G (δ a f) = tanDer G (v a) f := by
    intro a f
    obtain ⟨O, hx, g, rfl⟩ := G.left.presheaf.exists_germ_eq f
    rw [hδ a O hx g]
    exact GlobalTheory.T.invariantVectorField_eval_origin_eq_tangentDerivative R G (v a) (dd a) (hinv a) O hx g
  have hadd : ∀ a x y, tanDer G (v a) (x + y) = tanDer G (v a) x + tanDer G (v a) y := by
    intro a x y
    rw [← key, ← key, ← key, map_add (f := _), map_add (f := _)]
  have hmul : ∀ a x y, tanDer G (v a) (x * y) = evO G x * tanDer G (v a) y + evO G y * tanDer G (v a) x := by
    intro a x y
    rw [← key, ← key, ← key, Derivation.leibniz, smul_eq_mul, smul_eq_mul, map_add (f := _), map_mul, map_mul]
  have hc : ∀ a r, tanDer G (v a) (algebraMap R _ r) = 0 := by
    intro a r
    rw [← key]
    show evO G (δ a (constO G r)) = 0
    rw [← GlobalTheory.GermConst.germ_constFn_origin R G ⊤ trivial r, hδ a ⊤ trivial,
      GlobalTheory.Heat.isInv_constFn R G (v a) (dd a) (hinv a) ⊤ r, map_zero, map_zero]
  let φ : TanM (𝟙 (Sp R)) G →+ (G.left.presheaf.stalk (origin G) → R) :=
    { toFun := fun w => tanDer G w
      map_zero' := funext fun f => by
        have h := _root_.GlobalTheory.CoordsOrigin.tanDer_smul R G 0 0 f
        rwa [zero_smul, zero_mul] at h
      map_add' := fun u w => funext fun f => _root_.GlobalTheory.CoordsOrigin.tanDer_add R G u w f }
  have hlin : ∀ (c : Fin n → R) f, tanDer G (∑ a, c a • v a) f = ∑ a, c a * tanDer G (v a) f := by
    intro c f
    have h1 : tanDer G (∑ a, c a • v a) f = φ (∑ a, c a • v a) f := rfl

    rw [h1, map_sum, Finset.sum_apply]
    exact Finset.sum_congr rfl fun a _ => _root_.GlobalTheory.CoordsOrigin.tanDer_smul R G (c a) (v a) f
  have hbasis : ∀ D : G.left.presheaf.stalk (origin G) → R, (∀ x y, D (x + y) = D x + D y) →
      (∀ x y, D (x * y) = evO G x * D y + evO G y * D x) → (∀ r, D (algebraMap R _ r) = 0) →
      ∃! c : Fin n → R, ∀ x, D x = ∑ a, c a * tanDer G (v a) x := by
    intro D h1 h2 h3
    obtain ⟨w, hw⟩ := _root_.GlobalTheory.CoordsOrigin.exists_tan_of_derivation R G D h1 h2 h3
    refine ⟨fun a => v.repr w a, ?_, ?_⟩
    · intro x
      rw [← hw x, ← hlin]
      congr 1
      exact (v.sum_repr w).symm
    · intro c hc'
      have hw' : ∑ a, c a • v a = w := _root_.GlobalTheory.CoordsOrigin.tanM_eq_of_tanDer R G _ _ fun f => by rw [hlin, hw, hc' f]
      funext a
      rw [← hw', v.repr_sum_self]
  obtain ⟨z, hz0, hz1, hz2⟩ := _root_.GlobalTheory.CoordsAlg.coords_of_derivation_basis R _ (evO G) (GlobalTheory.FormalOrigin.evO_constO R G) hF hFin n
    (fun a => tanDer G (v a)) hadd hmul hc hbasis
  exact ⟨z, hz0, fun a i => by rw [key]; exact hz1 a i, hz2⟩

end GlobalTheory.CoordsOrigin
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothCommGroupLocalCoordinatesAtOrigin =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothCommGroupLocalCoordinatesAtOriginStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothCommGroupLocalCoordinatesAtOriginStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntDerApply\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothCommGroupLocalCoordinatesAtOrigin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry IsLocalRing
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.Heat GlobalTheory.FormalOrigin
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothCommGroupLocalCoordinatesAtOriginStatement =====
