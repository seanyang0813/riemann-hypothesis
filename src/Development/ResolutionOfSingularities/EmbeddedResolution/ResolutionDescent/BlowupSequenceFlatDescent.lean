module

public import Mathlib.AlgebraicGeometry.IdealSheaf.Functorial
public import Mathlib.AlgebraicGeometry.Morphisms.Flat
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceRelations
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic
public import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupBasic
public import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupExistence
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.IdealSheafFlatComapInjective, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatDescent

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.IdealSheafFlatComapInjective =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.IdealSheafFlatComapInjective", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.IdealSheaf.Functorial\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TensorProduct

namespace FunctorialResolution.EmbeddedResolution.FlatDescentIdealSheaf

variable {W Y : Scheme.{u}}

private theorem one_mem_map_colon_of_mem_map {R S : Type u} [CommRing R] [CommRing S] (φ : R →+* S)
    (hφ : RingHom.Flat φ) (L : Ideal R) (a : R) (h : φ a ∈ L.map φ) :
    (1 : S) ∈ Ideal.map φ (Submodule.comap (LinearMap.lsmul R R a) L) := by
  let _ : Algebra R S := φ.toAlgebra
  have : Module.Flat R S := hφ
  have halg : (algebraMap R S) = φ := rfl
  have hex : Function.Exact (Submodule.subtype (Submodule.comap (LinearMap.lsmul R R a) L))
      ((L.mkQ).comp (LinearMap.lsmul R R a)) := by
    rw [LinearMap.exact_iff, LinearMap.ker_comp, Submodule.ker_mkQ, Submodule.range_subtype]
  have hex2 := Module.Flat.lTensor_exact (M := S) hex
  have key : ∀ s : S, s ∈ L.map φ → s ⊗ₜ[R] (L.mkQ (1 : R)) = 0 := by
    intro s hs
    let ψ : S →ₗ[S] S ⊗[R] (R ⧸ L) :=
      { toFun := fun t => t ⊗ₜ[R] (L.mkQ (1 : R))
        map_add' := fun x y => TensorProduct.add_tmul x y _
        map_smul' := fun c x => TensorProduct.smul_tmul' c x _ }
    have hψ : ∀ t : S, ψ t = t ⊗ₜ[R] (L.mkQ (1 : R)) := fun _ => rfl
    have hsub : L.map φ ≤ LinearMap.ker ψ := by
      rw [Ideal.map_le_iff_le_comap]
      intro l hl
      have h0 : l • (L.mkQ (1 : R)) = 0 := by
        rw [← map_smul]
        simp only [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero, smul_eq_mul, mul_one]
        exact hl
      simp only [Ideal.mem_comap, LinearMap.mem_ker, hψ]
      rw [show φ l = l • (1 : S) from by rw [Algebra.smul_def, halg, mul_one],
        TensorProduct.smul_tmul, h0, TensorProduct.tmul_zero]
    have hker := LinearMap.mem_ker.mp (hsub hs)
    rwa [hψ] at hker
  have hzero : (LinearMap.lTensor S ((L.mkQ).comp (LinearMap.lsmul R R a)))
      ((1 : S) ⊗ₜ[R] (1 : R)) = 0 := by
    rw [LinearMap.lTensor_tmul]
    show (1 : S) ⊗ₜ[R] (L.mkQ (a * (1 : R))) = 0
    rw [mul_one]
    have h1 : (L.mkQ a) = a • (L.mkQ (1 : R)) := by
      rw [← map_smul]; simp
    rw [h1, ← TensorProduct.smul_tmul,
      show a • (1 : S) = φ a from by rw [Algebra.smul_def, halg, mul_one]]
    exact key _ h
  obtain ⟨v, hv⟩ := (hex2 ((1 : S) ⊗ₜ[R] (1 : R))).mp hzero
  have hrange : ∀ u : S ⊗[R] (Submodule.comap (LinearMap.lsmul R R a) L),
      (TensorProduct.rid R S) (LinearMap.lTensor S
        (Submodule.subtype (Submodule.comap (LinearMap.lsmul R R a) L)) u)
      ∈ Ideal.map φ (Submodule.comap (LinearMap.lsmul R R a) L) := by
    intro u
    induction u using TensorProduct.induction_on with
    | zero => simp
    | tmul s c =>
        rw [LinearMap.lTensor_tmul, TensorProduct.rid_tmul, Algebra.smul_def, halg]
        exact Ideal.mul_mem_right _ _ (Ideal.mem_map_of_mem φ c.2)
    | add u₁ u₂ h₁ h₂ =>
        rw [map_add (f := _), map_add (f := _)]
        exact Submodule.add_mem _ h₁ h₂
  have hfin := hrange v
  rw [hv, TensorProduct.rid_tmul, one_smul] at hfin
  exact hfin

