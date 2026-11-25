module

public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossings
public import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupOpenCover
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealAssignment
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.SmoothOrderOneCenters
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.CertificateOpenRestriction
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SupportFlatPullback
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealGeometry

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.OpenRestriction, Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealOrderOne, Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealHypotheses

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.OpenRestriction =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.OpenRestriction", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossings\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupOpenCover\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace OpenImmersionRestriction

private theorem exists_subschemeMap_isOpenImmersion {V W : Scheme.{u}} (f : V ⟶ W)
    [IsOpenImmersion f] (D : W.IdealSheafData) :
    ∃ g : (D.comap f).subscheme ⟶ D.subscheme,
      IsOpenImmersion g ∧ g ≫ D.subschemeι = (D.comap f).subschemeι ≫ f := by
  have h₁ : IsOpenImmersion (Limits.pullback.snd f D.subschemeι) := inferInstance
  have h₂ : IsOpenImmersion (D.comapIso f).hom := inferInstance
  refine ⟨(D.comapIso f).hom ≫ Limits.pullback.snd f D.subschemeι, inferInstance, ?_⟩
  rw [Category.assoc, ← Limits.pullback.condition, ← Category.assoc,
    Scheme.IdealSheafData.comapIso_hom_fst]

theorem isOpenImmersion_subschemeMap {V W : Scheme.{u}} (f : V ⟶ W) [IsOpenImmersion f]
    (D : W.IdealSheafData) (g : (D.comap f).subscheme ⟶ D.subscheme)
    (hg : g ≫ D.subschemeι = (D.comap f).subschemeι ≫ f) :
    IsOpenImmersion g := by
  obtain ⟨g', hg', hg'fac⟩ := exists_subschemeMap_isOpenImmersion f D
  have : Mono D.subschemeι := inferInstance
  have heq : g = g' := by
    refine (cancel_mono D.subschemeι).mp ?_
    rw [hg, hg'fac]
  rw [heq]
  exact hg'

theorem isSmoothDivisor_comap {V W : Scheme.{u}} {k : Type u} [Field k]
    (f : V ⟶ W) [IsOpenImmersion f] (p : W ⟶ Spec (CommRingCat.of k))
    (D : W.IdealSheafData) (hD : IsSmoothDivisor p D) :
    IsSmoothDivisor (f ≫ p) (D.comap f) := by
  obtain ⟨g, hg, hgfac⟩ := exists_subschemeMap_isOpenImmersion f D
  refine ⟨hD.1.comap_of_isOpenImmersion f, ?_⟩
  have : IsOpenImmersion g := hg
  have : AlgebraicGeometry.Smooth g := inferInstance
  have hsm : AlgebraicGeometry.Smooth (D.subschemeι ≫ p) := hD.2
  have hcomp : (D.comap f).subschemeι ≫ f ≫ p = g ≫ D.subschemeι ≫ p := by
    rw [← Category.assoc, ← hgfac, Category.assoc]
  rw [hcomp]
  infer_instance

end OpenImmersionRestriction

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.OpenRestriction =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealOrderOne =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealOrderOne", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealAssignment\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

namespace FunctorialResolution.EmbeddedResolution.OpenImmersionRestriction

private theorem exists_affineOpens_mem (X : Scheme.{u}) (x : ↥X) :
    ∃ U : X.affineOpens, x ∈ U.1.1 := by
  have hx : x ∈ (⨆ U : X.affineOpens, (U : X.Opens)) := by
    rw [AlgebraicGeometry.iSup_affineOpens_eq_top X]
    trivial
  obtain ⟨U, hU⟩ := TopologicalSpace.Opens.mem_iSup.mp hx
  exact ⟨U, hU⟩

theorem maximalIdeal_stalk_ne_bot_of_specializes
    (X : Scheme.{u}) (x y : ↥X) (h : y ⤳ x) (hne : y ≠ x) :
    IsLocalRing.maximalIdeal ↑(X.presheaf.stalk x) ≠ ⊥ := by
  intro hbot
  obtain ⟨U, hxU0⟩ := exists_affineOpens_mem X x
  have hxU : x ∈ U.1 := hxU0
  have hU : IsAffineOpen U.1 := U.2
  have hmem : x ∈ closure ({y} : Set ↥X) := specializes_iff_mem_closure.mp h
  have hyU : y ∈ U.1 := by
    have hopen : IsOpen ((U.1 : Set ↥X)) := U.1.2
    obtain ⟨z, hzU, hzy⟩ := (mem_closure_iff.mp hmem) ((U.1 : Set ↥X)) hopen hxU
    rw [Set.mem_singleton_iff] at hzy
    have hy2 : y ∈ ((U.1 : Set ↥X)) := by rw [← hzy]; exact hzU
    exact hy2
  have hind : Topology.IsInducing (⇑(hU.fromSpec)) :=
    (hU.fromSpec).isOpenEmbedding.toIsEmbedding.toIsInducing
  have e1 : (⇑(hU.fromSpec)) (hU.primeIdealOf ⟨x, hxU⟩) = x :=
    hU.fromSpec_primeIdealOf ⟨x, hxU⟩
  have e2 : (⇑(hU.fromSpec)) (hU.primeIdealOf ⟨y, hyU⟩) = y :=
    hU.fromSpec_primeIdealOf ⟨y, hyU⟩
  have hspec : hU.primeIdealOf ⟨y, hyU⟩ ⤳ hU.primeIdealOf ⟨x, hxU⟩ := by
    apply hind.specializes_iff.mp
    rw [e1, e2]
    exact h
  have hqp : (hU.primeIdealOf ⟨y, hyU⟩).asIdeal ≤ (hU.primeIdealOf ⟨x, hxU⟩).asIdeal := by
    have h2 := specializes_iff_mem_closure.mp hspec
    rw [PrimeSpectrum.closure_singleton, PrimeSpectrum.mem_zeroLocus] at h2
    exact fun z hz => h2 hz
  have hne' : (hU.primeIdealOf ⟨y, hyU⟩).asIdeal ≠ (hU.primeIdealOf ⟨x, hxU⟩).asIdeal := by
    intro heq
    apply hne
    have hpe : hU.primeIdealOf ⟨y, hyU⟩ = hU.primeIdealOf ⟨x, hxU⟩ := PrimeSpectrum.ext heq
    exact e2.symm.trans (by rw [hpe]; exact e1)
  obtain ⟨a, hap, haq⟩ := SetLike.exists_of_lt (lt_of_le_of_ne hqp hne')
  let _ : Algebra Γ(X, U.1) ↑(X.presheaf.stalk x) := (X.presheaf.germ U.1 x hxU).hom.toAlgebra
  have hloc : IsLocalization (hU.primeIdealOf ⟨x, hxU⟩).asIdeal.primeCompl
      ↑(X.presheaf.stalk x) := hU.isLocalization_stalk ⟨x, hxU⟩
  have hmax : Ideal.map (algebraMap Γ(X, U.1) ↑(X.presheaf.stalk x))
      (hU.primeIdealOf ⟨x, hxU⟩).asIdeal
      = IsLocalRing.maximalIdeal ↑(X.presheaf.stalk x) :=
    IsLocalization.AtPrime.map_eq_maximalIdeal ..
  have hmapmem : (algebraMap Γ(X, U.1) ↑(X.presheaf.stalk x)) a
      ∈ IsLocalRing.maximalIdeal ↑(X.presheaf.stalk x) := by
    rw [← hmax]
    exact Ideal.mem_map_of_mem _ hap
  have h0 : (algebraMap Γ(X, U.1) ↑(X.presheaf.stalk x)) a = 0 := by
    rw [hbot] at hmapmem
    simpa using hmapmem
  have h1 : (algebraMap Γ(X, U.1) ↑(X.presheaf.stalk x)) a
      = (algebraMap Γ(X, U.1) ↑(X.presheaf.stalk x)) 0 := by
    rw [h0, map_zero]
  obtain ⟨c, hc⟩ := (IsLocalization.eq_iff_exists
    (hU.primeIdealOf ⟨x, hxU⟩).asIdeal.primeCompl ↑(X.presheaf.stalk x)).mp h1
  have hca : (c : Γ(X, U.1)) * a = 0 := by
    rw [mul_zero] at hc
    exact hc
  have hcp : (c : Γ(X, U.1)) ∉ (hU.primeIdealOf ⟨x, hxU⟩).asIdeal := c.2
  have hcq : (c : Γ(X, U.1)) ∉ (hU.primeIdealOf ⟨y, hyU⟩).asIdeal := fun hc0 => hcp (hqp hc0)
  have hmem0 : (c : Γ(X, U.1)) * a ∈ (hU.primeIdealOf ⟨y, hyU⟩).asIdeal := by
    rw [hca]
    exact Submodule.zero_mem _
  rcases (hU.primeIdealOf ⟨y, hyU⟩).isPrime.mem_or_mem hmem0 with hcc | haa
  · exact hcq hcc
  · exact haq haa

theorem orderAt_vanishingIdeal_eq_one_of_not_mem_irreducibleComponents
    (X : Scheme.{u}) [IsLocallyNoetherian X] (S : Closeds ↥X) (x : ↥X)
    (hx : IsGenericPoint x (S : Set ↥X))
    (hS : (S : Set ↥X) ∉ irreducibleComponents ↥X) :
    FunctorialResolution.EmbeddedResolution.orderAt (Scheme.IdealSheafData.vanishingIdeal S) x = 1 := by
  have hx' : closure ({x} : Set ↥X) = (S : Set ↥X) := hx
  have hSirr : IsIrreducible (S : Set ↥X) := by
    rw [← hx']
    exact isIrreducible_singleton.closure
  have hxS : x ∈ (S : Set ↥X) := by
    rw [← hx']
    exact subset_closure (Set.mem_singleton x)
  have hMax : Maximal (fun s : Set ↥X => IsIrreducible s ∧ s ⊆ (S : Set ↥X)) (S : Set ↥X) := by
    constructor
    · exact ⟨hSirr, subset_rfl⟩
    · intro b hb _
      exact hb.2
  obtain ⟨t, htpre, hSt, hmaxt⟩ := exists_preirreducible (S : Set ↥X) hSirr.2
  have htirr : IsIrreducible t := ⟨⟨x, hSt hxS⟩, htpre⟩
  have htclosed : IsClosed t := by
    have h1 : closure t = t := hmaxt (closure t) htpre.closure subset_closure
    rw [← h1]
    exact isClosed_closure
  have htmem : t ∈ irreducibleComponents ↥X := by
    constructor
    · exact htirr
    · intro u hu htu
      exact (hmaxt u hu.2 htu).le
  have hSnet : (S : Set ↥X) ≠ t := by
    intro hEq
    exact hS (hEq ▸ htmem)
  obtain ⟨y, hy⟩ := QuasiSober.sober htirr htclosed
  have hy' : closure ({y} : Set ↥X) = t := hy
  have hyx : y ⤳ x := by
    rw [specializes_iff_mem_closure, hy']
    exact hSt hxS
  have hyne : y ≠ x := by
    intro hEq
    apply hSnet
    rw [← hx', ← hEq]
    exact hy'
  have hbot : IsLocalRing.maximalIdeal ↑(X.presheaf.stalk x) ≠ ⊥ :=
    maximalIdeal_stalk_ne_bot_of_specializes X x y hyx hyne
  exact _root_.FunctorialResolution.EmbeddedResolution.orderAt_vanishingIdeal_eq_one S x (S : Set ↥X) hMax hx hbot

theorem isLocallyNoetherian_subscheme_of_isSmoothDivisor
    (k : Type u) [Field k] (W : Scheme.{u}) (p : W ⟶ Spec (CommRingCat.of k))
    (U : W.Opens) (D : (U.toScheme).IdealSheafData)
    (hD : IsSmoothDivisor (U.ι ≫ p) D) :
    IsLocallyNoetherian D.subscheme := by
  obtain ⟨_, hsm⟩ := hD
  have : AlgebraicGeometry.Smooth (D.subschemeι ≫ U.ι ≫ p) := hsm
  have : LocallyOfFiniteType (D.subschemeι ≫ U.ι ≫ p) := inferInstance
  have : IsNoetherianRing (CommRingCat.of k) := inferInstanceAs (IsNoetherianRing k)
  exact AlgebraicGeometry.LocallyOfFiniteType.isLocallyNoetherian (D.subschemeι ≫ U.ι ≫ p)

theorem vanishingOrderOneOnSmoothDivisor : VanishingOrderOneOnSmoothDivisor.{u} := by
  intro k hk W p U D hD T y hy hT
  have : IsLocallyNoetherian D.subscheme :=
    isLocallyNoetherian_subscheme_of_isSmoothDivisor k W p U D hD
  rw [vanishingIdealAssignment_apply]
  exact orderAt_vanishingIdeal_eq_one_of_not_mem_irreducibleComponents D.subscheme T y hy hT

end FunctorialResolution.EmbeddedResolution.OpenImmersionRestriction
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealOrderOne =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealHypotheses =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealHypotheses", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.SmoothOrderOneCenters\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealAssignment\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.CertificateOpenRestriction\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.OpenRestriction\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SupportFlatPullback\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealGeometry\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealOrderOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace OpenImmersionRestriction

theorem vanishingComapOpens : VanishingComapOpens.{u} := by
  intro W T U T' hT'
  simp only [vanishingIdealAssignment_apply]
  exact comap_vanishingIdeal_of_isOpenImmersion U.ι T T' hT'

theorem idealSheafGeometryHypotheses_vanishingIdealAssignment : IdealSheafGeometryHypotheses (vanishingIdealAssignment.{u}) :=
  idealSheafGeometryHypotheses_of_vanishingOrderOneOnSmoothDivisor vanishingOrderOneOnSmoothDivisor agreeNearVanishingComapSubscheme vanishingComapOpens

private theorem orderAt_vanishingIdealAssignment_eq_one :
    ∀ (k : Type u) [Field k] [CharZero k] (W : Scheme.{u})
      (p : W ⟶ Spec (CommRingCat.of k)), Smooth p →
      ∀ T : Closeds ↥W, IsIrreducible (T : Set ↥W) →
      Smooth ((vanishingIdealAssignment W T).subschemeι ≫ p) →
      (∀ E ∈ irreducibleComponents ↥W, ¬ E ⊆ (T : Set ↥W)) →
      ∀ x ∈ (T : Set ↥W), FunctorialResolution.EmbeddedResolution.orderAt (vanishingIdealAssignment W T) x = 1 := by
  intro k _ _ W p hp T hirr hsm hcomp x hx
  rw [vanishingIdealAssignment_apply] at hsm ⊢
  exact orderAt_vanishingIdeal_eq_one p hp T hirr hsm hcomp x hx

private theorem smooth_opens_ι_comp_of_smooth :
    ∀ (k : Type u) [Field k] [CharZero k] (W : Scheme.{u})
      (p : W ⟶ Spec (CommRingCat.of k)) (U : W.Opens), Smooth p → Smooth (U.ι ≫ p) := by
  intro k _ _ W p U hp
  have : Smooth p := hp
  infer_instance

private theorem smooth_vanishingIdealAssignment_of_isSmoothDivisor :
    ∀ (k : Type u) [Field k] [CharZero k] (W : Scheme.{u})
      (p : W ⟶ Spec (CommRingCat.of k)) (U : W.Opens) (H : (U.toScheme).IdealSheafData),
      IsSmoothDivisor (U.ι ≫ p) H →
      ∀ (T : Closeds ↥W) (S : Closeds ↥(H.subscheme)),
        (S : Set ↥(H.subscheme)) = (H.subschemeι ≫ U.ι).base ⁻¹' (T : Set ↥W) →
        (U.ι.base ⁻¹' (T : Set ↥W)) ⊆ (H.support : Set ↥(U.toScheme)) →
        Smooth ((vanishingIdealAssignment W T).subschemeι ≫ p) →
        Smooth ((vanishingIdealAssignment H.subscheme S).subschemeι ≫ (H.subschemeι ≫ (U.ι ≫ p))) := by
  intro k _ _ W p U H hH T S hS hTsubH hT
  rw [vanishingIdealAssignment_apply] at hT ⊢
  exact smooth_vanishingIdeal_comap_subschemeι p U H hH T S hS hTsubH hT

private theorem smooth_vanishingIdealAssignment_restrict_opens :
    ∀ (k : Type u) [Field k] [CharZero k] (W : Scheme.{u})
      (p : W ⟶ Spec (CommRingCat.of k)) (U : W.Opens) (T : Closeds ↥W)
      (S : Closeds ↥(U.toScheme)),
      (S : Set ↥(U.toScheme)) = U.ι.base ⁻¹' (T : Set ↥W) →
      Smooth ((vanishingIdealAssignment W T).subschemeι ≫ p) →
      Smooth ((vanishingIdealAssignment U.toScheme S).subschemeι ≫ (U.ι ≫ p)) := by
  intro k _ _ W p U T S hS hT
  rw [vanishingIdealAssignment_apply] at hT ⊢
  exact smooth_subschemeι_comp_of_eq (U.ι ≫ p)
    (comap_vanishingIdeal_of_isOpenImmersion U.ι T S hS).symm
    (smooth_comap_subschemeι_of_isOpenImmersion U.ι
      (Scheme.IdealSheafData.vanishingIdeal T) p hT)

theorem smoothVanishingHypotheses_vanishingIdealAssignment :
    SmoothVanishingHypotheses (vanishingIdealAssignment.{u}) := by
  exact
    { orderAt_vanishing_eq_one := orderAt_vanishingIdealAssignment_eq_one
      smooth_opens_ι_comp := smooth_opens_ι_comp_of_smooth
      smooth_vanishing_hypersurface := smooth_vanishingIdealAssignment_of_isSmoothDivisor
      smooth_vanishing_opens := smooth_vanishingIdealAssignment_restrict_opens }

theorem smoothOrderOneCentersIsolated_vanishingIdealAssignment_of_principalizationCertificate {k : Type u} [Field k] [CharZero k]
    {W : Scheme.{u}} {p : W ⟶ Spec (CommRingCat.of k)} {I : W.IdealSheafData} {m : ℕ}
    {Mem : Set ↥W} {Z : W.IdealSheafData} (h : PrincipalizationCertificate W p I m Mem Z) :
    SmoothOrderOneCentersIsolated (vanishingIdealAssignment.{u}) W p I m Mem Z :=
  smoothOrderOneCentersIsolated_of_principalizationCertificate idealSheafGeometryHypotheses_vanishingIdealAssignment smoothVanishingHypotheses_vanishingIdealAssignment h

end OpenImmersionRestriction

theorem openImmersionStability (k : Type u) [Field k] : OpenImmersionStability.{u} k := by
  refine ⟨?_, ?_, ?_⟩
  · intro V W f hf J hJ
    have : IsOpenImmersion f := hf
    exact NonzeroOnComponents.comap_of_isOpenImmersion hJ f
  · intro V W f hf D
    have : IsOpenImmersion f := hf
    exact OpenImmersionRestriction.isOpenImmersion_subschemeMap f D (comapSubscheme f D) (comapSubscheme_comp f D)
  · intro V W f hf p D hD
    have : IsOpenImmersion f := hf
    exact OpenImmersionRestriction.isSmoothDivisor_comap f p D hD

theorem PrincipalizationCertificate.comap_of_isOpenImmersion {k : Type u} [Field k] {W : Scheme.{u}}
    {p : W ⟶ Spec (CommRingCat.of k)} {I : W.IdealSheafData} {m : ℕ} {Mem : Set ↥W}
    {Z : W.IdealSheafData} (h : PrincipalizationCertificate W p I m Mem Z) {V : Scheme.{u}} (f : V ⟶ W)
    [IsOpenImmersion f] :
    PrincipalizationCertificate V (f ≫ p) (I.comap f) m (f.base ⁻¹' Mem) (Z.comap f) :=
  h.comap_of_openImmersionStability (openImmersionStability k) f

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformIsolation.VanishingIdealHypotheses =====
