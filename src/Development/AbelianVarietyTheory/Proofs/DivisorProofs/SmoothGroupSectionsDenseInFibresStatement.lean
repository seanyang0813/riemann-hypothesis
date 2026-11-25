module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtChart
public import Mathlib.RingTheory.Etale.Kaehler
public import Mathlib.RingTheory.LocalRing.Module
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Mathlib.RingTheory.Unramified.Basic
public import Mathlib.RingTheory.Unramified.Finite
public import Mathlib.RingTheory.Spectrum.Prime.Topology
public import Mathlib.RingTheory.AdicCompletion.Basic
public import Mathlib.RingTheory.AdicCompletion.RingHom
public import Mathlib.Combinatorics.Nullstellensatz
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.TotallySplit
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleChartSmoothAlgebraLocalPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DenseSectionsOfAlgebraicAffineNbhd, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DenseSectionsOfAlgebraicAffineNbhdStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartLocalizationFiniteTypeFormallyUnramifi, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartLocalizationFiniteTypeFormallyUnramifiStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroAlgebraMapEqMulOfFormallyUnramifiedA, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolyVanishingOfFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionLiftingResidueValues, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothGroupSectionsDenseInFibres, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothGroupSectionsDenseInFibresStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleChartSmoothAlgebraLocalPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleChartSmoothAlgebraLocalPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtChart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Etale.Kaehler\npublic import Mathlib.RingTheory.LocalRing.Module\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

noncomputable section
namespace GlobalTheory.DenseSec

open KaehlerDifferential
open scoped TensorProduct

theorem formallyEtale_of_bijective_kaehler_mapBaseChange (R P B : Type*) [CommRing R] [CommRing P] [CommRing B]
    [Algebra R P] [Algebra R B] [Algebra P B] [IsScalarTower R P B] [Algebra.FormallySmooth R B]
    (h : Function.Bijective (mapBaseChange R P B)) : Algebra.FormallyEtale P B := by
  have h1 : Subsingleton Ω[B⁄P] := by
    refine subsingleton_of_forall_eq 0 fun x => ?_
    obtain ⟨y, rfl⟩ := map_surjective R P B x
    exact (exact_mapBaseChange_map R P B y).mpr (h.2 y)
  have h2 : Subsingleton (Algebra.H1Cotangent P B) := by
    refine subsingleton_of_forall_eq 0 fun x => ?_
    have h3 : Algebra.H1Cotangent.δ R P B x = 0 := by
      apply h.1
      rw [map_zero]
      exact (Algebra.H1Cotangent.exact_δ_mapBaseChange R P B _).mpr ⟨x, rfl⟩
    obtain ⟨y, rfl⟩ := (Algebra.H1Cotangent.exact_map_δ R P B x).mp h3
    rw [Subsingleton.elim y 0, map_zero]
  exact ⟨h1, h2⟩

