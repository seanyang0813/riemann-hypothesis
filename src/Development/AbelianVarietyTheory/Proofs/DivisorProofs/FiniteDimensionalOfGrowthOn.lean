module

public import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ConeDegreeGrowthChowFormIntegrality
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecZEqZeroOfGenVal
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.SiegelSpaceAlgebraHolds
import Development.AbelianVarietyTheory.Proofs.GenericRegularity.GenFrExAndGenFromTest
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
import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.IndefiniteTreeX

@[expose] public section

noncomputable section

open NumberField GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.DegCmp ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.L2.Indef.Tree
open scoped ENNReal

namespace GlobalTheory.DegTop

theorem growth_mono (D : ℕ) {s s' : ℕ → ℕ∞} (h : ∀ k, 1 ≤ k → s k ≤ s' k) : growth D s ≤ growth D s' :=
  Filter.limsup_le_limsup ((Filter.eventually_ge_atTop 1).mono fun k hk => ENNReal.div_le_div_right
    (mul_le_mul_right (ENat.toENNReal_le.2 (h k hk)) _) _)

theorem growth_top (D : ℕ) : growth D (fun _ => ⊤) = ⊤ := by
  rw [growth, ← Filter.limsup_const (f := (Filter.atTop : Filter ℕ)) (⊤ : ℝ≥0∞)]
  refine Filter.limsup_congr (Filter.Eventually.of_forall fun k => ?_)
  rw [ENat.toENNReal_top, ENNReal.mul_top (Nat.cast_ne_zero.2 D.factorial_ne_zero)]
  exact ENNReal.top_div_of_ne_top (ENNReal.pow_ne_top (ENNReal.natCast_ne_top k))

theorem of_not_finiteDimensional {K V : Type} [Field K] [AddCommGroup V] [Module K V] (h : ¬ FiniteDimensional K V) :
    (∃ v : V, v ≠ 0) ∧ Cardinal.aleph0 ≤ Module.rank K V := by
  refine ⟨?_, not_lt.1 fun h2 => h (Module.rank_lt_aleph0_iff.1 h2)⟩
  by_contra h0
  push Not at h0
  have : Subsingleton V := subsingleton_of_forall_eq 0 h0
  exact h inferInstance

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {r : ℕ} {U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r} {x : ℝ}

theorem mem_holSub_iff {Cp : Type} (X : Cp → Data E r) (la : ∀ k, Wt (X k).Ψ r) (P : FDSec X) :
    P ∈ holSub X la ↔ ∀ k, P k ∈ (X k).SS (la k) := by
  refine ⟨fun h => ?_, holCusp_mem_holSub X la⟩
  induction h using Submodule.span_induction with
  | mem x hx => exact hx
  | zero => exact fun k => (siegelSpaceAlgebra_holds (E := E) r (X k) (la k) (la k) 0).1.1
  | add x y _ _ hx hy => exact fun k => (siegelSpaceAlgebra_holds (E := E) r (X k) (la k) (la k) 0).1.2.1 _ (hx k) _ (hy k)
  | smul a x _ hx => exact fun k => (siegelSpaceAlgebra_holds (E := E) r (X k) (la k) (la k) 0).1.2.2 a _ (hx k)

theorem eq_zero_of_genVal {Z : Comp Xo c} {G : WTZ E} {f : Rul Xo c} (hf : f ∈ cuspOn U Z G) (h0 : genVal Z f = 0) :
    f = 0 := by
  refine secZ_eq_zero_of_genVal hf.1.1 fun Z' => ?_
  by_cases hZ : Z' = Z
  · rw [hZ, h0]
  · exact evC_eq_zero (Reg.genFrEx_and_genFromTest E H Dw l Xo c).1 hZ hf.2

