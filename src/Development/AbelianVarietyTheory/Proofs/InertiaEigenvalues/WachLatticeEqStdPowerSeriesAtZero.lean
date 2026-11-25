module

public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot
public import Mathlib.RingTheory.PowerSeries.Inverse
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnramifiedSubfieldLeCyclotomicExt
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIsPtPrimitiveRoot
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PadicNormZpowSubOnePadicValInt
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.T2SpaceLocLatV
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionLatticeGradedOfLevelLe
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionsSpanFullLattice
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionLatticeFullDescends, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeEqStdPowerSeriesAtZero

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionLatticeFullDescends =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionLatticeFullDescends", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnramifiedSubfieldLeCyclotomicExt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL

namespace GlobalTheory.NL.FullDown

section Series

variable {L M : Type} [Field L] [AddCommGroup M] [Module L M]

def Bd (u : ℤ → M) : Prop := ∃ m : ℤ, ∀ k < m, u k = 0

theorem conv_finite (e : PowerSeries L) {u : ℤ → M} (hu : Bd u) (k : ℤ) :
    (Function.support fun j : ℕ => PowerSeries.coeff j e • u (k - (j : ℤ))).Finite := by
  obtain ⟨m, hm⟩ := hu
  refine (Set.finite_le_nat (k - m).toNat).subset fun j hj => ?_
  by_contra h
  simp only [Set.mem_setOf_eq, not_le] at h
  apply hj
  have : k - (j : ℤ) < m := by omega
  simp [hm _ this]

theorem conv_eq_sum (e : PowerSeries L) {u : ℤ → M} {m : ℤ} (hm : ∀ k < m, u k = 0) (k : ℤ) (N : ℕ)
    (hN : k - m < N) :
    conv e u k = ∑ j ∈ Finset.range N, PowerSeries.coeff j e • u (k - (j : ℤ)) := by
  unfold conv
  apply finsum_eq_sum_of_support_subset
  intro j hj
  by_contra h
  simp only [Finset.coe_range, Set.mem_Iio, not_lt] at h
  apply hj
  have : k - (j : ℤ) < m := by omega
  simp [hm _ this]

theorem conv_low (e : PowerSeries L) {u : ℤ → M} {m : ℤ} (hm : ∀ k < m, u k = 0) :
    ∀ k < m, conv e u k = 0 := by
  intro k hk
  apply finsum_eq_zero_of_forall_eq_zero
  intro j
  rw [hm _ (by omega), smul_zero]

theorem conv_mem (e : PowerSeries L) {u : ℤ → M} (hu : Bd u) (D : Submodule L M) (hD : ∀ k, u k ∈ D)
    (k : ℤ) : conv e u k ∈ D := by
  unfold conv
  rw [finsum_eq_sum _ (conv_finite e hu k)]
  exact D.sum_mem fun j _ => D.smul_mem _ (hD _)

theorem conv_X_pow (a : ℕ) (u : ℤ → M) (k : ℤ) :
    conv ((PowerSeries.X : PowerSeries L) ^ a) u k = u (k - a) := by
  unfold conv
  rw [finsum_eq_single _ a]
  · simp
  · intro j hj
    simp [PowerSeries.coeff_X_pow, hj]