theorem exists_etChart : ∀ (R : Type) [CommRing R] [IsLocalRing R] (A : Type) [CommRing A] [Algebra R A]
    [Algebra.Smooth R A] (ε : A →ₐ[R] R), ∃ (g : ℕ) (t : Fin g → A) (h : A),
      (∀ i, ε (t i) = 0) ∧ IsUnit (ε h) ∧ GlobalTheory.DenseSec.EtChart R A t h := by
  intro R _ _ A _ _ _ ε
  classical
  let p : Ideal A := (maximalIdeal R).comap ε
  haveI : p.IsPrime := Ideal.comap_isPrime _ _
  obtain ⟨κ, a, b, hb⟩ := Module.exists_basis_of_span_of_flat _
    (span_range_map_derivation_of_isLocalization R _ (Localization.AtPrime p) p.primeCompl)
  let t : κ → A := fun i => a i - algebraMap R A (ε (a i))
  have hDt : ∀ i, D R A (t i) = D R A (a i) := by intro i; simp [t]
  have hεt : ∀ i, ε (t i) = 0 := by intro i; simp [t]
  let e : (κ →₀ A) →ₗ[A] Ω[A⁄R] :=
    Finsupp.linearCombination A fun i : κ ↦ D R A (t i)
  let l₁ : (κ →₀ A) →ₗ[A] (κ →₀ Localization.AtPrime p) :=
    Finsupp.mapRange.linearMap (Algebra.linearMap A (Localization.AtPrime p))
  let l₂ : Ω[A⁄R] →ₗ[A] Ω[Localization.AtPrime p⁄R] := map R R A (Localization.AtPrime p)
  let eₚ : (κ →₀ Localization.AtPrime p) →ₗ[Localization.AtPrime p] Ω[Localization.AtPrime p⁄R] :=
    IsLocalizedModule.mapExtendScalars p.primeCompl l₁ l₂ (Localization.AtPrime p) e
  have : eₚ = b.repr.symm := by
    ext i
    trans IsLocalizedModule.map p.primeCompl l₁ l₂ e <| l₁ <| Finsupp.single i 1
    · simp [eₚ, -IsLocalizedModule.map_apply, l₁]
    · simp [l₂, e, hb, hDt]
  have heₚ : Function.Bijective eₚ := this ▸ b.repr.symm.bijective
  have : Finite κ := Module.Finite.finite_basis b
  obtain ⟨g, hg, h⟩ := Module.FinitePresentation.exists_notMem_bijective e p l₁ l₂ heₚ
  let l₁ₜ : (κ →₀ A) →ₗ[A] (κ →₀ Localization.Away g) :=
    Finsupp.mapRange.linearMap (Algebra.linearMap A _)
  let l₂ₜ : Ω[A⁄R] →ₗ[A] Ω[Localization.Away g⁄R] :=
    map R R A (Localization.Away g)
  rw [← IsLocalizedModule.map_bijective_iff_localizedModuleMap_bijective l₁ₜ l₂ₜ] at h
  let eₜ' : (κ →₀ Localization.Away g) →ₗ[Localization.Away g] Ω[Localization.Away g⁄R] :=
    IsLocalizedModule.mapExtendScalars (Submonoid.powers g) l₁ₜ l₂ₜ (Localization.Away g) e
  let bB : Module.Basis κ (Localization.Away g) Ω[Localization.Away g⁄R] :=
    .ofRepr (LinearEquiv.ofBijective eₜ' h).symm
  have hbB : ∀ i, bB i = D R _ (algebraMap A (Localization.Away g) (t i)) := by
    intro i
    have h1 : bB i = eₜ' (Finsupp.single i 1) := by
      rfl
    rw [h1]
    trans IsLocalizedModule.map (Submonoid.powers g) l₁ₜ l₂ₜ e <| l₁ₜ <| Finsupp.single i 1
    · simp [eₜ', -IsLocalizedModule.map_apply, l₁ₜ]
    · simp [l₂ₜ, e]
  let eκ : κ ≃ Fin (Nat.card κ) := Finite.equivFin κ
  refine ⟨Nat.card κ, t ∘ eκ.symm, g, fun i => hεt _, ?_, ?_⟩
  · have hg' : ε g ∉ maximalIdeal R := hg
    exact (IsLocalRing.notMem_maximalIdeal.mp hg')
  · unfold EtChart
    letI inst : Algebra (MvPolynomial (Fin (Nat.card κ)) R) (Localization.Away g) :=
      ((algebraMap A (Localization.Away g)).comp (MvPolynomial.aeval (t ∘ eκ.symm)).toRingHom).toAlgebra
    show Algebra.Etale (MvPolynomial (Fin (Nat.card κ)) R) (Localization.Away g)
    have hsc : IsScalarTower R (MvPolynomial (Fin (Nat.card κ)) R) (Localization.Away g) :=
      IsScalarTower.of_algebraMap_eq fun r => by
        change algebraMap R (Localization.Away g) r =
          algebraMap A (Localization.Away g) (MvPolynomial.aeval (t ∘ eκ.symm) (MvPolynomial.C r))
        rw [MvPolynomial.aeval_C, ← IsScalarTower.algebraMap_apply]
    have hX : ∀ i, algebraMap (MvPolynomial (Fin (Nat.card κ)) R) (Localization.Away g) (MvPolynomial.X i) =
        algebraMap A (Localization.Away g) (t (eκ.symm i)) := by
      intro i
      change algebraMap A (Localization.Away g) (MvPolynomial.aeval (t ∘ eκ.symm) (MvPolynomial.X i)) = _
      rw [MvPolynomial.aeval_X]; rfl
    haveI : Algebra.FormallySmooth A (Localization.Away g) := Algebra.FormallySmooth.of_isLocalization (Submonoid.powers g)
    haveI : Algebra.FormallySmooth R (Localization.Away g) := Algebra.FormallySmooth.comp R A (Localization.Away g)
    let P := MvPolynomial (Fin (Nat.card κ)) R
    let bP : Module.Basis (Fin (Nat.card κ)) (Localization.Away g) ((Localization.Away g) ⊗[P] Ω[P⁄R]) :=
      (mvPolynomialBasis R (Fin (Nat.card κ))).baseChange (Localization.Away g)
    let bB' := bB.reindex eκ
    have hbij : Function.Bijective (mapBaseChange R P (Localization.Away g)) := by
      have : mapBaseChange R P (Localization.Away g) = (bP.equiv bB' (Equiv.refl _)).toLinearMap := by
        refine bP.ext fun i => ?_
        rw [LinearEquiv.coe_coe, Module.Basis.equiv_apply]
        simp [bP, bB', hbB, ← hX, P]
      rw [this]
      exact (bP.equiv bB' (Equiv.refl _)).bijective
    haveI : Algebra.FormallyEtale P (Localization.Away g) :=
      formallyEtale_of_bijective_kaehler_mapBaseChange R P (Localization.Away g) hbij
    haveI : Algebra.FinitePresentation R (Localization.Away g) :=
      Algebra.FinitePresentation.trans R A (Localization.Away g)
    haveI : Algebra.FinitePresentation P (Localization.Away g) :=
      Algebra.FinitePresentation.of_restrict_scalars_finitePresentation R P (Localization.Away g)
    exact ⟨inferInstance, inferInstance⟩
end GlobalTheory.DenseSec
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleChartSmoothAlgebraLocalPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DenseSectionsOfAlgebraicAffineNbhd =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DenseSectionsOfAlgebraicAffineNbhd", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtChart\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.DenseAff

theorem chart (R : Type) [CommRing R] [IsLocalRing R] (U : Over (Sp R)) (hU : Smooth U.hom)
    (e : Sp R ⟶ U.left) (he : e ≫ U.hom = 𝟙 _) :
    ∃ (A : Type) (_ : CommRing A) (_ : Algebra R A) (j : Spec (CommRingCat.of A) ⟶ U.left)
      (_ : IsOpenImmersion j) (_ : A →ₐ[R] R), Algebra.Smooth R A ∧
      j ≫ U.hom = Spec.map (CommRingCat.ofHom (algebraMap R A)) := by
  obtain ⟨_, ⟨V, hV, rfl⟩, hcV, -⟩ := U.left.isBasis_affineOpens.exists_subset_of_mem_open
    (Set.mem_univ (e (closedPoint R))) isOpen_univ
  have hV : IsAffineOpen V := hV
  haveI : IsOpenImmersion hV.fromSpec := hV.isOpenImmersion_fromSpec
  have hrange : Set.range e ⊆ Set.range hV.fromSpec := by
    rintro _ ⟨y, rfl⟩
    rw [hV.range_fromSpec]
    exact ((specializes_closedPoint y).map e.continuous).mem_open V.isOpen hcV
  have he' : IsOpenImmersion.lift hV.fromSpec e hrange ≫ hV.fromSpec = e := IsOpenImmersion.lift_fac _ _ _
  let φA : CommRingCat.of R ⟶ Γ(U.left, V) := Spec.preimage (hV.fromSpec ≫ U.hom)
  have hφA : Spec.map φA = hV.fromSpec ≫ U.hom := Spec.map_preimage _
  let εr : Γ(U.left, V) ⟶ CommRingCat.of R := Spec.preimage (IsOpenImmersion.lift hV.fromSpec e hrange)
  have hεr : Spec.map εr = IsOpenImmersion.lift hV.fromSpec e hrange := Spec.map_preimage _
  letI : Algebra R Γ(U.left, V) := φA.hom.toAlgebra
  haveI := hU
  have hsm : Smooth (hV.fromSpec ≫ U.hom) := inferInstance
  rw [← hφA, HasRingHomProperty.Spec_iff (P := @Smooth)] at hsm
  have hcomp : φA ≫ εr = 𝟙 _ := by
    apply Spec.map_injective
    rw [Spec.map_comp, hεr, hφA, ← Category.assoc, he', he, Spec.map_id]
  let ε : Γ(U.left, V) →ₐ[R] R :=
    { toRingHom := εr.hom
      commutes' := by
        intro r
        show εr.hom (φA.hom r) = r
        rw [← CommRingCat.comp_apply, hcomp]
        rfl }
  exact ⟨Γ(U.left, V), inferInstance, inferInstance, hV.fromSpec, inferInstance, ε,
    RingHom.smooth_algebraMap.mp hsm, hφA.symm⟩

def psi (R A Ω : Type) [CommRing R] [CommRing A] [Algebra R A] [CommRing Ω] [Algebra R Ω]
    (U : Over (Sp R)) (j : Spec (CommRingCat.of A) ⟶ U.left)
    (hj : j ≫ U.hom = Spec.map (CommRingCat.ofHom (algebraMap R A))) :
    Spec (CommRingCat.of (TensorProduct R Ω A)) ⟶ pullback U.hom (Spec.map (CommRingCat.ofHom (algebraMap R Ω))) :=
  (pullbackSpecIso R Ω A).inv ≫ (pullbackSymmetry _ _).hom ≫
      pullback.map _ _ _ _ j (𝟙 _) (𝟙 _) (by simp [hj]) (by simp)

section
variable (R A Ω : Type) [CommRing R] [CommRing A] [Algebra R A] [CommRing Ω] [Algebra R Ω]
    (U : Over (Sp R)) (j : Spec (CommRingCat.of A) ⟶ U.left)
    (hj : j ≫ U.hom = Spec.map (CommRingCat.ofHom (algebraMap R A)))

instance [IsOpenImmersion j] : IsOpenImmersion (psi R A Ω U j hj) := by
  unfold psi; infer_instance

theorem psi_fst : psi R A Ω U j hj ≫ pullback.fst _ _ = Spec.map (CommRingCat.ofHom
      (Algebra.TensorProduct.includeRight : A →ₐ[R] TensorProduct R Ω A).toRingHom) ≫ j := by
  unfold psi
  rw [Category.assoc, Category.assoc, pullback.lift_fst, pullbackSymmetry_hom_comp_fst_assoc,
    pullbackSpecIso_inv_snd_assoc]
  rfl

theorem psi_snd : psi R A Ω U j hj ≫ pullback.snd _ _ =
      Spec.map (CommRingCat.ofHom Algebra.TensorProduct.includeLeftRingHom) := by
  unfold psi
  rw [Category.assoc, Category.assoc, pullback.lift_snd, pullbackSymmetry_hom_comp_snd_assoc,
    Category.comp_id, pullbackSpecIso_inv_fst]
end

theorem core (KEY : ∀ (R : Type) [CommRing R] [IsLocalRing R], IsAdicComplete (maximalIdeal R) R → ∀ (A : Type) [CommRing A] [Algebra R A] [Algebra.Smooth R A] (ε : A →ₐ[R] R) (Ω : Type) [Field Ω] [Algebra R Ω], RingHom.ker (algebraMap R Ω) ≠ maximalIdeal R → IrreducibleSpace (PrimeSpectrum (TensorProduct R Ω A)) → ∀ f : TensorProduct R Ω A, ¬ IsNilpotent f → ∃ a : A →ₐ[R] R, GlobalTheory.DenseSec.pt ((Algebra.ofId R Ω).comp a) f ≠ 0)
    (R : Type) [CommRing R] [IsLocalRing R] (hR : IsAdicComplete (maximalIdeal R) R)
    (U : Over (Sp R)) (A : Type) [CommRing A] [Algebra R A] [Algebra.Smooth R A]
    (j : Spec (CommRingCat.of A) ⟶ U.left) [IsOpenImmersion j]
    (hj : j ≫ U.hom = Spec.map (CommRingCat.ofHom (algebraMap R A))) (ε : A →ₐ[R] R)
    (Ω : Type) [Field Ω] [Algebra R Ω] (hker : RingHom.ker (algebraMap R Ω) ≠ maximalIdeal R)
    (hirr : IrreducibleSpace (pullback U.hom (Spec.map (CommRingCat.ofHom (algebraMap R Ω))) : Scheme.{0}))
    (O : (pullback U.hom (Spec.map (CommRingCat.ofHom (algebraMap R Ω)))).Opens)
    (hO : (O : Set (pullback U.hom (Spec.map (CommRingCat.ofHom (algebraMap R Ω))) : Scheme.{0})).Nonempty) :
    ∃ (a : Sp R ⟶ U.left) (aΩ : Sp Ω ⟶ pullback U.hom (Spec.map (CommRingCat.ofHom (algebraMap R Ω)))),
      a ≫ U.hom = 𝟙 _ ∧ aΩ ≫ pullback.fst _ _ = Spec.map (CommRingCat.ofHom (algebraMap R Ω)) ≫ a ∧
      aΩ ≫ pullback.snd _ _ = 𝟙 _ ∧ Set.range aΩ ⊆ O := by

  have hirrA : IrreducibleSpace (PrimeSpectrum (TensorProduct R Ω A)) := by
    haveI : Nontrivial (TensorProduct R Ω A) :=
      (GlobalTheory.DenseSec.pt ((Algebra.ofId R Ω).comp ε)).toRingHom.domain_nontrivial
    have hpre := (PreirreducibleSpace.isPreirreducible_univ
      (X := ↥(pullback U.hom (Spec.map (CommRingCat.ofHom (algebraMap R Ω)))))).preimage
      (psi R A Ω U j hj).isOpenEmbedding
    rw [Set.preimage_univ] at hpre
    exact { isPreirreducible_univ := hpre, toNonempty := inferInstance }
  have hmeet : ((Set.range (psi R A Ω U j hj)) ∩ (O : Set _)).Nonempty := by
    obtain ⟨p⟩ := hirrA.toNonempty
    exact nonempty_preirreducible_inter (psi R A Ω U j hj).isOpenEmbedding.isOpen_range O.isOpen
      ⟨_, p, rfl⟩ hO
  obtain ⟨_, ⟨y, rfl⟩, hyO⟩ := hmeet
  obtain ⟨_, ⟨f, rfl⟩, hyf, hfO⟩ := PrimeSpectrum.isTopologicalBasis_basic_opens.exists_subset_of_mem_open
    (show y ∈ (psi R A Ω U j hj) ⁻¹' (O : Set _) from hyO) (O.isOpen.preimage (psi R A Ω U j hj).continuous)
  have hf : ¬ IsNilpotent f := by
    intro h
    dsimp only at hyf
    rw [(PrimeSpectrum.basicOpen_eq_bot_iff f).2 h] at hyf
    exact hyf
  obtain ⟨a, ha⟩ := KEY R hR A ε Ω hker hirrA f hf
  let sec : Sp R ⟶ U.left := Spec.map (CommRingCat.ofHom a.toRingHom) ≫ j
  have hsec : sec ≫ U.hom = 𝟙 _ := by
    simp only [sec, Category.assoc, hj, ← Spec.map_comp, ← Spec.map_id]
    congr 1
    ext r
    simp
  refine ⟨sec, pullback.lift (Spec.map (CommRingCat.ofHom (algebraMap R Ω)) ≫ sec) (𝟙 _)
    (by rw [Category.assoc, hsec, Category.comp_id, Category.id_comp]), hsec, pullback.lift_fst _ _ _,
    pullback.lift_snd _ _ _, ?_⟩
  have hfac : pullback.lift (Spec.map (CommRingCat.ofHom (algebraMap R Ω)) ≫ sec) (𝟙 _)
      (by rw [Category.assoc, hsec, Category.comp_id, Category.id_comp]) =
      Spec.map (CommRingCat.ofHom (GlobalTheory.DenseSec.pt ((Algebra.ofId R Ω).comp a)).toRingHom) ≫
        psi R A Ω U j hj := by
    apply pullback.hom_ext
    · rw [pullback.lift_fst, Category.assoc, psi_fst, ← Category.assoc, ← Spec.map_comp]
      simp only [← Category.assoc, ← Spec.map_comp]
      congr 2
      ext r
      simp [GlobalTheory.DenseSec.pt]
    · rw [pullback.lift_snd, Category.assoc, psi_snd, ← Spec.map_comp, ← Spec.map_id]
      congr 1
      ext r
      simp [GlobalTheory.DenseSec.pt]
  rw [hfac, Scheme.Hom.comp_base, TopCat.coe_comp, Set.range_comp]
  rintro _ ⟨_, ⟨z, rfl⟩, rfl⟩
  apply hfO
  show _ ∈ ((PrimeSpectrum.basicOpen f : TopologicalSpace.Opens _) : Set (PrimeSpectrum (TensorProduct R Ω A)))
  apply (PrimeSpectrum.mem_basicOpen _ _).2
  rw [Spec.map_apply]
  intro hmem
  have hz : PrimeSpectrum.asIdeal (z : PrimeSpectrum Ω) = ⊥ :=
    @Ideal.eq_bot_of_prime Ω _ _ (PrimeSpectrum.isPrime (z : PrimeSpectrum Ω))
  have h2 : (GlobalTheory.DenseSec.pt ((Algebra.ofId R Ω).comp a)) f ∈ PrimeSpectrum.asIdeal (z : PrimeSpectrum Ω) := hmem
  rw [hz, Ideal.mem_bot] at h2
  exact ha h2

theorem denseSections_of_algebraic : (∀ (R : Type) [CommRing R] [IsLocalRing R], IsAdicComplete (maximalIdeal R) R → ∀ (A : Type) [CommRing A] [Algebra R A] [Algebra.Smooth R A] (ε : A →ₐ[R] R) (Ω : Type) [Field Ω] [Algebra R Ω], RingHom.ker (algebraMap R Ω) ≠ maximalIdeal R → IrreducibleSpace (PrimeSpectrum (TensorProduct R Ω A)) → ∀ f : TensorProduct R Ω A, ¬ IsNilpotent f → ∃ a : A →ₐ[R] R, GlobalTheory.DenseSec.pt ((Algebra.ofId R Ω).comp a) f ≠ 0) → ∀ (R : Type) [CommRing R] [IsLocalRing R] [IsNoetherianRing R], IsAdicComplete (maximalIdeal R) R → ∀ (U : Over (Sp R)), Smooth U.hom → ∀ (e : Sp R ⟶ U.left), e ≫ U.hom = 𝟙 _ → ∀ (Ω : Type) [Field Ω] (x : Sp Ω ⟶ Sp R), closedPoint R ∉ Set.range x → IrreducibleSpace (pullback U.hom x : Scheme.{0}) → ∀ O : (pullback U.hom x).Opens, (O : Set (pullback U.hom x : Scheme.{0})).Nonempty → ∃ (a : Sp R ⟶ U.left) (aΩ : Sp Ω ⟶ pullback U.hom x), a ≫ U.hom = 𝟙 _ ∧ aΩ ≫ pullback.fst _ _ = x ≫ a ∧ aΩ ≫ pullback.snd _ _ = 𝟙 _ ∧ Set.range aΩ ⊆ O := by
  intro KEY R _ _ _ hR U hU e he Ω _ x hx hirr O hO
  obtain ⟨A, _, _, j, _, ε, hsm, hj⟩ := chart R U hU e he
  obtain ⟨φ, rfl⟩ : ∃ φ, Spec.map φ = x := ⟨_, Spec.map_preimage x⟩
  letI : Algebra R Ω := φ.hom.toAlgebra
  have hker : RingHom.ker (algebraMap R Ω) ≠ maximalIdeal R := by
    intro h
    apply hx
    refine ⟨(⟨⊥, Ideal.isPrime_bot⟩ : PrimeSpectrum Ω), ?_⟩
    have hp := Spec.map_apply φ (⟨⊥, Ideal.isPrime_bot⟩ : PrimeSpectrum Ω)
    refine hp.trans (PrimeSpectrum.ext ?_)
    rw [PrimeSpectrum.comap_asIdeal, ← RingHom.ker_eq_comap_bot]
    exact h
  exact core KEY R hR U A j hj ε Ω hker hirr O hO

end GlobalTheory.DenseAff
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DenseSectionsOfAlgebraicAffineNbhd =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DenseSectionsOfAlgebraicAffineNbhdStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DenseSectionsOfAlgebraicAffineNbhdStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtChart\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DenseSectionsOfAlgebraicAffineNbhd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem _root_.GlobalTheory.T.denseSections_of_algebraic_affineNbhd : (∀ (R : Type) [CommRing R] [IsLocalRing R], IsAdicComplete (maximalIdeal R) R → ∀ (A : Type) [CommRing A] [Algebra R A] [Algebra.Smooth R A] (ε : A →ₐ[R] R) (Ω : Type) [Field Ω] [Algebra R Ω], RingHom.ker (algebraMap R Ω) ≠ maximalIdeal R → IrreducibleSpace (PrimeSpectrum (TensorProduct R Ω A)) → ∀ f : TensorProduct R Ω A, ¬ IsNilpotent f → ∃ a : A →ₐ[R] R, GlobalTheory.DenseSec.pt ((Algebra.ofId R Ω).comp a) f ≠ 0) → ∀ (R : Type) [CommRing R] [IsLocalRing R] [IsNoetherianRing R], IsAdicComplete (maximalIdeal R) R → ∀ (U : Over (Sp R)), Smooth U.hom → ∀ (e : Sp R ⟶ U.left), e ≫ U.hom = 𝟙 _ → ∀ (Ω : Type) [Field Ω] (x : Sp Ω ⟶ Sp R), closedPoint R ∉ Set.range x → IrreducibleSpace (pullback U.hom x : Scheme.{0}) → ∀ O : (pullback U.hom x).Opens, (O : Set (pullback U.hom x : Scheme.{0})).Nonempty → ∃ (a : Sp R ⟶ U.left) (aΩ : Sp Ω ⟶ pullback U.hom x), a ≫ U.hom = 𝟙 _ ∧ aΩ ≫ pullback.fst _ _ = x ≫ a ∧ aΩ ≫ pullback.snd _ _ = 𝟙 _ ∧ Set.range aΩ ⊆ O := by
  first | exact @GlobalTheory.DenseAff.denseSections_of_algebraic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DenseSectionsOfAlgebraicAffineNbhdStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartLocalizationFiniteTypeFormallyUnramifi =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartLocalizationFiniteTypeFormallyUnramifi", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtChart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct

noncomputable section
namespace GlobalTheory.DenseSec

theorem locQuot_finiteType_formallyUnramified (R : Type) [CommRing R] (A : Type) [CommRing A] [Algebra R A]
    (g : ℕ) (t : Fin g → A) (h : A) (hE : GlobalTheory.DenseSec.EtChart R A t h) (Ω : Type) [Field Ω] [Algebra R Ω]
    (I : Ideal (TensorProduct R Ω A)) :
    (letI : Algebra (MvPolynomial (Fin g) Ω) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) :=
      (MvPolynomial.aeval (fun i => algebraMap (TensorProduct R Ω A ⧸ I)
        (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) (Ideal.Quotient.mk I (1 ⊗ₜ[R] t i)))).toRingHom.toAlgebra
    Algebra.FiniteType (MvPolynomial (Fin g) Ω) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) ∧
      Algebra.FormallyUnramified (MvPolynomial (Fin g) Ω)
        (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h)))) := by
  letI algPD : Algebra (MvPolynomial (Fin g) Ω) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) :=
    (MvPolynomial.aeval (fun i => algebraMap (TensorProduct R Ω A ⧸ I)
      (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) (Ideal.Quotient.mk I (1 ⊗ₜ[R] t i)))).toRingHom.toAlgebra
  letI algRA : Algebra (MvPolynomial (Fin g) R) (Localization.Away h) :=
    ((algebraMap A (Localization.Away h)).comp (MvPolynomial.aeval t).toRingHom).toAlgebra
  haveI hEt : Algebra.Etale (MvPolynomial (Fin g) R) (Localization.Away h) := hE
  letI algRP : Algebra (MvPolynomial (Fin g) R) (MvPolynomial (Fin g) Ω) := MvPolynomial.algebraMvPolynomial
  letI algRD : Algebra (MvPolynomial (Fin g) R) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) :=
    ((algebraMap (MvPolynomial (Fin g) Ω) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h)))).comp
      (algebraMap (MvPolynomial (Fin g) R) (MvPolynomial (Fin g) Ω))).toAlgebra
  haveI hST := @IsScalarTower.of_algebraMap_eq _ _ _ _ _ _ algRP algPD algRD (fun _ => rfl)
  let f : A →+* Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h)) :=
    (algebraMap (TensorProduct R Ω A ⧸ I) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h)))).comp
      ((Ideal.Quotient.mk I).comp (Algebra.TensorProduct.includeRight (R := R) (A := Ω) (B := A)).toRingHom)
  have hf : ∀ a, f a = algebraMap (TensorProduct R Ω A ⧸ I) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h)))
      (Ideal.Quotient.mk I (1 ⊗ₜ[R] a)) := fun a => rfl
  have hu : IsUnit (f h) := by rw [hf]; exact IsLocalization.Away.algebraMap_isUnit _
  let ψ0 : Localization.Away h →+* Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h)) :=
    IsLocalization.Away.lift h hu
  have hψ0 : ∀ a, ψ0 (algebraMap A (Localization.Away h) a) = f a :=
    IsLocalization.Away.lift_eq h hu
  have hΩ : ∀ w : Ω, algebraMap Ω (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) w =
      algebraMap (TensorProduct R Ω A ⧸ I) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h)))
        (Ideal.Quotient.mk I (w ⊗ₜ[R] 1)) := by
    intro w
    rw [IsScalarTower.algebraMap_apply Ω (TensorProduct R Ω A ⧸ I)]
    rfl
  have hcomp : ψ0.comp (algebraMap (MvPolynomial (Fin g) R) (Localization.Away h)) =
      algebraMap (MvPolynomial (Fin g) R) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) := by
    apply MvPolynomial.ringHom_ext
    · intro r
      show ψ0 (algebraMap A _ (MvPolynomial.aeval t (MvPolynomial.C r))) =
        MvPolynomial.aeval _ (MvPolynomial.map (algebraMap R Ω) (MvPolynomial.C r))
      rw [hψ0, MvPolynomial.map_C, MvPolynomial.aeval_C, MvPolynomial.aeval_C, hf, hΩ]
      congr 2
      rw [← Algebra.TensorProduct.algebraMap_apply, Algebra.TensorProduct.algebraMap_apply']
    · intro i
      show ψ0 (algebraMap A _ (MvPolynomial.aeval t (MvPolynomial.X i))) =
        MvPolynomial.aeval _ (MvPolynomial.map (algebraMap R Ω) (MvPolynomial.X i))
      rw [hψ0, MvPolynomial.map_X, MvPolynomial.aeval_X, MvPolynomial.aeval_X, hf]
  let ψ : Localization.Away h →ₐ[MvPolynomial (Fin g) R] Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h)) :=
    { ψ0 with commutes' := fun p => RingHom.congr_fun hcomp p }
  let Φ : MvPolynomial (Fin g) Ω ⊗[MvPolynomial (Fin g) R] Localization.Away h →ₐ[MvPolynomial (Fin g) Ω]
      Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h)) :=
    Algebra.TensorProduct.lift (Algebra.ofId _ _) ψ (fun _ _ => Commute.all _ _)
  have hΦ : ∀ (p : MvPolynomial (Fin g) Ω) (y : Localization.Away h), Φ (p ⊗ₜ y) = algebraMap _ _ p * ψ0 y :=
    fun p y => Algebra.TensorProduct.lift_tmul _ _ _ _ _
  have hQ : ∀ x : TensorProduct R Ω A ⧸ I,
      algebraMap _ (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) x ∈ Φ.range := by
    intro x
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective x
    induction b using TensorProduct.inductionOn with
    | tmul w a =>
      refine ⟨MvPolynomial.C w ⊗ₜ algebraMap A _ a, ?_⟩
      show Φ (MvPolynomial.C w ⊗ₜ algebraMap A _ a) = _
      rw [hΦ, hψ0, hf]
      show MvPolynomial.aeval _ (MvPolynomial.C w) * _ = _
      rw [MvPolynomial.aeval_C, hΩ, ← map_mul, ← map_mul, Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
    | add x y hx hy => rw [RingHom.map_add (Ideal.Quotient.mk I), RingHom.map_add (algebraMap (Ω ⊗[R] A ⧸ I) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h)))) ]; exact add_mem hx hy
  have hsurj : Function.Surjective Φ := by
    intro z
    obtain ⟨⟨x, s⟩, rfl⟩ := IsLocalization.mk'_surjective
      (Submonoid.powers (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) z
    obtain ⟨n, hn⟩ := Submonoid.mem_powers_iff _ _ |>.mp s.2
    have hs : s = ⟨Ideal.Quotient.mk I (1 ⊗ₜ[R] h), Submonoid.mem_powers _⟩ ^ n := Subtype.ext hn.symm
    have hinv : IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) (1 : TensorProduct R Ω A ⧸ I)
        (⟨Ideal.Quotient.mk I (1 ⊗ₜ[R] h), Submonoid.mem_powers _⟩ :
          Submonoid.powers (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) =
        Φ (1 ⊗ₜ IsLocalization.mk' (Localization.Away h) (1 : A) (⟨h, Submonoid.mem_powers _⟩ : Submonoid.powers h)) := by
      rw [hΦ, map_one, one_mul, IsLocalization.mk'_eq_iff_eq_mul]
      show _ = _ * f h
      rw [← hψ0, ← map_mul, IsLocalization.mk'_spec]
      simp
    have : IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) x s ∈ Φ.range := by
      have hpow : IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) (1 : TensorProduct R Ω A ⧸ I) s =
          (IsLocalization.mk' (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) (1 : TensorProduct R Ω A ⧸ I)
            (⟨Ideal.Quotient.mk I (1 ⊗ₜ[R] h), Submonoid.mem_powers _⟩ :
              Submonoid.powers (Ideal.Quotient.mk I (1 ⊗ₜ[R] h)))) ^ n := by
        rw [hs, ← IsLocalization.mk'_pow, one_pow]
      rw [IsLocalization.mk'_eq_mul_mk'_one, hpow, hinv]
      exact mul_mem (hQ x) (pow_mem (AlgHom.mem_range_self Φ _) n)
    exact this
  exact ⟨Algebra.FiniteType.of_surjective Φ hsurj, Algebra.FormallyUnramified.of_surjective Φ hsurj⟩

end GlobalTheory.DenseSec
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartLocalizationFiniteTypeFormallyUnramifi =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartLocalizationFiniteTypeFormallyUnramifiStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartLocalizationFiniteTypeFormallyUnramifiStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtChart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartLocalizationFiniteTypeFormallyUnramifi\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct

theorem _root_.GlobalTheory.T.etaleChart_localization_finiteType_formallyUnramified : ∀ (R : Type) [CommRing R] (A : Type) [CommRing A] [Algebra R A] (g : ℕ) (t : Fin g → A) (h : A), GlobalTheory.DenseSec.EtChart R A t h → ∀ (Ω : Type) [Field Ω] [Algebra R Ω] (I : Ideal (TensorProduct R Ω A)),
  letI : Algebra (MvPolynomial (Fin g) Ω) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) :=
    (MvPolynomial.aeval (fun i => algebraMap (TensorProduct R Ω A ⧸ I) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) (Ideal.Quotient.mk I (1 ⊗ₜ[R] t i)))).toRingHom.toAlgebra
  Algebra.FiniteType (MvPolynomial (Fin g) Ω) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) ∧
    Algebra.FormallyUnramified (MvPolynomial (Fin g) Ω) (Localization.Away (Ideal.Quotient.mk I (1 ⊗ₜ[R] h))) := by
  apply _root_.GlobalTheory.DenseSec.locQuot_finiteType_formallyUnramified

end
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartLocalizationFiniteTypeFormallyUnramifiStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroAlgebraMapEqMulOfFormallyUnramifiedA =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroAlgebraMapEqMulOfFormallyUnramifiedA", "h": "module\n\npublic import Mathlib.RingTheory.Unramified.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Unramified.Finite\n\n"}
section -- clump:auto
@[expose] public section

open Algebra

namespace GlobalTheory

theorem exists_ne_zero_algebraMap_eq_mul_of_formallyUnramified :
    ∀ (P D : Type) [CommRing P] [IsDomain P] [CommRing D] [IsDomain D] [Algebra P D]
      [Algebra.FiniteType P D] [Algebra.FormallyUnramified P D] (f : D), f ≠ 0 →
      ∃ Q : P, Q ≠ 0 ∧ ∃ d : D, algebraMap P D Q = f * d := by
  intro P D _ _ _ _ _ _ _ f hf
  by_cases hinj : Function.Injective (algebraMap P D)
  swap
  · rw [injective_iff_map_eq_zero] at hinj
    push_neg at hinj
    obtain ⟨Q, hQ, hQ0⟩ := hinj
    exact ⟨Q, hQ0, 0, by rw [hQ, mul_zero]⟩
  let M := nonZeroDivisors P
  let K := FractionRing P
  let S := Algebra.algebraMapSubmonoid D M
  let L := Localization S
  letI : Algebra K L := localizationAlgebra M D
  haveI : IsScalarTower P K L := inferInstance
  have hS : S ≤ nonZeroDivisors D := by
    intro x hx
    obtain ⟨q, hq, rfl⟩ := hx
    exact mem_nonZeroDivisors_of_ne_zero
      ((map_ne_zero_iff _ hinj).2 (nonZeroDivisors.ne_zero hq))
  haveI : IsDomain L := IsLocalization.isDomain_localization hS
  have hDL : Function.Injective (algebraMap D L) := IsLocalization.injective L hS
  haveI : IsLocalization (M.map (algebraMap P D)) L := inferInstanceAs (IsLocalization S L)
  haveI : Algebra.FormallyUnramified K L := Algebra.FormallyUnramified.localization_map M (S := D)
  haveI : Algebra.EssFiniteType D L := Algebra.EssFiniteType.of_isLocalization L S
  haveI : Algebra.EssFiniteType P L := Algebra.EssFiniteType.comp P D L
  haveI : Algebra.EssFiniteType K L := Algebra.EssFiniteType.of_comp P K L
  haveI : Module.Finite K L := Algebra.FormallyUnramified.finite_of_free K L
  have hint : IsIntegral K (algebraMap D L f) := Algebra.IsIntegral.isIntegral _
  have hne : algebraMap D L f ≠ 0 := (map_ne_zero_iff _ hDL).2 hf
  obtain ⟨u, hu⟩ := hint.isUnit hne
  have hy : algebraMap D L f * ↑u⁻¹ = 1 := by rw [← hu]; exact u.mul_inv
  obtain ⟨⟨d, s⟩, hds⟩ := IsLocalization.surj S (↑u⁻¹ : L)
  obtain ⟨q, hq, hqs⟩ := s.2
  refine ⟨q, nonZeroDivisors.ne_zero hq, d, ?_⟩
  apply hDL
  simp only at hds
  rw [map_mul, ← hds, ← mul_assoc, hy, one_mul, hqs]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroAlgebraMapEqMulOfFormallyUnramifiedA =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolyVanishingOfFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolyVanishingOfFibre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtChart\npublic import Mathlib.RingTheory.Spectrum.Prime.Topology\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartLocalizationFiniteTypeFormallyUnramifiStatement\npublic import Mathlib.RingTheory.Unramified.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNeZeroAlgebraMapEqMulOfFormallyUnramifiedA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory.DenseSec
