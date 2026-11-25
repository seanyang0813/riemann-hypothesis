module

public import Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmoothPf
public import Development.EtaleCohomology.EtaleSheaves.SpreadingOutQuasiFiniteness
public import Mathlib.RingTheory.Etale.Descent
import Mathlib.AlgebraicGeometry.QuasiAffine
import Development.EtaleCohomology.EtaleSheaves.LeafDescendChainPf
import Development.EtaleCohomology.EtaleSheaves.PropertyDescent.BaseChange
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmoothAffSmPf, Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmooth1Of

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmoothAffSmPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmoothAffSmPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmoothPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.EtaleCohomology.EtaleSheaves.LeafDescendChainPf\nimport Development.EtaleCohomology.EtaleSheaves.PropertyDescent.BaseChange\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite LateralTheory.E.E4 LateralTheory.E.LeafDescendVCut LateralTheory.E.LeafDescendChainPf
  LateralTheory.E.LeafPropsDescendPf LateralTheory.E.LeafPropsDescendPf.Split LateralTheory.E.LeafSpreadSmoothPf Topology

namespace LateralTheory.E.LeafSpreadSmoothAffSmPf

def LeafGenericSmooth : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω),
    R.FG → ∀ {C D : Scheme.{0}} (c : C ⟶ Sp Ω) (q : D ⟶ Sp R) (v : C ⟶ D), IsAffine D →
    ∀ [LocallyOfFinitePresentation q], SmoothOfRelativeDimension 1 c →
    IsPullback v c q (toR R) →
    ∀ x : D, q.base x ∈ Set.range (toR R).base → x ∈ q.smoothLocus

def LeafSpreadOpen : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω),
    R.FG → ∀ {D : Scheme.{0}} (q : D ⟶ Sp R), IsAffine D → LocallyOfFinitePresentation q →
    ∀ U : D.Opens, (∀ x : D, q.base x ∈ Set.range (toR R).base → x ∈ U) →
    ∃ (S : Subalgebra k Ω) (h : R ≤ S), S.FG ∧
      ∀ y : (pullback q (incl h) : Scheme.{0}), (pullback.fst q (incl h)).base y ∈ U

def LeafSmoothOfLocus : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] {R S : Subalgebra k Ω}
    (h : R ≤ S) {D : Scheme.{0}} (q : D ⟶ Sp R) [LocallyOfFinitePresentation q],
    (∀ y : (pullback q (incl h) : Scheme.{0}), (pullback.fst q (incl h)).base y ∈ q.smoothLocus) →
    Smooth (pullback.snd q (incl h))

theorem leafSmoothOfLocus : LeafSmoothOfLocus := by
  intro k _ Ω _ _ R S h D q _ hy
  have hU : Smooth (q.smoothLocus.ι ≫ q) := by
    rw [← Scheme.Hom.smoothLocus_eq_top_iff, ← Scheme.Hom.preimage_smoothLocus_eq]
    exact Scheme.Opens.ι_preimage_self _
  have sq := (isPullback_morphismRestrict (pullback.fst q (incl h)) q.smoothLocus).paste_vert
    (IsPullback.of_hasPullback q (incl h))
  have hs : Smooth (((pullback.fst q (incl h)) ⁻¹ᵁ q.smoothLocus).ι ≫ pullback.snd q (incl h)) :=
    MorphismProperty.IsStableUnderBaseChange.of_isPullback sq hU
  have hL : IsZariskiLocalAtSource @Smooth := HasRingHomProperty.instIsZariskiLocalAtSource (Q := RingHom.Smooth)
  refine IsZariskiLocalAtSource.of_iSup_eq_top (P := @Smooth)
    (fun _ : Unit => (pullback.fst q (incl h)) ⁻¹ᵁ q.smoothLocus) ?_ (fun _ => hs)
  exact top_le_iff.mp fun y _ => TopologicalSpace.Opens.mem_iSup.mpr ⟨(), hy y⟩

