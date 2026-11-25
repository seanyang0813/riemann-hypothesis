module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNearGaloisQuotient
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial
public import Mathlib.AlgebraicGeometry.AffineSpace
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleNearPointOfEtaleOnFibreSmooth
public import Mathlib.AlgebraicGeometry.Morphisms.Etale
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import Mathlib.AlgebraicGeometry.PullbackCarrier
public import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.AlgebraicGeometry.Restrict
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Over
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedPointRangeEqFixedGroupImageStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCoordinatesDescendAlongProperMapStatement
public import Mathlib.Order.CompletePartialOrder
public import Mathlib.AlgebraicGeometry.Morphisms.Basic
public import Mathlib.AlgebraicGeometry.Fiber
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppTopBijectiveAndSurjectiveNormalDomainStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreProjectiveEmbeddingFactorsProperStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Linter.Style
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Linter.HaveILetI
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfFieldPointsClosedFibreSameProjectiveImage, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordinateMapEtaleNearProperFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleCoordsLiftImmersion, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMemFibreOfGeometricLifting, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenEtaleRestrictOfUniversallyClosed, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackMorphismRestrictImageOfRestrictRestric, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartProductAtClosedPointClosedFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackRestrictISupOfForallRestrict, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemOfClosedPointsClosedFibreMem, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothISupOpensCompOfForallSmooth, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothModelNearClosedFibreEmbedding, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothModelNearClosedFibreEmbeddingStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfFieldPointsClosedFibreSameProjectiveImage =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfFieldPointsClosedFibreSameProjectiveImage", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

namespace ClosedInj

alias epi_spMap_field := _root_.GlobalTheory.ThetaDescent.epi_spMap

theorem exists_residue_factor {R Ω : Type} [CommRing R] [IsLocalRing R] [Field Ω] (y : Sp Ω ⟶ Sp R)
    (hy : ∀ t, y t = closedPoint R) : ∃ κ : ResidueField R →+* Ω, y = spMap (κ.comp (residue R)) := by
  set φ : R →+* Ω := (Spec.preimage y).hom with hφ
  have hyφ : y = spMap φ := (Spec.map_preimage y).symm
  have hker : ∀ a : R, a ∈ maximalIdeal R → φ a = 0 := by
    intro a ha
    have h1 := hy (IsLocalRing.closedPoint Ω)
    rw [hyφ] at h1
    have h2 : (PrimeSpectrum.comap φ (IsLocalRing.closedPoint Ω)).asIdeal = maximalIdeal R := by
      exact congrArg PrimeSpectrum.asIdeal h1
    rw [← h2] at ha
    have : φ a ∈ maximalIdeal Ω := ha
    rwa [IsLocalRing.maximalIdeal_eq_bot, Ideal.mem_bot] at this
  have : IsLocalHom φ := ⟨fun a ha => by
    by_contra h
    have := hker a ((IsLocalRing.mem_maximalIdeal a).2 h)
    rw [this] at ha
    exact not_isUnit_zero ha⟩
  exact ⟨ResidueField.lift φ, by rw [ResidueField.lift_comp_residue]; exact hyφ⟩

end ClosedInj


