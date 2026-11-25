module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsComp
public import Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DepthZeroLabelsOfLabelLaws
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PadicIsNonarchimedeanLocalField
import Formalism.SharpRestriction.Divisibility.GeneratorPowers.GSplit
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.Automorphisms.PlaceA
import Mathlib.RingTheory.PicardGroup

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 NumberField IsDedekindDomain

namespace GlobalTheory.TypeRec.Model

section Compl
variable {F : Type} [Field F] [NumberField F] (w : HeightOneSpectrum (𝓞 F)) (p : ℕ) [hp : Fact p.Prime]

theorem emb_surjective (hw : (p : 𝓞 F) ∈ w.asIdeal) (h2 : (p : 𝓞 F) ∉ w.asIdeal ^ 2)
    (hN : Ideal.absNorm w.asIdeal = p) : Function.Surjective (Formalism.BasicNotions.Examples₂.LocF.emb w p hw) := by
  let K := w.adicCompletion F
  have hp0 : (p : K) ≠ 0 := Nat.cast_ne_zero.2 hp.out.ne_zero
  have hres : ∀ a : 𝓞 F, ∃ m : ℤ, a - m ∈ w.asIdeal := by
    intro a
    haveI := Formalism.BasicNotions.Examples₂.LocF.finite_quot w
    letI := Fintype.ofFinite (𝓞 F ⧸ w.asIdeal)
    have hc : Fintype.card (𝓞 F ⧸ w.asIdeal) = p := by
      rw [← hN, Ideal.absNorm_apply, Submodule.cardQuot_apply, Nat.card_eq_fintype_card]
    obtain ⟨z, hz⟩ := (ZMod.ringEquivOfPrime (𝓞 F ⧸ w.asIdeal) hp.out hc).surjective (Ideal.Quotient.mk _ a)
    obtain ⟨m, rfl⟩ := ZMod.intCast_surjective z
    rw [map_intCast] at hz
    exact ⟨m, Ideal.Quotient.eq.1 (by rw [map_intCast, hz])⟩
  have hvp : WithZero.exp (-1 : ℤ) ≤ Valued.v (p : K) := by
    have e : (p : K) = algebraMap F K (algebraMap (𝓞 F) F (p : 𝓞 F)) := by simp
    rw [e, adic_valued_algebraMap, HeightOneSpectrum.valuation_of_algebraMap]
    have h3 : ¬ w.intValuation (p : 𝓞 F) ≤ WithZero.exp (-((2 : ℕ) : ℤ)) := fun h =>
      h2 ((w.intValuation_le_pow_iff_mem _ 2).1 h)
    have h0 : w.intValuation (p : 𝓞 F) ≠ 0 := w.intValuation_ne_zero _ (Nat.cast_ne_zero.2 hp.out.ne_zero)
    rw [← WithZero.exp_log h0, WithZero.exp_le_exp] at h3 ⊢
    omega
  have step : ∀ y : K, Valued.v y ≤ 1 → ∃ (m : ℤ) (z : K), Valued.v z ≤ 1 ∧ y = m + p * z := by
    intro y hy
    obtain ⟨a, ha⟩ := adic_exists_approx w y hy
    obtain ⟨m, hm⟩ := hres a
    rw [adic_algebraMap_R] at ha
    have h1 : Valued.v (algebraMap F K (algebraMap (𝓞 F) F (a - m))) < 1 := by
      rw [adic_valued_algebraMap]
      exact (w.valuation_lt_one_iff_mem _).2 hm
    have h4 : Valued.v (y - m) < 1 := by
      have := Valuation.map_add_lt _ ha h1
      rwa [map_sub, map_sub, map_intCast, map_intCast, sub_add_sub_cancel] at this
    refine ⟨m, (y - m) / p, ?_, by rw [mul_div_cancel₀ _ hp0, add_sub_cancel]⟩
    rw [map_div₀, div_le_one₀ (zero_lt_iff.2 ((Valuation.ne_zero_iff _).2 hp0))]
    refine le_trans ?_ hvp
    by_cases h0 : Valued.v (y - m) = 0
    · rw [h0]; exact zero_le
    · rw [← WithZero.exp_log h0, ← WithZero.exp_zero, WithZero.exp_lt_exp] at h4
      rw [← WithZero.exp_log h0, WithZero.exp_le_exp]
      omega
  have iter : ∀ (n : ℕ) (y : K), Valued.v y ≤ 1 → ∃ (m : ℤ) (z : K), Valued.v z ≤ 1 ∧ y = m + (p : K) ^ n * z := by
    intro n y hy
    induction n with
    | zero => exact ⟨0, y, hy, by simp⟩
    | succ n ih =>
      obtain ⟨m, z, hz, e⟩ := ih
      obtain ⟨m', z', hz', e'⟩ := step z hz
      exact ⟨m + p ^ n * m', z', hz', by rw [e, e', Int.cast_add, Int.cast_mul, Int.cast_pow, Int.cast_natCast]; ring⟩
  letI := (Formalism.BasicNotions.Examples₂.LocF.emb w p hw).toAlgebra
  have : ContinuousSMul ℚ_[p] K := continuousSMul_of_algebraMap _ _ (Formalism.BasicNotions.Examples₂.LocF.emb_cont w p hw)
  have hcl : IsClosed (Set.range (Formalism.BasicNotions.Examples₂.LocF.emb w p hw)) :=
    (LinearMap.range (Algebra.linearMap ℚ_[p] K)).closed_of_finiteDimensional
  have hlt := Formalism.BasicNotions.Examples₂.LocF.norm_l_lt w p hw
  have hint : ∀ y : K, ‖y‖ ≤ 1 → y ∈ Set.range (Formalism.BasicNotions.Examples₂.LocF.emb w p hw) := by
    intro y hy
    rw [← hcl.closure_eq, Metric.mem_closure_iff]
    intro ε hε
    obtain ⟨n, hn⟩ := exists_pow_lt_of_lt_one hε hlt
    obtain ⟨m, z, hz, e⟩ := iter n y (Valued.toNormedField.norm_le_one_iff.1 hy)
    refine ⟨m, ⟨m, map_intCast _ _⟩, ?_⟩
    rw [dist_eq_norm, e, add_sub_cancel_left, norm_mul, norm_pow]
    exact lt_of_le_of_lt (mul_le_of_le_one_right (by positivity) (Valued.toNormedField.norm_le_one_iff.2 hz)) hn
  intro y
  obtain ⟨n, hn⟩ := exists_pow_lt_of_lt_one (show 0 < (‖y‖ + 1)⁻¹ by positivity) hlt
  obtain ⟨x, hx⟩ := hint ((p : K) ^ n * y) (by
    rw [norm_mul, norm_pow]
    have h1 : ‖(p : K)‖ ^ n * (‖y‖ + 1) ≤ 1 := by
      rw [← le_div_iff₀ (by positivity), one_div]; exact hn.le
    nlinarith [pow_nonneg (norm_nonneg (p : K)) n])
  refine ⟨x / (p : ℚ_[p]) ^ n, ?_⟩
  rw [map_div₀, hx, map_pow, map_natCast]
  field_simp