def LeafClosedConstructible : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω),
    R.FG → ∀ {D : Scheme.{0}} (q : D ⟶ Sp R), IsAffine D → LocallyOfFinitePresentation q →
    ∀ Z : Set D, IsClosed Z → IsConstructible Z

def LeafAvoidConstructible : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω),
    R.FG → ∀ T : Set (Sp R), IsConstructible T → (∀ z ∈ T, z ∉ Set.range (toR R).base) →
    ∃ (S : Subalgebra k Ω) (h : R ≤ S), S.FG ∧ ∀ w : (Sp S : Scheme.{0}), (incl h).base w ∉ T

theorem leafClosedConstructible : LeafClosedConstructible := by
  intro k _ Ω _ _ R hR D q hD hlfp Z hZ
  have : IsNoetherianRing R := isNoetherianRing_of_fg hR
  have : IsNoetherianRing (CommRingCat.of R) := this
  have : IsLocallyNoetherian D := LocallyOfFiniteType.isLocallyNoetherian q
  have : IsNoetherian D := ⟨⟩
  have hc : IsConstructible (Zᶜ) := (TopologicalSpace.NoetherianSpace.isCompact _).isConstructible hZ.isOpen_compl
  simpa using hc

def LeafGenericNbhd : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω),
    R.FG → ∀ T : Set (Sp R), IsConstructible T → (∀ z ∈ T, z ∉ Set.range (toR R).base) →
    ∃ f : R, f ≠ 0 ∧ ∀ z ∈ T, f ∈ (show PrimeSpectrum R from z).asIdeal

theorem leafInvert (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω) (hR : R.FG)
    (f : R) (hf : f ≠ 0) : ∃ (S : Subalgebra k Ω) (h : R ≤ S), S.FG ∧
      ∀ w : (Sp S : Scheme.{0}), f ∉ (show PrimeSpectrum R from (incl h).base w).asIdeal := by
  have hf0 : (f : Ω) ≠ 0 := fun e => hf (Subtype.ext e)
  refine ⟨R ⊔ Algebra.adjoin k {(f : Ω)⁻¹}, le_sup_left, hR.sup ⟨{(f : Ω)⁻¹}, by simp⟩, fun w hw => ?_⟩
  have hi : (f : Ω)⁻¹ ∈ R ⊔ Algebra.adjoin k {(f : Ω)⁻¹} :=
    (le_sup_right : Algebra.adjoin k {(f : Ω)⁻¹} ≤ _) (Algebra.subset_adjoin rfl)
  have hu : IsUnit (Subalgebra.inclusion (le_sup_left : R ≤ R ⊔ Algebra.adjoin k {(f : Ω)⁻¹}) f) := by
    refine IsUnit.of_mul_eq_one (⟨_, hi⟩ : ↥(R ⊔ Algebra.adjoin k {(f : Ω)⁻¹})) ?_
    apply Subtype.ext
    simp [hf0]
  have hw' : Subalgebra.inclusion (le_sup_left : R ≤ R ⊔ Algebra.adjoin k {(f : Ω)⁻¹}) f ∈ w.asIdeal := hw
  exact w.isPrime.ne_top (Ideal.eq_top_of_isUnit_mem _ hw' hu)

theorem leafGenericNbhd : LeafGenericNbhd := by
  classical
  intro k _ Ω _ _ R hR T hT hgen
  let η : PrimeSpectrum R := ⟨⊥, Ideal.isPrime_bot⟩
  have hη : (show Sp R from η) ∈ Set.range (toR R).base := by
    refine ⟨(show Sp Ω from (⟨⊥, Ideal.isPrime_bot⟩ : PrimeSpectrum Ω)), ?_⟩
    apply PrimeSpectrum.ext
    change Ideal.comap (algebraMap R Ω) ⊥ = ⊥
    rw [← RingHom.ker_eq_comap_bot]
    exact (RingHom.injective_iff_ker_eq_bot _).mp Subtype.val_injective
  obtain ⟨C, hC⟩ := (PrimeSpectrum.exists_constructibleSetData_iff (R := R) (s := T)).mpr hT
  have hne : ∀ c ∈ C, ∃ a : R, a ≠ 0 ∧ ∀ z ∈ c.toSet, a ∈ z.asIdeal := by
    intro c hc
    by_cases h0 : c.f = 0
    · refine ⟨1, one_ne_zero, fun z hz => absurd ?_ hz.2⟩
      simp [h0]
    · by_cases hg : ∃ i, c.g i ≠ 0
      · obtain ⟨i, hi⟩ := hg
        exact ⟨c.g i, hi, fun z hz => hz.1 ⟨i, rfl⟩⟩
      · simp only [not_exists, not_not] at hg
        exfalso
        have hηc : η ∈ c.toSet := by
          refine ⟨?_, ?_⟩
          · rintro _ ⟨i, rfl⟩
            simp [η, hg i]
          · intro h
            exact h0 (by simpa [η, PrimeSpectrum.mem_zeroLocus] using h)
        have hηT : η ∈ T := by
          rw [← hC]
          simp only [PrimeSpectrum.ConstructibleSetData.toSet]
          exact Set.mem_iUnion₂.mpr ⟨c, hc, hηc⟩
        exact hgen _ hηT hη
  choose! a ha using hne
  refine ⟨∏ c ∈ C, a c, Finset.prod_ne_zero_iff.mpr (fun c hc => (ha c hc).1), fun z hz => ?_⟩
  rw [← hC] at hz
  simp only [PrimeSpectrum.ConstructibleSetData.toSet] at hz
  obtain ⟨c, hc, hzc⟩ := Set.mem_iUnion₂.mp hz
  rw [← Finset.mul_prod_erase C a hc]
  exact Ideal.mul_mem_right _ _ ((ha c hc).2 z hzc)

theorem leafAvoidConstructible_of (hN : LeafGenericNbhd) : LeafAvoidConstructible := by
  intro k _ Ω _ _ R hR T hT hgen
  obtain ⟨f, hf, hfT⟩ := hN k Ω R hR T hT hgen
  obtain ⟨S, h, hS, hw⟩ := leafInvert k Ω R hR f hf
  exact ⟨S, h, hS, fun w hwT => hw w (hfT _ hwT)⟩

theorem leafSpreadOpen_of (hC : LeafClosedConstructible) (hA : LeafAvoidConstructible) : LeafSpreadOpen := by
  intro k _ Ω _ _ R hR D q hD hlfp U hU
  have : QuasiCompact q := inferInstance
  have hT := q.isConstructible_image (hC k Ω R hR q hD hlfp ((U : Set D)ᶜ) U.isOpen.isClosed_compl)
  obtain ⟨S, h, hS, hw⟩ := hA k Ω R hR _ hT (by
    rintro z ⟨x, hx, rfl⟩ hz
    exact hx (hU x hz))
  refine ⟨S, h, hS, fun y => ?_⟩
  by_contra hy
  apply hw ((pullback.snd q (incl h)).base y)
  refine ⟨(pullback.fst q (incl h)).base y, hy, ?_⟩
  rw [← Scheme.Hom.comp_apply, pullback.condition, Scheme.Hom.comp_apply]

theorem LeafSpreadSmoothAffSm_of_cut (hG : LeafGenericSmooth) (hO : LeafSpreadOpen) (hL : LeafSmoothOfLocus) :
    LeafSpreadSmoothAffSm := by
  intro k _ Ω _ _ R hR C D c q v hD hlfp hs hv
  obtain ⟨S, h, hS, hy⟩ := hO k Ω R hR q hD hlfp q.smoothLocus (hG k Ω R hR c q v hD hs hv)
  exact ⟨S, h, hS, hL k Ω h q hy⟩

def LeafStalkDescend : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω),
    R.FG → ∀ {C D : Scheme.{0}} (c : C ⟶ Sp Ω) (q : D ⟶ Sp R) (v : C ⟶ D), IsAffine D →
    ∀ [LocallyOfFinitePresentation q], SmoothOfRelativeDimension 1 c →
    IsPullback v c q (toR R) → ∀ y : C, v.base y ∈ q.smoothLocus

theorem leafGenericSmooth_of (hS : LeafStalkDescend) : LeafGenericSmooth := by
  intro k _ Ω _ _ R hR C D c q v hD _ hs hv x ⟨w, hw⟩
  obtain ⟨z, hz1, -⟩ := Scheme.Pullback.exists_preimage_pullback x w hw.symm
  have := hS k Ω R hR c q v hD hs hv (hv.isoPullback.inv.base z)
  rwa [← Scheme.Hom.comp_apply, hv.isoPullback_inv_fst, hz1] at this

theorem LeafSpreadSmoothAffSm_of (hD : LeafStalkDescend) :
    LeafSpreadSmoothAffSm :=
  LeafSpreadSmoothAffSm_of_cut (leafGenericSmooth_of hD) (leafSpreadOpen_of leafClosedConstructible (leafAvoidConstructible_of leafGenericNbhd))
    leafSmoothOfLocus

end LateralTheory.E.LeafSpreadSmoothAffSmPf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmoothAffSmPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmooth1Of =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmooth1Of", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.SpreadingOutQuasiFiniteness\npublic import Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmoothAffSmPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Etale.Descent\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite LateralTheory.E.E4 LateralTheory.E.LeafDescendVCut TensorProduct

namespace LateralTheory.E.SpreadingOutSmoothness

theorem stepB {R K B A : Type} [CommRing R] [CommRing K] [CommRing B] [CommRing A] [Algebra R K] [Algebra R A]
    [Algebra R B] [Algebra K B] [IsScalarTower R K B] [Algebra A B] [IsScalarTower R A B] (M : Submonoid R)
    [IsLocalization M K] [IsLocalization (Algebra.algebraMapSubmonoid A M) B] [Algebra.Smooth K B]
    (Q : Ideal B) [Q.IsPrime] : Algebra.IsSmoothAt R (Q.comap (algebraMap A B)) := by
  haveI : Algebra.FormallySmooth R K := Algebra.FormallySmooth.of_isLocalization M
  haveI : Algebra.FormallySmooth K (Localization.AtPrime Q) := inferInstance
  haveI : Algebra.FormallySmooth R (Localization.AtPrime Q) := Algebra.FormallySmooth.comp R K _
  haveI := IsLocalization.isLocalization_isLocalization_atPrime_isLocalization
    (Algebra.algebraMapSubmonoid A M) (Localization.AtPrime Q) Q
  exact Algebra.FormallySmooth.of_equiv ((IsLocalization.algEquiv (Q.comap (algebraMap A B)).primeCompl
    (Localization.AtPrime Q) _).restrictScalars R)

