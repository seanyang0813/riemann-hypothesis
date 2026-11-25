module

public import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh
public import Development.AutomorphicSpectrum.Definitions.NonGaloisLines.TopLine
public import Formalism.LocalRingCardinality.AdicCompletionLocal.LocTied
public import Formalism.GaloisCohomology.LocalTateDualityK
public import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohDefs
public import GroundTheory.ProfiniteCohomology.LocalTateDuality.InjectiveCohomologyMapKummerSeqOpenFTwo
public import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmp
public import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohField
public import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohTate
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.RationalDualityOfAllCoefficients
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.H2EquivOfTorsionCharacter
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinrankH1fDeRham
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TateDualDeRhamAndFilZeroDimAll
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CupFlip
public import Development.AutomorphicSpectrum.Proofs.GlobalProofs.TateDualityH2FiniteCoefficients
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Development.WeilBound.CoreStatements.EulerCharacteristicCounts.BkMain
public import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohTopEuler
public import Development.AbelianVarietyTheory.Definitions.Foundations.HTBasis
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.GoodOAdicCompleteCompactBasis
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsCycCycChar
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoExactAnnihilatorsPeriodDatum
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoLocalAllPrimesOfBlochKato
public import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohTop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.Development.WeilBound.CoreStatements.EulerCharacteristicCounts.GcohTop, Development.WeilBound.CoreStatements.EulerCharacteristicCounts.LocalBoundOfAllInputs, Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlochKatoLocal

-- ===== clump member: Development.WeilBound.CoreStatements.EulerCharacteristicCounts.GcohTop =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.EulerCharacteristicCounts.GcohTop", "h": "module\n\npublic import Formalism.GaloisCohomology.LocalTateDualityK\npublic import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohCmp\npublic import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohField\npublic import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohTop\npublic import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohTate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory GroundTheory.ProfCoh ReciprocityTheory.Gal ValuativeRel

namespace PositivityTheory.LocalTateOrthogonality.Gcoh
open CompanionTheory.LocalTateOrthogonality.Gcoh (gc0 gc1 gc2 gcField gcMu gcRep)

theorem top_tate : Formalism.GaloisCohomology.LocalTateDualityK := CompanionTheory.LocalTateOrthogonality.Gcoh.tate_of gcRep gc0 gc1 gc2 gcField gcMu

end PositivityTheory.LocalTateOrthogonality.Gcoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.EulerCharacteristicCounts.GcohTop =====

-- ===== clump member: Development.WeilBound.CoreStatements.EulerCharacteristicCounts.LocalBoundOfAllInputs =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.EulerCharacteristicCounts.LocalBoundOfAllInputs", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.NonGaloisLines.TopLine\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations Module TensorProduct GlobalTheory.CompanionTheory.LocDual

noncomputable section

namespace PositivityTheory.LocalTateOrthogonality.Bk

section Cochains

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    {O : Type} [CommRing O] [Algebra O LL]

theorem B1_le_Z1f (A : GRep G Qp LL O) : B1 A.ρ ≤ finiteCocycles PD A.ρ := by
  rintro _ ⟨v, rfl⟩
  refine ⟨⟨?_, fun g h => ?_⟩, v ⊗ₜ[Qp] (1 : B), fun g => ?_⟩
  · have : cob A.ρ v = fun g => A.ρ g v + -v := funext fun g => sub_eq_add_neg _ _
    rw [this]
    exact (A.cont v).add continuous_const
  · change A.ρ (g * h) v - v = A.ρ g v - v + A.ρ g (A.ρ h v - v)
    rw [map_mul, Module.End.mul_apply, map_sub]
    abel
  · change (A.ρ g v - v) ⊗ₜ[Qp] (1 : B) = A.ρ g v ⊗ₜ[Qp] PD.actB g 1 - _
    rw [map_one, sub_tmul]

theorem lc_mk {V X : Type} [AddCommGroup V] [Module O V] [TopologicalSpace V] [ContinuousAdd V]
    [TopologicalSpace X] {M : Submodule O V} (hM : IsOpen (M : Set V)) {c : X → V}
    (hc : Continuous c) : IsLocallyConstant fun g => (Submodule.Quotient.mk (c g) : V ⧸ M) := by
  refine IsLocallyConstant.iff_isOpen_fiber.mpr fun y => ?_
  obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ y
  have : (fun g => (Submodule.Quotient.mk (c g) : V ⧸ M)) ⁻¹' {Submodule.Quotient.mk y} =
      (fun g => c g + -y) ⁻¹' (M : Set V) := by
    ext g
    simp [Submodule.Quotient.eq, sub_eq_add_neg]
  rw [this]
  exact hM.preimage (hc.add continuous_const)

variable {PD}

