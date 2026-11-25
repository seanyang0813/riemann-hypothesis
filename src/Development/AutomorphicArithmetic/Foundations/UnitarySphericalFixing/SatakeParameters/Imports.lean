module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.Langlands
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousRingEquivLocalFieldPreservesValuation
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalLanglandsTransport
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsTheRecOfIsRecLit
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsProductsCosocles
public import Development.AutomorphicArithmetic.Foundations.LocalLanglands.IsRecTOfIsRec
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousRingEquivLocalFieldPreservesValuationStatement
public import Formalism.SharpRestriction.LevelLetterCocycles.BlochKatoPhases
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceOverTransportRingIso
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
public import Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.AbsCentral
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ChevalleyUnits
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalArtinExistsHolds
public import Development.AutomorphicArithmetic.Foundations.LocalLanglands.LocalCentralUnits.RecTUnique
import GroundTheory.LocalFields.UnramifiedHensel
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ThetaMod
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.CoeffRingsHaveRootsOfUnity
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportIrrGLBijectiveDegreeCharZeroStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsCuspidalTwistsCharacters
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsReadingLaws
import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.RankOneUnitary
import Formalism.AlgebraicWeights.IsAlgWeight
import Formalism.LocalToGlobal.NormalizedHeckeFactors.TypesDefs
import ReciprocityTheory.Automorphisms.InstMainA
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsDataTransportLocalFieldIsoStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalArtinMapUniqueTransportPlaceIso
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalArtinMapUniqueTransportPlaceIsoStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceOverTransportRingIsoStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceOverTransportRingIsoSymmStatement
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportIrrGLBijectiveDegreeCharZero
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsCuspidalTwistsCharactersStatement
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder
import CompanionTheory.AutomorphicTheory.PlaceSeparation.IsOpenQuotientMapArt0

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FixedNeBotOfEquiv, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasSupportTransport, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIrrGLTransportAlongFieldIso, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIrrGLTransportAlongFieldIsoStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsTameWDOfWdRel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceIsoCompatibleLocalLanglandsFour, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalCongruenceFixedVectorsNeBotTransport, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalCongruenceFixedVectorsNeBotTransportStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.StableHopfOrderSubgroupRestriction, Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.FieldGT, Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.Imports

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FixedNeBotOfEquiv =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FixedNeBotOfEquiv", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.Langlands\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousRingEquivLocalFieldPreservesValuation\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalLanglandsTransport\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsTheRecOfIsRecLit\nimport GroundTheory.LocalFields.UnramifiedHensel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ThetaMod\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.CoeffRingsHaveRootsOfUnity\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.HeightCounting GlobalTheory.RowTie GlobalTheory.SplitRead GlobalTheory.NPin GlobalTheory.PendOf
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.LocLanglands GlobalTheory.WeilDeligne GlobalTheory.LocGL
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section
namespace GlobalTheory.FixedKOneTransport

