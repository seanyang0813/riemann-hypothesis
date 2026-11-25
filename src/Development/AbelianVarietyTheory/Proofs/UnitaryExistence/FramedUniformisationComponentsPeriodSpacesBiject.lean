module

public import Formalism.LocalToGlobal.ProjectiveLattices.PetersonNormSubspace
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.CardCompLePeriodSpaces
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExponentialDerivativeAtZeroIsTangent
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.RelabelEmbeddingsGoodBijectiveConjCompat
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.TypeFnPeriodExistModuliNonempty
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsLocalRingTrivSqZeroExt
public import Formalism.LocalToGlobal.ProjectiveLattices.ThetaFramePf
public import Formalism.LocalToGlobal.ProjectiveLattices.GenSpecV
public import Formalism.LocalToGlobal.ProjectiveLattices.GenFrPfV
public import Formalism.LocalToGlobal.ProjectiveLattices.GenFrPfB
public import Formalism.LocalToGlobal.ProjectiveLattices.GenSpecLocFrM
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.BCRing
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeC
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
import Development.AbelianVarietyTheory.Definitions.ExistenceOfLattices.PermutesRefl

@[expose] public section

open AlgebraicGeometry CategoryTheory Limits NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj GlobalTheory.CompRat

namespace GlobalTheory.CompBij

open GlobalTheory.CompInj




theorem ik_bijective : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : Level H) (Xo : Moduli Dw l) (c : Coeff l) (σ : c.F →+* ℂ) (r : ℕ) (U : Unf Xo c σ r), 1 ≤ r → GoodEmb c σ → IsUnf U → ∀ (g : ℕ) (e : Fin g ≃ Σ τ : E →+* ℂ, Fin (Dw.mult τ)) (F : FamilyUnif Xo (σ.comp (IntermediateField.inclusion c.le).toRingHom) (fun j => relab c σ (e j).1)) (ik : U.Comp → Fin F.n) (φ : ∀ k, (F.Di (ik k)).La ≃ₗ[𝓞 E] (U.X k).Λ), (∀ k a b, (((F.Di (ik k)).EF a b : ℤ) : ℚ) = Algebra.trace ℚ E (-(U.X k).ξ0 * herm (U.X k).Gm (φ k a : Fin r → E) (φ k b))) → (∀ k (x : (U.X k).dom), ∃ Pm : (F.Di (ik k)).La →+ (Fin g → ℂ), (∀ a j, Pm a j = perFr (U.X k) x.1 (φ k a : Fin r → E) (relab c σ (e j).1) (e j).2) ∧ IsPeriod (F.Di (ik k)) (fun j => relab c σ (e j).1) Pm ∧ (U.un k x).x = F.u (ik k) Pm ∧ ∀ τ (i : Fin (Dw.mult τ)), IsDerivAt0 (fun z => (F.ex (ik k) Pm z).left) (Pi.single (e.symm ⟨τ, i⟩) 1) ((U.un k x).u τ i)) → Function.Bijective ik := by
  intro E _ _ _ H D l Xo c σ r U h1 hσ hU g e F ik φ hEF hP
  obtain ⟨hr, hX, hcov, hfib, -⟩ := hU
  refine ⟨fun k k' hk => ?_, fun i => ?_⟩
  · obtain ⟨x, hx⟩ := dom_nonempty (U.X k)
    obtain ⟨x₀, hx₀⟩ := dom_nonempty (U.X k')
    obtain ⟨P, -, hper, hpt, hder⟩ := hP k ⟨x, hx⟩
    obtain ⟨P₀, hP₀, hper₀, -⟩ := hP k' ⟨x₀, hx₀⟩
    have hP' := fun y => (hP k' y).imp fun _ h => (⟨h.1, h.2.2.1, h.2.2.2⟩ : _ ∧ _ ∧ _)
    have hEF' := hEF k'
    generalize φ k' = ψ at hP₀ hP' hEF'
    clear hP hEF φ
    generalize ik k' = n at *
    subst hk
    obtain ⟨x', hx', hPx⟩ := exists_frame (c := c) (σ := σ) hσ h1 hr e (U.X k') (hX k').1 (hX k').2 _ (F.sig _).1
      (F.sig _).2 ψ hEF' x₀ hx₀ P₀ hP₀ hper₀ P hper
    obtain ⟨P', hP', hpt', hder'⟩ := hP' ⟨x', hx'⟩
    obtain rfl : P = P' := by
      ext a j
      exact (hPx a j).trans (hP' a j).symm
    have hbor := frBor_of_eq (U.un k ⟨x, hx⟩) (U.un k' ⟨x', hx'⟩) (hpt'.trans hpt.symm) fun τ i =>
      ((GlobalTheory.isDerivAt0_ex_isTanAt E H D l Xo _ g _ F _ P hper).2.1 _).unique (hder' τ i) (hder τ i)
    obtain ⟨γ, -, b, -, h⟩ := (hfib k k' _ _).1 hbor
    exact (congrArg Sigma.fst h).symm
  · have hty : IsTypeFn H (F.Di i).p (F.Di i).q (fun j => relab c σ (e j).1) := by
      rw [(F.sig i).1, (F.sig i).2]
      exact (GlobalTheory.Relab.relab_good E H l c σ hσ).2.2.2 D g e
    obtain ⟨-, P, hPi⟩ := GlobalTheory.PeriodExists.period_of_isTypeFn H (F.Di i) g _ hty
    let _ : Algebra c.F ℂ := σ.toAlgebra
    obtain ⟨y, hy⟩ := GlobalTheory.FlagTan.exists_frPt (Xo := Xo) (c := c) (S := ℂ)
      (F.u i P) ((F.over_σ i P hPi).trans rfl)
    obtain ⟨k, x, t, hb⟩ := hcov y
    obtain ⟨Pm, -, hPm, hx, -⟩ := hP k x
    exact ⟨k, F.disj _ _ Pm P hPm hPi (hx.symm.trans (hb.1.symm.trans hy))⟩

end GlobalTheory.CompBij
