module

public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
public import Formalism.ConjugateSelfDual.Statement
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PadicIsNonarchimedeanLocalField
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.NormalizedAbsCharacterization
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.LocalLanglandsGL
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.Linter.Style
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
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HasNormGroups

@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix MeasureTheory TensorProduct Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.Whittaker GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.LocDict

noncomputable section

namespace GlobalTheory.CompletionNorm

variable {E : Type} [Field E] [NumberField E] (w : HeightOneSpectrum (𝓞 E))

theorem isEquiv_valued :
    (valuation (w.adicCompletion E)).IsEquiv
      (Valued.v : Valuation (w.adicCompletion E) (WithZero (Multiplicative ℤ))) := by
  have : (Valued.v : Valuation (w.adicCompletion E) (WithZero (Multiplicative ℤ))).Compatible :=
    Valuation.Compatible.ofValuation _
  exact isEquiv (valuation (w.adicCompletion E))
    (Valued.v : Valuation (w.adicCompletion E) (WithZero (Multiplicative ℤ)))

theorem exists_unit_valued_eq :
    ∃ ϖ : (w.adicCompletion E)ˣ, Valued.v (ϖ : w.adicCompletion E) = WithZero.exp (-1) := by
  obtain ⟨π, hπ⟩ := w.valuation_exists_uniformizer E
  have h : Valued.v ((π : E) : w.adicCompletion E) = WithZero.exp (-1) := by
    rw [w.valuedAdicCompletion_eq_valuation']; exact hπ
  have h0 : ((π : E) : w.adicCompletion E) ≠ 0 := by
    intro h'; rw [h', map_zero] at h; exact WithZero.zero_ne_coe h
  exact ⟨Units.mk0 _ h0, h⟩

theorem le_exp_neg_one_of_lt_one {a : WithZero (Multiplicative ℤ)} (ha : a < 1) : a ≤ WithZero.exp (-1) := by
  by_cases h0 : a = 0
  · simp [h0]
  · rw [← WithZero.exp_log h0, ← WithZero.exp_zero, WithZero.exp_lt_exp] at ha
    rw [← WithZero.exp_log h0, WithZero.exp_le_exp]
    omega

theorem valued_eq_exp (x : (w.adicCompletion E)ˣ) :
    Valued.v (x : w.adicCompletion E) = WithZero.exp (-ord (w.adicCompletion E) x) := by
  have he := isEquiv_valued w
  obtain ⟨ϖ, hϖ⟩ := exists_unit_valued_eq w
  have hϖ1 : Valued.v (ϖ : w.adicCompletion E) < 1 := by
    rw [hϖ, ← WithZero.exp_zero, WithZero.exp_lt_exp]; norm_num
  have hu : valuation (w.adicCompletion E) (ϖ : w.adicCompletion E) = uniformizer (w.adicCompletion E) := by
    apply le_antisymm
    · exact le_uniformizer_iff.2 (he.lt_one_iff_lt_one.2 hϖ1)
    · obtain ⟨y, hy⟩ := valuation_surjective (uniformizer (w.adicCompletion E))
      rw [← hy]
      have hy1 : Valued.v y < 1 := he.lt_one_iff_lt_one.1 (hy ▸ uniformizer_lt_one)
      exact (he y ϖ).2 (hϖ ▸ le_exp_neg_one_of_lt_one hy1)
  have hord : ord (w.adicCompletion E) ϖ = 1 := SmGL.ord_eq_one hu
  let o : (w.adicCompletion E)ˣ →* Multiplicative ℤ :=
    MonoidHom.mk' (fun x => .ofAdd (ord (w.adicCompletion E) x)) fun x y => by rw [SmGL.ord_mul, ofAdd_add]
  set n := ord (w.adicCompletion E) x
  set u := x * ϖ ^ (-n)
  have hou : o u = 1 := by
    rw [map_mul, map_zpow, show o ϖ = .ofAdd 1 from congrArg Multiplicative.ofAdd hord, ← ofAdd_zsmul,
      smul_eq_mul, mul_one]
    show Multiplicative.ofAdd n * Multiplicative.ofAdd (-n) = 1
    rw [← ofAdd_add, add_neg_cancel, ofAdd_zero]
  have hu1 : valuation (w.adicCompletion E) (u : w.adicCompletion E) = 1 :=
    SmGL.ord_eq_zero_iff.1 (ofAdd_eq_one.1 hou)
  have hv1 : Valued.v (u : w.adicCompletion E) = 1 := he.eq_one_iff_eq_one.1 hu1
  have hx : x = u * ϖ ^ n := by simp [u]
  rw [hx, Units.val_mul, map_mul, hv1, one_mul, Units.val_zpow_eq_zpow_val, map_zpow₀, hϖ, ← WithZero.exp_zsmul,
    smul_eq_mul, mul_neg_one]

