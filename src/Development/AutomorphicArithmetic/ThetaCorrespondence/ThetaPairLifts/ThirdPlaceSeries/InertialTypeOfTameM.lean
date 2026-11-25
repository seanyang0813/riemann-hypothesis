module

public import Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.RecLawsH
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsTypeGroupBlockLift
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocDZOfSplitReg
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ToralAndGoodOfIsSpherical
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.WeilDeligneParameterMonodromyZeroOfUnramified
public import Development.AutomorphicArithmetic.Foundations.LocalLanglands.Multi
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.Laws
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SplitLoc
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AlIsRecrecLaws
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEquivOfMapEq
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.Mono0OfLpDimEqOne
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CharPolLpCharOfUnr
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.FixedNeBotOfEquiv
import GroundTheory.LocalFields.PadicLogSeries
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.PotentialCrystallinity.InertialTypeOfTameM, Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.InertialTypeOfTameM

-- ===== clump member: Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.PotentialCrystallinity.InertialTypeOfTameM =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.PotentialCrystallinity.InertialTypeOfTameM", "h": "module\n\npublic import Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.RecLawsH\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsTypeGroupBlockLift\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocDZOfSplitReg\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ToralAndGoodOfIsSpherical\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEquivOfMapEq\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.Mono0OfLpDimEqOne\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.CharPolLpCharOfUnr\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.WeilDeligneParameterMonodromyZeroOfUnramified\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.FixedNeBotOfEquiv\npublic import Development.AutomorphicArithmetic.Foundations.LocalLanglands.Multi\nimport GroundTheory.LocalFields.PadicLogSeries\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.LocGL GlobalTheory.LocLanglands GlobalTheory.SplitRead GlobalTheory.CuspRep in
theorem UpperTheory.One.M.goodI_of_sph {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] {n : ℕ}
    (π : Irr k n) (h : IsSpherical π.π) : UpperTheory.One.M.GoodI π :=
  (GlobalTheory.SphSupport.toral_and_good_of_isSpherical UpperTheory.Zero.LLC.Pr.bz k (cls (⟨π.V, π.π, π.smooth, π.irr⟩ : IrrRep (GL (Fin n) k)))
    (fixed_ne_bot_of_equiv (IrrRep.nonempty_equiv_rep (⟨π.V, π.π, π.smooth, π.irr⟩ : IrrRep (GL (Fin n) k))).some.symm h)).2

section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal Polynomial NumberField IsDedekindDomain GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.RowTie GlobalTheory.SplitRead

namespace GlobalTheory.TameType

theorem inertialType_of_tame_m : ∀ (R : Ranks) (H : Host R) (what₂ : Rows.Data R) (N : NData R H what₂) (A : NAut N) (T : WDTie N A) (S : Reading T) (i : N.Loc) (w : PlE H) (hw : IsSplitPl H w), TameSplitAll H.E → Laws S → TypeTame S i w hw → (∀ σ ∈ Ine (F := H.E) (N.plOm.1 w), A.inePol (A.locG (A.muC i) w) σ = X - C (iotaO N A i (chi1 N i σ))) → ∀ P : A.AV i, A.mono0 (A.locV i P w) ∧ ∀ σ ∈ Ine (F := H.E) (N.plOm.1 w), A.inePol (A.locV i P w) σ = (X - 1) ^ R.r * (X - C (iotaO N A i (chi1 N i σ))) ^ R.t :=
  _root_.GlobalTheory.TameType.inertialType_of_tame

end GlobalTheory.TameType
end

section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.HeightCounting GlobalTheory.RowTie GlobalTheory.SplitRead GlobalTheory.NPin GlobalTheory.PendOf

namespace GlobalTheory.DepthZeroAssembly
open GlobalTheory.WeilDeligne (WD)
open GlobalTheory.SplitRead.BlockParam (twistIrr)

end GlobalTheory.DepthZeroAssembly
end
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.PotentialCrystallinity.InertialTypeOfTameM =====

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.InertialTypeOfTameM =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.InertialTypeOfTameM", "h": "module\n\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.Laws\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SplitLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LocDZOfSplitReg\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEquivOfMapEq\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.Mono0OfLpDimEqOne\nimport Development.AbelianVarietyTheory.Proofs.SatakeParameters.CharPolLpCharOfUnr\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.WeilDeligneParameterMonodromyZeroOfUnramified\npublic import Development.AutomorphicArithmetic.Foundations.UnitarySphericalFixing.SatakeParameters.PotentialCrystallinity.InertialTypeOfTameM\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AlIsRecrecLaws\nimport GroundTheory.LocalFields.PadicLogSeries\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section



