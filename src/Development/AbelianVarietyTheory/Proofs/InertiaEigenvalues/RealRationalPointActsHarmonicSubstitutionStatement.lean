module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TranslateMemCoefLatFn
public import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IMemSiegel
public import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsSystem
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TauPsiApply
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsLettersHarmMemHHa
public import Development.AbelianVarietyTheory.Definitions.ExistenceOfLattices.CoeSelfDualLatticeInFrameCoordinatesEq
public import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilDatumRealPlacesFockVacuumCharacter
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIdeleAt
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.DifferentiableOfChar
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.EventuallyFinEqOne
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNeZeroOfIsVacO
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasInfExpMulOfIsOpenKer
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsNatCastSmulCoeffIsIntegral
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsHomogeneousOfRowDeg
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.Divisors.PerCEmb
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset
import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero
import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsStabForm
import Development.AbelianVarietyTheory.Definitions.ThetaValues.PolyDerivSmulLetter
import Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.OnbPerp
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.StdCharFinitePartRationalEqExpTrace
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero
import Mathlib.RingTheory.PicardGroup
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.PureTensorLIntertwine
import Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryActionAtRealPlace
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousOnAtTau
import Std.Tactic.BVDecide.Normalize.BitVec
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.OmPureTensorOOfFinite

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionHomogeneousCoeffMemAfterScaling, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionPreservesHarmonicLetterPolynomia, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionPreservesHarmonicLetterPolynomiaStatement, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealComponentEqConjInverseRationalMatrix, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealPointActsOnThetaFockVacuaByDetPower, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpanFiniteTranslatesVacuumThetaFockVacua, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilRepRealPointFockVectorSubstitution, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealRationalPointActsHarmonicSubstitution, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealRationalPointActsHarmonicSubstitutionStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionHomogeneousCoeffMemAfterScaling =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionHomogeneousCoeffMemAfterScaling", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TranslateMemCoefLatFn\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PerCEmb\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IMemSiegel\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsStabForm\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsSystem\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.PolyDerivSmulLetter\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\nimport Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.OnbPerp\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

namespace GlobalTheory.FockCoefInt

open MvPolynomial

def coeffSub (O : Subring ℂ) (σ : Type) : Subring (MvPolynomial σ ℂ) where
  carrier := {Q | ∀ mo, Q.coeff mo ∈ O}
  mul_mem' {a b} ha hb mo := by
    rw [coeff_mul]; exact O.sum_mem fun x _ => O.mul_mem (ha _) (hb _)
  one_mem' mo := by
    rw [coeff_one]; split_ifs
    · exact O.one_mem
    · exact O.zero_mem
  add_mem' {a b} ha hb mo := by rw [MvPolynomial.coeff_add]; exact O.add_mem (ha mo) (hb mo)
  zero_mem' mo := by rw [AddMonoidAlgebra.coeff_zero]; exact O.zero_mem
  neg_mem' {a} ha mo := by rw [MvPolynomial.coeff_neg]; exact O.neg_mem (ha mo)

theorem C_mem_coeffSub {O : Subring ℂ} {σ : Type} {c : ℂ} (hc : c ∈ O) : (C c : MvPolynomial σ ℂ) ∈ coeffSub O σ := by
  intro mo
  rw [coeff_C]; split_ifs
  · exact hc
  · exact O.zero_mem

theorem C_pow_mul_aeval_mem {σ : Type} (O : Subring ℂ) (z : ℂ) (g : σ → MvPolynomial σ ℂ)
    (hg : ∀ v, C z * g v ∈ coeffSub O σ) (d : ℕ) (P : MvPolynomial σ ℂ) (hP : P.IsHomogeneous d)
    (hc : P ∈ coeffSub O σ) : C (z ^ d) * aeval g P ∈ coeffSub O σ := by
  rw [P.as_sum]

  rw [map_sum, Finset.mul_sum]
  refine Subring.sum_mem _ fun mo hmo => ?_
  have hdeg : ∑ v ∈ mo.support, mo v = d := by
    have := hP (mem_support_iff.mp hmo)
    rw [← this, Finsupp.weight_apply, Finsupp.sum]
    simp
  rw [aeval_monomial, ← hdeg, Finsupp.prod, ← Finset.prod_pow_eq_pow_sum, map_prod, mul_left_comm,
    ← Finset.prod_mul_distrib]
  simp_rw [map_pow, ← mul_pow]
  refine Subring.mul_mem _ ?_ (Subring.prod_mem _ fun v _ => Subring.pow_mem _ ?_ _)
  · rw [algebraMap_eq]; exact C_mem_coeffSub (hc mo)
  · exact hg v

theorem fockSubst_coeff_mem : ∀ (D : D7) (m n : ℕ) (p : D.what₂.Tau → ℕ) (u : GlobalTheory.ExportSeries.GLR D n) (O : Subring ℂ) (z : ℂ),
    (∀ τ x y, z * (((u τ)⁻¹ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) x y ∈ O ∧
      z * ((u τ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) x y ∈ O) →
    ∀ (d : ℕ) (P : MvPolynomial (FVar D m n) ℂ), P.IsHomogeneous d → (∀ mo, P.coeff mo ∈ O) →
      ∀ mo, z ^ d * (GlobalTheory.ExportSeries.fockSubst p u P).coeff mo ∈ O := by
  intro D m n p u O z hu d P hP hc mo
  rw [GlobalTheory.ExportSeries.fockSubst, ← coeff_C_mul]
  refine C_pow_mul_aeval_mem O z _ ?_ d P hP hc mo
  · intro v
    split_ifs
    all_goals
      rw [Finset.mul_sum]
      refine Subring.sum_mem _ fun b _ => ?_
      rw [← mul_assoc, ← map_mul]
      intro mo'
      rw [coeff_C_mul, coeff_X']
      split_ifs
      · rw [mul_one]; first | exact (hu _ _ _).1 | exact (hu _ _ _).2
      · rw [mul_zero]; exact O.zero_mem

end GlobalTheory.FockCoefInt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionHomogeneousCoeffMemAfterScaling =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionPreservesHarmonicLetterPolynomia =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionPreservesHarmonicLetterPolynomia", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TranslateMemCoefLatFn\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TauPsiApply\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.StdCharFinitePartRationalEqExpTrace\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsLettersHarmMemHHa\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

noncomputable section
namespace GlobalTheory.FockSubstHarm

theorem isLetters_unique {D : D7} {H : Geo.Tor.Host D.host.E} (Dw : Datum H) {m n : ℕ}
    (hΨ : ∀ τ : D.host.E →+* ℂ, InPsi H τ ↔ ∃ ρ, τ = tauE D ρ) {lt lt' : LtN Dw n ≃ FVar D m n}
    (h : IsLetters Dw lt) (h' : IsLetters Dw lt') : lt = lt' := by
  refine Equiv.ext fun ℓ => ?_
  obtain ⟨hb, h1⟩ := h ℓ
  obtain ⟨hb', h1'⟩ := h' ℓ
  have hpsi : ∀ ρ, InPsi H (tauE D ρ) := fun ρ => (hΨ _).2 ⟨ρ, rfl⟩
  have hnot : ∀ ρ, ¬ InPsi H (ComplexEmbedding.conjugate (tauE D ρ)) := fun ρ hc =>
    (GlobalTheory.Harm.not_mem_hostType_iff H (ComplexEmbedding.conjugate (tauE D ρ))).2
      (by have e := ComplexEmbedding.involutive_conjugate _ (tauE D ρ); have := hpsi ρ; rw [← e] at this; exact this) hc
  rcases h1 with ⟨e1, e2⟩ | ⟨e1, e2⟩ <;> rcases h1' with ⟨e1', e2'⟩ | ⟨e1', e2'⟩
  · have hρ : (lt ℓ).1 = (lt' ℓ).1 := GlobalTheory.StdRat.tauE_injective D (e1.symm.trans e1')
    exact Prod.ext hρ (Prod.ext (Fin.ext (by omega)) (hb.trans hb'.symm))
  · exact absurd (e1 ▸ hpsi (lt ℓ).1 : InPsi H ℓ.1) (e1' ▸ hnot (lt' ℓ).1)
  · exact absurd (e1' ▸ hpsi (lt' ℓ).1 : InPsi H ℓ.1) (e1 ▸ hnot (lt ℓ).1)
  · have hρ : (lt ℓ).1 = (lt' ℓ).1 :=
      GlobalTheory.StdRat.tauE_injective D ((ComplexEmbedding.involutive_conjugate _).injective (e1.symm.trans e1'))
    exact Prod.ext hρ (Prod.ext (Fin.ext (by omega)) (hb.trans hb'.symm))

end GlobalTheory.FockSubstHarm

noncomputable section
namespace GlobalTheory.FockSubstHarm

theorem rename_comp_fockSubst {D : D7} {H : Geo.Tor.Host D.host.E} (Dw : Datum H) {n : ℕ}
    (hΨ : ∀ τ : D.host.E →+* ℂ, InPsi H τ ↔ ∃ ρ, τ = tauE D ρ) (u : GlobalTheory.ExportSeries.GLR D n) :
    (MvPolynomial.rename (GlobalTheory.FockLetters.fockVarEquiv Dw hΨ rfl)).comp
        (GlobalTheory.ExportSeries.fockSubst (m := Dw.p + Dw.q) (fun _ => Dw.p) u) =
      (GlobalTheory.Harm.colSubst (p := Dw.p) (q := Dw.q)
        (fun t => (((u ((GlobalTheory.FockLetters.tauPsi hΨ).symm t))⁻¹ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ))
        (fun t => ((u ((GlobalTheory.FockLetters.tauPsi hΨ).symm t) : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ))).comp
        (MvPolynomial.rename (GlobalTheory.FockLetters.fockVarEquiv Dw hΨ rfl)) := by
  refine MvPolynomial.algHom_ext fun v => ?_
  obtain ⟨ρ, i, b⟩ := v
  induction i using Fin.addCases with
  | left i =>
    have hi : ((Fin.castAdd Dw.q i : Fin (Dw.p + Dw.q)) : ℕ) < (fun _ => Dw.p) ρ := by simp

    simp only [AlgHom.comp_apply, GlobalTheory.ExportSeries.fockSubst, MvPolynomial.aeval_X, if_pos hi, map_sum, map_mul,
    MvPolynomial.rename_C, MvPolynomial.rename_X]
    simp only [GlobalTheory.FockLetters.fockVarEquiv, Equiv.prodCongr_apply, Prod.map, finCongr_refl, Equiv.refl_trans,
      Equiv.refl_apply, finSumFinEquiv_symm_apply_castAdd]
    erw [GlobalTheory.Harm.colSubst_X_xVar]
    simp [GlobalTheory.Harm.xForm_apply]
  | right j =>
    have hj : ¬ ((Fin.natAdd Dw.p j : Fin (Dw.p + Dw.q)) : ℕ) < (fun _ => Dw.p) ρ := by simp

    simp only [AlgHom.comp_apply, GlobalTheory.ExportSeries.fockSubst, MvPolynomial.aeval_X, if_neg hj, map_sum, map_mul,
    MvPolynomial.rename_C, MvPolynomial.rename_X]
    simp only [GlobalTheory.FockLetters.fockVarEquiv, Equiv.prodCongr_apply, Prod.map, finCongr_refl, Equiv.refl_trans,
      Equiv.refl_apply, finSumFinEquiv_symm_apply_natAdd]
    erw [GlobalTheory.Harm.colSubst_X_yVar]
    simp [GlobalTheory.Harm.yForm_apply]

theorem rename_fockSubst_mem_HHa : ∀ (D : D7) (H : Geo.Tor.Host D.host.E) (Dw : Datum H) (m n : ℕ) (lt : LtN Dw n ≃ FVar D m n),
    m = Dw.p + Dw.q → (∀ τ : D.host.E →+* ℂ, InPsi H τ ↔ ∃ ρ, τ = tauE D ρ) → IsLetters Dw lt →
    ∀ (u : GlobalTheory.ExportSeries.GLR D n) (wa : (D.host.E →+* ℂ) × ℕ → ℕ) (Q : MvPolynomial (LtN Dw n) ℂ),
      Q ∈ HHa Dw.mult n ℂ ComplexEmbedding.conjugate (InPsi H) (fun τ i => wa (τ, i)) →
      MvPolynomial.rename lt.symm (GlobalTheory.ExportSeries.fockSubst (m := m) (fun _ => Dw.p) u (MvPolynomial.rename lt Q)) ∈
        HHa Dw.mult n ℂ ComplexEmbedding.conjugate (InPsi H) (fun τ i => wa (τ, i)) := by
  intro D H Dw m n lt hm hΨ hlt u wa Q hQ
  subst hm
  obtain rfl : lt = GlobalTheory.FockLetters.letterEquiv Dw hΨ rfl :=
    isLetters_unique Dw hΨ hlt (GlobalTheory.FockLetters.isLetters_letterEquiv Dw hΨ rfl)
  rcases GlobalTheory.Harm.HHa_eq_zero_or_rowHighest (Ψ := InPsi H) (ComplexEmbedding.involutive_conjugate D.host.E)
      (GlobalTheory.Harm.not_mem_hostType_iff H) (fun _ => GlobalTheory.Harm.mult_of_mem Dw) (fun _ => GlobalTheory.Harm.mult_conjEmb_of_mem Dw)
      (n := n) (K := ℂ) (fun τ i => wa (τ, i)) with h0 | ⟨k, k', -, hiff⟩
  · have hQ0 := h0 Q hQ
    rw [hQ0] at hQ ⊢
    rw [map_zero, map_zero, map_zero]
    exact hQ
  · rw [hiff] at hQ ⊢
    change MvPolynomial.rename (GlobalTheory.Harm.thetaLetterEquiv Dw n) _ ∈ _ at hQ
    change MvPolynomial.rename (GlobalTheory.Harm.thetaLetterEquiv Dw n) _ ∈ _
    have e1 : ∀ P : MvPolynomial (FVar D (Dw.p + Dw.q) n) ℂ,
        MvPolynomial.rename (GlobalTheory.Harm.thetaLetterEquiv Dw n)
          (MvPolynomial.rename (GlobalTheory.FockLetters.letterEquiv Dw hΨ rfl).symm P) =
        MvPolynomial.rename (GlobalTheory.FockLetters.fockVarEquiv Dw hΨ rfl) P := fun P => by
      rw [MvPolynomial.rename_rename]
      refine congrArg (fun f => MvPolynomial.rename f P) (funext fun v => ?_)
      simp [GlobalTheory.FockLetters.letterEquiv]
    have e2 : MvPolynomial.rename (GlobalTheory.FockLetters.fockVarEquiv Dw hΨ rfl)
        (MvPolynomial.rename (GlobalTheory.FockLetters.letterEquiv Dw hΨ rfl) Q) =
        MvPolynomial.rename (GlobalTheory.Harm.thetaLetterEquiv Dw n) Q := by
      rw [MvPolynomial.rename_rename]
      refine congrArg (fun f => MvPolynomial.rename f Q) (funext fun v => ?_)
      simp [GlobalTheory.FockLetters.letterEquiv]
    rw [e1, ← AlgHom.comp_apply, rename_comp_fockSubst, AlgHom.comp_apply, e2]
    exact GlobalTheory.Harm.colSubst_mem_rowHighest (fun t => Units.inv_mul _) hQ

end GlobalTheory.FockSubstHarm
end -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionPreservesHarmonicLetterPolynomia =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionPreservesHarmonicLetterPolynomiaStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionPreservesHarmonicLetterPolynomiaStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TranslateMemCoefLatFn\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionPreservesHarmonicLetterPolynomia\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionPreservesHarmonicLetterPolynomiaStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealComponentEqConjInverseRationalMatrix =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealComponentEqConjInverseRationalMatrix", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ExistenceOfLattices.CoeSelfDualLatticeInFrameCoordinatesEq\npublic import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.PerCEmb\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IMemSiegel\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsStabForm\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsSystem\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.PolyDerivSmulLetter\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\nimport Formalism.LocalToGlobal.IndefiniteReal.ExistsChosenExtremalVector\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

namespace GlobalTheory.ArchRatComp

theorem compAt_mt_eq_map_inv : ∀ (D : D7) (θ : InfFam D), IsInfFam θ → ∀ (V : HSp D) (γ a : GA D V) (γ' : GL (Fin V.rank) D.host.E),
    γ ∈ GQ V → GlobalTheory.Member.IsRat V γ γ' → a ∈ GinfC V → γ * a ∈ GfC V → ∀ τ : D.what₂.Tau, ∃ σ : D.host.E →+* ℂ,
      Formalism.IndefR.Datum.compAt θ τ (Formalism.L2.Theta.mt V a) = ((γ'⁻¹ : GL (Fin V.rank) D.host.E) : Matrix (Fin V.rank) (Fin V.rank) D.host.E).map σ := by
  intro D θ _ V γ a γ' _ hrat _ hfc τ
  refine ⟨(θ τ).comp ((infPart D).comp (incA D)), ?_⟩
  have h1 : infHom V (γ * a) = 1 := hfc
  have h2 : infHom V a = (infHom V γ)⁻¹ := by
    rw [map_mul] at h1; exact eq_inv_of_mul_eq_one_right h1
  have h3 : infHom V γ = Formalism.UG.bc ((infPart D).comp (incA D)) γ' := by
    show (Formalism.UG.bc _) (matHom V γ) = _
    rw [hrat]
    ext i j
    rfl
  have h4 : Formalism.IndefR.Datum.compAt θ τ (Formalism.L2.Theta.mt V a) = ((infHom V a).val).map (θ τ) := rfl
  rw [h4, h2, h3, ← map_inv]
  ext i j
  rfl

end GlobalTheory.ArchRatComp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealComponentEqConjInverseRationalMatrix =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealPointActsOnThetaFockVacuaByDetPower =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealPointActsOnThetaFockVacuaByDetPower", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilDatumRealPlacesFockVacuumCharacter\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIdeleAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

noncomputable section

namespace GlobalTheory.RealVacPow

open scoped ComplexOrder

theorem vacuum_det_power : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (V W : HSp D) (χV χW : (AE D)ˣ →* Circle)
    (om : GA D V × GA D W →* Module.End ℂ (WO V W → ℂ)) (ΛV : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E))
    (ΛW : Submodule (𝓞 D.host.E) (Fin W.rank → D.host.E)) (sW : D.what₂.Tau → Matrix (Fin W.rank) (Fin W.rank) ℂ)
    (f₀ : WO V W → ℂ), VacPair ψ θ V W χV χW om ΛV ΛW sW f₀ →
    ∀ (p : ℕ) (BW : D.what₂.Tau → Matrix (Fin W.rank) (Fin W.rank) ℂ), (∀ τ, IsONBasis (gramAt D W τ) (sW τ) (BW τ) p) →
    ∃ k : D.what₂.Tau → ℤ, ∀ a ∈ GinfC V, ∀ f : WO V W → ℂ, IsThetaFunO ψ V W f →
      (∀ τ, IsFockVacAt (heisO ψ V W) θ τ (cplxO 1 (sW τ)) f) →
      om (a, 1) f = (∏ τ, (Formalism.IndefR.Datum.compAt θ τ (Formalism.L2.Theta.mt V a)).det ^ k τ) • f := by
  intro D ψ θ V W χV χW om ΛV ΛW sW f₀ hP p BW hB
  have hP1 := hP.1
  obtain ⟨η, hη⟩ := hP1.eta
  choose b hb using hP1.expW
  have hsW : ∀ τ, IsCartanInv (gramAt D W τ) (sW τ) := hP.2.2.2.2.2.2.2.1
  choose q hq1 hq using fun τ => GlobalTheory.OneMapRef.RealMove.detPlus_one (n := V.rank) (sW τ) (hsW τ).1
  refine ⟨fun τ => -(b τ) - (q τ : ℤ), fun a ha f hf hv => ?_⟩
  have hθ : IsInfFam θ := hP1.inf
  have hψ := hP1.weil.std
  have hgV : ∀ τ, gramAt D V τ = 1 := fun τ => by
    unfold gramAt; rw [hP1.std]; exact Matrix.map_one _ (map_zero _) (map_one _)
  have hS : ∀ τ, IsCartanInv (gramAt D V τ) 1 := fun τ => by
    rw [hgV]; exact ⟨by simp, by simp, by simpa using Matrix.PosDef.one⟩
  have hdetV : ∀ τ, (gramAt D V τ).det ≠ 0 := fun τ => by rw [hgV]; simp
  obtain ⟨x, hx, hxv⟩ := GlobalTheory.OneMapRef.RealMove.exists_root hθ V hdetV a ha
  have mt1 : Formalism.L2.Theta.mt W 1 = 1 := by unfold Formalism.L2.Theta.mt; rw [map_one]; rfl
  have hy : IsDetRoot W 1 1 := by
    unfold IsDetRoot
    have : ((matHom W 1).1 : Matrix (Fin W.rank) (Fin W.rank) (AE D)) = 1 := mt1
    rw [this, Matrix.det_one, one_mul, Units.val_one, map_one]
  have one : ∀ τ, compAt θ τ (Formalism.L2.Theta.mt W 1) = 1 := fun τ => by
    rw [mt1]; exact Matrix.map_one _ (by simp) (by simp)
  rw [GlobalTheory.WeilVacChar.vacuum_character D ψ hψ V W θ hθ χV χW om η hη hP1.weil (fun _ => 1) sW hS hsW a ha 1 (one_mem _)
    (fun τ => by rw [Matrix.one_mul, Matrix.mul_one]) (fun τ => by rw [one, Matrix.one_mul, Matrix.mul_one]) x 1 hx hy f hf hv]
  congr 1
  have hexp : ∀ τ, HasInfExp D (χW * (η ^ W.rank)⁻¹) τ ((b τ : ℤ) : ℚ) := fun τ => by
    have := GlobalTheory.OneMapRef.RealMove.hasInfExp_twist (hb τ) (hη.2.2.2 τ) W.rank
    rwa [add_sub_cancel_right] at this
  have hνx := hxv _ b hexp
  have hinv : ∀ τ, (compAt θ τ (Formalism.L2.Theta.mt V a⁻¹)).det * (compAt θ τ (Formalism.L2.Theta.mt V a)).det = 1 := fun τ => by
    rw [GlobalTheory.OneMapRef.RealMove.det_compAt, GlobalTheory.OneMapRef.RealMove.det_compAt, ← map_mul, ← map_mul, ← Matrix.det_mul]
    have : Formalism.L2.Theta.mt V a⁻¹ * Formalism.L2.Theta.mt V a = 1 := by
      unfold Formalism.L2.Theta.mt; rw [← Units.val_mul, ← map_mul, inv_mul_cancel, map_one]; rfl
    rw [this, Matrix.det_one, map_one, map_one]
  have hd0 : ∀ τ, (compAt θ τ (Formalism.L2.Theta.mt V a)).det ≠ 0 := fun τ h => by
    have := hinv τ; rw [h, mul_zero] at this; exact zero_ne_one this
  have hdp : ∀ τ, GlobalTheory.WeilParts.detPlus 1 (sW τ) (compAt θ τ (Formalism.L2.Theta.mt V a⁻¹)) (compAt θ τ (Formalism.L2.Theta.mt W 1)) =
      ((compAt θ τ (Formalism.L2.Theta.mt V a)).det)⁻¹ ^ q τ := fun τ => by
    rw [one, (hq τ _ 1 (by rw [Matrix.one_mul, Matrix.mul_one])).1]
    have e : (1 / 2 : ℂ) • (1 + sW τ) * 1 + (1 / 2 : ℂ) • (1 - sW τ) = 1 := by rw [Matrix.mul_one]; module
    rw [e, Matrix.det_one, one_pow, one_mul, eq_inv_of_mul_eq_one_left (hinv τ)]
  rw [map_one, mul_one, Circle.coe_inv, hνx, Finset.prod_congr rfl fun τ _ => hdp τ, ← Finset.prod_inv_distrib,
    ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun τ _ => ?_
  rw [zpow_sub₀ (hd0 τ), _root_.zpow_neg, zpow_natCast, inv_pow, div_eq_mul_inv]

end GlobalTheory.RealVacPow

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealPointActsOnThetaFockVacuaByDetPower =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpanFiniteTranslatesVacuumThetaFockVacua =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpanFiniteTranslatesVacuumThetaFockVacua", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.DifferentiableOfChar\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.EventuallyFinEqOne\nimport Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

noncomputable section

namespace GlobalTheory.LevelSeries

variable {D : D7}

theorem map_infPart_of_nsmul {V W : HSp D} {y : WO V W} {M : ℕ} (hM : M ≠ 0) (h : (M • y).map (infPart D) = 0) :
    y.map (infPart D) = 0 := by
  ext i j
  have h1 := congrFun (congrFun h i) j
  rw [Matrix.map_apply, Matrix.smul_apply, map_nsmul, ← Nat.cast_smul_eq_nsmul D.host.F] at h1
  exact (smul_eq_zero.1 h1).resolve_left (Nat.cast_ne_zero.2 hM)

theorem trSp_theta_fock : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (V W : HSp D) (χV χW : (AE D)ˣ →* Circle)
    (om : GA D V × GA D W →* Module.End ℂ (WO V W → ℂ)) (ΛV : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E))
    (ΛW : Submodule (𝓞 D.host.E) (Fin W.rank → D.host.E)) (sW : D.what₂.Tau → Matrix (Fin W.rank) (Fin W.rank) ℂ)
    (f₀ : WO V W → ℂ), VacPair ψ θ V W χV χW om ΛV ΛW sW f₀ →
    ∀ (e : AE D) (M : ℕ) (O₁ : Subring ℂ), M ≠ 0 → ∀ f ∈ trSp ψ V W ΛV ΛW f₀ e M O₁,
      IsThetaFunO ψ V W f ∧ ∀ τ, IsFockVacAt (heisO ψ V W) θ τ (cplxO 1 (sW τ)) f := by
  intro D ψ θ V W χV χW om ΛV ΛW sW f₀ hv e M O₁ hM f hf
  have hvac : IsVacO ψ θ V W (fun _ => 1) sW (ΛV : Set (Fin V.rank → D.host.E)) (ΛW : Set (Fin W.rank → D.host.E)) f₀ :=
    hv.2.2.2.2.2.2.2.2
  let Sp : Submodule ℂ (WO V W → ℂ) :=
    Submodule.span ℂ (Set.range fun a : {a : WO V W // a.map (infPart D) = 0} => heisO ψ V W a f₀)
  have hle : trSp ψ V W ΛV ΛW f₀ e M O₁ ≤ Sp.restrictScalars O₁ := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨y, -, hy, rfl⟩
    exact Submodule.subset_span ⟨⟨y, map_infPart_of_nsmul hM (_root_.GlobalTheory.SplitScalar.latO_fin hy)⟩, rfl⟩
  obtain ⟨c, hc⟩ := Finsupp.mem_span_range_iff_exists_finsupp.1 (hle hf)
  rw [← hc]
  exact ⟨GlobalTheory.FinTranslate.isTheta_sum_heisO_fin D ψ V W hvac.1.1 f₀ hvac.2.theta _ c.support (fun a => a.1) c
      fun a _ => a.2,
    fun τ => GlobalTheory.FockTranslate.isFockVacAt_sum D ψ θ V W hvac.1.1 hvac.2.inf f₀ hvac.2.theta τ _ (hvac.2.fock τ) _
      c.support (fun a => a.1) c fun a _ => a.2⟩

end GlobalTheory.LevelSeries
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpanFiniteTranslatesVacuumThetaFockVacua =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilRepRealPointFockVectorSubstitution =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilRepRealPointFockVectorSubstitution", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TranslateMemCoefLatFn\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.PureTensorLIntertwine\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryActionAtRealPlace\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNeZeroOfIsVacO\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HasInfExpMulOfIsOpenKer\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousOnAtTau\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.BitVec\nimport Development.AbelianVarietyTheory.Definitions.SpanningFamilies.DatEqZero\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

namespace GlobalTheory.RealFockVac

theorem om_stdF_subst : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (V W : HSp D) (χV χW : (AE D)ˣ →* Circle)
    (om : GA D V × GA D W →* Module.End ℂ (WO V W → ℂ)) (ΛV : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E))
    (ΛW : Submodule (𝓞 D.host.E) (Fin W.rank → D.host.E)) (sW : D.what₂.Tau → Matrix (Fin W.rank) (Fin W.rank) ℂ)
    (f₀ : WO V W → ℂ), VacPair ψ θ V W χV χW om ΛV ΛW sW f₀ →
    ∀ (p : ℕ) (BW : D.what₂.Tau → Matrix (Fin W.rank) (Fin W.rank) ℂ), (∀ τ, IsONBasis (gramAt D W τ) (sW τ) (BW τ) p) →
    ∀ a ∈ GinfC V, ∀ u : GlobalTheory.ExportSeries.GLR D V.rank,
    (∀ τ, ((u τ : GL (Fin V.rank) ℂ) : Matrix (Fin V.rank) (Fin V.rank) ℂ) = Formalism.IndefR.Datum.compAt θ τ (Formalism.L2.Theta.mt V a)) →
    ∀ f : WO V W → ℂ, IsThetaFunO ψ V W f → (∀ τ, IsFockVacAt (heisO ψ V W) θ τ (cplxO 1 (sW τ)) f) →
    ∀ P : MvPolynomial (FVar D W.rank V.rank) ℂ,
      om (a, 1) (stdF ψ θ V W sW BW f P) =
        stdF ψ θ V W sW BW (om (a, 1) f) (GlobalTheory.ExportSeries.fockSubst (fun _ => p) u P) := by
  intro D ψ θ V W χV χW om ΛV ΛW sW f₀ hP p BW hBW a ha u hu f hf _ P
  obtain ⟨hPr, -, -, -, -, -, -, hT, -⟩ := hP
  have hom := hPr.weil
  have hθ : IsInfFam θ := hPr.inf
  have one : ∀ τ, compAt θ τ (Formalism.L2.Theta.mt W 1) = 1 := fun τ => GlobalTheory.PointAtPlaceHom.infMat_one _ _
  have hS : ∀ τ, IsCartanInv (gramAt D V τ) 1 := GlobalTheory.SmoothVac.isCartanInv_one V hPr.std
  have hG : ∀ τ, gramAt D V τ = 1 := fun τ => by
    rw [gramAt, hPr.std, Matrix.map_one _ (map_zero _) (map_one _)]
  have hun : ∀ τ, ((u τ : GL (Fin V.rank) ℂ) : Matrix (Fin V.rank) (Fin V.rank) ℂ) ∈
      Matrix.unitaryGroup (Fin V.rank) ℂ := fun τ => by
    rw [hu τ]
    have h1 : (compAt θ τ (Formalism.L2.Theta.mt V a))ᴴ * gramAt D V τ * compAt θ τ (Formalism.L2.Theta.mt V a) = gramAt D V τ :=
      GlobalTheory.FockCompare.RealAction.infMat_mem_UH hθ V a τ
    rw [hG, Matrix.mul_one] at h1
    exact Matrix.mem_unitaryGroup_iff'.2 h1
  have ht : ∀ τ, sW τ * BW τ = BW τ * diagonal fun b : Fin W.rank =>
      if decide (b.val < (fun _ => p) τ) = true then (1 : ℂ) else -1 := fun τ => by
    obtain ⟨ε, hε, -, h2⟩ := hBW τ
    have e : (fun b => (ε b : ℂ)) = fun b : Fin W.rank => if decide (b.val < p) = true then (1 : ℂ) else -1 :=
      funext fun b => by
        rcases hε b with h | h
        · simp [h.1, h.2]
        · simp [h.1, not_lt.2 h.2]
    rw [e] at h2
    exact h2
  have hBT : (fun τ => compAt θ τ (Formalism.L2.Theta.mt W 1) * BW τ) = BW := funext fun τ => by rw [one, Matrix.one_mul]
  show om (a, 1) (pureTensorO ψ θ V W (fun _ => 1) sW (fun _ => 1) BW f P) =
    pureTensorO ψ θ V W (fun _ => 1) sW (fun _ => 1) BW (om (a, 1) f) (GlobalTheory.ExportSeries.fockSubst (fun _ => p) u P)
  rw [(GlobalTheory.OrientedHeis.om_pureTensorO D ψ θ V W χV χW om hom hθ (fun _ => 1) (fun _ => 1) (fun _ => 1)
    (fun τ => (1 : Matrix (Fin V.rank) (Fin V.rank) ℂ) * ((u τ : GL (Fin V.rank) ℂ) : Matrix _ _ ℂ)) sW sW BW
    (fun τ => compAt θ τ (Formalism.L2.Theta.mt W 1) * BW τ) a 1
    (fun τ => by rw [Matrix.one_mul, Matrix.mul_one]) (fun τ => by rw [one, Matrix.one_mul, Matrix.mul_one])
    (fun τ => by rw [hu τ, Matrix.one_mul, Matrix.mul_one]) (fun τ => rfl) f hf P).2, hBT]
  exact GlobalTheory.RealFockAction.pureTensorO_subst hom.std hθ hS hT ht (fun _ => 1) u hun (hom.om_pres _ _ hf) P

end GlobalTheory.RealFockVac
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilRepRealPointFockVectorSubstitution =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealRationalPointActsHarmonicSubstitution =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealRationalPointActsHarmonicSubstitution", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsNatCastSmulCoeffIsIntegral\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TranslateMemCoefLatFn\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionHomogeneousCoeffMemAfterScaling\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IMemSiegel\npublic import Development.AbelianVarietyTheory.Definitions.SpanningFamilies.IsSystem\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockSubstitutionPreservesHarmonicLetterPolynomiaStatement\npublic import Development.AbelianVarietyTheory.Definitions.ExistenceOfLattices.CoeSelfDualLatticeInFrameCoordinatesEq\npublic import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealComponentEqConjInverseRationalMatrix\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealPointActsOnThetaFockVacuaByDetPower\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SpanFiniteTranslatesVacuumThetaFockVacua\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WeilRepRealPointFockVectorSubstitution\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsHomogeneousOfRowDeg\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.OmPureTensorOOfFinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries

noncomputable section

namespace GlobalTheory.LevelSeries.ArchAct

theorem det_pow_mem {n : ℕ} (O : Subring ℂ) (z : ℂ) (g : GL (Fin n) ℂ)
    (h1 : ∀ x y, z * (g : Matrix (Fin n) (Fin n) ℂ) x y ∈ O)
    (h2 : ∀ x y, z * ((g⁻¹ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) x y ∈ O) (k : ℤ) :
    z ^ (n * k.natAbs) * (g : Matrix (Fin n) (Fin n) ℂ).det ^ k ∈ O := by
  have hdet : ∀ A : Matrix (Fin n) (Fin n) ℂ, (∀ x y, z * A x y ∈ O) → z ^ n * A.det ∈ O := by
    intro A hA
    have e : z ^ n * A.det = (z • A).det := by rw [Matrix.det_smul, Fintype.card_fin]
    rw [e, Matrix.det_apply]
    refine Subring.sum_mem _ fun σ _ => ?_
    rw [Units.smul_def]
    refine zsmul_mem (Subring.prod_mem _ fun i _ => ?_) _
    simpa [Matrix.smul_apply] using hA (σ i) i
  have hinv : ((g : Matrix (Fin n) (Fin n) ℂ).det)⁻¹ = ((g⁻¹ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ).det := by
    rw [eq_comm]
    apply eq_inv_of_mul_eq_one_left
    rw [← Matrix.det_mul, Units.inv_mul, Matrix.det_one]
  obtain ⟨k, rfl | rfl⟩ := k.eq_nat_or_neg
  · rw [Int.natAbs_natCast, zpow_natCast, pow_mul, ← mul_pow]
    exact pow_mem (hdet _ h1) _
  · rw [Int.natAbs_neg, Int.natAbs_natCast, _root_.zpow_neg, zpow_natCast, ← inv_pow, hinv, pow_mul, ← mul_pow]
    exact pow_mem (hdet _ h2) _

theorem real_act_harm : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (V W : HSp D) (χV χW : (AE D)ˣ →* Circle) (om : GA D V × GA D W →* Module.End ℂ (WO V W → ℂ)) (ΛV : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E)) (ΛW : Submodule (𝓞 D.host.E) (Fin W.rank → D.host.E)) (sW : D.what₂.Tau → Matrix (Fin W.rank) (Fin W.rank) ℂ) (f₀ : WO V W → ℂ), VacPair ψ θ V W χV χW om ΛV ΛW sW f₀ → ∀ (H : Geo.Tor.Host D.host.E) (Dw : Datum H) (BW : D.what₂.Tau → Matrix (Fin W.rank) (Fin W.rank) ℂ) (lt : LtN Dw V.rank ≃ FVar D W.rank V.rank) (wa : (D.host.E →+* ℂ) × ℕ → ℕ), W.rank = Dw.p + Dw.q → (∀ τ : D.host.E →+* ℂ, InPsi H τ ↔ ∃ ρ, τ = tauE D ρ) → (∀ τ, IsONBasis (gramAt D W τ) (sW τ) (BW τ) Dw.p) → IsLetters Dw lt → ∀ l c : ℕ, ∃ c' : ℕ, ∀ (γ a : GA D V) (γ' : GL (Fin V.rank) D.host.E) (O : Subring ℂ), γ ∈ GQ V → GlobalTheory.Member.IsRat V γ γ' → a ∈ GinfC V → γ * a ∈ GfC V → (∀ (τ : D.host.E →+* ℂ) x y, (l : ℂ) ^ c * τ (γ'.val x y) ∈ O ∧ (l : ℂ) ^ c * τ (γ'⁻¹.val x y) ∈ O) → ∀ Q ∈ HHa Dw.mult V.rank ℂ ComplexEmbedding.conjugate (InPsi H) (fun τ i => wa (τ, i)), (∀ mo, Q.coeff mo ∈ O) → ∃ Q' ∈ HHa Dw.mult V.rank ℂ ComplexEmbedding.conjugate (InPsi H) (fun τ i => wa (τ, i)), (∀ mo, Q'.coeff mo ∈ O) ∧ ∀ (M : ℕ) (e : AE D) (O₁ : Subring ℂ), M ≠ 0 → ∀ f ∈ trSp ψ V W ΛV ΛW f₀ e M O₁, ((l : ℂ) ^ c') • om (a, 1) (stdF ψ θ V W sW BW f (MvPolynomial.rename lt Q)) = stdF ψ θ V W sW BW f (MvPolynomial.rename lt Q') := by
  intro D ψ θ V W χV χW om ΛV ΛW sW f₀ hP H Dw BW lt wa hrk hΨ hON hlt l c
  obtain ⟨k, hk⟩ := _root_.GlobalTheory.RealVacPow.vacuum_det_power D ψ θ V W χV χW om ΛV ΛW sW f₀ hP Dw.p BW hON
  obtain ⟨d, hd⟩ : ∃ d : ℕ, d = ∑ ρ, ∑ j : Fin (Dw.mult ρ), wa (ρ, j) := ⟨_, rfl⟩
  refine ⟨c * d + ∑ τ, c * (V.rank * (k τ).natAbs), ?_⟩
  intro γ a γ' O hγ hrat ha hγa hden Q hQ hQO
  have hθ : IsInfFam θ := hP.1.inf
  choose σ hσ using _root_.GlobalTheory.ArchRatComp.compAt_mt_eq_map_inv D θ hθ V γ a γ' hγ hrat ha hγa
  let u : GlobalTheory.ExportSeries.GLR D V.rank := fun τ => Matrix.GeneralLinearGroup.map (σ τ) γ'⁻¹
  have hu : ∀ τ, ((u τ : GL (Fin V.rank) ℂ) : Matrix (Fin V.rank) (Fin V.rank) ℂ) =
      Formalism.IndefR.Datum.compAt θ τ (Formalism.L2.Theta.mt V a) := fun τ => by
    rw [hσ τ]; rfl
  have hui : ∀ τ, (((u τ)⁻¹ : GL (Fin V.rank) ℂ) : Matrix (Fin V.rank) (Fin V.rank) ℂ) =
      (γ' : Matrix (Fin V.rank) (Fin V.rank) D.host.E).map (σ τ) := fun τ => by
    simp only [u, map_inv, inv_inv]; rfl
  have hden' : ∀ τ x y, (l : ℂ) ^ c * (((u τ)⁻¹ : GL (Fin V.rank) ℂ) : Matrix (Fin V.rank) (Fin V.rank) ℂ) x y ∈ O ∧
      (l : ℂ) ^ c * ((u τ : GL (Fin V.rank) ℂ) : Matrix (Fin V.rank) (Fin V.rank) ℂ) x y ∈ O := fun τ x y => by
    rw [hui τ, hu τ, hσ τ]
    exact ⟨(hden (σ τ) x y).1, (hden (σ τ) x y).2⟩
  have hQ2 := _root_.GlobalTheory.FockSubstHarm.rename_fockSubst_mem_HHa D H Dw W.rank V.rank lt hrk hΨ hlt u wa Q hQ
  refine ⟨((l : ℂ) ^ (c * d + ∑ τ, c * (V.rank * (k τ).natAbs)) *
      ∏ τ, (Formalism.IndefR.Datum.compAt θ τ (Formalism.L2.Theta.mt V a)).det ^ k τ) •
      MvPolynomial.rename lt.symm (GlobalTheory.ExportSeries.fockSubst (m := W.rank) (fun _ => Dw.p) u (MvPolynomial.rename lt Q)),
    GlobalTheory.smul_mem_HHa _ hQ2, ?_, ?_⟩
  · intro mo
    obtain ⟨mo', rfl⟩ := Finsupp.mapDomain_surjective lt.symm.surjective mo
    rw [MvPolynomial.coeff_smul, smul_eq_mul, MvPolynomial.coeff_rename_mapDomain _ lt.symm.injective]
    have hhom : (MvPolynomial.rename lt Q).IsHomogeneous d := by
      rw [hd]
      exact (GlobalTheory.PtId.isHomogeneous_of_rowDeg Dw.mult V.rank ℂ (fun τ i => wa (τ, i)) hQ.2.2).rename_isHomogeneous
    have hcO : ∀ mo, (MvPolynomial.rename lt Q).coeff mo ∈ O := fun mo => by
      obtain ⟨mo, rfl⟩ := Finsupp.mapDomain_surjective lt.surjective mo
      rw [MvPolynomial.coeff_rename_mapDomain _ lt.injective]
      exact hQO mo
    have h1 := _root_.GlobalTheory.FockCoefInt.fockSubst_coeff_mem D W.rank V.rank (fun _ => Dw.p) u O ((l : ℂ) ^ c) hden' d _ hhom hcO mo'
    have h2 : (l : ℂ) ^ (∑ τ, c * (V.rank * (k τ).natAbs)) *
        ∏ τ, (Formalism.IndefR.Datum.compAt θ τ (Formalism.L2.Theta.mt V a)).det ^ k τ ∈ O := by
      rw [← Finset.prod_pow_eq_pow_sum, ← Finset.prod_mul_distrib]
      refine Subring.prod_mem _ fun τ _ => ?_
      rw [← hu τ, pow_mul]
      exact det_pow_mem O _ (u τ) (fun x y => (hden' τ x y).2) (fun x y => (hden' τ x y).1) (k τ)
    convert mul_mem h2 h1 using 1
    rw [pow_add, pow_mul]
    ring
  · intro M e O₁ hM f hf
    obtain ⟨hft, hff⟩ := _root_.GlobalTheory.LevelSeries.trSp_theta_fock D ψ θ V W χV χW om ΛV ΛW sW f₀ hP e M O₁ hM f hf
    rw [_root_.GlobalTheory.RealFockVac.om_stdF_subst D ψ θ V W χV χW om ΛV ΛW sW f₀ hP Dw.p BW hON a ha u hu f hft hff, hk a ha f hft hff, stdF,
      GlobalTheory.FiniteFock.pureTensorO_smul, map_smul, map_smul, MvPolynomial.rename_rename, Equiv.self_comp_symm,
      MvPolynomial.rename_id_apply, smul_smul]

end GlobalTheory.LevelSeries.ArchAct
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealRationalPointActsHarmonicSubstitution =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealRationalPointActsHarmonicSubstitutionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealRationalPointActsHarmonicSubstitutionStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValRingLocRing\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsInertTop\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealRationalPointActsHarmonicSubstitution\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix Complex IsDedekindDomain
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.FD GlobalTheory GlobalTheory.ThFr GlobalTheory.Dict GlobalTheory.AdTh GlobalTheory.ClsVal
open ReciprocityTheory.ChartRestriction.G.Geo.Tor hiding Level Host
open GlobalTheory.SW hiding Level IsSB
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open GlobalTheory.SingleDatum GlobalTheory.CoverRead
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

open GlobalTheory.LevelSeries


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RealRationalPointActsHarmonicSubstitutionStatement =====
