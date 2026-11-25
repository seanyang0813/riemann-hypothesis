module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsIsScalar
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ComplexPrincipalLevelEqRealisationPrincipalLevel
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPlaceModelPlaceMap
public import Formalism.LocalToGlobal.IndefiniteReal.BridgeTie
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeckeCharacterValueAtSplitPlaceDeterminant
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.GoodSetupCountEqZeroOffBadPlaces
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitOffOutsideS0
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistingCharValuesMemCoeffFieldRange
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.HeckePin
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
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RatHeckeRealRd

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RatHeckeRealRd =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RatHeckeRealRd", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsIsScalar\npublic import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.HeckePin\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ComplexPrincipalLevelEqRealisationPrincipalLevel\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPlaceModelPlaceMap\npublic import Formalism.LocalToGlobal.IndefiniteReal.BridgeTie\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HeckeCharacterValueAtSplitPlaceDeterminant\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.GoodSetupCountEqZeroOffBadPlaces\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitOffOutsideS0\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TwistingCharValuesMemCoeffFieldRange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie
open Formalism.IndefR.Links
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.IndefR.Lev Formalism.L2.DIV Formalism.IndefR.Mult
open scoped TensorProduct




namespace GlobalTheory.SeriesTie.HkRat

variable {D : D7} {Γ : Type} [Group Γ] [Fintype Γ] {Pl0 I0 T : Type} {A3 : FamIn3 D.what₂.LL Γ Pl0 I0 (List ℕ) T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {Rl : RealDat3 D A3 Ks}
  {cG : G0 Rl.Pg D.R.r ≃* G0g D.nd} {S : NX.RatDat D.ntw} (YS : NX.NExpRealS Rl cG S)
  (v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec)

theorem evK_hkFR {ρ : Setup D.ntw} (hρ : ρ.Good) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool)
    (hL : ℕ → PlE D.host → Module.End D.what₂.LL (S.WL ((j : ℕ) + 1)))
    (hs : NX.HeckeStabR S ((j : ℕ) + 1) hL) (k : ℕ) (P : PlE D.host) (R : Finset (GA D (Wc D j))) (s : ℂ)
    (hR : ∀ x : S.WL ((j : ℕ) + 1), evW YS v₀ j (hL k P x) = s • heckeLin (Wc D j) R (evW YS v₀ j x))
    (y : NX.Fm S i ((j : ℕ) + 1) b) :
    evK YS v₀ hρ i j b (NX.hkFR S i ((j : ℕ) + 1) b hL hs k P y) = s • heckeLin (Wc D j) R (evK YS v₀ hρ i j b y) := by
  induction y using TensorProduct.induction_on with
  | zero => erw [LinearMap.map_zero, map_zero, map_zero, smul_zero]
  | add y z hy hz => erw [LinearMap.map_add, map_add, hy, hz, map_add, map_add, smul_add]
  | tmul a f0 =>
    have e1 : NX.hkFR S i ((j : ℕ) + 1) b hL hs k P (a ⊗ₜ f0) =
        a ⊗ₜ (((hL k P).restrictScalars S.Ks).restrict (p := (S.A ((j : ℕ) + 1)).WK) (q := (S.A ((j : ℕ) + 1)).WK)
          fun x hx => hs k P x hx) f0 := rfl
    erw [e1, evK_tmul, evK_tmul]
    change ρ.e i b a • evW YS v₀ j (hL k P f0.1) = _
    rw [hR, map_smul, smul_comm]

end GlobalTheory.SeriesTie.HkRat

namespace GlobalTheory.SeriesTie.HkRat

variable {D : D7} {Γ : Type} [Group Γ] [Fintype Γ] {Pl0 I0 T : Type} {A3 : FamIn3 D.what₂.LL Γ Pl0 I0 (List ℕ) T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {Rl : RealDat3 D A3 Ks}
  {cG : G0 Rl.Pg D.R.r ≃* G0g D.nd} {S : NX.RatDat D.ntw} (YS : NX.NExpRealS Rl cG S)
  (v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec)

theorem evW_reads (hL : ∀ j, ℕ → PlE D.host → Module.End D.what₂.LL (S.WL j)) (hR : GlobalTheory.ExportPin.Reads Rl cG S YS hL)
    (j : Fin D.R.m) (k : ℕ) (P : PlE D.host) (hPs : IsSplitPl D.host P)
    (hso : Bridge.SplitOff P (Rl.Sb : Set (Pl D.host.E))) (hk : k ≤ D.R.r) (α : GA D (Wc D j)) (R : Finset (GA D (Wc D j)))
    (hα : IsHeckeAt (Wc D j) P k α) (hdc : Bridge.IsDC (levG (Wc D j) (Rl.βW j) (Rl.datWp j Rl.triv)) α R)
    (x : S.WL ((j : ℕ) + 1)) :
    evW YS v₀ j (hL ((j : ℕ) + 1) k P x) =
      ((((Rl.C.mu0 j).val P : ℂˣ) : ℂ)⁻¹ ^ k * (((Nat.card (kP P) : ℕ) : ℂ) ^ (k * (D.R.nV / 2)))⁻¹) •
        heckeLin (Wc D j) R (evW YS v₀ j x) := by
  have h := congrArg (fun F => F (v₀ j (sg0 D A3.A))) (hR j k P hPs hso hk α R hα hdc x)
  exact h

end GlobalTheory.SeriesTie.HkRat

namespace GlobalTheory.SeriesTie.HkRat
open GlobalTheory.SeriesTie.Setup

theorem ratHecke_realRd : ∀ (D : D7) (Γ : Type) [Group Γ] [Fintype Γ] (Pl0 I0 T : Type) (A3 : FamIn3 D.what₂.LL Γ Pl0 I0 (List ℕ) T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (Rl : RealDat3 D A3 Ks) (cG : G0 Rl.Pg D.R.r ≃* G0g D.nd) (S : NX.RatDat D.ntw) (YS : NX.NExpRealS Rl cG S) (v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec) (ρ : Setup D.ntw) (hρ : ρ.Good) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (ν : ℂ), RealPin Rl cG ρ → ChrEq (Rl.mu0 ((j : ℕ) + 1)) (Rl.C.mu0 j) → (∀ P, IsSplitPl D.host P → P ∉ D.ntw.S0 i → Bridge.SplitOff P (Rl.Sb : Set (Pl D.host.E))) → ∀ hL : ∀ n, ℕ → PlE D.host → Module.End D.what₂.LL (S.WL n), NX.HeckeStabR S ((j : ℕ) + 1) (hL ((j : ℕ) + 1)) → GlobalTheory.ExportPin.Reads Rl cG S YS hL → RatHecke (realRd YS v₀ hρ i j b ν) := by
  intro D Γ _ _ Pl0 I0 T A3 Ks _ _ _ Rl cG S YS v₀ ρ hρ i j b ν hp hchr hsplit hL hs hR k P hk f
  obtain ⟨hk1, hkr, hPs, hPS0⟩ := hk
  have hso := hsplit P hPs hPS0
  have hPg : Bridge.SplitOff P (((ρ.B i j b).G.Pg : Finset _) : Set (Pl D.host.E)) :=
    _root_.GlobalTheory.SplitOffS0.main hρ i _ (fun P' hP' => by
      obtain ⟨k', hk'⟩ := hρ.Pg i j b P' hP'
      exact D.ntw.placesOver_subset_exceptional i k' hk') P hPs hPS0
  have hdQ : Bridge.SplitOff P (((ρ.B i j b).de.Q : Finset _) : Set (Pl D.host.E)) :=
    _root_.GlobalTheory.SplitOffS0.main hρ i _ (fun P' hP' => by
      rw [hρ.delta i j b] at hP'
      exact D.ntw.primes_subset_exceptional i (mem_half.1 hP').1) P hPs hPS0
  by_cases hd : ∃ α R z, ρ.IsHeckeDatum i j b k P α R z
  swap
  · exact ⟨0, fun α R z d => absurd ⟨α, R, z, d⟩ hd⟩
  obtain ⟨α₀, R₀, z₀, d₀⟩ := hd
  obtain ⟨a, ha⟩ := _root_.GlobalTheory.DeltaRange.delta_value_mem_range hρ i j b z₀
  have hde : ∀ α R z, ρ.IsHeckeDatum i j b k P α R z → (((ρ.B i j b).de.chi z : Circle) : ℂ) = ρ.e i b a :=
    fun α R z d => by
      rw [ha, _root_.GlobalTheory.HeckeDetValue.chr_detAt _ _ _ _ P k α z (hp.delta i j b) (hρ.base i j b).de.unram (hρ.base i j b).de.split hdQ d.elt d.det,
        _root_.GlobalTheory.HeckeDetValue.chr_detAt _ _ _ _ P k α₀ z₀ (hp.delta i j b) (hρ.base i j b).de.unram (hρ.base i j b).de.split hdQ d₀.elt d₀.det]
  have hchr' : ChrEq (ρ.B i j b).mu0 (Rl.C.mu0 j) := by rw [hp.mu0 i j b]; exact hchr
  have hmu0 : ∀ α R z, ρ.IsHeckeDatum i j b k P α R z →
      (((ρ.B i j b).mu0 z : Circle) : ℂ) = (((Rl.C.mu0 j).val P : ℂˣ) : ℂ) ^ k :=
    fun α R z d => _root_.GlobalTheory.HeckeDetValue.chr_detAt _ _ _ _ P k α z hchr' (hρ.base i j b).unram
      ((hρ.base i j b).places.split.elim fun _ h => h.2.2.mono h.1) hPg d.elt d.det
  refine ⟨a⁻¹ • (YS.eF i _ b (Nat.le_add_left _ _) j.2).symm
    (NX.hkFR S i ((j : ℕ) + 1) b (hL _) hs k P (YS.eF i _ b (Nat.le_add_left _ _) j.2 f)), ?_⟩
  rcases eq_or_ne ν 0 with rfl | hν
  · intro α R z d
    rw [realRd_apply, realRd_apply YS v₀ hρ i j b 0 f, inv_zero, zero_smul, zero_smul, map_zero]
  rw [heckeAt_realRd YS v₀ hρ i j b hν]
  intro α R z d
  have hdc := d.reps
  rw [_root_.GlobalTheory.SeriesTie.levK_eq_levG_triv Rl hp i j b] at hdc
  have key := evK_hkFR YS v₀ hρ i j b (hL _) hs k P R _
    (evW_reads YS v₀ hL hR j k P hPs hso hkr α R d.elt hdc) (YS.eF i _ b (Nat.le_add_left _ _) j.2 f)
  funext x
  rw [Setup.hecke_apply, map_smulₛₗ]
  change ρ.e i b a⁻¹ * ((1 : ℂ)⁻¹ • evK YS v₀ hρ i j b (YS.eF i _ b (Nat.le_add_left _ _) j.2
    ((YS.eF i _ b (Nat.le_add_left _ _) j.2).symm _))) x = _ * _ *
      ∑ γ ∈ R, ((1 : ℂ)⁻¹ • evK YS v₀ hρ i j b (YS.eF i _ b (Nat.le_add_left _ _) j.2 f)) (x * γ)
  rw [LinearEquiv.apply_symm_apply, key]
  simp only [inv_one, Pi.smul_apply, smul_eq_mul, heckeLin, LinearMap.coe_mk, AddHom.coe_mk]
  rw [Base.mu, MonoidHom.mul_apply, Circle.coe_mul, hmu0 α R z d, hde α R z d, map_inv₀]
  rw [show normV P = Nat.card (kP P) from rfl, D.sp.V_rank _ (Nat.le_add_left _ _) j.2]
  simp only [one_mul]
  ring

end GlobalTheory.SeriesTie.HkRat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RatHeckeRealRd =====