theorem normV_eq_absNorm : normV w = Ideal.absNorm w.asIdeal := by
  rw [Ideal.absNorm_apply, Submodule.cardQuot_apply]; rfl

theorem norm_eq_zpow (x : (w.adicCompletion E)ˣ) :
    ‖(x : w.adicCompletion E)‖ = ((normV w : ℕ) : ℝ) ^ (-ord (w.adicCompletion E) x) := by
  rw [FinitePlace.norm_def, valued_eq_exp, WithZeroMulInt.toNNReal_neg_apply _ (WithZero.exp_ne_zero (a := -ord (w.adicCompletion E) x)), WithZero.log_exp]
  simp [normV_eq_absNorm]

theorem one_lt_normV : 1 < normV w := by
  have := one_lt_resCard (w.adicCompletion E)
  rwa [GlobalTheory.LocLanglands.resCard_eq_normV] at this

theorem valuation_le_iff_norm_le (x y : w.adicCompletion E) :
    valuation (w.adicCompletion E) x ≤ valuation (w.adicCompletion E) y ↔ ‖x‖ ≤ ‖y‖ := by
  have h1 : (1 : NNReal) < (Ideal.absNorm w.asIdeal : NNReal) := by
    rw [← normV_eq_absNorm]; exact_mod_cast one_lt_normV w
  rw [isEquiv_valued w x y, FinitePlace.norm_def, FinitePlace.norm_def, NNReal.coe_le_coe]
  exact (WithZeroMulInt.toNNReal_strictMono h1).le_iff_le.symm

theorem range_map_eq_KO (m : ℕ) :
    (GeneralLinearGroup.map (w.adicCompletionIntegers E).subtype).range = KO (w.adicCompletion E) (Fin m) := by
  have he := isEquiv_valued w
  have hO : 𝒪[w.adicCompletion E] = (w.adicCompletionIntegers E).toSubring := by
    ext y
    rw [Valuation.mem_integer_iff, he.le_one_iff_le_one]
    exact Iff.rfl
  let e := RingEquiv.subringCongr hO
  ext g
  constructor
  · rintro ⟨h, rfl⟩
    refine ⟨GeneralLinearGroup.map e.symm.toRingHom h, ?_⟩
    ext i j; rfl
  · rintro ⟨h, rfl⟩
    refine ⟨GeneralLinearGroup.map e.toRingHom h, ?_⟩
    ext i j; rfl

end GlobalTheory.CompletionNorm


open GlobalTheory.CompletionNorm in
theorem GlobalTheory.CompletionNorm.norm_nabs_valuation : ∀ (E : Type) [Field E] [NumberField E] (w : HeightOneSpectrum (𝓞 E)), (∀ x : (w.adicCompletion E)ˣ, ‖(x : w.adicCompletion E)‖ = nabs (w.adicCompletion E) x ∧ ‖(x : w.adicCompletion E)‖ = ((normV w : ℕ) : ℝ) ^ (-ord (w.adicCompletion E) x) ∧ Valued.v (x : w.adicCompletion E) = WithZero.exp (-ord (w.adicCompletion E) x)) ∧ (∀ x y : w.adicCompletion E, valuation (w.adicCompletion E) x ≤ valuation (w.adicCompletion E) y ↔ ‖x‖ ≤ ‖y‖) ∧ ∀ m : ℕ, (GeneralLinearGroup.map (w.adicCompletionIntegers E).subtype).range = KO (w.adicCompletion E) (Fin m) := by
  intro E _ _ w
  refine ⟨fun x => ⟨?_, norm_eq_zpow w x, valued_eq_exp w x⟩, valuation_le_iff_norm_le w, range_map_eq_KO w⟩
  rw [norm_eq_zpow, GlobalTheory.LGrp.nabs_eq_zpow, GlobalTheory.LocLanglands.resCard_eq_normV]
