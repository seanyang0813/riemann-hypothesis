module

public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LevelLiftIsLiftPrincipalLevelDatumRealisation
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IntegralEqVolMulSum
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConstTwistedSumFockVectorsPrincipalDatum
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumRegroupFinerLevelCosetsStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumTermsInvariantPrincipalLevelStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteCosetRepresentativesLevelStatement
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
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PrincipalLevelLeLevelCharactersAgreeStatement
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumPrincipalLevelEqConstMulClassSum

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumPrincipalLevelEqConstMulClassSum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumPrincipalLevelEqConstMulClassSum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LevelLiftIsLiftPrincipalLevelDatumRealisation\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IntegralEqVolMulSum\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumRegroupFinerLevelCosetsStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumTermsInvariantPrincipalLevelStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsConstTwistedSumFockVectorsPrincipalDatum\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteCosetRepresentativesLevelStatement\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PrincipalLevelLeLevelCharactersAgreeStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum IsDedekindDomain NumberField GlobalTheory.ExportSeries
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


namespace GlobalTheory.ClassSumPrinc

theorem ratF_injective {D : D7} (S : HSp D) : Function.Injective (Bridge.ratF S) := by
  refine (injective_iff_map_eq_one _).2 fun γ hγ => ?_
  have h1 : GlobalTheory.ClassRegroup.finPt S (γ : GA D S) = 1 := by
    show (GlobalTheory.ClassRegroup.finEquiv S).symm ((finHom S).rangeRestrict (γ : GA D S)) = 1
    have : (finHom S).rangeRestrict (γ : GA D S) = 1 := hγ
    rw [this, map_one]
  exact Subtype.ext (GlobalTheory.ClassRegroup.eq_one_of_finPt S γ.2 h1)

end GlobalTheory.ClassSumPrinc

namespace GlobalTheory.ClassSumPrinc

theorem symm_finPt {D : D7} (S : HSp D) {k : GA D S} (hk : k ∈ GfC S) :
    (((GlobalTheory.ClassRegroup.finEquiv S).symm (finPt S k) : GfC S) : GA D S) = k := by
  have : (GlobalTheory.ClassRegroup.finEquiv S) ⟨k, hk⟩ = finPt S k := rfl
  rw [← this, MulEquiv.symm_apply_apply]

theorem inner_sum {D : D7} {S T : HSp D} (B : Base S T) (ψ : Twist D Circle) (ω : PairRep S T)
    {Fs : Finset (Bridge.Gf S)} (hF : ∀ u ∈ Fs, u ∈ B.levJ ψ) {κ : ℂ}
    (hκ : ∀ P : Links.PolF D T.rank S.rank,
      ∑ u ∈ Fs.attach, ((B.levLam ψ ⟨u.1, hF u.1 u.2⟩ : ℂˣ) : ℂ) •
        ω ((((GlobalTheory.ClassRegroup.finEquiv S).symm u.1 : GfC S) : GA D S), 1) (B.F.fock ((GlobalTheory.FlatVecSum.princ B).vecFlat ψ) P) =
      κ • B.F.fock (B.vecFlat ψ) P)
    {F : Bridge.Gf S → Links.PolF D T.rank S.rank} (hlaw : B.HasLaw ψ F) {x : GA D S} (hx : x ∈ GfC S) (g : GA D T) :
    ∑ u ∈ Fs, series B.F ω ((GlobalTheory.FlatVecSum.princ B).vecFlat ψ)
        (((GlobalTheory.ClassRegroup.finEquiv S).symm (finPt S x * u) : GfC S) : GA D S) (F (finPt S x * u)) g =
      κ * series B.F ω (B.vecFlat ψ) x (F (finPt S x)) g := by
  have hu : ∀ u (hu : u ∈ Fs), series B.F ω ((GlobalTheory.FlatVecSum.princ B).vecFlat ψ)
      (((GlobalTheory.ClassRegroup.finEquiv S).symm (finPt S x * u) : GfC S) : GA D S) (F (finPt S x * u)) g =
      ω (x, g) (((B.levLam ψ ⟨u, hF u hu⟩ : ℂˣ) : ℂ) •
        ω ((((GlobalTheory.ClassRegroup.finEquiv S).symm u : GfC S) : GA D S), 1)
          (B.F.fock ((GlobalTheory.FlatVecSum.princ B).vecFlat ψ) (F (finPt S x)))) 0 := by
    intro u hu
    have e1 : F (finPt S x * u) = ((B.levLam ψ ⟨u, hF u hu⟩ : ℂˣ) : ℂ) • F (finPt S x) := by
      have := hlaw 1 (finPt S x) ⟨u, hF u hu⟩
      rw [map_one, one_mul, OneMemClass.coe_one, map_one, Module.End.one_apply] at this
      exact this
    have e2 : (((GlobalTheory.ClassRegroup.finEquiv S).symm (finPt S x * u) : GfC S) : GA D S) =
        x * (((GlobalTheory.ClassRegroup.finEquiv S).symm u : GfC S) : GA D S) := by
      have e3 := map_mul (GlobalTheory.ClassRegroup.finEquiv S).symm (finPt S x) u
      rw [e3, Subgroup.coe_mul, symm_finPt S hx]
    rw [series_apply, e2]
    simp only [e1, map_smul]
    have e4 : ω (x * (((GlobalTheory.ClassRegroup.finEquiv S).symm u : GfC S) : GA D S), g) =
        ω (x, g) * ω ((((GlobalTheory.ClassRegroup.finEquiv S).symm u : GfC S) : GA D S), 1) := by
      rw [← map_mul, Prod.mk_mul_mk, mul_one]
    have e5 := LinearMap.congr_fun e4 (B.F.fock ((GlobalTheory.FlatVecSum.princ B).vecFlat ψ) (F (finPt S x)))
    rw [Module.End.mul_apply] at e5
    simp only [e5]
  rw [← Finset.sum_attach Fs, Finset.sum_congr rfl fun u _ => hu u.1 u.2]

  rw [← Finset.sum_apply, ← map_sum, hκ, map_smul, Pi.smul_apply, smul_eq_mul, series_apply]

