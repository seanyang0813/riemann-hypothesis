module

public import Mathlib.RingTheory.AdicCompletion.Basic
public import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs
public import Mathlib.RingTheory.PowerSeries.Basic
public import Mathlib.RingTheory.PowerSeries.WeierstrassPreparation
public import Mathlib.Algebra.Polynomial.Div
public import Mathlib.RingTheory.LocalRing.ResidueField.Basic
public import Mathlib.RingTheory.PowerSeries.Order
public import Formalism.SharpRestriction.LevelLetterCocycles.ExpRules
public import Formalism.SharpRestriction.LevelLetterCocycles.LemmasUnramifiedOfRingCondition
public import Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FrobeniusUniformizerPowDvd
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.HasSubstPi0Series
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IsExpSmulA
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.PhiExp
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExistsXPowMul
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.Pi0PowSmulInjective
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.SmulSDivMem
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.CmpOfMemX
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IndepOfSpan
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.JumpsLetExists
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.DvdOfDvdImage, Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IndepPhiCmp, Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExpCritPOf

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.DvdOfDvdImage =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.DvdOfDvdImage", "h": "module\n\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs\npublic import Mathlib.RingTheory.PowerSeries.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.PowerSeries.WeierstrassPreparation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Polynomial.Div\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Basic\npublic import Mathlib.RingTheory.PowerSeries.Order\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Classical

namespace Formalism.MainNotions.N.Pv.LocalLengthBound.Wd

open PowerSeries

variable {O LL : Type} [CommRing O] [IsDomain O] [Field LL] [Algebra O LL]
  (hinj : Function.Injective (algebraMap O LL)) (l : O)
  (ψ : PowerSeries O →+* PowerSeries LL) (hψC : ∀ o : O, ψ (PowerSeries.C o) = PowerSeries.C (algebraMap O LL o))
  (u : PowerSeries LL) (hu : IsUnit u) (hψ : ψ (PowerSeries.X + PowerSeries.C l) = PowerSeries.X * u)
include hinj hψC hu hψ


theorem poly_eq_zero : ∀ (k : ℕ) (r : Polynomial O), r.degree < k →
    PowerSeries.X ^ k ∣ ψ (r : PowerSeries O) → r = 0 := by
  have dvd_of_dvd_isUnit_mul_lemma {R : Type _} [CommRing R] {u f g : R} (hu : IsUnit u)
      (h : g ∣ u * f) : g ∣ f := by
    obtain ⟨v, rfl⟩ := hu
    have e : f = ↑v⁻¹ * (↑v * f) := by rw [← mul_assoc, Units.inv_mul, one_mul]
    rw [e]
    exact dvd_mul_of_dvd_right h _
  have hψX : ψ PowerSeries.X = PowerSeries.X * u - PowerSeries.C (algebraMap O LL l) := by
    have h := hψ
    rw [map_add (f := _), hψC] at h
    exact eq_sub_of_add_eq h
  intro k
  induction k with
  | zero =>
    intro r hr _
    by_contra hr0
    rw [Polynomial.degree_eq_natDegree hr0] at hr
    have h0 : r.natDegree < 0 := by exact_mod_cast hr
    omega
  | succ k ih =>
    intro r hr hdvd
    have hmon : (Polynomial.X + Polynomial.C l : Polynomial O).Monic := Polynomial.monic_X_add_C l
    have hrem : Polynomial.modByMonic r (Polynomial.X + Polynomial.C l) = Polynomial.C (r.eval (-l)) := by
      have hg : (Polynomial.X + Polynomial.C l : Polynomial O) = Polynomial.X - Polynomial.C (-l) := by
        rw [map_neg, sub_neg_eq_add]
      rw [hg]
      exact Polynomial.modByMonic_X_sub_C_eq_C_eval r (-l)
    have hsplit : r = Polynomial.C (r.eval (-l)) +
        (Polynomial.X + Polynomial.C l) * Polynomial.divByMonic r (Polynomial.X + Polynomial.C l) := by
      have h1 : Polynomial.modByMonic r (Polynomial.X + Polynomial.C l) +
          (Polynomial.X + Polynomial.C l) * Polynomial.divByMonic r (Polynomial.X + Polynomial.C l) = r := by
        first
          | exact Polynomial.modByMonic_add_div r (Polynomial.X + Polynomial.C l)
      rw [hrem] at h1
      exact h1.symm
    have hqdeg : (Polynomial.divByMonic r (Polynomial.X + Polynomial.C l)).degree < k := by
      by_cases hq0 : Polynomial.divByMonic r (Polynomial.X + Polynomial.C l) = 0
      · rw [hq0, Polynomial.degree_zero]
        first
          | exact WithBot.bot_lt_coe _
      · have hr0 : r ≠ 0 := by
          rintro rfl
          exact hq0 (Polynomial.zero_divByMonic _)
        have hpos : 0 < (Polynomial.X + Polynomial.C l : Polynomial O).degree := by
          first
            | (rw [Polynomial.degree_X_add_C]; exact zero_lt_one)
        have h1 : (Polynomial.divByMonic r (Polynomial.X + Polynomial.C l)).degree < r.degree := by
          first
            | exact Polynomial.degree_divByMonic_lt r (Polynomial.X + Polynomial.C l) hr0 hpos
        rw [Polynomial.degree_eq_natDegree hq0, Polynomial.degree_eq_natDegree hr0] at h1
        rw [Polynomial.degree_eq_natDegree hr0] at hr
        rw [Polynomial.degree_eq_natDegree hq0]
        have a1 : (Polynomial.divByMonic r (Polynomial.X + Polynomial.C l)).natDegree < r.natDegree := by
          exact_mod_cast h1
        have a2 : r.natDegree < k + 1 := by exact_mod_cast hr
        have a3 : (Polynomial.divByMonic r (Polynomial.X + Polynomial.C l)).natDegree < k := by omega
        exact_mod_cast a3
    obtain ⟨c, q, hrq, hq⟩ : ∃ (c : O) (q : Polynomial O),
        r = Polynomial.C c + (Polynomial.X + Polynomial.C l) * q ∧ q.degree < k :=
      ⟨_, _, hsplit, hqdeg⟩
    have hψr : ψ (r : PowerSeries O) =
        PowerSeries.C (algebraMap O LL c) + PowerSeries.X * (u * ψ (q : PowerSeries O)) := by
      rw [hrq]
      first
        | (simp only [Polynomial.coe_add, Polynomial.coe_mul, Polynomial.coe_C, Polynomial.coe_X,
            map_add, map_mul, hψC, hψX]; ring)
    have hX : PowerSeries.X ∣ ψ (r : PowerSeries O) :=
      (dvd_pow_self _ (Nat.succ_ne_zero k)).trans hdvd
    rw [hψr, PowerSeries.X_dvd_iff] at hX
    first
      | simp only [map_add (f := _), map_mul, PowerSeries.constantCoeff_C, PowerSeries.constantCoeff_X,
          zero_mul, add_zero] at hX
    have hc0 : c = 0 := hinj (hX.trans (map_zero _).symm)
    simp only [hc0, map_zero, zero_add] at hψr
    rw [hψr, pow_succ'] at hdvd
    have h2 : PowerSeries.X ^ k ∣ u * ψ (q : PowerSeries O) :=
      (mul_dvd_mul_iff_left PowerSeries.X_ne_zero).mp hdvd
    have hq0 : q = 0 := ih q hq (dvd_of_dvd_isUnit_mul_lemma hu h2)
    rw [hrq, hc0, hq0]
    simp

theorem dvd_of_dvd_image [IsLocalRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O]
    (hlm : l ∈ IsLocalRing.maximalIdeal O) (k : ℕ) (a : PowerSeries O)
    (ha : PowerSeries.X ^ k ∣ ψ a) : (PowerSeries.X + PowerSeries.C l) ^ k ∣ a := by
  have hres : PowerSeries.map (IsLocalRing.residue O) ((PowerSeries.X + PowerSeries.C l) ^ k) =
      PowerSeries.X ^ k := by
    rw [map_pow, map_add (f := _), PowerSeries.map_X, PowerSeries.map_C,
      (IsLocalRing.residue_eq_zero_iff l).mpr hlm, map_zero, add_zero]
  have hg : PowerSeries.map (IsLocalRing.residue O) ((PowerSeries.X + PowerSeries.C l) ^ k) ≠ 0 := by
    rw [hres]; exact pow_ne_zero _ PowerSeries.X_ne_zero
  obtain ⟨q, r, hdiv⟩ := PowerSeries.exists_isWeierstrassDivision (f := a) hg
  have hdeg : r.degree < k := by
    have h := hdiv.degree_lt
    have hz : Ideal.Quotient.mk (IsLocalRing.maximalIdeal O) l = 0 := Ideal.Quotient.eq_zero_iff_mem.mpr hlm
    first
      | simpa [hz, PowerSeries.order_X_pow] using h
  have hψa : ψ a = (PowerSeries.X * u) ^ k * ψ q + ψ (r : PowerSeries O) := by
    rw [hdiv.eq_mul_add, map_add (f := _), map_mul, map_pow, hψ]
  have h1 : PowerSeries.X ^ k ∣ (PowerSeries.X * u) ^ k * ψ q :=
    dvd_mul_of_dvd_left (pow_dvd_pow_of_dvd (dvd_mul_right _ _) k) _
  have h2 : PowerSeries.X ^ k ∣ ψ (r : PowerSeries O) := by
    rw [hψa] at ha
    first
      | exact (dvd_add_right h1).mp ha
  have hr0 : r = 0 := poly_eq_zero hinj l ψ hψC u hu hψ k r hdeg h2
  rw [hdiv.eq_mul_add, hr0, Polynomial.coe_zero, add_zero]
  exact dvd_mul_right _ _

end Formalism.MainNotions.N.Pv.LocalLengthBound.Wd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.DvdOfDvdImage =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IndepPhiCmp =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IndepPhiCmp", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ExpRules\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LemmasUnramifiedOfRingCondition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FrobeniusUniformizerPowDvd\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.HasSubstPi0Series\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IsExpSmulA\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.PhiExp\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.Pi0PowSmulInjective\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.SmulSDivMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExistsXPowMul\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Classical

namespace Formalism.MainNotions.N.Pv.LocalLengthBound

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct Formalism.MainNotions.N.Pv.LocalLengthBound.Ser

section PhiInj

variable {G : Type} [Group G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]

theorem φVB_inj : Function.Injective (φVB PD (LL := LL) (V := V)) := by
  have h : ∀ y, φVB PD (LL := LL) (V := V) y = ((PD.φ.toLinearMap).lTensor V) y := fun y => by
    induction y using TensorProduct.induction_on with
    | zero => simp
    | tmul x b => simp [φVB]
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]
  intro a b hab
  rw [h, h] at hab
  exact Module.Flat.lTensor_preserves_injective_linearMap _ PD.φ_inj hab