set_option maxHeartbeats 1600000 in
set_option synthInstance.maxHeartbeats 200000 in
theorem algDescend (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω)
    (A : Type) [CommRing A] [Algebra R A] (hfp : Algebra.FinitePresentation R A) (hs : Algebra.Smooth Ω (Ω ⊗[R] A))
    (P : PrimeSpectrum (Ω ⊗[R] A)) :
    PrimeSpectrum.comap (Algebra.TensorProduct.includeRight : A →ₐ[R] Ω ⊗[R] A).toRingHom P ∈ Algebra.smoothLocus R A := by
  letI : Algebra (FractionRing R) Ω := FractionRing.liftAlgebra R Ω
  haveI : IsScalarTower R (FractionRing R) Ω := FractionRing.isScalarTower_liftAlgebra R Ω
  let e := Algebra.TensorProduct.cancelBaseChange R (FractionRing R) Ω Ω A
  haveI : Algebra.Smooth Ω (Ω ⊗[FractionRing R] (FractionRing R ⊗[R] A)) := Algebra.Smooth.of_equiv e.symm
  haveI : Module.Free (FractionRing R) Ω := Module.Free.of_divisionRing _ Ω
  haveI : Algebra.Smooth (FractionRing R) (FractionRing R ⊗[R] A) :=
    Algebra.Smooth.of_smooth_tensorProduct_of_faithfullyFlat Ω
  letI : Algebra A (FractionRing R ⊗[R] A) := Algebra.TensorProduct.rightAlgebra
  haveI : IsLocalization (Algebra.algebraMapSubmonoid A (nonZeroDivisors R)) (FractionRing R ⊗[R] A) :=
    IsLocalization.tensorRight _ _
  let φ : FractionRing R ⊗[R] A →+* Ω ⊗[R] A := e.toRingHom.comp
    (Algebra.TensorProduct.includeRight : FractionRing R ⊗[R] A →ₐ[FractionRing R] Ω ⊗[FractionRing R] _).toRingHom
  haveI : (P.asIdeal.comap φ).IsPrime := Ideal.comap_isPrime _ _
  have hφ : φ.comp (algebraMap A (FractionRing R ⊗[R] A)) =
      (Algebra.TensorProduct.includeRight : A →ₐ[R] Ω ⊗[R] A).toRingHom := by
    ext a
    show e (1 ⊗ₜ (1 ⊗ₜ a)) = 1 ⊗ₜ a
    rw [Algebra.TensorProduct.cancelBaseChange_tmul, one_smul]
  have hc : PrimeSpectrum.comap (Algebra.TensorProduct.includeRight : A →ₐ[R] Ω ⊗[R] A).toRingHom P =
      ⟨(P.asIdeal.comap φ).comap (algebraMap A (FractionRing R ⊗[R] A)), inferInstance⟩ := by
    ext1; simp only [PrimeSpectrum.comap_asIdeal, Ideal.comap_comap, hφ]
  rw [hc]
  exact stepB (K := FractionRing R) (nonZeroDivisors R) (P.asIdeal.comap φ)

def LeafAlgDescend : Prop := ∀ (k : Type) [Field k] (Ω : Type) [Field Ω] [Algebra k Ω] (R : Subalgebra k Ω)
    (A : Type) [CommRing A] [Algebra R A], Algebra.FinitePresentation R A → Algebra.Smooth Ω (Ω ⊗[R] A) →
    ∀ P : PrimeSpectrum (Ω ⊗[R] A),
      PrimeSpectrum.comap (Algebra.TensorProduct.includeRight : A →ₐ[R] Ω ⊗[R] A).toRingHom P ∈ Algebra.smoothLocus R A

def LeafStalkOfAlg : Prop := LeafAlgDescend → LateralTheory.E.LeafSpreadSmoothAffSmPf.LeafStalkDescend

theorem leafAlgDescend : LeafAlgDescend := fun k _ Ω _ _ R A _ _ hfp hs P => algDescend k Ω R A hfp hs P

theorem LeafSpreadSmooth1_of (hB : LateralTheory.E.LeafSpreadSmoothPf.LeafSpreadRelDim) (hT : LeafStalkOfAlg) :
    LateralTheory.E.SpreadingOutQuasiFiniteness.LeafSpreadSmooth1 :=
  LateralTheory.E.LeafSpreadSmoothPf.LeafSpreadSmooth_of
    (LateralTheory.E.LeafSpreadSmoothAffSmPf.LeafSpreadSmoothAffSm_of (hT leafAlgDescend)) hB

end LateralTheory.E.SpreadingOutSmoothness

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafSpreadSmooth1Of =====