theorem mul_mem_cuspOn {Z : Comp Xo c} {G G' : WTZ E} (hG : Even G.2) (hG' : Even G'.2) {f g : Rul Xo c}
    (hf : f ∈ cuspOn U Z G) (hg : g ∈ cuspW Xo c U G') : f * g ∈ cuspOn U Z (G + G') := by
  refine ⟨?_, by rw [mul_comm]; exact mul_mem_suppOn _ hf.2⟩
  have hf' := mem_cuspW.1 hf.1
  rw [mem_cuspW] at hg
  refine mem_cuspW.2 ⟨?_, fun σ hσ => ?_⟩
  · have e : exZ Dw (G + G') = exZ Dw G + exZ Dw G' := funext fun i => exZ_add _ _ _
    rw [e]
    exact mul_mem_secZ hf'.1 hg.1
  · rw [AllWt.rdU_mul, mem_holSub_iff]
    intro k
    rw [modelWt_add (U σ) hG hG' k]
    exact (siegelSpaceAlgebra_holds (E := E) r _ _ _ 0).2.1 _ ((mem_holSub_iff _ _ _).1 (hf'.2 σ hσ) k) _
      ((mem_holSub_iff _ _ _).1 (hg.2 σ hσ) k).1


omit [NumberField E] [IsCMField E] in
theorem even_nsmul {G : WTZ E} (hG : Even G.2) (n : ℕ) : Even (n • G).2 := by
  rw [Prod.smul_snd, nsmul_eq_mul]; exact hG.mul_left n

section

set_option synthInstance.maxHeartbeats 100000

local instance (priority := high) instAlgebraTRing_DegTop {K : Type} [Field K] (p : TRing K) :
    Algebra K p.R :=
  Ideal.Quotient.algebra K

local instance (priority := high) instCommRingTRing_DegTop {K : Type} [Field K] (p : TRing K) :
    CommRing p.R :=
  Ideal.Quotient.commRing p.I

local instance (priority := high) instModuleTRing_DegTop {K : Type} [Field K] (p : TRing K) :
    Module K p.R :=
  Algebra.toModule

local instance (priority := high) instAddCommGroupRul_DegTop :
    AddCommGroup (Rul Xo c) :=
  inferInstance

local instance (priority := high) instModuleRul_DegTop :
    Module c.F (Rul Xo c) :=
  inferInstance

local instance (priority := high) instSMulWithZeroRul_DegTop :
    SMulWithZero c.F (Rul Xo c) :=
  Module.toMulActionWithZero.toSMulWithZero

local instance (priority := high) instAddCommGroupCuspW_DegTop (G : WTZ E) :
    AddCommGroup ↥(cuspW Xo c U G) :=
  Submodule.addCommGroup _

local instance (priority := high) instModuleCuspW_DegTop (G : WTZ E) :
    Module c.F ↥(cuspW Xo c U G) :=
  Submodule.module _

local instance (priority := high) instSMulWithZeroCuspW_DegTop (G : WTZ E) :
    SMulWithZero c.F ↥(cuspW Xo c U G) :=
  Module.toMulActionWithZero.toSMulWithZero

local instance (priority := high) instDistribMulActionCuspW_DegTop (G : WTZ E) :
    DistribMulAction c.F ↥(cuspW Xo c U G) :=
  Module.toDistribMulAction

local instance (priority := high) instMulActionCuspW_DegTop (G : WTZ E) :
    MulAction c.F ↥(cuspW Xo c U G) :=
  DistribMulAction.toMulAction

local instance (priority := high) instSMulCuspW_DegTop (G : WTZ E) :
    SMul c.F ↥(cuspW Xo c U G) :=
  Module.toDistribMulAction.toDistribSMul.toSMul

local instance (priority := high) instHSMulCuspW_DegTop (G : WTZ E) :
    HSMul c.F ↥(cuspW Xo c U G) ↥(cuspW Xo c U G) :=
  instHSMul

local instance (priority := high) instAddCommGroupCuspOn_DegTop (Z : Comp Xo c) (G : WTZ E) :
    AddCommGroup ↥(cuspOn U Z G) :=
  Submodule.addCommGroup _

local instance (priority := high) instModuleCuspOn_DegTop (Z : Comp Xo c) (G : WTZ E) :
    Module c.F ↥(cuspOn U Z G) :=
  Submodule.module _

local instance (priority := high) instSMulWithZeroCuspOn_DegTop (Z : Comp Xo c) (G : WTZ E) :
    SMulWithZero c.F ↥(cuspOn U Z G) :=
  Module.toMulActionWithZero.toSMulWithZero

local instance (priority := high) instDistribMulActionCuspOn_DegTop (Z : Comp Xo c) (G : WTZ E) :
    DistribMulAction c.F ↥(cuspOn U Z G) :=
  Module.toDistribMulAction

local instance (priority := high) instMulActionCuspOn_DegTop (Z : Comp Xo c) (G : WTZ E) :
    MulAction c.F ↥(cuspOn U Z G) :=
  DistribMulAction.toMulAction

local instance (priority := high) instSMulCuspOn_DegTop (Z : Comp Xo c) (G : WTZ E) :
    SMul c.F ↥(cuspOn U Z G) :=
  Module.toDistribMulAction.toDistribSMul.toSMul

local instance (priority := high) instHSMulCuspOn_DegTop (Z : Comp Xo c) (G : WTZ E) :
    HSMul c.F ↥(cuspOn U Z G) ↥(cuspOn U Z G) :=
  instHSMul

theorem range_pow_le {Z : Comp Xo c} {G : WTZ E} (hG : Even G.2) (n : ℕ) :
    (LinearMap.range (genPoint Z (cuspOn U Z G))) ^ (n + 1) ≤
      (cuspOn U Z ((n + 1) • G)).map (genVal Z).toLinearMap := by
  induction n with
  | zero =>
    rintro _ hy
    rw [zero_add, pow_one] at hy
    obtain ⟨v, rfl⟩ := hy
    exact ⟨v, by simp, rfl⟩
  | succ n ih =>
    rw [pow_succ]
    refine Submodule.mul_le.2 fun a ha b hb => ?_
    obtain ⟨f, hf, rfl⟩ := ih ha
    obtain ⟨v, rfl⟩ := hb
    refine ⟨f * v, ?_, map_mul (genVal Z) _ _⟩
    rw [succ_nsmul]
    exact mul_mem_cuspOn (even_nsmul hG _) hG hf v.2.1

theorem hilb_le {Z : Comp Xo c} {G : WTZ E} (hG : Even G.2) {τ : ℕ} (hτ : 1 ≤ τ) :
    hilb (genPoint Z (cuspOn U Z G)) τ ≤ Cardinal.toENat (Module.rank c.F (cuspOn U Z (τ • G))) := by
  obtain ⟨n, rfl⟩ : ∃ n, τ = n + 1 := ⟨τ - 1, by omega⟩
  exact OrderHomClass.mono Cardinal.toENat ((Submodule.rank_mono (range_pow_le hG n)).trans (rank_map_le _ _))

theorem rank_map_mul {Z : Comp Xo c} {G : WTZ E} {θ : Rul Xo c} (hθ : genVal Z θ ≠ 0) :
    Module.rank c.F ((cuspOn U Z G).map ((genVal Z).toLinearMap ∘ₗ LinearMap.mulLeft c.F θ)) =
      Module.rank c.F (cuspOn U Z G) := by
  have hi : Function.Injective (((genVal Z).toLinearMap ∘ₗ LinearMap.mulLeft c.F θ) ∘ₗ (cuspOn U Z G).subtype) := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro f hf
    have h1 : genVal Z (θ * f) = 0 := hf
    rw [map_mul] at h1
    exact Subtype.ext (eq_zero_of_genVal f.2 ((mul_eq_zero.1 h1).resolve_left hθ))
  rw [← rank_range_of_injective _ hi, LinearMap.range_comp, Submodule.range_subtype]

theorem finiteDimensional_of_growthOn {Z : Comp Xo c} {G : WTZ E} (hG : Even G.2) (h : growthOn U Z G ≠ ⊤) :
    FiniteDimensional c.F (cuspOn U Z G) := by
  by_contra hfd
  obtain ⟨⟨v, hv⟩, hr⟩ := of_not_finiteDimensional hfd
  have hv' : genVal Z (v : Rul Xo c) ≠ 0 := fun h0 => hv (Subtype.ext (eq_zero_of_genVal v.2 h0))
  have key : ∀ n : ℕ, ∀ f ∈ cuspOn U Z G, (v : Rul Xo c) ^ n * f ∈ cuspOn U Z ((n + 1) • G) := fun n f hf => by
    induction n with
    | zero => simpa using hf
    | succ n ih =>
      rw [succ_nsmul, pow_succ, mul_right_comm]
      exact mul_mem_cuspOn (even_nsmul hG _) hG ih v.2.1
  refine h (top_le_iff.1 ((growth_top (dimFlag Dw)).symm.trans_le (growth_mono _ fun k hk => ?_)))
  obtain ⟨n, rfl⟩ : ∃ n, k = n + 1 := ⟨k - 1, by omega⟩
  have h1 : Module.rank c.F (cuspOn U Z G) ≤ Module.rank c.F (cuspOn U Z ((n + 1) • G)) := by
    rw [← rank_map_mul (U := U) (G := G) (θ := (v : Rul Xo c) ^ n) (by rw [map_pow]; exact pow_ne_zero _ hv')]
    refine (Submodule.rank_mono ?_).trans (rank_map_le (genVal Z).toLinearMap _)
    rintro _ ⟨f, hf, rfl⟩
    exact ⟨_, key n f hf, rfl⟩
  rw [top_le_iff, Cardinal.toENat_eq_top]
  exact hr.trans h1

theorem topDeg_nonneg (Z : Comp Xo c) {u : Weight Dw} (hu : ∀ τ, StrictAnti (u τ)) : 0 ≤ topDeg U Z u :=
  mul_nonneg (vZero_nonneg U Z) (Int.cast_pos.2 (vdm_pos hu)).le

theorem growth_mul_eq (hP : Proport U) (Z : Comp Xo c) {u : Weight Dw} (hu : ∀ τ, StrictAnti (u τ)) {a : ℕ}
    (ha : 1 ≤ a) : growth (dimFlag Dw) (fun k => Cardinal.toENat (Module.rank c.F (cuspOn U Z ((a * k) • wtOf Dw u 0)))) =
      ENNReal.ofReal ((a : ℝ) ^ dimFlag Dw * topDeg U Z u) := by
  have h1 : ∀ τ, StrictAnti ((a • u) τ) := fun τ i j hij => by
    have := hu τ hij
    simp only [Pi.smul_apply, nsmul_eq_mul]
    exact mul_lt_mul_of_pos_left this (by exact_mod_cast ha)
  have h2 := hP Z (a • u) h1
  have h3 : wtOf Dw (a • u) 0 = a • wtOf Dw u 0 := by rw [nsmul_wtOf, smul_zero]
  have h4 : topDeg U Z (a • u) = (a : ℝ) ^ dimFlag Dw * topDeg U Z u := by
    rw [topDeg, topDeg, ← Nat.cast_smul_eq_nsmul ℤ a u, vdm_smul, dimFlag]
    push_cast; ring
  rw [← h4, ← h2, growthOn, h3]
  exact congrArg _ (funext fun k => by rw [mul_nsmul])

theorem finiteDimensional_cuspOn (hP : Proport U) (Z : Comp Xo c) {u : Weight Dw} (hu : ∀ τ, StrictAnti (u τ)) :
    FiniteDimensional c.F (cuspOn U Z (wtOf Dw u 0)) :=
  finiteDimensional_of_growthOn (even_wtOf u 0) (by rw [hP Z u hu]; exact ENNReal.ofReal_ne_top)

theorem growth_hilb_le (hP : Proport U) (Z : Comp Xo c) {u : Weight Dw} (hu : ∀ τ, StrictAnti (u τ)) {a : ℕ}
    (ha : 1 ≤ a) : growth (dimFlag Dw) (fun k => hilb (genPoint Z (cuspOn U Z (wtOf Dw u 0))) (a * k)) ≤
      ENNReal.ofReal ((a : ℝ) ^ dimFlag Dw * topDeg U Z u) :=
  (growth_mono _ fun _ hk => hilb_le (even_wtOf u 0) (Nat.mul_pos ha hk)).trans_eq (growth_mul_eq hP Z hu ha)

theorem compDeg_le (hP : Proport U) (Z : Comp Xo c) {u : Weight Dw} (hu : ∀ τ, StrictAnti (u τ)) :
    (compDeg U Z (wtOf Dw u 0) : ℝ) ≤ topDeg U Z u := by
  rcases (compDeg U Z (wtOf Dw u 0)).eq_zero_or_pos with h0 | h0
  · rw [h0, Nat.cast_zero]; exact topDeg_nonneg Z hu
  · have := finiteDimensional_cuspOn hP Z hu
    have h1 := _root_.GlobalTheory.ConeDeg.degree_growth.1 c.F _ _ _ _ 1 le_rfl _ ((imageDeg_pos_iff _ _).1 h0)
    have h2 := growth_hilb_le hP Z hu le_rfl
    rw [h1, Nat.cast_one, Nat.cast_one, one_pow, one_pow, one_mul, one_mul, ← ENNReal.ofReal_natCast] at h2
    exact (ENNReal.ofReal_le_ofReal_iff (topDeg_nonneg Z hu)).1 h2

end

section Fac

variable {σ : c.F →+* ℂ} (U₁ : Unf Xo c σ r) (x)

end Fac

end GlobalTheory.DegTop