private theorem exists_not_mem_basicOpen_of_ne_top {X : Scheme.{u}} {U : X.Opens} (hU : IsAffineOpen U)
    (C : Ideal Γ(X, U)) (hC : C ≠ ⊤) :
    ∃ x ∈ U, ∀ c ∈ C, x ∉ X.basicOpen c := by
  obtain ⟨m, hm, hCm⟩ := C.exists_le_maximal hC
  let p : PrimeSpectrum Γ(X, U) := ⟨m, hm.isPrime⟩
  refine ⟨hU.fromSpec.base p, ?_, ?_⟩
  · have hr : hU.fromSpec.base p ∈ Set.range hU.fromSpec.base := ⟨p, rfl⟩
    rw [hU.range_fromSpec] at hr
    exact hr
  · intro c hc hmem
    have h1 : p ∈ hU.fromSpec ⁻¹ᵁ X.basicOpen c := hmem
    rw [hU.fromSpec_preimage_basicOpen] at h1
    have h2 : c ∉ m := h1
    exact h2 (hCm hc)

private theorem exists_mem_basicOpen_of_span_eq_top {X : Scheme.{u}} {U : X.Opens} (hU : IsAffineOpen U)
    (s : Set Γ(X, U)) (hs : Ideal.span s = ⊤) (x : X) (hx : x ∈ U) :
    ∃ c ∈ s, x ∈ X.basicOpen c := by
  have hxr : x ∈ Set.range hU.fromSpec.base := by
    rw [hU.range_fromSpec]; exact hx
  obtain ⟨p, hp⟩ := hxr
  by_contra hcon
  push Not at hcon
  have hsub : s ⊆ (p.asIdeal : Set Γ(X, U)) := by
    intro c hcs
    have h1 : ¬ (p ∈ hU.fromSpec ⁻¹ᵁ X.basicOpen c) := by
      intro hmem
      exact hcon c hcs (by rw [← hp]; exact hmem)
    rw [hU.fromSpec_preimage_basicOpen] at h1
    have h2 : c ∈ p.asIdeal := by
      by_contra hcc
      exact h1 hcc
    simpa using h2
  have hle := Ideal.span_le.mpr hsub
  rw [hs] at hle
  exact p.2.ne_top (top_le_iff.mp hle)

private theorem flat_appLE (g : W ⟶ Y) [AlgebraicGeometry.Flat g] (U : Y.affineOpens)
    (V : W.affineOpens) (e : (V : W.Opens) ≤ g ⁻¹ᵁ (U : Y.Opens)) :
    RingHom.Flat (g.appLE (U : Y.Opens) (V : W.Opens) e).hom := by
  apply AlgebraicGeometry.HasRingHomProperty.appLE (P := @AlgebraicGeometry.Flat)
  all_goals assumption