end PhiInj

section CritB2

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)
    {Zl Ai : Type} [CommRing Zl] [CommRing Ai] [Algebra Zl O]
    [Algebra Zl Ai] {RW : Type} [CommRing RW] [Algebra O RW] {inclR : (O ⊗[Zl] Ai) →ₐ[O] RW}
    {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : O ⊗[Zl] Ai}
    {E : EtTie W (O ⊗[Zl] Ai) RW inclR φR gR πA} {ιdR : Ai →+* BdR} {p1 : Ai} {tS zS : BdR}

theorem isExp_zero (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) :
    Formalism.MainNotions.RamifiedCoefficientChains.Sh.IsExp W T i ζ (0 : W.DD T) (fun _ => 0) := by
  have h0 : (1 : LetA O n) • (0 : W.DD T) ∈ W.N T := by rw [smul_zero]; exact (W.N T).zero_mem
  refine ⟨⟨0, fun _ _ => rfl⟩, 1, h0, by rw [map_one]; exact one_ne_zero, fun k => ?_⟩
  have e : (⟨(1 : LetA O n) • (0 : W.DD T), h0⟩ : ↥(W.N T)) = 0 := Subtype.ext (smul_zero _)
  rw [e, map_zero, conv_eq]
  simp [smulS]

theorem pullJ_exp (hA : Formalism.MainNotions.LiftingTheory.CaseA W) (h4 : Formalism.MainNotions.WachCoordinates.LevelMapHodgeFiltration W) (C : CmpTie W E ιdR p1 tS zS)
    {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} (h4W : Formalism.MainNotions.DeltaInvariantLattices.P4W W Pt)
    (T : LocLat G Qp LL O) (hT : IsCrys PD T.ρ) (i : ZMod n) {ζ : LL} (hζ : IsPrimitiveRoot ζ PD.p) :
    ∀ x ∈ Formalism.MainNotions.CrystallineLiftingInputs.pullJ W T (i - 1) 1, ∃ d : ℤ → T.V ⊗[Qp] BdR,
      Formalism.MainNotions.RamifiedCoefficientChains.Sh.IsExp W T i ζ x d ∧ ∀ k : ℤ, k < 0 → d k = 0 := by
  have hs : W.s = 1 := hA.2.1
  obtain ⟨hN, hAg⟩ := gam_of_tie W hs C
  obtain ⟨-, -, hAdd, -, -, -, -⟩ := expRules_of W h4 hN hAg hA T hT i ζ hζ
  intro x hx
  unfold Formalism.MainNotions.CrystallineLiftingInputs.pullJ at hx
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨y, ⟨hy, hyD⟩, rfl⟩ := hx
    rw [pow_one]
    obtain ⟨d, hd, hn, -⟩ := phi_exp W hs C h4W T hT i hζ y hy hyD.1
    exact ⟨d, hd, hn⟩
  | zero => exact ⟨fun _ => 0, isExp_zero W T i ζ, fun _ _ => rfl⟩
  | add x y _ _ hx hy =>
    obtain ⟨d, hd, hn⟩ := hx
    obtain ⟨e, he, hn'⟩ := hy
    exact ⟨d + e, hAdd _ _ _ _ hd he, fun k hk => by simp [hn k hk, hn' k hk]⟩
  | smul a x _ hx =>
    obtain ⟨d, hd, hn⟩ := hx
    exact ⟨smulS (W.lev i ζ a) d, isExp_smulA W T i ζ hd a, fun k hk => LB_smulS hn _ k hk⟩

theorem indep_phi_cmp (hdom : IsDomain O) (hFr : IsFractionRing O LL)
    (hR : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W) (T : LocLat G Qp LL O) (h3 : Formalism.MainNotions.DeltaInvariantLattices.p3 W T)
    (hmod : Formalism.MainNotions.DeltaInvariantLattices.wachModuleOverLetters W T W.π₀) (i : ZMod n) {r : ℕ} (e : Fin r → W.DD T)
    (he : Formalism.MainNotions.RamifiedCoefficientChains.Sh.IsBas W T i e) (c : Fin r → LL)
    (hc : ∑ m, c m • ιV PD (LL := LL) (V := T.V) (φVB PD (LL := LL) (V := T.V)
      (W.cmp T ⟨e m, (he.1 m).1⟩)) = 0) : c = 0 := by
  haveI := hdom
  haveI : Nontrivial O := (algebraMap O LL).domain_nontrivial
  have hsum : ∑ m, c m • W.cmp T ⟨e m, (he.1 m).1⟩ = 0 := by
    apply φVB_inj PD (LL := LL) (V := T.V)
    apply Formalism.MainNotions.UnusedSlot80.LevR.ιV_inj (PD := PD) (LL := LL) (V := T.V)

    rw [map_zero, map_zero, map_sum, map_sum]
    simpa [map_smul] using hc
  obtain ⟨⟨dd, hdd⟩, hint⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors O)
    (Finset.univ : Finset (Fin r)) c
  choose o ho using fun m => hint m (Finset.mem_univ m)
  have hdne : algebraMap O LL dd ≠ 0 := IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors hdd
  set z : W.DD T := ∑ m, o m • e m with hz
  have hzN : z ∈ W.N T := Submodule.sum_mem _ fun m _ => by
    rw [← algebraMap_smul (LetA O n) (o m) (e m)]; exact (W.N T).smul_mem _ (he.1 m).1
  have hzD : Formalism.MainNotions.CrystallineLiftingInputs.DL W T i z := by
    refine ⟨?_, fun δ hδ => ?_⟩
    · rw [hz, Finset.smul_sum]
      exact Finset.sum_congr rfl fun m _ => by rw [smul_comm, (he.1 m).2.1]
    · set_option synthInstance.maxHeartbeats 100000 in
      rw [hz, map_sum]
      exact Finset.sum_congr rfl fun m _ => by rw [map_smul, (he.1 m).2.2 δ hδ]
  have hcz : W.cmp T ⟨z, hzN⟩ = 0 := by
    have e1 : (⟨z, hzN⟩ : ↥(W.N T)) = ∑ m, o m • (⟨e m, (he.1 m).1⟩ : ↥(W.N T)) :=
      Subtype.ext (by simp [hz, Submodule.coe_sum])

    rw [e1, map_sum]
    simp only [W.cmp_smul]
    calc ∑ m, algebraMap O LL (o m) • W.cmp T ⟨e m, (he.1 m).1⟩
        = ∑ m, algebraMap O LL dd • (c m • W.cmp T ⟨e m, (he.1 m).1⟩) := by
          refine Finset.sum_congr rfl fun m _ => ?_
          rw [ho m, Algebra.smul_def, mul_smul]
      _ = 0 := by rw [← Finset.smul_sum, hsum, smul_zero]
  have hPN := ker_NDl W T i h3 hmod hR (x := z) ⟨hzN, hzD⟩
    (by unfold Formalism.MainNotions.ArcLiftingSetup.cmpD; rw [dite_eq_left hzN]; exact hcz)
  obtain ⟨y, hy, hyΔ, hzy⟩ := hPN
  rw [pow_one] at hzy
  have hyl : (letE i : LetA O n) • y = y := by
    apply RL.pi0_pow_smul_injective W T hR.2.2.1 1
    rw [pow_one, smul_comm, ← hzy, hzD.1]
  obtain ⟨b, hb, -⟩ := he.2 y hy ⟨hyl, hyΔ⟩
  have rep1 : z = ∑ m, Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (PowerSeries.C (o m)) • e m := by
    rw [hz]
    exact Finset.sum_congr rfl fun m _ => by rw [evalZero_C, algebraMap_smul]
  have rep2 : z = ∑ m, Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (PowerSeries.X * b m) • e m := by
    rw [hzy, hb, Finset.smul_sum]
    exact Finset.sum_congr rfl fun m _ => by rw [smul_smul, evalZero_mul W hR, evalZero_X_eq_pi0 W hR]
  have heq := (he.2 z hzN hzD).unique rep1 rep2
  funext m
  have h0 : o m = 0 := by
    have := congrArg (fun f => PowerSeries.constantCoeff (f m)) heq
    simpa using this
  have : algebraMap O LL dd * c m = 0 := by
    rw [← Algebra.smul_def, ← ho m, h0, map_zero]
  exact (mul_eq_zero.1 this).resolve_left hdne

end CritB2

end Formalism.MainNotions.N.Pv.LocalLengthBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IndepPhiCmp =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExpCritPOf =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExpCritPOf", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IsExpSmulA\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.CmpOfMemX\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.DvdOfDvdImage\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.HasSubstPi0Series\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IndepOfSpan\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.IndepPhiCmp\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.JumpsLetExists\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.PhiExp\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.Pi0PowSmulInjective\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.SmulSDivMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Classical

namespace Formalism.MainNotions.N.Pv.LocalLengthBound

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct Formalism.MainNotions.N.Pv.LocalLengthBound.Ser

section CritB3

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)
    {Zl Ai : Type} [CommRing Zl] [CommRing Ai] [Algebra Zl O]
    [Algebra Zl Ai] {RW : Type} [CommRing RW] [Algebra O RW] {inclR : (O ⊗[Zl] Ai) →ₐ[O] RW}
    {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : O ⊗[Zl] Ai}
    {E : EtTie W (O ⊗[Zl] Ai) RW inclR φR gR πA} {ιdR : Ai →+* BdR} {p1 : Ai} {tS zS : BdR}

theorem expCritP_of [NeZero n] (hA : Formalism.MainNotions.LiftingTheory.CaseA W) [IsDomain O] [IsLocalRing O]
    [IsAdicComplete (IsLocalRing.maximalIdeal O) O] (hinj : Function.Injective (algebraMap O LL))
    (hlm : ((PD.p : ℕ) : O) ∈ IsLocalRing.maximalIdeal O) (hFr : IsFractionRing O LL)
    (h3 : Formalism.MainNotions.DeltaInvariantLattices.P3W W) (h4 : Formalism.MainNotions.WachCoordinates.LevelMapHodgeFiltration W) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W)
    (hD : Formalism.MainNotions.RamifiedCoefficientChains.DdREqDcris PD LL) (hB : Formalism.MainNotions.RamifiedCoefficientChains.Sh.BasTool W) (C : CmpTie W E ιdR p1 tS zS)
    {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} (h4W : Formalism.MainNotions.DeltaInvariantLattices.P4W W Pt) :
    ∀ (T : LocLat G Qp LL O), IsCrys PD T.ρ → ∀ (i : ZMod n) (ζ : LL), IsPrimitiveRoot ζ PD.p →
      ∀ (x : W.DD T) (d : ℤ → T.V ⊗[Qp] BdR), Formalism.MainNotions.CrystallineLiftingInputs.DL W T i x →
        Formalism.MainNotions.RamifiedCoefficientChains.Sh.IsExp W T i ζ x d →
        ((∃ k : ℕ, Formalism.MainNotions.LiftingTheory.qp W ^ k • x ∈ Formalism.MainNotions.CrystallineLiftingInputs.pullJ W T (i - 1) 1) →
          (x ∈ Formalism.MainNotions.CrystallineLiftingInputs.pullJ W T (i - 1) 1 ↔ ∀ k : ℤ, k < 0 → d k = 0)) := by
  intro T hT i ζ hζ x d hDL hd ⟨k, hk⟩
  have hs : W.s = 1 := hA.2.1
  have hfin : Module.finrank K₀ K = 1 := by
    rw [← (AlgEquiv.ofBijective (Algebra.ofId K₀ K) hA.1).toLinearEquiv.finrank_eq,
      Module.finrank_self]
  have h9T := ((h9 T hT) hs hA.2.2).2.2 hfin
  have hring : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W := h9T.1
  have hmod := h9T.2
  obtain ⟨hN, hAg⟩ := gam_of_tie W hs C
  obtain ⟨-, hval, hAdd, -, -, -, -⟩ := expRules_of W h4 hN hAg hA T hT i ζ hζ
  constructor
  · intro hx
    obtain ⟨d', hd', hn'⟩ := pullJ_exp W hA h4 C h4W T hT i hζ x hx
    rw [isExp_unique W T i ζ hd hd']
    exact hn'
  · intro hneg
    obtain ⟨⟨e, he⟩, hB2⟩ := hB hA T hT (i - 1)
    have hi1 : i - 1 + ((1 : ℕ) : ZMod n) = i := by push_cast; ring
    have hqΔ : ∀ δ ∈ W.DelF, W.γA δ (Formalism.MainNotions.LiftingTheory.qp W) = Formalism.MainNotions.LiftingTheory.qp W := by
      intro δ hδ
      simp only [Formalism.MainNotions.LiftingTheory.qp, map_add (f := _), map_natCast, hring.1 δ hδ]
    have hDLy : Formalism.MainNotions.CrystallineLiftingInputs.DL W T (i - 1 + ((1 : ℕ) : ZMod n)) (Formalism.MainNotions.LiftingTheory.qp W ^ k • x) := by
      rw [hi1]
      refine ⟨by rw [smul_comm, hDL.1], fun δ hδ => ?_⟩
      rw [RL.γD_smulA, map_pow, hqΔ δ hδ, hDL.2 δ hδ]
    obtain ⟨a, ha, -⟩ := (hB2 _ e he 1).1 _ hk hDLy

    have hE : ∀ m, ∃ Em : ℤ → T.V ⊗[Qp] BdR,
        Formalism.MainNotions.RamifiedCoefficientChains.Sh.IsExp W T i ζ (((W.φD T) ^ 1) (e m)) Em ∧ (∀ j : ℤ, j < 0 → Em j = 0) ∧
          Em 0 = ιV PD (LL := LL) (V := T.V) (φVB PD (LL := LL) (V := T.V)
            (W.cmp T ⟨e m, (he.1 m).1⟩)) := by
      intro m
      rw [pow_one]
      exact phi_exp W hs C h4W T hT i hζ (e m) (he.1 m).1 (he.1 m).2.1
    choose Em hEx hEn hE0 using hE
    have hsumExp : ∀ s : Finset (Fin (Module.finrank LL T.V)),
        Formalism.MainNotions.RamifiedCoefficientChains.Sh.IsExp W T i ζ (∑ m ∈ s, Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (a m) • ((W.φD T) ^ 1) (e m))
          (∑ m ∈ s, smulS (W.lev i ζ (Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (a m))) (Em m)) := by
      intro s
      induction s using Finset.induction_on with
      | empty =>
        rw [Finset.sum_empty, Finset.sum_empty]
        exact isExp_zero W T i ζ
      | insert m s hm ih =>
        rw [Finset.sum_insert hm, Finset.sum_insert hm]
        exact hAdd _ _ _ _ (isExp_smulA W T i ζ (hEx m) _) ih
    have hy := hsumExp Finset.univ
    rw [← ha] at hy
    have heq := isExp_unique W T i ζ (isExp_smulA W T i ζ hd (Formalism.MainNotions.LiftingTheory.qp W ^ k)) hy
    obtain ⟨u, hu, hlq⟩ := (expRing_of W hring hA i ζ hζ).1
    have hdLB : LB 0 d := fun j hj => hneg j hj

    let Fil : ℤ → Submodule LL (T.V ⊗[Qp] BdR) := fun a => if a ≤ 0 then ⊤ else ⊥
    have hFa : Antitone Fil := by
      intro a b hab
      by_cases hb : b ≤ 0
      · rw [show Fil a = ⊤ from if_pos (le_trans hab hb), show Fil b = ⊤ from if_pos hb]
      · rw [show Fil b = ⊥ from if_neg hb]; exact bot_le
    haveI := fd_ιDi W hA hD T hT i
    have hDLφ : ∀ m, Formalism.MainNotions.CrystallineLiftingInputs.DL W T i (((W.φD T) ^ 1) (e m)) := by
      intro m
      rw [pow_one]
      refine ⟨Formalism.MainNotions.N.Pv.LocalLengthBound.letter_phi W T i (he.1 m).2.1, fun δ hδ => ?_⟩
      rw [← W.φγ_comm, (he.1 m).2.2 δ hδ]
    have hEmem : ∀ m j, Em m j ∈ Formalism.MainNotions.DeltaInvariantLattices.ιDi W T i ⊓ Fil (-j) := by
      intro m j
      refine Submodule.mem_inf.2 ⟨hval _ _ (hDLφ m) (hEx m) j, ?_⟩
      by_cases hj : j < 0
      · rw [hEn m j hj]; exact Submodule.zero_mem _
      · rw [show Fil (-j) = ⊤ from if_pos (by omega)]; exact Submodule.mem_top
    have h₁ : Formalism.MainNotions.DeltaInvariantLattices.ιDi W T i ⊓ Fil 1 = ⊥ := by
      rw [show Fil 1 = ⊥ from if_neg (by norm_num), inf_bot_eq]
    have hind : ∀ c : Fin (Module.finrank LL T.V) → LL,
        (∀ j, ∑ m, c m • Em m j ∈ Fil (-j + 1)) → c = 0 := by
      intro c hc
      have h0 := hc 0
      rw [show Fil (-(0 : ℤ) + 1) = ⊥ from if_neg (by norm_num), Submodule.mem_bot] at h0
      apply indep_phi_cmp W inferInstance hFr hring T (h3 T hT) hmod (i - 1) e he c
      rw [← h0]
      exact Finset.sum_congr rfl fun m _ => by rw [hE0 m]
    have hdg : ∀ j : ℤ, ∑ m, smulS (W.lev i ζ (Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (a m))) (Em m) j ∈
        Fil ((k : ℤ) - j) := by
      intro j
      have e1 := congrFun heq j
      rw [Finset.sum_apply] at e1
      rw [← e1]
      by_cases hj : j < k
      · have h0 : smulS (W.lev i ζ (Formalism.MainNotions.LiftingTheory.qp W ^ k)) d j = 0 := by
          rw [map_pow, hlq, mul_pow, mul_comm, smulS_mul hdLB, smulS_X_pow (LB_smulS hdLB _)]
          exact LB_smulS hdLB _ _ (by omega)
        rw [h0]; exact Submodule.zero_mem _
      · rw [show Fil ((k : ℤ) - j) = ⊤ from if_pos (by omega)]; exact Submodule.mem_top
    have hdvd := MC.dvd_of_dg hFa (Formalism.MainNotions.DeltaInvariantLattices.ιDi W T i) 1 h₁ hEmem hind k _ hdg

    let ψ : PowerSeries O →+* PowerSeries LL := (W.lev i ζ).toRingHom.comp (at0Hom W hring)
    have hψa : ∀ f, ψ f = W.lev i ζ (Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W f) := fun f => by
      show W.lev i ζ (at0Hom W hring f) = _
      rw [at0Hom_apply]
    have hψC : ∀ o : O, ψ (PowerSeries.C o) = PowerSeries.C (algebraMap O LL o) := by
      intro o
      rw [hψa, evalZero_C, AlgHom.commutes, PowerSeries.algebraMap_apply]
    have hqpe : W.π₀ + algebraMap O (LetA O n) ((PD.p : ℕ) : O) = Formalism.MainNotions.LiftingTheory.qp W := by
      rw [map_natCast]; rfl
    have hψ : ψ (PowerSeries.X + PowerSeries.C ((PD.p : ℕ) : O)) = PowerSeries.X * u := by
      rw [hψa, ← at0Hom_apply W hring, map_add (f := _), at0Hom_apply, at0Hom_apply, evalZero_X_eq_pi0 W hring, evalZero_C,
        hqpe, hlq, mul_comm]
    have hdiv : ∀ m, (PowerSeries.X + PowerSeries.C ((PD.p : ℕ) : O)) ^ k ∣ a m := fun m =>
      Wd.dvd_of_dvd_image hinj ((PD.p : ℕ) : O) ψ hψC u hu hψ hlm k (a m)
        (by rw [hψa]; exact hdvd m)
    choose g hg using hdiv
    have hat0 : ∀ m, Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (a m) =
        Formalism.MainNotions.LiftingTheory.qp W ^ k * Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (g m) := by
      intro m
      rw [hg m, evalZero_mul W hring, ← at0Hom_apply W hring
        ((PowerSeries.X + PowerSeries.C ((PD.p : ℕ) : O)) ^ k), map_pow, map_add, at0Hom_apply,
        at0Hom_apply, evalZero_X_eq_pi0 W hring, evalZero_C, hqpe]
    have hx' : Formalism.MainNotions.LiftingTheory.qp W ^ k • x = Formalism.MainNotions.LiftingTheory.qp W ^ k •
        ∑ m, Formalism.MainNotions.RamifiedCoefficientChains.Sh.at0 W (g m) • ((W.φD T) ^ 1) (e m) := by
      rw [ha, Finset.smul_sum]
      exact Finset.sum_congr rfl fun m _ => by rw [hat0 m, mul_smul]
    rw [qp_pow_cancel W hring T k hx']
    exact Submodule.sum_mem _ fun m _ => Submodule.smul_mem _ _
      (Submodule.subset_span ⟨e m, ⟨(he.1 m).1, (he.1 m).2⟩, rfl⟩)

theorem expCrit_of [NeZero n] [IsDomain O] [IsLocalRing O]
    [IsAdicComplete (IsLocalRing.maximalIdeal O) O] (hinj : Function.Injective (algebraMap O LL))
    (hlm : ((PD.p : ℕ) : O) ∈ IsLocalRing.maximalIdeal O) (hFr : IsFractionRing O LL)
    (h1 : Formalism.MainNotions.DeltaInvariantLattices.WachLatticeFree W) (h3 : Formalism.MainNotions.DeltaInvariantLattices.P3W W) (h4 : Formalism.MainNotions.WachCoordinates.LevelMapHodgeFiltration W)
    (h5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W) (hD : Formalism.MainNotions.RamifiedCoefficientChains.DdREqDcris PD LL)
    (hB : Formalism.MainNotions.RamifiedCoefficientChains.Sh.BasTool W) (C : CmpTie W E ιdR p1 tS zS)
    {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop} (h4W : Formalism.MainNotions.DeltaInvariantLattices.P4W W Pt) (hΔ : PtTrans W) :
    Formalism.MainNotions.RamifiedCoefficientChains.Sh.ExpCrit W := by
  intro hA T hT i ζ hζ x d hDL hd
  have hs : W.s = 1 := hA.2.1
  have hfin : Module.finrank K₀ K = 1 := by
    rw [← (AlgEquiv.ofBijective (Algebra.ofId K₀ K) hA.1).toLinearEquiv.finrank_eq,
      Module.finrank_self]
  have hring : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W := (((h9 T hT) hs hA.2.2).2.2 hfin).1
  exact ⟨expCritN_of W hA inferInstance hFr h1 h3 h4 h5 hD hring (gamΔ_of_tie W C) hΔ T hT i ζ hζ
      x d hDL hd,
    expCritP_of W hA hinj hlm hFr h3 h4 h9 hD hB C h4W T hT i ζ hζ x d hDL hd⟩

end CritB3

end Formalism.MainNotions.N.Pv.LocalLengthBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExpCritPOf =====
