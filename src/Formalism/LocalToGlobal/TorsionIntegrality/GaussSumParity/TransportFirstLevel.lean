module

public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementC
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.BiextensionHypothesesOfLevelOne
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.BiextensionHypothesesOfConditions
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.NormLeInvOfLtOne
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.SubstZeroOfConstantCoeff
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.RingAFacts
public import Mathlib.FieldTheory.Finite.Basic
public import Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed
public import Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity
public import Mathlib.RingTheory.RootsOfUnity.Minpoly
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.StatementGK
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.EGaussK
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.StatementJ
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.ThetaInZIsThetaLog
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.EChain
import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.SubstFirstCoboundaryThree
import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.TilInvariantLOf
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FinalS
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LogarithmEquivalence
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.TheoremSFromKOneOf
import Mathlib.Tactic.Linter.Style
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.PartialCoboundaryLinear
import Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.TypeStar
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.FirstMomentIdempotentLaw
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.CoeffSubstLgFOfDegreeOne
import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.TraceDualExists

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.CoboundaryCommutesHomomorphism, Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.FrobeniusOnRingA, Formalism.ThetaLogCoordinates.UniformThetaSubstitution.KernelFromKOneK, Formalism.ThetaLogCoordinates.UniformThetaSubstitution.EdgeNoTrunc, Formalism.ThetaLogCoordinates.UniformThetaSubstitution.ThetaLogIsSubst, Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.ThetaIntegerIsSSubstitution, Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.TransportFirstLevel

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.CoboundaryCommutesHomomorphism =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.CoboundaryCommutesHomomorphism", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementC\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.BiextensionHypothesesOfLevelOne\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.BiextensionHypothesesOfConditions\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.NormLeInvOfLtOne\nimport Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.SubstFirstCoboundaryThree\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.SubstZeroOfConstantCoeff\nimport Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.TilInvariantLOf\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FinalS\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LogarithmEquivalence\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.TheoremSFromKOneOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.PartialCoboundaryLinear\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators

namespace Formalism.L2.Th1.D

open Formalism.DworkPowerSeriesWeights (Integral mvExp)
open Formalism.InvariantFactorPaths.G7 (lgF at1 Simeq DivAB d1 swap2 in3 cob UnrOK IsLawOfLog frobVar)
open MvPowerSeries

namespace TraceNormBounds

section Alg

variable {K : Type} [Field K]

private theorem hasSubst_finite_of_constantCoeff_eq_zero {σ τ : Type} [Finite σ] {a : σ → MvPowerSeries τ K}
    (ha : ∀ s, constantCoeff (a s) = 0) : HasSubst a := by
  first
  | exact MvPowerSeries.hasSubst_of_constantCoeff_zero ha

private theorem hasSubst_vec_pair_of_constantCoeff_eq_zero {τ : Type} {a b : MvPowerSeries τ K} (ha : constantCoeff a = 0)
    (hb : constantCoeff b = 0) : HasSubst ![a, b] :=
  hasSubst_finite_of_constantCoeff_eq_zero fun i => by fin_cases i <;> first | exact ha | exact hb

private theorem mvSubst_add_of_hasSubst {ι κ : Type} {φ : ι → MvPowerSeries κ K} (hφ : HasSubst φ)
    (f g : MvPowerSeries ι K) : subst φ (f + g) = subst φ f + subst φ g := by
  first
  | exact MvPowerSeries.subst_add hφ f g

private theorem mvSubst_sub_of_hasSubst {ι κ : Type} {φ : ι → MvPowerSeries κ K} (hφ : HasSubst φ)
    (f g : MvPowerSeries ι K) : subst φ (f - g) = subst φ f - subst φ g := by
  first
  | exact MvPowerSeries.subst_sub hφ f g

private theorem powerSeries_subst_add_of_constantCoeff_eq_zero {τ : Type} {a : MvPowerSeries τ K} (ha : constantCoeff a = 0)
    (f g : PowerSeries K) :
    PowerSeries.subst a (f + g) = PowerSeries.subst a f + PowerSeries.subst a g := by
  show subst (fun _ : Unit => a) (f + g) = subst (fun _ : Unit => a) f + subst (fun _ : Unit => a) g
  exact mvSubst_add_of_hasSubst (hasSubst_finite_of_constantCoeff_eq_zero fun _ => ha) f g

private theorem mvSubst_powerSeries_subst_of_constantCoeff_eq_zero {ι κ : Type} {b : ι → MvPowerSeries κ K} (hb : HasSubst b)
    {a : MvPowerSeries ι K} (ha : constantCoeff a = 0) (f : PowerSeries K) :
    subst b (PowerSeries.subst a f) = PowerSeries.subst (subst b a) f := by
  have h1 : HasSubst (fun _ : Unit => a) := hasSubst_finite_of_constantCoeff_eq_zero fun _ => ha
  show subst b (subst (fun _ : Unit => a) f) = subst (fun _ : Unit => subst b a) f
  rw [subst_comp_subst_apply h1 hb]

theorem constantCoeff_first_two_of_three {F : MvPowerSeries (Fin 2) K} (hF0 : constantCoeff F = 0) :
    constantCoeff (in3 F) = 0 := by
  unfold in3
  have hx : ∀ i : Fin 2, constantCoeff (![(X 0 : MvPowerSeries (Fin 3) K), X 1] i) = 0 := by
    intro i; fin_cases i <;> simp
  first
  | exact constantCoeff_subst_eq_zero (hasSubst_finite_of_constantCoeff_eq_zero hx) hx hF0

theorem cob_add {F : MvPowerSeries (Fin 2) K} (hF0 : constantCoeff F = 0) (f g : PowerSeries K) :
    cob F (f + g) = cob F f + cob F g := by
  have hX : ∀ i : Fin 2, constantCoeff (X i : MvPowerSeries (Fin 2) K) = 0 := fun i => by simp
  unfold cob at1
  rw [powerSeries_subst_add_of_constantCoeff_eq_zero hF0, powerSeries_subst_add_of_constantCoeff_eq_zero (hX 0), powerSeries_subst_add_of_constantCoeff_eq_zero (hX 1)]
  ring

theorem diffOne_add {F : MvPowerSeries (Fin 2) K} (hF0 : constantCoeff F = 0)
    (H H' : MvPowerSeries (Fin 2) K) : d1 F (H + H') = d1 F H + d1 F H' := by
  have hX : ∀ i : Fin 3, constantCoeff (X i : MvPowerSeries (Fin 3) K) = 0 := fun i => by simp
  unfold d1
  rw [mvSubst_add_of_hasSubst (hasSubst_vec_pair_of_constantCoeff_eq_zero (constantCoeff_first_two_of_three hF0) (hX 2)), mvSubst_add_of_hasSubst (hasSubst_vec_pair_of_constantCoeff_eq_zero (hX 0) (hX 2)),
    mvSubst_add_of_hasSubst (hasSubst_vec_pair_of_constantCoeff_eq_zero (hX 1) (hX 2))]
  ring

theorem swap_variables_add (H H' : MvPowerSeries (Fin 2) K) : swap2 (H + H') = swap2 H + swap2 H' := by
  have hX : ∀ i : Fin 2, constantCoeff (X i : MvPowerSeries (Fin 2) K) = 0 := fun i => by simp
  unfold swap2
  exact mvSubst_add_of_hasSubst (_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (hX 1) (hX 0)) H H'

theorem cc_ps_gen {τ : Type} {a : MvPowerSeries τ K} (ha : constantCoeff a = 0)
    (f : PowerSeries K) : constantCoeff (PowerSeries.subst a f) = PowerSeries.constantCoeff f := by
  have hs := PowerSeries.HasSubst.of_constantCoeff_zero ha
  have e : f = PowerSeries.C (PowerSeries.constantCoeff f) +
      (f - PowerSeries.C (PowerSeries.constantCoeff f)) := by ring
  conv_lhs => rw [e]
  rw [PowerSeries.subst_add hs, PowerSeries.subst_C, map_add (f := _), Pair.cc_ps ha (by simp), add_zero,
    constantCoeff_C]

