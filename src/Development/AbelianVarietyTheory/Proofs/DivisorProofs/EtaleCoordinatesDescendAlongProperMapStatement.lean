module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteOpenImmersionNbhdIsolatedFibrePointsStatement
public import Mathlib.AlgebraicGeometry.AffineSpace
public import Mathlib.AlgebraicGeometry.Morphisms.Etale
public import Mathlib.RingTheory.Extension.Cotangent.BaseChange
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp
public import Mathlib.AlgebraicGeometry.Morphisms.QuasiFinite
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenConnectedComponentOfIsLocallyNoetherian
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsHomBirationalModelsAmpleFrames
public import Mathlib.RingTheory.Etale.QuasiFinite
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsIsoIffBijectiveOverAlgClosed
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppBijectiveOfFlatBaseChangeGlobalFunctions
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIdempotentOfClopen
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.FormallyUnramifiedOfTangentMapInjective
public import Mathlib.AlgebraicGeometry.Morphisms.FlatMono
public import Mathlib.AlgebraicGeometry.Morphisms.UniversallyOpen
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.AlgebraicGeometry.Morphisms.UniversallyInjective
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.Polynomial.Basic
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.AlgebraicGeometry.AlgClosed.Basic
import Mathlib.AlgebraicGeometry.ZariskisMainTheorem
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar
import Mathlib.Algebra.Azumaya.Basic
import Mathlib.RingTheory.SimpleRing.Principal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsIsoAppTopOfIsPullbackOfSurjective
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleNhdsAffineSpaceMapOfFlatBaseChange, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleNeighbourhoodFinitePieceIsolatedPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoOfFiniteEtaleOfExistsUniqueLift, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoFinitePieceFlatConnectedChart, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFlatChartEtaleOfQuasiFiniteAt, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FamilyPulledBackNearPointOfEtaleCoordinates, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenRangeEqInterPreimageEtaleUnivOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenRangeEqInterPreimageEtaleUnivOpenStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperSurjectiveAffineChartBijectiveSections, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsolatedInFibreCoordinateMapAffineSpace, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCoordinatesDescendAlongProperMap, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCoordinatesDescendAlongProperMapStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleNhdsAffineSpaceMapOfFlatBaseChange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleNhdsAffineSpaceMapOfFlatBaseChange", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineSpace\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import Mathlib.RingTheory.Extension.Cotangent.BaseChange\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.EtaleAtDescent

open TensorProduct