theorem cobO_of_cobL [ContinuousAdd LL] {L1 : Lattice (O := O) (charRep (cycLL PD LL))}
    (hL1 : IsOpen (L1.T : Set LL)) {z : G × G → LL} (h : CobL PD z) : CobO PD L1 z := by
  obtain ⟨f, hf, rfl⟩ := h
  exact ⟨fun g => Submodule.Quotient.mk (f g), ⟨lc_mk hL1 hf, fun _ => trivial⟩, rfl⟩

variable {A A' : GRep G Qp LL O} {LA : Lattice (O := O) A.ρ} {LA' : Lattice (O := O) A'.ρ}
  {m : A.V →ₗ[LL] A'.V →ₗ[LL] LL} {L1 : Lattice (O := O) (charRep (cycLL PD LL))}

omit [TopologicalSpace G] [TopologicalSpace LL] in
theorem mk_liftD {V : Type} [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]
    {ρ : Representation LL G V} (L : Lattice (O := O) ρ) (c : V ⧸ L.T) :
    Submodule.Quotient.mk (liftD L c) = c := (Submodule.Quotient.mk_surjective L.T c).choose_spec

def pairD (hL1 : L1.T = LinearMap.range (Algebra.linearMap O LL)) (hm : IsDualLat1 PD LA LA' m) :
    ↥LA.T →+ (A'.V ⧸ LA'.T) →ₗ[O] (LL ⧸ L1.T) :=
  AddMonoidHom.mk' (fun t => LA'.T.mapQ L1.T ((m t.1).restrictScalars O) fun y hy => by
      obtain ⟨a, ha⟩ := (hm.2 y).1 hy t.1 t.2
      rw [hL1]
      exact ⟨a, ha.symm⟩)
    fun t t' => by
      apply Submodule.linearMap_qext
      ext y
      simp

theorem mk_cupLD (hL1 : L1.T = LinearMap.range (Algebra.linearMap O LL))
    (hm : IsDualLat1 PD LA LA' m) (d : G → A.V) (hd : ∀ g, d g ∈ LA.T) (c : G → A'.V ⧸ LA'.T)
    (p : G × G) : (Submodule.Quotient.mk (cupLD LA' m d c p) : LL ⧸ L1.T) =
      pairD hL1 hm ⟨d p.1, hd _⟩ (actD LA' p.1 (c p.2)) := by
  conv_rhs => rw [← mk_liftD LA' (c p.2)]
  rfl

theorem cobO_cup_iff (hL1 : L1.T = LinearMap.range (Algebra.linearMap O LL))
    (hm : IsDualLat1 PD LA LA' m) (d : G → A.V) (hd : ∀ g, d g ∈ LA.T) (b : G → A'.V) :
    CobO PD L1 (cupLD LA' m d fun g => Submodule.Quotient.mk (b g)) ↔
      CobO PD L1 (cupL A'.ρ m d b) := by
  unfold CobO
  simp only [mk_cupLD hL1 hm d hd]
  rfl

theorem exists_of_mem_HfD {c : G → A'.V ⧸ LA'.T} (hc : c ∈ HfD PD LA') :
    ∃ b ∈ finiteCocycles PD A'.ρ, c = fun g => Submodule.Quotient.mk (b g) := by
  obtain ⟨_, ⟨b, hb, rfl⟩, _, ⟨x, rfl⟩, rfl⟩ := Submodule.mem_sup.1 hc
  obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  exact ⟨b + cob A'.ρ x, (finiteCocycles PD A'.ρ).add_mem hb (B1_le_Z1f PD A' ⟨x, rfl⟩), rfl⟩

theorem hfD_le (hT : IsOpen (LA'.T : Set A'.V)) : HfD PD LA' ≤ divisibleCocycles LA' := by
  intro c hc
  obtain ⟨b, hb, rfl⟩ := exists_of_mem_HfD hc
  refine ⟨lc_mk hT hb.1.1, fun g h => ?_⟩
  change _ = Submodule.Quotient.mk (b g + A'.ρ g (b h))
  exact congrArg Submodule.Quotient.mk (hb.1.2 g h)

end Cochains

end PositivityTheory.LocalTateOrthogonality.Bk
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.EulerCharacteristicCounts.LocalBoundOfAllInputs =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlochKatoLocal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlochKatoLocal", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.RationalDualityOfAllCoefficients\npublic import Development.AutomorphicSpectrum.Definitions.NonGaloisLines.TopLine\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.H2EquivOfTorsionCharacter\npublic import Formalism.LocalRingCardinality.AdicCompletionLocal.LocTied\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinrankH1fDeRham\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TateDualDeRhamAndFilZeroDimAll\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.CupFlip\npublic import Development.AutomorphicSpectrum.Proofs.GlobalProofs.TateDualityH2FiniteCoefficients\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Development.WeilBound.CoreStatements.EulerCharacteristicCounts.BkMain\npublic import Development.WeilBound.CoreStatements.EulerCharacteristicCounts.GcohTop\npublic import CompanionTheory.AutomorphicTheory.PadicCyclotomicFields.GcohTopEuler\npublic import Development.WeilBound.CoreStatements.EulerCharacteristicCounts.LocalBoundOfAllInputs\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.HTBasis\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsCycCycChar\nimport Mathlib.NumberTheory.Padics.PadicIntegers\nimport Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.GoodOAdicCompleteCompactBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoExactAnnihilatorsPeriodDatum\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoLocalAllPrimesOfBlochKato\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations Module GlobalTheory.CompanionTheory.LocDual

noncomputable section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.BK

open PositivityTheory.LocalTateOrthogonality.Bk in
theorem bkBL (l : ℕ) [Fact l.Prime] (Lp : LocPrime l) (K : FinExt l) (hD : DualD (Lp.PD K))
    (hC : CobLO (Lp.PD K)) (hA : bkACore (Lp.PD K)) : bkBCore (Lp.PD K) := by
  intro LL _ _ _ O _ _ hO L1 hL1 A A' LA LA' m hdR hm
  obtain ⟨hA1, -⟩ := hA LL O hO A A' m hdR hm.1
  have := hO.2.2.2.1
  have hO' : IsOpen (L1.T : Set LL) := by rw [hL1]; exact hO.2.2.2.2
  obtain ⟨⟨hdom, hdvr, -⟩, -⟩ := id hO
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  have hTo : IsOpen (LA'.T : Set A'.V) := (latTop l Lp K LL O hO A' LA' ϖ hϖ).1
  obtain ⟨-, hF⟩ := cupFlip l Lp K LL O hO A A' m hm.1
  have h1 : ∀ d ∈ latticeFiniteCocycles (Lp.PD K) LA, ∀ s ∈ HfD (Lp.PD K) LA',
      CobO (Lp.PD K) L1 (cupLD LA' m d s) := fun d hd s hs => by
    obtain ⟨b, hb, rfl⟩ := exists_of_mem_HfD hs
    rw [cobO_cup_iff hL1 hm d fun g => hd.1.2 g trivial]
    exact cobO_of_cobL hO' ((hA1 d hd.1.1).1 hd.2 b hb)
  have h2 : ∀ d ∈ latticeCocycles LA, (∀ s ∈ HfD (Lp.PD K) LA', CobO (Lp.PD K) L1 (cupLD LA' m d s)) →
      d ∈ latticeFiniteCocycles (Lp.PD K) LA := fun d hd H => by
    refine ⟨hd, (hA1 d hd.1).2 fun b hb => ?_⟩
    refine (hC LL O hO L1 hL1 _ (hF d hd.1 b hb.1).1).2 fun u => ?_
    have h3 := (cobO_cup_iff hL1 hm d (fun g => hd.2 g trivial) (u • b)).1
      (H _ (Submodule.mem_sup_left ⟨u • b, (finiteCocycles (Lp.PD K) A'.ρ).smul_mem u hb, rfl⟩))
    convert h3 using 1
    funext p
    simp [cupL]
  refine ⟨fun s hs => ⟨fun h d hd => h1 d hd s h, fun H => ?_⟩,
    fun d hd => ⟨fun h s _ hs => h1 d h s hs, fun H => h2 d hd fun s hs => H s (hfD_le hTo hs) hs⟩⟩
  exact hD LL O hO L1 hL1 A A' LA LA' m hm _ le_sup_right (hfD_le hTo) s hs
    fun d hd H' => H d (h2 d hd H')

theorem blochKatoLocal : GlobalTheory.Published.BlochKatoLocal := by
  intro l _ Lp AI T K
  have hT := PositivityTheory.LocalTateOrthogonality.Gcoh.top_tate
  have hE := CompanionTheory.LocalTateOrthogonality.Gcoh.top_euler
  have hD : DualD (Lp.PD K) := GlobalTheory.tate_double_annihilator hT l Lp K
  have hC : CobLO (Lp.PD K) := cobLO l Lp K (finZQ hT hE l Lp K) (topInj hT l Lp K)
  have hA := GlobalTheory.BlochKatoAnn.bkA_exact_annihilators hT hE l Lp AI T K
  have hB := bkBL l Lp K hD hC hA
  refine ⟨?_, GlobalTheory.Published.BlochKato.rationalDuality_of_allCoefficients hA,
    GlobalTheory.Published.BlochKato.integralDuality_of_allCoefficients hB⟩
  intro V _ _ _ _ _ _ _ ρ hc hdR
  letI : Module ℤ_[l] V := Module.compHom V (algebraMap ℤ_[l] ℚ_[l])
  haveI : IsScalarTower ℤ_[l] ℚ_[l] V := IsScalarTower.of_algebraMap_smul fun _ _ => rfl
  exact _root_.GlobalTheory.SeqDim.h1f_finrank l Lp AI T K ℚ_[l] ℤ_[l] GlobalTheory.Published.BlochKato.goodO_padicInt
    { V := V, ρ := ρ, cont := hc } hdR

end GlobalTheory.CompanionTheory.Hypotheses₂.BK
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.BlochKatoLocal =====
