module

public import Mathlib.RingTheory.Derivation.Basic
public import Mathlib.RingTheory.Ideal.Maps
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdeal
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheaf
public import Mathlib.AlgebraicGeometry.IdealSheaf.Functorial
public import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.IdealSheafOrder
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafOrderDecrease
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformBasic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivationOfSurjective, Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealQuotient, Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheafClosedSubscheme, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.OrderLocusComparison

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivationOfSurjective =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivationOfSurjective", "h": "module\n\npublic import Mathlib.RingTheory.Derivation.Basic\npublic import Mathlib.RingTheory.Ideal.Maps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace FunctorialResolution.EmbeddedResolution

variable {k S T : Type*} [CommRing k] [CommRing S] [CommRing T]
  [Algebra k S] [Algebra k T]

theorem map_derivation_eq_of_map_eq (f : S →ₐ[k] T) (D : Derivation k S S)
    (hD : ∀ s ∈ RingHom.ker f.toRingHom, D s ∈ RingHom.ker f.toRingHom)
    {s s' : S} (h : f s = f s') : f (D s) = f (D s') := by
  have hker : s - s' ∈ RingHom.ker f.toRingHom := by
    simp [RingHom.mem_ker, h]
  have hD' := hD _ hker
  rw [RingHom.mem_ker, map_sub D s s'] at hD'
  have h2 : f (D s) - f (D s') = 0 := by
    rw [← map_sub f (D s) (D s')]
    exact hD'
  exact eq_of_sub_eq_zero h2

noncomputable def derivationOfSurjectiveFun (f : S →ₐ[k] T) (hf : Function.Surjective f)
    (D : Derivation k S S) : T → T :=
  fun t => f (D (Function.surjInv hf t))

theorem derivationOfSurjectiveFun_apply (f : S →ₐ[k] T) (hf : Function.Surjective f)
    (D : Derivation k S S)
    (hD : ∀ s ∈ RingHom.ker f.toRingHom, D s ∈ RingHom.ker f.toRingHom) (s : S) :
    derivationOfSurjectiveFun f hf D (f s) = f (D s) := by
  have h : f (Function.surjInv hf (f s)) = f s := Function.surjInv_eq hf (f s)
  exact map_derivation_eq_of_map_eq f D hD h

theorem derivationOfSurjectiveFun_add (f : S →ₐ[k] T) (hf : Function.Surjective f)
    (D : Derivation k S S)
    (hD : ∀ s ∈ RingHom.ker f.toRingHom, D s ∈ RingHom.ker f.toRingHom) :
    ∀ t t' : T, derivationOfSurjectiveFun f hf D (t + t')
      = derivationOfSurjectiveFun f hf D t + derivationOfSurjectiveFun f hf D t' := by
  intro t t'
  obtain ⟨a, rfl⟩ := hf t
  obtain ⟨b, rfl⟩ := hf t'
  rw [← map_add f a b]
  simp only [derivationOfSurjectiveFun_apply f hf D hD]
  rw [map_add D a b, map_add f (D a) (D b)]

theorem derivationOfSurjectiveFun_smul (f : S →ₐ[k] T) (hf : Function.Surjective f)
    (D : Derivation k S S)
    (hD : ∀ s ∈ RingHom.ker f.toRingHom, D s ∈ RingHom.ker f.toRingHom) :
    ∀ (c : k) (t : T), derivationOfSurjectiveFun f hf D (c • t) = c • derivationOfSurjectiveFun f hf D t := by
  intro c t
  obtain ⟨a, rfl⟩ := hf t
  have h1 : f (c • a) = c • f a := map_smul f c a
  have h2 : D (c • a) = c • D a := by
    simp
  have h3 : f (c • D a) = c • f (D a) := map_smul f c (D a)
  rw [← h1]
  simp only [derivationOfSurjectiveFun_apply f hf D hD]
  rw [h2]
  exact h3

noncomputable def derivationOfSurjectiveLinearMap (f : S →ₐ[k] T) (hf : Function.Surjective f)
    (D : Derivation k S S)
    (hD : ∀ s ∈ RingHom.ker f.toRingHom, D s ∈ RingHom.ker f.toRingHom) : T →ₗ[k] T where
  toFun := derivationOfSurjectiveFun f hf D
  map_add' := derivationOfSurjectiveFun_add f hf D hD
  map_smul' := derivationOfSurjectiveFun_smul f hf D hD

theorem derivationOfSurjectiveFun_one (f : S →ₐ[k] T) (hf : Function.Surjective f)
    (D : Derivation k S S)
    (hD : ∀ s ∈ RingHom.ker f.toRingHom, D s ∈ RingHom.ker f.toRingHom) :
    derivationOfSurjectiveFun f hf D 1 = 0 := by
  have h : (1 : T) = f 1 := (map_one f).symm
  rw [h]
  rw [derivationOfSurjectiveFun_apply f hf D hD, D.map_one_eq_zero, map_zero]

theorem derivationOfSurjectiveFun_mul (f : S →ₐ[k] T) (hf : Function.Surjective f)
    (D : Derivation k S S)
    (hD : ∀ s ∈ RingHom.ker f.toRingHom, D s ∈ RingHom.ker f.toRingHom) :
    ∀ a b : T, derivationOfSurjectiveFun f hf D (a * b)
      = a • derivationOfSurjectiveFun f hf D b + b • derivationOfSurjectiveFun f hf D a := by
  intro a b
  obtain ⟨x, rfl⟩ := hf a
  obtain ⟨y, rfl⟩ := hf b
  rw [← map_mul f x y]
  simp only [derivationOfSurjectiveFun_apply f hf D hD]
  rw [D.leibniz]
  simp [smul_eq_mul]

noncomputable def derivationOfSurjective (f : S →ₐ[k] T) (hf : Function.Surjective f)
    (D : Derivation k S S)
    (hD : ∀ s ∈ RingHom.ker f.toRingHom, D s ∈ RingHom.ker f.toRingHom) :
    Derivation k T T where
  toLinearMap := derivationOfSurjectiveLinearMap f hf D hD
  map_one_eq_zero' := derivationOfSurjectiveFun_one f hf D hD
  leibniz' := derivationOfSurjectiveFun_mul f hf D hD

@[simp]
theorem derivationOfSurjective_apply (f : S →ₐ[k] T) (hf : Function.Surjective f)
    (D : Derivation k S S)
    (hD : ∀ s ∈ RingHom.ker f.toRingHom, D s ∈ RingHom.ker f.toRingHom) (s : S) :
    derivationOfSurjective f hf D hD (f s) = f (D s) :=
  derivationOfSurjectiveFun_apply f hf D hD s

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivationOfSurjective =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealQuotient =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealQuotient", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdeal\npublic import Mathlib.RingTheory.Ideal.Maps\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivationOfSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace FunctorialResolution.EmbeddedResolution

variable (k : Type*) [CommRing k] {S T : Type*} [CommRing S] [CommRing T]
  [Algebra k S] [Algebra k T]

theorem map_logDerivIdeal_ker_le_derivIdeal_map (f : S →ₐ[k] T)
    (hf : Function.Surjective f) (J : Ideal S) :
    Ideal.map f.toRingHom (logDerivIdeal k (RingHom.ker f.toRingHom) J)
      ≤ derivIdeal k (Ideal.map f.toRingHom J) := by
  rw [Ideal.map_le_iff_le_comap, logDerivIdeal_le_iff]
  constructor
  · intro x hx
    rw [Ideal.mem_comap]
    exact le_derivIdeal k (Ideal.map f.toRingHom J) (Ideal.mem_map_of_mem f.toRingHom hx)
  · intro D hD x hx
    have hD' : ∀ s ∈ RingHom.ker f.toRingHom, D s ∈ RingHom.ker f.toRingHom :=
      (mem_tangentDerivations k (RingHom.ker f.toRingHom) D).mp hD
    have hmem : f x ∈ Ideal.map f.toRingHom J := Ideal.mem_map_of_mem f.toRingHom hx
    have h2 := derivation_apply_mem_derivIdeal k (Ideal.map f.toRingHom J)
      (derivationOfSurjective f hf D hD') hmem
    rw [derivationOfSurjective_apply] at h2
    rw [Ideal.mem_comap]
    exact h2

theorem map_logDerivIdealIterate_ker_le_derivIdealIterate_map (f : S →ₐ[k] T)
    (hf : Function.Surjective f) (r : ℕ) (J : Ideal S) :
    Ideal.map f.toRingHom (logDerivIdealIterate k (RingHom.ker f.toRingHom) r J)
      ≤ derivIdealIterate k r (Ideal.map f.toRingHom J) := by
  induction r with
  | zero => exact le_rfl
  | succ r ih =>
      rw [logDerivIdealIterate_succ, derivIdealIterate_succ]
      exact (map_logDerivIdeal_ker_le_derivIdeal_map k f hf _).trans (derivIdeal_mono k ih)

theorem map_logDerivIdealIterate_le_derivIdealIterate_map_of_eq_ker (f : S →ₐ[k] T)
    (hf : Function.Surjective f) {P : Ideal S} (hP : P = RingHom.ker f.toRingHom)
    (r : ℕ) (J : Ideal S) :
    Ideal.map f.toRingHom (logDerivIdealIterate k P r J)
      ≤ derivIdealIterate k r (Ideal.map f.toRingHom J) := by
  subst hP
  exact map_logDerivIdealIterate_ker_le_derivIdealIterate_map k f hf r J

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealQuotient =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheafClosedSubscheme =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheafClosedSubscheme", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheaf\npublic import Mathlib.AlgebraicGeometry.IdealSheaf.Functorial\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealQuotient\npublic import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.Morphisms.Proper\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open AlgebraicGeometry CategoryTheory TopologicalSpace

namespace FunctorialResolution.EmbeddedResolution

private theorem comp_app_apply {X Y Z : Scheme.{u}} (u : X ⟶ Y) (q : Y ⟶ Z) (U : Z.Opens)
    (a : Γ(Z, U)) : ((u ≫ q).app U).hom a = (u.app (q ⁻¹ᵁ U)).hom ((q.app U).hom a) := by
  have h : (u ≫ q).app U = q.app U ≫ u.app (q ⁻¹ᵁ U) := Scheme.Hom.comp_app u q U
  exact DFunLike.congr_fun (congrArg CommRingCat.Hom.hom h) a

private theorem comap_le_of_map_ideal_le {S X : Scheme.{u}} (ι : S ⟶ X) [IsAffineHom ι]
    (L : X.IdealSheafData) (D : S.IdealSheafData)
    (h : ∀ U : X.affineOpens, Ideal.map (ι.app (U : X.Opens)).hom (L.ideal U)
        ≤ D.ideal ⟨ι ⁻¹ᵁ (U : X.Opens), U.2.preimage ι⟩) :
    L.comap ι ≤ D := by
  have key : ∀ (U : X.affineOpens), L.ideal U
      ≤ RingHom.ker ((D.subschemeι ≫ ι).app (U : X.Opens)).hom := by
    intro U a ha
    have h1 := h U (Ideal.mem_map_of_mem _ ha)
    have h2 : (Scheme.Hom.ker D.subschemeι).ideal ⟨ι ⁻¹ᵁ (U : X.Opens), U.2.preimage ι⟩
        = RingHom.ker (D.subschemeι.app (ι ⁻¹ᵁ (U : X.Opens))).hom := by
      rw [Scheme.Hom.ker_apply]
    rw [Scheme.IdealSheafData.ker_subschemeι] at h2
    rw [h2] at h1
    refine RingHom.mem_ker.mpr ?_
    rw [comp_app_apply]
    exact RingHom.mem_ker.mp h1
  have hle : L ≤ Scheme.Hom.ker (D.subschemeι ≫ ι) := by
    unfold Scheme.Hom.ker
    exact Scheme.IdealSheafData.le_ofIdeals_iff.mpr key
  rw [← Scheme.IdealSheafData.le_map_iff_comap_le]
  exact hle

private theorem derivIdealIterate_mono_of_le (k : Type u) [CommRing k] {T : Type u} [CommRing T]
    [Algebra k T] (r : ℕ) {I J : Ideal T} (h : I ≤ J) :
    derivIdealIterate k r I ≤ derivIdealIterate k r J := by
  induction r with
  | zero => exact h
  | succ r ih =>
      rw [derivIdealIterate_succ, derivIdealIterate_succ]
      exact derivIdeal_mono k ih

private theorem app_comp_sectionsAlgebraMap (k : Type u) [CommRing k] {X S : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) (ι : S ⟶ X) (U : X.Opens) :
    (ι.app U).hom.comp (sectionsAlgebraMap k p U) = sectionsAlgebraMap k (ι ≫ p) (ι ⁻¹ᵁ U) := by
  have happ : ι.appLE U (ι ⁻¹ᵁ U) le_rfl = ι.app U := Scheme.Hom.appLE_eq_app ι
  have hc : p.appLE ⊤ U (le_preimage_top k p U) ≫ ι.appLE U (ι ⁻¹ᵁ U) le_rfl
      = (ι ≫ p).appLE ⊤ (ι ⁻¹ᵁ U) (le_preimage_top k (ι ≫ p) (ι ⁻¹ᵁ U)) :=
    Scheme.Hom.appLE_comp_appLE ι p ⊤ U (ι ⁻¹ᵁ U) (le_preimage_top k p U) le_rfl
  have hmor : ((Scheme.ΓSpecIso (CommRingCat.of k)).inv ≫ p.appLE ⊤ U (le_preimage_top k p U))
        ≫ ι.app U
      = (Scheme.ΓSpecIso (CommRingCat.of k)).inv
        ≫ (ι ≫ p).appLE ⊤ (ι ⁻¹ᵁ U) (le_preimage_top k (ι ≫ p) (ι ⁻¹ᵁ U)) := by
    rw [Category.assoc, ← happ, hc]
  rw [sectionsAlgebraMap_eq k p U, sectionsAlgebraMap_eq k (ι ≫ p) (ι ⁻¹ᵁ U)]
  exact congrArg CommRingCat.Hom.hom hmor

private theorem app_sectionsAlgebraMap (k : Type u) [CommRing k] {X S : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) (ι : S ⟶ X) (U : X.Opens) (a : k) :
    (ι.app U).hom (sectionsAlgebraMap k p U a) = sectionsAlgebraMap k (ι ≫ p) (ι ⁻¹ᵁ U) a :=
  DFunLike.congr_fun (app_comp_sectionsAlgebraMap k p ι U) a

private theorem map_logDerivIdealSheafIterate_ideal_le
    (k : Type u) [CommRing k] [IsNoetherianRing k] {X S : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [LocallyOfFiniteType p]
    (ι : S ⟶ X) [IsClosedImmersion ι] [LocallyOfFiniteType (ι ≫ p)]
    (A : X.IdealSheafData) (r : ℕ) (U : X.affineOpens) :
    Ideal.map (ι.app (U : X.Opens)).hom ((logDerivIdealSheafIterate k p ι.ker r A).ideal U)
      ≤ (derivIdealSheafIterate k (ι ≫ p) r (A.comap ι)).ideal
          ⟨ι ⁻¹ᵁ (U : X.Opens), U.2.preimage ι⟩ := by
  have hcomm : ∀ a : k,
      (ι.app (U : X.Opens)).hom
          (@algebraMap k _ _ _ (sectionsAlgebra k p (U : X.Opens)) a)
        = @algebraMap k _ _ _ (sectionsAlgebra k (ι ≫ p) (ι ⁻¹ᵁ (U : X.Opens))) a := by
    intro a
    have e1 : @algebraMap k _ _ _ (sectionsAlgebra k p (U : X.Opens))
        = sectionsAlgebraMap k p (U : X.Opens) :=
      algebraMap_sectionsAlgebra k p (U : X.Opens)
    have e2 : @algebraMap k _ _ _ (sectionsAlgebra k (ι ≫ p) (ι ⁻¹ᵁ (U : X.Opens)))
        = sectionsAlgebraMap k (ι ≫ p) (ι ⁻¹ᵁ (U : X.Opens)) :=
      algebraMap_sectionsAlgebra k (ι ≫ p) (ι ⁻¹ᵁ (U : X.Opens))
    rw [e1, e2]
    exact app_sectionsAlgebraMap k p ι (U : X.Opens) a
  have hmapLE : ∀ (V : S.affineOpens) (e : (V : S.Opens) ≤ ι ⁻¹ᵁ (U : X.Opens)),
      Ideal.map (ι.appLE (U : X.Opens) (V : S.Opens) e).hom (A.ideal U)
        ≤ (A.comap ι).ideal V := by
    intro V e
    apply Scheme.IdealSheafData.map_appLE_le_comap_ideal
  have hmap : Ideal.map (ι.app (U : X.Opens)).hom (A.ideal U)
      ≤ (A.comap ι).ideal ⟨ι ⁻¹ᵁ (U : X.Opens), U.2.preimage ι⟩ := by
    rw [Scheme.Hom.app_eq_appLE]
    exact hmapLE ⟨ι ⁻¹ᵁ (U : X.Opens), U.2.preimage ι⟩ le_rfl
  have halg := @map_logDerivIdealIterate_le_derivIdealIterate_map_of_eq_ker k _ _ _ _ _
      (sectionsAlgebra k p (U : X.Opens))
      (sectionsAlgebra k (ι ≫ p) (ι ⁻¹ᵁ (U : X.Opens)))
      (@AlgHom.mk k _ _ _ _ _ (sectionsAlgebra k p (U : X.Opens))
        (sectionsAlgebra k (ι ≫ p) (ι ⁻¹ᵁ (U : X.Opens))) (ι.app (U : X.Opens)).hom hcomm)
      (Scheme.Hom.app_surjective ι (U : X.Opens) U.2) _ rfl r (A.ideal U)
  rw [logDerivIdealSheafIterate_ideal, Scheme.Hom.ker_apply, derivIdealSheafIterate_ideal]
  refine le_trans halg ?_
  exact @derivIdealIterate_mono_of_le k _ _ _ (sectionsAlgebra k (ι ≫ p) (ι ⁻¹ᵁ (U : X.Opens))) r _ _
    hmap

private theorem logDerivIdealSheafIterate_comap_le_derivIdealSheafIterate
    (k : Type u) [CommRing k] [IsNoetherianRing k] {X S : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [LocallyOfFiniteType p]
    (ι : S ⟶ X) [IsClosedImmersion ι] [LocallyOfFiniteType (ι ≫ p)]
    (A : X.IdealSheafData) (r : ℕ) :
    (logDerivIdealSheafIterate k p ι.ker r A).comap ι
      ≤ derivIdealSheafIterate k (ι ≫ p) r (A.comap ι) :=
  comap_le_of_map_ideal_le ι (logDerivIdealSheafIterate k p ι.ker r A)
    (derivIdealSheafIterate k (ι ≫ p) r (A.comap ι))
    (map_logDerivIdealSheafIterate_ideal_le k p ι A r)

alias comap_logDerivIdealSheafIterate_ker_le_derivIdealSheafIterate := _root_.FunctorialResolution.EmbeddedResolution.logDerivIdealSheafIterate_comap_le_derivIdealSheafIterate

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheafClosedSubscheme =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.OrderLocusComparison =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.OrderLocusComparison", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.IdealSheafOrder\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheaf\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafOrderDecrease\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.LogDerivativeIdealSheafClosedSubscheme\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformBasic\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open AlgebraicGeometry CategoryTheory

namespace FunctorialResolution.EmbeddedResolution

section

variable (k : Type u) [Field k] [CharZero k] {X S : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (ι : S ⟶ X) [AlgebraicGeometry.IsClosedImmersion ι]
    [AlgebraicGeometry.Smooth (ι ≫ p)]

theorem base_mem_orderAtLeastLocus_of_mem_comap
    (m : ℕ) (hm : 1 ≤ m) (A : X.IdealSheafData) (K : ℕ → X.IdealSheafData)
    (hdom : derivIdealSheafIterate k p (m - 1) A
      ≤ ⨆ l ≤ m - 1, logDerivIdealSheafIterate k p ι.ker (m - 1 - l) (K l))
    (hbal : ∀ l < m, K l ^ m ≤ A ^ (m - l))
    (y : S) (hy : y ∈ orderAtLeastLocus (A.comap ι) m) :
    ι.base y ∈ orderAtLeastLocus A m := by
  have hsupp : ι.base y ∈
      (⨆ l ≤ m - 1, logDerivIdealSheafIterate k p ι.ker (m - 1 - l) (K l)).support := by
    refine mem_support_iSup_le_nat (m - 1)
      (fun l => logDerivIdealSheafIterate k p ι.ker (m - 1 - l) (K l)) (ι.base y) ?_
    intro l hl
    have hlm : l < m := by omega
    have hml : 1 ≤ m - l := by omega
    apply (Scheme.IdealSheafData.mem_support_comap).mp
    refine Scheme.IdealSheafData.support_antitone
      (comap_logDerivIdealSheafIterate_ker_le_derivIdealSheafIterate k p ι (K l) (m - 1 - l)) ?_
    have hpow : ((K l).comap ι) ^ m ≤ (A.comap ι) ^ (m - l) := by
      have h1 : (K l ^ m).comap ι ≤ (A ^ (m - l)).comap ι :=
        Scheme.IdealSheafData.comap_mono ι (hbal l hlm)
      rwa [Scheme.IdealSheafData.comap_pow, Scheme.IdealSheafData.comap_pow] at h1
    have hy2 : y ∈ orderAtLeastLocus ((K l).comap ι) (m - l) :=
      orderAtLeastLocus_subset_orderAtLeastLocus_of_pow_le k (ι ≫ p) ((K l).comap ι) (A.comap ι) l m hlm hpow hy
    have hstep := support_derivIdealSheafIterate_eq_orderAtLeastLocus k (ι ≫ p) ((K l).comap ι) hml
    rw [← hstep] at hy2
    have hexp : m - 1 - l = m - l - 1 := by omega
    rw [hexp]
    exact hy2
  rw [← support_derivIdealSheafIterate_eq_orderAtLeastLocus k p A hm]
  exact Scheme.IdealSheafData.support_antitone hdom hsupp

end

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.OrderLocusComparison =====
