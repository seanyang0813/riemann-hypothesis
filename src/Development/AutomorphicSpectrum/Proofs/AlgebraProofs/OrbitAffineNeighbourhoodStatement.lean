module

public import Mathlib.AlgebraicGeometry.AffineScheme
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Over
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom
public import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion
public import Mathlib.AlgebraicGeometry.Morphisms.Finite
public import Mathlib.AlgebraicGeometry.Morphisms.FinitePresentation
public import Mathlib.AlgebraicGeometry.Morphisms.Flat
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFlatLocallyFreeAffine
public import Mathlib.RingTheory.RingHomProperties
public import Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties
public import Mathlib.RingTheory.Norm.Defs
public import Mathlib.LinearAlgebra.Charpoly.BaseChange
public import Mathlib.RingTheory.LocalRing.ResidueField.Ideal
public import Mathlib.AlgebraicGeometry.Restrict
public import Mathlib.AlgebraicGeometry.Pullbacks
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Mod
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Grp
public import Mathlib.CategoryTheory.Monoidal.Mod
public import Mathlib.AlgebraicGeometry.Morphisms.QuasiFinite
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BasicOpenNormFibreIff, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BasicOpenNormFibreIffStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFlatLocallyFreeAffineStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreePullbackAffine, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreePullbackAffineStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteSetBasicOpenAffine, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteSetBasicOpenAffineStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOrbitSelf, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOrbitSelfStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NormNotMemPrimeIff, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NormNotMemPrimeIffStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitTrans, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitTransStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackRestrictOpen, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackRestrictOpenStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ShearIsoActionProjection, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ShearIsoActionProjectionStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitAffineNeighbourhood, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitAffineNeighbourhoodStatement

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BasicOpenNormFibreIff =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BasicOpenNormFibreIff", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineScheme\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

namespace GlobalTheory.CompanionTheory.PrimesToPts

theorem mem_basicOpen_iff_toSpecΓ {X : Scheme.{0}} (f : Γ(X, ⊤)) (x : X) :
    x ∈ X.basicOpen f ↔ f ∉ (X.toSpecΓ x : PrimeSpectrum Γ(X, ⊤)).asIdeal := by
  rw [← X.toSpecΓ_preimage_basicOpen f]
  exact Iff.rfl

theorem comap_toSpecΓ {P D : Scheme.{0}} (v : P ⟶ D) (z : P) :
    (P.toSpecΓ z : PrimeSpectrum Γ(P, ⊤)).asIdeal.comap v.appTop.hom =
      (D.toSpecΓ (v z) : PrimeSpectrum Γ(D, ⊤)).asIdeal := by
  have h : D.toSpecΓ (v z) = Spec.map v.appTop (P.toSpecΓ z) := by
    rw [← Scheme.Hom.comp_apply, Scheme.toSpecΓ_naturality, Scheme.Hom.comp_apply]
  rw [h]
  rfl

theorem primes_to_pts : ∀ {P D : Scheme.{0}} [IsAffine P] [IsAffine D] (v : P ⟶ D) (N : Γ(D, ⊤)) (e : Γ(P, ⊤)), (∀ p : PrimeSpectrum Γ(D, ⊤), N ∉ p.asIdeal ↔ ∀ q : PrimeSpectrum Γ(P, ⊤), q.asIdeal.comap v.appTop.hom = p.asIdeal → e ∉ q.asIdeal) → ∀ y : D, y ∈ D.basicOpen N ↔ ∀ z : P, v z = y → z ∈ P.basicOpen e := by
  intro P D _ _ v N e hN y
  refine (GlobalTheory.CompanionTheory.PrimesToPts.mem_basicOpen_iff_toSpecΓ N y).trans ((hN (D.toSpecΓ y)).trans ?_)
  constructor
  · intro H z hz
    refine (GlobalTheory.CompanionTheory.PrimesToPts.mem_basicOpen_iff_toSpecΓ e z).2 (H _ ?_)
    exact (GlobalTheory.CompanionTheory.PrimesToPts.comap_toSpecΓ v z).trans (by rw [hz])
  · intro H q hq
    obtain ⟨z, rfl⟩ := P.toSpecΓ.homeomorph.surjective q
    have hz : v z = y := by
      apply D.toSpecΓ.homeomorph.injective
      apply PrimeSpectrum.ext
      exact (GlobalTheory.CompanionTheory.PrimesToPts.comap_toSpecΓ v z).symm.trans hq
    exact (GlobalTheory.CompanionTheory.PrimesToPts.mem_basicOpen_iff_toSpecΓ e z).1 (H z hz)

end GlobalTheory.CompanionTheory.PrimesToPts
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BasicOpenNormFibreIff =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BasicOpenNormFibreIffStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BasicOpenNormFibreIffStatement", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineScheme\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BasicOpenNormFibreIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot


theorem _root_.GlobalTheory.T.basic_open_norm_fibre_iff : ∀ {P D : Scheme.{0}} [IsAffine P] [IsAffine D] (v : P ⟶ D) (N : Γ(D, ⊤)) (e : Γ(P, ⊤)), (∀ p : PrimeSpectrum Γ(D, ⊤), N ∉ p.asIdeal ↔ ∀ q : PrimeSpectrum Γ(P, ⊤), q.asIdeal.comap v.appTop.hom = p.asIdeal → e ∉ q.asIdeal) → ∀ y : D, y ∈ D.basicOpen N ↔ ∀ z : P, v z = y → z ∈ P.basicOpen e := by
  first | exact @GlobalTheory.CompanionTheory.PrimesToPts.primes_to_pts
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BasicOpenNormFibreIffStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFlatLocallyFreeAffineStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFlatLocallyFreeAffineStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\npublic import Mathlib.AlgebraicGeometry.Morphisms.Finite\npublic import Mathlib.AlgebraicGeometry.Morphisms.FinitePresentation\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFlatLocallyFreeAffine\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot


theorem _root_.GlobalTheory.T.finite_flat_locally_free_affine : ∀ {Y S : Scheme.{0}} (g : Y ⟶ S) [IsFinite g] [Flat g] [LocallyOfFinitePresentation g] (s : S), ∃ W : S.Opens, s ∈ W ∧ IsAffineOpen W ∧ GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.FiniteFreeHom (g ∣_ W).appTop.hom := by
  first | exact @GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.exists_affine_finiteFreeHom
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFlatLocallyFreeAffineStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreePullbackAffine =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreePullbackAffine", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\npublic import Mathlib.AlgebraicGeometry.AffineScheme\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Mathlib.RingTheory.RingHomProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.Morphisms.RingHomProperties\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

noncomputable section
namespace GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd

theorem finiteFreeHom_algebraMap_iff {A B : Type} [CommRing A] [CommRing B] [Algebra A B] :
    FiniteFreeHom (algebraMap A B) ↔ Module.Free A B ∧ Module.Finite A B := by
  have h : (algebraMap A B).toAlgebra = ‹Algebra A B› := Algebra.algebra_ext _ _ fun _ => rfl
  simp only [GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.FiniteFreeHom]
  rw [h]

theorem finiteFreeHom_comp {A B C : Type} [CommRing A] [CommRing B] [CommRing C]
    (f : A →+* B) (g : B →+* C) (hf : FiniteFreeHom f) (hg : FiniteFreeHom g) :
    FiniteFreeHom (g.comp f) := by
  letI := f.toAlgebra
  letI := g.toAlgebra
  letI := (g.comp f).toAlgebra
  haveI : IsScalarTower A B C := IsScalarTower.of_algebraMap_eq fun _ => rfl
  obtain ⟨hf₁, hf₂⟩ := hf
  obtain ⟨hg₁, hg₂⟩ := hg
  exact ⟨Module.Free.trans (S := B), Module.Finite.trans B C⟩

