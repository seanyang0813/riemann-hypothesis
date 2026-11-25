module

public import Development.AbelianVarietyTheory.Definitions.Divisors.PointHeight
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LinSubstLinSubst
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import ReciprocityTheory.SemistableReduction.GaussAbsMulOfMonomialOrder
import ReciprocityTheory.SemistableReduction.LagrangeIdealLiftsFact
import ReciprocityTheory.SemistableReduction.TorusL2CauchyInequality
import Development.AbelianVarietyTheory.Definitions.Divisors.JoinCastSucc
import Development.AbelianVarietyTheory.Definitions.Divisors.MemSubPtsCutBaseChangeIff
import Development.AbelianVarietyTheory.Definitions.Divisors.WellChosen

@[expose] public section

noncomputable section

open NumberField MvPolynomial ReciprocityTheory.MultiplicativeHeights GlobalTheory GlobalTheory.ChowHt GlobalTheory.Adelic GlobalTheory.HSCore GlobalTheory.HSChoice

namespace GlobalTheory.ZeroCycleHt

theorem linSubst_mul {R : Type} [CommRing R] {B N n : ℕ} (M : Matrix (Fin N) (Fin n) R)
    (f g : MvPolynomial (Fin B × Fin N) R) : linSubst M (f * g) = linSubst M f * linSubst M g := by
  simp [linSubst]

theorem formHeight_mul {F : Type} [Field F] [NumberField F] {B N n : ℕ} (δ δ' : ℕ)
    {w : Matrix (Fin N) (Fin n) F} {P : Matrix (Fin n) (Fin N) F} (hP : w * P = 1)
    {A : (F →+* ℂ) → Matrix (Fin N) (Fin N) ℂ} (hA : ∀ σ, (A σ).det ≠ 0) {a a' : Fin B → ℕ}
    {f g : MvPolynomial (Fin B × Fin N) F} (hf : f ≠ 0) (hg : g ≠ 0)
    (ha : IsMultiHomogeneous a f) (ha' : IsMultiHomogeneous a' g) :
    formHeight (δ + δ') w A (f * g) = formHeight δ w A f + formHeight δ' w A g := by
  have hlf := GlobalTheory.HeightUnique.linSubst_ne_zero hP hf
  have hlg := GlobalTheory.HeightUnique.linSubst_ne_zero hP hg
  have hfin : ∑ᶠ v : FinitePlace F, Real.log (gaussAbs v (linSubst w (f * g))) =
      ∑ᶠ v : FinitePlace F, Real.log (gaussAbs v (linSubst w f)) +
        ∑ᶠ v : FinitePlace F, Real.log (gaussAbs v (linSubst w g)) := by
    rw [← finsum_add_distrib (gauss_abs_log_support_finite _ hlf) (gauss_abs_log_support_finite _ hlg)]
    refine finsum_congr fun v => ?_
    rw [linSubst_mul, gauss_abs_mul v _ _ hlf hlg,
      Real.log_mul (gauss_abs_pos_of_ne_zero v _ hlf).ne' (gauss_abs_pos_of_ne_zero v _ hlg).ne']
  have hne : ∀ (σ : F →+* ℂ) {h : MvPolynomial (Fin B × Fin N) F}, h ≠ 0 →
      linSubst (A σ) (MvPolynomial.map σ h) ≠ 0 := fun σ h hh =>
    GlobalTheory.HeightUnique.linSubst_ne_zero ((A σ).mul_nonsing_inv (hA σ).isUnit) fun h0 =>
      hh (MvPolynomial.map_injective σ σ.injective (by rw [h0, map_zero]))
  have hinf : ∀ σ : F →+* ℂ, blockSphereMean B N (linSubst (A σ) (MvPolynomial.map σ (f * g))) =
      blockSphereMean B N (linSubst (A σ) (MvPolynomial.map σ f)) +
        blockSphereMean B N (linSubst (A σ) (MvPolynomial.map σ g)) := by
    intro σ
    rw [map_mul, linSubst_mul]
    exact sphere_mean_mul_multihomogeneous Closed.sphereLogIntegrable B N a a' _ _ (hne σ hf) (hne σ hg)
      (GlobalTheory.HeightUnique.linSubst_homog _ (isMultiHomogeneous_map_ring a f ha σ))
      (GlobalTheory.HeightUnique.linSubst_homog _ (isMultiHomogeneous_map_ring a' g ha' σ))
  unfold formHeight
  rw [hfin]
  simp only [hinf, Finset.sum_add_distrib, Finset.sum_const, nsmul_eq_mul, Nat.cast_add]
  ring

theorem formHeight_one {F : Type} [Field F] [NumberField F] {B N n : ℕ}
    (w : Matrix (Fin N) (Fin n) F) (A : (F →+* ℂ) → Matrix (Fin N) (Fin N) ℂ) :
    formHeight 0 w A (1 : MvPolynomial (Fin B × Fin N) F) = 0 := by
  have h1 : ∀ v : FinitePlace F, gaussAbs v (1 : MvPolynomial (Fin B × Fin n) F) = 1 := fun v => by
    simpa using GlobalTheory.HeightUnique.gaussAbs_C (σ := Fin B × Fin n) v (1 : F)
  unfold formHeight
  simp [linSubst, h1, blockSphereMean]

end GlobalTheory.ZeroCycleHt
