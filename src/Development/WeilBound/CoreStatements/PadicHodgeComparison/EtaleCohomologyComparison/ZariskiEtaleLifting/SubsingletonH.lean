module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.XSmulSucc
public import Mathlib.Order.CompletePartialOrder
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TerminalRes
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FRiCalc
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ConstantCoeffSurjective
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.FiltrationSpanDividedPowers
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ValuationOfValuationModSquare
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallineSiteZariskiCoveredByAtlas
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapAcrFromBase
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PeriodRingBaseChangeFromUniversal
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapUSharp
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.MapWXi
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueLiftOfNilpotent
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLiftToThickening
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompShiftZero
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MemBoundariesZeroIff
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EpsilonCyclotomicElementProperties
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrToContInjective
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemMapBasis
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemSpanIffOfBijective
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsDpOfCompOnGens
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FGlue
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CmpPutSucc
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.PropsA
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.ZariskiCocycleRefinement
import Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ValuationSquareOfValuationMod
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FChart, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FGlob, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLine, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalizationUniversal, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentRefinementOfUnimodular, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrTeichProd, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueHom, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallinePointUniversalLift, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsQuot, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GammaComp, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IncPtInjective, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DescOfDes, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StepDesc, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.PropsE, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.SubsingletonH

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FChart =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FChart", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.XSmulSucc\npublic import Mathlib.Order.CompletePartialOrder\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TerminalRes\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FRiCalc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Polynomial CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.B
universe w w' v u v' u' v'' u''

namespace CrystallineSemistableComparison.B

abbrev ChI (A : Type) : Type := {S : Set A // S.Nonempty}

def chPi {C : Type u} [Category.{v} C] {A : Type} (Q : A → C → Prop)
    (hQ : ∀ α ⦃T T' : C⦄, (T ⟶ T') → Q α T → Q α T') (hA : ∀ T, ∃ α, Q α T) : C ⥤ ChI A where
  obj T := ⟨{α | Q α T}, hA T⟩
  map f := homOfLE (show _ ≤ _ from fun α h => hQ α f h)

def chPhi {C : Type u} [Category.{v} C] {C₁ : Type u'} [Category.{v'} C₁] {A : Type} (P : C ⥤ ChI A)
    (S : ChI A) (ι : C₁ ⥤ C) (hm : ∀ T, S.1 ⊆ (P.obj (ι.obj T)).1) : C₁ ⥤ StructuredArrow S P :=
  Functor.toStructuredArrow ι S P (fun T => homOfLE (show S ≤ _ from hm T)) (fun _ => Subsingleton.elim _ _)

lemma chPhi_equiv {C : Type u} [Category.{v} C] {C₁ : Type u'} [Category.{v'} C₁] {A : Type} (P : C ⥤ ChI A)
    (S : ChI A) (ι : C₁ ⥤ C) (hO : Onto ι (fun T => S.1 ⊆ (P.obj T).1)) :
    (chPhi P S ι hO.mem).IsEquivalence := by
  have := hO.full
  have := hO.faithful
  have : (chPhi P S ι hO.mem).Full :=
    ⟨fun {X Y} f => ⟨ι.preimage f.right, StructuredArrow.hom_ext _ _ (ι.map_preimage f.right)⟩⟩
  have : (chPhi P S ι hO.mem).Faithful :=
    ⟨fun {X Y} f g h => ι.map_injective (congrArg (fun k => CommaMorphism.right k) h)⟩
  have : (chPhi P S ι hO.mem).EssSurj := ⟨fun X => by
    obtain ⟨T₁, ⟨e⟩⟩ := hO.ess X.right (leOfHom X.hom)
    exact ⟨T₁, ⟨StructuredArrow.isoMk e (Subsingleton.elim _ _)⟩⟩⟩
  exact {}

end CrystallineSemistableComparison.B