theorem conv_mul (a b : PowerSeries L) {u : ℤ → M} (hu : Bd u) :
    conv (a * b) u = conv a (conv b u) := by
  obtain ⟨m, hm⟩ := hu
  funext k
  obtain ⟨N, hN⟩ : ∃ N : ℕ, k - m < N := ⟨(k - m).toNat + 1, by omega⟩
  rw [conv_eq_sum _ hm k N hN, conv_eq_sum _ (conv_low b hm) k N hN]
  have h1 : ∀ x ∈ Finset.range N, PowerSeries.coeff x a • conv b u (k - (x : ℤ)) =
      ∑ y ∈ Finset.range N, (PowerSeries.coeff x a * PowerSeries.coeff y b) • u (k - ((x + y : ℕ) : ℤ)) := by
    intro x _
    rw [conv_eq_sum _ hm _ N (by omega), Finset.smul_sum]
    refine Finset.sum_congr rfl fun y _ => ?_
    rw [mul_smul]
    congr 3
    push_cast; ring
  rw [Finset.sum_congr rfl h1, ← Finset.sum_product']
  have h2 : ∀ j ∈ Finset.range N, PowerSeries.coeff j (a * b) • u (k - (j : ℤ)) =
      ∑ p ∈ (Finset.range N ×ˢ Finset.range N) with p.1 + p.2 = j,
        (PowerSeries.coeff p.1 a * PowerSeries.coeff p.2 b) • u (k - ((p.1 + p.2 : ℕ) : ℤ)) := by
    intro j hj
    rw [PowerSeries.coeff_mul, Finset.sum_smul]
    refine Finset.sum_congr ?_ fun p hp => ?_
    · ext p
      simp only [Finset.mem_range] at hj
      simp only [Finset.HasAntidiagonal.mem_antidiagonal, Finset.mem_filter, Finset.mem_product, Finset.mem_range]
      exact ⟨fun h => ⟨⟨by omega, by omega⟩, h⟩, fun h => h.2⟩
    · rw [(Finset.mem_filter.1 hp).2]
  rw [Finset.sum_congr rfl h2, Finset.sum_fiberwise_eq_sum_filter]
  apply Finset.sum_filter_of_ne
  intro p _ hp
  by_contra h
  simp only [Finset.mem_range, not_lt] at h
  apply hp
  rw [hm _ (by push_cast; omega), smul_zero]

theorem conv_add (e : PowerSeries L) {u w : ℤ → M} (hu : Bd u) (hw : Bd w) :
    conv e (u + w) = conv e u + conv e w := by
  funext k
  simp only [conv, Pi.add_apply, smul_add]
  exact finsum_add_distrib (conv_finite e hu k) (conv_finite e hw k)

theorem conv_smul (e : PowerSeries L) (c : L) {u : ℤ → M} (hu : Bd u) :
    conv e (c • u) = c • conv e u := by
  funext k
  simp only [conv, Pi.smul_apply]
  rw [smul_finsum' c (conv_finite e hu k)]
  exact finsum_congr fun j => smul_comm _ _ _

theorem conv_zero (e : PowerSeries L) : conv e (0 : ℤ → M) = 0 := by
  funext k
  simp [conv]

theorem Bd.conv {u : ℤ → M} (hu : Bd u) (e : PowerSeries L) : Bd (conv e u) :=
  let ⟨m, hm⟩ := hu
  ⟨m, conv_low e hm⟩

theorem Bd.add {u w : ℤ → M} (hu : Bd u) (hw : Bd w) : Bd (u + w) := by
  obtain ⟨m, hm⟩ := hu
  obtain ⟨m', hm'⟩ := hw
  refine ⟨min m m', fun k hk => ?_⟩
  simp [hm k (lt_of_lt_of_le hk (min_le_left _ _)), hm' k (lt_of_lt_of_le hk (min_le_right _ _))]

theorem Bd.smul {u : ℤ → M} (hu : Bd u) (c : L) : Bd (c • u) :=
  let ⟨m, hm⟩ := hu
  ⟨m, fun k hk => by simp [hm k hk]⟩

theorem conv_latSpan {ι : Type} (ex : ι → ℤ → M) (hs : ∀ x, Bd (ex x)) (q : PowerSeries L)
    (Λ : Submodule L (ℤ → M)) (hx : ∀ (e : PowerSeries L) x, conv e (conv q (ex x)) ∈ Λ) (f : ℤ → M)
    (hf : f ∈ latSpan (LL := L) ex) : Bd f ∧ conv q f ∈ Λ := by
  induction hf using Submodule.span_induction with
  | mem f hf =>
    obtain ⟨e, x, rfl⟩ := hf
    refine ⟨(hs x).conv e, ?_⟩
    rw [← conv_mul _ _ (hs x), mul_comm, conv_mul _ _ (hs x)]
    exact hx e x
  | zero => exact ⟨⟨0, fun _ _ => rfl⟩, by rw [conv_zero]; exact Λ.zero_mem⟩
  | add f g _ _ hf hg => exact ⟨hf.1.add hg.1, by rw [conv_add _ hf.1 hg.1]; exact Λ.add_mem hf.2 hg.2⟩
  | smul c f _ hf => exact ⟨hf.1.smul c, by rw [conv_smul _ _ hf.1]; exact Λ.smul_mem c hf.2⟩

theorem latSpan_conv {ι : Type} (ex : ι → ℤ → M) (hs : ∀ x, Bd (ex x)) (q : PowerSeries L) (f : ℤ → M)
    (hf : f ∈ latSpan (LL := L) ex) : Bd f ∧ conv q f ∈ latSpan (LL := L) ex :=
  conv_latSpan ex hs q (latSpan (LL := L) ex)
    (fun e x => Submodule.subset_span ⟨e * q, x, (conv_mul _ _ (hs x)).symm⟩) f hf

def Tw (p : L) (φ : M →ₗ[L] M) : (ℤ → M) →ₗ[L] (ℤ → M) :=
  LinearMap.pi fun k => (p ^ k) • φ.comp (LinearMap.proj k)

theorem Tw_apply (p : L) (φ : M →ₗ[L] M) (f : ℤ → M) (k : ℤ) : Tw p φ f k = p ^ k • φ (f k) := rfl

theorem Tw_conv {p : L} (hp : p ≠ 0) (φ : M →ₗ[L] M) (e : PowerSeries L) {f : ℤ → M} (hf : Bd f) :
    Tw p φ (conv e f) = conv (PowerSeries.rescale p e) (Tw p φ f) := by
  funext k
  rw [Tw_apply]
  unfold conv
  have h := map_finsum ((p ^ k) • φ) (conv_finite e hf k)
  rw [LinearMap.smul_apply] at h
  rw [h]
  refine finsum_congr fun j => ?_
  rw [LinearMap.smul_apply, map_smul, Tw_apply, PowerSeries.coeff_rescale, smul_smul, smul_smul]
  congr 1
  rw [zpow_sub₀ hp, zpow_natCast]
  field_simp

theorem map_conv {ι : Type} (ex : ι → ℤ → M) (hs : ∀ x, Bd (ex x)) {p : L} (hp : p ≠ 0)
    (φ : M →ₗ[L] M) (e : PowerSeries L) (f : ℤ → M)
    (hf : f ∈ (latSpan (LL := L) ex).map (Tw p φ)) : conv e f ∈ (latSpan (LL := L) ex).map (Tw p φ) := by
  obtain ⟨g, hg, rfl⟩ := hf
  obtain ⟨h1, h2⟩ := latSpan_conv ex hs (PowerSeries.rescale p⁻¹ e) g hg
  refine ⟨_, h2, ?_⟩
  rw [Tw_conv hp φ _ h1, PowerSeries.rescale_rescale, inv_mul_cancel₀ hp, PowerSeries.rescale_one]
  rfl

theorem full_of_conv {p : L} (hp : p ≠ 0) (φ : M →ₗ[L] M) (hφ : Function.Injective φ)
    (D D' : Submodule L M) (hD : ∀ x ∈ D', φ x ∈ D) (Λ Λ' : Submodule L (ℤ → M))
    (q : PowerSeries L) (hq : q ≠ 0) (h : ∀ f ∈ Λ, conv q f ∈ Λ'.map (Tw p φ)) (hF : Full D Λ) :
    Full D' Λ' := by
  obtain ⟨m, hm⟩ := hF
  obtain ⟨a, w, hw, hqw⟩ : ∃ (a : ℕ) (w : PowerSeries L), IsUnit w ∧ q = PowerSeries.X ^ a * w :=
    ⟨q.order.toNat, q.divXPowOrder, PowerSeries.isUnit_divided_by_X_pow_order hq,
      PowerSeries.X_pow_order_mul_divXPowOrder.symm⟩
  obtain ⟨w', hw'⟩ := hw.exists_right_inv
  refine ⟨m + a, fun g hg hg0 => ?_⟩
  set u : ℤ → M := fun k => Tw p φ g (k + a) with hu
  have hu0 : ∀ k < (m : ℤ), u k = 0 := fun k hk => by
    simp only [hu, Tw_apply]
    rw [hg0 _ (by push_cast; omega), map_zero, smul_zero]
  have hB : Bd u := ⟨m, hu0⟩
  have h1 := h _ (hm (conv w' u) (conv_mem w' hB D fun k => D.smul_mem _ (hD _ (hg _)))
    (conv_low w' hu0))
  rw [← conv_mul _ _ hB, hqw, mul_assoc, hw', mul_one] at h1
  obtain ⟨g', hg', he⟩ := h1
  have : g' = g := by
    funext k
    have h2 := congrFun he k
    rw [conv_X_pow, hu] at h2
    simp only [sub_add_cancel, Tw_apply] at h2
    exact hφ (smul_right_injective M (zpow_ne_zero k hp) h2)
  exact this ▸ hg'

end Series

section Generic

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL]
    [CommRing O] [Algebra O LL] [TopologicalSpace LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

theorem p_ne (W : LocWach PD LL O v n) : (PD.p : LL) ≠ 0 := by
  intro h
  have := W.v_l
  rw [h, AddValuation.map_zero] at this
  exact WithTop.top_ne_coe this

theorem phi_inj (T : LocLat G Qp LL O) : Function.Injective (φVB PD (LL := LL) (V := T.V)) :=
  Module.Flat.lTensor_preserves_injective_linearMap (M := T.V) PD.φ.toLinearMap PD.φ_inj

theorem phi_mem (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (i : ZMod n) (x : T.V ⊗[Qp] B)
    (hx : x ∈ DcrisL PD T.ρ (W.emb (i - 1))) :
    φVB PD (LL := LL) (V := T.V) x ∈ DcrisL PD T.ρ (W.emb i) := by
  simp only [DcrisL, Dcris, Submodule.mem_inf, Submodule.mem_iInf, LinearMap.mem_ker,
    LinearMap.sub_apply, LinearMap.id_apply, LinearMap.smul_apply, sub_eq_zero] at hx ⊢
  obtain ⟨h1, h2⟩ := hx
  have a1 : ∀ g (y : T.V ⊗[Qp] B), actVB PD T.ρ g (φVB PD (LL := LL) (V := T.V) y) =
      φVB PD (LL := LL) (V := T.V) (actVB PD T.ρ g y) := by
    intro g y
    induction y using TensorProduct.induction_on with
    | zero => simp
    | tmul a b => simp [actVB, φVB, PD.φ_comm]
    | add a b ha hb => simp only [map_add (f := _), ha, hb]
  have a2 : ∀ (c : K₀) (y : T.V ⊗[Qp] B),
      mulVB (K₀ := K₀) (B := B) (V := T.V) (LL := LL) (PD.σ c) (φVB PD (LL := LL) (V := T.V) y) =
      φVB PD (LL := LL) (V := T.V) (mulVB (K₀ := K₀) (B := B) (V := T.V) (LL := LL) c y) := by
    intro c y
    induction y using TensorProduct.induction_on with
    | zero => simp
    | tmul a b => simp [mulVB, φVB, PD.φ_K₀]
    | add a b ha hb => simp only [map_add (f := _), ha, hb]
  refine ⟨fun g => by rw [a1, h1], fun c => ?_⟩
  obtain ⟨c, rfl⟩ := PD.σ_bij.2 c
  have h3 := DFunLike.congr_fun (W.emb_σ (i - 1)) c
  rw [sub_add_cancel, AlgHom.comp_apply] at h3
  rw [a2, h2, map_smul, h3]

theorem lev_q_ne (W : LocWach PD LL O v n) (i : ZMod n) (ζ : LL)
    (hζ : ∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) : W.lev i ζ W.q ≠ 0 := by
  intro h
  obtain ⟨E, h0, h1, h2⟩ := W.lev_π i ζ hζ
  obtain ⟨j, hj⟩ := hζ
  have hz : ζ ≠ 0 := hj.ne_zero (pow_ne_zero _ PD.hp.ne_zero)
  have h3 : (letπ : LetA O n) * W.q = (1 + letπ) ^ PD.p - 1 := by
    funext a
    simpa [letπ, LocWach.q] using W.q₀_def
  have h4 := congrArg (W.lev i ζ) h3
  rw [map_mul, h, mul_zero, map_sub, map_pow, map_add (f := _), map_one, h2] at h4
  have h5 := congrArg (fun f => PowerSeries.constantCoeff (PowerSeries.derivative (R := LL) f)) h4
  simp [Derivation.leibniz_pow, h0, h1, hz, p_ne W] at h5

theorem root_pow {ζ : LL} {p : ℕ} (hp : p.Prime) (hζ : ∃ j : ℕ, IsPrimitiveRoot ζ (p ^ j)) :
    ∃ j : ℕ, IsPrimitiveRoot (ζ ^ p) (p ^ j) := by
  obtain ⟨j, hj⟩ := hζ
  cases j with
  | zero =>
    refine ⟨0, ?_⟩
    have : ζ = 1 := by simpa using hj
    simp [this]
  | succ j => exact ⟨j, hj.pow (pow_pos hp.pos _) (pow_succ' _ _)⟩

theorem lev_Q_ne (W : LocWach PD LL O v n)
    (hφ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ f : LetA O n,
      W.lev i ζ (W.φA f) = PowerSeries.rescale (PD.p : LL) (W.lev (i - 1) (ζ ^ PD.p) f))
    (r : ℕ) : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) →
      W.lev i ζ ((W.φA ^ r) W.q) ≠ 0 := by
  induction r with
  | zero => intro i ζ hζ; simpa using lev_q_ne W i ζ hζ
  | succ r ih =>
    intro i ζ hζ h
    rw [pow_succ', AlgHom.mul_apply, hφ i ζ hζ] at h
    apply ih _ _ (root_pow PD.hp hζ)
    apply PowerSeries.rescale_injective (p_ne W)
    rw [h, map_zero]

theorem wachExpansion_smul_compatible (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL)
    (e : ↥(W.N T) → ℤ → T.V ⊗[Qp] B) (hs : ∀ x, Bd (e x))
    (he : ∀ x k, W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (e x k))
    (a : LetA O n) (x : ↥(W.N T)) : e (a • x) = conv (W.lev i ζ a) (e x) := by
  have hinj : Function.Injective (ιV PD (LL := LL) (V := T.V)) :=
    Module.Flat.lTensor_preserves_injective_linearMap (M := T.V)
      (PD.ι.toLinearMap.restrictScalars Qp) PD.ι_inj
  funext k
  apply hinj
  rw [← he, W.levN_smul]
  unfold conv
  rw [map_finsum _ (conv_finite (W.lev i ζ a) (hs x) k)]
  refine finsum_congr fun j => ?_
  rw [LinearMap.map_smul, he]

theorem pow_mem (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) {M : Type} [AddCommGroup M]
    [Module LL M] (e : ↥(W.N T) →+ (ℤ → M)) (lv : LetA O n → PowerSeries LL)
    (he : ∀ (a : LetA O n) x, e (a • x) = conv (lv a) (e x))
    (Λ : Submodule LL (ℤ → M)) (hΛ : ∀ (a : PowerSeries LL), ∀ f ∈ Λ, conv a f ∈ Λ)
    (hφ : ∀ (x : ↥(W.N T)) (m : ℕ) (hx : W.Q ^ m • W.φD T (x : W.DD T) ∈ W.N T), e ⟨_, hx⟩ ∈ Λ) :
    ∃ k : ℕ, ∀ y : ↥(W.N T), e (W.Q ^ k • y) ∈ Λ := by
  have hs : ∀ (a : LetA O n) x, e x ∈ Λ → e (a • x) ∈ Λ := fun a x hx => by
    rw [he]; exact hΛ _ _ hx
  let U : Submodule (LetA O n) ↥(W.N T) :=
    { carrier := {x | e x ∈ Λ}
      zero_mem' := by simp
      add_mem' := fun {a b} ha hb => by
        simp only [Set.mem_setOf_eq, map_add (f := _)] at ha hb ⊢
        exact Λ.add_mem ha hb
      smul_mem' := fun a x hx => hs a x hx }
  let U' : Submodule (LetA O n) (W.DD T) := U.map (W.N T).subtype
  have mono : ∀ (z : W.DD T) (a b : ℕ), W.Q ^ a • z ∈ U' → W.Q ^ (b + a) • z ∈ U' := by
    intro z a b h
    rw [pow_add, mul_smul]
    exact U'.smul_mem _ h
  have key : ∀ (S : Set (W.DD T)) (k : ℕ), (∀ z ∈ S, W.Q ^ k • z ∈ U') →
      ∀ z ∈ Submodule.span (LetA O n) S, W.Q ^ k • z ∈ U' := by
    intro S k hS z hz
    have : Submodule.span (LetA O n) S ≤ U'.comap (W.Q ^ k • LinearMap.id) :=
      Submodule.span_le.2 fun z hz => hS z hz
    exact this hz
  have fin : ∀ S : Finset (W.DD T), (∀ z ∈ S, ∃ k : ℕ, W.Q ^ k • z ∈ U') →
      ∃ k : ℕ, ∀ z ∈ S, W.Q ^ k • z ∈ U' := by
    intro S hS
    choose! f hf using hS
    refine ⟨S.sup f, fun z hz => ?_⟩
    obtain ⟨b, hb⟩ := Nat.exists_eq_add_of_le' (Finset.le_sup (f := f) hz)
    rw [hb]
    exact mono z _ _ (hf z hz)
  have one : ∀ z ∈ W.N T, ∃ k : ℕ, W.Q ^ k • z ∈ U' := by
    intro z hz
    obtain ⟨k, hk⟩ := W.N_φinv T z hz
    obtain ⟨S, hS, hzS⟩ := Submodule.mem_span_finite_of_mem_span hk
    obtain ⟨k', hk'⟩ := fin S fun w hw => by
      obtain ⟨x, hx, rfl⟩ := hS hw
      obtain ⟨m, hm⟩ := W.N_φ T x hx
      exact ⟨m, ⟨_, hm⟩, hφ ⟨x, hx⟩ m hm, rfl⟩
    refine ⟨k' + k, ?_⟩
    rw [pow_add, mul_smul]
    exact key S k' hk' _ hzS
  obtain ⟨S, hS⟩ := W.N_fg T
  obtain ⟨k, hk⟩ := fin S fun z hz => one z (hS ▸ Submodule.subset_span hz)
  refine ⟨k, fun y => ?_⟩
  obtain ⟨x, hx, hxy⟩ := key S k hk y (by rw [hS]; exact y.2)
  have : x = W.Q ^ k • y := Subtype.ext hxy
  exact this ▸ hx

variable {Zl Ai : Type} [CommRing Zl] [CommRing Ai] [Algebra Zl O] [Algebra Zl Ai]

theorem full_down_generic (W : LocWach PD LL O v n) {RW : Type} [CommRing RW] [Algebra O RW]
    {inclR : (O ⊗[Zl] Ai) →ₐ[O] RW} {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : O ⊗[Zl] Ai}
    {E : EtTie W (O ⊗[Zl] Ai) RW inclR φR gR πA} {ιdR : Ai →+* BdR} {p1 : Ai} {tS zS : BdR}
    (C : CmpTie W E ιdR p1 tS zS) (T : LocLat G Qp LL O) (hT : IsCrys PD T.ρ) (i : ZMod n) (ζ : LL)
    (hζ : ∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j))
    (hF : Full (DcrisL PD T.ρ (W.emb i)) (latSpan (LL := LL) fun x => C.levB T i ζ x)) :
    Full (DcrisL PD T.ρ (W.emb (i - 1))) (latSpan (LL := LL) fun x => C.levB T (i - 1) (ζ ^ PD.p) x) := by
  have hp := p_ne W
  have hs : ∀ x, Bd (C.levB T i ζ x) := C.levB_supp T i ζ
  have hs' : ∀ x, Bd (C.levB T (i - 1) (ζ ^ PD.p) x) := C.levB_supp T _ _
  have hΛ := map_conv (fun x => C.levB T (i - 1) (ζ ^ PD.p) x) hs' hp (φVB PD (LL := LL) (V := T.V))
  have he := wachExpansion_smul_compatible W T i ζ (fun x => C.levB T i ζ x) hs (C.levN_eq T i ζ)
  obtain ⟨k, hk⟩ := pow_mem W T (C.levB T i ζ) (W.lev i ζ) he _ hΛ (fun x m hx => by
    have : C.levB T i ζ ⟨_, hx⟩ = conv (W.lev i ζ (W.Q ^ m))
        (Tw (PD.p : LL) (φVB PD (LL := LL) (V := T.V)) (C.levB T (i - 1) (ζ ^ PD.p) x)) :=
      funext fun k => C.levB_φ T hT i ζ hζ x m hx k
    rw [this]
    exact hΛ _ _ ⟨_, Submodule.subset_span ⟨1, x, (GlobalTheory.NL.Model.conv_one _).symm⟩, rfl⟩)
  refine full_of_conv hp _ (phi_inj T) _ _ (phi_mem W T i) _ _ (W.lev i ζ (W.Q ^ k)) ?_ ?_ hF
  · rw [map_pow]
    exact pow_ne_zero _ (lev_Q_ne W C.lev_φ _ i ζ hζ)
  · intro f hf
    refine (conv_latSpan _ hs _ _ (fun e x => hΛ _ _ ?_) f hf).2
    rw [← he]
    exact hk x

end Generic



theorem full_down : ∀ (loc : LocTheory) (locA : ∀ (l : ℕ) [Fact l.Prime], LocAinf l (loc l)) (HW : HWOf loc) (F : FonOf loc locA HW) (Cm : CmpOf loc locA HW F) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; let E := ((F l).E K s LL h).tie; let C := Cm l; ∀ T : Lt K LL, IsCrys ((loc l).PD K) T.ρ → ∀ (i : Let K) (ζ : ↥LL.1), (∃ j : ℕ, IsPrimitiveRoot ζ (l ^ j)) → Full (Di (HW l) h T i) (Lat C h T i ζ) → Full (Di (HW l) h T (i - 1)) (Lat C h T (i - 1) (ζ ^ l)) := by
  intro loc locA HW F Cm l _ K s LL h W E C T hT i ζ hζ hF
  have hp : ((loc l).PD K).p = l := (loc l).PD_p K
  have := full_down_generic W (C.C K s LL h).tie T hT i ζ (by rw [hp]; exact hζ) hF
  have e : ζ ^ ((loc l).PD K).p = ζ ^ l := by rw [hp]
  rw [e] at this
  exact this

end GlobalTheory.NL.FullDown
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionLatticeFullDescends =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeEqStdPowerSeriesAtZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeEqStdPowerSeriesAtZero", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnramifiedSubfieldLeCyclotomicExt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIsPtPrimitiveRoot\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PadicNormZpowSubOnePadicValInt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.T2SpaceLocLatV\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionLatticeFullDescends\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionLatticeGradedOfLevelLe\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachExpansionsSpanFullLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL

noncomputable section

namespace GlobalTheory.NL.AtZero

section Series

variable {L M ι : Type} [Field L] [AddCommGroup M] [Module L M]

theorem conv_mem (e : PowerSeries L) {u : ℤ → M} {m : ℤ} (hm : ∀ k < m, u k = 0) (k : ℤ)
    (S : Submodule L M) (hS : ∀ j : ℕ, PowerSeries.coeff j e ≠ 0 → u (k - j) ∈ S) :
    conv e u k ∈ S := by
  unfold conv
  rw [finsum_eq_sum _ (Model.conv_finite e hm k)]
  refine S.sum_mem fun j _ => ?_
  by_cases hj : PowerSeries.coeff j e = 0
  · rw [hj, zero_smul]; exact S.zero_mem
  · exact S.smul_mem _ (hS j hj)

theorem conv_X_pow (u : ℤ → M) (n : ℕ) (k : ℤ) :
    conv ((PowerSeries.X : PowerSeries L) ^ n) u k = u (k - n) := by
  unfold conv
  rw [finsum_eq_single _ n]
  · simp
  · intro j hj
    simp [PowerSeries.coeff_X_pow, hj]

theorem std_of_lower (ex : ι → ℤ → M) (D : Submodule L M) (hD : ∀ x k, ex x k ∈ D) (m₀ : ℤ)
    (hs : ∀ x, ∀ k < m₀, ex x k = 0)
    (hlow : ∀ (S : Submodule L M) (k : ℤ), k ≠ 0 → (∀ y, ∀ j < k, ex y j ∈ S) → ∀ x, ex x k ∈ S)
    (hF : Full D (latSpan ex)) (hG : Graded (latSpan (LL := L) ex)) : Std D (latSpan ex) := by
  have up : ∀ (S : Submodule L M) (a : ℤ) (n : ℕ), (∀ y, ∀ j < a, ex y j ∈ S) →
      (∀ j, a ≤ j → j < a + n → j ≠ 0) → ∀ y, ∀ j < a + n, ex y j ∈ S := by
    intro S a n h0
    induction n with
    | zero => intro _ y j hj; exact h0 y j (by omega)
    | succ n ih =>
      intro hne y j hj
      have ih' := ih fun j h1 h2 => hne j h1 (by omega)
      by_cases hlt : j < a + n
      · exact ih' y j hlt
      · obtain rfl : j = a + n := by omega
        exact hlow S _ (hne _ (by omega) (by omega)) ih' y
  have hneg : ∀ y, ∀ j < (0 : ℤ), ex y j = 0 := by
    intro y j hj
    by_cases hj' : j < m₀
    · exact hs y j hj'
    · exact (Submodule.mem_bot L).1 (up ⊥ m₀ (-m₀).toNat (fun y j hj => by simp [hs y j hj])
        (fun j h1 h2 => by omega) y j (by omega))
  let S : Submodule L M := Submodule.span L (Set.range fun x => ex x 0)
  have hS : ∀ y j, ex y j ∈ S := by
    intro y j
    refine up S 1 j.toNat (fun y j hj => ?_) (fun j h1 h2 => by omega) y j (by omega)
    by_cases h0 : j = 0
    · subst h0; exact Submodule.subset_span ⟨y, rfl⟩
    · rw [hneg y j (by omega)]; exact S.zero_mem
  have hDS : D ≤ S := by
    intro d hd
    obtain ⟨m, hm⟩ := hF
    have h1 := hm (Pi.single (m : ℤ) d) (fun k => by
      by_cases hk : k = m
      · subst hk; simpa using hd
      · simp [Pi.single_eq_of_ne hk]) (fun k hk => Pi.single_eq_of_ne hk.ne _)
    simpa using (Model.latSpan_coeff ex S hS (fun x => ⟨m₀, hs x⟩) _ h1).1 m
  have hsingle : ∀ (n : ℕ), ∀ d ∈ S, (Pi.single (n : ℤ) d : ℤ → M) ∈ latSpan (LL := L) ex := by
    intro n d hd
    induction hd using Submodule.span_induction with
    | mem d hd =>
      obtain ⟨x, rfl⟩ := hd
      have h1 : conv ((PowerSeries.X : PowerSeries L) ^ n) (ex x) ∈ latSpan (LL := L) ex :=
        Submodule.subset_span ⟨_, x, rfl⟩
      have h2 := ((hG _).1 h1).2 n
      rwa [conv_X_pow, sub_self] at h2
    | zero => simp
    | add a b _ _ ha hb => rw [Pi.single_add]; exact Submodule.add_mem _ ha hb
    | smul c a _ ha => rw [Pi.single_smul]; exact Submodule.smul_mem _ c ha
  intro f
  constructor
  · intro hf
    refine ⟨(Model.latSpan_coeff ex D hD (fun x => ⟨m₀, hs x⟩) f hf).1, ?_⟩
    induction hf using Submodule.span_induction with
    | mem f hf =>
      obtain ⟨e, x, rfl⟩ := hf
      intro k hk
      apply finsum_eq_zero_of_forall_eq_zero
      intro j
      rw [hneg x _ (by omega), smul_zero]
    | zero => exact fun _ _ => rfl
    | add f g _ _ hf hg => intro k hk; simp [hf k hk, hg k hk]
    | smul c f _ hf => intro k hk; simp [hf k hk]
  · rintro ⟨h1, h2⟩
    refine (hG f).2 ⟨⟨0, h2⟩, fun k => ?_⟩
    by_cases hk : k < 0
    · rw [h2 k hk]; simp
    · obtain ⟨n, rfl⟩ : ∃ n : ℕ, k = n := ⟨k.toNat, by omega⟩
      exact hsingle n _ (hDS (h1 _))

theorem uniform_supp {A N : Type} [CommRing A] [AddCommGroup N] [Module A N] [Module.Finite A N]
    (ex : N →+ ℤ → M) (lev : A → PowerSeries L) (hs : ∀ x, ∃ m : ℤ, ∀ k < m, ex x k = 0)
    (hsm : ∀ a x, ex (a • x) = conv (lev a) (ex x)) : ∃ m₀ : ℤ, ∀ x, ∀ k < m₀, ex x k = 0 := by
  obtain ⟨s, hsp⟩ := Module.Finite.fg_top (R := A) (M := N)
  choose m hm using hs
  obtain ⟨b, hb⟩ := (s.finite_toSet.image m).bddBelow
  refine ⟨b, fun x => ?_⟩
  have hx : x ∈ Submodule.span A (s : Set N) := hsp ▸ Submodule.mem_top
  induction hx using Submodule.span_induction with
  | mem x hx => exact fun k hk => hm x k (lt_of_lt_of_le hk (hb ⟨x, hx, rfl⟩))
  | zero => intro k _; simp
  | add x y _ _ hx hy => intro k hk; simp [hx k hk, hy k hk]
  | smul a x _ hx =>
    intro k hk
    rw [hsm]
    apply finsum_eq_zero_of_forall_eq_zero
    intro j
    rw [hx _ (by omega), smul_zero]

end Series

section Concrete

variable {l : ℕ} [Fact l.Prime] {P : LocPrime l} {AI : LocAinf l P} {H : LocHW l P} {F : LocFon l P AI H}
  {K : FinExt l} {s : ℕ} {LL : FinExt l}

theorem chi_gam_zpow_ne_one
    (W : LocWach (P.PD K) ↥LL.1 ↥(OL LL) (P.v LL) (Module.finrank ℚ_[l] ↥(K0 K))) (k : ℤ) (hk : k ≠ 0) :
    algebraMap ↥(OL LL) ↥LL.1 (W.χΓ W.gam : ↥(OL LL)) ^ k ≠ 1 := by
  obtain ⟨g, hg⟩ := W.resΓ_onto W.gam
  have h1 := W.gam_gen
  rw [← hg, W.χΓ_res] at h1 ⊢
  rw [← map_one (algebraMap ℚ_[l] ↥LL.1), ← map_sub] at h1
  have h2 := GlobalTheory.Cyc.DictKs.norm_eq_of_v P LL _ _ h1
  have h3 := GlobalTheory.Cyc.LiftExp.norm_zpow_sub_one l W.s
    ⟨W.s_pos, fun h => W.s_two ((P.PD_p K).trans h)⟩ _ h2 k hk
  intro h
  rw [← map_zpow₀, map_eq_one_iff _ (algebraMap ℚ_[l] ↥LL.1).injective] at h
  rw [h, sub_self, norm_zero] at h3
  exact (zpow_pos (Nat.cast_pos.mpr (Fact.out : l.Prime).pos) _).ne h3



theorem lower (C : LocCmpT l P AI H F) (h : Good K s LL) (T : Lt K LL) (hT : IsCrys (P.PD K) T.ρ)
    (i : Let K) (S : Submodule ↥LL.1 (T.V ⊗[ℚ_[l]] P.R.B)) (k : ℤ) (hk : k ≠ 0)
    (hS : ∀ y, ∀ j < k, ex C h T i 1 y j ∈ S) (x : ↥((H.W K s LL h).N T)) :
    ex C h T i 1 x k ∈ S := by
  have hmem := (H.W K s LL h).N_Γ T (H.W K s LL h).gam x x.2
  obtain ⟨y, hy, hxy⟩ := (H.W K s LL h).N_π T (H.W K s LL h).gam x x.2
  have h1 := (C.C K s LL h).tie.levB_Γ T hT (H.W K s LL h).gam i 1 1 0 0 (by simp)
    (by
      rw [Nat.cast_zero, Nat.cast_zero, sub_zero, P.v_O]
      exact Subtype.property _) (pow_zero _).symm x hmem k
  have h2 : (⟨_, hmem⟩ : ↥((H.W K s LL h).N T)) = x + (letπ : AA K LL) • ⟨y, hy⟩ := by
    apply Subtype.ext
    change _ = (x : (H.W K s LL h).DD T) + (letπ : AA K LL) • y
    rw [← hxy]; simp
  rw [h2, (C.C K s LL h).tie.levB T i 1 |>.map_add] at h1
  have h3 : ex C h T i 1 x k + ex C h T i 1 ((letπ : AA K LL) • ⟨y, hy⟩) k =
      (algebraMap ↥(OL LL) ↥LL.1 ((H.W K s LL h).χΓ (H.W K s LL h).gam : ↥(OL LL))) ^ k •
        ex C h T i 1 x k := h1
  have hex : ∀ (a : AA K LL) (x : ↥((H.W K s LL h).N T)),
      ex C h T i 1 (a • x) = conv ((H.W K s LL h).lev i 1 a) (ex C h T i 1 x) := by
    intro a x
    funext k
    have hinj : Function.Injective (ιV (P.PD K) : T.V ⊗[ℚ_[l]] P.R.B →ₗ[↥LL.1] T.V ⊗[ℚ_[l]] P.R.BdR) := by
      have hf : Function.Injective (((P.PD K).ι.toLinearMap).restrictScalars ℚ_[l]) := (P.PD K).ι_inj
      exact Module.Flat.lTensor_preserves_injective_linearMap (M := T.V) _ hf
    apply hinj
    obtain ⟨m, hm⟩ := (C.C K s LL h).tie.levB_supp T i 1 x
    unfold ex
    rw [← (C.C K s LL h).tie.levN_eq, (H.W K s LL h).levN_smul, conv,
      map_finsum _ (Model.conv_finite _ hm k)]
    simp only [map_smul]
    congr 1
    funext j
    exact congrArg (fun z => PowerSeries.coeff j ((H.W K s LL h).lev i 1 a) • z)
      ((C.C K s LL h).tie.levN_eq T i 1 x (k - j))
  have h4 : ex C h T i 1 ((letπ : AA K LL) • ⟨y, hy⟩) k ∈ S := by
    rw [hex (letπ : AA K LL) ⟨y, hy⟩]
    obtain ⟨m, hm⟩ := (C.C K s LL h).tie.levB_supp T i 1 ⟨y, hy⟩
    refine conv_mem _ hm k S fun j hj => hS _ _ ?_
    have h0 := (Model.mem_van _ _ _ _ _).1 (Model.pi_van_one (H.W K s LL h) i).1 0 (by omega)
    have : j ≠ 0 := by rintro rfl; exact hj h0
    omega
  have h5 := sub_ne_zero.2 (chi_gam_zpow_ne_one (H.W K s LL h) k hk)
  rw [← S.smul_mem_iff h5, sub_smul, one_smul, ← h3, add_sub_cancel_left]
  exact h4

end Concrete

theorem lat_one_std : ∀ (loc : LocTheory) (locA : ∀ (l : ℕ) [Fact l.Prime], LocAinf l (loc l)) (locT : ∀ (l : ℕ) [Fact l.Prime], Formalism.BasicNotions.LocTied l (loc l) (locA l)) (HW : HWOf loc) (F : FonOf loc locA HW) (Cm : CmpOf loc locA HW F) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; let E := ((F l).E K s LL h).tie; let C := Cm l; ∀ T : Lt K LL, IsCrys ((loc l).PD K) T.ρ → ∀ i : Let K, Std (Di (HW l) h T i) (Lat C h T i 1) := by
  intro loc locA locT HW F Cm l _ K s LL h W E C T hT i
  have down : ∀ (n : ℕ) (i : Let K) (ζ : ↥LL.1), IsPrimitiveRoot ζ (l ^ n) →
      Full (Di (HW l) h T (i + n)) (Lat C h T (i + n) ζ) → Full (Di (HW l) h T i) (Lat C h T i 1) := by
    intro n
    induction n with
    | zero =>
      intro i ζ hζ hF
      obtain rfl : ζ = 1 := by simpa using hζ
      simpa using hF
    | succ n ih =>
      intro i ζ hζ hF
      have h1 := _root_.GlobalTheory.NL.FullDown.full_down loc locA HW F Cm l K s LL h T hT _ ζ ⟨_, hζ⟩ hF
      have e : i + ((n + 1 : ℕ) : Let K) - 1 = i + n := by push_cast; ring
      rw [e] at h1
      exact ih i (ζ ^ l) (hζ.pow (pow_pos (Fact.out : l.Prime).pos _) (pow_succ' l n)) h1
  obtain ⟨ζ, -, -, hζ⟩ := GlobalTheory.exists_isPt_primitiveRoot (HW l) h i
  have hF := down s i ζ hζ (_root_.GlobalTheory.NL.FullLevel.full_lat loc locA locT HW F Cm l K s LL h T hT _ ζ hζ)
  have hG := _root_.GlobalTheory.NL.GradedLat.graded_of_level_le loc locA HW F Cm l K s LL h T hT i 1 (one_pow _) hF
  haveI : Module.Finite (AA K LL) ↥(W.N T) := Module.Finite.iff_fg.2 (W.N_fg T)
  set_option synthInstance.maxHeartbeats 200000 in
  have hex : ∀ (a : AA K LL) (x : ↥(W.N T)),
      ex C h T i 1 (a • x) = conv (W.lev i 1 a) (ex C h T i 1 x) := by
    intro a x
    funext k
    have hinj : Function.Injective (ιV ((loc l).PD K) : T.V ⊗[ℚ_[l]] (loc l).R.B →ₗ[↥LL.1] T.V ⊗[ℚ_[l]] (loc l).R.BdR) := by
      have hf : Function.Injective ((((loc l).PD K).ι.toLinearMap).restrictScalars ℚ_[l]) := ((loc l).PD K).ι_inj
      exact Module.Flat.lTensor_preserves_injective_linearMap (M := T.V) _ hf
    apply hinj
    obtain ⟨m, hm⟩ := (C.C K s LL h).tie.levB_supp T i 1 x
    unfold ex
    rw [← (C.C K s LL h).tie.levN_eq, W.levN_smul, conv,
      map_finsum _ (Model.conv_finite _ hm k)]
    simp only [map_smul]
    congr 1
    funext j
    exact congrArg (fun z => PowerSeries.coeff j (W.lev i 1 a) • z)
      ((C.C K s LL h).tie.levN_eq T i 1 x (k - j))
  obtain ⟨m₀, hm₀⟩ := uniform_supp ((C.C K s LL h).tie.levB T i 1) (W.lev i 1)
    ((C.C K s LL h).tie.levB_supp T i 1) hex
  exact std_of_lower (ex C h T i 1) _ (fun x k => (C.C K s LL h).tie.levB_mem T i 1 x k) m₀ hm₀
    (lower C h T hT i) hF hG

end GlobalTheory.NL.AtZero
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeEqStdPowerSeriesAtZero =====
