module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.GoodSetupCountEqZeroOffBadPlaces
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenUsedOfCenReal
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockOfApply
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.PublishedInputsThirdLayer
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgebraicOfRoot
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingAutFixingSmallFieldFixesDeltaValues
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixesUntwistedTupleDataOfFixesSmallFieldStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.FieldTheory.Galois.Profinite
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
import Mathlib.Tactic.Linter.HaveILetI
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NoFormsOff
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ChoiceSideWithE

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixBaseOfFixingField, Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LocalFixedPointAtPlace

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixBaseOfFixingField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixBaseOfFixingField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.GoodSetupCountEqZeroOffBadPlaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.FieldTheory.Galois.Profinite\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenUsedOfCenReal\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NoFormsOff\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ChoiceSideWithE\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockOfApply\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.IndefR.FWT IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.ConjTwist GlobalTheory.ChoiceRead
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ)
open Formalism.L2.Host (embLL0)
open Formalism.IndefR.RecTie (Used0)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


open GlobalTheory.PlaceRead
open GlobalTheory.HeightCounting.Up (PrN)

namespace GlobalTheory.PlaceFix

theorem de_chi_eq {D : D7} {ρ : Setup D.ntw} (hρ : ρ.Good) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (x : (AE D)ˣ) :
    ∃ σ, (((ρ.B i j b).de.chi x : Circle) : ℂ) = ρ.eO i b (algebraMap (D.ntw.O0 i) (D.ntw.O i)
        ((Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i) σ : (D.ntw.O0 i)ˣ) : D.ntw.O0 i)) := by
  set ψ := Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i) with hψ
  have hopen : IsOpen (ψ.ker : Set (Formalism.ConjugateSelfDual.G D.host.E D.nd.Om)) := by
    have : ψ.ker = (D.ntw.delta i).ker := by
      ext σ
      cases b <;> simp [hψ, Formalism.MainNotions.BlochKatoReduction.Gen.psiAt, MonoidHom.mem_ker]
    rw [this]; exact D.ntw.delta_open i
  haveI : ψ.ker.FiniteIndex := @Subgroup.finiteIndex_of_finite_quotient _ _ _ (Subgroup.quotient_finite_of_isOpen _ hopen)
  have hpow : ∀ σ, ψ σ ^ ψ.ker.index = 1 := fun σ => by
    rw [← map_pow]; exact ψ.ker.pow_index_mem σ
  obtain ⟨σ, hσ⟩ := ρ.rc.exists_sym x
  refine ⟨σ, ?_⟩
  rw [hρ.delta i j b]
  exact charOf_eq _ _ hopen hσ Subgroup.FiniteIndex.index_ne_zero (hpow σ)

end GlobalTheory.PlaceFix
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixBaseOfFixingField =====

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LocalFixedPointAtPlace =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LocalFixedPointAtPlace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockOfApply\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.PublishedInputsThirdLayer\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgebraicOfRoot\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.GoodSetupCountEqZeroOffBadPlaces\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RingAutFixingSmallFieldFixesDeltaValues\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixBaseOfFixingField\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixesUntwistedTupleDataOfFixesSmallFieldStatement\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.CenUsedOfCenReal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic\n\n"}
section -- clump:auto
@[expose] public section



section
section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.IndefR.FWT IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.ConjTwist GlobalTheory.ChoiceRead
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ)
open Formalism.L2.Host (embLL0)
open Formalism.IndefR.RecTie (Used0)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