theorem CrystallineSemistableComparison.B.P.chart : ∀ {R : Type} [CommRing R] {C : Type u} [Category.{v} C] {C' : Type u'} [Category.{v'} C'] (F : C ⥤ ModuleCat.{w} R) (G : C' ⥤ C) {A : Type} (Q : A → C → Prop) (s : R) (n : ℕ), (∀ α ⦃T T' : C⦄, (T ⟶ T') → Q α T → Q α T') → (∀ T, ∃ α, Q α T) → (∀ S : Set A, S.Nonempty → ∃ (C₁ : Type u) (_ : Category.{v} C₁) (C₁' : Type u') (_ : Category.{v'} C₁') (ι : C₁ ⥤ C) (ι' : C₁' ⥤ C') (G₁ : C₁' ⥤ C₁), Onto ι (fun T => ∀ α ∈ S, Q α T) ∧ Onto ι' (fun T => ∀ α ∈ S, Q α (G.obj T)) ∧ Nonempty (G₁ ⋙ ι ≅ ι' ⋙ G) ∧ RI s (n + 1) (ι ⋙ F) G₁) → RI (s ^ (2 * n + 3)) n F G := by
  intro R _ C _ C' _ F G A Q s n hQ hA hS
  let π := chPi Q hQ hA
  have key : ∀ S : ChI A, RI s (n + 1) (StructuredArrow.proj S π ⋙ F) (StructuredArrow.pre S G π) := by
    intro S
    obtain ⟨C₁, _, C₁', _, ι, ι', G₁, hO, hO', ⟨e⟩, hR⟩ := hS S.1 S.2
    have hO2 : Onto ι (fun T => S.1 ⊆ (π.obj T).1) := hO
    have hO2' : Onto ι' (fun T => S.1 ⊆ ((G ⋙ π).obj T).1) := hO'
    let Φ := chPhi π S ι hO2.mem
    let Φ' := chPhi (G ⋙ π) S ι' hO2'.mem
    let X := StructuredArrow.proj S π ⋙ F
    have h1 : RI 1 (n + 1) X Φ := (P.ri_calc X Φ (𝟭 _) 1 1 (n + 1)).2.2.2.2.2.1 (chPhi_equiv π S ι hO2)
    have h2 : RI s (n + 1) (Φ ⋙ X) G₁ := hR
    have h3 : RI (1 * s) (n + 1) X (G₁ ⋙ Φ) := (P.ri_calc X Φ G₁ 1 s (n + 1)).1 h1 h2
    have iso : G₁ ⋙ Φ ≅ Φ' ⋙ StructuredArrow.pre S G π :=
      NatIso.ofComponents (fun T => StructuredArrow.isoMk (e.app T) (Subsingleton.elim _ _))
        (fun f => StructuredArrow.hom_ext _ _ (e.hom.naturality f))
    have h4 : RI (1 * s) (n + 1) X (Φ' ⋙ StructuredArrow.pre S G π) :=
      (P.ri_calc X (G₁ ⋙ Φ) (𝟭 _) (1 * s) 1 (n + 1)).2.2.2.2.1 _ iso h3
    have h5 : RI 1 (n + 1) (StructuredArrow.pre S G π ⋙ X) Φ' :=
      (P.ri_calc (StructuredArrow.pre S G π ⋙ X) Φ' (𝟭 _) 1 1 (n + 1)).2.2.2.2.2.1 (chPhi_equiv (G ⋙ π) S ι' hO2')
    have h6 := (P.ri_calc X (StructuredArrow.pre S G π) Φ' 1 (1 * s) (n + 1)).2.2.1 h5 h4
    rwa [one_mul, one_mul] at h6
  intro j hj
  have h := CrystallineSemistableComparison.P.rel π (Mor.restrict F G) s j (fun S q hq => key S q (by omega))
  have he : s ^ (2 * n + 3) = s ^ (2 * j + 3) * s ^ (2 * (n - j)) := by
    rw [← pow_add]; congr 1; omega
  rw [he]
  exact (CrystallineSemistableComparison.P.upTo_alg _ LinearMap.id _ _).2.2.2.1 h
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FChart =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FGlob =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FGlob", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.XSmulSucc\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FChart\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FRiCalc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Polynomial CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.B
universe w w' v u v' u' v'' u''

namespace CrystallineSemistableComparison.B

lemma gl_onto {D : Type u} [Category.{v} D] {D₁ : Type u'} [Category.{v'} D₁] (Z : ObjectProperty D)
    (κ : D₁ ⥤ D) (hκ : ∀ T, Z (κ.obj T)) (W : D → Prop) (h : Onto κ W) :
    Onto (Z.lift κ hκ) (fun T => W T.obj) := by
  have : κ.Full := h.full
  have : κ.Faithful := h.faithful
  have : (Z.lift κ hκ ⋙ Z.ι).Full := h.full
  have : (Z.lift κ hκ ⋙ Z.ι).Faithful := h.faithful
  refine ⟨Functor.Full.of_comp_faithful _ Z.ι, Functor.Faithful.of_comp _ Z.ι, fun T => h.mem T, ?_⟩
  intro T hT
  obtain ⟨T₁, ⟨f⟩⟩ := h.ess T.obj hT
  exact ⟨T₁, ⟨Z.ι.preimageIso f⟩⟩

end CrystallineSemistableComparison.B

theorem CrystallineSemistableComparison.B.P.glob : ∀ {R : Type} [CommRing R] {C : Type u} [Category.{v} C] {C' : Type u'} [Category.{v'} C'] (F : C ⥤ ModuleCat.{w} R) (G : C' ⥤ C) {A : Type} (Q : A → C → Prop) (s : R) (n : ℕ), (∀ α ⦃T T' : C⦄, (T ⟶ T') → Q α T → Q α T') → RI 1 n F (ObjectProperty.ι fun T => ∃ α, Q α T) → RI 1 n (G ⋙ F) (ObjectProperty.ι fun T => ∃ α, Q α (G.obj T)) → (∀ S : Set A, S.Nonempty → ∃ (C₁ : Type u) (_ : Category.{v} C₁) (C₁' : Type u') (_ : Category.{v'} C₁') (ι : C₁ ⥤ C) (ι' : C₁' ⥤ C') (G₁ : C₁' ⥤ C₁), Onto ι (fun T => ∀ α ∈ S, Q α T) ∧ Onto ι' (fun T => ∀ α ∈ S, Q α (G.obj T)) ∧ Nonempty (G₁ ⋙ ι ≅ ι' ⋙ G) ∧ RI s (n + 1) (ι ⋙ F) G₁) → RI (s ^ (2 * n + 3)) n F G := by
  intro R _ C _ C' _ F G A Q s n hQ hP hP' hS
  let Pr : ObjectProperty C := fun T => ∃ α, Q α T
  let Pr' : ObjectProperty C' := fun T => ∃ α, Q α (G.obj T)
  let Gq : Pr'.FullSubcategory ⥤ Pr.FullSubcategory := Pr.lift (Pr'.ι ⋙ G) (fun T => T.property)
  let Fq : Pr.FullSubcategory ⥤ ModuleCat.{w} R := Pr.ι ⋙ F
  have hc : RI (s ^ (2 * n + 3)) n Fq Gq := by
    refine P.chart Fq Gq (fun α T => Q α T.obj) s n (fun α T T' f h => hQ α f.hom h) (fun T => T.property) ?_
    intro S hSn
    obtain ⟨C₁, _, C₁', _, ι, ι', G₁, hO, hO', ⟨e⟩, hR⟩ := hS S hSn
    obtain ⟨α₀, hα₀⟩ := hSn
    let ιq : C₁ ⥤ Pr.FullSubcategory := Pr.lift ι (fun T => ⟨α₀, hO.mem T α₀ hα₀⟩)
    let ιq' : C₁' ⥤ Pr'.FullSubcategory := Pr'.lift ι' (fun T => ⟨α₀, hO'.mem T α₀ hα₀⟩)
    refine ⟨C₁, inferInstance, C₁', inferInstance, ιq, ιq', G₁, ?_, ?_, ?_, hR⟩
    · exact gl_onto Pr ι _ (fun T => ∀ α ∈ S, Q α T) hO
    · exact gl_onto Pr' ι' _ (fun T => ∀ α ∈ S, Q α (G.obj T)) hO'
    · exact ⟨Functor.fullyFaithfulCancelRight Pr.ι e⟩
  have h1 : RI (1 * s ^ (2 * n + 3)) n F (Gq ⋙ Pr.ι) := (P.ri_calc F Pr.ι Gq 1 _ n).1 hP hc
  have h2 : RI (1 * (1 * s ^ (2 * n + 3))) n F G := (P.ri_calc F G Pr'.ι 1 _ n).2.2.1 hP' h1
  rwa [one_mul, one_mul] at h2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FGlob =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLine =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLine", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.XSmulSucc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Polynomial CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.B
universe w w' v u v' u' v'' u''

namespace GlobalTheory.CompanionTheory.LineUniv

theorem exists_line : ∀ {C : Type u} [Category.{v} C] (U : UF C) (P : ∀ ⦃T T' : C⦄, (T ⟶ T') → (T' ⟶ T') → Prop), (∀ T : C, ∃ (T₁ : C) (i : T ⟶ T₁) (η : U.U T₁), (∀ (T' : C) (φ : T ⟶ T') (a : U.U T'), ∃! ψ : T₁ ⟶ T', i ≫ ψ = φ ∧ U.map ψ η = a) ∧ ∀ g : T₁ ⟶ T₁, i ≫ g = i → U.map g η = U.q _ * η → P i g) → ∃ L : Line (𝟭 C) U, ∀ T, P (L.i.app T) (L.γ.app T) := by
  intro C _ U P h
  choose T₁ i η hu hP using h
  have hm : ∀ (T T' : C) (φ : T ⟶ T'), ∃ ψ : T₁ T ⟶ T₁ T', i T ≫ ψ = φ ≫ i T' ∧ U.map ψ (η T) = η T' :=
    fun T T' φ => (hu T _ (φ ≫ i T') (η T')).exists
  choose m hm1 hm2 using hm
  have hg : ∀ T, ∃ g : T₁ T ⟶ T₁ T, i T ≫ g = i T ∧ U.map g (η T) = U.q _ * η T :=
    fun T => (hu T _ (i T) _).exists
  choose g hg1 hg2 using hg
  have uniq : ∀ (T T' : C) (φ : T ⟶ T') (a : U.U T') (ψ ψ' : T₁ T ⟶ T'), i T ≫ ψ = φ → U.map ψ (η T) = a →
      i T ≫ ψ' = φ → U.map ψ' (η T) = a → ψ = ψ' :=
    fun T T' φ a ψ ψ' h1 h2 h3 h4 => (hu T T' φ a).unique ⟨h1, h2⟩ ⟨h3, h4⟩
  let Ξ : C ⥤ C :=
    { obj := T₁
      map := fun {T T'} φ => m T T' φ
      map_id := fun T => uniq T _ (i T) (η T) _ _ (by rw [hm1, Category.id_comp]) (hm2 _ _ _)
        (Category.comp_id _) (U.map_id _ _)
      map_comp := fun {T T' T''} φ ψ => uniq T _ (φ ≫ ψ ≫ i T'') (η T'') _ _
        (by rw [hm1, Category.assoc]) (hm2 _ _ _)
        (by rw [← Category.assoc, hm1, Category.assoc, hm1])
        (by rw [U.map_comp, hm2, hm2]) }
  let iN : 𝟭 C ⟶ Ξ :=
    { app := i
      naturality := fun {T T'} φ => (hm1 T T' φ).symm }
  let γN : Ξ ⟶ Ξ :=
    { app := g
      naturality := fun {T T'} φ => uniq T _ (φ ≫ i T') (U.q _ * η T') _ _
        (by
          change i T ≫ m T T' φ ≫ g T' = _
          rw [← Category.assoc, hm1, Category.assoc, hg1])
        (by
          change U.map (m T T' φ ≫ g T') (η T) = _
          rw [U.map_comp, hm2, hg2])
        (by
          change i T ≫ g T ≫ m T T' φ = _
          rw [← Category.assoc, hg1, hm1])
        (by
          change U.map (g T ≫ m T T' φ) (η T) = _
          rw [U.map_comp, hg2, map_mul, hm2, U.map_q]) }
  refine ⟨{ Ξ := Ξ, i := iN, η := η, map_η := fun {T T'} φ => hm2 T T' φ, γ := γN, iγ := ?_, γη := hg2, univ := ?_ }, ?_⟩
  · ext T
    exact hg1 T
  · intro T t φ a
    exact hu T t φ a
  · intro T
    exact hP T (g T) (hg1 T) (hg2 T)

end GlobalTheory.CompanionTheory.LineUniv
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLine =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalizationUniversal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalizationUniversal", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ConstantCoeffSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.XSmulSucc\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ValuationSquareOfValuationMod\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry DividedPowers GroundTheory.PAdicHodge GlobalTheory.LogCris GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.B

noncomputable section

namespace GlobalTheory.CompanionTheory.IdemObj

section Ring

variable {R : Type} [CommRing R] {e : R}

abbrev Q (e : R) : Type := R ⧸ Ideal.span {1 - e}

theorem mk_e : Ideal.Quotient.mk (Ideal.span {1 - e}) e = 1 := by
  have h : Ideal.Quotient.mk (Ideal.span {1 - e}) (1 - e) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton_self _)
  rw [map_sub, map_one, sub_eq_zero] at h
  exact h.symm

theorem mul_eq_zero_of_mem (he : IsIdempotentElem e) {x : R} (hx : x ∈ Ideal.span {1 - e}) : e * x = 0 := by
  obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 hx
  have : e * (1 - e) = 0 := by rw [mul_sub, mul_one, he.eq, sub_self]
  rw [mul_left_comm, this, mul_zero]

theorem mem_of_mul_eq_zero {x : R} (hx : e * x = 0) : x ∈ Ideal.span {1 - e} :=
  Ideal.mem_span_singleton'.2 ⟨x, by rw [mul_comm, sub_mul, one_mul, hx, sub_zero]⟩

theorem mk_eq_zero_iff (he : IsIdempotentElem e) (x : R) :
    Ideal.Quotient.mk (Ideal.span {1 - e}) x = 0 ↔ e * x = 0 :=
  ⟨fun h => mul_eq_zero_of_mem he (Ideal.Quotient.eq_zero_iff_mem.1 h),
    fun h => Ideal.Quotient.eq_zero_iff_mem.2 (mem_of_mul_eq_zero h)⟩

theorem mk_eq_iff (he : IsIdempotentElem e) (x y : R) :
    Ideal.Quotient.mk (Ideal.span {1 - e}) x = Ideal.Quotient.mk (Ideal.span {1 - e}) y ↔ e * x = e * y := by
  rw [← sub_eq_zero, ← map_sub, mk_eq_zero_iff he, mul_sub, sub_eq_zero]

theorem perfect_quot (he : IsIdempotentElem e) (l : ℕ) (hl : l ≠ 0) [PerfectRing R l] : PerfectRing (Q e) l := by
  have hb : Function.Bijective (fun x : R => x ^ l) := PerfectRing.bijective_frobenius
  have hp : e ^ l = e := by
    obtain ⟨k, hk⟩ := Nat.exists_eq_succ_of_ne_zero hl
    rw [hk]; exact he.pow_succ_eq k
  refine ⟨⟨fun x y hxy => ?_, fun y => ?_⟩⟩
  · obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective y
    have h : Ideal.Quotient.mk (Ideal.span {1 - e}) (x ^ l) = Ideal.Quotient.mk (Ideal.span {1 - e}) (y ^ l) := by
      rw [map_pow, map_pow]; exact hxy
    rw [mk_eq_iff he] at h
    refine (mk_eq_iff he x y).2 (hb.1 ?_)
    change (e * x) ^ l = (e * y) ^ l
    rw [mul_pow, mul_pow, hp, h]
  · obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective y
    obtain ⟨x, rfl⟩ := hb.2 y
    exact ⟨Ideal.Quotient.mk _ x, (map_pow (Ideal.Quotient.mk _) x l).symm⟩

theorem tf_quot (he : IsIdempotentElem e) {π : R} (h : π ∈ nonZeroDivisors R) :
    Ideal.Quotient.mk (Ideal.span {1 - e}) π ∈ nonZeroDivisors (Q e) := by
  refine mem_nonZeroDivisors_iff_left.2 fun x hx => ?_
  obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
  rw [← map_mul, mk_eq_zero_iff he] at hx
  rw [mk_eq_zero_iff he]
  have : π * (e * x) = 0 := by rw [mul_left_comm]; exact hx
  exact (mem_nonZeroDivisors_iff_left.1 h) _ this

theorem dvd_of_mk_dvd (he : IsIdempotentElem e) {a x : R} (n : ℕ)
    (h : Ideal.Quotient.mk (Ideal.span {1 - e}) a ^ n ∣ Ideal.Quotient.mk (Ideal.span {1 - e}) x) :
    a ^ n ∣ e * x := by
  obtain ⟨c, hc⟩ := h
  obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective c
  rw [← map_pow, ← map_mul, mk_eq_iff he] at hc
  exact ⟨e * c, by rw [hc]; ring⟩

theorem complete_quot (he : IsIdempotentElem e) {π : R} (hc : IsAdicComplete (Ideal.span {π}) R) :
    IsAdicComplete (Ideal.span {Ideal.Quotient.mk (Ideal.span {1 - e}) π}) (Q e) := by
  have hH : IsHausdorff (Ideal.span {Ideal.Quotient.mk (Ideal.span {1 - e}) π}) (Q e) := ⟨fun x hx => by
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    refine (mk_eq_zero_iff he x).2 (hc.toIsHausdorff.haus' _ fun n => ?_)
    have := (_root_.GlobalTheory.CompanionTheory.PowComp.smodEq_span_iff _ _ _ n).1 (hx n)
    rw [sub_zero] at this
    exact (_root_.GlobalTheory.CompanionTheory.PowComp.smodEq_span_iff _ _ _ n).2 (by rw [sub_zero]; exact dvd_of_mk_dvd he n this)⟩
  have hP : IsPrecomplete (Ideal.span {Ideal.Quotient.mk (Ideal.span {1 - e}) π}) (Q e) := ⟨fun f hf => by
    choose g hg using fun n => Ideal.Quotient.mk_surjective (f n)
    obtain ⟨L, hL⟩ := hc.toIsPrecomplete.prec' (fun n => e * g n) fun {m n} hmn => (_root_.GlobalTheory.CompanionTheory.PowComp.smodEq_span_iff _ _ _ m).2 (by
      have := (_root_.GlobalTheory.CompanionTheory.PowComp.smodEq_span_iff _ _ _ m).1 (hf hmn)
      rw [← hg m, ← hg n, ← map_sub] at this
      rw [← mul_sub]
      exact dvd_of_mk_dvd he m this)
    refine ⟨Ideal.Quotient.mk _ L, fun n => (_root_.GlobalTheory.CompanionTheory.PowComp.smodEq_span_iff _ _ _ n).2 ?_⟩
    have h1 := map_dvd (Ideal.Quotient.mk (Ideal.span {1 - e})) ((_root_.GlobalTheory.CompanionTheory.PowComp.smodEq_span_iff _ _ _ n).1 (hL n))
    rw [map_pow, map_sub, map_mul, mk_e, one_mul, hg n] at h1
    exact h1⟩
  exact { hH, hP with }

theorem aic_quot (h : ∀ P : Polynomial R, P.Monic → 0 < P.natDegree → ∃ x, P.IsRoot x)
    (P : Polynomial (Q e)) (hm : P.Monic) (hd : 0 < P.natDegree) : ∃ x, P.IsRoot x := by
  have : Nontrivial (Q e) := by
    by_contra hn
    rw [not_nontrivial_iff_subsingleton] at hn
    rw [Subsingleton.elim P 0, Polynomial.natDegree_zero] at hd
    exact lt_irrefl _ hd
  have hl : P ∈ Polynomial.lifts (Ideal.Quotient.mk (Ideal.span {1 - e})) :=
    (Polynomial.lifts_iff_coeff_lifts _).2 fun n => Ideal.Quotient.mk_surjective _
  obtain ⟨q, rfl, hq, hqm⟩ := Polynomial.lifts_and_degree_eq_and_monic hl hm
  have hn : q.natDegree = (q.map (Ideal.Quotient.mk (Ideal.span {1 - e}))).natDegree :=
    Polynomial.natDegree_eq_of_degree_eq hq
  obtain ⟨x, hx⟩ := h q hqm (hn ▸ hd)
  have hx' : q.eval x = 0 := hx
  exact ⟨Ideal.Quotient.mk _ x, by
    rw [Polynomial.IsRoot.def, Polynomial.eval_map_apply, hx', map_zero]⟩

theorem teich_mul_eq_zero {l : ℕ} [Fact l.Prime] (he : IsIdempotentElem e) (x : WittVector l R)
    (hx : WittVector.map (Ideal.Quotient.mk (Ideal.span {1 - e})) x = 0) :
    WittVector.teichmuller l e * x = 0 := by
  have h1 : WittVector.map (Ideal.Quotient.mk (Ideal.span {1 - e})) (WittVector.teichmuller l e * x) = 0 := by
    rw [map_mul, hx, mul_zero]
  have h2 : WittVector.map (Ideal.Quotient.mk (Ideal.span {e})) (WittVector.teichmuller l e * x) = 0 := by
    have : Ideal.Quotient.mk (Ideal.span {e}) e = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton_self _)
    rw [map_mul, WittVector.map_teichmuller, this, WittVector.teichmuller_zero, zero_mul]
  ext i
  have c1 := congrArg (fun w => WittVector.coeff w i) h1
  have c2 := congrArg (fun w => WittVector.coeff w i) h2
  simp only [WittVector.map_coeff, WittVector.zero_coeff] at c1 c2
  rw [WittVector.zero_coeff]
  have a1 := (mk_eq_zero_iff he _).1 c1
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 (Ideal.Quotient.eq_zero_iff_mem.1 c2)
  rw [← hc, mul_left_comm, he.eq, mul_comm] at a1
  rw [← hc, mul_comm c e, a1]

end Ring

end GlobalTheory.CompanionTheory.IdemObj

namespace GlobalTheory.CompanionTheory.IdemObj

section Obj

variable {l : ℕ} [Fact l.Prime]

def obj (A : PAlg l) {e : A.A} (he : IsIdempotentElem e) : PAlg l where
  A := Q e
  s := (Ideal.Quotient.mk (Ideal.span {1 - e})).comp A.s
  perf := perfect_quot he l (Fact.out : l.Prime).ne_zero
  compl := complete_quot he A.compl
  tf := tf_quot he A.tf

def proj (A : PAlg l) {e : A.A} (he : IsIdempotentElem e) : A ⟶ obj A he :=
  ⟨Ideal.Quotient.mk (Ideal.span {1 - e}), rfl⟩

theorem val_quot (A : PAlg l) {e : A.A} (he : IsIdempotentElem e) (h : A.VAL) : (obj A he).VAL := by
  intro f g ⟨N, hN⟩
  obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective f
  obtain ⟨g, rfl⟩ := Ideal.Quotient.mk_surjective g
  obtain ⟨a, b, hab⟩ := Ideal.mem_span_pair.1 hN
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective a
  obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective b
  have hpi : (obj A he).pi = Ideal.Quotient.mk (Ideal.span {1 - e}) A.pi := rfl
  rw [hpi] at hab
  have hab' : Ideal.Quotient.mk (Ideal.span {1 - e}) (a * f + b * g) = Ideal.Quotient.mk (Ideal.span {1 - e}) (A.pi ^ N) := by
    rw [map_add (f := _), map_mul, map_mul, map_pow]; exact hab
  rw [mk_eq_iff he] at hab'
  have hmem : A.pi ^ N ∈ Ideal.span {e * f + (1 - e), e * g} := by
    refine Ideal.mem_span_pair.2 ⟨e * a + (1 - e) * A.pi ^ N, b, ?_⟩
    have e2 : e * e = e := he.eq
    have : (e * a + (1 - e) * A.pi ^ N) * (e * f + (1 - e)) + b * (e * g)
        = e * (a * f + b * g) + (e * e - e) * (a * f) + (e - e * e) * (a + A.pi ^ N * f) + (1 - 2 * e + e * e) * A.pi ^ N := by ring
    rw [this, hab', e2]; ring
  obtain ⟨u, hu, h1, h2⟩ := h _ _ ⟨N, hmem⟩
  refine ⟨Ideal.Quotient.mk _ u, hu.map (Ideal.Quotient.mk _), ?_, ?_⟩
  · obtain ⟨c, hc⟩ := Ideal.mem_span_singleton.1 h1
    refine Ideal.mem_span_singleton.2 ⟨Ideal.Quotient.mk _ c, ?_⟩
    have := congrArg (Ideal.Quotient.mk (Ideal.span {1 - e})) hc
    simpa only [map_mul, map_add (f := _), map_sub, map_one, mk_e, sub_self, add_zero, one_mul] using this
  · obtain ⟨c, hc⟩ := Ideal.mem_span_singleton.1 h2
    refine Ideal.mem_span_singleton.2 ⟨Ideal.Quotient.mk _ c, ?_⟩
    have := congrArg (Ideal.Quotient.mk (Ideal.span {1 - e})) hc
    simpa only [map_mul, map_add (f := _), map_sub, map_one, mk_e, sub_self, add_zero, one_mul] using this

variable {A B : PAlg l}

theorem acrisZero_surjective_of_surjective (f : A ⟶ B) (hs : Function.Surjective (Hom.f f)) :
    Function.Surjective (pdOk_hom f).acr0 := by
  have key : ∀ y ∈ B.Acr0, ∃ z : A.Acr0, awayW (Hom.f f) z.1 = y := by
    intro y hy
    induction hy using Algebra.adjoin_induction with
    | mem y hy =>
      obtain ⟨k, rfl⟩ := hy
      exact ⟨A.dxi0 k, (awayW_dpw (Hom.f f) k (A.isUnit_natCast k.factorial_ne_zero) A.xi).trans
        (congrArg (dpw k) (mapW_xi f))⟩
    | algebraMap x =>
      obtain ⟨w, rfl⟩ := WittVector.map_surjective (Hom.f f) hs x
      exact ⟨algebraMap A.W A.Acr0 w, awayW_algebraMap (Hom.f f) w⟩
    | add x y _ _ hx hy =>
      obtain ⟨a, rfl⟩ := hx
      obtain ⟨b, rfl⟩ := hy
      exact ⟨a + b, map_add _ _ _⟩
    | mul x y _ _ hx hy =>
      obtain ⟨a, rfl⟩ := hx
      obtain ⟨b, rfl⟩ := hy
      exact ⟨a * b, map_mul _ _ _⟩
  intro y
  obtain ⟨z, hz⟩ := key y.1 y.2
  exact ⟨z, Subtype.ext hz⟩

theorem mapAcr_surjective (f : A ⟶ B) (hs : Function.Surjective (Hom.f f)) (n : ℕ) :
    Function.Surjective (mapAcr f n) := fun x => by
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
  obtain ⟨z, rfl⟩ := acrisZero_surjective_of_surjective f hs y
  exact ⟨A.mkAcr n z, rfl⟩

theorem mul_mapAcr_eq_zero (f : A ⟶ B) (hs : Function.Surjective (Hom.f f)) (E : A.W)
    (hE : ∀ w : A.W, WittVector.map (Hom.f f) w = 0 → E * w = 0) (n : ℕ) (x : A.Acr n)
    (hx : mapAcr f n x = 0) : A.toAcr n E * x = 0 := by
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective x
  have h0 : B.mkAcr n ((pdOk_hom f).acr0 y) = 0 := hx
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 (Ideal.Quotient.eq_zero_iff_mem.1 h0)
  obtain ⟨y₁, rfl⟩ := acrisZero_surjective_of_surjective f hs c
  have hz : (pdOk_hom f).acr0 (y - y₁ * (l : A.Acr0) ^ n) = 0 := by
    rw [(pdOk_hom f).acr0.map_sub, (pdOk_hom f).acr0.map_mul,
      (pdOk_hom f).acr0.map_pow, map_natCast, hc, sub_self]
  have hz' : awayW (Hom.f f) (y - y₁ * (l : A.Acr0) ^ n).1 = 0 := congrArg Subtype.val hz
  obtain ⟨⟨w, s⟩, hw⟩ := IsLocalization.surj (Submonoid.powers (l : A.W)) (y - y₁ * (l : A.Acr0) ^ n).1
  have hw0 : WittVector.map (Hom.f f) w = 0 := by
    apply B.algebraMap_WL_injective
    have hw' : (y - y₁ * (l : A.Acr0) ^ n).1 * algebraMap A.W (WL l A.A) s = algebraMap A.W (WL l A.A) w := hw
    rw [map_zero, ← awayW_algebraMap, ← hw', map_mul, hz', zero_mul]
  have hEz : algebraMap A.W (WL l A.A) E * (y - y₁ * (l : A.Acr0) ^ n).1 = 0 := by
    have hu : IsUnit (algebraMap A.W (WL l A.A) s) := IsLocalization.map_units _ s
    apply hu.mul_right_cancel
    have hw' : (y - y₁ * (l : A.Acr0) ^ n).1 * algebraMap A.W (WL l A.A) s = algebraMap A.W (WL l A.A) w := hw
    rw [zero_mul, mul_assoc, hw', ← map_mul, hE w hw0, map_zero]
  have hEz' : algebraMap A.W A.Acr0 E * (y - y₁ * (l : A.Acr0) ^ n) = 0 := Subtype.ext hEz
  have hfin : algebraMap A.W A.Acr0 E * y = (algebraMap A.W A.Acr0 E * y₁) * (l : A.Acr0) ^ n := by
    rw [mul_sub, sub_eq_zero] at hEz'
    rw [hEz', mul_assoc]
  change A.mkAcr n (algebraMap A.W A.Acr0 E) * A.mkAcr n y = 0
  rw [← map_mul, hfin]
  exact Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _))

end Obj

theorem directFactor : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l) (e : A.A), IsIdempotentElem e → ∃ (A' : PAlg l) (lam : A ⟶ A'), (A.IsTest → A'.IsTest) ∧ PAlg.Hom.f lam e = 1 ∧ (∀ (B : PAlg l) (ψ : A ⟶ B), PAlg.Hom.f ψ e = 1 → ∃! χ : A' ⟶ B, lam ≫ χ = ψ) ∧ ∀ n, Function.Surjective (mapAcr lam n) ∧ ∀ x, mapAcr lam n x = 0 → A.toAcr n (WittVector.teichmuller l e) * x = 0 := by
  intro l _ A e he
  have hs : Function.Surjective (Hom.f (proj A he)) := Ideal.Quotient.mk_surjective
  refine ⟨obj A he, proj A he, fun h => ⟨aic_quot h.1, val_quot A he h.2⟩, mk_e, ?_, fun n =>
    ⟨mapAcr_surjective _ hs n, mul_mapAcr_eq_zero _ hs _ (fun w hw => teich_mul_eq_zero he w hw) n⟩⟩
  intro B ψ hψ
  have hk : ∀ a ∈ Ideal.span {1 - e}, Hom.f ψ a = 0 := by
    intro a ha
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 ha
    rw [map_mul, map_sub, map_one, hψ, sub_self, mul_zero]
  have hcomm : (Ideal.Quotient.lift _ (Hom.f ψ) hk).comp (obj A he).s = B.s := by
    have := Hom.comm ψ
    exact this
  refine ⟨⟨Ideal.Quotient.lift _ (Hom.f ψ) hk, hcomm⟩, Hom.ext (RingHom.ext fun x => rfl), fun χ hχ => Hom.ext ?_⟩
  refine Ideal.Quotient.ringHom_ext (RingHom.ext fun x => ?_)
  exact RingHom.congr_fun (congrArg Hom.f hχ) x

end GlobalTheory.CompanionTheory.IdemObj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalizationUniversal =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentRefinementOfUnimodular =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentRefinementOfUnimodular", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.FiltrationSpanDividedPowers\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ValuationOfValuationModSquare\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.XSmulSucc\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry DividedPowers GroundTheory.PAdicHodge GlobalTheory.LogCris GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.B

namespace GlobalTheory.CompanionTheory.TestCover

section Ring

variable {S : Type*} [CommRing S]

theorem mem_of_compare {f g d : S} (h : Ideal.span {f, g} = ⊤) (h1 : d * f ∈ Ideal.span {g})
    (h2 : (1 - d) * g ∈ Ideal.span {f}) : d ∈ Ideal.span {g} ∧ 1 - d ∈ Ideal.span {f} := by
  obtain ⟨x, y, hxy⟩ := Ideal.mem_span_pair.1 (Ideal.eq_top_iff_one _ |>.1 h)
  constructor
  · have e : d = x * (d * f) + (d * y) * g := by
      linear_combination (-d) * hxy
    rw [e]
    exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ h1)
      (Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self g))
  · have e : 1 - d = ((1 - d) * x) * f + y * ((1 - d) * g) := by
      linear_combination (-(1 - d)) * hxy
    rw [e]
    exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self f))
      (Ideal.mul_mem_left _ _ h2)

theorem idem_prod {ι : Type*} (t : Finset ι) (f : ι → S) (h : ∀ k, IsIdempotentElem (f k)) :
    IsIdempotentElem (∏ k ∈ t, f k) := by
  unfold IsIdempotentElem
  rw [← Finset.prod_mul_distrib]
  exact Finset.prod_congr rfl fun k _ => h k

theorem span_top_of_prod {m : ℕ} (e : Fin m → S) (h : ∏ k, (1 - e k) = 0) :
    Ideal.span (Set.range e) = ⊤ := by
  rw [Ideal.eq_top_iff_one, ← Ideal.Quotient.eq_zero_iff_mem]
  have hk : ∀ k, Ideal.Quotient.mk (Ideal.span (Set.range e)) (1 - e k) = 1 := fun k => by
    have h0 : Ideal.Quotient.mk (Ideal.span (Set.range e)) (e k) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.subset_span (Set.mem_range_self k))
    rw [map_sub, map_one, h0, sub_zero]
  have := congrArg (Ideal.Quotient.mk (Ideal.span (Set.range e))) h
  rw [map_prod, Finset.prod_congr rfl fun k _ => hk k, Finset.prod_const_one, map_zero] at this
  rw [map_one, this]

theorem idem_refine
    (hV : ∀ f g : S, Ideal.span {f, g} = ⊤ →
      ∃ e : S, IsIdempotentElem e ∧ e * f ∈ Ideal.span {g} ∧ (1 - e) * g ∈ Ideal.span {f}) :
    ∀ (m : ℕ) (s : Fin m → S) (c : S), IsIdempotentElem c → c ∈ Ideal.span (Set.range s) →
      ∃ e : Fin m → S, (∀ k, IsIdempotentElem (e k)) ∧ (∀ k, e k ∈ Ideal.span {s k}) ∧
        c * ∏ k, (1 - e k) = 0 := by
  intro m
  induction m with
  | zero =>
    intro s c _ hc
    have h0 : c = 0 := by
      rw [Set.range_eq_empty, Ideal.span_empty] at hc
      exact (Submodule.mem_bot _).1 hc
    exact ⟨Fin.elim0, fun k => k.elim0, fun k => k.elim0, by rw [h0, zero_mul]⟩
  | succ m ih =>
    intro s c hc hcs
    have hr : Set.range s = insert (s 0) (Set.range (Fin.tail s)) := by
      conv_lhs => rw [← Fin.cons_self_tail s]
      exact Fin.range_cons _ _
    rw [hr, Ideal.mem_span_insert] at hcs
    obtain ⟨a, r, hr', hcr⟩ := hcs
    have htop : Ideal.span {s 0, r + (1 - c)} = ⊤ := by
      rw [Ideal.eq_top_iff_one, Ideal.mem_span_pair]
      exact ⟨a, 1, by linear_combination -hcr⟩
    obtain ⟨d, hd, h1, h2⟩ := hV _ _ htop
    obtain ⟨hdg, hds⟩ := mem_of_compare htop h1 h2
    obtain ⟨t, ht⟩ := Ideal.mem_span_singleton'.1 hdg
    have hcc : c * c = c := hc
    have hcd : IsIdempotentElem (c * d) := hc.mul hd
    have hmem : c * d ∈ Ideal.span (Set.range (Fin.tail s)) := by
      have e : c * d = (t * c) * r := by
        rw [← ht]
        linear_combination (-t) * hcc
      rw [e]
      exact Ideal.mul_mem_left _ _ hr'
    obtain ⟨e', hi, hm, hp⟩ := ih (Fin.tail s) (c * d) hcd hmem
    refine ⟨Fin.cons (1 - d) e', ?_, ?_, ?_⟩
    · intro k
      refine Fin.cases ?_ (fun i => ?_) k
      · simpa using hd.one_sub
      · simpa using hi i
    · intro k
      refine Fin.cases ?_ (fun i => ?_) k
      · simpa using hds
      · simpa [Fin.tail] using hm i
    · rw [Fin.prod_univ_succ]
      simp only [Fin.cons_zero, Fin.cons_succ]
      linear_combination hp

end Ring

theorem test_cover : ∀ {l : ℕ} [Fact l.Prime] (A : PAlg l), A.IsTest → ∀ {m : ℕ} (s : Fin m → A.U),
    Ideal.span (Set.range s) = ⊤ → ∃ e : Fin m → A.A, (∀ k, IsIdempotentElem (e k)) ∧
      Ideal.span (Set.range e) = ⊤ ∧ ∀ k, A.sharp (e k) ∈ Ideal.span {s k} := by
  intro l _ A hA m s hs
  have hV : ∀ f g : A.U, Ideal.span {f, g} = ⊤ →
      ∃ e : A.U, IsIdempotentElem e ∧ e * f ∈ Ideal.span {g} ∧ (1 - e) * g ∈ Ideal.span {f} :=
    fun f g h => hA.val_aic.1 f g ⟨0, by rw [pow_zero, h]; trivial⟩
  obtain ⟨u, hi, hm, hp⟩ := idem_refine hV m s 1 IsIdempotentElem.one (by rw [hs]; trivial)
  rw [one_mul] at hp
  have hex : ∀ k, ∃ e₀ : A.A, IsIdempotentElem e₀ ∧ A.sharp e₀ = u k := fun k =>
    (RL.idem_au A (u k) (hi k)).exists
  choose e he hsh using hex
  have hc := (RL.sharp_cong A).2.2
  have hzero : A.sharp 0 = 0 := by
    have := hc 1 IsIdempotentElem.one
    rwa [sub_self, map_one, sub_self] at this
  have hsp : A.sharp (∏ k, (1 - e k)) = 0 := by
    rw [map_prod, ← hp]
    exact Finset.prod_congr rfl fun k _ => by rw [hc _ (he k), hsh]
  have hidem : IsIdempotentElem (∏ k, (1 - e k)) :=
    idem_prod _ _ fun k => (he k).one_sub
  have h0 : ∏ k, (1 - e k) = 0 :=
    (RL.idem_au A 0 IsIdempotentElem.zero).unique ⟨hidem, hsp⟩ ⟨IsIdempotentElem.zero, hzero⟩
  exact ⟨e, he, span_top_of_prod e h0, fun k => by rw [hsh]; exact hm k⟩

end GlobalTheory.CompanionTheory.TestCover
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentRefinementOfUnimodular =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrTeichProd =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrTeichProd", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallineSiteZariskiCoveredByAtlas\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapAcrFromBase\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentLocalizationUniversal\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdempotentRefinementOfUnimodular\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PeriodRingBaseChangeFromUniversal\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapUSharp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
noncomputable section
open CategoryTheory AlgebraicGeometry DividedPowers GroundTheory.PAdicHodge GlobalTheory.LogCris GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.B

namespace GlobalTheory.CompanionTheory.TestZar

theorem idem_unit {R : Type} [CommRing R] {u : R} (hu : IsIdempotentElem u) (h : IsUnit u) : u = 1 :=
  h.mul_left_cancel (by rw [mul_one]; exact hu)

theorem factor_one {R R' ι : Type} [CommRing R] [CommRing R'] (g : R →+* R') (b : ι → R) (hb : ∀ i, IsIdempotentElem (b i))
    (S : Finset ι) (h : g (∏ i ∈ S, b i) = 1) {i : ι} (hi : i ∈ S) : g (b i) = 1 :=
  idem_unit ((hb i).map g) (isUnit_of_dvd_unit (map_dvd g (Finset.dvd_prod_of_mem b hi)) (h ▸ isUnit_one))

theorem span_of_nil {R P ι : Type} [CommRing R] [CommRing P] (I : Ideal R) (hI : ∀ x ∈ I, IsNilpotent x) (g : ι → R)
    (π : P →+* R ⧸ I) (e : ι → P) (he : Ideal.span (Set.range e) = ⊤)
    (h : ∀ i, π (e i) = Ideal.Quotient.mk I (g i)) : Ideal.span (Set.range g) = ⊤ := by
  have h1 : Ideal.map (Ideal.Quotient.mk I) (Ideal.span (Set.range g)) = ⊤ := by
    have e1 : (Ideal.Quotient.mk I) ∘ g = π ∘ e := funext fun i => (h i).symm
    rw [Ideal.map_span, ← Set.range_comp, e1, Set.range_comp, ← Ideal.map_span, he, Ideal.map_top]
  have h2 : (1 : R ⧸ I) ∈ Ideal.map (Ideal.Quotient.mk I) (Ideal.span (Set.range g)) := by
    rw [h1]; trivial
  obtain ⟨a, ha, ha1⟩ := (Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective).1 h2
  have hj : a - 1 ∈ I := Ideal.Quotient.eq.1 (by rw [ha1, map_one])
  have hu : IsUnit a := by
    have := (hI _ hj).isUnit_add_one
    simpa using this
  exact Ideal.eq_top_of_isUnit_mem _ ha hu

section Gen

open GlobalTheory.CompanionTheory.ThickZar

variable {O : Type} [CommRing O] {F : Fn O} {b : Base} {ht : b.t = 1} {κ : O →+* b.R ⧸ b.I}
  {R₀ : Type} [CommRing R₀] (c : R₀ →+* b.R) (r : ℕ)
  {C : Type*} [Category C] (G : C ⥤ Thick (F.cr b ht κ))

def locModG {m : ℕ} (T' : C) (Lc : Finset (Fin m) → C) (lam : ∀ S, T' ⟶ Lc S)
    (f : Fin m → (G.obj T').B) (hf : Ideal.span (Set.range f) = ⊤)
    (h1 : ∀ S, ∀ k ∈ S, (G.map (lam S)).φ (f k) = 1)
    (hs : ∀ S, ∀ y ∈ (G.obj (Lc S)).pdPow r, ∃ x ∈ (G.obj T').pdPow r, (G.map (lam S)).φ x = y)
    (hk : ∀ S x, (G.map (lam S)).φ x = 0 → (∏ k ∈ S, f k) * x = 0) :
    LocMod (G ⋙ (pdS (F.cr b ht κ) c r).fn) T' Lc lam where
  Λ := (G.obj T').B
  f := f
  span := hf
  ρ₀ := mulR c r (G.obj T')
  ρ S := (mulR c r (G.obj (Lc S))).comp (G.map (lam S)).φ
  lam_ρ S a x := Subtype.ext (map_mul (G.map (lam S)).φ a (show (G.obj T').B from x.1))
  tr_ρ S S' t ht' a x := by
    have e : (G.map t).φ.comp (G.map (lam S)).φ = (G.map (lam S')).φ := by
      have := congrArg Thick.Hom.φ (congrArg G.map ht')
      rw [G.map_comp] at this
      exact this
    refine Subtype.ext ?_
    change (G.map t).φ ((G.map (lam S)).φ a * (show (G.obj (Lc S)).B from x.1)) =
      (G.map (lam S')).φ a * (G.map t).φ (show (G.obj (Lc S)).B from x.1)
    rw [map_mul, ← RingHom.comp_apply (G.map t).φ, e]
  unit S k hk' := by
    change Function.Bijective (mulR c r (G.obj (Lc S)) ((G.map (lam S)).φ (f k)))
    rw [h1 S k hk', map_one]
    exact Function.bijective_id
  surj S y := by
    obtain ⟨x, hx, e⟩ := hs S y.1 y.2
    refine ⟨0, ⟨x, hx⟩, ?_⟩
    rw [pow_zero, map_one]
    exact Subtype.ext e.symm
  ker S x hx := by
    have h0 : (G.map (lam S)).φ (show (G.obj T').B from x.1) = 0 := congrArg Subtype.val hx
    refine ⟨1, Subtype.ext ?_⟩
    rw [pow_one]
    exact hk S _ h0

end Gen

variable {l : ℕ} [Fact l.Prime]

theorem step_onto {A B : PAlg l} (lam : A ⟶ B) (k : Bool) (n r : ℕ) (hs : Function.Surjective (mapAcr lam n))
    {y : B.Acr n} (hy : y ∈ fil (DD k B n) r) : ∃ x ∈ fil (DD k A n) r, mapAcr lam n x = y := by
  have hA := (_root_.GlobalTheory.CompanionTheory.AcrMod.acr_modp A n).2.2.2.2.1 k r
  have hB := (_root_.GlobalTheory.CompanionTheory.AcrMod.acr_modp B n).2.2.2.2.1 k r
  have e : (mapAcr lam n).comp (mapAcr A.fromBase n) = mapAcr B.fromBase n :=
    RingHom.ext fun x => mapAcr_fromBase lam n x
  rw [hB, ← e, ← Ideal.map_map, ← hA] at hy
  exact (Ideal.mem_map_iff_of_surjective _ hs).1 hy

theorem span_acr (A : PAlg l) (n : ℕ) {m : ℕ} (e : Fin m → A.A) (he : Ideal.span (Set.range e) = ⊤) :
    Ideal.span (Set.range fun i => A.toAcr n (WittVector.teichmuller l (e i))) = ⊤ := by
  obtain ⟨⟨π, hπ, -⟩, -, -, -, -, hnil, -⟩ := _root_.GlobalTheory.CompanionTheory.AcrMod.acr_modp A n
  exact span_of_nil (A.PFil n) (fun x hx => (hnil x hx).1) _ π e he fun i => hπ _

theorem acr_teich_one {A B : PAlg l} (f : A ⟶ B) (n : ℕ) {a : A.A} (h : Hom.f f a = 1) :
    mapAcr f n (A.toAcr n (WittVector.teichmuller l a)) = 1 := by
  rw [mapAcr_toAcr, mapW, WittVector.map_teichmuller, h, map_one, map_one]

theorem acr_teich_prod (A : PAlg l) (n : ℕ) {ι : Type} (S : Finset ι) (a : ι → A.A) :
    A.toAcr n (WittVector.teichmuller l (∏ i ∈ S, a i)) = ∏ i ∈ S, A.toAcr n (WittVector.teichmuller l (a i)) := by
  rw [map_prod, map_prod]

section Fac

variable {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l)

def facObj (T' : El (F.pt κ)) (A' : PAlg l) (lam : T'.1.obj ⟶ A') (h : A'.IsTest) : El (F.pt κ) :=
  (testι l ⋙ F.pt κ).elementsMk ⟨A', h⟩ ((F.pt κ).map lam T'.val)

def facHom (T' : El (F.pt κ)) (A' : PAlg l) (lam : T'.1.obj ⟶ A') (h : A'.IsTest) : T' ⟶ facObj F κ T' A' lam h :=
  ⟨ObjectProperty.homMk lam, rfl⟩

theorem fac_univ (T' : El (F.pt κ)) (A' : PAlg l) (lam : T'.1.obj ⟶ A') (h : A'.IsTest) (T'' : El (F.pt κ)) (ψ : T' ⟶ T'')
    (hu : ∃! χ : A' ⟶ T''.1.obj, lam ≫ χ = ψ.1.hom) :
    ∃! χ : facObj F κ T' A' lam h ⟶ T'', facHom F κ T' A' lam h ≫ χ = ψ := by
  obtain ⟨χ, hχ, huniq⟩ := hu
  refine ⟨⟨ObjectProperty.homMk χ, ?_⟩, Functor.Elements.hom_ext (ObjectProperty.hom_ext _ hχ), fun χ' h' =>
    Functor.Elements.hom_ext (ObjectProperty.hom_ext _ (huniq χ'.1.hom (congrArg (fun z => z.1.hom) h')))⟩
  change (F.pt κ).map χ ((F.pt κ).map lam T'.2) = T''.2
  rw [← Functor.map_comp_apply, hχ]
  exact ψ.2

theorem fac_loc (k : Bool) (n r : ℕ) (T' : El (F.pt κ)) {m : ℕ} (b : Fin m → T'.1.obj.A)
    (hspan : Ideal.span (Set.range b) = ⊤) (A' : Finset (Fin m) → PAlg l) (lam : ∀ S, T'.1.obj ⟶ A' S)
    (ht : ∀ S, (A' S).IsTest) (h1 : ∀ S, ∀ i ∈ S, Hom.f (lam S) (b i) = 1)
    (hs : ∀ S, Function.Surjective (mapAcr (lam S) n))
    (hk : ∀ S x, mapAcr (lam S) n x = 0 → T'.1.obj.toAcr n (WittVector.teichmuller l (∏ i ∈ S, b i)) * x = 0) :
    Nonempty (LocMod (gT F κ k n ⋙ (pdS (Lc F κ k n) ((base l).cris n) r).fn) T'
      (fun S => facObj F κ T' (A' S) (lam S) (ht S)) fun S => facHom F κ T' (A' S) (lam S) (ht S)) := by
  have hf : Ideal.span (Set.range fun i => T'.1.obj.toAcr n (WittVector.teichmuller l (b i))) = ⊤ := span_acr _ n b hspan
  have hk' : ∀ S x, mapAcr (lam S) n x = 0 →
      (∏ i ∈ S, T'.1.obj.toAcr n (WittVector.teichmuller l (b i))) * x = 0 := fun S x hx => by
    have h := hk S x hx
    rw [acr_teich_prod] at h
    exact h
  exact ⟨locModG (F := F) (b := bs l k n) (ht := rfl) (κ := κb κ k n) ((base l).cris n) r (gT F κ k n) T'
    (fun S => facObj F κ T' (A' S) (lam S) (ht S)) (fun S => facHom F κ T' (A' S) (lam S) (ht S))
    (fun i => T'.1.obj.toAcr n (WittVector.teichmuller l (b i))) hf
    (fun S i hi => acr_teich_one (lam S) n (h1 S i hi))
    (fun S y hy => step_onto (lam S) k n r (hs S) hy) hk'⟩

theorem factors (k : Bool) (n r : ℕ) (T' : El (F.pt κ)) {m : ℕ}
    (b : Fin m → T'.1.obj.A) (hb : ∀ i, IsIdempotentElem (b i)) (hspan : Ideal.span (Set.range b) = ⊤) :
    ∃ (Lc' : Finset (Fin m) → El (F.pt κ)) (lamE : ∀ S, T' ⟶ Lc' S),
      (∀ S, ∀ i ∈ S, Hom.f (lamE S).1.hom (b i) = 1) ∧
      (∀ S (T'' : El (F.pt κ)) (ψ : T' ⟶ T''), (∀ i ∈ S, Hom.f ψ.1.hom (b i) = 1) → ∃! χ : Lc' S ⟶ T'', lamE S ≫ χ = ψ) ∧
      Nonempty (LocMod (gT F κ k n ⋙ (pdS (Lc F κ k n) ((base l).cris n) r).fn) T' Lc' lamE) := by
  have ha : ∀ S : Finset (Fin m), IsIdempotentElem (∏ i ∈ S, b i) := fun S =>
    Finset.prod_induction _ IsIdempotentElem (fun _ _ h h' => h.mul h') IsIdempotentElem.one fun i _ => hb i
  choose A' lam htest hlam huniv hacr using fun S => _root_.GlobalTheory.CompanionTheory.IdemObj.directFactor T'.1.obj (∏ i ∈ S, b i) (ha S)
  have h1 : ∀ S, ∀ i ∈ S, Hom.f (lam S) (b i) = 1 := fun S i hi => factor_one (Hom.f (lam S)) b hb S (hlam S) hi
  have ht : ∀ S, (A' S).IsTest := fun S => htest S T'.1.property
  refine ⟨fun S => facObj F κ T' (A' S) (lam S) (ht S), fun S => facHom F κ T' (A' S) (lam S) (ht S), h1,
    fun S T'' ψ h => fac_univ F κ T' (A' S) (lam S) (ht S) T'' ψ (huniv S T''.1.obj ψ.1.hom ?_),
    fac_loc F κ k n r T' b hspan A' lam ht h1 (fun S => (hacr S n).1) fun S => (hacr S n).2⟩
  rw [map_prod]
  exact Finset.prod_eq_one fun i hi => h i hi

end Fac

theorem chart_of_one {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) {d : ℕ} (𝒜 : F.Atlas d) (k : Bool) (n : ℕ)
    {T T₁ : El (F.pt κ)} (ψ : T ⟶ T₁) (s : T.1.obj.U) (a : T.1.obj.A) (ha : T.1.obj.sharp a ∈ Ideal.span {s})
    (hcov : ∀ (B' : CommRingCat) (φ : CommRingCat.of T.1.obj.U ⟶ B'), IsUnit (φ.hom s) →
      ∃ α, (𝒜.V α).In (F.Pt.map φ T.2.1))
    (h : Hom.f ψ.1.hom a = 1) : ∃ α, (𝒜.V α).In ((gT F κ k n).obj T₁).y.1.2 := by
  have hu : IsUnit ((CommRingCat.ofHom (mapU ψ.1.hom)).hom s) := by
    obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 ha
    have h2 := congrArg (mapU ψ.1.hom) hc
    rw [map_mul, mapU_sharp, h, map_one] at h2
    exact IsUnit.of_mul_eq_one _ (by rw [mul_comm]; exact h2)
  obtain ⟨α, hα⟩ := hcov _ _ hu
  have hpt : F.Pt.map (CommRingCat.ofHom (mapU ψ.1.hom)) T.2.1 = T₁.2.1 := congrArg Subtype.val ψ.2
  rw [hpt] at hα
  exact ⟨α, (𝒜.V α).in_map (CommRingCat.ofHom (uJ k T₁.1.obj n)) hα⟩

theorem zarCov_test : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) {d : ℕ} (𝒜 : F.Atlas d)
    (k : Bool) (n r : ℕ), ZarCov (gT F κ k n ⋙ (pdS (Lc F κ k n) ((base l).cris n) r).fn)
      fun T => ∃ α, (𝒜.V α).In ((gT F κ k n).obj T).y.1.2 := by
  intro l _ O _ F κ d 𝒜 k n r
  refine ⟨fun T T' φ h => (GlobalTheory.CompanionTheory.ThickZar.zarCov_pdS F (bs l k n) rfl (κb κ k n) ((base l).cris n) 𝒜
    (Fact.out : l.Prime).ne_zero r).1 ((gT F κ k n).map φ) h, fun T => ?_⟩
  obtain ⟨m, s, hs, hcov⟩ := 𝒜.cov (CommRingCat.of T.1.obj.U) T.2.1
  obtain ⟨e, hidem, hspan, hes⟩ := _root_.GlobalTheory.CompanionTheory.TestCover.test_cover T.1.obj T.1.property s hs
  refine ⟨m, fun i _ ψ => Hom.f ψ.1.hom (e i) = 1, fun i T₁ T₂ ψ χ h => ?_,
    fun i T₁ ψ h => chart_of_one F κ 𝒜 k n ψ (s i) (e i) (hes i) (hcov i) h, fun T' φ => ?_⟩
  · have h' : Hom.f ψ.1.hom (e i) = 1 := h
    have e1 : Hom.f (ψ ≫ χ).1.hom (e i) = Hom.f χ.1.hom (Hom.f ψ.1.hom (e i)) := rfl
    exact e1.trans (by rw [h', map_one])
  have hspan' : Ideal.span (Set.range fun i => Hom.f φ.1.hom (e i)) = ⊤ := by
    have h := congrArg (Ideal.map (Hom.f φ.1.hom)) hspan
    rw [Ideal.map_span, Ideal.map_top, ← Set.range_comp] at h
    exact h
  obtain ⟨Lc', lamE, h1, h2, h3⟩ := factors F κ k n r T' (fun i => Hom.f φ.1.hom (e i))
    (fun i => (hidem i).map (Hom.f φ.1.hom)) hspan'
  exact ⟨Lc', lamE, fun S i hi => h1 S i hi, fun S T'' ψ h => h2 S T'' ψ fun i hi => h i hi, h3⟩

end GlobalTheory.CompanionTheory.TestZar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrTeichProd =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueHom =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueHom", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.MapWXi\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.MapUgAlgebraMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.RatBasisLinearIndependentInt\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsDPMorphismBot\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.XSmulSucc\nimport Mathlib.RingTheory.DividedPowers.Basic\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry DividedPowers GroundTheory.PAdicHodge GlobalTheory.LogCris GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.B

noncomputable section

namespace GlobalTheory.CompanionTheory.PerfLift

variable {l : ℕ} [Fact l.Prime] {R S : Type} [CommRing R] [CommRing S]

def powHom (hS : (l : S) = 0) (n : ℕ) : S →+* S where
  toFun x := x ^ l ^ n
  map_one' := one_pow _
  map_mul' x y := mul_pow x y _
  map_zero' := zero_pow (pow_ne_zero _ (Fact.out : l.Prime).ne_zero)
  map_add' x y := by
    obtain ⟨r, hr⟩ := exists_add_pow_prime_pow_eq (Fact.out : l.Prime) x y n
    rw [hr, hS]; simp

theorem powHom_apply (hS : (l : S) = 0) (n : ℕ) (x : S) : powHom hS n x = x ^ l ^ n := rfl

def rootHom [PerfectRing R l] (hR : (l : R) = 0) (n : ℕ) : R ≃+* R :=
  RingEquiv.ofBijective (powHom hR n)
    (PerfectRing.bijective_frobenius : Function.Bijective fun x : R => x ^ l ^ n)

theorem rootHom_pow [PerfectRing R l] (hR : (l : R) = 0) (n : ℕ) (a : R) :
    ((rootHom hR n).symm a) ^ l ^ n = a :=
  (rootHom hR n).apply_symm_apply a

theorem rootHom_symm_pow [PerfectRing R l] (hR : (l : R) = 0) (n : ℕ) (b : R) :
    (rootHom hR n).symm (b ^ l ^ n) = b :=
  (rootHom hR n).symm_apply_apply b

def level [PerfectRing R l] (hR : (l : R) = 0) (hS : (l : S) = 0) (π : S)
    (g : R →+* S ⧸ Ideal.span {π}) (n : ℕ) : R →+* S ⧸ Ideal.span {π} ^ l ^ n :=
  (Ideal.quotientMap (Ideal.span {π} ^ l ^ n) (powHom hS n)
    (fun _ hx => Ideal.mem_comap.2 (Ideal.pow_mem_pow hx _))).comp
      (g.comp ((rootHom hR n).symm : R →+* R))

theorem level_spec [PerfectRing R l] (hR : (l : R) = 0) (hS : (l : S) = 0) (π : S)
    (g : R →+* S ⧸ Ideal.span {π}) (n : ℕ) (b : R) (x : S)
    (hx : Ideal.Quotient.mk _ x = g b) :
    level hR hS π g n (b ^ l ^ n) = Ideal.Quotient.mk _ (x ^ l ^ n) := by
  have h1 : ((rootHom hR n).symm : R →+* R) (b ^ l ^ n) = b := rootHom_symm_pow hR n b
  simp only [level, RingHom.comp_apply, h1, ← hx, Ideal.quotientMap_mk, powHom_apply]

theorem strictMono_pow : StrictMono fun n : ℕ => l ^ n :=
  strictMono_nat_of_lt_succ fun n => Nat.pow_lt_pow_right (Fact.out : l.Prime).one_lt (Nat.lt_succ_self n)

theorem level_compat [PerfectRing R l] (hR : (l : R) = 0) (hS : (l : S) = 0) (π : S)
    (g : R →+* S ⧸ Ideal.span {π}) (m : ℕ) :
    (Ideal.Quotient.factorPow (Ideal.span {π}) ((strictMono_pow (l := l)).monotone m.le_succ)).comp
      (level hR hS π g (m + 1)) = level hR hS π g m := by
  ext a
  obtain ⟨b, rfl⟩ : ∃ b : R, b ^ l ^ (m + 1) = a := ⟨_, rootHom_pow hR (m + 1) a⟩
  obtain ⟨x, hx⟩ := Ideal.Quotient.mk_surjective (g b)
  have hx' : Ideal.Quotient.mk (Ideal.span {π}) (x ^ l) = g (b ^ l) := by
    rw [map_pow, map_pow, hx]
  have e1 : b ^ l ^ (m + 1) = (b ^ l) ^ l ^ m := by rw [← pow_mul, pow_succ']
  have e2 : x ^ l ^ (m + 1) = (x ^ l) ^ l ^ m := by rw [← pow_mul, pow_succ']
  rw [RingHom.comp_apply, level_spec hR hS π g (m + 1) b x hx, e1, level_spec hR hS π g m _ _ hx', e2]
  rfl

theorem exists_lift [PerfectRing R l] (hR : (l : R) = 0) (hS : (l : S) = 0) (π : S)
    [IsAdicComplete (Ideal.span {π}) S] (g : R →+* S ⧸ Ideal.span {π}) :
    ∃ f : R →+* S, (Ideal.Quotient.mk _).comp f = g := by
  refine ⟨IsAdicComplete.StrictMono.liftRingHom (Ideal.span {π}) (strictMono_pow (l := l))
    (level hR hS π g) (fun {m} => level_compat hR hS π g m), ?_⟩
  ext a
  obtain ⟨x, hx⟩ := Ideal.Quotient.mk_surjective (g a)
  have h0 := IsAdicComplete.StrictMono.mk_liftRingHom (Ideal.span {π}) (strictMono_pow (l := l))
    (level hR hS π g) (fun {m} => level_compat hR hS π g m) (n := 0) a
  have h1 := level_spec hR hS π g 0 a x hx
  have ea : a ^ l ^ 0 = a := by simp
  have ex : x ^ l ^ 0 = x := by simp
  rw [ea, ex] at h1
  have h2 := Ideal.Quotient.eq.1 (h0.trans h1)
  have eI : Ideal.span {π} ^ l ^ 0 = Ideal.span {π} := by simp
  rw [eI] at h2
  rw [RingHom.comp_apply, ← hx]
  exact Ideal.Quotient.eq.2 h2

theorem lift_unique [PerfectRing R l] (hR : (l : R) = 0) (hS : (l : S) = 0) (π : S)
    [IsHausdorff (Ideal.span {π}) S] (f f' : R →+* S)
    (h : (Ideal.Quotient.mk (Ideal.span {π})).comp f = (Ideal.Quotient.mk _).comp f') : f = f' := by
  apply DFunLike.coe_injective
  apply IsHausdorff.StrictMono.funext' (Ideal.span {π}) (strictMono_pow (l := l))
  intro n a
  obtain ⟨b, rfl⟩ : ∃ b : R, b ^ l ^ n = a := ⟨_, rootHom_pow hR n a⟩
  have hb : f b - f' b ∈ Ideal.span {π} :=
    Ideal.Quotient.eq.1 (RingHom.congr_fun h b)
  refine Ideal.Quotient.eq.2 ?_
  have e : f (b ^ l ^ n) - f' (b ^ l ^ n) = (f b - f' b) ^ l ^ n := by
    have := map_sub (powHom hS n) (f b) (f' b)
    simpa only [powHom_apply, map_pow] using this.symm
  rw [e]
  exact Ideal.pow_mem_pow hb _

theorem existsUnique_hom {l : ℕ} [Fact l.Prime] (A A' : PAlg l)
    (g : A.A →+* A'.A ⧸ Ideal.span {A'.pi})
    (hg : g.comp A.s = (Ideal.Quotient.mk _).comp A'.s) :
    ∃! φ : A ⟶ A', (Ideal.Quotient.mk _).comp (PAlg.Hom.f φ) = g := by
  have : IsAdicComplete (Ideal.span {A'.pi}) A'.A := A'.compl
  have hOb : ((l : ℕ) : Ob l) = 0 := CharP.cast_eq_zero _ l
  obtain ⟨f, hf⟩ := exists_lift A.natCast_l A'.natCast_l A'.pi g
  have hcomm : f.comp A.s = A'.s := by
    refine lift_unique hOb A'.natCast_l A'.pi _ _ ?_
    rw [← RingHom.comp_assoc, hf, hg]
  refine ⟨⟨f, hcomm⟩, hf, fun φ hφ => ?_⟩
  apply PAlg.Hom.ext
  exact lift_unique A.natCast_l A'.natCast_l A'.pi _ _ (hφ.trans hf.symm)

end GlobalTheory.CompanionTheory.PerfLift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueHom =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallinePointUniversalLift =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallinePointUniversalLift", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapUSharp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueHom\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUniqueLiftOfNilpotent\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ValuationOfValuationModSquare\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry DividedPowers GroundTheory.PAdicHodge GlobalTheory.LogCris GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.B

noncomputable section

namespace GlobalTheory.CompanionTheory.TowerHom

theorem exists_roots {R : Type} [CommRing R] {l : ℕ} (h : ∀ x : R, ∃ y, y ^ l = x) (u : R) :
    ∃ y : ℕ → R, y 0 = u ∧ ∀ m, y (m + 1) ^ l = y m := by
  choose r hr using h
  exact ⟨fun m => Nat.rec u (fun _ z => r z) m, rfl, fun m => hr _⟩

theorem roots_unique {R : Type} [CommRing R] {l : ℕ} (h : ∀ x y : R, x ^ l = y ^ l → x = y) {y z : ℕ → R}
    (h0 : y 0 = z 0) (hy : ∀ m, y (m + 1) ^ l = y m) (hz : ∀ m, z (m + 1) ^ l = z m) (m : ℕ) : y m = z m := by
  induction m with
  | zero => exact h0
  | succ m ih => exact h _ _ (by rw [hy, hz, ih])

theorem pow_sub_pow {R : Type} [CommRing R] {l : ℕ} (F : R →+* R) (hF : ∀ x, F x = x ^ l) (x y : R) (m : ℕ) :
    x ^ l ^ m - y ^ l ^ m = (x - y) ^ l ^ m := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [pow_succ l m, pow_mul, pow_mul, pow_mul, ← ih, ← hF, ← hF, ← hF, map_sub]

theorem iter_root {R : Type} [CommRing R] {l : ℕ} {x : ℕ → R} (hx : ∀ m, x (m + 1) ^ l = x m) (m : ℕ) :
    x m ^ l ^ m = x 0 := by
  induction m with
  | zero => simp
  | succ m ih => rw [pow_succ' l m, pow_mul, hx, ih]

variable {l : ℕ} [Fact l.Prime]

theorem pow_char (A : PAlg l) (x : A.A) : A.frob x = x ^ l := rfl

theorem pow_inj (A : PAlg l) (x y : A.A) (h : x ^ l = y ^ l) : x = y := A.frob_bijective.1 h

theorem pow_surj (A : PAlg l) (x : A.A) : ∃ y, y ^ l = x := A.frob_bijective.2 x

theorem eq_of_roots_mod (A : PAlg l) {x y : ℕ → A.A} (hx : ∀ m, x (m + 1) ^ l = x m) (hy : ∀ m, y (m + 1) ^ l = y m)
    (h : ∀ m, x m - y m ∈ Ideal.span {A.pi}) : x 0 = y 0 := by
  have hl : 1 < l := (Fact.out : l.Prime).one_lt
  have hH : IsHausdorff (Ideal.span {A.s (pFlat l)}) A.A := A.compl.toIsHausdorff
  refine sub_eq_zero.1 (hH.haus' _ fun n => ?_)
  rw [SModEq.zero, Ideal.smul_top_eq_map, Algebra.algebraMap_self, Ideal.map_id, ← iter_root hx n, ← iter_root hy n,
    pow_sub_pow A.frob (pow_char A)]
  exact Ideal.pow_le_pow_right (Nat.lt_pow_self hl).le (Ideal.pow_mem_pow (h n) _)

theorem mapU_mem {A A' : PAlg l} (φ : A ⟶ A') {x : A.U} (hx : x ∈ Ideal.span {(l : A.U)}) :
    mapU φ x ∈ Ideal.span {(l : A'.U)} := by
  obtain ⟨z, rfl⟩ := Ideal.mem_span_singleton'.1 hx
  rw [map_mul, map_natCast]
  exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)

theorem exists_sharp_cong (A : PAlg l) (x : A.U) : ∃ a, A.sharp a - x ∈ Ideal.span {(l : A.U)} := by
  obtain ⟨a, ha⟩ := (RL.u_mod A).1 (Ideal.Quotient.mk _ x)
  refine ⟨a, ?_⟩
  rw [A.sharpMap_eq] at ha
  simpa using Ideal.Quotient.eq.1 ha

def modEquiv (A : PAlg l) : (A.A ⧸ Ideal.span {A.pi}) ≃+* A.Un 1 :=
  (Ideal.quotEquivOfEq (RL.u_mod A).2.symm).trans (RingHom.quotientKerEquivOfSurjective (RL.u_mod A).1)

theorem modEquiv_mk (A : PAlg l) (a : A.A) : modEquiv A (Ideal.Quotient.mk _ a) = A.aToU1 a := rfl

def gBar (A : PAlg l) {R : Type} [CommRing R] (g : R →+* A.U) : R →+* A.A ⧸ Ideal.span {A.pi} :=
  ((modEquiv A).symm : A.Un 1 →+* A.A ⧸ Ideal.span {A.pi}).comp ((Ideal.Quotient.mk _).comp g)

theorem gBar_iff (A : PAlg l) {R : Type} [CommRing R] (g : R →+* A.U) (r : R) (a : A.A) :
    gBar A g r = Ideal.Quotient.mk _ a ↔ A.sharp a - g r ∈ Ideal.span {(l : A.U)} := by
  have e : gBar A g r = (modEquiv A).symm (Ideal.Quotient.mk _ (g r)) := rfl
  rw [e, RingEquiv.symm_apply_eq, modEquiv_mk, A.sharpMap_eq, eq_comm, Ideal.Quotient.eq, pow_one]


open CrystallineSemistableComparison.PAlg in
theorem core {O : Type} [CommRing O] {F : Fn O} {κ : O →+* OC l} {d : ℕ} {s : F.Small d} (𝒯 : Tower κ s) (A' : PAlg l)
    (g : s.R →+* A'.U) (hga : g.comp s.a = A'.oC.comp κ) (u : Fin d → A'.A) (hu : ∀ k, A'.sharp (u k) = g (s.T k)) :
    ∃ φ : 𝒯.A ⟶ A', ((mapU φ).comp 𝒯.g = g ∧ ∀ k, Hom.f φ (𝒯.c k 0).val = u k) ∧
      ∀ φ' : 𝒯.A ⟶ A', (mapU φ').comp 𝒯.g = g → (∀ k, Hom.f φ' (𝒯.c k 0).val = u k) → φ' = φ := by
  have hy : ∀ k, ∃ y : ℕ → A'.A, y 0 = u k ∧ ∀ m, y (m + 1) ^ l = y m := fun k => exists_roots (pow_surj A') (u k)
  choose y hy0 hys using hy
  have hc : ∀ k m, ((𝒯.c k (m + 1)).val) ^ l = (𝒯.c k m).val := fun k m => by
    rw [← Units.val_pow_eq_pow_val, 𝒯.c_succ]
  have ho : ((Ideal.Quotient.mk (Ideal.span {A'.pi})).comp A'.s) (pFlat l) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton_self _)
  have h1 : ∀ x w, theta0 l w = κ x → gBar A' g (s.a x) = ((Ideal.Quotient.mk (Ideal.span {A'.pi})).comp A'.s) (w.coeff 0) := by
    intro x w hw
    have hcf : (A'.sW w).coeff 0 = A'.s (w.coeff 0) := WittVector.map_coeff _ _ _
    refine (gBar_iff A' g _ _).2 ?_
    have e1 : g (s.a x) = A'.th (A'.sW w) := by
      rw [← A'.oC_theta0, hw]
      exact RingHom.congr_fun hga x
    have e2 := A'.sharpMap_coeff (A'.sW w)
    rw [hcf, A'.sharpMap_eq] at e2
    rw [e1]
    simpa using Ideal.Quotient.eq.1 e2
  have h2 : ∀ k, Ideal.Quotient.mk (Ideal.span {A'.pi}) (y k 0) = gBar A' g (s.T k) := fun k =>
    ((gBar_iff A' g _ _).2 (by rw [hy0, hu, sub_self]; exact Ideal.zero_mem _)).symm
  have h3 : ∀ k m, Ideal.Quotient.mk (Ideal.span {A'.pi}) (y k (m + 1)) ^ l = Ideal.Quotient.mk (Ideal.span {A'.pi}) (y k m) :=
    fun k m => by rw [← map_pow, hys]
  obtain ⟨f, ⟨hfo, hfg, hfc⟩, hfu⟩ := 𝒯.univ (A'.A ⧸ Ideal.span {A'.pi}) ((Ideal.Quotient.mk _).comp A'.s) (gBar A' g)
    (fun k m => Ideal.Quotient.mk _ (y k m)) ho h1 h2 h3
  obtain ⟨φ, hφ, hφu⟩ := GlobalTheory.CompanionTheory.PerfLift.existsUnique_hom 𝒯.A A' f hfo
  have hφa : ∀ a, Ideal.Quotient.mk (Ideal.span {A'.pi}) (Hom.f φ a) = f a := fun a => RingHom.congr_fun hφ a
  have hck : ∀ k, Hom.f φ (𝒯.c k 0).val = u k := by
    intro k
    rw [← hy0 k]
    refine eq_of_roots_mod A' (x := fun m => Hom.f φ (𝒯.c k m).val) (fun m => ?_) (hys k) fun m => ?_
    · rw [← map_pow, hc]
    · refine Ideal.Quotient.eq.1 ?_
      rw [hφa, hfc]
  have hgφ : (mapU φ).comp 𝒯.g = g := by
    have hE := GlobalTheory.CompanionTheory.EtaleLift.etLift_of_isAdicComplete (Ideal.span {(l : A'.U)}) A'.completeU
      (MvPolynomial (Fin d) O) s.R (MvPolynomial.eval₂Hom s.a fun k => (s.T k : s.R)) s.et
      (g.comp (MvPolynomial.eval₂Hom s.a fun k => (s.T k : s.R))) ((Ideal.Quotient.mk _).comp g) rfl
    refine hE.unique ⟨?_, ?_⟩ ⟨rfl, rfl⟩
    · refine MvPolynomial.ringHom_ext (fun o => ?_) fun k => ?_
      · have e1 : 𝒯.g (s.a o) = 𝒯.A.oC (κ o) := RingHom.congr_fun 𝒯.hg o
        have e2 : g (s.a o) = A'.oC (κ o) := RingHom.congr_fun hga o
        simp only [RingHom.comp_apply, MvPolynomial.coe_eval₂Hom, MvPolynomial.eval₂_C]
        rw [e1, e2, mapU_oC]
      · simp only [RingHom.comp_apply, MvPolynomial.coe_eval₂Hom, MvPolynomial.eval₂_X]
        rw [← 𝒯.c_sharp, mapU_sharp, hck, hu]
    · refine RingHom.ext fun r => ?_
      obtain ⟨a, ha⟩ := exists_sharp_cong 𝒯.A (𝒯.g r)
      have e : gBar A' g r = Ideal.Quotient.mk _ (Hom.f φ a) := by rw [hφa]; exact (hfg r a ha).symm
      have e1 := (gBar_iff A' g r _).1 e
      have e2 := mapU_mem φ ha
      rw [map_sub, mapU_sharp] at e2
      refine Ideal.Quotient.eq.2 ?_
      have e3 : mapU φ (𝒯.g r) - g r = (A'.sharp (Hom.f φ a) - g r) - (A'.sharp (Hom.f φ a) - mapU φ (𝒯.g r)) := by ring
      change mapU φ (𝒯.g r) - g r ∈ _
      rw [e3]
      exact Ideal.sub_mem _ e1 e2
  refine ⟨φ, ⟨hgφ, hck⟩, fun φ' hg' hk' => hφu φ' (hfu _ ⟨?_, ?_, ?_⟩)⟩
  · rw [RingHom.comp_assoc, Hom.comm]
  · intro r a ha
    have e2 := mapU_mem φ' ha
    rw [map_sub, mapU_sharp] at e2
    have e3 : mapU φ' (𝒯.g r) = g r := RingHom.congr_fun hg' r
    rw [e3] at e2
    exact ((gBar_iff A' g r _).2 e2).symm
  · intro k m
    have := roots_unique (pow_inj A') (y := fun m => Hom.f φ' (𝒯.c k m).val) (z := y k)
      ((hk' k).trans (hy0 k).symm) (fun m => by
        rw [← map_pow, hc]) (hys k) m
    exact congrArg (Ideal.Quotient.mk _) this

theorem tower_hom : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] {F : Fn O} {κ : O →+* OC l} {d : ℕ} {s : F.Small d} (𝒯 : Tower κ s) (T : (F.pt κ).Elements), ∃ g : s.R →+* T.1.U, F.Pt.map (CommRingCat.ofHom g) s.y₀ = T.2.1 ∧ (∀ φ : 𝒯.obj ⟶ T, (mapU φ.1).comp 𝒯.g = g) ∧ ∀ u : Fin d → T.1.A, (∀ k, T.1.sharp (u k) = g (s.T k)) → ∃! φ : 𝒯.obj ⟶ T, ∀ k, PAlg.Hom.f φ.1 (𝒯.c k 0).val = u k := by
  intro l _ O _ F κ d s 𝒯 T
  obtain ⟨g, hg, hgu⟩ := s.univ (CommRingCat.of T.1.U) T.2.1 (T.1.oC.comp κ) T.2.2
  have hga : g.comp s.a = T.1.oC.comp κ :=
    F.ov_uniq (hg ▸ F.ov_map (CommRingCat.ofHom g) s.ov) T.2.2
  have hall : ∀ φ : 𝒯.obj ⟶ T, (mapU φ.1).comp 𝒯.g = g := by
    intro φ
    refine hgu _ ?_
    have h1 : F.Pt.map (CommRingCat.ofHom (mapU φ.1)) (F.Pt.map (CommRingCat.ofHom 𝒯.g) s.y₀) = T.2.1 :=
      congrArg Subtype.val φ.2
    have h2 : F.Pt.map (CommRingCat.ofHom ((mapU φ.1).comp 𝒯.g)) s.y₀ = T.2.1 := by
      rw [CommRingCat.ofHom_comp, F.Pt.map_comp]
      exact h1
    exact h2
  refine ⟨g, hg, hall, fun u hu => ?_⟩
  obtain ⟨φ, ⟨hφg, hφk⟩, hφu⟩ := core 𝒯 T.1 g hga u hu
  have hpt : (F.pt κ).map φ 𝒯.obj.2 = T.2 := by
    refine Subtype.ext ?_
    change F.Pt.map (CommRingCat.ofHom (mapU φ)) (F.Pt.map (CommRingCat.ofHom 𝒯.g) s.y₀) = T.2.1
    have h2 : F.Pt.map (CommRingCat.ofHom ((mapU φ).comp 𝒯.g)) s.y₀ = T.2.1 := by
      rw [hφg]
      exact hg
    rw [CommRingCat.ofHom_comp, F.Pt.map_comp] at h2
    exact h2
  refine ⟨⟨φ, hpt⟩, hφk, fun φ' hk => CategoryTheory.Functor.Elements.Hom.ext (hφu φ'.1 (hall φ') hk)⟩

end GlobalTheory.CompanionTheory.TowerHom
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallinePointUniversalLift =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsQuot =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsQuot", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapUSharp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CrystallinePointUniversalLift\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ValuationOfValuationModSquare\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry DividedPowers GroundTheory.PAdicHodge GlobalTheory.LogCris GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.B

noncomputable section

namespace GlobalTheory.CompanionTheory.TowerAct

variable {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] {F : Fn O} {κ : O →+* OC l} {d : ℕ} {s : F.Small d}

def val (𝒯 : Tower κ s) {T : (F.pt κ).Elements} (φ : 𝒯.obj ⟶ T) (k : Fin d) : T.1.A :=
  PAlg.Hom.f φ.1 (𝒯.c k 0).val

theorem val_comp (𝒯 : Tower κ s) {T T' : (F.pt κ).Elements} (φ : 𝒯.obj ⟶ T) (ψ : T ⟶ T') (k : Fin d) :
    val 𝒯 (φ ≫ ψ) k = PAlg.Hom.f ψ.1 (val 𝒯 φ k) := rfl

theorem sharp_val (𝒯 : Tower κ s) {T : (F.pt κ).Elements} (φ : 𝒯.obj ⟶ T) (k : Fin d) :
    T.1.sharp (val 𝒯 φ k) = mapU φ.1 (𝒯.g (s.T k)) := by
  rw [val, ← mapU_sharp]
  exact congrArg (mapU φ.1) (𝒯.c_sharp k)

def valU (𝒯 : Tower κ s) {T : (F.pt κ).Elements} (φ : 𝒯.obj ⟶ T) (k : Fin d) : (T.1.A)ˣ :=
  Units.map (PAlg.Hom.f φ.1).toMonoidHom (𝒯.c k 0)

theorem valU_val (𝒯 : Tower κ s) {T : (F.pt κ).Elements} (φ : 𝒯.obj ⟶ T) (k : Fin d) :
    ((valU 𝒯 φ k : (T.1.A)ˣ) : T.1.A) = val 𝒯 φ k := rfl

theorem hom_ext (𝒯 : Tower κ s) {T : (F.pt κ).Elements} (φ ψ : 𝒯.obj ⟶ T)
    (h : ∀ k, val 𝒯 φ k = val 𝒯 ψ k) : φ = ψ := by
  obtain ⟨g, -, hg, huniq⟩ := _root_.GlobalTheory.CompanionTheory.TowerHom.tower_hom 𝒯 T
  have hu : ∀ k, T.1.sharp (val 𝒯 φ k) = g (s.T k) := fun k => by
    rw [sharp_val]
    exact RingHom.congr_fun (hg φ) _
  obtain ⟨χ, -, hχ⟩ := huniq (fun k => val 𝒯 φ k) hu
  exact (hχ φ (fun k => rfl)).trans (hχ ψ (fun k => (h k).symm)).symm

theorem sharp_mem (ε : Eps l) {T : (F.pt κ).Elements} (x : (epsU ε (F.pt κ)).U T) :
    T.1.sharp ((x.1 : (T.1.A)ˣ) : T.1.A) = 1 := by
  have hx : Units.map T.1.sharp x.1 = 1 := x.2
  exact congrArg Units.val hx

theorem exists_act (𝒯 : Tower κ s) (ε : Eps l) {T : (F.pt κ).Elements}
    (a : Fin d → (epsU ε (F.pt κ)).U T) (φ : 𝒯.obj ⟶ T) :
    ∃ ψ : 𝒯.obj ⟶ T, ∀ k, val 𝒯 ψ k = ((a k).1 : T.1.A) * val 𝒯 φ k := by
  obtain ⟨g, -, hg, huniq⟩ := _root_.GlobalTheory.CompanionTheory.TowerHom.tower_hom 𝒯 T
  have hu : ∀ k, T.1.sharp (((a k).1 : T.1.A) * val 𝒯 φ k) = g (s.T k) := fun k => by
    rw [map_mul, sharp_mem ε (a k), one_mul, sharp_val]
    exact RingHom.congr_fun (hg φ) _
  obtain ⟨χ, hχ, -⟩ := huniq _ hu
  exact ⟨χ, fun k => hχ k⟩

def act (𝒯 : Tower κ s) (ε : Eps l) {T : (F.pt κ).Elements}
    (a : Fin d → (epsU ε (F.pt κ)).U T) (φ : 𝒯.obj ⟶ T) : 𝒯.obj ⟶ T :=
  (exists_act 𝒯 ε a φ).choose

theorem act_val (𝒯 : Tower κ s) (ε : Eps l) {T : (F.pt κ).Elements}
    (a : Fin d → (epsU ε (F.pt κ)).U T) (φ : 𝒯.obj ⟶ T) (k : Fin d) :
    val 𝒯 (act 𝒯 ε a φ) k = ((a k).1 : T.1.A) * val 𝒯 φ k :=
  (exists_act 𝒯 ε a φ).choose_spec k

theorem exists_quot (𝒯 : Tower κ s) (ε : Eps l) {T : (F.pt κ).Elements} (φ ψ : 𝒯.obj ⟶ T) :
    ∃ a : Fin d → (epsU ε (F.pt κ)).U T, ∀ k, ((a k).1 : T.1.A) * val 𝒯 φ k = val 𝒯 ψ k := by
  obtain ⟨g, -, hg, -⟩ := _root_.GlobalTheory.CompanionTheory.TowerHom.tower_hom 𝒯 T
  have hs : ∀ (χ : 𝒯.obj ⟶ T) k, T.1.sharp (val 𝒯 χ k) = g (s.T k) := fun χ k => by
    rw [sharp_val]
    exact RingHom.congr_fun (hg χ) _
  refine ⟨fun k => ⟨valU 𝒯 ψ k * (valU 𝒯 φ k)⁻¹, ?_⟩, fun k => ?_⟩
  · show Units.map T.1.sharp (valU 𝒯 ψ k * (valU 𝒯 φ k)⁻¹) = 1
    rw [map_mul, map_inv, mul_inv_eq_one]
    apply Units.ext
    rw [Units.coe_map, Units.coe_map, valU_val, valU_val, hs ψ k, hs φ k]
  · show ((valU 𝒯 ψ k * (valU 𝒯 φ k)⁻¹ : (T.1.A)ˣ) : T.1.A) * val 𝒯 φ k = val 𝒯 ψ k
    rw [← valU_val 𝒯 φ k, ← Units.val_mul, inv_mul_cancel_right, valU_val]

theorem act_unique (𝒯 : Tower κ s) (ε : Eps l) {T : (F.pt κ).Elements}
    (a b : Fin d → (epsU ε (F.pt κ)).U T) (φ : 𝒯.obj ⟶ T) (h : act 𝒯 ε a φ = act 𝒯 ε b φ) : a = b := by
  funext k
  have h1 := act_val 𝒯 ε a φ k
  rw [h, act_val, ← valU_val 𝒯 φ k] at h1
  apply Subtype.ext
  apply Units.ext
  exact ((valU 𝒯 φ k).isUnit.mul_left_inj).1 h1.symm

theorem tower_act : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] {F : Fn O} {κ : O →+* OC l} {d : ℕ} {s : F.Small d} (𝒯 : Tower κ s) (ε : Eps l), ∃ A : Act (jE (F.pt κ)) (epsU ε (F.pt κ)) d 𝒯.obj, ∀ (T : (F.pt κ).Elements) (a : Fin d → (epsU ε (F.pt κ)).U T) (φ : 𝒯.obj ⟶ T) (k : Fin d), PAlg.Hom.f (A.act a φ).1 (𝒯.c k 0).val = ((a k).1 : T.1.A) * PAlg.Hom.f φ.1 (𝒯.c k 0).val := by
  intro l _ O _ F κ d s 𝒯 ε
  refine ⟨{ act := fun a φ => act 𝒯 ε a φ
            act_one := fun c => hom_ext 𝒯 _ _ fun k => by
              rw [act_val]
              exact one_mul _
            act_mul := fun a b c => hom_ext 𝒯 _ _ fun k => by
              rw [act_val, act_val, act_val, ← mul_assoc]
              rfl
            act_comp := fun a c φ => hom_ext 𝒯 _ _ fun k => by
              rw [val_comp, act_val, act_val, val_comp, map_mul]
              rfl
            ne := fun t => by
              obtain ⟨g, -, -, huniq⟩ := _root_.GlobalTheory.CompanionTheory.TowerHom.tower_hom 𝒯 ((jE (F.pt κ)).obj t)
              choose u hu using fun k => PAlg.IsTest.sharp_surjective t.1.property (g (s.T k))
              obtain ⟨χ, -, -⟩ := huniq u hu
              exact ⟨χ⟩
            trans := fun t c c' => by
              obtain ⟨a, ha⟩ := exists_quot 𝒯 ε c c'
              have hac : act 𝒯 ε a c = c' := hom_ext 𝒯 _ _ fun k => by rw [act_val, ha]
              exact ⟨a, hac, fun b hb => act_unique 𝒯 ε b a c (hb.trans hac.symm)⟩ }, ?_⟩
  intro T a φ k
  exact act_val 𝒯 ε a φ k

end GlobalTheory.CompanionTheory.TowerAct
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsQuot =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GammaComp =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GammaComp", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapUSharp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLiftToThickening\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry DividedPowers GroundTheory.PAdicHodge GlobalTheory.LogCris GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.B

namespace GlobalTheory.CompanionTheory.ThetaEx

section Gen
variable {O : Type} [CommRing O] {F : Fn O} {d : ℕ} (s : F.Small d) {b : Base} (ht : b.t = 1)
  {κ : O →+* b.R ⧸ b.I}
  (𝓛 : Lift s.a (fun k => (s.T k : s.R)) b.R b.I κ) (δ : DividedPowers (b.I.map 𝓛.i))
  (hδ : IsDPMorphism b.γ δ 𝓛.i) (hp : b.p ≠ 0) (hn : IsNilpotent (b.p : b.R))

theorem arrow_ex (T : Thick (F.cr b ht κ)) (g' : s.R →+* T.B ⧸ T.J)
    (hg' : F.Pt.map (CommRingCat.ofHom g') s.y₀ = T.y.1.2) (u : Fin d → T.B)
    (hu : ∀ k, Ideal.Quotient.mk T.J (u k) = g' (s.T k)) :
    ∃ c : liftObj s ht 𝓛 δ hδ hp hn ⟶ T, ∀ k, c.φ (𝓛.t k) = u k := by
  obtain ⟨g, -, hg, hU⟩ := GlobalTheory.CompanionTheory.ThickHom.main s ht 𝓛 δ hδ hp hn T
  obtain ⟨g₀, -, h₀⟩ := s.univ (CommRingCat.of (T.B ⧸ T.J)) T.y.1.2 (T.y.1.1.comp κ) T.y.2
  have e : g' = g := (h₀ g' hg').trans (h₀ g hg).symm
  subst e
  exact (hU u hu).exists

theorem arrow_uniq (T : Thick (F.cr b ht κ)) (c c' : liftObj s ht 𝓛 δ hδ hp hn ⟶ T)
    (h : ∀ k, c.φ (𝓛.t k) = c'.φ (𝓛.t k)) : c = c' := by
  obtain ⟨g, hc, -, hU⟩ := GlobalTheory.CompanionTheory.ThickHom.main s ht 𝓛 δ hδ hp hn T
  exact (hU (fun k => c'.φ (𝓛.t k)) (fun k => hc c' _ _ (𝓛.hT k).symm)).unique h fun _ => rfl

end Gen

theorem gamma_comp {C C₀ : Type*} [Category C] [Category C₀] {j : C₀ ⥤ C} {U : UF C} {d : ℕ} {D T : C}
    (A : Act j U d D) (a : Gam d) (θ : D ⟶ T) :
    (A.γ a).asHom ≫ θ = A.act (fun k => U.q T ^ (Multiplicative.toAdd a k)) θ := by
  change A.act _ (𝟙 D) ≫ θ = _
  rw [A.act_comp, Category.id_comp]
  congr 1
  funext k
  rw [map_pow, U.map_q]

theorem i_qU {l : ℕ} [Fact l.Prime] (ε : Eps l) (A : PAlg l) (n : ℕ) :
    mapAcr A.fromBase n (ε.qU n : (base l).Acr n) = A.toAcr n (WittVector.teichmuller l (A.s (ε.e 0))) := by
  rw [ε.qU_val, mapAcr_cris, ε.cris_qk]

theorem teich_step {l : ℕ} [Fact l.Prime] (A : PAlg l) (f : A ⟶ A) (n m : ℕ) (e c : A.A)
    (h : Hom.f f c = e ^ m * c) :
    A.toAcr n (WittVector.teichmuller l e) ^ m * A.toAcr n (WittVector.teichmuller l c) =
      mapAcr f n (A.toAcr n (WittVector.teichmuller l c)) := by
  rw [mapAcr_toAcr, mapW, WittVector.map_teichmuller, h, map_mul, map_pow, map_mul, map_pow]

theorem main : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] {F : Fn O} {κ : O →+* OC l} {d : ℕ} {s : F.Small d} (𝒯 : Tower κ s) (k : Bool) (n : ℕ) (𝓛 : Lift s.a (fun k => (s.T k : s.R)) (bs l k n).R (bs l k n).I (κb κ k n)) (δ : DividedPowers ((bs l k n).I.map 𝓛.i)) (hδ : IsDPMorphism (bs l k n).γ δ 𝓛.i) (hp : (bs l k n).p ≠ 0) (hn : IsNilpotent ((bs l k n).p : (bs l k n).R)) (ε : Eps l) (A : Act (𝟭 _) (thU (Lc F κ k n) (ε.qU n) (ε.qU_mem k n)) d (liftObj s (b := bs l k n) rfl 𝓛 δ hδ hp hn)) (A' : Act (jE (F.pt κ)) (epsU ε (F.pt κ)) d 𝒯.obj), (∀ (T : Thick (Lc F κ k n)) (a : Fin d → (thU (Lc F κ k n) (ε.qU n) (ε.qU_mem k n)).U T) (c : liftObj s (b := bs l k n) rfl 𝓛 δ hδ hp hn ⟶ T) (j : Fin d), (A.act a c).φ (𝓛.t j) = ((a j).1 : T.B) * c.φ (𝓛.t j)) → (∀ (T : (F.pt κ).Elements) (a : Fin d → (epsU ε (F.pt κ)).U T) (φ : 𝒯.obj ⟶ T) (j : Fin d), PAlg.Hom.f (A'.act a φ).hom (𝒯.c j 0).val = ((a j).1 : T.1.A) * PAlg.Hom.f φ.hom (𝒯.c j 0).val) → ∃ θ : liftObj s (b := bs l k n) rfl 𝓛 δ hδ hp hn ⟶ (gE F κ k n).obj 𝒯.obj, (∀ j, θ.φ (𝓛.t j) = 𝒯.A.toAcr n (WittVector.teichmuller l (𝒯.c j 0 : 𝒯.A.A))) ∧ ∀ a, (A.γ a).asHom ≫ θ = θ ≫ (gE F κ k n).map (A'.γ a).asHom := by
  intro l _ O _ F κ d s 𝒯 k n 𝓛 δ hδ hp hn ε A A' hA hA'
  have hy : F.Pt.map (CommRingCat.ofHom ((uJ k 𝒯.A n).comp 𝒯.g)) s.y₀ = ((gE F κ k n).obj 𝒯.obj).y.1.2 := by
    rw [CommRingCat.ofHom_comp, F.Pt.map_comp]
    rfl
  have hu : ∀ j, Ideal.Quotient.mk (JJ k 𝒯.A n) (𝒯.A.toAcr n (WittVector.teichmuller l (𝒯.c j 0 : 𝒯.A.A))) =
      (uJ k 𝒯.A n).comp 𝒯.g (s.T j) := fun j => by
    rw [RingHom.comp_apply, ← 𝒯.c_sharp j]
    exact (uJ_th k 𝒯.A n _).symm
  obtain ⟨θ, hθ⟩ := arrow_ex s rfl 𝓛 δ hδ hp hn ((gE F κ k n).obj 𝒯.obj) ((uJ k 𝒯.A n).comp 𝒯.g) hy
    (fun j => 𝒯.A.toAcr n (WittVector.teichmuller l (𝒯.c j 0 : 𝒯.A.A))) hu
  refine ⟨θ, hθ, fun a => arrow_uniq s rfl 𝓛 δ hδ hp hn _ _ _ fun j => ?_⟩
  have h1 : ((A.γ a).asHom ≫ θ).φ (𝓛.t j) =
      𝒯.A.toAcr n (WittVector.teichmuller l (𝒯.A.s (ε.e 0))) ^ (Multiplicative.toAdd a j) *
        𝒯.A.toAcr n (WittVector.teichmuller l (𝒯.c j 0 : 𝒯.A.A)) := by
    rw [gamma_comp A a θ, hA _ _ θ j, hθ j, ← i_qU]
    rfl
  have h2 : PAlg.Hom.f (A'.γ a).asHom.hom (𝒯.c j 0).val =
      (𝒯.A.s (ε.e 0)) ^ (Multiplicative.toAdd a j) * (𝒯.c j 0).val := hA' 𝒯.obj _ (𝟙 𝒯.obj) j
  have h3 : (θ ≫ (gE F κ k n).map (A'.γ a).asHom).φ (𝓛.t j) =
      mapAcr (A'.γ a).asHom.hom n (𝒯.A.toAcr n (WittVector.teichmuller l (𝒯.c j 0 : 𝒯.A.A))) :=
    congrArg (mapAcr (A'.γ a).asHom.hom n) (hθ j)
  rw [h1, h3]
  exact teich_step 𝒯.A _ n _ _ _ h2

end GlobalTheory.CompanionTheory.ThetaEx
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GammaComp =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IncPtInjective =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IncPtInjective", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapUSharp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapAcrFromBase\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PeriodRingBaseChangeFromUniversal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry DividedPowers GroundTheory.PAdicHodge GlobalTheory.LogCris GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.B

namespace GlobalTheory.CompanionTheory.ElOnto

variable {l : ℕ} [Fact l.Prime]

theorem elMap_full {P P' : PAlg l ⥤ Type} (u : P ⟶ P') (hu : ∀ A, Function.Injective (u.app A)) : (elMap u).Full := by
  refine ⟨fun {X Y} f => ⟨⟨f.1, ?_⟩, rfl⟩⟩
  apply hu
  exact (NatTrans.naturality_apply u ((testι l).map f.1) X.2).trans f.2

theorem elMap_faithful {P P' : PAlg l ⥤ Type} (u : P ⟶ P') : (elMap u).Faithful := by
  refine ⟨fun {X Y} f g h => Functor.Elements.Hom.ext ?_⟩
  have h' := congrArg (fun f => f.hom) h
  exact h'

variable {O : Type} [CommRing O]

theorem inc_pt_injective {F : Fn O} (κ : O →+* OC l) (V : F.Sub) (A : PAlg l) :
    Function.Injective ((V.inc.pt κ).app A) := by
  intro a b h
  have h' := congrArg Subtype.val h
  apply Subtype.ext
  apply Subtype.ext
  exact h'

theorem onto_subEl : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) {d : ℕ} (𝒜 : F.Atlas d) (S : Set 𝒜.A) (k : Bool) (n : ℕ), n ≠ 0 → Onto (subEl κ (Fn.Sub.inter 𝒜.V S)) fun T => ∀ α ∈ S, (𝒜.V α).In ((gT F κ k n).obj T).y.1.2 := by
  intro l _ O _ F κ d 𝒜 S k n hn
  refine ⟨elMap_full _ (inc_pt_injective κ _), elMap_faithful _, ?_, ?_⟩
  · intro T α hα
    exact (𝒜.V α).in_map _ (T.2.1.2 α hα)
  · intro T hT
    obtain ⟨hs, hj⟩ := (_root_.GlobalTheory.CompanionTheory.AcrMod.acr_modp T.1.obj n).2.2.2.2.2.2 k hn
    refine ⟨⟨⟨⟨T.2.1, fun α hα => 𝒜.jac α _ _ (CommRingCat.ofHom (uJ k T.1.obj n)) T.2.1 hs hj (hT α hα)⟩, T.2.2⟩⟩, ⟨Iso.refl _⟩⟩

end GlobalTheory.CompanionTheory.ElOnto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IncPtInjective =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DescOfDes =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DescOfDes", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapUSharp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompShiftZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PeriodRingBaseChangeFromUniversal\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MemBoundariesZeroIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry DividedPowers GroundTheory.PAdicHodge GlobalTheory.LogCris GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.B
universe w v u t

noncomputable section

namespace GlobalTheory.CompanionTheory.DescTest

section Generic

variable {𝓐 : Type u} [Category.{v} 𝓐] (W : ObjectProperty 𝓐) (P : 𝓐 ⥤ Type t)

def jG : (W.ι ⋙ P).Elements ⥤ P.Elements where
  obj T := P.elementsMk (W.ι.obj T.obj) T.val
  map f := Functor.Elements.homMk (W.ι.map f.hom) f.map_val
  map_id _ := rfl
  map_comp _ _ := rfl

def toPts (T : P.Elements) : StructuredArrow T (jG W P) ⥤ (pts W.ι T.1).Elements where
  obj x := (pts W.ι T.obj).elementsMk x.right.obj x.hom.hom
  map f := Functor.Elements.homMk f.right.hom
    (congrArg Functor.Elements.Hom.hom (StructuredArrow.w f))
  map_id _ := rfl
  map_comp _ _ := rfl

instance (T : P.Elements) : (toPts W P T).Faithful :=
  ⟨fun {x x'} {_ _} h => StructuredArrow.hom_ext _ _
    (Functor.Elements.hom_ext
      (congrArg (fun z : (toPts W P T).obj x ⟶ (toPts W P T).obj x' => z.hom) h))⟩

instance (T : P.Elements) : (toPts W P T).Full :=
  ⟨fun {x x'} g => by
    have hw : x.hom.hom ≫ W.ι.map g.hom = x'.hom.hom := g.map_val
    have a : P.map x.hom.hom T.val = x.right.val := x.hom.map_val
    have a' : P.map x'.hom.hom T.val = x'.right.val := x'.hom.map_val
    have h2 : P.map (W.ι.map g.hom) x.right.val = x'.right.val := by
      rw [← a, ← a', ← hw, Functor.map_comp_apply]
      rfl
    exact ⟨StructuredArrow.homMk (Functor.Elements.homMk g.hom h2)
      (Functor.Elements.hom_ext hw), Functor.Elements.hom_ext rfl⟩⟩

def ptOf (T : P.Elements) (e : (pts W.ι T.obj).Elements) : (W.ι ⋙ P).Elements :=
  (W.ι ⋙ P).elementsMk e.obj (P.map (show T.obj ⟶ W.ι.obj e.obj from e.val) T.val)

instance (T : P.Elements) : (toPts W P T).EssSurj :=
  ⟨fun e => ⟨StructuredArrow.mk (Y := ptOf W P T e)
    (Functor.Elements.homMk (show T.obj ⟶ W.ι.obj e.obj from e.val) rfl), ⟨Iso.refl _⟩⟩⟩

instance (T : P.Elements) : (toPts W P T).IsEquivalence := { }

variable {R : Type} [CommRing R] (Ff : 𝓐 ⥤ ModuleCat.{w} R) (Gf : P.Elements ⥤ ModuleCat.{w} R)
  (θ : ∀ T : P.Elements, Ff.obj T.1 ≃ₗ[R] Gf.obj T)
  (hθ : ∀ {T T' : P.Elements} (f : T ⟶ T') (x : Ff.obj T.1),
    θ T' ((Ff.map f.1).hom x) = (Gf.map f).hom (θ T x))

def mor (T : P.Elements) :
    Mor (elF (pts W.ι T.1) (W.ι ⋙ Ff)) (StructuredArrow.proj T (jG W P) ⋙ jG W P ⋙ Gf) (RingHom.id R) where
  G := toPts W P T
  τ x := (θ ((jG W P).obj x.right)).toLinearMap
  nat φ y := hθ ((jG W P).map φ.right) y

include hθ in
theorem mor_aug (T : P.Elements) (y : Ff.obj T.1) :
    (mor W P Ff Gf θ hθ T).hom.f 0 (ptsAug W.ι Ff T.1 y) = unAug Gf (jG W P) T (θ T y) := by
  funext s
  exact (hθ (s.obj (Fin.last 0)).hom y)

theorem res_of_comp {K : Cx.{w} R} {M M' : Type*} [AddCommGroup M] [AddCommGroup M'] [Module R M] [Module R M']
    (e : M ≃ₗ[R] M') (ε : M' →ₗ[R] K.X 0) (s : R) (h : K.ResUpTo s (ε ∘ₗ e.toLinearMap)) : K.ResUpTo s ε := by
  obtain ⟨h0, h1, h2, h3⟩ := h
  refine ⟨fun x => ?_, fun x hx => ?_, fun y hy => ?_, h3⟩
  · simpa using h0 (e.symm x)
  · have := h1 (e.symm x) (by simpa using hx)
    simpa using congrArg e this
  · obtain ⟨x, hx⟩ := h2 y hy
    exact ⟨e x, hx⟩


include hθ in
theorem desc_of_des (s : R) (h : CrystallineSemistableComparison.D.DesJ W.ι Ff s) : Desc s Gf (jG W P) := by
  intro T
  let m := mor W P Ff Gf θ hθ T
  haveI : m.G.IsLeftAdjoint := inferInstanceAs (toPts W P T).IsLeftAdjoint
  have hup : ∀ n, UpTo (1 : R) (m.hom.mapH n) := fun n =>
    ((CrystallineSemistableComparison.P.upTo_alg (m.hom.mapH n) LinearMap.id 1 1).2.2.2.2).2
      (CrystallineSemistableComparison.P.adj_mor m (fun x => (θ ((jG W P).obj x.right)).bijective) n)
  have h1 := (CrystallineSemistableComparison.P.res_transfer m.hom (ptsAug W.ι Ff T.1) s 1 hup).1 (h T.1)
  rw [mul_one] at h1
  refine res_of_comp (θ T) _ s ?_
  have e : m.hom.f 0 ∘ₗ ptsAug W.ι Ff T.1 = unAug Gf (jG W P) T ∘ₗ (θ T).toLinearMap :=
    LinearMap.ext fun y => mor_aug W P Ff Gf θ hθ T y
  rwa [← e]

end Generic

section Steps

variable {𝓐 : Type u} [Category.{v} 𝓐] (W : ObjectProperty 𝓐) (P : 𝓐 ⥤ Type t)
  {b : Base} {L : b.Fun} {Λ : Type} [CommRing Λ] (c : Λ →+* b.R)
  (gG : P.Elements ⥤ Thick L) (Ff : 𝓐 ⥤ ModuleCat.{0} Λ)
  (ρ : ℕ → ℕ) (hρ : Slow ρ) (μ : Λ) (hμ : c μ ∈ b.I) (r : ℕ)
  (v : ∀ T : P.Elements, Ff.obj T.1 → (gG.obj T).B)
  (v_add : ∀ T x y, v T (x + y) = v T x + v T y)
  (v_smul : ∀ T (a : Λ) x, v T (a • x) = (gG.obj T).i (c a) * v T x)
  (v_inj : ∀ T, Function.Injective (v T))
  (v_mem : ∀ T (y : (gG.obj T).B), y ∈ (gG.obj T).pdPow (ρ r) ↔ ∃ x, v T x = y)

def stepLin (T : P.Elements) :
    Ff.obj T.1 →ₗ[Λ] (((pdFlt L c ρ hρ μ hμ).comap gG).S r).fn.obj T where
  toFun x := (⟨v T x, (v_mem T _).2 ⟨x, rfl⟩⟩ : (((pdFlt L c ρ hρ μ hμ).comap gG).S r).S T)
  map_add' x y := Subtype.ext (v_add T x y)
  map_smul' a x := Subtype.ext (v_smul T a x)

def stepEquiv (T : P.Elements) :
    Ff.obj T.1 ≃ₗ[Λ] (((pdFlt L c ρ hρ μ hμ).comap gG).S r).fn.obj T :=
  LinearEquiv.ofBijective (stepLin P c gG Ff ρ hρ μ hμ r v v_add v_smul v_mem T)
    ⟨fun x y h => v_inj T (congrArg Subtype.val h), fun y => by
      obtain ⟨x, hx⟩ := (v_mem T _).1 y.2
      exact ⟨x, Subtype.ext hx⟩⟩


include v_add v_smul v_inj v_mem in
theorem desc_step (v_nat : ∀ {T T' : P.Elements} (f : T ⟶ T') (x : Ff.obj T.1),
      v T' ((Ff.map f.1).hom x) = (gG.map f).φ (v T x)) (s : Λ) (h : CrystallineSemistableComparison.D.DesJ W.ι Ff s) :
    Desc s (((pdFlt L c ρ hρ μ hμ).comap gG).S r).fn (jG W P) :=
  desc_of_des W P Ff _ (stepEquiv P c gG Ff ρ hρ μ hμ r v v_add v_smul v_inj v_mem)
    (fun f x => Subtype.ext (v_nat f x)) s h


include hρ in
theorem raise (T : Thick L) (ξ : Λ) (hξ : T.i (c ξ) ∈ T.J) (x : (OM L c).obj T)
    (hx : x ∈ (pdS L c (ρ r)).S T) : ξ • x ∈ (pdS L c (ρ (r + 1))).S T :=
  T.pdPow_anti (hρ.2 r) (mul_pdPow L T _ hξ hx)


include hρ in
theorem desc_flt {C' : Type*} [Category C'] (G : C' ⥤ P.Elements) (μ' ξ : Λ) (hμ' : μ = μ' * ξ)
    (hm : ∀ T : P.Elements, (gG.obj T).i (c ξ) ∈ (gG.obj T).J)
    (h : ∀ r, Desc μ' (((pdFlt L c ρ hρ μ hμ).comap gG).S r).fn G) :
    Desc (Polynomial.X : Polynomial ℤ) (gG ⋙ (pdFlt L c ρ hρ μ hμ).rees) G :=
  GlobalTheory.CompanionTheory.ReesUp.desc_rees ((pdFlt L c ρ hρ μ hμ).comap gG) G μ' ξ hμ'
    (fun r T x hx => raise c ρ hρ r (gG.obj T) ξ (hm T) x hx) h

end Steps

section Concrete
variable {l : ℕ} [Fact l.Prime]

def fv {A : PAlg l} {n m : ℕ} (x : (FilF l n m).obj A) : A.Acr n := (show (FilS l n m).S A from x).1

theorem fv_mem {A : PAlg l} {n m : ℕ} (x : (FilF l n m).obj A) : fv x ∈ A.Fil n m :=
  (Submodule.restrictScalars_mem (Acris l) _ _).1 (show (FilS l n m).S A from x).2

def fmk {A : PAlg l} {n m : ℕ} (y : A.Acr n) (h : y ∈ A.Fil n m) : (FilF l n m).obj A :=
  (⟨y, (Submodule.restrictScalars_mem (Acris l) (A.Fil n m) y).2 h⟩ : (FilS l n m).S A)

theorem fv_inj {A : PAlg l} {n m : ℕ} {x x' : (FilF l n m).obj A} (h : fv x = fv x') : x = x' := Subtype.ext h

theorem fv_add {A : PAlg l} {n m : ℕ} (x x' : (FilF l n m).obj A) : fv (x + x') = fv x + fv x' := rfl

theorem fv_smul {A : PAlg l} {n m : ℕ} (a : Acris l) (x : (FilF l n m).obj A) : fv (a • x) = A.cris n a * fv x := rfl

theorem fv_map {A B : PAlg l} (f : A ⟶ B) {n m : ℕ} (x : (FilF l n m).obj A) :
    fv (((FilF l n m).map f).hom x) = mapAcr f n (fv x) := rfl

end Concrete

section Main

variable {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l)

theorem fil_eq (k : Bool) (n : ℕ) (ρ : ℕ → ℕ) (hk : k = false ∨ ρ = 0) (T : (F.pt κ).Elements) (r : ℕ) :
    (gObj F κ k n T).pdPow (ρ r) = T.1.Fil n (ρ r) := by
  have h := (GlobalTheory.CompanionTheory.AcrMod.acr_modp T.1 n).2.2.2.1
  rcases hk with rfl | rfl
  · exact (pdPow_eq_fil _ _ _).trans (h (ρ r))
  · have h0 : (gObj F κ false n T).pdPow 0 = T.1.Fil n 0 := (pdPow_eq_fil _ _ _).trans (h 0)
    rw [Thick.pdPow_zero] at h0
    exact (Thick.pdPow_zero _).trans h0

theorem v_mem (k : Bool) (n : ℕ) (ρ : ℕ → ℕ) (hk : k = false ∨ ρ = 0) (r : ℕ) (T : (F.pt κ).Elements)
    (y : T.1.Acr n) :
    y ∈ (gObj F κ k n T).pdPow (ρ r) ↔ ∃ x : (FilF l n (ρ r)).obj T.1, fv x = y := by
  rw [fil_eq F κ k n ρ hk T r]
  exact ⟨fun h => ⟨fmk y h, rfl⟩, fun ⟨x, hx⟩ => hx ▸ fv_mem x⟩

theorem xi_mem (k : Bool) (n : ℕ) (T : (F.pt κ).Elements) (ξ : Acris l) (h : T.1.cris n ξ ∈ T.1.Fil n 1) :
    (gObj F κ k n T).i ((base l).cris n ξ) ∈ (gObj F κ k n T).J := by
  have e : (gObj F κ k n T).i ((base l).cris n ξ) = T.1.cris n ξ := mapAcr_cris T.1.fromBase n ξ
  rw [e]
  exact fil_le k T.1 n h

theorem desc_fil (ε : Eps l) (k : Bool) (n : ℕ) (ρ : ℕ → ℕ) (hρ : Slow ρ) (hk : k = false ∨ ρ = 0) (r : ℕ)
    (s : Acris l) (h : CrystallineSemistableComparison.D.Des (FilF l n (ρ r)) s) :
    Desc s (((flt F κ ε k n ρ hρ).comap (gE F κ k n)).S r).fn (jE (F.pt κ)) :=
  desc_step (fun A : PAlg l => A.IsTest) (F.pt κ) ((base l).cris n) (gE F κ k n) (FilF l n (ρ r)) ρ hρ ε.μ
    (ε.μ_mem k (base l) n) r (fun T x => fv x)
    (fun T x y => fv_add x y)
    (fun T a x => (fv_smul a x).trans (congrArg (· * fv x) (mapAcr_cris T.1.fromBase n a).symm))
    (fun T x y h => fv_inj h)
    (fun T y => v_mem F κ k n ρ hk r T y)
    (fun f x => fv_map f.1 x) s h

end Main


theorem des_qk {l : ℕ} [Fact l.Prime] (hOut : D.Out l) (ε : Eps l)
    (h1 : D.InWm l (WittVector.teichmuller l (ε.e 1 : Ob l) - 1)) (n m : ℕ) :
    CrystallineSemistableComparison.D.Des (FilF l n m) (ε.qk 1 - 1) := by
  have hs : algebraMap (Ainf l) (Acris l) (WittVector.teichmuller l (ε.e 1 : Ob l) - 1) = ε.qk 1 - 1 := by
    rw [map_sub, map_one, Eps.qk]
  rw [← hs]
  exact (hOut _ h1 n).2.2 m

end GlobalTheory.CompanionTheory.DescTest
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DescOfDes =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StepDesc =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StepDesc", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapUSharp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DescOfDes\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EpsilonCyclotomicElementProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry DividedPowers GroundTheory.PAdicHodge GlobalTheory.LogCris GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.B

noncomputable section

namespace GlobalTheory.CompanionTheory.DescTest

section
variable {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) (ε : Eps l)
    (k : Bool) (n : ℕ) (ρ : ℕ → ℕ) (hρ : Slow ρ)

theorem step_desc (hOut : D.Out l) (hk : k = false ∨ ρ = 0) (r : ℕ) :
    Desc (ε.qk 1 - 1) (((flt F κ ε k n ρ hρ).comap (gE F κ k n)).S r).fn (jE (F.pt κ)) :=
  desc_fil F κ ε k n ρ hρ hk r _ (des_qk hOut ε (GlobalTheory.CompanionTheory.EpsFacts.eps_facts ε).1 n (ρ r))

theorem xi_thick (T : (F.pt κ).Elements) :
    ((gE F κ k n).obj T).i ((base l).cris n (∑ i ∈ Finset.range l, ε.qk 1 ^ i)) ∈ ((gE F κ k n).obj T).J :=
  xi_mem F κ k n T _ ((GlobalTheory.CompanionTheory.EpsFacts.eps_facts ε).2.2.1 T.1 n)

end



theorem main : ∀ {l : ℕ} [Fact l.Prime], D.Out l → ∀ {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) (ε : Eps l)
    (k : Bool) (n : ℕ) (ρ : ℕ → ℕ) (hρ : Slow ρ), (k = false ∨ ρ = 0) →
    Desc (Polynomial.X : Polynomial ℤ) (gE F κ k n ⋙ (flt F κ ε k n ρ hρ).rees) (jE (F.pt κ)) := by
  intro l _ hOut O _ F κ ε k n ρ hρ hk
  exact desc_flt (b := bs l k n) (L := Lc F κ k n) (Λ := Acris l) (F.pt κ) ((base l).cris n) (gE F κ k n) ρ hρ
    ε.μ (ε.μ_mem k (base l) n) (jE (F.pt κ)) (ε.qk 1 - 1) (∑ i ∈ Finset.range l, ε.qk 1 ^ i)
    (_root_.GlobalTheory.CompanionTheory.EpsFacts.mu_eq ε) (xi_thick F κ ε k n) (step_desc F κ ε k n ρ hρ hOut hk)

end GlobalTheory.CompanionTheory.DescTest
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StepDesc =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.PropsE =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.PropsE", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapUSharp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrTeichProd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrToContInjective\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EpsilonCyclotomicElementProperties\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsQuot\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GammaComp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IncPtInjective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemMapBasis\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemSpanIffOfBijective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StepDesc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry DividedPowers GroundTheory.PAdicHodge GlobalTheory.LogCris GlobalTheory.PDA CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.PAlg CrystallineSemistableComparison.B

theorem CrystallineSemistableComparison.B.P.eps_facts : ∀ {l : ℕ} [Fact l.Prime] (ε : Eps l), D.InWm l ((WittVector.teichmuller l (ε.e 1 : Ob l)) - 1) ∧ (∀ k, ε.qk (k + 1) ^ l = ε.qk k) ∧ (∀ (A : PAlg l) (n : ℕ), A.cris n (∑ i ∈ Finset.range l, ε.qk 1 ^ i) ∈ A.Fil n 1) ∧ ε.μ = (ε.qk 1 - 1) * ∑ i ∈ Finset.range l, ε.qk 1 ^ i ∧ ∀ m, IsPrimitiveRoot (theta0 l (WittVector.teichmuller l (ε.e m : Ob l))) (l ^ m) :=
  @GlobalTheory.CompanionTheory.EpsFacts.eps_facts

theorem CrystallineSemistableComparison.B.P.cont_line : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) (ε : Eps l) (k : Bool) (n : ℕ) (ρ : ℕ → ℕ) (hρ : Slow ρ), ∃ L : Line (jE (F.pt κ)) (epsU ε (F.pt κ)), ∀ T, ((flt F κ ε k n ρ hρ).comap (gE F κ k n)).FAcyc (L.i.app T) (L.γ.app T) :=
  @GlobalTheory.CompanionTheory.ContLine.exists_line

theorem CrystallineSemistableComparison.B.P.tower_ex : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] {F : Fn O} (κ : O →+* OC l) {d : ℕ} (s : F.Small d), Nonempty (Tower κ s) :=
  @GlobalTheory.CompanionTheory.TowerEx.tower_ex

theorem CrystallineSemistableComparison.B.P.tower_act : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] {F : Fn O} {κ : O →+* OC l} {d : ℕ} {s : F.Small d} (𝒯 : Tower κ s) (ε : Eps l), ∃ A : Act (jE (F.pt κ)) (epsU ε (F.pt κ)) d 𝒯.obj, ∀ (T : (F.pt κ).Elements) (a : Fin d → (epsU ε (F.pt κ)).U T) (φ : 𝒯.obj ⟶ T) (k : Fin d), PAlg.Hom.f (A.act a φ).1 (𝒯.c k 0).val = ((a k).1 : T.1.A) * PAlg.Hom.f φ.1 (𝒯.c k 0).val :=
  @GlobalTheory.CompanionTheory.TowerAct.tower_act

theorem CrystallineSemistableComparison.B.P.theta_ex : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] {F : Fn O} {κ : O →+* OC l} {d : ℕ} {s : F.Small d} (𝒯 : Tower κ s) (k : Bool) (n : ℕ) (𝓛 : Lift s.a (fun k => (s.T k : s.R)) (bs l k n).R (bs l k n).I (κb κ k n)) (δ : DividedPowers ((bs l k n).I.map 𝓛.i)) (hδ : IsDPMorphism (bs l k n).γ δ 𝓛.i) (hp : (bs l k n).p ≠ 0) (hn : IsNilpotent ((bs l k n).p : (bs l k n).R)) (ε : Eps l) (A : Act (𝟭 _) (thU (Lc F κ k n) (ε.qU n) (ε.qU_mem k n)) d (liftObj s (b := bs l k n) rfl 𝓛 δ hδ hp hn)) (A' : Act (jE (F.pt κ)) (epsU ε (F.pt κ)) d 𝒯.obj), (∀ (T : Thick (Lc F κ k n)) (a : Fin d → (thU (Lc F κ k n) (ε.qU n) (ε.qU_mem k n)).U T) (c : liftObj s (b := bs l k n) rfl 𝓛 δ hδ hp hn ⟶ T) (j : Fin d), (A.act a c).φ (𝓛.t j) = ((a j).1 : T.B) * c.φ (𝓛.t j)) → (∀ (T : (F.pt κ).Elements) (a : Fin d → (epsU ε (F.pt κ)).U T) (φ : 𝒯.obj ⟶ T) (j : Fin d), PAlg.Hom.f (A'.act a φ).1 (𝒯.c j 0).val = ((a j).1 : T.1.A) * PAlg.Hom.f φ.1 (𝒯.c j 0).val) → ∃ θ : liftObj s (b := bs l k n) rfl 𝓛 δ hδ hp hn ⟶ (gE F κ k n).obj 𝒯.obj, (∀ j, θ.φ (𝓛.t j) = 𝒯.A.toAcr n (WittVector.teichmuller l (𝒯.c j 0 : 𝒯.A.A))) ∧ ∀ a, (A.γ a).asHom ≫ θ = θ ≫ (gE F κ k n).map (A'.γ a).asHom :=
  @GlobalTheory.CompanionTheory.ThetaEx.main

theorem CrystallineSemistableComparison.B.P.local_ni : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] {F : Fn O} {κ : O →+* OC l} {d : ℕ} {s : F.Small d} (𝒯 : Tower κ s) (k : Bool) (n : ℕ) (𝓛 : Lift s.a (fun k => (s.T k : s.R)) (bs l k n).R (bs l k n).I (κb κ k n)) (δ : DividedPowers ((bs l k n).I.map 𝓛.i)) (hδ : IsDPMorphism (bs l k n).γ δ 𝓛.i) (hp : (bs l k n).p ≠ 0) (hn : IsNilpotent ((bs l k n).p : (bs l k n).R)) (ε : Eps l) (ρ : ℕ → ℕ) (hρ : Slow ρ) (γ : Gam d →* End (liftObj s (b := bs l k n) rfl 𝓛 δ hδ hp hn)) (γ' : Gam d →* End 𝒯.obj) (θ : SingleObj.functor γ ⟶ SingleObj.functor γ' ⋙ gE F κ k n), n ≠ 0 → (∀ j, (θ.app (SingleObj.star _)).φ (𝓛.t j) = 𝒯.A.toAcr n (WittVector.teichmuller l (𝒯.c j 0 : 𝒯.A.A))) → (∀ a j, Thick.Hom.φ (γ a).asHom (𝓛.t j) = 𝓛.i (ε.qU n) ^ (Multiplicative.toAdd a j) * 𝓛.t j) → (∀ a j, PAlg.Hom.f (A := 𝒯.A) (B := 𝒯.A) (γ' a).asHom.1 (𝒯.c j 0).val = 𝒯.A.s (ε.e 0) ^ (Multiplicative.toAdd a j) * (𝒯.c j 0).val) → Nonempty (NI (Polynomial.X : Polynomial ℤ) (Functor.whiskerRight θ (flt F κ ε k n ρ hρ).rees)) :=
  @GlobalTheory.CompanionTheory.TowerNI.main

theorem CrystallineSemistableComparison.B.P.desc : ∀ {l : ℕ} [Fact l.Prime], D.Out l → ∀ {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) (ε : Eps l) (k : Bool) (n : ℕ) (ρ : ℕ → ℕ) (hρ : Slow ρ), (k = false ∨ ρ = 0) → Desc (Polynomial.X : Polynomial ℤ) (gE F κ k n ⋙ (flt F κ ε k n ρ hρ).rees) (jE (F.pt κ)) :=
  @GlobalTheory.CompanionTheory.DescTest.main

theorem CrystallineSemistableComparison.B.P.el_zar : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) {d : ℕ} (𝒜 : F.Atlas d) (k : Bool) (n r : ℕ), ZarCov (gT F κ k n ⋙ (pdS (Lc F κ k n) ((base l).cris n) r).fn) fun T => ∃ α, (𝒜.V α).In ((gT F κ k n).obj T).y.1.2 :=
  @GlobalTheory.CompanionTheory.TestZar.zarCov_test

theorem CrystallineSemistableComparison.B.P.el_onto : ∀ {l : ℕ} [Fact l.Prime] {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) {d : ℕ} (𝒜 : F.Atlas d) (S : Set 𝒜.A) (k : Bool) (n : ℕ), n ≠ 0 → Onto (subEl κ (Fn.Sub.inter 𝒜.V S)) fun T => ∀ α ∈ S, (𝒜.V α).In ((gT F κ k n).obj T).y.1.2 :=
  @GlobalTheory.CompanionTheory.ElOnto.onto_subEl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.PropsE =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.SubsingletonH =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.SubsingletonH", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.WittExactSequences.ObFacts\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.MapUSharp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsDpOfCompOnGens\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FGlob\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FGlue\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.XSmulSucc\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLine\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CmpPutSucc\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompShiftZero\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.PropsA\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.PropsE\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.ZariskiCocycleRefinement\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FRiCalc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory DividedPowers GroundTheory.PAdicHodge GlobalTheory.LogCris

namespace CrystallineSemistableComparison.B

open PAlg CH

theorem exists_dp {Λ D : Type} [CommRing Λ] [CommRing D] (i : Λ →+* D) (h : i.Flat) (I : Ideal Λ) (γ : DividedPowers I) :
    ∃ δ : DividedPowers (I.map i), IsDPMorphism γ δ i := by
  let _ := i.toAlgebra
  have : Module.Flat Λ D := h
  exact GlobalTheory.CompanionTheory.JLiftDP.dpFlat Λ D I γ

variable {l : ℕ} [Fact l.Prime]

theorem local_of (hD : D.Out l) : Local l := by
  intro d j
  obtain ⟨N, hN⟩ := P.glue.{0, 0, 1, 0, 1, 0, 1} d j
  refine ⟨N, fun {O} _ F κ ε k n ρ hρ hn hk s => ?_⟩
  obtain ⟨𝓛⟩ := P.elift s.a (fun k => (s.T k : s.R)) (bs l k n).I (κb κ k n) s.et
  obtain ⟨δ, hδ⟩ := exists_dp 𝓛.i (P.lift_flat 𝓛.i 𝓛.t 𝓛.et).1 (bs l k n).I (bs l k n).γ
  have hp : (bs l k n).p ≠ 0 := (Fact.out : l.Prime).ne_zero
  have hnil : IsNilpotent ((bs l k n).p : (bs l k n).R) := ⟨n, (base l).pow_l_acr n⟩
  obtain ⟨𝒯⟩ := P.tower_ex κ s
  obtain ⟨A, hA⟩ := P.thick_act s (b := bs l k n) rfl 𝓛 δ hδ hp hnil (ε.qU n) (ε.qU_mem k n)
  obtain ⟨A', hA'⟩ := P.tower_act 𝒯 ε
  obtain ⟨θ, hθ, hθγ⟩ := P.theta_ex 𝒯 k n 𝓛 δ hδ hp hnil ε A A' hA hA'
  have hε := P.eps_facts ε
  have hq : (ε.qU n : (bs l k n).R) = (base l).cris n (ε.qk 1) ^ (bs l k n).p :=
    (ε.qU_val n).trans ((congrArg ((base l).cris n) (hε.2.1 0).symm).trans (map_pow _ _ _))
  have hμ : (base l).cris n ε.μ = (ε.qU n : (bs l k n).R) - 1 := by
    change (base l).cris n (ε.qk 0 - 1) = (ε.qU n : (bs l k n).R) - 1
    calc
      _ = (base l).cris n (ε.qk 0) - (base l).cris n 1 := ((base l).cris n).map_sub _ _
      _ = _ := congrArg₂ (· - ·) (ε.qU_val n).symm ((base l).cris n).map_one
  have hξ : (∑ i ∈ Finset.range (bs l k n).p, (base l).cris n (ε.qk 1) ^ i) ∈ (bs l k n).I := by
    have := fil_le k (base l) n (hε.2.2.1 (base l) n)
    set_option synthInstance.maxHeartbeats 100000 in
      simpa only [map_sum, map_pow] using this
  obtain ⟨L, hL⟩ := _root_.GlobalTheory.CompanionTheory.LineUniv.exists_line (thU (Lc F κ k n) (ε.qU n) (ε.qU_mem k n)) (fun _ _ i g => (flt F κ ε k n ρ hρ).FAcyc i g)
    (P.thick_line F (bs l k n) rfl (κb κ k n) ((base l).cris n) ρ hρ ε.μ (ε.μ_mem k (base l) n) (ε.qU n) (ε.qU_mem k n)
      ((base l).cris n (ε.qk 1)) Fact.out hq hμ hξ)
  obtain ⟨L', hL'⟩ := P.cont_line F κ ε k n ρ hρ
  obtain ⟨ni⟩ := P.local_ni 𝒯 k n 𝓛 δ hδ hp hnil ε ρ hρ A.γ A'.γ ⟨fun _ => θ, fun _ _ a => hθγ a⟩ hn hθ
    (fun a j => (hA _ _ (𝟙 _) j).trans (congrArg (· * 𝓛.t j) (Units.val_pow_eq_pow_val _ _)))
    (fun a j => (hA' _ _ (𝟙 _) j).trans (congrArg (· * (𝒯.c j 0).val) (Units.val_pow_eq_pow_val _ _)))
  exact hN (flt F κ ε k n ρ hρ).rees (gE F κ k n) (jE _) _ _ A L _ _ A' L' θ hθγ _
    (fun T => (_root_.GlobalTheory.CompanionTheory.ReesUp.main (flt F κ ε k n ρ hρ) (𝟭 _) 0).2.2 _ _ (hL T)) (P.desc hD F κ ε k n ρ hρ hk)
    (fun T => (_root_.GlobalTheory.CompanionTheory.ReesUp.main ((flt F κ ε k n ρ hρ).comap (gE F κ k n)) (𝟭 _) 0).2.2 _ _ (hL' T)) ni

theorem ri_pow {R : Type} [CommRing R] {C C' : Type 1} [Category.{0} C] [Category.{0} C'] {F : C ⥤ ModuleCat.{0} R} {G : C' ⥤ C}
    {s : R} {a b n : ℕ} (h : a ≤ b) (H : RI (s ^ a) n F G) : RI (s ^ b) n F G := by
  obtain ⟨c, rfl⟩ := Nat.exists_eq_add_of_le h
  rw [pow_add]
  exact (P.ri_calc F G (𝟭 _) _ _ n).2.2.2.1 H

theorem global_of (h : Local l) (d j : ℕ) : ∃ N : ℕ, ∀ {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) (ε : Eps l)
    (k : Bool) (n : ℕ) (ρ : ℕ → ℕ) (hρ : Slow ρ), n ≠ 0 → (k = false ∨ ρ = 0) → F.Atlas d →
    RI ((Polynomial.X : Polynomial ℤ) ^ N) j (flt F κ ε k n ρ hρ).rees (gT F κ k n) := by
  choose N hN using fun d' => h d' (j + 1)
  refine ⟨((Finset.range (d + 1)).sup N) * (2 * j + 3), fun {O} _ F κ ε k n ρ hρ hn hk 𝒜 => ?_⟩
  rw [pow_mul]
  have hp : (bs l k n).p ≠ 0 := (Fact.out : l.Prime).ne_zero
  have z₁ := fun r => P.thick_zar F (bs l k n) rfl (κb κ k n) ((base l).cris n) 𝒜 hp r
  have z₂ := fun r => P.el_zar F κ 𝒜 k n r
  have onto : ∀ {C : Type 1} [Category.{0} C] (Q : C → Prop), Onto (ObjectProperty.ι Q) Q := fun Q =>
    ⟨inferInstance, inferInstance, fun T => T.property, fun T hT => ⟨⟨T, hT⟩, ⟨Iso.refl _⟩⟩⟩
  refine P.glob _ (gT F κ k n) (fun α T => (𝒜.V α).In T.y.1.2) _ j ?_ ?_ ?_ fun S hS => ?_
  · intro α T T' φ hT
    have e : F.Pt.map (CommRingCat.ofHom (Ideal.quotientMap T'.J φ.φ φ.hle)) T.y.1.2 = T'.y.1.2 :=
      congrArg (fun z => z.1.2) φ.pt
    exact e ▸ (𝒜.V α).in_map _ hT
  · exact (_root_.GlobalTheory.CompanionTheory.ReesUp.main (flt F κ ε k n ρ hρ) _ j).1 fun r => P.zar _ _ _ (onto _) (z₁ (ρ r)) j
  · exact (_root_.GlobalTheory.CompanionTheory.ReesUp.main ((flt F κ ε k n ρ hρ).comap (gT F κ k n)) _ j).1 fun r => P.zar _ _ _ (onto _) (z₂ (ρ r)) j
  · obtain ⟨d', hd', ⟨s⟩⟩ := 𝒜.small S hS
    refine ⟨_, _, _, _, subThick (Fn.Sub.inter 𝒜.V S) (bs l k n) rfl (κb κ k n), subEl κ (Fn.Sub.inter 𝒜.V S),
      gT (Fn.Sub.inter 𝒜.V S).fn κ k n, P.thick_onto _ _ _ _, P.el_onto F κ 𝒜 S k n hn, ⟨eqToIso (subEl_gT κ _ k n)⟩, ?_⟩
    rw [subThick_rees]
    exact ri_pow (Finset.le_sup (f := N) (Finset.mem_range.2 (Nat.lt_succ_of_le hd'))) (hN d' _ κ ε k n ρ hρ hn hk s)

theorem pull_factor {R : Type} [CommRing R] {C C' : Type 1} [Category.{0} C] [Category.{0} C'] {F : C ⥤ ModuleCat.{0} R}
    {F' : C' ⥤ ModuleCat.{0} R} (m : Mor F F' (RingHom.id R)) (h : ∀ T, Function.Bijective (m.τ T)) (j : ℕ) :
    ∃ e : H (m.G ⋙ F) j →ₗ[R] H F' j, Function.Bijective e ∧ ∀ x, m.pull j x = e ((Mor.restrict F m.G).pull j x) := by
  let m' : Mor (m.G ⋙ F) F' (RingHom.id R) := ⟨𝟭 _, m.τ, m.nat⟩
  have : m'.G.IsLeftAdjoint := inferInstanceAs (𝟭 C').IsLeftAdjoint
  exact ⟨m'.pull j, CrystallineSemistableComparison.P.adj_mor m' h j, fun x => (CrystallineSemistableComparison.P.pull_comp (Mor.restrict F m.G) m' j x).1⟩

theorem transfer {R : Type} [CommRing R] {C C' : Type 1} [Category.{0} C] [Category.{0} C'] {F : C ⥤ ModuleCat.{0} R}
    {F' : C' ⥤ ModuleCat.{0} R} (m : Mor F F' (RingHom.id R)) (h : ∀ T, Function.Bijective (m.τ T)) (j : ℕ) (s : R)
    (S : Submodule R (H F j)) (H₁ : InjUpTo s ((Mor.restrict F m.G).pull j))
    (H₂ : ∀ y, ∃ x ∈ S, (Mor.restrict F m.G).pull j x = s • y) :
    UpTo s (m.pull j) ∧ ∀ y, ∃ x ∈ S, m.pull j x = s • y := by
  obtain ⟨e, he, hm⟩ := pull_factor m h j
  have h2 : ∀ y, ∃ x ∈ S, m.pull j x = s • y := fun y => by
    obtain ⟨y', rfl⟩ := he.2 y
    obtain ⟨x, hx, e'⟩ := H₂ y'
    exact ⟨x, hx, by rw [hm, e', map_smul]⟩
  refine ⟨⟨fun x hx => H₁ x (he.1 ?_), fun y => (h2 y).imp fun _ hx => hx.2⟩, h2⟩
  rw [← hm, hx, map_zero]

theorem subsingleton_H {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] (F : C ⥤ ModuleCat.{0} R)
    (h : ∀ T, Subsingleton (F.obj T)) (j : ℕ) : Subsingleton (H F j) := by
  have : Subsingleton (Cn F j) := ⟨fun _ _ => funext fun _ => (h _).elim _ _⟩
  exact Submodule.Quotient.mk_surjective _ |>.subsingleton

theorem acr_zero (A : PAlg l) : Subsingleton (A.Acr 0) := subsingleton_of_zero_eq_one (by simpa using (A.pow_l_acr 0).symm)

theorem upTo_zero {R M N : Type _} [CommRing R] [AddCommGroup M] [AddCommGroup N] [Module R M] [Module R N] (h₁ : Subsingleton M)
    (h₂ : Subsingleton N) (f : M →ₗ[R] N) (s : R) (S : Submodule R M) : UpTo s f ∧ ∀ y, ∃ x ∈ S, f x = s • y :=
  ⟨⟨fun _ _ => h₁.elim _ _, fun _ => ⟨0, h₂.elim _ _⟩⟩, fun _ => ⟨0, zero_mem _, h₂.elim _ _⟩⟩

theorem om_zero {b : Base} (L : b.Fun) {Λ : Type} [CommRing Λ] (c : Λ →+* b.R) (h : Subsingleton b.R) (j : ℕ) :
    Subsingleton (H (OM L c) j) :=
  subsingleton_H _ (fun T => (show Subsingleton T.B from T.i.codomain_trivial)) j

theorem pdFlt_zero {b : Base} (L : b.Fun) {Λ : Type} [CommRing Λ] (c : Λ →+* b.R) (ρ : ℕ → ℕ) (hρ : Slow ρ) (μ : Λ)
    (hμ : c μ ∈ b.I) (T : Thick L) : ((pdFlt L c ρ hρ μ hμ).S 0).S T = ⊤ := eq_top_iff.2 fun x _ => by
  change (show T.B from x) ∈ T.pdPow (ρ 0)
  rw [hρ.1, T.pdPow_zero]; trivial

theorem level_zero {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) (k : Bool) (j : ℕ) (s : Acris l)
    (S : Submodule (Acris l) (Hc F κ k 0 j)) : UpTo s (β F κ k 0 j) ∧ ∀ y, ∃ x ∈ S, β F κ k 0 j x = s • y :=
  upTo_zero (om_zero (Lc F κ k 0) ((base l).cris 0) (acr_zero (base l)) j)
    (subsingleton_H (modF (AcrEl (F.pt κ) 0)) (fun T => acr_zero T.1.obj) j) (β F κ k 0 j) s S

theorem level_pos {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) (ε : Eps l) (k : Bool) (n j N : ℕ) (ρ : ℕ → ℕ) (hρ : Slow ρ)
    (h : RI ((Polynomial.X : Polynomial ℤ) ^ N) j (flt F κ ε k n ρ hρ).rees (gT F κ k n)) :
    UpTo (ε.μ ^ N) (β F κ k n j) ∧ ∀ y, ∃ x ∈ HcFil F κ k n (ρ N) j, β F κ k n j x = ε.μ ^ N • y :=
  have H := _root_.GlobalTheory.CompanionTheory.ReesDown.main (flt F κ ε k n ρ hρ) (gT F κ k n) j N (pdFlt_zero _ _ ρ hρ _ _) h j le_rfl
  transfer (βMor F κ k n) (fun _ => Function.bijective_id) j (ε.μ ^ N) (HcFil F κ k n (ρ N) j) H.1 H.2

theorem slow_zero : Slow 0 := ⟨rfl, fun _ => Nat.zero_le _⟩

theorem slow_id : Slow id := ⟨rfl, fun _ => le_rfl⟩

theorem level_all {O : Type} [CommRing O] (F : Fn O) (κ : O →+* OC l) (ε : Eps l) (k : Bool) (n j N : ℕ) (ρ : ℕ → ℕ) (hρ : Slow ρ)
    (h : n ≠ 0 → RI ((Polynomial.X : Polynomial ℤ) ^ N) j (flt F κ ε k n ρ hρ).rees (gT F κ k n)) :
    UpTo (ε.μ ^ N) (β F κ k n j) ∧ ∀ y, ∃ x ∈ HcFil F κ k n (ρ N) j, β F κ k n j x = ε.μ ^ N • y :=
  match n, h with
  | 0, _ => level_zero F κ k j _ _
  | n + 1, h => level_pos F κ ε k (n + 1) j N ρ hρ (h n.succ_ne_zero)

theorem main_of (hD : D.Out l) : Main l := fun d j =>
  (global_of (local_of hD) d j).imp fun N hN {_} _ F κ ε 𝒜 n =>
    ⟨fun k => (level_all F κ ε k n j N 0 slow_zero fun hn => hN F κ ε k n 0 slow_zero hn (Or.inr rfl) 𝒜).1,
      (level_all F κ ε false n j N id slow_id fun hn => hN F κ ε false n id slow_id hn (Or.inl rfl) 𝒜).2⟩

end CrystallineSemistableComparison.B
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.SubsingletonH =====