theorem cob_hom {F FE : MvPowerSeries (Fin 2) K} {θ : PowerSeries K}
    (hF0 : constantCoeff F = 0) (hFE0 : constantCoeff FE = 0) (h : IsHom F FE θ)
    (phE : PowerSeries K) :
    cob F (PowerSeries.subst θ phE) =
      subst ![at1 (0 : Fin 2) θ, at1 (1 : Fin 2) θ] (cob FE phE) := by
  have hθ := h.1
  have hX : ∀ i : Fin 2, constantCoeff (X i : MvPowerSeries (Fin 2) K) = 0 := fun i => by simp
  have hat : ∀ i : Fin 2, constantCoeff (at1 i θ) = 0 := fun i => by
    unfold at1; exact PowerSeries.constantCoeff_subst_eq_zero (hX i) θ hθ
  have hφ : HasSubst ![at1 (0 : Fin 2) θ, at1 (1 : Fin 2) θ] := _root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (hat 0) (hat 1)
  have e0 : ∀ i : Fin 2, PowerSeries.subst (![at1 (0 : Fin 2) θ, at1 (1 : Fin 2) θ] i) phE =
      at1 i (PowerSeries.subst θ phE) := by
    intro i; fin_cases i <;> (unfold at1; exact _root_.Formalism.L2.Th1.D.Pair.ps_comp (hX _) hθ phE)
  unfold cob
  rw [mvSubst_sub_of_hasSubst hφ, mvSubst_sub_of_hasSubst hφ, mvSubst_powerSeries_subst_of_constantCoeff_eq_zero hφ hFE0, ← h.2, _root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.subst_single_var hφ, _root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.subst_single_var hφ,
    _root_.Formalism.L2.Th1.D.Pair.ps_comp hF0 hθ, e0 0, e0 1]

theorem coboundary_commutes_homomorphism {F FE : MvPowerSeries (Fin 2) K} {θ : PowerSeries K}
    (hF0 : constantCoeff F = 0) (hFE0 : constantCoeff FE = 0) (h : IsHom F FE θ)
    (H : MvPowerSeries (Fin 2) K) :
    d1 F (subst ![at1 (0 : Fin 2) θ, at1 (1 : Fin 2) θ] H) =
      subst ![at1 (0 : Fin 3) θ, at1 (1 : Fin 3) θ, at1 (2 : Fin 3) θ] (d1 FE H) := by
  have hθ := h.1
  have hX3 : ∀ i : Fin 3, constantCoeff (X i : MvPowerSeries (Fin 3) K) = 0 := fun i => by simp
  have hX2 : ∀ i : Fin 2, constantCoeff (X i : MvPowerSeries (Fin 2) K) = 0 := fun i => by simp
  have hat2 : ∀ i : Fin 2, constantCoeff (at1 i θ) = 0 := fun i => by
    unfold at1; exact PowerSeries.constantCoeff_subst_eq_zero (hX2 i) θ hθ
  have hat3 : ∀ i : Fin 3, constantCoeff (at1 i θ) = 0 := fun i => by
    unfold at1; exact PowerSeries.constantCoeff_subst_eq_zero (hX3 i) θ hθ
  have hφ3 : HasSubst ![at1 (0 : Fin 3) θ, at1 (1 : Fin 3) θ, at1 (2 : Fin 3) θ] := by
    apply hasSubst_finite_of_constantCoeff_eq_zero
    intro i
    fin_cases i
    · exact hat3 0
    · exact hat3 1
    · exact hat3 2
  have h01 : HasSubst ![(X 0 : MvPowerSeries (Fin 3) K), X 1] := _root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (hX3 0) (hX3 1)
  have key : PowerSeries.subst (in3 F) θ =
      subst ![at1 (0 : Fin 3) θ, at1 (1 : Fin 3) θ, at1 (2 : Fin 3) θ] (in3 FE) := by
    unfold in3
    rw [← mvSubst_powerSeries_subst_of_constantCoeff_eq_zero h01 hF0, h.2, _root_.Formalism.L2.Th1.D.Pair.subst2_comp h01 (hat2 0) (hat2 1), _root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.subst_single_var h01, _root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.subst_single_var h01,
      _root_.Formalism.L2.Th1.D.Pair.subst2_comp hφ3 (hX3 0) (hX3 1), subst_X hφ3, subst_X hφ3]
    rfl
  have key' : PowerSeries.subst ((![in3 F, X 2] : Fin 2 → MvPowerSeries (Fin 3) K) 0) θ =
      subst ![at1 (0 : Fin 3) θ, at1 (1 : Fin 3) θ, at1 (2 : Fin 3) θ] (in3 FE) := key
  unfold d1
  rw [mvSubst_sub_of_hasSubst hφ3, mvSubst_sub_of_hasSubst hφ3,
    _root_.Formalism.L2.Th1.D.Pair.subst2_comp (_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (_root_.Formalism.InvariantFactorPaths.G7.GramFrameCompositionLinFacts.constantCoeff_law_first_two_of_three hF0) (hX3 2)) (hat2 0) (hat2 1),
    _root_.Formalism.L2.Th1.D.Pair.subst2_comp (_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (hX3 0) (hX3 2)) (hat2 0) (hat2 1),
    _root_.Formalism.L2.Th1.D.Pair.subst2_comp (_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (hX3 1) (hX3 2)) (hat2 0) (hat2 1),
    _root_.Formalism.L2.Th1.D.Pair.subst2_comp hφ3 (_root_.Formalism.InvariantFactorPaths.G7.GramFrameCompositionLinFacts.constantCoeff_law_first_two_of_three hFE0) (hX3 2), _root_.Formalism.L2.Th1.D.Pair.subst2_comp hφ3 (hX3 0) (hX3 2), _root_.Formalism.L2.Th1.D.Pair.subst2_comp hφ3 (hX3 1) (hX3 2)]
  simp only [_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.subst_single_var (_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (_root_.Formalism.InvariantFactorPaths.G7.GramFrameCompositionLinFacts.constantCoeff_law_first_two_of_three hF0) (hX3 2)), _root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.subst_single_var (_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (hX3 0) (hX3 2)),
    _root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.subst_single_var (_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (hX3 1) (hX3 2)), subst_X hφ3]
  first
  | (rw [key']; rfl)

theorem swap_commutes_subst_log {θ : PowerSeries K} (hθ : PowerSeries.constantCoeff θ = 0)
    (H : MvPowerSeries (Fin 2) K) :
    swap2 (subst ![at1 (0 : Fin 2) θ, at1 (1 : Fin 2) θ] H) =
      subst ![at1 (0 : Fin 2) θ, at1 (1 : Fin 2) θ] (swap2 H) := by
  have hX : ∀ i : Fin 2, constantCoeff (X i : MvPowerSeries (Fin 2) K) = 0 := fun i => by simp
  have hat : ∀ i : Fin 2, constantCoeff (at1 i θ) = 0 := fun i => by
    unfold at1; exact PowerSeries.constantCoeff_subst_eq_zero (hX i) θ hθ
  unfold swap2
  rw [_root_.Formalism.L2.Th1.D.Pair.subst2_comp (_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (hX 1) (hX 0)) (hat 0) (hat 1), _root_.Formalism.L2.Th1.D.Pair.subst2_comp (_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (hat 0) (hat 1)) (hX 1) (hX 0),
    _root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.subst_single_var (_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (hX 1) (hX 0)), _root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.subst_single_var (_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (hX 1) (hX 0))]
  simp only [subst_X (_root_.Formalism.InvariantFactorPaths.G7.FrobeniusSubstitution.hasSubst_pair (hat 0) (hat 1))]
  rfl

theorem law_right_zero {l : ℕ} (hl : 2 ≤ l) {F : MvPowerSeries (Fin 2) K}
    (hF0 : constantCoeff F = 0) (hF : cob F (lgF K l) = 0) {τ : Type} {a : MvPowerSeries τ K}
    (ha : constantCoeff a = 0) : subst ![a, 0] F = a := by
  have h := Pair.log_law hF0 hF ha (map_zero (constantCoeff (σ := τ) (R := K)))
  rw [TorusDerivation.subst_zero_of_constantCoeff _ (Pair.cc_lgF hl), add_zero] at h
  have hc : constantCoeff (subst ![a, 0] F) = 0 :=
    constantCoeff_subst_eq_zero (Pair.hs2 ha (map_zero _))
      (by intro i; fin_cases i <;> simp [ha]) hF0
  have h2 := Pair.exp_log expSpec hl hc
  rw [h, Pair.exp_log expSpec hl ha] at h2
  exact h2.symm

theorem law_left_zero {l : ℕ} (hl : 2 ≤ l) {F : MvPowerSeries (Fin 2) K}
    (hF0 : constantCoeff F = 0) (hF : cob F (lgF K l) = 0) {τ : Type} {a : MvPowerSeries τ K}
    (ha : constantCoeff a = 0) : subst ![0, a] F = a := by
  have h := Pair.log_law hF0 hF (map_zero (constantCoeff (σ := τ) (R := K))) ha
  rw [TorusDerivation.subst_zero_of_constantCoeff _ (Pair.cc_lgF hl), zero_add] at h
  have hc : constantCoeff (subst ![0, a] F) = 0 :=
    constantCoeff_subst_eq_zero (Pair.hs2 (map_zero _) ha)
      (by intro i; fin_cases i <;> simp [ha]) hF0
  have h2 := Pair.exp_log expSpec hl hc
  rw [h, Pair.exp_log expSpec hl ha] at h2
  exact h2.symm

theorem divAB_cob {l : ℕ} (hl : 2 ≤ l) {F : MvPowerSeries (Fin 2) K}
    (hF0 : constantCoeff F = 0) (hF : cob F (lgF K l) = 0) {ph : PowerSeries K}
    (hph : PowerSeries.constantCoeff ph = 0) : DivAB (cob F ph) := by
  have hX0 : constantCoeff (X 0 : MvPowerSeries (Fin 2) K) = 0 := by simp
  have hX1 : constantCoeff (X 1 : MvPowerSeries (Fin 2) K) = 0 := by simp
  have hz := map_zero (constantCoeff (σ := Fin 2) (R := K))
  refine TorusDerivation.divAB_of_axes ?_ ?_
  · have hs := Pair.hs2 hX0 hz
    unfold cob
    rw [subst_sub hs, subst_sub hs,
      Pair.subst_subst1 hs (PowerSeries.HasSubst.of_constantCoeff_zero hF0),
      Pair.subst_single_var hs, Pair.subst_single_var hs, law_right_zero hl hF0 hF hX0]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one]
    rw [TorusDerivation.subst_zero_of_constantCoeff _ hph, sub_self, sub_zero]
  · have hs := Pair.hs2 hz hX1
    unfold cob
    rw [subst_sub hs, subst_sub hs,
      Pair.subst_subst1 hs (PowerSeries.HasSubst.of_constantCoeff_zero hF0),
      Pair.subst_single_var hs, Pair.subst_single_var hs, law_left_zero hl hF0 hF hX1]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one]
    rw [TorusDerivation.subst_zero_of_constantCoeff _ hph, sub_zero, sub_self]