end Compl

theorem nonempty_ident (D : D7) : Nonempty (Ident D) := by
  have key : ∀ k v, Function.Surjective (Formalism.BasicNotions.Examples₂.LocF.emb (D.naut.plGw k v) (D.host.g k) (D.naut.plGw_over k v)) := by
    intro k v
    refine emb_surjective _ _ _ (fun h => ?_)
      (by
        simpa [Formalism.ConjugateSelfDual.normV, Ideal.absNorm_apply, Submodule.cardQuot_apply] using
          (GlobalTheory.TameLabels.normV_eq_of_split (D.host.g_prime k) (D.nd.g_split k) (D.naut.plGw_over k v)))
    have h0 : Ideal.span {((D.host.g k : ℕ) : 𝓞 D.host.E)} ≠ 0 := by
      rw [Ne, Ideal.zero_eq_bot, Ideal.span_singleton_eq_bot]
      exact_mod_cast (D.host.g_prime k).ne_zero
    have hs := (UniqueFactorizationMonoid.squarefree_iff_nodup_normalizedFactors h0).2
      (Formalism.MainNotions.ModuliIntegralCharts.H1.GSplit.split_of_ncard (D.host.g_prime k) (D.nd.g_split k)).2
    have := hs (D.naut.plGw k v).asIdeal (by rw [← sq, Ideal.dvd_span_singleton]; exact h)
    exact (D.naut.plGw k v).isPrime.ne_top (Ideal.isUnit_iff.1 this)
  exact ⟨⟨fun k v => RingEquiv.ofBijective _ ⟨RingHom.injective _, key k v⟩,
    fun k v => Formalism.BasicNotions.Examples₂.LocF.emb_cont _ _ (D.naut.plGw_over k v)⟩⟩

