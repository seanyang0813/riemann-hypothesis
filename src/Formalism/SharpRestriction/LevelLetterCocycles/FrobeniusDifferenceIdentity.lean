module

public import Formalism.SharpRestriction.LevelLetterCocycles.LatticeBoundsOfThreeParts
public import Formalism.SharpRestriction.LevelLetterCocycles.InvariantLetterIdempotentOfFixed
public import Formalism.SharpRestriction.LevelLetterCocycles.CocyclesToWachVectorsBoundOfExtTool
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkMultVNonneg
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.CmpOfMemX

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.GammaSubCocycleComponent, Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusDifferenceIdentity

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.GammaSubCocycleComponent =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.GammaSubCocycleComponent", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LatticeBoundsOfThreeParts\npublic import Formalism.SharpRestriction.LevelLetterCocycles.InvariantLetterIdempotentOfFixed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2I

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc
open Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2L

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

section Core

variable (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (s₁ σ : ℕ) (yv zv : W.DD T)
  (ms t : ZMod n → W.DD T)

def gammaDefectOfLetterLift (c : ZMod n) : W.DD T :=
  ((PD.p : ℕ) : O) ^ s₁ • ((letE c : LetA O n) • zv) + (W.γ T (ms c) - ms c)

def liftCorrection (c : ZMod n) : W.DD T :=
  ((PD.p : ℕ) : O) ^ σ • W.φD T (ms c) +
    ((PD.p : ℕ) : O) ^ (s₁ + σ) • ((letE (c + 1) : LetA O n) • yv) - t c

def gammaDefectOfLiftCorrection (c : ZMod n) : W.DD T :=
  ((PD.p : ℕ) : O) ^ (s₁ + σ) • ((letE (c + 1) : LetA O n) • zv) +
    (W.γ T (liftCorrection W T s₁ σ yv ms t c) - liftCorrection W T s₁ σ yv ms t c)

def frobeniusShiftDefectOfLiftCorrection (c : ZMod n) : W.DD T :=
  W.φD T (liftCorrection W T s₁ σ yv ms t (c - 2)) +
    ((PD.p : ℕ) : O) ^ (s₁ + σ) • ((letE c : LetA O n) • yv) - ((PD.p : ℕ) : O) ^ σ • ms c

def frobeniusSquareDefectOfLiftCorrection (c : ZMod n) : W.DD T :=
  ((PD.p : ℕ) : O) ^ (s₁ + σ) •
      ((letE (c + 1) : LetA O n) • yv + W.φD T ((letE c : LetA O n) • yv)) +
    W.φD T (W.φD T (liftCorrection W T s₁ σ yv ms t (c - 2))) - liftCorrection W T s₁ σ yv ms t c

def liftCorrectionSum [NeZero n] (d : ℕ) : W.DD T :=
  ∑ c ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.evens n d, (liftCorrection W T s₁ σ yv ms t c +
    ((PD.p : ℕ) : O) ^ (s₁ + σ) • ((letE (c + 2) : LetA O n) • yv) +
      W.φD T (liftCorrection W T s₁ σ yv ms t c))

variable {W T s₁ σ yv zv}

theorem cocycle_relation_on_letter (hcoc : W.γ T yv - yv = W.φD T zv - zv) (i : ZMod n) :
    (letE (i + 1) : LetA O n) • W.γ T yv = (letE (i + 1) : LetA O n) • yv +
      W.φD T ((letE i : LetA O n) • zv) - (letE (i + 1) : LetA O n) • zv := by
  have h := congrArg (fun x => (letE (i + 1) : LetA O n) • x) hcoc
  simp only [smul_sub] at h
  rw [sub_eq_iff_eq_add] at h
  rw [frobenius_letter_shift, h]
  abel

theorem cocycleXi_eq (hcoc : W.γ T yv - yv = W.φD T zv - zv) (c : ZMod n) :
    gammaDefectOfLiftCorrection W T s₁ σ yv zv ms t c = ((PD.p : ℕ) : O) ^ σ • W.φD T (gammaDefectOfLetterLift W T s₁ zv ms c) -
      (W.γ T (t c) - t c) := by
  have hc := cocycle_relation_on_letter (W := W) (T := T) hcoc c
  unfold gammaDefectOfLiftCorrection liftCorrection gammaDefectOfLetterLift
  simp only [map_add (f := _), map_sub, map_smul, gamma_letter_smul, gamma_frobenius_comm, hc]
  simp only [smul_add, smul_sub, smul_smul, ← pow_add, add_comm σ s₁]
  abel

theorem gamma_sub_cocycleW (hcoc : W.γ T yv - yv = W.φD T zv - zv) (c : ZMod n) :
    W.γ T (frobeniusShiftDefectOfLiftCorrection W T s₁ σ yv ms t c) - frobeniusShiftDefectOfLiftCorrection W T s₁ σ yv ms t c =
      W.φD T (gammaDefectOfLiftCorrection W T s₁ σ yv zv ms t (c - 2)) -
        ((PD.p : ℕ) : O) ^ σ • gammaDefectOfLetterLift W T s₁ zv ms c := by
  have hc := cocycle_relation_on_letter (W := W) (T := T) hcoc (c - 1)
  rw [sub_add_cancel] at hc
  have hl : W.φD T ((letE (c - 2 + 1) : LetA O n) • zv) = (letE c : LetA O n) • W.φD T zv := by
    rw [frobenius_letter_shift, show c - 2 + 1 + 1 = c by ring]
  have hl' : W.φD T ((letE (c - 1) : LetA O n) • zv) = (letE c : LetA O n) • W.φD T zv := by
    rw [frobenius_letter_shift, sub_add_cancel]
  unfold frobeniusShiftDefectOfLiftCorrection gammaDefectOfLiftCorrection gammaDefectOfLetterLift
  simp only [map_add (f := _), map_sub, map_smul, gamma_letter_smul, gamma_frobenius_comm, hc, hl, hl']
  simp only [smul_add, smul_sub, smul_smul, ← pow_add, add_comm σ s₁]
  abel

theorem cocycleY_eq_frobenius_add (c : ZMod n) :
    frobeniusSquareDefectOfLiftCorrection W T s₁ σ yv ms t c = W.φD T (frobeniusShiftDefectOfLiftCorrection W T s₁ σ yv ms t c) + t c := by
  unfold frobeniusSquareDefectOfLiftCorrection frobeniusShiftDefectOfLiftCorrection liftCorrection
  simp only [map_add (f := _), map_sub, map_smul, smul_add]
  abel

theorem gamma_sub_cocycle_component (hcoc : W.γ T yv - yv = W.φD T zv - zv) (c : ZMod n) :
    W.γ T (frobeniusSquareDefectOfLiftCorrection W T s₁ σ yv ms t c) - frobeniusSquareDefectOfLiftCorrection W T s₁ σ yv ms t c =
      W.φD T (W.φD T (gammaDefectOfLiftCorrection W T s₁ σ yv zv ms t (c - 2))) - gammaDefectOfLiftCorrection W T s₁ σ yv zv ms t c := by
  rw [cocycleY_eq_frobenius_add, cocycleXi_eq ms t hcoc c]
  have h := congrArg (W.φD T) (gamma_sub_cocycleW (s₁ := s₁) (σ := σ) (ms := ms) (t := t) hcoc c)
  simp only [map_add (f := _), map_sub, map_smul, gamma_frobenius_comm] at h ⊢
  rw [show ∀ a b e : W.DD T, a - (b - e) = (a - b) + e from fun a b e => by abel, ← h]
  abel

theorem first_component_sum_eq [NeZero n] (hn : Even n) (d : ℕ) :
    ((PD.p : ℕ) : O) ^ (s₁ + σ) • yv +
        (W.φD T (liftCorrectionSum W T s₁ σ yv ms t d) - liftCorrectionSum W T s₁ σ yv ms t d) =
      ∑ c ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.evens n d, frobeniusSquareDefectOfLiftCorrection W T s₁ σ yv ms t c := by
  have hy : yv = ∑ c ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.evens n d,
      ((letE (c + 1) : LetA O n) • yv + (letE (c + 2) : LetA O n) • yv) := by
    conv_lhs => rw [← sum_letter_idempotents_smul W T yv]
    exact sum_eq_sum_evens_pairs hn d (fun i => (letE i : LetA O n) • yv)
  have key : ((PD.p : ℕ) : O) ^ (s₁ + σ) • yv = ∑ c ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.evens n d,
      (((PD.p : ℕ) : O) ^ (s₁ + σ) • ((letE (c + 1) : LetA O n) • yv) +
        ((PD.p : ℕ) : O) ^ (s₁ + σ) • ((letE (c + 2) : LetA O n) • yv)) := by
    conv_lhs => rw [hy]
    rw [Finset.smul_sum]
    simp only [smul_add]
  have h2 : ∑ c ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.evens n d,
      W.φD T (W.φD T (liftCorrection W T s₁ σ yv ms t (c - 2))) =
      ∑ c ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.evens n d, W.φD T (W.φD T (liftCorrection W T s₁ σ yv ms t c)) :=
    sum_evens_shift_sub_two hn d (fun c => W.φD T (W.φD T (liftCorrection W T s₁ σ yv ms t c)))
  have h3 : ∑ c ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.evens n d,
      ((PD.p : ℕ) : O) ^ (s₁ + σ) • W.φD T ((letE c : LetA O n) • yv) =
      ∑ c ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.evens n d,
        ((PD.p : ℕ) : O) ^ (s₁ + σ) • W.φD T ((letE (c + 2) : LetA O n) • yv) :=
    (sum_evens_shift_add_two hn d (fun c => ((PD.p : ℕ) : O) ^ (s₁ + σ) • W.φD T ((letE c : LetA O n) • yv))).symm
  have eY : ∀ c, frobeniusSquareDefectOfLiftCorrection W T s₁ σ yv ms t c =
      ((PD.p : ℕ) : O) ^ (s₁ + σ) • ((letE (c + 1) : LetA O n) • yv) +
        ((PD.p : ℕ) : O) ^ (s₁ + σ) • W.φD T ((letE c : LetA O n) • yv) +
        W.φD T (W.φD T (liftCorrection W T s₁ σ yv ms t (c - 2))) - liftCorrection W T s₁ σ yv ms t c := by
    intro c; unfold frobeniusSquareDefectOfLiftCorrection; rw [smul_add]
  rw [Finset.sum_congr rfl (fun c _ => eY c)]
  simp only [Finset.sum_add_distrib, Finset.sum_sub_distrib]
  rw [h2, h3, key]
  unfold liftCorrectionSum

  rw [map_sum]
  simp only [map_add (f := _), map_smul, Finset.sum_add_distrib]
  abel

theorem second_component_sum_eq [NeZero n] (hn : Even n) (d : ℕ) (hcoc : W.γ T yv - yv = W.φD T zv - zv) :
    ((PD.p : ℕ) : O) ^ (s₁ + σ) • zv +
        (W.γ T (liftCorrectionSum W T s₁ σ yv ms t d) - liftCorrectionSum W T s₁ σ yv ms t d) =
      ∑ c ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.evens n d,
        (gammaDefectOfLiftCorrection W T s₁ σ yv zv ms t c + W.φD T (gammaDefectOfLiftCorrection W T s₁ σ yv zv ms t c)) := by
  have hz : zv = ∑ c ∈ Formalism.MainNotions.RamifiedCoefficientChains.S9.evens n d,
      ((letE (c + 1) : LetA O n) • zv + (letE (c + 2) : LetA O n) • zv) := by
    conv_lhs => rw [← sum_letter_idempotents_smul W T zv]
    exact sum_eq_sum_evens_pairs hn d (fun i => (letE i : LetA O n) • zv)
  have hc : ∀ c : ZMod n, (letE (c + 2) : LetA O n) • W.γ T yv = (letE (c + 2) : LetA O n) • yv +
      W.φD T ((letE (c + 1) : LetA O n) • zv) - (letE (c + 2) : LetA O n) • zv := by
    intro c
    have := cocycle_relation_on_letter (W := W) (T := T) hcoc (c + 1)
    rwa [show c + 1 + 1 = c + 2 by ring] at this
  unfold gammaDefectOfLiftCorrection liftCorrectionSum

  rw [map_sum, ← Finset.sum_sub_distrib]
  conv_lhs => rw [hz]
  rw [Finset.smul_sum, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun c _ => ?_
  simp only [map_add (f := _), map_sub, map_smul, gamma_letter_smul, gamma_frobenius_comm, hc, smul_add, smul_sub]
  abel

end Core

end Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2I

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.GammaSubCocycleComponent =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusDifferenceIdentity =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusDifferenceIdentity", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.GammaSubCocycleComponent\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CocyclesToWachVectorsBoundOfExtTool\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.CmpOfMemX\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkMultVNonneg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2A

open Module Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.RamifiedCoefficientChains
open Formalism.MainNotions.CrystallineLiftingInputs (DL InPN pullJ fMX)
open Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2L Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2I

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

theorem sigma_bound_le (l h η : ℕ) (hl : 11 ≤ l) :
    ((2 * S9.sigC l h η : ℕ) : ℝ) ≤ S9.ExtensionLemmaAlt.B2 l h η := by
  have hl' : (1 : ℝ) < l := by exact_mod_cast (by omega : 1 < l)
  have hx : 0 ≤ (((Formalism.MainNotions.CrystallineLiftingInputs.Mpar l h : ℕ) : ℝ) + (η : ℝ)) / ((l : ℝ) - 1) + 1 := by
    have : 0 ≤ (((Formalism.MainNotions.CrystallineLiftingInputs.Mpar l h : ℕ) : ℝ) + (η : ℝ)) / ((l : ℝ) - 1) :=
      div_nonneg (by positivity) (by linarith)
    linarith
  have hc := Nat.ceil_lt_add_one hx
  unfold S9.ExtensionLemmaAlt.B2 Formalism.TruncatedSeriesCounting.RamifiedCoefficientChains.sig
  unfold S9.sigC
  unfold Formalism.MainNotions.CrystallineLiftingInputs.Mpar
  push_cast
  unfold Formalism.MainNotions.CrystallineLiftingInputs.Mpar at hc
  push_cast at hc
  linarith

theorem eta_le_parameter (l h η : ℕ) (hl : 2 ≤ l) (hη : η ≤ h) : η ≤ (l - 1) * Formalism.MainNotions.CrystallineLiftingInputs.Mpar l h := by
  unfold Formalism.MainNotions.CrystallineLiftingInputs.Mpar
  have := Nat.lt_mul_div_succ h (by omega : 0 < l - 1)
  omega

theorem jumps_bounds_of_set [NeZero n] (W : LocWach PD LL O v n) {d : ℕ} {T₁ T₂ : LocLat G Qp LL O}
    {F : LatHom T₁.L T₂.L} {b : ZMod n → ℕ} {S η m : ℕ} (hEx : DcrisExactStrict PD LL)
    (hCs : CrysSubQuot PD LL) (hDq : DdREqDcris PD LL) (hS : SetCS W d T₁ T₂ F b S η m) :
    (∀ i τ, Formalism.MainNotions.LiftingTheory.Over W τ i → JumpsInV PD T₂.ρ τ (Set.Ici (-((hpar n b S : ℕ) : ℤ)))) ∧
    ∀ (c' : ZMod n) τ, (c'.val + d) % 2 = 0 → Formalism.MainNotions.LiftingTheory.Over W τ (c' + 1) →
      JumpsInV PD T₂.ρ τ (Set.Ici (-(η : ℤ))) := by
  have hn : Even n := hS.2.2.1
  have hwin : ∀ i a, a ∈ Formalism.MainNotions.RamifiedCoefficientChains.JumpWinS d b S η i → -((hpar n b S : ℕ) : ℤ) ≤ a := by
    intro i a ha
    have hbi : b i ≤ Finset.univ.sup b := Finset.le_sup (Finset.mem_univ i)
    have hη := Formalism.MainNotions.N.Pv.LocalLengthBound.rk_eta_lt W hS i
    unfold Formalism.MainNotions.RamifiedCoefficientChains.JumpWinS at ha
    unfold hpar
    split_ifs at ha <;> simp only [Set.mem_union, Set.mem_Icc] at ha <;> push_cast at ha ⊢ <;> omega
  have hwinU : ∀ c' : ZMod n, (c'.val + d) % 2 = 0 → ∀ a,
      a ∈ Formalism.MainNotions.RamifiedCoefficientChains.JumpWinS d b S η (c' + 1) → -(η : ℤ) ≤ a := by
    intro c' hc' a ha
    have hpar' := S9.parity_succ hn d c'
    unfold Formalism.MainNotions.RamifiedCoefficientChains.JumpWinS at ha
    rw [if_neg (by omega)] at ha
    simp only [Set.mem_union, Set.mem_Icc] at ha
    push_cast at ha
    omega
  exact ⟨fun i τ hτ a ha => hwin i a (Formalism.MainNotions.N.Pv.LocalLengthBound.rk_jumps₂ W hEx hCs hDq hS i τ hτ a ha),
    fun c' τ hc' hτ a ha => hwinU c' hc' a (Formalism.MainNotions.N.Pv.LocalLengthBound.rk_jumps₂ W hEx hCs hDq hS (c' + 1) τ hτ a ha)⟩

theorem difference_of_factorisations {M' : Type} [AddCommGroup M'] [Module O M'] {R : Type} [CommRing R] [Module R M']
    [SMulCommClass O R M'] (f0 : R) (l : O) (φw tw t₁ t' t p₁ p₂ p₃ : M')
    (etw : tw - ((1 : O) • t₁ + (-l) • t') = f0 • p₁) (e₂ : t₁ = f0 • p₂) (e₃ : t - t' = f0 • p₃) :
    (l • φw - tw) - l • (φw + t) = f0 • (-(p₁ + p₂ + l • p₃)) := by
  have et' : t' = t - f0 • p₃ := by rw [← e₃]; abel
  have etw' : tw = f0 • p₁ + ((1 : O) • t₁ + (-l) • t') := by rw [← etw]; abel
  rw [etw', e₂, et']
  simp only [one_smul, neg_smul, smul_sub, smul_add, smul_neg]
  rw [smul_comm l f0 p₃]
  abel

theorem pow_smul_cocycle_sub_sum_mem_latticeCoboundaries (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (ev : Finset (ZMod n))
    (xc : ZMod n → ↥(W.wachCocyclesDelta T)) (κ : ZMod n → G → T.V) (hκ : ∀ c, κ c ∈ latticeCocycles T.L)
    (hP : ∀ c ∈ ev, W.clK T (xc c) = Submodule.Quotient.mk ⟨κ c, hκ c⟩)
    (x0 : ↥(W.wachCocyclesDelta T)) (gf : G → T.V) (hgf : gf ∈ latticeCocycles T.L)
    (hcl0 : W.clK T x0 = Submodule.Quotient.mk ⟨gf, hgf⟩) (e : ℕ)
    (hcls : ∑ c ∈ ev, W.clK T (xc c) = ((PD.p : ℕ) : O) ^ e • W.clK T x0) :
    (PD.p : O) ^ e • gf - ∑ c ∈ ev, κ c ∈ latticeCoboundaries T.L := by
  let Ks : ↥(latticeCocycles T.L) := ∑ c ∈ ev, ⟨κ c, hκ c⟩
  have hK : (Submodule.Quotient.mk Ks : LatticeCohomology T.L) = ∑ c ∈ ev, W.clK T (xc c) := by
    calc (Submodule.Quotient.mk Ks : LatticeCohomology T.L)
        = ((latticeCoboundaries T.L).comap (latticeCocycles T.L).subtype).mkQ Ks := rfl
      _ = ∑ c ∈ ev, ((latticeCoboundaries T.L).comap (latticeCocycles T.L).subtype).mkQ ⟨κ c, hκ c⟩ := map_sum _ _ _
      _ = ∑ c ∈ ev, W.clK T (xc c) := Finset.sum_congr rfl fun c hc => (hP c hc).symm
  have hgf0 : (Submodule.Quotient.mk (((PD.p : ℕ) : O) ^ e • (⟨gf, hgf⟩ : ↥(latticeCocycles T.L)) - Ks) :
      LatticeCohomology T.L) = 0 := by
    rw [Submodule.Quotient.mk_sub, Submodule.Quotient.mk_smul, hK, hcls, hcl0, sub_self]
  have hmem := (Submodule.Quotient.mk_eq_zero _).1 hgf0
  rw [Submodule.mem_comap] at hmem
  simpa [Ks, Submodule.coe_sum] using hmem

section Fam

variable (W : LocWach PD LL O v n) (T : LocLat G Qp LL O)

def letterIdempotentMap (i : ZMod n) : W.DD T →ₗ[O] W.DD T where
  toFun x := (letE i : LetA O n) • x
  map_add' x y := smul_add _ x y
  map_smul' r x := Formalism.MainNotions.N.Pv.LocalLengthBound.osmul_comm W T (letE i) r x

variable {W T}

theorem frobenius_lift_identity (N s₁ σ : ℕ) (yv : W.DD T) (ms t μ : ZMod n → W.DD T) (c : ZMod n) :
    ((PD.p : ℕ) : O) ^ N • liftCorrection W T s₁ σ yv ms t c - ((PD.p : ℕ) : O) ^ (s₁ + σ) • μ (c + 1) =
      ((PD.p : ℕ) : O) ^ σ • W.φD T (((PD.p : ℕ) : O) ^ N • ms c - ((PD.p : ℕ) : O) ^ s₁ • μ c) +
        ((PD.p : ℕ) : O) ^ (s₁ + σ) • (((PD.p : ℕ) : O) ^ N • ((letE (c + 1) : LetA O n) • yv) +
          W.φD T (μ c) - μ (c + 1)) - ((PD.p : ℕ) : O) ^ N • t c := by
  unfold liftCorrection
  simp only [map_sub, map_smul, smul_add, smul_sub, smul_smul, ← pow_add]
  simp only [add_comm]
  abel

theorem gamma_difference_identity (N s₁ σ : ℕ) (yv zv : W.DD T) (ms t μ : ZMod n → W.DD T) (c : ZMod n) :
    W.γ T (((PD.p : ℕ) : O) ^ N • liftCorrection W T s₁ σ yv ms t c -
        ((PD.p : ℕ) : O) ^ (s₁ + σ) • μ (c + 1)) -
      (((PD.p : ℕ) : O) ^ N • liftCorrection W T s₁ σ yv ms t c - ((PD.p : ℕ) : O) ^ (s₁ + σ) • μ (c + 1)) =
      ((PD.p : ℕ) : O) ^ N • gammaDefectOfLiftCorrection W T s₁ σ yv zv ms t c -
        ((PD.p : ℕ) : O) ^ (s₁ + σ) • (((PD.p : ℕ) : O) ^ N • ((letE (c + 1) : LetA O n) • zv) +
          (W.γ T (μ (c + 1)) - μ (c + 1))) := by
  unfold gammaDefectOfLiftCorrection
  simp only [map_sub, map_smul, smul_add, smul_sub, smul_smul, ← pow_add]
  simp only [add_comm]
  abel

theorem frobenius_difference_identity (N s₁ σ : ℕ) (yv : W.DD T) (ms t μ : ZMod n → W.DD T) (c : ZMod n) :
    ((PD.p : ℕ) : O) ^ N • frobeniusShiftDefectOfLiftCorrection W T s₁ σ yv ms t c =
      W.φD T (((PD.p : ℕ) : O) ^ N • liftCorrection W T s₁ σ yv ms t (c - 2) -
          ((PD.p : ℕ) : O) ^ (s₁ + σ) • μ (c - 1)) -
        ((PD.p : ℕ) : O) ^ σ • (((PD.p : ℕ) : O) ^ N • ms c - ((PD.p : ℕ) : O) ^ s₁ • μ c) +
        ((PD.p : ℕ) : O) ^ (s₁ + σ) • (((PD.p : ℕ) : O) ^ N • ((letE c : LetA O n) • yv) +
          W.φD T (μ (c - 1)) - μ c) := by
  unfold frobeniusShiftDefectOfLiftCorrection
  simp only [map_sub, map_smul, smul_add, smul_sub, smul_smul, ← pow_add]
  simp only [add_comm]
  abel

end Fam

end Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2A

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusDifferenceIdentity =====