open GlobalTheory.PlaceRead
open GlobalTheory.HeightCounting.Up (PrN)
namespace GlobalTheory.PlaceFix
theorem fixed_at_place_of_local_alt : _root_.GlobalTheory.HeightCounting.Up.PublishedInputsThirdLayerAlt → ∀ (D : D7) (X : RealSide D) (X0 : BaseLevelRowSide D) (Y : GlobalTheory.Mem.R3.Read (A3 := X.A3) X.R.toRealDat X.F.lv2 X0) (S : NX.RatDat D.ntw) (YS : NX.NExpRealS X.R X.cG S) (Z : ExportTie YS X.geo.v₀) (c : NChoice D) (w : D.what₂.places.Pl) (j : Fin D.R.m) (H : AtPlace Y Z c w j),
  ∀ τ : ℂ ≃+* ℂ, (∀ a, τ (embLL0 D a) = embLL0 D a) → FixBase X.core X.R.toRealDat j τ ∧ FixDat (baseOf Z c w j) τ := by
  intro hP D X X0 Y S YS Z c w j H τ hτ
  have hC := X.char
  have hτ' : ∀ z ∈ (embLL0 D).fieldRange, τ z = z := by
    rintro _ ⟨y, rfl⟩
    exact hτ y
  have hTie : TieIn X.core X.R.toRealDat X.geo.κ X.geo.v₀ :=
    ⟨X.geo.fw.laws, X.geo.fw.alg_eq, X.geo.fw.kap, X.geo.fw.hv₀, X.geo.fw.chiR, X.geo.fw.x0⟩
  have hFB : FixBase X.core X.R.toRealDat j τ :=
    _root_.GlobalTheory.FixBaseSmall.fixBase_of_fixes _ _ _ _ _ _ hP.rayF X.core X.R X.cG S YS X.F.lv2 X.geo.κ X.geo.v₀ X.geo.fw.laws
      ⟨hC.lev, hC.grp, hC.fam, hC.models, hC.chain, hC.thP⟩ ⟨X.geo.fw⟩ hTie H.field.galois
      H.field.vals H.field.ray H.field.roots j τ hτ'
  refine ⟨hFB, ?_, ?_, ?_⟩
  · intro y
    obtain ⟨σ, hσ⟩ := de_chi_eq Z.good (c.twI w) j (c.sd w) y
    change τ (((Z.ρ.B _ j _).de.chi y : Circle) : ℂ) = _
    rw [hσ]
    refine _root_.GlobalTheory.DeltaFixed.aut_fixes_delta_values Z.ρ Z.good _ j _ (X.R.C.delAt (D.ntw.l (c.twI w))) (Z.pin.delta _ j _) ?_ τ hτ σ
    unfold Formalism.L2.Host.CharFrame.delAt
    split_ifs
    exacts [H.field.vals.del', H.field.vals.del]
  · rintro ⟨q, hq⟩
    obtain ⟨y, rfl⟩ := (Z.ρ.eG (c.twI w) j (c.sd w)).surjective q
    obtain ⟨g, rfl⟩ := (X.R.eG.trans X.cG).surjective y
    have hU : X.cG (X.R.eG g) ∈ D.nexp.U := ((Z.tie (c.twI w) j (c.sd w)).U_eq _).1 hq
    have hg : g ∈ X.F.P0 := (H.U_eq g).1 hU
    have e1 := (Z.tie (c.twI w) j (c.sd w)).psiU_eq ⟨_, hU⟩ hq
    have e2 := H.psi_eq (c.twI w) (c.sd w) ⟨g, hg⟩ hU
    obtain ⟨y, hy⟩ := H.pins.keep.levKs.1 ⟨g, hg⟩
    have e3 := e1.trans e2
    change τ ((((Z.ρ.B _ j _).G.P.chi ⟨_, hq⟩ : ℂˣ) : ℂ)) = _
    have e4 : D.what₂.embLL (X.F.ψ0 ⟨g, hg⟩ : D.what₂.LLˣ) = embLL0 D (S.kKs ((YS.fi j).eK.symm y)) := by
      change _ = D.what₂.embLL ((S.kKs ((YS.fi j).eK.symm y) : ↥D.LL0) : D.what₂.LL)
      rw [S.kKs_spec, ← (YS.fi j).eK_LL, RingEquiv.apply_symm_apply]
      exact congrArg _ hy.symm
    rw [e4] at e3
    refine (congrArg τ e3).trans (Eq.trans ?_ e3.symm)
    rw [map_inv₀, hτ]
  · exact (GlobalTheory.BigOn.Exp.TwConj.baseOf_of_realPin hC.lev Z.good Z.pin _ j _).fix_mu hC.lev (Z.good.base _ j _) hFB.chi
end GlobalTheory.PlaceFix
end
section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.IndefR.FWT IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.ConjTwist GlobalTheory.ChoiceRead
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ)
open Formalism.L2.Host (embLL0)
open Formalism.IndefR.RecTie (Used0)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


open GlobalTheory.PlaceRead
open GlobalTheory.HeightCounting.Up (PrN)

theorem _root_.GlobalTheory.T.local_fixed_point_of_third_layer : _root_.GlobalTheory.HeightCounting.Up.PublishedInputsThirdLayerAlt → ∀ (D : D7) (X : RealSide D) (X0 : BaseLevelRowSide D) (Y : GlobalTheory.Mem.R3.Read (A3 := X.A3) X.R.toRealDat X.F.lv2 X0) (S : NX.RatDat D.ntw) (YS : NX.NExpRealS X.R X.cG S) (Z : ExportTie YS X.geo.v₀) (c : NChoice D) (w : D.what₂.places.Pl) (j : Fin D.R.m) (H : AtPlace Y Z c w j),
  ∀ τ : ℂ ≃+* ℂ, (∀ a, τ (embLL0 D a) = embLL0 D a) → FixBase X.core X.R.toRealDat j τ ∧ FixDat (baseOf Z c w j) τ := by
  first | exact @_root_.GlobalTheory.PlaceFix.fixed_at_place_of_local_alt
end
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LocalFixedPointAtPlace =====
