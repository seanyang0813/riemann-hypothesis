module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.Development
public import Mathlib.RingTheory.DedekindDomain.Factorization
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.Imports
public import Mathlib.RingTheory.Valuation.Integral
public import Formalism.PeriodIntegrals.LocLatEq
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocalDiscriminantIsUnit
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LocalAdditiveCharContinuous
public import Formalism.PeriodIntegrals.LocLatSat
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.DensInertDisplayHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeSaturation.LocLatSat
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TrDualLoc
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.DApprox
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.LGSmall
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.RingInverseAlgebraMap
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.TrDual
import Formalism.SharpRestriction.CuspSpanNormBounds.FractionFieldToGenericStalkAlgebraMapEq
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LatExistsOfSteps
import Formalism.HermitianLattices.HermitianLatticesProofs.DualLattice
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.T2SpaceOfNonarchimedeanLocalField
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.AvoidP, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.CoreGenIdeal, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.CoreFgOfLe, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.EpNontrivial, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocLatEq, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.AvoidP =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.AvoidP", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.FractionFieldToGenericStalkAlgebraMapEq\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ValuativeRel IsDedekindDomain NumberField Formalism.MainNotions.S.Loc

namespace PI.LocLatEq.W

theorem unitP : UnitP := by
  intro F E _ _ _ _ _ sig p A d hd
  have hv1 : p.valuation F (algebraMap (𝓞 F) F d) = 1 :=
    (HeightOneSpectrum.valuation_eq_one_iff_notMem (K := F) p).2 hd
  have h1 : A.ιF (algebraMap (𝓞 F) F d) ≤ᵥ A.ιF 1 := (A.val _ _).2 (by rw [hv1, map_one])
  have h2 : A.ιF 1 ≤ᵥ A.ιF (algebraMap (𝓞 F) F d) := (A.val _ _).2 (by rw [hv1, map_one])
  rw [map_one] at h1 h2
  have hcv : valuation A.Fp (A.ιF (algebraMap (𝓞 F) F d)) = 1 :=
    le_antisymm ((Valuation.vle_one_iff _).1 h1) ((Valuation.one_vle_iff _).1 h2)
  have hc0 : A.ιF (algebraMap (𝓞 F) F d) ≠ 0 := by
    intro h
    rw [h, map_zero] at hcv
    exact zero_ne_one hcv
  have hinv : (A.ιF (algebraMap (𝓞 F) F d))⁻¹ ∈ 𝒪[A.Fp] := by
    rw [Valuation.mem_integer_iff, map_inv₀, hcv, inv_one]
  refine ⟨algebraMap A.Fp A.Ep (A.ιF (algebraMap (𝓞 F) F d))⁻¹, ?_, ?_⟩
  · rw [A.O_def]
    have hu : algebraMap A.Fp A.Ep (A.ιF (algebraMap (𝓞 F) F d))⁻¹ =
        algebraMap 𝒪[A.Fp] A.Ep ⟨_, hinv⟩ := rfl
    rw [hu]
    exact isIntegral_algebraMap
  · have hd' : A.ιE ((algebraMap (𝓞 F) (𝓞 E) d : 𝓞 E) : E) =
        algebraMap A.Fp A.Ep (A.ιF (algebraMap (𝓞 F) F d)) := by
      rw [← A.compat]
      rfl
    rw [hd', ← map_mul, inv_mul_cancel₀ hc0, map_one]

theorem avoidP : AvoidP := by
  intro F E _ _ _ _ _ p I hI
  by_contra hne
  simp only [not_exists, not_and] at hne
  have hle : I.comap (algebraMap (𝓞 F) (𝓞 E)) ≤ p.asIdeal := by
    intro d hd
    by_contra hdp
    exact hne d hdp hd
  obtain ⟨Q, hIQ, hQ, hQp⟩ := Ideal.exists_ideal_over_prime_of_isIntegral p.asIdeal I hle
  have hinj : Function.Injective (algebraMap (𝓞 F) (𝓞 E)) := by
    intro a b hab
    have hE : algebraMap F E (a : F) = algebraMap F E (b : F) := congrArg (fun x : 𝓞 E => (x : E)) hab
    exact Subtype.ext ((algebraMap F E).injective hE)
  have hQ0 : Q ≠ ⊥ := by
    rintro rfl
    apply p.ne_bot
    rw [← hQp, (show Ideal.under _ ⊥ = ⊥ from Ideal.comap_bot_of_injective _ hinj)]
  exact hI ⟨Q, hQ, hQ0⟩ hQp hIQ

end PI.LocLatEq.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.AvoidP =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.CoreGenIdeal =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.CoreGenIdeal", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.FractionFieldToGenericStalkAlgebraMapEq\npublic import Mathlib.RingTheory.DedekindDomain.Factorization\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ValuativeRel IsDedekindDomain NumberField Formalism.MainNotions.S.Loc

namespace PI.LocLatEq.W

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem core_gen_ideal (hA : AvoidP) (p : HeightOneSpectrum (𝓞 F)) (𝔞 : Ideal (𝓞 E)) :
    ∃ a ∈ 𝔞, ∀ b ∈ 𝔞, ∃ d : 𝓞 F, d ∉ p.asIdeal ∧ ∃ r : 𝓞 E,
      algebraMap (𝓞 F) (𝓞 E) d * b = r * a := by
  classical
  by_cases h𝔞 : 𝔞 = ⊥
  · refine ⟨0, 𝔞.zero_mem, fun b hb => ⟨1, ?_, 0, ?_⟩⟩
    · exact fun h => p.isPrime.ne_top ((Ideal.eq_top_iff_one _).mpr h)
    · rw [h𝔞, Ideal.mem_bot] at hb
      simp [hb]
  have h𝔞0 : 𝔞 ≠ 0 := h𝔞
  have hinj : Function.Injective (algebraMap (𝓞 F) (𝓞 E)) :=
    FaithfulSMul.algebraMap_injective _ _
  have hpE0 : Ideal.map (algebraMap (𝓞 F) (𝓞 E)) p.asIdeal ≠ 0 := by
    rw [Ne, Ideal.zero_eq_bot, Ideal.map_eq_bot_iff_of_injective hinj]
    exact p.ne_bot
  have hle : 𝔞 * Ideal.map (algebraMap (𝓞 F) (𝓞 E)) p.asIdeal ≤ 𝔞 :=
    Ideal.mul_le_inf.trans inf_le_left
  obtain ⟨a, ha⟩ := IsDedekindDomain.exists_sup_span_eq hle (mul_ne_zero h𝔞0 hpE0)
  have haa : a ∈ 𝔞 := ha ▸ Ideal.mem_sup_right (Ideal.mem_span_singleton_self a)
  obtain ⟨𝔠, h𝔠⟩ : 𝔞 ∣ Ideal.span {a} :=
    Ideal.dvd_iff_le.mpr ((Ideal.span_singleton_le_iff_mem _).mpr haa)
  have hav : ∀ P : HeightOneSpectrum (𝓞 E),
      P.asIdeal.comap (algebraMap (𝓞 F) (𝓞 E)) = p.asIdeal → ¬ 𝔠 ≤ P.asIdeal := by
    intro P hP hcP
    have h1 : Ideal.map (algebraMap (𝓞 F) (𝓞 E)) p.asIdeal ≤ P.asIdeal :=
      Ideal.map_le_iff_le_comap.mpr hP.ge
    have h2 : 𝔞 ≤ 𝔞 * P.asIdeal := by
      conv_lhs => rw [← ha]
      refine sup_le (Ideal.mul_mono_right h1) ?_
      rw [h𝔠]
      exact Ideal.mul_mono_right hcP
    have h3 : 𝔞 * P.asIdeal ∣ 𝔞 * 1 := by
      rw [mul_one]
      exact Ideal.dvd_iff_le.mpr h2
    have h4 := (mul_dvd_mul_iff_left h𝔞0).mp h3
    exact P.isPrime.ne_top (Ideal.isUnit_iff.mp (isUnit_of_dvd_one h4))
  obtain ⟨d, hdp, hd⟩ := hA F E p 𝔠 hav
  refine ⟨a, haa, fun b hb => ⟨d, hdp, ?_⟩⟩
  have hmem : algebraMap (𝓞 F) (𝓞 E) d * b ∈ Ideal.span {a} := by
    rw [h𝔠, mul_comm (algebraMap (𝓞 F) (𝓞 E) d) b]
    exact Ideal.mul_mem_mul hb hd
  obtain ⟨r, hr⟩ := Ideal.mem_span_singleton'.mp hmem
  exact ⟨r, hr.symm⟩

theorem core_gen (hA : AvoidP) (p : HeightOneSpectrum (𝓞 F)) (I : Submodule (𝓞 E) E)
    (hI : I.FG) : ∃ a ∈ I, ∀ b ∈ I, ∃ d : 𝓞 F, d ∉ p.asIdeal ∧ ∃ r : 𝓞 E,
      algebraMap (𝓞 F) (𝓞 E) d • b = r • a := by
  classical
  obtain ⟨S, rfl⟩ := hI
  obtain ⟨c, hc⟩ := IsLocalization.exist_integer_multiples_of_finset (nonZeroDivisors (𝓞 E)) S
  have hc0 : algebraMap (𝓞 E) E (c : 𝓞 E) ≠ 0 :=
    (map_ne_zero_iff _ (IsFractionRing.injective (𝓞 E) E)).mpr (nonZeroDivisors.coe_ne_zero c)
  have hint : ∀ x ∈ Submodule.span (𝓞 E) (S : Set E),
      ∃ y : 𝓞 E, algebraMap (𝓞 E) E y = (c : 𝓞 E) • x := by
    intro x hx
    induction hx using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨y, hy⟩ := hc x hx
      exact ⟨y, hy⟩
    | zero => exact ⟨0, by simp⟩
    | add x z _ _ hx hz =>
      obtain ⟨y1, h1⟩ := hx
      obtain ⟨y2, h2⟩ := hz
      exact ⟨y1 + y2, by rw [map_add (f := _), h1, h2, smul_add]⟩
    | smul r x _ hx =>
      obtain ⟨y, h⟩ := hx
      refine ⟨r * y, ?_⟩
      rw [map_mul, h]
      simp only [Algebra.smul_def]
      ring
  obtain ⟨a0, ha0, hgen⟩ := core_gen_ideal (F := F) hA p
    ((Submodule.span (𝓞 E) (S : Set E)).comap
      (LinearMap.toSpanSingleton (𝓞 E) E (algebraMap (𝓞 E) E (c : 𝓞 E))⁻¹))
  rw [Submodule.mem_comap, LinearMap.toSpanSingleton_apply] at ha0
  refine ⟨a0 • (algebraMap (𝓞 E) E (c : 𝓞 E))⁻¹, ha0, fun b hb => ?_⟩
  obtain ⟨y, hy⟩ := hint b hb
  have hyb : y • (algebraMap (𝓞 E) E (c : 𝓞 E))⁻¹ = b := by
    rw [Algebra.smul_def, hy, Algebra.smul_def, mul_comm, ← mul_assoc, inv_mul_cancel₀ hc0,
      one_mul]
  have hy𝔞 : y ∈ (Submodule.span (𝓞 E) (S : Set E)).comap
      (LinearMap.toSpanSingleton (𝓞 E) E (algebraMap (𝓞 E) E (c : 𝓞 E))⁻¹) := by
    rw [Submodule.mem_comap, LinearMap.toSpanSingleton_apply, hyb]
    exact hb
  obtain ⟨d, hd, r, hr⟩ := hgen y hy𝔞
  refine ⟨d, hd, r, ?_⟩
  rw [← hyb, smul_smul, smul_smul, hr]

end PI.LocLatEq.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.CoreGenIdeal =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.CoreFgOfLe =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.CoreFgOfLe", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.Imports\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.CoreGenIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.FractionFieldToGenericStalkAlgebraMapEq\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ValuativeRel IsDedekindDomain NumberField Formalism.MainNotions.S.Loc

namespace PI.LocLatEq.W

theorem core_fg_of_le {R M : Type*} [CommRing R] [IsNoetherianRing R] [AddCommGroup M]
    [Module R M] {N P : Submodule R M} (hN : N.FG) (h : P ≤ N) : P.FG := by
  have : IsNoetherian R N := isNoetherian_of_fg_of_noetherian N hN
  have h2 := (IsNoetherian.noetherian (P.comap N.subtype)).map N.subtype
  rwa [Submodule.map_comap_subtype, inf_eq_right.2 h] at h2

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    {sig : E →ₐ[F] E} {p : HeightOneSpectrum (𝓞 F)}

theorem core_int_mem (A : LocAt F E sig p) (r : 𝓞 E) : A.ιE (r : E) ∈ A.O := by
  rw [A.O_def]
  exact ((RingOfIntegers.isIntegral_coe r).map A.ιE.toIntAlgHom).tower_top

theorem core_nontriv (A : LocAt F E sig p) : Nontrivial A.Ep := by
  by_contra h
  have : Subsingleton A.Ep := not_nontrivial_iff_subsingleton.1 h
  have h2 := A.rank
  rw [Module.finrank_zero_of_subsingleton] at h2
  omega

theorem core_bc_sub (A : LocAt F E sig p) {n : ℕ} (x y : Fin n → E) :
    bc A (x - y) = bc A x - bc A y := by
  funext i
  exact map_sub A.ιE (x i) (y i)

theorem core_smem (A : LocAt F E sig p) {n : ℕ} (S : Submodule A.O (Fin n → A.Ep)) {o : A.Ep}
    (ho : o ∈ A.O) {x : Fin n → A.Ep} (hx : x ∈ S) : o • x ∈ S :=
  S.smul_mem (⟨o, ho⟩ : A.O) hx

private theorem ringOfIntegers_smul_eq_coe_mul (r : 𝓞 E) (x : E) : r • x = (r : E) * x :=
  Algebra.smul_def r x

private theorem locLatEq_bc_apply (A : Formalism.MainNotions.S.Loc.LocAt F E sig p) {n : ℕ} (x : Fin n → E)
    (i : Fin n) : PI.LocLatEq.bc A x i = A.ιE (x i) := rfl

private theorem locLatEq_bc_mem_latL_of_mem (A : Formalism.MainNotions.S.Loc.LocAt F E sig p) {n : ℕ}
    (Λ : Submodule (𝓞 E) (Fin n → E)) {x : Fin n → E} (hx : x ∈ Λ) :
    PI.LocLatEq.bc A x ∈ PI.LocLatEq.latL A Λ := by
  unfold PI.LocLatEq.latL
  exact Submodule.subset_span ⟨x, hx, rfl⟩

private theorem mul_not_mem_asIdeal_of_not_mem {d d' : 𝓞 F} (hd : d ∉ p.asIdeal) (hd' : d' ∉ p.asIdeal) :
    d * d' ∉ p.asIdeal := fun h => (p.isPrime.mem_or_mem h).elim hd hd'

private theorem exists_linearMap_eq_cons_zero (R M : Type*) [Semiring R] [AddCommMonoid M] [Module R M]
    (n : ℕ) : ∃ L : (Fin n → M) →ₗ[R] (Fin (n + 1) → M),
      ∀ v, L v = (Fin.cons (0 : M) v : Fin (n + 1) → M) :=
  ⟨{ toFun := fun v => (Fin.cons (0 : M) v : Fin (n + 1) → M)
     map_add' := fun v w => by
       funext i
       cases i using Fin.cases <;> simp
     map_smul' := fun c v => by
       funext i
       cases i using Fin.cases <;> simp }, fun _ => rfl⟩



theorem core_ind (hU : UnitP) (hA : AvoidP) (hI : IntP) (h2 : Module.finrank F E = 2)
    (A : LocAt F E sig p) : ∀ (n : ℕ) (Λ : Submodule (𝓞 E) (Fin n → E)), Λ.FG →
    ∀ y : Fin n → E, bc A y ∈ latL A Λ →
    ∃ d : 𝓞 F, d ∉ p.asIdeal ∧ algebraMap (𝓞 F) (𝓞 E) d • y ∈ Λ := by
  have := core_nontriv A
  intro n
  induction n with
  | zero =>
    intro Λ _ y _
    refine ⟨1, fun h => p.isPrime.ne_top ((Ideal.eq_top_iff_one _).2 h), ?_⟩
    have hy0 : y = 0 := funext fun i => i.elim0
    rw [hy0, smul_zero]
    exact Λ.zero_mem
  | succ n ih =>
    intro Λ hΛ y hy
    obtain ⟨L, hL⟩ := exists_linearMap_eq_cons_zero (𝓞 E) E n
    have hinj : Function.Injective L := fun v w h => funext fun j => by
      simpa [hL] using congrFun h j.succ
    have hmapFG : (Submodule.map L (Λ.comap L)).FG :=
      core_fg_of_le hΛ (Submodule.map_comap_le L Λ)
    have hFG : (Λ.comap L).FG := Submodule.fg_of_fg_map_injective L hinj hmapFG
    obtain ⟨a, haI, hgen⟩ := core_gen hA p
      (Λ.map (LinearMap.proj (R := 𝓞 E) (φ := fun _ : Fin (n + 1) => E) 0)) (hΛ.map _)
    have hx0 : ∀ x ∈ Λ,
        x 0 ∈ Λ.map (LinearMap.proj (R := 𝓞 E) (φ := fun _ : Fin (n + 1) => E) 0) :=
      fun x hx => Submodule.mem_map.2 ⟨x, hx, rfl⟩
    obtain ⟨l1, hl1, hl1a⟩ := Submodule.mem_map.1 haI
    obtain ⟨l0, hl0, hl0a, hl0z⟩ : ∃ l0 ∈ Λ, l0 0 = a ∧ (a = 0 → l0 = 0) := by
      by_cases ha0 : a = 0
      · exact ⟨0, Λ.zero_mem, by simp [ha0], fun _ => rfl⟩
      · exact ⟨l1, hl1, hl1a, fun h => absurd h ha0⟩
    have hdec : ∀ v ∈ PI.LocLatEq.latL A Λ, ∃ c ∈ A.O, ∃ w ∈ PI.LocLatEq.latL A (Λ.comap L),
        v = c • PI.LocLatEq.bc A l0 + (Fin.cons (0 : A.Ep) w : Fin (n + 1) → A.Ep) := by
      intro v hv
      unfold PI.LocLatEq.latL at hv
      induction hv using Submodule.span_induction with
      | mem x hx =>
        obtain ⟨l, hl, rfl⟩ := hx
        obtain ⟨d, hd, r, hr⟩ := hgen (l 0) (hx0 l hl)
        obtain ⟨u, hu, hud⟩ := hU F E sig p A d hd
        obtain ⟨m, hm⟩ : ∃ m : Fin (n + 1) → E, m = algebraMap (𝓞 F) (𝓞 E) d • l - r • l0 :=
          ⟨_, rfl⟩
        have hm0 : m 0 = 0 := by
          rw [hm, Pi.sub_apply, Pi.smul_apply, Pi.smul_apply, hl0a, hr, sub_self]
        have hmc : (Fin.cons (0 : E) (Fin.tail m) : Fin (n + 1) → E) = m := by
          rw [← hm0, Fin.cons_self_tail]
        have hmt : Fin.tail m ∈ Λ.comap L := by
          rw [Submodule.mem_comap, hL, hmc, hm]
          exact Λ.sub_mem (Λ.smul_mem _ hl) (Λ.smul_mem _ hl0)
        have hr' : ((algebraMap (𝓞 F) (𝓞 E) d : 𝓞 E) : E) * l 0 = (r : E) * a := by
          simpa only [ringOfIntegers_smul_eq_coe_mul] using hr
        refine ⟨u * A.ιE (r : E), A.O.mul_mem hu (core_int_mem A r),
          u • PI.LocLatEq.bc A (Fin.tail m),
          core_smem A (PI.LocLatEq.latL A (Λ.comap L)) hu
            (locLatEq_bc_mem_latL_of_mem A _ hmt), ?_⟩
        funext i
        cases i using Fin.cases with
        | zero =>
          simp only [locLatEq_bc_apply, Pi.add_apply, Pi.smul_apply, smul_eq_mul, Fin.cons_zero,
            add_zero, hl0a]
          have h1 := congrArg A.ιE hr'
          rw [map_mul, map_mul] at h1
          linear_combination (-(A.ιE (l 0))) * hud + u * h1
        | succ j =>
          simp only [locLatEq_bc_apply, Pi.add_apply, Pi.smul_apply, smul_eq_mul, Fin.cons_succ,
            Fin.tail, hm, Pi.sub_apply, ringOfIntegers_smul_eq_coe_mul, map_sub, map_mul]
          linear_combination (-(A.ιE (l j.succ))) * hud
      | zero =>
        refine ⟨0, A.O.zero_mem, 0, Submodule.zero_mem _, ?_⟩
        funext i
        cases i using Fin.cases <;> simp
      | add x y _ _ hx hy =>
        obtain ⟨c1, hc1, w1, hw1, rfl⟩ := hx
        obtain ⟨c2, hc2, w2, hw2, rfl⟩ := hy
        refine ⟨c1 + c2, A.O.add_mem hc1 hc2, w1 + w2, Submodule.add_mem _ hw1 hw2, ?_⟩
        funext i
        cases i using Fin.cases <;>
          simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, Fin.cons_zero, Fin.cons_succ,
            add_zero] <;> ring
      | smul o x _ hx =>
        obtain ⟨c, hc, w, hw, rfl⟩ := hx
        refine ⟨(o : A.Ep) * c, A.O.mul_mem o.2 hc, o • w, Submodule.smul_mem _ o hw, ?_⟩
        funext i
        cases i using Fin.cases <;>
          simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, Subring.smul_def, Fin.cons_zero,
            Fin.cons_succ, add_zero] <;> ring
    have htail : ∀ v ∈ PI.LocLatEq.latL A Λ, v 0 = 0 →
        Fin.tail v ∈ PI.LocLatEq.latL A (Λ.comap L) := by
      intro v hv hv0
      obtain ⟨c, hc, w, hw, rfl⟩ := hdec v hv
      have hca : c * A.ιE a = 0 := by
        have h0 := hv0
        simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul, Fin.cons_zero, add_zero,
          locLatEq_bc_apply, hl0a] at h0
        exact h0
      have hzero : c • PI.LocLatEq.bc A l0 = 0 := by
        by_cases ha0 : a = 0
        · rw [hl0z ha0]
          funext i
          simp [locLatEq_bc_apply]
        · have hc0 : c = c * A.ιE a * A.ιE a⁻¹ := by
            rw [mul_assoc, ← map_mul, mul_inv_cancel₀ ha0, map_one, mul_one]
          rw [hca, zero_mul] at hc0
          rw [hc0, zero_smul]
      rw [hzero, zero_add, Fin.tail_cons]
      exact hw
    obtain ⟨c, hc, w, hw, hyd⟩ := hdec _ hy
    have hy0 : A.ιE (y 0) = c * A.ιE a := by
      have h0 := congrFun hyd 0
      simp only [locLatEq_bc_apply, Pi.add_apply, Pi.smul_apply, smul_eq_mul, Fin.cons_zero,
        add_zero, hl0a] at h0
      exact h0
    obtain ⟨t, ht, hta⟩ : ∃ t : E, A.ιE t ∈ A.O ∧ y 0 = t * a := by
      by_cases ha0 : a = 0
      · refine ⟨0, by rw [map_zero]; exact A.O.zero_mem, ?_⟩
        rw [ha0, map_zero, mul_zero] at hy0
        rw [zero_mul]
        exact A.ιE.injective (by rw [hy0, map_zero])
      · refine ⟨y 0 * a⁻¹, ?_, by rw [mul_assoc, inv_mul_cancel₀ ha0, mul_one]⟩
        rw [map_mul, hy0, mul_assoc, ← map_mul, mul_inv_cancel₀ ha0, map_one, mul_one]
        exact hc
    obtain ⟨d1, hd1, b, hb⟩ := hI F E h2 sig p A t ht
    obtain ⟨z, hz⟩ : ∃ z : Fin (n + 1) → E, z = algebraMap (𝓞 F) (𝓞 E) d1 • y - b • l0 :=
      ⟨_, rfl⟩
    have hz0 : z 0 = 0 := by
      rw [hz, Pi.sub_apply, Pi.smul_apply, Pi.smul_apply, ringOfIntegers_smul_eq_coe_mul, ringOfIntegers_smul_eq_coe_mul,
        hl0a, hta]
      linear_combination a * hb
    have hzL : PI.LocLatEq.bc A z ∈ PI.LocLatEq.latL A Λ := by
      rw [hz, core_bc_sub, bc_smul, bc_smul]
      exact Submodule.sub_mem _
        (core_smem A (PI.LocLatEq.latL A Λ) (core_int_mem A _) hy)
        (core_smem A (PI.LocLatEq.latL A Λ) (core_int_mem A b)
          (locLatEq_bc_mem_latL_of_mem A Λ hl0))
    have ht' : PI.LocLatEq.bc A (Fin.tail z) ∈ PI.LocLatEq.latL A (Λ.comap L) :=
      htail _ hzL (by rw [locLatEq_bc_apply, hz0, map_zero])
    obtain ⟨d2, hd2, hd2z⟩ := ih (Λ.comap L) hFG (Fin.tail z) ht'
    have hzc : (Fin.cons (0 : E) (Fin.tail z) : Fin (n + 1) → E) = z := by
      rw [← hz0, Fin.cons_self_tail]
    have hz2 : algebraMap (𝓞 F) (𝓞 E) d2 • z ∈ Λ := by
      have h := Submodule.mem_comap.1 hd2z
      rwa [map_smul, hL, hzc] at h
    have hy' : algebraMap (𝓞 F) (𝓞 E) d1 • y = z + b • l0 := by
      rw [hz, sub_add_cancel]
    refine ⟨d2 * d1, mul_not_mem_asIdeal_of_not_mem hd2 hd1, ?_⟩
    rw [map_mul, mul_smul, hy', smul_add, smul_smul]
    exact Λ.add_mem hz2 (Λ.smul_mem _ hl0)

theorem coreP_of_unitP_avoidP_intP (hU : UnitP) (hA : AvoidP) (hI : IntP) : CoreP := by
  intro F E _ _ _ _ _ h2 sig p A n Λ hΛ y hy
  exact core_ind hU hA hI h2 A n Λ hΛ y hy

end PI.LocLatEq.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.CoreFgOfLe =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.EpNontrivial =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.EpNontrivial", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\npublic import Mathlib.RingTheory.Valuation.Integral\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.FractionFieldToGenericStalkAlgebraMapEq\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ValuativeRel IsDedekindDomain NumberField Formalism.MainNotions.S.Loc Polynomial

namespace PI.LocLatEq.W

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    {sig : E →ₐ[F] E} {p : HeightOneSpectrum (𝓞 F)}

theorem int_of_val (A : LocAt F E sig p) (x : F) (hx : A.ιF x ∈ 𝒪[A.Fp]) :
    ∃ d : 𝓞 F, d ∉ p.asIdeal ∧ ∃ n : 𝓞 F, (d : F) * x = n := by
  rw [Valuation.mem_integer_iff] at hx
  have h1 : A.ιF x ≤ᵥ A.ιF 1 := by
    rw [map_one, Valuation.Compatible.vle_iff_le (v := ValuativeRel.valuation A.Fp), map_one]
    exact hx
  have hv : p.valuation F x ≤ 1 := by
    have := (A.val x 1).mp h1
    rwa [map_one] at this
  obtain ⟨n, d, hnd⟩ := HeightOneSpectrum.exists_primeCompl_mul_eq_of_integer p x hv
  refine ⟨d, d.2, n, ?_⟩
  rw [mul_comm]
  exact hnd

theorem ep_nontrivial (A : LocAt F E sig p) : Nontrivial A.Ep := by
  have := A.free
  exact Module.nontrivial_of_finrank_pos (R := A.Fp) (by rw [A.rank]; norm_num)

theorem coeff_mem (h2 : Module.finrank F E = 2) (A : LocAt F E sig p) (a : E)
    (ha : IsIntegral 𝒪[A.Fp] (A.ιE a)) (hnot : a ∉ (algebraMap F E).range) (i : ℕ) :
    A.ιF ((minpoly F a).coeff i) ∈ 𝒪[A.Fp] := by
  classical
  haveI := ep_nontrivial A
  haveI := A.free
  have hli : LinearIndependent F ![(1 : E), a] := by
    rw [LinearIndependent.pair_iff' one_ne_zero]
    intro c hc
    apply hnot
    exact ⟨c, by rw [Algebra.algebraMap_eq_smul_one]; exact hc⟩
  let B := basisOfLinearIndependentOfCardEqFinrank hli (by simp [h2])
  have hB : ⇑B = ![(1 : E), a] := coe_basisOfLinearIndependentOfCardEqFinrank hli _
  have hspanP : ⊤ ≤ Submodule.span A.Fp (Set.range ![(1 : A.Ep), A.ιE a]) := by
    rw [← A.span]
    apply Submodule.span_le.mpr
    rintro _ ⟨x, rfl⟩
    have hx := B.sum_repr x
    rw [hB, Fin.sum_univ_two] at hx
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one] at hx
    have : A.ιE x = A.ιF (B.repr x 0) • (1 : A.Ep) + A.ιF (B.repr x 1) • A.ιE a := by
      conv_lhs => rw [← hx]
      simp only [map_add (f := _), map_mul, Algebra.smul_def, A.compat, mul_one]
    rw [SetLike.mem_coe, this]
    apply Submodule.add_mem
    · exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨0, rfl⟩)
    · exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨1, rfl⟩)
  have hliP : LinearIndependent A.Fp ![(1 : A.Ep), A.ιE a] :=
    linearIndependent_of_top_le_span_of_card_eq_finrank hspanP (by simp [A.rank])
  have hnotP : A.ιE a ∉ (algebraMap A.Fp A.Ep).range := by
    rintro ⟨c, hc⟩
    rw [LinearIndependent.pair_iff' one_ne_zero] at hliP
    apply hliP c
    rw [← hc, Algebra.algebraMap_eq_smul_one]
  haveI : Module.Finite A.Fp A.Ep := Module.finite_of_finrank_pos (by rw [A.rank]; norm_num)
  have hintP : IsIntegral A.Fp (A.ιE a) := Algebra.IsIntegral.isIntegral _
  have hdegP : 2 ≤ (minpoly A.Fp (A.ιE a)).natDegree := by
    have h0 := minpoly.natDegree_pos hintP
    have h1 : (minpoly A.Fp (A.ιE a)).natDegree ≠ 1 := fun h => hnotP (minpoly.natDegree_eq_one_iff.mp h)
    omega
  have hintF : IsIntegral F a := Algebra.IsIntegral.isIntegral _
  have hdegF : (minpoly F a).natDegree ≤ 2 := h2 ▸ minpoly.natDegree_le a
  set g : A.Fp[X] := (minpoly F a).map A.ιF with hg
  have hgmon : g.Monic := (minpoly.monic hintF).map _
  have hgdeg : g.natDegree ≤ 2 := by
    rw [hg, natDegree_map]
    exact hdegF
  have hgα : aeval (A.ιE a) g = 0 := by
    rw [hg, aeval_def, eval₂_map]
    have hcomp : (algebraMap A.Fp A.Ep).comp A.ιF = A.ιE.comp (algebraMap F E) := by
      ext y
      simp [A.compat]
    rw [hcomp, ← hom_eval₂, ← aeval_def, minpoly.aeval, map_zero]
  have hdvd : minpoly A.Fp (A.ιE a) ∣ g := minpoly.dvd A.Fp _ hgα
  have hgeq : g = minpoly A.Fp (A.ιE a) :=
    eq_of_monic_of_dvd_of_natDegree_le (minpoly.monic hintP) hgmon hdvd (by omega)
  have hdvd2 : minpoly A.Fp (A.ιE a) ∣ (minpoly 𝒪[A.Fp] (A.ιE a)).map (algebraMap 𝒪[A.Fp] A.Fp) := by
    apply minpoly.dvd
    rw [aeval_map_algebraMap, minpoly.aeval]
  obtain ⟨g', hg'⟩ := IsIntegrallyClosed.eq_map_mul_C_of_dvd A.Fp (minpoly.monic ha) hdvd2
  rw [(minpoly.monic hintP).leadingCoeff, C_1, mul_one] at hg'
  have hc := congrArg (fun q => q.coeff i) (hg'.trans hgeq.symm)
  simp only [coeff_map, hg] at hc
  rw [← hc]
  exact (g'.coeff i).2

theorem intP : IntP := by
  intro F E _ _ _ _ _ h2 sig p A a ha
  rw [A.O_def] at ha
  have := ep_nontrivial A
  by_cases hr : a ∈ (algebraMap F E).range
  · obtain ⟨f, rfl⟩ := hr
    have hf : A.ιF f ∈ 𝒪[A.Fp] := by
      rw [A.compat] at ha
      have hi : IsIntegral 𝒪[A.Fp] (A.ιF f) :=
        (isIntegral_algebraMap_iff ).mp ha
      exact (Valuation.integer.integers _).mem_of_integral hi
    obtain ⟨d, hd, n, hn⟩ := int_of_val A f hf
    refine ⟨d, hd, algebraMap (𝓞 F) (𝓞 E) n, ?_⟩
    change algebraMap F E (d : F) * algebraMap F E f = algebraMap F E (n : F)
    rw [← map_mul, hn]
  · have hc : ∀ i, ∃ d : 𝓞 F, d ∉ p.asIdeal ∧ ∃ n : 𝓞 F, (d : F) * (minpoly F a).coeff i = n :=
      fun i => int_of_val A _ (coeff_mem h2 A a ha hr i)
    obtain ⟨d0, hd0, n0, hn0⟩ := hc 0
    obtain ⟨d1, hd1, n1, hn1⟩ := hc 1
    have hintF : IsIntegral F a := Algebra.IsIntegral.isIntegral _
    have hdeg : (minpoly F a).natDegree = 2 := by
      have h1 : (minpoly F a).natDegree ≠ 1 := fun h => hr (minpoly.natDegree_eq_one_iff.mp h)
      have h0 := minpoly.natDegree_pos hintF
      have := minpoly.natDegree_le (A := F) a
      rw [h2] at this
      omega
    have hlead : (minpoly F a).coeff 2 = 1 := by
      have := (minpoly.monic hintF).leadingCoeff
      rwa [leadingCoeff, hdeg] at this
    have hrel : algebraMap F E ((minpoly F a).coeff 0) + algebraMap F E ((minpoly F a).coeff 1) * a
        + a ^ 2 = 0 := by
      have := minpoly.aeval F a
      rw [aeval_eq_sum_range' (n := 3) (by omega)] at this
      simp only [Finset.sum_range_succ, Finset.sum_range_zero, hlead, Algebra.smul_def,
        map_one, pow_zero, pow_one, one_mul, mul_one, zero_add] at this
      linear_combination this
    have hd : d0 * d1 ∉ p.asIdeal := fun h => (p.isPrime.mem_or_mem h).elim hd0 hd1
    have hint : IsIntegral (𝓞 F) (algebraMap F E ((d0 * d1 : 𝓞 F) : F) * a) := by
      refine ⟨X ^ 2 + C (d0 * n1) * X + C (d0 * d1 * d1 * n0), by monicity!, ?_⟩
      simp only [eval₂_add, eval₂_X_pow, eval₂_mul, eval₂_C, eval₂_X]
      have e0 := congrArg (algebraMap F E) hn0
      have e1 := congrArg (algebraMap F E) hn1
      simp only [map_mul] at e0 e1
      simp only [IsScalarTower.algebraMap_apply (𝓞 F) F E, map_mul] at *
      change _ = algebraMap F E (n0 : F) at e0
      linear_combination (algebraMap F E (d0 : F) * algebraMap F E (d1 : F)) ^ 2 * hrel
        - (algebraMap F E (d0 : F) * (algebraMap F E (d0 : F) * algebraMap F E (d1 : F)) * a) * e1
        - (algebraMap F E (d0 : F) * algebraMap F E (d1 : F) ^ 2) * e0
    obtain ⟨b, hb⟩ := IsIntegralClosure.isIntegral_iff (A := 𝓞 E) (R := 𝓞 F) (B := E) |>.mp hint
    refine ⟨d0 * d1, hd, b, ?_⟩
    rw [show ((b : 𝓞 E) : E) = algebraMap (𝓞 E) E b from rfl, hb]
    rfl

end PI.LocLatEq.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.EpNontrivial =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocLatEq =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocLatEq", "h": "module\n\npublic import Formalism.PeriodIntegrals.LocLatEq\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.AvoidP\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.CoreFgOfLe\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeEquality.EpNontrivial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem eq_iff_locallyEq : PI.LocLatEq.Stmt :=
  PI.LocLatEq.W.locLatEq_of PI.LocLatEq.W.unitP PI.LocLatEq.W.avoidP
    (PI.LocLatEq.W.coreP_of_unitP_avoidP_intP PI.LocLatEq.W.unitP PI.LocLatEq.W.avoidP PI.LocLatEq.W.intP)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocLatEq =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocalDiscriminantIsUnit\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.LocalAdditiveCharContinuous\npublic import Formalism.PeriodIntegrals.LocLatEq\npublic import Formalism.PeriodIntegrals.LocLatSat\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.DensInertDisplayHolds\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.LocLatEq\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalLatticeSaturation.LocLatSat\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TrDualLoc\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.DApprox\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.LGSmall\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.RingInverseAlgebraMap\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.TrDual\nimport Development.AbelianVarietyTheory.Definitions.SemilocalFrames.LatExistsOfSteps\nimport Formalism.HermitianLattices.HermitianLatticesProofs.DualLattice\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.T2SpaceOfNonarchimedeanLocalField\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.Valuation.Integral\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical BigOperators

namespace Formalism.L2.SG.Pf

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermDef
  Formalism.L2.SG.Saturated Formalism.L2.SG.TermLoc ValuativeRel

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def DualLoc : Prop :=
  ∀ (K : Type) [Field K] [NumberField K] (p : HeightOneSpectrum (𝓞 K)) [Fact (Loc.resChar p).Prime]
    (Fp : Type) [Field Fp] [ValuativeRel Fp] [TopologicalSpace Fp] [IsNonarchimedeanLocalField Fp]
    [Algebra ℚ_[Loc.resChar p] Fp], Continuous (algebraMap ℚ_[Loc.resChar p] Fp) →
    FiniteDimensional ℚ_[Loc.resChar p] Fp → ∀ (ι : K →+* Fp), DenseRange ι →
    (∀ x y : K, (ι x ≤ᵥ ι y) ↔ p.valuation K x ≤ p.valuation K y) →
    ∀ t : K, (∀ a : 𝓞 K, ∃ n : ℤ, Algebra.trace ℚ K (t * a) = n) →
    ∀ c ∈ 𝒪[Fp], ‖Algebra.trace ℚ_[Loc.resChar p] Fp (c * ι t)‖ ≤ 1

namespace LocFacts

variable {D : D7}

theorem lf_span_coe_of_eq {Ep M : Type*} [CommRing Ep] [AddCommGroup M] [Module Ep M] {S T : Subring Ep}
    (h : S = T) (X : Set M) : ((Submodule.span S X : Submodule S M) : Set M) = (Submodule.span T X : Set M) := by
  subst h; rfl

def phiE (D : D7) : (VS D).V ≃ₗ[𝓞 D.host.E] (Fin (nV D) → D.host.E) :=
  ((VS D).frame.equivFun).restrictScalars (𝓞 D.host.E)

def phi (D : D7) : (VS D).V →ₗ[𝓞 D.host.E] (Fin (nV D) → D.host.E) := (phiE D).toLinearMap

theorem localBaseChange_eq (p : PlF D) (x : (VS D).V) : baseChange₂ D p x = PI.LocLatEq.bc (D.s.atP p) (phi D x) := by
  funext i
  simp [baseChange₂, PI.LocLatEq.bc, phi, phiE, Module.Basis.equivFun_apply]

theorem lf_img_eq (p : PlF D) (L : Submodule (𝓞 D.host.E) (VS D).V) :
    baseChange₂ D p '' (L : Set (VS D).V) = PI.LocLatEq.bc (D.s.atP p) '' ((L.map (phi D) : Submodule _ _) : Set _) := by
  rw [Submodule.map_coe, Set.image_image]
  exact Set.image_congr (fun x _ => localBaseChange_eq p x)

theorem localLattice_coe (Z : LocDat D) (p : PlF D) (L : Submodule (𝓞 D.host.E) (VS D).V) :
    (lattice₂ D Z.M p L : Set (Vp D p)) = (PI.LocLatEq.latL (D.s.atP p) (L.map (phi D)) : Set _) := by
  unfold lattice₂ PI.LocLatEq.latL
  rw [lf_img_eq]
  exact lf_span_coe_of_eq (Z.agree p).2.2.2.1 _

theorem lf_mem_map_phi (L : Submodule (𝓞 D.host.E) (VS D).V) (s : 𝓞 D.host.E) (x : (VS D).V) :
    s • phi D x ∈ L.map (phi D) ↔ s • x ∈ L := by
  have h1 : s • phi D x = phiE D (s • x) := by simp [phi]
  rw [h1]
  constructor
  · rintro ⟨y, hy, hxy⟩
    have : y = s • x := (phiE D).injective (by simpa [phi] using hxy)
    exact this ▸ hy
  · intro hx
    exact ⟨s • x, hx, by simp [phi]⟩

theorem locEqC_of_stmt (h : PI.LocLatEq.Stmt) (Z : LocDat D) : LocEqC D Z := by
  intro p A B hA hB
  have key := h _ _ (Formalism.BasicNotions.Examples₂.finrank_FE D.host) _ p (D.s.atP p) (nV D) (A.map (phi D)) (B.map (phi D))
    (hA.map _) (hB.map _)
  rw [← SetLike.coe_set_eq, localLattice_coe, localLattice_coe, SetLike.coe_set_eq, key]
  refine forall_congr' fun P => imp_congr_right fun _ => ?_
  rw [SetLike.ext_iff]
  have hm : ∀ (L : Submodule (𝓞 D.host.E) (VS D).V) (v : (VS D).V),
      (haveI := P.isPrime; v ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal L) ↔
        ∃ s : 𝓞 D.host.E, s ∉ P.asIdeal ∧ s • phi D v ∈ L.map (phi D) := by
    intro L v
    simp only [lf_mem_map_phi]
    exact Iff.rfl
  constructor
  · intro H v
    exact (hm A v).trans ((H (phi D v)).trans (hm B v).symm)
  · intro H y
    obtain ⟨v, rfl⟩ : ∃ v, phi D v = y := ⟨(phiE D).symm y, by simp [phi]⟩
    exact (hm A v).symm.trans ((H v).trans (hm B v))

theorem locSatC_of_stmt (h : PI.LocLatSat.Stmt) (Z : LocDat D) : LocSatC D Z := by
  intro p Λ W hΛ
  have hmap : (Λ ⊓ toO (VS D) W).map (phi D) =
      Λ.map (phi D) ⊓ (W.map (VS D).frame.equivFun.toLinearMap).restrictScalars (𝓞 D.host.E) := by
    rw [Submodule.map_inf (phi D) (fun a c hac => (phiE D).injective (by simpa [phi] using hac))]
    congr 1
  have hW : baseChange₂ D p '' (W : Set (VS D).V) =
      PI.LocLatSat.bc (D.s.atP p) '' ((W.map (VS D).frame.equivFun.toLinearMap : Submodule _ _) : Set _) := by
    rw [Submodule.map_coe, Set.image_image]
    exact Set.image_congr (fun x _ => localBaseChange_eq p x)
  have key := h _ _ _ p (D.s.atP p) (nV D) (Λ.map (phi D)) (W.map (VS D).frame.equivFun.toLinearMap) (hΛ.map _)
  rw [localLattice_coe, localLattice_coe, hmap, hW]
  exact key

end LocFacts

theorem locSatC_holds (D : D7) (Z : LocDat D) : LocSatC D Z :=
  LocFacts.locSatC_of_stmt _root_.PI.LocLatSat.UnitaryGroupMassFormula.locLatSat Z

theorem locEqC_of (h : PI.LocLatEq.Stmt) (D : D7) (Z : LocDat D) : LocEqC D Z :=
  LocFacts.locEqC_of_stmt h Z

namespace LocFacts

open PI.CntNotIntW

variable {D : D7}

section Diff

attribute [local instance] LocCP.factRes

variable (p : PlF D)

theorem lf_tr_th : Algebra.trace (D.s.atP p).Fp (D.s.atP p).Ep (LocCP.th p) = 0 := by
  haveI : Module.Free (D.s.atP p).Fp (D.s.atP p).Ep := (D.s.atP p).free
  haveI : Module.Finite (D.s.atP p).Fp (D.s.atP p).Ep :=
    Module.finite_of_finrank_pos (by rw [(D.s.atP p).rank]; norm_num)
  haveI : CharZero (D.s.atP p).Fp := (D.s.atP p).char0
  have h := Algebra.trace_eq_of_algEquiv (D.s.atP p).cj (LocCP.th p)
  rw [LocCP.cj_th, map_neg] at h
  have h2 : (2 : (D.s.atP p).Fp) * Algebra.trace (D.s.atP p).Fp (D.s.atP p).Ep (LocCP.th p) = 0 := by
    linear_combination -h
  exact (mul_eq_zero.1 h2).resolve_left two_ne_zero

theorem lf_tr_eq (y : (D.s.atP p).Ep) :
    algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (Algebra.trace (D.s.atP p).Fp (D.s.atP p).Ep y) =
      y + (D.s.atP p).cj y := by
  haveI : Module.Free (D.s.atP p).Fp (D.s.atP p).Ep := (D.s.atP p).free
  haveI : Module.Finite (D.s.atP p).Fp (D.s.atP p).Ep :=
    Module.finite_of_finrank_pos (by rw [(D.s.atP p).rank]; norm_num)
  obtain ⟨a, b, rfl⟩ := LocCP.repr_th p y
  have ht : Algebra.trace (D.s.atP p).Fp (D.s.atP p).Ep
      (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep b * LocCP.th p) = 0 := by
    rw [← Algebra.smul_def, map_smul, lf_tr_th, smul_zero]
  rw [map_add (f := _), ht, add_zero, Algebra.trace_algebraMap, (D.s.atP p).rank, map_add (f := _), map_mul,
    AlgEquiv.commutes, AlgEquiv.commutes, LocCP.cj_th]
  simp only [nsmul_eq_mul, map_mul, map_natCast]
  push_cast
  ring

theorem lf_cj_mem (y : (D.s.atP p).Ep) (hy : y ∈ (D.s.atP p).O) : (D.s.atP p).cj y ∈ (D.s.atP p).O := by
  rw [(D.s.atP p).O_def] at hy ⊢
  exact hy.map (((D.s.atP p).cj : (D.s.atP p).Ep →ₐ[(D.s.atP p).Fp] (D.s.atP p).Ep).restrictScalars
    𝒪[(D.s.atP p).Fp])

theorem lf_int_of_alg (c : (D.s.atP p).Fp) (hc : algebraMap (D.s.atP p).Fp (D.s.atP p).Ep c ∈ (D.s.atP p).O) :
    c ∈ 𝒪[(D.s.atP p).Fp] := by
  rw [(D.s.atP p).O_def] at hc
  have hinj : Function.Injective (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep) :=
    RingHom.injective (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep)
  have hc' : IsIntegral 𝒪[(D.s.atP p).Fp] c := (isIntegral_algebraMap_iff ).1 hc
  exact (Valuation.integer.integers (valuation (D.s.atP p).Fp)).mem_of_integral hc'

theorem lf_tr_mem (y : (D.s.atP p).Ep) (hy : y ∈ (D.s.atP p).O) :
    Algebra.trace (D.s.atP p).Fp (D.s.atP p).Ep y ∈ 𝒪[(D.s.atP p).Fp] := by
  apply lf_int_of_alg
  rw [lf_tr_eq]
  exact add_mem hy (lf_cj_mem p y hy)

theorem lf_trQ_mul (z : (D.s.atP p).Fp) (y : (D.s.atP p).Ep) :
    LocCP.trQ p (algebraMap (D.s.atP p).Fp (D.s.atP p).Ep z * y) =
      Algebra.trace ℚ_[Loc.resChar p] (D.s.atP p).Fp (z * Algebra.trace (D.s.atP p).Fp (D.s.atP p).Ep y) := by
  haveI : Module.Free (D.s.atP p).Fp (D.s.atP p).Ep := (D.s.atP p).free
  haveI : Module.Finite (D.s.atP p).Fp (D.s.atP p).Ep :=
    Module.finite_of_finrank_pos (by rw [(D.s.atP p).rank]; norm_num)
  haveI : FiniteDimensional ℚ_[Loc.resChar p] (D.s.atP p).Fp := (D.s.atP p).qlFin
  unfold LocCP.trQ
  letI := ((algebraMap (D.s.atP p).Fp (D.s.atP p).Ep).comp
    (algebraMap ℚ_[Loc.resChar p] (D.s.atP p).Fp)).toAlgebra
  haveI : IsScalarTower ℚ_[Loc.resChar p] (D.s.atP p).Fp (D.s.atP p).Ep :=
    IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  rw [← Algebra.trace_trace (S := (D.s.atP p).Fp), ← Algebra.smul_def, map_smul, smul_eq_mul]

theorem lf_dual_le (Z : LocDat D) (z : (D.s.atP p).Fp)
    (hz : ∀ c ∈ 𝒪[(D.s.atP p).Fp], ‖Algebra.trace ℚ_[Loc.resChar p] (D.s.atP p).Fp (c * z)‖ ≤ 1) :
    z * Z.δ p ∈ 𝒪[(D.s.atP p).Fp] := by
  obtain ⟨-, hδ, -, hO, hpsi, -⟩ := Z.agree p
  apply lf_int_of_alg
  rw [← hO]
  apply ((Z.M p).L.additive_character_dual_ring _).1
  intro y hy
  rw [hpsi]
  have e : -(algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (z * Z.δ p) * y *
      algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (Z.δ p)⁻¹) =
      algebraMap (D.s.atP p).Fp (D.s.atP p).Ep z * (-y) := by
    have h1 : algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (Z.δ p) *
        algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (Z.δ p)⁻¹ = 1 := by
      rw [← map_mul, mul_inv_cancel₀ hδ, map_one]
    rw [map_mul]
    linear_combination (-(algebraMap (D.s.atP p).Fp (D.s.atP p).Ep z * y)) * h1
  rw [e]
  apply _root_.Formalism.L2.SG.Pf.LocCP.psiE_of_norm
  rw [lf_trQ_mul, mul_comm]
  rw [hO] at hy
  exact hz _ (lf_tr_mem p _ (neg_mem hy))

theorem unitPart_mem₂ : (D.s.atP p).ιE (uP p : D.host.E) ∈ (D.s.atP p).O := by
  have hE : (D.s.atP p).ιE (uP p : D.host.E) =
      algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((uP p : ℚ) : (D.s.atP p).Fp) := by
    rw [← map_ratCast (algebraMap D.host.F D.host.E), (D.s.atP p).compat, map_ratCast]
  rw [hE]
  apply algMap_mem_O D p
  have hℓ : (Loc.resChar p).Prime := (D.s.atP p).ellPrime.out
  have hg0 := D.host.g_prime 0
  have hg1 := D.host.g_prime 1
  have key : ∃ n : ℕ, ¬ Loc.resChar p ∣ n ∧ (uP p : ℚ) = 1 / n := by
    unfold uP gpart Lat.gS
    have h0 : (D.host.g 0 : ℚ) ≠ 0 := by exact_mod_cast hg0.ne_zero
    have h1 : (D.host.g 1 : ℚ) ≠ 0 := by exact_mod_cast hg1.ne_zero
    split_ifs with ha hb
    · refine ⟨D.host.g 1, fun hd => D.host.g_ne (ha.symm.trans ((Nat.prime_dvd_prime_iff_eq hℓ hg1).1 hd)), ?_⟩
      push_cast; field_simp
    · refine ⟨D.host.g 0, fun hd => ha ((Nat.prime_dvd_prime_iff_eq hℓ hg0).1 hd), ?_⟩
      push_cast; field_simp
    · refine ⟨D.host.g 0 * D.host.g 1, fun hd => ?_, by push_cast; field_simp⟩
      rcases (Nat.Prime.dvd_mul hℓ).1 hd with hd | hd
      · exact ha ((Nat.prime_dvd_prime_iff_eq hℓ hg0).1 hd)
      · exact hb ((Nat.prime_dvd_prime_iff_eq hℓ hg1).1 hd)
  obtain ⟨n, hn, hu⟩ := key
  obtain ⟨w, hw⟩ := BBTie.bt_natF_unit p n hn
  have hc := (D.s.atP p).char0
  have hn0 : (n : (D.s.atP p).Fp) ≠ 0 := right_ne_zero_of_mul_eq_one hw
  have : ((uP p : ℚ) : (D.s.atP p).Fp) = (w : (D.s.atP p).Fp) := by
    rw [hu]; push_cast
    field_simp
    linear_combination -hw
  rw [this]; exact w.2

end Diff

end LocFacts

namespace LocFacts

open PI.CntNotIntW
open scoped nonZeroDivisors

variable {D : D7}

section Diff2

attribute [local instance] LocCP.factRes

variable (p : PlF D)

abbrev cP (Z : LocDat D) : (D.s.atP p).Ep :=
  algebraMap (D.s.atP p).Fp (D.s.atP p).Ep (Z.δ p) * (D.s.atP p).ιE (uP p : D.host.E)

theorem isUnit_localConstant (Z : LocDat D) : IsUnit (cP p Z) := by
  have hδ : Z.δ p ≠ 0 := (Z.agree p).2.1
  obtain ⟨n, hn⟩ := unitAt_mul_natCast D p
  have hu : (uP p : D.host.E) ≠ 0 := by
    have : (uP p : ℚ) ≠ 0 := left_ne_zero_of_mul_eq_one hn
    exact_mod_cast this
  exact ((IsUnit.mk0 _ hδ).map _).mul ((IsUnit.mk0 _ hu).map _)

theorem lf_ddS_inv : (ddS D)⁻¹ = FractionalIdeal.extendedHom D.host.E (𝓞 D.host.E)
    (FractionalIdeal.dual ℤ ℚ (1 : FractionalIdeal (𝓞 D.host.F)⁰ D.host.F)) := by
  have h1 : ddS D = FractionalIdeal.extendedHom D.host.E (𝓞 D.host.E)
      ((differentIdeal ℤ (𝓞 D.host.F) : Ideal (𝓞 D.host.F)) : FractionalIdeal (𝓞 D.host.F)⁰ D.host.F) := by
    rw [FractionalIdeal.extendedHom_coeIdeal_eq_map]; rfl
  rw [h1, coeIdeal_differentIdeal ℤ ℚ D.host.F, map_inv₀, inv_inv]

theorem lf_mem_inv (hDL : DualLoc) (Z : LocDat D) (y : D.host.E) (hy : y ∈ (ddS D)⁻¹) :
    (D.s.atP p).ιE y * cP p Z ∈ (D.s.atP p).O := by
  rw [lf_ddS_inv, ← FractionalIdeal.mem_coe, FractionalIdeal.coe_extendedHom_eq_span] at hy
  induction hy using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨t, ht, rfl⟩ := hx
    have htr : ∀ a : 𝓞 D.host.F, ∃ n : ℤ, Algebra.trace ℚ D.host.F (t * a) = n := by
      rw [SetLike.mem_coe, FractionalIdeal.mem_dual
        (one_ne_zero : (1 : FractionalIdeal (𝓞 D.host.F)⁰ D.host.F) ≠ 0)] at ht
      intro a
      obtain ⟨n, hn⟩ := ht (algebraMap _ _ a) ((FractionalIdeal.mem_one_iff _).2 ⟨a, rfl⟩)
      exact ⟨n, by rw [Algebra.traceForm_apply] at hn; rw [← hn]; rfl⟩
    haveI := (D.s.atP p).lf
    have hz := hDL D.host.F p (D.s.atP p).Fp (D.s.atP p).qlCont (D.s.atP p).qlFin (D.s.atP p).ιF
      (D.s.atP p).dense (D.s.atP p).val t htr
    have hm := LocFacts.lf_dual_le p Z _ hz
    have e : (D.s.atP p).ιE (algebraMap D.host.F D.host.E t) * cP p Z =
        algebraMap (D.s.atP p).Fp (D.s.atP p).Ep ((D.s.atP p).ιF t * Z.δ p) * (D.s.atP p).ιE (uP p : D.host.E) := by
      rw [(D.s.atP p).compat, map_mul, cP, mul_assoc]
    rw [e]
    exact mul_mem (algMap_mem_O D p _ hm) (unitPart_mem₂ p)
  | zero => rw [map_zero, zero_mul]; exact zero_mem _
  | add x y _ _ hx hy => rw [map_add (f := _), add_mul]; exact add_mem hx hy
  | smul a x _ hx =>
    rw [Algebra.smul_def, map_mul, mul_assoc]
    exact mul_mem (iE_mem_O D p a) hx

theorem lf_mem_pow (hDL : DualLoc) (Z : LocDat D) :
    ∀ (m : ℕ) (x : D.host.E), x ∈ (ddS D)⁻¹ ^ m → (D.s.atP p).ιE x * cP p Z ^ m ∈ (D.s.atP p).O := by
  intro m
  induction m with
  | zero =>
    intro x hx
    rw [pow_zero] at hx
    obtain ⟨o, rfl⟩ := (FractionalIdeal.mem_one_iff (𝓞 D.host.E)⁰).1 hx
    rw [pow_zero, mul_one]
    exact iE_mem_O D p o
  | succ m ih =>
    intro x hx
    rw [pow_succ] at hx
    refine FractionalIdeal.mul_induction_on hx ?_ ?_
    · intro i hi j hj
      have := mul_mem (ih i hi) (lf_mem_inv p hDL Z j hj)
      rw [map_mul, pow_succ]
      convert this using 1
      ring
    · intro a b ha hb
      rw [map_add (f := _), add_mul]
      exact add_mem ha hb

end Diff2

end LocFacts


open PI.CntNotIntW in
theorem locDiffC_of (hDL : DualLoc) (D : D7) (Z : LocDat D) : LocDiffC D Z := by
  intro p a
  have hO : (Z.M p).L.O = (D.s.atP p).O := (Z.agree p).2.2.2.1
  have hexp : (-((D.R.rS : ℤ) - ((a : ℕ) : ℤ))) = -((D.R.rS - a.val : ℕ) : ℤ) := by
    rw [Nat.cast_sub (by omega : a.val ≤ D.R.rS)]
  have hpow : ∀ m : ℕ, (ddS D) ^ (-(m : ℤ)) = (ddS D)⁻¹ ^ m := fun m => by rw [zpow_neg, zpow_natCast, inv_pow]
  have hfr : frFac Z.δ p a = Ring.inverse (LocFacts.cP p Z ^ (D.R.rS - a.val)) := rfl
  rw [hexp, hpow, hfr]
  have hc := LocFacts.isUnit_localConstant p Z
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨x, hx, rfl⟩
    rw [SetLike.mem_coe, Submodule.mem_span_singleton]
    have hmem := LocFacts.lf_mem_pow p hDL Z (D.R.rS - a.val) x hx
    refine ⟨⟨(D.s.atP p).ιE x * LocFacts.cP p Z ^ (D.R.rS - a.val), by rw [hO]; exact hmem⟩, ?_⟩
    show ((D.s.atP p).ιE x * LocFacts.cP p Z ^ (D.R.rS - a.val)) *
      Ring.inverse (LocFacts.cP p Z ^ (D.R.rS - a.val)) = _
    rw [mul_assoc, Ring.mul_inverse_cancel _ (hc.pow _), mul_one]
  · rw [Submodule.span_le, Set.singleton_subset_iff]
    obtain ⟨x, hx, -, w, hw, hxw⟩ := locGen_of (locDiff_of trace_dual_lattice
      (dualApprox_of small_powers_bound tensorLiftSurjective) small_powers_bound) dual_lattice_powers D Z.δ Z.M Z.agree p (D.R.rS - a.val)
    rw [hpow] at hx
    have e : Ring.inverse (LocFacts.cP p Z ^ (D.R.rS - a.val)) = w * (D.s.atP p).ιE x := hxw
    rw [SetLike.mem_coe, e]
    have hw' : w ∈ (Z.M p).L.O := by rw [hO]; exact hw
    exact Submodule.smul_mem _ (⟨w, hw'⟩ : (Z.M p).L.O) (Submodule.subset_span ⟨x, hx, rfl⟩)

namespace LocFacts

variable {D : D7}

section Unimod

variable (Z : LocDat D) (p : PlF D)

theorem localForm_add_left₂ (x x' y : Vp D p) : LocFacts₂ Z.M p (x + x') y = LocFacts₂ Z.M p x y + LocFacts₂ Z.M p x' y := by
  simp only [LocFacts₂, Pi.add_apply, add_mul, Finset.sum_add_distrib]

theorem localForm_smul_left₂ (a : (D.s.atP p).Ep) (x y : Vp D p) : LocFacts₂ Z.M p (a • x) y = a * LocFacts₂ Z.M p x y := by
  simp only [LocFacts₂, Pi.smul_apply, smul_eq_mul, Finset.mul_sum, mul_assoc]

theorem localForm_add_right (x y y' : Vp D p) : LocFacts₂ Z.M p x (y + y') = LocFacts₂ Z.M p x y + LocFacts₂ Z.M p x y' := by
  simp only [LocFacts₂, Pi.add_apply, map_add (f := _), mul_add, add_mul, Finset.sum_add_distrib]

theorem localForm_smul_right (a : (D.s.atP p).Ep) (x y : Vp D p) :
    LocFacts₂ Z.M p x (a • y) = (Z.M p).L.cj a * LocFacts₂ Z.M p x y := by
  simp only [LocFacts₂, Pi.smul_apply, smul_eq_mul, map_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem localForm_zero_left₂ (y : Vp D p) : LocFacts₂ Z.M p 0 y = 0 := by
  simp [LocFacts₂]

theorem localForm_zero_right (x : Vp D p) : LocFacts₂ Z.M p x 0 = 0 := by
  simp [LocFacts₂]

theorem lf_hO : (Z.M p).L.O = (D.s.atP p).O := (Z.agree p).2.2.2.1

theorem lf_cjM_mem (a : (D.s.atP p).Ep) (ha : a ∈ (Z.M p).L.O) : (Z.M p).L.cj a ∈ (Z.M p).L.O := by
  rw [Z.hcj p, lf_hO Z p] at *
  exact lf_cj_mem p a ha

theorem lf_mem_hdual {Λ : Submodule (𝓞 D.host.E) (VS D).V} {x : (VS D).V} :
    x ∈ Formalism.E.hdual (VS D).hT Λ ↔ ∀ y ∈ Λ, (VS D).hT y x ∈ (1 : Submodule (𝓞 D.host.E) D.host.E) := by
  simp only [Formalism.E.hdual, Submodule.mem_iInf, Submodule.mem_comap, LinearMap.restrictScalars_apply]

theorem lf_int_of_unimod {Λ : Submodule (𝓞 D.host.E) (VS D).V} (hU : Formalism.HermitianLatticesTheory.IsUnimodular (VS D).hT Λ)
    {a b : (VS D).V} (ha : a ∈ Λ) (hb : b ∈ Λ) :
    LocFacts₂ Z.M p (baseChange₂ D p a) (baseChange₂ D p b) ∈ (Z.M p).L.O := by
  rw [baseChangeAt_form Z.M p (Z.hcj p), brS]
  have ha' : a ∈ Formalism.E.hdual (VS D).hT Λ := by
    have : Formalism.HermitianLatticesTheory.dual (VS D).hT Λ = Λ := hU
    rw [← this] at ha
    exact ha
  obtain ⟨o, ho⟩ := Submodule.mem_one.1 ((lf_mem_hdual).1 ha' b hb)
  rw [← ho, lf_hO Z p]
  exact PI.CntNotIntW.iE_mem_O D p o

theorem lf_form_int {Λ : Submodule (𝓞 D.host.E) (VS D).V} (hU : Formalism.HermitianLatticesTheory.IsUnimodular (VS D).hT Λ)
    {x y : Vp D p} (hx : x ∈ lattice₂ D Z.M p Λ) (hy : y ∈ lattice₂ D Z.M p Λ) :
    LocFacts₂ Z.M p x y ∈ (Z.M p).L.O := by
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨a, ha, rfl⟩ := hx
    induction hy using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨b, hb, rfl⟩ := hy
      exact lf_int_of_unimod Z p hU ha hb
    | zero => rw [localForm_zero_right]; exact zero_mem _
    | add y y' _ _ h1 h2 => rw [localForm_add_right]; exact add_mem h1 h2
    | smul o y _ h =>
      rw [Subring.smul_def, localForm_smul_right]
      exact mul_mem (lf_cjM_mem Z p _ o.2) h
  | zero => rw [localForm_zero_left₂]; exact zero_mem _
  | add x x' _ _ h1 h2 => rw [localForm_add_left₂]; exact add_mem h1 h2
  | smul o x _ h =>
    rw [Subring.smul_def, localForm_smul_left₂]
    exact mul_mem o.2 h

theorem lf_riesz (φ : (VS D).V →ₗ[D.host.E] D.host.E) : ∃ μ : (VS D).V, ∀ v, (VS D).hT μ v = φ v := by
  apply GlobalTheory.St.Lat.lat_riesz

private theorem lf_span_eq_top_of_unimodular {Λ : Submodule (𝓞 D.host.E) (VS D).V}
    (hL : Λ.FG) (hU : Formalism.HermitianLatticesTheory.IsUnimodular (VS D).hT Λ) :
    Submodule.span D.host.E (Λ : Set (VS D).V) = ⊤ := by
  by_contra hspan
  obtain ⟨φ, hφ₀, hφ⟩ := Submodule.exists_le_ker_of_lt_top _ (lt_top_iff_ne_top.mpr hspan)
  obtain ⟨μ, hμ⟩ := lf_riesz φ
  have hμ₀ : μ ≠ 0 := by
    intro h
    apply hφ₀
    ext y
    simpa [h] using (hμ y).symm
  have hline (a : D.host.E) : a • μ ∈ Λ := by
    rw [← hU]
    change a • μ ∈ Formalism.E.hdual (VS D).hT Λ
    rw [lf_mem_hdual]
    intro y hy
    have hy₀ := LinearMap.mem_ker.mp (hφ (Submodule.subset_span hy))
    simp [← (VS D).herm.eq (a • μ) y, LinearMap.map_smulₛₗ, hμ, hy₀]
  obtain ⟨ψ, hψ, -⟩ := Submodule.exists_le_ker_of_notMem
    (show μ ∉ (⊥ : Submodule D.host.E (VS D).V) by simpa using hμ₀)
  let f := ψ.restrictScalars (𝓞 D.host.E)
  have hmap (x : D.host.E) : x ∈ Λ.map f := by
    refine ⟨(x / ψ μ) • μ, hline _, ?_⟩
    change ψ ((x / ψ μ) • μ) = x
    rw [map_smul, smul_eq_mul, div_mul_cancel₀ _ hψ]
  obtain ⟨d, hd₀, hd⟩ := FractionalIdeal.isFractional_of_fg
    (S := nonZeroDivisors (𝓞 D.host.E)) (hL.map f)
  have hinj := IsFractionRing.injective (𝓞 D.host.E) D.host.E
  have hne {a : 𝓞 D.host.E} (ha : a ≠ 0) : algebraMap (𝓞 D.host.E) D.host.E a ≠ 0 :=
    fun h => ha (hinj (h.trans (map_zero _).symm))
  have hinteger (x : D.host.E) : IsLocalization.IsInteger (𝓞 D.host.E) x := by
    have hx := hd _ (hmap ((algebraMap (𝓞 D.host.E) D.host.E d)⁻¹ * x))
    rwa [Algebra.smul_def, ← mul_assoc, mul_inv_cancel₀ (hne (nonZeroDivisors.ne_zero hd₀)),
      one_mul] at hx
  apply RingOfIntegers.not_isField D.host.E
  refine ⟨⟨0, 1, zero_ne_one⟩, mul_comm, ?_⟩
  intro a ha
  obtain ⟨b, hb⟩ := hinteger ((algebraMap (𝓞 D.host.E) D.host.E a)⁻¹)
  refine ⟨b, hinj ?_⟩
  rw [map_mul, hb, map_one, mul_inv_cancel₀ (hne ha)]

theorem lf_riesz_lat {Λ : Submodule (𝓞 D.host.E) (VS D).V} (hL : Submodule.IsLattice D.host.E Λ)
    (hU : Formalism.HermitianLatticesTheory.IsUnimodular (VS D).hT Λ) (f : Λ →ₗ[𝓞 D.host.E] 𝓞 D.host.E) :
    ∃ μ ∈ Λ, ∀ y : Λ, (VS D).hT μ (y : (VS D).V) = ((f y : 𝓞 D.host.E) : D.host.E) := by
  classical
  obtain ⟨s, _, b, hb, hsΛ⟩ := Formalism.HermitianLatticesTheory.dualLattice_basis
    (R := 𝓞 D.host.E) Λ (lf_span_eq_top_of_unimodular hL.fg hU)
  let φ : (VS D).V →ₗ[D.host.E] D.host.E := b.constr D.host.E
    (fun j => ((f ⟨(j : (VS D).V), hsΛ j.2⟩ : 𝓞 D.host.E) : D.host.E))
  have hφ : ∀ y : Λ, φ (y : (VS D).V) = ((f y : 𝓞 D.host.E) : D.host.E) := by
    intro y
    obtain ⟨d, hd⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors (𝓞 D.host.E)) Finset.univ
      (fun j => b.equivFun (y : (VS D).V) j)
    choose c hc using fun j => hd j (Finset.mem_univ j)
    have hy : ((d : 𝓞 D.host.E) • y : Λ) = ∑ j, c j • (⟨(j : (VS D).V), hsΛ j.2⟩ : Λ) := by
      apply Subtype.ext
      simp only [Submodule.coe_smul, Submodule.coe_sum]
      conv_lhs => rw [← b.sum_equivFun (y : (VS D).V)]
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [← hb j, ← algebraMap_smul D.host.E (c j), hc j, Algebra.smul_def, ← smul_smul,
        algebraMap_smul]
    have h1 := congrArg (fun z => ((f z : 𝓞 D.host.E) : D.host.E)) hy

    simp only [map_smul, map_sum, smul_eq_mul] at h1
    push_cast at h1
    have hd0 : ((d : 𝓞 D.host.E) : D.host.E) ≠ 0 := by
      have := nonZeroDivisors.ne_zero d.2
      exact_mod_cast this
    have h2 : ((d : 𝓞 D.host.E) : D.host.E) * φ (y : (VS D).V) =
        ∑ j, ((c j : 𝓞 D.host.E) : D.host.E) * ((f ⟨(j : (VS D).V), hsΛ j.2⟩ : 𝓞 D.host.E) : D.host.E) := by
      rw [show φ (y : (VS D).V) = _ from Module.Basis.constr_apply_fintype (S := D.host.E) b _ _, Finset.mul_sum]
      refine Finset.sum_congr rfl fun j _ => ?_
      rw [smul_eq_mul, ← mul_assoc]
      congr 1
      have := hc j
      rw [Algebra.smul_def] at this
      exact this.symm
    exact mul_left_cancel₀ hd0 (h2.trans h1.symm)
  obtain ⟨μ, hμ⟩ := lf_riesz φ
  refine ⟨μ, ?_, fun y => (hμ y).trans (hφ y)⟩
  have : Formalism.HermitianLatticesTheory.dual (VS D).hT Λ = Λ := hU
  rw [← this]
  show μ ∈ Formalism.E.hdual (VS D).hT Λ
  rw [lf_mem_hdual]
  intro y hy
  rw [← (VS D).herm.eq μ y, hμ, hφ ⟨y, hy⟩]
  refine Submodule.mem_one.2 ⟨⟨starRingEnd D.host.E ((f ⟨y, hy⟩ : 𝓞 D.host.E) : D.host.E),
    map_isIntegral_int (starRingEnd D.host.E) (RingOfIntegers.isIntegral_coe _)⟩, rfl⟩

end Unimod

end LocFacts

theorem locUnimodC_holds (D : D7) (Z : LocDat D) : LocUnimodC D Z := by
  intro p Λ hL hU x
  constructor
  · intro hx y hy
    exact LocFacts.lf_form_int Z p hU hx hy
  · intro h
    classical
    obtain ⟨n, g, f, hgf⟩ := Formalism.HermitianLatticesTheory.finitely_generated_projective_coords (K := D.host.E) Λ hL.fg
      (IsFractionRing.injective (𝓞 D.host.E) D.host.E)
    choose μ hμΛ hμ using fun i => LocFacts.lf_riesz_lat hL hU (f i)

    have hV : ∀ v : (VS D).V, v = ∑ i, (VS D).hT (μ i) v • ((g i : Λ) : (VS D).V) := by
      let L2 : (VS D).V →ₗ[D.host.E] (VS D).V := ∑ i, ((VS D).hT (μ i)).smulRight ((g i : Λ) : (VS D).V)
      have hL2 : ∀ v, L2 v = ∑ i, (VS D).hT (μ i) v • ((g i : Λ) : (VS D).V) := by
        intro v; simp [L2]
      have heq : LinearMap.id = L2 := by
        apply LinearMap.ext_on (LocFacts.lf_span_eq_top_of_unimodular hL.fg hU)
        intro y hy
        have e1 := congrArg (fun z : Λ => (z : (VS D).V)) (hgf ⟨y, hy⟩)
        rw [LinearMap.id_apply, hL2]
        refine e1.trans ?_
        rw [Submodule.coe_sum]
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [Submodule.coe_smul, ← algebraMap_smul D.host.E, hμ i ⟨y, hy⟩]
      intro v
      rw [← hL2, ← heq, LinearMap.id_apply]

    have hVp : ∀ w : Vp D p, w = ∑ i, LocFacts₂ Z.M p w (baseChange₂ D p (μ i)) • baseChange₂ D p ((g i : Λ) : (VS D).V) := by
      intro w
      have hw : w ∈ Submodule.span (D.s.atP p).Ep (Set.range (baseChange₂ D p)) := by rw [span_baseChange_eq_top]; trivial
      induction hw using Submodule.span_induction with
      | mem w hw =>
        obtain ⟨v, rfl⟩ := hw
        have e : ∀ i, LocFacts₂ Z.M p (baseChange₂ D p v) (baseChange₂ D p (μ i)) = (D.s.atP p).ιE ((VS D).hT (μ i) v) := by
          intro i; rw [baseChangeAt_form Z.M p (Z.hcj p), brS]
        simp only [e, ← baseChange_smul₂]

        rw [← map_sum, ← hV v]
      | zero => simp [LocFacts.localForm_zero_left₂]
      | add w w' _ _ h1 h2 =>
        simp only [LocFacts.localForm_add_left₂, add_smul, Finset.sum_add_distrib]
        rw [← h1, ← h2]
      | smul a w _ h =>
        simp only [LocFacts.localForm_smul_left₂, mul_smul]
        rw [← Finset.smul_sum, ← h]
    rw [hVp x]
    refine Submodule.sum_mem _ fun i _ => ?_
    have hc : LocFacts₂ Z.M p x (baseChange₂ D p (μ i)) ∈ (Z.M p).L.O :=
      h _ (Submodule.subset_span ⟨μ i, hμΛ i, rfl⟩)
    have hg : baseChange₂ D p ((g i : Λ) : (VS D).V) ∈ lattice₂ D Z.M p Λ := Submodule.subset_span ⟨_, (g i).2, rfl⟩
    exact Submodule.smul_mem _ (⟨_, hc⟩ : (Z.M p).L.O) hg

theorem dualLoc_holds : DualLoc := trace_dual_local

theorem locDiffC_holds (D : D7) (Z : LocDat D) : LocDiffC D Z := locDiffC_of dualLoc_holds D Z

theorem locEqC_holds (D : D7) (Z : LocDat D) : LocEqC D Z := locEqC_of eq_iff_locallyEq D Z

theorem bbTie_holds (D : D7) (Z : LocDat D) : BBTie D Z :=
  _root_.Formalism.L2.SG.Pf.BBTie.bbTie_core Z (locEqC_holds D Z) (locSatC_holds D Z) (locDiffC_holds D Z)

theorem frameGenLoc_holds (D : D7) (Z : LocDat D) {u u' : D.what₂.Word}
    (F0 : FlagG (VS D) D.R.rS ((Tu D u : ℕ) : D.host.E))
    (Λ : Submodule (𝓞 D.host.E) (VS D).V) (F' : LFlag (D.sp.Y 0) D.R.rS (((D.mem u').A.T : ℕ) : D.host.E))
    (hR : IsRowLat D F0 Λ) (hPD : PD D Λ (lf D F0) u' F') (hMI : MplusIndep Λ (lf D F0) (gS D) F')
    (hG : Gval (lf D F0) F' ≠ 0) :
    IsGeneric Λ (gS D) (lf D F0) F' ↔
      ∀ p : PlF D, (locH Z p).IsGeneric (locTerm Z p Λ (lf D F0) F' (Tu D u) (Tu D u')) :=
  frameGenLoc_of' Formalism.L2.SG.Closed.DNeZeroAt_holds Z (locEqC_holds D Z) (locSatC_holds D Z) (locDiffC_holds D Z)
    (locUnimodC_holds D Z) F0 Λ F' hR hPD hMI hG

end Formalism.L2.SG.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LocFacts =====