private theorem colon_eq_top_of_comap_le (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.Surjective g] (I J : Y.IdealSheafData)
    (h : I.comap g ≤ J.comap g) (U : Y.affineOpens) (a : Γ(Y, (U : Y.Opens)))
    (ha : a ∈ I.ideal U) (C : Ideal Γ(Y, (U : Y.Opens)))
    (hCdef : C = Submodule.comap
      (LinearMap.lsmul Γ(Y, (U : Y.Opens)) Γ(Y, (U : Y.Opens)) a) (J.ideal U)) :
    C = ⊤ := by
  by_contra hCtop
  obtain ⟨x, hxU, hx⟩ := exists_not_mem_basicOpen_of_ne_top U.2 C hCtop
  obtain ⟨w, hw⟩ := AlgebraicGeometry.Surjective.surj (f := g) x
  have hwU : w ∈ g ⁻¹ᵁ (U : Y.Opens) := by
    show g.base w ∈ (U : Y.Opens)
    rw [hw]; exact hxU
  obtain ⟨V, hV, hwV, hVU⟩ :=
    (TopologicalSpace.Opens.isBasis_iff_nbhd.mp W.isBasis_affineOpens) hwU
  have hV' : IsAffineOpen V := hV
  have hcomap0 := Scheme.IdealSheafData.le_def.mp h ⟨V, hV'⟩
  rw [Scheme.IdealSheafData.comap_ideal_eq_map_appLE I g U ⟨V, hV'⟩ hVU,
    Scheme.IdealSheafData.comap_ideal_eq_map_appLE J g U ⟨V, hV'⟩ hVU] at hcomap0
  have hcomap : Ideal.map (g.appLE (U : Y.Opens) V hVU).hom (I.ideal U) ≤
      Ideal.map (g.appLE (U : Y.Opens) V hVU).hom (J.ideal U) := hcomap0
  have hflat : RingHom.Flat (g.appLE (U : Y.Opens) V hVU).hom := flat_appLE g U ⟨V, hV'⟩ hVU
  have hone := one_mem_map_colon_of_mem_map (g.appLE (U : Y.Opens) V hVU).hom hflat (J.ideal U) a
    (hcomap (Ideal.mem_map_of_mem _ ha))
  rw [← hCdef] at hone
  have htop : Ideal.map (g.appLE (U : Y.Opens) V hVU).hom C = ⊤ :=
    (Ideal.eq_top_iff_one _).mpr hone
  have hspan : Ideal.span (((g.appLE (U : Y.Opens) V hVU).hom) ''
      (C : Set Γ(Y, (U : Y.Opens)))) = ⊤ := by
    rw [← Ideal.map_span, Ideal.span_eq]
    exact htop
  obtain ⟨f, hf, hwf⟩ := exists_mem_basicOpen_of_span_eq_top hV' _ hspan w hwV
  obtain ⟨c, hc, hcf⟩ := hf
  have hwb : w ∈ W.basicOpen ((g.appLE (U : Y.Opens) V hVU).hom c) := by
    rw [hcf]; exact hwf
  have hbeta : W.basicOpen ((g.appLE (U : Y.Opens) V hVU).hom c) ≤ g ⁻¹ᵁ (Y.basicOpen c) := by
    rw [Scheme.preimage_basicOpen]
    simp [Scheme.Hom.appLE]
  have hmem := hbeta hwb
  exact hx c hc (by rw [← hw]; exact hmem)

theorem le_of_comap_le (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.Surjective g] (I J : Y.IdealSheafData)
    (h : I.comap g ≤ J.comap g) : I ≤ J := by
  rw [Scheme.IdealSheafData.le_def]
  intro U a ha
  have hC := colon_eq_top_of_comap_le g I J h U a ha _ rfl
  have h1 : (1 : Γ(Y, (U : Y.Opens))) ∈ Submodule.comap
      (LinearMap.lsmul Γ(Y, (U : Y.Opens)) Γ(Y, (U : Y.Opens)) a) (J.ideal U) := by
    rw [hC]; exact Submodule.mem_top
  have h2 : a * (1 : Γ(Y, (U : Y.Opens))) ∈ J.ideal U := h1
  simpa using h2

theorem eq_of_comap_eq (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.Surjective g] (I J : Y.IdealSheafData)
    (h : I.comap g = J.comap g) : I = J :=
  le_antisymm (le_of_comap_le g I J (le_of_eq h)) (le_of_comap_le g J I (le_of_eq h.symm))

end FunctorialResolution.EmbeddedResolution.FlatDescentIdealSheaf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.IdealSheafFlatComapInjective =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatDescent =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatDescent", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceRelations\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.IdealSheafFlatComapInjective\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupBasic\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupExistence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

variable {W Y : Scheme.{u}}

private theorem flat_of_isPullback_of_flat {X₁ X₂ X₃ X₄ : Scheme.{u}} {p : X₁ ⟶ X₂} {q : X₁ ⟶ X₃}
    {f : X₂ ⟶ X₄} {h : X₃ ⟶ X₄} (sq : IsPullback p q f h)
    (hh : AlgebraicGeometry.Flat h) : AlgebraicGeometry.Flat p :=
  MorphismProperty.IsStableUnderBaseChange.of_isPullback
    (P := @AlgebraicGeometry.Flat) sq.flip hh

private theorem surjective_of_isPullback {X₁ X₂ X₃ X₄ : Scheme.{u}} {p : X₁ ⟶ X₂} {q : X₁ ⟶ X₃}
    {f : X₂ ⟶ X₄} {h : X₃ ⟶ X₄} (sq : IsPullback p q f h)
    (hh : AlgebraicGeometry.Surjective h) : AlgebraicGeometry.Surjective p :=
  MorphismProperty.IsStableUnderBaseChange.of_isPullback
    (P := @AlgebraicGeometry.Surjective) sq.flip hh

theorem flat_and_surjective_of_isPullback_blowupMorphism (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.Surjective g] (t : SequenceOfBlowups W) (s : SequenceOfBlowups Y) (L : ℕ)
    (γ : ∀ i : ℕ, i ≤ L → (t.schemeAt i ⟶ s.schemeAt i))
    (hzero : γ 0 (Nat.zero_le _) ≫ s.isoZero.hom = t.isoZero.hom ≫ g)
    (hsq : ∀ i : ℕ, ∀ hi : i < L,
      IsPullback (γ (i + 1) hi) (t.transitionMapSucc i) (s.transitionMapSucc i) (γ i hi.le)) :
    ∀ i : ℕ, ∀ hi : i ≤ L,
      AlgebraicGeometry.Flat (γ i hi) ∧ AlgebraicGeometry.Surjective (γ i hi) := by
  intro i
  induction i with
  | zero =>
    intro hi
    have sq0 : IsPullback (γ 0 hi) t.isoZero.hom s.isoZero.hom g :=
      (IsPullback.of_horiz_isIso (CommSq.mk hzero.symm)).flip
    exact ⟨flat_of_isPullback_of_flat sq0 inferInstance, surjective_of_isPullback sq0 inferInstance⟩
  | succ n ih =>
    intro hi
    have hn : n < L := hi
    obtain ⟨hf, hs⟩ := ih hn.le
    exact ⟨flat_of_isPullback_of_flat (hsq n hn) hf, surjective_of_isPullback (hsq n hn) hs⟩

structure CompatibleBaseIsoAt (t₁ t₂ : SequenceOfBlowups W) (s₁ s₂ : SequenceOfBlowups Y) (L : ℕ)
    (γ₁ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ⟶ s₁.schemeAt i))
    (γ₂ : ∀ i : ℕ, i ≤ L → (t₂.schemeAt i ⟶ s₂.schemeAt i))
    (φ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ≅ t₂.schemeAt i)) (i : ℕ) where
  iso : s₁.schemeAt i ≅ s₂.schemeAt i
  compat : ∀ hi : i ≤ L, γ₁ i hi ≫ iso.hom = (φ i hi).hom ≫ γ₂ i hi