theorem cc_of_cob {FE : MvPowerSeries (Fin 2) K} (hFE0 : constantCoeff FE = 0)
    {phE : PowerSeries K} (h : constantCoeff (cob FE phE) = 0) :
    PowerSeries.constantCoeff phE = 0 := by
  have hX : ∀ i : Fin 2, constantCoeff (X i : MvPowerSeries (Fin 2) K) = 0 := fun i => by simp
  unfold cob at h
  rw [map_sub, map_sub] at h
  unfold at1 at h
  rw [cc_ps_gen hFE0, cc_ps_gen (hX 0), cc_ps_gen (hX 1)] at h
  linear_combination -h

end Alg

section Normed

variable {K : Type} [NormedField K] [IsUltrametricDist K] [CharZero K]

theorem integral_of_ps {θ : PowerSeries K} (h : ∀ n, ‖PowerSeries.coeff n θ‖ ≤ 1) :
    Integral (θ : MvPowerSeries Unit K) := by
  unfold Integral
  intro n
  rw [Finsupp.unique_single n]
  exact h (n default)

theorem integral_ps {τ : Type} {g : MvPowerSeries τ K} (hg0 : constantCoeff g = 0)
    (hg : Integral g) {θ : PowerSeries K} (h : ∀ n, ‖PowerSeries.coeff n θ‖ ≤ 1) :
    Integral (PowerSeries.subst g θ) :=
  Formalism.InvariantFactorPaths.G7.LogarithmEquivalence.integral_subst' (φ := fun _ : Unit => g) (fun _ => hg0) (fun _ => hg)
    (integral_of_ps h)

private theorem integral_X_kummer_theta_logarithms {τ : Type} (x : τ) : Integral (X x : MvPowerSeries τ K) := by
  classical
  unfold Integral
  intro n
  rw [coeff_X]
  split_ifs <;> simp

theorem integral_subst_single_variable {τ : Type} (x : τ) {θ : PowerSeries K}
    (h : ∀ n, ‖PowerSeries.coeff n θ‖ ≤ 1) : Integral (at1 x θ) := by
  unfold at1
  exact integral_ps (by simp) (integral_X_kummer_theta_logarithms x) h