theorem notMem_support_of_flat {B D M N : Type} [CommRing B] [CommRing D] [Algebra B D] [Module.Flat B D]
    [AddCommGroup M] [Module B M] [AddCommGroup N] [Module B N] [Module D N] [IsScalarTower B D N]
    (φ : M →ₗ[B] N) (hφ : Function.Injective (φ.liftBaseChange D)) (Q : PrimeSpectrum D)
    (hQ : Q ∉ Module.support D N) : PrimeSpectrum.comap (algebraMap B D) Q ∉ Module.support B M := by
  rw [Module.notMem_support_iff'] at hQ ⊢
  intro x
  by_contra hx
  push Not at hx
  obtain ⟨f, hf, hfx⟩ := hQ (φ x)
  have h0 : f ⊗ₜ[B] x = 0 := hφ (by simpa using hfx)
  have hex := Module.Flat.lTensor_exact D (LinearMap.exact_subtype_ker_map (LinearMap.toSpanSingleton B M x))
  obtain ⟨z, hz⟩ := (hex (f ⊗ₜ[B] 1)).1 (by simpa using h0)
  have key : ∀ z : D ⊗[B] LinearMap.ker (LinearMap.toSpanSingleton B M x),
      TensorProduct.rid B D (LinearMap.lTensor D (LinearMap.ker (LinearMap.toSpanSingleton B M x)).subtype z) ∈
        Q.asIdeal := by
    intro z
    induction z with
    | add a b ha hb => rw [map_add (f := _), map_add (f := _)]; exact Q.asIdeal.add_mem ha hb
    | tmul d r =>
      have hr : algebraMap B D r.1 ∈ Q.asIdeal := by
        by_contra h
        exact hx r.1 h (LinearMap.mem_ker.1 r.2)
      simpa [Algebra.smul_def] using Q.asIdeal.mul_mem_right d hr
  have := key z
  rw [hz] at this
  exact hf (by simpa using this)


attribute [local instance] Algebra.TensorProduct.rightAlgebra in
theorem mem_etaleLocus_of_flat {A B C : Type} [CommRing A] [CommRing B] [CommRing C] [Algebra A B] [Algebra A C]
    [Module.Flat A C] (Q : PrimeSpectrum (C ⊗[A] B)) (hQ : Q ∈ Algebra.etaleLocus C (C ⊗[A] B)) :
    PrimeSpectrum.comap (algebraMap B (C ⊗[A] B)) Q ∈ Algebra.etaleLocus A B := by
  rw [Algebra.etaleLocus_eq_compl_support] at hQ ⊢
  haveI : Module.Flat B (C ⊗[A] B) :=
    Module.Flat.of_linearEquiv (Algebra.IsPushout.equiv A B C (C ⊗[A] B)).toLinearEquiv.symm
  refine ⟨notMem_support_of_flat (KaehlerDifferential.map A C B (C ⊗[A] B)) ?_ Q hQ.1,
    notMem_support_of_flat (Algebra.H1Cotangent.map A C B (C ⊗[A] B)) ?_ Q hQ.2⟩
  · have hc : (KaehlerDifferential.tensorKaehlerEquivBase A C B (C ⊗[A] B) : _ → _) =
        (KaehlerDifferential.map A C B (C ⊗[A] B)).liftBaseChange (C ⊗[A] B) ∘
          (Algebra.IsPushout.cancelBaseChange A C B (C ⊗[A] B) Ω[B⁄A]).symm := by
      funext z
      induction z with
      | add x y hx hy => simp only [Function.comp_apply, map_add (f := _)] at hx hy ⊢; rw [hx, hy]
      | tmul s m =>
        rw [KaehlerDifferential.tensorKaehlerEquivBase_tmul, Function.comp_apply,
          Algebra.IsPushout.cancelBaseChange_symm_tmul, LinearMap.liftBaseChange_tmul, algebraMap_smul]
    have hi := (KaehlerDifferential.tensorKaehlerEquivBase A C B (C ⊗[A] B)).injective
    rw [hc] at hi
    exact hi.of_comp_right (LinearEquiv.surjective _)
  · have hc : (Algebra.tensorH1CotangentOfFlat A B C : _ → _) =
        (Algebra.H1Cotangent.map A C B (C ⊗[A] B)).liftBaseChange (C ⊗[A] B) ∘
          (Algebra.IsPushout.cancelBaseChange A C B (C ⊗[A] B) (Algebra.H1Cotangent A B)).symm := by
      funext z
      induction z with
      | add x y hx hy => simp only [Function.comp_apply, map_add (f := _)] at hx hy ⊢; rw [hx, hy]
      | tmul s m =>
        rw [Algebra.tensorH1CotangentOfFlat_tmul, Function.comp_apply, Algebra.IsPushout.cancelBaseChange_symm_tmul,
          LinearMap.liftBaseChange_tmul, algebraMap_smul]
    have hi := (Algebra.tensorH1CotangentOfFlat A B C).injective
    rw [hc] at hi
    exact hi.of_comp_right (LinearEquiv.surjective _)


attribute [local instance] Algebra.TensorProduct.rightAlgebra in
theorem exists_etale_spec {A B C : Type} [CommRing A] [CommRing B] [CommRing C] [Algebra A B] [Algebra A C]
    [Module.Flat A C] [Algebra.FinitePresentation A B] (W : (Spec (.of (C ⊗[A] B))).Opens)
    (p : Spec (.of (C ⊗[A] B))) (hp : p ∈ W)
    (hW : Etale (W.ι ≫ Spec.map (CommRingCat.ofHom (algebraMap C (C ⊗[A] B))))) :
    ∃ V : (Spec (.of B)).Opens, Spec.map (CommRingCat.ofHom (algebraMap B (C ⊗[A] B))) p ∈ V ∧
      Etale (V.ι ≫ Spec.map (CommRingCat.ofHom (algebraMap A B))) := by
  obtain ⟨_, ⟨_, ⟨f, rfl⟩, rfl⟩, hpf, hf⟩ :=
    PrimeSpectrum.isBasis_basic_opens.exists_subset_of_mem_open hp W.isOpen
  let j := Spec.map (CommRingCat.ofHom (algebraMap (C ⊗[A] B) (Localization.Away f)))
  have hj : Set.range j ⊆ Set.range W.ι := by
    rw [Scheme.Opens.range_ι]
    refine subset_trans ?_ hf
    exact (PrimeSpectrum.localization_away_comap_range (Localization.Away f) f).le
  have h1 : Etale (IsOpenImmersion.lift W.ι j hj ≫ W.ι ≫
      Spec.map (CommRingCat.ofHom (algebraMap C (C ⊗[A] B)))) := inferInstance
  rw [IsOpenImmersion.lift_fac_assoc, ← Spec.map_comp, ← CommRingCat.ofHom_comp, ← IsScalarTower.algebraMap_eq,
    HasRingHomProperty.Spec_iff (P := @Etale), CommRingCat.hom_ofHom, RingHom.etale_algebraMap] at h1
  have h2 := mem_etaleLocus_of_flat p (Algebra.basicOpen_subset_etaleLocus_iff_etale.2 h1 hpf)
  rw [Algebra.mem_etaleLocus_iff] at h2
  obtain ⟨g, hg, hE⟩ := Algebra.exists_etale_of_isEtaleAt (R := A)
    (PrimeSpectrum.comap (algebraMap B (C ⊗[A] B)) p).asIdeal
  let i := Spec.map (CommRingCat.ofHom (algebraMap B (Localization.Away g)))
  refine ⟨i.opensRange, ?_, ?_⟩
  · exact (PrimeSpectrum.localization_away_comap_range (Localization.Away g) g).ge hg
  · have h3 : Etale (i ≫ Spec.map (CommRingCat.ofHom (algebraMap A B))) := by
      rw [← Spec.map_comp, ← CommRingCat.ofHom_comp, ← IsScalarTower.algebraMap_eq,
        HasRingHomProperty.Spec_iff (P := @Etale), CommRingCat.hom_ofHom, RingHom.etale_algebraMap]
      exact hE
    rw [← i.isoOpensRange_inv_comp, Category.assoc]
    infer_instance

theorem exists_etale_of_isAffine {U T S : Scheme.{0}} [IsAffine S] (τ : U ⟶ S) (h : T ⟶ S)
    [LocallyOfFinitePresentation τ] [Flat h] (W : (pullback τ h).Opens) (p : ↥(pullback τ h)) (hp : p ∈ W)
    (hW : Etale (W.ι ≫ pullback.snd τ h)) : ∃ V : U.Opens, pullback.fst τ h p ∈ V ∧ Etale (V.ι ≫ τ) := by
  obtain ⟨B, i, _, q, hq⟩ := U.exists_Spec_apply_eq (pullback.fst τ h p)
  obtain ⟨C, k, _, t, ht⟩ := T.exists_Spec_apply_eq (pullback.snd τ h p)
  obtain ⟨φ, hφ⟩ := Spec.map_surjective (i ≫ τ ≫ S.isoSpec.hom)
  obtain ⟨ψ, hψ⟩ := Spec.map_surjective (k ≫ h ≫ S.isoSpec.hom)
  letI := φ.hom.toAlgebra
  letI := ψ.hom.toAlgebra
  letI : Algebra B (C ⊗[Γ(S, ⊤)] B) := Algebra.TensorProduct.rightAlgebra
  haveI : Algebra.FinitePresentation Γ(S, ⊤) B := by
    have : LocallyOfFinitePresentation (Spec.map φ) := by rw [hφ]; infer_instance
    exact (HasRingHomProperty.Spec_iff (P := @LocallyOfFinitePresentation)).1 this
  haveI : Module.Flat Γ(S, ⊤) C := by
    have : Flat (Spec.map ψ) := by rw [hψ]; infer_instance
    exact (HasRingHomProperty.Spec_iff (P := @Flat)).1 this
  have hpb : IsPullback (Spec.map (CommRingCat.ofHom (algebraMap B (C ⊗[Γ(S, ⊤)] B))))
      (Spec.map (CommRingCat.ofHom (algebraMap C (C ⊗[Γ(S, ⊤)] B)))) (Spec.map φ) (Spec.map ψ) :=
    (isPullback_SpecMap_of_isPushout _ _ _ _ (CommRingCat.isPushout_tensorProduct Γ(S, ⊤) C B)).flip
  let m := pullback.map (Spec.map φ) (Spec.map ψ) τ h i k S.isoSpec.inv (by simp [hφ]) (by simp [hψ])
  have hm : IsOpenImmersion m := inferInstance
  have hpm : p ∈ Set.range m := by
    rw [Scheme.Pullback.range_map]
    exact ⟨⟨q, hq⟩, ⟨t, ht⟩⟩
  let j := hpb.isoPullback.hom ≫ m
  have j1 : j ≫ pullback.fst τ h = Spec.map (CommRingCat.ofHom (algebraMap B (C ⊗[Γ(S, ⊤)] B))) ≫ i := by
    simp only [j, m, pullback.map, Category.assoc, pullback.lift_fst, IsPullback.isoPullback_hom_fst_assoc]
  have j2 : j ≫ pullback.snd τ h = Spec.map (CommRingCat.ofHom (algebraMap C (C ⊗[Γ(S, ⊤)] B))) ≫ k := by
    simp only [j, m, pullback.map, Category.assoc, pullback.lift_snd, IsPullback.isoPullback_hom_snd_assoc]
  obtain ⟨p', rfl⟩ : ∃ p', j p' = p := by
    obtain ⟨p₀, rfl⟩ := hpm
    obtain ⟨p₁, rfl⟩ := hpb.isoPullback.hom.surjective p₀
    exact ⟨p₁, by simp [j]⟩
  have h1 : Etale ((j ∣_ W) ≫ W.ι ≫ pullback.snd τ h) := inferInstance
  rw [morphismRestrict_ι_assoc, j2, ← Category.assoc] at h1
  have h2 := Etale.of_comp ((j ⁻¹ᵁ W).ι ≫ Spec.map (CommRingCat.ofHom (algebraMap C (C ⊗[Γ(S, ⊤)] B)))) k
  obtain ⟨V, hV, hE⟩ := exists_etale_spec (j ⁻¹ᵁ W) p' hp h2
  refine ⟨i ''ᵁ V, ?_, ?_⟩
  · rw [← Scheme.Hom.comp_apply, j1, Scheme.Hom.comp_apply]
    exact ⟨_, hV, rfl⟩
  · have hE' : Etale (V.ι ≫ Spec.map φ) := hE
    have e : (i ''ᵁ V).ι ≫ τ = (i.isoImage V).inv ≫ (V.ι ≫ Spec.map φ) ≫ S.isoSpec.inv := by
      simp [hφ]
    rw [e]
    infer_instance

theorem etale_nhds_of_flat_baseChange : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (U : Over (Sp R)) (g : ℕ) (τ : U.left ⟶ 𝔸(Fin g; Sp R)), LocallyOfFiniteType U.hom → τ ≫ (𝔸(Fin g; Sp R) ↘ Sp R) = U.hom → ∀ (T : Scheme.{0}) (h : T ⟶ 𝔸(Fin g; Sp R)), Flat h → ∀ (W : (pullback τ h).Opens) (p : ↥(pullback τ h)), p ∈ W → Etale (W.ι ≫ pullback.snd τ h) → ∃ V : U.left.Opens, pullback.fst τ h p ∈ V ∧ Etale (V.ι ≫ τ) := by
  intro R _ _ _ hR U g τ hU hτ T h hh W p hp hW
  haveI := hR.1
  haveI : LocallyOfFiniteType (τ ≫ (𝔸(Fin g; Sp R) ↘ Sp R)) := by rw [hτ]; exact hU
  haveI : LocallyOfFiniteType τ := locallyOfFiniteType_of_comp τ (𝔸(Fin g; Sp R) ↘ Sp R)
  haveI : IsLocallyNoetherian 𝔸(Fin g; Sp R) := LocallyOfFiniteType.isLocallyNoetherian (𝔸(Fin g; Sp R) ↘ Sp R)
  exact exists_etale_of_isAffine τ h W p hp hW

end GlobalTheory.EtaleAtDescent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleNhdsAffineSpaceMapOfFlatBaseChange =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleNeighbourhoodFinitePieceIsolatedPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleNeighbourhoodFinitePieceIsolatedPoint", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import Mathlib.AlgebraicGeometry.Morphisms.QuasiFinite\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenConnectedComponentOfIsLocallyNoetherian\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsHomBirationalModelsAmpleFrames\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.AlgClosed.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.ZariskisMainTheorem\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\npublic import Mathlib.RingTheory.Etale.QuasiFinite\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.Algebra.Azumaya.Basic\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.EtaleFinitePiece

open Polynomial in
theorem exists_etale_algebra (R L : Type) [CommRing R] [Field L] [Algebra R L] [Algebra.QuasiFinite R L] :
    ∃ (R₁ : Type) (_ : CommRing R₁) (_ : Algebra R R₁) (_ : Algebra.Etale R R₁) (ψ : R₁ →ₐ[R] L),
      ∀ (Ω : Type) [Field Ω] (a₁ a₂ : L →+* Ω),
        a₁.comp ψ.toRingHom = a₂.comp ψ.toRingHom → a₁ = a₂ := by
  let p : Ideal R := RingHom.ker (algebraMap R L)
  have : p.IsPrime := RingHom.ker_isPrime _
  let K := p.ResidueField
  let : Algebra K L := (Ideal.ResidueField.lift p (algebraMap R L) le_rfl (by
    intro r hr
    exact (IsUnit.mem_submonoid_iff _).2 (isUnit_iff_ne_zero.2 (by simpa [p] using hr)))).toAlgebra
  have : IsScalarTower R K L := IsScalarTower.of_algebraMap_eq fun r =>
    (Ideal.ResidueField.lift_algebraMap _ _ _ _ r).symm
  have : Algebra.QuasiFinite K L := .of_restrictScalars R K L
  have : Module.Finite K L := .of_quasiFinite
  let Ks := separableClosure K L
  obtain ⟨θ, hθ⟩ := Field.exists_primitive_element K Ks
  have hint : IsIntegral K θ := .of_finite K θ
  have hfrac : ∀ k : K, ∃ a c : R, algebraMap R K c ≠ 0 ∧ k * algebraMap R K c = algebraMap R K a := by
    intro k
    obtain ⟨a, c, hc, rfl⟩ := IsFractionRing.div_surjective (A := R ⧸ p) k
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective a
    obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective c
    have hc' : algebraMap (R ⧸ p) K (Ideal.Quotient.mk p c) ≠ 0 :=
      IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors hc
    exact ⟨a, c, hc', div_mul_cancel₀ _ hc'⟩
  obtain ⟨c, hc, hcf⟩ : ∃ c : R, algebraMap R K c ≠ 0 ∧ ∀ i,
      (minpoly K θ).coeff i * algebraMap R K c ∈ (algebraMap R K).range := by
    choose a c hc hac using hfrac
    refine ⟨∏ i ∈ (minpoly K θ).support, c ((minpoly K θ).coeff i), ?_, fun i => ?_⟩
    · rw [map_prod]; exact Finset.prod_ne_zero_iff.2 fun i _ => hc _
    · by_cases hi : i ∈ (minpoly K θ).support
      · rw [← Finset.mul_prod_erase _ _ hi, map_mul, ← _root_.mul_assoc, hac, ← map_mul]
        exact ⟨_, rfl⟩
      · rw [notMem_support_iff.1 hi, zero_mul]; exact zero_mem _
  set c' := algebraMap R K c with hc'
  have hmin : minpoly K (c' • θ) = (minpoly K θ).scaleRoots c' :=
    IsIntegrallyClosed.minpoly_smul hc hint
  have hint' : IsIntegral K (c' • θ) := .of_finite K _
  have hl : minpoly K (c' • θ) ∈ lifts (algebraMap R K) := by
    rw [lifts_iff_coeff_lifts]
    intro n
    rcases lt_trichotomy n (minpoly K θ).natDegree with h | h | h
    · rw [hmin, coeff_scaleRoots]
      obtain ⟨m, hm⟩ : ∃ m, (minpoly K θ).natDegree - n = m + 1 := ⟨_, (Nat.succ_pred_eq_of_pos (by omega)).symm⟩
      obtain ⟨u, hu⟩ := hcf n
      refine ⟨u * c ^ m, ?_⟩
      rw [hm, map_mul, hu, map_pow, pow_succ]; ring
    · rw [hmin, coeff_scaleRoots, h, Nat.sub_self, pow_zero, _root_.mul_one, (minpoly.monic hint).coeff_natDegree]
      exact ⟨1, map_one _⟩
    · rw [hmin, coeff_scaleRoots, coeff_eq_zero_of_natDegree_lt h, zero_mul]
      exact ⟨0, map_zero _⟩
  obtain ⟨F, hF, -, hFm⟩ := lifts_and_natDegree_eq_and_monic hl (minpoly.monic hint')
  let P : StandardEtalePair R := ⟨F, hFm, derivative F, ⟨1, 0, 1, by simp⟩⟩
  have hsep : (minpoly K (c' • θ)).Separable := Algebra.IsSeparable.isSeparable K _
  have hP : P.HasMap (c' • θ) := by
    constructor
    · change aeval _ F = 0
      rw [← aeval_map_algebraMap K, hF, minpoly.aeval]
    · change IsUnit (aeval _ (derivative F))
      rw [← aeval_map_algebraMap K, ← derivative_map, hF]
      exact (hsep.aeval_derivative_ne_zero (minpoly.aeval _ _)).isUnit
  refine ⟨P.Ring, inferInstance, inferInstance, inferInstance,
    (Ks.val.restrictScalars R).comp (P.lift _ hP), fun Ω _ a₁ a₂ h => ?_⟩
  have hR : ∀ r : R, a₁ (algebraMap R L r) = a₂ (algebraMap R L r) := fun r => by
    have := congr($h (algebraMap R P.Ring r))
    simp only [AlgHom.toRingHom_eq_coe, RingHom.coe_comp, RingHom.coe_coe, Function.comp_apply, AlgHom.commutes] at this
    exact this
  have hK : ∀ k : K, a₁ (algebraMap K L k) = a₂ (algebraMap K L k) := fun k => by
    obtain ⟨a, d, hd, e⟩ := hfrac k
    have h2 : a₂ (algebraMap K L (algebraMap R K d)) ≠ 0 := by simpa using hd
    apply mul_right_cancel₀ h2
    rw [← map_mul, ← map_mul, e, ← IsScalarTower.algebraMap_apply, ← IsScalarTower.algebraMap_apply, ← hR, ← hR,
      IsScalarTower.algebraMap_apply R K L, ← map_mul, ← map_mul, e, ← IsScalarTower.algebraMap_apply]
  have hX : a₁ ((c' • θ : Ks) : L) = a₂ ((c' • θ : Ks) : L) := by
    simpa using congr($h P.X)
  have hθ' : a₁ (θ : L) = a₂ (θ : L) := by
    have h2 : a₂ (algebraMap K L c') ≠ 0 := by simpa using hc
    apply mul_left_cancel₀ h2
    rw [← map_mul, ← hK, ← map_mul]
    simpa [Algebra.smul_def] using hX
  have hKs : a₁.comp (algebraMap Ks L) = a₂.comp (algebraMap Ks L) := by
    ext z
    have hz : z ∈ IntermediateField.adjoin K {θ} := hθ ▸ IntermediateField.mem_top
    induction hz using IntermediateField.adjoin_induction with
    | mem x hx => obtain rfl := hx; exact hθ'
    | algebraMap k => exact hK k
    | add x y _ _ hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]
    | inv x _ hx => rw [map_inv₀, map_inv₀, hx]
    | mul x y _ _ hx hy => rw [map_mul, map_mul, hx, hy]
  exact IsPurelyInseparable.injective_comp_algebraMap Ks L Ω hKs

open TensorProduct in
theorem exists_finite_piece {X S : Scheme.{0}} (f : X ⟶ S) [LocallyOfFiniteType f]
    {x : X} (hx : f.QuasiFiniteAt x) :
    ∃ (T : Scheme.{0}) (g : T ⟶ S) (Z : Scheme.{0}) (io : Z ⟶ pullback f g) (z : Z), Etale g ∧
      IsOpenImmersion io ∧ IsFinite (io ≫ pullback.snd f g) ∧ (io ≫ pullback.fst f g) z = x ∧
      ∀ w, (io ≫ pullback.snd f g) w = (io ≫ pullback.snd f g) z → w = z := by
  obtain ⟨_, ⟨U, (hU : IsAffineOpen U), rfl⟩, hxU, -⟩ := S.isBasis_affineOpens.exists_subset_of_mem_open
    (Set.mem_univ (f x)) isOpen_univ
  obtain ⟨_, ⟨V, (hV : IsAffineOpen V), rfl⟩, hxV, hUV : V ≤ f ⁻¹ᵁ U⟩ :=
    X.isBasis_affineOpens.exists_subset_of_mem_open hxU (f ⁻¹ᵁ U).2
  have : (f.appLE U V hUV).hom.FiniteType := f.finiteType_appLE hU hV hUV
  algebraize [(f.appLE U V hUV).hom]
  have : (hV.primeIdealOf ⟨x, hxV⟩).asIdeal.LiesOver (hU.primeIdealOf ⟨f x, hxU⟩).asIdeal := by
    suffices hU.primeIdealOf ⟨f x, hxU⟩ = Spec.map (f.appLE U V hUV) (hV.primeIdealOf ⟨x, hxV⟩) from
      ⟨congr(($this).1)⟩
    let pV : Spec Γ(X, V) := hV.primeIdealOf ⟨x, hxV⟩
    have happ : Spec.map (f.appLE U V hUV) ≫ hU.fromSpec = hV.fromSpec ≫ f :=
      IsAffineOpen.SpecMap_appLE_fromSpec ..
    have h1 : hU.fromSpec (hU.primeIdealOf ⟨f x, hxU⟩) = f x := hU.fromSpec_primeIdealOf ⟨f x, hxU⟩
    have h2 : hU.fromSpec (Spec.map (f.appLE U V hUV) pV) = f x :=
      (Scheme.Hom.comp_apply (Spec.map (f.appLE U V hUV)) hU.fromSpec pV).symm.trans
        ((congrFun (congrArg (fun g : Spec Γ(X, V) ⟶ S => (g : Spec Γ(X, V) → S)) happ) pV).trans
          ((Scheme.Hom.comp_apply hV.fromSpec f pV).trans
            (congrArg f (hV.fromSpec_primeIdealOf ⟨x, hxV⟩))))
    exact hU.fromSpec.isOpenEmbedding.injective (h1.trans h2.symm)
  have : Algebra.QuasiFiniteAt Γ(S, U) (hV.primeIdealOf ⟨x, hxV⟩).asIdeal :=
    hx.quasiFiniteAt hV hU hUV hxV
  obtain ⟨R, _, _, _, P, _, _, e, _, P', _, hP'P, hP', heP', -, _, huniq⟩ :=
    Algebra.exists_etale_isIdempotentElem_forall_liesOver_eq
    (hU.primeIdealOf ⟨f x, hxU⟩).asIdeal (hV.primeIdealOf ⟨x, hxV⟩).asIdeal
  have hfin : (algebraMap R (Localization.Away e)).Finite := RingHom.finite_algebraMap.mpr ‹_›
  let φ : Γ(S, U) ⟶ .of R := CommRingCat.ofHom <| algebraMap Γ(S, U) R
  have hφ : φ.hom.Etale := RingHom.etale_algebraMap.mpr ‹_›
  have : Etale (Spec.map φ) := HasRingHomProperty.Spec_iff.mpr hφ
  let e₁ : Spec (.of (R ⊗[Γ(S, U)] Γ(X, V))) ≅ pullback (Spec.map (f.appLE U V hUV)) (Spec.map φ) :=
    (pullbackSpecIso _ _ _).symm ≪≫ pullbackSymmetry _ _
  have he₁ : e₁.hom ≫ pullback.fst _ _ =
      Spec.map (CommRingCat.ofHom Algebra.TensorProduct.includeRight.toRingHom) := by
    dsimp [e₁, RingHom.algebraMap_toAlgebra]
    rw [Category.assoc, pullbackSymmetry_hom_comp_fst]
    exact pullbackSpecIso_inv_snd ..
  let g : Spec (.of (R ⊗[Γ(S, U)] Γ(X, V))) ⟶ pullback f (Spec.map φ ≫ hU.fromSpec) :=
    e₁.hom ≫ pullback.map _ _ _ _ hV.fromSpec (𝟙 _) hU.fromSpec
      (IsAffineOpen.SpecMap_appLE_fromSpec ..) (by simp)
  let l : Spec (.of (Localization.Away e)) ⟶ Spec (.of (R ⊗[Γ(S, U)] Γ(X, V))) :=
    Spec.map (CommRingCat.ofHom <| algebraMap _ _)
  have hl : Set.range l = ((PrimeSpectrum.basicOpen e : TopologicalSpace.Opens (PrimeSpectrum _)) : Set (PrimeSpectrum _)) := PrimeSpectrum.localization_away_comap_range _ _
  have hg : g ≫ pullback.snd f _ = Spec.map (CommRingCat.ofHom (algebraMap R _)) :=
    (Category.assoc _ _ _).trans
      ((congrArg (e₁.hom ≫ ·) ((pullback.lift_snd _ _ _).trans (Category.comp_id _))).trans
        ((Category.assoc _ _ _).trans
          ((congrArg ((pullbackSpecIso (Γ(S, U)) R (Γ(X, V))).inv ≫ ·)
            (pullbackSymmetry_hom_comp_snd _ _)).trans
            (pullbackSpecIso_inv_fst ..))))
  have hgf : g ≫ pullback.fst f _ =
      Spec.map (CommRingCat.ofHom Algebra.TensorProduct.includeRight.toRingHom) ≫ hV.fromSpec := by
    dsimp only [g]
    rw [Category.assoc, pullback.lift_fst, reassoc_of% he₁]
  have : IsOpenImmersion l :=
    IsOpenImmersion.of_isLocalization e
  have : IsOpenImmersion g := by
    dsimp only [g]
    infer_instance
  let p' : Spec (.of (R ⊗[Γ(S, U)] Γ(X, V))) := ⟨P', ‹_›⟩
  obtain ⟨z, hz⟩ : p' ∈ Set.range l := by rw [hl]; exact heP'
  refine ⟨Spec (.of R), Spec.map φ ≫ hU.fromSpec, _, l ≫ g, z, inferInstance, inferInstance, ?_, ?_, ?_⟩
  · rw [Category.assoc, hg, ← Spec.map_comp, IsFinite.SpecMap_iff]
    exact hfin
  · rw [Category.assoc, Scheme.Hom.comp_apply, hz, hgf, Scheme.Hom.comp_apply]
    exact (congrArg hV.fromSpec (PrimeSpectrum.ext hP' :
      Spec.map (CommRingCat.ofHom Algebra.TensorProduct.includeRight.toRingHom) p' =
        hV.primeIdealOf ⟨x, hxV⟩)).trans (hV.fromSpec_primeIdealOf ⟨x, hxV⟩)
  · intro w hw
    rw [Category.assoc, hg, Scheme.Hom.comp_apply, Scheme.Hom.comp_apply, hz] at hw
    apply l.isOpenEmbedding.injective
    rw [hz]
    have h1 : l w ∈ ((PrimeSpectrum.basicOpen e : TopologicalSpace.Opens (PrimeSpectrum _)) : Set (PrimeSpectrum _)) := hl ▸ Set.mem_range_self w
    refine PrimeSpectrum.ext (huniq _ (l w).isPrime ⟨?_⟩ h1)
    exact hP'P.over.trans congr(($hw).1).symm

theorem exists_factor_of_isPreimmersion {A X : Scheme.{0}} (j : A ⟶ X) [IsPreimmersion j]
    {Ω : Type} [Field Ω] (w : Spec (.of Ω) ⟶ X) (h : ∀ s, w s ∈ Set.range j) :
    ∃ c : Spec (.of Ω) ⟶ A, c ≫ j = w := by
  have : IsClosedImmersion (pullback.snd j w) := .of_isPreimmersion _ (isClosed_discrete _)
  have : Surjective (pullback.snd j w) := ⟨fun s => by
    obtain ⟨a, ha⟩ := h s
    obtain ⟨z, -, hz⟩ := Scheme.Pullback.exists_preimage_pullback _ _ ha
    exact ⟨z, hz⟩⟩
  have := isIso_of_isClosedImmersion_of_surjective (pullback.snd j w)
  exact ⟨inv (pullback.snd j w) ≫ pullback.fst j w, by simp [pullback.condition]⟩

theorem exists_lift_of_isAlgClosed {Z T : Scheme.{0}} (b : Z ⟶ T) [LocallyOfFiniteType b]
    {Ω : Type} [Field Ω] [IsAlgClosed Ω] (t : Spec (.of Ω) ⟶ T) (s) (h : t s ∈ Set.range b) :
    ∃ w : Spec (.of Ω) ⟶ Z, w ≫ b = t := by
  obtain ⟨a, ha⟩ := h
  obtain ⟨z, -, -⟩ := Scheme.Pullback.exists_preimage_pullback _ _ ha
  have : JacobsonSpace ↥(pullback b t) := LocallyOfFiniteType.jacobsonSpace (pullback.snd b t)
  obtain ⟨x, -, hx⟩ := nonempty_inter_closedPoints (Z := (Set.univ : Set ↥(pullback b t))) ⟨z, trivial⟩
    isOpen_univ.isLocallyClosed
  have hx' : IsClosed {x} := hx
  exact ⟨pointOfClosedPoint (pullback.snd b t) x hx' ≫ pullback.fst b t, by rw [Category.assoc, pullback.condition, pointOfClosedPoint_comp_assoc]⟩

theorem exists_etale_point {Y : Scheme.{0}} {L : Type} [Field L] (y : Spec (.of L) ⟶ Y)
    [LocallyQuasiFinite y] :
    ∃ (T : Scheme.{0}) (h : T ⟶ Y) (s : Spec (.of L) ⟶ T), Etale h ∧ s ≫ h = y ∧
      ∀ (Ω : Type) [Field Ω] (c₁ c₂ : Spec (.of Ω) ⟶ Spec (.of L)), c₁ ≫ s = c₂ ≫ s → c₁ = c₂ := by
  obtain ⟨_, ⟨V, hV, rfl⟩, hyV, -⟩ := Y.isBasis_affineOpens.exists_subset_of_mem_open
    (Set.mem_univ (y (closedPoint L))) isOpen_univ
  obtain ⟨R, io, _, hio⟩ : ∃ (R : CommRingCat.{0}) (io : Spec R ⟶ Y) (_ : IsOpenImmersion io),
      y (closedPoint L) ∈ Set.range io := ⟨_, hV.fromSpec, hV.isOpenImmersion_fromSpec, by rwa [hV.range_fromSpec]⟩
  obtain ⟨c, rfl⟩ := exists_factor_of_isPreimmersion io y fun s => by
    rwa [Subsingleton.elim s (closedPoint L)]
  obtain ⟨φ, rfl⟩ := Spec.map_surjective c
  have hq : LocallyQuasiFinite (Spec.map φ) := .of_comp _ io
  rw [HasRingHomProperty.Spec_iff (P := @LocallyQuasiFinite)] at hq
  algebraize [φ.hom]
  obtain ⟨R₁, _, _, _, ψ, hψ⟩ := exists_etale_algebra R L
  have : Etale (Spec.map (CommRingCat.ofHom (algebraMap R R₁))) :=
    HasRingHomProperty.Spec_iff.mpr (RingHom.etale_algebraMap.mpr ‹_›)
  refine ⟨Spec (.of R₁), Spec.map (CommRingCat.ofHom (algebraMap R R₁)) ≫ io,
    Spec.map (CommRingCat.ofHom ψ.toRingHom), inferInstance, ?_, fun Ω _ c₁ c₂ h => ?_⟩
  · rw [← Spec.map_comp_assoc]
    congr 2
    ext r
    exact ψ.commutes r
  · obtain ⟨a₁, rfl⟩ := Spec.map_surjective c₁
    obtain ⟨a₂, rfl⟩ := Spec.map_surjective c₂
    rw [← Spec.map_comp, ← Spec.map_comp, Spec.map_inj] at h
    congr 1
    exact CommRingCat.hom_ext (hψ Ω _ _ congr(($h).hom))

theorem quasiFiniteAt_of_isolated {H X : Scheme.{0}} (φ : H ⟶ X) [LocallyOfFiniteType φ]
    (z : H) (O : H.Opens) (hzO : z ∈ O) (hO : ∀ w ∈ O, φ w = φ z → w = z) : φ.QuasiFiniteAt z := by
  apply _root_.GlobalTheory.ZmtNbhd.quasiFiniteAt_of_isolated <;> assumption

private def isFiniteProp : MorphismProperty Scheme.{0} := fun _ _ h => IsFinite h

private lemma isZariskiLocalAtTarget_isFiniteProp : IsZariskiLocalAtTarget isFiniteProp :=
  (HasAffineProperty.iff.mp
    ((HasAffineProperty.affineAnd_iff isFiniteProp RingHom.finite_respectsIso
      RingHom.finite_localizationPreserves.away RingHom.finite_ofLocalizationSpan).mpr
      isFinite_iff)).1

theorem main : ∀ (U Y : Scheme.{0}) (τ : U ⟶ Y), IsLocallyNoetherian Y → LocallyOfFiniteType τ → IsSeparated τ →
    ∀ x : U, (∃ O : U.Opens, x ∈ O ∧ ∀ u ∈ O, τ u = τ x → u = x) →
    ∃ (T : Scheme.{0}) (h : T ⟶ Y) (W : (pullback τ h).Opens) (p : ↥(pullback τ h)),
      Etale h ∧ PreconnectedSpace T ∧ p ∈ W ∧ pullback.fst τ h p = x ∧ IsFinite (W.ι ≫ pullback.snd τ h) ∧
      (∀ w ∈ W, pullback.snd τ h w = pullback.snd τ h p → w = p) ∧
      ∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (t : Sp Ω ⟶ T), Set.range t = {pullback.snd τ h p} →
        ∃! w : Sp Ω ⟶ W.toScheme, w ≫ W.ι ≫ pullback.snd τ h = t := by
  intro U Y τ _ _ _ x ⟨O, hxO, hO⟩
  have hx : τ.QuasiFiniteAt x := quasiFiniteAt_of_isolated τ x O hxO hO

  let Q : U.Opens := τ.quasiFiniteLocus
  have hxQ : x ∈ Q := hx
  have hQ : LocallyQuasiFinite (Q.ι ≫ τ) := by
    rw [← Scheme.Hom.quasiFiniteLocus_eq_top_iff, Scheme.Hom.quasiFiniteLocus_comp]
    exact top_le_iff.mp fun u _ => u.2
  have hfx : ∀ a : Spec (.of (U.residueField x)), U.fromSpecResidueField x a = x :=
    fun a => Scheme.fromSpecResidueField_apply x a

  let y₀ : Spec (.of (U.residueField x)) ⟶ Y := U.fromSpecResidueField x ≫ τ
  have : LocallyQuasiFinite y₀ := by
    rw [Scheme.Hom.quasiFiniteAt_iff] at hx
    dsimp only [y₀, Scheme.fromSpecResidueField]
    rw [Category.assoc]
    infer_instance
  obtain ⟨T₁, h₁, s, _, hs, hsep⟩ := exists_etale_point y₀
  let j : Spec (.of (U.residueField x)) ⟶ pullback τ h₁ :=
    pullback.lift (U.fromSpecResidueField x) s (by rw [hs])
  have hjf : j ≫ pullback.fst τ h₁ = U.fromSpecResidueField x := pullback.lift_fst ..
  have hjs : j ≫ pullback.snd τ h₁ = s := pullback.lift_snd ..
  have : IsPreimmersion (j ≫ pullback.fst τ h₁) := by rw [hjf]; infer_instance
  have : IsPreimmersion j := AmpUniq.isPreimmersion_of_comp j (pullback.fst τ h₁)
  let x₁ := j (closedPoint _)

  let σ : Spec (.of (U.residueField x)) ⟶ Q :=
    IsOpenImmersion.lift Q.ι (U.fromSpecResidueField x) (by
      rintro _ ⟨a, rfl⟩
      exact ⟨⟨x, hxQ⟩, (hfx a).symm⟩)
  have hσ : σ ≫ Q.ι = U.fromSpecResidueField x := IsOpenImmersion.lift_fac _ _ _
  let j' : Spec (.of (U.residueField x)) ⟶ pullback (Q.ι ≫ τ) h₁ :=
    pullback.lift σ s
      ((Category.assoc _ _ _).symm.trans ((congrArg (· ≫ τ) hσ).trans hs.symm))
  let m := pullback.map (Q.ι ≫ τ) h₁ τ h₁ Q.ι (𝟙 _) (𝟙 _) (by simp) (by simp)
  have hjm : j' ≫ m = j := by
    apply pullback.hom_ext
    · dsimp only [m, j', j]
      rw [Category.assoc, pullback.lift_fst, pullback.lift_fst_assoc, hσ, pullback.lift_fst]
    · dsimp only [m, j', j]
      rw [Category.assoc, pullback.lift_snd, pullback.lift_snd_assoc, Category.comp_id,
        pullback.lift_snd]
  have hqf : (pullback.snd τ h₁).QuasiFiniteAt x₁ := by
    have hms : m ≫ pullback.snd τ h₁ = pullback.snd (Q.ι ≫ τ) h₁ := by
      dsimp only [m]
      rw [pullback.lift_snd, Category.comp_id]
    have : x₁ = m (j' (closedPoint _)) := by
      dsimp only [x₁]
      rw [← hjm]
      rfl
    rw [this, ← Scheme.Hom.quasiFiniteAt_comp_iff_of_isOpenImmersion, hms]
    exact Scheme.Hom.quasiFiniteAt _ _

  obtain ⟨T₂, g₂, Z, io, z, _, _, hfin, hz, huniq⟩ := exists_finite_piece (pullback.snd τ h₁) hqf
  let b := io ≫ pullback.snd (pullback.snd τ h₁) g₂
  have hbg : ∀ {V : Scheme.{0}} (u : V ⟶ Z), u ≫ io ≫ pullback.fst _ _ ≫ pullback.snd τ h₁ = u ≫ b ≫ g₂ := by
    intro V u; simp [b, pullback.condition]

  have G : ∀ (Ω : Type) [Field Ω] (u₁ u₂ : Spec (.of Ω) ⟶ Z), u₁ ≫ b = u₂ ≫ b →
      (∀ a, u₁ a = z) → (∀ a, u₂ a = z) → u₁ = u₂ := by
    intro Ω _ u₁ u₂ hb h₁' h₂'
    have hr : ∀ u : Spec (.of Ω) ⟶ Z, (∀ a, u a = z) →
        ∃ c : Spec (.of Ω) ⟶ Spec (.of (U.residueField x)), c ≫ j = u ≫ io ≫ pullback.fst _ _ :=
      fun u hu => exists_factor_of_isPreimmersion j _ fun a => ⟨closedPoint _, by
        simp only [Scheme.Hom.comp_apply, hu]
        exact hz.symm⟩
    obtain ⟨c₁, hc₁⟩ := hr u₁ h₁'
    obtain ⟨c₂, hc₂⟩ := hr u₂ h₂'
    have hcs : ∀ (c : Spec (.of Ω) ⟶ Spec (.of (U.residueField x))) (u : Spec (.of Ω) ⟶ Z),
        c ≫ j = u ≫ io ≫ pullback.fst _ _ → c ≫ s = u ≫ b ≫ g₂ := by
      intro c u hcu
      rw [← hjs, ← Category.assoc, hcu, Category.assoc, Category.assoc, hbg]
    have hc : c₁ = c₂ := hsep Ω c₁ c₂ (by rw [hcs c₁ u₁ hc₁, hcs c₂ u₂ hc₂, reassoc_of% hb])
    rw [← cancel_mono io]
    apply pullback.hom_ext
    · rw [Category.assoc, Category.assoc, ← hc₁, ← hc₂, hc]
    · simpa [b] using hb

  have : IsLocallyNoetherian T₂ := LocallyOfFiniteType.isLocallyNoetherian (g₂ ≫ h₁)
  let C : T₂.Opens := ⟨connectedComponent (b z),
    GlobalTheory.isOpen_connectedComponent_of_isLocallyNoetherian T₂ inferInstance (b z)⟩
  have hzC : b z ∈ C := mem_connectedComponent
  let h : C.toScheme ⟶ Y := C.ι ≫ g₂ ≫ h₁
  let Z' : Z.Opens := b ⁻¹ᵁ C
  let b' : Z'.toScheme ⟶ C.toScheme := b ∣_ C
  have hb' : b' ≫ C.ι = Z'.ι ≫ b := morphismRestrict_ι b C
  let io' : Z'.toScheme ⟶ pullback τ h :=
    pullback.lift (Z'.ι ≫ io ≫ pullback.fst _ _ ≫ pullback.fst τ h₁) b' (by
      simp only [h, Category.assoc, pullback.condition]
      rw [reassoc_of% hb']
      simpa using congr($(hbg Z'.ι) ≫ h₁))
  have hio'f : io' ≫ pullback.fst τ h = Z'.ι ≫ io ≫ pullback.fst _ _ ≫ pullback.fst τ h₁ := pullback.lift_fst ..
  have hio's : io' ≫ pullback.snd τ h = b' := pullback.lift_snd ..
  let mC := pullback.map τ h τ (g₂ ≫ h₁) (𝟙 _) C.ι (𝟙 _) (by simp) (by simp [h])
  have hmC : io' ≫ mC = Z'.ι ≫ io ≫ (pullbackLeftPullbackSndIso τ h₁ g₂).hom := by
    apply pullback.hom_ext
    · dsimp only [mC]
      rw [Category.assoc, pullback.lift_fst, Category.comp_id, hio'f, Category.assoc,
        Category.assoc, pullbackLeftPullbackSndIso_hom_fst]
    · simp only [mC, Category.assoc, pullback.lift_snd, pullbackLeftPullbackSndIso_hom_snd]
      rw [← Category.assoc, hio's, hb']
  have : IsOpenImmersion (io' ≫ mC) := by rw [hmC]; infer_instance
  have : IsOpenImmersion io' := IsOpenImmersion.of_comp io' mC
  let z' : Z'.toScheme := ⟨z, hzC⟩
  have : IsFinite b := hfin
  have hb'inj : ∀ w : Z'.toScheme, b' w = b' z' → w = z' := by
    intro w hw
    apply Subtype.ext
    apply huniq
    have := congr(C.ι $hw)
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, hb', Scheme.Hom.comp_apply,
      Scheme.Hom.comp_apply] at this
    simp only [Scheme.Hom.comp_apply] at this ⊢
    exact this
  have he : io'.opensRange.ι = io'.isoOpensRange.inv ≫ io' := by
    rw [Iso.eq_inv_comp, Scheme.Hom.isoOpensRange_hom_ι]
  refine ⟨C.toScheme, h, io'.opensRange, io' z', inferInstance, ?_, ⟨z', rfl⟩, ?_, ?_, ?_, ?_⟩
  · exact isPreconnected_iff_preconnectedSpace.mp isPreconnected_connectedComponent
  · rw [← Scheme.Hom.comp_apply, hio'f]
    simp only [Scheme.Hom.comp_apply]
    change pullback.fst τ h₁ ((io ≫ pullback.fst _ _) z) = x
    rw [hz]
    let c₀ : Spec (.of (U.residueField x)) := closedPoint _
    change pullback.fst τ h₁ (j c₀) = x
    rw [← Scheme.Hom.comp_apply, hjf]
    exact hfx c₀
  · have := isZariskiLocalAtTarget_isFiniteProp
    change isFiniteProp _
    rw [he, Category.assoc, hio's, MorphismProperty.cancel_left_of_respectsIso isFiniteProp]
    change IsFinite b'
    infer_instance
  · rintro _ ⟨w, rfl⟩ hw
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, hio's] at hw
    rw [hb'inj w hw]
  · intro Ω _ _ t ht
    have hpt : pullback.snd τ h (io' z') = b' z' := by rw [← Scheme.Hom.comp_apply, hio's]
    have htz : ∀ a, t a = b' z' := fun a => by
      rw [← hpt]
      have : t a ∈ Set.range t := Set.mem_range_self a
      rwa [ht] at this
    have hpts : ∀ u : Spec (.of Ω) ⟶ Z', u ≫ b' = t → ∀ a, (u ≫ Z'.ι) a = z := fun u hu a => by
      have : b' (u a) = b' z' := by rw [← Scheme.Hom.comp_apply, hu, htz]
      rw [Scheme.Hom.comp_apply, hb'inj _ this]
      simp [z']
    obtain ⟨w₀, hw₀⟩ := exists_lift_of_isAlgClosed b' t (closedPoint Ω) ⟨z', (htz _).symm⟩
    refine ⟨w₀ ≫ io'.isoOpensRange.hom, ?_, fun w hw => ?_⟩
    · rw [he]
      simp [hio's, hw₀]
    · have hv : w ≫ io'.isoOpensRange.inv ≫ b' = t := by
        rw [← hw, ← hio's, he]
        simp only [Category.assoc]
      have key : (w ≫ io'.isoOpensRange.inv) ≫ Z'.ι = w₀ ≫ Z'.ι :=
        G Ω _ _ (by simp only [Category.assoc]; rw [← hb', reassoc_of% hv, reassoc_of% hw₀])
          (hpts _ (by rw [Category.assoc]; exact hv)) (hpts _ hw₀)
      have hv' : w ≫ io'.isoOpensRange.inv = w₀ := by rw [← cancel_mono Z'.ι]; exact key
      rw [← hv']
      simp

end GlobalTheory.EtaleFinitePiece
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleNeighbourhoodFinitePieceIsolatedPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoOfFiniteEtaleOfExistsUniqueLift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoOfFiniteEtaleOfExistsUniqueLift", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsIsoIffBijectiveOverAlgClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem isIso_of_finite_etale_of_existsUnique_lift (W S : Scheme.{0}) (w : W ⟶ S) (hf : IsFinite w)
    (he : Etale w) (hc : PreconnectedSpace S) (Ω : Type) [Field Ω] [IsAlgClosed Ω] (s : Sp Ω ⟶ S)
    (hs : ∃! x : Sp Ω ⟶ W, x ≫ w = s) : IsIso w := by
  obtain ⟨z⟩ : Nonempty (Sp Ω) := inferInstance
  obtain ⟨x₀, hx₀, hu⟩ := hs
  have hsub : Subsingleton {x : Sp Ω ⟶ W // x ≫ w = s} :=
    ⟨fun a b => Subtype.ext ((hu a.1 a.2).trans (hu b.1 b.2).symm)⟩
  have hne : Nonempty {x : Sp Ω ⟶ W // x ≫ w = s} := ⟨⟨x₀, hx₀⟩⟩
  obtain ⟨_, hcard⟩ := GlobalTheory.FinEt.card_points_eq_finrank w s z
  have h1 : w.finrank (s z) = 1 := by
    rw [← hcard, Nat.card_eq_one_iff_unique]
    exact ⟨hsub, hne⟩
  rw [Scheme.Hom.isIso_iff_finrank_eq]
  funext y
  rw [Pi.one_apply, ← h1]
  exact (Scheme.Hom.isLocallyConstant_finrank w).apply_eq_of_preconnectedSpace y (s z)

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoOfFiniteEtaleOfExistsUniqueLift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoFinitePieceFlatConnectedChart =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoFinitePieceFlatConnectedChart", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineSpace\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppBijectiveOfFlatBaseChangeGlobalFunctions\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIdempotentOfClopen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoOfFiniteEtaleOfExistsUniqueLift\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.FormallyUnramifiedOfTangentMapInjective\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsIsoAppTopOfIsPullbackOfSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.AlgebraicGeometry.ZariskisMainTheorem\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.FlatChartDeg

theorem isIso_app_of_flat {X Y S T : Scheme.{0}} {p : X ⟶ S} {f : T ⟶ S} {g : Y ⟶ X} {q : Y ⟶ T}
    (H : IsPullback g q p f) [Flat f] [QuasiCompact p] [QuasiSeparated p]
    (hp : ∀ V : S.Opens, IsIso (p.app V)) (U : T.Opens) : IsIso (q.app U) := by
  refine GlobalTheory.ProperFunctions.isIso_app_of_isBasis q
    (fun V : {V : T.affineOpens // ∃ W : S.affineOpens, V.1 ≤ f ⁻¹ᵁ W.1} ↦ V.1.1) ?_ ?_ U
  · rw [TopologicalSpace.Opens.isBasis_iff_nbhd]
    intro U x hx
    obtain ⟨_, ⟨W, hW, rfl⟩, hxW, -⟩ :=
      S.isBasis_affineOpens.exists_subset_of_mem_open (Set.mem_univ (f x)) isOpen_univ
    obtain ⟨_, ⟨V, hV, rfl⟩, hxV, hVU⟩ :=
      T.isBasis_affineOpens.exists_subset_of_mem_open (a := x) (u := (U ⊓ f ⁻¹ᵁ W : T.Opens))
        ⟨hx, hxW⟩ (U ⊓ f ⁻¹ᵁ W).2
    exact ⟨V, ⟨⟨⟨V, hV⟩, ⟨W, hW⟩, fun y hy ↦ (hVU hy).2⟩, rfl⟩, hxV, fun y hy ↦ (hVU hy).1⟩
  · rintro ⟨V, W, hVW⟩
    have : IsAffine V.1 := V.2
    have : IsAffine W.1 := W.2
    have H1 := (isPullback_morphismRestrict q V.1).flip.paste_horiz H
    have hw : ((q ⁻¹ᵁ V.1).ι ≫ g) ≫ p = (q ∣_ V.1 ≫ f.resLE W.1 V.1 hVW) ≫ W.1.ι := by
      rw [H1.w, Category.assoc, Scheme.Hom.resLE_comp_ι]
    let H2 := (isPullback_morphismRestrict p W.1).flip
    have : IsIso (p ∣_ W.1).appTop := by
      rw [morphismRestrict_appTop]
      exact @IsIso.comp_isIso _ _ _ _ _ _ _ (hp (W.1.ι ''ᵁ ⊤)) (by rw [eqToHom_op]; exact Functor.map_isIso _ _)
    refine GlobalTheory.ProperFunctions.isIso_appTop_of_isPullback (p := p ∣_ W.1) (f := f.resLE W.1 V.1 hVW)
      (g := H2.lift _ _ hw) (IsPullback.of_right ?_ (H2.lift_snd _ _ _) H2)
    rw [H2.lift_fst, Scheme.Hom.resLE_comp_ι]
    exact H1

theorem preconnectedSpace_of_surjective_appTop {Z T : Scheme.{0}} (r : Z ⟶ T) [PreconnectedSpace T]
    (hr : Function.Bijective r.appTop.hom) : PreconnectedSpace Z := by
  rw [preconnectedSpace_iff_clopen]
  intro s hs
  obtain ⟨e, he, hes⟩ := GlobalTheory.exists_idempotent_basicOpen_eq_of_isClopen Z s hs
  obtain ⟨e, rfl⟩ := hr.2 e
  have he' : e * e = e := hr.1 (by rw [map_mul, he])
  have h1 : T.basicOpen e ⊓ T.basicOpen (1 - e) = ⊥ := by
    rw [← Scheme.basicOpen_mul, mul_sub, _root_.mul_one, he', sub_self, Scheme.basicOpen_zero]
  have h2 : T.basicOpen e ⊔ T.basicOpen (1 - e) = ⊤ := by
    refine top_le_iff.mp ?_
    have := T.basicOpen_add_le e (1 - e)
    rwa [add_sub_cancel, T.basicOpen_of_isUnit isUnit_one] at this
  have hcl : IsClopen (T.basicOpen e : Set T) := by
    refine ⟨⟨?_⟩, (T.basicOpen e).2⟩
    have : (T.basicOpen e : Set T)ᶜ = T.basicOpen (1 - e) := by
      ext x
      constructor
      · intro hx
        have : x ∈ T.basicOpen e ⊔ T.basicOpen (1 - e) := by rw [h2]; trivial
        exact (TopologicalSpace.Opens.mem_sup.mp this).resolve_left hx
      · intro hx hx'
        have : x ∈ T.basicOpen e ⊓ T.basicOpen (1 - e) := ⟨hx', hx⟩
        rw [h1] at this
        exact this
    rw [this]
    exact (T.basicOpen (1 - e)).2
  have h3 : s = r ⁻¹' (T.basicOpen e : Set T) := by
    rw [← hes]
    exact congrArg (fun O : Z.Opens => (O : Set Z)) (Scheme.preimage_basicOpen_top r e).symm
  rcases isClopen_iff.mp hcl with h | h
  · left; rw [h3, h, Set.preimage_empty]
  · right; rw [h3, h, Set.preimage_univ]

theorem isIso_of_isAffineHom {Z T : Scheme.{0}} (f : Z ⟶ T) [IsAffineHom f] (hf : ∀ V : T.Opens, IsIso (f.app V)) :
    IsIso f := by
  rw [← MorphismProperty.isomorphisms.iff, IsZariskiLocalAtTarget.iff_of_iSup_eq_top (P := MorphismProperty.isomorphisms Scheme)
    _ (iSup_affineOpens_eq_top T)]
  intro V
  have : IsAffine V.1 := V.2
  have : IsAffine (f ⁻¹ᵁ V.1) := V.2.preimage f
  have : IsIso (f ∣_ V.1).appTop := by
    rw [morphismRestrict_appTop]
    exact @IsIso.comp_isIso _ _ _ _ _ _ _ (hf (V.1.ι ''ᵁ ⊤)) (by rw [eqToHom_op]; exact Functor.map_isIso _ _)
  refine (MorphismProperty.arrow_mk_iso_iff (MorphismProperty.isomorphisms Scheme) (arrowIsoSpecΓOfIsAffine _)).2 ?_
  exact inferInstanceAs (IsIso (Spec.map (f ∣_ V.1).appTop))

theorem flat_affineSpace (S : Scheme.{0}) (n : ℕ) : Flat (𝔸(Fin n; S) ↘ S) := by
  have hF : MorphismProperty.IsStableUnderBaseChange @Flat.{0} := inferInstance
  refine hF.of_isPullback (IsPullback.of_hasPullback _ _).flip ?_
  have := isIso_of_isTerminal specULiftZIsTerminal.{0} terminalIsTerminal (terminal.from _)
  have : Flat (Spec.map (CommRingCat.ofHom (MvPolynomial.C : ULift.{0} ℤ →+* MvPolynomial (Fin n) (ULift.{0} ℤ)))) :=
    (HasRingHomProperty.Spec_iff (P := @Flat)).2
      ((RingHom.flat_algebraMap_iff (R := ULift ℤ) (S := MvPolynomial (Fin n) (ULift ℤ))).2 inferInstance)
  rw [← terminal.comp_from (Spec.map (CommRingCat.ofHom MvPolynomial.C))]
  infer_instance

theorem exists_geometricPoint (Z : Scheme.{0}) (z : Z) :
    ∃ (Ω : Type) (_ : Field Ω) (_ : IsAlgClosed Ω) (s : Sp Ω ⟶ Z), ∀ y, s y = z := by
  refine ⟨AlgebraicClosure (Z.residueField z), inferInstance, inferInstance,
    Spec.map (CommRingCat.ofHom (algebraMap (Z.residueField z) (AlgebraicClosure (Z.residueField z)))) ≫
      Z.fromSpecResidueField z, fun y => ?_⟩
  rw [Scheme.Hom.comp_apply]
  exact Scheme.fromSpecResidueField_apply _ _

theorem isIso_finite_piece : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (S X : Scheme.{0}) (π : S ⟶ Sp R) (U : Over (Sp R)) (a : X ⟶ U.left) (b : X ⟶ S) (g : ℕ) (τ : U.left ⟶ 𝔸(Fin g; Sp R)) (c : X ⟶ pullback (𝔸(Fin g; Sp R) ↘ Sp R) π), IsProper π → Surjective π → Function.Bijective π.appTop.hom → LocallyOfFiniteType U.hom → IsSeparated U.hom → IsProper a → (∀ V : U.left.Opens, Function.Bijective (a.app V).hom) → τ ≫ (𝔸(Fin g; Sp R) ↘ Sp R) = U.hom → c ≫ pullback.fst _ _ = a ≫ τ → c ≫ pullback.snd _ _ = b → Etale c → ∀ x : U.left, U.hom x = closedPoint R → (∀ (Ω : Type) [Field Ω] (p p' : Sp Ω ⟶ X), Set.range (p ≫ a) = {x} → p ≫ a = p' ≫ a → p ≫ b = p' ≫ b → p = p') → (∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (ξ : Sp Ω ⟶ U.left) (s : Sp Ω ⟶ S), Set.range ξ = {x} → ξ ≫ U.hom = s ≫ π → ∃ p : Sp Ω ⟶ X, p ≫ a = ξ ∧ p ≫ b = s) → ∀ (T : Scheme.{0}) (h : T ⟶ 𝔸(Fin g; Sp R)) (W : (pullback τ h).Opens) (p : ↥(pullback τ h)), Flat h → PreconnectedSpace T → p ∈ W → pullback.fst τ h p = x → IsFinite (W.ι ≫ pullback.snd τ h) → (∀ w ∈ W, pullback.snd τ h w = pullback.snd τ h p → w = p) → (∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (t : Sp Ω ⟶ T), Set.range t = {pullback.snd τ h p} → ∃! w : Sp Ω ⟶ W.toScheme, w ≫ W.ι ≫ pullback.snd τ h = t) → IsIso (W.ι ≫ pullback.snd τ h) := by
  intro R _ _ _ _ S X π U a b g τ c hπ hπs hπb hUft hUsep ha haO hτ hc1 hc2 hc x hx hinj hsurj T h W p hh hT hpW hpx hfin hone huniq
  let α := 𝔸(Fin g; Sp R) ↘ Sp R
  have hbπ : b ≫ π = a ≫ τ ≫ α := by
    rw [← hc2, Category.assoc, ← pullback.condition, ← Category.assoc, hc1, Category.assoc]
  let s₁ := pullback.fst π (h ≫ α)
  let s₂ := pullback.snd π (h ≫ α)
  have HS : IsPullback s₁ s₂ π (h ≫ α) := .of_hasPullback _ _
  let m : pullback π (h ≫ α) ⟶ pullback α π := pullback.lift (s₂ ≫ h) s₁ (by rw [Category.assoc, HS.w])
  have Hm : IsPullback m s₂ (pullback.fst α π) h := by
    refine IsPullback.of_right (h₁₂ := pullback.snd α π) (v₁₃ := π) (h₂₂ := α) ?_ (pullback.lift_fst _ _ _)
      (IsPullback.of_hasPullback α π).flip
    rw [pullback.lift_snd]
    exact HS
  let x₁ := pullback.fst a (pullback.fst τ h)
  let x₂ := pullback.snd a (pullback.fst τ h)
  have HX : IsPullback x₁ x₂ a (pullback.fst τ h) := .of_hasPullback _ _
  have HX' : IsPullback x₁ (x₂ ≫ pullback.snd τ h) (a ≫ τ) h := HX.paste_vert (.of_hasPullback τ h)
  let n : pullback a (pullback.fst τ h) ⟶ pullback π (h ≫ α) := pullback.lift (x₁ ≫ b) (x₂ ≫ pullback.snd τ h) (by
    rw [Category.assoc, hbπ, ← Category.assoc a, ← Category.assoc x₁, HX'.w, Category.assoc])
  have hn1 : n ≫ s₁ = x₁ ≫ b := pullback.lift_fst _ _ _
  have hn2 : n ≫ s₂ = x₂ ≫ pullback.snd τ h := pullback.lift_snd _ _ _
  have Hn : IsPullback x₁ n c m := by
    refine IsPullback.of_bot (v₂₁ := s₂) (v₂₂ := pullback.fst α π) (h₃₁ := h) ?_ ?_ Hm
    · rw [hn2, hc1]
      exact HX'
    · apply pullback.hom_ext
      · rw [Category.assoc, Category.assoc, hc1, pullback.lift_fst, HX'.w, ← hn2, Category.assoc]
      · rw [Category.assoc, Category.assoc, hc2, pullback.lift_snd, hn1]
  have : Etale n := MorphismProperty.of_isPullback Hn hc
  let w₁ := pullback.fst x₂ W.ι
  let w₂ := pullback.snd x₂ W.ι
  have HW₀ : IsPullback w₁ w₂ x₂ W.ι := .of_hasPullback _ _
  have HW : IsPullback (w₁ ≫ x₁) w₂ a (W.ι ≫ pullback.fst τ h) := HW₀.paste_horiz HX
  have hq1 : (w₁ ≫ n) ≫ s₁ = (w₁ ≫ x₁) ≫ b := by rw [Category.assoc, hn1, Category.assoc]
  have hq2 : (w₁ ≫ n) ≫ s₂ = w₂ ≫ W.ι ≫ pullback.snd τ h := by
    rw [Category.assoc, hn2, ← Category.assoc, HW₀.w, Category.assoc]
  have hqe : Etale (w₁ ≫ n) := inferInstance
  have : IsProper w₂ := MorphismProperty.of_isPullback HW ha
  have : IsProper s₂ := MorphismProperty.of_isPullback HS hπ
  have : IsProper ((w₁ ≫ n) ≫ s₂) := by rw [hq2]; infer_instance
  have : IsProper (w₁ ≫ n) := IsProper.of_comp _ s₂
  have := GlobalTheory.TangentCrit.locallyQuasiFinite_of_formallyUnramified (w₁ ≫ n)
  have hqf : IsFinite (w₁ ≫ n) := IsFinite.of_isProper_of_locallyQuasiFinite _
  have : Flat α := flat_affineSpace _ _
  have hs₂ := GlobalTheory.Mum.app_bijective_of_flat_baseChange R S T _ π (h ≫ α) s₂ s₁ inferInstance inferInstance hπb
    inferInstance HS.flip
  have hconn := preconnectedSpace_of_surjective_appTop s₂ (hs₂ ⊤)
  have hs₂s : Surjective s₂ := MorphismProperty.of_isPullback HS hπs
  obtain ⟨z, hz⟩ := s₂.surjective (pullback.snd τ h p)
  obtain ⟨Ω, _, _, s, hs⟩ := exists_geometricPoint _ z
  obtain ⟨o⟩ : Nonempty (Sp Ω) := inferInstance
  have hrange : ∀ {Y : Scheme.{0}} (u : Sp Ω ⟶ Y) (y : Y), (∀ o', u o' = y) → Set.range u = {y} := by
    intro Y u y hu
    ext y'
    constructor
    · rintro ⟨o', rfl⟩
      exact hu o'
    · rintro rfl
      exact ⟨o, hu o⟩
  obtain ⟨w, hw, hwu⟩ := huniq Ω (s ≫ s₂) (hrange _ _ fun o' => by rw [Scheme.Hom.comp_apply, hs, hz])
  have hwp : ∀ o', W.ι (w o') = p := fun o' => by
    refine hone _ (w o').2 ?_
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, hw, Scheme.Hom.comp_apply, hs, hz]
  have hξ : Set.range (w ≫ W.ι ≫ pullback.fst τ h) = {x} := hrange _ _ fun o' => by
    rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply, hwp, hpx]
  obtain ⟨y, hy1, hy2⟩ := hsurj Ω (w ≫ W.ι ≫ pullback.fst τ h) (s ≫ s₁) hξ (by
    rw [← hτ, Category.assoc s, HS.w, ← Category.assoc s, ← hw]
    simp only [Category.assoc]
    rw [pullback.condition_assoc])
  have hiso : IsIso (w₁ ≫ n) := by
    refine GlobalTheory.Mum.isIso_of_finite_etale_of_existsUnique_lift _ _ _ hqf hqe hconn Ω s ⟨HW.lift y w hy1, ?_, ?_⟩
    · apply HS.hom_ext
      · rw [Category.assoc, hq1, HW.lift_fst_assoc, hy2]
      · rw [Category.assoc, hq2, HW.lift_snd_assoc, hw]
    · intro y' hy'
      have e1 : y' ≫ w₂ = w := hwu _ (by
        change (y' ≫ w₂) ≫ _ = _
        rw [Category.assoc, ← hq2, ← hy', Category.assoc y'])
      have e2 : (y' ≫ w₁ ≫ x₁) ≫ a = w ≫ W.ι ≫ pullback.fst τ h := by
        rw [Category.assoc, HW.w, ← e1, Category.assoc]
      apply HW.hom_ext
      · rw [HW.lift_fst]
        refine hinj Ω _ _ (by rw [e2]; exact hξ) (e2.trans hy1.symm) ?_
        rw [hy2, Category.assoc, ← hq1, ← hy', Category.assoc y']
      · rw [HW.lift_snd, e1]
  have hw₂ := isIso_app_of_flat HW (fun V => (ConcreteCategory.isIso_iff_bijective _).mpr (haO V))
  refine isIso_of_isAffineHom _ fun V => ?_
  have h1 : IsIso ((w₂ ≫ W.ι ≫ pullback.snd τ h).app V) := by
    rw [← hq2, Scheme.Hom.comp_app]
    exact @IsIso.comp_isIso _ _ _ _ _ _ _ ((ConcreteCategory.isIso_iff_bijective _).mpr (hs₂ V))
      (inferInstanceAs (IsIso ((w₁ ≫ n).app (s₂ ⁻¹ᵁ V))))
  rw [Scheme.Hom.comp_app] at h1
  exact @IsIso.of_isIso_comp_right _ _ _ _ _ _ _ (hw₂ ((W.ι ≫ pullback.snd τ h) ⁻¹ᵁ V)) h1

end GlobalTheory.Mum.FlatChartDeg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoFinitePieceFlatConnectedChart =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFlatChartEtaleOfQuasiFiniteAt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFlatChartEtaleOfQuasiFiniteAt", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineSpace\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleNeighbourhoodFinitePieceIsolatedPoint\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIsoFinitePieceFlatConnectedChart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem GlobalTheory.Mum.exists_flat_chart_etale_of_quasiFiniteAt : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (S X : Scheme.{0}) (π : S ⟶ Sp R) (U : Over (Sp R)) (a : X ⟶ U.left) (b : X ⟶ S) (g : ℕ) (τ : U.left ⟶ 𝔸(Fin g; Sp R)) (c : X ⟶ pullback (𝔸(Fin g; Sp R) ↘ Sp R) π), IsProper π → Surjective π → Function.Bijective π.appTop.hom → LocallyOfFiniteType U.hom → IsSeparated U.hom → IsProper a → (∀ V : U.left.Opens, Function.Bijective (a.app V).hom) → τ ≫ (𝔸(Fin g; Sp R) ↘ Sp R) = U.hom → c ≫ pullback.fst _ _ = a ≫ τ → c ≫ pullback.snd _ _ = b → Etale c → ∀ x : U.left, IsClosed ({x} : Set U.left) → U.hom x = closedPoint R → (∀ (Ω : Type) [Field Ω] (p p' : Sp Ω ⟶ X), Set.range (p ≫ a) = {x} → p ≫ a = p' ≫ a → p ≫ b = p' ≫ b → p = p') → (∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (ξ : Sp Ω ⟶ U.left) (s : Sp Ω ⟶ S), Set.range ξ = {x} → ξ ≫ U.hom = s ≫ π → ∃ p : Sp Ω ⟶ X, p ≫ a = ξ ∧ p ≫ b = s) → (∃ O : U.left.Opens, x ∈ O ∧ ∀ u ∈ O, τ u = τ x → u = x) → ∃ (T : Scheme.{0}) (h : T ⟶ 𝔸(Fin g; Sp R)) (W : (pullback τ h).Opens) (p : ↥(pullback τ h)), Flat h ∧ p ∈ W ∧ pullback.fst τ h p = x ∧ Etale (W.ι ≫ pullback.snd τ h) := by
  intro R _ _ _ hR S X π U a b g τ c hπp hπs hπΓ hUf hUs ha haΓ hτ hc1 hc2 hc x hxc hxm hinj hsurj hqf
  have hτf : LocallyOfFiniteType τ := by
    have : LocallyOfFiniteType (τ ≫ (𝔸(Fin g; Sp R) ↘ Sp R)) := by rw [hτ]; exact hUf
    exact locallyOfFiniteType_of_comp τ (𝔸(Fin g; Sp R) ↘ Sp R)
  have hτs : IsSeparated τ := by
    have : IsSeparated (τ ≫ (𝔸(Fin g; Sp R) ↘ Sp R)) := by rw [hτ]; exact hUs
    exact IsSeparated.of_comp τ (𝔸(Fin g; Sp R) ↘ Sp R)
  have : IsNoetherianRing R := hR.1
  have hA : IsLocallyNoetherian 𝔸(Fin g; Sp R) := LocallyOfFiniteType.isLocallyNoetherian (𝔸(Fin g; Sp R) ↘ Sp R)
  obtain ⟨T, h, W, p, het, hcon, hpW, hpx, hfin, hone, hgeo⟩ := _root_.GlobalTheory.EtaleFinitePiece.main _ _ τ hA hτf hτs x hqf
  have hiso := _root_.GlobalTheory.Mum.FlatChartDeg.isIso_finite_piece R hR S X π U a b g τ c hπp hπs hπΓ hUf hUs ha haΓ hτ hc1 hc2 hc x hxm hinj hsurj
    T h W p inferInstance hcon hpW hpx hfin hone hgeo
  exact ⟨T, h, W, p, inferInstance, hpW, hpx, inferInstance⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFlatChartEtaleOfQuasiFiniteAt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FamilyPulledBackNearPointOfEtaleCoordinates =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FamilyPulledBackNearPointOfEtaleCoordinates", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineSpace\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.Morphisms.FlatMono\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.EtalePull

theorem range_pt {Ω : Type} [Field Ω] {X : Scheme.{0}} (p : Sp Ω ⟶ X) (t : Sp Ω) : Set.range p = {p t} := by
  ext y
  constructor
  · rintro ⟨s, rfl⟩
    have : s = t := Subsingleton.elim (α := PrimeSpectrum Ω) s t
    simp [this]
  · rintro rfl
    exact ⟨t, rfl⟩

theorem range_comp' {X Y Z : Scheme.{0}} (f : X ⟶ Y) (g : Y ⟶ Z) : Set.range (f ≫ g) = g '' Set.range f := by
  rw [← Set.range_comp]
  exact congrArg Set.range (funext fun t => Scheme.Hom.comp_apply f g t)

theorem exists_isIso_restrict {X Y U : Scheme.{0}} (f : X ⟶ Y) (q : Y ⟶ U) [Etale f] [UniversallyClosed f]
    [UniversallyClosed q] (x : U)
    (hinj : ∀ (Ω : Type) [Field Ω] (p p' : Sp Ω ⟶ X), Set.range (p ≫ f ≫ q) = {x} → p ≫ f = p' ≫ f → p = p')
    (hsurj : ∀ y : Y, q y = x → y ∈ Set.range f) :
    ∃ W : U.Opens, x ∈ W ∧ IsIso (f ∣_ (q ⁻¹ᵁ W)) := by
  have hΔ : IsOpenImmersion (pullback.diagonal f) := inferInstance
  let r : pullback f f ⟶ U := pullback.fst f f ≫ f ≫ q
  have h1 : IsClosed (r '' (Set.range (pullback.diagonal f))ᶜ) :=
    r.isClosedMap _ (pullback.diagonal f).isOpenEmbedding.isOpen_range.isClosed_compl
  have h2 : IsClosed (q '' (Set.range f)ᶜ) :=
    q.isClosedMap _ f.isOpenMap.isOpen_range.isClosed_compl
  let W : U.Opens := ⟨(r '' (Set.range (pullback.diagonal f))ᶜ)ᶜ ∩ (q '' (Set.range f)ᶜ)ᶜ,
    h1.isOpen_compl.inter h2.isOpen_compl⟩
  refine ⟨W, ⟨?_, ?_⟩, ?_⟩
  · rintro ⟨z, hz, hzx⟩
    apply hz
    let w := (pullback f f).fromSpecResidueField z
    have hw : w ≫ pullback.fst f f = w ≫ pullback.snd f f := by
      refine hinj ((pullback f f).residueField z) _ _ ?_ ?_
      · have : Set.range (w ≫ r) = {x} := by
          rw [range_comp', Scheme.range_fromSpecResidueField, Set.image_singleton, hzx]
        have e : (w ≫ pullback.fst f f) ≫ f ≫ q = w ≫ r := Category.assoc _ _ _
        exact (congrArg (fun k : Spec ((pullback f f).residueField z) ⟶ U => Set.range k) e).trans this
      · simp [pullback.condition]
    have hw2 : w = (w ≫ pullback.fst f f) ≫ pullback.diagonal f := by
      apply pullback.hom_ext
      · simp
      · simp [hw]
    have : z ∈ Set.range w := by rw [Scheme.range_fromSpecResidueField]; rfl
    obtain ⟨t, ht⟩ := this
    refine ⟨(w ≫ pullback.fst f f) t, ?_⟩
    rw [← Scheme.Hom.comp_apply, ← hw2, ht]
  · rintro ⟨y, hy, hyx⟩
    exact hy (hsurj y hyx)
  · have hm : Mono (f ∣_ (q ⁻¹ᵁ W)) := by
      refine ⟨fun {T} u v huv => ?_⟩
      have e : (u ≫ (f ⁻¹ᵁ (q ⁻¹ᵁ W)).ι) ≫ f = (v ≫ (f ⁻¹ᵁ (q ⁻¹ᵁ W)).ι) ≫ f := by
        simp only [Category.assoc, ← morphismRestrict_ι]
        rw [← Category.assoc, huv, Category.assoc]
      let w : T ⟶ pullback f f := pullback.lift _ _ e
      have hr : Set.range w ⊆ Set.range (pullback.diagonal f) := by
        rintro _ ⟨t, rfl⟩
        by_contra hn
        have hW : q (f ((f ⁻¹ᵁ (q ⁻¹ᵁ W)).ι (u t))) ∈ W := (u t).2
        refine hW.1 ⟨w t, hn, ?_⟩
        have e3 : w ≫ r = u ≫ (f ⁻¹ᵁ (q ⁻¹ᵁ W)).ι ≫ f ≫ q := by
          simp only [w, r, pullback.lift_fst_assoc, Category.assoc]
        rw [← Scheme.Hom.comp_apply, e3]
        simp only [Scheme.Hom.comp_apply]
      have hl := IsOpenImmersion.lift_fac (pullback.diagonal f) w hr
      have e1 := congrArg (· ≫ pullback.fst f f) hl
      have e2 := congrArg (· ≫ pullback.snd f f) hl
      simp only [w, Category.assoc, pullback.diagonal_fst, pullback.diagonal_snd, Category.comp_id,
        pullback.lift_fst, pullback.lift_snd] at e1 e2
      rw [← cancel_mono (f ⁻¹ᵁ (q ⁻¹ᵁ W)).ι, ← e1, e2]
    have ho : IsOpenImmersion (f ∣_ (q ⁻¹ᵁ W)) := IsOpenImmersion.of_flat_of_mono _
    refine (isIso_iff_isOpenImmersion_and_surjective _).2 ⟨ho, ⟨fun y => ?_⟩⟩
    have hW : q y.1 ∈ W := y.2
    have : y.1 ∈ Set.range f := by
      by_contra hn
      exact hW.2 ⟨y.1, hn, rfl⟩
    obtain ⟨s, hs⟩ := this
    refine ⟨⟨s, ?_⟩, ?_⟩
    · show q (f s) ∈ W
      rw [hs]; exact hW
    · apply Subtype.ext
      exact (morphismRestrict_base_coe _ _ _).trans hs

theorem exists_isIso_restrict' {X Y U : Scheme.{0}} (f : X ⟶ Y) (q : Y ⟶ U) [UniversallyClosed f]
    [UniversallyClosed q] (x : U) (V : U.Opens) (hx : x ∈ V) [Etale (f ∣_ (q ⁻¹ᵁ V))]
    (hinj : ∀ (Ω : Type) [Field Ω] (p p' : Sp Ω ⟶ X), Set.range (p ≫ f ≫ q) = {x} → p ≫ f = p' ≫ f → p = p')
    (hsurj : ∀ y : Y, q y = x → y ∈ Set.range f) :
    ∃ W : U.Opens, x ∈ W ∧ W ≤ V ∧ IsIso (f ∣_ (q ⁻¹ᵁ W)) := by
  obtain ⟨W, hW, hiso⟩ := exists_isIso_restrict (f ∣_ (q ⁻¹ᵁ V)) (q ∣_ V) ⟨x, hx⟩ (by
    intro Ω _ p p' h1 h2
    rw [← cancel_mono (f ⁻¹ᵁ (q ⁻¹ᵁ V)).ι]
    apply hinj
    · have e : (p ≫ (f ⁻¹ᵁ (q ⁻¹ᵁ V)).ι) ≫ f ≫ q = (p ≫ f ∣_ (q ⁻¹ᵁ V) ≫ q ∣_ V) ≫ V.ι := by
        simp
      rw [e, range_comp', h1]
      exact Set.image_singleton
    · simp only [Category.assoc, ← morphismRestrict_ι]
      rw [← Category.assoc, h2, Category.assoc]) (by
    intro y hy
    have h1 : q y.1 = x := (morphismRestrict_base_coe q V y).symm.trans (congrArg Subtype.val hy)
    obtain ⟨s, hs⟩ := hsurj y.1 h1
    refine ⟨⟨s, ?_⟩, ?_⟩
    · show q (f s) ∈ V
      rw [hs, h1]; exact hx
    · apply Subtype.ext
      exact (morphismRestrict_base_coe _ _ _).trans hs)
  refine ⟨V.ι ''ᵁ W, ⟨⟨x, hx⟩, hW, rfl⟩, V.ι_image_le W, ?_⟩
  rw [← image_morphismRestrict_preimage]
  exact (MorphismProperty.arrow_mk_iso_iff (.isomorphisms Scheme)
    (morphismRestrictRestrict f (q ⁻¹ᵁ V) ((q ∣_ V) ⁻¹ᵁ W))).1 hiso

theorem main : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (S X : Scheme.{0}) (π : S ⟶ Sp R) (U : Over (Sp R)) (a : X ⟶ U.left) (b : X ⟶ S) (g : ℕ) (τ : U.left ⟶ 𝔸(Fin g; Sp R)) (c : X ⟶ pullback (𝔸(Fin g; Sp R) ↘ Sp R) π), IsProper π → Surjective π → Function.Bijective π.appTop.hom → LocallyOfFiniteType U.hom → IsSeparated U.hom → IsProper a → (∀ V : U.left.Opens, Function.Bijective (a.app V).hom) → τ ≫ (𝔸(Fin g; Sp R) ↘ Sp R) = U.hom → c ≫ pullback.fst _ _ = a ≫ τ → c ≫ pullback.snd _ _ = b → Etale c → ∀ x : U.left, IsClosed ({x} : Set U.left) → U.hom x = closedPoint R → (∀ (Ω : Type) [Field Ω] (p p' : Sp Ω ⟶ X), Set.range (p ≫ a) = {x} → p ≫ a = p' ≫ a → p ≫ b = p' ≫ b → p = p') → (∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (ξ : Sp Ω ⟶ U.left) (s : Sp Ω ⟶ S), Set.range ξ = {x} → ξ ≫ U.hom = s ≫ π → ∃ p : Sp Ω ⟶ X, p ≫ a = ξ ∧ p ≫ b = s) → ∀ V : U.left.Opens, x ∈ V → Etale (V.ι ≫ τ) → ∃ V : U.left.Opens, x ∈ V ∧ Etale (V.ι ≫ τ) ∧ IsPullback (a ∣_ V) ((a ⁻¹ᵁ V).ι ≫ b) (V.ι ≫ U.hom) π := by
  intro R _ _ _ _ S X π U a b g τ c hπ _ _ _ hU ha _ hτ hc1 hc2 hc x _ _ hinj hsurj V hxV hV
  have hcomm : a ≫ U.hom = b ≫ π := by
    rw [← hτ, ← Category.assoc, ← hc1, ← hc2, Category.assoc, Category.assoc, pullback.condition]
  obtain ⟨f, hf1, hf2⟩ : ∃ f : X ⟶ pullback U.hom π, f ≫ pullback.fst _ _ = a ∧ f ≫ pullback.snd _ _ = b :=
    ⟨pullback.lift a b hcomm, pullback.lift_fst _ _ _, pullback.lift_snd _ _ _⟩
  subst hf1
  have hfp : IsProper f := IsProper.of_comp f (pullback.fst U.hom π)
  let G : pullback U.hom π ⟶ pullback (𝔸(Fin g; Sp R) ↘ Sp R) π :=
    pullback.lift (pullback.fst _ _ ≫ τ) (pullback.snd _ _) (by rw [Category.assoc, hτ, pullback.condition])
  have hG1 : G ≫ pullback.fst _ _ = pullback.fst _ _ ≫ τ := pullback.lift_fst _ _ _
  have hG2 : G ≫ pullback.snd _ _ = pullback.snd _ _ := pullback.lift_snd _ _ _
  have hG : IsPullback G (pullback.fst U.hom π) (pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π) τ := by
    refine IsPullback.of_right ?_ hG1 (IsPullback.of_hasPullback _ π).flip
    rw [hG2, hτ]
    exact (IsPullback.of_hasPullback _ π).flip
  have hfG : f ≫ G = c := by
    apply pullback.hom_ext
    · rw [Category.assoc, hG1, hc1, Category.assoc]
    · rw [Category.assoc, hG2, hc2, hf2]
  have hG' := (isPullback_morphismRestrict (pullback.fst U.hom π) V).flip.paste_horiz hG
  have hGe : Etale ((pullback.fst U.hom π ⁻¹ᵁ V).ι ≫ G) :=
    MorphismProperty.of_isPullback (P := @Etale) hG'.flip hV
  have hfe : Etale (f ∣_ (pullback.fst U.hom π ⁻¹ᵁ V)) := by
    have : Etale (f ∣_ (pullback.fst U.hom π ⁻¹ᵁ V) ≫ (pullback.fst U.hom π ⁻¹ᵁ V).ι ≫ G) := by
      rw [morphismRestrict_ι_assoc, hfG]; infer_instance
    exact Etale.of_comp _ ((pullback.fst U.hom π ⁻¹ᵁ V).ι ≫ G)
  obtain ⟨W, hxW, hWV, hiso⟩ := exists_isIso_restrict' f (pullback.fst U.hom π) x V hxV (by
    intro Ω _ p p' h1 h2
    refine hinj Ω p p' h1 ?_ ?_
    · rw [← Category.assoc, h2, Category.assoc]
    · rw [← hf2, ← Category.assoc, h2, Category.assoc]) (by
    intro y hy
    let K := (pullback U.hom π).residueField y
    let w : Sp (AlgebraicClosure K) ⟶ pullback U.hom π :=
      Spec.map (CommRingCat.ofHom (algebraMap K (AlgebraicClosure K))) ≫ (pullback U.hom π).fromSpecResidueField y
    let t : Sp (AlgebraicClosure K) := closedPoint (AlgebraicClosure K)
    have hw : w t = y := by
      have : w t ∈ Set.range ((pullback U.hom π).fromSpecResidueField y) := ⟨_, (Scheme.Hom.comp_apply _ _ _).symm⟩
      rwa [Scheme.range_fromSpecResidueField] at this
    obtain ⟨p, hp1, hp2⟩ := hsurj (AlgebraicClosure K) (w ≫ pullback.fst _ _) (w ≫ pullback.snd _ _)
      (by rw [range_pt _ t, Scheme.Hom.comp_apply, hw, hy]) (by simp [pullback.condition])
    have : p ≫ f = w := by
      apply pullback.hom_ext
      · rw [Category.assoc, hp1]
      · rw [Category.assoc, hf2, hp2]
    exact ⟨p t, by rw [← Scheme.Hom.comp_apply, this, hw]⟩)
  refine ⟨W, hxW, ?_, ?_⟩
  · rw [← U.left.homOfLE_ι hWV, Category.assoc]
    infer_instance
  · have P1 := (isPullback_morphismRestrict (pullback.fst U.hom π) W).paste_vert (IsPullback.of_hasPullback U.hom π)
    have P0 : IsPullback (f ∣_ (pullback.fst U.hom π ⁻¹ᵁ W) ≫ pullback.fst U.hom π ∣_ W)
        (f ∣_ (pullback.fst U.hom π ⁻¹ᵁ W) ≫ (pullback.fst U.hom π ⁻¹ᵁ W).ι ≫ pullback.snd U.hom π)
        (W.ι ≫ U.hom) π :=
      P1.of_iso (asIso (f ∣_ (pullback.fst U.hom π ⁻¹ᵁ W))).symm (Iso.refl _) (Iso.refl _) (Iso.refl _)
        (by simp) (by simp only [Iso.symm_hom, asIso_inv, IsIso.inv_hom_id_assoc, Iso.refl_hom, Category.comp_id])
        (by simp) (by simp)
    rw [morphismRestrict_ι_assoc, hf2, ← morphismRestrict_comp] at P0
    exact P0

end GlobalTheory.Mum.EtalePull
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FamilyPulledBackNearPointOfEtaleCoordinates =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenRangeEqInterPreimageEtaleUnivOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenRangeEqInterPreimageEtaleUnivOpen", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import Mathlib.AlgebraicGeometry.Morphisms.UniversallyOpen\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem isOpen_range_of_etale_of_universallyOpen_comp {Y Z T : Scheme.{0}} (i' : Z ⟶ Y) (h : Y ⟶ T)
    [Etale h] (hu : UniversallyOpen (i' ≫ h)) : IsOpen (Set.range i') := by
  have s_open : IsOpenImmersion (pullback.lift (𝟙 Z) i' (by simp) : Z ⟶ pullback (i' ≫ h) h) :=
    MorphismProperty.of_isPullback (P := @IsOpenImmersion)
      (pullback_lift_diagonal_isPullback i' h) inferInstance
  have e : Set.range i' = (pullback.snd (i' ≫ h) h) '' Set.range (pullback.lift (𝟙 Z) i' (by simp) : Z ⟶ pullback (i' ≫ h) h) := by
    rw [← Set.range_comp]
    congr 1
    ext z
    rw [Function.comp_apply, ← Scheme.Hom.comp_apply, pullback.lift_snd]
  rw [e]
  exact (pullback.snd (i' ≫ h) h).isOpenMap _ (pullback.lift (𝟙 Z) i' _).isOpenEmbedding.isOpen_range

theorem exists_opens_range_eq_of_etale {X B T Z : Scheme.{0}} (c : X ⟶ B) (j : T ⟶ B) (i : Z ⟶ X) (φ : Z ⟶ T)
    (hc : Etale c) (hj : IsPreimmersion j) (hφ : UniversallyOpen φ) (w : i ≫ c = φ ≫ j) :
    ∃ W : X.Opens, Set.range i = (W : Set X) ∩ c ⁻¹' Set.range j := by
  let i' : Z ⟶ pullback c j := pullback.lift i φ w
  have hi' : i' ≫ pullback.snd c j = φ := pullback.lift_snd _ _ _
  have ho : IsOpen (Set.range i') :=
    isOpen_range_of_etale_of_universallyOpen_comp i' (pullback.snd c j) (by rw [hi']; exact hφ)
  have hemb := IsPreimmersion.isEmbedding (pullback.fst c j)
  obtain ⟨U, hU, hpre⟩ := hemb.isInducing.isOpen_iff.1 ho
  refine ⟨⟨U, hU⟩, ?_⟩
  have hr : Set.range i = (pullback.fst c j) '' Set.range i' := by
    rw [← Set.range_comp]
    congr 1
    ext z
    rw [Function.comp_apply, ← Scheme.Hom.comp_apply, pullback.lift_fst]
  rw [hr, ← hpre, Set.image_preimage_eq_inter_range, Scheme.Pullback.range_fst]
  rfl

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenRangeEqInterPreimageEtaleUnivOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenRangeEqInterPreimageEtaleUnivOpenStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenRangeEqInterPreimageEtaleUnivOpenStatement", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import Mathlib.AlgebraicGeometry.Morphisms.UniversallyOpen\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenRangeEqInterPreimageEtaleUnivOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem _root_.GlobalTheory.T.exists_open_range_eq_inter_preimage_etale_univOpen : ∀ (X B T Z : Scheme.{0}) (c : X ⟶ B) (j : T ⟶ B) (i : Z ⟶ X) (φ : Z ⟶ T), Etale c → IsPreimmersion j → UniversallyOpen φ → i ≫ c = φ ≫ j → ∃ W : X.Opens, Set.range i = (W : Set X) ∩ c ⁻¹' Set.range j := by
  first | exact @GlobalTheory.Mum.exists_opens_range_eq_of_etale
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenRangeEqInterPreimageEtaleUnivOpenStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperSurjectiveAffineChartBijectiveSections =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperSurjectiveAffineChartBijectiveSections", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineSpace\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import Mathlib.AlgebraicGeometry.Morphisms.UniversallyInjective\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.FibOpen

theorem universallyOpen_of {X Y : Scheme.{0}} (f : X ⟶ Y) [UniversallyClosed f] [UniversallyInjective f]
    [Surjective f] : UniversallyOpen f := by
  constructor
  intro X' Y' i₁ i₂ f' hf
  have h1 : UniversallyClosed f' := MorphismProperty.of_isPullback hf.flip inferInstance
  have h2 : UniversallyInjective f' := MorphismProperty.of_isPullback hf.flip inferInstance
  have h3 : Surjective f' := MorphismProperty.of_isPullback hf.flip inferInstance
  have hb : Function.Bijective f' := ⟨f'.injective, f'.surjective⟩
  show IsOpenMap f'
  intro U hU
  have e : f' '' U = (f' '' Uᶜ)ᶜ := by rw [Set.image_compl_eq hb, compl_compl]
  rw [e]
  exact (f'.isClosedMap _ hU.isClosed_compl).isOpen_compl

theorem fiber_hom_ext {X Y T : Scheme.{0}} (f : X ⟶ Y) (y : Y) {u v : T ⟶ f.fiber y}
    (h₁ : u ≫ f.fiberι y = v ≫ f.fiberι y)
    (h₂ : u ≫ f.fiberToSpecResidueField y = v ≫ f.fiberToSpecResidueField y) : u = v :=
  pullback.hom_ext h₁ h₂

@[reassoc]
theorem fiber_condition {X Y : Scheme.{0}} (f : X ⟶ Y) (y : Y) :
    f.fiberι y ≫ f = f.fiberToSpecResidueField y ≫ Y.fromSpecResidueField y :=
  pullback.condition

def fiberLift {X Y T : Scheme.{0}} (f : X ⟶ Y) (y : Y) (u : T ⟶ X) (v : T ⟶ Spec (Y.residueField y))
    (h : u ≫ f = v ≫ Y.fromSpecResidueField y) : T ⟶ f.fiber y :=
  pullback.lift u v h

@[reassoc (attr := simp)]
theorem fiberLift_ι {X Y T : Scheme.{0}} (f : X ⟶ Y) (y : Y) (u : T ⟶ X) (v : T ⟶ Spec (Y.residueField y))
    (h : u ≫ f = v ≫ Y.fromSpecResidueField y) : fiberLift f y u v h ≫ f.fiberι y = u :=
  pullback.lift_fst _ _ _

@[reassoc (attr := simp)]
theorem fiberLift_snd {X Y T : Scheme.{0}} (f : X ⟶ Y) (y : Y) (u : T ⟶ X) (v : T ⟶ Spec (Y.residueField y))
    (h : u ≫ f = v ≫ Y.fromSpecResidueField y) : fiberLift f y u v h ≫ f.fiberToSpecResidueField y = v :=
  pullback.lift_snd _ _ _

theorem range_comp_fromSpecResidueField {X T : Scheme.{0}} [Nonempty T] (x : X) (t : T ⟶ Spec (X.residueField x)) :
    Set.range (t ≫ X.fromSpecResidueField x) = {x} := by
  ext y
  constructor
  · rintro ⟨z, rfl⟩
    rw [Scheme.Hom.comp_apply, Scheme.fromSpecResidueField_apply]
    rfl
  · rintro rfl
    obtain ⟨z⟩ := ‹Nonempty T›
    exact ⟨z, by rw [Scheme.Hom.comp_apply, Scheme.fromSpecResidueField_apply]⟩

theorem comp_fromSpecResidueField_apply {Y T : Scheme.{0}} (y : Y) (t : T ⟶ Spec (Y.residueField y)) (z : T) :
    (t ≫ Y.fromSpecResidueField y) z = y := by
  rw [Scheme.Hom.comp_apply, Scheme.fromSpecResidueField_apply]

end GlobalTheory.FibOpen
end


set_option backward.isDefEq.respectTransparency.types false in
theorem GlobalTheory.FibOpen.fibre_universallyOpen : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (S X : Scheme.{0}) (π : S ⟶ Sp R) (U : Over (Sp R)) (a : X ⟶ U.left) (b : X ⟶ S) (g : ℕ) (τ : U.left ⟶ 𝔸(Fin g; Sp R)) (c : X ⟶ pullback (𝔸(Fin g; Sp R) ↘ Sp R) π), IsProper π → Surjective π → Function.Bijective π.appTop.hom → LocallyOfFiniteType U.hom → IsSeparated U.hom → IsProper a → (∀ V : U.left.Opens, Function.Bijective (a.app V).hom) → τ ≫ (𝔸(Fin g; Sp R) ↘ Sp R) = U.hom → c ≫ pullback.fst _ _ = a ≫ τ → c ≫ pullback.snd _ _ = b → Etale c → ∀ x : U.left, IsClosed ({x} : Set U.left) → U.hom x = closedPoint R → (∀ (Ω : Type) [Field Ω] (p p' : Sp Ω ⟶ X), Set.range (p ≫ a) = {x} → p ≫ a = p' ≫ a → p ≫ b = p' ≫ b → p = p') → (∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (ξ : Sp Ω ⟶ U.left) (s : Sp Ω ⟶ S), Set.range ξ = {x} → ξ ≫ U.hom = s ≫ π → ∃ p : Sp Ω ⟶ X, p ≫ a = ξ ∧ p ≫ b = s) → ∀ φ : a.fiber x ⟶ (pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiber (τ x), φ ≫ (pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberι (τ x) = a.fiberι x ≫ c → φ ≫ (pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberToSpecResidueField (τ x) = a.fiberToSpecResidueField x ≫ Spec.map (τ.residueFieldMap x) → UniversallyOpen φ := by
  intro R _ _ _ _ S X π U a b g τ c hπp hπs hΓ hlft hsep hap haO hτ hc₁ hc₂ het x hxc hxcl hinj hsurj φ hφ₁ hφ₂
  let ψ : a.fiber x ⟶ pullback ((pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberToSpecResidueField (τ x)) (Spec.map (τ.residueFieldMap x)) :=
    pullback.lift φ (a.fiberToSpecResidueField x) hφ₂
  have hψ₁ : ψ ≫ pullback.fst _ _ = φ := pullback.lift_fst _ _ _
  have hψ₂ : ψ ≫ pullback.snd _ _ = a.fiberToSpecResidueField x := pullback.lift_snd _ _ _
  have hSx : pullback.fst ((pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberToSpecResidueField (τ x)) (Spec.map (τ.residueFieldMap x)) ≫ (pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberToSpecResidueField (τ x) =
      pullback.snd _ _ ≫ (Spec.map (τ.residueFieldMap x)) := pullback.condition
  have hres : U.left.fromSpecResidueField x ≫ τ = (Spec.map (τ.residueFieldMap x)) ≫ 𝔸(Fin g; Sp R).fromSpecResidueField (τ x) :=
    (τ.SpecMap_residueFieldMap_fromSpecResidueField x).symm
  have hFc : (pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π) ≫ (𝔸(Fin g; Sp R) ↘ Sp R) = pullback.snd (𝔸(Fin g; Sp R) ↘ Sp R) π ≫ π := pullback.condition
  have hb : a.fiberι x ≫ b = φ ≫ (pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberι (τ x) ≫ pullback.snd _ _ := by
    rw [← hc₂, ← Category.assoc, ← hφ₁, Category.assoc]
  suffices h : UniversallyOpen ψ by
    rw [← hψ₁]; infer_instance
  haveI : IsProper a := hap
  haveI : IsProper π := hπp
  haveI : IsProper (a.fiberToSpecResidueField x) :=
    MorphismProperty.pullback_snd (P := @IsProper) _ _ hap
  haveI : IsSeparated (pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π) := MorphismProperty.pullback_fst (P := @IsSeparated) _ _ inferInstance
  haveI : IsSeparated ((pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberToSpecResidueField (τ x)) :=
    MorphismProperty.pullback_snd (P := @IsSeparated) _ _ inferInstance
  haveI : IsProper (ψ ≫ pullback.snd _ _) := by rw [hψ₂]; infer_instance
  haveI : IsProper ψ := IsProper.of_comp ψ (pullback.snd ((pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberToSpecResidueField (τ x)) (Spec.map (τ.residueFieldMap x)))
  haveI : UniversallyInjective ψ := by
    refine ((tfae_universallyInjective ψ).out 1 2).mpr ?_
    intro K _ q q' hq
    simp only at hq
    have e₂ : q ≫ a.fiberToSpecResidueField x = q' ≫ a.fiberToSpecResidueField x := by
      rw [← hψ₂, ← Category.assoc, hq, Category.assoc]
    have e₃ : q ≫ φ = q' ≫ φ := by rw [← hψ₁, ← Category.assoc, hq, Category.assoc]
    have ea : ∀ q : Spec (.of K) ⟶ a.fiber x, (q ≫ a.fiberι x) ≫ a =
        (q ≫ a.fiberToSpecResidueField x) ≫ U.left.fromSpecResidueField x := fun q => by
      rw [Category.assoc, Category.assoc, GlobalTheory.FibOpen.fiber_condition]
    have key := hinj K (q ≫ a.fiberι x) (q' ≫ a.fiberι x)
      (by rw [ea]; exact GlobalTheory.FibOpen.range_comp_fromSpecResidueField x _) (by rw [ea, ea, e₂])
      (by rw [Category.assoc, Category.assoc, hb, ← Category.assoc q, e₃, Category.assoc])
    exact GlobalTheory.FibOpen.fiber_hom_ext a x key e₂
  haveI : Surjective ψ := by
    constructor
    intro y
    let Ω := AlgebraicClosure ((pullback ((pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberToSpecResidueField (τ x)) (Spec.map (τ.residueFieldMap x))).residueField y)
    let t : Sp Ω ⟶ pullback ((pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberToSpecResidueField (τ x)) (Spec.map (τ.residueFieldMap x)) :=
      Spec.map (CommRingCat.ofHom (algebraMap ((pullback ((pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberToSpecResidueField (τ x)) (Spec.map (τ.residueFieldMap x))).residueField y) Ω)) ≫
        (pullback ((pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberToSpecResidueField (τ x)) (Spec.map (τ.residueFieldMap x))).fromSpecResidueField y
    let ξ := (t ≫ pullback.snd _ _) ≫ U.left.fromSpecResidueField x
    let s := t ≫ pullback.fst _ _ ≫ (pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π).fiberι (τ x) ≫ pullback.snd (𝔸(Fin g; Sp R) ↘ Sp R) π
    have hξ : ξ ≫ U.hom = s ≫ π := by
      simp only [ξ, s, Category.assoc]
      rw [← hτ, ← hFc, reassoc_of% hres, GlobalTheory.FibOpen.fiber_condition_assoc, reassoc_of% hSx]
    obtain ⟨p, hp₁, hp₂⟩ := hsurj Ω ξ s (GlobalTheory.FibOpen.range_comp_fromSpecResidueField x _) hξ
    let q : Sp Ω ⟶ a.fiber x := GlobalTheory.FibOpen.fiberLift a x p (t ≫ pullback.snd _ _) (by rw [hp₁])
    have hqt : q ≫ ψ = t := by
      apply pullback.hom_ext
      · rw [Category.assoc, hψ₁]
        apply GlobalTheory.FibOpen.fiber_hom_ext
        · rw [Category.assoc, hφ₁, GlobalTheory.FibOpen.fiberLift_ι_assoc]
          apply pullback.hom_ext
          · simp only [Category.assoc]
            rw [hc₁, reassoc_of% hp₁]
            simp only [ξ, Category.assoc]
            rw [hres, GlobalTheory.FibOpen.fiber_condition, reassoc_of% hSx]
          · simp only [Category.assoc]
            rw [hc₂, hp₂]
        · rw [Category.assoc, hφ₂, GlobalTheory.FibOpen.fiberLift_snd_assoc]
          simp only [Category.assoc]
          rw [hSx]
      · rw [Category.assoc, hψ₂, GlobalTheory.FibOpen.fiberLift_snd]
    obtain ⟨z⟩ : Nonempty (Sp Ω) := inferInstance
    refine ⟨q z, ?_⟩
    rw [← Scheme.Hom.comp_apply, hqt]
    exact GlobalTheory.FibOpen.comp_fromSpecResidueField_apply y _ z
  exact GlobalTheory.FibOpen.universallyOpen_of ψ
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperSurjectiveAffineChartBijectiveSections =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsolatedInFibreCoordinateMapAffineSpace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsolatedInFibreCoordinateMapAffineSpace", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineSpace\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenRangeEqInterPreimageEtaleUnivOpenStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperSurjectiveAffineChartBijectiveSections\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem surjective_of_isProper_of_app_injective : ∀ (X Y : Scheme.{0}) (a : X ⟶ Y), IsProper a → (∀ V : Y.Opens, Function.Injective (a.app V).hom) → Function.Surjective a := by
  intro X Y a ha hinj
  haveI := ha
  by_contra hne
  simp only [Function.Surjective, not_forall] at hne
  obtain ⟨y, hy⟩ := hne
  have hcl : IsClosed (Set.range a) := by
    simpa using a.isClosedMap _ isClosed_univ
  let V : Y.Opens := ⟨(Set.range a)ᶜ, hcl.isOpen_compl⟩
  haveI : Nonempty V := ⟨⟨y, fun ⟨p, hp⟩ => hy ⟨p, hp⟩⟩⟩
  have hV : a ⁻¹ᵁ V = ⊥ := by
    ext p
    simp [V]
  haveI : Subsingleton Γ(X, a ⁻¹ᵁ V) :=
    CommRingCat.subsingleton_of_isTerminal (X.sheaf.isTerminalOfEqEmpty hV)
  have : Subsingleton Γ(Y, V) := (hinj V).subsingleton
  exact not_subsingleton Γ(Y, V) this

theorem isolated_in_coordinate_fibre : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (S X : Scheme.{0}) (π : S ⟶ Sp R) (U : Over (Sp R)) (a : X ⟶ U.left) (b : X ⟶ S) (g : ℕ) (τ : U.left ⟶ 𝔸(Fin g; Sp R)) (c : X ⟶ pullback (𝔸(Fin g; Sp R) ↘ Sp R) π), IsProper π → Surjective π → Function.Bijective π.appTop.hom → LocallyOfFiniteType U.hom → IsSeparated U.hom → IsProper a → (∀ V : U.left.Opens, Function.Bijective (a.app V).hom) → τ ≫ (𝔸(Fin g; Sp R) ↘ Sp R) = U.hom → c ≫ pullback.fst _ _ = a ≫ τ → c ≫ pullback.snd _ _ = b → Etale c → ∀ x : U.left, IsClosed ({x} : Set U.left) → U.hom x = closedPoint R → (∀ (Ω : Type) [Field Ω] (p p' : Sp Ω ⟶ X), Set.range (p ≫ a) = {x} → p ≫ a = p' ≫ a → p ≫ b = p' ≫ b → p = p') → (∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (ξ : Sp Ω ⟶ U.left) (s : Sp Ω ⟶ S), Set.range ξ = {x} → ξ ≫ U.hom = s ≫ π → ∃ p : Sp Ω ⟶ X, p ≫ a = ξ ∧ p ≫ b = s) → ∃ O : U.left.Opens, x ∈ O ∧ ∀ u ∈ O, τ u = τ x → u = x := by
  intro R _ _ _ hR S X π U a b g τ c hπp hπs hπΓ hUf hUs hap haV hτ hc1 hc2 hc x hxc hxR hinj hsurj
  set F := pullback.fst (𝔸(Fin g; Sp R) ↘ Sp R) π with hF
  have hw : (a.fiberι x ≫ c) ≫ F = (a.fiberToSpecResidueField x ≫ Spec.map (τ.residueFieldMap x)) ≫
      (𝔸(Fin g; Sp R)).fromSpecResidueField (τ x) := by
    rw [Category.assoc, hF, hc1, ← Category.assoc, Scheme.Hom.fiber_fac, Category.assoc, Category.assoc,
      Scheme.Hom.SpecMap_residueFieldMap_fromSpecResidueField]
  let φ : a.fiber x ⟶ F.fiber (τ x) := pullback.lift _ _ hw
  have hφ1 : φ ≫ F.fiberι (τ x) = a.fiberι x ≫ c := pullback.lift_fst _ _ _
  have hφ2 : φ ≫ F.fiberToSpecResidueField (τ x) = a.fiberToSpecResidueField x ≫ Spec.map (τ.residueFieldMap x) :=
    pullback.lift_snd _ _ _
  have hUO := _root_.GlobalTheory.FibOpen.fibre_universallyOpen R hR S X π U a b g τ c hπp hπs hπΓ hUf hUs hap haV hτ hc1 hc2 hc x hxc hxR hinj hsurj φ hφ1 hφ2
  haveI : IsPreimmersion (F.fiberι (τ x)) := inferInstance
  obtain ⟨W, hW⟩ := GlobalTheory.T.exists_open_range_eq_inter_preimage_etale_univOpen X _ _ _ c (F.fiberι (τ x)) (a.fiberι x) φ hc inferInstance hUO hφ1.symm
  rw [Scheme.Hom.range_fiberι, Scheme.Hom.range_fiberι] at hW
  have hs := surjective_of_isProper_of_app_injective X U.left a hap (fun V => (haV V).1)
  haveI := hap
  refine ⟨⟨(a '' (W : Set X)ᶜ)ᶜ, (a.isClosedMap _ W.isOpen.isClosed_compl).isOpen_compl⟩, ?_, ?_⟩
  · rintro ⟨p, hp, hpx⟩
    have : p ∈ a ⁻¹' {x} := hpx
    rw [hW] at this
    exact hp this.1
  · intro u hu hτu
    obtain ⟨p, rfl⟩ := hs u
    by_cases hp : p ∈ W
    · have : p ∈ (W : Set X) ∩ c ⁻¹' (F ⁻¹' {τ x}) := by
        refine ⟨hp, ?_⟩
        show F (c p) = τ x
        rw [← Scheme.Hom.comp_apply, hF, hc1, Scheme.Hom.comp_apply, hτu]
      rw [← hW] at this
      exact this
    · exact absurd ⟨p, hp, rfl⟩ hu

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsolatedInFibreCoordinateMapAffineSpace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCoordinatesDescendAlongProperMap =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCoordinatesDescendAlongProperMap", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineSpace\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleNhdsAffineSpaceMapOfFlatBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFlatChartEtaleOfQuasiFiniteAt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FamilyPulledBackNearPointOfEtaleCoordinates\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsolatedInFibreCoordinateMapAffineSpace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem etale_coord_descend : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (S X : Scheme.{0}) (π : S ⟶ Sp R) (U : Over (Sp R)) (a : X ⟶ U.left) (b : X ⟶ S) (g : ℕ) (τ : U.left ⟶ 𝔸(Fin g; Sp R)) (c : X ⟶ pullback (𝔸(Fin g; Sp R) ↘ Sp R) π), IsProper π → Surjective π → Function.Bijective π.appTop.hom → LocallyOfFiniteType U.hom → IsSeparated U.hom → IsProper a → (∀ V : U.left.Opens, Function.Bijective (a.app V).hom) → τ ≫ (𝔸(Fin g; Sp R) ↘ Sp R) = U.hom → c ≫ pullback.fst _ _ = a ≫ τ → c ≫ pullback.snd _ _ = b → Etale c → ∀ x : U.left, IsClosed ({x} : Set U.left) → U.hom x = closedPoint R → (∀ (Ω : Type) [Field Ω] (p p' : Sp Ω ⟶ X), Set.range (p ≫ a) = {x} → p ≫ a = p' ≫ a → p ≫ b = p' ≫ b → p = p') → (∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (ξ : Sp Ω ⟶ U.left) (s : Sp Ω ⟶ S), Set.range ξ = {x} → ξ ≫ U.hom = s ≫ π → ∃ p : Sp Ω ⟶ X, p ≫ a = ξ ∧ p ≫ b = s) → ∃ V : U.left.Opens, x ∈ V ∧ Etale (V.ι ≫ τ) ∧ IsPullback (a ∣_ V) ((a ⁻¹ᵁ V).ι ≫ b) (V.ι ≫ U.hom) π := by
  intro R _ _ _ hR S X π U a b g τ c hπ hs hΓ hlft hsep ha haV hτ hc1 hc2 hc x hx hxc hmono hsurj
  have hq := _root_.GlobalTheory.Mum.isolated_in_coordinate_fibre R hR S X π U a b g τ c hπ hs hΓ hlft hsep ha haV hτ hc1 hc2 hc x hx hxc hmono hsurj
  obtain ⟨T, h, W, p, hfl, hpW, hpx, hW⟩ := _root_.GlobalTheory.Mum.exists_flat_chart_etale_of_quasiFiniteAt R hR S X π U a b g τ c hπ hs hΓ hlft hsep ha haV hτ hc1 hc2 hc x hx hxc hmono hsurj hq
  obtain ⟨V, hxV, hV⟩ := _root_.GlobalTheory.EtaleAtDescent.etale_nhds_of_flat_baseChange R hR U g τ hlft hτ T h hfl W p hpW hW
  rw [hpx] at hxV
  exact _root_.GlobalTheory.Mum.EtalePull.main R hR S X π U a b g τ c hπ hs hΓ hlft hsep ha haV hτ hc1 hc2 hc x hx hxc hmono hsurj V hxV hV

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCoordinatesDescendAlongProperMap =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCoordinatesDescendAlongProperMapStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCoordinatesDescendAlongProperMapStatement", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineSpace\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCoordinatesDescendAlongProperMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCoordinatesDescendAlongProperMapStatement =====