structure BlowupDescentData (g : W ⟶ Y) (t₁ t₂ : SequenceOfBlowups W) (s₁ s₂ : SequenceOfBlowups Y) (L : ℕ)
    (γ₁ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ⟶ s₁.schemeAt i))
    (γ₂ : ∀ i : ℕ, i ≤ L → (t₂.schemeAt i ⟶ s₂.schemeAt i))
    (φ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ≅ t₂.schemeAt i)) : Prop where
  isBlowup_s₁ : ∀ i : ℕ, i < L → Blowup.IsBlowupAlongIdealSheaf (s₁.transitionMapSucc i) (s₁.center i)
  isBlowup_s₂ : ∀ i : ℕ, i < L → Blowup.IsBlowupAlongIdealSheaf (s₂.transitionMapSucc i) (s₂.center i)
  center_t₁ : ∀ i : ℕ, ∀ hi : i < L, t₁.center i = (s₁.center i).comap (γ₁ i hi.le)
  center_t₂ : ∀ i : ℕ, ∀ hi : i < L, t₂.center i = (s₂.center i).comap (γ₂ i hi.le)
  flat_γ₁ : ∀ i : ℕ, ∀ hi : i ≤ L, AlgebraicGeometry.Flat (γ₁ i hi)
  pullback_γ₁ : ∀ i : ℕ, ∀ hi : i < L,
    IsPullback (γ₁ (i + 1) hi) (t₁.transitionMapSucc i) (s₁.transitionMapSucc i) (γ₁ i hi.le)
  pullback_γ₂ : ∀ i : ℕ, ∀ hi : i < L,
    IsPullback (γ₂ (i + 1) hi) (t₂.transitionMapSucc i) (s₂.transitionMapSucc i) (γ₂ i hi.le)
  zero_γ₁ : γ₁ 0 (Nat.zero_le _) ≫ s₁.isoZero.hom = t₁.isoZero.hom ≫ g
  zero_γ₂ : γ₂ 0 (Nat.zero_le _) ≫ s₂.isoZero.hom = t₂.isoZero.hom ≫ g
  surjective_γ₁ : ∀ i : ℕ, ∀ hi : i ≤ L, AlgebraicGeometry.Surjective (γ₁ i hi)
  isBlowup_t₁ : ∀ i : ℕ, i < L → Blowup.IsBlowupAlongIdealSheaf (t₁.transitionMapSucc i) (t₁.center i)
  center_φ : ∀ i : ℕ, ∀ hi : i < L, (t₂.center i).comap (φ i hi.le).hom = t₁.center i
  zero_φ : (φ 0 (Nat.zero_le _)).hom ≫ t₂.isoZero.hom = t₁.isoZero.hom
  step_φ : ∀ i : ℕ, ∀ hi : i < L,
    (φ (i + 1) hi).hom ≫ t₂.transitionMapSucc i = t₁.transitionMapSucc i ≫ (φ i hi.le).hom

