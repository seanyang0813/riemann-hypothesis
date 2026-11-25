module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsTypeGroupBlockLift
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsEquivOfMapEq
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.Mono0OfLpDimEqOne
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CharPolLpCharOfUnr
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.FixedNeBotOfEquiv
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
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.GoodIdempotentFixesOfOnlySeriesOfLabelActs
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsRecLawsSuppUnitSurj
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.DepthZeroInertia

@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT NumberField IsDedekindDomain Polynomial GlobalTheory.HeightCounting GlobalTheory.RowTie GlobalTheory.SplitRead GlobalTheory.NPin GlobalTheory.PendOf

namespace GlobalTheory.DepthZeroAssembly

open GlobalTheory.WeilDeligne (WD Weil ineIncl TeichmullerInertiaLabelCondition Wild Wild_le_Ine)
open GlobalTheory.SplitRead.BlockParam (charPol_lpChar_of_unr twistIrr)

section Local

variable {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω]
  {B : ValuationSubring Ω} {w : HeightOneSpectrum (𝓞 E)} {h : IsPlaceOver B w} {g : ℕ} [Fact g.Prime]

theorem lab_lpChar_of_unr (τ : AlgebraicClosure (ZMod g) →* ℂ) (γ : G E Ω) (x χ : WD h) (hx : x.unr)
    (hd : χ.lpDim = 1) (u : ZMod g) (hχ : WD.lab τ γ χ = X - C u) :
    WD.lab τ γ (x.lpChar χ) = (X - C u) ^ x.lpDim := by
  have H : TeichmullerInertiaLabelCondition B w τ γ := by
    by_contra H
    rw [WD.lab_of_not H] at hχ
    have := congrArg natDegree hχ
    rw [natDegree_one, natDegree_X_sub_C] at this
    exact zero_ne_one this
  have htχ : WD.tame χ := WD.tame_of_natDegree_lab (by rw [hχ, natDegree_X_sub_C, hd])
  have hc1 : ∀ σ : Ine (F := E) B, (σ : G E Ω) ∈ Wild E B → χ.charPol (ineIncl h σ) = X - C 1 := by
    intro σ hσ
    have := (WD.tame_iff_inePol χ).1 htχ σ hσ
    rw [WD.inePol_of_mem_Ine _ σ.2, hd, pow_one] at this
    rw [C_1]; exact this
  have hdim : (x.lpChar χ).lpDim = x.lpDim := by
    obtain ⟨σ, hσ⟩ : ∃ σ : Ine (F := E) B, (σ : G E Ω) ∈ Wild E B := ⟨1, (Wild E B).one_mem⟩
    have h1 := charPol_lpChar_of_unr x χ hx σ 1 (hc1 σ hσ)
    rw [← WD.charPol_natDegree (x.lpChar χ) (ineIncl h σ), h1, natDegree_pow, natDegree_X_sub_C, mul_one]
  have ht : WD.tame (x.lpChar χ) := by
    rw [WD.tame_iff_inePol]
    intro σ hσ
    rw [WD.inePol_of_mem_Ine _ (Wild_le_Ine hσ), hdim,
      charPol_lpChar_of_unr x χ hx ⟨σ, Wild_le_Ine hσ⟩ 1 (hc1 ⟨σ, Wild_le_Ine hσ⟩ hσ), C_1]
  set p := χ.charPol (ineIncl h ⟨γ, H.2.1⟩) with hp
  have hpm : p.Monic := WD.charPol_monic _ _
  have hpd : p.natDegree = 1 := by rw [hp, WD.charPol_natDegree, hd]
  have hpe : p = X - C (-p.coeff 0) := by rw [map_neg, sub_neg_eq_add]; exact hpm.eq_X_add_C hpd
  have hχ' := (WD.lab_eq_iff_of_tame H htχ).1 hχ
  have hr1 := WD.rootsBar_X_sub_C_pow u 1
  rw [pow_one, one_nsmul] at hr1
  rw [WD.inePol_of_mem_Ine _ H.2.1, ← hp, hpe, roots_X_sub_C, hr1,
    Multiset.map_singleton, Multiset.singleton_inj] at hχ'
  rw [WD.lab_eq_iff_of_tame H ht, WD.inePol_of_mem_Ine _ H.2.1,
    charPol_lpChar_of_unr x χ hx ⟨γ, H.2.1⟩ (-p.coeff 0) (hpe ▸ rfl), roots_pow, roots_X_sub_C,
    WD.rootsBar_X_sub_C_pow, Multiset.map_nsmul, Multiset.map_singleton, hχ'.2]
  exact ⟨(monic_X_sub_C u).pow _, rfl⟩

end Local

end GlobalTheory.DepthZeroAssembly

namespace GlobalTheory.DepthZeroAssembly

open GlobalTheory.WeilDeligne (WD)
open GlobalTheory.SplitRead.BlockParam (twistIrr)

end GlobalTheory.DepthZeroAssembly