theorem fixed_ne_bot_of_equiv {G G' V V' : Type} [Group G] [Group G'] [AddCommGroup V] [Module ℂ V]
    [AddCommGroup V'] [Module ℂ V'] (f : G →* G') (ρ : Representation ℂ G V) (ρ' : Representation ℂ G' V')
    (e : V ≃ₗ[ℂ] V') (he : ∀ g v, e (ρ g v) = ρ' (f g) (e v)) (H : Subgroup G) (H' : Subgroup G')
    (hH : H' ≤ H.map f) (h : GlobalTheory.PRep.fixed ρ H ≠ ⊥) : GlobalTheory.PRep.fixed ρ' H' ≠ ⊥ := by
  obtain ⟨v, hv, hv0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot h
  refine fun hb => hv0 (e.injective ?_)
  have hmem : e v ∈ GlobalTheory.PRep.fixed ρ' H' := by
    intro h'
    obtain ⟨g, hg, hfg⟩ := hH h'.2
    have hgv : ρ g v = v := by simpa using hv ⟨g, hg⟩
    simp only [MonoidHom.one_apply, Units.val_one, one_smul]
    rw [← hfg, ← he, hgv]
  rw [hb] at hmem
  simpa using hmem

open ValuativeRel

variable {k k' : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
  [Field k'] [ValuativeRel k'] [TopologicalSpace k'] [IsNonarchimedeanLocalField k']

def integerEquiv (i : k ≃+* k') (hi : Continuous i) : 𝒪[k] ≃+* 𝒪[k'] :=
  (i.subringMap (s := 𝒪[k])).trans (RingEquiv.subringCongr (GlobalTheory.LocalFieldIso.map_integer i hi))

theorem kOne_le_map (i : k ≃+* k') (hi : Continuous i) (n : Type) [Fintype n] [DecidableEq n] :
    GlobalTheory.SplitWeil.KOne k' n ≤ (GlobalTheory.SplitWeil.KOne k n).map (Matrix.GeneralLinearGroup.map i.toRingHom) := by
  rintro _ ⟨a', ha', rfl⟩
  set u := integerEquiv i hi
  let ψ : 𝓀[k'] →+* 𝓀[k] := IsLocalRing.ResidueField.map (u.symm : 𝒪[k'] →+* 𝒪[k])
  refine ⟨Matrix.GeneralLinearGroup.map (algebraMap 𝒪[k] k) (Matrix.GeneralLinearGroup.map (u.symm : 𝒪[k'] →+* 𝒪[k]) a'),
    ⟨_, ?_, rfl⟩, ?_⟩
  · simp only [SetLike.mem_coe, MonoidHom.mem_ker] at ha' ⊢
    have h1 : Matrix.GeneralLinearGroup.map (IsLocalRing.residue 𝒪[k])
        (Matrix.GeneralLinearGroup.map (u.symm : 𝒪[k'] →+* 𝒪[k]) a') =
        Matrix.GeneralLinearGroup.map ψ (Matrix.GeneralLinearGroup.map (IsLocalRing.residue 𝒪[k']) a') := by
      ext p q
      simp [ψ]
    rw [h1, ha', map_one]
  · ext p q
    simp only [u]
    exact congrArg Subtype.val ((integerEquiv i hi).apply_symm_apply _)

end GlobalTheory.FixedKOneTransport

theorem GlobalTheory.FixedKOneTransport.fixed_kOne_transport : ∀ (k k' : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [CharZero k]
    [Field k'] [ValuativeRel k'] [TopologicalSpace k'] [IsNonarchimedeanLocalField k'] [CharZero k'] (i : k ≃+* k'),
    Continuous i → ∀ (x : GlobalTheory.LocGL.IrrGL (k := k)) (x' : GlobalTheory.LocGL.IrrGL (k := k')), GlobalTheory.LocLanglands.RepRel i x x' →
      GlobalTheory.PRep.fixed x.rep (GlobalTheory.SplitWeil.KOne k (Fin x.1)) ≠ ⊥ → GlobalTheory.PRep.fixed x'.rep (GlobalTheory.SplitWeil.KOne k' (Fin x'.1)) ≠ ⊥ := by
  intro k k' _ _ _ _ _ _ _ _ _ _ i hi x x' H hx
  rw [← GlobalTheory.LocLanglands.FieldCompat.cls_rep x] at H
  obtain ⟨π', e, rfl, he⟩ := GlobalTheory.TheRecTransport.exists_of_repRel _ H
  let φ := equivRep π'
  have h2 : ∀ g v, φ.toLinearEquiv (π'.ρ g v) = π'.cl.rep.ρ g (φ.toLinearEquiv v) := fun g v =>
    φ.toIntertwiningMap.isIntertwining _ _ g v
  refine GlobalTheory.FixedKOneTransport.fixed_ne_bot_of_equiv (Matrix.GeneralLinearGroup.map i.toRingHom) x.rep
    π'.cl.rep.ρ (e.trans φ.toLinearEquiv) (fun g v => ?_) _ _ (GlobalTheory.FixedKOneTransport.kOne_le_map i hi _) hx
  rw [LinearEquiv.trans_apply, LinearEquiv.trans_apply, he, h2]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FixedNeBotOfEquiv =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasSupportTransport =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasSupportTransport", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsProductsCosocles\npublic import Development.AutomorphicArithmetic.Foundations.LocalLanglands.IsRecTOfIsRec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FixedNeBotOfEquiv\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousRingEquivLocalFieldPreservesValuationStatement\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalLanglandsTransport\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportIrrGLBijectiveDegreeCharZeroStatement\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsCuspidalTwistsCharacters\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ThetaMod\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.CoeffRingsHaveRootsOfUnity\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.HeightCounting GlobalTheory.RowTie GlobalTheory.SplitRead GlobalTheory.NPin GlobalTheory.PendOf
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.LocLanglands GlobalTheory.WeilDeligne GlobalTheory.LocGL
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.GoodTransport

open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.FieldTransport GlobalTheory.LocLanglands.TransportGL GlobalTheory.LocLanglands.FieldCompat
  ValuativeRel Matrix

section Pull

variable {G H V W : Type} [Group G] [Group H] [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W]

theorem isSubquotient_pull {σ : Representation ℂ H W} {ρ : Representation ℂ H V} (φ : G →* H)
    (h : IsSubquotient σ ρ) : IsSubquotient (pull σ φ) (pull ρ φ) := by
  obtain ⟨S, f, hf⟩ := h
  exact ⟨⟨S.toSubmodule, fun g _ hv => S.apply_mem_toSubmodule (φ g) hv⟩,
    ⟨f.toLinearMap, fun g => f.isIntertwining' (φ g)⟩, hf⟩

end Pull

section Fields

variable {k k' : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [CharZero k]
  [Field k'] [ValuativeRel k'] [TopologicalSpace k'] [IsNonarchimedeanLocalField k'] [CharZero k']

theorem hasSupport_transport (i : k ≃+* k') (hi : Continuous i) {x : IrrGL (k := k)} {x' : IrrGL (k := k')} (hx : RepRel i x x')
    {s : Multiset (IrrGL (k := k))} (hs : HasSupport x.rep s) :
    ∃ s' : Multiset (IrrGL (k := k')), HasSupport x'.rep s' ∧ ∀ y' ∈ s', ∃ y ∈ s, RepRel i y y' := by
  have T1 := GlobalTheory.T.continuous_ringEquiv_localField_preserves_valuation k k' i hi
  have hi' : Continuous i.symm := T1.1
  have T2 := GlobalTheory.T.continuous_ringEquiv_localField_preserves_valuation k' k i.symm hi'
  obtain ⟨T, hT, -⟩ := GlobalTheory.T.transportIrrGL_bijective_degree_charZero k k' i hi
  have hC := (GlobalTheory.LocLanglands.repRel_isCusp_nu_ofChar k k' i hi).1
  obtain ⟨r, xs, rfl, -, hc, e, hsub⟩ := hs
  let σ' : ∀ a, Representation ℂ (GL (Fin (xs a).1) k') (xs a).2.rep.V := fun a =>
    pull (xs a).rep (GeneralLinearGroup.map (i.symm : k' →+* k))
  have hsm : ∀ a, IsSmooth (σ' a) := fun a =>
    isSmooth_comp (xs a).2.rep.smooth (continuous_glMap (i.symm : k' →+* k) hi')
  have hir : ∀ a, (σ' a).IsIrreducible := fun a =>
    (isIrreducible_comp_iff (glMap_surjective i.symm)).2 (xs a).2.rep.irr
  have hrel : ∀ a, RepRel i (xs a) (IrrGL.of (σ' a) (hsm a) (hir a)) := fun a => by
    have h1 := (hT (xs a) (T (xs a))).2 rfl
    have h2 := eq_of_repRel i hi' h1
    rw [h2] at h1
    exact h1
  have hcu : ∀ a, IsCuspidal (σ' a) := fun a =>
    (IrrGL.isCusp_of.1 ((hC _ _ (hrel a)).1.1 ⟨(hc a).1, (hc a).2.2⟩)).2
  obtain rfl := eq_of_repRel i hi' hx
  have B := (nonempty_equiv_parInd e i.symm hi' hi T1.2.2.2.2 T2.2.2.2.2
    (ρ := piTensor σ') (ρ' := piTensor fun a => (xs a).rep) (fun h => by
      show _ = piTensor (fun a => (xs a).rep) (leviMap (i.symm : k' →+* k) (leviMap (i : k →+* k') h))
      rw [leviMap_symm_leviMap])).some
  have hS : IsSubquotient (IrrGL.of (pull x.rep (GeneralLinearGroup.map (i.symm : k' →+* k)))
      (isSmooth_comp x.2.rep.smooth (continuous_glMap (i.symm : k' →+* k) hi'))
      ((isIrreducible_comp_iff (glMap_surjective i.symm)).2 x.2.rep.irr)).rep (multiProd e σ') :=
    (IsSubquotient.of_injective (IrrGL.equivOf _ _ _).symm.toIntertwiningMap
      (IrrGL.equivOf _ _ _).symm.toLinearEquiv.injective).trans
      ((isSubquotient_pull _ hsub).trans
        (IsSubquotient.of_injective B.symm.toIntertwiningMap B.symm.toLinearEquiv.injective))
  have H : IsCuspSupport _ (fun a => (xs a).1) σ' :=
    ⟨IrrRep.irr _, fun a => ⟨(hc a).1, hir a, hcu a⟩, e, hS⟩
  refine ⟨_, hasSupport_of_isCuspSupport H, fun y' hy' => ?_⟩
  obtain ⟨a, -, rfl⟩ := Multiset.mem_map.1 hy'
  exact ⟨xs a, Multiset.mem_map_of_mem _ (Finset.mem_univ a), hrel a⟩

theorem goodCusp_transport (i : k ≃+* k') (hi : Continuous i)
    (hfixT : ∀ (z : IrrGL (k := k)) (z' : IrrGL (k := k')), RepRel i z z' →
      GlobalTheory.PRep.fixed z.rep (GlobalTheory.SplitWeil.KOne k (Fin z.1)) ≠ ⊥ →
      GlobalTheory.PRep.fixed z'.rep (GlobalTheory.SplitWeil.KOne k' (Fin z'.1)) ≠ ⊥)
    {y : IrrGL (k := k)} {y' : IrrGL (k := k')} (hy : RepRel i y y')
    (h : UpperTheory.Zero.LLC.GoodCusp y) : UpperTheory.Zero.LLC.GoodCusp y' := by
  have hi' : Continuous i.symm := (GlobalTheory.T.continuous_ringEquiv_localField_preserves_valuation k k' i hi).1
  obtain ⟨T, hT, hTd⟩ := GlobalTheory.T.transportIrrGL_bijective_degree_charZero k k' i hi
  obtain rfl : T y = y' := (hT _ _).1 hy
  rcases h with h1 | ⟨⟨g, hg, j, hj⟩, y₀, χ, hχ, hfix, rfl⟩
  · left
    rw [hTd]
    exact h1
  · right
    have hv : ∀ z, (χ.comp (Units.map i.symm.toRingHom.toMonoidHom)) (Units.map i.toRingHom.toMonoidHom z) = χ z :=
      fun z => congrArg χ (Units.ext (by simp))
    refine ⟨⟨g, hg, j.trans i, hi.comp hj⟩, T y₀, χ.comp (Units.map i.symm.toRingHom.toMonoidHom),
      isSmoothChar_comp i.symm hi' hχ, hfixT _ _ ((hT _ _).2 rfl) hfix, ?_⟩
    apply (hT _ _).1
    obtain ⟨n, π, π', e, h1, h2, he⟩ := (hT y₀ (T y₀)).2 rfl
    rw [h2, h1]
    exact repRel_tw i π π' e he χ hχ _ _ hv

end Fields

theorem good_transport : ∀ (k k' : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [CharZero k]
    [Field k'] [ValuativeRel k'] [TopologicalSpace k'] [IsNonarchimedeanLocalField k'] [CharZero k'] (i : k ≃+* k'),
    Continuous i → ∀ (x : GlobalTheory.LocGL.IrrGL (k := k)) (x' : GlobalTheory.LocGL.IrrGL (k := k')), GlobalTheory.LocLanglands.RepRel i x x' →
      UpperTheory.Zero.LLC.Good x → UpperTheory.Zero.LLC.Good x' := by
  intro k k' _ _ _ _ _ _ _ _ _ _ i hi x x' hx ⟨s, hs, hg⟩
  obtain ⟨s', hs', hrel⟩ := hasSupport_transport i hi hx hs
  exact ⟨s', hs', fun y' hy' => let ⟨y, hy, h⟩ := hrel y' hy'
    goodCusp_transport i hi (GlobalTheory.FixedKOneTransport.fixed_kOne_transport k k' i hi) h (hg y hy)⟩

end GlobalTheory.GoodTransport

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasSupportTransport =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIrrGLTransportAlongFieldIso =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIrrGLTransportAlongFieldIso", "h": "module\n\npublic import Development.AutomorphicArithmetic.Foundations.LocalLanglands.IsRecTOfIsRec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasSupportTransport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIrrGLTransportAlongFieldIso =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIrrGLTransportAlongFieldIsoStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIrrGLTransportAlongFieldIsoStatement", "h": "module\n\npublic import Development.AutomorphicArithmetic.Foundations.LocalLanglands.IsRecTOfIsRec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIrrGLTransportAlongFieldIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIrrGLTransportAlongFieldIsoStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsTameWDOfWdRel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsTameWDOfWdRel", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.BlochKatoPhases\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceOverTransportRingIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsReadingLaws\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.RankOneUnitary\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ThetaMod\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.CoeffRingsHaveRootsOfUnity\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Formalism.AlgebraicWeights.IsAlgWeight\nimport Formalism.LocalToGlobal.NormalizedHeckeFactors.TypesDefs\nimport ReciprocityTheory.Automorphisms.InstMainA\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.HeightCounting GlobalTheory.RowTie GlobalTheory.SplitRead GlobalTheory.NPin GlobalTheory.PendOf
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.LocLanglands GlobalTheory.WeilDeligne GlobalTheory.LocGL
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.TameTransport

variable {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω]
  {A : ValuationSubring Ω} {E' Ω' : Type} [Field E'] [NumberField E'] [Field Ω'] [Algebra E' Ω']
  {A' : ValuationSubring Ω'} {φ : Ω ≃+* Ω'}

theorem val_lt_val_iff (hm : ∀ z, φ z ∈ A' ↔ z ∈ A) (a b : Ω) (hb : b ≠ 0) :
    A'.valuation (φ a) < A'.valuation (φ b) ↔ A.valuation a < A.valuation b := by
  have hb' : φ b ≠ 0 := (map_ne_zero φ).mpr hb
  have h1 : A'.valuation (φ b) ≠ 0 := by simpa using hb'
  have h2 : A.valuation b ≠ 0 := by simpa using hb
  have e1 : A'.valuation (φ a) < A'.valuation (φ b) ↔ A'.valuation (φ (a / b)) < 1 := by
    rw [map_div₀, map_div₀, div_lt_one₀ (zero_lt_iff.mpr h1)]
  have e2 : A.valuation a < A.valuation b ↔ A.valuation (a / b) < 1 := by
    rw [map_div₀, div_lt_one₀ (zero_lt_iff.mpr h2)]
  rw [e1, e2, GlobalTheory.WeilTransport.val_lt_one_iff hm]

theorem isWild_of_rel (hm : ∀ z, φ z ∈ A' ↔ z ∈ A) {σ : G E Ω} {σ' : G E' Ω'}
    (hrel : ∀ z, φ (σ z) = σ' (φ z)) (hσ : Formalism.MainNotions.BlochKatoReduction.IsWild A σ) : Formalism.MainNotions.BlochKatoReduction.IsWild A' σ' := by
  obtain ⟨⟨hdec, hin⟩, hw⟩ := hσ
  refine ⟨⟨(GlobalTheory.WeilTransport.mem_Dec_iff hm hrel).mpr hdec, fun x hx => ?_⟩, fun x hx => ?_⟩
  · obtain ⟨z, rfl⟩ := φ.surjective x
    rw [GlobalTheory.WeilTransport.val_le_one_iff hm] at hx
    rw [← hrel, ← map_sub, GlobalTheory.WeilTransport.val_lt_one_iff hm]
    exact hin z hx
  · obtain ⟨z, rfl⟩ := φ.surjective x
    have hz : z ≠ 0 := by rintro rfl; exact hx (map_zero φ)
    rw [← hrel, ← map_sub, val_lt_val_iff hm _ _ hz]
    exact hw z hz

end GlobalTheory.TameTransport
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsTameWDOfWdRel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceIsoCompatibleLocalLanglandsFour =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceIsoCompatibleLocalLanglandsFour", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.Langlands\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalLanglandsTransport\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsTheRecOfIsRecLit\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

open GlobalTheory.LocLanglands.FieldCompat GlobalTheory.LocLanglands.TransportGL GlobalTheory.TheRecTransport

namespace GlobalTheory.LawsTTransport

variable {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω]
  {A : ValuationSubring Ω} {w : HeightOneSpectrum (𝓞 E)} {h : IsPlaceOver A w}
  {E' Ω' : Type} [Field E'] [NumberField E'] [Field Ω'] [Algebra E' Ω'] [IsAlgClosure E' Ω']
  {A' : ValuationSubring Ω'} {w' : HeightOneSpectrum (𝓞 E')} {h' : IsPlaceOver A' w'}

theorem eig_of_wdRel {φ : Ω ≃+* Ω'} {y : WD h} {y' : WD h'} (H : WDRel φ y y') {σ : Weil h} {σ' : Weil h'}
    (hσ : WeilRel φ σ σ') : y.eig σ = y'.eig σ' := by
  obtain ⟨n, b, b', e1, e2, -, hb⟩ := H
  rw [← e1, ← e2, WD.eig, WD.eig, WD.charPol_mk, WD.charPol_mk, hb σ _ hσ]

end GlobalTheory.LawsTTransport
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceIsoCompatibleLocalLanglandsFour =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalCongruenceFixedVectorsNeBotTransport =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalCongruenceFixedVectorsNeBotTransport", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.Langlands\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousRingEquivLocalFieldPreservesValuationStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalLanglandsTransport\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsCuspidalTwistsCharacters\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsTheRecOfIsRecLit\nimport GroundTheory.LocalFields.UnramifiedHensel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section
namespace GlobalTheory.KOneTransport

variable {k k' : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
  [Field k'] [ValuativeRel k'] [TopologicalSpace k'] [IsNonarchimedeanLocalField k']

def intMap (i : k ≃+* k') (hv : ∀ x : k, valuation k' (i x) ≤ 1 ↔ valuation k x ≤ 1) : 𝒪[k] →+* 𝒪[k'] :=
  (i.toRingHom.comp (𝒪[k]).subtype).codRestrict 𝒪[k'] fun x => (hv x).2 x.2

theorem intMap_coe (i : k ≃+* k') (hv : ∀ x : k, valuation k' (i x) ≤ 1 ↔ valuation k x ≤ 1) (x : 𝒪[k]) :
    ((intMap i hv x : 𝒪[k']) : k') = i x := rfl

theorem symm_hv (i : k ≃+* k') (hv : ∀ x : k, valuation k' (i x) ≤ 1 ↔ valuation k x ≤ 1) :
    ∀ y : k', valuation k (i.symm y) ≤ 1 ↔ valuation k' y ≤ 1 := fun y => by
  have := hv (i.symm y); rw [RingEquiv.apply_symm_apply] at this; exact this.symm

theorem isLocalHom_intMap (i : k ≃+* k') (hv : ∀ x : k, valuation k' (i x) ≤ 1 ↔ valuation k x ≤ 1) :
    IsLocalHom (intMap i hv) := by
  refine ⟨fun a ha => ?_⟩
  have h := ha.map (intMap i.symm (symm_hv i hv))
  have e : intMap i.symm (symm_hv i hv) (intMap i hv a) = a := Subtype.ext (by
    rw [intMap_coe, intMap_coe, RingEquiv.symm_apply_apply])
  rwa [e] at h

theorem map_mem_kOne (i : k ≃+* k') (hv : ∀ x : k, valuation k' (i x) ≤ 1 ↔ valuation k x ≤ 1) {n : ℕ}
    {g : GL (Fin n) k} (hg : g ∈ GlobalTheory.SplitWeil.KOne k (Fin n)) :
    GeneralLinearGroup.map i.toRingHom g ∈ GlobalTheory.SplitWeil.KOne k' (Fin n) := by
  haveI := isLocalHom_intMap i hv
  obtain ⟨g0, hg0, rfl⟩ := Subgroup.mem_map.1 hg
  refine Subgroup.mem_map.2 ⟨GeneralLinearGroup.map (intMap i hv) g0, ?_, ?_⟩
  · rw [MonoidHom.mem_ker] at hg0 ⊢
    ext a b
    have h := congrArg (fun m : GL (Fin n) (IsLocalRing.ResidueField 𝒪[k]) => (m.val : Matrix (Fin n) (Fin n) _) a b) hg0
    simp only [GeneralLinearGroup.map_apply, Units.val_one] at h ⊢
    rw [← IsLocalRing.ResidueField.map_residue, h]
    by_cases hab : a = b <;> simp [Matrix.one_apply, hab]
  · ext a b
    simp [GeneralLinearGroup.map_apply]
    rfl

end GlobalTheory.KOneTransport


open GlobalTheory.LocLanglands.FieldCompat GlobalTheory.LocLanglands.TransportGL in
theorem GlobalTheory.KOneTransport.fixed_ne_bot_transport : ∀ (k k' : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [CharZero k] [Field k'] [ValuativeRel k'] [TopologicalSpace k'] [IsNonarchimedeanLocalField k'] [CharZero k'] (i : k ≃+* k'), Continuous i → ∀ (x : IrrGL (k := k)) (x' : IrrGL (k := k')), RepRel i x x' → GlobalTheory.PRep.fixed x.rep (GlobalTheory.SplitWeil.KOne k (Fin x.1)) ≠ ⊥ → GlobalTheory.PRep.fixed x'.rep (GlobalTheory.SplitWeil.KOne k' (Fin x'.1)) ≠ ⊥ := by
  intro k k' _ _ _ _ _ _ _ _ _ _ i hi x x' H hx
  obtain ⟨-, hv, -⟩ := GlobalTheory.T.continuous_ringEquiv_localField_preserves_valuation k k' i hi
  rw [← GlobalTheory.LocLanglands.FieldCompat.cls_rep x] at H
  obtain ⟨π', e, rfl, he⟩ := GlobalTheory.TheRecTransport.exists_of_repRel _ H
  obtain ⟨v, hv0, hvne⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hx
  let φ := equivRep π'
  have h2 : ∀ g v, φ.toLinearEquiv (π'.ρ g v) = π'.cl.rep.ρ g (φ.toLinearEquiv v) := fun g v =>
    φ.toIntertwiningMap.isIntertwining _ _ g v
  rw [Submodule.ne_bot_iff]
  refine ⟨φ.toLinearEquiv (e v), fun h => ?_, ?_⟩
  · have hg : GeneralLinearGroup.map i.symm.toRingHom (h : GL (Fin x.1) k') ∈ GlobalTheory.SplitWeil.KOne k (Fin x.1) :=
      GlobalTheory.KOneTransport.map_mem_kOne i.symm (GlobalTheory.KOneTransport.symm_hv i hv) h.2
    have hfx : x.rep (GeneralLinearGroup.map i.symm.toRingHom (h : GL (Fin x.1) k')) v = v := by
      have := hv0 ⟨_, hg⟩
      simpa using this
    have h3 := he (GeneralLinearGroup.map i.symm.toRingHom (h : GL (Fin x.1) k')) v
    rw [GlobalTheory.LocLanglands.TransportGL.map_map_symm] at h3
    show π'.cl.rep.ρ (h : GL (Fin x.1) k') (φ.toLinearEquiv (e v)) = ((1 : _ →* ℂˣ) h : ℂ) • φ.toLinearEquiv (e v)
    rw [← h2, ← h3]
    erw [hfx]
    simp
  · intro h0
    apply hvne
    have : e v = 0 := φ.toLinearEquiv.map_eq_zero_iff.1 h0
    exact e.map_eq_zero_iff.1 this
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalCongruenceFixedVectorsNeBotTransport =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalCongruenceFixedVectorsNeBotTransportStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalCongruenceFixedVectorsNeBotTransportStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.Langlands\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalCongruenceFixedVectorsNeBotTransport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalCongruenceFixedVectorsNeBotTransportStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.StableHopfOrderSubgroupRestriction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.StableHopfOrderSubgroupRestriction", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.Langlands\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceOverTransportRingIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsReadingLaws\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.RankOneUnitary\nimport Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ThetaMod\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.CoeffRingsHaveRootsOfUnity\nimport Formalism.AlgebraicWeights.IsAlgWeight\nimport Formalism.LocalToGlobal.NormalizedHeckeFactors.TypesDefs\nimport ReciprocityTheory.Automorphisms.InstMainA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.HeightCounting GlobalTheory.RowTie GlobalTheory.SplitRead GlobalTheory.NPin GlobalTheory.PendOf
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
open GlobalTheory.LocLanglands GlobalTheory.WeilDeligne GlobalTheory.LocGL
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.TypeLawTransport

variable {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω]
  {A : ValuationSubring Ω} {w : HeightOneSpectrum (𝓞 E)} {h : IsPlaceOver A w}
  {E' Ω' : Type} [Field E'] [NumberField E'] [Field Ω'] [Algebra E' Ω'] [IsAlgClosure E' Ω']
  {A' : ValuationSubring Ω'} {w' : HeightOneSpectrum (𝓞 E')} {h' : IsPlaceOver A' w'}
  {φ : Ω ≃+* Ω'} {j : E →+* E'} {i : w.adicCompletion E ≃+* w'.adicCompletion E'}

theorem monodromy_vanishing_iff_of_weil_deligne_rel {y : WD h} {y' : WD h'} (H : WDRel φ y y') : y.mono0 ↔ y'.mono0 := by
  obtain ⟨n, b, b', rfl, rfl, hN, -⟩ := H
  rw [WD.monodromyZero_ofWeilDeligneRepClass_iff, WD.monodromyZero_ofWeilDeligneRepClass_iff, hN]

theorem inePol_transport (P : PlaceIso A w A' w' φ j i) {y : WD h} {y' : WD h'} (H : WDRel φ y y')
    {σ : G E Ω} {σ' : G E' Ω'} (hr : ∀ z, φ (σ z) = σ' (φ z)) : y.inePol σ = y'.inePol σ' := by
  obtain ⟨c, -, -, hq, -⟩ := GlobalTheory.WeilTransport.weil_equiv E Ω A w h E' Ω' A' w' h' φ j i P
  have hmem : σ' ∈ Weil h' ↔ σ ∈ Weil h := by
    rw [mem_Weil, mem_Weil, hq]
    exact exists_congr fun a => exists_congr fun b => GlobalTheory.WeilTransport.actsAs_iff P.mem hr _ a b
  obtain ⟨n, b, b', rfl, rfl, -, hb⟩ := H
  by_cases hσ : σ ∈ Weil h
  · have hσ' := hmem.2 hσ
    rw [WD.inePol_of_mem _ hσ, WD.inePol_of_mem _ hσ', WD.charPol_mk, WD.charPol_mk, hb ⟨σ, hσ⟩ ⟨σ', hσ'⟩ hr]
  · have hσ' : σ' ∉ Weil h' := fun h1 => hσ (hmem.1 h1)
    rw [WD.inePol_of_not_mem _ hσ, WD.inePol_of_not_mem _ hσ']

end GlobalTheory.TypeLawTransport

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.StableHopfOrderSubgroupRestriction =====

-- ===== clump member: Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.FieldGT =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.FieldGT", "h": "module\n\npublic import Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.AbsCentral\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodIrrGLTransportAlongFieldIsoStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsTameWDOfWdRel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceIsoCompatibleLocalLanglandsFour\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalCongruenceFixedVectorsNeBotTransportStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StableHopfOrderSubgroupRestriction\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ChevalleyUnits\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalArtinExistsHolds\npublic import Development.AutomorphicArithmetic.Foundations.LocalLanglands.LocalCentralUnits.RecTUnique\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousRingEquivLocalFieldPreservesValuationStatement\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsDataTransportLocalFieldIsoStatement\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalArtinMapUniqueTransportPlaceIso\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalArtinMapUniqueTransportPlaceIsoStatement\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocalLanglandsTransport\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceOverTransportRingIso\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceOverTransportRingIsoStatement\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceOverTransportRingIsoSymmStatement\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportIrrGLBijectiveDegreeCharZero\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportIrrGLBijectiveDegreeCharZeroStatement\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsCuspidalTwistsCharacters\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TransportKeepsCuspidalTwistsCharactersStatement\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\nimport CompanionTheory.AutomorphicTheory.PlaceSeparation.IsOpenQuotientMapArt0\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.IsTheRecOfIsRecLit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

open GlobalTheory.LocLanglands.FieldCompat GlobalTheory.LocLanglands.TransportGL GlobalTheory.TheRecTransport GlobalTheory.TypeLawTransport

namespace UpperTheory.One.M.FieldTr

variable {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω]
  {A : ValuationSubring Ω} {w : HeightOneSpectrum (𝓞 E)} {h : IsPlaceOver A w}
  {E' Ω' : Type} [Field E'] [NumberField E'] [Field Ω'] [Algebra E' Ω'] [IsAlgClosure E' Ω']
  {A' : ValuationSubring Ω'} {w' : HeightOneSpectrum (𝓞 E')} {h' : IsPlaceOver A' w'}
  {φ : Ω ≃+* Ω'} {j : E →+* E'} {i : w.adicCompletion E ≃+* w'.adicCompletion E'}

private theorem tame_fwd (P : PlaceIso A w A' w' φ j i) {y : WD h} {y' : WD h'} (hrel : WDRel φ y y')
    (hy : IsTameWD y) : IsTameWD y' := by
  obtain ⟨n, b, b', hb, hb', -, hρ⟩ := hrel
  obtain ⟨m, a, ha, hwild⟩ := hy
  obtain ⟨e, he, -⟩ := GlobalTheory.WeilDeligne.WD.mk_eq_mk.mp (ha.trans hb.symm)
  obtain ⟨c, hc, -⟩ := GlobalTheory.T.place_over_transport_ring_iso E Ω A w h E' Ω' A' w' h' φ j i P
  refine ⟨n, b', hb', fun σ' hσ' => ?_⟩
  have hr : WeilRel φ (c.symm σ') σ' := (hc (c.symm σ') σ').mpr (by simp)
  have hm : ∀ z, φ.symm z ∈ A ↔ z ∈ A' := fun z => by
    rw [← P.mem, RingEquiv.apply_symm_apply]
  have hσ : Formalism.MainNotions.BlochKatoReduction.IsWild A ((c.symm σ' : Weil h) : G E Ω) :=
    GlobalTheory.TameTransport.isWild_of_rel (φ := φ.symm) hm (fun z => φ.injective (by
      rw [RingEquiv.apply_symm_apply, hr, RingEquiv.apply_symm_apply])) hσ'
  rw [← hρ _ σ' hr]
  refine LinearMap.ext fun v => ?_
  obtain ⟨u, rfl⟩ := e.surjective v
  rw [← he, hwild _ hσ]
  rfl



private theorem typeLaw_fwd (P : PlaceIso A w A' w' φ j i) (rc : IrrGL (k := w.adicCompletion E) → WD h)
    (rc' : IrrGL (k := w'.adicCompletion E') → WD h') (hrel : ∀ x x', RepRel i x x' → WDRel φ (rc x) (rc' x'))
    (hT : UpperTheory.Zero.LLC.TypeLaw h rc) : UpperTheory.Zero.LLC.TypeLaw h' rc' := by
  intro E'' _ _ _ _ _ _ g _ w'' h'' ii hii n hn hg hnorm a'' ha'' K _ _ red hred hker θ hθ τ hτ hτc σ' hσ'
  letI iE : Algebra E E'' := ((algebraMap E' E'').comp j).toAlgebra
  letI iΩ : Algebra E'' Ω := ((φ.symm : Ω' →+* Ω).comp (algebraMap E'' Ω')).toAlgebra
  haveI : IsScalarTower E E'' Ω := IsScalarTower.of_algebraMap_eq fun x => by
    show algebraMap E Ω x = φ.symm (algebraMap E'' Ω' (algebraMap E' E'' (j x)))
    rw [← IsScalarTower.algebraMap_apply, ← P.ext, RingEquiv.symm_apply_apply]
  let ψ : Ω' ≃ₐ[E''] Ω := AlgEquiv.ofRingEquiv (f := φ.symm) fun _ => rfl
  haveI : Algebra.IsAlgebraic E'' Ω' := IsAlgClosure.isAlgebraic
  haveI : IsAlgClosure E'' Ω := ⟨IsAlgClosure.isAlgClosed E, ψ.isAlgebraic⟩
  have hm : ∀ z, φ.symm z ∈ A ↔ z ∈ A' := fun z => by
    rw [← P.mem, RingEquiv.apply_symm_apply]
  have h₃ : IsPlaceOver A w'' := fun x => by
    show A.valuation (φ.symm (algebraMap E'' Ω' (x : E''))) < 1 ↔ _
    rw [GlobalTheory.WeilTransport.val_lt_one_iff hm]
    exact h'' x
  haveI := charZero_compl w
  haveI := charZero_compl w'
  have hs : Continuous i.symm := (GlobalTheory.T.continuous_ringEquiv_localField_preserves_valuation _ _ i P.cont).1
  have hcont : Continuous (ii.trans i.symm) := hs.comp hii
  obtain ⟨T, hT1, -⟩ := GlobalTheory.transport_irrGL_bijective _ _ i.symm hs
  obtain ⟨σ₀, e, h2, he⟩ := exists_of_repRel σ' ((hT1 _ _).2 rfl)
  have hR' : RepRel i.symm (cls σ') (cls σ₀) := h2 ▸ (hT1 _ _).2 rfl
  have hR : RepRel i (cls σ₀) (cls σ') := (repRel_symm hR' :)
  have W := hrel _ _ hR
  have hinf : GlobalTheory.SerSys.TameGen.Inflates (σ₀.ρ.comp (Matrix.GeneralLinearGroup.map (ii.trans i.symm).toRingHom)) τ := by
    obtain ⟨f, hf0, hf⟩ := hσ'
    refine ⟨e.toLinearMap ∘ₗ f, fun h0 => hf0 ?_, fun k v => ?_⟩
    · ext v
      have := congrArg (fun F => F v) h0
      simpa using this
    · simp only [LinearMap.comp_apply, LinearEquiv.coe_coe, MonoidHom.comp_apply] at hf ⊢
      rw [hf, he]
      rfl
  obtain ⟨a₃, ha₃⟩ := GlobalTheory.localArtinExists_holds E'' Ω A w'' h₃
  obtain ⟨hm0, hp⟩ := hT E'' g w'' h₃ (ii.trans i.symm) hcont n hn hg hnorm a₃ ha₃ K red hred hker θ hθ τ hτ hτc σ₀ hinf
  refine ⟨(monodromy_vanishing_iff_of_weil_deligne_rel W).1 hm0, fun t x z hxz hv => ?_⟩
  have hfix : ∀ y : E'', GlobalTheory.WeilTransport.conj φ.symm (t : G E'' Ω').toRingEquiv (algebraMap E'' Ω y) =
      algebraMap E'' Ω y := fun y => by
    show φ.symm ((t : G E'' Ω') (φ.symm.symm (φ.symm (algebraMap E'' Ω' y)))) = φ.symm (algebraMap E'' Ω' y)
    rw [RingEquiv.symm_apply_apply, AlgEquiv.commutes]
  let t₁ : G E'' Ω := GlobalTheory.WeilTransport.conjAlg φ.symm (t : G E'' Ω') hfix
  have hrt : ∀ z, φ.symm ((t : G E'' Ω') z) = t₁ (φ.symm z) := fun z => by
    rw [GlobalTheory.WeilTransport.conjAlg_apply, RingEquiv.symm_apply_apply]
  have ht₁ : t₁ ∈ Ine (F := E'') A := by
    rw [← actsAs_zero_iff (q := 1), GlobalTheory.WeilTransport.actsAs_iff hm hrt, actsAs_zero_iff]
    exact t.2
  have P'' : PlaceIso A' w'' A w'' φ.symm (RingHom.id E'') (RingEquiv.refl (w''.adicCompletion E'')) :=
    ⟨hm, fun _ => rfl, continuous_id, fun _ => rfl⟩
  have hart := GlobalTheory.LocLanglands.isLocalArtin_transport _root_.CompanionTheory.FamInh.globalArtin
    GlobalTheory.Published.chevalleyUnits' E'' Ω' A' w'' h'' E'' Ω A w'' h₃ φ.symm (RingHom.id E'')
    (RingEquiv.refl _) P'' a'' a₃ ha'' ha₃ (ineIncl h'' t) (ineIncl h₃ ⟨t₁, ht₁⟩) hrt
  have hv' : Valued.v ((a₃ (ineIncl h₃ ⟨t₁, ht₁⟩) : w''.adicCompletion E'') -
      algebraMap E'' (w''.adicCompletion E'') (x : E'')) < 1 := by
    rw [hart]
    exact hv
  rw [← hp ⟨t₁, ht₁⟩ x z hxz hv']
  refine (inePol_transport P W fun z => ?_).symm
  have := hrt (φ z)
  rw [RingEquiv.symm_apply_apply] at this
  show φ (t₁ z) = (t : G E'' Ω') (φ z)
  rw [← this, RingEquiv.apply_symm_apply]



private theorem isRecT_fwd (P : PlaceIso A w A' w' φ j i) (rc : IrrGL (k := w.adicCompletion E) → WD h)
    (H : UpperTheory.Zero.LLC.IsRecT h rc) (a' : Weil h' →* (w'.adicCompletion E')ˣ) (ha' : IsLocalArtin h' a') :
    ∃ rc' : IrrGL (k := w'.adicCompletion E') → WD h', UpperTheory.Zero.LLC.IsRecT h' rc' ∧
      ∀ x x', RepRel i x x' → WDRel φ (rc x) (rc' x') := by
  have h3 := P.cont
  have := charZero_compl w
  have := charZero_compl w'
  have hs : Continuous i.symm := (GlobalTheory.T.continuous_ringEquiv_localField_preserves_valuation _ _ i h3).1
  obtain ⟨T, hT, hTd⟩ := GlobalTheory.T.transportIrrGL_bijective_degree_charZero _ _ i h3
  obtain ⟨hcu, hch⟩ := GlobalTheory.T.transport_keeps_cuspidal_twists_characters _ _ i h3
  obtain ⟨S, hS, hSd, hS0, hSs, hSc, hSt, hSp, hSi, hSo⟩ := GlobalTheory.T.place_over_transport_ring_iso_symm E Ω A w h E' Ω' A' w' h' φ j i P
  obtain ⟨c, hc, -⟩ := GlobalTheory.T.place_over_transport_ring_iso E Ω A w h E' Ω' A' w' h' φ j i P
  obtain ⟨a, ha, L⟩ := H
  have hart := GlobalTheory.T.localArtinMap_unique_transport_placeIso _root_.CompanionTheory.FamInh.globalArtin GlobalTheory.Published.chevalleyUnits'
    E Ω A w h E' Ω' A' w' h' φ j i P a a' ha ha'
  obtain ⟨rc', key⟩ : ∃ rc' : IrrGL (k := w'.adicCompletion E') → WD h', ∀ x', rc' x' = S (rc (T.symm x')) :=
    ⟨_, fun _ => rfl⟩
  have hRS : ∀ x x', RepRel i x x' → rc' x' = S (rc x) := fun x x' r => by
    rw [key, ← (hT _ _).1 r, T.symm_apply_apply]
  have hR : ∀ x x', RepRel i x x' → WDRel φ (rc x) (rc' x') := fun x x' r => (hS _ _).2 (hRS x x' r).symm
  have hrel : ∀ x', RepRel i (T.symm x') x' := fun x' => (hT _ _).2 (T.apply_symm_apply x')
  have hcusp : ∀ x', (T.symm x').IsCusp ↔ x'.IsCusp := fun x' => (hcu _ _ (hrel x')).1
  have hG : ∀ x x', RepRel i x x' → (UpperTheory.Zero.LLC.Good x ↔ UpperTheory.Zero.LLC.Good x') := fun x x' hx =>
    ⟨_root_.GlobalTheory.GoodTransport.good_transport _ _ i h3 x x' hx, _root_.GlobalTheory.GoodTransport.good_transport _ _ i.symm hs x' x (repRel_symm hx)⟩
  have hwd : ∀ y, WDRel φ y (S y) := fun y => (hS _ _).2 rfl
  have hσ : ∀ σ', WeilRel φ (c.symm σ') σ' := fun σ' => (hc _ _).2 (c.apply_symm_apply σ')
  have hv : ∀ (ω : (w'.adicCompletion E')ˣ →* ℂˣ) (z : (w.adicCompletion E)ˣ),
      (ω.comp (Units.map i.symm.symm.toRingHom.toMonoidHom)) z = ω (Units.map i.toRingHom.toMonoidHom z) :=
    fun ω z => rfl
  have heig : ∀ x' σ', (rc' x').eig σ' = (rc (T.symm x')).eig (c.symm σ') := fun x' σ' => by
    rw [hRS _ _ (hrel x')]
    exact (GlobalTheory.LawsTTransport.eig_of_wdRel (hwd _) (hσ σ')).symm
  have hcent : ∀ (x' : IrrGL (k := w'.adicCompletion E')) ω, HasCentralChar x'.rep ω →
      HasCentralChar (T.symm x').rep (ω.comp (Units.map i.symm.symm.toRingHom.toMonoidHom)) :=
    fun x' ω hω => central_transport i.symm (repRel_symm (hrel x')) hω
  refine ⟨rc', ⟨a', ha', ⟨fun x' => ?_, fun χ' hχ' => ?_, fun l x' hx => ?_, fun x' hx => ?_, fun x' s => ?_,
    fun x' ω hω σ' => ?_, fun x' χ hχ hg => ?_, fun x' ω hg hω σ' => ?_, fun n π π' hg ⟨u₀⟩ => ?_,
    fun x' y' hg e => ?_, fun x' hg hf => ?_, typeLaw_fwd P rc rc' hR L.type⟩⟩, hR⟩
  · rw [key, hSd, L.dim, ← hTd, T.apply_symm_apply]
  · have hχ := isSmoothChar_comp i h3 hχ'
    have R := hch _ hχ χ' hχ' (fun _ => rfl)
    rw [key, ← (hT _ _).1 R, T.symm_apply_apply, L.one]
    refine hSo _ _ _ _ fun σ σ' hσ => ?_
    rw [MonoidHom.comp_apply, MonoidHom.comp_apply, MonoidHom.comp_apply, hart σ σ' hσ]
  · let f : Segment (w'.adicCompletion E') → Segment (w.adicCompletion E) := fun Δ =>
      Segment.ofFirst (T.symm Δ.first) ((hcusp _).2 Δ.isCusp_first) Δ.len Δ.len_pos
    have hl := _root_.GlobalTheory.LocLanglands.isL_transport _ _ i.symm hs l (l.map f) x' (T.symm x')
      (by rw [List.forall₂_map_right_iff, List.forall₂_same]; exact fun Δ _ => ⟨repRel_symm (hrel _), rfl⟩)
      (repRel_symm (hrel x')) hx
    rw [key, L.langlands _ _ hl]
    clear hl hx
    induction l with
    | nil => exact hS0
    | cons Δ l ih =>
      simp only [segSum, sumList, List.map_cons, List.foldr_cons] at ih ⊢
      rw [hSs, ih, hSc, hSt, hSp, show (f Δ).first = T.symm Δ.first from rfl,
        show (f Δ).len = Δ.len from rfl, ← key]
  · rw [key, hSi]
    exact L.cusp _ ((hcusp x').2 hx)
  · have R : RepRel i ((T.symm x').nu s) (x'.nu s) := (hcu _ _ (hrel x')).2 s
    rw [key, ← (hT _ _).1 R, T.symm_apply_apply, L.nu, hSt, ← key]
  · rw [heig, L.absCentral _ _ (hcent x' ω hω) (c.symm σ'), hart _ _ (hσ σ'), hv]
  · have hχ0 := isSmoothChar_comp i h3 hχ
    have htw : ∀ x x', RepRel i x x' → RepRel i (x.tw _ hχ0) (x'.tw χ hχ) := by
      rintro x x' ⟨n, π, π', e, rfl, rfl, he⟩
      exact repRel_tw i π π' e he _ hχ0 χ hχ (fun _ => rfl)
    rw [hRS _ _ (htw _ _ (hrel x')), L.twist _ _ _ ((hG _ _ (hrel x')).2 hg), hSc, ← hRS _ _ (hrel x'),
      ← hRS _ _ (hch _ hχ0 χ hχ (fun _ => rfl))]
  · rw [heig, L.central _ _ ((hG _ _ (hrel x')).2 hg) (hcent x' ω hω) (c.symm σ'), hart _ _ (hσ σ'), hv]
  · obtain ⟨π₀, e, h1, he⟩ := exists_of_repRel π (repRel_symm (hrel (cls π)))
    obtain ⟨π₀', u, h2, hu⟩ := exists_of_repRel π' (repRel_symm (hrel (cls π')))
    have r1 : RepRel i (cls π₀) (cls π) := h1 ▸ hrel (cls π)
    have r2 : RepRel i (cls π₀') (cls π') := h2 ▸ hrel (cls π')
    rw [hRS _ _ r2, hRS _ _ r1, ← equiv_lpDual P S hS,
      L.dual n π₀ π₀' ((hG _ _ r1).2 hg) (contra_transport i.symm hs h3 π π' π₀ π₀' e he u hu u₀)]
  · have e2 : rc (T.symm x') = rc (T.symm y') := by
      apply S.injective
      rw [← hRS _ _ (hrel x'), ← hRS _ _ (hrel y'), e]
    exact T.symm.injective (L.inj _ _ ((hG _ _ (hrel y')).2 hg) e2)
  · have hx' := repRel_symm (hrel x')
    exact tame_fwd P (hR _ _ (hrel x')) (L.depth _ (_root_.GlobalTheory.GoodTransport.good_transport _ _ i.symm hs _ _ hx' hg)
      (_root_.GlobalTheory.KOneTransport.fixed_ne_bot_transport _ _ i.symm hs _ _ hx' hf))

end UpperTheory.One.M.FieldTr

open UpperTheory.One.M.FieldTr in
theorem UpperTheory.One.M.fieldGT :
    UpperTheory.One.M.FieldGT := by
  intro E Ω _ _ _ _ _ A w h E' Ω' _ _ _ _ _ A' w' h' rc rc' H H' φ j i h1 h2 h3 h4 n π π' e he hg
  have P : PlaceIso A w A' w' φ j i := ⟨h1, h2, h3, h4⟩
  have := charZero_compl w
  have := charZero_compl w'
  obtain ⟨a', ha', -⟩ := id H'
  obtain ⟨rc'', hrec, hR⟩ := isRecT_fwd P rc H a' ha'
  have hr : RepRel i (cls π) (cls π') := ⟨n, π, π', e, rfl, rfl, he⟩
  have hg' := _root_.GlobalTheory.GoodTransport.good_transport _ _ i h3 _ _ hr hg
  have W := hR _ _ hr
  rw [UpperTheory.Zero.LLC.recTUnique E' Ω' A' w' h' rc'' rc' hrec H' _ hg'] at W
  obtain ⟨a, ha, L⟩ := H
  exact exists_of_wdRel W (L.dim _)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.FieldGT =====

-- ===== clump member: Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.Imports =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.Imports", "h": "module\n\npublic import Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.AbsCentral\npublic import Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.FieldGT\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.LocGL GlobalTheory.WeilDeligne UpperTheory.Zero.LLC

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem UpperTheory.One.M.New.field {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω]
    {A : ValuationSubring Ω} {w : HeightOneSpectrum (𝓞 E)} {h : IsPlaceOver A w} {rc : IrrGL (k := w.adicCompletion E) → WD h}
    (_hL : RecTExists) {E' Ω' : Type} [Field E'] [NumberField E'] [Field Ω'] [Algebra E' Ω'] [IsAlgClosure E' Ω']
    {A' : ValuationSubring Ω'} {w' : HeightOneSpectrum (𝓞 E')} {h' : IsPlaceOver A' w'}
    {rc' : IrrGL (k := w'.adicCompletion E') → WD h'} (H : IsRecT h rc) (H' : IsRecT h' rc') : UpperTheory.One.M.FieldG rc rc' :=
  UpperTheory.One.M.fieldGT E Ω A w h E' Ω' A' w' h' rc rc' H H'
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.Imports =====