theorem comp_isoObjZero_trans_symm_eq {g : W ⟶ Y} {t₁ t₂ : SequenceOfBlowups W} {s₁ s₂ : SequenceOfBlowups Y} {L : ℕ}
    {γ₁ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ⟶ s₁.schemeAt i)}
    {γ₂ : ∀ i : ℕ, i ≤ L → (t₂.schemeAt i ⟶ s₂.schemeAt i)}
    {φ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ≅ t₂.schemeAt i)}
    (hd : BlowupDescentData g t₁ t₂ s₁ s₂ L γ₁ γ₂ φ) :
    ∀ hi : (0 : ℕ) ≤ L,
      γ₁ 0 hi ≫ (s₁.isoZero ≪≫ s₂.isoZero.symm).hom = (φ 0 hi).hom ≫ γ₂ 0 hi := by
  intro hi
  have h1 : γ₁ 0 hi ≫ s₁.isoZero.hom = t₁.isoZero.hom ≫ g := hd.zero_γ₁
  have h2 : γ₂ 0 hi ≫ s₂.isoZero.hom = t₂.isoZero.hom ≫ g := hd.zero_γ₂
  have h3 : (φ 0 hi).hom ≫ t₂.isoZero.hom = t₁.isoZero.hom := hd.zero_φ
  have key : (γ₁ 0 hi ≫ (s₁.isoZero ≪≫ s₂.isoZero.symm).hom) ≫ s₂.isoZero.hom
      = ((φ 0 hi).hom ≫ γ₂ 0 hi) ≫ s₂.isoZero.hom := by
    simp only [Iso.trans_hom, Iso.symm_hom, Category.assoc, Iso.inv_hom_id, Category.comp_id]
    rw [h1, h2, ← Category.assoc, h3]
  exact (cancel_mono s₂.isoZero.hom).mp key

theorem CompatibleBaseIsoAt.center_comap_eq {g : W ⟶ Y} {t₁ t₂ : SequenceOfBlowups W} {s₁ s₂ : SequenceOfBlowups Y}
    {L : ℕ}
    {γ₁ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ⟶ s₁.schemeAt i)}
    {γ₂ : ∀ i : ℕ, i ≤ L → (t₂.schemeAt i ⟶ s₂.schemeAt i)}
    {φ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ≅ t₂.schemeAt i)}
    (hd : BlowupDescentData g t₁ t₂ s₁ s₂ L γ₁ γ₂ φ) {i : ℕ} (hi : i < L)
    (st : CompatibleBaseIsoAt t₁ t₂ s₁ s₂ L γ₁ γ₂ φ i) :
    (s₂.center i).comap st.iso.hom = s₁.center i := by
  have := hd.flat_γ₁ i hi.le
  have := hd.surjective_γ₁ i hi.le
  refine FlatDescentIdealSheaf.eq_of_comap_eq (γ₁ i hi.le) _ _ ?_
  rw [← Scheme.IdealSheafData.comap_comp, st.compat hi.le, Scheme.IdealSheafData.comap_comp,
    ← hd.center_t₂ i hi, hd.center_φ i hi]
  exact hd.center_t₁ i hi