section
noncomputable section
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal Polynomial NumberField IsDedekindDomain GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.RowTie GlobalTheory.SplitRead
namespace GlobalTheory.TameType
theorem inertialType_of_tame_m_alt : ∀ (R : Ranks) (H : Host R) (what₂ : Rows.Data R) (N : NData R H what₂) (A : NAut N) (T : WDTie N A) (S : Reading T) (i : N.Loc) (w : PlE H) (hw : IsSplitPl H w), TameSplitAll H.E → _root_.GlobalTheory.SplitRead.LawsAlt S → TypeTame S i w hw → (∀ σ ∈ Ine (F := H.E) (N.plOm.1 w), A.inePol (A.locG (A.muC i) w) σ = X - C (iotaO N A i (chi1 N i σ))) → ∀ P : A.AV i, A.mono0 (A.locV i P w) ∧ ∀ σ ∈ Ine (F := H.E) (N.plOm.1 w), A.inePol (A.locV i P w) σ = (X - 1) ^ R.r * (X - C (iotaO N A i (chi1 N i σ))) ^ R.t := by
  intro R H what₂ N A T S i w hw hTS hL hT hmu P
  obtain ⟨htame, hram, hv⟩ := hT
  obtain ⟨v, hv0, hv⟩ := hv P
  have L := hL i w hw
  have hs := (S i w hw).mu_ok.1
  obtain ⟨π₁, π₂, h1, h2, he⟩ := hTS w _ _ _ _ v hs htame hram hv0 hv
  let c : Irr (w.adicCompletion H.E) 1 :=
    { V := ℂ, π := detRep (Fin 1) (S i w hw).mu, smooth := (isSmooth_ofChar_iff _).2 hs.detChar,
      irr := isIrreducible_ofChar _ }
  let τ : Irr (w.adicCompletion H.E) R.t :=
    { V := π₂.V, π := GlobalTheory.SmGL.twist π₂.π (detChar (Fin R.t) (S i w hw).mu), smooth := isSmooth_twist π₂.smooth hs.detChar,
      irr := irreducible_twist π₂.irr _ }
  have hc : Nonempty (c.π.Equiv (detRep (Fin 1) (S i w hw).mu)) := ⟨Representation.Equiv.refl _⟩
  have e1 := L.prod _ _ π₁ τ _ he
  have e2 := _root_.UpperTheory.One.M.RecLawsH.twist L _ _ c π₂ τ (UpperTheory.One.M.goodI_of_sph π₂ h2) hc ⟨Representation.Equiv.refl _⟩
  have u1 := (L.sph _ π₁).2 h1
  have u2 := (L.sph _ π₂).2 h2
  have eV := (S i w hw).locV P
  have eM := (S i w hw).locMu c hc
  rw [e1, e2] at eV
  refine ⟨?_, fun σ hσ => ?_⟩
  · rw [T.mono0, eV, WeilDeligne.WD.monomial_sum_iff, WeilDeligne.WD.monomial_char_iff _ _ (L.dim 1 c)]
    exact ⟨weilDeligneParameter_monodromy_zero_of_unramified u1, weilDeligneParameter_monodromy_zero_of_unramified u2⟩
  · have hz := hmu σ hσ
    rw [T.inePol _ _ _ hσ, eM] at hz
    rw [T.inePol _ _ _ hσ, eV, WeilDeligne.WD.inePol_sum, inePol_of_unr u1 hσ,
      inePol_char_of_unr u2 (L.dim 1 c) hσ hz, L.dim, L.dim]
end GlobalTheory.TameType
end
section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.HeightCounting GlobalTheory.RowTie GlobalTheory.SplitRead GlobalTheory.NPin GlobalTheory.PendOf
namespace GlobalTheory.DepthZeroAssembly
open GlobalTheory.WeilDeligne (WD)
open GlobalTheory.SplitRead.BlockParam (twistIrr)
theorem locDZ_of_split_reg_m_alt : ∀ (hL : _root_.UpperTheory.Zero.LLC.RecTExists) (D : D7), _root_.GlobalTheory.PendOf.SplitLocalCondition hL D → _root_.GlobalTheory.PendOf.RegularLocalCondition hL D → _root_.GlobalTheory.PendOf.LocalDatumCondition hL D := by
  intro hL D hS hR k v χ hχ u π ρ f ht hlab hser hsq hnr hx
  obtain ⟨π₁, π₂, hsph, e, y, hy1, hy2⟩ := hS k v χ hχ u π ρ f ht hlab hser hnr hx
  obtain ⟨hm1, hl1⟩ := hR k v π₁ ρ f hser hsq ⟨y, hy1, hy2⟩
  have L : _root_.UpperTheory.One.M.RecLawsH (_root_.GlobalTheory.NPin.weilDeligneOfLocalIrrep hL D (D.naut.plGw k v)) :=
    (_root_.GlobalTheory.CuspRep.ParLawsT.isRecT_locRecT hL (D.nd.plOm.2 (D.naut.plGw k v))).recLaws
  have e' : Nonempty (π.π.Equiv (GlobalTheory.SmGL.prod₂ π₁.π (twistIrr π₂ χ hχ).π)) := e
  have e1 := L.prod D.R.r D.R.t π₁ (twistIrr π₂ χ hχ) π e'
  have e2 := _root_.UpperTheory.One.M.RecLawsH.twist L D.R.t χ (Irr.ofDet 1 χ hχ) π₂ (twistIrr π₂ χ hχ) (UpperTheory.One.M.goodI_of_sph π₂ hsph) ⟨.refl _⟩ ⟨.refl _⟩
  have hu := (L.sph _ π₂).2 hsph
  refine ⟨?_, ?_⟩
  · rw [e1, WD.monomial_sum_iff, e2, WD.monomial_char_iff _ _ (L.dim _ _)]
    exact ⟨hm1, WD.unr_mono0 _ hu⟩
  · unfold _root_.GlobalTheory.PendOf.localLabelPolynomial at hl1 hlab ⊢
    rw [e1, WD.lab_lpSum, e2, lab_lpChar_of_unr _ _ _ _ hu (L.dim _ _) u hlab, hl1, L.dim]
end GlobalTheory.DepthZeroAssembly
end
end
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.InertialTypeOfTameM =====