theorem sim_subst0 {ι τ : Type} [Finite ι] {f : MvPowerSeries ι K} {φ : ι → MvPowerSeries τ K}
    (h0 : ∀ i, constantCoeff (φ i) = 0) (hi : ∀ i, Integral (φ i)) (h : Simeq f 0) :
    Simeq (subst φ f) 0 := by
  have hS : Formalism.InvariantFactorPaths.G7.SimeqRules := Formalism.InvariantFactorPaths.G7.equivalence_rules
  have h1 := (hS K ι).2.2.2.2 τ f 0 φ h0 hi h
  rwa [_root_.Formalism.L2.Th1.D.Pair.subst_zero' (hasSubst_finite_of_constantCoeff_eq_zero h0)] at h1

theorem sim_ps {τ : Type} {g : MvPowerSeries τ K} (hg0 : constantCoeff g = 0) (hg : Integral g)
    {lam : PowerSeries K} (h : Simeq (lam : MvPowerSeries Unit K) 0) :
    Simeq (PowerSeries.subst g lam) 0 := sim_subst0 (φ := fun _ : Unit => g) (fun _ => hg0) (fun _ => hg) h

theorem simeq_sub_zero_of_simeq_zero {τ : Type} {f g : MvPowerSeries τ K} (hf : Simeq f 0) (hg : Simeq g 0) :
    Simeq (f - g) 0 := by
  have hS : Formalism.InvariantFactorPaths.G7.SimeqRules := Formalism.InvariantFactorPaths.G7.equivalence_rules
  have h1 := (hS K τ).2.2.1 f 0 g hf ((hS K τ).2.1 g 0 hg)
  unfold Simeq at h1 ⊢
  rw [sub_zero]
  exact h1

theorem simeq_add_zero {τ : Type} {f g : MvPowerSeries τ K} (hf : Simeq f 0) (hg : Simeq g 0) :
    Simeq (f + g) 0 := by
  have hS : Formalism.InvariantFactorPaths.G7.SimeqRules := Formalism.InvariantFactorPaths.G7.equivalence_rules
  have h1 := (hS K τ).2.2.2.1 f 0 g 0 hf hg
  rwa [add_zero] at h1

theorem integral_law_first_two_of_three {F : MvPowerSeries (Fin 2) K} (hF : Integral F) : Integral (in3 F) := by
  unfold in3
  exact Formalism.InvariantFactorPaths.G7.LogarithmEquivalence.integral_subst' (by intro i; fin_cases i <;> simp)
    (by intro i; fin_cases i <;> exact Formalism.InvariantFactorPaths.G7.TwoS.integral_X _) hF

theorem sim_cob {F : MvPowerSeries (Fin 2) K} (hF0 : constantCoeff F = 0) (hF : Integral F)
    {lam : PowerSeries K} (h : Simeq (lam : MvPowerSeries Unit K) 0) : Simeq (cob F lam) 0 := by
  have hX : ∀ i : Fin 2, constantCoeff (X i : MvPowerSeries (Fin 2) K) = 0 := fun i => by simp
  unfold cob at1
  exact simeq_sub_zero_of_simeq_zero (simeq_sub_zero_of_simeq_zero (sim_ps hF0 hF h) (sim_ps (hX 0) (integral_X_kummer_theta_logarithms _) h))
    (sim_ps (hX 1) (integral_X_kummer_theta_logarithms _) h)

theorem sim_pair {τ : Type} {A B : MvPowerSeries τ K} (hA0 : constantCoeff A = 0)
    (hB0 : constantCoeff B = 0) (hA : Integral A) (hB : Integral B)
    {μ : MvPowerSeries (Fin 2) K} (h : Simeq μ 0) : Simeq (subst ![A, B] μ) 0 := sim_subst0 (fun i => by fin_cases i <;> first | exact hA0 | exact hB0)
    (fun i => by fin_cases i <;> first | exact hA | exact hB) h

theorem simeq_coboundary_of_simeq_zero {F : MvPowerSeries (Fin 2) K} (hF0 : constantCoeff F = 0) (hF : Integral F)
    {μ : MvPowerSeries (Fin 2) K} (h : Simeq μ 0) : Simeq (d1 F μ) 0 := by
  have hX : ∀ i : Fin 3, constantCoeff (X i : MvPowerSeries (Fin 3) K) = 0 := fun i => by simp
  unfold d1
  exact simeq_sub_zero_of_simeq_zero (simeq_sub_zero_of_simeq_zero (sim_pair (_root_.Formalism.InvariantFactorPaths.G7.GramFrameCompositionLinFacts.constantCoeff_law_first_two_of_three hF0) (hX 2) (integral_law_first_two_of_three hF) (integral_X_kummer_theta_logarithms _) h)
    (sim_pair (hX 0) (hX 2) (integral_X_kummer_theta_logarithms _) (integral_X_kummer_theta_logarithms _) h))
    (sim_pair (hX 1) (hX 2) (integral_X_kummer_theta_logarithms _) (integral_X_kummer_theta_logarithms _) h)

theorem sim_swap2 {μ : MvPowerSeries (Fin 2) K} (h : Simeq μ 0) : Simeq (swap2 μ) 0 := by
  have hX : ∀ i : Fin 2, constantCoeff (X i : MvPowerSeries (Fin 2) K) = 0 := fun i => by simp
  unfold swap2
  exact sim_pair (hX 1) (hX 0) (integral_X_kummer_theta_logarithms _) (integral_X_kummer_theta_logarithms _) h

end Normed

end TraceNormBounds

open TraceNormBounds

theorem transport_first_level_holds : CoboundaryCocycleTransportAlongHom := by
  unfold CoboundaryCocycleTransportAlongHom
  intro K _ _ _ l hl hnl F hF FE θ phE ph hFE0 hθI hH hF1E hsim
  obtain ⟨hF0, hFI, hFc⟩ := hF
  obtain ⟨hdivE, hdE, hdsE⟩ := hF1E
  have hθ : PowerSeries.constantCoeff θ = 0 := hH.1
  have hccE : constantCoeff (cob FE phE) = 0 := by
    have h0 := hdivE 0 (Or.inl (by simp))
    first
    | exact h0
  have hphE : PowerSeries.constantCoeff phE = 0 := cc_of_cob hFE0 hccE
  have hph : PowerSeries.constantCoeff ph = 0 := by
    have h1 := hsim.1
    rw [map_sub, cc_ps_gen (τ := Unit) hθ phE, hphE, sub_zero] at h1
    exact h1
  have hlam0 : Simeq ((ph - PowerSeries.subst θ phE : PowerSeries K) : MvPowerSeries Unit K) 0 := by
    unfold Simeq at hsim ⊢
    rw [sub_zero]
    exact hsim
  have hX3 : ∀ i : Fin 3, constantCoeff (X i : MvPowerSeries (Fin 3) K) = 0 := fun i => by simp
  have hat3 : ∀ i : Fin 3, constantCoeff (at1 i θ) = 0 := fun i => by
    unfold at1; exact PowerSeries.constantCoeff_subst_eq_zero (hX3 i) θ hθ
  have h03 : ∀ i, constantCoeff
      (![at1 (0 : Fin 3) θ, at1 (1 : Fin 3) θ, at1 (2 : Fin 3) θ] i) = 0 := by
    intro i
    fin_cases i
    · exact hat3 0
    · exact hat3 1
    · exact hat3 2
  have hI3 : ∀ i, Integral (![at1 (0 : Fin 3) θ, at1 (1 : Fin 3) θ, at1 (2 : Fin 3) θ] i) := by
    intro i
    fin_cases i
    · exact integral_subst_single_variable (0 : Fin 3) hθI
    · exact integral_subst_single_variable (1 : Fin 3) hθI
    · exact integral_subst_single_variable (2 : Fin 3) hθI
  have split : cob F ph = cob F (PowerSeries.subst θ phE) + cob F (ph - PowerSeries.subst θ phE) := by
    rw [← cob_add hF0]
    congr 1
    ring
  have hA : Simeq (d1 F (cob F (PowerSeries.subst θ phE))) 0 := by
    rw [cob_hom hF0 hFE0 hH phE, coboundary_commutes_homomorphism hF0 hFE0 hH]
    exact sim_subst0 h03 hI3 hdE
  have hB : Simeq (d1 F (cob F (ph - PowerSeries.subst θ phE))) 0 :=
    simeq_coboundary_of_simeq_zero hF0 hFI (sim_cob hF0 hFI hlam0)
  have hA' : Simeq (d1 F (swap2 (cob F (PowerSeries.subst θ phE)))) 0 := by
    rw [cob_hom hF0 hFE0 hH phE, swap_commutes_subst_log hθ, coboundary_commutes_homomorphism hF0 hFE0 hH]
    exact sim_subst0 h03 hI3 hdsE
  have hB' : Simeq (d1 F (swap2 (cob F (ph - PowerSeries.subst θ phE)))) 0 :=
    simeq_coboundary_of_simeq_zero hF0 hFI (sim_swap2 (sim_cob hF0 hFI hlam0))
  refine ⟨divAB_cob hl.two_le hF0 hFc hph, ?_, ?_⟩
  · rw [split, diffOne_add hF0]
    exact simeq_add_zero hA hB
  · rw [split, swap_variables_add, diffOne_add hF0]
    exact simeq_add_zero hA' hB'

theorem transport_norm_relation : TransportNorm := by
  intro K _ _ _ l σ hU θ phE ph eE α hθ hθi heE hα hσα hcomm hE hsim
  have hl : 2 ≤ l := hU.1.two_le
  have hmul : IsMul l α (mulS K l α) := Pair.isMul_mulF expSpec hl α
  have he0 : PowerSeries.constantCoeff (mulS K l α) = 0 := hmul.1
  have hei : ∀ n, ‖PowerSeries.coeff n (mulS K l α)‖ ≤ 1 :=
    (mulSpec K l σ hU α).2.2 hα hσα _ hmul
  have hN1 : ‖α * σ α‖ ≤ 1 := by
    rw [norm_mul]
    exact mul_le_one₀ hα (norm_nonneg _) ((frobSq K l σ hU).2 α hα)
  have hNf : σ (α * σ α) = α * σ α := by rw [map_mul, hσα, mul_comm]
  have hlam : Simeq ((ph - PowerSeries.subst θ phE : PowerSeries K) : MvPowerSeries Unit K) 0 :=
    B4.simeq_sub_zero hsim
  have hs_e : PowerSeries.HasSubst (mulS K l α) := PowerSeries.HasSubst.of_constantCoeff_zero' he0
  have h1 : Simeq (PowerSeries.subst (mulS K l α) (ph - PowerSeries.subst θ phE : PowerSeries K) :
      MvPowerSeries Unit K) (MvPowerSeries.C (α * σ α) * (ph - PowerSeries.subst θ phE)) :=
    InverseCommuting.sim_trans (sim_ps he0 (integral_of_ps hei) hlam)
      (InverseCommuting.sim_symm (simeq_fixed K l σ hU Unit _ _ hN1 hNf hlam))
  have h2 : Simeq (PowerSeries.subst (mulS K l α) (PowerSeries.subst θ phE : PowerSeries K) :
      MvPowerSeries Unit K) (MvPowerSeries.C (α * σ α) * PowerSeries.subst θ phE) := by
    have h := (Formalism.InvariantFactorPaths.G7.Top.simeqRules K Unit).2.2.2.2 Unit _ _ (fun _ : Unit => θ)
      (fun _ => hθ) (fun _ => integral_of_ps hθi) hE
    rw [TorusDerivation.subst_C_mul (hasSubst_of_constantCoeff_zero fun _ => hθ)] at h
    have e1 : (PowerSeries.subst (mulS K l α) (PowerSeries.subst θ phE : PowerSeries K) :
        MvPowerSeries Unit K) = MvPowerSeries.subst (fun _ : Unit => θ)
          (PowerSeries.subst eE phE : MvPowerSeries Unit K) := by
      rw [← Pair.ps_comp he0 hθ, hcomm, Pair.ps_comp hθ heE]
      rfl
    rw [e1]
    exact h
  have h := InverseCommuting.sim_add h1 h2
  unfold NormRel
  have e : ph = (ph - PowerSeries.subst θ phE) + PowerSeries.subst θ phE := by ring
  rw [← PowerSeries.subst_add hs_e, ← mul_add, ← e] at h
  exact h

end Formalism.L2.Th1.D
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.CoboundaryCommutesHomomorphism =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.FrobeniusOnRingA =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.FrobeniusOnRingA", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.RingAFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.FieldTheory.Finite.Basic\npublic import Mathlib.FieldTheory.Minpoly.IsIntegrallyClosed\npublic import Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity\npublic import Mathlib.RingTheory.RootsOfUnity.Minpoly\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators

namespace Formalism.L2.Th1.D

variable (l : ℕ) [Fact l.Prime]

def muSub : Submonoid ℂ_[l] where
  carrier := muPrime l
  one_mem' := ⟨1, one_pos, fun h => (Fact.out : l.Prime).one_lt.ne' (Nat.dvd_one.mp h), by simp⟩
  mul_mem' := by
    rintro a b ⟨n, hn, hln, ha⟩ ⟨m, hm, hlm, hb⟩
    refine ⟨n * m, Nat.mul_pos hn hm, fun h => ?_, ?_⟩
    · rcases (Fact.out : l.Prime).dvd_mul.mp h with h | h
      exacts [hln h, hlm h]
    · rw [mul_pow, pow_mul, ha, one_pow, mul_comm n m, pow_mul, hb, one_pow, one_mul]

def evK (k : ℕ) : MonoidAlgebra ℤ (muSub l) →ₐ[ℤ] ℂ_[l] :=
  MonoidAlgebra.lift ℤ ℂ_[l] (muSub l) ((muSub l).subtype.comp (powMonoidHom k))

lemma evK_of (k : ℕ) (g : muSub l) :
    evK l k (MonoidAlgebra.of ℤ (muSub l) g) = (g : ℂ_[l]) ^ k := by
  simp [evK]

lemma evK_mem (k : ℕ) (r : MonoidAlgebra ℤ (muSub l)) : evK l k r ∈ ringA l := by
  induction r using MonoidAlgebra.induction_on with
  | of g =>
    rw [evK_of]
    exact Subring.pow_mem _ (Subring.subset_closure g.2) k
  | add x y hx hy =>
    rw [map_add (f := _)]
    exact Subring.add_mem _ hx hy
  | smul a x hx =>
    rw [zsmul_eq_mul, map_mul, map_intCast]
    exact Subring.mul_mem _ (intCast_mem _ a) hx

lemma eval_pow_coprime {K : Type*} [Field K] [CharZero K] {n k : ℕ} {ζ : K} (hζ : IsPrimitiveRoot ζ n)
    (hn : 0 < n) (hcop : Nat.Coprime k n) (P : Polynomial ℤ)
    (h : P.eval₂ (Int.castRingHom K) ζ = 0) : P.eval₂ (Int.castRingHom K) (ζ ^ k) = 0 := by
  have h1 : Polynomial.aeval ζ P = 0 := by
    rw [Polynomial.aeval_def]
    exact h
  have hd : minpoly ℤ ζ ∣ P := minpoly.isIntegrallyClosed_dvd (hζ.isIntegral hn) h1
  rw [hζ.minpoly_eq_pow_coprime hcop] at hd
  obtain ⟨Q, rfl⟩ := hd
  have h2 : Polynomial.aeval (ζ ^ k) (minpoly ℤ (ζ ^ k)) = 0 := minpoly.aeval _ _
  rw [Polynomial.aeval_def] at h2
  rw [Polynomial.eval₂_mul]
  exact mul_eq_zero_of_left h2 _

lemma exists_poly (r : MonoidAlgebra ℤ (muSub l)) :
    ∃ n : ℕ, 0 < n ∧ ¬ l ∣ n ∧ ∀ m : ℕ, n ∣ m → 0 < m → ∀ ζ : ℂ_[l], IsPrimitiveRoot ζ m →
      ∃ P : Polynomial ℤ, ∀ k : ℕ, P.eval₂ (Int.castRingHom ℂ_[l]) (ζ ^ k) = evK l k r := by
  induction r using MonoidAlgebra.induction_on with
  | of g =>
    obtain ⟨n, hn, hln, hg⟩ := g.2
    refine ⟨n, hn, hln, fun m hnm hm ζ hζ => ?_⟩
    have hgm : (g : ℂ_[l]) ^ m = 1 := by
      obtain ⟨c, rfl⟩ := hnm
      rw [pow_mul, hg, one_pow]
    have : NeZero m := ⟨hm.ne'⟩
    obtain ⟨i, -, hi⟩ := hζ.eq_pow_of_pow_eq_one hgm
    refine ⟨Polynomial.X ^ i, fun k => ?_⟩
    rw [evK_of, ← hi, Polynomial.eval₂_pow, Polynomial.eval₂_X, ← pow_mul, ← pow_mul, mul_comm]
  | add x y hx hy =>
    obtain ⟨n, hn, hln, hP⟩ := hx
    obtain ⟨n', hn', hln', hP'⟩ := hy
    refine ⟨n * n', Nat.mul_pos hn hn', fun h => ?_, fun m hnm hm ζ hζ => ?_⟩
    · rcases (Fact.out : l.Prime).dvd_mul.mp h with h | h
      exacts [hln h, hln' h]
    · obtain ⟨P, hP⟩ := hP m (dvd_trans (dvd_mul_right _ _) hnm) hm ζ hζ
      obtain ⟨P', hP'⟩ := hP' m (dvd_trans (dvd_mul_left _ _) hnm) hm ζ hζ
      exact ⟨P + P', fun k => by rw [Polynomial.eval₂_add, map_add (f := _), hP, hP']⟩
  | smul a x hx =>
    obtain ⟨n, hn, hln, hP⟩ := hx
    refine ⟨n, hn, hln, fun m hnm hm ζ hζ => ?_⟩
    obtain ⟨P, hP⟩ := hP m hnm hm ζ hζ
    exact ⟨Polynomial.C a * P, fun k => by
      rw [Polynomial.eval₂_mul, Polynomial.eval₂_C, hP, zsmul_eq_mul, map_mul, map_intCast, eq_intCast]⟩

lemma evK_ker (r : MonoidAlgebra ℤ (muSub l)) (h : evK l 1 r = 0) : evK l l r = 0 := by
  obtain ⟨n, hn, hln, hP⟩ := exists_poly l r
  have : NeZero n := ⟨hn.ne'⟩
  have : NeZero (n : ℂ_[l]) := ⟨Nat.cast_ne_zero.mpr hn.ne'⟩
  obtain ⟨ζ, hζ⟩ := HasEnoughRootsOfUnity.exists_primitiveRoot ℂ_[l] n
  obtain ⟨P, hP⟩ := hP n dvd_rfl hn ζ hζ
  have h1 : P.eval₂ (Int.castRingHom ℂ_[l]) ζ = 0 := by
    have := hP 1
    rw [pow_one] at this
    rw [this, h]
  have hcop : Nat.Coprime l n := ((Fact.out : l.Prime).coprime_iff_not_dvd).mpr hln
  rw [← hP l]
  exact eval_pow_coprime hζ hn hcop P h1

def evA (k : ℕ) : MonoidAlgebra ℤ (muSub l) →+* ringA l :=
  (evK l k).toRingHom.codRestrict (ringA l) (evK_mem l k)

lemma evA_coe (k : ℕ) (r : MonoidAlgebra ℤ (muSub l)) : ((evA l k r : ringA l) : ℂ_[l]) = evK l k r := rfl

lemma evA_of (k : ℕ) (g : muSub l) :
    evA l k (MonoidAlgebra.of ℤ (muSub l) g) = (⟨g, Subring.subset_closure g.2⟩ : ringA l) ^ k := by
  apply Subtype.ext
  rw [evA_coe, evK_of]
  rfl

lemma evA_surj : Function.Surjective (evA l 1) := by
  have hle : ringA l ≤ (evK l 1).toRingHom.range := by
    refine Subring.closure_le.mpr fun g hg => ?_
    refine ⟨MonoidAlgebra.of ℤ (muSub l) ⟨g, hg⟩, ?_⟩
    change evK l 1 _ = g
    rw [evK_of, pow_one]
  rintro ⟨x, hx⟩
  obtain ⟨r, hr⟩ := hle hx
  exact ⟨r, Subtype.ext hr⟩

lemma evA_ker : RingHom.ker (evA l 1) ≤ RingHom.ker (evA l l) := by
  intro r hr
  rw [RingHom.mem_ker] at hr ⊢
  apply Subtype.ext
  rw [evA_coe]
  exact evK_ker l r (by rw [← evA_coe, hr]; rfl)

lemma int_fermat (a : ℤ) : ∃ c : ℤ, a - a ^ l = (l : ℤ) * c := by
  have : ((a - a ^ l : ℤ) : ZMod l) = 0 := by
    push_cast
    rw [ZMod.pow_card, sub_self]
  exact (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mp this

lemma evA_congr (r : MonoidAlgebra ℤ (muSub l)) :
    ∃ y : ringA l, evA l l r - evA l 1 r ^ l = (l : ringA l) * y := by
  induction r using MonoidAlgebra.induction_on with
  | of g =>
    refine ⟨0, ?_⟩
    rw [evA_of, evA_of, pow_one, sub_self, mul_zero]
  | add x y hx hy =>
    obtain ⟨u, hu⟩ := hx
    obtain ⟨v, hv⟩ := hy
    obtain ⟨w, hw⟩ := exists_add_pow_prime_eq (Fact.out : l.Prime) (evA l 1 x) (evA l 1 y)
    refine ⟨u + v - evA l 1 x * evA l 1 y * w, ?_⟩
    rw [map_add (f := _), map_add (f := _), hw]
    linear_combination hu + hv
  | smul a x hx =>
    obtain ⟨u, hu⟩ := hx
    obtain ⟨c, hc⟩ := int_fermat l a
    have hc' : (a : ringA l) - (a : ringA l) ^ l = (l : ringA l) * (c : ringA l) := by
      exact_mod_cast congrArg (Int.cast : ℤ → ringA l) hc
    refine ⟨(a : ringA l) * u + (c : ringA l) * evA l 1 x ^ l, ?_⟩
    rw [zsmul_eq_mul, map_mul, map_mul, map_intCast, map_intCast, mul_pow]
    linear_combination (a : ringA l) * hu + (evA l 1 x ^ l) * hc'

theorem frobenius_on_ring_a : FrobA := by
  intro l _
  refine ⟨(evA l 1).liftOfSurjective (evA_surj l) ⟨evA l l, evA_ker l⟩, fun ζ hζ => ?_, fun x => ?_⟩
  · have h1 : evA l 1 (MonoidAlgebra.of ℤ (muSub l) ⟨ζ, hζ⟩) = ζ := by
      rw [evA_of, pow_one]
    conv_lhs => rw [← h1]
    rw [RingHom.liftOfSurjective_comp_apply]
    change evA l l _ = _
    rw [evA_of]
  · obtain ⟨r, rfl⟩ := evA_surj l x
    rw [RingHom.liftOfSurjective_comp_apply]
    exact evA_congr l r

end Formalism.L2.Th1.D
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.FrobeniusOnRingA =====

-- ===== clump member: Formalism.ThetaLogCoordinates.UniformThetaSubstitution.KernelFromKOneK =====
-- clump-header: {"m": "Formalism.ThetaLogCoordinates.UniformThetaSubstitution.KernelFromKOneK", "h": "module\n\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.StatementGK\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.EGaussK\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.InvariantFactorPaths.G7.Top

end Formalism.InvariantFactorPaths.G7.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.ThetaLogCoordinates.UniformThetaSubstitution.KernelFromKOneK =====

-- ===== clump member: Formalism.ThetaLogCoordinates.UniformThetaSubstitution.EdgeNoTrunc =====
-- clump-header: {"m": "Formalism.ThetaLogCoordinates.UniformThetaSubstitution.EdgeNoTrunc", "h": "module\n\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.StatementJ\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Finset

namespace Formalism.InvariantFactorPaths.G7

def ThetaLogIsSubst : Prop :=
  ∀ (K : Type) [Field K] (ν r0 r1 : ℕ) [NeZero ν] (om oms : Fin ν → ZMod (2 * ν) → K) (ϖ : K)
    (μ : PowerSeries K) (Tht : MvPowerSeries (Bool × EV ν r0 r1) K),
    PowerSeries.constantCoeff μ = 0 →
    thetaLog om oms ϖ μ Tht = MvPowerSeries.subst (fun x => MvPowerSeries.subst
        (fun y => MvPowerSeries.C ϖ⁻¹ * (MvPowerSeries.X y : MvPowerSeries (ZV ν r0 r1) K))
        (MvPowerSeries.C ϖ * sSub om oms μ x)) Tht

end Formalism.InvariantFactorPaths.G7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.ThetaLogCoordinates.UniformThetaSubstitution.EdgeNoTrunc =====

-- ===== clump member: Formalism.ThetaLogCoordinates.UniformThetaSubstitution.ThetaLogIsSubst =====
-- clump-header: {"m": "Formalism.ThetaLogCoordinates.UniformThetaSubstitution.ThetaLogIsSubst", "h": "module\n\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.EdgeNoTrunc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.InvariantFactorPaths.G7.Top

open Formalism.InvariantFactorPaths.G7

theorem thetaLogIsSubst : ThetaLogIsSubst := by
  intro K _ ν r0 r1 _ om oms ϖ μ Tht hμ

  have hz0 : ∀ x : Bool × EV ν r0 r1, MvPowerSeries.constantCoeff (zLin om oms x) = 0 := by
    intro x
    unfold zLin

    rw [map_sum]
    apply Finset.sum_eq_zero
    intro s _
    split_ifs <;> simp
  have hz : ∀ x : Bool × EV ν r0 r1, PowerSeries.HasSubst (zLin om oms x) := fun x =>
    PowerSeries.HasSubst.of_constantCoeff_zero (hz0 x)

  have hs : ∀ x : Bool × EV ν r0 r1, MvPowerSeries.constantCoeff (sSub om oms μ x) = 0 := by
    intro x
    unfold sSub
    rw [PowerSeries.constantCoeff_subst (hz x)]
    apply finsum_eq_zero_of_forall_eq_zero
    intro d
    rcases d with _ | d
    · simp [hμ]
    · simp [map_pow, hz0 x]
  have ha : MvPowerSeries.HasSubst (fun x : Bool × EV ν r0 r1 => MvPowerSeries.C ϖ * sSub om oms μ x) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero (fun x => by simp [hs x])
  have hb : MvPowerSeries.HasSubst (fun y : ZV ν r0 r1 =>
      MvPowerSeries.C ϖ⁻¹ * (MvPowerSeries.X y : MvPowerSeries (ZV ν r0 r1) K)) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero (fun y => by simp)
  exact MvPowerSeries.subst_comp_subst_apply ha hb Tht

end Formalism.InvariantFactorPaths.G7.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.ThetaLogCoordinates.UniformThetaSubstitution.ThetaLogIsSubst =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.ThetaIntegerIsSSubstitution =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.ThetaIntegerIsSSubstitution", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.ThetaInZIsThetaLog\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.BiextensionHypothesesOfLevelOne\nimport Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.FirstMomentIdempotentLaw\nimport Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.SubstFirstCoboundaryThree\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FinalS\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.CoeffSubstLgFOfDegreeOne\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.EChain\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LogarithmEquivalence\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.KernelFromKOneK\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.ThetaLogIsSubst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators

namespace Formalism.L2.Th1.D

open Formalism.DworkPowerSeriesWeights (Integral mvExp torus BHyp Unram entLog oneLog thetaZ thetaOne frameJet frameJetOne
  nablaO)
open Formalism.InvariantFactorPaths.G7 (lgF at1 Simeq DivAB d1 swap2 UnrOK IsLawOfLog BetaHyp OmOK lamF thetaLog sSub zLin)

namespace CohomologyFunctoriality₂

theorem norm_iter {K0 : Type} [NormedField K0] [IsUltrametricDist K0] [CharZero K0] {l : ℕ}
    {σ : K0 →+* K0} (hU : UnrOK K0 l σ) {c : K0} (hc : ‖c‖ ≤ 1) (n : ℕ) : ‖σ^[n] c‖ ≤ 1 := by
  induction n with
  | zero => simpa using hc
  | succ n ih =>
    rw [Function.iterate_succ_apply']
    exact (frobSq K0 l σ hU).2 _ ih

theorem frob_step {K0 K : Type} [NormedField K0] [IsUltrametricDist K0] [CharZero K0]
    [NormedField K] {l d : ℕ} [NeZero d] {σ : K0 →+* K0} (j : K0 →+* K) (hU : UnrOK K0 l σ)
    (hj : ∀ a, ‖j a‖ = ‖a‖) {c : K0} (hc : ‖c‖ ≤ 1) (hfix : σ^[d] c = c) (s : ZMod d) :
    ‖j (σ^[(s + 1).val] c) - j (σ^[s.val] c) ^ l‖ ≤ (l : ℝ)⁻¹ := by
  have h := TranslateJetMomentLawAnyIdempotentLevel.iter_sub_one σ hfix (s + 1)
  rw [add_sub_cancel_right] at h
  rw [← h, ← map_pow, ← map_sub, hj]
  exact hU.2.2.2.2 _ (norm_iter hU hc _)

end CohomologyFunctoriality₂

theorem omega_integral_criterion : OmOKOf := by
  intro K0 K _ _ _ _ l ν _ σ j hU hj om oms hO hT
  refine ⟨fun r s => ?_, fun r s => ?_, fun a b hab => ?_⟩
  · unfold conjJ
    rw [hj, hj]
    exact ⟨CohomologyFunctoriality₂.norm_iter hU (hO.1 r).1 _, CohomologyFunctoriality₂.norm_iter hU (hO.1 r).2 _⟩
  · unfold conjJ
    exact ⟨CohomologyFunctoriality₂.frob_step j hU hj (hO.1 r).1 (hO.2 r).1 s,
      CohomologyFunctoriality₂.frob_step j hU hj (hO.1 r).2 (hO.2 r).2 s⟩
  · unfold conjJ
    have hE : Even (2 * ν) := even_two_mul ν
    have key : ∑ r, σ^[a.val] (oms r) * σ^[b.val] (om r) = if a = b then 1 else 0 := by
      by_cases ha : a.val % 2 = 0
      · have hb : b.val % 2 = 0 := by omega
        have h := TranslateJetMomentLawAnyIdempotentLevel.dual2 hE σ hO.2 hT b a
        rw [Fintype.sum_prod_type, Fintype.sum_bool] at h
        simp only [mXY, TranslateJetMomentLawAnyIdempotentLevel.pXY, ha, hb, if_true] at h
        simp only [Bool.true_eq_false, if_false, mul_zero, Finset.sum_const_zero, zero_add] at h
        have e : (if a = b then (1 : K0) else 0) = if b = a then 1 else 0 := by
          by_cases hab' : a = b
          · rw [if_pos hab', if_pos hab'.symm]
          · rw [if_neg hab', if_neg (fun h => hab' h.symm)]
        rw [e, ← h]
        exact Finset.sum_congr rfl fun r _ => mul_comm _ _
      · have hb : ¬ b.val % 2 = 0 := by omega
        have h := TranslateJetMomentLawAnyIdempotentLevel.dual2 hE σ hO.2 hT a b
        rw [Fintype.sum_prod_type, Fintype.sum_bool] at h
        simp only [mXY, TranslateJetMomentLawAnyIdempotentLevel.pXY, ha, hb, if_false] at h
        simp only [Bool.false_eq_true, if_false, mul_zero, Finset.sum_const_zero, add_zero,
          if_true] at h
        exact h
    have h2 := congrArg j key

    rw [map_sum] at h2
    simp only [map_mul] at h2
    rw [h2]
    split_ifs <;> simp

theorem theta_integer_is_s_substitution : ThetaInZIsSSub := by
  intro K0 K _ _ l ν r0 r1 _ σ j om oms Tht
  unfold thetaInZ
  congr 1
  funext x
  unfold xOfZ Formalism.InvariantFactorPaths.G7.sSub Formalism.InvariantFactorPaths.G7.zLin conjJ
  congr 1
  by_cases h : x.1 = false
  · simp only [h, if_true]
  · simp only [h]
    refine Finset.sum_congr rfl fun s _ => ?_
    rcases Nat.mod_two_eq_zero_or_one s.val with h2 | h2 <;> simp [h2]

namespace CohomologyFunctoriality₂

open Formalism.InvariantFactorPaths.G7 Formalism.InvariantFactorPaths.G7.ScaledSeriesSubstitution

theorem log_scale {K : Type} [Field K] (p : ℕ) (ϖ : K) (μ : PowerSeries K)
    (h0 : PowerSeries.constantCoeff μ = 0)
    (h1 : (PowerSeries.subst μ (lamF p ϖ) : PowerSeries K) = PowerSeries.X) :
    (PowerSeries.subst (PowerSeries.C ϖ * μ) (lgF K p) : PowerSeries K) =
      PowerSeries.C ϖ * PowerSeries.X := by
  have e1 := LogarithmEquivalence.subst_lgF_scale p ϖ
  have hμ : PowerSeries.HasSubst μ := PowerSeries.HasSubst.of_constantCoeff_zero' h0
  have hX : PowerSeries.HasSubst (PowerSeries.C ϖ * PowerSeries.X : PowerSeries K) :=
    PowerSeries.HasSubst.of_constantCoeff_zero' (by simp)
  have e2 := congrArg (fun f => (PowerSeries.subst μ f : PowerSeries K)) e1
  rw [PowerSeries.subst_comp_subst_apply hX hμ] at e2
  rw [← PowerSeries.coe_substAlgHom hμ, map_mul, map_mul, PowerSeries.coe_substAlgHom hμ, h1,
    PowerSeries.subst_X hμ] at e2
  have e3 : (PowerSeries.substAlgHom hμ) (PowerSeries.C ϖ : PowerSeries K) = PowerSeries.C ϖ := by
    have : (PowerSeries.C ϖ : PowerSeries K) = algebraMap K _ ϖ := rfl
    rw [this, AlgHom.commutes]
  rw [PowerSeries.coe_substAlgHom hμ] at e3
  rw [e3] at e2
  exact e2

theorem log_coord {K : Type} [Field K] (p ν r0 r1 : ℕ) [NeZero ν]
    (om oms : Fin ν → ZMod (2 * ν) → K) (ϖ : K) (μ : PowerSeries K) (x : Bool × EV ν r0 r1)
    (hϖ : ϖ ≠ 0) (hμ0 : PowerSeries.constantCoeff μ = 0)
    (hμ : (PowerSeries.subst μ (lamF p ϖ) : PowerSeries K) = PowerSeries.X) :
    PowerSeries.subst (MvPowerSeries.subst
        (fun y => MvPowerSeries.C ϖ⁻¹ * (MvPowerSeries.X y : MvPowerSeries (ZV ν r0 r1) K))
        (MvPowerSeries.C ϖ * sSub om oms μ x)) (lgF K p) = zLin om oms x := by
  have hb := hasSubst_scale (K := K) (ι := ZV ν r0 r1) ϖ⁻¹
  have hz : PowerSeries.HasSubst (zLin om oms x : MvPowerSeries (ZV ν r0 r1) K) :=
    PowerSeries.HasSubst.of_constantCoeff_zero (constantCoeff_zLin om oms x)
  have hw : PowerSeries.HasSubst
      (MvPowerSeries.C ϖ⁻¹ * zLin om oms x : MvPowerSeries (ZV ν r0 r1) K) :=
    PowerSeries.HasSubst.of_constantCoeff_zero (by rw [map_mul, constantCoeff_zLin, mul_zero])
  have hm : PowerSeries.HasSubst (PowerSeries.C ϖ * μ : PowerSeries K) :=
    PowerSeries.HasSubst.of_constantCoeff_zero' (by rw [map_mul, hμ0, mul_zero])
  have e1 : MvPowerSeries.subst
      (fun y => MvPowerSeries.C ϖ⁻¹ * (MvPowerSeries.X y : MvPowerSeries (ZV ν r0 r1) K))
      (MvPowerSeries.C ϖ * sSub om oms μ x) =
      PowerSeries.subst (MvPowerSeries.C ϖ⁻¹ * zLin om oms x) (PowerSeries.C ϖ * μ) := by
    rw [subst_C_mul hb, ps_subst_C_mul hw]
    unfold sSub
    rw [FormalGroupLaws.subst_subst hb hz, subst_scale_zLin]
  have e2 := congrArg (fun f => (PowerSeries.subst (MvPowerSeries.C ϖ⁻¹ * zLin om oms x) f :
    MvPowerSeries (ZV ν r0 r1) K)) (log_scale p ϖ μ hμ0 hμ)
  rw [PowerSeries.subst_comp_subst_apply hm hw, ps_subst_C_mul hw ϖ PowerSeries.X,
    PowerSeries.subst_X hw,
    ← mul_assoc, ← map_mul, mul_inv_cancel₀ hϖ, map_one, one_mul] at e2
  rw [e1]
  exact e2

end CohomologyFunctoriality₂

theorem theta_integer_is_theta_log : ThetaInZIsThetaLog := by
  intro K0 K _ _ l ν r0 r1 _ σ j om oms ϖ μ hl hϖ hμ0 hμ Tht
  rw [theta_integer_is_s_substitution, Formalism.InvariantFactorPaths.G7.Top.thetaLogIsSubst K ν r0 r1 _ _ ϖ μ Tht hμ0]
  congr 1
  funext x
  have hb := Formalism.InvariantFactorPaths.G7.ScaledSeriesSubstitution.hasSubst_scale (K := K) (ι := Formalism.InvariantFactorPaths.G7.ZV ν r0 r1) ϖ⁻¹
  have hcc : MvPowerSeries.constantCoeff (MvPowerSeries.subst
      (fun y => MvPowerSeries.C ϖ⁻¹ *
        (MvPowerSeries.X y : MvPowerSeries (Formalism.InvariantFactorPaths.G7.ZV ν r0 r1) K))
      (MvPowerSeries.C ϖ * sSub (conjJ j σ om) (conjJ j σ oms) μ x)) = 0 := by
    refine MvPowerSeries.constantCoeff_subst_eq_zero hb (fun i => by simp) ?_
    have h : MvPowerSeries.constantCoeff (sSub (conjJ j σ om) (conjJ j σ oms) μ x) = 0 :=
      PowerSeries.constantCoeff_subst_eq_zero
        (Formalism.InvariantFactorPaths.G7.ScaledSeriesSubstitution.constantCoeff_zLin _ _ x) μ hμ0
    rw [map_mul, h, mul_zero]
  have h := Pair.exp_log expSpec hl hcc
  rw [CohomologyFunctoriality₂.log_coord l ν r0 r1 _ _ ϖ μ x hϖ hμ0 hμ] at h
  exact h

namespace CohomologyFunctoriality₂

end CohomologyFunctoriality₂

theorem kernel_of_f : KernelOfF := by
  intro p _ K0 _ _ _ _ σ hU hζ F hF be hF1 hF2 K _ _ _ j ν r0 r1 _ hj hϖ om oms hO hT U0 Φ hU0 hΦ0
    hΦ TT colN hts hp I n
  obtain ⟨ϖ, hϖ⟩ := hϖ
  have hnp : ‖(p : K)‖ = (p : ℝ)⁻¹ := by
    rw [← map_natCast j, hj]
    exact hU.2.2.1
  have hpK : (p : K) ≠ 0 := by exact_mod_cast hU.1.ne_zero
  have hϖ0 : ϖ ≠ 0 := by
    rintro rfl
    apply hpK
    rw [← hϖ, zero_pow]
    have : 2 ^ 2 ≤ p ^ 2 := Nat.pow_le_pow_left hU.2.1.le 2
    omega
  obtain ⟨-, -, μ, hμ0, -, hμ, -, -⟩ := _root_.Formalism.InvariantFactorPaths.G7.LogarithmEquivalence.logRescale K p ϖ hU.1 hnp hϖ
  rw [theta_integer_is_theta_log K0 K p ν r0 r1 σ j om oms ϖ μ hU.1.two_le hϖ0 hμ0 hμ]
  exact _root_.Formalism.InvariantFactorPaths.G7.kernel_bounds_generic p K0 σ hU hζ F hF be (betaHypOfF K0 p σ hU F be hF1 hF2) K j
    ν r0 r1 hj _ _ ϖ μ U0 Φ hϖ (omega_integral_criterion K0 K p ν σ j hU hj om oms hO hT) hμ0 hμ hU0 hΦ0 hΦ
    TT colN hts hp I n

end Formalism.L2.Th1.D
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.ThetaIntegerIsSSubstitution =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.TransportFirstLevel =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.TransportFirstLevel", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.RingAFacts\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementC\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.ThetaInZIsThetaLog\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.CoboundaryCommutesHomomorphism\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.FrobeniusOnRingA\nimport Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.NormLeInvOfLtOne\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.ThetaIntegerIsSSubstitution\nimport Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.TraceDualExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Th1.D

end Formalism.L2.Th1.D
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.TransportFirstLevel =====