theorem CompatibleBaseIsoAt.exists_iso_succ_blowupMorphism_comm {g : W ⟶ Y} {t₁ t₂ : SequenceOfBlowups W} {s₁ s₂ : SequenceOfBlowups Y}
    {L : ℕ}
    {γ₁ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ⟶ s₁.schemeAt i)}
    {γ₂ : ∀ i : ℕ, i ≤ L → (t₂.schemeAt i ⟶ s₂.schemeAt i)}
    {φ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ≅ t₂.schemeAt i)}
    (hd : BlowupDescentData g t₁ t₂ s₁ s₂ L γ₁ γ₂ φ) {i : ℕ} (hi : i < L)
    (st : CompatibleBaseIsoAt t₁ t₂ s₁ s₂ L γ₁ γ₂ φ i) :
    ∃ e : s₁.schemeAt (i + 1) ≅ s₂.schemeAt (i + 1),
      e.hom ≫ s₂.transitionMapSucc i ≫ st.iso.inv = s₁.transitionMapSucc i := by
  have h2 := (hd.isBlowup_s₂ i hi).comp_iso_hom st.iso.symm
  simp only [Iso.symm_hom, Iso.symm_inv] at h2
  rw [CompatibleBaseIsoAt.center_comap_eq hd hi st] at h2
  exact (hd.isBlowup_s₁ i hi).exists_iso h2

theorem CompatibleBaseIsoAt.blowupMorphism_square_comm {t₁ t₂ : SequenceOfBlowups W} {s₁ s₂ : SequenceOfBlowups Y}
    {L : ℕ}
    {γ₁ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ⟶ s₁.schemeAt i)}
    {γ₂ : ∀ i : ℕ, i ≤ L → (t₂.schemeAt i ⟶ s₂.schemeAt i)}
    {φ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ≅ t₂.schemeAt i)}
    {i : ℕ} (st : CompatibleBaseIsoAt t₁ t₂ s₁ s₂ L γ₁ γ₂ φ i)
    (e : s₁.schemeAt (i + 1) ≅ s₂.schemeAt (i + 1))
    (he : e.hom ≫ s₂.transitionMapSucc i ≫ st.iso.inv = s₁.transitionMapSucc i) :
    e.hom ≫ s₂.transitionMapSucc i = s₁.transitionMapSucc i ≫ st.iso.hom := by
  rw [← he]
  simp

private def isoFamilyOfZero {A B : ℕ → Scheme.{u}} (x : A 0 ≅ B 0) (i : ℕ) (hi : i ≤ 0) : A i ≅ B i :=
  Eq.mpr (congrArg (fun j : ℕ => (A j ≅ B j)) (Nat.le_zero.mp hi)) x

private theorem isoFamilyOfZero_zero {A B : ℕ → Scheme.{u}} (x : A 0 ≅ B 0) {hi : (0 : ℕ) ≤ 0} :
    isoFamilyOfZero x 0 hi = x := rfl

private def extendIsoFamilySucc {A B : ℕ → Scheme.{u}} (N : ℕ) (e : ∀ i : ℕ, i ≤ N → (A i ≅ B i))
    (x : A (N + 1) ≅ B (N + 1)) (i : ℕ) (hi : i ≤ N + 1) : A i ≅ B i :=
  if h : i ≤ N then e i h
  else Eq.mpr (congrArg (fun j : ℕ => (A j ≅ B j))
    (Nat.le_antisymm hi (Nat.not_le.mp h))) x

private theorem extendIsoFamilySucc_of_le {A B : ℕ → Scheme.{u}} (N : ℕ)
    (e : ∀ i : ℕ, i ≤ N → (A i ≅ B i)) (x : A (N + 1) ≅ B (N + 1)) {i : ℕ} {hi : i ≤ N + 1}
    (h : i ≤ N) : extendIsoFamilySucc N e x i hi = e i h := dif_pos h

private theorem extendIsoFamilySucc_self {A B : ℕ → Scheme.{u}} (N : ℕ)
    (e : ∀ i : ℕ, i ≤ N → (A i ≅ B i)) (x : A (N + 1) ≅ B (N + 1)) {hi : N + 1 ≤ N + 1} :
    extendIsoFamilySucc N e x (N + 1) hi = x := dif_neg (Nat.not_succ_le_self N)

private theorem exists_compatible_isos_of_le {g : W ⟶ Y} {t₁ t₂ : SequenceOfBlowups W} {s₁ s₂ : SequenceOfBlowups Y} {L : ℕ}
    {γ₁ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ⟶ s₁.schemeAt i)}
    {γ₂ : ∀ i : ℕ, i ≤ L → (t₂.schemeAt i ⟶ s₂.schemeAt i)}
    {φ : ∀ i : ℕ, i ≤ L → (t₁.schemeAt i ≅ t₂.schemeAt i)}
    (hd : BlowupDescentData g t₁ t₂ s₁ s₂ L γ₁ γ₂ φ) (N : ℕ) :
    ∀ hN : N ≤ L, ∃ e : ∀ i : ℕ, i ≤ N → (s₁.schemeAt i ≅ s₂.schemeAt i),
      ((e 0 (Nat.zero_le _)).hom ≫ s₂.isoZero.hom = s₁.isoZero.hom) ∧
      (∀ i : ℕ, ∀ hi : i < N,
        (e (i + 1) hi).hom ≫ s₂.transitionMapSucc i = s₁.transitionMapSucc i ≫ (e i hi.le).hom) ∧
      (∀ i : ℕ, ∀ hi : i ≤ N,
        γ₁ i (hi.trans hN) ≫ (e i hi).hom
          = (φ i (hi.trans hN)).hom ≫ γ₂ i (hi.trans hN)) := by
  induction N with
  | zero =>
    intro hN
    refine ⟨isoFamilyOfZero (A := fun i : ℕ => s₁.schemeAt i) (B := fun i : ℕ => s₂.schemeAt i)
      (s₁.isoZero ≪≫ s₂.isoZero.symm), ?_, ?_, ?_⟩
    · rw [isoFamilyOfZero_zero]
      simp
    · intro i hi
      exact absurd hi (Nat.not_lt_zero i)
    · intro i hi
      obtain rfl : i = 0 := Nat.le_zero.mp hi
      rw [isoFamilyOfZero_zero]
      exact comp_isoObjZero_trans_symm_eq hd (hi.trans hN)
  | succ N ih =>
    intro hN
    have hNlt : N < L := hN
    obtain ⟨e, h0, hsqe, hc⟩ := ih hNlt.le
    have hstN : γ₁ N hNlt.le ≫ (e N (Nat.le_refl N)).hom
        = (φ N hNlt.le).hom ≫ γ₂ N hNlt.le := hc N (Nat.le_refl N)
    let st : CompatibleBaseIsoAt t₁ t₂ s₁ s₂ L γ₁ γ₂ φ N :=
      { iso := e N (Nat.le_refl N)
        compat := fun _ => hstN }
    obtain ⟨x, hx⟩ := CompatibleBaseIsoAt.exists_iso_succ_blowupMorphism_comm hd hNlt st
    have hxsq : x.hom ≫ s₂.transitionMapSucc N = s₁.transitionMapSucc N ≫ (e N (Nat.le_refl N)).hom :=
      CompatibleBaseIsoAt.blowupMorphism_square_comm st x hx
    refine ⟨extendIsoFamilySucc (A := fun i : ℕ => s₁.schemeAt i) (B := fun i : ℕ => s₂.schemeAt i) N e x,
      ?_, ?_, ?_⟩
    · rw [extendIsoFamilySucc_of_le N e x (Nat.zero_le N)]
      exact h0
    · intro i hi
      rcases Nat.lt_or_ge i N with h | h
      · rw [extendIsoFamilySucc_of_le N e x (Nat.succ_le_of_lt h), extendIsoFamilySucc_of_le N e x h.le]
        exact hsqe i h
      · obtain rfl : i = N := Nat.le_antisymm (Nat.lt_succ_iff.mp hi) h
        rw [extendIsoFamilySucc_self, extendIsoFamilySucc_of_le _ _ _ (Nat.le_refl _)]
        exact hxsq
    · intro i hi
      rcases Nat.lt_or_ge i (N + 1) with h | h
      · have hiN : i ≤ N := Nat.lt_succ_iff.mp h
        rw [extendIsoFamilySucc_of_le N e x hiN]
        exact hc i hiN
      · obtain rfl : i = N + 1 := Nat.le_antisymm hi h
        rw [extendIsoFamilySucc_self]
        have ha : (γ₁ (N + 1) hNlt ≫ x.hom) ≫ s₂.transitionMapSucc N
            = t₁.transitionMapSucc N ≫ (φ N hNlt.le).hom ≫ γ₂ N hNlt.le := by
          rw [Category.assoc, hxsq, ← Category.assoc, (hd.pullback_γ₁ N hNlt).w,
            Category.assoc, hstN]
        have hb : ((φ (N + 1) hNlt).hom ≫ γ₂ (N + 1) hNlt) ≫ s₂.transitionMapSucc N
            = t₁.transitionMapSucc N ≫ (φ N hNlt.le).hom ≫ γ₂ N hNlt.le := by
          rw [Category.assoc, (hd.pullback_γ₂ N hNlt).w, ← Category.assoc,
            hd.step_φ N hNlt, Category.assoc]
        have hide : (s₂.center N).comap
            (t₁.transitionMapSucc N ≫ (φ N hNlt.le).hom ≫ γ₂ N hNlt.le)
            = (t₁.center N).comap (t₁.transitionMapSucc N) := by
          rw [Scheme.IdealSheafData.comap_comp, Scheme.IdealSheafData.comap_comp,
            ← hd.center_t₂ N hNlt, hd.center_φ N hNlt]
        have hcart : Blowup.IsLocallyGeneratedByNonZeroDivisor ((s₂.center N).comap
            (t₁.transitionMapSucc N ≫ (φ N hNlt.le).hom ≫ γ₂ N hNlt.le)) := by
          rw [hide]
          exact (hd.isBlowup_t₁ N hNlt).1
        exact (hd.isBlowup_s₂ N hNlt).hom_ext_of_comp_eq hcart ha hb

