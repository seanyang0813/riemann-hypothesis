module

public import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HasFiniteLengthOfIsIrreducible
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivMultiProdOne
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsUnramifiedCharOfCuspidalSpherical
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.LanglandsMultisegments
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.StandardCosocleGL
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsClassificationDetCharacterStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSphericalFactorOfSphericalSubquotientStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientUnramPrinSeriesOfHasSupport
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NonemptyEquivOfSameSatakeParametersStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.EmbedsLevelZeroDepthZero
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SphericalSegmentRepLengthOneUnramified

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SphericalSegmentRepLengthOneUnramified =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SphericalSegmentRepLengthOneUnramified", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.LanglandsMultisegments\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.StandardCosocleGL\npublic import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.HasFiniteLengthOfIsIrreducible\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.EmbedsLevelZeroDepthZero\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLanglandsClassificationDetCharacterStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSphericalFactorOfSphericalSubquotientStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientUnramPrinSeriesOfHasSupport\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivMultiProdOne\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsUnramifiedCharOfCuspidalSpherical\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NonemptyEquivOfSameSatakeParametersStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.SphSeg

theorem isSubquotient_prodIrr_prinSeries {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k]
    [IsNonarchimedeanLocalField k] {h : ℕ} (x : Fin h → IrrGL (k := k)) (hd : ∑ a, (x a).1 = h)
    (μ : Fin h → kˣ →* ℂˣ) (hμ : ∀ a, IsSmoothChar (μ a)) (hx : ∀ a, x a = IrrGL.ofChar (μ a) (hμ a)) :
    IsSubquotient (prodIrr x hd) (prinSeries μ) := by
  obtain rfl : x = fun a => IrrGL.ofChar (μ a) (hμ a) := funext hx
  let φ := multiProdEquiv (stdBlocks (fun a => (IrrGL.ofChar (μ a) (hμ a)).1) hd) fun a =>
    (LocGL.equivRep (IrrRep.det (Fin 1) (μ a) (hμ a))).symm
  exact (IsSubquotient.of_injective φ.toIntertwiningMap φ.toLinearEquiv.injective).trans
    (PermPrin.isSubquotient_multiProd_prinSeries _ μ)

end GlobalTheory.SphSeg

namespace GlobalTheory.SphSeg

theorem len_eq_one_and_isUnramChar : LanglandsMultisegments → StandardCosocleGL → ZelevinskyPolynomialRing →
    GeometricLemma → BernsteinZelevinskyFiniteness → ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k]
    [IsNonarchimedeanLocalField k] [CharZero k] (Δ : Segment k) (y : IrrGL (k := k)), IsLSeg Δ y.rep → IsSpherical y.rep →
    Δ.len = 1 ∧ Δ.first.IsUnramChar := by
  intro hLM hSC hZP hGL hBZ k _ _ _ _ _ Δ y hL hS
  obtain ⟨N, c⟩ := y
  obtain ⟨hd, hc⟩ := id hL
  have hsub : IsSubquotient c.rep.ρ (prodIrr Δ.term hd) := hc.isSubquotient
  have hsph := GlobalTheory.T.isSpherical_factor_of_spherical_subquotient k Δ.len N Δ.term hd _ c.rep.ρ hsub hS
  have h0 : Δ.term ⟨0, Δ.len_pos⟩ = Δ.first := by simp [Segment.term]
  have key : ∀ x z : IrrGL (k := k), x = z → IsSpherical x.rep → IsSpherical z.rep := by
    rintro _ _ rfl h; exact h
  have hU : Δ.first.IsUnramChar :=
    _root_.GlobalTheory.LocLanglands.isUnramChar_of_isCusp_of_isSpherical hGL hBZ hZP k Δ.first Δ.isCusp_first (key _ _ h0 (hsph _))
  refine ⟨?_, hU⟩
  obtain ⟨μ, hμ, hfirst⟩ := hU
  have hμs := isSmoothChar_of_isUnram hμ
  have hterm : ∀ a, Δ.term a = IrrGL.ofChar (μ * absPow k ((a : ℕ) : ℂ)) (hμs.mul (isSmoothChar_absPow _)) :=
    fun a => by simp only [Segment.term, IrrGL.nu, hfirst, IrrGL.tw_ofChar]
  have hd1 : Δ.d = 1 := congrArg Sigma.fst hfirst
  have hN : N = Δ.len := by
    have h2 : ∑ a, (Δ.term a).1 = N := hd
    rw [Segment.sum_term_fst, Segment.deg, hd1, mul_one] at h2
    exact h2.symm
  subst hN

  let Γ := Segment.ofChar μ hμs Δ.len Δ.len_pos
  have hterm' : ∀ a, Γ.term a = IrrGL.ofChar (μ * absPow k ((a : ℕ) : ℂ)) (hμs.mul (isSmoothChar_absPow _)) :=
    fun a => by
      show (IrrGL.ofChar μ hμs).nu _ = _
      simp only [IrrGL.nu, IrrGL.tw_ofChar]
  have hd' : ∑ a, (Γ.term a).1 = Δ.len := (Segment.sum_term_fst _).trans (mul_one _)
  have hP := isSubquotient_prodIrr_prinSeries Δ.term hd _ _ hterm
  have hP' := isSubquotient_prodIrr_prinSeries Γ.term hd' _ _ hterm'
  let χ' := μ * absPow k (((Δ.len : ℂ) - 1) / 2)
  have hu' : IsUnram χ' := fun x hx => by
    rw [MonoidHom.mul_apply, hμ x hx, isUnram_absPow k _ x hx, one_mul]
  have hχs : IsSmoothChar χ' := isSmoothChar_of_isUnram hu'
  obtain ⟨f, hf⟩ := embeds_detRep_segment hμs Δ.len_pos hd'

  obtain ⟨ϖ, hϖ⟩ := LocGL.exists_uniformizer k
  have hu : ∀ i : Fin Δ.len, IsUnram (μ * absPow k ((i : ℕ) : ℂ)) := fun i x hx => by
    rw [MonoidHom.mul_apply, hμ x hx, isUnram_absPow k _ x hx, one_mul]
  let α : Fin Δ.len → ℂˣ := fun i => (μ * absPow k ((i : ℕ) : ℂ)) ϖ
  have heq : (fun i => unrChar k (α i)) = fun i : Fin Δ.len => μ * absPow k ((i : ℕ) : ℂ) :=
    funext fun i => (eq_unrChar (hu i) hϖ).symm
  have hA : HasSatake c.rep.ρ α := ⟨c.rep.irr, hS, by rw [heq]; exact hsub.trans hP⟩
  have hB : HasSatake (IrrRep.det (Fin Δ.len) χ' hχs).ρ α :=
    ⟨(IrrRep.det (Fin Δ.len) χ' hχs).irr, isSpherical_detRep hu',
      by rw [heq]; exact (IsSubquotient.of_injective f hf).trans hP'⟩
  obtain ⟨E⟩ := GlobalTheory.T.nonempty_equiv_of_same_satakeParameters hBZ k Δ.len α c.rep (IrrRep.det (Fin Δ.len) χ' hχs) hA hB
  have hL2 := (GlobalTheory.T.isLanglandsClassification_detCharacter hSC k Δ.len χ' hχs).of_equiv E.symm
  have hL1 := hL.isL
  have hm := (hLM k).1 _ _ ⟨Δ.len, c⟩ hL1 hL2
  have := congrArg Multiset.card hm
  simpa using this.symm

end GlobalTheory.SphSeg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SphericalSegmentRepLengthOneUnramified =====
