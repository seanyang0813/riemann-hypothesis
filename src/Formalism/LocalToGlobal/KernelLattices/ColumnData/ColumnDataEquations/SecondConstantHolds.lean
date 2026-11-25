module

public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.Reduction
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.MemSmulLat
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.NormOneUnitIdeal
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.ReductionOf
public import Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.IntegralSquareRoots.HenselQuad
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.ZeroInjectionMemFourthPower
public import Formalism.LocalToGlobal.KernelLattices.ColumnData
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JNoEig
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JArith
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.StarSqrtNeg
import Formalism.LocalToGlobal.KernelLattices.ColumnData.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.CharacterFactorUnitaryAction

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.EqPOf, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.OneEntryMem, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JNormOne, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SecondConstantOfTrianglesData, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JFinal, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SecondConstantHolds

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.EqPOf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.EqPOf", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.Reduction\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.MemSmulLat\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.NormOneUnitIdeal\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.ReductionOf\nimport Formalism.LocalToGlobal.KernelLattices.ColumnData.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.IntegralSquareRoots.HenselQuad\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq

open Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions

variable {D : Car} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ}

theorem eqP_of (B : Cd.Base D cc δ) (χ : TaylorLogMetric.IdE D → ℂ) (hχ : TaylorLogMetric.IsChi D χ) (hL : B.LatAll)
    (h0 : ∀ N N', Even N → Even N' → B.ThZeroMem N N')
    (hSq : SqP D B.tor) (hTL : Tr0L D B.tor) (hTR : Tr0R D B.tor) (hJ1 : J1 B) (hJ2 : J2 B) : B.EqP χ :=
  reduction_of (detMul D) (detSmul D) (norm_one_unit_ideal D) (smulSD D) χ hχ hL h0 hSq hTL hTR (pullIop_of hL) hJ1 hJ2

theorem eqP (B : Cd.Base D cc δ) (hcc : TaylorLogMetric.IsCurveIdeal D cc) (hδ : TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (hδ0 : δ ≠ 0)
    (hS : B.StdOK) (χ : TaylorLogMetric.IdE D → ℂ) (hχ : TaylorLogMetric.IsChi D χ)
    (hSq : SqP D B.tor) (hTL : Tr0L D B.tor) (hTR : Tr0R D B.tor) (hJ1 : J1 B) (hJ2 : J2 B) : B.EqP χ :=
  eqP_of B χ hχ (B.latAll hcc hδ hδ0) (fun N N' _ _ => B.thZeroMem hS N N') hSq hTL hTR hJ1 hJ2

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.EqPOf =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.OneEntryMem =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.OneEntryMem", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.ZeroInjectionMemFourthPower\nimport Formalism.LocalToGlobal.KernelLattices.ColumnData.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalToGlobal.KernelLattices.KernelLocalFactors.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.J

open Formalism.L2.PairingIndexBounds.Eq.J Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions Formalism.L2.Th1.H Formalism.L2.Ker.Cd.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds.Eq Formalism.L2.Ker

section Gen

variable {n : Type} [Fintype n] [DecidableEq n] {N N' : ℕ}

def ent (k : Fin N' × Fin N) (z : n → Fin N' → Fin N → ℂ) : n → ℂ := fun τ => z τ k.1 k.2

def setE (z : n → Fin N' → Fin N → ℂ) (k : Fin N' × Fin N) (w : n → ℂ) : n → Fin N' → Fin N → ℂ :=
  fun τ i j => if (i, j) = k then w τ else z τ i j

def repl (a : n → ℂ) (s : Finset (Fin N' × Fin N)) (z : n → Fin N' → Fin N → ℂ) : n → Fin N' → Fin N → ℂ :=
  fun τ i j => if (i, j) ∈ s then a τ else z τ i j

omit [Fintype n] [DecidableEq n] in
theorem ent_putL (k p : Fin N' × Fin N) (x : n → ℂ) : ent p (putL n N N' k x) = if p = k then x else 0 := by
  funext τ
  by_cases h : p = k
  · subst h
    simp [ent, putL]
  · simp [ent, putL, h]

omit [Fintype n] [DecidableEq n] in
theorem ent_setE (z : n → Fin N' → Fin N → ℂ) (k : Fin N' × Fin N) (w : n → ℂ) : ent k (setE z k w) = w := by
  funext τ
  simp [ent, setE]

omit [Fintype n] [DecidableEq n] in
theorem setE_ent (z : n → Fin N' → Fin N → ℂ) (k : Fin N' × Fin N) : setE z k (ent k z) = z := by
  funext τ i j
  unfold setE ent
  split_ifs with h
  · rw [← h]
  · rfl

omit [Fintype n] [DecidableEq n] in
theorem setE_add (z : n → Fin N' → Fin N → ℂ) (k : Fin N' × Fin N) (w x : n → ℂ) :
    setE z k w + putL n N N' k x = setE z k (w + x) := by
  funext τ i j
  by_cases h : (i, j) = k <;> simp [setE, putL, h]

theorem form_put (L : PeriodPair) (y : n → Fin N' → Fin N → ℂ) (k : Fin N' × Fin N) (x : n → ℂ) :
    formV (Formalism.L2.Th1.F.area L) n N N' y (putL n N N' k x) = matH (hOne L n) (ent k y) x := by
  have hs : ∀ τ, (∑ i, ∑ j, y τ i j * conj (if (i, j) = k then x τ else 0)) = y τ k.1 k.2 * conj (x τ) := by
    intro τ
    rw [Finset.sum_eq_single k.1, Finset.sum_eq_single k.2]
    · simp
    · intro j _ hj
      simp [Prod.ext_iff, hj]
    · simp
    · intro i _ hi
      apply Finset.sum_eq_zero
      intro j _
      simp [Prod.ext_iff, hi]
    · simp
  show (∑ τ, ∑ i, ∑ j, y τ i j * conj ((putL n N N' k x) τ i j)) / ((Formalism.L2.Th1.F.area L : ℝ) : ℂ) =
    ∑ i, ∑ j, ent k y i * hOne L n i j * conj (x j)
  simp only [putL, LinearMap.coe_mk, AddHom.coe_mk]
  simp only [hs]
  simp only [hOne, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul, mul_ite, mul_one, mul_zero, ite_mul,
    zero_mul, Finset.sum_ite_eq, Finset.mem_univ, if_true, ent]
  rw [Finset.sum_div]
  refine Finset.sum_congr rfl (fun τ _ => ?_)
  ring

theorem alphaQ_put (c : ℝ) (L : PeriodPair) (k : Fin N' × Fin N) (x : n → ℂ) :
    alphaQ c (formV (Formalism.L2.Th1.F.area L) n N N') (putL n N N' k x) = alphaQ c (matH (hOne L n)) x := by
  unfold alphaQ qOf
  rw [form_put, ent_putL, if_pos rfl]

theorem oneEntry_mem (c : ℝ) (L : PeriodPair) (ΛM : AddSubgroup (n → ℂ)) {F : (n → Fin N' → Fin N → ℂ) → ℂ}
    (hF : F ∈ Formalism.L2.Th1.H.Th (formV (Formalism.L2.Th1.F.area L) n N N') (alphaQ c (formV (Formalism.L2.Th1.F.area L) n N N'))
      (powLat ΛM N N')) (z : n → Fin N' → Fin N → ℂ) (k : Fin N' × Fin N) :
    (fun w => F (setE z k w)) ∈ Formalism.L2.Th1.H.Th (matH (hOne L n)) (alphaQ c (matH (hOne L n))) ΛM := by
  refine ⟨fun w _ => ?_, fun x hx w => ?_⟩
  · have e : (fun w => F (setE z k w)) = fun w => F (setE z k 0 + putL n N N' k w) := by
      funext w'
      rw [setE_add, zero_add]
    rw [e]
    exact AnalyticAt.comp (g := F) (f := fun w => setE z k 0 + putL n N N' k w) (hF.1 _ (Set.mem_univ _))
      (analyticAt_const.add ((LinearMap.toContinuousLinearMap (putL n N N' k)).analyticAt w))
  · have hX : putL n N N' k x ∈ powLat ΛM N N' := by
      intro i j
      by_cases h : (i, j) = k
      · simp only [putL, LinearMap.coe_mk, AddHom.coe_mk, h, if_true]
        exact hx
      · simp only [putL, LinearMap.coe_mk, AddHom.coe_mk, h, if_false]
        exact ΛM.zero_mem
    have h := hF.2 (putL n N N' k x) hX (setE z k w)
    simp only [Formalism.L2.Th1.H.opU] at h ⊢
    rw [setE_add, form_put, form_put, ent_setE, ent_putL, if_pos rfl, alphaQ_put] at h
    exact h

theorem tens_spans (c : ℝ) (L : PeriodPair) (ΛM : AddSubgroup (n → ℂ)) {θ : (n → ℂ) → ℂ} (hθ0 : θ ≠ 0)
    (hline : ∀ G ∈ Formalism.L2.Th1.H.Th (matH (hOne L n)) (alphaQ c (matH (hOne L n))) ΛM, ∃ a : ℂ, G = a • θ)
    (N N' : ℕ) :
    ∀ F ∈ Formalism.L2.Th1.H.Th (formV (Formalism.L2.Th1.F.area L) n N N') (alphaQ c (formV (Formalism.L2.Th1.F.area L) n N N'))
      (powLat ΛM N N'), ∃ a : ℂ, F = a • tensPow θ N N' := by
  intro F hF
  obtain ⟨a₀, ha₀⟩ : ∃ a₀, θ a₀ ≠ 0 := by
    by_contra hno
    push Not at hno
    exact hθ0 (funext hno)
  have step : ∀ (z : n → Fin N' → Fin N → ℂ) (k : Fin N' × Fin N),
      F z * θ a₀ = F (setE z k a₀) * θ (ent k z) := by
    intro z k
    obtain ⟨a, ha⟩ := hline _ (oneEntry_mem c L ΛM hF z k)
    have h1 : F (setE z k (ent k z)) = a * θ (ent k z) := congrFun ha (ent k z)
    have h2 : F (setE z k a₀) = a * θ a₀ := congrFun ha a₀
    rw [setE_ent] at h1
    rw [h1, h2]
    ring
  have ind : ∀ (s : Finset (Fin N' × Fin N)) (z : n → Fin N' → Fin N → ℂ),
      F z * θ a₀ ^ s.card = F (repl a₀ s z) * ∏ p ∈ s, θ (ent p z) := by
    intro s
    induction s using Finset.induction_on with
    | empty =>
      intro z
      have : repl a₀ (∅ : Finset (Fin N' × Fin N)) z = z := by
        funext τ i j
        simp [repl]
      simp [this]
    | insert k s hk ih =>
      intro z
      have key := step (repl a₀ s z) k
      have e1 : setE (repl a₀ s z) k a₀ = repl a₀ (insert k s) z := by
        funext τ i j
        by_cases h : (i, j) = k <;> simp [setE, repl, Finset.mem_insert, h]
      have e2 : ent k (repl a₀ s z) = ent k z := by
        funext τ
        simp [ent, repl, hk]
      rw [e1, e2] at key
      rw [Finset.card_insert_of_notMem hk, pow_succ, ← mul_assoc, ih z, Finset.prod_insert hk]
      linear_combination (∏ p ∈ s, θ (ent p z)) * key
  refine ⟨F (fun τ _ _ => a₀ τ) / θ a₀ ^ (Finset.univ : Finset (Fin N' × Fin N)).card, ?_⟩
  funext z
  have h := ind Finset.univ z
  have e1 : repl a₀ (Finset.univ : Finset (Fin N' × Fin N)) z = fun τ _ _ => a₀ τ := by
    funext τ i j
    simp [repl]
  have e2 : tensPow θ N N' z = ∏ p : Fin N' × Fin N, θ (ent p z) := by
    unfold tensPow
    exact (Fintype.prod_prod_type' (f := fun i j => θ fun τ => z τ i j)).symm
  rw [e1] at h
  show F z = _ * tensPow θ N N' z
  rw [e2, div_mul_eq_mul_div, eq_div_iff (pow_ne_zero _ ha₀)]
  exact h

end Gen

variable {D : Car} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} {B : Cd.Base D cc δ}

theorem thZeroSpans (hS : B.StdOK) (N N' : ℕ) : B.ThZeroSpans N N' := by
  intro F hF
  have e : TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ) = Formalism.L2.Th1.F.area B.L := B.areaOK
  have h0' : TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) (StandardLatticesGL3.stdL D N') = powLat B.lamM N N' := B.lat0OK N N'
  have h1 : F ∈ Formalism.L2.Th1.H.Th (formV (TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ)) D.what₂.Tau N N')
      (alphaQ B.cq (formV (TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ)) D.what₂.Tau N N'))
      (TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) (StandardLatticesGL3.stdL D N')) := by
    refine Th_congr _ _ _ _ (fun x hx => ?_) hF
    obtain ⟨m, hm⟩ := B.qInt0 hS N N' x hx
    exact al_eq D B.tor x m hm
  rw [e, h0'] at h1
  exact tens_spans B.cq B.L B.lamM (B.thMM_ne_zero hS)
    (_root_.Formalism.L2.Ker.isThM_spans _ _ _ _ _ _ hS B.kappa_ne_zero (B.thMM_spec hS)) N N' F h1

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.J
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.OneEntryMem =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JNormOne =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JNormOne", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData\nimport Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.IntegralSquareRoots.HenselQuad\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Classical Polynomial

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.J

open Formalism.L2.PairingIndexBounds.Eq.J Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

section Abstract

variable {E : Type} [Field E] [CharZero E] [StarRing E]

theorem one_add_ne (s : E) (hs : star s = -s) (t : ℕ) : (1 : E) + t * s ≠ 0 := by
  intro h
  have e : star ((1:E) + t * s) = 1 - t * s := by
    rw [star_add, star_one, star_mul, hs, star_natCast]; ring
  have h2 : (1:E) - t * s = 0 := by rw [← e, h, star_zero]
  have h3 : (2:E) = 0 := by linear_combination h + h2
  exact two_ne_zero h3

theorem one_sub_ne (s : E) (hs : star s = -s) (t : ℕ) : (1 : E) - t * s ≠ 0 := by
  intro h
  have e : star ((1:E) - t * s) = 1 + t * s := by
    rw [star_sub, star_one, star_mul, hs, star_natCast]; ring
  have h2 : (1:E) + t * s = 0 := by rw [← e, h, star_zero]
  have h3 : (2:E) = 0 := by linear_combination h + h2
  exact two_ne_zero h3

def cay (s : E) (t : ℕ) : E := (1 + t * s) / (1 - t * s)

theorem cay_norm (s : E) (hs : star s = -s) (t : ℕ) : star (cay s t) * cay s t = 1 := by
  unfold cay
  have h1 := one_add_ne s hs t
  have h2 := one_sub_ne s hs t
  have e1 : star ((1:E) + t * s) = 1 - t * s := by
    rw [star_add, star_one, star_mul, hs, star_natCast]; ring
  have e2 : star ((1:E) - t * s) = 1 + t * s := by
    rw [star_sub, star_one, star_mul, hs, star_natCast]; ring
  rw [star_div₀, e1, e2, div_mul_div_comm, div_eq_one_iff_eq (mul_ne_zero h1 h2)]
  ring

theorem cay_inj (s : E) (hs : star s = -s) (hs0 : s ≠ 0) : Function.Injective (cay s) := by
  intro a b hab
  unfold cay at hab
  have ha1 := one_sub_ne s hs a
  have hb1 := one_sub_ne s hs b
  rw [div_eq_div_iff ha1 hb1] at hab
  have h0 : ((a:E) - b) * s * 2 = 0 := by linear_combination hab
  have hab' : ((a:E) - b) = 0 := by
    rcases mul_eq_zero.mp h0 with h | h
    · rcases mul_eq_zero.mp h with h | h
      · exact h
      · exact absurd h hs0
    · exact absurd h two_ne_zero
  exact_mod_cast sub_eq_zero.mp hab'

theorem exists_norm_one (s : E) (hs : star s = -s) (hs0 : s ≠ 0) (p : E[X]) (hp : p ≠ 0) :
    ∃ z : E, star z * z = 1 ∧ z ≠ 1 ∧ p.eval z ≠ 0 := by
  classical
  let S : Finset E := insert 1 p.roots.toFinset
  have hfin : (cay s ⁻¹' (S : Set E)).Finite :=
    S.finite_toSet.preimage (cay_inj s hs hs0).injOn
  obtain ⟨t, ht⟩ := hfin.infinite_compl.nonempty
  simp only [Set.mem_compl_iff] at ht
  refine ⟨cay s t, cay_norm s hs t, ?_, ?_⟩
  · intro h
    apply ht
    simp [S, h]
  · intro h
    apply ht
    simp [S, Polynomial.mem_roots', hp, h]

theorem eval_charpolyRev' {n : ℕ} (M : Matrix (Fin n) (Fin n) E) (z : E) :
    M.charpolyRev.eval z = (1 - z • M).det := by
  rw [Matrix.charpolyRev, ← coe_evalRingHom, RingHom.map_det]
  congr 1
  ext i j
  simp [Matrix.one_apply, apply_ite]
  exact mul_comm _ _

theorem split_unitary (s : E) (hs : star s = -s) (hs0 : s ≠ 0) {n : ℕ} (γ : Matrix.unitaryGroup (Fin n) E) :
    ∃ γ₁ γ₂ : Matrix.unitaryGroup (Fin n) E, γ = γ₁ * γ₂ ∧
      (1 - (γ₁ : Matrix (Fin n) (Fin n) E)).det ≠ 0 ∧ (1 - (γ₂ : Matrix (Fin n) (Fin n) E)).det ≠ 0 := by
  classical
  have hp : (γ : Matrix (Fin n) (Fin n) E).charpolyRev ≠ 0 := by
    intro h
    have h0 := congrArg (Polynomial.eval 0) h
    rw [eval_charpolyRev', zero_smul, sub_zero, Matrix.det_one, eval_zero] at h0
    exact one_ne_zero h0
  obtain ⟨z, hz, hz1, hev⟩ := exists_norm_one s hs hs0 _ hp
  rw [eval_charpolyRev'] at hev
  have hu : (z • (1 : Matrix (Fin n) (Fin n) E)) ∈ Matrix.unitaryGroup (Fin n) E := by
    rw [Matrix.mem_unitaryGroup_iff, star_smul, star_one, smul_mul_smul_comm, one_mul,
      mul_comm z, hz, one_smul]
  have hv : (star z • (1 : Matrix (Fin n) (Fin n) E)) ∈ Matrix.unitaryGroup (Fin n) E := by
    rw [Matrix.mem_unitaryGroup_iff, star_smul, star_one, star_star, smul_mul_smul_comm, one_mul,
      hz, one_smul]
  let u : Matrix.unitaryGroup (Fin n) E := ⟨_, hu⟩
  let v : Matrix.unitaryGroup (Fin n) E := ⟨_, hv⟩
  refine ⟨v, u * γ, ?_, ?_, ?_⟩
  · apply Subtype.ext
    show (γ : Matrix (Fin n) (Fin n) E) = (star z • 1) * ((z • 1) * (γ : Matrix (Fin n) (Fin n) E))
    rw [← mul_assoc, smul_mul_smul_comm, one_mul, hz, one_smul, one_mul]
  · show (1 - star z • (1 : Matrix (Fin n) (Fin n) E)).det ≠ 0
    have e : (1 : Matrix (Fin n) (Fin n) E) - star z • 1 = (1 - star z) • 1 := by
      rw [sub_smul, one_smul]
    rw [e, Matrix.det_smul, Matrix.det_one, mul_one, Fintype.card_fin]
    apply pow_ne_zero
    intro h
    apply hz1
    have h' : star z = 1 := (sub_eq_zero.mp h).symm
    simpa using congrArg star h'
  · show (1 - (z • 1) * (γ : Matrix (Fin n) (Fin n) E)).det ≠ 0
    rwa [smul_mul_assoc, one_mul]

end Abstract

open Formalism.BasicNotions Formalism.MainNotions NumberField

theorem exists_skew (D : Car) : letI := D.host.cmStar; ∃ s : D.host.E, star s = -s ∧ s ≠ 0 := by
  letI := D.host.cmStar
  haveI := D.host.isCMField_hostE
  by_contra hno
  push Not at hno
  apply NumberField.IsCMField.complexConj_ne_one D.host.E
  refine AlgEquiv.ext fun x => ?_
  have h := hno (x - star x) (by rw [star_sub, star_star]; ring)
  exact (sub_eq_zero.mp h).symm

theorem split_host (D : Car) {n : ℕ} :
    letI := D.host.cmStar
    ∀ γ : Matrix.unitaryGroup (Fin n) D.host.E,
    ∃ γ₁ γ₂ : Matrix.unitaryGroup (Fin n) D.host.E, γ = γ₁ * γ₂ ∧
      (1 - (γ₁ : Matrix (Fin n) (Fin n) D.host.E)).det ≠ 0 ∧ (1 - (γ₂ : Matrix (Fin n) (Fin n) D.host.E)).det ≠ 0 := by
  letI := D.host.cmStar
  intro γ
  obtain ⟨s, hs, hs0⟩ := exists_skew D
  exact split_unitary s hs hs0 γ

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.J
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JNormOne =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SecondConstantOfTrianglesData =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SecondConstantOfTrianglesData", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JNoEig\nimport Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.CharacterFactorUnitaryAction\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JNormOne\nimport Formalism.LocalToGlobal.KernelLattices.ColumnData.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Classical Matrix

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.J

open Formalism.L2.PairingIndexBounds.Eq.J Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions Formalism.L2.Th1.H Formalism.L2.Ker.Cd.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds.Eq

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Car} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} {B : Cd.Base D cc δ}

theorem first_constant_of_triangles_data (hS : B.StdOK) (hL : B.LatAll) (hTL : Tr0L D B.tor) (hG : GaussRow B)
    (hLat : ∀ N N', Even N → Even N' → Lat0IsLat B N N') (hSp : ∀ N N', Even N → Even N' → B.ThZeroSpans N N') : J1 B := by
  intro N N' γ hN hN'
  obtain ⟨γ₁, γ₂, rfl, h1, h2⟩ := split_host D γ
  have h0 := Formalism.L2.Ker.Cd.Base.thZeroMem B hS N N'
  exact J1at_mul hL hTL hN hN' h0 γ₁ γ₂
    (J1at_of_ne hS hL hG hN hN' (hLat N N' hN hN') (hSp N N' hN hN') γ₁ h1)
    (J1at_of_ne hS hL hG hN hN' (hLat N N' hN hN') (hSp N N' hN hN') γ₂ h2)

theorem second_constant_of_triangles_data (hS : B.StdOK) (hL : B.LatAll) (hTR : Tr0R D B.tor) (hG : GaussRow B)
    (hLat : ∀ N N', Even N → Even N' → Lat0IsLat B N N') (hSp : ∀ N N', Even N → Even N' → B.ThZeroSpans N N') : J2 B := by
  intro N N' γ' hN hN'
  obtain ⟨γ₁, γ₂, rfl, h1, h2⟩ := split_host D γ'
  have h0 := Formalism.L2.Ker.Cd.Base.thZeroMem B hS N N'
  have key := J2at_mul hL hTR hN hN' h0 γ₁ γ₂
    (J2at_of_ne hS hL hG hN hN' (hLat N N' hN hN') (hSp N N' hN hN') γ₁ h1)
    (J2at_of_ne hS hL hG hN hN' (hLat N N' hN hN') (hSp N N' hN hN') γ₂ h2)
  have hhalf : B.thHalf N N' (StandardLatticesGL3.stdL D N) = B.thZero N N' := by
    unfold Formalism.L2.Ker.Cd.Base.thHalf
    exact iopSelf D B.tor N N' _ _ (Formalism.L2.Ker.Cd.mem_ThSp_of D B.tor _ _ h0)
  unfold J2at at key
  unfold Formalism.L2.Ker.Cd.Base.thMoved
  rw [hhalf]
  exact key

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.J
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SecondConstantOfTrianglesData =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JFinal =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JFinal", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JArith\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.EqPOf\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.OneEntryMem\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SecondConstantOfTrianglesData\nimport Formalism.LocalToGlobal.KernelLattices.ColumnData.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.J

open Formalism.L2.PairingIndexBounds.Eq.J Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions Formalism.L2.Ker.Cd.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds.Eq

variable {D : Car} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} {B : Cd.Base D cc δ}

theorem first_constant_of_gauss_sum (hS : B.StdOK) (hL : B.LatAll) (hTL : Tr0L D B.tor) (hG : GaussRow B) : J1 B :=
  first_constant_of_triangles_data hS hL hTL hG (fun N N' _ _ => lat0IsLat hS N N') (fun N N' _ _ => thZeroSpans hS N N')

theorem second_constant_of_gauss_sum (hS : B.StdOK) (hL : B.LatAll) (hTR : Tr0R D B.tor) (hG : GaussRow B) : J2 B :=
  second_constant_of_triangles_data hS hL hTR hG (fun N N' _ _ => lat0IsLat hS N N') (fun N N' _ _ => thZeroSpans hS N N')

theorem first_constant_of_pullback (hS : B.StdOK) (hL : B.LatAll) (hTL : Tr0L D B.tor) (hNeg : NegOneNorm D) : J1 B :=
  first_constant_of_gauss_sum hS hL hTL (gaussRow_of B hS hL hNeg)

theorem second_constant_of_pullback (hS : B.StdOK) (hL : B.LatAll) (hTR : Tr0R D B.tor) (hNeg : NegOneNorm D) : J2 B :=
  second_constant_of_gauss_sum hS hL hTR (gaussRow_of B hS hL hNeg)

theorem eqP_of_neg (B : Cd.Base D cc δ) (hcc : TaylorLogMetric.IsCurveIdeal D cc) (hδ : TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (hδ0 : δ ≠ 0)
    (hS : B.StdOK) (χ : TaylorLogMetric.IdE D → ℂ) (hχ : TaylorLogMetric.IsChi D χ)
    (hSq : SqP D B.tor) (hTL : Tr0L D B.tor) (hTR : Tr0R D B.tor) (hNeg : NegOneNorm D) : B.EqP χ := by
  have hL := B.latAll hcc hδ hδ0
  exact eqP B hcc hδ hδ0 hS χ hχ hSq hTL hTR (first_constant_of_pullback hS hL hTL hNeg) (second_constant_of_pullback hS hL hTR hNeg)

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.J
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JFinal =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SecondConstantHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SecondConstantHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JArith\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.StarSqrtNeg\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JFinal\npublic import Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.IntegralSquareRoots.HenselQuad\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.J

open Formalism.L2.PairingIndexBounds.Eq.J Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions Formalism.L2.Ker.Cd.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds.Eq

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Car}

theorem isIntegral_sqrt (x : D.host.E) (n : ℕ) (hx : x ^ 2 = -(n : D.host.E)) : IsIntegral ℤ x := by
  refine ⟨Polynomial.X ^ 2 + Polynomial.C (n : ℤ), Polynomial.monic_X_pow_add_C _ two_ne_zero, ?_⟩
  simp [hx]

theorem isIntegral_int (k : ℤ) : IsIntegral ℤ (k : D.host.E) := by
  have := isIntegral_algebraMap (R := ℤ) (A := D.host.E) (x := k)
  simpa using this

theorem negOneNorm (D : Car) : NegOneNorm D := by
  intro m hm
  obtain ⟨hq, hd, hq8, hd16, -⟩ := D.host.hyp
  have hqd : D.host.q ≠ D.host.d := by omega
  obtain ⟨α, β, γ, δ, s, h⟩ := Neg.rep_int D.host.q D.host.d hq hd hq8 hqd m hm
  have ha : (D.host.sqq : D.host.E) ^ 2 = -(D.host.q : D.host.E) :=
    D.host.sqq_sq
  have hb : (D.host.sqd : D.host.E) ^ 2 = -(D.host.d : D.host.E) :=
    D.host.sqd_sq
  obtain ⟨a, haa⟩ : ∃ a : D.host.E, a = D.host.sqq := ⟨_, rfl⟩
  obtain ⟨b, hbb⟩ : ∃ b : D.host.E, b = D.host.sqd := ⟨_, rfl⟩
  rw [← haa] at ha
  rw [← hbb] at hb
  have hsa := _root_.UpperTheory.Reformulated.B.StarSqrtNeg.star_sqrt_neg a _ hq.pos ha
  have hsb := _root_.UpperTheory.Reformulated.B.StarSqrtNeg.star_sqrt_neg b _ hd.pos hb
  have hint : IsIntegral ℤ (((α : D.host.E) + β * a) * ((γ : D.host.E) + δ * b)) :=
    ((isIntegral_int α).add ((isIntegral_int β).mul (isIntegral_sqrt a _ ha))).mul
      ((isIntegral_int γ).add ((isIntegral_int δ).mul (isIntegral_sqrt b _ hb)))
  refine ⟨⟨_, hint⟩, ⟨_, isIntegral_int s⟩, ?_, ?_⟩
  · show star (s : D.host.E) = (s : D.host.E)
    exact star_intCast s
  · show star (((α : D.host.E) + β * a) * ((γ : D.host.E) + δ * b)) * (((α : D.host.E) + β * a) * ((γ : D.host.E) + δ * b)) =
      -1 + (m : D.host.E) * (s : D.host.E)
    have hZ : ((α : D.host.E) ^ 2 + D.host.q * (β : D.host.E) ^ 2) * ((γ : D.host.E) ^ 2 + D.host.d * (δ : D.host.E) ^ 2) =
        -1 + (m : D.host.E) * (s : D.host.E) := by exact_mod_cast congrArg (Int.cast : ℤ → D.host.E) h
    rw [star_mul', star_add, star_add, star_mul', star_mul', star_intCast, star_intCast, star_intCast, star_intCast,
      hsa, hsb]
    linear_combination hZ + (-(β : D.host.E) ^ 2 * ((γ : D.host.E) ^ 2 - (δ : D.host.E) ^ 2 * b ^ 2)) * ha +
      (-((α : D.host.E) ^ 2 + D.host.q * (β : D.host.E) ^ 2) * (δ : D.host.E) ^ 2) * hb

variable {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} {B : Cd.Base D cc δ}

theorem eqP_of_paths (B : Cd.Base D cc δ) (hcc : TaylorLogMetric.IsCurveIdeal D cc) (hδ : TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (hδ0 : δ ≠ 0)
    (hS : B.StdOK) (χ : TaylorLogMetric.IdE D → ℂ) (hχ : TaylorLogMetric.IsChi D χ)
    (hSq : SqP D B.tor) (hTL : Tr0L D B.tor) (hTR : Tr0R D B.tor) : B.EqP χ :=
  eqP_of_neg B hcc hδ hδ0 hS χ hχ hSq hTL hTR (negOneNorm D)

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.J
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SecondConstantHolds =====
