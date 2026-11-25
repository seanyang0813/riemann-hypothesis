module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsRingEquivPadicOfResidueCardUniformizer
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CompletelySplitPrimeHostPlaceProperties
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
import Mathlib.Tactic.Linter.HaveILetI
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

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal NumberField IsDedekindDomain ValuativeRel

namespace GlobalTheory.TypeIdent

theorem irreducible_natCast_compl {E : Type} [Field E] [NumberField E] (w : HeightOneSpectrum (𝓞 E)) {g : ℕ}
    (hin : ((g : ℕ) : 𝓞 E) ∈ w.asIdeal) (hnot : ((g : ℕ) : 𝓞 E) ∉ w.asIdeal ^ 2) :
    Irreducible ((g : ℕ) : 𝒪[w.adicCompletion E]) := by
  have : (Valued.v : Valuation (w.adicCompletion E) (WithZero (Multiplicative ℤ))).Compatible :=
    Valuation.Compatible.ofValuation _
  have he := isEquiv (valuation (w.adicCompletion E))
    (Valued.v : Valuation (w.adicCompletion E) (WithZero (Multiplicative ℤ)))
  have hle : ∀ y : 𝒪[w.adicCompletion E], Valued.v (y : w.adicCompletion E) ≤ 1 := fun y =>
    he.le_one_iff_le_one.1 ((Valuation.mem_integer_iff _ _).1 y.2)
  have hunit : ∀ y : 𝒪[w.adicCompletion E], IsUnit y ↔ Valued.v (y : w.adicCompletion E) = 1 := fun y => by
    rw [← he.eq_one_iff_eq_one]
    exact (Valuation.integer.integers (valuation (w.adicCompletion E))).isUnit_iff_valuation_eq_one
  have hv : Valued.v ((g : ℕ) : w.adicCompletion E) = w.intValuation ((g : ℕ) : 𝓞 E) := by
    rw [← HeightOneSpectrum.valuation_of_algebraMap (K := E), ← HeightOneSpectrum.valuedAdicCompletion_eq_valuation']
    congr 1
    exact ((map_natCast (algebraMap E (w.adicCompletion E)) g).symm).trans
      (congrArg (algebraMap E (w.adicCompletion E)) (map_natCast (algebraMap (𝓞 E) E) g).symm)
  have h1 : w.intValuation ((g : ℕ) : 𝓞 E) ≤ WithZero.exp (-1 : ℤ) := by
    simpa using (w.intValuation_le_pow_iff_mem ((g : ℕ) : 𝓞 E) 1).mpr (by rwa [pow_one])
  have h2 : WithZero.exp (-2 : ℤ) < w.intValuation ((g : ℕ) : 𝓞 E) := by
    by_contra hc
    exact hnot ((w.intValuation_le_pow_iff_mem _ 2).mp (by simpa using not_lt.1 hc))
  have hc : (((g : ℕ) : 𝒪[w.adicCompletion E]) : w.adicCompletion E) = (g : w.adicCompletion E) := by simp
  refine ⟨?_, fun a b hab => ?_⟩
  · rw [hunit, hc, hv]
    intro e
    rw [e, ← WithZero.exp_zero, WithZero.exp_le_exp] at h1
    omega
  · have h3 : Valued.v (a : w.adicCompletion E) * Valued.v (b : w.adicCompletion E) =
        w.intValuation ((g : ℕ) : 𝓞 E) := by
      rw [← hv, ← map_mul, ← hc, hab]; rfl
    rw [← h3] at h1 h2
    have h0 := (zero_le.trans_lt h2).ne'
    have ha := left_ne_zero_of_mul h0
    have hb := right_ne_zero_of_mul h0
    have ha1 := hle a
    have hb1 := hle b
    rw [hunit, hunit]
    rw [← WithZero.exp_log ha] at h2 ha1 ⊢
    rw [← WithZero.exp_log hb] at h2 hb1 ⊢
    rw [← WithZero.exp_add, WithZero.exp_lt_exp] at h2
    rw [← WithZero.exp_zero, WithZero.exp_le_exp] at ha1 hb1
    rw [← WithZero.exp_zero, WithZero.exp_inj, WithZero.exp_inj]
    omega

theorem nonempty_ident : ∀ D : D7, Nonempty (GlobalTheory.TypeRec.Ident D) := by
  intro D
  haveI : IsGalois ℚ D.host.E := D.host.hostE_isGalois
  have key : ∀ k v, ∃ φ : ℚ_[D.host.g k] ≃+* (D.naut.plGw k v).adicCompletion D.host.E, Continuous φ := by
    intro k v
    obtain ⟨h1, h2, -⟩ := GlobalTheory.Mem.Chr.splitsC_place (D.host.g_prime k) (D.nd.g_split k) _ (D.naut.plGw_over k v)
    haveI : CharZero ((D.naut.plGw k v).adicCompletion D.host.E) :=
      charZero_of_injective_ringHom (algebraMap D.host.E _).injective
    obtain ⟨φ, h, -⟩ := GlobalTheory.QpChar.exists_ringEquiv_padic ((D.naut.plGw k v).adicCompletion D.host.E) (D.host.g k)
      ((GlobalTheory.LocLanglands.resCard_eq_normV _).trans (by
        simpa [normV, Ideal.absNorm_apply, Submodule.cardQuot_apply] using h1)) (irreducible_natCast_compl _ (D.naut.plGw_over k v) h2)
    exact ⟨φ, h⟩
  exact ⟨⟨fun k v => (key k v).choose, fun k v => (key k v).choose_spec⟩⟩

end GlobalTheory.TypeIdent

end
