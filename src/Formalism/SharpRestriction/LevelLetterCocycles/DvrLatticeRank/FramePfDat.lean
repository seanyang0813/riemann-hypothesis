module

public import Formalism.SharpRestriction.LevelLetterCocycles.DownSlotProposition
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfEqv
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfL
public import Formalism.SharpRestriction.LevelLetterCocycles.MapCompZero
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfLoc
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfPt
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfA
public import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation
public import Mathlib.LinearAlgebra.Matrix.Defs
public import Mathlib.RingTheory.Ideal.Defs
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.RingTheory.Ideal.Quotient.Defs
public import Mathlib.RingTheory.Ideal.Span
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CapelliComplements.FirstLemmaB
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CapelliComplements.FirstLemmaI
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CapelliComplements.FirstLemmaJ
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import Mathlib.RingTheory.Ideal.BigOperators
public import Mathlib.Data.Matrix.Mul
public import Mathlib.RingTheory.PowerSeries.Substitution
public import Mathlib.RingTheory.PowerSeries.Inverse
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfAlpha
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfNat
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GradNPfA
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GradNPfB
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.InvLiftPfA

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfAsm, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfHH, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfLocC, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FrameAbs, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfMat, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfDat

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfAsm =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfAsm", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DownSlotProposition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfEqv\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfNat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules TensorProduct

section Local

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n) (Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop) (π' Eπ : LetA O n)
    (h' M σ : ℕ) (c : ZMod n)

structure FramepfData (T : LocLat G Qp LL O) (hh : LcQ W T π' c →ₗ[O] W.DD T)
    (Ψ : W.EE ⊗[O] LcQ W T π' c →ₗ[W.EE] W.DD T) (Φ : W.DD T →ₗ[W.EE] W.EE ⊗[O] LcQ W T π' c) : Prop where
  hγ : ∀ ℓ, W.γD T W.gam (hh ℓ) - hh ℓ ∈ PiNS W T π' M
  hmod : ∀ z hz, hh (mkL W T π' c z hz) - ((PD.p : ℕ) : O) ^ σ • z ∈ PiNS W T π' 1
  hΨ : ∀ e ℓ, Ψ (e ⊗ₜ ℓ) = e • W.φD T (hh ℓ)
  ΨJ : ∀ x ∈ JLA W T π' Eπ h' M c, Ψ x ∈ JP W T π' Eπ h' M c
  ΦJ : ∀ y ∈ JP W T π' Eπ h' M c, Φ y ∈ JLA W T π' Eπ h' M c
  βα : ∀ x ∈ LamLA W T π' Eπ h' c ⊤, Φ (Ψ x) - ((PD.p : ℕ) : O) ^ (2 * σ) • x ∈ JLA W T π' Eπ h' M c
  αβ : ∀ y ∈ LamPS W T Eπ h' c, Ψ (Φ y) - ((PD.p : ℕ) : O) ^ (2 * σ) • y ∈ JP W T π' Eπ h' M c
  sat : ∀ x ∈ LamLA W T π' Eπ h' c ⊤, ((PD.p : ℕ) : O) ^ (2 * σ) • x ∈ JLA W T π' Eπ h' M c →
    x ∈ JLA W T π' Eπ h' M c
  inj : ∀ x ∈ PiNS W T π' 1, W.γD T W.gam x - x ∈ PiNS W T π' M → x ∈ PiNS W T π' M
  loc : ∀ τ ζ, Pt c ζ τ → ∀ x y, Ψ x - y ∈ JP W T π' Eπ h' M c →
    ∀ (m : ℕ) (a : Fin m → ↥W.AΔ) (z : Fin m → W.DD T), IsRepL W T π' Eπ h' c x a z →
    ∀ (k : ℕ) (hk : W.Q ^ k • (Eπ ^ h' • y) ∈ W.N T) (i : ℤ), i < k + 4 * h' →
      W.levN T c ζ ⟨_, hk⟩ i =
        (PD.p ^ σ) • serMul (W.lev c ζ (W.Q ^ k)) (expS W T c ζ (fun j => (a j : LetA O n)) z) i

theorem quotientMk_eq_iff_sub_mem {T : LocLat G Qp LL O} {y y' : W.DD T} (hy : y ∈ LamPS W T Eπ h' c)
    (hy' : y' ∈ LamPS W T Eπ h' c) :
    mkP W T π' Eπ h' M c y hy = mkP W T π' Eπ h' M c y' hy' ↔ y - y' ∈ JP W T π' Eπ h' M c :=
  Submodule.Quotient.eq _

theorem framepf_mkLA_eq {T : LocLat G Qp LL O} {x x' : LA W T π' c} (hx : x ∈ LamLA W T π' Eπ h' c ⊤)
    (hx' : x' ∈ LamLA W T π' Eπ h' c ⊤) :
    mkLA W T π' Eπ h' M c x hx = mkLA W T π' Eπ h' M c x' hx' ↔ x - x' ∈ JLA W T π' Eπ h' M c :=
  Submodule.Quotient.eq _



theorem framepf_frameA (hK : W.gamK = W.gam) (hu : IsUnit (algebraMap (LetA O n) W.EE π'))
    (huE : IsUnit (algebraMap (LetA O n) W.EE Eπ)) (hΔπ : ∀ δ ∈ W.DelF, W.γA δ π' = π')
    (u : LetA O n) (huΔ : u ∈ W.AΔ) (hφ : W.φA π' ^ M = π' ^ M * Eπ ^ (4 * h') * u)
    {f t t' : LetA O n} (hfΔ : f ∈ W.AΔ) (hf : W.γA W.gamK π' = π' * f)
    (htΔ : t ∈ W.AΔ) (ht : W.γA W.gamK Eπ = Eπ * t)
    (ht'Δ : t' ∈ W.AΔ) (ht' : Eπ = W.γA W.gamK Eπ * t')
    (hex : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∃ (hh : LcQ W T π' c →ₗ[O] W.DD T)
      (Ψ : W.EE ⊗[O] LcQ W T π' c →ₗ[W.EE] W.DD T) (Φ : W.DD T →ₗ[W.EE] W.EE ⊗[O] LcQ W T π' c),
      (∀ x ∈ LamLA W T π' Eπ h' c ⊤, Ψ x ∈ LamPS W T Eπ h' c) ∧
      (∀ y ∈ LamPS W T Eπ h' c, Φ y ∈ LamLA W T π' Eπ h' c ⊤) ∧
      FramepfData W Pt π' Eπ h' M σ c T hh Ψ Φ) :
    FrameA W Pt π' Eπ h' M σ c := by
  have hex' : ∀ T : LocLat G Qp LL O, ∃ (hh : LcQ W T π' c →ₗ[O] W.DD T)
      (Ψ : W.EE ⊗[O] LcQ W T π' c →ₗ[W.EE] W.DD T) (Φ : W.DD T →ₗ[W.EE] W.EE ⊗[O] LcQ W T π' c),
      (∀ x ∈ LamLA W T π' Eπ h' c ⊤, Ψ x ∈ LamPS W T Eπ h' c) ∧
      (∀ y ∈ LamPS W T Eπ h' c, Φ y ∈ LamLA W T π' Eπ h' c ⊤) ∧
      (IsCrys PD T.ρ → FramepfData W Pt π' Eπ h' M σ c T hh Ψ Φ) := by
    intro T
    by_cases hT : IsCrys PD T.ρ
    · obtain ⟨hh, Ψ, Φ, h1, h2, h3⟩ := hex T hT
      exact ⟨hh, Ψ, Φ, h1, h2, fun _ => h3⟩
    · exact ⟨0, 0, 0, fun _ _ => Submodule.zero_mem _, fun _ _ => Submodule.zero_mem _,
        fun h => absurd h hT⟩
  choose hh Ψ Φ hΨL hΦL hD using hex'
  let α : FrA W π' Eπ h' M c := fun T => (Submodule.mkQ _).comp (LinearMap.codRestrict (LamPS W T Eπ h' c)
    (((Ψ T).restrictScalars O).comp (LamLA W T π' Eπ h' c ⊤).subtype) fun x => hΨL T x x.2)
  let β : FrB W π' Eπ h' M c := fun T => (Submodule.mkQ _).comp
    (LinearMap.codRestrict (LamLA W T π' Eπ h' c ⊤)
      (((Φ T).restrictScalars O).comp (LamPS W T Eπ h' c).subtype) fun y => hΦL T y y.2)
  have hα : ∀ T x hx y hy, α T ⟨x, hx⟩ = mkP W T π' Eπ h' M c y hy ↔
      Ψ T x - y ∈ JP W T π' Eπ h' M c := fun T x hx y hy =>
    quotientMk_eq_iff_sub_mem W π' Eπ h' M c (hΨL T x hx) hy
  have hβ : ∀ T y hy x hx, β T ⟨y, hy⟩ = mkLA W T π' Eπ h' M c x hx ↔
      Φ T y - x ∈ JLA W T π' Eπ h' M c := fun T y hy x hx =>
    framepf_mkLA_eq W π' Eπ h' M c (hΦL T y hy) hx
  refine ⟨α, β, fun T hT _ => ?_, fun T₁ T₂ F hT₁ hT₂ _ _ => ?_⟩
  · have D := hD T hT
    have hΨγ := framepf_Ψα_γ π' Eπ h' M c ht'Δ ht' hu huE hΔπ u huΔ hφ (hh T)
      (by rw [hK]; exact D.hγ) (Ψ T) D.hΨ
    refine ⟨fun x hx hJ => ?_, fun y hy hJ => ?_, fun x hx y hy h => ?_, fun y hy x hx h => ?_,
      fun a ha x hx y hy h hax hay => ?_, fun a ha y hy x hx h hay hax => ?_,
      fun x hx y hy h hgx hgy => ?_, fun y hy x hx h hgy hgx => ?_,
      fun τ ζ hpt x hx y hy h => D.loc τ ζ hpt x y ((hα T x hx y hy).1 h)⟩
    · exact (hα T x hx 0 (Submodule.zero_mem _)).2 (by rw [sub_zero]; exact D.ΨJ x hJ)
    · exact (hβ T y hy 0 (Submodule.zero_mem _)).2 (by rw [sub_zero]; exact D.ΦJ y hJ)
    · rw [hβ]
      have h1 := Submodule.sub_mem _ (D.βα x hx) (D.ΦJ _ ((hα T x hx y hy).1 h))
      rw [map_sub, sub_sub_sub_cancel_left] at h1
      exact h1
    · rw [hα]
      have h1 := Submodule.sub_mem _ (D.αβ y hy) (D.ΨJ _ ((hβ T y hy x hx).1 h))
      rw [map_sub, sub_sub_sub_cancel_left] at h1
      exact h1
    · rw [hα, framepf_Ψ_smulLA, ← smul_sub]
      exact framepf_JP_smul π' Eπ h' M c ha ((hα T x hx y hy).1 h)
    · rw [hβ, ← algebraMap_smul W.EE a y, map_smul, ← framepf_smulLA_alg, ← map_sub]
      exact framepf_JLA_smul π' Eπ h' M c ha ((hβ T y hy x hx).1 h)
    · rw [hα]
      have h1 := Submodule.sub_mem _
        (framepf_γ_JP π' Eπ h' M c hfΔ hf htΔ ht ((hα T x hx y hy).1 h)) (hΨγ x hx)
      rw [map_sub, sub_sub_sub_cancel_left] at h1
      exact h1
    · rw [hβ]
      have h1 := Submodule.add_mem _
        (framepf_Ψβ_γ π' Eπ h' M c hfΔ hf htΔ ht ht'Δ ht' (Ψ T) (Φ T) _ hΨγ (hΦL T) D.ΦJ D.αβ D.βα
          D.sat y hy hgy)
        (framepf_γ_JLA π' Eπ h' M c hfΔ hf htΔ ht ((hβ T y hy x hx).1 h))
      rw [map_sub, sub_add_sub_cancel] at h1
      exact h1
  · have D₁ := hD T₁ hT₁
    have D₂ := hD T₂ hT₂
    have hFN := W.map_N F hT₁ hT₂
    have hnat := framepf_Ψα_nat F hFN π' Eπ h' M c hu huE hΔπ u huΔ hφ (hh T₁) (hh T₂)
      (framepf_hh_nat F hFN π' c M _ D₂.inj (hh T₁) (hh T₂) D₁.hγ D₂.hγ D₁.hmod D₂.hmod)
      (Ψ T₁) D₁.hΨ (Ψ T₂) D₂.hΨ
    refine ⟨fun x₁ hx₁ x₂ hx₂ y₁ hy₁ hy₂ hov h => ?_, fun y₁ hy₁ hy₂ x₁ hx₁ x₂ hx₂ hov h => ?_⟩
    · rw [hα]
      exact framepf_α_nat F hFN π' Eπ h' M c (Ψ T₁) (Ψ T₂) hnat x₁ hx₁ x₂ y₁ hov
        ((hα T₁ x₁ hx₁ y₁ hy₁).1 h)
    · rw [hβ]
      exact framepf_β_nat F hFN π' Eπ h' M c (Ψ T₁) (Ψ T₂) hnat (Φ T₁) (Φ T₂) _ (hΦL T₁) (hΦL T₂)
        D₂.ΦJ D₁.αβ D₂.βα D₂.sat y₁ hy₁ hy₂ x₁ x₂ hov ((hβ T₁ y₁ hy₁ x₁ hx₁).1 h)

end Local

end Formalism.MainNotions.N.Ln34

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfAsm =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfHH =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfHH", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfL\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DownSlotProposition\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GradNPfA\nimport Formalism.SharpRestriction.LevelLetterCocycles.MapCompZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules TensorProduct

section Local

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {W : LocWach PD LL O v n} {T : LocLat G Qp LL O}
    (Bs : FramepfBas W T) (π' : LetA O n) (c : ZMod n)
    (hπ0 : ∀ j, PowerSeries.constantCoeff (π' j) = 0)
    (hΔπ : ∀ δ ∈ W.DelF, W.γA δ π' = π')
    (hR2 : ∀ a : LetA O n, a ∈ W.AΔ → ∃! f : ZMod n → PowerSeries O,
      ∀ j, a j = PowerSeries.subst (π' j) (f j))
    (γ0 : ∀ δ ∈ W.DelF, PowerSeries.constantCoeff (W.γ₀ δ PowerSeries.X) = 0)
    (hu : IsUnit (algebraMap (LetA O n) W.EE π'))

include hπ0 hΔπ γ0 in
theorem framepf_hhx_ι_Δ (i : ZMod n) (g : PowerSeries O) (δ : W.Gam) (hδ : δ ∈ W.DelF) :
    W.γA δ (framepf_ι π' i g) = framepf_ι π' i g := by
  have h := framepf_ι_letγ π' i (hπ0 i) (W.γ₀ δ) (γ0 δ hδ) PowerSeries.X (by simp)
    (by rw [PowerSeries.subst_X (PowerSeries.HasSubst.of_constantCoeff_zero' (hπ0 i))];
        exact congrFun (hΔπ δ hδ) i) g
  rw [PowerSeries.X_subst] at h
  exact h

include hπ0 hΔπ γ0 in
theorem framepf_hhx_vec_mem (H : Matrix (Fin Bs.r) (Fin Bs.r) (PowerSeries O)) (k : Fin Bs.r) :
    framepf_vec Bs π' (c - 1) H k ∈ NcS W T (c - 1) := by
  unfold framepf_vec
  refine Submodule.sum_mem _ fun m _ => ?_
  rw [mem_NcS]
  obtain ⟨hN, hΔ⟩ := Bs.mem m
  refine ⟨(W.N T).smul_mem _ hN, fun δ hδ => ?_, ?_⟩
  · rw [_root_.Formalism.MainNotions.LiftingTheory.gammaD_semilinear, framepf_hhx_ι_Δ π' hπ0 hΔπ γ0 _ _ δ hδ, hΔ δ hδ]
  · rw [smul_smul, framepf_letE_ι π' (c - 1) hπ0]

theorem framepf_hhx_mem (H : Matrix (Fin Bs.r) (Fin Bs.r) (PowerSeries O)) (ℓ : LcQ W T π' c) :
    framepf_hh Bs π' c hπ0 hΔπ hR2 γ0 hu H ℓ ∈ NcS W T (c - 1) := by
  unfold framepf_hh
  rw [LinearMap.comp_apply, Fintype.linearCombination_apply]
  exact Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ (framepf_hhx_vec_mem Bs π' c hπ0 hΔπ γ0 H k)

include hπ0 in
theorem framepf_hhx_vec_pow (i : ZMod n) (Hm : Matrix (Fin Bs.r) (Fin Bs.r) (PowerSeries O)) (M : ℕ)
    (k : Fin Bs.r) :
    framepf_vec Bs π' i ((PowerSeries.X : PowerSeries O) ^ M • Hm) k =
      π' ^ M • framepf_vec Bs π' i Hm k := by
  induction M with
  | zero => rw [pow_zero, pow_zero, one_smul, one_smul]
  | succ M ih => rw [pow_succ', mul_smul, framepf_vec_X_smul Bs π' i hπ0, ih, smul_smul, ← pow_succ']

theorem framepf_hhx_apply (H : Matrix (Fin Bs.r) (Fin Bs.r) (PowerSeries O)) (ℓ : LcQ W T π' c) :
    framepf_hh Bs π' c hπ0 hΔπ hR2 γ0 hu H ℓ =
      ∑ k, framepf_Lbas Bs π' c hπ0 hΔπ hR2 γ0 hu ℓ k • framepf_vec Bs π' (c - 1) H k := by
  unfold framepf_hh
  rw [LinearMap.comp_apply, Fintype.linearCombination_apply]
  rfl

theorem framepf_hhx_γ (Gs : PowerSeries O) (hGs0 : PowerSeries.constantCoeff Gs = 0)
    (hGs : W.γ₀ W.gam (π' (c - 1)) = PowerSeries.subst (π' (c - 1)) Gs)
    (Γ : Matrix (Fin Bs.r) (Fin Bs.r) (PowerSeries O))
    (hΓ : ∀ m, W.γD T W.gam ((letE (c - 1) : LetA O n) • Bs.b m) = framepf_vec Bs π' (c - 1) Γ m)
    (H Km : Matrix (Fin Bs.r) (Fin Bs.r) (PowerSeries O)) (M : ℕ)
    (hH : Γ * H.map (PowerSeries.subst Gs) - H = (PowerSeries.X : PowerSeries O) ^ M • Km)
    (ℓ : LcQ W T π' c) :
    W.γD T W.gam (framepf_hh Bs π' c hπ0 hΔπ hR2 γ0 hu H ℓ) - framepf_hh Bs π' c hπ0 hΔπ hR2 γ0 hu H ℓ ∈
      PiNS W T π' M := by
  have e : W.γD T W.gam (framepf_hh Bs π' c hπ0 hΔπ hR2 γ0 hu H ℓ) -
      framepf_hh Bs π' c hπ0 hΔπ hR2 γ0 hu H ℓ = π' ^ M • framepf_hh Bs π' c hπ0 hΔπ hR2 γ0 hu Km ℓ := by

    rw [framepf_hhx_apply, framepf_hhx_apply, map_sum, ← Finset.sum_sub_distrib, Finset.smul_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [map_smul, framepf_γ_vec Bs π' (c - 1) hπ0 Gs hGs0 hGs Γ hΓ, sub_eq_iff_eq_add.1 hH,
      framepf_vec_add Bs π' (c - 1) hπ0, framepf_hhx_vec_pow Bs π' hπ0, smul_add, add_sub_cancel_right,
      smul_comm]
  have hm := (mem_NcS W T (c - 1) _).1 (framepf_hhx_mem Bs π' c hπ0 hΔπ hR2 γ0 hu Km ℓ)
  rw [e, mem_PiNS]
  refine ⟨⟨_, hm.1, rfl⟩, fun δ hδ => ?_⟩
  rw [_root_.Formalism.MainNotions.LiftingTheory.gammaD_semilinear, map_pow, hΔπ δ hδ, hm.2.1 δ hδ]

theorem framepf_hhx_mod (lσ : O) (H Km : Matrix (Fin Bs.r) (Fin Bs.r) (PowerSeries O))
    (hH : H = PowerSeries.C lσ • (1 : Matrix (Fin Bs.r) (Fin Bs.r) (PowerSeries O)) +
      (PowerSeries.X : PowerSeries O) • Km)
    (z : W.DD T) (hz : z ∈ NcS W T (c - 1)) :
    framepf_hh Bs π' c hπ0 hΔπ hR2 γ0 hu H (mkL W T π' c z hz) - lσ • z ∈ PiNS W T π' 1 := by
  set ℓ := mkL W T π' c z hz with hℓ
  have hv : ∀ k, framepf_coordL Bs π' c hπ0 hΔπ hR2 γ0
      ⟨_, framepf_hhx_vec_mem Bs π' c hπ0 hΔπ γ0 H k⟩ = lσ • Pi.single k 1 := by
    intro k
    have e := framepf_gco_eq Bs π' c hπ0 hΔπ hR2 γ0 ⟨_, framepf_hhx_vec_mem Bs π' c hπ0 hΔπ γ0 H k⟩
      (fun m => H m k) rfl
    funext m
    rw [framepf_coordL_apply, e, hH]
    by_cases hmk : m = k
    · subst hmk; simp
    · simp [Matrix.one_apply_ne hmk, Pi.single_eq_of_ne hmk]
  have hsum : (⟨_, framepf_hhx_mem Bs π' c hπ0 hΔπ hR2 γ0 hu H ℓ⟩ : ↥(NcS W T (c - 1))) =
      ∑ k, framepf_Lbas Bs π' c hπ0 hΔπ hR2 γ0 hu ℓ k •
        (⟨_, framepf_hhx_vec_mem Bs π' c hπ0 hΔπ γ0 H k⟩ : ↥(NcS W T (c - 1))) := by
    apply Subtype.ext
    rw [Submodule.coe_sum]
    exact framepf_hhx_apply Bs π' c hπ0 hΔπ hR2 γ0 hu H ℓ
  have key := (framepf_coordL_ker Bs π' c hπ0 hΔπ hR2 γ0 hu
    (⟨_, framepf_hhx_mem Bs π' c hπ0 hΔπ hR2 γ0 hu H ℓ⟩ - lσ • ⟨z, hz⟩)).1 (by

      rw [map_sub, map_smul, hsum, map_sum, ← framepf_Lbas_mk Bs π' c hπ0 hΔπ hR2 γ0 hu ⟨z, hz⟩]
      simp only [map_smul, hv]
      have : Submodule.Quotient.mk (⟨z, hz⟩ : ↥(NcS W T (c - 1))) = ℓ := rfl
      rw [this, sub_eq_zero]
      funext m
      simp [Finset.sum_apply, Pi.single_apply, mul_comm])
  exact key

end Local

end Formalism.MainNotions.N.Ln34

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfHH =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfLocC =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfLocC", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DownSlotProposition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfLoc\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfPt\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfA\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapCompZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.Interval.Finset.Box\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules TensorProduct

section Ser

variable {LL V : Type} [Field LL] [AddCommGroup V] [Module LL V]

theorem framepf_serC_neg (f : PowerSeries LL) (d : V) (i : ℤ) (hi : i < 0) : serC f d i = 0 := by
  simp only [serC]
  rw [if_neg (by omega)]

theorem framepf_serMul_serC (g f : PowerSeries LL) (d : V) (i : ℤ) :
    serMul g (serC f d) i = serC (g * f) d i := by
  rcases lt_or_ge i 0 with hi | hi
  · rw [framepf_serC_neg _ _ _ hi]
    simp only [serMul]
    have h0 : ∀ j : ℕ, PowerSeries.coeff j g • serC f d (i - j) = 0 := fun j => by
      rw [framepf_serC_neg _ _ _ (by omega), smul_zero]
    simp [h0]
  · obtain ⟨n, rfl⟩ := Int.eq_ofNat_of_zero_le hi
    simp only [serMul]
    rw [finsum_eq_sum_of_support_subset _ (s := Finset.range (n + 1)) (by
      intro j hj
      rw [Function.mem_support] at hj
      rw [Finset.coe_range, Set.mem_Iio]
      by_contra hjn
      exact hj (by rw [framepf_serC_neg _ _ _ (by omega), smul_zero]))]
    have h1 : ∀ j ∈ Finset.range (n + 1), PowerSeries.coeff j g • serC f d ((n : ℤ) - j) =
        (PowerSeries.coeff j g * PowerSeries.coeff (n - j) f) • d := by
      intro j hj
      rw [Finset.mem_range] at hj
      simp only [serC]
      rw [if_pos (by omega), show ((n : ℤ) - j).toNat = n - j by omega, smul_smul]
    rw [Finset.sum_congr rfl h1, ← Finset.sum_smul]
    simp only [serC]
    rw [if_pos hi, PowerSeries.coeff_mul, Finset.Nat.sum_antidiagonal_eq_sum_range_succ_mk]
    simp

theorem framepf_serMul_congr (g : PowerSeries LL) (m : ℕ) (hg : ∀ j < m, PowerSeries.coeff j g = 0)
    (f f' : ℤ → V) (R : ℤ) (h : ∀ i < R, f i = f' i) (i : ℤ) (hi : i < R + m) :
    serMul g f i = serMul g f' i := by
  simp only [serMul]
  refine finsum_congr (fun j => ?_)
  by_cases hj : j < m
  · rw [hg j hj, zero_smul, zero_smul]
  · rw [h (i - j) (by omega)]

theorem framepf_serMul_zero (g : PowerSeries LL) (i : ℤ) : serMul g (fun _ => (0 : V)) i = 0 := by
  simp [serMul]

theorem framepf_serMul_sum {ι : Type} [Fintype ι] (g : PowerSeries LL) (f : ι → PowerSeries LL)
    (d : ι → V) (i : ℤ) :
    serMul g (fun k => ∑ j, serC (f j) (d j) k) i = ∑ j, serC (g * f j) (d j) i := by
  simp only [serMul, Finset.smul_sum]
  rw [finsum_sum_comm]
  · refine Finset.sum_congr rfl (fun t _ => ?_)
    rw [← framepf_serMul_serC]
    rfl
  · intro t _
    refine (Set.finite_Iio (i.toNat + 1)).subset ?_
    intro j hj
    rw [Function.mem_support] at hj
    rw [Set.mem_Iio]
    by_contra hjn
    exact hj (by rw [framepf_serC_neg _ _ _ (by omega), smul_zero])

theorem framepf_serMul_cancel (g : PowerSeries LL) (m : ℕ) (hg : ∀ j < m, PowerSeries.coeff j g = 0)
    (hgm : PowerSeries.coeff m g ≠ 0) (f f' : ℤ → V) (m₀ : ℤ) (hf : ∀ k < m₀, f k = 0)
    (hf' : ∀ k < m₀, f' k = 0) (R : ℤ) (h : ∀ i < R + m, serMul g f i = serMul g f' i) (i : ℤ)
    (hi : i < R) : f i = f' i := by
  have key : ∀ t : ℕ, ∀ k : ℤ, k < R → k < m₀ + t → f k = f' k := by
    intro t
    induction t with
    | zero =>
      intro k _ hk
      rw [hf k (by omega), hf' k (by omega)]
    | succ t ih =>
      intro k hkR hk
      rcases lt_or_ge k (m₀ + t) with hk' | hk'
      · exact ih k hkR hk'
      rcases lt_or_ge k m₀ with hk0 | hk0
      · rw [hf k hk0, hf' k hk0]
      have hs := h (k + m) (by omega)
      simp only [serMul] at hs
      have hsupp : ∀ F : ℤ → V, (∀ x < m₀, F x = 0) →
          (Function.support fun j : ℕ => PowerSeries.coeff j g • F (k + m - j)) ⊆
            ↑(Finset.range ((k + m - m₀).toNat + 1)) := by
        intro F hF j hj
        rw [Function.mem_support] at hj
        rw [Finset.coe_range, Set.mem_Iio]
        by_contra hjn
        exact hj (by rw [hF _ (by omega), smul_zero])
      rw [finsum_eq_sum_of_support_subset _ (hsupp f hf),
        finsum_eq_sum_of_support_subset _ (hsupp f' hf')] at hs
      have hmem : m ∈ Finset.range ((k + m - m₀).toNat + 1) := by
        rw [Finset.mem_range]
        omega
      rw [← Finset.add_sum_erase _ _ hmem, ← Finset.add_sum_erase _ _ hmem] at hs
      have hrest : ∑ j ∈ (Finset.range ((k + m - m₀).toNat + 1)).erase m,
            PowerSeries.coeff j g • f (k + m - j) =
          ∑ j ∈ (Finset.range ((k + m - m₀).toNat + 1)).erase m,
            PowerSeries.coeff j g • f' (k + m - j) := by
        refine Finset.sum_congr rfl (fun j hj => ?_)
        rw [Finset.mem_erase] at hj
        rcases lt_or_gt_of_ne hj.1 with hjm | hjm
        · rw [hg j hjm, zero_smul, zero_smul]
        · rw [ih (k + m - j) (by omega) (by omega)]
      rw [hrest, add_left_inj] at hs
      simp only [add_sub_cancel_right] at hs
      exact smul_right_injective V hgm hs
  exact key ((i - m₀).toNat + 1) i hi (by omega)

end Ser

section Local

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {W : LocWach PD LL O v n}
    {Zl Ai : Type} [CommRing Zl] [CommRing Ai] [Algebra Zl O] [Algebra Zl Ai]
    {RW : Type} [CommRing RW] [Algebra O RW]
    {inclR : (O ⊗[Zl] Ai) →ₐ[O] RW} {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : O ⊗[Zl] Ai}
    {E : EtTie W (O ⊗[Zl] Ai) RW inclR φR gR πA} {ιdR : Ai →+* BdR} {p1 : Ai} {tS zS : BdR}
    (Ct : CmpTie W E ιdR p1 tS zS) (T : LocLat G Qp LL O)

include Ct in
theorem framepf_levB_neg (i : ZMod n)
    (hneg : ∀ (x : ↥(W.N T)) (k : ℤ), k < 0 → W.levN T i 1 x k = 0) (x : ↥(W.N T)) (r : ℤ)
    (hr : r < 0) : Ct.levB T i 1 x r = 0 := by
  have h1 := Ct.levN_eq T i 1 x r
  rw [hneg x r hr] at h1
  have hinj : Function.Injective (ιV PD (LL := LL) (V := T.V)) := by
    have h2 := Module.Flat.lTensor_preserves_injective_linearMap (M := T.V)
      (PD.ι.toLinearMap.restrictScalars Qp) PD.ι_inj
    convert h2 using 1
    funext y
    induction y using TensorProduct.induction_on with
    | zero => simp
    | tmul a b => simp [ιV, AlgebraTensorModule.map_tmul, LinearMap.lTensor_tmul]
    | add a b ha hb => simp only [map_add (f := _), ha, hb]
  exact hinj (by rw [← h1, map_zero])

theorem framepf_Qpow_mem {p : W.DD T} {m₀ m : ℕ} (h : W.Q ^ m₀ • p ∈ W.N T) (hm : m₀ ≤ m) :
    W.Q ^ m • p ∈ W.N T := by
  obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le hm
  rw [pow_add, mul_comm, mul_smul]
  exact Submodule.smul_mem _ _ h


include Ct in
theorem framepf_span_vanish (hc : IsCrys PD T.ρ) (c : ZMod n) (ζ : LL) (hζ : IsPrimitiveRoot ζ PD.p)
    (hQ0 : PowerSeries.constantCoeff (W.lev c ζ W.Q) = 0)
    (hneg : ∀ (x : ↥(W.N T)) (k : ℤ), k < 0 → W.levN T (c - 1) 1 x k = 0) {p : W.DD T}
    (hp : p ∈ Submodule.span (LetA O n) (W.φD T '' (W.N T : Set (W.DD T)))) :
    ∃ m₀ : ℕ, ∀ m ≥ m₀, ∃ h : W.Q ^ m • p ∈ W.N T, ∀ i : ℤ, i < m → W.levN T c ζ ⟨_, h⟩ i = 0 := by
  induction hp using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨z, hz, rfl⟩ := hx
    obtain ⟨k, hk⟩ := W.N_φ T z hz
    refine ⟨k, fun m hm => ⟨framepf_Qpow_mem T hk hm, fun i hi => ?_⟩⟩
    have hQ : ∀ j < m, PowerSeries.coeff j (W.lev c ζ (W.Q ^ m)) = 0 := fun j hj => by
      rw [map_pow]; exact framepf_coeff_pow_lt _ hQ0 _ _ hj
    rw [Ct.levN_eq, framepf_levB_phi Ct T hc c ζ ⟨1, by simpa using hζ⟩ hζ.pow_eq_one ⟨z, hz⟩ m 0
      (framepf_Qpow_mem T hk hm) hQ (framepf_levB_neg Ct T (c - 1) hneg _) (fun r h1 h2 => by omega) i
      (by omega)]
    unfold serC
    split_ifs with h0
    · rw [hQ _ (by omega), zero_smul, map_zero]
    · rw [map_zero]
  | zero =>
    refine ⟨0, fun m _ => ⟨by simp, fun i _ => ?_⟩⟩
    have : (⟨W.Q ^ m • (0 : W.DD T), by simp⟩ : ↥(W.N T)) = 0 := Subtype.ext (by simp)
    rw [this, map_zero, Pi.zero_apply]
  | add x y _ _ hx hy =>
    obtain ⟨m₁, h₁⟩ := hx
    obtain ⟨m₂, h₂⟩ := hy
    refine ⟨max m₁ m₂, fun m hm => ?_⟩
    obtain ⟨a₁, b₁⟩ := h₁ m (le_of_max_le_left hm)
    obtain ⟨a₂, b₂⟩ := h₂ m (le_of_max_le_right hm)
    have hN : W.Q ^ m • (x + y) ∈ W.N T := by rw [smul_add]; exact (W.N T).add_mem a₁ a₂
    refine ⟨hN, fun i hi => ?_⟩
    have : (⟨_, hN⟩ : ↥(W.N T)) = ⟨_, a₁⟩ + ⟨_, a₂⟩ := Subtype.ext (smul_add _ _ _)
    rw [this, map_add (f := _), Pi.add_apply, b₁ i hi, b₂ i hi, add_zero]
  | smul s x _ hx =>
    obtain ⟨m₁, h₁⟩ := hx
    refine ⟨m₁, fun m hm => ?_⟩
    obtain ⟨a₁, b₁⟩ := h₁ m hm
    have hN : W.Q ^ m • (s • x) ∈ W.N T := by rw [smul_comm]; exact (W.N T).smul_mem _ a₁
    refine ⟨hN, fun i hi => ?_⟩
    have : (⟨_, hN⟩ : ↥(W.N T)) = s • ⟨_, a₁⟩ := Subtype.ext (smul_comm _ _ _)
    rw [this, ModelFPf.levN_eq_serMul, framepf_serMul_congr _ 0 (fun j hj => by omega) _ (fun _ => 0) m
      b₁ i (by omega), framepf_serMul_zero]


include Ct in
theorem framepf_loc_core (hc : IsCrys PD T.ρ) (c : ZMod n) (ζ : LL) (hζ : IsPrimitiveRoot ζ PD.p)
    (hQ0 : PowerSeries.constantCoeff (W.lev c ζ W.Q) = 0)
    (hQ1 : PowerSeries.coeff 1 (W.lev c ζ W.Q) ≠ 0)
    (hneg : ∀ (x : ↥(W.N T)) (k : ℤ), k < 0 → W.levN T (c - 1) 1 x k = 0) (R : ℕ) {m : ℕ}
    (a : Fin m → LetA O n) (h : Fin m → ↥(W.N T))
    (hmid : ∀ j (r : ℤ), 1 ≤ r → r < R → Ct.levB T (c - 1) 1 (h j) r = 0)
    (g : LetA O n) (hg : ∀ j < R, PowerSeries.coeff j (W.lev c ζ g) = 0) (p : W.DD T)
    (hp : p ∈ Submodule.span (LetA O n) (W.φD T '' (W.N T : Set (W.DD T)))) (u : W.DD T)
    (hu : u = ∑ j, ((letE c : LetA O n) * a j) • W.φD T (h j : W.DD T) + g • p)
    (k : ℕ) (hk : W.Q ^ k • u ∈ W.N T) (i : ℤ) (hi : i < k + R) :
    W.levN T c ζ ⟨_, hk⟩ i =
      ∑ j, serC (W.lev c ζ (W.Q ^ k) * W.lev c ζ (a j)) (valAt W T c ζ (h j : W.DD T)) i := by
  obtain ⟨m₀, hm₀⟩ := framepf_span_vanish Ct T hc c ζ hζ hQ0 hneg hp
  choose e he using fun j => W.N_φ T (h j : W.DD T) (h j).2
  set d : ℕ := m₀ + ∑ j, e j with hd
  obtain ⟨hpN, hp0⟩ := hm₀ (d + k) (by omega)
  have hj : ∀ j, W.Q ^ (d + k) • W.φD T (h j : W.DD T) ∈ W.N T := fun j =>
    framepf_Qpow_mem T (he j) (by
      have := Finset.single_le_sum (f := e) (fun _ _ => Nat.zero_le _) (Finset.mem_univ j)
      omega)
  have heq : W.Q ^ d • (⟨_, hk⟩ : ↥(W.N T)) =
      ∑ j, ((letE c : LetA O n) * a j) • (⟨_, hj j⟩ : ↥(W.N T)) + g • ⟨_, hpN⟩ := by
    apply Subtype.ext
    simp only [Submodule.coe_smul, Submodule.coe_add, Submodule.coe_sum]
    rw [smul_smul, ← pow_add, hu, smul_add, Finset.smul_sum, smul_comm _ g]
    congr 1
    exact Finset.sum_congr rfl fun j _ => smul_comm _ _ _
  obtain ⟨m₁, hm₁⟩ := W.levN_supp T c ζ ⟨_, hk⟩
  refine framepf_serMul_cancel (W.lev c ζ (W.Q ^ d)) d
    (fun j hj => by rw [map_pow]; exact framepf_coeff_pow_lt _ hQ0 _ _ hj)
    (by rw [map_pow, framepf_coeff_pow_self _ hQ0]; exact pow_ne_zero _ hQ1)
    (W.levN T c ζ ⟨_, hk⟩)
    (fun i => ∑ j, serC (W.lev c ζ (W.Q ^ k) * W.lev c ζ (a j)) (valAt W T c ζ (h j : W.DD T)) i)
    (min m₁ 0) (fun r hr => hm₁ r (by omega))
    (fun r hr => Finset.sum_eq_zero fun j _ => framepf_serC_neg _ _ _ (by omega)) (k + R)
    (fun r hr => ?_) i hi

  rw [← ModelFPf.levN_eq_serMul, heq, map_add (f := _), map_sum, Pi.add_apply, Finset.sum_apply,
  framepf_serMul_sum, ModelFPf.levN_eq_serMul W T c ζ g,
  framepf_serMul_congr _ R hg _ (fun _ => 0) ((d + k : ℕ) : ℤ) hp0 r (by push_cast; omega),
  framepf_serMul_zero, add_zero]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [ModelFPf.levN_eq_serMul, framepf_serMul_congr _ 0 (fun j hj => by omega) _
    (serC (W.lev c ζ (W.Q ^ (d + k))) (valAt W T c ζ (h j : W.DD T))) (((d + k : ℕ) : ℤ) + R)
    (fun s hs => framepf_levN_phi Ct T hc c ζ ⟨1, by simpa using hζ⟩ hζ.pow_eq_one hQ0 hQ1 (h j)
      (d + k) R (hj j) (framepf_levB_neg Ct T (c - 1) hneg _) (hmid j) s hs) r (by push_cast; omega),
    framepf_serMul_serC, map_mul, ModelFPf.lev_letE, pow_add, map_mul]
  congr 1
  ring


include Ct in
theorem framepf_valAt_mod (hc : IsCrys PD T.ρ) (c : ZMod n) (ζ : LL) (hζ : IsPrimitiveRoot ζ PD.p)
    (hQ0 : PowerSeries.constantCoeff (W.lev c ζ W.Q) = 0)
    (hQ1 : PowerSeries.coeff 1 (W.lev c ζ W.Q) ≠ 0)
    (hneg : ∀ (x : ↥(W.N T)) (k : ℤ), k < 0 → W.levN T (c - 1) 1 x k = 0) (π' : LetA O n)
    (hπ : PowerSeries.constantCoeff (W.lev (c - 1) 1 π') = 0) (N : ℕ) (h z w : ↥(W.N T))
    (e : (h : W.DD T) - N • (z : W.DD T) = π' • (w : W.DD T)) :
    valAt W T c ζ (h : W.DD T) = N • valAt W T c ζ (z : W.DD T) := by
  have hv : ∀ x : ↥(W.N T), valAt W T c ζ (x : W.DD T) =
      ιV PD (LL := LL) (V := T.V) (φVB PD (LL := LL) (V := T.V) (Ct.levB T (c - 1) 1 x 0)) := fun x =>
    framepf_valAt Ct T hc c ζ ⟨1, by simpa using hζ⟩ hζ.pow_eq_one hQ0 hQ1 x
      (framepf_levB_neg Ct T (c - 1) hneg _) (W.N_φ T x x.2)
  have e' : h = N • z + π' • w := by
    apply Subtype.ext
    have : ((N • z + π' • w : ↥(W.N T)) : W.DD T) = N • (z : W.DD T) + π' • (w : W.DD T) := rfl
    rw [this, ← e]
    abel
  have h0 : Ct.levB T (c - 1) 1 (π' • w) 0 = 0 := by
    apply framepf_ιV_inj (PD := PD) T
    rw [← Ct.levN_eq, map_zero, ModelFPf.levN_eq_serMul,
      framepf_serMul_congr _ 1 (fun j hj => by
        obtain rfl : j = 0 := by omega
        rw [PowerSeries.coeff_zero_eq_constantCoeff_apply, hπ]) _ (fun _ => 0) 0 (hneg w) 0 (by omega),
      framepf_serMul_zero]
  rw [hv, hv, e', map_add (f := _), Pi.add_apply, h0, add_zero, map_nsmul, Pi.smul_apply, map_nsmul, map_nsmul]

theorem framepf_lev_π_one (i : ZMod n) : PowerSeries.constantCoeff (W.lev i 1 letπ) = 0 := by
  obtain ⟨E, hE1, -, hE⟩ := W.lev_π i 1 ⟨0, by rw [pow_zero]; exact IsPrimitiveRoot.one⟩
  simpa [hE1] using congrArg PowerSeries.constantCoeff hE


include Ct in
theorem framepf_locC (hc : IsCrys PD T.ρ) (hs : W.s = 1) (c : ZMod n) (ζ : LL)
    (hζ : IsPrimitiveRoot ζ PD.p)
    (hneg : ∀ (x : ↥(W.N T)) (k : ℤ), k < 0 → W.levN T (c - 1) 1 x k = 0)
    (hv : (0 : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ W.gam : O) - 1))
    (hχ : ∀ r : ℤ, 1 ≤ r → (algebraMap O LL (W.χΓ W.gam : O)) ^ r ≠ 1)
    (π' Eπ w w' : LetA O n) (s' h' M σ : ℕ) (hs' : 1 ≤ s') (hπ : π' = w * letπ ^ s')
    (hw' : IsUnit w') (hq : W.q = w' * Eπ) (hM : 4 * h' ≤ s' * M)
    (hh : LcQ W T π' c →ₗ[O] W.DD T) (hN : ∀ ℓ, hh ℓ ∈ W.N T)
    (hγ : ∀ ℓ, W.γD T W.gam (hh ℓ) - hh ℓ ∈ PiNS W T π' M)
    (hmod : ∀ z hz, hh (mkL W T π' c z hz) - ((PD.p : ℕ) : O) ^ σ • z ∈ PiNS W T π' 1)
    (Ψ : W.EE ⊗[O] LcQ W T π' c →ₗ[W.EE] W.DD T) (hΨ : ∀ e ℓ, Ψ (e ⊗ₜ ℓ) = e • W.φD T (hh ℓ))
    (x : LA W T π' c) (y : W.DD T) (hxy : Ψ x - y ∈ JP W T π' Eπ h' M c)
    (m : ℕ) (a : Fin m → ↥W.AΔ) (z : Fin m → W.DD T) (hrep : IsRepL W T π' Eπ h' c x a z)
    (k : ℕ) (hk : W.Q ^ k • (Eπ ^ h' • y) ∈ W.N T) (i : ℤ) (hi : i < k + 4 * h') :
    W.levN T c ζ ⟨_, hk⟩ i =
      (PD.p ^ σ) • serMul (W.lev c ζ (W.Q ^ k)) (expS W T c ζ (fun j => (a j : LetA O n)) z) i := by
  obtain ⟨hQ0, hQ1⟩ := framepf_Q_at W hs c ζ hζ
  obtain ⟨hz, hrep⟩ := hrep
  obtain ⟨p, hp, hpe⟩ := hxy
  have hpe' : (π' ^ M * Eπ ^ (3 * h')) • p = Ψ x - y := hpe
  have hπ1 : PowerSeries.constantCoeff (W.lev (c - 1) 1 π') = 0 := by
    rw [hπ, map_mul, map_pow, map_mul, map_pow, framepf_lev_π_one, zero_pow (by omega), mul_zero]
  have hE0 : PowerSeries.constantCoeff (W.lev c ζ Eπ) = 0 := by
    have h0 := hQ0
    rw [framepf_Q_eq_q W hs, hq, map_mul, map_mul] at h0
    exact (mul_eq_zero.1 h0).resolve_left ((hw'.map (W.lev c ζ)).map PowerSeries.constantCoeff).ne_zero
  have hsm : ∀ (b : LetA O n) (t : LA W T π' c), Ψ (smulLA W T π' c b t) = b • Ψ t := by
    intro b t
    induction t using TensorProduct.induction_on with
    | zero => simp
    | tmul e ℓ =>
      have : smulLA W T π' c b (e ⊗ₜ ℓ) = (algebraMap (LetA O n) W.EE b * e) ⊗ₜ ℓ := rfl
      rw [this, hΨ, hΨ, mul_smul, algebraMap_smul]
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy, map_add (f := _), smul_add]
  have hΛ : Eπ ^ h' • Ψ x =
      ∑ j, ((letE c : LetA O n) * a j) • W.φD T (hh (mkL W T π' c (z j) (hz j))) := by

    rw [← hsm, hrep, map_sum]
    exact Finset.sum_congr rfl fun j _ => by rw [hΨ, algebraMap_smul]
  have hmid : ∀ ℓ (r : ℤ), 1 ≤ r → r < (4 * h' : ℕ) → Ct.levB T (c - 1) 1 ⟨hh ℓ, hN ℓ⟩ r = 0 := by
    intro ℓ r h1 h2
    obtain ⟨⟨t, ht, hte⟩, -⟩ := (mem_PiNS W T π' M _).1 (hγ ℓ)
    refine framepf_levB_zero Ct T hc (c - 1) hv hχ (π' ^ M) (4 * h') (fun j hj => ?_) ⟨hh ℓ, hN ℓ⟩
      ⟨t, ht⟩ hte.symm (hneg _) r h1 h2
    obtain ⟨f, hf⟩ := PowerSeries.X_dvd_iff.2 (framepf_lev_π_one (W := W) (c - 1))
    have : W.lev (c - 1) 1 (π' ^ M) =
        PowerSeries.X ^ (s' * M) * (W.lev (c - 1) 1 w ^ M * f ^ (s' * M)) := by
      rw [hπ, map_pow, map_mul, map_pow, hf]
      ring
    rw [this, PowerSeries.coeff_X_pow_mul', if_neg (by omega)]
  have key := framepf_loc_core Ct T hc c ζ hζ hQ0 hQ1 hneg (4 * h') (fun j => (a j : LetA O n))
    (fun j => ⟨_, hN (mkL W T π' c (z j) (hz j))⟩) (fun j => hmid _)
    (-(π' ^ M * Eπ ^ (4 * h'))) (fun j hj => by
      obtain ⟨f, hf⟩ := PowerSeries.X_dvd_iff.2 hE0
      have : W.lev c ζ (-(π' ^ M * Eπ ^ (4 * h'))) =
          PowerSeries.X ^ (4 * h') * (-(W.lev c ζ π' ^ M * f ^ (4 * h'))) := by
        rw [map_neg, map_mul, map_pow, map_pow, hf]
        ring
      rw [this, PowerSeries.coeff_X_pow_mul', if_neg (by omega)]) p
    (Submodule.span_mono (Set.image_mono fun _ hx => Formalism.MainNotions.LiftingTheory.wmap_Nl_le W T (c - 1) hx) hp.1.1)
    (Eπ ^ h' • y) (by
      rw [← hΛ, show y = Ψ x - (π' ^ M * Eπ ^ (3 * h')) • p by rw [hpe']; abel, smul_sub, smul_smul,
        neg_smul, sub_eq_add_neg]
      congr 3
      ring) k hk i (by push_cast; omega)
  rw [key]
  unfold expS
  rw [framepf_serMul_sum, Finset.smul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  obtain ⟨⟨t, ht, hte⟩, -⟩ := (mem_PiNS W T π' 1 _).1 (hmod (z j) (hz j))
  have hval := framepf_valAt_mod Ct T hc c ζ hζ hQ0 hQ1 hneg π' hπ1 (PD.p ^ σ)
    ⟨_, hN (mkL W T π' c (z j) (hz j))⟩ ⟨z j, ((mem_NcS W T (c - 1) _).1 (hz j)).1⟩ ⟨t, ht⟩ (by
      rw [pow_one] at hte
      rw [hte, ← Nat.cast_pow, Nat.cast_smul_eq_nsmul])
  dsimp only at hval ⊢
  rw [hval]
  unfold serC
  split_ifs
  · rw [smul_comm]
  · rw [smul_zero]

end Local

end Formalism.MainNotions.N.Ln34

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfLocC =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FrameAbs =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FrameAbs", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.Defs\npublic import Mathlib.RingTheory.Ideal.Defs\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\npublic import Mathlib.RingTheory.Ideal.Quotient.Defs\npublic import Mathlib.RingTheory.Ideal.Span\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CapelliComplements.FirstLemmaB\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CapelliComplements.FirstLemmaI\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CapelliComplements.FirstLemmaJ\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\npublic import Mathlib.RingTheory.Ideal.BigOperators\n\n"}
section -- clump:auto
@[expose] public section

namespace DualFramesAlt.FrameAbs

open Matrix

variable {A : Type*} [CommRing A] {d : ℕ}

def MatIn (I : Ideal A) (H : Matrix (Fin d) (Fin d) A) : Prop :=
  ∀ i j, H i j ∈ I

def IsFrame (σ : A →+* A) (Γ : Matrix (Fin d) (Fin d) A) (π c : A) (M : ℕ)
    (H : Matrix (Fin d) (Fin d) A) : Prop :=
  MatIn (Ideal.span {π}) (H - c • (1 : Matrix (Fin d) (Fin d) A)) ∧
    MatIn (Ideal.span {π ^ M}) (Γ * H.map σ - H)

def IsDualFrame (σ : A →+* A) (Γ : Matrix (Fin d) (Fin d) A) (π c : A) (M : ℕ)
    (F : Matrix (Fin d) (Fin d) A) : Prop :=
  MatIn (Ideal.span {π}) (F - c • (1 : Matrix (Fin d) (Fin d) A)) ∧
    MatIn (Ideal.span {π ^ M}) (F * Γ - F.map σ)

structure Hyp (O : Type*) [CommRing O] [Algebra O A] (σ : A →+* A) (Γ : Matrix (Fin d) (Fin d) A)
    (π : A) (ev : ℕ → A) : Prop where
  hσ : ∀ a : A, σ a - a ∈ (Ideal.span {π} : Ideal A)
  hΓ : MatIn (Ideal.span {π}) (Γ - 1)
  hΓunit : IsUnit Γ.det
  hπ : π ∈ nonZeroDivisors A
  hσπ : ∀ y : ℕ, σ (π ^ y) - (ev y + 1) * π ^ y ∈ (Ideal.span {π ^ (y + 1)} : Ideal A)
  hσev : ∀ y : ℕ, σ (ev y) = ev y
  hnzd : ∀ (y : ℕ) (a : A), 1 ≤ y → ev y * a ∈ (Ideal.span {π} : Ideal A) → a ∈ (Ideal.span {π} : Ideal A)
  hO : ∀ o : O, σ (algebraMap O A o) = algebraMap O A o
  hdec : ∀ a : A, ∃ o : O, a - algebraMap O A o ∈ (Ideal.span {π} : Ideal A)
  hinj : ∀ o : O, algebraMap O A o ∈ (Ideal.span {π} : Ideal A) → o = 0
  hev : ∀ y : ℕ, ∃ o : O, ev y = algebraMap O A o

section SlopeTestRemainingChoices

variable {I J : Ideal A} {X Y : Matrix (Fin d) (Fin d) A}

theorem MatIn.zero : MatIn I (0 : Matrix (Fin d) (Fin d) A) := fun _ _ => I.zero_mem

theorem MatIn.add (hX : MatIn I X) (hY : MatIn I Y) : MatIn I (X + Y) :=
  fun i j => I.add_mem (hX i j) (hY i j)

theorem MatIn.neg (hX : MatIn I X) : MatIn I (-X) := fun i j => I.neg_mem (hX i j)

theorem MatIn.sub (hX : MatIn I X) (hY : MatIn I Y) : MatIn I (X - Y) :=
  fun i j => I.sub_mem (hX i j) (hY i j)

theorem MatIn.mul_left (hY : MatIn I Y) : MatIn I (X * Y) := fun i j => by
  rw [Matrix.mul_apply]; exact I.sum_mem fun k _ => I.mul_mem_left _ (hY k j)

theorem MatIn.mul_right (hX : MatIn I X) : MatIn I (X * Y) := fun i j => by
  rw [Matrix.mul_apply]; exact I.sum_mem fun k _ => I.mul_mem_right _ (hX i k)

theorem MatIn.smul (hX : MatIn I X) (a : A) : MatIn I (a • X) := fun i j => by
  rw [Matrix.smul_apply, smul_eq_mul]; exact I.mul_mem_left a (hX i j)

theorem MatIn.mono (hIJ : I ≤ J) (hX : MatIn I X) : MatIn J X := fun i j => hIJ (hX i j)

theorem MatIn.transpose (hX : MatIn I X) : MatIn I Xᵀ := fun i j => hX j i

theorem MatIn.exists_smul {p : A} (h : MatIn (Ideal.span {p}) X) :
    ∃ K : Matrix (Fin d) (Fin d) A, X = p • K := by
  choose K hK using fun i j => Ideal.mem_span_singleton'.mp (h i j)
  refine ⟨Matrix.of K, ?_⟩
  ext i j
  rw [Matrix.smul_apply, Matrix.of_apply, smul_eq_mul]
  exact (hK i j).symm.trans (mul_comm _ _)

theorem MatIn.smul_self (p : A) (K : Matrix (Fin d) (Fin d) A) : MatIn (Ideal.span {p}) (p • K) :=
  fun i j => by
    rw [Matrix.smul_apply, smul_eq_mul]
    exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self p)

theorem matIn_sub_iff : MatIn I (X - Y) ↔ X.map (Ideal.Quotient.mk I) = Y.map (Ideal.Quotient.mk I) := by
  constructor
  · intro h
    ext i j
    rw [Matrix.map_apply, Matrix.map_apply, Ideal.Quotient.eq]
    exact h i j
  · intro h i j
    have := congr_fun (congr_fun h i) j
    rw [Matrix.map_apply, Matrix.map_apply, Ideal.Quotient.eq] at this
    exact this

theorem span_pow_mono (π : A) {m n : ℕ} (h : m ≤ n) :
    Ideal.span {π ^ n} ≤ Ideal.span ({π ^ m} : Set A) :=
  Ideal.span_singleton_le_span_singleton.mpr (pow_dvd_pow π h)

theorem span_pow_le (π : A) {n : ℕ} (h : 1 ≤ n) : Ideal.span {π ^ n} ≤ Ideal.span ({π} : Set A) :=
  Ideal.span_singleton_le_span_singleton.mpr (dvd_pow_self π (by omega))

theorem cancel_pow {π x : A} (hπ : π ∈ nonZeroDivisors A) {y : ℕ}
    (hx : π ^ y * x ∈ Ideal.span ({π ^ (y + 1)} : Set A)) : x ∈ Ideal.span ({π} : Set A) := by
  obtain ⟨t, ht⟩ := Ideal.mem_span_singleton'.mp hx
  have h0 : (x - t * π) * π ^ y = 0 := by linear_combination (-1 : A) * ht
  have h1 := (mem_nonZeroDivisors_iff.mp (pow_mem hπ y)).2 _ h0
  exact Ideal.mem_span_singleton'.mpr ⟨t, (sub_eq_zero.mp h1).symm⟩

end SlopeTestRemainingChoices

section Core

variable {σ : A →+* A} {π : A} {ev : ℕ → A}

theorem scalar_core (hσ : ∀ a : A, σ a - a ∈ (Ideal.span {π} : Ideal A))
    (hσπ : ∀ y : ℕ, σ (π ^ y) - (ev y + 1) * π ^ y ∈ (Ideal.span {π ^ (y + 1)} : Ideal A))
    (y : ℕ) (b : A) : ∃ r : A, σ (π ^ y * b) - π ^ y * b = π ^ y * (ev y * b + π * r) := by
  obtain ⟨t, ht⟩ := Ideal.mem_span_singleton'.mp (hσπ y)
  obtain ⟨s, hs⟩ := Ideal.mem_span_singleton'.mp (hσ b)
  refine ⟨(ev y + 1) * s + t * b + t * s * π, ?_⟩
  have e1 : σ (π ^ y) = (ev y + 1) * π ^ y + t * π ^ (y + 1) := by rw [ht]; ring
  have e2 : σ b = b + s * π := by rw [hs]; ring
  rw [map_mul, e1, e2]; ring

theorem mat_core {Γ : Matrix (Fin d) (Fin d) A} (hσ : ∀ a : A, σ a - a ∈ (Ideal.span {π} : Ideal A))
    (hΓ : MatIn (Ideal.span {π}) (Γ - 1))
    (hσπ : ∀ y : ℕ, σ (π ^ y) - (ev y + 1) * π ^ y ∈ (Ideal.span {π ^ (y + 1)} : Ideal A))
    (y : ℕ) (U : Matrix (Fin d) (Fin d) A) : ∃ R : Matrix (Fin d) (Fin d) A,
      Γ * (π ^ y • U).map σ - π ^ y • U = π ^ y • (ev y • U + π • R) := by
  obtain ⟨t, ht⟩ := Ideal.mem_span_singleton'.mp (hσπ y)
  have hK : MatIn (Ideal.span {π}) (Γ * U.map σ - U) := by
    have e : Γ * U.map σ - U = (Γ - 1) * U.map σ + (U.map σ - U) := by
      rw [Matrix.sub_mul, Matrix.one_mul]; abel
    rw [e]
    refine (MatIn.mul_right hΓ).add (fun i j => ?_)
    rw [Matrix.sub_apply, Matrix.map_apply]
    exact hσ (U i j)
  obtain ⟨K, hK'⟩ := hK.exists_smul
  refine ⟨(ev y + 1) • K + t • U + (π * t) • K, ?_⟩
  have e1 : σ (π ^ y) = (ev y + 1) * π ^ y + t * π ^ (y + 1) := by rw [ht]; ring
  have e2 : Γ * U.map σ = U + π • K := by rw [← hK']; abel
  rw [_root_.Bl.MatrixMapSmul.goal1, Matrix.mul_smul, e2, e1]
  ext i j
  simp only [Matrix.add_apply, Matrix.sub_apply, Matrix.smul_apply, smul_eq_mul]
  ring

theorem frame_exists_of_eigenvalues {Γ : Matrix (Fin d) (Fin d) A}
    (hσ : ∀ a : A, σ a - a ∈ (Ideal.span {π} : Ideal A))
    (hΓ : MatIn (Ideal.span {π}) (Γ - 1))
    (hσπ : ∀ y : ℕ, σ (π ^ y) - (ev y + 1) * π ^ y ∈ (Ideal.span {π ^ (y + 1)} : Ideal A))
    (hσev : ∀ y : ℕ, σ (ev y) = ev y) (n : ℕ) (hn : 1 ≤ n) :
    ∃ H : Matrix (Fin d) (Fin d) A,
      MatIn (Ideal.span {π}) (H - (∏ y ∈ Finset.Ico 1 n, ev y) • (1 : Matrix (Fin d) (Fin d) A)) ∧
      MatIn (Ideal.span {π ^ n}) (Γ * H.map σ - H) := by
  induction n, hn using Nat.le_induction with
  | base =>
    refine ⟨1, ?_, ?_⟩
    · rw [Finset.Ico_self, Finset.prod_empty, one_smul, sub_self]
      exact MatIn.zero
    · rw [Matrix.map_one σ (map_zero σ) (map_one σ), Matrix.mul_one, pow_one]
      exact hΓ
  | succ n hn ih =>
    obtain ⟨H, h1, h2⟩ := ih
    obtain ⟨W, hW⟩ := h2.exists_smul
    obtain ⟨R, hR⟩ := mat_core hσ hΓ hσπ n W
    refine ⟨ev n • H - π ^ n • W, ?_, ?_⟩
    · rw [Finset.prod_Ico_succ_top hn]
      have e : ev n • H - π ^ n • W - ((∏ y ∈ Finset.Ico 1 n, ev y) * ev n) •
          (1 : Matrix (Fin d) (Fin d) A) =
          ev n • (H - (∏ y ∈ Finset.Ico 1 n, ev y) • (1 : Matrix (Fin d) (Fin d) A)) - π ^ n • W := by
        ext i j
        simp only [Matrix.sub_apply, Matrix.smul_apply, smul_eq_mul]
        ring
      rw [e]
      exact (h1.smul _).sub ((MatIn.smul_self _ W).mono (span_pow_le π hn))
    · have hX : Γ * H.map σ = H + π ^ n • W := by rw [← hW]; abel
      have hY : Γ * (π ^ n • W).map σ = π ^ n • W + π ^ n • (ev n • W + π • R) := by
        rw [← hR]; abel
      have e : Γ * (ev n • H - π ^ n • W).map σ - (ev n • H - π ^ n • W) = π ^ (n + 1) • (-R) := by
        rw [_root_.Bl.MatrixMapSub.goal1, _root_.Bl.MatrixMapSmul.goal1, hσev, Matrix.mul_sub, Matrix.mul_smul, hX, hY]
        ext i j
        simp only [Matrix.add_apply, Matrix.sub_apply, Matrix.smul_apply, Matrix.neg_apply, smul_eq_mul]
        ring
      rw [e]
      exact MatIn.smul_self _ _

theorem frame_unique_of_eigenvalues {Γ : Matrix (Fin d) (Fin d) A}
    (hσ : ∀ a : A, σ a - a ∈ (Ideal.span {π} : Ideal A))
    (hΓ : MatIn (Ideal.span {π}) (Γ - 1)) (hπ : π ∈ nonZeroDivisors A)
    (hσπ : ∀ y : ℕ, σ (π ^ y) - (ev y + 1) * π ^ y ∈ (Ideal.span {π ^ (y + 1)} : Ideal A))
    (hnzd : ∀ (y : ℕ) (a : A), 1 ≤ y → ev y * a ∈ (Ideal.span {π} : Ideal A) →
      a ∈ (Ideal.span {π} : Ideal A))
    (M : ℕ) (hM : 1 ≤ M) (D : Matrix (Fin d) (Fin d) A) (h1 : MatIn (Ideal.span {π}) D)
    (h2 : MatIn (Ideal.span {π ^ M}) (Γ * D.map σ - D)) : MatIn (Ideal.span {π ^ M}) D := by
  suffices key : ∀ n, 1 ≤ n → n ≤ M → MatIn (Ideal.span {π ^ n}) D from key M hM le_rfl
  intro n hn
  induction n, hn using Nat.le_induction with
  | base => intro _; rw [pow_one]; exact h1
  | succ n hn ih =>
    intro hle
    obtain ⟨U, hU⟩ := (ih (by omega)).exists_smul
    obtain ⟨R, hR⟩ := mat_core hσ hΓ hσπ n U
    have h2' : MatIn (Ideal.span {π ^ (n + 1)}) (π ^ n • (ev n • U + π • R)) := by
      rw [← hR, ← hU]; exact h2.mono (span_pow_mono π hle)
    intro i j
    have e1 := h2' i j
    simp only [Matrix.smul_apply, Matrix.add_apply, smul_eq_mul] at e1
    have e2 := cancel_pow hπ e1
    have e3 : ev n * U i j ∈ (Ideal.span {π} : Ideal A) := by
      have := Ideal.sub_mem _ e2 (Ideal.mul_mem_right (R i j) _ (Ideal.mem_span_singleton_self π))
      rwa [add_sub_cancel_right] at this
    obtain ⟨s, hs⟩ := Ideal.mem_span_singleton'.mp (hnzd n (U i j) hn e3)
    rw [hU, Matrix.smul_apply, smul_eq_mul, ← hs]
    exact Ideal.mem_span_singleton'.mpr ⟨s, by ring⟩

end Core

section Const

variable {O : Type*} [CommRing O] [Algebra O A] {σ : A →+* A} {Γ : Matrix (Fin d) (Fin d) A}
  {π : A} {ev : ℕ → A}

theorem invariants_const (h : Hyp O σ Γ π ev) (M : ℕ) (hM : 1 ≤ M) (a : A)
    (ha : σ a - a ∈ (Ideal.span {π ^ M} : Ideal A)) :
    ∃ o : O, a - algebraMap O A o ∈ (Ideal.span {π ^ M} : Ideal A) := by
  obtain ⟨o, ho⟩ := h.hdec a
  refine ⟨o, ?_⟩
  suffices key : ∀ n, 1 ≤ n → n ≤ M → a - algebraMap O A o ∈ (Ideal.span {π ^ n} : Ideal A) from
    key M hM le_rfl
  intro n hn
  induction n, hn using Nat.le_induction with
  | base => intro _; rw [pow_one]; exact ho
  | succ n hn ih =>
    intro hle
    obtain ⟨b, hb⟩ := Ideal.mem_span_singleton'.mp (ih (by omega))
    obtain ⟨r, hr⟩ := scalar_core h.hσ h.hσπ n b
    have ea : a = algebraMap O A o + π ^ n * b := by linear_combination -hb
    have e : σ a - a = π ^ n * (ev n * b + π * r) := by
      rw [← hr, ea, map_add (f := _), h.hO]; ring
    have hin : π ^ n * (ev n * b + π * r) ∈ (Ideal.span {π ^ (n + 1)} : Ideal A) := by
      rw [← e]; exact span_pow_mono π hle ha
    have e2 := cancel_pow h.hπ hin
    have e3 : ev n * b ∈ (Ideal.span {π} : Ideal A) := by
      have := Ideal.sub_mem _ e2 (Ideal.mul_mem_right r _ (Ideal.mem_span_singleton_self π))
      rwa [add_sub_cancel_right] at this
    obtain ⟨s, hs⟩ := Ideal.mem_span_singleton'.mp (h.hnzd n b hn e3)
    exact Ideal.mem_span_singleton'.mpr ⟨s, by rw [← hb, ← hs]; ring⟩

theorem rigid (h : Hyp O σ Γ π ev) (M : ℕ) (hM : 1 ≤ M) (a : A) (o' : O)
    (ha : σ a - a ∈ (Ideal.span {π ^ M} : Ideal A))
    (hb : a - algebraMap O A o' ∈ (Ideal.span {π} : Ideal A)) :
    a - algebraMap O A o' ∈ (Ideal.span {π ^ M} : Ideal A) := by
  obtain ⟨o, ho⟩ := invariants_const h M hM a ha
  have hoo : o = o' := by
    apply sub_eq_zero.mp
    apply h.hinj
    have := Ideal.sub_mem _ hb (span_pow_le π hM ho)
    rwa [sub_sub_sub_cancel_left, ← map_sub] at this
  rw [← hoo]; exact ho

end Const

theorem mul_comm_of_mul_eq_smul {R : Type*} [CommRing R] {n : ℕ} (P Q : Matrix (Fin n) (Fin n) R)
    (c : R) (hc : c ∈ nonZeroDivisors R) (h : Q * P = c • (1 : Matrix (Fin n) (Fin n) R)) :
    P * Q = c • (1 : Matrix (Fin n) (Fin n) R) := by
  first | (apply Bl.FirstLemmaB.goal1 <;> assumption)

theorem quot_sq_nzd {I : Ideal A} {c : A} (hc : ∀ a : A, c * a ∈ I → a ∈ I) :
    Ideal.Quotient.mk I (c ^ 2) ∈ nonZeroDivisors (A ⧸ I) := by
  have aux : ∀ x : A ⧸ I, x * Ideal.Quotient.mk I (c ^ 2) = 0 → x = 0 := by
    intro x hx
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective x
    rw [← map_mul, Ideal.Quotient.eq_zero_iff_mem] at hx
    rw [Ideal.Quotient.eq_zero_iff_mem]
    apply hc; apply hc
    convert hx using 1; ring
  exact mem_nonZeroDivisors_iff.mpr ⟨fun x hx => aux x (by rwa [mul_comm]), aux⟩

section Main

variable {O : Type*} [CommRing O] [Algebra O A] {σ : A →+* A} {Γ : Matrix (Fin d) (Fin d) A}
  {π : A} {ev : ℕ → A}

theorem prod_ev_mem (h : Hyp O σ Γ π ev) (M : ℕ) :
    ∃ o : O, (∏ y ∈ Finset.Ico 1 M, ev y) = algebraMap O A o := by
  choose f hf using h.hev
  exact ⟨∏ y ∈ Finset.Ico 1 M, f y, by
    rw [map_prod]; exact Finset.prod_congr rfl fun y _ => hf y⟩

theorem dual_frame_products (h : Hyp O σ Γ π ev) (M : ℕ) (hM : 1 ≤ M) (c : A)
    (hcO : ∃ o : O, c = algebraMap O A o) (H F : Matrix (Fin d) (Fin d) A)
    (hH : IsFrame σ Γ π c M H) (hF : IsDualFrame σ Γ π c M F)
    (hc : ∀ a : A, c * a ∈ (Ideal.span {π ^ M} : Ideal A) → a ∈ (Ideal.span {π ^ M} : Ideal A)) :
    MatIn (Ideal.span {π ^ M}) (F * H - c ^ 2 • (1 : Matrix (Fin d) (Fin d) A)) ∧
    MatIn (Ideal.span {π ^ M}) (H * F - c ^ 2 • (1 : Matrix (Fin d) (Fin d) A)) := by
  have hG1 : MatIn (Ideal.span {π ^ M}) ((F * H).map σ - F * H) := by
    have e : (F * H).map σ - F * H = -(F * Γ - F.map σ) * H.map σ + F * (Γ * H.map σ - H) := by
      rw [Matrix.map_mul, neg_sub]
      simp only [Matrix.sub_mul, Matrix.mul_sub, Matrix.mul_assoc]
      abel
    rw [e]
    exact (MatIn.mul_right hF.2.neg).add (MatIn.mul_left hH.2)
  have hG2 : MatIn (Ideal.span {π}) (F * H - c ^ 2 • (1 : Matrix (Fin d) (Fin d) A)) := by
    have e : F * H - c ^ 2 • (1 : Matrix (Fin d) (Fin d) A) =
        (F - c • (1 : Matrix (Fin d) (Fin d) A)) * H + c • (H - c • (1 : Matrix (Fin d) (Fin d) A)) := by
      simp only [Matrix.sub_mul, Matrix.smul_mul, Matrix.one_mul, smul_sub, smul_smul, pow_two]
      abel
    rw [e]
    exact (MatIn.mul_right hF.1).add (hH.1.smul c)
  obtain ⟨oc, hoc⟩ := hcO
  have hFH : MatIn (Ideal.span {π ^ M}) (F * H - c ^ 2 • (1 : Matrix (Fin d) (Fin d) A)) := by
    intro i j
    obtain ⟨o', ho'⟩ : ∃ o' : O, (c ^ 2 • (1 : Matrix (Fin d) (Fin d) A)) i j = algebraMap O A o' := by
      by_cases hij : i = j
      · refine ⟨oc ^ 2, ?_⟩
        subst hij
        rw [Matrix.smul_apply, Matrix.one_apply_eq, smul_eq_mul, mul_one, hoc, map_pow]
      · refine ⟨0, ?_⟩
        rw [Matrix.smul_apply, Matrix.one_apply_ne hij, smul_zero, map_zero]
    rw [Matrix.sub_apply, ho']
    apply rigid h M hM
    · have := hG1 i j
      rwa [Matrix.sub_apply, Matrix.map_apply] at this
    · rw [← ho', ← Matrix.sub_apply]
      exact hG2 i j
  refine ⟨hFH, ?_⟩
  have h1 := matIn_sub_iff.mp hFH
  apply matIn_sub_iff.mpr
  have hsm : (c ^ 2 • (1 : Matrix (Fin d) (Fin d) A)).map (Ideal.Quotient.mk (Ideal.span {π ^ M})) =
      Ideal.Quotient.mk (Ideal.span {π ^ M}) (c ^ 2) • (1 : Matrix (Fin d) (Fin d) _) := by
    ext i j
    by_cases hij : i = j <;> simp [hij]
  rw [Matrix.map_mul, hsm] at h1 ⊢
  exact mul_comm_of_mul_eq_smul _ _ _ (quot_sq_nzd hc) h1

theorem frame_products {O : Type*} [CommRing O] [Algebra O A] {σ : A →+* A}
    {Γ : Matrix (Fin d) (Fin d) A} {π : A} {ev : ℕ → A} (h : Hyp O σ Γ π ev) (M : ℕ) (hM : 1 ≤ M)
    (H F : Matrix (Fin d) (Fin d) A)
    (hH : IsFrame σ Γ π (∏ y ∈ Finset.Ico 1 M, ev y) M H)
    (hF : IsDualFrame σ Γ π (∏ y ∈ Finset.Ico 1 M, ev y) M F)
    (hc : ∀ a : A, (∏ y ∈ Finset.Ico 1 M, ev y) * a ∈ (Ideal.span {π ^ M} : Ideal A) →
      a ∈ (Ideal.span {π ^ M} : Ideal A)) :
    MatIn (Ideal.span {π ^ M}) (F * H - (∏ y ∈ Finset.Ico 1 M, ev y) ^ 2 • (1 : Matrix (Fin d) (Fin d) A)) ∧
    MatIn (Ideal.span {π ^ M}) (H * F - (∏ y ∈ Finset.Ico 1 M, ev y) ^ 2 • (1 : Matrix (Fin d) (Fin d) A)) :=
  dual_frame_products h M hM _ (prod_ev_mem h M) H F hH hF hc

theorem exists_frame {O : Type*} [CommRing O] [Algebra O A] {σ : A →+* A}
    {Γ : Matrix (Fin d) (Fin d) A} {π : A} {ev : ℕ → A} (h : Hyp O σ Γ π ev) (M : ℕ) (hM : 1 ≤ M) :
    (∃ H, IsFrame σ Γ π (∏ y ∈ Finset.Ico 1 M, ev y) M H) ∧
    (∀ H H', IsFrame σ Γ π (∏ y ∈ Finset.Ico 1 M, ev y) M H →
      IsFrame σ Γ π (∏ y ∈ Finset.Ico 1 M, ev y) M H' → MatIn (Ideal.span {π ^ M}) (H - H')) := by
  refine ⟨frame_exists_of_eigenvalues h.hσ h.hΓ h.hσπ h.hσev M hM, fun H H' hH hH' => ?_⟩
  apply frame_unique_of_eigenvalues h.hσ h.hΓ h.hπ h.hσπ h.hnzd M hM
  · have := hH.1.sub hH'.1
    rwa [sub_sub_sub_cancel_right] at this
  · have e : Γ * (H - H').map σ - (H - H') = (Γ * H.map σ - H) - (Γ * H'.map σ - H') := by
      rw [_root_.Bl.MatrixMapSub.goal1, Matrix.mul_sub]; abel
    rw [e]
    exact hH.2.sub hH'.2

theorem exists_dualFrame {O : Type*} [CommRing O] [Algebra O A] {σ : A →+* A}
    {Γ : Matrix (Fin d) (Fin d) A} {π : A} {ev : ℕ → A} (h : Hyp O σ Γ π ev) (M : ℕ) (hM : 1 ≤ M) :
    ∃ F, IsDualFrame σ Γ π (∏ y ∈ Finset.Ico 1 M, ev y) M F := by
  have hinv : Γ⁻¹ * Γ = 1 := Matrix.nonsing_inv_mul Γ h.hΓunit
  have hΓ' : MatIn (Ideal.span {π}) ((Γ⁻¹)ᵀ - 1) := by
    have e : (Γ⁻¹)ᵀ - 1 = (Γ⁻¹ * (-(Γ - 1)))ᵀ := by
      rw [Matrix.mul_neg, Matrix.mul_sub, hinv, Matrix.mul_one, neg_sub, Matrix.transpose_sub,
        Matrix.transpose_one]
    rw [e]
    exact (MatIn.mul_left h.hΓ.neg).transpose
  obtain ⟨H', h1, h2⟩ := frame_exists_of_eigenvalues h.hσ hΓ' h.hσπ h.hσev M hM
  refine ⟨H'ᵀ, ?_, ?_⟩
  · have := h1.transpose
    rwa [Matrix.transpose_sub, Matrix.transpose_smul, Matrix.transpose_one] at this
  · have hΓΓ : Γᵀ * (Γ⁻¹)ᵀ = 1 := by
      rw [← Matrix.transpose_mul, hinv, Matrix.transpose_one]
    have key : (H'ᵀ * Γ - H'ᵀ.map σ)ᵀ = -(Γᵀ * ((Γ⁻¹)ᵀ * H'.map σ - H')) := by
      rw [Matrix.transpose_sub, Matrix.transpose_mul, Matrix.transpose_transpose,
        Matrix.transpose_map, Matrix.transpose_transpose, Matrix.mul_sub, ← Matrix.mul_assoc, hΓΓ,
        Matrix.one_mul, neg_sub]
    have := ((MatIn.mul_left (X := Γᵀ) h2).neg).transpose
    rwa [← key, Matrix.transpose_transpose] at this

end Main

end DualFramesAlt.FrameAbs
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FrameAbs =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfMat =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfMat", "h": "module\n\npublic import Mathlib.Data.Matrix.Mul\npublic import Mathlib.RingTheory.PowerSeries.Substitution\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FrameAbs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34

open PowerSeries DualFramesAlt.FrameAbs

variable {O : Type} [CommRing O] [IsDomain O] {d : ℕ}

theorem framepf_cc_subst (Fs g : PowerSeries O) :
    constantCoeff (subst ((X : PowerSeries O) * Fs) g) = constantCoeff g := by
  have h0 : PowerSeries.constantCoeff ((X : PowerSeries O) * Fs) = 0 := by simp
  have ha : PowerSeries.HasSubst ((X : PowerSeries O) * Fs) :=
    PowerSeries.HasSubst.of_constantCoeff_zero h0
  refine (PowerSeries.constantCoeff_subst (R := O) ha g).trans ?_
  rw [finsum_eq_single _ 0]
  · simp
  · intro n hn
    rw [map_pow]
    change coeff n g • (PowerSeries.constantCoeff ((X : PowerSeries O) * Fs)) ^ n = 0
    rw [h0, zero_pow hn, smul_zero]

theorem framepf_mem_span_X (a : PowerSeries O) :
    a ∈ Ideal.span {(X : PowerSeries O)} ↔ constantCoeff a = 0 := by
  rw [Ideal.mem_span_singleton, PowerSeries.X_dvd_iff]

theorem framepf_mats (c₀ : O) (hc : ∀ y : ℕ, 1 ≤ y → c₀ ^ y ≠ 1) (Fs : PowerSeries O)
    (hF : constantCoeff Fs = c₀) (R : Matrix (Fin d) (Fin d) (PowerSeries O)) (M : ℕ) (hM : 1 ≤ M)
    (aσ lσ : O) (hl : lσ = aσ * ∏ y ∈ Finset.Ico 1 M, (c₀ ^ y - 1)) :
    ∃ H H' : Matrix (Fin d) (Fin d) (PowerSeries O),
      (∃ K, H = C lσ • 1 + (X : PowerSeries O) • K) ∧
      (∃ K, (1 + (X : PowerSeries O) • R) * H.map (subst ((X : PowerSeries O) * Fs)) - H =
        (X : PowerSeries O) ^ M • K) ∧
      (∃ K, H' = C lσ • 1 + (X : PowerSeries O) • K) ∧
      (∃ K, H' * (1 + (X : PowerSeries O) • R) - H'.map (subst ((X : PowerSeries O) * Fs)) =
        (X : PowerSeries O) ^ M • K) ∧
      (∃ K, H' * H = C (lσ ^ 2) • 1 + (X : PowerSeries O) ^ M • K) ∧
      (∃ K, H * H' = C (lσ ^ 2) • 1 + (X : PowerSeries O) ^ M • K) := by
  classical
  have hG : HasSubst ((X : PowerSeries O) * Fs) := HasSubst.of_constantCoeff_zero' (by simp)
  set σr : PowerSeries O →+* PowerSeries O := (substAlgHom hG).toRingHom with hσr
  have hσ : ∀ g, σr g = subst ((X : PowerSeries O) * Fs) g := fun g => by
    simp [σr, coe_substAlgHom]
  set Γ : Matrix (Fin d) (Fin d) (PowerSeries O) := 1 + (X : PowerSeries O) • R with hΓ
  set ev : ℕ → PowerSeries O := fun y => C (c₀ ^ y - 1) with hev
  have hAC : ∀ o : O, algebraMap O (PowerSeries O) o = C o := fun o => by
    rw [PowerSeries.algebraMap_apply]; rfl
  have hyp : Hyp O σr Γ X ev := by
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · intro a
      rw [framepf_mem_span_X, map_sub, hσ, framepf_cc_subst, sub_self]
    · rw [hΓ, add_sub_cancel_left]
      exact MatIn.smul_self _ _
    · rw [PowerSeries.isUnit_iff_constantCoeff, RingHom.map_det]
      have : (constantCoeff : PowerSeries O →+* O).mapMatrix Γ = 1 := by
        ext p q
        simp [hΓ, Matrix.one_apply]
      rw [this, Matrix.det_one]
      exact isUnit_one
    · exact mem_nonZeroDivisors_of_ne_zero X_ne_zero
    · intro y
      rw [hσ, subst_pow hG, subst_X hG, hev]
      rw [Ideal.mem_span_singleton]
      obtain ⟨t, ht⟩ := sub_dvd_pow_sub_pow Fs (C c₀) y
      have hX : (X : PowerSeries O) ∣ Fs - C c₀ := by
        rw [X_dvd_iff, map_sub, constantCoeff_C, hF, sub_self]
      obtain ⟨u, hu⟩ := hX
      refine ⟨u * t, ?_⟩
      have e : C (c₀ ^ y - 1) + 1 = (C c₀) ^ y := by simp
      rw [e, mul_pow, mul_comm ((C c₀) ^ y), ← mul_sub, ht, hu, pow_succ]
      ring
    · intro y
      rw [hσ, hev, subst_C]
      rfl
    · intro y a hy h
      rw [framepf_mem_span_X] at h ⊢
      rw [map_mul, constantCoeff_C] at h
      exact (mul_eq_zero.1 h).resolve_left (sub_ne_zero.2 (hc y hy))
    · intro o
      rw [hσ, ← PowerSeries.coe_substAlgHom hG, AlgHom.commutes]
    · intro a
      refine ⟨constantCoeff a, ?_⟩
      rw [framepf_mem_span_X, map_sub, hAC, constantCoeff_C, sub_self]
    · intro o h
      rw [framepf_mem_span_X, hAC, constantCoeff_C] at h
      exact h
    · intro y
      exact ⟨c₀ ^ y - 1, by rw [hAC]⟩
  have hD : ∏ y ∈ Finset.Ico 1 M, ev y = C (∏ y ∈ Finset.Ico 1 M, (c₀ ^ y - 1)) := by
    rw [hev, map_prod]
  have hc' : ∀ a : PowerSeries O, (∏ y ∈ Finset.Ico 1 M, ev y) * a ∈ Ideal.span {(X : PowerSeries O) ^ M} →
      a ∈ Ideal.span {(X : PowerSeries O) ^ M} := by
    intro a h
    rw [Ideal.mem_span_singleton, X_pow_dvd_iff] at h ⊢
    intro j hj
    have := h j hj
    rw [hD, coeff_C_mul] at this
    exact (mul_eq_zero.1 this).resolve_left
      (Finset.prod_ne_zero_iff.2 fun y hy => sub_ne_zero.2 (hc y (Finset.mem_Ico.1 hy).1))
  obtain ⟨⟨H, hH⟩, -⟩ := exists_frame hyp M hM
  obtain ⟨F, hF'⟩ := exists_dualFrame hyp M hM
  obtain ⟨hFH, hHF⟩ := frame_products hyp M hM H F hH hF' hc'
  have hmap : ∀ Z : Matrix (Fin d) (Fin d) (PowerSeries O), Z.map σr = Z.map (subst ((X : PowerSeries O) * Fs)) := by
    intro Z; ext p q; simp [hσ]
  obtain ⟨K1, hK1⟩ := hH.1.exists_smul
  obtain ⟨K2, hK2⟩ := hH.2.exists_smul
  obtain ⟨K3, hK3⟩ := hF'.1.exists_smul
  obtain ⟨K4, hK4⟩ := hF'.2.exists_smul
  obtain ⟨K5, hK5⟩ := hFH.exists_smul
  obtain ⟨K6, hK6⟩ := hHF.exists_smul
  have hσa : σr (C aσ) = C aσ := by rw [hσ, subst_C]; rfl
  rw [hD] at hK1 hK3 hK5 hK6
  have e1 := (sub_eq_iff_eq_add.1 hK1).trans (add_comm _ _)
  have e3 := (sub_eq_iff_eq_add.1 hK3).trans (add_comm _ _)
  have e5 := (sub_eq_iff_eq_add.1 hK5).trans (add_comm _ _)
  have e6 := (sub_eq_iff_eq_add.1 hK6).trans (add_comm _ _)
  have hsc : ∀ Z : Matrix (Fin d) (Fin d) (PowerSeries O), (C aσ • Z).map σr = C aσ • Z.map σr := by
    intro Z; ext p q; simp [hσa]
  have hsq : C aσ * C aσ * C (∏ y ∈ Finset.Ico 1 M, (c₀ ^ y - 1)) ^ 2 = C (lσ ^ 2) := by
    rw [hl, ← map_mul, ← map_pow, ← map_mul]; ring_nf
  refine ⟨C aσ • H, C aσ • F, ⟨C aσ • K1, ?_⟩, ⟨C aσ • K2, ?_⟩, ⟨C aσ • K3, ?_⟩, ⟨C aσ • K4, ?_⟩,
    ⟨(C aσ * C aσ) • K5, ?_⟩, ⟨(C aσ * C aσ) • K6, ?_⟩⟩
  · rw [e1, smul_add, smul_smul, ← map_mul, ← hl, smul_comm (C aσ) (X : PowerSeries O) K1]
  · rw [← hmap, hsc, Matrix.mul_smul, ← smul_sub, hK2, smul_comm]
  · rw [e3, smul_add, smul_smul, ← map_mul, ← hl, smul_comm (C aσ) (X : PowerSeries O) K3]
  · rw [← hmap, hsc, Matrix.smul_mul, ← smul_sub, hK4, smul_comm]
  · rw [Matrix.smul_mul, Matrix.mul_smul, smul_smul, e5, smul_add, smul_smul, smul_comm _ _ K5, hsq]
  · rw [Matrix.smul_mul, Matrix.mul_smul, smul_smul, e6, smul_add, smul_smul, smul_comm _ _ K6, hsq]

end Formalism.MainNotions.N.Ln34

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfMat =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfDat =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfDat", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfAsm\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfAlpha\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfEqv\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfHH\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfLocC\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfMat\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfNat\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GradNPfB\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.InvLiftPfA\nimport Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation\nimport Formalism.SharpRestriction.LevelLetterCocycles.MapCompZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules TensorProduct

section Local

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {W : LocWach PD LL O v n}
    {Zl Ai : Type} [CommRing Zl] [CommRing Ai] [Algebra Zl O] [Algebra Zl Ai]
    {RW : Type} [CommRing RW] [Algebra O RW]
    {inclR : (O ⊗[Zl] Ai) →ₐ[O] RW} {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : O ⊗[Zl] Ai}
    {E : EtTie W (O ⊗[Zl] Ai) RW inclR φR gR πA} {ιdR : Ai →+* BdR} {p1 : Ai} {tS zS : BdR}
    (Ct : CmpTie W E ιdR p1 tS zS) (T : LocLat G Qp LL O)

def FramepfBack {T : LocLat G Qp LL O} (Bs : FramepfBas W T) (π' : LetA O n) (c : ZMod n)
    (hπ0 : ∀ j, PowerSeries.constantCoeff (π' j) = 0)
    (hΔπ : ∀ δ ∈ W.DelF, W.γA δ π' = π')
    (hR2 : ∀ a : LetA O n, a ∈ W.AΔ → ∃! f : ZMod n → PowerSeries O,
      ∀ j, a j = PowerSeries.subst (π' j) (f j))
    (γ0 : ∀ δ ∈ W.DelF, PowerSeries.constantCoeff (W.γ₀ δ PowerSeries.X) = 0)
    (hu : IsUnit (algebraMap (LetA O n) W.EE π')) (Eπ : LetA O n) (h' M : ℕ) : Prop :=
  ∀ (H H' K₁ K₂ : Matrix (Fin Bs.r) (Fin Bs.r) (PowerSeries O)) (lam : O),
    H' * H = PowerSeries.C lam • (1 : Matrix (Fin Bs.r) (Fin Bs.r) (PowerSeries O)) +
      (PowerSeries.X : PowerSeries O) ^ M • K₁ →
    H * H' = PowerSeries.C lam • (1 : Matrix (Fin Bs.r) (Fin Bs.r) (PowerSeries O)) +
      (PowerSeries.X : PowerSeries O) ^ M • K₂ →
    ∃ Φ : W.DD T →ₗ[W.EE] W.EE ⊗[O] LcQ W T π' c,
      (∀ y ∈ LamPS W T Eπ h' c, Φ y ∈ LamLA W T π' Eπ h' c ⊤) ∧
      (∀ y ∈ JP W T π' Eπ h' M c, Φ y ∈ JLA W T π' Eπ h' M c) ∧
      (∀ x ∈ LamLA W T π' Eπ h' c ⊤,
        Φ (framepf_Ψα Bs π' c hπ0 hΔπ hR2 γ0 hu H x) - lam • x ∈ JLA W T π' Eπ h' M c) ∧
      ∀ y ∈ LamPS W T Eπ h' c,
        framepf_Ψα Bs π' c hπ0 hΔπ hR2 γ0 hu H (Φ y) - lam • y ∈ JP W T π' Eπ h' M c


include Ct in

theorem framepf_data [IsDomain O] (hι : Function.Injective (algebraMap O LL)) (hT : IsCrys PD T.ρ)
    (hs : W.s = 1) (Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop) (c : ZMod n)
    (hprim : ∀ τ ζ, Pt c ζ τ → IsPrimitiveRoot ζ PD.p) (h4 : Formalism.MainNotions.DeltaInvariantLattices.p4 W Pt T)
    {e s' : ℕ} {π' : LetA O n} {Ep : ZMod n → Polynomial O} (hR : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations W e s' π' Ep)
    (hs' : 1 ≤ s') (h' M σ : ℕ) (hM1 : 1 ≤ M) (hM : 4 * h' ≤ s' * M) (hK : W.gamK = W.gam)
    (Bs : FramepfBas W T) (hπ0 : ∀ j, PowerSeries.constantCoeff (π' j) = 0)
    (hΔπ : ∀ δ ∈ W.DelF, W.γA δ π' = π')
    (hR2 : ∀ a : LetA O n, a ∈ W.AΔ → ∃! f : ZMod n → PowerSeries O,
      ∀ j, a j = PowerSeries.subst (π' j) (f j))
    (γ0 : ∀ δ ∈ W.DelF, PowerSeries.constantCoeff (W.γ₀ δ PowerSeries.X) = 0)
    (hu : IsUnit (algebraMap (LetA O n) W.EE π'))
    (hγN : ∀ y ∈ W.NΔ T, ∃ d ∈ W.N T, W.γD T W.gam y - y = π' • d)
    (Fs : PowerSeries O)
    (hFs : W.γ₀ W.gam (π' (c - 1)) = PowerSeries.subst (π' (c - 1)) (PowerSeries.X * Fs))
    (hF0 : PowerSeries.constantCoeff Fs = ((W.χΓ W.gam : Oˣ) : O) ^ s')
    (hne : ∀ y : ℕ, 1 ≤ y → (((W.χΓ W.gam : Oˣ) : O) ^ s') ^ y ≠ 1) (aσ : O)
    (haσ : ((PD.p : ℕ) : O) ^ σ = aσ * ∏ y ∈ Finset.Ico 1 M, ((((W.χΓ W.gam : Oˣ) : O) ^ s') ^ y - 1))
    (hB : FramepfBack Bs π' c hπ0 hΔπ hR2 γ0 hu (Formalism.MainNotions.DeltaInvariantLattices.Eat Ep π') h' M) :
    ∃ (hh : LcQ W T π' c →ₗ[O] W.DD T)
      (Ψ : W.EE ⊗[O] LcQ W T π' c →ₗ[W.EE] W.DD T) (Φ : W.DD T →ₗ[W.EE] W.EE ⊗[O] LcQ W T π' c),
      (∀ x ∈ LamLA W T π' (Formalism.MainNotions.DeltaInvariantLattices.Eat Ep π') h' c ⊤, Ψ x ∈ LamPS W T (Formalism.MainNotions.DeltaInvariantLattices.Eat Ep π') h' c) ∧
      (∀ y ∈ LamPS W T (Formalism.MainNotions.DeltaInvariantLattices.Eat Ep π') h' c, Φ y ∈ LamLA W T π' (Formalism.MainNotions.DeltaInvariantLattices.Eat Ep π') h' c ⊤) ∧
      FramepfData W Pt π' (Formalism.MainNotions.DeltaInvariantLattices.Eat Ep π') h' M σ c T hh Ψ Φ := by
  have huE := framepf_E_unit hR hs
  have hEΔ := framepf_E_Δ hR
  obtain ⟨Γ, hΓ, R, hΓR⟩ := framepf_Γ Bs π' (c - 1) hπ0 hΔπ hR2 hu hγN
  obtain ⟨H, H', ⟨K1, hK1⟩, ⟨K2, hK2⟩, -, -, ⟨K5, hK5⟩, ⟨K6, hK6⟩⟩ :=
    framepf_mats _ hne Fs hF0 R M hM1 aσ _ haσ
  rw [← pow_mul, mul_comm σ 2] at hK5 hK6
  obtain ⟨Φ, hΦL, hΦJ, hβα, hαβ⟩ := hB H H' K5 K6 _ hK5 hK6
  have hγ := framepf_hhx_γ Bs π' c hπ0 hΔπ hR2 γ0 hu (PowerSeries.X * Fs) (by simp) hFs Γ hΓ H K2 M
    (by rw [hΓR]; exact hK2)
  have hmod := framepf_hhx_mod Bs π' c hπ0 hΔπ hR2 γ0 hu _ H K1 hK1
  have hp0 : ((PD.p : ℕ) : O) ≠ 0 := by
    intro h
    have h1 := congrArg (algebraMap O LL) h
    rw [map_natCast, map_zero] at h1
    have := W.v_l
    rw [h1, AddValuation.map_zero] at this
    exact absurd this (by simp)
  obtain ⟨w, hw⟩ := hR.2.2.1
  obtain ⟨w', hw'⟩ := hR.2.2.2.2.1
  refine ⟨_, framepf_Ψα Bs π' c hπ0 hΔπ hR2 γ0 hu H, Φ,
    framepf_Ψα_Lam Bs π' c hπ0 hΔπ hR2 γ0 hu _ huE hEΔ h' H, hΦL, hγ, hmod,
    framepf_Ψα_tmul Bs π' c hπ0 hΔπ hR2 γ0 hu H, framepf_Ψα_J Bs π' c hπ0 hΔπ hR2 γ0 hu _ h' M H,
    hΦJ, hβα, hαβ, fun x hx hj => ?_, fun x hx hgx => ?_, fun τ ζ hpt x y hxy m a z hrep k hk i hi => ?_⟩
  · exact framepf_JLA_sat π' c (framepf_Lbas Bs π' c hπ0 hΔπ hR2 γ0 hu) _ h' M hu huE
      (fun o ho => (mul_eq_zero.1 ho).resolve_left hp0) _ x hx hj
  · obtain ⟨f, hfΔ, hf⟩ := framepf_γπ hR
    obtain ⟨Ff, hFf, -⟩ := hR2 f hfΔ
    obtain ⟨t, ht⟩ := gradNPf_expand π' f hπ0 Ff hFf _ (gradNPf_cc_f W s' w π' f hw hf)
    refine invLiftPf_inj W T π' f t _ hf ht hu hΔπ hγN hK M (fun y hy _ r₀ hr₀ d hd hrd => ?_) x hx
      (by rw [hK]; exact hgx)
    exact invLiftPf_nzd W T π' w s' w.isUnit hw _
      (fun o ho => (mul_eq_zero.1 ho).resolve_left (sub_ne_zero.2 (hne y hy))) Bs.r Bs.b
      (fun j => (Bs.mem j).1) Bs.uniq 1 r₀ d hr₀ hd (by rw [pow_one]; exact hrd)
  · refine framepf_locC Ct T hT hs c ζ (hprim τ ζ hpt) (fun x k hk => ?_) ?_ (fun r hr h => ?_)
      π' _ w w' s' h' M σ hs' hw w'.isUnit hw' hM _
      (fun ℓ => ((mem_NcS W T (c - 1) _).1 (framepf_hhx_mem Bs π' c hπ0 hΔπ hR2 γ0 hu H ℓ)).1) hγ hmod
      _ (framepf_Ψα_tmul Bs π' c hπ0 hΔπ hR2 γ0 hu H) x y hxy m a z hrep k hk i hi
    · exact ((h4.1 (c - 1) 1 ⟨0, one_pow _⟩
        (by rw [Formalism.MainNotions.LiftingTheory.wmap_X_one W hs]; exact framepf_lev_π_one _)).1 x k).2 hk
    · rw [W.gam_gen]
      rw [hs, Nat.cast_one]
      exact zero_le_one
    · obtain ⟨y, rfl⟩ := Int.eq_ofNat_of_zero_le (show 0 ≤ r by omega)
      rw [zpow_natCast, ← map_pow, ← map_one (algebraMap O LL)] at h
      apply hne y (by omega)
      rw [← pow_mul, mul_comm, pow_mul, hι h, one_pow]

end Local

end Formalism.MainNotions.N.Ln34

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfDat =====