theorem cls_eq_of_iso {D : D7} (I : Ident D) (k : Fin 2) (v : D.nd.PlG k) {n : ℕ}
    (σ τ : GlobalTheory.SmGL.IrrRep (GL (Fin n) ((D.naut.plGw k v).adicCompletion D.host.E)))
    (h : Nonempty (pull I k v σ ≅ pull I k v τ)) : GlobalTheory.LocLanglands.cls σ = GlobalTheory.LocLanglands.cls τ := by
  obtain ⟨e⟩ := h
  have e' := Representation.equivOfIso e
  refine congrArg (Sigma.mk n) (GlobalTheory.SmGL.IrrRep.cl_eq_iff.2 ⟨Representation.Equiv.mk e'.toLinearEquiv fun g => ?_⟩)
  have hg : Matrix.GeneralLinearGroup.map (I.i k v).toRingHom
      (Matrix.GeneralLinearGroup.map (I.i k v).symm.toRingHom g) = g :=
    Units.ext (Matrix.ext fun a b => (I.i k v).apply_symm_apply _)
  rw [← hg]
  exact e'.toIntertwiningMap.isIntertwining' _


theorem map_surj {D : D7} (I : Ident D) (k v) (n : ℕ) :
    Function.Surjective (Matrix.GeneralLinearGroup.map (n := Fin n) (I.i k v).toRingHom) := fun g =>
  ⟨Matrix.GeneralLinearGroup.map (I.i k v).symm.toRingHom g,
    Units.ext (Matrix.ext fun _ _ => (I.i k v).apply_symm_apply _)⟩

theorem irrSm_pull {D : D7} (I : Ident D) (k v) {n : ℕ} (σ) : GlobalTheory.SerSys.IrrSm (pull I k v (n := n) σ) := by
  refine ⟨(GlobalTheory.GLp.Model.isIrrRep_iff _).2 (GlobalTheory.CuspRep.ParLaws.isIrreducible_comp σ.irr _ (map_surj I k v n)), fun x => ?_⟩
  have hc : Continuous (Matrix.GeneralLinearGroup.map (n := Fin n) (I.i k v).toRingHom) :=
    Units.continuous_iff.2 ⟨continuous_matrix fun a b => (I.cont k v).comp (Units.continuous_val.matrix_elem a b),
      continuous_matrix fun a b => (I.cont k v).comp (Units.continuous_coe_inv.matrix_elem a b)⟩
  exact (σ.smooth x).preimage hc

theorem emb_le {F : Type} [Field F] [NumberField F] (w : HeightOneSpectrum (𝓞 F)) (p : ℕ) [Fact p.Prime]
    (f : ℚ_[p] →+* w.adicCompletion F) (hf : Continuous f) (t : ℚ_[p]) (ht : ‖t‖ ≤ 1) : ‖f t‖ ≤ 1 := by
  have hd : DenseRange (Int.cast : ℤ → ℤ_[p]) := PadicInt.denseRange_intCast
  refine hd.induction_on (p := fun z : ℤ_[p] => ‖f z‖ ≤ 1) ⟨t, ht⟩
    (isClosed_le (hf.comp continuous_subtype_val).norm continuous_const) fun m => ?_
  simpa using Formalism.BasicNotions.Examples₂.LocF.norm_int_le w m

theorem exists_pull {D : D7} (I : Ident D) (k v) {n : ℕ} (π : Rep.{0} ℂ (GL (Fin n) ℚ_[D.host.g k]))
    (h : GlobalTheory.SerSys.IrrSm π) : ∃ σ, Nonempty (π ≅ pull I k v σ) := by
  letI := (I.i k v).toRingHom.toAlgebra
  have : ContinuousSMul ℚ_[D.host.g k] ((D.naut.plGw k v).adicCompletion D.host.E) :=
    continuousSMul_of_algebraMap _ _ (I.cont k v)
  let el : ℚ_[D.host.g k] ≃ₗ[ℚ_[D.host.g k]] (D.naut.plGw k v).adicCompletion D.host.E :=
    LinearEquiv.ofBijective (Algebra.linearMap _ _) (I.i k v).bijective
  have hi : Continuous (I.i k v).symm := by
    refine el.toContinuousLinearEquiv.symm.continuous.congr fun y => (I.i k v).injective ?_
    exact (el.toContinuousLinearEquiv.apply_symm_apply y).trans ((I.i k v).apply_symm_apply y).symm
  have hc : Continuous (Matrix.GeneralLinearGroup.map (n := Fin n) (I.i k v).symm.toRingHom) :=
    Units.continuous_iff.2 ⟨continuous_matrix fun a b => hi.comp (Units.continuous_val.matrix_elem a b),
      continuous_matrix fun a b => hi.comp (Units.continuous_coe_inv.matrix_elem a b)⟩
  have hg : ∀ g : GL (Fin n) ℚ_[D.host.g k], Matrix.GeneralLinearGroup.map (I.i k v).symm.toRingHom
      (Matrix.GeneralLinearGroup.map (I.i k v).toRingHom g) = g := fun g =>
    Units.ext (Matrix.ext fun a b => (I.i k v).symm_apply_apply _)
  refine ⟨⟨π, π.ρ.comp (Matrix.GeneralLinearGroup.map (I.i k v).symm.toRingHom), fun x => (h.2 x).preimage hc,
    GlobalTheory.CuspRep.ParLaws.isIrreducible_comp ((GlobalTheory.GLp.Model.isIrrRep_iff _).1 h.1) _ fun g => ⟨_, hg g⟩⟩,
    ⟨Rep.mkIso (Representation.Equiv.mk (LinearEquiv.refl ℂ π) fun g => LinearMap.ext fun x => ?_)⟩⟩
  change π.ρ g x = π.ρ (Matrix.GeneralLinearGroup.map (I.i k v).symm.toRingHom
      (Matrix.GeneralLinearGroup.map (I.i k v).toRingHom g)) x
  rw [hg]

end GlobalTheory.TypeRec.Model

end