theorem finiteFreeHom_ringEquiv {A B : Type} [CommRing A] [CommRing B] (e : A ≃+* B) :
    FiniteFreeHom e.toRingHom := by
  letI := e.toRingHom.toAlgebra
  let l : A ≃ₗ[A] B := { e with map_smul' := fun a x => map_mul e a x }
  exact ⟨Module.Free.of_equiv l, Module.Finite.equiv l⟩

theorem finiteFreeHom_stableUnderComposition :
    RingHom.StableUnderComposition (fun {A B : Type} [CommRing A] [CommRing B] (f : A →+* B) =>
      FiniteFreeHom f) := by
  intro A B C _ _ _ f g hf hg
  exact GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.finiteFreeHom_comp f g hf hg

theorem finiteFreeHom_respectsIso :
    RingHom.RespectsIso (fun {A B : Type} [CommRing A] [CommRing B] (f : A →+* B) =>
      FiniteFreeHom f) :=
  RingHom.StableUnderComposition.respectsIso GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.finiteFreeHom_stableUnderComposition
    fun e => GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.finiteFreeHom_ringEquiv e

theorem finiteFreeHom_isStableUnderBaseChange :
    RingHom.IsStableUnderBaseChange (fun {A B : Type} [CommRing A] [CommRing B] (f : A →+* B) =>
      FiniteFreeHom f) := by
  refine RingHom.IsStableUnderBaseChange.mk GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.finiteFreeHom_respectsIso ?_
  intro R S T _ _ _ _ _ h
  obtain ⟨h₁, h₂⟩ := GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.finiteFreeHom_algebraMap_iff.1 h
  exact GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.finiteFreeHom_algebraMap_iff.2 ⟨inferInstance, inferInstance⟩

theorem finiteFreeHom_appTop_of_isPullback :
    ∀ {P Q D W : Scheme.{0}} {u : P ⟶ Q} {v : P ⟶ D} {g : Q ⟶ W} {h : D ⟶ W} [IsAffine P] [IsAffine Q] [IsAffine D] [IsAffine W], IsPullback u v g h → GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.FiniteFreeHom g.appTop.hom → GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.FiniteFreeHom v.appTop.hom := by
  intro P Q D W u v g h _ _ _ _ hpb hg
  have hbc := RingHom.IsStableUnderBaseChange.pullback_fst_appTop @GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.FiniteFreeHom
    GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.finiteFreeHom_isStableUnderBaseChange GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.finiteFreeHom_respectsIso h g hg
  haveI : IsIso hpb.flip.isoPullback.hom.appTop := by
    rw [← Scheme.Γ_map_op]
    exact (Scheme.Γ.mapIso hpb.flip.isoPullback.op).isIso_hom
  rw [← hpb.flip.isoPullback_hom_fst, Scheme.Hom.comp_appTop, CommRingCat.hom_comp]
  exact (RingHom.RespectsIso.cancel_right_isIso GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.finiteFreeHom_respectsIso _ _).2 hbc

end GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreePullbackAffine =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreePullbackAffineStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreePullbackAffineStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\npublic import Mathlib.AlgebraicGeometry.AffineScheme\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreePullbackAffine\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot


theorem _root_.GlobalTheory.T.finite_free_pullback_affine : ∀ {P Q D W : Scheme.{0}} {u : P ⟶ Q} {v : P ⟶ D} {g : Q ⟶ W} {h : D ⟶ W} [IsAffine P] [IsAffine Q] [IsAffine D] [IsAffine W], IsPullback u v g h → GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.FiniteFreeHom g.appTop.hom → GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.FiniteFreeHom v.appTop.hom := by
  first | exact @GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.finiteFreeHom_appTop_of_isPullback
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreePullbackAffineStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteSetBasicOpenAffine =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteSetBasicOpenAffine", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineScheme\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

namespace GlobalTheory.CompanionTheory.PrimeAvoid

theorem exists_basicOpen_between {X : Scheme.{0}} (U V₀ : X.Opens) (hU : IsAffineOpen U)
    (hV : V₀ ≤ U) (K : Set X) (hK : K.Finite) (hKV : K ⊆ V₀) :
    ∃ f : Γ(X, U), K ⊆ X.basicOpen f ∧ X.basicOpen f ≤ V₀ := by
  classical
  let W : Set (PrimeSpectrum Γ(X, U)) := hU.fromSpec ⁻¹' (V₀ : Set X)
  have hWo : IsOpen W := (hU.fromSpec ⁻¹ᵁ V₀).isOpen
  let I : Ideal Γ(X, U) := PrimeSpectrum.vanishingIdeal Wᶜ
  let s : Set (Ideal Γ(X, U)) := PrimeSpectrum.asIdeal '' (hU.fromSpec ⁻¹' K)
  have hs : s.Finite := (hK.preimage hU.fromSpec.isOpenEmbedding.injective.injOn).image _
  have hnot : ¬ ((I : Set Γ(X, U)) ⊆ ⋃ P ∈ s, (P : Set Γ(X, U))) := by
    intro h
    obtain ⟨P, ⟨p, hpK, rfl⟩, hIp⟩ :=
      (Ideal.subset_union_prime_finite (f := fun P : Ideal Γ(X, U) => P) hs ⊥ ⊥
        (fun P hP _ _ => by obtain ⟨p, -, rfl⟩ := hP; exact p.isPrime)).1 h
    have hpW : p ∈ W := hKV hpK
    have hcl : p ∈ closure Wᶜ := by
      rw [← PrimeSpectrum.zeroLocus_vanishingIdeal_eq_closure]
      exact (PrimeSpectrum.mem_zeroLocus _ _).2 hIp
    rw [hWo.isClosed_compl.closure_eq] at hcl
    exact hcl hpW
  obtain ⟨g, hgI, hgs⟩ := Set.not_subset.1 hnot
  refine ⟨g, ?_, ?_⟩
  · intro x hx
    obtain ⟨p, rfl⟩ : x ∈ Set.range hU.fromSpec := by
      rw [hU.range_fromSpec]
      exact hV (hKV hx)
    have hp : p ∈ hU.fromSpec ⁻¹ᵁ X.basicOpen g := by
      rw [hU.fromSpec_preimage_basicOpen]
      exact (PrimeSpectrum.mem_basicOpen g p).2 fun hg => hgs (Set.mem_biUnion ⟨p, hx, rfl⟩ hg)
    exact hp
  · intro x hx
    obtain ⟨p, rfl⟩ : x ∈ Set.range hU.fromSpec := by
      rw [hU.range_fromSpec]
      exact X.basicOpen_le g hx
    have hp : p ∈ hU.fromSpec ⁻¹ᵁ X.basicOpen g := hx
    rw [hU.fromSpec_preimage_basicOpen] at hp
    have hp' := (PrimeSpectrum.mem_basicOpen g p).1 hp
    by_contra hpV
    exact hp' ((PrimeSpectrum.mem_vanishingIdeal _ _).1 hgI p hpV)

end GlobalTheory.CompanionTheory.PrimeAvoid
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteSetBasicOpenAffine =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteSetBasicOpenAffineStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteSetBasicOpenAffineStatement", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineScheme\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteSetBasicOpenAffine\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteSetBasicOpenAffineStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOrbitSelf =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOrbitSelf", "h": "module\n\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

namespace GlobalTheory.CompanionTheory.FreeQuotProof

theorem mem_orbit_self {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X] (x : X.left) :
    x ∈ orbit G X x := by
  have h1 : lift (1 : X ⟶ G) (𝟙 X) ≫ snd G X = 𝟙 X := lift_snd _ _
  have h2 : lift (1 : X ⟶ G) (𝟙 X) ≫ (γ[G, X] : G ⊗ X ⟶ X) = 𝟙 X := by
    have := one_smul (X ⟶ G) (𝟙 X)
    rwa [Hom.smul_def] at this
  have h1' : (lift (1 : X ⟶ G) (𝟙 X)).left ≫ (snd G X).left = 𝟙 X.left := by
    rw [← Over.comp_left, h1, Over.id_left]
  have h2' : (lift (1 : X ⟶ G) (𝟙 X)).left ≫ (γ[G, X] : G ⊗ X ⟶ X).left = 𝟙 X.left := by
    rw [← Over.comp_left, h2, Over.id_left]
  refine ⟨(lift (1 : X ⟶ G) (𝟙 X)).left x, ?_, ?_⟩
  · change (snd G X).left ((lift (1 : X ⟶ G) (𝟙 X)).left x) = x
    rw [← Scheme.Hom.comp_apply, h1']; rfl
  · rw [← Scheme.Hom.comp_apply, h2']; rfl

end GlobalTheory.CompanionTheory.FreeQuotProof
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOrbitSelf =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOrbitSelfStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOrbitSelfStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOrbitSelf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot


theorem _root_.GlobalTheory.T.mem_orbit_self' : ∀ {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X] (x : X.left), x ∈ orbit G X x := by
  first | exact @GlobalTheory.CompanionTheory.FreeQuotProof.mem_orbit_self
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOrbitSelfStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NormNotMemPrimeIff =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NormNotMemPrimeIff", "h": "module\n\npublic import Mathlib.RingTheory.Norm.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Charpoly.BaseChange\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Ideal\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

namespace GlobalTheory.CompanionTheory.NormPrime


open TensorProduct in
theorem norm_one_tmul {A B K : Type} [CommRing A] [CommRing B] [Algebra A B] [Module.Free A B]
    [Module.Finite A B] [Field K] [Algebra A K] (e : B) :
    Algebra.norm K ((1 : K) ⊗ₜ[A] e : K ⊗[A] B) = algebraMap A K (Algebra.norm A e) := by
  rw [Algebra.norm_apply, Algebra.norm_apply, ← LinearMap.det_baseChange]
  congr 1
  refine LinearMap.ext fun z => ?_
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul x y => simp [LinearMap.baseChange_tmul]
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem norm_mem_comap {A B : Type} [CommRing A] [CommRing B] [Algebra A B] [Module.Free A B]
    [Module.Finite A B] (e : B) (q : Ideal B) (he : e ∈ q) :
    Algebra.norm A e ∈ q.comap (algebraMap A B) := by
  set χ := (Algebra.lmul A B e).charpoly with hχ
  have h2 : Polynomial.aeval e χ = 0 := by
    apply Algebra.lmul_injective (R := A)
    rw [map_zero, ← Polynomial.aeval_algHom_apply]
    exact LinearMap.aeval_self_charpoly _
  have h3 := congrArg (Polynomial.aeval e) (Polynomial.divX_mul_X_add χ)
  rw [h2, map_add (f := _), map_mul, Polynomial.aeval_X, Polynomial.aeval_C] at h3
  have h4 : algebraMap A B (χ.coeff 0) ∈ q := by
    have h5 : algebraMap A B (χ.coeff 0) = -(Polynomial.aeval e χ.divX * e) :=
      eq_neg_of_add_eq_zero_right h3
    rw [h5]
    exact q.neg_mem (q.mul_mem_left _ he)
  rw [Algebra.norm_apply, LinearMap.det_eq_sign_charpoly_coeff]
  exact Ideal.mul_mem_left _ _ (Ideal.mem_comap.2 h4)


open TensorProduct in
theorem norm_notMem_iff {A B : Type} [CommRing A] [CommRing B] [Algebra A B] [Module.Free A B]
    [Module.Finite A B] (e : B) (p : Ideal A) (hp : p.IsPrime) :
    Algebra.norm A e ∉ p ↔ ∀ q : Ideal B, q.IsPrime → q.comap (algebraMap A B) = p → e ∉ q := by
  constructor
  · intro hN q _ hc he
    exact hN (hc ▸ norm_mem_comap e q he)
  · intro H hN
    have h0 : Algebra.norm p.ResidueField ((1 : p.ResidueField) ⊗ₜ[A] e : p.ResidueField ⊗[A] B) = 0 := by
      rw [norm_one_tmul]
      exact (Ideal.algebraMap_residueField_eq_zero).2 hN
    have hnu : ¬ IsUnit ((1 : p.ResidueField) ⊗ₜ[A] e : p.ResidueField ⊗[A] B) := fun hu => by
      have := hu.map (Algebra.norm p.ResidueField)
      rw [h0] at this
      exact not_isUnit_zero this
    obtain ⟨m, hm, hem⟩ := exists_max_ideal_of_mem_nonunits hnu
    let f : B →ₐ[A] p.ResidueField ⊗[A] B := Algebra.TensorProduct.includeRight
    have hmp : m.IsPrime := hm.isPrime
    refine H (m.comap f) (Ideal.comap_isPrime f m) ?_ (Ideal.mem_comap.2 hem)
    ext a
    have hfa : f (algebraMap A B a) =
        algebraMap p.ResidueField (p.ResidueField ⊗[A] B) (algebraMap A p.ResidueField a) := by
      rw [f.commutes, IsScalarTower.algebraMap_apply A p.ResidueField]
    rw [Ideal.mem_comap, Ideal.mem_comap, hfa]
    constructor
    · intro ha
      by_contra hap
      have hne : algebraMap A p.ResidueField a ≠ 0 :=
        fun h => hap ((Ideal.algebraMap_residueField_eq_zero).1 h)
      exact hm.ne_top (Ideal.eq_top_of_isUnit_mem _ ha ((isUnit_iff_ne_zero.2 hne).map _))
    · intro ha
      rw [(Ideal.algebraMap_residueField_eq_zero).2 ha, map_zero]
      exact m.zero_mem

end GlobalTheory.CompanionTheory.NormPrime
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NormNotMemPrimeIff =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NormNotMemPrimeIffStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NormNotMemPrimeIffStatement", "h": "module\n\npublic import Mathlib.RingTheory.Norm.Defs\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NormNotMemPrimeIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot


theorem _root_.GlobalTheory.T.norm_not_mem_prime_iff : ∀ {A B : Type} [CommRing A] [CommRing B] [Algebra A B] [Module.Free A B] [Module.Finite A B] (e : B) (p : Ideal A), p.IsPrime → (Algebra.norm A e ∉ p ↔ ∀ q : Ideal B, q.IsPrime → q.comap (algebraMap A B) = p → e ∉ q) := by
  first | exact @GlobalTheory.CompanionTheory.NormPrime.norm_notMem_iff
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NormNotMemPrimeIffStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitTrans =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitTrans", "h": "module\n\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

namespace GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd

private theorem exists_hom_of_comp_snd_eq_comp_smul {C : Type*} [Category C] [CartesianMonoidalCategory C]
    {M X Y : C} [MonObj M] [ModObj M X] (a b : Y ⟶ M ⊗ X)
    (h : b ≫ SemiCartesianMonoidalCategory.snd M X = a ≫ ModObj.smul (M := M) (X := X)) :
    ∃ r : Y ⟶ M ⊗ X, r ≫ SemiCartesianMonoidalCategory.snd M X = a ≫ SemiCartesianMonoidalCategory.snd M X ∧
      r ≫ ModObj.smul (M := M) (X := X) = b ≫ ModObj.smul (M := M) (X := X) := by
  have key : ∀ c : Y ⟶ M ⊗ X, c ≫ ModObj.smul (M := M) (X := X) =
      (c ≫ SemiCartesianMonoidalCategory.fst M X) • (c ≫ SemiCartesianMonoidalCategory.snd M X) := by
    intro c
    rw [CategoryTheory.Hom.smul_def, CartesianMonoidalCategory.lift_comp_fst_snd]
  refine ⟨CartesianMonoidalCategory.lift
    ((b ≫ SemiCartesianMonoidalCategory.fst M X) * (a ≫ SemiCartesianMonoidalCategory.fst M X))
    (a ≫ SemiCartesianMonoidalCategory.snd M X), CartesianMonoidalCategory.lift_snd _ _, ?_⟩
  rw [← CategoryTheory.Hom.smul_def, mul_smul, ← key a, ← h, ← key b]

theorem orbit_trans {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X] (x y w : X.left) :
    y ∈ orbit G X x → w ∈ orbit G X y → w ∈ orbit G X x := by
  simp only [GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot.orbit, Set.mem_image, Set.mem_preimage, Set.mem_singleton_iff]
  rintro ⟨p, hp, rfl⟩ ⟨q, hq, rfl⟩
  obtain ⟨z, hz₁, hz₂⟩ := Scheme.Pullback.exists_preimage_pullback
    (f := (ModObj.smul (M := G) (X := X)).left) (g := (SemiCartesianMonoidalCategory.snd G X).left)
    p q hq.symm
  have e₁ : (SemiCartesianMonoidalCategory.snd G X).left ≫ X.hom = (G ⊗ X).hom := Over.w _
  have e₂ : (ModObj.smul (M := G) (X := X)).left ≫ X.hom = (G ⊗ X).hom := Over.w _
  have hw : pullback.snd (ModObj.smul (M := G) (X := X)).left (SemiCartesianMonoidalCategory.snd G X).left ≫
      (G ⊗ X).hom =
      pullback.fst (ModObj.smul (M := G) (X := X)).left (SemiCartesianMonoidalCategory.snd G X).left ≫
      (G ⊗ X).hom := by
    rw [← e₂, pullback.condition_assoc, e₁, e₂]
  obtain ⟨r, hr₁, hr₂⟩ := exists_hom_of_comp_snd_eq_comp_smul
    (Y := Over.mk (pullback.fst (ModObj.smul (M := G) (X := X)).left
      (SemiCartesianMonoidalCategory.snd G X).left ≫ (G ⊗ X).hom))
    (Over.homMk (pullback.fst (ModObj.smul (M := G) (X := X)).left
      (SemiCartesianMonoidalCategory.snd G X).left) rfl)
    (Over.homMk (pullback.snd (ModObj.smul (M := G) (X := X)).left
      (SemiCartesianMonoidalCategory.snd G X).left) hw)
    (Over.OverMorphism.ext (by
      simp only [Over.comp_left, Over.homMk_left]
      exact pullback.condition.symm))
  refine ⟨r.left z, ?_, ?_⟩
  · have h₁ := congrArg Over.Hom.left hr₁
    simp only [Over.comp_left, Over.homMk_left] at h₁
    rw [← Scheme.Hom.comp_apply, h₁, Scheme.Hom.comp_apply, hz₁, hp]
  · have h₂ := congrArg Over.Hom.left hr₂
    simp only [Over.comp_left, Over.homMk_left] at h₂
    rw [← Scheme.Hom.comp_apply, h₂, Scheme.Hom.comp_apply, hz₂]

end GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitTrans =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitTransStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitTransStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitTrans\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot


theorem _root_.GlobalTheory.T.mem_orbit_trans : ∀ {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X] (x y w : X.left), y ∈ orbit G X x → w ∈ orbit G X y → w ∈ orbit G X x := by
  first | exact @GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd.orbit_trans
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitTransStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackRestrictOpen =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackRestrictOpen", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Restrict\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

namespace GlobalTheory.CompanionTheory.PullbackRestrict

theorem isPullback_restrict_opens :
    ∀ {P Q Y S : Scheme.{0}} {c : P ⟶ Q} {v : P ⟶ Y} {g : Q ⟶ S} {p : Y ⟶ S},
      IsPullback c v g p → ∀ (W : S.Opens) (D : Y.Opens), D ≤ p ⁻¹ᵁ W →
        ∃ (h : D.toScheme ⟶ W.toScheme) (u : (v ⁻¹ᵁ D).toScheme ⟶ (g ⁻¹ᵁ W).toScheme),
          IsPullback u (v ∣_ D) (g ∣_ W) h := by
  intro P Q Y S c v g p H W D hD
  have hbot : (Y.homOfLE hD ≫ p ∣_ W) ≫ W.ι = D.ι ≫ p := by
    rw [Category.assoc, morphismRestrict_ι, ← Category.assoc, Scheme.homOfLE_ι]
  have s : IsPullback ((v ⁻¹ᵁ D).ι ≫ c) (v ∣_ D) g ((Y.homOfLE hD ≫ p ∣_ W) ≫ W.ι) := by
    rw [hbot]
    exact (isPullback_morphismRestrict v D).flip.paste_horiz H
  exact ⟨_, _, IsPullback.of_right' s (isPullback_morphismRestrict g W).flip⟩

end GlobalTheory.CompanionTheory.PullbackRestrict
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackRestrictOpen =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackRestrictOpenStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackRestrictOpenStatement", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Restrict\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackRestrictOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot


theorem _root_.GlobalTheory.T.pullback_restrict_open : ∀ {P Q Y S : Scheme.{0}} {c : P ⟶ Q} {v : P ⟶ Y} {g : Q ⟶ S} {p : Y ⟶ S}, IsPullback c v g p → ∀ (W : S.Opens) (D : Y.Opens), D ≤ p ⁻¹ᵁ W → ∃ (h : D.toScheme ⟶ W.toScheme) (u : (v ⁻¹ᵁ D).toScheme ⟶ (g ⁻¹ᵁ W).toScheme), IsPullback u (v ∣_ D) (g ∣_ W) h := by
  first | exact @GlobalTheory.CompanionTheory.PullbackRestrict.isPullback_restrict_opens
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackRestrictOpenStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ShearIsoActionProjection =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ShearIsoActionProjection", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Pullbacks\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Mod\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Grp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

noncomputable section

namespace GlobalTheory.CompanionTheory.FreeQuotProof

theorem action_eq_fst_smul_snd {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X] :
    (γ[G, X] : G ⊗ X ⟶ X) = (fst G X) • (snd G X) := by
  rw [CategoryTheory.Hom.smul_def, lift_fst_snd, Category.id_comp]

theorem exists_iso_swap_action_snd : ∀ {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X], ∃ σ : G ⊗ X ⟶ G ⊗ X, IsIso σ ∧ σ ≫ snd G X = γ[G, X] ∧ σ ≫ γ[G, X] = snd G X := by
  intro S G X _ _
  have hγ : (γ[G, X] : G ⊗ X ⟶ X) = fst G X • snd G X := GlobalTheory.CompanionTheory.FreeQuotProof.action_eq_fst_smul_snd G X
  obtain ⟨σ, h₁, h₂⟩ : ∃ σ : G ⊗ X ⟶ G ⊗ X,
      σ ≫ snd G X = fst G X • snd G X ∧ σ ≫ fst G X = (fst G X)⁻¹ :=
    ⟨lift (fst G X)⁻¹ (fst G X • snd G X), lift_snd _ _, lift_fst _ _⟩
  have h₃ : σ ≫ (fst G X • snd G X) = snd G X := by
    rw [CategoryTheory.ModObj.comp_smul, h₂, h₁, inv_smul_smul]
  have h₄ : σ ≫ σ = 𝟙 _ := by
    apply CartesianMonoidalCategory.hom_ext
    · rw [Category.assoc, h₂, CategoryTheory.Hom.inv_def, ← Category.assoc, h₂,
        ← CategoryTheory.Hom.inv_def, inv_inv, Category.id_comp]
    · rw [Category.assoc, h₁, h₃, Category.id_comp]
  exact ⟨σ, ⟨σ, h₄, h₄⟩, by rw [hγ]; exact h₁, by rw [hγ]; exact h₃⟩

end GlobalTheory.CompanionTheory.FreeQuotProof
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ShearIsoActionProjection =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ShearIsoActionProjectionStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ShearIsoActionProjectionStatement", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Pullbacks\npublic import Mathlib.CategoryTheory.Monoidal.Mod\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ShearIsoActionProjection\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\nimport Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot


theorem _root_.GlobalTheory.T.shear_iso_action_projection : ∀ {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X], ∃ σ : G ⊗ X ⟶ G ⊗ X, IsIso σ ∧ σ ≫ snd G X = γ[G, X] ∧ σ ≫ γ[G, X] = snd G X := by
  first | exact @GlobalTheory.CompanionTheory.FreeQuotProof.exists_iso_swap_action_snd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ShearIsoActionProjectionStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitAffineNeighbourhood =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitAffineNeighbourhood", "h": "module\n\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreeHom\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.BasicOpenNormFibreIffStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFlatLocallyFreeAffineStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteFreePullbackAffineStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FiniteSetBasicOpenAffineStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemOrbitSelfStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.NormNotMemPrimeIffStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitTransStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PullbackRestrictOpenStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ShearIsoActionProjectionStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.Morphisms.Proper\npublic import Mathlib.AlgebraicGeometry.Morphisms.QuasiFinite\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

noncomputable section
namespace GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd

variable {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X]

theorem mem_orbit_iff {x y : X.left} : y ∈ orbit G X x ↔
    ∃ z, (snd G X).left z = x ∧ (γ[G, X] : G ⊗ X ⟶ X).left z = y := by
  constructor
  · rintro ⟨z, hz, rfl⟩; exact ⟨z, hz, rfl⟩
  · rintro ⟨z, hz, rfl⟩; exact ⟨z, hz, rfl⟩

theorem orbit_symm {x y : X.left} (h : y ∈ orbit G X x) : x ∈ orbit G X y := by
  obtain ⟨σ, -, h1, h2⟩ := GlobalTheory.T.shear_iso_action_projection G X
  obtain ⟨z, rfl, rfl⟩ := (mem_orbit_iff G X).1 h
  refine (mem_orbit_iff G X).2 ⟨σ.left z, ?_, ?_⟩
  · rw [← Scheme.Hom.comp_apply, ← Over.comp_left, h1]
  · rw [← Scheme.Hom.comp_apply, ← Over.comp_left, h2]

theorem orbit_hom {x y : X.left} (h : y ∈ orbit G X x) : X.hom y = X.hom x := by
  obtain ⟨z, rfl, rfl⟩ := (mem_orbit_iff G X).1 h
  have e : (γ[G, X] : G ⊗ X ⟶ X).left ≫ X.hom = (snd G X).left ≫ X.hom := (Over.w _).trans (Over.w _).symm
  rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, e]

theorem stable_of_forall (V : X.left.Opens) (h : ∀ y ∈ V, orbit G X y ⊆ V) :
    (γ[G, X] : G ⊗ X ⟶ X).left ⁻¹ᵁ V = (snd G X).left ⁻¹ᵁ V := by
  ext z
  constructor
  · intro hz
    exact h _ hz (orbit_symm G X ((mem_orbit_iff G X).2 ⟨z, rfl, rfl⟩))
  · intro hz
    exact h _ hz ((mem_orbit_iff G X).2 ⟨z, rfl, rfl⟩)

variable {G X} in
theorem isFinite_snd (hG : IsFiniteLocallyFree G.hom) : IsFinite (snd G X).left := by
  have := hG.1
  have h : IsFinite (pullback.snd G.hom X.hom) := inferInstance
  exact h

variable {G X} in
theorem orbit_finite (hG : IsFiniteLocallyFree G.hom) (x : X.left) : (orbit G X x).Finite := by
  have := isFinite_snd (X := X) hG
  exact ((snd G X).left.finite_preimage_singleton x).image _

variable {G X} in
theorem isOpen_saturated (hG : IsFiniteLocallyFree G.hom) (O : X.left.Opens) :
    IsOpen {y : X.left | orbit G X y ⊆ O} := by
  have := isFinite_snd (X := X) hG
  have hc : IsClosed ((snd G X).left '' ((γ[G, X] : G ⊗ X ⟶ X).left ⁻¹' (O : Set X.left)ᶜ)) :=
    (snd G X).left.isClosedMap _ (O.isOpen.isClosed_compl.preimage (γ[G, X] : G ⊗ X ⟶ X).left.continuous)
  convert hc.isOpen_compl using 1
  ext y
  simp only [Set.mem_setOf_eq, Set.mem_compl_iff, Set.mem_image, Set.mem_preimage, not_exists, not_and]
  constructor
  · intro h z hz hy
    exact hz (h ((mem_orbit_iff G X).2 ⟨z, hy, rfl⟩))
  · intro h w hw
    obtain ⟨z, hz, rfl⟩ := (mem_orbit_iff G X).1 hw
    by_contra hn
    exact h z hn hz

theorem mem_basicOpen_appLE' {P Y : Scheme.{0}} (c : P ⟶ Y) (U : Y.Opens) (hc : ⊤ ≤ c ⁻¹ᵁ U) (f : Γ(Y, U)) (z : P) :
    z ∈ P.basicOpen ((c.appLE U ⊤ hc).hom f) ↔ c z ∈ Y.basicOpen f := by
  have key : P.basicOpen ((c.appLE U ⊤ hc).hom f) = c ⁻¹ᵁ Y.basicOpen f := by
    rw [Scheme.preimage_basicOpen, Scheme.Hom.appLE, CommRingCat.comp_apply, Scheme.basicOpen_res, top_inf_eq]
  rw [key]
  rfl

theorem exists_norm {P D : Scheme.{0}} [IsAffine P] [IsAffine D] (v : P ⟶ D)
    (hv : FiniteFreeHom v.appTop.hom) (e : Γ(P, ⊤)) :
    ∃ N : Γ(D, ⊤), ∀ y : D, y ∈ D.basicOpen N ↔ ∀ z : P, v z = y → z ∈ P.basicOpen e := by
  letI := v.appTop.hom.toAlgebra
  have h1 : Module.Free Γ(D, ⊤) Γ(P, ⊤) := hv.1
  have h2 : Module.Finite Γ(D, ⊤) Γ(P, ⊤) := hv.2
  refine ⟨Algebra.norm Γ(D, ⊤) e, GlobalTheory.T.basic_open_norm_fibre_iff v _ e fun p => ?_⟩
  rw [GlobalTheory.T.norm_not_mem_prime_iff e p.asIdeal p.isPrime]
  constructor
  · intro h q hq
    exact h q.asIdeal q.isPrime hq
  · intro h q hq hq'
    exact h ⟨q, hq⟩ hq'

theorem exists_stable_affine_nbhd : ∀ {S : Scheme.{0}} (G X : Over S) [GrpObj G] [ModObj G X], IsFiniteLocallyFree G.hom → ∀ (x : X.left) (U : X.left.Opens), IsAffineOpen U → orbit G X x ⊆ U → ∃ (V : X.left.Opens) (W : S.Opens), x ∈ V ∧ IsAffineOpen V ∧ IsAffineOpen W ∧ V ≤ X.hom ⁻¹ᵁ W ∧ (γ[G, X] : G ⊗ X ⟶ X).left ⁻¹ᵁ V = (snd G X).left ⁻¹ᵁ V := by
  intro S G X _ _ hG x U hU hxU
  have hfl := hG.1
  have hfl2 := hG.2.1
  have hfl3 := hG.2.2
  obtain ⟨W, hsW, hW, hfree⟩ := GlobalTheory.T.finite_flat_locally_free_affine G.hom (X.hom x)
  have htrans : ∀ {y w : X.left}, y ∈ orbit G X x → w ∈ orbit G X y → w ∈ orbit G X x :=
    fun {y w} => GlobalTheory.T.mem_orbit_trans G X x y w
  let O : X.left.Opens := U ⊓ X.hom ⁻¹ᵁ W
  have hxO : orbit G X x ⊆ O := fun y hy => ⟨hxU hy, by
    show X.hom y ∈ W
    rw [orbit_hom G X hy]; exact hsW⟩
  let V₀ : X.left.Opens := ⟨{y | orbit G X y ⊆ O}, isOpen_saturated hG O⟩
  have hV₀O : V₀ ≤ O := fun y hy => hy (GlobalTheory.T.mem_orbit_self' G X y)
  have hV₀U : V₀ ≤ U := hV₀O.trans inf_le_left
  have hxV₀ : orbit G X x ⊆ V₀ := fun y hy w hw => hxO (htrans hy hw)
  obtain ⟨f, hKf, hfV⟩ := _root_.GlobalTheory.CompanionTheory.PrimeAvoid.exists_basicOpen_between U V₀ hU hV₀U _ (orbit_finite hG x) hxV₀
  let D : X.left.Opens := X.left.basicOpen f
  have hD : IsAffineOpen D := hU.basicOpen f
  have hDW : D ≤ X.hom ⁻¹ᵁ W := (hfV.trans hV₀O).trans inf_le_right
  have hsq : IsPullback (fst G X).left (snd G X).left G.hom X.hom :=
    IsPullback.of_hasPullback G.hom X.hom
  obtain ⟨h, u, hpb⟩ := GlobalTheory.T.pullback_restrict_open hsq W D hDW
  have := isFinite_snd (X := X) hG
  haveI : IsAffine D.toScheme := hD
  haveI : IsAffine W.toScheme := hW
  haveI : IsAffine (G.hom ⁻¹ᵁ W).toScheme := hW.preimage G.hom
  haveI : IsAffine ((snd G X).left ⁻¹ᵁ D).toScheme := hD.preimage (snd G X).left
  have hfree' := GlobalTheory.T.finite_free_pullback_affine hpb hfree
  let P' : (G ⊗ X).left.Opens := (snd G X).left ⁻¹ᵁ D
  let c : P'.toScheme ⟶ X.left := P'.ι ≫ (γ[G, X] : G ⊗ X ⟶ X).left
  have hc : ⊤ ≤ c ⁻¹ᵁ U := by
    rintro z -
    have hz : (snd G X).left z.1 ∈ D := z.2
    have h1 : (γ[G, X] : G ⊗ X ⟶ X).left z.1 ∈ orbit G X ((snd G X).left z.1) :=
      (mem_orbit_iff G X).2 ⟨z.1, rfl, rfl⟩
    exact (hfV hz h1).1
  obtain ⟨N, hN⟩ := exists_norm ((snd G X).left ∣_ D) hfree' ((c.appLE U ⊤ hc).hom f)
  let V : X.left.Opens := D.ι ''ᵁ (D.toScheme.basicOpen N)
  have hVmem : ∀ y, y ∈ V ↔ y ∈ D ∧ orbit G X y ⊆ D := by
    intro y
    show y ∈ D.ι '' (D.toScheme.basicOpen N : Set D.toScheme) ↔ _
    constructor
    · rintro ⟨y', hy', rfl⟩
      refine ⟨y'.2, fun w hw => ?_⟩
      obtain ⟨z, hz, rfl⟩ := (mem_orbit_iff G X).1 hw
      have hzP : z ∈ P' := by
        show (snd G X).left z ∈ D
        rw [hz]; exact y'.2
      have h1 := (hN y').1 hy' ⟨z, hzP⟩ (Subtype.ext ((morphismRestrict_base_coe _ _ _).trans hz))
      exact (mem_basicOpen_appLE' c U hc f _).1 h1
    · rintro ⟨hyD, ho⟩
      refine ⟨⟨y, hyD⟩, (hN ⟨y, hyD⟩).2 fun z hz => ?_, rfl⟩
      refine (mem_basicOpen_appLE' c U hc f _).2 ?_
      have h2 : (snd G X).left z.1 = y :=
        (morphismRestrict_base_coe _ _ z).symm.trans (congrArg Subtype.val hz)
      exact ho ((mem_orbit_iff G X).2 ⟨z.1, h2, rfl⟩)
  refine ⟨V, W, (hVmem x).2 ⟨hKf (GlobalTheory.T.mem_orbit_self' G X x), fun y hy => hKf hy⟩, ?_, hW, ?_, ?_⟩
  · exact ((isAffineOpen_top D.toScheme).basicOpen N).image_of_isOpenImmersion D.ι
  · exact fun y hy => hDW ((hVmem y).1 hy).1
  · refine stable_of_forall G X V fun y hy w hw => (hVmem w).2 ⟨((hVmem y).1 hy).2 hw, fun t ht => ?_⟩
    exact ((hVmem y).1 hy).2 (GlobalTheory.T.mem_orbit_trans G X y w t hw ht)

end GlobalTheory.CompanionTheory.FreeQuotProof.Nbhd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitAffineNeighbourhood =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitAffineNeighbourhoodStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitAffineNeighbourhoodStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.PublishedTheorems.Algebra₂.RegularHypothesesAndConclusion\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitAffineNeighbourhood\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory AlgebraicGeometry Opposite
open scoped CategoryTheory.MonObj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.CompanionTheory.FreeQuotProof GlobalTheory.CompanionTheory.Hypotheses₂ GlobalTheory.CompanionTheory.Hypotheses₂.FreeQuot

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.OrbitAffineNeighbourhoodStatement =====