open ClosedInj in
theorem Emb.eq_of_closedFibre : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (M : Modif R) (G' : Over M.S) [GrpObj G'] (E : Emb M.π G') (Ω : Type) [Field Ω] (p p' : Sp Ω ⟶ E.H.toScheme), (∀ t, M.π (G'.hom (E.H.ι (p t))) = closedPoint R) → p ≫ E.H.ι ≫ G'.hom = p' ≫ E.H.ι ≫ G'.hom → p ≫ E.f = p' ≫ E.f → p = p' := by
  intro R _ _ _ M G' _ E Ω _ p p' hcl hs hf
  set s : Sp Ω ⟶ M.S := p ≫ E.H.ι ≫ G'.hom with hsdef
  obtain ⟨κ, hκ⟩ := exists_residue_factor (s ≫ M.π) (fun t => by simpa [s] using hcl t)
  obtain ⟨Ω', _, io, e, l, -, hl, hlf⟩ := E.fib Ω s κ hκ
  let q : Sp Ω' ⟶ pullback G'.hom (spMap io ≫ s) :=
    pullback.lift (spMap io ≫ p ≫ E.H.ι) (𝟙 _) (by simp [s])
  let q' : Sp Ω' ⟶ pullback G'.hom (spMap io ≫ s) :=
    pullback.lift (spMap io ≫ p' ≫ E.H.ι) (𝟙 _) (by simp [s, hs])
  have hq : q ≫ l = spMap io ≫ p := by
    rw [← cancel_mono E.H.ι]
    simp only [Category.assoc]
    erw [hl]
    exact pullback.lift_fst _ _ _
  have hq' : q' ≫ l = spMap io ≫ p' := by
    rw [← cancel_mono E.H.ι]
    simp only [Category.assoc]
    erw [hl]
    exact pullback.lift_fst _ _ _
  have hfst : q ≫ e.hom.left ≫ pullback.fst E.Y.hom (spMap (io.comp κ)) =
      q' ≫ e.hom.left ≫ pullback.fst E.Y.hom (spMap (io.comp κ)) := by
    have := E.imm
    rw [← cancel_mono E.j]
    simp only [Category.assoc]
    rw [← hlf, ← Category.assoc q, hq, ← Category.assoc q', hq', Category.assoc, Category.assoc, hf]
  have hw : e.hom.left ≫ pullback.snd E.Y.hom (spMap (io.comp κ)) = pullback.snd G'.hom (spMap io ≫ s) :=
    Over.w e.hom
  have hqe : q ≫ e.hom.left = q' ≫ e.hom.left := by
    apply pullback.hom_ext
    · simpa only [Category.assoc] using hfst
    · simp only [Category.assoc]
      rw [hw]
      exact (pullback.lift_snd _ _ _).trans (pullback.lift_snd _ _ _).symm
  have hqq : q = q' := by
    have := congrArg (· ≫ e.inv.left) hqe
    simpa [← Over.comp_left] using this
  have h2 : spMap io ≫ p = spMap io ≫ p' := by rw [← hq, ← hq', hqq]
  have := epi_spMap_field io
  exact (cancel_epi (spMap io)).1 h2

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfFieldPointsClosedFibreSameProjectiveImage =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordinateMapEtaleNearProperFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordinateMapEtaleNearProperFibre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\npublic import Mathlib.AlgebraicGeometry.AffineSpace\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleNearPointOfEtaleOnFibreSmooth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.FibEt

@[reassoc]
theorem map_fst' {X Y Z X' Y' Z' : Scheme.{0}} (f : X ⟶ Z) (g : Y ⟶ Z) (f' : X' ⟶ Z') (g' : Y' ⟶ Z') (i₁ : X ⟶ X')
    (i₂ : Y ⟶ Y') (i₃ : Z ⟶ Z') (h1 : f ≫ i₃ = i₁ ≫ f') (h2 : g ≫ i₃ = i₂ ≫ g') :
    pullback.map f g f' g' i₁ i₂ i₃ h1 h2 ≫ pullback.fst f' g' = pullback.fst f g ≫ i₁ :=
  pullback.lift_fst _ _ _

@[reassoc]
theorem map_snd' {X Y Z X' Y' Z' : Scheme.{0}} (f : X ⟶ Z) (g : Y ⟶ Z) (f' : X' ⟶ Z') (g' : Y' ⟶ Z') (i₁ : X ⟶ X')
    (i₂ : Y ⟶ Y') (i₃ : Z ⟶ Z') (h1 : f ≫ i₃ = i₁ ≫ f') (h2 : g ≫ i₃ = i₂ ≫ g') :
    pullback.map f g f' g' i₁ i₂ i₃ h1 h2 ≫ pullback.snd f' g' = pullback.snd f g ≫ i₂ :=
  pullback.lift_snd _ _ _

end GlobalTheory.Mum.FibEt

namespace GlobalTheory.Mum.FibEt

theorem exists_residue_factor {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} (π : S ⟶ Sp R) (s : S)
    (hs : π s = closedPoint R) :
    ∃ κ : ResidueField R →+* S.residueField s, S.fromSpecResidueField s ≫ π = spMap (κ.comp (residue R)) := by
  let φ := Spec.preimage (S.fromSpecResidueField s ≫ π)
  have hφ : Spec.map φ = S.fromSpecResidueField s ≫ π := Spec.map_preimage _
  have hpt : ∀ t : Spec (S.residueField s), (Spec.map φ) t = closedPoint R := by
    intro t
    rw [hφ, Scheme.Hom.comp_apply]
    have : S.fromSpecResidueField s t = s := by
      have := Set.mem_range_self (f := ⇑(S.fromSpecResidueField s)) t
      rwa [Scheme.range_fromSpecResidueField] at this
    rw [this, hs]
  have hker : ∀ r ∈ maximalIdeal R, φ.hom r = 0 := by
    intro r hr
    let t : Spec (S.residueField s) := closedPoint (S.residueField s)
    have h1 : (PrimeSpectrum.comap φ.hom t) = closedPoint R := hpt t
    have h2 : r ∈ (PrimeSpectrum.comap φ.hom t).asIdeal := by rw [h1]; exact hr
    simpa [t, closedPoint] using h2
  refine ⟨Ideal.Quotient.lift (maximalIdeal R) φ.hom hker, ?_⟩
  rw [← hφ]
  rfl

end GlobalTheory.Mum.FibEt

namespace GlobalTheory.Mum.FibEt

theorem smooth_affineSpace_sp (R : Type) [CommRing R] (g : ℕ) : Smooth (𝔸(Fin g; Sp R) ↘ Sp R) := by
  have e : (𝔸(Fin g; Sp R) ↘ Sp R) = (AffineSpace.isoOfIsAffine (Fin g) (Sp R)).hom ≫
      Spec.map (CommRingCat.ofHom MvPolynomial.C) ≫ (Sp R).isoSpec.inv := by
    rw [← AffineSpace.isoOfIsAffine_inv_over (n := Fin g) (S := Sp R), Iso.hom_inv_id_assoc]
  rw [e]
  haveI : Algebra.Smooth Γ(Sp R, ⊤) (MvPolynomial (Fin g) Γ(Sp R, ⊤)) := ⟨inferInstance, inferInstance⟩
  have : Smooth (Spec.map (CommRingCat.ofHom (MvPolynomial.C (R := Γ(Sp R, ⊤)) (σ := Fin g)))) := by
    rw [HasRingHomProperty.Spec_iff (P := @Smooth)]
    exact RingHom.smooth_algebraMap.mpr inferInstance
  infer_instance

end GlobalTheory.Mum.FibEt



theorem GlobalTheory.Mum.fibre_etale_near : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (M : Modif R) (G' : Over M.S) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (E : Emb M.π G') (P' : Scheme.{0}) (b : P' ⟶ PSpace R E.N) (X : E.H.toScheme.Opens) (a : X.toScheme ⟶ P'), a ≫ b = X.ι ≫ E.f → ∀ (x : P') (y : E.Y.left), E.j y = b x → (b ≫ PSpace.str R E.N) x = closedPoint R → ∀ (W0 : (PSpace R E.N).Opens) (g : ℕ) (τ0 : W0.toScheme ⟶ 𝔸(Fin g; Sp R)) (O : E.Y.left.Opens) (e : O.toScheme ⟶ pullback (𝔸(Fin g; Sp R) ↘ Sp R) (spMap (residue R))), y ∈ O → (O : Set E.Y.left) ⊆ E.j ⁻¹' W0 → τ0 ≫ (𝔸(Fin g; Sp R) ↘ Sp R) = W0.ι ≫ PSpace.str R E.N → Etale e → e ≫ pullback.snd _ _ = O.ι ≫ E.Y.hom → (∀ (T : Scheme.{0}) (t : T ⟶ O.toScheme) (w : T ⟶ W0.toScheme), w ≫ W0.ι = t ≫ O.ι ≫ E.j → t ≫ e ≫ pullback.fst _ _ = w ≫ τ0) → ∀ (c : (a ⁻¹ᵁ (b ⁻¹ᵁ W0)).toScheme ⟶ pullback (𝔸(Fin g; Sp R) ↘ Sp R) M.π), c ≫ pullback.fst _ _ = (a ∣_ (b ⁻¹ᵁ W0)) ≫ (b ∣_ W0) ≫ τ0 → c ≫ pullback.snd _ _ = (a ⁻¹ᵁ (b ⁻¹ᵁ W0)).ι ≫ X.ι ≫ E.H.ι ≫ G'.hom → ∀ z : (a ⁻¹ᵁ (b ⁻¹ᵁ W0)).toScheme, ((a ⁻¹ᵁ (b ⁻¹ᵁ W0)).ι ≫ a) z = x → ∃ U : (a ⁻¹ᵁ (b ⁻¹ᵁ W0)).toScheme.Opens, z ∈ U ∧ Etale (U.ι ≫ c) := by
  intro R _ _ _ hR M G' _ _ hG E P' b X a hab x y hyb hx0 W0 g τ0 O e hyO hOW hτ0 he he2 he3 c hc1 hc2 z hz
  haveI : Smooth G'.hom := hG.smooth
  haveI : Smooth (𝔸(Fin g; Sp R) ↘ Sp R) := FibEt.smooth_affineSpace_sp R g
  haveI : Etale e := he
  let iV : (a ⁻¹ᵁ (b ⁻¹ᵁ W0)).toScheme ⟶ G'.left := (a ⁻¹ᵁ (b ⁻¹ᵁ W0)).ι ≫ X.ι ≫ E.H.ι
  let p : (a ⁻¹ᵁ (b ⁻¹ᵁ W0)).toScheme ⟶ M.S := iV ≫ G'.hom
  have hh : c ≫ pullback.snd (𝔸(Fin g; Sp R) ↘ Sp R) M.π = p := by
    rw [hc2]; simp only [p, iV, Category.assoc]
  have hp : Smooth p := by dsimp only [p, iV]; infer_instance
  have key : a ≫ b ≫ PSpace.str R E.N = X.ι ≫ E.H.ι ≫ G'.hom ≫ M.π := by rw [reassoc_of% hab, E.f_over]
  have hs : M.π (p z) = closedPoint R := by
    have h1 := congrArg (fun f : X.toScheme ⟶ Sp R => f ((a ⁻¹ᵁ (b ⁻¹ᵁ W0)).ι z)) key
    simp only [Scheme.Hom.comp_apply] at h1 hz ⊢
    simp only [p, iV, Scheme.Hom.comp_apply]
    rw [← h1, hz]
    simpa [Scheme.Hom.comp_apply] using hx0
  obtain ⟨κ, hκ⟩ := FibEt.exists_residue_factor M.π (p z) hs
  obtain ⟨Ω', _, io, eG, l, -, hl1, hl2⟩ := E.fib (M.S.residueField (p z)) (M.S.fromSpecResidueField (p z)) κ hκ

  let Vs := (a ⁻¹ᵁ (b ⁻¹ᵁ W0))
  let x' : Sp Ω' ⟶ M.S := spMap io ≫ M.S.fromSpecResidueField (p z)
  let k' : Sp Ω' ⟶ Sp (ResidueField R) := spMap (io.comp κ)
  have hxk : x' ≫ M.π = k' ≫ spMap (residue R) := by
    simp only [x', k', Category.assoc, hκ, ← Spec.map_comp]; rfl
  have hpt : x' (closedPoint Ω') = p z := by
    simp only [x']
    have := Set.mem_range_self (f := ⇑(M.S.fromSpecResidueField (p z))) ((spMap io) (closedPoint Ω'))
    rwa [Scheme.range_fromSpecResidueField] at this
  obtain ⟨w, hw1, -⟩ := Scheme.Pullback.exists_preimage_pullback (f := p) (g := x') z (closedPoint Ω') hpt.symm
  let mG : pullback p x' ⟶ pullback G'.hom x' :=
    pullback.map p x' G'.hom x' iV (𝟙 _) (𝟙 _) (by simp [p]) (by simp)
  let gm : pullback p x' ⟶ pullback E.Y.hom k' := mG ≫ eG.hom.left
  have hgms : gm ≫ pullback.snd E.Y.hom k' = pullback.snd p x' := by
    have hA : eG.hom.left ≫ pullback.snd E.Y.hom k' = pullback.snd G'.hom x' := Over.w eG.hom
    simp only [gm, Category.assoc, hA, mG, FibEt.map_snd', Category.comp_id]
  have E1 : mG ≫ l = pullback.fst p x' ≫ Vs.ι ≫ X.ι := by
    rw [← cancel_mono E.H.ι, Category.assoc, hl1]
    exact FibEt.map_fst' _ _ _ _ _ _ _ _ _
  have E2 : gm ≫ pullback.fst E.Y.hom k' ≫ E.j = pullback.fst p x' ≫ Vs.ι ≫ a ≫ b := by
    simp only [gm, Category.assoc]
    erw [← hl2]
    rw [reassoc_of% E1, hab]
  have hgmw : (gm ≫ pullback.fst E.Y.hom k') w = y := by
    haveI : IsImmersion E.j := E.imm
    apply E.j.isEmbedding.injective
    have h := congrArg (fun f : pullback p x' ⟶ PSpace R E.N => f w) E2
    simp only [Scheme.Hom.comp_apply] at h hz ⊢
    rw [h, hw1, hz, hyb]
  let Wo : (pullback p x').Opens := (gm ≫ pullback.fst E.Y.hom k') ⁻¹ᵁ O
  have hwW : w ∈ Wo := by
    show (gm ≫ pullback.fst E.Y.hom k') w ∈ O
    rw [hgmw]; exact hyO

  let A := 𝔸(Fin g; Sp R) ↘ Sp R
  let Oy := pullback (O.ι ≫ E.Y.hom) k'
  let eΩ : Oy ⟶ pullback (pullback.snd A (spMap (residue R))) k' :=
    pullback.map (O.ι ≫ E.Y.hom) k' (pullback.snd A (spMap (residue R))) k' e (𝟙 _) (𝟙 _)
      (by rw [Category.comp_id, he2]) (by simp)
  haveI : MorphismProperty.IsStableUnderComposition @Etale := MorphismProperty.IsMultiplicative.toIsStableUnderComposition
  have heΩ : Etale eΩ :=
    MorphismProperty.pullbackMap (P := @Etale) (f := O.ι ≫ E.Y.hom) (g := k') (f' := pullback.snd A (spMap (residue R)))
      (g' := k') (i₁ := e) (i₂ := 𝟙 _) he inferInstance he2.symm (by simp)
  let θ : pullback (pullback.snd A (spMap (residue R))) k' ⟶ pullback (pullback.snd A M.π) x' :=
    (pullbackLeftPullbackSndIso A (spMap (residue R)) k').hom ≫ (pullback.congrHom rfl hxk.symm).hom ≫
      (pullbackLeftPullbackSndIso A M.π x').inv
  have hθ1 : θ ≫ pullback.fst (pullback.snd A M.π) x' ≫ pullback.fst A M.π =
      pullback.fst (pullback.snd A (spMap (residue R))) k' ≫ pullback.fst A (spMap (residue R)) := by
    simp only [θ, Category.assoc, pullbackLeftPullbackSndIso_inv_fst, pullback.congrHom_hom, FibEt.map_fst',
      Category.comp_id, pullbackLeftPullbackSndIso_hom_fst]
  have hθ2 : θ ≫ pullback.fst (pullback.snd A M.π) x' ≫ pullback.snd A M.π =
      pullback.snd (pullback.snd A (spMap (residue R))) k' ≫ x' := by
    simp only [θ, Category.assoc, pullbackLeftPullbackSndIso_inv_fst_snd, pullback.congrHom_hom, FibEt.map_snd'_assoc,
      Category.id_comp]
    simp
  have hθ3 : θ ≫ pullback.snd (pullback.snd A M.π) x' = pullback.snd (pullback.snd A (spMap (residue R))) k' := by
    simp only [θ, Category.assoc, pullbackLeftPullbackSndIso_inv_snd_snd, pullback.congrHom_hom, FibEt.map_snd',
      Category.comp_id]
    simp

  let ψ : Wo.toScheme ⟶ Oy :=
    pullback.lift ((gm ≫ pullback.fst E.Y.hom k') ∣_ O) (Wo.ι ≫ gm ≫ pullback.snd E.Y.hom k') (by
      rw [← Category.assoc, morphismRestrict_ι]
      simp only [Category.assoc, pullback.condition]
      rfl)
  have hψ1 : ψ ≫ pullback.fst (O.ι ≫ E.Y.hom) k' = (gm ≫ pullback.fst E.Y.hom k') ∣_ O := pullback.lift_fst _ _ _
  have hψ2 : ψ ≫ pullback.snd (O.ι ≫ E.Y.hom) k' = Wo.ι ≫ gm ≫ pullback.snd E.Y.hom k' := pullback.lift_snd _ _ _
  let jO : Oy ⟶ pullback E.Y.hom k' :=
    pullback.map (O.ι ≫ E.Y.hom) k' E.Y.hom k' O.ι (𝟙 _) (𝟙 _) (by simp) (by simp)
  haveI : IsOpenImmersion jO :=
    MorphismProperty.pullbackMap (P := @IsOpenImmersion) (f := O.ι ≫ E.Y.hom) (g := k') (f' := E.Y.hom) (g' := k')
      (i₁ := O.ι) (i₂ := 𝟙 _) inferInstance inferInstance rfl (by simp)
  haveI : IsOpenImmersion mG :=
    MorphismProperty.pullbackMap (P := @IsOpenImmersion) (f := p) (g := x') (f' := G'.hom) (g' := x')
      (i₁ := iV) (i₂ := 𝟙 _) (by dsimp only [iV]; infer_instance) inferInstance rfl (by simp)
  haveI : IsIso eG.hom.left := by
    show IsIso ((Over.forget _).map eG.hom); infer_instance
  have hψj : ψ ≫ jO = Wo.ι ≫ gm := by
    apply pullback.hom_ext
    · dsimp only [jO]
      rw [Category.assoc, FibEt.map_fst', reassoc_of% hψ1, morphismRestrict_ι]
      simp only [Category.assoc]
      rfl
    · dsimp only [jO]
      rw [Category.assoc, FibEt.map_snd', Category.comp_id, hψ2]
      simp only [Category.assoc]
  haveI : IsOpenImmersion (ψ ≫ jO) := by rw [hψj]; dsimp only [gm]; infer_instance
  haveI : IsOpenImmersion ψ := IsOpenImmersion.of_comp ψ jO
  have hEq : Wo.ι ≫ pullback.map p x' (pullback.snd A M.π) x' c (𝟙 _) (𝟙 _) (by rw [Category.comp_id, hh]) (by simp) = ψ ≫ eΩ ≫ θ := by
    apply pullback.hom_ext
    · apply pullback.hom_ext
      · have hcond : (Wo.ι ≫ pullback.fst p x' ≫ (a ∣_ (b ⁻¹ᵁ W0)) ≫ (b ∣_ W0)) ≫ W0.ι =
            ((gm ≫ pullback.fst E.Y.hom k') ∣_ O) ≫ O.ι ≫ E.j := by
          simp only [Category.assoc, morphismRestrict_ι, morphismRestrict_ι_assoc]
          rw [E2]
        simp only [Category.assoc]
        rw [hθ1, FibEt.map_fst'_assoc, hc1]
        dsimp only [eΩ]
        rw [FibEt.map_fst'_assoc, reassoc_of% hψ1, he3 _ _ _ hcond]
        simp only [Category.assoc]
      · simp only [Category.assoc]
        rw [hθ2, FibEt.map_fst'_assoc, hh]
        dsimp only [eΩ]
        rw [FibEt.map_snd'_assoc, Category.id_comp, reassoc_of% hψ2]
        rw [reassoc_of% hgms, pullback.condition]
    · simp only [Category.assoc]
      rw [hθ3, FibEt.map_snd', Category.comp_id]
      dsimp only [eΩ]
      rw [FibEt.map_snd', Category.comp_id, hψ2, hgms]
  have hEt : Etale (Wo.ι ≫ pullback.map p x' (pullback.snd A M.π) x' c (𝟙 _) (𝟙 _) (by rw [Category.comp_id, hh]) (by simp)) := by
    rw [hEq]; infer_instance
  obtain ⟨U, hU, hUe⟩ := GlobalTheory.Mum.etale_near_of_etale_fibre M.S Vs.toScheme _ p (pullback.snd A M.π) c hh hp inferInstance Ω' x' Wo w hwW hEt
  exact ⟨U, hw1 ▸ hU, hUe⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordinateMapEtaleNearProperFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleCoordsLiftImmersion =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleCoordsLiftImmersion", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineSpace\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.EtLift

theorem exists_etale_to_affineSpace {k : CommRingCat.{0}} {X : Scheme.{0}} (f : X ⟶ Spec k) [Smooth f]
    (x : X) : ∃ (V : X.Opens) (n : ℕ) (u : V.toScheme ⟶ 𝔸(Fin n; Spec k)), x ∈ V ∧ Etale u ∧
      u ≫ (𝔸(Fin n; Spec k) ↘ Spec k) = V.ι ≫ f := by
  obtain ⟨U, hU, V, hV, hxV, e, hs⟩ := Smooth.exists_isStandardSmooth f x
  obtain ⟨n, g, hgC, hg⟩ := RingHom.IsStandardSmooth.exists_etale_mvPolynomial hs
  have hmap : Etale (AffineSpace.map (Fin n) hU.fromSpec) :=
    MorphismProperty.of_isPullback (P := @Etale) (AffineSpace.isPullback_map (n := Fin n) hU.fromSpec).flip inferInstance
  have hSg : Etale (Spec.map (CommRingCat.ofHom g)) := HasRingHomProperty.Spec_iff.mpr hg
  refine ⟨V, n, hV.isoSpec.hom ≫ Spec.map (CommRingCat.ofHom g) ≫ (AffineSpace.SpecIso (Fin n) _).inv ≫
    AffineSpace.map (Fin n) hU.fromSpec, hxV, inferInstance, ?_⟩
  simp only [Category.assoc, AffineSpace.map_over, AffineSpace.SpecIso_inv_over_assoc, ← Spec.map_comp_assoc,
    ← CommRingCat.ofHom_comp, hgC]
  rw [CommRingCat.ofHom_hom, IsAffineOpen.SpecMap_appLE_fromSpec f hU hV e, hV.isoSpec_hom_fromSpec_assoc]

theorem exists_surjective_appTop {Y P : Scheme.{0}} (j : Y ⟶ P) [IsImmersion j] (y : Y) (U : Y.Opens)
    (hy : y ∈ U) : ∃ W : P.Opens, j y ∈ W ∧ j ⁻¹ᵁ W ≤ U ∧ Function.Surjective (j ∣_ W).appTop := by
  obtain ⟨O, hO, hOU⟩ := j.isEmbedding.isInducing.isOpen_iff.mp U.isOpen
  have hyC : j y ∈ (j.coborderRange : Set P) := subset_coborder ⟨y, rfl⟩
  have hyO : j y ∈ O := by
    rw [← Set.mem_preimage, hOU]; exact hy
  obtain ⟨_, ⟨W, hW, rfl⟩, hxW, hWs⟩ := P.isBasis_affineOpens.exists_subset_of_mem_open
    (show j y ∈ O ∩ (j.coborderRange : Set P) from ⟨hyO, hyC⟩) (hO.inter j.coborderRange.isOpen)
  refine ⟨W, hxW, ?_, ?_⟩
  · intro z hz
    show z ∈ (U : Set Y)
    rw [← hOU]
    exact (hWs hz).1
  · have : IsAffine W := hW
    have key : Set.range (j ∣_ W) = (Scheme.Opens.ι W) ⁻¹' closure (Set.range j) := by
      ext x
      constructor
      · rintro ⟨z, rfl⟩
        apply subset_closure
        refine ⟨(j ⁻¹ᵁ W).ι z, ?_⟩
        rw [← Scheme.Hom.comp_apply, ← morphismRestrict_ι, Scheme.Hom.comp_apply]
      · intro hx
        have hxW' : (Scheme.Opens.ι W) x ∈ (W : Set P) := by
          rw [← Scheme.Opens.range_ι]; exact ⟨x, rfl⟩
        have hxC : (Scheme.Opens.ι W) x ∈ (j.coborderRange : Set P) := (hWs hxW').2
        have h3 : (Scheme.Opens.ι W) x ∈ closure (Set.range j) ∩ coborder (Set.range j) := ⟨hx, hxC⟩
        rw [closure_inter_coborder] at h3
        obtain ⟨z, hz⟩ := h3
        have hzW : z ∈ j ⁻¹ᵁ W := by
          show j z ∈ W; rw [hz]; exact hxW'
        obtain ⟨z', hz'⟩ : z ∈ Set.range (j ⁻¹ᵁ W).ι := by
          rw [Scheme.Opens.range_ι]; exact hzW
        refine ⟨z', (Scheme.Opens.ι W).isOpenEmbedding.injective ?_⟩
        rw [← Scheme.Hom.comp_apply, morphismRestrict_ι, Scheme.Hom.comp_apply, hz', hz]
    have : IsClosedImmersion (j ∣_ W) := by
      refine .of_isPreimmersion _ ?_
      rw [key]
      exact isClosed_closure.preimage (Scheme.Opens.ι W).continuous
    exact (IsClosedImmersion.isAffine_surjective_of_isAffine (j ∣_ W)).2

end GlobalTheory.Mum.EtLift


open GlobalTheory.Mum.EtLift in
theorem GlobalTheory.Mum.exists_etale_coords_lift_immersion : ∀ (R : Type) [CommRing R] [IsLocalRing R] (N : ℕ) (Y : Over (Sp (ResidueField R))), Smooth Y.hom → ∀ (j : Y.left ⟶ PSpace R N), IsImmersion j → j ≫ PSpace.str R N = Y.hom ≫ spMap (residue R) → ∀ y : Y.left, ∃ (W0 : (PSpace R N).Opens) (g : ℕ) (τ0 : W0.toScheme ⟶ 𝔸(Fin g; Sp R)) (O : Y.left.Opens) (e : O.toScheme ⟶ pullback (𝔸(Fin g; Sp R) ↘ Sp R) (spMap (residue R))), y ∈ O ∧ (O : Set Y.left) ⊆ j ⁻¹' W0 ∧ τ0 ≫ (𝔸(Fin g; Sp R) ↘ Sp R) = W0.ι ≫ PSpace.str R N ∧ Etale e ∧ e ≫ pullback.snd _ _ = O.ι ≫ Y.hom ∧ ∀ (T : Scheme.{0}) (t : T ⟶ O.toScheme) (w : T ⟶ W0.toScheme), w ≫ W0.ι = t ≫ O.ι ≫ j → t ≫ e ≫ pullback.fst _ _ = w ≫ τ0 := by
  intro R _ _ N Y hsm j hj hjs y
  have : Smooth Y.hom := hsm
  obtain ⟨V, g, u, hyV, hu, huo⟩ := exists_etale_to_affineSpace (k := CommRingCat.of (ResidueField R)) Y.hom y
  have huo' : u ≫ (𝔸(Fin g; Sp (ResidueField R)) ↘ Sp (ResidueField R)) = V.ι ≫ Y.hom := huo
  obtain ⟨W, hyW, hWV, hsurj⟩ := exists_surjective_appTop j y V hyV
  let u' : (j ⁻¹ᵁ W).toScheme ⟶ 𝔸(Fin g; Sp (ResidueField R)) := Y.left.homOfLE hWV ≫ u
  have hu' : Etale u' := by
    have : Etale (Y.left.homOfLE hWV) := inferInstance
    exact inferInstanceAs (Etale (Y.left.homOfLE hWV ≫ u))
  choose s hs using fun i : Fin g => hsurj (u'.appTop (AffineSpace.coord (Sp (ResidueField R)) i))
  let τ0 : W.toScheme ⟶ 𝔸(Fin g; Sp R) := AffineSpace.homOfVector (W.ι ≫ PSpace.str R N) s
  have hP := AffineSpace.isPullback_map (n := Fin g) (spMap (residue R))
  have hfst : u' ≫ AffineSpace.map (Fin g) (spMap (residue R)) = (j ∣_ W) ≫ τ0 := by
    apply AffineSpace.hom_ext
    · simp only [Category.assoc, AffineSpace.map_over, τ0, AffineSpace.homOfVector_over, u']
      rw [reassoc_of% huo', Scheme.homOfLE_ι_assoc, ← Category.assoc (j ∣_ W), morphismRestrict_ι,
        Category.assoc, hjs]
    · intro i
      simp only [Scheme.Hom.comp_appTop, CommRingCat.comp_apply, AffineSpace.map_appTop_coord, τ0,
        AffineSpace.homOfVector_appTop_coord]
      exact (hs i).symm
  refine ⟨W, g, τ0, j ⁻¹ᵁ W, u' ≫ hP.isoPullback.hom, hyW, fun z hz => hz,
    AffineSpace.homOfVector_over _ _, inferInstance, ?_, ?_⟩
  · simp only [Category.assoc, IsPullback.isoPullback_hom_snd, u']
    rw [huo', Scheme.homOfLE_ι_assoc]
  · intro T t w hw
    have hfst' : Y.left.homOfLE hWV ≫ u ≫ AffineSpace.map (Fin g) (spMap (residue R)) = (j ∣_ W) ≫ τ0 := by
      rw [← Category.assoc]; exact hfst
    rw [Category.assoc, Category.assoc, IsPullback.isoPullback_hom_fst]
    rw [hfst', ← Category.assoc]
    congr 1
    rw [← cancel_mono W.ι, Category.assoc, morphismRestrict_ι, hw]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleCoordsLiftImmersion =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMemFibreOfGeometricLifting =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMemFibreOfGeometricLifting", "h": "module\n\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.PullbackCarrier\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_mem_fibre_of_geometric_lifting :
    ∀ (R : Type) [CommRing R] [IsLocalRing R] (S P' X : Scheme.{0}) (π : S ⟶ Sp R) (h : P' ⟶ Sp R) (a : X ⟶ P') (q : X ⟶ S), Surjective π → ∀ x : P', h x = closedPoint R → (∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (ξ : Sp Ω ⟶ P') (s : Sp Ω ⟶ S), Set.range ξ = {x} → ξ ≫ h = s ≫ π → ∃ p : Sp Ω ⟶ X, p ≫ a = ξ ∧ p ≫ q = s) → ∃ z : X, a z = x := by
  intro R _ _ S P' X π h a q hπ x hx H
  obtain ⟨s₀, hs₀⟩ := π.surjective (h x)
  obtain ⟨w, hw, -⟩ := Scheme.Pullback.exists_preimage_pullback (f := h) (g := π) x s₀ hs₀.symm
  let Ω : Type := AlgebraicClosure ((pullback h π).residueField w)
  let t : Sp Ω ⟶ pullback h π :=
    Spec.map (CommRingCat.ofHom (algebraMap ((pullback h π).residueField w) Ω)) ≫
      (pullback h π).fromSpecResidueField w
  have ht : ∀ y, t y = w := by
    intro y
    simp only [t, Scheme.Hom.comp_apply]
    exact Scheme.fromSpecResidueField_apply _ _
  have hξ : ∀ y, (t ≫ pullback.fst h π) y = x := by
    intro y
    rw [Scheme.Hom.comp_apply, ht, hw]
  obtain ⟨p, hp, -⟩ := H Ω (t ≫ pullback.fst h π) (t ≫ pullback.snd h π)
    (by
      ext y
      constructor
      · rintro ⟨u, rfl⟩
        exact hξ u
      · rintro rfl
        exact ⟨closedPoint Ω, hξ _⟩)
    (by simp [pullback.condition])
  refine ⟨p (closedPoint Ω), ?_⟩
  have h₀ := hξ (closedPoint Ω)
  rw [← hp] at h₀
  exact (Scheme.Hom.comp_apply p a _).symm.trans h₀

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMemFibreOfGeometricLifting =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenEtaleRestrictOfUniversallyClosed =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenEtaleRestrictOfUniversallyClosed", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory

theorem exists_open_etale_restrict_of_universallyClosed : ∀ (X P' T : Scheme.{0}) (a : X ⟶ P') (W1 : P'.Opens) (c : (a ⁻¹ᵁ W1).toScheme ⟶ T) (x : P'), UniversallyClosed a → x ∈ W1 → (∀ z : (a ⁻¹ᵁ W1).toScheme, ((a ⁻¹ᵁ W1).ι ≫ a) z = x → ∃ U : (a ⁻¹ᵁ W1).toScheme.Opens, z ∈ U ∧ Etale (U.ι ≫ c)) → ∃ W : P'.Opens, W ≤ W1 ∧ x ∈ W ∧ ∀ hle : a ⁻¹ᵁ W ≤ a ⁻¹ᵁ W1, Etale (X.homOfLE hle ≫ c) := by
  intro X P' T a W1 c x ha hx hloc
  have hEt : IsZariskiLocalAtSource @Etale := HasRingHomProperty.instIsZariskiLocalAtSource
  let S : Set (a ⁻¹ᵁ W1).toScheme := {z | ∃ U : (a ⁻¹ᵁ W1).toScheme.Opens, z ∈ U ∧ Etale (U.ι ≫ c)}
  have hS : IsOpen S := by
    rw [isOpen_iff_forall_mem_open]
    rintro z ⟨U, hz, hU⟩
    exact ⟨U, fun y hy => ⟨U, hy, hU⟩, U.isOpen, hz⟩
  let Z : Set X := ((a ⁻¹ᵁ W1).ι '' S)ᶜ
  have hZ : IsClosed Z := ((a ⁻¹ᵁ W1).ι.isOpenEmbedding.isOpenMap _ hS).isClosed_compl
  have haZ : IsClosed (a '' Z) := a.isClosedMap _ hZ
  refine ⟨W1 ⊓ ⟨(a '' Z)ᶜ, haZ.isOpen_compl⟩, inf_le_left, ⟨hx, ?_⟩, ?_⟩
  · rintro ⟨z, hzZ, hzx⟩
    apply hzZ
    have hz1 : z ∈ a ⁻¹ᵁ W1 := by
      show a z ∈ W1
      rw [hzx]; exact hx
    have hι : (a ⁻¹ᵁ W1).ι ⟨z, hz1⟩ = z := Scheme.Opens.ι_apply _ _
    refine ⟨⟨z, hz1⟩, hloc ⟨z, hz1⟩ ?_, hι⟩
    exact (Scheme.Hom.comp_apply _ _ _).trans (by rw [hι]; exact hzx)
  · intro hle
    have hcov : ∀ w : (a ⁻¹ᵁ (W1 ⊓ ⟨(a '' Z)ᶜ, haZ.isOpen_compl⟩)).toScheme,
        ∃ U : (a ⁻¹ᵁ W1).toScheme.Opens, X.homOfLE hle w ∈ U ∧ Etale (U.ι ≫ c) := by
      intro w
      have hw : a w.1 ∉ a '' Z := w.2.2
      have hw' : w.1 ∉ Z := fun h => hw ⟨w.1, h, rfl⟩
      simp only [Z, Set.mem_compl_iff, not_not] at hw'
      obtain ⟨s, ⟨U, hsU, hU⟩, hs⟩ := hw'
      refine ⟨U, ?_, hU⟩
      have : X.homOfLE hle w = s :=
        Subtype.ext ((Scheme.homOfLE_apply hle w).trans (hs.symm.trans (Scheme.Opens.ι_apply _ s)))
      rw [this]; exact hsU
    choose U hwU hU using hcov
    refine IsZariskiLocalAtSource.of_iSup_eq_top (fun w => (X.homOfLE hle) ⁻¹ᵁ (U w)) ?_ fun w => ?_
    · rw [eq_top_iff]
      intro w _
      exact TopologicalSpace.Opens.mem_iSup.mpr ⟨w, hwU w⟩
    · rw [← Category.assoc, ← Scheme.Hom.resLE_comp_ι (X.homOfLE hle) (le_refl ((X.homOfLE hle) ⁻¹ᵁ U w)), Category.assoc]
      haveI : IsOpenImmersion ((X.homOfLE hle).resLE (U w) ((X.homOfLE hle) ⁻¹ᵁ U w) le_rfl) := by
        have h2 : IsOpenImmersion ((X.homOfLE hle).resLE (U w) ((X.homOfLE hle) ⁻¹ᵁ U w) le_rfl ≫ (U w).ι) := by
          rw [Scheme.Hom.resLE_comp_ι]; infer_instance
        exact IsOpenImmersion.of_comp _ (U w).ι
      exact IsZariskiLocalAtSource.comp (hU w) _

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenEtaleRestrictOfUniversallyClosed =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackMorphismRestrictImageOfRestrictRestric =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackMorphismRestrictImageOfRestrictRestric", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Restrict\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory

theorem isPullback_morphismRestrict_image_of_restrict_restrict :
    ∀ (P' X S T : Scheme.{0}) (a : X ⟶ P') (W : P'.Opens) (V : W.toScheme.Opens) (q : X ⟶ S)
      (h : P' ⟶ T) (π : S ⟶ T),
      IsPullback ((a ∣_ W) ∣_ V) (((a ∣_ W) ⁻¹ᵁ V).ι ≫ (a ⁻¹ᵁ W).ι ≫ q) (V.ι ≫ W.ι ≫ h) π →
      IsPullback (a ∣_ (W.ι ''ᵁ V)) ((a ⁻¹ᵁ (W.ι ''ᵁ V)).ι ≫ q) ((W.ι ''ᵁ V).ι ≫ h) π := by
  intro P' X S T a W V q h π H
  have e1hom : ((a ⁻¹ᵁ W).ι.isoImage ((a ∣_ W) ⁻¹ᵁ V) ≪≫
      X.isoOfEq (image_morphismRestrict_preimage a W V)).hom ≫ (a ⁻¹ᵁ (W.ι ''ᵁ V)).ι =
      ((a ∣_ W) ⁻¹ᵁ V).ι ≫ (a ⁻¹ᵁ W).ι := by
    simp only [Iso.trans_hom, Category.assoc, Scheme.isoOfEq_hom_ι, Scheme.Hom.isoImage_hom_ι]
  refine IsPullback.of_iso H
    ((a ⁻¹ᵁ W).ι.isoImage ((a ∣_ W) ⁻¹ᵁ V) ≪≫ X.isoOfEq (image_morphismRestrict_preimage a W V))
    (W.ι.isoImage V) (Iso.refl S) (Iso.refl T) ?_ ?_ ?_ ?_
  · rw [← cancel_mono (W.ι ''ᵁ V).ι]
    simp only [Category.assoc, Scheme.Hom.isoImage_hom_ι, morphismRestrict_ι]
    rw [reassoc_of% e1hom, morphismRestrict_ι_assoc, morphismRestrict_ι]
  · simp only [Iso.refl_hom, Category.comp_id]
    rw [reassoc_of% e1hom]
  · simp only [Iso.refl_hom, Category.comp_id, Scheme.Hom.isoImage_hom_ι_assoc]
  · simp

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackMorphismRestrictImageOfRestrictRestric =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartProductAtClosedPointClosedFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartProductAtClosedPointClosedFibre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\npublic import Mathlib.AlgebraicGeometry.AffineSpace\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedPointRangeEqFixedGroupImageStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoordinateMapEtaleNearProperFibre\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleCoordinatesDescendAlongProperMapStatement\npublic import Mathlib.AlgebraicGeometry.Morphisms.Etale\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsEtaleCoordsLiftImmersion\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMemFibreOfGeometricLifting\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenEtaleRestrictOfUniversallyClosed\npublic import Mathlib.AlgebraicGeometry.Restrict\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackMorphismRestrictImageOfRestrictRestric\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.EtChart

set_option backward.isDefEq.respectTransparency false in
theorem affineSpace_smooth (S : Scheme.{0}) (n : ℕ) : Smooth (𝔸(Fin n; S) ↘ S) := by
  have : SmoothOfRelativeDimension n (𝔸(Fin n; S) ↘ S) := by
    have := smoothOfRelativeDimension_isStableUnderBaseChange.{0} n
    refine MorphismProperty.pullback_fst (P := @SmoothOfRelativeDimension n) _ _ ?_
    have := isIso_of_isTerminal specULiftZIsTerminal.{0} terminalIsTerminal (terminal.from _)
    rw [← terminal.comp_from (Spec.map (CommRingCat.ofHom MvPolynomial.C)),
      MorphismProperty.cancel_right_of_respectsIso (P := @SmoothOfRelativeDimension n),
      HasRingHomProperty.Spec_iff (P := @SmoothOfRelativeDimension n)]
    refine RingHom.locally_of RingHom.isStandardSmoothOfRelativeDimension_respectsIso _ ?_
    exact (RingHom.isStandardSmoothOfRelativeDimension_algebraMap n).2
      (Algebra.IsStandardSmoothOfRelativeDimension.mvPolynomial_fin (R := ULift ℤ) (n := n))
  exact SmoothOfRelativeDimension.smooth n _

end GlobalTheory.Mum.EtChart

namespace GlobalTheory.Mum

theorem etale_chart_at_closed_point : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (M : Modif R) (G' : Over M.S) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (E : Emb M.π G') (P' : Scheme.{0}) (b : P' ⟶ PSpace R E.N) (X : E.H.toScheme.Opens) (a : X.toScheme ⟶ P'), IsSeparated b → LocallyOfFiniteType b → IsProper a → (∀ V : P'.Opens, Function.Bijective (a.app V).hom) → a ≫ b = X.ι ≫ E.f → Function.Bijective M.π.appTop.hom → Surjective M.π → ∀ x : P', IsClosed ({x} : Set P') → (b ≫ PSpace.str R E.N) x = closedPoint R → (∀ (Ω : Type) [Field Ω] (p p' : Sp Ω ⟶ X.toScheme), Set.range (p ≫ a) = {x} → p ≫ a = p' ≫ a → p ≫ X.ι ≫ E.H.ι ≫ G'.hom = p' ≫ X.ι ≫ E.H.ι ≫ G'.hom → p = p') → (∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (ξ : Sp Ω ⟶ P') (s : Sp Ω ⟶ M.S), Set.range ξ = {x} → ξ ≫ b ≫ PSpace.str R E.N = s ≫ M.π → ∃ p : Sp Ω ⟶ X.toScheme, p ≫ a = ξ ∧ p ≫ X.ι ≫ E.H.ι ≫ G'.hom = s) → ∃ V : P'.Opens, x ∈ V ∧ Smooth (V.ι ≫ b ≫ PSpace.str R E.N) ∧ IsPullback (a ∣_ V) ((a ⁻¹ᵁ V).ι ≫ X.ι ≫ E.H.ι ≫ G'.hom) (V.ι ≫ b ≫ PSpace.str R E.N) M.π := by
  intro R _ _ _ hR M G' _ _ hG E P' b X a hbsep hblft ha hsec hab hπΓ hπs x hx hx0 hinj hlift
  haveI := hbsep
  haveI := hblft
  haveI := ha
  haveI : IsProper M.π := M.proper
  haveI : IsProper (PSpace.str R E.N) := isProper_str R E.N
  have key : a ≫ b ≫ PSpace.str R E.N = X.ι ≫ E.H.ι ≫ G'.hom ≫ M.π := by
    rw [reassoc_of% hab, E.f_over]
  obtain ⟨z, hz⟩ := _root_.GlobalTheory.Mum.exists_mem_fibre_of_geometric_lifting R M.S P' X.toScheme M.π (b ≫ PSpace.str R E.N) a (X.ι ≫ E.H.ι ≫ G'.hom) hπs x hx0 hlift
  have hz0 : M.π (G'.hom (E.H.ι (X.ι z))) = closedPoint R := by
    have h1 := congrArg (fun f : X.toScheme ⟶ Sp R => f z) key
    simp only [Scheme.Hom.comp_apply] at h1
    rw [← h1, hz]
    simpa [Scheme.Hom.comp_apply] using hx0
  obtain ⟨y, hy⟩ := (GlobalTheory.T.closedPoint_range_eq_fixedGroup_image R M.S M.π G' E).1 (X.ι z) hz0
  have hyb : E.j y = b x := by
    rw [← hy, ← hz]
    have h1 := congrArg (fun f : X.toScheme ⟶ PSpace R E.N => f z) hab
    simpa [Scheme.Hom.comp_apply] using h1.symm
  obtain ⟨W0, g, τ0, O, e, hyO, hOW, hτ0, he, he2, he3⟩ := _root_.GlobalTheory.Mum.exists_etale_coords_lift_immersion R E.N E.Y E.smooth E.j E.imm E.j_over y
  have hxW1 : x ∈ b ⁻¹ᵁ W0 := by
    show b x ∈ W0
    rw [← hyb]; exact hOW hyO
  let τ1 : (b ⁻¹ᵁ W0).toScheme ⟶ 𝔸(Fin g; Sp R) := (b ∣_ W0) ≫ τ0
  have hτ1 : τ1 ≫ (𝔸(Fin g; Sp R) ↘ Sp R) = (b ⁻¹ᵁ W0).ι ≫ b ≫ PSpace.str R E.N := by
    simp only [τ1, Category.assoc, hτ0, morphismRestrict_ι_assoc]
  let c1 : (a ⁻¹ᵁ (b ⁻¹ᵁ W0)).toScheme ⟶ pullback (𝔸(Fin g; Sp R) ↘ Sp R) M.π :=
    pullback.lift ((a ∣_ (b ⁻¹ᵁ W0)) ≫ τ1) ((a ⁻¹ᵁ (b ⁻¹ᵁ W0)).ι ≫ X.ι ≫ E.H.ι ≫ G'.hom) (by
      rw [Category.assoc, hτ1, morphismRestrict_ι_assoc, key]
      simp only [Category.assoc])
  have hF := _root_.GlobalTheory.Mum.fibre_etale_near R hR M G' hG E P' b X a hab x y hyb hx0 W0 g τ0 O e hyO hOW hτ0 he he2 he3 c1
    (pullback.lift_fst _ _ _) (pullback.lift_snd _ _ _)
  obtain ⟨W, hWW1, hxW, hWet⟩ := _root_.GlobalTheory.exists_open_etale_restrict_of_universallyClosed X.toScheme P' _ a (b ⁻¹ᵁ W0) c1 x inferInstance hxW1 hF
  have hle : a ⁻¹ᵁ W ≤ a ⁻¹ᵁ (b ⁻¹ᵁ W0) := fun _ hp => hWW1 hp
  let c := X.toScheme.homOfLE hle ≫ c1
  let τ := P'.homOfLE hWW1 ≫ τ1
  let U : Over (Sp R) := Over.mk (W.ι ≫ b ≫ PSpace.str R E.N)
  have hsq : X.toScheme.homOfLE hle ≫ (a ∣_ (b ⁻¹ᵁ W0)) = (a ∣_ W) ≫ P'.homOfLE hWW1 := by
    rw [← cancel_mono (b ⁻¹ᵁ W0).ι, Category.assoc, morphismRestrict_ι, Scheme.homOfLE_ι_assoc,
      Category.assoc, Scheme.homOfLE_ι, morphismRestrict_ι]
  obtain ⟨x', hx'⟩ : x ∈ Set.range W.ι := by rw [Scheme.Opens.range_ι]; exact hxW
  have hLFT : LocallyOfFiniteType U.hom := by
    show LocallyOfFiniteType (W.ι ≫ b ≫ PSpace.str R E.N); infer_instance
  have hSep : IsSeparated U.hom := by
    show IsSeparated (W.ι ≫ b ≫ PSpace.str R E.N); infer_instance
  have hPr : IsProper (a ∣_ W) := inferInstance
  have hSec : ∀ V : U.left.Opens, Function.Bijective ((a ∣_ W).app V).hom := by
    intro V
    rw [morphismRestrict_app]
    exact (ConcreteCategory.bijective_of_isIso (X.toScheme.presheaf.map (eqToHom (image_morphismRestrict_preimage a W V)).op)).comp (hsec (W.ι ''ᵁ V))
  have hτ : τ ≫ (𝔸(Fin g; Sp R) ↘ Sp R) = U.hom := by
    simp only [τ, Category.assoc, hτ1]
    rw [Scheme.homOfLE_ι_assoc]
    rfl
  have hc1 : c ≫ pullback.fst _ _ = (a ∣_ W) ≫ τ := by
    simp only [c, τ, c1, Category.assoc, pullback.lift_fst]
    rw [← Category.assoc, hsq, Category.assoc]
  have hc2 : c ≫ pullback.snd _ _ = (a ⁻¹ᵁ W).ι ≫ X.ι ≫ E.H.ι ≫ G'.hom := by
    simp only [c, c1, Category.assoc, pullback.lift_snd]
    rw [Scheme.homOfLE_ι_assoc]
  have hcl : IsClosed ({x'} : Set U.left) := by
    have : ({x'} : Set U.left) = W.ι ⁻¹' {x} := by
      ext p
      simp only [Set.mem_singleton_iff, Set.mem_preimage]
      exact ⟨fun h => h ▸ hx', fun h => W.ι.isOpenEmbedding.injective (h.trans hx'.symm)⟩
    rw [this]
    exact hx.preimage W.ι.continuous
  have hx'0 : U.hom x' = closedPoint R := by
    show (W.ι ≫ b ≫ PSpace.str R E.N) x' = closedPoint R
    simpa [Scheme.Hom.comp_apply, hx'] using hx0
  have hrange : ∀ (Ω : Type) [Field Ω] (ξ : Sp Ω ⟶ U.left), Set.range ξ = {x'} → Set.range (ξ ≫ W.ι) = {x} := by
    intro Ω _ ξ hr
    rw [Scheme.Hom.comp_base, TopCat.coe_comp, Set.range_comp]
    erw [hr]
    rw [Set.image_singleton, hx']
  have hinj' : ∀ (Ω : Type) [Field Ω] (p p' : Sp Ω ⟶ (a ⁻¹ᵁ W).toScheme), Set.range (p ≫ (a ∣_ W)) = {x'} →
      p ≫ (a ∣_ W) = p' ≫ (a ∣_ W) → p ≫ (a ⁻¹ᵁ W).ι ≫ X.ι ≫ E.H.ι ≫ G'.hom = p' ≫ (a ⁻¹ᵁ W).ι ≫ X.ι ≫ E.H.ι ≫ G'.hom →
      p = p' := by
    intro Ω _ p p' hr he hb
    have hr' : Set.range ((p ≫ (a ⁻¹ᵁ W).ι) ≫ a) = {x} := by
      rw [Category.assoc, ← morphismRestrict_ι, ← Category.assoc]
      exact hrange Ω _ hr
    have h2 : (p ≫ (a ⁻¹ᵁ W).ι) ≫ a = (p' ≫ (a ⁻¹ᵁ W).ι) ≫ a := by
      simp only [Category.assoc, ← morphismRestrict_ι]
      rw [reassoc_of% he]
    have := hinj Ω (p ≫ (a ⁻¹ᵁ W).ι) (p' ≫ (a ⁻¹ᵁ W).ι) hr' h2 (by simpa only [Category.assoc] using hb)
    exact (cancel_mono _).1 this
  have hlift' : ∀ (Ω : Type) [Field Ω] [IsAlgClosed Ω] (ξ : Sp Ω ⟶ U.left) (s : Sp Ω ⟶ M.S), Set.range ξ = {x'} →
      ξ ≫ U.hom = s ≫ M.π → ∃ p : Sp Ω ⟶ (a ⁻¹ᵁ W).toScheme, p ≫ (a ∣_ W) = ξ ∧ p ≫ (a ⁻¹ᵁ W).ι ≫ X.ι ≫ E.H.ι ≫ G'.hom = s := by
    intro Ω _ _ ξ s hr hs
    obtain ⟨p, hp1, hp2⟩ := hlift Ω (ξ ≫ W.ι) s (hrange Ω ξ hr) (by rw [Category.assoc]; exact hs)
    have hsub : Set.range p.base ⊆ Set.range (a ⁻¹ᵁ W).ι.base := by
      rw [Scheme.Opens.range_ι]
      rintro _ ⟨t, rfl⟩
      show a (p t) ∈ W
      have h3 : a (p t) = W.ι (ξ t) := by
        have h4 := congrArg (fun f : Sp Ω ⟶ P' => f t) hp1
        simpa [Scheme.Hom.comp_apply] using h4
      rw [h3]
      have h5 := Set.mem_range_self (f := W.ι) (ξ t)
      rwa [Scheme.Opens.range_ι] at h5
    refine ⟨IsOpenImmersion.lift (a ⁻¹ᵁ W).ι p hsub, ?_, ?_⟩
    · rw [← cancel_mono W.ι, Category.assoc, morphismRestrict_ι, IsOpenImmersion.lift_fac_assoc, hp1]
    · rw [IsOpenImmersion.lift_fac_assoc]; exact hp2
  obtain ⟨V, hxV, hVet, hVpb⟩ := _root_.GlobalTheory.Mum.etale_coord_descend R hR M.S (a ⁻¹ᵁ W).toScheme M.π U (a ∣_ W)
    ((a ⁻¹ᵁ W).ι ≫ X.ι ≫ E.H.ι ≫ G'.hom) g τ c M.proper hπs hπΓ hLFT hSep hPr hSec hτ hc1 hc2 (hWet hle)
    x' hcl hx'0 hinj' hlift'
  refine ⟨W.ι ''ᵁ V, ⟨x', hxV, hx'⟩, ?_, ?_⟩
  · haveI : Etale (V.ι ≫ τ) := hVet
    haveI : Smooth (𝔸(Fin g; Sp R) ↘ Sp R) := GlobalTheory.Mum.EtChart.affineSpace_smooth (Sp R) g
    have e1 : (W.ι ''ᵁ V).ι ≫ b ≫ PSpace.str R E.N =
        (W.ι.isoImage V).inv ≫ (V.ι ≫ τ) ≫ (𝔸(Fin g; Sp R) ↘ Sp R) := by
      rw [Category.assoc, hτ, Iso.eq_inv_comp, ← Category.assoc, Scheme.Hom.isoImage_hom_ι, Category.assoc]
      rfl
    rw [e1]
    infer_instance
  · exact _root_.GlobalTheory.isPullback_morphismRestrict_image_of_restrict_restrict P' X.toScheme M.S (Sp R) a W V (X.ι ≫ E.H.ι ≫ G'.hom) (b ≫ PSpace.str R E.N) M.π hVpb

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartProductAtClosedPointClosedFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackRestrictISupOfForallRestrict =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackRestrictISupOfForallRestrict", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Restrict\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.Morphisms.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem isPullback_iSup_of_forall : ∀ (P' X T S : Scheme.{0}) (a : X ⟶ P') (p : X ⟶ S) (q : P' ⟶ T) (π : S ⟶ T), a ≫ q = p ≫ π → ∀ (I : Type) (V : I → P'.Opens), (∀ i, IsPullback (a ∣_ V i) ((a ⁻¹ᵁ V i).ι ≫ p) ((V i).ι ≫ q) π) → IsPullback (a ∣_ (⨆ i, V i)) ((a ⁻¹ᵁ (⨆ i, V i)).ι ≫ p) ((⨆ i, V i).ι ≫ q) π := by
  intros
  apply _root_.GlobalTheory.Mum.GlueNear.isPullback_iSup <;> assumption

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackRestrictISupOfForallRestrict =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemOfClosedPointsClosedFibreMem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemOfClosedPointsClosedFibreMem", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.Fiber\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem mem_of_closedPoints_closedFibre_mem : ∀ (R : Type) [CommRing R] [IsLocalRing R] (T : Scheme.{0}) (q : T ⟶ Sp R),
    LocallyOfFiniteType q → ∀ U : T.Opens, (∀ x : T, IsClosed ({x} : Set T) → q x = closedPoint R → x ∈ U) →
    ∀ x : T, q x = closedPoint R → x ∈ U := by
  intro R _ _ T q hq U hU x hx
  by_contra hxU
  set c : Sp R := closedPoint R
  have hc : IsClosed ({c} : Set (Sp R)) :=
    (PrimeSpectrum.isClosed_singleton_iff_isMaximal _).2 (IsLocalRing.maximalIdeal.isMaximal R)
  have hft : LocallyOfFiniteType (q.fiberToSpecResidueField c) :=
    inferInstanceAs (LocallyOfFiniteType (pullback.snd _ _))
  have : JacobsonSpace (q.fiber c) := LocallyOfFiniteType.jacobsonSpace (q.fiberToSpecResidueField c)
  let e := q.fiberι c
  have hemb : Topology.IsClosedEmbedding e := by
    refine ⟨IsPreimmersion.isEmbedding e, ?_⟩
    rw [Scheme.Hom.range_fiberι]
    exact hc.preimage q.continuous
  let Z : Set T := closure {x} ∩ (U : Set T)ᶜ
  have hZ : IsClosed Z := isClosed_closure.inter U.isOpen.isClosed_compl
  obtain ⟨x', hx'⟩ : x ∈ Set.range e := by
    rw [Scheme.Hom.range_fiberι]; exact hx
  have hne : (e ⁻¹' Z).Nonempty := ⟨x', by
    show e x' ∈ Z
    rw [hx']; exact ⟨subset_closure rfl, hxU⟩⟩
  obtain ⟨y, hyZ, hyc⟩ := nonempty_inter_closedPoints hne (hZ.preimage e.continuous).isLocallyClosed
  have hyc' : IsClosed ({e y} : Set T) := by
    rw [← Set.image_singleton]
    exact hemb.isClosedMap _ hyc
  have hqy : q (e y) = c := by
    have : e y ∈ Set.range e := ⟨y, rfl⟩
    rw [Scheme.Hom.range_fiberι] at this
    exact this
  exact hyZ.2 (hU _ hyc' hqy)

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemOfClosedPointsClosedFibreMem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothISupOpensCompOfForallSmooth =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothISupOpensCompOfForallSmooth", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem GlobalTheory.Mum.smooth_iSup_comp (P' T : Scheme.{0}) (q : P' ⟶ T) (I : Type) (V : I → P'.Opens)
    (h : ∀ i, Smooth ((V i).ι ≫ q)) : Smooth ((⨆ i, V i).ι ≫ q) := by
  have hloc : IsZariskiLocalAtSource @Smooth.{0} := HasRingHomProperty.instIsZariskiLocalAtSource
  set U := ⨆ i, V i with hUdef
  have hle : ∀ i, V i ≤ U := fun i => le_iSup V i
  refine IsZariskiLocalAtSource.of_iSup_eq_top (P := @Smooth.{0}) (fun i => U.ι ⁻¹ᵁ V i) ?_ ?_
  · apply top_unique
    intro x _
    have hx : (U.ι x : P') ∈ (⨆ i, V i : P'.Opens) := x.2
    rw [TopologicalSpace.Opens.mem_iSup] at hx
    obtain ⟨i, hi⟩ := hx
    exact TopologicalSpace.Opens.mem_iSup.mpr ⟨i, hi⟩
  · intro i
    have hrange : Set.range ((U.ι ⁻¹ᵁ V i).ι ≫ U.ι) = Set.range (V i).ι := by
      rw [Scheme.Hom.comp_base, TopCat.coe_comp, Set.range_comp, Scheme.Opens.range_ι,
        Scheme.Opens.range_ι]
      ext y
      simp only [Set.mem_image, SetLike.mem_coe, Scheme.Hom.mem_preimage]
      exact ⟨by rintro ⟨x, hx, rfl⟩; exact hx, fun hy => ⟨⟨y, hle i hy⟩, hy, rfl⟩⟩
    rw [← Category.assoc, ← IsOpenImmersion.isoOfRangeEq_hom_fac ((U.ι ⁻¹ᵁ V i).ι ≫ U.ι) (V i).ι hrange,
      Category.assoc]
    haveI := h i
    infer_instance
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothISupOpensCompOfForallSmooth =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothModelNearClosedFibreEmbedding =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothModelNearClosedFibreEmbedding", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppTopBijectiveAndSurjectiveNormalDomainStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClosedFibreProjectiveEmbeddingFactorsProperStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfFieldPointsClosedFibreSameProjectiveImage\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EtaleChartProductAtClosedPointClosedFibre\npublic import Mathlib.AlgebraicGeometry.Restrict\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Mathlib.Order.CompletePartialOrder\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackRestrictISupOfForallRestrict\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemOfClosedPointsClosedFibreMem\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothISupOpensCompOfForallSmooth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_near : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (M : Modif R) (G' : Over M.S) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ E : Emb M.π G', ∃ (N : Near M.π G') (fU : N.U.left ⟶ PSpace R E.N) (l : pullback N.U.hom M.π ⟶ E.H.toScheme), l ≫ E.H.ι = N.u ∧ l ≫ E.f = pullback.fst _ _ ≫ fU := by
  intro R _ _ _ hR M G' _ _ hG E
  have hRn : IsNoetherianRing R := hR.1
  have hRi : IsIntegrallyClosed R := hR.2.2.1
  obtain ⟨hΓ, hsurj⟩ := GlobalTheory.T.appTop_bijective_and_surjective_normalDomain R M
  obtain ⟨P', b, X, a, hPn, hbs, hbl, hap, -, hab, hcomm, hX, hlift⟩ := GlobalTheory.T.closedFibre_projectiveEmbedding_factors_proper R hR M G' hG E
  have hsq : a ≫ b ≫ PSpace.str R E.N = (X.ι ≫ E.H.ι ≫ G'.hom) ≫ M.π := by
    rw [← Category.assoc, hcomm, Category.assoc, E.f_over]; simp only [Category.assoc]
  have hpt : ∀ w : X.toScheme, (b ≫ PSpace.str R E.N) (a w) = M.π (G'.hom (E.H.ι (X.ι w))) := by
    intro w
    have := congrArg (fun f => f w) hsq
    simpa [Scheme.Hom.comp_apply] using this
  have key : ∀ c : {x : P' // IsClosed ({x} : Set P') ∧ (b ≫ PSpace.str R E.N) x = closedPoint R},
      ∃ V : P'.Opens, c.1 ∈ V ∧ Smooth (V.ι ≫ b ≫ PSpace.str R E.N) ∧
        IsPullback (a ∣_ V) ((a ⁻¹ᵁ V).ι ≫ X.ι ≫ E.H.ι ≫ G'.hom) (V.ι ≫ b ≫ PSpace.str R E.N) M.π := by
    rintro ⟨x, hx1, hx2⟩
    refine _root_.GlobalTheory.Mum.etale_chart_at_closed_point R hR M G' hG E P' b X a hbs hbl hap hab hcomm hΓ hsurj x hx1 hx2 ?_ (hlift x hx1 hx2)
    intro Ω _ p p' hr he hs
    have hc : ∀ t, M.π (G'.hom (E.H.ι ((p ≫ X.ι) t))) = closedPoint R := by
      intro t
      have ht : (p ≫ a) t = x := by
        have : (p ≫ a) t ∈ Set.range (p ≫ a) := ⟨t, rfl⟩
        rw [hr] at this; exact this
      have := hpt (p t)
      rw [Scheme.Hom.comp_apply] at ht
      rw [ht, hx2] at this
      rw [Scheme.Hom.comp_apply]; exact this.symm
    have hf : (p ≫ X.ι) ≫ E.f = (p' ≫ X.ι) ≫ E.f := by
      rw [Category.assoc, Category.assoc, ← hcomm, ← Category.assoc, he, Category.assoc]
    have := _root_.GlobalTheory.Mum.Emb.eq_of_closedFibre R M G' E Ω (p ≫ X.ι) (p' ≫ X.ι) hc (by simpa only [Category.assoc] using hs) hf
    exact (cancel_mono X.ι).1 this
  choose V hxV hVs hVp using key
  set U : P'.Opens := ⨆ c, V c with hUdef
  have hUp : IsPullback (a ∣_ U) ((a ⁻¹ᵁ U).ι ≫ X.ι ≫ E.H.ι ≫ G'.hom) (U.ι ≫ b ≫ PSpace.str R E.N) M.π :=
    _root_.GlobalTheory.Mum.isPullback_iSup_of_forall _ _ _ _ a _ _ _ hsq _ V hVp
  have hUs : Smooth (U.ι ≫ b ≫ PSpace.str R E.N) := _root_.GlobalTheory.Mum.smooth_iSup_comp _ _ _ _ V hVs
  have hlft : LocallyOfFiniteType (b ≫ PSpace.str R E.N) := by
    have : IsProper (PSpace.str R E.N) := ReciprocityTheory.ChartRestriction.G.Geo.Tor.isProper_str R E.N
    infer_instance
  have hU0 : ∀ y : P', (b ≫ PSpace.str R E.N) y = closedPoint R → y ∈ U := by
    refine _root_.GlobalTheory.Mum.mem_of_closedPoints_closedFibre_mem R P' (b ≫ PSpace.str R E.N) hlft U ?_
    intro y hy1 hy2
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨y, hy1, hy2⟩, hxV _⟩
  have hsep : IsSeparated (U.ι ≫ b ≫ PSpace.str R E.N) := by
    have : IsProper (PSpace.str R E.N) := ReciprocityTheory.ChartRestriction.G.Geo.Tor.isProper_str R E.N
    infer_instance
  have hqc : QuasiCompact (U.ι ≫ b ≫ PSpace.str R E.N) := by
    haveI := hPn
    have : CompactSpace U := isCompact_iff_compactSpace.mp (TopologicalSpace.NoetherianSpace.isCompact (U : Set P'))
    exact (quasiCompact_iff_compactSpace _).2 this
  let e := hUp.isoPullback
  refine ⟨Near.mk (Over.mk (U.ι ≫ b ≫ PSpace.str R E.N)) hUs hsep hqc
      (e.inv ≫ (a ⁻¹ᵁ U).ι ≫ X.ι ≫ E.H.ι) inferInstance ?_ ?_,
    U.ι ≫ b, e.inv ≫ (a ⁻¹ᵁ U).ι ≫ X.ι, ?_, ?_⟩
  · have := hUp.isoPullback_inv_snd
    exact this
  · intro g hg
    obtain ⟨z, rfl⟩ : g ∈ Set.range E.H.ι := by rw [Scheme.Opens.range_ι]; exact E.H_all g hg
    obtain ⟨w, rfl⟩ : z ∈ Set.range X.ι := by rw [Scheme.Opens.range_ι]; exact hX z hg
    have hw : a w ∈ U := hU0 _ (by rw [hpt]; exact hg)
    obtain ⟨w', rfl⟩ : w ∈ Set.range (a ⁻¹ᵁ U).ι := by rw [Scheme.Opens.range_ι]; exact hw
    refine ⟨e.hom w', ?_⟩
    rw [← Scheme.Hom.comp_apply e.hom, Iso.hom_inv_id_assoc]
    simp only [Scheme.Hom.comp_apply]
  · simp only [Category.assoc]
  · show e.inv ≫ (a ⁻¹ᵁ U).ι ≫ X.ι ≫ E.f = pullback.fst (U.ι ≫ b ≫ PSpace.str R E.N) M.π ≫ U.ι ≫ b
    rw [← hcomm, ← Category.assoc ((a ⁻¹ᵁ U).ι), ← morphismRestrict_ι,
      ← Category.assoc e.inv]
    simp only [Category.assoc]
    rw [← Category.assoc e.inv (a ∣_ U), hUp.isoPullback_inv_fst]

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothModelNearClosedFibreEmbedding =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothModelNearClosedFibreEmbeddingStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothModelNearClosedFibreEmbeddingStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TateProductRigidificationTrivial\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothModelNearClosedFibreEmbedding\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothModelNearClosedFibreEmbeddingStatement =====
