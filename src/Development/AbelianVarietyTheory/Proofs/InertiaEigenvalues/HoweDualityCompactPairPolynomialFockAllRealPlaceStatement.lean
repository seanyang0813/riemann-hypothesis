module

public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.RaisingLoweringOperators
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsJointHarmonicOfLoweringStableSubmodule
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetGlActionCompactPreservesJointHarmonics
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TranslateMemCoefLatFn
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FisSelfReNonneg
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockPolynomialSubstitutionCommuteTargetGlAction
public import Mathlib.Basic.Complex.Basic
public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import Mathlib.LinearAlgebra.Eigenspace.Triangularizable
public import Mathlib.LinearAlgebra.Eigenspace.Basic
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKHwMap
public import Mathlib.RingTheory.Derivation.Lie
public import Mathlib.Algebra.Module.LinearMap.Star
public import Mathlib.LinearAlgebra.Dimension.Constructions
public import Mathlib.LinearAlgebra.FiniteDimensional.Basic
public import Formalism.LocalRingCardinality.DataHost
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHarmonicHighestWeightMultiplicityOneStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitaryRepresentativesExistVectorStatement
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.DualLattices.FischerSmulRight
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Tactic.Lemma
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.TypeStar
import Mathlib.Algebra.Order.Star.Int
import Std.Tactic.BVDecide.Normalize.BitVec
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.SimpleRing.Principal
import Formalism.LocalRingCardinality.DataTheta
import Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange
import Formalism.LocalToGlobal.Divisibility.CoefMod
import Formalism.LocalToGlobal.IndefiniteForms.IndefSide
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
import Formalism.LocalToGlobal.IndefiniteReal.PartsOrth
import Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull
import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GapAtLeast
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemOfRaisingOperatorsJointHarmonics, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CommonEigenvector, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHighestWeightKTypeMap, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSourceHighestWeightFockStableSubspace, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockInnerProductPosDefCompactMatrixUnitAdjoint, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetMatrixUnitCompactTotalDegreeLe, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetMatrixUnitCompactTotalDegreeLeStatement, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleOfAnisotropicFormHighestWeight, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleOfAnisotropicFormHighestWeightStatement, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitaryBasisGeneralLinearSeries, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HoweDualityCompactPairPolynomialFockAllRealPlace, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HoweDualityCompactPairPolynomialFockAllRealPlaceStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemOfRaisingOperatorsJointHarmonics =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemOfRaisingOperatorsJointHarmonics", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.RaisingLoweringOperators\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TranslateMemCoefLatFn\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FisSelfReNonneg\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsJointHarmonicOfLoweringStableSubmodule\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockPolynomialSubstitutionCommuteTargetGlAction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.DualLattices.FischerSmulRight\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

noncomputable section
namespace GlobalTheory.RaiseGen

open MvPolynomial GlobalTheory.FockIsotypic

theorem exists_ker_add_range {E : Type} [AddCommGroup E] [Module ℂ E] [FiniteDimensional ℂ E] (A : E →ₗ[ℂ] E)
    (h : ∀ x, A (A x) = 0 → A x = 0) (x : E) : ∃ x₀ y, A x₀ = 0 ∧ x = x₀ + A y := by
  have hd : Disjoint (LinearMap.ker A) (LinearMap.range A) := by
    rw [Submodule.disjoint_def]
    rintro _ hz ⟨y, rfl⟩
    exact h y hz
  have ht : LinearMap.ker A ⊔ LinearMap.range A = ⊤ :=
    Submodule.eq_top_of_disjoint _ _ (by have := LinearMap.finrank_range_add_finrank_ker A; omega) hd
  obtain ⟨x₀, h0, _, ⟨y, rfl⟩, e⟩ := Submodule.mem_sup.1 (ht ▸ Submodule.mem_top (x := x))
  exact ⟨x₀, y, h0, e.symm⟩

theorem mem_of_filtration {V W K ι : Type} [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W]
    [FiniteDimensional ℂ W] [Fintype ι] (act : K → V →ₗ[ℂ] V) (ρ : K → W →ₗ[ℂ] W) (R L : ι → V →ₗ[ℂ] V)
    (S : ℕ → Submodule ℂ V) [∀ d, FiniteDimensional ℂ (S d)]
    (hR : ∀ i k x, act k (R i x) = R i (act k x)) (hL : ∀ i k x, act k (L i x) = L i (act k x))
    (hL0 : ∀ i, ∀ x ∈ S 0, L i x = 0) (hLs : ∀ i d, ∀ x ∈ S (d + 1), L i x ∈ S d)
    (hRL : ∀ i d, ∀ x ∈ S d, R i (L i x) ∈ S d)
    (hker : ∀ x, ∑ i, R i (L i x) = 0 → ∀ i, L i x = 0)
    (hAA : ∀ x, (∀ j, L j (∑ i, R i (L i x)) = 0) → ∑ i, R i (L i x) = 0)
    (N : Submodule ℂ (W →ₗ[ℂ] V))
    (hN0 : ∀ φ : W →ₗ[ℂ] V, (∀ k w, φ (ρ k w) = act k (φ w)) → (∀ w i, L i (φ w) = 0) → φ ∈ N)
    (hNR : ∀ ψ ∈ N, ∀ i, R i ∘ₗ ψ ∈ N) (d : ℕ) :
    ∀ φ : W →ₗ[ℂ] V, (∀ k w, φ (ρ k w) = act k (φ w)) → (∀ w, φ w ∈ S d) → φ ∈ N := by
  induction d with
  | zero => exact fun φ hφ hS => hN0 φ hφ fun w i => hL0 i _ (hS w)
  | succ d ih =>
    intro φ hφ hS
    let E : Submodule ℂ (W →ₗ[ℂ] V) :=
      { carrier := {ψ | (∀ k w, ψ (ρ k w) = act k (ψ w)) ∧ ∀ w, ψ w ∈ S (d + 1)}
        add_mem' := fun {a b} ha hb => ⟨fun k w => by simp [ha.1, hb.1], fun w => add_mem (ha.2 w) (hb.2 w)⟩
        zero_mem' := ⟨fun k w => by simp, fun w => zero_mem _⟩
        smul_mem' := fun c a ha => ⟨fun k w => by simp [ha.1], fun w => Submodule.smul_mem _ c (ha.2 w)⟩ }
    haveI : FiniteDimensional ℂ E := by
      refine Submodule.finiteDimensional_of_le
        (S₂ := LinearMap.range (LinearMap.compRight (M := W) ℂ (S (d + 1)).subtype)) ?_
      intro ψ hψ
      exact ⟨ψ.codRestrict _ hψ.2, rfl⟩
    let A : V →ₗ[ℂ] V := ∑ i, R i ∘ₗ L i
    have hA : ∀ x, A x = ∑ i, R i (L i x) := fun x => by simp [A, LinearMap.sum_apply]
    have hE : ∀ ψ ∈ E, LinearMap.compRight (M := W) ℂ A ψ ∈ E := fun ψ hψ =>
      ⟨fun k w => by
        change A (ψ (ρ k w)) = act k (A (ψ w))

        simp only [hA, hψ.1, map_sum, hR, hL], fun w => by
        change A (ψ w) ∈ _
        rw [hA]
        exact Submodule.sum_mem _ fun i _ => hRL i _ _ (hψ.2 w)⟩
    obtain ⟨φ₀, ψ, h0, e⟩ := exists_ker_add_range ((LinearMap.compRight (M := W) ℂ A).restrict hE) (fun ψ h => by
      refine Subtype.ext (LinearMap.ext fun w => ?_)
      have h1 : A (A (ψ.1 w)) = 0 := LinearMap.congr_fun (congrArg Subtype.val h) w
      change A (ψ.1 w) = 0
      rw [hA] at h1
      have h2 := hker _ h1
      rw [hA] at h2 ⊢
      exact hAA _ h2) ⟨φ, hφ, hS⟩
    have e' : φ = φ₀.1 + ∑ i, R i ∘ₗ (L i ∘ₗ ψ.1) := by
      refine LinearMap.ext fun w => ?_
      have h1 : φ w = φ₀.1 w + A (ψ.1 w) := LinearMap.congr_fun (congrArg Subtype.val e) w
      rw [h1, hA]
      simp [LinearMap.sum_apply]
    rw [e']
    refine add_mem (hN0 _ φ₀.2.1 fun w => hker _ ?_) (Submodule.sum_mem _ fun i _ => hNR _ (ih _ ?_ ?_) i)
    · rw [← hA]
      exact LinearMap.congr_fun (congrArg Subtype.val h0) w
    · intro k w
      simp only [LinearMap.comp_apply, ψ.2.1, hL]
    · exact fun w => hLs i d _ (ψ.2.2 w)

section Fischer

variable {σ : Type} [Fintype σ]

theorem fis_X_mul (v : σ) (P Q : MvPolynomial σ ℂ) : fis (X v * P) Q = fis P (pderiv v Q) := by
  classical
  unfold fis
  rw [mul_comm, map_mul, rename_X, ReciprocityTheory.PGsh.fischer_mul_X, pderiv_rename (flat σ).injective]

theorem fis_sum_left {α : Type} (s : Finset α) (f : α → MvPolynomial σ ℂ) (Q : MvPolynomial σ ℂ) :
    fis (∑ i ∈ s, f i) Q = ∑ i ∈ s, fis (f i) Q := by
  unfold fis

  rw [map_sum, ReciprocityTheory.PGsh.fischer_sum_left]

theorem fis_sum_right {α : Type} (s : Finset α) (P : MvPolynomial σ ℂ) (f : α → MvPolynomial σ ℂ) :
    fis P (∑ i ∈ s, f i) = ∑ i ∈ s, fis P (f i) := by
  unfold fis

  rw [map_sum, ReciprocityTheory.PGsh.fischer_sum_right]

theorem fis_zero_left (Q : MvPolynomial σ ℂ) : fis 0 Q = 0 := by
  simpa using fis_smul_left 0 0 Q

theorem fis_zero_right (P : MvPolynomial σ ℂ) : fis P 0 = 0 := by
  simpa using fis_smul_right 0 P 0

theorem fis_neg_right (P Q : MvPolynomial σ ℂ) : fis P (-Q) = -fis P Q := by
  simpa using fis_smul_right (-1) P Q

theorem eq_zero_of_fis_re (P : MvPolynomial σ ℂ) (h : (fis P P).re = 0) : P = 0 := by
  by_contra hP
  exact fis_self_ne_zero hP (Complex.ext h (Complex.conj_eq_iff_im.1 (fis_conj P P)))

variable {ι : Type} [Fintype ι] (R L : ι → MvPolynomial σ ℂ →ₗ[ℂ] MvPolynomial σ ℂ)
  (hadj : ∀ i P Q, fis (R i P) Q = -fis P (L i Q))

include hadj

theorem lower_eq_zero (P : MvPolynomial σ ℂ) (h : ∑ i, R i (L i P) = 0) (i : ι) : L i P = 0 := by
  have h1 : fis (∑ i, R i (L i P)) P = 0 := by rw [h, fis_zero_left]
  rw [fis_sum_left] at h1
  simp only [hadj, Finset.sum_neg_distrib, neg_eq_zero] at h1
  have h2 := congrArg Complex.re h1
  rw [Complex.re_sum, Complex.zero_re,
    Finset.sum_eq_zero_iff_of_nonneg fun i _ => fis_self_re_nonneg _] at h2
  exact eq_zero_of_fis_re _ (h2 i (Finset.mem_univ i))

theorem sum_eq_zero_of_lower (P : MvPolynomial σ ℂ) (h : ∀ j, L j (∑ i, R i (L i P)) = 0) :
    ∑ i, R i (L i P) = 0 := by
  refine eq_zero_of_fis_re _ ?_
  rw [fis_sum_left]
  simp only [hadj, h, fis_zero_right, neg_zero, Finset.sum_const_zero, Complex.zero_re]

end Fischer

theorem fockT_raise {D : D7} {n m : ℕ} (τ : D.what₂.Tau) (p : D.what₂.Tau → ℕ) (i l : Fin m)
    (hi : (i : ℕ) < p τ) (hl : p τ ≤ (l : ℕ)) (P : PolF D m n) :
    GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < p τ))
      (Matrix.single i l (1 : ℂ)) P = ∑ j : Fin n, X (τ, i, j) * (X (τ, l, j) * P) := by
  classical
  have hil : i ≠ l := by intro h; subst h; omega
  have h1 : decide ((l : ℕ) < p τ) = false := decide_eq_false (by omega)
  have h2 : decide ((i : ℕ) < p τ) = true := decide_eq_true hi
  unfold GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT
  rw [Finset.sum_eq_single i, Finset.sum_eq_single l]
  · simp [GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.raiO, GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.lowO, GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.sgn, h1, h2, hil, LinearMap.sum_apply]
  · intro k _ hk; simp [Ne.symm hk]
  · simp
  · intro k _ hk; simp [Ne.symm hk]
  · simp

theorem raise_deg {D : D7} {n m : ℕ} (τ : D.what₂.Tau) (p : D.what₂.Tau → ℕ) (i l : Fin m)
    (hi : (i : ℕ) < p τ) (hl : p τ ≤ (l : ℕ)) (P : PolF D m n) (k : ℕ) (h : P.totalDegree ≤ k) :
    (GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < p τ))
      (Matrix.single i l (1 : ℂ)) P).totalDegree ≤ k + 2 := by
  rw [fockT_raise τ p i l hi hl]
  refine totalDegree_finsetSum_le fun j _ => (totalDegree_mul _ _).trans ?_
  have := totalDegree_mul (X (τ, l, j) : PolF D m n) P
  rw [totalDegree_X] at this ⊢
  omega

theorem mem_of_raise : ∀ (D : D7) (n m : ℕ) (w : GlobalTheory.ExportSeries.Weight D n) (BS : GlobalTheory.ExportSeries.GLR D n) (K : Type) [Group K] (r : K →* GlobalTheory.ExportSeries.GLR D n), (∀ (k : K) (τ : D.what₂.Tau), ((GlobalTheory.ExportSeries.inBasis BS (r k) τ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) ∈ Matrix.unitaryGroup (Fin n) ℂ) → ∀ (W : Type) [AddCommGroup W] [Module ℂ W] [FiniteDimensional ℂ W] (ρ : K →* Module.End ℂ W), ∀ N : Submodule ℂ (W →ₗ[ℂ] PolF D m n), (∀ φ : W →ₗ[ℂ] PolF D m n, (∀ (k : K) (w' : W), φ (ρ k w') = GlobalTheory.ExportSeries.fockGL m w BS (r k) (φ w')) → (∀ w' : W, ∀ (τ' : D.what₂.Tau) (i l : Fin m), w.p τ' ≤ (i : ℕ) → (l : ℕ) < w.p τ' → GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT τ' (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ')) (Matrix.single i l (1 : ℂ)) (φ w') = 0) → φ ∈ N) → (∀ ψ ∈ N, ∀ (τ : D.what₂.Tau) (i l : Fin m), (i : ℕ) < w.p τ → w.p τ ≤ (l : ℕ) → GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) (Matrix.single i l (1 : ℂ)) ∘ₗ ψ ∈ N) → ∀ φ : W →ₗ[ℂ] PolF D m n, (∀ (k : K) (w' : W), φ (ρ k w') = GlobalTheory.ExportSeries.fockGL m w BS (r k) (φ w')) → φ ∈ N := by
  intro D n m w BS K _ r _ W _ _ _ ρ N hN0 hNR φ hφ
  classical
  let ι : Type := {t : D.what₂.Tau × Fin m × Fin m // (t.2.1 : ℕ) < w.p t.1 ∧ w.p t.1 ≤ (t.2.2 : ℕ)}
  let T : D.what₂.Tau → Matrix (Fin m) (Fin m) ℂ → PolF D m n →ₗ[ℂ] PolF D m n := fun τ Y =>
    GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) Y
  let R : ι → PolF D m n →ₗ[ℂ] PolF D m n := fun t => T t.1.1 (Matrix.single t.1.2.1 t.1.2.2 1)
  let L : ι → PolF D m n →ₗ[ℂ] PolF D m n := fun t => T t.1.1 (Matrix.single t.1.2.2 t.1.2.1 1)
  have hT : ∀ τ Y k x, GlobalTheory.ExportSeries.fockGL m w BS (r k) (T τ Y x) =
      T τ Y (GlobalTheory.ExportSeries.fockGL m w BS (r k) x) := fun τ Y k x => by
    rw [GlobalTheory.ExportSeries.fockGL_apply, GlobalTheory.ExportSeries.fockGL_apply, map_smul]
    exact congrArg _ (GlobalTheory.FockSubstComm.fockSubst_fockT D m n w.p _ τ Y x)
  have hadj : ∀ i P Q, fis (R i P) Q = -fis P (L i Q) := fun t P Q => by
    simp only [R, L, T]
    rw [fockT_raise _ _ _ _ t.2.1 t.2.2, GlobalTheory.LowerHarm.fockT_lower _ _ _ _ t.2.2 t.2.1, fis_neg_right, neg_neg,
      fis_sum_left, fis_sum_right]
    exact Finset.sum_congr rfl fun j _ => by rw [fis_X_mul, fis_X_mul]
  have hdeg : ∃ d, ∀ w', (φ w').totalDegree ≤ d := by
    let b := Module.finBasis ℂ W
    refine ⟨Finset.univ.sup fun j => (φ (b j)).totalDegree, fun w' => ?_⟩

    rw [← b.sum_repr w', map_sum]
    refine totalDegree_finsetSum_le fun j _ => ?_
    rw [map_smul]
    exact (totalDegree_smul_le _ _).trans
      (Finset.le_sup (f := fun j => (φ (b j)).totalDegree) (Finset.mem_univ j))
  obtain ⟨d, hd⟩ := hdeg
  refine mem_of_filtration (fun k => GlobalTheory.ExportSeries.fockGL m w BS (r k)) (fun k => ρ k) R L
    (fun d => restrictTotalDegree (FVar D m n) ℂ d) (fun t => hT _ _) (fun t => hT _ _) ?_ ?_ ?_
    (lower_eq_zero R L hadj) (sum_eq_zero_of_lower R L hadj) N ?_ ?_ d φ hφ
    fun w' => (mem_restrictTotalDegree _ _ _).2 (hd w')
  · intro t x hx
    rw [mem_restrictTotalDegree] at hx
    exact GlobalTheory.LowerHarm.lower_zero _ _ _ _ t.2.2 t.2.1 x (by omega)
  · intro t k x hx
    rw [mem_restrictTotalDegree] at hx ⊢
    exact GlobalTheory.LowerHarm.lower_deg _ _ _ _ t.2.2 t.2.1 x k (by omega)
  · intro t k x hx
    rw [mem_restrictTotalDegree] at hx ⊢
    rcases Nat.lt_or_ge k 2 with h2 | h2
    · have : L t x = 0 := GlobalTheory.LowerHarm.lower_zero _ _ _ _ t.2.2 t.2.1 x (by omega)
      simp [this]
    · obtain ⟨k, rfl⟩ : ∃ j, k = j + 2 := ⟨k - 2, by omega⟩
      exact raise_deg _ _ _ _ t.2.1 t.2.2 _ k (GlobalTheory.LowerHarm.lower_deg _ _ _ _ t.2.2 t.2.1 x k hx)
  · exact fun ψ hψ h => hN0 ψ hψ fun w' τ i l hi hl => h w' ⟨(τ, l, i), hl, hi⟩
  · exact fun ψ hψ t => hNR ψ hψ _ _ _ t.2.1 t.2.2

end GlobalTheory.RaiseGen
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemOfRaisingOperatorsJointHarmonics =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CommonEigenvector =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CommonEigenvector", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Eigenspace.Triangularizable\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Eigenspace.Basic\n\n"}
section -- clump:auto
@[expose] public section

universe u_1 u_2

namespace GlobalTheory.CommonEigenvector

private lemma exists_common_eigenspace_of_commuting {V : Type u_1} {ι : Type u_2} [AddCommGroup V] [Module ℂ V]
    (H : ι → Module.End ℂ V) (hc : ∀ (i j : ι), H i * H j = H j * H i)
    (E : Submodule ℂ V) [FiniteDimensional ℂ ↥E] (hE : ∀ (i : ι), ∀ x ∈ E, (H i : V → V) x ∈ E)
    (hne : E ≠ ⊥) :
    ∃ W : Submodule ℂ V, W ≤ E ∧ W ≠ ⊥ ∧ ∀ i, ∃ c : ℂ, ∀ x ∈ W, (H i : V → V) x = c • x := by

  classical
  let P : Submodule ℂ V → Prop := fun W => W ≤ E ∧ W ≠ ⊥ ∧ ∀ i, ∀ x ∈ W, (H i : V → V) x ∈ W
  have hex : ∃ n, ∃ W, P W ∧ Module.finrank ℂ W = n := ⟨_, E, ⟨le_rfl, hne, hE⟩, rfl⟩
  obtain ⟨W, ⟨hWE, hW0, hWi⟩, hWn⟩ := Nat.find_spec hex
  have hmin : ∀ W', P W' → Module.finrank ℂ W ≤ Module.finrank ℂ W' := fun W' hW' => by
    rw [hWn]
    exact Nat.find_min' hex ⟨W', hW', rfl⟩
  have : FiniteDimensional ℂ W := Submodule.finiteDimensional_of_le hWE
  have : Nontrivial W := Submodule.nontrivial_iff_ne_bot.mpr hW0
  refine ⟨W, hWE, hW0, fun i => ?_⟩
  obtain ⟨c, hce⟩ := Module.End.exists_eigenvalue ((H i).restrict (hWi i))
  obtain ⟨w, hw⟩ := hce.exists_hasEigenvector
  have hwv : (H i : V → V) w = c • (w : V) := by
    have h1 := congrArg Subtype.val hw.apply_eq_smul
    simpa using h1
  let W' : Submodule ℂ V := W ⊓ LinearMap.ker (H i - c • LinearMap.id)
  have hmem : ∀ x, x ∈ W' ↔ x ∈ W ∧ (H i : V → V) x = c • x := by
    intro x
    simp [W', sub_eq_zero]
  have hW'le : W' ≤ W := inf_le_left
  have hW'P : P W' := by
    refine ⟨hW'le.trans hWE, ?_, ?_⟩
    · intro h
      have hw' : (w : V) ∈ W' := (hmem _).2 ⟨w.2, hwv⟩
      rw [h, Submodule.mem_bot] at hw'
      exact hw.2 (Subtype.ext hw')
    · intro j x hx
      obtain ⟨hxW, hxe⟩ := (hmem x).1 hx
      refine (hmem _).2 ⟨hWi j x hxW, ?_⟩
      have hcom := congrArg (fun f : Module.End ℂ V => f x) (hc i j)
      simp only [Module.End.mul_apply] at hcom
      rw [hcom, hxe, map_smul]
  have hle : Module.finrank ℂ W' ≤ Module.finrank ℂ W :=
    LinearMap.finrank_le_finrank_of_injective (Submodule.inclusion_injective hW'le)
  have hEq : W' = W := Submodule.eq_of_le_of_finrank_eq hW'le (le_antisymm hle (hmin W' hW'P))
  refine ⟨c, fun x hx => ?_⟩
  rw [← hEq] at hx
  exact ((hmem x).1 hx).2

theorem common_eigenvector : ∀ {V : Type u_1} {ι : Type u_2} [inst : AddCommGroup V] [inst_1 : Module ℂ V] [Fintype ι] (H : ι → Module.End ℂ V), (∀ (i j : ι), H i * H j = H j * H i) → ∀ (E : Submodule ℂ V) [FiniteDimensional ℂ ↥E], (∀ (i : ι), ∀ x ∈ E, (H i : V → V) x ∈ E) → E ≠ ⊥ → ∃ v ∈ E, v ≠ (0 : V) ∧ ∀ (i : ι), ∃ (c : ℂ), (H i : V → V) v = c • v := by
  intro V ι _ _ _ H hc E _ hE hne

  obtain ⟨W, hWE, hW0, hW⟩ := exists_common_eigenspace_of_commuting H hc E hE hne
  obtain ⟨v, hv, hv0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hW0
  refine ⟨v, hWE hv, hv0, fun i => ?_⟩
  obtain ⟨c, hc'⟩ := hW i
  exact ⟨c, hc' v hv⟩

end GlobalTheory.CommonEigenvector
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CommonEigenvector =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHighestWeightKTypeMap =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHighestWeightKTypeMap", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKHwMap\npublic import Mathlib.RingTheory.Derivation.Lie\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CommonEigenvector\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetGlActionCompactPreservesJointHarmonics\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Eigenspace.Triangularizable\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

noncomputable section

namespace GlobalTheory.KHwExist

open scoped Classical

open MvPolynomial GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators GlobalTheory.LowestKType

variable {D : D7} {n m : ℕ}

def pol (τ : D.what₂.Tau) (a b : Fin m) : Derivation ℂ (PolF D m n) (PolF D m n) :=
  ∑ j : Fin n, (X (τ, a, j) : PolF D m n) • pderiv (τ, b, j)

theorem pol_apply (τ : D.what₂.Tau) (a b : Fin m) (Q : PolF D m n) :
    pol τ a b Q = ∑ j, X (τ, a, j) * pderiv (τ, b, j) Q := by
  have e := map_sum (Derivation.coeFnAddMonoidHom : Derivation ℂ (PolF D m n) (PolF D m n) →+ _)
    (fun j : Fin n => (X (τ, a, j) : PolF D m n) • pderiv (τ, b, j)) Finset.univ
  simp only [Derivation.coeFnAddMonoidHom_apply] at e
  rw [pol, e, Finset.sum_apply]
  simp

theorem pol_X (τ : D.what₂.Tau) (a b : Fin m) (t : D.what₂.Tau) (i : Fin m) (j : Fin n) :
    (pol τ a b (X (t, i, j)) : PolF D m n) = if t = τ ∧ i = b then X (τ, a, j) else 0 := by
  classical
  rw [pol_apply]
  simp only [pderiv_X, Pi.single_apply, Prod.mk.injEq, mul_ite, mul_one, mul_zero]
  by_cases h : t = τ ∧ i = b
  · obtain ⟨rfl, rfl⟩ := h; simp
  · rw [if_neg h]
    refine Finset.sum_eq_zero fun k _ => if_neg ?_
    rintro ⟨rfl, rfl, rfl⟩; exact h ⟨rfl, rfl⟩

theorem pol_comm (τ' τ : D.what₂.Tau) (c a b : Fin m) :
    ⁅(pol τ' c c : Derivation ℂ (PolF D m n) (PolF D m n)), (pol τ a b : Derivation ℂ (PolF D m n) (PolF D m n))⁆ =
      (if τ' = τ then ((if c = a then 1 else 0) - (if c = b then 1 else 0) : ℂ) else 0) • pol τ a b := by
  classical
  apply MvPolynomial.derivation_ext
  rintro ⟨t, i, j⟩
  rw [Derivation.commutator_apply, Derivation.smul_apply, pol_X, pol_X]
  by_cases h1 : t = τ ∧ i = b <;> by_cases h2 : t = τ' ∧ i = c
  · obtain ⟨rfl, rfl⟩ := h1; obtain ⟨rfl, rfl⟩ := h2
    simp only [pol_X, and_self, if_true, true_and]
    by_cases hai : a = i
    · subst hai; simp
    · simp [hai, Ne.symm hai]
  · rw [if_pos h1, if_neg h2, map_zero, sub_zero, pol_X]
    obtain ⟨rfl, rfl⟩ := h1
    by_cases h3 : t = τ' ∧ a = c
    · obtain ⟨rfl, rfl⟩ := h3
      simp only [and_self, if_true]
      have : i ≠ a := fun e => h2 ⟨rfl, e⟩
      simp [Ne.symm this]
    · rw [if_neg h3]
      by_cases h4 : t = τ'
      · subst h4
        have : c ≠ a := fun e => h3 ⟨rfl, e.symm⟩
        have : c ≠ i := fun e => h2 ⟨rfl, e.symm⟩
        simp [*]
      · simp [Ne.symm h4]
  · rw [if_neg h1, if_pos h2, map_zero, zero_sub, pol_X]
    obtain ⟨rfl, rfl⟩ := h2
    rw [if_neg h1, neg_zero, smul_zero]
  · rw [if_neg h1, if_neg h2, map_zero, map_zero, sub_zero, smul_zero]

end GlobalTheory.KHwExist

namespace GlobalTheory.KHwExist

open scoped Classical

open MvPolynomial GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators GlobalTheory.LowestKType

variable {D : D7} {n m : ℕ}

theorem kop_pos (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin m) (ha : (a : ℕ) < w.p τ)
    (hb : (b : ℕ) < w.p τ) :
    kop w τ a b = ((pol τ a b : Derivation ℂ (PolF D m n) (PolF D m n)) : Module.End ℂ (PolF D m n)) +
      (if a = b then ((n : ℂ) / 2) else 0) • 1 := by
  refine LinearMap.ext fun Q => ?_
  rw [kop, GlobalTheory.CompactHarm.up_eq τ _ a b (by simpa using ha) (by simpa using hb)]
  simp only [LinearMap.add_apply, Derivation.coeFn_coe, pol_apply, LinearMap.smul_apply, Module.End.one_apply]
  split_ifs <;> simp

theorem kop_neg (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin m) (ha : ¬ (a : ℕ) < w.p τ)
    (hb : ¬ (b : ℕ) < w.p τ) :
    kop w τ a b = -((pol τ b a : Derivation ℂ (PolF D m n) (PolF D m n)) : Module.End ℂ (PolF D m n)) -
      (if a = b then ((n : ℂ) / 2) else 0) • 1 := by
  refine LinearMap.ext fun Q => ?_
  rw [kop, GlobalTheory.CompactHarm.dn_eq τ _ a b (by simpa using ha) (by simpa using hb)]
  simp only [GlobalTheory.CompactHarm.pd_X_mul, Finset.sum_add_distrib, Prod.mk.injEq, true_and, and_true,
    LinearMap.sub_apply, LinearMap.neg_apply, Derivation.coeFn_coe, pol_apply, LinearMap.smul_apply,
    Module.End.one_apply]
  by_cases hab : a = b
  · subst hab
    simp only [if_true, Finset.sum_const, Finset.card_univ, Fintype.card_fin, ← Nat.cast_smul_eq_nsmul ℂ]
    module
  · simp [hab, Ne.symm hab]

end GlobalTheory.KHwExist

namespace GlobalTheory.KHwExist

open scoped Classical

open MvPolynomial GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators GlobalTheory.LowestKType

variable {D : D7} {n m : ℕ}

abbrev polE (τ : D.what₂.Tau) (a b : Fin m) : Module.End ℂ (PolF D m n) :=
  ((pol τ a b : Derivation ℂ (PolF D m n) (PolF D m n)) : Module.End ℂ (PolF D m n))

theorem polE_comm (τ' τ : D.what₂.Tau) (c a b : Fin m) :
    (polE τ' c c : Module.End ℂ (PolF D m n)) * polE τ a b - polE τ a b * polE τ' c c =
      (if τ' = τ then ((if c = a then 1 else 0) - (if c = b then 1 else 0) : ℂ) else 0) • polE τ a b := by
  rw [← Ring.lie_def, polE, polE, ← Derivation.commutator_coe_linear_map, pol_comm]
  rfl

theorem polE_commute (τ' τ : D.what₂.Tau) (c c' : Fin m) :
    Commute (polE τ' c c : Module.End ℂ (PolF D m n)) (polE τ c' c') := by
  have h := polE_comm (n := n) τ' τ c c' c'
  rw [sub_self, ite_self, zero_smul, sub_eq_zero] at h
  exact h

theorem comm_aff {A B : Module.End ℂ (PolF D m n)} (h : Commute A B) (u v d e : ℂ) :
    Commute (u • A + d • 1) (v • B + e • 1) := by
  apply Commute.add_left
  · apply Commute.add_right
    · exact (h.smul_left u).smul_right v
    · exact ((Commute.one_right _).smul_right e).smul_left u
  · exact (((Commute.one_left B).smul_left d).smul_right v).add_right
      (((Commute.one_left (1 : Module.End ℂ (PolF D m n))).smul_left d).smul_right e)

theorem kop_diag (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (c : Fin m) :
    kop w τ c c = (if (c : ℕ) < w.p τ then (1 : ℂ) else -1) • polE τ c c +
      (if (c : ℕ) < w.p τ then (n : ℂ) / 2 else -((n : ℂ) / 2)) • 1 := by
  by_cases hc : (c : ℕ) < w.p τ
  · rw [kop_pos w τ c c hc hc]; simp [hc]
  · rw [kop_neg w τ c c hc hc]; simp only [hc, if_false, if_true, neg_smul, one_smul]; abel

theorem kop_diag_commute (w : GlobalTheory.ExportSeries.Weight D n) (τ τ' : D.what₂.Tau) (c c' : Fin m) :
    kop w τ c c * kop w τ' c' c' = kop w τ' c' c' * kop w τ c c := by
  rw [kop_diag, kop_diag]
  exact (comm_aff (polE_commute τ τ' c c') _ _ _ _).eq

theorem kop_comm (w : GlobalTheory.ExportSeries.Weight D n) (τ' τ : D.what₂.Tau) (c a b : Fin m) (hC : Cpt w τ a b)
    (hab : a ≠ b) :
    kop w τ' c c * kop w τ a b - kop w τ a b * kop w τ' c c =
      (if τ' = τ then ((if c = a then 1 else 0) - (if c = b then 1 else 0) : ℂ) else 0) • kop w τ a b := by
  have hC' : ((a : ℕ) < w.p τ ↔ (b : ℕ) < w.p τ) := hC
  have k1 : ∀ (A B : Module.End ℂ (PolF D m n)) (u d : ℂ), (u • A + d • 1) * B - B * (u • A + d • 1) =
      u • (A * B - B * A) := by
    intro A B u d
    simp only [add_mul, mul_add, smul_mul_assoc, mul_smul_comm, one_mul, mul_one, smul_sub]
    abel
  rw [kop_diag, k1]
  by_cases ha : (a : ℕ) < w.p τ
  · have hb := hC'.1 ha
    rw [kop_pos w τ a b ha hb, if_neg hab, zero_smul, add_zero, polE_comm]
    by_cases hc : (c : ℕ) < w.p τ'
    · rw [if_pos hc, one_smul]
    · rw [if_neg hc]
      by_cases ht : τ' = τ
      · subst ht
        have h1 : c ≠ a := fun e => hc (e ▸ ha)
        have h2 : c ≠ b := fun e => hc (e ▸ hb)
        simp [h1, h2]
      · simp [ht]
  · have hb : ¬ (b : ℕ) < w.p τ := fun h => ha (hC'.2 h)
    rw [kop_neg w τ a b ha hb, if_neg hab, zero_smul, sub_zero, mul_neg, neg_mul, sub_neg_eq_add,
      neg_add_eq_sub, ← neg_sub, polE_comm, smul_neg, smul_neg, smul_smul]
    by_cases hc : (c : ℕ) < w.p τ'
    · rw [if_pos hc]
      by_cases ht : τ' = τ
      · subst ht
        have h1 : c ≠ a := fun e => ha (e ▸ hc)
        have h2 : c ≠ b := fun e => hb (e ▸ hc)
        simp [h1, h2]
      · simp [ht]
    · rw [if_neg hc]
      congr 2
      split_ifs <;> ring

end GlobalTheory.KHwExist

namespace GlobalTheory.KHwExist

theorem exists_hw_of_height {V ι ρ : Type*} [AddCommGroup V] [Module ℂ V] [Fintype ι]
    (H : ι → Module.End ℂ V) (hH : ∀ i j, H i * H j = H j * H i)
    (h : Module.End ℂ V) (hh : ∀ i, h * H i = H i * h)
    (R : ρ → Module.End ℂ V) (β : ρ → ℝ) (hβ : ∀ r, 0 < β r) (hR : ∀ r, h * R r - R r * h = (β r : ℂ) • R r)
    (T : Submodule ℂ V) [FiniteDimensional ℂ T] (hT0 : T ≠ ⊥)
    (hTH : ∀ i, ∀ x ∈ T, H i x ∈ T) (hTh : ∀ x ∈ T, h x ∈ T) (hTR : ∀ r, ∀ x ∈ T, R r x ∈ T) :
    ∃ v ∈ T, v ≠ 0 ∧ (∀ r, R r v = 0) ∧ ∀ i, ∃ c : ℂ, H i v = c • v := by
  classical
  haveI : Nontrivial T := Submodule.nontrivial_iff_ne_bot.2 hT0
  let hT : Module.End ℂ T := h.restrict hTh
  have hfin : {μ | Module.End.HasEigenvalue hT μ}.Finite := Module.End.finite_hasEigenvalue hT
  obtain ⟨μ0, hμ0⟩ := Module.End.exists_eigenvalue hT
  obtain ⟨z, hz, hzmax⟩ := Set.exists_max_image _ (fun μ : ℂ => μ.re) hfin ⟨μ0, hμ0⟩
  let E : Submodule ℂ V := T ⊓ LinearMap.ker (h - z • 1)
  have memE : ∀ x, x ∈ E ↔ x ∈ T ∧ h x = z • x := by
    intro x; simp [E, sub_eq_zero]
  haveI : FiniteDimensional ℂ E := Submodule.finiteDimensional_of_le inf_le_left
  have hE0 : E ≠ ⊥ := by
    obtain ⟨x, hx⟩ := (hz : Module.End.HasEigenvalue hT z).exists_hasEigenvector
    rw [Module.End.hasEigenvector_iff, Module.End.mem_eigenspace_iff] at hx
    rw [Submodule.ne_bot_iff]
    refine ⟨x, (memE _).2 ⟨x.2, ?_⟩, fun h0 => hx.2 (Subtype.ext h0)⟩
    have := congrArg Subtype.val hx.1
    rwa [LinearMap.coe_restrict_apply] at this
  have hkill : ∀ r, ∀ x ∈ E, R r x = 0 := by
    intro r x hx
    obtain ⟨hxT, hxz⟩ := (memE x).1 hx
    by_contra hne
    have e1 : h (R r x) = (z + β r) • R r x := by
      have := LinearMap.congr_fun (hR r) x
      simp only [LinearMap.sub_apply, Module.End.mul_apply, LinearMap.smul_apply, hxz, map_smul] at this
      rw [add_smul, ← this]; abel
    have hev : Module.End.HasEigenvalue hT (z + β r) := by
      refine Module.End.hasEigenvalue_of_hasEigenvector (x := ⟨R r x, hTR r x hxT⟩) ?_
      rw [Module.End.hasEigenvector_iff, Module.End.mem_eigenspace_iff]
      refine ⟨Subtype.ext ?_, fun h0 => hne (congrArg Subtype.val h0)⟩
      rw [LinearMap.coe_restrict_apply]
      exact e1
    have := hzmax _ hev
    simp only [Complex.add_re, Complex.ofReal_re] at this
    linarith [hβ r]
  have hEH : ∀ i, ∀ x ∈ E, H i x ∈ E := by
    intro i x hx
    obtain ⟨hxT, hxz⟩ := (memE x).1 hx
    refine (memE _).2 ⟨hTH i x hxT, ?_⟩
    have := LinearMap.congr_fun (hh i) x
    simp only [Module.End.mul_apply] at this
    rw [this, hxz, map_smul]
  obtain ⟨v, hvE, hv0, hv⟩ := _root_.GlobalTheory.CommonEigenvector.common_eigenvector H hH E hEH hE0
  exact ⟨v, ((memE v).1 hvE).1, hv0, fun r => hkill r v hvE, hv⟩

end GlobalTheory.KHwExist

namespace GlobalTheory.KHwExist

open scoped Classical

open GlobalTheory.LowestKType

theorem exists_kHwMap : ∀ (D : D7) (n m : ℕ) (w : GlobalTheory.ExportSeries.Weight D n) (W : Type) [AddCommGroup W] [Module ℂ W] (T : Submodule ℂ (W →ₗ[ℂ] PolF D m n)), FiniteDimensional ℂ T → T ≠ ⊥ → (∀ ψ ∈ T, ∀ (τ : D.what₂.Tau) (a b : Fin m), GlobalTheory.LowestKType.Cpt w τ a b → GlobalTheory.LowestKType.kop w τ a b ∘ₗ ψ ∈ T) → ∃ ψ ∈ T, ψ ≠ 0 ∧ GlobalTheory.LowestKType.IsKHwMap w ψ := by
  intro D n m w W _ _ T hfd hT0 hst
  let post : Module.End ℂ (PolF D m n) → Module.End ℂ (W →ₗ[ℂ] PolF D m n) :=
    fun f => LinearMap.llcomp ℂ W (PolF D m n) (PolF D m n) f
  have post_mul : ∀ f g, post (f * g) = post f * post g := fun f g => LinearMap.ext fun ψ => rfl
  have post_sub : ∀ f g, post (f - g) = post f - post g := fun f g => map_sub _ f g
  have post_smul : ∀ (c : ℂ) f, post (c • f) = c • post f := fun c f => map_smul _ c f
  let H : D.what₂.Tau × Fin m → Module.End ℂ (W →ₗ[ℂ] PolF D m n) := fun x => post (kop w x.1 x.2 x.2)
  let ρ := {x : D.what₂.Tau × Fin m × Fin m // Cpt w x.1 x.2.1 x.2.2 ∧ x.2.1 < x.2.2}
  let R : ρ → Module.End ℂ (W →ₗ[ℂ] PolF D m n) := fun r => post (kop w r.1.1 r.1.2.1 r.1.2.2)
  let h : Module.End ℂ (W →ₗ[ℂ] PolF D m n) := ∑ x : D.what₂.Tau × Fin m, (-((x.2 : ℕ) : ℂ)) • H x
  have hHc : ∀ i j, H i * H j = H j * H i := fun i j => by
    simp only [H, ← post_mul, kop_diag_commute]
  have hcomm : ∀ (r : ρ) (x : D.what₂.Tau × Fin m), H x * R r - R r * H x =
      (if x.1 = r.1.1 then ((if x.2 = r.1.2.1 then 1 else 0) - (if x.2 = r.1.2.2 then 1 else 0) : ℂ) else 0) • R r := by
    intro r x
    simp only [H, R, ← post_mul, ← post_sub, ← post_smul]
    rw [kop_comm w x.1 r.1.1 x.2 r.1.2.1 r.1.2.2 r.2.1 (ne_of_lt r.2.2)]
  have hh : ∀ i, h * H i = H i * h := by
    intro i
    simp only [h, Finset.sum_mul, Finset.mul_sum]
    refine Finset.sum_congr rfl fun x _ => ?_
    rw [smul_mul_assoc, mul_smul_comm, hHc]
  have hR : ∀ r : ρ, h * R r - R r * h = ((((r.1.2.2 : ℕ) : ℝ) - ((r.1.2.1 : ℕ) : ℝ) : ℝ) : ℂ) • R r := by
    intro r
    simp only [h, Finset.sum_mul, Finset.mul_sum, smul_mul_assoc, mul_smul_comm, ← Finset.sum_sub_distrib,
      ← smul_sub, hcomm, smul_smul, ← Finset.sum_smul]
    congr 1
    rw [Fintype.sum_prod_type]
    simp [mul_sub, Finset.sum_sub_distrib]
    push_cast; ring
  obtain ⟨v, hvT, hv0, hvR, hvH⟩ := exists_hw_of_height H hHc h hh R
    (fun r => ((r.1.2.2 : ℕ) : ℝ) - ((r.1.2.1 : ℕ) : ℝ))
    (fun r => by have := r.2.2; simp only [sub_pos, Nat.cast_lt]; exact this) hR T hT0
    (fun i x hx => hst x hx i.1 i.2 i.2 Iff.rfl)
    (fun x hx => by
      simp only [h, LinearMap.sum_apply, LinearMap.smul_apply]
      exact T.sum_mem fun i _ => T.smul_mem _ (hst x hx i.1 i.2 i.2 Iff.rfl))
    (fun r x hx => hst x hx r.1.1 r.1.2.1 r.1.2.2 r.2.1)
  refine ⟨v, hvT, hv0, fun τ a b hC hab => hvR ⟨(τ, a, b), hC, hab⟩, fun τ a => hvH (τ, a)⟩

end GlobalTheory.KHwExist
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHighestWeightKTypeMap =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSourceHighestWeightFockStableSubspace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSourceHighestWeightFockStableSubspace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKHwMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

noncomputable section

namespace GlobalTheory.NHwExist

attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.LowestKType GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators MvPolynomial

variable {D : D7} {n m : ℕ}

lemma sop_eq (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin n) :
    (sop w τ a b : Module.End ℂ (PolF D m n)) =
      ∑ i, (raiO τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) i a *
        lowO τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) i b +
        if a = b then (1 / 2 : ℂ) • 1 else 0) := by
  classical
  unfold GlobalTheory.LowestKType.sop GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockS
  rw [Finset.sum_eq_single a, Finset.sum_eq_single b]
  · simp
  · intro k _ hk; simp [Ne.symm hk]
  · simp
  · intro k _ hk; simp [Ne.symm hk]
  · simp

lemma term_lt (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin n) (i : Fin m) (hi : (i : ℕ) < w.p τ)
    (P : PolF D m n) :
    (raiO τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) i a *
        lowO τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) i b) P =
      X (τ, i, a) * pderiv (τ, i, b) P := by
  classical
  simp [raiO, lowO, sgn, hi]

lemma term_ge (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin n) (i : Fin m) (hi : ¬ (i : ℕ) < w.p τ)
    (P : PolF D m n) :
    (raiO τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) i a *
        lowO τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) i b) P =
      -(pderiv (τ, i, a) (X (τ, i, b) * P)) := by
  classical
  simp [raiO, lowO, sgn, hi]

lemma mono1 (u v : FVar D m n) (α : FVar D m n →₀ ℕ) (c : ℂ) :
    (X u * pderiv v (monomial α c) : PolF D m n) = monomial (Finsupp.single u 1 + (α - Finsupp.single v 1)) (c * α v) := by
  classical
  rw [pderiv_monomial, X, monomial_mul, one_mul]

lemma mono2 (u v : FVar D m n) (α : FVar D m n →₀ ℕ) (c : ℂ) :
    (pderiv u (X v * monomial α c) : PolF D m n) =
      monomial (Finsupp.single v 1 + α - Finsupp.single u 1) (c * ((Finsupp.single v 1 + α : FVar D m n →₀ ℕ) u)) := by
  classical
  rw [X, monomial_mul, one_mul, pderiv_monomial]

def lamM (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a : Fin n) (α : FVar D m n →₀ ℕ) : ℂ :=
  ∑ i : Fin m, ((if (i : ℕ) < w.p τ then (α (τ, i, a) : ℂ) else -((α (τ, i, a) : ℂ) + 1)) + 1 / 2)

lemma diag_X (v : FVar D m n) (α : FVar D m n →₀ ℕ) (c : ℂ) :
    (X v * pderiv v (monomial α c) : PolF D m n) = (α v : ℂ) • monomial α c := by
  classical
  rw [mono1]
  by_cases h : α v = 0
  · simp [h]
  · have : Finsupp.single v 1 + (α - Finsupp.single v 1) = α := by
      rw [add_comm]; exact tsub_add_cancel_of_le (Finsupp.single_le_iff.2 (Nat.one_le_iff_ne_zero.2 h))
    rw [this, smul_monomial, smul_eq_mul, mul_comm]

lemma diag_D (v : FVar D m n) (α : FVar D m n →₀ ℕ) (c : ℂ) :
    (pderiv v (X v * monomial α c) : PolF D m n) = ((α v : ℂ) + 1) • monomial α c := by
  classical
  rw [mono2, add_tsub_cancel_left, smul_monomial]
  simp
  ring_nf

lemma sop_diag (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a : Fin n) (α : FVar D m n →₀ ℕ) (c : ℂ) :
    sop w τ a a (monomial α c : PolF D m n) = lamM w τ a α • monomial α c := by
  classical
  rw [sop_eq, LinearMap.sum_apply]
  unfold lamM
  rw [Finset.sum_smul]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [LinearMap.add_apply]
  by_cases hi : (i : ℕ) < w.p τ
  · rw [term_lt w τ a a i hi, diag_X]
    simp [hi, add_smul]
  · rw [term_ge w τ a a i hi, diag_D]
    simp [hi, add_smul, neg_smul]

lemma coeff_sop_diag (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a : Fin n) (P : PolF D m n)
    (β : FVar D m n →₀ ℕ) : AddMonoidAlgebra.coeff (sop w τ a a P) β = lamM w τ a β * AddMonoidAlgebra.coeff P β := by
  classical
  induction P using MvPolynomial.induction_on' with
  | monomial u c =>
    rw [sop_diag, MvPolynomial.coeff_smul, coeff_monomial, smul_eq_mul]
    split_ifs with h
    · rw [h]
    · simp
  | add p q hp hq => rw [map_add (f := _), MvPolynomial.coeff_add, MvPolynomial.coeff_add, hp, hq, mul_add]

def gV (w : GlobalTheory.ExportSeries.Weight D n) (v : FVar D m n) : ℤ :=
  (if (v.2.1 : ℕ) < w.p v.1 then 1 else -1) * ((n : ℤ) - (v.2.2 : ℕ))

def ht (w : GlobalTheory.ExportSeries.Weight D n) (α : FVar D m n →₀ ℕ) : ℤ := ∑ v, gV w v * (α v : ℤ)

lemma ht_add (w : GlobalTheory.ExportSeries.Weight D n) (α β : FVar D m n →₀ ℕ) : ht w (α + β) = ht w α + ht w β := by
  unfold ht; simp [mul_add, Finset.sum_add_distrib]

lemma ht_single (w : GlobalTheory.ExportSeries.Weight D n) (u : FVar D m n) : ht w (Finsupp.single u 1) = gV w u := by
  classical
  unfold ht; simp [Finsupp.single_apply]

lemma ht_sub (w : GlobalTheory.ExportSeries.Weight D n) (α : FVar D m n →₀ ℕ) (v : FVar D m n) (h : 1 ≤ α v) :
    ht w (α - Finsupp.single v 1) = ht w α - gV w v := by
  have e : α - Finsupp.single v 1 + Finsupp.single v 1 = α := tsub_add_cancel_of_le (Finsupp.single_le_iff.2 h)
  have h2 := congrArg (ht w) e
  rw [ht_add, ht_single] at h2
  linarith

lemma ht_move (w : GlobalTheory.ExportSeries.Weight D n) (α : FVar D m n →₀ ℕ) (u v : FVar D m n) (h : 1 ≤ α v) :
    ht w (Finsupp.single u 1 + (α - Finsupp.single v 1)) = ht w α + (gV w u - gV w v) := by
  rw [ht_add, ht_single, ht_sub w α v h]; ring

lemma sop_off_mono (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin n) (hab : a ≠ b)
    (α β : FVar D m n →₀ ℕ) (c : ℂ) (hβ : β ∈ (sop w τ a b (monomial α c : PolF D m n)).support) :
    ht w β = ht w α + ((b : ℕ) - (a : ℕ) : ℤ) := by
  classical
  rw [sop_eq, LinearMap.sum_apply] at hβ
  obtain ⟨i, -, hi⟩ := Finset.mem_biUnion.1 (support_sum hβ)
  rw [LinearMap.add_apply] at hi
  simp only [hab, if_false, LinearMap.zero_apply, add_zero] at hi
  by_cases hp : (i : ℕ) < w.p τ
  · rw [term_lt w τ a b i hp, mono1, support_monomial] at hi
    split_ifs at hi with h0
    · simp at hi
    · rw [Finset.mem_singleton] at hi
      subst hi
      have h1 : 1 ≤ α (τ, i, b) := by
        rcases Nat.eq_zero_or_pos (α (τ, i, b)) with h | h
        · simp [h] at h0
        · exact h
      rw [ht_move w α _ _ h1]
      simp [gV, hp]
  · rw [term_ge w τ a b i hp, support_neg, mono2, support_monomial] at hi
    split_ifs at hi with h0
    · simp at hi
    · rw [Finset.mem_singleton] at hi
      subst hi
      have hne : ((τ, i, b) : FVar D m n) ≠ (τ, i, a) := by
        intro h; apply hab; simp only [Prod.mk.injEq] at h; exact h.2.2.symm
      have hu : ((Finsupp.single ((τ, i, b) : FVar D m n) 1 + α : FVar D m n →₀ ℕ) (τ, i, a)) = α (τ, i, a) := by
        simp [hne]
      rw [hu] at h0
      have h1 : 1 ≤ α (τ, i, a) := by
        rcases Nat.eq_zero_or_pos (α (τ, i, a)) with h | h
        · simp [h] at h0
        · exact h
      rw [add_tsub_assoc_of_le (Finsupp.single_le_iff.2 h1), ht_move w α _ _ h1]
      simp [gV, hp]

lemma sop_off (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin n) (hab : a ≠ b)
    (P : PolF D m n) (β : FVar D m n →₀ ℕ) (hβ : β ∈ (sop w τ a b P).support) :
    ∃ α ∈ P.support, ht w β = ht w α + ((b : ℕ) - (a : ℕ) : ℤ) := by
  classical

  rw [as_sum P, map_sum] at hβ
  obtain ⟨α, hα, h⟩ := Finset.mem_biUnion.1 (support_sum hβ)
  exact ⟨α, hα, sop_off_mono w τ a b hab α β _ h⟩

def Pure (w : GlobalTheory.ExportSeries.Weight D n) (Q : PolF D m n) : Prop :=
  ∀ (τ : D.what₂.Tau) (a : Fin n), ∀ α ∈ Q.support, ∀ β ∈ Q.support, lamM w τ a α = lamM w τ a β

def wtZ (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a : Fin n) (α : FVar D m n →₀ ℕ) : ℤ :=
  ∑ i : Fin m, (if (i : ℕ) < w.p τ then (1 : ℤ) else -1) * (α (τ, i, a) : ℤ)

lemma ht_eq (w : GlobalTheory.ExportSeries.Weight D n) (α : FVar D m n →₀ ℕ) :
    ht w α = ∑ τ, ∑ a : Fin n, ((n : ℤ) - (a : ℕ)) * wtZ w τ a α := by
  unfold ht wtZ gV
  rw [Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun τ _ => ?_
  rw [Fintype.sum_prod_type, Finset.sum_comm]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  ring

lemma lamM_eq (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a : Fin n) (α : FVar D m n →₀ ℕ) :
    lamM w τ a α = (wtZ w τ a α : ℂ) + ∑ i : Fin m, ((if (i : ℕ) < w.p τ then (0 : ℂ) else -1) + 1 / 2) := by
  unfold lamM wtZ
  push_cast
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun i _ => ?_
  split_ifs <;> ring

lemma ht_of_lam (w : GlobalTheory.ExportSeries.Weight D n) (α β : FVar D m n →₀ ℕ)
    (h : ∀ τ a, lamM w τ a α = lamM w τ a β) : ht w α = ht w β := by
  rw [ht_eq, ht_eq]
  refine Finset.sum_congr rfl fun τ _ => Finset.sum_congr rfl fun a _ => ?_
  have h1 := h τ a
  rw [lamM_eq, lamM_eq, add_left_inj] at h1
  rw [Int.cast_inj.1 h1]

lemma purify (w : GlobalTheory.ExportSeries.Weight D n) (V : Submodule ℂ (PolF D m n))
    (hV : ∀ P ∈ V, ∀ (τ : D.what₂.Tau) (a b : Fin n), sop w τ a b P ∈ V) :
    ∀ (k : ℕ) (P : PolF D m n), P.support.card ≤ k → P ∈ V → ∀ α0 ∈ P.support,
      ∃ Q ∈ V, α0 ∈ Q.support ∧ Pure w Q := by
  classical
  intro k
  induction k with
  | zero =>
    intro P hc _ α0 hα0
    rw [Nat.le_zero, Finset.card_eq_zero] at hc
    simp [hc] at hα0
  | succ k ih =>
    intro P hc hPV α0 hα0
    by_cases hP : Pure w P
    · exact ⟨P, hPV, hα0, hP⟩
    simp only [Pure, not_forall] at hP
    obtain ⟨τ, a, α, hα, β, hβ, hne⟩ := hP
    obtain ⟨γ, hγ, hγne⟩ : ∃ γ ∈ P.support, lamM w τ a γ ≠ lamM w τ a α0 := by
      by_cases h : lamM w τ a α = lamM w τ a α0
      · exact ⟨β, hβ, fun h' => hne (h.trans h'.symm)⟩
      · exact ⟨α, hα, h⟩
    set R := sop w τ a a P - lamM w τ a γ • P with hR
    have hcoeff : ∀ δ, AddMonoidAlgebra.coeff R δ = (lamM w τ a δ - lamM w τ a γ) * AddMonoidAlgebra.coeff P δ := by
      intro δ; rw [hR, MvPolynomial.coeff_sub, MvPolynomial.coeff_smul, coeff_sop_diag, smul_eq_mul]; ring
    have hRV : R ∈ V := V.sub_mem (hV P hPV τ a a) (V.smul_mem _ hPV)
    have hsub : R.support ⊆ P.support.erase γ := by
      intro δ hδ
      rw [mem_support_iff, hcoeff] at hδ
      rw [Finset.mem_erase, mem_support_iff]
      refine ⟨fun h => ?_, fun h => hδ (by rw [h, mul_zero])⟩
      subst h; exact hδ (by rw [sub_self, zero_mul])
    have hcard : R.support.card ≤ k := by
      have := Finset.card_le_card hsub
      rw [Finset.card_erase_of_mem hγ] at this
      omega
    have hα0R : α0 ∈ R.support := by
      rw [mem_support_iff, hcoeff]
      exact mul_ne_zero (sub_ne_zero.2 (Ne.symm hγne)) (mem_support_iff.1 hα0)
    exact ih R hcard hRV α0 hα0R

lemma exists_F (V : Submodule ℂ (PolF D m n)) [FiniteDimensional ℂ V] :
    ∃ F : Finset (FVar D m n →₀ ℕ), ∀ P ∈ V, P.support ⊆ F := by
  classical
  obtain ⟨s, hs⟩ := (Submodule.fg_iff_finiteDimensional V).2 inferInstance
  refine ⟨s.biUnion fun P => P.support, fun P hP => ?_⟩
  rw [← hs] at hP
  induction hP using Submodule.span_induction with
  | mem x hx => exact Finset.subset_biUnion_of_mem (fun P : PolF D m n => P.support) hx
  | zero => simp
  | add x y _ _ hx hy => exact (support_add).trans (Finset.union_subset hx hy)
  | smul c x _ hx => exact (support_smul).trans hx

lemma pure_eigen (w : GlobalTheory.ExportSeries.Weight D n) (Q : PolF D m n) (hQ : Pure w Q) (α : FVar D m n →₀ ℕ)
    (hα : α ∈ Q.support) (τ : D.what₂.Tau) (a : Fin n) : sop w τ a a Q = lamM w τ a α • Q := by
  classical
  ext γ
  rw [coeff_sop_diag, MvPolynomial.coeff_smul, smul_eq_mul]
  by_cases hγ : AddMonoidAlgebra.coeff Q γ = 0
  · rw [hγ, mul_zero, mul_zero]
  · rw [hQ τ a γ (mem_support_iff.2 hγ) α hα]

end GlobalTheory.NHwExist


open GlobalTheory.NHwExist in
theorem GlobalTheory.exists_nHw_of_fockS_stable : ∀ (D : D7) (n m : ℕ) (w : GlobalTheory.ExportSeries.Weight D n) (V : Submodule ℂ (PolF D m n)), FiniteDimensional ℂ V → V ≠ ⊥ → (∀ P ∈ V, ∀ (τ : D.what₂.Tau) (a b : Fin n), GlobalTheory.LowestKType.sop w τ a b P ∈ V) → ∃ P ∈ V, P ≠ 0 ∧ ∃ lam : D.what₂.Tau → Fin n → ℂ, GlobalTheory.LowestKType.IsNHw w lam P := by
  classical
  intro D n m w V hfin hne hst
  obtain ⟨F, hF⟩ := exists_F V
  obtain ⟨B, hB⟩ : ∃ B : ℤ, ∀ α ∈ F, ht w α ≤ B :=
    ⟨∑ α ∈ F, |ht w α|, fun α hα =>
      (le_abs_self _).trans (Finset.single_le_sum (fun x _ => abs_nonneg (ht w x)) hα)⟩
  have key : ∀ k : ℕ, ∀ Q ∈ V, Pure w Q → ∀ α ∈ Q.support, B - ht w α ≤ k →
      ∃ P ∈ V, P ≠ 0 ∧ ∃ lam : D.what₂.Tau → Fin n → ℂ, GlobalTheory.LowestKType.IsNHw w lam P := by
    intro k
    induction k using Nat.strong_induction_on with
    | _ k ih =>
      intro Q hQ hpure α hα hk
      by_cases hr : ∀ (τ : D.what₂.Tau) (a b : Fin n), a < b → GlobalTheory.LowestKType.sop w τ a b Q = 0
      · refine ⟨Q, hQ, fun h => by simp [h] at hα, fun τ a => lamM w τ a α, hr, fun τ a => ?_⟩
        exact pure_eigen w Q hpure α hα τ a
      · simp only [not_forall] at hr
        obtain ⟨τ, a, b, hab, hne⟩ := hr
        obtain ⟨β, hβ⟩ : (GlobalTheory.LowestKType.sop w τ a b Q).support.Nonempty := by
          rw [Finset.nonempty_iff_ne_empty, Ne, MvPolynomial.support_eq_empty]; exact hne
        obtain ⟨α', hα', hht⟩ := sop_off w τ a b (ne_of_lt hab) Q β hβ
        have heq : ht w α' = ht w α := ht_of_lam w α' α (fun τ a => hpure τ a α' hα' α hα)
        obtain ⟨Q', hQ'V, hβQ', hpure'⟩ :=
          purify w V hst _ _ le_rfl (hst Q hQ τ a b) β hβ
        have hβB : ht w β ≤ B := hB β (hF Q' hQ'V hβQ')
        have hab' : (a : ℕ) < (b : ℕ) := hab
        exact ih (B - ht w β).toNat (by omega) Q' hQ'V hpure' β hβQ' (Int.self_le_toNat _)
  obtain ⟨P, hPV, hP0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hne
  obtain ⟨α0, hα0⟩ : P.support.Nonempty := by
    rw [Finset.nonempty_iff_ne_empty, Ne, MvPolynomial.support_eq_empty]; exact hP0
  obtain ⟨Q, hQV, hα0Q, hpure⟩ := purify w V hst _ P le_rfl hPV α0 hα0
  exact key (B - ht w α0).toNat Q hQV hpure α0 hα0Q (Int.self_le_toNat _)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSourceHighestWeightFockStableSubspace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockInnerProductPosDefCompactMatrixUnitAdjoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockInnerProductPosDefCompactMatrixUnitAdjoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKHwMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

noncomputable section

namespace GlobalTheory.FockMonoForm

open MvPolynomial

variable {σ : Type}

def fct (α : σ →₀ ℕ) : ℕ := α.prod fun _ k => k.factorial

theorem fct_pos (α : σ →₀ ℕ) : 0 < fct α := Finset.prod_pos fun _ _ => Nat.factorial_pos _

theorem fct_add_single (α : σ →₀ ℕ) (v : σ) : fct (α + Finsupp.single v 1) = (α v + 1) * fct α := by
  classical
  have hs : (α + Finsupp.single v 1).support ⊆ insert v α.support := by
    intro u hu
    rw [Finsupp.mem_support_iff, Finsupp.add_apply, Finsupp.single_apply] at hu
    rw [Finset.mem_insert, Finsupp.mem_support_iff]
    by_cases h : v = u
    · exact Or.inl h.symm
    · right; simpa [h] using hu
  unfold fct
  rw [Finsupp.prod_of_support_subset _ hs _ (fun _ _ => Nat.factorial_zero),
    Finsupp.prod_of_support_subset α (Finset.subset_insert v α.support) _ (fun _ _ => Nat.factorial_zero),
    ← Finset.mul_prod_erase _ _ (Finset.mem_insert_self v α.support),
    ← Finset.mul_prod_erase _ _ (Finset.mem_insert_self v α.support)]
  have : ∀ u ∈ (insert v α.support).erase v,
      ((α + Finsupp.single v 1 : σ →₀ ℕ) u).factorial = (α u).factorial := by
    intro u hu
    rw [Finsupp.add_apply, Finsupp.single_apply, if_neg (Finset.ne_of_mem_erase hu).symm, add_zero]
  rw [Finset.prod_congr rfl this, Finsupp.add_apply, Finsupp.single_eq_same, Nat.factorial_succ]
  ring

def form0 (P Q : MvPolynomial σ ℂ) : ℂ :=
  ∑ α ∈ Q.support, (fct α : ℂ) * (star (AddMonoidAlgebra.coeff P α) * AddMonoidAlgebra.coeff Q α)

theorem fischerSumSupport_eq_sum_factorial_coeff (P Q : MvPolynomial σ ℂ) (s : Finset (σ →₀ ℕ)) (h : Q.support ⊆ s) :
    form0 P Q = ∑ α ∈ s, (fct α : ℂ) * (star (AddMonoidAlgebra.coeff P α) * AddMonoidAlgebra.coeff Q α) := by
  unfold form0
  apply Finset.sum_subset h
  intro α _ hα
  rw [notMem_support_iff.mp hα]; simp

def form : MvPolynomial σ ℂ →ₗ⋆[ℂ] MvPolynomial σ ℂ →ₗ[ℂ] ℂ :=
  LinearMap.mk₂'ₛₗ (starRingEnd ℂ) (RingHom.id ℂ) form0
    (fun P P' Q => by
      rw [fischerSumSupport_eq_sum_factorial_coeff (P + P') Q Q.support subset_rfl, fischerSumSupport_eq_sum_factorial_coeff P Q Q.support subset_rfl,
        fischerSumSupport_eq_sum_factorial_coeff P' Q Q.support subset_rfl, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun α _ => ?_
      simp only [MvPolynomial.coeff_add, star_add]; ring)
    (fun c P Q => by
      rw [fischerSumSupport_eq_sum_factorial_coeff (c • P) Q Q.support subset_rfl, fischerSumSupport_eq_sum_factorial_coeff P Q _ subset_rfl, smul_eq_mul, Finset.mul_sum]
      refine Finset.sum_congr rfl fun α _ => ?_
      simp only [MvPolynomial.coeff_smul, smul_eq_mul, star_mul']; simp only [Complex.star_def]; ring)
    (fun P Q Q' => by
      classical
      rw [fischerSumSupport_eq_sum_factorial_coeff P (Q + Q') (Q.support ∪ Q'.support) support_add,
        fischerSumSupport_eq_sum_factorial_coeff P Q (Q.support ∪ Q'.support) Finset.subset_union_left,
        fischerSumSupport_eq_sum_factorial_coeff P Q' (Q.support ∪ Q'.support) Finset.subset_union_right,
        ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun α _ => ?_
      simp only [MvPolynomial.coeff_add]; ring)
    (fun c P Q => by
      rw [fischerSumSupport_eq_sum_factorial_coeff P (c • Q) Q.support support_smul, fischerSumSupport_eq_sum_factorial_coeff P Q _ subset_rfl, smul_eq_mul,
        Finset.mul_sum]
      refine Finset.sum_congr rfl fun α _ => ?_
      simp only [MvPolynomial.coeff_smul, smul_eq_mul, RingHom.id_apply]; ring)

theorem form_eq (P Q : MvPolynomial σ ℂ) (s : Finset (σ →₀ ℕ)) (h : Q.support ⊆ s) :
    form P Q = ∑ α ∈ s, (fct α : ℂ) * (star (AddMonoidAlgebra.coeff P α) * AddMonoidAlgebra.coeff Q α) := fischerSumSupport_eq_sum_factorial_coeff P Q s h

theorem form_symm (P Q : MvPolynomial σ ℂ) : form P Q = star (form Q P) := by
  classical
  rw [form_eq P Q (P.support ∪ Q.support) Finset.subset_union_right,
    form_eq Q P (P.support ∪ Q.support) Finset.subset_union_left, star_sum]
  refine Finset.sum_congr rfl fun α _ => ?_
  simp [star_mul', mul_comm]

theorem form_self (P : MvPolynomial σ ℂ) :
    form P P = ((∑ α ∈ P.support, (fct α : ℝ) * Complex.normSq (AddMonoidAlgebra.coeff P α) : ℝ) : ℂ) := by
  rw [form_eq P P P.support subset_rfl]
  push_cast
  refine Finset.sum_congr rfl fun α _ => ?_
  rw [Complex.normSq_eq_conj_mul_self]; rfl

theorem form_self_nonneg (P : MvPolynomial σ ℂ) : (form P P).im = 0 ∧ 0 ≤ (form P P).re := by
  rw [form_self, Complex.ofReal_im, Complex.ofReal_re]
  exact ⟨rfl, Finset.sum_nonneg fun α _ => mul_nonneg (Nat.cast_nonneg _) (Complex.normSq_nonneg _)⟩

theorem form_self_eq_zero (P : MvPolynomial σ ℂ) (h : form P P = 0) : P = 0 := by
  rw [form_self, Complex.ofReal_eq_zero,
    Finset.sum_eq_zero_iff_of_nonneg (fun α _ => mul_nonneg (Nat.cast_nonneg _) (Complex.normSq_nonneg _))] at h
  ext α
  change P.coeff α = 0
  by_contra hne
  have := h α (mem_support_iff.mpr hne)
  rcases mul_eq_zero.mp this with h1 | h1
  · exact (Nat.cast_ne_zero.mpr (fct_pos α).ne') h1
  · exact hne (Complex.normSq_eq_zero.mp h1)

end GlobalTheory.FockMonoForm

end

noncomputable section

namespace GlobalTheory.FockMonoForm

open MvPolynomial

variable {σ : Type} [DecidableEq σ]

theorem form_monomial (γ δ : σ →₀ ℕ) (c d : ℂ) :
    form (monomial γ c) (monomial δ d) = if γ = δ then (fct δ : ℂ) * (star c * d) else 0 := by
  rw [form_eq _ _ {δ} support_monomial_subset, Finset.sum_singleton, coeff_monomial, coeff_monomial,
    if_pos rfl]
  split_ifs <;> simp

theorem form_X_mul (v : σ) (P Q : MvPolynomial σ ℂ) : form (X v * P) Q = form P (pderiv v Q) := by
  induction P using MvPolynomial.induction_on' with
  | monomial γ c =>
    induction Q using MvPolynomial.induction_on' with
    | monomial δ d =>
      rw [X, monomial_mul, pderiv_monomial, form_monomial, form_monomial, one_mul]
      by_cases hv : δ v = 0
      · rw [hv, if_neg]
        · simp
        · intro h
          have := congrArg (fun f : σ →₀ ℕ => f v) h
          simp only [Finsupp.add_apply, Finsupp.single_eq_same] at this
          omega
      · obtain ⟨α, rfl⟩ : ∃ α, δ = α + Finsupp.single v 1 :=
          ⟨δ - Finsupp.single v 1, (tsub_add_cancel_of_le (Finsupp.single_le_iff.mpr (Nat.one_le_iff_ne_zero.mpr hv))).symm⟩
        rw [add_tsub_cancel_right, add_comm (Finsupp.single v 1) γ]
        simp only [add_left_inj]
        rw [fct_add_single,
          Finsupp.add_apply, Finsupp.single_eq_same]
        split_ifs
        · push_cast; ring
        · rfl
    | add Q Q' hQ hQ' => rw [map_add (f := _), map_add (f := _), map_add (f := _), hQ, hQ']
  | add P P' hP hP' =>
    rw [mul_add, map_add (f := _), map_add (f := _), LinearMap.add_apply, LinearMap.add_apply, hP, hP']

theorem form_pderiv (v : σ) (P Q : MvPolynomial σ ℂ) : form (pderiv v P) Q = form P (X v * Q) := by
  rw [form_symm, ← form_X_mul, ← form_symm]

end GlobalTheory.FockMonoForm

end

noncomputable section

namespace GlobalTheory.LowestKType

open MvPolynomial GlobalTheory.FockMonoForm GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} {n m : ℕ}

def FAdj (T S : Module.End ℂ (PolF D m n)) : Prop := ∀ P Q, form (T P) Q = form P (S Q)

theorem fadj_add {T S T' S' : Module.End ℂ (PolF D m n)} (h : FAdj T S) (h' : FAdj T' S') :
    FAdj (T + T') (S + S') := by
  intro P Q; simp only [LinearMap.add_apply, map_add (f := _), h P Q, h' P Q]

theorem fadj_mul {T S T' S' : Module.End ℂ (PolF D m n)} (h : FAdj T S) (h' : FAdj T' S') :
    FAdj (T * T') (S' * S) := by
  intro P Q; rw [Module.End.mul_apply, Module.End.mul_apply, h, h']

theorem fadj_neg {T S : Module.End ℂ (PolF D m n)} (h : FAdj T S) : FAdj (-T) (-S) := by
  intro P Q; simp only [LinearMap.neg_apply, map_neg, h P Q]

theorem fadj_sum {ι : Type} (s : Finset ι) (T S : ι → Module.End ℂ (PolF D m n))
    (h : ∀ i ∈ s, FAdj (T i) (S i)) : FAdj (∑ i ∈ s, T i) (∑ i ∈ s, S i) := by
  intro P Q

  rw [LinearMap.sum_apply, map_sum, LinearMap.sum_apply, LinearMap.sum_apply, map_sum]
  exact Finset.sum_congr rfl fun i hi => h i hi P Q

theorem fadj_X {_ : DecidableEq (FVar D m n)} (v : FVar D m n) :
    FAdj (LinearMap.mulLeft ℂ (X v)) (pderiv v).toLinearMap := fun P Q => form_X_mul v P Q

theorem fadj_d {_ : DecidableEq (FVar D m n)} (v : FVar D m n) :
    FAdj (pderiv v).toLinearMap (LinearMap.mulLeft ℂ (X v)) := fun P Q => form_pderiv v P Q

theorem kop_eq (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin m) :
    kop w τ a b = ∑ j, (raiO τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) a j *
      lowO τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) b j +
        if a = b then (1 / 2 : ℂ) • 1 else 0) := by
  unfold kop fockT
  rw [Finset.sum_eq_single a, Finset.sum_eq_single b]
  · simp
  · intro k _ hk; simp [Ne.symm hk]
  · simp
  · intro k _ hk; simp [Ne.symm hk]
  · simp

theorem fadj_term (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin m) (j : Fin n) (h : Cpt w τ a b) :
    FAdj (raiO τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) a j *
      lowO τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) b j)
      (raiO τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) b j *
      lowO τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) a j) := by
  classical
  unfold Cpt at h
  unfold raiO lowO sgn
  by_cases ha : (a : ℕ) < w.p τ
  · have hb := h.mp ha
    simp [ha, hb]
    have h1 := @fadj_X D n m (fun a b => Classical.propDecidable (a = b)) (τ, a, j)
    have h2 := @fadj_d D n m (fun a b => Classical.propDecidable (a = b)) (τ, b, j)
    exact fadj_mul h1 h2
  · have hb : ¬ (b : ℕ) < w.p τ := fun hb => ha (h.mpr hb)
    simp [ha, hb]
    have h1 := @fadj_d D n m (fun a b => Classical.propDecidable (a = b)) (τ, a, j)
    have h2 := @fadj_X D n m (fun a b => Classical.propDecidable (a = b)) (τ, b, j)
    exact fadj_neg (fadj_mul h1 h2)

theorem fadj_half (a b : Fin m) :
    FAdj (D := D) (n := n) (m := m) (if a = b then (1 / 2 : ℂ) • 1 else 0) (if b = a then (1 / 2 : ℂ) • 1 else 0) := by
  intro P Q
  by_cases h : a = b
  · subst h
    simp only [if_true, LinearMap.smul_apply, Module.End.one_apply, LinearMap.map_smulₛₗ₂, map_smul]
    simp [map_ofNat]
  · simp [h, Ne.symm h]

theorem fockForm_kop_adjoint : ∀ (D : D7) (n m : ℕ), ∃ B : PolF D m n →ₗ⋆[ℂ] PolF D m n →ₗ[ℂ] ℂ,
    (∀ P, (B P P).im = 0 ∧ 0 ≤ (B P P).re) ∧ (∀ P, B P P = 0 → P = 0) ∧
      ∀ (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin m), GlobalTheory.LowestKType.Cpt w τ a b →
        ∀ P Q, B (GlobalTheory.LowestKType.kop w τ a b P) Q = B P (GlobalTheory.LowestKType.kop w τ b a Q) := by
  intro D n m
  refine ⟨form, form_self_nonneg, form_self_eq_zero, fun w τ a b h P Q => ?_⟩
  rw [kop_eq, kop_eq]
  exact fadj_sum _ _ _ (fun j _ => fadj_add (fadj_term w τ a b j h) (fadj_half a b)) P Q

end GlobalTheory.LowestKType

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockInnerProductPosDefCompactMatrixUnitAdjoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetMatrixUnitCompactTotalDegreeLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetMatrixUnitCompactTotalDegreeLe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKHwMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

noncomputable section

namespace GlobalTheory.LowestKType.DegBound

theorem deg_X_mul_pderiv {σ : Type} (a b : σ) (P : MvPolynomial σ ℂ) :
    (MvPolynomial.X a * MvPolynomial.pderiv b P).totalDegree ≤ P.totalDegree := by
  classical
  set_option synthInstance.maxHeartbeats 100000 in
    conv_lhs => rw [P.as_sum, map_sum, Finset.mul_sum]
  refine (MvPolynomial.totalDegree_finsetSum _ _).trans (Finset.sup_le fun s hs => ?_)
  rw [MvPolynomial.pderiv_monomial]
  by_cases h : s b = 0
  · simp [h]
  · refine le_trans ?_ (MvPolynomial.le_totalDegree hs)
    rw [MvPolynomial.X, MvPolynomial.monomial_mul]
    refine (MvPolynomial.totalDegree_monomial_le _ _).trans (le_of_eq ?_)
    have h1 : s = Finsupp.single b 1 + (s - Finsupp.single b 1) := by
      rw [add_tsub_cancel_of_le]
      exact Finsupp.single_le_iff.2 (Nat.one_le_iff_ne_zero.2 h)
    conv_rhs => rw [h1]
    rw [Finsupp.sum_add_index' (by simp) (by simp), Finsupp.sum_add_index' (by simp) (by simp)]
    simp [Function.id_def]

theorem deg_pderiv_X_mul {σ : Type} (a b : σ) (P : MvPolynomial σ ℂ) :
    (MvPolynomial.pderiv b (MvPolynomial.X a * P)).totalDegree ≤ P.totalDegree := by
  classical
  rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
  refine (MvPolynomial.totalDegree_add _ _).trans (max_le (deg_X_mul_pderiv _ _ _) ?_)
  rw [MvPolynomial.pderiv_X, Pi.single_apply]
  split_ifs <;> simp

def nonRaising (σ : Type) : Submodule ℂ (Module.End ℂ (MvPolynomial σ ℂ)) where
  carrier := {L | ∀ P, (L P).totalDegree ≤ P.totalDegree}
  add_mem' {L L'} h h' P := (MvPolynomial.totalDegree_add _ _).trans (max_le (h P) (h' P))
  zero_mem' P := by simp
  smul_mem' c L h P := (MvPolynomial.totalDegree_smul_le _ _).trans (h P)

theorem one_mem_nonRaising (σ : Type) : (1 : Module.End ℂ (MvPolynomial σ ℂ)) ∈ nonRaising σ :=
  fun _ => le_rfl

end GlobalTheory.LowestKType.DegBound

namespace GlobalTheory.LowestKType

open GlobalTheory.LowestKType.DegBound

theorem kop_totalDegree_le (D : D7) (n m : ℕ) (w : GlobalTheory.ExportSeries.Weight D n) (τ : D.what₂.Tau) (a b : Fin m)
    (hab : Cpt w τ a b) (d : ℕ) (P : PolF D m n) (hP : P.totalDegree ≤ d) :
    (kop w τ a b P).totalDegree ≤ d := by
  classical
  refine le_trans ?_ hP
  suffices h : kop w τ a b ∈ nonRaising (FVar D m n) from h P
  unfold kop GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT
  refine Submodule.sum_mem _ fun i _ => Submodule.sum_mem _ fun l _ => ?_
  by_cases hil : i = a ∧ l = b
  · obtain ⟨rfl, rfl⟩ := hil
    refine Submodule.smul_mem _ _ (Submodule.sum_mem _ fun j _ => Submodule.add_mem _ ?_ ?_)
    · intro Q
      simp only [GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.raiO, GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.lowO, GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.sgn, if_true, one_smul]
      unfold Cpt at hab
      by_cases hi : (i : ℕ) < w.p τ
      · have hl : (l : ℕ) < w.p τ := hab.1 hi
        simp only [hi, hl, decide_true, if_true, Module.End.mul_apply, LinearMap.mulLeft_apply]
        exact deg_X_mul_pderiv _ _ _
      · have hl : ¬ (l : ℕ) < w.p τ := fun h => hi (hab.2 h)
        simp only [hi, hl, decide_false, Bool.false_eq_true, if_false, Module.End.mul_apply,
          LinearMap.mulLeft_apply, LinearMap.neg_apply,
          MvPolynomial.totalDegree_neg]
        exact deg_pderiv_X_mul _ _ _
    · split_ifs
      · exact Submodule.smul_mem _ _ (one_mem_nonRaising _)
      · exact Submodule.zero_mem _
  · have : Matrix.single a b (1 : ℂ) i l = 0 := by
      rw [Matrix.single_apply]
      split_ifs with h
      · exact absurd ⟨h.1.symm, h.2.symm⟩ hil
      · rfl
    rw [this, zero_smul]
    exact Submodule.zero_mem _

end GlobalTheory.LowestKType
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetMatrixUnitCompactTotalDegreeLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetMatrixUnitCompactTotalDegreeLeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetMatrixUnitCompactTotalDegreeLeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKHwMap\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetMatrixUnitCompactTotalDegreeLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ParamsEx\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetMatrixUnitCompactTotalDegreeLeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleOfAnisotropicFormHighestWeight =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleOfAnisotropicFormHighestWeight", "h": "module\n\npublic import Mathlib.Algebra.Module.LinearMap.Star\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dimension.Constructions\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.DownLift

theorem abstract_irreducible_of_highestWeight (V : Type) [AddCommGroup V] [Module ℂ V]
    (U : Submodule ℂ V) (hfin : FiniteDimensional ℂ U) (J : Type) (E : J → Module.End ℂ V)
    (st : J → J) (B : V →ₗ⋆[ℂ] V →ₗ[ℂ] ℂ) (Hw : V → Prop)
    (hU : ∀ j, ∀ x ∈ U, E j x ∈ U) (han : ∀ x ∈ U, B x x = 0 → x = 0)
    (hadj : ∀ j x y, B (E j x) y = B x (E (st j) y)) (hst : ∀ j, st (st j) = j)
    (hex : ∀ T : Submodule ℂ V, T ≤ U → T ≠ ⊥ → (∀ j, ∀ x ∈ T, E j x ∈ T) →
      ∃ x ∈ T, x ≠ 0 ∧ Hw x)
    (hprop : ∀ x y, x ∈ U → y ∈ U → Hw x → Hw y → x ≠ 0 → ∃ c : ℂ, y = c • x)
    (S : Submodule ℂ V) (hSU : S ≤ U) (hS : S ≠ ⊥) (hSE : ∀ j, ∀ x ∈ S, E j x ∈ S) :
    S = U := by
  classical
  let P : Submodule ℂ V := U ⊓ ⨅ s : S, LinearMap.ker (B (s : V))
  have hP : ∀ y, y ∈ P ↔ y ∈ U ∧ ∀ s ∈ S, B s y = 0 := by
    intro y
    simp [P, Submodule.mem_iInf]
  have hPbot : P = ⊥ := by
    by_contra hne
    have hPE : ∀ j, ∀ x ∈ P, E j x ∈ P := by
      intro j y hy
      rw [hP] at hy ⊢
      refine ⟨hU j y hy.1, fun s hs => ?_⟩
      have h := hadj (st j) s y
      rw [hst] at h
      rw [← h]
      exact hy.2 _ (hSE _ _ hs)
    obtain ⟨y, hyP, hy0, hyw⟩ := hex P inf_le_left hne hPE
    obtain ⟨x, hxS, hx0, hxw⟩ := hex S hSU hS hSE
    rw [hP] at hyP
    obtain ⟨c, hc⟩ := hprop x y (hSU hxS) hyP.1 hxw hyw hx0
    have hyS : y ∈ S := hc ▸ S.smul_mem c hxS
    exact hy0 (han y hyP.1 (hyP.2 y hyS))
  haveI : FiniteDimensional ℂ S := Submodule.finiteDimensional_of_le hSU
  let b := Module.finBasis ℂ S
  let φ : U →ₗ[ℂ] (Fin (Module.finrank ℂ S) → ℂ) :=
    LinearMap.pi fun i => (B (b i : V)).comp U.subtype
  have hφ : Function.Injective φ := by
    rw [← LinearMap.ker_eq_bot, eq_bot_iff]
    intro y hy
    have hy' : ∀ i, B (b i : V) (y : V) = 0 := fun i => congrFun (LinearMap.mem_ker.mp hy) i
    have hyP : (y : V) ∈ P := by
      rw [hP]
      refine ⟨y.2, fun s hs => ?_⟩
      have h := congrArg (fun z : S => (z : V)) (b.sum_repr ⟨s, hs⟩)
      simp only [Submodule.coe_sum, Submodule.coe_smul] at h

      rw [← h, map_sum, LinearMap.sum_apply]
      refine Finset.sum_eq_zero fun i _ => ?_
      rw [LinearMap.map_smulₛₗ, LinearMap.smul_apply, hy', smul_zero]
    rw [hPbot, Submodule.mem_bot] at hyP
    rw [Submodule.mem_bot]
    exact Subtype.ext hyP
  have hle := LinearMap.finrank_le_finrank_of_injective hφ
  rw [Module.finrank_fin_fun] at hle
  exact Submodule.eq_of_le_of_finrank_le hSU hle

end GlobalTheory.DownLift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleOfAnisotropicFormHighestWeight =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleOfAnisotropicFormHighestWeightStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleOfAnisotropicFormHighestWeightStatement", "h": "module\n\npublic import Mathlib.Algebra.Module.LinearMap.Star\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleOfAnisotropicFormHighestWeight\npublic import Formalism.LocalRingCardinality.DataHost\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.DataTheta\nimport Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange\nimport Formalism.LocalToGlobal.Divisibility.CoefMod\nimport Formalism.LocalToGlobal.IndefiniteForms.IndefSide\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\nimport Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\nimport Formalism.LocalToGlobal.IndefiniteReal.PartsOrth\nimport Formalism.LocalToGlobal.IndefiniteReal.ScalarOnPartsFull\nimport Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GapAtLeast\nimport Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleOfAnisotropicFormHighestWeightStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitaryBasisGeneralLinearSeries =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitaryBasisGeneralLinearSeries", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.RaisingLoweringOperators\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TranslateMemCoefLatFn\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsKHwMap\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsHighestWeightKTypeMap\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSourceHighestWeightFockStableSubspace\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockInnerProductPosDefCompactMatrixUnitAdjoint\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockPolynomialSubstitutionCommuteTargetGlAction\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetGlActionCompactPreservesJointHarmonics\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetMatrixUnitCompactTotalDegreeLeStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsIrreducibleOfAnisotropicFormHighestWeightStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.JointHarmonicHighestWeightMultiplicityOneStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitaryRepresentativesExistVectorStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

namespace GlobalTheory.LowestKType

theorem lowestKType_irreducible : ∀ (D : D7) (n m : ℕ) (w : GlobalTheory.ExportSeries.Weight D n) (BS : GlobalTheory.ExportSeries.GLR D n) (K : Type) [Group K] (r : K →* GlobalTheory.ExportSeries.GLR D n), (∀ (k : K) (τ : D.what₂.Tau), ((GlobalTheory.ExportSeries.inBasis BS (r k) τ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) ∈ Matrix.unitaryGroup (Fin n) ℂ) → (∀ g : GlobalTheory.ExportSeries.GLR D n, (∀ τ, ((GlobalTheory.ExportSeries.inBasis BS g τ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) ∈ Matrix.unitaryGroup (Fin n) ℂ) → ∃ k, r k = g) → ∀ (W : Type) [AddCommGroup W] [Module ℂ W] [FiniteDimensional ℂ W] (ρ : K →* Module.End ℂ W), (∀ U : Submodule ℂ W, (∀ k, U.map (ρ k) ≤ U) → U = ⊥ ∨ U = ⊤) → ∀ S : Submodule ℂ (W →ₗ[ℂ] PolF D m n), (∀ ψ ∈ S, ∀ (k : K) (w' : W), ψ (ρ k w') = GlobalTheory.ExportSeries.fockGL m w BS (r k) (ψ w')) → (∀ ψ ∈ S, ∀ w' : W, ∀ (τ' : D.what₂.Tau) (i l : Fin m), w.p τ' ≤ (i : ℕ) → (l : ℕ) < w.p τ' → GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT τ' (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ')) (Matrix.single i l (1 : ℂ)) (ψ w') = 0) → (∀ ψ ∈ S, ∀ (τ : D.what₂.Tau) (a b : Fin m), ((a : ℕ) < w.p τ ↔ (b : ℕ) < w.p τ) → GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) (Matrix.single a b (1 : ℂ)) ∘ₗ ψ ∈ S) → S ≠ ⊥ → ∀ φ : W →ₗ[ℂ] PolF D m n, (∀ (k : K) (w' : W), φ (ρ k w') = GlobalTheory.ExportSeries.fockGL m w BS (r k) (φ w')) → (∀ w' : W, ∀ (τ' : D.what₂.Tau) (i l : Fin m), w.p τ' ≤ (i : ℕ) → (l : ℕ) < w.p τ' → GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT τ' (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ')) (Matrix.single i l (1 : ℂ)) (φ w') = 0) → φ ∈ S := by
  intro D n m w BS K _ r hU1 hU2 W _ _ _ ρ hρ S hSeq hSharm hSstab hS0 φ hφeq hφharm
  classical
  have hinj : ∀ ψ : W →ₗ[ℂ] PolF D m n, (∀ (k : K) (x : W), ψ (ρ k x) = GlobalTheory.ExportSeries.fockGL m w BS (r k) (ψ x)) →
      ψ ≠ 0 → Function.Injective ψ := by
    intro ψ hψ h0
    rw [← LinearMap.ker_eq_bot]
    rcases hρ (LinearMap.ker ψ) (fun k => Submodule.map_le_iff_le_comap.2 fun x hx => by
      simp only [Submodule.mem_comap, LinearMap.mem_ker] at hx ⊢
      rw [hψ, hx, map_zero]) with h | h
    · exact h
    · exact absurd (LinearMap.ext fun x => by
        have : x ∈ LinearMap.ker ψ := h ▸ Submodule.mem_top
        simpa using this) h0
  obtain ⟨s, hsS, hs0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hS0
  have hseq := hSeq s hsS
  have hsinj := hinj s hseq hs0
  choose A hA using fun τ a b => _root_.GlobalTheory.UnitaryToGl.exists_transport_sop D n m w BS K r hU2 W ρ s hsinj hseq τ a b
  have hV0 : LinearMap.range s ≠ ⊥ := by rwa [Ne, LinearMap.range_eq_bot]
  have hVst : ∀ P ∈ LinearMap.range s, ∀ (τ : D.what₂.Tau) (a b : Fin n),
      GlobalTheory.LowestKType.sop w τ a b P ∈ LinearMap.range s := by
    rintro _ ⟨x, rfl⟩ τ a b
    exact ⟨A τ a b x, by simpa using LinearMap.congr_fun (hA τ a b s hseq) x⟩
  obtain ⟨P0, ⟨w0, rfl⟩, hP0, lam, hlam⟩ := _root_.GlobalTheory.exists_nHw_of_fockS_stable D n m w _ inferInstance hV0 hVst
  have hw0 : w0 ≠ 0 := by rintro rfl; exact hP0 (map_zero s)
  have hN : ∀ φ' : W →ₗ[ℂ] PolF D m n,
      (∀ (k : K) (x : W), φ' (ρ k x) = GlobalTheory.ExportSeries.fockGL m w BS (r k) (φ' x)) →
      GlobalTheory.LowestKType.IsNHw w lam (φ' w0) := by
    intro φ' hφ'
    refine ⟨fun τ a b hab => ?_, fun τ a => ?_⟩
    · have h1 : s (A τ a b w0) = 0 := by
        rw [show s (A τ a b w0) = GlobalTheory.LowestKType.sop w τ a b (s w0) from LinearMap.congr_fun (hA τ a b s hseq) w0]
        exact hlam.1 τ a b hab
      have h2 : A τ a b w0 = 0 := hsinj (by rw [h1, map_zero])
      have h3 := LinearMap.congr_fun (hA τ a b φ' hφ') w0
      simp only [LinearMap.comp_apply, h2, map_zero] at h3
      exact h3.symm
    · have h1 : s (A τ a a w0) = s (lam τ a • w0) := by
        rw [show s (A τ a a w0) = GlobalTheory.LowestKType.sop w τ a a (s w0) from LinearMap.congr_fun (hA τ a a s hseq) w0,
          map_smul]
        exact hlam.2 τ a
      have h3 := LinearMap.congr_fun (hA τ a a φ' hφ') w0
      simp only [LinearMap.comp_apply, hsinj h1, map_smul] at h3
      exact h3.symm
  let J := {j : D.what₂.Tau × Fin m × Fin m // GlobalTheory.LowestKType.Cpt w j.1 j.2.1 j.2.2}
  let E : J → Module.End ℂ (W →ₗ[ℂ] PolF D m n) := fun j =>
    LinearMap.llcomp ℂ W (PolF D m n) (PolF D m n) (GlobalTheory.LowestKType.kop w j.1.1 j.1.2.1 j.1.2.2)
  have hE : ∀ j ψ, E j ψ = GlobalTheory.LowestKType.kop w j.1.1 j.1.2.1 j.1.2.2 ∘ₗ ψ := fun _ _ => rfl
  let st : J → J := fun j => ⟨(j.1.1, j.1.2.2, j.1.2.1), Iff.symm j.2⟩
  obtain ⟨B, hBpos, hBani, hBadj⟩ := _root_.GlobalTheory.LowestKType.fockForm_kop_adjoint D n m
  let e := Module.finBasis ℂ W
  let BM : (W →ₗ[ℂ] PolF D m n) →ₗ⋆[ℂ] (W →ₗ[ℂ] PolF D m n) →ₗ[ℂ] ℂ :=
    LinearMap.mk₂'ₛₗ (starRingEnd ℂ) (RingHom.id ℂ) (fun ψ χ => ∑ i, B (ψ (e i)) (χ (e i)))
      (fun ψ ψ' χ => by simp [Finset.sum_add_distrib])
      (fun c ψ χ => by simp [Finset.mul_sum])
      (fun ψ χ χ' => by simp [Finset.sum_add_distrib])
      (fun c ψ χ => by simp [Finset.mul_sum])
  have hBM : ∀ ψ χ, BM ψ χ = ∑ i, B (ψ (e i)) (χ (e i)) := fun _ _ => rfl
  have hBMani : ∀ ψ : W →ₗ[ℂ] PolF D m n, BM ψ ψ = 0 → ψ = 0 := by
    intro ψ h
    rw [hBM] at h
    have hre : ∑ i, (B (ψ (e i)) (ψ (e i))).re = 0 := by
      have := congrArg Complex.re h
      simpa [Complex.re_sum] using this
    have hz : ∀ i, B (ψ (e i)) (ψ (e i)) = 0 := fun i => by
      have := (Finset.sum_eq_zero_iff_of_nonneg (fun i _ => (hBpos (ψ (e i))).2)).1 hre i (Finset.mem_univ _)
      exact Complex.ext this (hBpos _).1
    exact e.ext fun i => by rw [hBani _ (hz i), LinearMap.zero_apply]
  have hBMadj : ∀ j ψ χ, BM (E j ψ) χ = BM ψ (E (st j) χ) := by
    intro j ψ χ
    simp only [hBM, hE, LinearMap.comp_apply]
    exact Finset.sum_congr rfl fun i _ => hBadj w _ _ _ j.2 _ _
  obtain ⟨d, hdφ, hds⟩ : ∃ d, (∀ i, (φ (e i)).totalDegree ≤ d) ∧ ∀ i, (s (e i)).totalDegree ≤ d :=
    ⟨Finset.univ.sup (fun i => (φ (e i)).totalDegree) ⊔ Finset.univ.sup (fun i => (s (e i)).totalDegree),
      fun i => le_sup_of_le_left (Finset.le_sup (f := fun i => (φ (e i)).totalDegree) (Finset.mem_univ i)),
      fun i => le_sup_of_le_right (Finset.le_sup (f := fun i => (s (e i)).totalDegree) (Finset.mem_univ i))⟩
  have hdeg : ∀ ψ : W →ₗ[ℂ] PolF D m n, (∀ i, (ψ (e i)).totalDegree ≤ d) →
      ∀ x, ψ x ∈ MvPolynomial.restrictTotalDegree (FVar D m n) ℂ d := by
    intro ψ hψ x

    rw [← e.sum_repr x, map_sum]
    exact Submodule.sum_mem _ fun i _ => by
      rw [map_smul]
      exact Submodule.smul_mem _ _ ((MvPolynomial.mem_restrictTotalDegree _ _ _).2 (hψ i))
  let U : Submodule ℂ (W →ₗ[ℂ] PolF D m n) :=
    { carrier := {ψ | (∀ (k : K) (x : W), ψ (ρ k x) = GlobalTheory.ExportSeries.fockGL m w BS (r k) (ψ x)) ∧
        (∀ x, GlobalTheory.LowestKType.IsHarm w (ψ x)) ∧ ∀ x, ψ x ∈ MvPolynomial.restrictTotalDegree (FVar D m n) ℂ d}
      add_mem' := by
        rintro ψ χ ⟨h1, h2, h3⟩ ⟨g1, g2, g3⟩
        refine ⟨fun k x => by simp [h1, g1], fun x τ i l hi hl => ?_, fun x => add_mem (h3 x) (g3 x)⟩
        simp only [LinearMap.add_apply, map_add (f := _), h2 x τ i l hi hl, g2 x τ i l hi hl, add_zero]
      zero_mem' := ⟨fun k x => by simp, fun x τ i l _ _ => by simp, fun x => zero_mem _⟩
      smul_mem' := by
        rintro c ψ ⟨h1, h2, h3⟩
        refine ⟨fun k x => by simp [h1], fun x τ i l hi hl => ?_, fun x => Submodule.smul_mem _ c (h3 x)⟩
        simp only [LinearMap.smul_apply, map_smul, h2 x τ i l hi hl, smul_zero] }
  have hUfd : FiniteDimensional ℂ U := by
    let f : U →ₗ[ℂ] (Fin (Module.finrank ℂ W) → MvPolynomial.restrictTotalDegree (FVar D m n) ℂ d) :=
      { toFun := fun ψ i => ⟨(ψ : W →ₗ[ℂ] PolF D m n) (e i), ψ.2.2.2 (e i)⟩
        map_add' := fun _ _ => by ext; simp
        map_smul' := fun _ _ => by ext; simp }
    exact Module.Finite.of_injective f (fun ψ χ h => Subtype.ext (e.ext fun i => by
      have := congrArg (fun g => (g i : PolF D m n)) h
      simpa [f] using this))
  have hUst : ∀ j, ∀ ψ ∈ U, E j ψ ∈ U := by
    rintro ⟨⟨τ, a, b⟩, hab⟩ ψ ⟨h1, h2, h3⟩
    refine ⟨fun k x => ?_, fun x => ?_, fun x => ?_⟩
    · show GlobalTheory.LowestKType.kop w τ a b (ψ (ρ k x)) =
        GlobalTheory.ExportSeries.fockGL m w BS (r k) (GlobalTheory.LowestKType.kop w τ a b (ψ x))
      rw [h1, GlobalTheory.ExportSeries.fockGL_apply, GlobalTheory.ExportSeries.fockGL_apply, map_smul]
      congr 1
      exact (GlobalTheory.FockSubstComm.fockSubst_fockT D m n w.p _ τ _ _).symm
    · exact GlobalTheory.CompactHarm.fockT_compact_harm D n m w.p (ψ x) (h2 x) τ a b hab
    · exact (MvPolynomial.mem_restrictTotalDegree _ _ _).2
        (_root_.GlobalTheory.LowestKType.kop_totalDegree_le D n m w τ a b hab d _ ((MvPolynomial.mem_restrictTotalDegree _ _ _).1 (h3 x)))
  have hsU : s ∈ U := ⟨hseq, hSharm s hsS, hdeg s hds⟩
  have hφU : φ ∈ U := ⟨hφeq, hφharm, hdeg φ hdφ⟩
  have hKHw : ∀ x : W →ₗ[ℂ] PolF D m n, GlobalTheory.LowestKType.IsKHwMap w x → GlobalTheory.LowestKType.IsKHw w (x w0) :=
    fun x hxh => ⟨fun τ a b hab hlt => by simpa using LinearMap.congr_fun (hxh.1 τ a b hab hlt) w0,
      fun τ a => (hxh.2 τ a).imp fun c hc => by simpa using LinearMap.congr_fun hc w0⟩
  have key := _root_.GlobalTheory.DownLift.abstract_irreducible_of_highestWeight (W →ₗ[ℂ] PolF D m n) U hUfd J E st BM (GlobalTheory.LowestKType.IsKHwMap w) hUst
    (fun x _ => hBMani x) hBMadj (fun j => rfl)
    (fun T hTU hT0 hTst => by
      haveI : FiniteDimensional ℂ T := Submodule.finiteDimensional_of_le hTU
      exact _root_.GlobalTheory.KHwExist.exists_kHwMap D n m w W T inferInstance hT0 (fun ψ hψ τ a b hab => hTst ⟨(τ, a, b), hab⟩ ψ hψ))
    (fun x y hx hy hxh hyh hx0 => by
      obtain ⟨c, hc⟩ := _root_.GlobalTheory.HarmLine.joint_line D n m w lam (x w0) (y w0)
        (fun h => hw0 (hinj x hx.1 hx0 (h.trans (map_zero x).symm))) (hx.2.1 w0) (hy.2.1 w0)
        (hN x hx.1) (hN y hy.1) (hKHw x hxh) (hKHw y hyh)
      refine ⟨c, ?_⟩
      by_contra hne
      have h0 : y - c • x ≠ 0 := sub_ne_zero.2 hne
      have := hinj (y - c • x) (fun k z => by simp [hx.1, hy.1]) h0
        (show (y - c • x) w0 = (y - c • x) 0 by simp [hc])
      exact hw0 this)
  have hS'U : S ⊓ U = U := key (S ⊓ U) inf_le_right (by
      intro h
      apply hs0
      have : s ∈ S ⊓ U := ⟨hsS, hsU⟩
      rw [h] at this
      exact (Submodule.mem_bot ℂ).1 this)
    (fun j ψ hψ => ⟨hSstab ψ hψ.1 j.1.1 j.1.2.1 j.1.2.2 j.2, hUst j ψ hψ.2⟩)
  have : φ ∈ S ⊓ U := by rw [hS'U]; exact hφU
  exact this.1

end GlobalTheory.LowestKType
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitaryBasisGeneralLinearSeries =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HoweDualityCompactPairPolynomialFockAllRealPlace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HoweDualityCompactPairPolynomialFockAllRealPlace", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.RaisingLoweringOperators\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TranslateMemCoefLatFn\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsJointHarmonicOfLoweringStableSubmodule\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockTargetGlActionCompactPreservesJointHarmonics\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemOfRaisingOperatorsJointHarmonics\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitaryBasisGeneralLinearSeries\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift
namespace GlobalTheory.HoweCompactAlg

theorem mem_of_equivariant : ∀ (D : D7) (n m : ℕ) (w : GlobalTheory.ExportSeries.Weight D n) (BS : GlobalTheory.ExportSeries.GLR D n) (K : Type) [Group K] (r : K →* GlobalTheory.ExportSeries.GLR D n), (∀ (k : K) (τ : D.what₂.Tau), ((GlobalTheory.ExportSeries.inBasis BS (r k) τ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) ∈ Matrix.unitaryGroup (Fin n) ℂ) → (∀ g : GlobalTheory.ExportSeries.GLR D n, (∀ τ, ((GlobalTheory.ExportSeries.inBasis BS g τ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) ∈ Matrix.unitaryGroup (Fin n) ℂ) → ∃ k, r k = g) → ∀ (W : Type) [AddCommGroup W] [Module ℂ W] [FiniteDimensional ℂ W] (ρ : K →* Module.End ℂ W), (∀ U : Submodule ℂ W, (∀ k, U.map (ρ k) ≤ U) → U = ⊥ ∨ U = ⊤) → ∀ M : Submodule ℂ (W →ₗ[ℂ] PolF D m n), (∀ ψ ∈ M, ∀ (k : K) (w' : W), ψ (ρ k w') = GlobalTheory.ExportSeries.fockGL m w BS (r k) (ψ w')) → (∀ ψ ∈ M, ∀ (τ : D.what₂.Tau) (Z : Matrix (Fin m) (Fin m) ℂ), GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT τ (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ)) Z ∘ₗ ψ ∈ M) → M ≠ ⊥ → ∀ φ : W →ₗ[ℂ] PolF D m n, (∀ (k : K) (w' : W), φ (ρ k w') = GlobalTheory.ExportSeries.fockGL m w BS (r k) (φ w')) → φ ∈ M := by
  intro D n m w BS K _ r hU hOnto W _ _ _ ρ hρ M hMeq hMT hM0 φ hφ
  obtain ⟨ψ, hψM, hψ0, hψH⟩ := _root_.GlobalTheory.LowerHarm.lower_to_harmonic D n m w.p W M (fun ψ hψ τ i l _ _ => hMT ψ hψ τ _) hM0
  let S : Submodule ℂ (W →ₗ[ℂ] PolF D m n) :=
    { carrier := {ψ | ψ ∈ M ∧ ∀ w' : W, ∀ (τ' : D.what₂.Tau) (i l : Fin m), w.p τ' ≤ (i : ℕ) → (l : ℕ) < w.p τ' → GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT τ' (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ')) (Matrix.single i l (1 : ℂ)) (ψ w') = 0}
      add_mem' := by
        rintro a b ⟨ha, ha'⟩ ⟨hb, hb'⟩
        refine ⟨M.add_mem ha hb, fun w' τ' i l h1 h2 => ?_⟩
        simp [LinearMap.add_apply, map_add (f := _), ha' w' τ' i l h1 h2, hb' w' τ' i l h1 h2]
      zero_mem' := ⟨M.zero_mem, fun w' τ' i l _ _ => by simp⟩
      smul_mem' := by
        rintro c a ⟨ha, ha'⟩
        refine ⟨M.smul_mem c ha, fun w' τ' i l h1 h2 => ?_⟩
        simp [LinearMap.smul_apply, map_smul, ha' w' τ' i l h1 h2] }
  have hS : ∀ φ' : W →ₗ[ℂ] PolF D m n, (∀ (k : K) (w' : W), φ' (ρ k w') = GlobalTheory.ExportSeries.fockGL m w BS (r k) (φ' w')) → (∀ w' : W, ∀ (τ' : D.what₂.Tau) (i l : Fin m), w.p τ' ≤ (i : ℕ) → (l : ℕ) < w.p τ' → GlobalTheory.IndefiniteRowSideFullHecke.RaisingLoweringOperators.fockT τ' (fun _ : Fin n => true) (fun j : Fin m => decide ((j : ℕ) < w.p τ')) (Matrix.single i l (1 : ℂ)) (φ' w') = 0) → φ' ∈ S := by
    refine _root_.GlobalTheory.LowestKType.lowestKType_irreducible D n m w BS K r hU hOnto W ρ hρ S (fun ψ' h => hMeq ψ' h.1) (fun ψ' h => h.2) ?_ ?_
    · intro ψ' h τ a b hab
      refine ⟨hMT ψ' h.1 τ _, fun w' => ?_⟩
      exact _root_.GlobalTheory.CompactHarm.fockT_compact_harm D n m w.p (ψ' w') (h.2 w') τ a b hab
    · intro h
      apply hψ0
      have : ψ ∈ S := ⟨hψM, hψH⟩
      rw [h] at this
      exact (Submodule.mem_bot ℂ).1 this
  exact _root_.GlobalTheory.RaiseGen.mem_of_raise D n m w BS K r hU W ρ M (fun φ' h1 h2 => (hS φ' h1 h2).1)
    (fun ψ' h τ i l _ _ => hMT ψ' h τ _) φ hφ

end GlobalTheory.HoweCompactAlg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HoweDualityCompactPairPolynomialFockAllRealPlace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HoweDualityCompactPairPolynomialFockAllRealPlaceStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HoweDualityCompactPairPolynomialFockAllRealPlaceStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.RaisingLoweringOperators\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.TranslateMemCoefLatFn\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HoweDualityCompactPairPolynomialFockAllRealPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef
open Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx Formalism.IndefR.Links
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.DownLift

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HoweDualityCompactPairPolynomialFockAllRealPlaceStatement =====