open TensorProduct

theorem exists_poly_vanishing_of_fibre : ∀ (R : Type) [CommRing R] (A : Type) [CommRing A] [Algebra R A] (g : ℕ) (t : Fin g → A) (h : A), GlobalTheory.DenseSec.EtChart R A t h → ∀ (Ω : Type) [Field Ω] [Algebra R Ω], IrreducibleSpace (PrimeSpectrum (TensorProduct R Ω A)) → ∀ f : TensorProduct R Ω A, ¬ IsNilpotent f → ∃ Q : MvPolynomial (Fin g) Ω, Q ≠ 0 ∧ ∀ a : A →ₐ[R] Ω, a h ≠ 0 → GlobalTheory.DenseSec.pt a f = 0 → MvPolynomial.eval (fun i => a (t i)) Q = 0 := by
  intro R _ A _ _ g t h hE Ω _ _ hirr f hf
  have hN : (nilradical (TensorProduct R Ω A)).IsPrime := PrimeSpectrum.irreducibleSpace_iff_isPrime_nilradical.1 hirr
  have kill : ∀ (a : A →ₐ[R] Ω) (x : TensorProduct R Ω A), x ∈ nilradical (TensorProduct R Ω A) → GlobalTheory.DenseSec.pt a x = 0 := by
    intro a x hx
    exact ((mem_nilradical.1 hx).map (GlobalTheory.DenseSec.pt a)).eq_zero
  have pth : ∀ (a : A →ₐ[R] Ω) (x : A), GlobalTheory.DenseSec.pt a (1 ⊗ₜ[R] x) = a x := by
    intro a x
    simp [GlobalTheory.DenseSec.pt]
  have ptw : ∀ (a : A →ₐ[R] Ω) (w : Ω), GlobalTheory.DenseSec.pt a (w ⊗ₜ[R] 1) = w := by
    intro a w
    simp [GlobalTheory.DenseSec.pt]
  by_cases h1 : (1 ⊗ₜ[R] h : TensorProduct R Ω A) ∈ nilradical (TensorProduct R Ω A)
  · refine ⟨1, one_ne_zero, fun a ha _ => ?_⟩
    exact absurd (by rw [← pth a h]; exact kill a _ h1) ha
  set N := nilradical (TensorProduct R Ω A)
  set u : TensorProduct R Ω A ⧸ N := Ideal.Quotient.mk N (1 ⊗ₜ[R] h)
  have hu : u ≠ 0 := by
    simpa [u, Ideal.Quotient.eq_zero_iff_mem] using h1
  letI : IsDomain (TensorProduct R Ω A ⧸ N) := Ideal.Quotient.isDomain N
  have hle : Submonoid.powers u ≤ nonZeroDivisors (TensorProduct R Ω A ⧸ N) := powers_le_nonZeroDivisors_of_noZeroDivisors hu
  letI : IsDomain (Localization.Away u) := IsLocalization.isDomain_localization hle
  obtain ⟨hFT, hFU⟩ := GlobalTheory.T.etaleChart_localization_finiteType_formallyUnramified R A g t h hE Ω N
  letI : Algebra (MvPolynomial (Fin g) Ω) (Localization.Away u) :=
    (MvPolynomial.aeval (fun i => algebraMap (TensorProduct R Ω A ⧸ N) (Localization.Away u) (Ideal.Quotient.mk N (1 ⊗ₜ[R] t i)))).toRingHom.toAlgebra
  have hf' : algebraMap (TensorProduct R Ω A ⧸ N) (Localization.Away u) (Ideal.Quotient.mk N f) ≠ 0 := by
    intro h0
    rw [map_eq_zero_iff _ (IsLocalization.injective (Localization.Away u) hle), Ideal.Quotient.eq_zero_iff_mem] at h0
    exact hf (mem_nilradical.1 h0)
  obtain ⟨Q, hQ, d, hd⟩ := _root_.GlobalTheory.exists_ne_zero_algebraMap_eq_mul_of_formallyUnramified (MvPolynomial (Fin g) Ω) (Localization.Away u) _ hf'
  refine ⟨Q, hQ, fun a ha hfa => ?_⟩
  let φ : TensorProduct R Ω A ⧸ N →+* Ω := Ideal.Quotient.lift N (GlobalTheory.DenseSec.pt a).toRingHom (fun x hx => kill a x hx)
  have hφu : IsUnit (φ u) := by
    simp only [φ, u, Ideal.Quotient.lift_mk]
    exact isUnit_iff_ne_zero.2 (by simpa [pth] using ha)
  let χ : Localization.Away u →+* Ω := IsLocalization.Away.lift u hφu
  have hχ : ∀ x : TensorProduct R Ω A, χ (algebraMap (TensorProduct R Ω A ⧸ N) (Localization.Away u) (Ideal.Quotient.mk N x)) = GlobalTheory.DenseSec.pt a x := by
    intro x
    simp [χ, φ, IsLocalization.Away.lift]
  have hP : χ.comp (algebraMap (MvPolynomial (Fin g) Ω) (Localization.Away u)) = MvPolynomial.eval₂Hom (RingHom.id Ω) (fun i => a (t i)) := by
    apply MvPolynomial.ringHom_ext
    · intro w
      show χ (MvPolynomial.aeval _ (MvPolynomial.C w)) = _
      have e : algebraMap Ω (TensorProduct R Ω A ⧸ N) w = Ideal.Quotient.mk N (w ⊗ₜ[R] 1) := rfl
      rw [MvPolynomial.aeval_C, IsScalarTower.algebraMap_apply Ω (TensorProduct R Ω A ⧸ N) (Localization.Away u), e, hχ, ptw]
      simp
    · intro i
      show χ (MvPolynomial.aeval _ (MvPolynomial.X i)) = _
      rw [MvPolynomial.aeval_X, hχ, pth]
      simp
  have := congrArg χ hd
  rw [← RingHom.comp_apply, hP, map_mul, hχ, hfa, zero_mul] at this
  exact this