theorem classSum_princ_eq : ∀ (D : D7) (S T : HSp D) (B : Base S T), B.Good → S.SigOK → ∀ (ψ : Twist D Circle), ψ.Good → B.admitted ψ.Q →
    ∀ (ω : PairRep S T), B.IsWeil ψ.chi ω → ∀ (m : ℕ) (h₀ : Fin m → GA D S), IsClassSystem S ((GlobalTheory.FlatVecSum.princ B).levJ ψ) h₀ →
    ∀ (I : Type) [Fintype I] (h : I → GA D S), IsClassSystem S (B.levJ ψ) h →
    ∃ κ : ℂ, ∀ F ∈ B.formsC ψ, (GlobalTheory.FlatVecSum.princ B).classSum ω ψ h₀ F = κ • B.classSum ω ψ h F := by
  intro D S T B hB hS ψ hψ hQ ω hω m h₀ hC₀ I _ h hC
  obtain ⟨hle, -⟩ := _root_.GlobalTheory.FlatVecSum.princ_levJ_le_levLam_eq B hB ψ hQ
  obtain ⟨Fs, hF, hFu⟩ := GlobalTheory.T.finite_coset_representatives_level B hB ψ hQ
  obtain ⟨κ, hκ⟩ := _root_.GlobalTheory.LevTransl.sum_om_fock_princ B hB hS ψ hψ hQ ω hω Fs hF hFu
  refine ⟨κ, fun F hFm => ?_⟩
  have hinv := _root_.GlobalTheory.PrincClassSum.terms_inv B hB hS ψ hψ hQ ω hω F hFm
  have hlaw := ((B.mem_formsC).1 hFm).2
  funext g
  rw [Base.classSum_apply, Base.classSum_apply, Finset.sum_apply, Pi.smul_apply, Finset.sum_apply]
  have key := _root_.GlobalTheory.ClassRefineBridge.sum_isReps_refine (Bridge.ratF S) (ratF_injective S) hle hF hFu (fun i => finPt S (h₀ i)) hC₀.reps
    (fun i => finPt S (h i)) hC.reps
    (fun y => series B.F ω ((GlobalTheory.FlatVecSum.princ B).vecFlat ψ) (((GlobalTheory.ClassRegroup.finEquiv S).symm y : GfC S) : GA D S) (F y) g)
    (fun γ y => (hinv g).1 γ y) (fun k hk y => (hinv g).2 k hk y)
  simp only [symm_finPt S (hC₀.fin _), inner_sum B ψ ω hF hκ hlaw (hC.fin _)] at key
  simp only [Pi.smul_apply, smul_eq_mul, show (GlobalTheory.FlatVecSum.princ B).F = B.F from rfl]
  rw [key, Finset.mul_sum]
  exact Finset.sum_congr rfl fun i _ => by ring

end GlobalTheory.ClassSumPrinc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumPrincipalLevelEqConstMulClassSum =====