theorem IsStrictPullbackBlowupSeq.isomorphic_of_isomorphic {g : W ⟶ Y} [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.Surjective g] {t₁ t₂ : SequenceOfBlowups W} {s₁ s₂ : SequenceOfBlowups Y}
    (h₁ : IsStrictPullbackBlowupSeq g t₁ s₁) (h₂ : IsStrictPullbackBlowupSeq g t₂ s₂)
    (he : t₁.Isomorphic t₂) : s₁.Isomorphic s₂ := by
  obtain ⟨hlen₁, σ₁, hσ₁0, hσ₁sq, hσ₁c⟩ := h₁
  obtain ⟨hlen₂, σ₂, hσ₂0, hσ₂sq, hσ₂c⟩ := h₂
  obtain ⟨hlent, φ, hφ0, hφstep, hφc⟩ := he
  have hfs := flat_and_surjective_of_isPullback_blowupMorphism g t₁ s₁ t₁.length σ₁ hσ₁0 hσ₁sq
  have hd : BlowupDescentData g t₁ t₂ s₁ s₂ t₁.length σ₁
      (fun i hi => σ₂ i (le_of_le_of_eq hi hlent)) φ := by
    refine ⟨fun i hi => s₁.isBlowupAlongIdealSheaf_blowupMorphism i (by omega),
      fun i hi => s₂.isBlowupAlongIdealSheaf_blowupMorphism i (by omega),
      hσ₁c, fun i hi => hσ₂c i (by omega),
      fun i hi => (hfs i hi).1, hσ₁sq, fun i hi => hσ₂sq i (by omega),
      hσ₁0, hσ₂0, fun i hi => (hfs i hi).2,
      fun i hi => t₁.isBlowupAlongIdealSheaf_blowupMorphism i hi, hφc, hφ0, hφstep⟩
  obtain ⟨e, h0, hsqe, hc⟩ := exists_compatible_isos_of_le hd t₁.length (Nat.le_refl _)
  refine ⟨by omega, fun i hi => e i (by omega), h0, ?_, ?_⟩
  · intro i hi
    exact hsqe i (by omega)
  · intro i hi
    have hiT : i < t₁.length := by omega
    exact CompatibleBaseIsoAt.center_comap_eq hd hiT
      { iso := e i hiT.le, compat := fun _ => hc i hiT.le }

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatDescent =====