end GlobalTheory.DenseSec
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolyVanishingOfFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionLiftingResidueValues =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionLiftingResidueValues", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtChart\npublic import Mathlib.RingTheory.AdicCompletion.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.AdicCompletion.RingHom\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory.DenseSec

theorem factorₐ_comp_factorₐ {P R : Type} [CommRing P] [CommRing R] [Algebra P R] {I J K : Ideal R}
    (hIJ : I ≤ J) (hJK : J ≤ K) :
    (Ideal.Quotient.factorₐ P hJK).comp (Ideal.Quotient.factorₐ P hIJ) =
      Ideal.Quotient.factorₐ P (hIJ.trans hJK) := by
  apply AlgHom.ext
  intro x
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
  rfl

theorem hensel_etChart : ∀ (R : Type) [CommRing R] [IsLocalRing R], IsAdicComplete (maximalIdeal R) R →
    ∀ (A : Type) [CommRing A] [Algebra R A] (g : ℕ) (t : Fin g → A) (h : A), GlobalTheory.DenseSec.EtChart R A t h →
    ∀ (ε : A →ₐ[R] R), IsUnit (ε h) → ∀ c : Fin g → R, (∀ i, c i - ε (t i) ∈ maximalIdeal R) →
    ∃ a : A →ₐ[R] R, IsUnit (a h) ∧ ∀ i, a (t i) = c i := by
  intro R _ _ hc A _ _ g t h hE ε hε c hcε
  classical
  haveI := hc
  letI iPB : Algebra (MvPolynomial (Fin g) R) (Localization.Away h) :=
    ((algebraMap A (Localization.Away h)).comp (MvPolynomial.aeval t).toRingHom).toAlgebra
  haveI hEt : Algebra.Etale (MvPolynomial (Fin g) R) (Localization.Away h) := hE
  letI iPR : Algebra (MvPolynomial (Fin g) R) R := (MvPolynomial.aeval c).toRingHom.toAlgebra
  have hPB : ∀ p, algebraMap (MvPolynomial (Fin g) R) (Localization.Away h) p =
      algebraMap A (Localization.Away h) (MvPolynomial.aeval t p) := fun _ => rfl
  have hPR : ∀ p, algebraMap (MvPolynomial (Fin g) R) R p = MvPolynomial.aeval c p := fun _ => rfl
  let m := maximalIdeal R

  let e' : Localization.Away h →+* R := IsLocalization.Away.lift h (g := (ε : A →+* R)) hε
  have he' : ∀ x : A, e' (algebraMap A (Localization.Away h) x) = ε x := fun x =>
    IsLocalization.Away.lift_eq h (g := (ε : A →+* R)) hε x
  have hmod : (Ideal.Quotient.mk m).comp ((ε : A →+* R).comp (MvPolynomial.aeval (R := R) t).toRingHom) =
      (Ideal.Quotient.mk m).comp (MvPolynomial.aeval c).toRingHom := by
    apply MvPolynomial.ringHom_ext
    · intro r
      simp
    · intro i
      simp only [RingHom.coe_comp, Function.comp_apply, AlgHom.toRingHom_eq_coe, RingHom.coe_coe,
        MvPolynomial.aeval_X]
      exact (Ideal.Quotient.eq.2 (by
        have := hcε i
        rw [← neg_mem_iff, neg_sub] at this
        exact this))
  let f₁ : Localization.Away h →ₐ[MvPolynomial (Fin g) R] R ⧸ m :=
    { toRingHom := (Ideal.Quotient.mk m).comp e'
      commutes' := fun p => by
        show Ideal.Quotient.mk m (e' (algebraMap (MvPolynomial (Fin g) R) (Localization.Away h) p)) =
          algebraMap (MvPolynomial (Fin g) R) (R ⧸ m) p
        rw [hPB, he']
        show Ideal.Quotient.mk m (ε (MvPolynomial.aeval t p)) = Ideal.Quotient.mk m (MvPolynomial.aeval c p)
        exact congrArg (fun φ : MvPolynomial (Fin g) R →+* R ⧸ m => φ p) hmod }

  have hle : ∀ n : ℕ, m ^ (n + 1) ≤ m := fun n => Ideal.pow_le_self n.succ_ne_zero
  let q : ∀ n : ℕ, R ⧸ m ^ (n + 1) →ₐ[MvPolynomial (Fin g) R] R ⧸ m := fun n =>
    Ideal.Quotient.factorₐ _ (hle n)
  have hqs : ∀ n, Function.Surjective (q n) := fun n x => by
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
    exact ⟨Ideal.Quotient.mk _ y, rfl⟩
  have hqn : ∀ n, IsNilpotent (RingHom.ker (q n : R ⧸ m ^ (n + 1) →+* R ⧸ m)) := fun n => by
    refine ⟨n + 1, le_bot_iff.1 ?_⟩
    have hk : RingHom.ker (q n : R ⧸ m ^ (n + 1) →+* R ⧸ m) = Ideal.map (Ideal.Quotient.mk (m ^ (n + 1))) m :=
      Ideal.Quotient.factor_ker (hle n)
    rw [hk, ← Ideal.map_pow, Ideal.map_quotient_self]
  let F : ∀ n : ℕ, Localization.Away h →ₐ[MvPolynomial (Fin g) R] R ⧸ m ^ (n + 1) := fun n =>
    Algebra.FormallySmooth.liftOfSurjective f₁ (q n) (hqs n) (hqn n)
  have hF : ∀ n, (q n).comp (F n) = f₁ := fun n => Algebra.FormallySmooth.comp_liftOfSurjective _ _ _ _
  have hFc : ∀ {k n : ℕ} (hkn : k ≤ n),
      (Ideal.Quotient.factorₐ (MvPolynomial (Fin g) R) (Ideal.pow_le_pow_right (Nat.succ_le_succ hkn))).comp (F n) = F k := by
    intro k n hkn
    refine Algebra.FormallyUnramified.ext' (q k : R ⧸ m ^ (k + 1) →+* R ⧸ m) (hqn k) _ _ fun x => ?_
    have h1 := congrArg (fun φ => φ x) (hF n)
    have h2 := congrArg (fun φ => φ x) (hF k)
    simp only [AlgHom.comp_apply] at h1 h2
    show (q k) ((Ideal.Quotient.factorₐ (MvPolynomial (Fin g) R) (Ideal.pow_le_pow_right (Nat.succ_le_succ hkn) : m ^ (n + 1) ≤ m ^ (k + 1))) (F n x)) = q k (F k x)
    rw [h2, ← h1]
    have := congrArg (fun φ => φ (F n x)) (factorₐ_comp_factorₐ (P := MvPolynomial (Fin g) R)
      (Ideal.pow_le_pow_right (Nat.succ_le_succ hkn) : m ^ (n + 1) ≤ m ^ (k + 1)) (hle k))
    simpa only [AlgHom.comp_apply] using this
  let f : ∀ n : ℕ, Localization.Away h →ₐ[MvPolynomial (Fin g) R] R ⧸ m ^ n := fun n =>
    (Ideal.Quotient.factorₐ _ (Ideal.pow_le_pow_right (Nat.le_succ n))).comp (F n)
  have hf : ∀ {k n : ℕ} (hkn : k ≤ n),
      (Ideal.Quotient.factorₐ (MvPolynomial (Fin g) R) (Ideal.pow_le_pow_right hkn)).comp (f n) = f k := by
    intro k n hkn
    simp only [f]
    rw [← AlgHom.comp_assoc, factorₐ_comp_factorₐ, ← hFc hkn, ← AlgHom.comp_assoc, factorₐ_comp_factorₐ]
  let Φ : Localization.Away h →ₐ[MvPolynomial (Fin g) R] R := IsAdicComplete.liftAlgHom m f hf
  let a : A →ₐ[R] R :=
    { toRingHom := (Φ : Localization.Away h →+* R).comp (algebraMap A (Localization.Away h))
      commutes' := fun r => by
        show Φ (algebraMap A (Localization.Away h) (algebraMap R A r)) = algebraMap R R r
        have : algebraMap A (Localization.Away h) (algebraMap R A r) =
            algebraMap (MvPolynomial (Fin g) R) (Localization.Away h) (MvPolynomial.C r) := by
          rw [hPB, MvPolynomial.aeval_C]
        rw [this, Φ.commutes, hPR, MvPolynomial.aeval_C] }
  refine ⟨a, ?_, fun i => ?_⟩
  · exact (IsLocalization.Away.algebraMap_isUnit h).map Φ
  · show Φ (algebraMap A (Localization.Away h) (t i)) = c i
    have : algebraMap A (Localization.Away h) (t i) =
        algebraMap (MvPolynomial (Fin g) R) (Localization.Away h) (MvPolynomial.X i) := by
      rw [hPB, MvPolynomial.aeval_X]
    rw [this, Φ.commutes, hPR, MvPolynomial.aeval_X]

end GlobalTheory.DenseSec
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionLiftingResidueValues =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothGroupSectionsDenseInFibres =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothGroupSectionsDenseInFibres", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtChart\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleChartSmoothAlgebraLocalPoint\npublic import Mathlib.Combinatorics.Nullstellensatz\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.DenseSectionsOfAlgebraicAffineNbhdStatement\nimport Mathlib.RingTheory.Spectrum.Prime.Topology\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPolyVanishingOfFibre\nimport Mathlib.RingTheory.AdicCompletion.Basic\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionLiftingResidueValues\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.DenseSec
theorem chart : ∀ (R : Type) [CommRing R] [IsLocalRing R] (A : Type) [CommRing A] [Algebra R A] [Algebra.Smooth R A] (ε : A →ₐ[R] R), ∃ (g : ℕ) (t : Fin g → A) (h : A), (∀ i, ε (t i) = 0) ∧ IsUnit (ε h) ∧ GlobalTheory.DenseSec.EtChart R A t h := _root_.GlobalTheory.DenseSec.exists_etChart
theorem reduce : (∀ (R : Type) [CommRing R] [IsLocalRing R], IsAdicComplete (maximalIdeal R) R → ∀ (A : Type) [CommRing A] [Algebra R A] [Algebra.Smooth R A] (ε : A →ₐ[R] R) (Ω : Type) [Field Ω] [Algebra R Ω], RingHom.ker (algebraMap R Ω) ≠ maximalIdeal R → IrreducibleSpace (PrimeSpectrum (TensorProduct R Ω A)) → ∀ f : TensorProduct R Ω A, ¬ IsNilpotent f → ∃ a : A →ₐ[R] R, GlobalTheory.DenseSec.pt ((Algebra.ofId R Ω).comp a) f ≠ 0) → ∀ (R : Type) [CommRing R] [IsLocalRing R] [IsNoetherianRing R], IsAdicComplete (maximalIdeal R) R → ∀ (U : Over (Sp R)), Smooth U.hom → ∀ (e : Sp R ⟶ U.left), e ≫ U.hom = 𝟙 _ → ∀ (Ω : Type) [Field Ω] (x : Sp Ω ⟶ Sp R), closedPoint R ∉ Set.range x → IrreducibleSpace (pullback U.hom x : Scheme.{0}) → ∀ O : (pullback U.hom x).Opens, (O : Set (pullback U.hom x : Scheme.{0})).Nonempty → ∃ (a : Sp R ⟶ U.left) (aΩ : Sp Ω ⟶ pullback U.hom x), a ≫ U.hom = 𝟙 _ ∧ aΩ ≫ pullback.fst _ _ = x ≫ a ∧ aΩ ≫ pullback.snd _ _ = 𝟙 _ ∧ Set.range aΩ ⊆ O := GlobalTheory.T.denseSections_of_algebraic_affineNbhd

theorem image_maximalIdeal_infinite {R Ω : Type} [CommRing R] [IsLocalRing R] [Field Ω] [Algebra R Ω]
    (hker : RingHom.ker (algebraMap R Ω) ≠ maximalIdeal R) :
    (algebraMap R Ω '' (maximalIdeal R : Set R)).Infinite := by
  have hle : RingHom.ker (algebraMap R Ω) ≤ maximalIdeal R :=
    IsLocalRing.le_maximalIdeal (RingHom.ker_ne_top _)
  obtain ⟨m0, hm0, hm0k⟩ : ∃ m0 ∈ maximalIdeal R, m0 ∉ RingHom.ker (algebraMap R Ω) := by
    by_contra hcon
    push_neg at hcon
    exact hker (le_antisymm hle hcon)
  rw [RingHom.mem_ker] at hm0k
  have hne : ∀ n k : ℕ, n < k → algebraMap R Ω (m0 ^ (n + 1)) ≠ algebraMap R Ω (m0 ^ (k + 1)) := by
    intro n k hnk heq
    obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_lt hnk
    have h1 : algebraMap R Ω (m0 ^ (d + 1)) = 1 := by
      have hpow : algebraMap R Ω (m0 ^ (n + 1)) ≠ 0 := by rw [map_pow]; exact pow_ne_zero _ hm0k
      have : algebraMap R Ω (m0 ^ (n + 1)) * algebraMap R Ω (m0 ^ (d + 1)) = algebraMap R Ω (m0 ^ (n + 1)) * 1 := by
        rw [_root_.mul_one, ← map_mul, ← _root_.pow_add, heq]
        congr 2
        omega
      exact mul_left_cancel₀ hpow this
    have h2 : 1 - m0 ^ (d + 1) ∈ maximalIdeal R :=
      hle (by rw [RingHom.mem_ker, map_sub, map_one, h1, sub_self])
    have h3 : m0 ^ (d + 1) ∈ maximalIdeal R := Ideal.pow_mem_of_mem _ hm0 _ d.succ_pos
    exact (maximalIdeal.isMaximal R).ne_top ((Ideal.eq_top_iff_one _).2 (by simpa using Ideal.add_mem _ h2 h3))
  have hinj : Function.Injective (fun n : ℕ => algebraMap R Ω (m0 ^ (n + 1))) := by
    intro n k h
    by_contra hnk
    rcases lt_or_gt_of_ne hnk with hlt | hlt
    · exact hne n k hlt h
    · exact hne k n hlt h.symm
  exact Set.infinite_of_injective_forall_mem hinj (fun n => ⟨m0 ^ (n + 1), Ideal.pow_mem_of_mem _ hm0 _ n.succ_pos, rfl⟩)

theorem exists_eval_ne_zero_of_infinite {Ω : Type} [Field Ω] (S : Set Ω) (hS : S.Infinite) (g : ℕ)
    (Q : MvPolynomial (Fin g) Ω) (hQ : Q ≠ 0) : ∃ c : Fin g → Ω, (∀ i, c i ∈ S) ∧ MvPolynomial.eval c Q ≠ 0 := by
  obtain ⟨T, hTS, hT⟩ := hS.exists_subset_card_eq (Q.totalDegree + 1)
  by_contra hcon
  push_neg at hcon
  apply hQ
  refine MvPolynomial.eq_zero_of_eval_zero_at_prod_finset Q (fun _ => T) (fun i => ?_) (fun x hx => hcon x (fun i => hTS (hx i)))
  rw [hT]
  exact Nat.lt_succ_of_le (MvPolynomial.degreeOf_le_totalDegree Q i)

theorem key : ∀ (R : Type) [CommRing R] [IsLocalRing R], IsAdicComplete (maximalIdeal R) R → ∀ (A : Type) [CommRing A] [Algebra R A] [Algebra.Smooth R A] (ε : A →ₐ[R] R) (Ω : Type) [Field Ω] [Algebra R Ω], RingHom.ker (algebraMap R Ω) ≠ maximalIdeal R → IrreducibleSpace (PrimeSpectrum (TensorProduct R Ω A)) → ∀ f : TensorProduct R Ω A, ¬ IsNilpotent f → ∃ a : A →ₐ[R] R, GlobalTheory.DenseSec.pt ((Algebra.ofId R Ω).comp a) f ≠ 0 := by
  intro R _ _ hc A _ _ _ ε Ω _ _ hker hirr f hf
  obtain ⟨g, t, h, ht0, hεh, hch⟩ := chart R A ε
  obtain ⟨Q, hQ, hQv⟩ := _root_.GlobalTheory.DenseSec.exists_poly_vanishing_of_fibre R A g t h hch Ω hirr f hf
  obtain ⟨c', hc'S, hc'Q⟩ := exists_eval_ne_zero_of_infinite _ (image_maximalIdeal_infinite hker) g Q hQ
  choose c hcm hcc using hc'S
  obtain ⟨a, hah, hat⟩ := _root_.GlobalTheory.DenseSec.hensel_etChart R hc A g t h hch ε hεh c (fun i => by simpa [ht0] using hcm i)
  refine ⟨a, fun h0 => hc'Q ?_⟩
  have hv := hQv ((Algebra.ofId R Ω).comp a) (by simpa using (hah.map (algebraMap R Ω)).ne_zero) h0
  have hc' : c' = fun i => ((Algebra.ofId R Ω).comp a) (t i) := by
    funext i
    simp [hat, hcc]
  rw [hc']
  exact hv

theorem dense_sections : ∀ (R : Type) [CommRing R] [IsLocalRing R] [IsNoetherianRing R], IsAdicComplete (maximalIdeal R) R → ∀ (U : Over (Sp R)), Smooth U.hom → ∀ (e : Sp R ⟶ U.left), e ≫ U.hom = 𝟙 _ → ∀ (Ω : Type) [Field Ω] (x : Sp Ω ⟶ Sp R), closedPoint R ∉ Set.range x → IrreducibleSpace (pullback U.hom x : Scheme.{0}) → ∀ O : (pullback U.hom x).Opens, (O : Set (pullback U.hom x : Scheme.{0})).Nonempty → ∃ (a : Sp R ⟶ U.left) (aΩ : Sp Ω ⟶ pullback U.hom x), a ≫ U.hom = 𝟙 _ ∧ aΩ ≫ pullback.fst _ _ = x ≫ a ∧ aΩ ≫ pullback.snd _ _ = 𝟙 _ ∧ Set.range aΩ ⊆ O := _root_.GlobalTheory.DenseAff.denseSections_of_algebraic key
end GlobalTheory.DenseSec
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothGroupSectionsDenseInFibres =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothGroupSectionsDenseInFibresStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothGroupSectionsDenseInFibresStatement", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothGroupSectionsDenseInFibres\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothGroupSectionsDenseInFibresStatement =====
