module

public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ExpansionLowCoeffsIntegral
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.PiNSOfPi
public import Formalism.SharpRestriction.LevelLetterCocycles.SplitROfSteps
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DescentValuation
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfB
public import Formalism.SharpRestriction.LevelLetterCocycles.UpPositionOfModels
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GamPiPf
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GeneratorBoundOfHypotheses
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.KapPiPf
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.NinLamPf
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.PhibOLComplete
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UnivLinkPfA
import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ConstantCoeffQZeroEqP
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3downPfFildRConst
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DvdCondition
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfPt
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GradNPfC
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.PolyExpand
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.WLocal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.TmulMkLMemInvLOfValAtMemFilC, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.MixLocal, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3mixlinkPf

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.TmulMkLMemInvLOfValAtMemFilC =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.TmulMkLMemInvLOfValAtMemFilC", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ExpansionLowCoeffsIntegral\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.PiNSOfPi\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SplitROfSteps\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DescentValuation\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfB\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UnivLinkPfA\nimport Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.Interval.Finset.Box\nimport Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.LevelExpansions

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34 Formalism.MainNotions.N.Ln34.DescentValuation TensorProduct
open Formalism.MainNotions.N.Ln34.UnivLinkPf PowerSeries

theorem ser_van {LL : Type} [Field LL] (e e₁ P G A : PowerSeries LL) (u x₀ : LL) (h N : ℕ)
    (he : e = X * e₁) (he₁ : constantCoeff e₁ ≠ 0) (hP : constantCoeff P ≠ 0) (hu : u ≠ 0)
    (hrel : rescale u (e ^ h) * P * G = e ^ h * rescale u A - rescale u (e ^ h) * A)
    (hA : ∀ i < N, coeff i A = x₀ * coeff i (e ^ h)) :
    ∀ i < N, coeff i G = 0 := by
  set D := A - C x₀ * e ^ h with hD
  have hXD : X ^ N ∣ D := by
    rw [X_pow_dvd_iff]
    intro i hi
    rw [hD, map_sub, coeff_C_mul, hA i hi, sub_self]
  obtain ⟨D₁, hD₁⟩ := hXD
  have hA' : A = C x₀ * e ^ h + X ^ N * D₁ := by rw [← hD₁, hD]; ring
  have hR : rescale u (e ^ h) = X ^ h * (C (u ^ h) * (rescale u e₁) ^ h) := by
    rw [map_pow, he, map_mul, rescale_X, mul_pow, mul_pow]; simp only [map_pow]; ring
  have hRC : rescale u (C x₀) = C x₀ := by
    ext k
    rw [coeff_rescale, coeff_C]
    split_ifs with hk
    · subst hk; simp
    · simp
  have hresc : rescale u A = C x₀ * rescale u (e ^ h) + X ^ N * (C (u ^ N) * rescale u D₁) := by
    rw [hA', map_add (f := _), map_mul, map_mul, hRC, map_pow (rescale u) X N, rescale_X, mul_pow]
    simp only [map_pow]; ring
  have key : X ^ h * (C (u ^ h) * (rescale u e₁) ^ h * P * G) =
      X ^ h * (X ^ N * (e₁ ^ h * C (u ^ N) * rescale u D₁ - C (u ^ h) * (rescale u e₁) ^ h * D₁)) := by
    have h1 := hrel
    rw [hresc, hA', hR, he] at h1
    rw [mul_pow] at h1
    linear_combination h1
  have hX : (X : PowerSeries LL) ^ h ≠ 0 := pow_ne_zero _ X_ne_zero
  have key2 := mul_left_cancel₀ hX key
  have hV : IsUnit (C (u ^ h) * (rescale u e₁) ^ h * P) := by
    rw [isUnit_iff_constantCoeff]
    simp only [map_mul, map_pow, constantCoeff_C]
    have : constantCoeff (rescale u e₁) = constantCoeff e₁ := by
      rw [← coeff_zero_eq_constantCoeff_apply, coeff_rescale, pow_zero, one_mul,
        coeff_zero_eq_constantCoeff_apply]
    rw [this]
    exact (mul_ne_zero (mul_ne_zero (pow_ne_zero _ hu) (pow_ne_zero _ he₁)) hP).isUnit
  have hdvd : X ^ N ∣ C (u ^ h) * (rescale u e₁) ^ h * P * G := ⟨_, key2⟩
  exact X_pow_dvd_iff.1 ((hV.dvd_mul_left).1 hdvd)

section Core

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n)

theorem algE_smul (o : O) (a : LetA O n) :
    algebraMap (LetA O n) W.EE (o • a) = o • algebraMap (LetA O n) W.EE a := by
  rw [Algebra.smul_def, Algebra.smul_def, map_mul, ← IsScalarTower.algebraMap_apply]

theorem lev_smul (c : ZMod n) (ζ : LL) (o : O) (a : LetA O n) (i : ℕ) :
    coeff i (W.lev c ζ (o • a)) = algebraMap O LL o * coeff i (W.lev c ζ a) := by
  rw [Algebra.smul_def, map_mul, lev_alg, coeff_C_mul]

theorem expS_nat (T : LocLat G Qp LL O) (c : ZMod n) (ζ : LL) {m : ℕ} (a : Fin m → LetA O n)
    (y : Fin m → W.DD T) (i : ℕ) :
    expS W T c ζ a y i = ∑ j, coeff i (W.lev c ζ (a j)) • valAt W T c ζ (y j) := by
  unfold expS serC
  simp

theorem tmul_mem_LamLA (T : LocLat G Qp LL O) (π' Eπ : LetA O n) (h' : ℕ) (c : ZMod n) {f : W.EE}
    {a : LetA O n} (ha : a ∈ W.AΔ) (hea : (letE c : LetA O n) * a = a)
    (hΛ : algebraMap (LetA O n) W.EE (Eπ ^ h') * f = algebraMap (LetA O n) W.EE a) (z : LcQ W T π' c) :
    f ⊗ₜ z ∈ LamLA W T π' Eπ h' c ⊤ := by
  rw [ModelFPf.mem_LamLA, ModelFPf.smulLA_tmul, hΛ]
  exact ⟨⟨a, ha⟩ ⊗ₜ ⟨z, Submodule.mem_top⟩, by rw [ModelFPf.toLA_tmul, hea]⟩

theorem memNL0 (T : LocLat G Qp LL O) (Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop) (π' Eπ : LetA O n)
    (h' : ℕ) (c : ZMod n) {f : W.EE} {a : LetA O n} (ha : a ∈ W.AΔ) (hea : (letE c : LetA O n) * a = a)
    (hΛ : algebraMap (LetA O n) W.EE (Eπ ^ h') * f = algebraMap (LetA O n) W.EE a)
    (x : W.DD T) (hx : x ∈ NcS W T (c - 1))
    (H : ∀ τ ζ, Pt c ζ τ → ∃ m : ℕ, (∀ i < m, coeff i (W.lev c ζ a) = 0) ∧
      valAt W T c ζ x ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ ((h' : ℤ) - m)) :
    f ⊗ₜ mkL W T π' c x hx ∈ NL W T Pt π' Eπ h' c := by
  apply Submodule.subset_span
  refine ⟨1, fun _ => ⟨a, ha⟩, fun _ => x, ⟨fun _ => hx, ?_⟩, ?_⟩
  · rw [Fin.sum_univ_one, ModelFPf.smulLA_tmul, hΛ, hea]
  · intro τ ζ hpt i
    obtain ⟨m, h1, h2⟩ := H τ ζ hpt
    show (∑ j : Fin 1, serC (W.lev c ζ a) (valAt W T c ζ x) i) ∈ _
    rw [Fin.sum_univ_one]
    unfold serC
    split_ifs with hi
    · obtain ⟨k, rfl⟩ := Int.eq_ofNat_of_zero_le hi
      simp only [Int.toNat_natCast]
      by_cases hlt : k < m
      · rw [h1 k hlt, zero_smul]
        exact Submodule.zero_mem _
      · exact Submodule.smul_mem _ _ (u3upPf_FilC_anti T τ (by omega) h2)
    · exact Submodule.zero_mem _

theorem tmul_mkL_mem_InvL_of_valAt_mem_filC (Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop)
    (π' Eπ : LetA O n) (h' S : ℕ) (up : (K →ₐ[Qp] LL) → Bool) (b : (K →ₐ[Qp] LL) → ℕ) (c : ZMod n)
    (hπu : IsUnit (algebraMap (LetA O n) W.EE π')) (hEu : IsUnit (algebraMap (LetA O n) W.EE Eπ))
    (hP : ∀ τ ζ, Pt c ζ τ → constantCoeff (W.lev c ζ π') ≠ 0)
    (hE : ∀ τ ζ, Pt c ζ τ → ∃ e₁ : PowerSeries LL, W.lev c ζ Eπ = X * e₁ ∧ constantCoeff e₁ ≠ 0)
    (hΓ : ∀ τ ζ, Pt c ζ τ → ∃ u : LL, u ≠ 0 ∧
      ∀ a, W.lev c ζ (W.γA W.gamK a) = rescale u (W.lev c ζ a))
    (f : W.EE) (hf : IsCoord W Pt π' Eπ h' S up b c f) :
    ∃ g : ↥W.AΔ, (∀ τ ζ, Pt c ζ τ → up τ = true → ∀ i < h' - b τ, coeff i (W.lev c ζ g) = 0) ∧
      (∀ τ ζ, Pt c ζ τ → up τ = false → ∀ i < h' + b τ + S, coeff i (W.lev c ζ g) = 0) ∧
      ∀ (T : LocLat G Qp LL O) (x : W.DD T) (hx : x ∈ NcS W T (c - 1)),
        (∀ τ ζ, Pt c ζ τ → ∃ m : ℕ, (∀ i < m, coeff i (W.lev c ζ g) = 0) ∧
          valAt W T c ζ x ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ ((h' : ℤ) - m)) →
        f ⊗ₜ mkL W T π' c x hx ∈ InvL W T Pt π' Eπ h' c ⊤ := by
  obtain ⟨a, ha, hea, hΛ, hup, hdn, g, hg, hγ⟩ := hf
  have hΛu : IsUnit (algebraMap (LetA O n) W.EE (Eπ ^ h')) := by rw [map_pow]; exact hEu.pow _
  have hef : algebraMap (LetA O n) W.EE (letE c) * f = f := by
    apply hΛu.mul_left_cancel
    rw [← mul_assoc, mul_comm (algebraMap (LetA O n) W.EE (Eπ ^ h')), mul_assoc, hΛ, ← map_mul, hea]
  have hγe : W.γE W.gamK (algebraMap (LetA O n) W.EE (letE c)) = algebraMap (LetA O n) W.EE (letE c) := by
    rw [show W.γE W.gamK (algebraMap (LetA O n) W.EE (letE c)) =
      algebraMap (LetA O n) W.EE (W.γA W.gamK (letE c)) from W.γE_ext _ _, _root_.Formalism.MainNotions.LiftingTheory.gammaA_letter_idempotent]
  have hegf : algebraMap (LetA O n) W.EE (letE c) * (W.γE W.gamK f - f) = W.γE W.gamK f - f := by
    rw [mul_sub, hef]
    congr 1
    conv_rhs => rw [← hef]
    rw [map_mul, hγe]
  have heg : (letE c : LetA O n) * g = g := by
    apply W.EE_inj
    apply hπu.mul_left_cancel
    calc algebraMap (LetA O n) W.EE π' * algebraMap (LetA O n) W.EE (letE c * g)
        = algebraMap (LetA O n) W.EE (letE c) * algebraMap (LetA O n) W.EE (π' * g) := by
          rw [map_mul, map_mul]; ring
      _ = algebraMap (LetA O n) W.EE (letE c) * (algebraMap (LetA O n) W.EE (Eπ ^ h') * (W.γE W.gamK f - f)) := by
          rw [hγ]
      _ = algebraMap (LetA O n) W.EE (Eπ ^ h') * (algebraMap (LetA O n) W.EE (letE c) * (W.γE W.gamK f - f)) := by
          ring
      _ = algebraMap (LetA O n) W.EE π' * algebraMap (LetA O n) W.EE g := by rw [hegf, hγ, map_mul]
  have hA : W.γA W.gamK (Eπ ^ h') * (π' * g) = Eπ ^ h' * W.γA W.gamK a - W.γA W.gamK (Eπ ^ h') * a := by
    apply W.EE_inj
    have h1 : algebraMap (LetA O n) W.EE (W.γA W.gamK a) =
        W.γE W.gamK (algebraMap (LetA O n) W.EE (Eπ ^ h')) * W.γE W.gamK f := by
      rw [← map_mul, hΛ]; exact (W.γE_ext _ _).symm
    have h2 : algebraMap (LetA O n) W.EE (W.γA W.gamK (Eπ ^ h')) =
        W.γE W.gamK (algebraMap (LetA O n) W.EE (Eπ ^ h')) := (W.γE_ext _ _).symm
    have hγ' : algebraMap (LetA O n) W.EE π' * algebraMap (LetA O n) W.EE g =
        algebraMap (LetA O n) W.EE (Eπ ^ h') * (W.γE W.gamK f - f) := by rw [← map_mul, hγ]
    simp only [map_mul, map_sub]
    rw [h1, h2, hγ', ← hΛ]
    ring
  have hG0 : ∀ τ ζ, Pt c ζ τ → ∀ (x₀ : LL) (N : ℕ),
      (∀ i < N, coeff i (W.lev c ζ a) = x₀ * coeff i (W.lev c ζ (Eπ ^ h'))) →
      ∀ k < N, coeff k (W.lev c ζ g) = 0 := by
    intro τ ζ hpt x₀ N hx₀
    obtain ⟨e₁, he, he₁⟩ := hE τ ζ hpt
    obtain ⟨u, hu, hu2⟩ := hΓ τ ζ hpt
    have hl := congrArg (W.lev c ζ) hA
    simp only [map_mul, map_sub] at hl
    rw [hu2, hu2, map_pow] at hl
    refine ser_van (W.lev c ζ Eπ) e₁ (W.lev c ζ π') (W.lev c ζ g) (W.lev c ζ a) u x₀ h' N
      he he₁ (hP τ ζ hpt) hu (by linear_combination hl) (fun i hi => ?_)
    rw [hx₀ i hi, map_pow]
  refine ⟨⟨g, hg⟩, fun τ ζ hpt hu => hG0 τ ζ hpt 0 _ fun i hi => ?_, fun τ ζ hpt hd => ?_,
    fun T x hx H => Submodule.mem_inf.2 ⟨tmul_mem_LamLA W T π' Eπ h' c ha hea hΛ _, ?_⟩⟩
  · rw [hup τ ζ hpt hu i (by omega), zero_mul]
  · obtain ⟨x₀, hx₀⟩ := hdn τ ζ hpt hd
    exact hG0 τ ζ hpt x₀ _ hx₀
  · rw [Submodule.mem_comap]
    rw [LinearMap.sub_apply, ModelFPf.γLA_tmul, LinearMap.id_apply, ← TensorProduct.sub_tmul]
    refine Submodule.mem_map.2 ⟨((↑hπu.unit⁻¹ : W.EE) * (W.γE W.gamK f - f)) ⊗ₜ mkL W T π' c x hx,
      memNL0 W T Pt π' Eπ h' c hg heg ?_ x hx H, ?_⟩
    · rw [mul_left_comm, hγ, map_mul, ← mul_assoc, hπu.val_inv_mul, one_mul]
    · rw [ModelFPf.smulLA_tmul, pow_one, ← mul_assoc, hπu.mul_val_inv, one_mul]

variable {T₁ T₂ : LocLat G Qp LL O} (F : LatHom T₁.L T₂.L)
    {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} {π' Eπ : LetA O n} {h' M σ : ℕ} {c : ZMod n}
    {α : FrA W π' Eπ h' M c} {β : FrB W π' Eπ h' M c}

theorem lifts_mono {y y' : ℕ} (h : y ≤ y') {z : W.DD T₂} (H : LiftsBy W F π' Eπ h' y c z) :
    LiftsBy W F π' Eπ h' y' c z := by
  obtain ⟨h1, w, hw, h2⟩ := H
  refine ⟨h1, ((PD.p : ℕ) : O) ^ (y' - y) • w, Submodule.smul_mem _ _ hw, ?_⟩
  rw [LinearMap.map_smul_of_tower, show y' = (y' - y) + y by omega, pow_add, mul_smul,
    Nat.add_sub_cancel, ← smul_sub]
  exact Submodule.smul_mem _ _ h2

variable (hfr : IsFrame W Pt π' Eπ h' M σ c α β) (hc1 : IsCrys PD T₁.ρ) (hc2 : IsCrys PD T₂.ρ)
    (hj1 : ∀ τ, JumpsInV PD T₁.ρ τ (Set.Icc (-(h' : ℤ)) h'))
    (hj2 : ∀ τ, JumpsInV PD T₂.ρ τ (Set.Icc (-(h' : ℤ)) h'))
    (hMF1 : ModelF W T₁ Pt π' Eπ h' M c α β) (hMF2 : ModelF W T₂ Pt π' Eπ h' M c α β) (hM : 1 ≤ M)


include hfr hc1 hc2 hj1 hj2 hMF1 hMF2 hM in
theorem core (f : W.EE) (x : W.DD T₂) (hx : x ∈ NcS W T₂ (c - 1)) (x₁ : W.DD T₁)
    (hx₁ : x₁ ∈ NcS W T₁ (c - 1)) (ρ : ℕ)
    (hdiff : W.map F x₁ - ((PD.p : ℕ) : O) ^ ρ • x ∈ PiNS W T₂ π' 1)
    (hI1 : f ⊗ₜ mkL W T₁ π' c x₁ hx₁ ∈ InvL W T₁ Pt π' Eπ h' c ⊤)
    (hI2 : f ⊗ₜ mkL W T₂ π' c x hx ∈ InvL W T₂ Pt π' Eπ h' c ⊤)
    (h1 : f ⊗ₜ mkL W T₂ π' c x hx ∈ LamLA W T₂ π' Eπ h' c ⊤) (y : W.DD T₂) (hy : y ∈ LamPS W T₂ Eπ h' c)
    (hα : α T₂ ⟨_, h1⟩ = mkP W T₂ π' Eπ h' M c y hy) : LiftsBy W F π' Eπ h' ρ c y := by
  have hyI : y ∈ InvS W T₂ π' Eπ h' 1 c := hMF2.2.2.2.1 _ h1 y hy hα hI2
  have hL1 : f ⊗ₜ mkL W T₁ π' c x₁ hx₁ ∈ LamLA W T₁ π' Eπ h' c ⊤ := (Submodule.mem_inf.1 hI1).1
  obtain ⟨w₁, hw₁⟩ := Submodule.Quotient.mk_surjective _ (α T₁ ⟨_, hL1⟩)
  have hw₁I : (w₁ : W.DD T₁) ∈ InvS W T₁ π' Eπ h' 1 c := hMF1.2.2.2.1 _ hL1 w₁ w₁.2 hw₁.symm hI1
  have hmx : W.map F x₁ ∈ NcS W T₂ (c - 1) := u3downPf_map_NcS W F hc1 hc2 (c - 1) hx₁
  have heq : mkL W T₂ π' c (W.map F x₁) hmx = ((PD.p : ℕ) : O) ^ ρ • mkL W T₂ π' c x hx :=
    u3downPf_mkL_eq W T₂ π' c hx hmx _ hdiff
  have hL2 : f ⊗ₜ mkL W T₂ π' c (W.map F x₁) hmx ∈ LamLA W T₂ π' Eπ h' c ⊤ := by
    rw [heq, TensorProduct.tmul_smul]
    exact Submodule.smul_mem _ _ h1
  have hy₂ : W.map F (w₁ : W.DD T₁) ∈ LamPS W T₂ Eπ h' c := univLinkPf_map_LamPS W F hc1 hc2 Eπ h' c w₁.2
  have hnat := (hfr.2 T₁ T₂ F hc1 hc2 hj1 hj2).1 _ hL1 _ hL2 _ w₁.2 hy₂
    ⟨1, fun _ => f, fun _ => x₁, fun _ => hx₁, fun _ => hmx, by simp, by simp⟩ hw₁.symm
  have hsub : (⟨_, hL2⟩ : ↥(LamLA W T₂ π' Eπ h' c ⊤)) = ((PD.p : ℕ) : O) ^ ρ • ⟨_, h1⟩ :=
    Subtype.ext (by simp [heq, TensorProduct.tmul_smul])
  rw [hsub, map_smul, hα] at hnat
  have hJ : Submodule.Quotient.mk (((PD.p : ℕ) : O) ^ ρ • (⟨y, hy⟩ : ↥(LamPS W T₂ Eπ h' c)) - ⟨_, hy₂⟩) =
      (0 : QLamP W T₂ π' Eπ h' M c) := by
    rw [Submodule.Quotient.mk_sub, Submodule.Quotient.mk_smul, sub_eq_zero]
    exact hnat
  have hP := univLinkPf_PiNS_anti W T₂ π' hM (univLinkPf_JP W T₂ hMF2 hM _ hJ)
  refine ⟨hyI, w₁, hw₁I, ?_⟩
  simpa using hP


include hMF2 hM in
theorem combine (ρ y : ℕ) (o : O) (X XK XN : ↥(LamLA W T₂ π' Eπ h' c ⊤))
    (hX : ((PD.p : ℕ) : O) ^ y • X = o • XK + XN)
    (hK : ∀ z hz, α T₂ XK = mkP W T₂ π' Eπ h' M c z hz → LiftsBy W F π' Eπ h' ρ c z)
    (hN : ∀ z hz, α T₂ XN = mkP W T₂ π' Eπ h' M c z hz → LiftsBy W F π' Eπ h' ρ c z)
    (z : W.DD T₂) (hz : z ∈ LamPS W T₂ Eπ h' c) (hα : α T₂ X = mkP W T₂ π' Eπ h' M c z hz)
    (hzI : z ∈ InvS W T₂ π' Eπ h' 1 c) : LiftsBy W F π' Eπ h' (ρ + y) c z := by
  obtain ⟨zK, hzK⟩ := Submodule.Quotient.mk_surjective _ (α T₂ XK)
  obtain ⟨zN, hzN⟩ := Submodule.Quotient.mk_surjective _ (α T₂ XN)
  obtain ⟨-, wK, hwK, hK'⟩ := hK zK zK.2 hzK.symm
  obtain ⟨-, wN, hwN, hN'⟩ := hN zN zN.2 hzN.symm
  have h1 := congrArg (α T₂) hX
  rw [map_smul, map_add (f := _), map_smul, hα, ← hzK, ← hzN] at h1
  have hJ : Submodule.Quotient.mk (((PD.p : ℕ) : O) ^ y • (⟨z, hz⟩ : ↥(LamPS W T₂ Eπ h' c)) -
      (o • zK + zN)) = (0 : QLamP W T₂ π' Eπ h' M c) := by
    rw [Submodule.Quotient.mk_sub, Submodule.Quotient.mk_smul, Submodule.Quotient.mk_add,
      Submodule.Quotient.mk_smul, sub_eq_zero]
    exact h1
  have hP : ((PD.p : ℕ) : O) ^ y • z - (o • (zK : W.DD T₂) + zN) ∈ PiNS W T₂ π' 1 :=
    univLinkPf_PiNS_anti W T₂ π' hM (univLinkPf_JP W T₂ hMF2 hM _ hJ)
  refine ⟨hzI, o • wK + wN, Submodule.add_mem _ (Submodule.smul_mem _ _ hwK) hwN, ?_⟩
  have h2 := Submodule.add_mem _ (Submodule.add_mem _
    (Submodule.smul_mem _ (((PD.p : ℕ) : O) ^ ρ) hP) (Submodule.smul_mem _ o hK')) hN'
  convert h2 using 1
  rw [map_add (f := _), LinearMap.map_smul_of_tower, pow_add]
  module

theorem NL_rep (T : LocLat G Qp LL O) {x : LA W T π' c} (hx : x ∈ NL W T Pt π' Eπ h' c) :
    x ∈ NLset W T Pt π' Eπ h' c := by
  induction hx using Submodule.span_induction with
  | mem x hx => exact hx
  | zero =>
    refine ⟨0, Fin.elim0, Fin.elim0, ⟨fun j => j.elim0, by simp⟩, fun τ ζ _ i => ?_⟩
    simp [expS]
  | add x y _ _ hx hy =>
    obtain ⟨m, a, u, ⟨hu, hx1⟩, hx2⟩ := hx
    obtain ⟨m', a', u', ⟨hu', hy1⟩, hy2⟩ := hy
    let U : Fin (m + m') → ↥(NcS W T (c - 1)) :=
      Fin.append (fun j => ⟨u j, hu j⟩) (fun j => ⟨u' j, hu' j⟩)
    refine ⟨m + m', Fin.append a a', fun j => U j, ⟨fun j => (U j).2, ?_⟩, fun τ ζ hpt i => ?_⟩
    · rw [map_add (f := _), hx1, hy1, Fin.sum_univ_add]
      simp only [U, Fin.append_left, Fin.append_right]
    · have := Submodule.add_mem _ (hx2 τ ζ hpt i) (hy2 τ ζ hpt i)
      unfold expS at this ⊢
      rw [Fin.sum_univ_add]
      simpa only [U, Fin.append_left, Fin.append_right] using this
  | smul o x _ hx =>
    obtain ⟨m, a, u, ⟨hu, hx1⟩, hx2⟩ := hx
    refine ⟨m, fun j => o • a j, u, ⟨hu, ?_⟩, fun τ ζ hpt i => ?_⟩
    · rw [map_smul, hx1, Finset.smul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [TensorProduct.smul_tmul', Subalgebra.coe_smul, mul_smul_comm, algE_smul]
    · have := Submodule.smul_mem _ (algebraMap O LL o) (hx2 τ ζ hpt i)
      convert this using 1
      unfold expS serC
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      split_ifs
      · beta_reduce
        rw [Subalgebra.coe_smul, lev_smul, smul_smul]
      · rw [smul_zero]


include hfr hc1 hc2 hj1 hj2 hMF1 hMF2 in
theorem compare {ρ : ℕ} (hW : WKill W F ρ) (hNL : NinLam W T₁ Eπ h') (V₂ : ValH W T₂ Pt π' c)
    (hEu : IsUnit (algebraMap (LetA O n) W.EE Eπ)) (hh : 1 ≤ h')
    (hE : ∀ τ ζ, Pt c ζ τ → ∃ e₁ : PowerSeries LL, W.lev c ζ Eπ = X * e₁ ∧ constantCoeff e₁ ≠ 0)
    {f₀ : W.EE} {a₀ : LetA O n} (hea : (letE c : LetA O n) * a₀ = a₀)
    (hΛ : algebraMap (LetA O n) W.EE (Eπ ^ h') * f₀ = algebraMap (LetA O n) W.EE a₀)
    (x : W.DD T₂) (hx : x ∈ NcS W T₂ (c - 1)) (hN : f₀ ⊗ₜ mkL W T₂ π' c x hx ∈ NL W T₂ Pt π' Eπ h' c) :
    ∃ (m : ℕ) (a : Fin m → ↥W.AΔ) (y : Fin m → W.DD T₁), (∀ j, y j ∈ NcS W T₁ (c - 1)) ∧
      (∀ τ ζ, Pt c ζ τ → Gd (Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T₁ τ) h' (fun j => evA W c ζ (a j))
        (fun j => valAt W T₁ c ζ (y j))) ∧
      ∀ τ ζ, Pt c ζ τ → ∀ i ≤ h', ∑ j, coeff i (evA W c ζ (a j)) • valAt W T₂ c ζ (W.map F (y j)) =
        coeff i (C ((PD.p : LL) ^ (ρ + 2 * σ)) * W.lev c ζ a₀) • valAt W T₂ c ζ x := by
  have hx₀ := ModelFPf.NL_le_LamLA W T₂ π' Eπ h' c Pt hN
  obtain ⟨n₂, hn₂, hn₂N, hα⟩ := hMF2.1 _ hx₀ hN
  obtain ⟨n₁, hn₁, hF⟩ := hW c n₂ hn₂N
  obtain ⟨ν, hν, hνN, hβ⟩ := hMF1.2.1 n₁ (hNL c hn₁) hn₁
  obtain ⟨m, a, y, ⟨hy, hrep⟩, hfil⟩ := NL_rep W T₁ hνN
  have hΛu : IsUnit (algebraMap (LetA O n) W.EE (Eπ ^ h')) := by rw [map_pow]; exact hEu.pow _
  have hy2 : ∀ j, W.map F (y j) ∈ NcS W T₂ (c - 1) := fun j => u3downPf_map_NcS W F hc1 hc2 _ (hy j)
  set e : Fin m → W.EE := fun j =>
    (↑hΛu.unit⁻¹ : W.EE) * algebraMap (LetA O n) W.EE ((letE c : LetA O n) * a j) with he
  have hΛe : ∀ (T : LocLat G Qp LL O) (z : Fin m → LcQ W T π' c),
      smulLA W T π' c (Eπ ^ h') (∑ j, e j ⊗ₜ z j) =
        ∑ j, algebraMap (LetA O n) W.EE ((letE c : LetA O n) * a j) ⊗ₜ z j := by
    intro T z

    rw [map_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [ModelFPf.smulLA_tmul, he, ← mul_assoc, hΛu.mul_val_inv, one_mul]
  have hinjΛ : Function.Injective (smulLA W T₁ π' c (Eπ ^ h')) := by
    have hl : ∀ z, TensorProduct.map (LinearMap.mulLeft O (↑hΛu.unit⁻¹ : W.EE)) LinearMap.id
        (smulLA W T₁ π' c (Eπ ^ h') z) = z := by
      intro z
      induction z using TensorProduct.induction_on with
      | zero => simp only [map_zero]
      | tmul u w =>
        rw [ModelFPf.smulLA_tmul, TensorProduct.map_tmul, LinearMap.mulLeft_apply, LinearMap.id_apply,
          ← mul_assoc, hΛu.val_inv_mul, one_mul]
      | add u w hu hw => simp only [map_add (f := _), hu, hw]
    exact Function.LeftInverse.injective hl
  have hν1 : ν = ∑ j, e j ⊗ₜ mkL W T₁ π' c (y j) (hy j) := hinjΛ (by rw [hrep, hΛe])
  have hν₂ : ∑ j, e j ⊗ₜ mkL W T₂ π' c (W.map F (y j)) (hy2 j) ∈ LamLA W T₂ π' Eπ h' c ⊤ := by
    rw [ModelFPf.mem_LamLA, hΛe]
    exact ModelFPf.rep_mem W T₂ π' c _ (fun j => (a j).2) _ hy2
  have hy₂ : W.map F n₁ ∈ LamPS W T₂ Eπ h' c := univLinkPf_map_LamPS W F hc1 hc2 Eπ h' c (hNL c hn₁)
  have hβ₂ := (hfr.2 T₁ T₂ F hc1 hc2 hj1 hj2).2 n₁ (hNL c hn₁) hy₂ ν hν _ hν₂
    ⟨m, e, y, hy, hy2, hν1, rfl⟩ hβ
  have hβα := (hfr.1 T₂ hc2 hj2).2.2.1 _ hx₀ n₂ hn₂ hα
  have hsub : (⟨_, hy₂⟩ : ↥(LamPS W T₂ Eπ h' c)) = ((PD.p : ℕ) : O) ^ ρ • ⟨n₂, hn₂⟩ := Subtype.ext hF
  rw [hsub, map_smul, hβα] at hβ₂
  unfold mkLA at hβ₂
  rw [← Submodule.Quotient.mk_smul, eq_comm, Submodule.Quotient.eq, Submodule.mem_comap] at hβ₂
  obtain ⟨u, hu, hue⟩ := Submodule.mem_map.1 hβ₂
  obtain ⟨m', b, z, hz, rfl⟩ := ModelFPf.range_rep W T₂ π' c u hu
  have hue' := congrArg (smulLA W T₂ π' c (Eπ ^ h')) hue
  simp only [Submodule.subtype_apply, Submodule.coe_sub, Submodule.coe_smul] at hue'
  rw [map_sub, hΛe, ModelFPf.smulLA_smulLA, ModelFPf.smulLA_rep, map_smul, map_smul,
    ModelFPf.smulLA_tmul, hΛ] at hue'
  refine ⟨m, a, y, hy, fun τ ζ hpt i => ?_, fun τ ζ hpt i hi => ?_⟩
  · have := hfil τ ζ hpt i
    rw [expS_nat] at this
    exact this
  · let Zs : Fin (m' + 1) → ↥(NcS W T₂ (c - 1)) := Fin.cons ⟨x, hx⟩ fun k => ⟨z k, hz k⟩
    let Bs : Fin (m' + 1) → LetA O n := Fin.cons (algebraMap O (LetA O n) (((PD.p : ℕ) : O) ^ (ρ + 2 * σ)) * a₀)
      fun k => Eπ ^ h' * (π' ^ M * Eπ ^ (3 * h')) * b k
    have hwd := V₂.wd τ ζ hpt (fun j => (a j : LetA O n)) (fun j => W.map F (y j)) hy2 Bs
      (fun k => Zs k) (fun k => (Zs k).2) (by
        rw [Fin.sum_univ_succ]
        simp only [Zs, Bs, Fin.cons_zero, Fin.cons_succ]
        rw [hue', mul_left_comm, hea, map_mul, ← IsScalarTower.algebraMap_apply, ← Algebra.smul_def,
          ← TensorProduct.smul_tmul', smul_smul, ← pow_add]
        abel)
    have h1 := congrFun hwd (i : ℤ)
    rw [expS_nat, expS_nat, Fin.sum_univ_succ] at h1
    simp only [Zs, Bs, Fin.cons_zero, Fin.cons_succ] at h1
    obtain ⟨e₁, he₁, -⟩ := hE τ ζ hpt
    rw [Finset.sum_eq_zero (s := Finset.univ) (f := fun k : Fin m' => coeff i
      (W.lev c ζ (Eπ ^ h' * (π' ^ M * Eπ ^ (3 * h')) * b k)) • valAt W T₂ c ζ (z k)) fun k _ => by
        rw [show Eπ ^ h' * (π' ^ M * Eπ ^ (3 * h')) * b k = Eπ ^ (3 * h') * (Eπ ^ h' * π' ^ M * b k) by ring,
          map_mul, map_pow, van_of_dvd he₁ _ i (by omega), zero_smul], add_zero, map_mul, lev_alg, map_pow,
      map_natCast] at h1
    exact h1

end Core

end Formalism.MainNotions.N.Ln34.LevelExpansions

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.TmulMkLMemInvLOfValAtMemFilC =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.MixLocal =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.MixLocal", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.PiNSOfPi\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SplitROfSteps\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ConstantCoeffQZeroEqP\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DescentValuation\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfB\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.TmulMkLMemInvLOfValAtMemFilC\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3downPfFildRConst\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.UnivLinkPfA\nimport Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ExpansionLowCoeffsIntegral\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.LevelExpansions

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.N.Ln34 Formalism.MainNotions.N.Ln34.DescentValuation TensorProduct
open Formalism.MainNotions.ElementDenominator PowerSeries

section Main

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n)

theorem letE_inv (T : LocLat G Qp LL O) (Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop) (π' Eπ : LetA O n)
    (h' : ℕ) (c : ZMod n) (hE : Eπ ∈ W.AΔ) (z : LcQ W T π' c) :
    algebraMap (LetA O n) W.EE (letE c) ⊗ₜ z ∈ InvL W T Pt π' Eπ h' c ⊤ := by
  refine Submodule.mem_inf.2 ⟨tmul_mem_LamLA W T π' Eπ h' c (a := letE c * Eπ ^ h')
    (W.AΔ.mul_mem (_root_.Formalism.MainNotions.LiftingTheory.idempotent_mem_invariants W c) (W.AΔ.pow_mem hE _))
    (by rw [← mul_assoc, _root_.Formalism.MainNotions.LiftingTheory.letter_idempotent_sq]) (by rw [← map_mul, mul_comm]) z, ?_⟩
  rw [Submodule.mem_comap, LinearMap.sub_apply, ModelFPf.γLA_tmul,
    show W.γE W.gamK (algebraMap (LetA O n) W.EE (letE c)) =
      algebraMap (LetA O n) W.EE (W.γA W.gamK (letE c)) from W.γE_ext _ _, _root_.Formalism.MainNotions.LiftingTheory.gammaA_letter_idempotent,
    LinearMap.id_apply, sub_self]
  exact Submodule.zero_mem _

theorem mix_local [IsDomain O] (hinj : Function.Injective (algebraMap O LL))
    [IsAdicComplete (Ideal.span {((PD.p : ℕ) : O)}) O] [Fact PD.p.Prime]
    {T₁ T₂ : LocLat G Qp LL O} (F : LatHom T₁.L T₂.L)
    {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} {s' : ℕ} {π' : LetA O n} {E : ZMod n → Polynomial O}
    {h' M σ S η ρ yc : ℕ} {c : ZMod n} {up : (K →ₐ[Qp] LL) → Bool} {b : (K →ₐ[Qp] LL) → ℕ}
    {α : FrA W π' (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h' M c} {β : FrB W π' (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h' M c}
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations W 2 s' π' E) (hs : 2 * s' = PD.p - 1) (hs1 : 1 ≤ s')
    (hprim : ∀ τ ζ, Pt c ζ τ → IsPrimitiveRoot ζ PD.p)
    (hzO : ∀ ζ : LL, IsPrimitiveRoot ζ PD.p → ∃ z : O, algebraMap O LL z = ζ)
    (hΓ : ∀ τ ζ, Pt c ζ τ → ∃ u : LL, u ≠ 0 ∧
      ∀ a, W.lev c ζ (W.γA W.gamK a) = rescale u (W.lev c ζ a))
    (hPt : ∀ τ ζ, Pt c ζ τ → Formalism.MainNotions.DeltaInvariantLattices.OverLetter W τ c)
    (hcard : ∀ τ τ' τ'', Formalism.MainNotions.DeltaInvariantLattices.OverLetter W τ c → Formalism.MainNotions.DeltaInvariantLattices.OverLetter W τ' c →
      Formalism.MainNotions.DeltaInvariantLattices.OverLetter W τ'' c → τ ≠ τ' → τ'' = τ ∨ τ'' = τ')
    (hun : ∀ m : ℕ, ¬ PD.p ∣ m → IsUnit (m : O))
    (hc1 : IsCrys PD T₁.ρ) (hc2 : IsCrys PD T₂.ρ)
    (hd1 : ∀ τ, JumpsInV PD T₁.ρ τ (deep (up τ) (b τ) S ∪ Set.Icc (-(η : ℤ)) η))
    (hd2 : ∀ τ, JumpsInV PD T₂.ρ τ (deep (up τ) (b τ) S ∪ Set.Icc (-(η : ℤ)) η))
    (hηb : ∀ τ, η < b τ) (hbS : ∀ τ, b τ + S ≤ h') (hh : 1 ≤ h')
    (hfr : IsFrame W Pt π' (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h' M σ c α β)
    (hMF1 : ModelF W T₁ Pt π' (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h' M c α β)
    (hMF2 : ModelF W T₂ Pt π' (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h' M c α β) (hM : 1 ≤ M)
    (V₁ : ValH W T₁ Pt π' c) (V₂ : ValH W T₂ Pt π' c) (hW : WKill W F ρ)
    (hNL : NinLam W T₁ (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h') (hG1 : GamPi W T₁ π') (hG2 : GamPi W T₂ π')
    (hyc : ∀ b B : ℕ, b ≤ h' → b ≤ B + 2 * η → B ≤ b →
      b - B + 1 + 2 * padicValNat PD.p (b.choose (B - 1)) ≤ 2 * yc) :
    ThirdPropositionSlot W F Pt π' (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h' M S up b c (ρ + max (2 * σ) yc) α := by
  intro f hf x hx hFil h1 y hy hα
  set Eπ := Formalism.MainNotions.DeltaInvariantLattices.Eat E π' with hEπ
  have hj1 := fun τ => u3downPf_jumps T₁ τ (up τ) (b τ) S η h' (hd1 τ) (hηb τ) (hbS τ)
  have hj2 := fun τ => u3downPf_jumps T₂ τ (up τ) (b τ) S η h' (hd2 τ) (hηb τ) (hbS τ)
  obtain ⟨w, hw⟩ := hp9.2.2.1
  obtain ⟨w', hw'⟩ := hp9.2.2.2.2.1
  have hπΔ : π' ∈ W.AΔ := hp9.1
  have hEΔ : Eπ ∈ W.AΔ := Eat_mem W hπΔ E
  have hπu : IsUnit (algebraMap (LetA O n) W.EE π') := by
    rw [hw, map_mul, map_pow]
    exact (w.isUnit.map _).mul (W.EE_π.pow _)
  have hEu : IsUnit (algebraMap (LetA O n) W.EE Eπ) := by
    have hq := Formalism.MainNotions.LiftingTheory.liftb_q_unit W
    rw [hw', map_mul] at hq
    exact isUnit_of_mul_isUnit_right hq
  have hE := fun τ ζ (hpt : Pt c ζ τ) => u3downPf_lev_E W c ζ (hprim τ ζ hpt) Eπ w' hw'
  have hp0 : (PD.p : O) ≠ 0 := by
    intro h
    have h2 : (PD.p : LL) = 0 := by rw [← map_natCast (algebraMap O LL), h, map_zero]
    have := W.v_l
    rw [h2, AddValuation.map_zero] at this
    exact WithTop.top_ne_coe this
  obtain ⟨g, hgU, hgD, hgI⟩ := tmul_mkL_mem_InvL_of_valAt_mem_filC W Pt π' Eπ h' S up b c hπu hEu
    (fun τ ζ hpt => u3downPf_cc_π' W c ζ (hprim τ ζ hpt) π' _ w hw) hE hΓ f hf
  have low : ∀ (T : LocLat G Qp LL O), ValH W T Pt π' c →
      (∀ τ, JumpsInV PD T.ρ τ (deep (up τ) (b τ) S ∪ Set.Icc (-(η : ℤ)) η)) →
      ∀ τ ζ, Pt c ζ τ → ∀ z ∈ NcS W T (c - 1), ∀ a : ℤ,
      (if up τ then a ≤ -(η : ℤ) else a ≤ -((b τ : ℤ) + S)) →
      valAt W T c ζ z ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ a := by
    intro T V hd τ ζ hpt z hz a ha
    obtain ⟨k, hk⟩ := V.fil τ ζ hpt z hz
    refine u3downPf_filC_low T τ a (fun i hi => ?_) le_rfl hk
    have h := hd τ i hi
    have := hηb τ
    unfold deep at h
    split_ifs at h ha <;> simp only [Set.mem_union, Set.mem_Icc] at h <;> omega
  have hC : ∀ (T : LocLat G Qp LL O), ValH W T Pt π' c →
      (∀ τ, JumpsInV PD T.ρ τ (deep (up τ) (b τ) S ∪ Set.Icc (-(η : ℤ)) η)) →
      ∀ z (hz : z ∈ NcS W T (c - 1)), (∀ τ ζ, Pt c ζ τ → up τ = true →
        valAt W T c ζ z ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (b τ)) →
      f ⊗ₜ mkL W T π' c z hz ∈ InvL W T Pt π' Eπ h' c ⊤ := by
    intro T V hd z hz hU
    refine hgI T z hz fun τ ζ hpt => ?_
    have := hbS τ
    cases hu : up τ
    · exact ⟨_, hgD τ ζ hpt hu, low T V hd τ ζ hpt z hz _ (by simp only [hu]; push_cast; omega)⟩
    · refine ⟨_, hgU τ ζ hpt hu, ?_⟩
      rw [show (h' : ℤ) - ((h' - b τ : ℕ) : ℤ) = b τ by omega]
      exact hU τ ζ hpt hu
  have hxU : ∀ τ ζ, Pt c ζ τ → up τ = true →
      valAt W T₂ c ζ x ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T₂ τ (b τ) :=
    fun τ ζ hpt hu => hFil τ (hPt τ ζ hpt) hu ζ hpt
  have hI2 := hC T₂ V₂ hd2 x hx hxU
  have hyI : y ∈ InvS W T₂ π' Eπ h' 1 c := hMF2.2.2.2.1 _ h1 y hy hα hI2
  have hroot : ∀ τ ζ, Pt c ζ τ → ∃ r : O, constantCoeff (W.lev c ζ π') = algebraMap O LL r ∧
      (PD.p : O) ∣ r ^ 2 := by
    intro τ ζ hpt
    obtain ⟨z, hz⟩ := hzO ζ (hprim τ ζ hpt)
    exact root W hinj hp9 hs c (hprim τ ζ hpt) hz
  obtain ⟨x₁, hx₁, hFx₁⟩ := hW (c - 1) x hx
  have hdiff : W.map F x₁ - ((PD.p : ℕ) : O) ^ ρ • x ∈ PiNS W T₂ π' 1 := by
    rw [hFx₁, sub_self]; exact Submodule.zero_mem _
  obtain ⟨a, ha, hea, hΛ, hup, hdn, -⟩ := hf
  by_cases hA : ∃ τ ζ, Pt c ζ τ ∧ up τ = false
  swap
  · refine lifts_mono W F (Nat.le_add_right _ _) (u3upPf_lift W F Pt π' Eπ h' M ρ c _ _ hMF2 hM hW hNL
      hG1 hG2 _ h1 (memNL0 W T₂ Pt π' Eπ h' c ha hea hΛ x hx fun τ ζ hpt => ?_) y hy hα)
    have hu : up τ = true := by
      by_contra hu
      exact hA ⟨τ, ζ, hpt, by simpa using hu⟩
    have := hbS τ
    refine ⟨h' - b τ, fun i hi => hup τ ζ hpt hu i (by omega), ?_⟩
    rw [show (h' : ℤ) - ((h' - b τ : ℕ) : ℤ) = b τ by omega]
    exact hxU τ ζ hpt hu
  by_cases hB : ∀ τ ζ, Pt c ζ τ → ∃ τ' ζ', Pt c ζ' τ' ∧ up τ' = false ∧
      constantCoeff (W.lev c ζ' π') = constantCoeff (W.lev c ζ π')
  · refine lifts_mono W F (Nat.le_add_right _ _) (core W F hfr hc1 hc2 hj1 hj2 hMF1 hMF2 hM f x hx x₁ hx₁
      ρ hdiff (hgI T₁ x₁ hx₁ fun τ ζ hpt => ?_) hI2 h1 y hy hα)
    cases hu : up τ
    · exact ⟨_, hgD τ ζ hpt hu, low T₁ V₁ hd1 τ ζ hpt x₁ hx₁ _ (by simp only [hu]; push_cast; omega)⟩
    · obtain ⟨τ', ζ', hpt', hu', hcc⟩ := hB τ ζ hpt
      obtain ⟨r, hr, hpr⟩ := hroot τ ζ hpt
      obtain ⟨u, hyu, -⟩ := simple W hinj hp9 c (hprim τ ζ hpt) hr
      obtain ⟨u', hyu', huu'⟩ := simple W hinj hp9 c (hprim τ' ζ' hpt') (hcc.trans hr)
      have ht := (dv W hp9 hs1 c hpr).transfer hyu' huu' hyu (h' + b τ' + S) g g 0
        (fun i hi => by rw [zero_mul]; exact hgD τ' ζ' hpt' hu' i hi)
      have := hηb τ'
      refine ⟨h' + b τ' + S, fun i hi => ?_, low T₁ V₁ hd1 τ ζ hpt x₁ hx₁ _
        (by simp only [hu]; push_cast; omega)⟩
      have h2 := ht i hi
      rwa [zero_mul] at h2
  push Not at hB
  obtain ⟨τU, ζU, hptU, hne⟩ := hB
  obtain ⟨τD, ζD, hptD, huD⟩ := hA
  have huU : up τU = true := by
    by_contra hu
    exact hne τU ζU hptU (by simpa using hu) rfl
  obtain ⟨rU, hrU, hpU⟩ := hroot τU ζU hptU
  obtain ⟨rD, hrD, hpD⟩ := hroot τD ζD hptD
  have hrne : rU ≠ rD := fun h => hne τD ζD hptD huD (by rw [hrD, hrU, h])
  obtain ⟨zU, hzU⟩ := hzO ζU (hprim τU ζU hptU)
  obtain ⟨a₂, ha₂, hfac, hδ⟩ := fact2 W hinj hp9 hs hs1 c (hprim τU ζU hptU) (hprim τD ζD hptD) hzU
    hrU hpU hrD hpD hrne hp0
  have hτne : τU ≠ τD := fun h => by rw [h, huD] at huU; exact Bool.false_ne_true huU
  have hτU : ∀ τ ζ, Pt c ζ τ → up τ = true → τ = τU := fun τ ζ hpt hu =>
    (hcard τU τD τ (hPt _ _ hptU) (hPt _ _ hptD) (hPt _ _ hpt) hτne).resolve_right fun h => by
      rw [h, huD] at hu; exact Bool.false_ne_true hu
  have hτD : ∀ τ ζ, Pt c ζ τ → up τ = false → τ = τD := fun τ ζ hpt hu =>
    (hcard τU τD τ (hPt _ _ hptU) (hPt _ _ hptD) (hPt _ _ hpt) hτne).resolve_left fun h => by
      rw [h, huU] at hu; exact Bool.false_ne_true hu.symm
  have hrr : ∀ τ ζ, Pt c ζ τ → constantCoeff (W.lev c ζ π') = algebraMap O LL rU ∨
      constantCoeff (W.lev c ζ π') = algebraMap O LL rD := by
    intro τ ζ hpt
    obtain ⟨e₁, he₁, -⟩ := hE τ ζ hpt
    have h0 := congrArg constantCoeff ((hfac ζ).symm.trans he₁)
    simp only [yR, map_mul, map_sub, constantCoeff_C, constantCoeff_X, zero_mul, mul_eq_zero,
      sub_eq_zero] at h0
    rcases h0 with (h0 | h0) | h0
    · exact absurd h0 (ha₂.map (algebraMap O LL)).ne_zero
    · exact Or.inl h0
    · exact Or.inr h0
  have hDr : ∀ τ ζ, Pt c ζ τ → up τ = false → constantCoeff (W.lev c ζ π') = algebraMap O LL rD :=
    fun τ ζ hpt hu => (hrr τ ζ hpt).resolve_left fun h => hne τ ζ hpt hu (h.trans hrU.symm)
  obtain ⟨uU, hyU, huU'⟩ := simple W hinj hp9 c (hprim τU ζU hptU) hrU
  obtain ⟨uD, hyD, huD'⟩ := simple W hinj hp9 c (hprim τD ζD hptD) hrD
  have DU := dv W hp9 hs1 c hpU
  have DD := dv W hp9 hs1 c hpD
  have hbU := hbS τU
  have hbD := hbS τD
  have hηD := hηb τD
  by_cases hcase : b τD + S + 2 * η < b τU
  · have hΛu : IsUnit (algebraMap (LetA O n) W.EE (Eπ ^ h')) := by rw [map_pow]; exact hEu.pow _
    set a₀ : LetA O n := letE c * ((π' - algebraMap O (LetA O n) rU) ^ (h' - b τU) *
      (π' - algebraMap O (LetA O n) rD) ^ (h' + (b τD + S))) with ha₀
    have ha₀Δ : a₀ ∈ W.AΔ := W.AΔ.mul_mem (_root_.Formalism.MainNotions.LiftingTheory.idempotent_mem_invariants W c) (W.AΔ.mul_mem
      (W.AΔ.pow_mem (W.AΔ.sub_mem hπΔ (W.AΔ.algebraMap_mem _)) _)
      (W.AΔ.pow_mem (W.AΔ.sub_mem hπΔ (W.AΔ.algebraMap_mem _)) _))
    have hea₀ : (letE c : LetA O n) * a₀ = a₀ := by rw [ha₀, ← mul_assoc, _root_.Formalism.MainNotions.LiftingTheory.letter_idempotent_sq]
    have hΛ₀ : algebraMap (LetA O n) W.EE (Eπ ^ h') *
        ((↑hΛu.unit⁻¹ : W.EE) * algebraMap (LetA O n) W.EE a₀) = algebraMap (LetA O n) W.EE a₀ := by
      rw [← mul_assoc, hΛu.mul_val_inv, one_mul]
    have hlev₀ : ∀ ζ, W.lev c ζ a₀ = yR W π' c rU ζ ^ (h' - b τU) * yR W π' c rD ζ ^ (h' + (b τD + S)) := by
      intro ζ
      rw [ha₀, map_mul, _root_.Formalism.MainNotions.UnusedSlot80.LevR.lev_letE, one_mul, map_mul, map_pow, map_pow, map_sub, map_sub, lev_alg, lev_alg]
      rfl
    have hvanD : ∀ τ ζ, Pt c ζ τ → constantCoeff (W.lev c ζ π') = algebraMap O LL rD →
        ∀ i < h' + (b τD + S), coeff i (W.lev c ζ a₀) = 0 := by
      intro τ ζ hpt hr
      obtain ⟨u, hyu, -⟩ := simple W hinj hp9 c (hprim τ ζ hpt) hr
      rw [hlev₀, mul_comm]
      exact van_of_dvd hyu _
    have hN := memNL0 W T₂ Pt π' Eπ h' c ha₀Δ hea₀ hΛ₀ x hx fun τ ζ hpt => by
      cases hu : up τ
      · refine ⟨_, hvanD τ ζ hpt (hDr τ ζ hpt hu), low T₂ V₂ hd2 τ ζ hpt x hx _ ?_⟩
        have := hτD τ ζ hpt hu
        subst this
        simp only [hu]; push_cast; omega
      · have := hτU τ ζ hpt hu
        subst this
        refine ⟨h' - b τ, fun i hi => ?_, ?_⟩
        · rcases hrr τ ζ hpt with hr | hr
          · obtain ⟨u, hyu, -⟩ := simple W hinj hp9 c (hprim τ ζ hpt) hr
            rw [hlev₀]
            exact van_of_dvd hyu _ i hi
          · exact hvanD τ ζ hpt hr i (by omega)
        · rw [show (h' : ℤ) - ((h' - b τ : ℕ) : ℤ) = b τ by omega]
          exact hxU τ ζ hpt hu
    obtain ⟨m, a', y', hy', hGd, hcmp⟩ := compare W F hfr hc1 hc2 hj1 hj2 hMF1 hMF2 hW hNL V₂ hEu hh hE
      hea₀ hΛ₀ x hx hN
    have hy2 : ∀ j, W.map F (y' j) ∈ NcS W T₂ (c - 1) := fun j => u3downPf_map_NcS W F hc1 hc2 _ (hy' j)
    have hmap : ∀ o : Fin m → O, W.map F (∑ j, o j • y' j) = ∑ j, o j • W.map F (y' j) := by
      intro o

      rw [map_sum]
      exact Finset.sum_congr rfl fun j _ => LinearMap.map_smul_of_tower _ _ _
    have hsumN : ∀ o : Fin m → O, ∑ j, o j • y' j ∈ NcS W T₁ (c - 1) := fun o =>
      Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (hy' j)
    obtain ⟨o, ho1, ho2⟩ := caseB DU DD hyU huU' hyD huD' (δ := algebraMap O LL (rU - rD))
      (fun h => sub_ne_zero.2 hrne (hinj (h.trans (map_zero _).symm)))
      (by simp only [yR, map_sub]; ring) a' (fun j => valAt W T₁ c ζU (y' j))
      (fun j => valAt W T₂ c ζU (W.map F (y' j))) (valAt W T₂ c ζU x)
      (CrystallineExponents.filC_anti T₁ τU) (CrystallineExponents.filC_anti T₁ τD) h' (b τU) (b τD + S) η (by omega) hcase
      ((PD.p : LL) ^ (ρ + 2 * σ)) (fun o ho => by
        rw [← V₁.sum hptU _ o y' hy'] at ho ⊢
        rw [V₁.indep _ _ _ _ hptU hptD _ (hsumN o)] at ho ⊢
        have h0 := V₁.inj τD ζD hptD _ (hsumN o) (filC_top T₁ τD _ (fun i hi hJ => by
          have h := hd1 τD i hJ
          unfold deep at h
          simp only [huD, Bool.false_eq_true, if_false, Set.mem_union, Set.mem_Icc] at h
          omega) ho)
        refine ⟨h0, ?_⟩
        rw [← V₂.sum hptU _ o _ hy2, ← hmap]
        exact (V₂.ker τU ζU hptU _ (u3downPf_map_NcS W F hc1 hc2 _ (hsumN o))).2
          (UnivLinkPf.univLinkPf_map_PiNS W F hc1 hc2 π' 1 ((V₁.ker τD ζD hptD _ (hsumN o)).1 h0)))
      (by
        have := hGd τD ζD hptD
        rwa [funext fun j => V₁.indep _ _ _ _ hptD hptU _ (hy' j)] at this)
      (hGd τU ζU hptU) (fun i hi => by rw [hcmp τU ζU hptU i hi, hlev₀, mul_assoc])
    rw [← V₁.sum hptU _ o y' hy'] at ho1
    rw [← V₂.sum hptU _ o _ hy2, ← hmap] at ho2
    have hFN := u3downPf_map_NcS W F hc1 hc2 _ (hsumN o)
    have hd : W.map F (∑ j, o j • y' j) - ((PD.p : ℕ) : O) ^ (ρ + 2 * σ) • x ∈ PiNS W T₂ π' 1 := by
      refine (V₂.ker τU ζU hptU _ (Submodule.sub_mem _ hFN (Submodule.smul_mem _ _ hx))).1 ?_
      rw [sub_eq_add_neg, ← neg_smul, V₂.add τU ζU hptU _ hFN _ (Submodule.smul_mem _ _ hx),
        V₂.smul τU ζU hptU _ _ hx, ho2, map_neg, map_pow, map_natCast, neg_smul, add_neg_cancel]
    refine lifts_mono W F (Nat.add_le_add_left (le_max_left _ _) _) (core W F hfr hc1 hc2 hj1 hj2 hMF1
      hMF2 hM f x hx _ (hsumN o) _ hd (hC T₁ V₁ hd1 _ (hsumN o) fun τ ζ hpt hu => ?_) hI2 h1 y hy hα)
    have := hτU τ ζ hpt hu
    subst this
    rw [V₁.indep _ _ _ _ hpt hptU _ (hsumN o)]
    unfold Formalism.MainNotions.DeltaInvariantLattices.FilC at ho1 ⊢
    rwa [fildR_gap T₁ τ (η + 1) (b τ) (by have := hηb τ; omega) fun i h1 h2 hJ => by
      have h := hd1 τ i hJ
      unfold deep at h
      simp only [hu, if_true, Set.mem_union, Set.mem_Icc] at h
      omega]
  · obtain ⟨x₀, hx₀⟩ := hdn τD ζD hptD huD
    have hint := integ DU DD hyU huU' hyD huD' (δ := algebraMap O LL (rD - rU))
      (fun h => sub_ne_zero.2 hrne.symm (hinj (h.trans (map_zero _).symm)))
      (by simp only [yR, map_sub]; ring) ⟨a, ha⟩ x₀ (algebraMap O LL a₂) h' (b τU) (b τD + S) (by omega)
      (hup τU ζU hptU huU) (fun i hi => by rw [← hfac, ← map_pow]; exact hx₀ i (by omega))
    obtain ⟨y₀, hy₀, o₁, ho₁⟩ : ∃ y₀ ≤ yc, ∃ o₁ : O,
        algebraMap O LL o₁ = (PD.p : LL) ^ y₀ * (x₀ * algebraMap O LL a₂ ^ h') := by
      rcases lt_or_ge (b τU) (b τD + S) with h | h
      · obtain ⟨o₁, ho₁⟩ := hint (b τU) h
        exact ⟨0, Nat.zero_le _, o₁, by simpa using ho₁⟩
      · obtain ⟨o₁, ho₁⟩ := hint (b τD + S - 1) (by omega)
        exact ⟨yc, le_rfl, caseC PD.p (rD - rU) hδ hun _ (b τU) (b τD + S) (by omega) h o₁ ho₁ yc
          (hyc _ _ (by omega) (by omega) h)⟩
    obtain ⟨o, ho⟩ : ∃ o : O, algebraMap O LL o = (PD.p : LL) ^ y₀ * x₀ := by
      obtain ⟨a₃, ha₃⟩ := ha₂.exists_right_inv
      refine ⟨o₁ * a₃ ^ h', ?_⟩
      rw [map_mul, ho₁, mul_assoc, mul_assoc, map_pow, ← mul_pow, ← map_mul, ha₃, map_one, one_pow,
        mul_one]
    set aN : LetA O n := ((PD.p : ℕ) : O) ^ y₀ • a - o • (letE c * Eπ ^ h') with haN
    have haNΔ : aN ∈ W.AΔ := W.AΔ.sub_mem (W.AΔ.smul_mem ha _)
      (W.AΔ.smul_mem (W.AΔ.mul_mem (_root_.Formalism.MainNotions.LiftingTheory.idempotent_mem_invariants W c) (W.AΔ.pow_mem hEΔ _)) _)
    have heN : (letE c : LetA O n) * aN = aN := by
      rw [haN, mul_sub, mul_smul_comm, mul_smul_comm, hea, ← mul_assoc, _root_.Formalism.MainNotions.LiftingTheory.letter_idempotent_sq]
    have hΛN : algebraMap (LetA O n) W.EE (Eπ ^ h') *
        (((PD.p : ℕ) : O) ^ y₀ • f - o • algebraMap (LetA O n) W.EE (letE c)) =
        algebraMap (LetA O n) W.EE aN := by
      rw [haN, mul_sub, mul_smul_comm, mul_smul_comm, hΛ, map_sub, algE_smul, algE_smul, ← map_mul,
        mul_comm]
    have hlevN : ∀ ζ i, coeff i (W.lev c ζ aN) = (PD.p : LL) ^ y₀ *
        (coeff i (W.lev c ζ a) - x₀ * coeff i (W.lev c ζ (Eπ ^ h'))) := by
      intro ζ i
      rw [haN, map_sub, map_sub, lev_smul, lev_smul, map_mul, _root_.Formalism.MainNotions.UnusedSlot80.LevR.lev_letE, one_mul, ho, map_pow, map_natCast]
      ring
    have hN := memNL0 W T₂ Pt π' Eπ h' c haNΔ heN hΛN x hx fun τ ζ hpt => by
      cases hu : up τ
      · obtain ⟨u, hyu, -⟩ := simple W hinj hp9 c (hprim τ ζ hpt) (hDr τ ζ hpt hu)
        have ht := DD.transfer hyD huD' hyu (h' + b τD + S) ⟨a, ha⟩ ⟨Eπ ^ h', W.AΔ.pow_mem hEΔ _⟩ x₀ hx₀
        refine ⟨h' + b τD + S, fun i hi => ?_, low T₂ V₂ hd2 τ ζ hpt x hx _ ?_⟩
        · rw [hlevN, show coeff i (W.lev c ζ a) = x₀ * coeff i (W.lev c ζ (Eπ ^ h')) from ht i hi,
            sub_self, mul_zero]
        · have := hτD τ ζ hpt hu
          subst this
          simp only [hu]; push_cast; omega
      · have := hbS τ
        obtain ⟨e₁, he₁, -⟩ := hE τ ζ hpt
        refine ⟨h' - b τ, fun i hi => ?_, ?_⟩
        · have h2 := van_of_dvd (G := 1) he₁ h' i (by omega)
          rw [mul_one, ← map_pow] at h2
          rw [hlevN, hup τ ζ hpt hu i (by omega), h2, mul_zero, sub_zero, mul_zero]
        · rw [show (h' : ℤ) - ((h' - b τ : ℕ) : ℤ) = b τ by omega]
          exact hxU τ ζ hpt hu
    have hK2 := letE_inv W T₂ Pt π' Eπ h' c hEΔ (mkL W T₂ π' c x hx)
    refine lifts_mono W F (Nat.add_le_add_left (hy₀.trans (le_max_right _ _)) _)
      (combine W F hMF2 hM ρ y₀ o ⟨_, h1⟩ ⟨_, (Submodule.mem_inf.1 hK2).1⟩
        ⟨_, ModelFPf.NL_le_LamLA W T₂ π' Eπ h' c Pt hN⟩ (Subtype.ext ?_) (fun z hz hαz => ?_)
        (fun z hz hαz => ?_) y hy hα hyI)
    · simp only [Submodule.coe_add, Submodule.coe_smul, TensorProduct.sub_tmul,
        ← TensorProduct.smul_tmul']
      abel
    · exact core W F hfr hc1 hc2 hj1 hj2 hMF1 hMF2 hM _ x hx x₁ hx₁ ρ hdiff
        (letE_inv W T₁ Pt π' Eπ h' c hEΔ _) hK2 _ z hz hαz
    · exact u3upPf_lift W F Pt π' Eπ h' M ρ c _ _ hMF2 hM hW hNL hG1 hG2 _ _ hN z hz hαz

end Main

end Formalism.MainNotions.N.Ln34.LevelExpansions

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.MixLocal =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3mixlinkPf =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3mixlinkPf", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.UpPositionOfModels\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DescentValuation\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DvdCondition\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfPt\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GamPiPf\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GeneratorBoundOfHypotheses\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GradNPfC\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.KapPiPf\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.MixLocal\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.NinLamPf\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.PhibOLComplete\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.PolyExpand\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.WLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules Formalism.MainNotions.N.Ln34.DescentValuation



theorem u3mixlink_pf : MixedSlotOfModels := by
  intro D HW Fo Cm CA CB CK hA hdr hrk hMF l hlp hl K LL hG π' E hp T₁ T₂ F S η m h' up b c α β hfr hN he
  obtain ⟨hc1, hc2, hon, hd1, hd2, hηb, hbS, hh, -, -⟩ := hN
  have hpl : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  have hJ1 : ∀ τ, JumpsInV ((D.loc l).PD K) T₁.ρ τ (Set.Icc (-(h' : ℤ)) h') := fun τ =>
    u3downPf_jumps T₁ τ (up τ) (b τ) S η h' (hd1 τ) (hηb τ) (hbS τ)
  have hJ2 : ∀ τ, JumpsInV ((D.loc l).PD K) T₂.ρ τ (Set.Icc (-(h' : ℤ)) h') := fun τ =>
    u3downPf_jumps T₂ τ (up τ) (b τ) S η h' (hd2 τ) (hηb τ) (hbS τ)
  have hs1 : 1 ≤ sK l K := u3downPf_sK_pos hl K LL hG
  have hM : 1 ≤ MK l K h' := u3upPf_MK_pos hl K LL hG h' hh
  have hF' := hMF l hl K LL hG π' E hp h' hh c α β hfr
  have hs : ((HW l).W K 1 LL hG).s = 1 := (HW l).W_s K 1 LL hG
  have hp2 : ((D.loc l).PD K).p ≠ 2 := by rw [hpl]; exact hl
  have hgk : ((HW l).W K 1 LL hG).gamK = ((HW l).W K 1 LL hG).gam :=
    ((HW l).W K 1 LL hG).gamK_eq_one hs hp2
  have hprim : ∀ τ ζ, Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ → IsPrimitiveRoot ζ ((D.loc l).PD K).p := by
    intro τ ζ hpt
    rw [hpl]
    exact framepf_pt_prim D HW hG c ζ τ hpt
  have hinj : Function.Injective (algebraMap ↥(OL LL) ↥LL.1) := Subtype.val_injective
  have hRv : ∀ y : ↥LL.1, 0 ≤ (D.loc l).v LL y ↔ ∃ a : ↥(OL LL), algebraMap ↥(OL LL) ↥LL.1 a = y := by
    intro y
    rw [(D.loc l).v_O LL y]
    exact ⟨fun h => ⟨⟨y, h⟩, rfl⟩, fun ⟨a, ha⟩ => ha ▸ a.2⟩
  have hDVR : IsDiscreteValuationRing ↥(OL LL) := GenPf.isDVR (D.loc l) LL
  have hcpl : IsAdicComplete (Ideal.span {((((D.loc l).PD K).p : ℕ) : ↥(OL LL))}) ↥(OL LL) := by
    rw [hpl]; exact FrobeniusSpanLemma.phib_OL_complete LL
  have hfact : Fact ((D.loc l).PD K).p.Prime := ⟨((D.loc l).PD K).hp⟩
  obtain ⟨-, -, p3, p4, -, -, -, -, p9, -⟩ := hA.1 l K 1 LL hG
  have hV : ∀ T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL), IsCrys ((D.loc l).PD K) T.ρ →
      LevelExpansions.ValH ((HW l).W K 1 LL hG) T (Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG) π' c := by
    intro T hT
    obtain ⟨⟨hfc, -⟩, hfd⟩ := hA.2.2.2.2.2.2.2.2.2.2.1 l K LL T
    have : FiniteDimensional ↥LL.1
        ↥(DcrisL ((D.loc l).PD K) T.ρ (((HW l).W K 1 LL hG).emb c)) :=
      Submodule.finiteDimensional_of_le (inf_le_left : _ ≤ Dcris ((D.loc l).PD K) T.ρ)
    have : FiniteDimensional ↥LL.1 ↥(Formalism.MainNotions.DeltaInvariantLattices.ιDi ((HW l).W K 1 LL hG) T c) := by
      unfold Formalism.MainNotions.DeltaInvariantLattices.ιDi
      infer_instance
    obtain ⟨π₀, E₀, -, hm⟩ := (p9 T hT hs hp2).2.1
    exact LevelExpansions.valH_of ((Cm l).C K 1 LL hG).tie hinj T _ c hs hT hprim hp hs1 hm (p3 T hT) (p4 T hT)
      (fun τ => (hfd τ).1) fun τ => by rw [hrk l K LL hG T hT c, hdr l K LL ⟨1, hG⟩ T hT τ]
  have hp' : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) 2 (sK l K) π' E := he ▸ hp
  have h2s : 2 * sK l K = ((D.loc l).PD K).p - 1 := by
    rw [hpl, ← he]
    exact Nat.mul_div_cancel' (DvdPf.dvdCondition l hl K LL hG)
  refine LevelExpansions.mix_local ((HW l).W K 1 LL hG) hinj F hp' h2s hs1 hprim (fun ζ hζ => ?_)
    (fun τ ζ hpt => ?_) (fun τ ζ hpt => u3upPf_pt_over D HW hG c ζ τ hpt) ?_ ?_ hc1 hc2 hd1 hd2 hηb hbS
    hh hfr (hF' T₁ hc1 hJ1) (hF' T₂ hc2 hJ2) hM (hV T₁ hc1) (hV T₂ hc2)
    (w_pf D HW Fo Cm CA CB CK hA l hl K LL hG π' E hp T₁ T₂ F h' hc1 hc2 hon hJ1)
    (ninlam_pf D HW Fo Cm CA CB CK hA l hl K LL hG π' E hp T₁ h' hc1 hJ1)
    (gamPiCondition D HW Fo Cm CA CB CK hA l hl K LL hG π' E hp T₁ hc1)
    (gamPiCondition D HW Fo Cm CA CB CK hA l hl K LL hG π' E hp T₂ hc2) ?_
  · have hi : IsIntegral ℤ_[l] ζ := by
      refine IsIntegral.of_pow ((D.loc l).PD K).hp.pos ?_
      rw [hζ.pow_eq_one]
      exact isIntegral_one
    exact ⟨⟨ζ, hi⟩, rfl⟩
  · refine ⟨algebraMap ↥(OL LL) ↥LL.1 (((HW l).W K 1 LL hG).χΓ ((HW l).W K 1 LL hG).gamK : ↥(OL LL)),
      (((((HW l).W K 1 LL hG).χΓ ((HW l).W K 1 LL hG).gamK).isUnit.map
        (algebraMap ↥(OL LL) ↥LL.1)).ne_zero), fun a => ?_⟩
    have hv : ((1 : ℕ) : WithTop ℚ) ≤ (D.loc l).v LL (algebraMap ↥(OL LL) ↥LL.1
        (((HW l).W K 1 LL hG).χΓ ((HW l).W K 1 LL hG).gamK : ↥(OL LL)) - ((1 : ℕ) : ↥LL.1)) := by
      rw [hgk, Nat.cast_one, Nat.cast_one, ((HW l).W K 1 LL hG).gam_gen, hs, Nat.cast_one]
    have h1' : IsPrimitiveRoot ζ (((D.loc l).PD K).p ^ 1) := by rw [pow_one]; exact hprim τ ζ hpt
    exact ((Cm l).C K 1 LL hG).tie.lev_Γ ((HW l).W K 1 LL hG).gamK c ζ ζ 1 1 h1' hv (by rw [pow_one]) a
  · intro τ τ' τ'' h h' h'' hne
    have : FiniteDimensional ℚ_[l] ↥K.1 := K.2
    have : FiniteDimensional ↥(K0 K) ↥K.1 := Module.Finite.of_restrictScalars_finite ℚ_[l] _ _
    have hcd := kapPiPf_card ((HW l).W K 1 LL hG) c
    rw [show finrank ↥(K0 K) ↥K.1 = 2 from he] at hcd
    by_contra hcon
    push Not at hcon
    have h3 : 2 < Nat.card {τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1 //
        Formalism.MainNotions.DeltaInvariantLattices.OverLetter ((HW l).W K 1 LL hG) τ c} := by
      have := Fintype.ofFinite {τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1 //
        Formalism.MainNotions.DeltaInvariantLattices.OverLetter ((HW l).W K 1 LL hG) τ c}
      rw [Nat.card_eq_fintype_card, Fintype.two_lt_card_iff]
      exact ⟨⟨τ, h⟩, ⟨τ', h'⟩, ⟨τ'', h''⟩, fun e => hne (congrArg Subtype.val e),
        fun e => hcon.1 (congrArg Subtype.val e).symm, fun e => hcon.2 (congrArg Subtype.val e).symm⟩
    omega
  · intro k hk
    rw [hpl] at hk
    exact gradNPf_unit_nat ((D.loc l).v LL) (algebraMap ↥(OL LL) ↥LL.1) hinj hRv l hlp.out
      ((D.loc l).v_l LL) k hk
  · intro b' B hb hbB hBb
    rw [hpl]
    exact LevelExpansions.yc_bound l b' B η h' hb hbB hBb

end Formalism.MainNotions.N.Ln34

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3mixlinkPf =====
