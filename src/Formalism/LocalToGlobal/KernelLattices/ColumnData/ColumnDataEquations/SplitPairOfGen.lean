module

public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.Reduction
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.GaussDegenerate
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.NormOneUnitIdealAlt
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph
public import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.SelfDualCovolume
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JArith
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.IopIso
public import Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.TripleSumIndependence.TripleSumIndep
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SecondConstantHolds
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqFacts
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.WeightThresholdDefs
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLMat
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.GMConjTranspose
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLInput
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.BaseLinkOfNonzeroDelta
public import Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.SplitPairGen
public import Formalism.LocalToGlobal.KernelLattices.ColumnData.StdOKP
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SplitPairGen
import Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.IntegralSquareRoots.HenselQuad
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.KernelLattices.ColumnData.ThIndep
import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated2
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.RightMoveTrianglesOfUnit, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.MuConc, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.MuFinal, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqFinal, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLComm, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLLaw, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLMain, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLTop, Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SplitPairOfGen

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.RightMoveTrianglesOfUnit =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.RightMoveTrianglesOfUnit", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.Reduction\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.GaussDegenerate\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.NormOneUnitIdealAlt\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\npublic import Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.SelfDualCovolume\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.IntegralSquareRoots.HenselQuad\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq

open Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions Formalism.L2.Th1.H

variable {D : Car} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ}

def MuOneL (B : Cd.Base D cc δ) : Prop :=
  ∀ N N' (L L₁ : Submodule (𝓞 D.host.E) (Fin N → D.host.E)), Even N → Even N' → SD D L → SD D L₁ →
    ∃ S₂ S₃ : Finset (TaylorLogMetric.VC D N N'),
      IsReps (TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) (StandardLatticesGL3.stdL D N')) (TaylorLogMetric.La D B.tor L (StandardLatticesGL3.stdL D N')) S₂ ∧
      IsReps (TaylorLogMetric.La D B.tor L (StandardLatticesGL3.stdL D N')) (TaylorLogMetric.La D B.tor L₁ (StandardLatticesGL3.stdL D N')) S₃ ∧
      Formalism.L2.Th1.H.tripleMu
        (Ker.formV (TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ)) D.what₂.Tau N N') (TaylorLogMetric.al D B.tor)
        (TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) (StandardLatticesGL3.stdL D N')) (TaylorLogMetric.La D B.tor L (StandardLatticesGL3.stdL D N'))
        (TaylorLogMetric.La D B.tor L₁ (StandardLatticesGL3.stdL D N')) S₂ S₃ = 1

def MuOneR (B : Cd.Base D cc δ) : Prop :=
  ∀ N N' (L' L'' : Submodule (𝓞 D.host.E) (Fin N' → D.host.E)), Even N → Even N' → SD D L' → SD D L'' →
    ∃ S₂ S₃ : Finset (TaylorLogMetric.VC D N N'),
      IsReps (TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) (StandardLatticesGL3.stdL D N')) (TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) L') S₂ ∧
      IsReps (TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) L') (TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) L'') S₃ ∧
      Formalism.L2.Th1.H.tripleMu
        (Ker.formV (TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ)) D.what₂.Tau N N') (TaylorLogMetric.al D B.tor)
        (TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) (StandardLatticesGL3.stdL D N')) (TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) L')
        (TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) L'') S₂ S₃ = 1

theorem tripleData_of {B : Cd.Base D cc δ} (hL : B.LatAll) {N N' : ℕ}
    {L₁ L₂ L₃ : Submodule (𝓞 D.host.E) (Fin N → D.host.E)} {L₁' L₂' L₃' : Submodule (𝓞 D.host.E) (Fin N' → D.host.E)}
    (a1 : TaylorLogMetric.admitted D N N' L₁ L₁') (a2 : TaylorLogMetric.admitted D N N' L₂ L₂') (a3 : TaylorLogMetric.admitted D N N' L₃ L₃') :
    TripleData (Ker.formV (TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ)) D.what₂.Tau N N') (TaylorLogMetric.al D B.tor)
      (TaylorLogMetric.La D B.tor L₁ L₁') (TaylorLogMetric.La D B.tor L₂ L₂') (TaylorLogMetric.La D B.tor L₃ L₃') :=
  { herm := _root_.Formalism.L2.Ker.Cd.formV_herm _ _ _ _
    sd₁ := (hL.1 N N' _ _ a1).1
    sd₂ := (hL.1 N N' _ _ a2).1
    sd₃ := (hL.1 N N' _ _ a3).1
    sc₁ := (hL.1 N N' _ _ a1).2
    sc₂ := (hL.1 N N' _ _ a2).2
    sc₃ := (hL.1 N N' _ _ a3).2
    i₁₂ := (hL.2 N N' _ _ _ _ a1 a2).1
    i₂₁ := (hL.2 N N' _ _ _ _ a1 a2).2
    i₁₃ := (hL.2 N N' _ _ _ _ a1 a3).1
    i₃₁ := (hL.2 N N' _ _ _ _ a1 a3).2
    i₂₃ := (hL.2 N N' _ _ _ _ a2 a3).1
    i₃₂ := (hL.2 N N' _ _ _ _ a2 a3).2 }

theorem left_move_triangles_of_unit {B : Cd.Base D cc δ} (hL : B.LatAll) (hM : MuOneL B) : Tr0L D B.tor := by
  intro N N' L L₁ hN hN' hSL hSL1 G hG
  obtain ⟨S₂, S₃, h2, h3, hmu⟩ := hM N N' L L₁ hN hN' hSL hSL1
  have hA0 : TaylorLogMetric.admitted D N N' (StandardLatticesGL3.stdL D N) (StandardLatticesGL3.stdL D N') := ⟨hN, hN', sd0 N, sd0 N'⟩
  have hA1 : TaylorLogMetric.admitted D N N' L (StandardLatticesGL3.stdL D N') := ⟨hN, hN', hSL, sd0 N'⟩
  have hA2 : TaylorLogMetric.admitted D N N' L₁ (StandardLatticesGL3.stdL D N') := ⟨hN, hN', hSL1, sd0 N'⟩
  have hT := tripleData_of hL hA0 hA1 hA2
  funext v
  have h5 := tripleFormula _ _ _ _ _ _ hT S₂ S₃ h2 h3 G hG.2 v
  rw [hmu, one_mul] at h5
  simp only [Cd.Iop_eq]
  exact h5

theorem right_move_triangles_of_unit {B : Cd.Base D cc δ} (hL : B.LatAll) (hM : MuOneR B) : Tr0R D B.tor := by
  intro N N' L' L'' hN hN' hSL hSL1 G hG
  obtain ⟨S₂, S₃, h2, h3, hmu⟩ := hM N N' L' L'' hN hN' hSL hSL1
  have hA0 : TaylorLogMetric.admitted D N N' (StandardLatticesGL3.stdL D N) (StandardLatticesGL3.stdL D N') := ⟨hN, hN', sd0 N, sd0 N'⟩
  have hA1 : TaylorLogMetric.admitted D N N' (StandardLatticesGL3.stdL D N) L' := ⟨hN, hN', sd0 N, hSL⟩
  have hA2 : TaylorLogMetric.admitted D N N' (StandardLatticesGL3.stdL D N) L'' := ⟨hN, hN', sd0 N, hSL1⟩
  have hT := tripleData_of hL hA0 hA1 hA2
  funext v
  have h5 := tripleFormula _ _ _ _ _ _ hT S₂ S₃ h2 h3 G hG.2 v
  rw [hmu, one_mul] at h5
  simp only [Cd.Iop_eq]
  exact h5

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.RightMoveTrianglesOfUnit =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.MuConc =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.MuConc", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JArith\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.IopIso\nimport Formalism.LocalToGlobal.KernelLattices.ColumnData.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.TripleSumIndependence.TripleSumIndep\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate
open NumberField Formalism.BasicNotions Classical Matrix

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.Mu

open Formalism.L2.PairingIndexBounds.Eq.Mu Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions Formalism.L2.Th1.H Formalism.L2.Ker.Cd.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds.Eq

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Car}

theorem yy_stab {N N' : ℕ} {M : Submodule (𝓞 D.host.E) (Fin N → D.host.E)}
    {M' : Submodule (𝓞 D.host.E) (Fin N' → D.host.E)}
    (f : Matrix (Fin N') (Fin N) D.host.E →ₗ[𝓞 D.host.E] Matrix (Fin N') (Fin N) D.host.E)
    (hfE : ∀ (a : D.host.E) A, f (a • A) = a • f A)
    (hgen : ∀ A : Matrix (Fin N') (Fin N) D.host.E, (∀ x ∈ M, A *ᵥ x ∈ M') → ∀ x ∈ M, f A *ᵥ x ∈ M')
    {A : Matrix (Fin N') (Fin N) D.host.E} (hA : A ∈ TaylorLogMetric.YYl D M M') : f A ∈ TaylorLogMetric.YYl D M M' := by
  have hH : TaylorLogMetric.homL D M M' ≤ (TaylorLogMetric.homL D M M').comap f :=
    Submodule.span_le.2 fun B hB => Submodule.subset_span (hgen B hB)
  have hY : TaylorLogMetric.YYl D M M' ≤ (TaylorLogMetric.YYl D M M').comap f := by
    refine Submodule.span_le.2 fun B hB => ?_
    obtain ⟨a, ha, A', hA', rfl⟩ := hB
    show f (a • A') ∈ TaylorLogMetric.YYl D M M'
    rw [hfE]
    exact Submodule.subset_span ⟨a, ha, f A', hH hA', rfl⟩
  exact hY hA

theorem la_stab {N N' : ℕ} (T : TaylorLogMetric.Tor D) {M : Submodule (𝓞 D.host.E) (Fin N → D.host.E)}
    {M' : Submodule (𝓞 D.host.E) (Fin N' → D.host.E)} (Φ : TaylorLogMetric.VC D N N' →+ TaylorLogMetric.VC D N N')
    (f : Matrix (Fin N') (Fin N) D.host.E → Matrix (Fin N') (Fin N) D.host.E)
    (hΦ : ∀ (w : ℂ) A, Φ (w • TaylorLogMetric.embV D T A) = w • TaylorLogMetric.embV D T (f A))
    (hf : ∀ A ∈ TaylorLogMetric.YYl D M M', f A ∈ TaylorLogMetric.YYl D M M') {z : TaylorLogMetric.VC D N N'} (hz : z ∈ TaylorLogMetric.La D T M M') :
    Φ z ∈ TaylorLogMetric.La D T M M' := by
  unfold TaylorLogMetric.La at hz ⊢
  induction hz using AddSubgroup.closure_induction with
  | mem v hv =>
    obtain ⟨w, hw, A, hA, rfl⟩ := hv
    rw [hΦ]
    exact AddSubgroup.subset_closure ⟨w, hw, f A, hf A hA, rfl⟩
  | zero => rw [map_zero]; exact AddSubgroup.zero_mem _
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact AddSubgroup.add_mem _ hx hy
  | neg x _ hx => rw [map_neg]; exact AddSubgroup.neg_mem _ hx

theorem mulO_apply {N N' : ℕ} (r : D.host.E) (x : TaylorLogMetric.VC D N N') (τ : D.what₂.Tau) (i : Fin N') (j : Fin N) :
    J.mulO N N' r x τ i j = TaylorLogMetric.embT D τ r * x τ i j := rfl

theorem mulO_la {N N' : ℕ} (T : TaylorLogMetric.Tor D) (hT : ∀ τ x, T.emb τ x = TaylorLogMetric.embT D τ x)
    {M : Submodule (𝓞 D.host.E) (Fin N → D.host.E)} {M' : Submodule (𝓞 D.host.E) (Fin N' → D.host.E)}
    (r : 𝓞 D.host.E) {z : TaylorLogMetric.VC D N N'} (hz : z ∈ TaylorLogMetric.La D T M M') :
    J.mulO N N' (r : D.host.E) z ∈ TaylorLogMetric.La D T M M' := by
  refine la_stab T (J.mulO N N' (r : D.host.E)).toAddMonoidHom (fun A => (r : D.host.E) • A) ?_ ?_ hz
  · intro w A
    funext τ i j
    simp only [LinearMap.toAddMonoidHom_coe, mulO_apply, TaylorLogMetric.embV, Pi.smul_apply, smul_eq_mul, Matrix.smul_apply, hT]
    rw [map_mul]; ring
  · intro A hA
    rw [show (r : D.host.E) • A = r • A from algebraMap_smul D.host.E r A]
    exact Submodule.smul_mem _ r hA

theorem mem_stdL {n : ℕ} {v : Fin n → D.host.E} :
    v ∈ StandardLatticesGL3.stdL D n ↔ ∀ i, v i ∈ (1 : Submodule (𝓞 D.host.E) D.host.E) := by
  simp [StandardLatticesGL3.stdL, Submodule.mem_pi]

def swp (n : ℕ) (i : Fin n) : Fin n :=
  ⟨if i.val < n / 2 then i.val + n / 2 else i.val - n / 2, by have := i.isLt; split_ifs <;> omega⟩

theorem swp_val (n : ℕ) (i : Fin n) :
    (swp n i).val = if i.val < n / 2 then i.val + n / 2 else i.val - n / 2 := rfl

theorem swp_swp {n : ℕ} (h : Even n) (i : Fin n) : swp n (swp n i) = i := by
  obtain ⟨k, hk⟩ := h
  apply Fin.ext
  rw [swp_val, swp_val]
  have := i.isLt
  split_ifs <;> omega

theorem swp_lt {n : ℕ} (h : Even n) (i : Fin n) : (swp n i).val < n / 2 ↔ ¬ i.val < n / 2 := by
  obtain ⟨k, hk⟩ := h
  rw [swp_val]; have := i.isLt
  split_ifs <;> omega

def swpE {n : ℕ} (h : Even n) : Equiv.Perm (Fin n) := Function.Involutive.toPerm (swp n) (swp_swp h)

def rowP (N N' : ℕ) : TaylorLogMetric.VC D N N' →+ TaylorLogMetric.VC D N N' where
  toFun z := fun τ i j => if i.val < N' / 2 then z τ i j else 0
  map_zero' := by funext τ i j; simp
  map_add' x y := by funext τ i j; simp only [Pi.add_apply]; split_ifs <;> simp

def rowSw (N N' : ℕ) : TaylorLogMetric.VC D N N' →+ TaylorLogMetric.VC D N N' where
  toFun z := fun τ i j => z τ (swp N' i) j
  map_zero' := rfl
  map_add' _ _ := rfl

def colP (N N' : ℕ) : TaylorLogMetric.VC D N N' →+ TaylorLogMetric.VC D N N' where
  toFun z := fun τ i j => if j.val < N / 2 then z τ i j else 0
  map_zero' := by funext τ i j; simp
  map_add' x y := by funext τ i j; simp only [Pi.add_apply]; split_ifs <;> simp

def colSw (N N' : ℕ) : TaylorLogMetric.VC D N N' →+ TaylorLogMetric.VC D N N' where
  toFun z := fun τ i j => z τ i (swp N j)
  map_zero' := rfl
  map_add' _ _ := rfl

theorem rowP_apply {N N' : ℕ} (z : TaylorLogMetric.VC D N N') (τ : D.what₂.Tau) (i : Fin N') (j : Fin N) :
    rowP N N' z τ i j = if i.val < N' / 2 then z τ i j else 0 := rfl
theorem rowSw_apply {N N' : ℕ} (z : TaylorLogMetric.VC D N N') (τ : D.what₂.Tau) (i : Fin N') (j : Fin N) :
    rowSw N N' z τ i j = z τ (swp N' i) j := rfl
theorem colP_apply {N N' : ℕ} (z : TaylorLogMetric.VC D N N') (τ : D.what₂.Tau) (i : Fin N') (j : Fin N) :
    colP N N' z τ i j = if j.val < N / 2 then z τ i j else 0 := rfl
theorem colSw_apply {N N' : ℕ} (z : TaylorLogMetric.VC D N N') (τ : D.what₂.Tau) (i : Fin N') (j : Fin N) :
    colSw N N' z τ i j = z τ i (swp N j) := rfl

section Facts

variable {N N' : ℕ}

theorem rowProjection_rowProjection (x : TaylorLogMetric.VC D N N') : rowP N N' (rowP N N' x) = rowP N N' x := by
  funext τ i j; simp only [rowP_apply]; split_ifs <;> rfl
theorem colP_colP (x : TaylorLogMetric.VC D N N') : colP N N' (colP N N' x) = colP N N' x := by
  funext τ i j; simp only [colP_apply]; split_ifs <;> rfl

theorem rowProjection_orthogonal (A : ℝ) (x y : TaylorLogMetric.VC D N N') :
    Ker.formV A D.what₂.Tau N N' (rowP N N' x) (y - rowP N N' y) = 0 := by
  rw [Cd.formV_apply, Finset.sum_eq_zero, zero_div]
  intro τ _; refine Finset.sum_eq_zero fun i _ => Finset.sum_eq_zero fun j _ => ?_
  simp only [rowP_apply, Pi.sub_apply]; split_ifs <;> simp
theorem colP_orth (A : ℝ) (x y : TaylorLogMetric.VC D N N') :
    Ker.formV A D.what₂.Tau N N' (colP N N' x) (y - colP N N' y) = 0 := by
  rw [Cd.formV_apply, Finset.sum_eq_zero, zero_div]
  intro τ _; refine Finset.sum_eq_zero fun i _ => Finset.sum_eq_zero fun j _ => ?_
  simp only [colP_apply, Pi.sub_apply]; split_ifs <;> simp

theorem rowSw_sw (h : Even N') (x : TaylorLogMetric.VC D N N') : rowSw N N' (rowSw N N' x) = x := by
  funext τ i j; simp only [rowSw_apply, swp_swp h]
theorem colSw_sw (h : Even N) (x : TaylorLogMetric.VC D N N') : colSw N N' (colSw N N' x) = x := by
  funext τ i j; simp only [colSw_apply, swp_swp h]

theorem rowSw_p (h : Even N') (x : TaylorLogMetric.VC D N N') :
    rowP N N' (rowSw N N' x) = rowSw N N' x - rowSw N N' (rowP N N' x) := by
  funext τ i j
  simp only [rowP_apply, rowSw_apply, Pi.sub_apply]
  have := swp_lt h i
  split_ifs <;> simp_all
theorem colSw_p (h : Even N) (x : TaylorLogMetric.VC D N N') :
    colP N N' (colSw N N' x) = colSw N N' x - colSw N N' (colP N N' x) := by
  funext τ i j
  simp only [colP_apply, colSw_apply, Pi.sub_apply]
  have := swp_lt h j
  split_ifs <;> simp_all

theorem rowSw_form (h : Even N') (A : ℝ) (x y : TaylorLogMetric.VC D N N') :
    Ker.formV A D.what₂.Tau N N' (rowSw N N' x) (rowSw N N' y) = Ker.formV A D.what₂.Tau N N' x y := by
  rw [Cd.formV_apply, Cd.formV_apply]
  congr 1
  refine Finset.sum_congr rfl fun τ _ => ?_
  exact Equiv.sum_comp (swpE h) (fun i => ∑ j, x τ i j * (starRingEnd ℂ) (y τ i j))
theorem colSw_form (h : Even N) (A : ℝ) (x y : TaylorLogMetric.VC D N N') :
    Ker.formV A D.what₂.Tau N N' (colSw N N' x) (colSw N N' y) = Ker.formV A D.what₂.Tau N N' x y := by
  rw [Cd.formV_apply, Cd.formV_apply]
  congr 1
  refine Finset.sum_congr rfl fun τ _ => Finset.sum_congr rfl fun i _ => ?_
  exact Equiv.sum_comp (swpE h) (fun j => x τ i j * (starRingEnd ℂ) (y τ i j))

theorem al_form (T : TaylorLogMetric.Tor D) (f : TaylorLogMetric.VC D N N' → TaylorLogMetric.VC D N N')
    (hf : ∀ x y, Ker.formV (TaylorLogMetric.area T.abelian₂) D.what₂.Tau N N' (f x) (f y) = Ker.formV (TaylorLogMetric.area T.abelian₂) D.what₂.Tau N N' x y)
    (x : TaylorLogMetric.VC D N N') : TaylorLogMetric.al D T (f x) = TaylorLogMetric.al D T x := by
  unfold TaylorLogMetric.al
  rw [Cd.Hf_eq, Cd.Hf_eq, hf]

theorem mulO_rowP (r : D.host.E) (x : TaylorLogMetric.VC D N N') :
    J.mulO N N' r (rowP N N' x) = rowP N N' (J.mulO N N' r x) := by
  funext τ i j; simp only [mulO_apply, rowP_apply]; split_ifs <;> simp
theorem mulO_colP (r : D.host.E) (x : TaylorLogMetric.VC D N N') :
    J.mulO N N' r (colP N N' x) = colP N N' (J.mulO N N' r x) := by
  funext τ i j; simp only [mulO_apply, colP_apply]; split_ifs <;> simp

end Facts

section Lat

variable {N N' : ℕ}

def rowPM (N N' : ℕ) : Matrix (Fin N') (Fin N) D.host.E →ₗ[𝓞 D.host.E] Matrix (Fin N') (Fin N) D.host.E where
  toFun A := Matrix.of fun i j => if i.val < N' / 2 then A i j else 0
  map_add' A B := by refine Matrix.ext fun i j => ?_; simp only [of_apply, Matrix.add_apply]; split_ifs <;> simp
  map_smul' c A := by refine Matrix.ext fun i j => ?_; simp only [of_apply, Matrix.smul_apply, RingHom.id_apply]; split_ifs <;> simp

def rowSwM (N N' : ℕ) : Matrix (Fin N') (Fin N) D.host.E →ₗ[𝓞 D.host.E] Matrix (Fin N') (Fin N) D.host.E where
  toFun A := Matrix.of fun i j => A (swp N' i) j
  map_add' A B := by ext i j; simp
  map_smul' c A := by ext i j; simp

def colPM (N N' : ℕ) : Matrix (Fin N') (Fin N) D.host.E →ₗ[𝓞 D.host.E] Matrix (Fin N') (Fin N) D.host.E where
  toFun A := Matrix.of fun i j => if j.val < N / 2 then A i j else 0
  map_add' A B := by refine Matrix.ext fun i j => ?_; simp only [of_apply, Matrix.add_apply]; split_ifs <;> simp
  map_smul' c A := by refine Matrix.ext fun i j => ?_; simp only [of_apply, Matrix.smul_apply, RingHom.id_apply]; split_ifs <;> simp

def colSwM (N N' : ℕ) : Matrix (Fin N') (Fin N) D.host.E →ₗ[𝓞 D.host.E] Matrix (Fin N') (Fin N) D.host.E where
  toFun A := Matrix.of fun i j => A i (swp N j)
  map_add' A B := by ext i j; simp
  map_smul' c A := by ext i j; simp

variable (T : TaylorLogMetric.Tor D) (hT : ∀ τ x, T.emb τ x = TaylorLogMetric.embT D τ x)
include hT

theorem rowProjection_mem_lattice {M : Submodule (𝓞 D.host.E) (Fin N → D.host.E)} {z : TaylorLogMetric.VC D N N'}
    (hz : z ∈ TaylorLogMetric.La D T M (StandardLatticesGL3.stdL D N')) : rowP N N' z ∈ TaylorLogMetric.La D T M (StandardLatticesGL3.stdL D N') := by
  refine la_stab T (rowP N N') (rowPM N N') ?_ (fun A hA => yy_stab (rowPM N N') ?_ ?_ hA) hz
  · intro w A; funext τ i j
    simp only [rowP_apply, rowPM, LinearMap.coe_mk, AddHom.coe_mk, TaylorLogMetric.embV, Pi.smul_apply, smul_eq_mul, of_apply, hT]
    split_ifs <;> simp
  · intro a A; refine Matrix.ext fun i j => ?_
    simp only [rowPM, LinearMap.coe_mk, AddHom.coe_mk, of_apply, Matrix.smul_apply, smul_eq_mul]; split_ifs <;> simp
  · intro A hA x hx
    have h := mem_stdL.1 (hA x hx)
    refine mem_stdL.2 fun i => ?_
    by_cases hi : i.val < N' / 2
    · have e : (rowPM N N' A *ᵥ x) i = (A *ᵥ x) i := by
        simp only [rowPM, LinearMap.coe_mk, AddHom.coe_mk, mulVec, dotProduct, of_apply, if_pos hi]
      rw [e]; exact h i
    · have e : (rowPM N N' A *ᵥ x) i = 0 := by
        simp only [rowPM, LinearMap.coe_mk, AddHom.coe_mk, mulVec, dotProduct, of_apply, if_neg hi, zero_mul,
          Finset.sum_const_zero]
      rw [e]; exact Submodule.zero_mem _

theorem rowSw_la {M : Submodule (𝓞 D.host.E) (Fin N → D.host.E)} {z : TaylorLogMetric.VC D N N'}
    (hz : z ∈ TaylorLogMetric.La D T M (StandardLatticesGL3.stdL D N')) : rowSw N N' z ∈ TaylorLogMetric.La D T M (StandardLatticesGL3.stdL D N') := by
  refine la_stab T (rowSw N N') (rowSwM N N') ?_ (fun A hA => yy_stab (rowSwM N N') ?_ ?_ hA) hz
  · intro w A; funext τ i j; rfl
  · intro a A; ext i j; rfl
  · intro A hA x hx
    have h := mem_stdL.1 (hA x hx)
    exact mem_stdL.2 fun i => h (swp N' i)

theorem colP_mem_la {M' : Submodule (𝓞 D.host.E) (Fin N' → D.host.E)} {z : TaylorLogMetric.VC D N N'}
    (hz : z ∈ TaylorLogMetric.La D T (StandardLatticesGL3.stdL D N) M') : colP N N' z ∈ TaylorLogMetric.La D T (StandardLatticesGL3.stdL D N) M' := by
  refine la_stab T (colP N N') (colPM N N') ?_ (fun A hA => yy_stab (colPM N N') ?_ ?_ hA) hz
  · intro w A; funext τ i j
    simp only [colP_apply, colPM, LinearMap.coe_mk, AddHom.coe_mk, TaylorLogMetric.embV, Pi.smul_apply, smul_eq_mul, of_apply, hT]
    split_ifs <;> simp
  · intro a A; refine Matrix.ext fun i j => ?_
    simp only [colPM, LinearMap.coe_mk, AddHom.coe_mk, of_apply, Matrix.smul_apply, smul_eq_mul]; split_ifs <;> simp
  · intro A hA x hx
    have hx' : (fun j : Fin N => if j.val < N / 2 then x j else 0) ∈ StandardLatticesGL3.stdL D N := by
      refine mem_stdL.2 fun j => ?_
      split_ifs
      · exact mem_stdL.1 hx j
      · exact Submodule.zero_mem _
    have e : colPM N N' A *ᵥ x = A *ᵥ (fun j : Fin N => if j.val < N / 2 then x j else 0) := by
      funext i
      simp only [colPM, LinearMap.coe_mk, AddHom.coe_mk, mulVec, dotProduct, of_apply]
      refine Finset.sum_congr rfl fun j _ => ?_
      split_ifs <;> simp
    rw [e]; exact hA _ hx'

theorem colSw_la (hN : Even N) {M' : Submodule (𝓞 D.host.E) (Fin N' → D.host.E)} {z : TaylorLogMetric.VC D N N'}
    (hz : z ∈ TaylorLogMetric.La D T (StandardLatticesGL3.stdL D N) M') : colSw N N' z ∈ TaylorLogMetric.La D T (StandardLatticesGL3.stdL D N) M' := by
  refine la_stab T (colSw N N') (colSwM N N') ?_ (fun A hA => yy_stab (colSwM N N') ?_ ?_ hA) hz
  · intro w A; funext τ i j; rfl
  · intro a A; ext i j; rfl
  · intro A hA x hx
    have hx' : (fun j : Fin N => x (swp N j)) ∈ StandardLatticesGL3.stdL D N := mem_stdL.2 fun j => mem_stdL.1 hx (swp N j)
    have e : colSwM N N' A *ᵥ x = A *ᵥ (fun j : Fin N => x (swp N j)) := by
      funext i
      simp only [colSwM, LinearMap.coe_mk, AddHom.coe_mk, mulVec, dotProduct, of_apply]
      have := Equiv.sum_comp (swpE hN) (fun j => A i j * x (swp N j))
      rw [← this]
      refine Finset.sum_congr rfl fun j _ => ?_
      show A i (swp N j) * x j = A i (swp N j) * x (swp N (swp N j))
      rw [swp_swp hN]
    rw [e]; exact hA _ hx'

end Lat

section Mult

variable {N N' : ℕ}

theorem mulO_mul (r r' : D.host.E) (x : TaylorLogMetric.VC D N N') :
    J.mulO N N' r (J.mulO N N' r' x) = J.mulO N N' (r * r') x := by
  funext τ i j; simp only [mulO_apply, map_mul]; ring

theorem form_mul (A : ℝ) (l s : D.host.E) (n : ℕ) (hl : star l * l = -1 + (n : D.host.E) * s)
    (x y : TaylorLogMetric.VC D N N') :
    Ker.formV A D.what₂.Tau N N' (J.mulO N N' l x) (J.mulO N N' l y)
      = -Ker.formV A D.what₂.Tau N N' x y + (n : ℂ) * Ker.formV A D.what₂.Tau N N' x (J.mulO N N' s y) := by
  rw [J.mulO_adj, mulO_mul, hl]
  have : J.mulO N N' (-1 + (n : D.host.E) * s) y = -y + n • J.mulO N N' s y := by
    funext τ i j
    simp only [mulO_apply, Pi.add_apply, Pi.neg_apply, Pi.smul_apply, map_add (f := _), map_neg, map_one, map_mul, map_natCast]
    simp only [nsmul_eq_mul]
    ring
  rw [this, map_add (f := _), map_neg, map_nsmul, nsmul_eq_mul]

theorem al_mul (T : TaylorLogMetric.Tor D) {La' : AddSubgroup (TaylorLogMetric.VC D N N')} (hI : Formalism.L2.Ker.Cd.IntegralLatticeDensity.IO.HfInt T La')
    (l s : D.host.E) (e : ℕ) (hl : star l * l = -1 + ((4 * e : ℕ) : D.host.E) * s) {x : TaylorLogMetric.VC D N N'}
    (hx : x ∈ La') (hmx : J.mulO N N' l x ∈ La') (hsx : J.mulO N N' s x ∈ La') :
    TaylorLogMetric.al D T (J.mulO N N' l x) = TaylorLogMetric.al D T x := by
  obtain ⟨m0, h0re, h0r⟩ := Formalism.L2.Ker.Cd.IntegralLatticeDensity.IO.self_int T hI hx
  obtain ⟨m1, h1re, h1r⟩ := Formalism.L2.Ker.Cd.IntegralLatticeDensity.IO.self_int T hI hmx
  obtain ⟨a, b, -, hab⟩ := hI x hx _ hsx
  have hf : TaylorLogMetric.Hf D T (J.mulO N N' l x) (J.mulO N N' l x)
      = -TaylorLogMetric.Hf D T x x + ((4 * e : ℕ) : ℂ) * TaylorLogMetric.Hf D T x (J.mulO N N' s x) :=
    form_mul (TaylorLogMetric.area T.abelian₂) l s (4 * e) hl x x
  rw [hab] at hf
  have hre : (TaylorLogMetric.Hf D T (J.mulO N N' l x) (J.mulO N N' l x)).re
      = -(TaylorLogMetric.Hf D T x x).re + ((4 * e : ℕ) : ℝ) * (a / Real.sqrt D.host.d) := by
    rw [hf, Complex.add_re, Complex.neg_re,
      show ((4 * e : ℕ) : ℂ) = (((4 * e : ℕ) : ℝ) : ℂ) by norm_cast, Complex.re_ofReal_mul]
    simp
  have key : (m1 : ℝ) = -m0 + 2 * e * a := by
    rw [h1re, h0re] at hre
    have hs := Formalism.L2.Ker.Cd.IntegralLatticeDensity.IO.sqrt_d_pos D
    field_simp at hre
    push_cast at hre
    linarith
  have key' : m1 = -m0 + 2 * e * a := by exact_mod_cast key
  unfold TaylorLogMetric.al
  rw [h1r, h0r]
  apply Formalism.L2.Ker.Cd.IntegralLatticeDensity.IO.neg_one_zpow_congr
  rw [key']
  exact ⟨-m0 + e * a, by ring⟩

theorem altE_mul (T : TaylorLogMetric.Tor D) {La' : AddSubgroup (TaylorLogMetric.VC D N N')} (hI : Formalism.L2.Ker.Cd.IntegralLatticeDensity.IO.HfInt T La')
    (l s : D.host.E) (e : ℕ) (hl : star l * l = -1 + ((4 * e : ℕ) : D.host.E) * s) {z y : TaylorLogMetric.VC D N N'}
    (hez : e • z ∈ La') (hsy : J.mulO N N' s y ∈ La') :
    ∃ k : ℤ, altE (Ker.formV (TaylorLogMetric.area T.abelian₂) D.what₂.Tau N N') (J.mulO N N' l z) (J.mulO N N' l y)
      = -altE (Ker.formV (TaylorLogMetric.area T.abelian₂) D.what₂.Tau N N') z y + 2 * k := by
  obtain ⟨a, b, -, hab⟩ := hI _ hez _ hsy
  have hb : (e : ℝ) * (Ker.formV (TaylorLogMetric.area T.abelian₂) D.what₂.Tau N N' z (J.mulO N N' s y)).im = b := by
    have h1 : Ker.formV (TaylorLogMetric.area T.abelian₂) D.what₂.Tau N N' (e • z) (J.mulO N N' s y)
        = ((e : ℝ) : ℂ) * Ker.formV (TaylorLogMetric.area T.abelian₂) D.what₂.Tau N N' z (J.mulO N N' s y) := by
      rw [← Nat.cast_smul_eq_nsmul ℂ, map_smul, LinearMap.smul_apply, smul_eq_mul]; push_cast; ring
    have h2 := congrArg Complex.im hab
    rw [show TaylorLogMetric.Hf D T (e • z) (J.mulO N N' s y)
        = Ker.formV (TaylorLogMetric.area T.abelian₂) D.what₂.Tau N N' (e • z) (J.mulO N N' s y) from rfl, h1,
      Complex.im_ofReal_mul] at h2
    rw [h2]; simp
  have hf := form_mul (TaylorLogMetric.area T.abelian₂) l s (4 * e) hl z y
  refine ⟨2 * b, ?_⟩
  unfold altE
  rw [hf, Complex.add_im, Complex.neg_im,
    show ((4 * e : ℕ) : ℂ) = (((4 * e : ℕ) : ℝ) : ℂ) by norm_cast, Complex.im_ofReal_mul]
  push_cast
  linarith [hb]

theorem mulO_inv (l s l' : D.host.E) (e : ℕ) (hl : star l * l = -1 + ((4 * e : ℕ) : D.host.E) * s)
    (hl' : l' = star l) (x : TaylorLogMetric.VC D N N') :
    J.mulO N N' (-l') (J.mulO N N' l x) = x + e • J.mulO N N' (-4 * s) x ∧
    J.mulO N N' l (J.mulO N N' (-l') x) = x + e • J.mulO N N' (-4 * s) x := by
  have hE : -l' * l = 1 + (e : D.host.E) * (-4 * s) := by
    rw [hl', neg_mul, hl]; push_cast; ring
  constructor
  · funext τ i j
    have := congrArg (TaylorLogMetric.embT D τ) hE
    simp only [map_mul, map_add (f := _), map_one, map_natCast, map_neg, map_ofNat] at this
    simp only [mulO_apply, Pi.add_apply, Pi.smul_apply]
    simp only [nsmul_eq_mul, map_mul, map_neg, map_ofNat]
    linear_combination x τ i j * this
  · funext τ i j
    have := congrArg (TaylorLogMetric.embT D τ) hE
    simp only [map_mul, map_add (f := _), map_one, map_natCast, map_neg, map_ofNat] at this
    simp only [mulO_apply, Pi.add_apply, Pi.smul_apply]
    simp only [nsmul_eq_mul, map_mul, map_neg, map_ofNat]
    linear_combination x τ i j * this

end Mult

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.Mu
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.MuConc =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.MuFinal =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.MuFinal", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.JArith\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.RightMoveTrianglesOfUnit\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.IopIso\npublic import Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.TripleSumIndependence.TripleSumIndep\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.MuConc\nimport Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.NormOneUnitIdealAlt\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SecondConstantHolds\nimport Formalism.LocalToGlobal.KernelLattices.ColumnData.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Formalism.LocalToGlobal.KernelLattices.ColumnData.ThIndep\nimport Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.QuadraticSemicharacterIdentityReformulated2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators ComplexConjugate
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.Mu

open Formalism.L2.PairingIndexBounds.Eq.Mu Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions Formalism.L2.Th1.H Formalism.L2.Ker.Cd.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds.Eq

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : Car}

theorem signData_of (T : TaylorLogMetric.Tor D) {N N' : ℕ} {Λ₁ Λ₂ Λ₃ : AddSubgroup (TaylorLogMetric.VC D N N')}
    (p σ : TaylorLogMetric.VC D N N' →+ TaylorLogMetric.VC D N N') (pp : ∀ x, p (p x) = p x)
    (porth : ∀ x y, Ker.formV (TaylorLogMetric.area T.abelian₂) D.what₂.Tau N N' (p x) (y - p y) = 0)
    (σσ : ∀ x, σ (σ x) = x) (σp : ∀ x, p (σ x) = σ x - σ (p x))
    (σH : ∀ x y, Ker.formV (TaylorLogMetric.area T.abelian₂) D.what₂.Tau N N' (σ x) (σ y) = Ker.formV (TaylorLogMetric.area T.abelian₂) D.what₂.Tau N N' x y)
    (hmp : ∀ (r : D.host.E) x, J.mulO N N' r (p x) = p (J.mulO N N' r x))
    (hΛ : ∀ Λ, Λ = Λ₁ ∨ Λ = Λ₂ ∨ Λ = Λ₃ → (∀ x ∈ Λ, p x ∈ Λ) ∧ (∀ x ∈ Λ, σ x ∈ Λ) ∧
      (∀ (r : 𝓞 D.host.E), ∀ x ∈ Λ, J.mulO N N' (r : D.host.E) x ∈ Λ) ∧ Formalism.L2.Ker.Cd.IntegralLatticeDensity.IO.HfInt T Λ)
    (e : ℕ) (e21 : ∀ x ∈ Λ₂, e • x ∈ Λ₁) (e31 : ∀ x ∈ Λ₃, e • x ∈ Λ₁) (e32 : ∀ x ∈ Λ₃, e • x ∈ Λ₂)
    (l s l' : 𝓞 D.host.E) (hl : star (l : D.host.E) * l = -1 + ((4 * e : ℕ) : D.host.E) * s)
    (hl' : (l' : D.host.E) = star (l : D.host.E)) :
    SignData (Ker.formV (TaylorLogMetric.area T.abelian₂) D.what₂.Tau N N') (TaylorLogMetric.al D T) Λ₁ Λ₂ Λ₃ p σ
      (J.mulO N N' (l : D.host.E)).toAddMonoidHom (J.mulO N N' (-(l' : D.host.E))).toAddMonoidHom
      (J.mulO N N' (-4 * (s : D.host.E))).toAddMonoidHom e := by
  obtain ⟨p1, σ1, m1, I1⟩ := hΛ Λ₁ (Or.inl rfl)
  obtain ⟨p2, σ2, m2, I2⟩ := hΛ Λ₂ (Or.inr (Or.inl rfl))
  obtain ⟨p3, σ3, m3, I3⟩ := hΛ Λ₃ (Or.inr (Or.inr rfl))
  have mn : ∀ {Λ : AddSubgroup (TaylorLogMetric.VC D N N')}, (∀ (r : 𝓞 D.host.E), ∀ x ∈ Λ, J.mulO N N' (r : D.host.E) x ∈ Λ) →
      ∀ x ∈ Λ, J.mulO N N' (-(l' : D.host.E)) x ∈ Λ := fun h x hx => by
    have := h (-l') x hx; simpa using this
  have mr : ∀ {Λ : AddSubgroup (TaylorLogMetric.VC D N N')}, (∀ (r : 𝓞 D.host.E), ∀ x ∈ Λ, J.mulO N N' (r : D.host.E) x ∈ Λ) →
      ∀ x ∈ Λ, J.mulO N N' (-4 * (s : D.host.E)) x ∈ Λ := fun h x hx => by
    have := h (-(s + s + s + s)) x hx
    rwa [show ((-(s + s + s + s) : 𝓞 D.host.E) : D.host.E) = -4 * (s : D.host.E) by push_cast; ring] at this
  exact
  { pp := pp, porth := porth, p1 := p1, p2 := p2, p3 := p3
    σσ := σσ, σp := σp, σH := σH, σα := fun x => al_form T σ σH x
    σ1 := σ1, σ2 := σ2, σ3 := σ3
    mp := fun x => hmp _ x, m'p := fun x => hmp _ x
    m1 := m1 l, m2 := m2 l, m3 := m3 l
    m'1 := mn m1, m'2 := mn m2, m'3 := mn m3
    r2 := mr m2, r3 := mr m3
    inv := fun x => (mulO_inv (l : D.host.E) (s : D.host.E) (l' : D.host.E) e hl hl' x).1
    inv' := fun x => (mulO_inv (l : D.host.E) (s : D.host.E) (l' : D.host.E) e hl hl' x).2
    e21 := e21, e31 := e31, e32 := e32
    mα1 := fun x hx => al_mul T I1 (l : D.host.E) (s : D.host.E) e hl hx (m1 l x hx) (m1 s x hx)
    mα2 := fun x hx => al_mul T I2 (l : D.host.E) (s : D.host.E) e hl hx (m2 l x hx) (m2 s x hx)
    mα3 := fun x hx => al_mul T I3 (l : D.host.E) (s : D.host.E) e hl hx (m3 l x hx) (m3 s x hx)
    mH := fun z hz y hy => altE_mul T I2 (l : D.host.E) (s : D.host.E) e hl (e32 z hz) (m2 s y hy) }

variable {cc : Ideal (𝓞 D.host.K)} {δ : ℂ}

theorem muOneL_of (hcc : TaylorLogMetric.IsCurveIdeal D cc) (hδ : TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (h0 : δ ≠ 0) (B : Cd.Base D cc δ)
    (hS : B.StdOK) : MuOneL B := by
  intro N N' L L₁ hN hN' hL hL₁
  have hLat := B.latAll hcc hδ h0
  have hT := tripleData_of hLat (admissible_of_integral_conj_le hN hN' (sd0 N) (sd0 N')) (admissible_of_integral_conj_le hN hN' hL (sd0 N'))
    (admissible_of_integral_conj_le hN hN' hL₁ (sd0 N'))
  obtain ⟨S₂, hS₂⟩ := (repsExist _ _ _ hT.i₁₂).1
  obtain ⟨S₃, hS₃⟩ := (repsExist _ _ _ hT.i₂₃).1
  refine ⟨S₂, S₃, hS₂, hS₃, ?_⟩
  obtain ⟨e, he, e21, e31, e32⟩ := exists_e hT
  obtain ⟨l, s, -, hl⟩ := J.negOneNorm D (4 * e) (by omega)
  obtain ⟨l', hl'⟩ := J.star_int l
  have hF : ∃ F ∈ fixedBy (Ker.formV (TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ)) D.what₂.Tau N N') (TaylorLogMetric.al D B.tor)
      (TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) (StandardLatticesGL3.stdL D N')), F ≠ 0 :=
    ⟨B.thZero N N', (B.thZeroMem hS N N').2, B.thZero_ne_zero hS N N'⟩
  have hemb : ∀ τ x, (B.tor).emb τ x = TaylorLogMetric.embT D τ x := fun _ _ => rfl
  refine tripleMu_eq_one hT hF (signData_of B.tor (rowP N N') (rowSw N N') rowProjection_rowProjection (rowProjection_orthogonal _) (rowSw_sw hN')
    (rowSw_p hN') (rowSw_form hN' _) mulO_rowP ?_ e e21 e31 e32 l s l' hl hl') hS₂ hS₃
  intro Λ hΛ
  rcases hΛ with rfl | rfl | rfl
  · exact ⟨fun x hx => rowProjection_mem_lattice B.tor hemb hx, fun x hx => rowSw_la B.tor hemb hx,
      fun r x hx => mulO_la B.tor hemb r hx,
      Formalism.L2.Ker.Cd.IntegralLatticeDensity.hermitian_form_integral_values D cc hcc δ hδ h0 N N' _ _ (admissible_of_integral_conj_le hN hN' (sd0 N) (sd0 N'))⟩
  · exact ⟨fun x hx => rowProjection_mem_lattice B.tor hemb hx, fun x hx => rowSw_la B.tor hemb hx,
      fun r x hx => mulO_la B.tor hemb r hx,
      Formalism.L2.Ker.Cd.IntegralLatticeDensity.hermitian_form_integral_values D cc hcc δ hδ h0 N N' _ _ (admissible_of_integral_conj_le hN hN' hL (sd0 N'))⟩
  · exact ⟨fun x hx => rowProjection_mem_lattice B.tor hemb hx, fun x hx => rowSw_la B.tor hemb hx,
      fun r x hx => mulO_la B.tor hemb r hx,
      Formalism.L2.Ker.Cd.IntegralLatticeDensity.hermitian_form_integral_values D cc hcc δ hδ h0 N N' _ _ (admissible_of_integral_conj_le hN hN' hL₁ (sd0 N'))⟩

theorem muOneR_of (hcc : TaylorLogMetric.IsCurveIdeal D cc) (hδ : TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (h0 : δ ≠ 0) (B : Cd.Base D cc δ)
    (hS : B.StdOK) : MuOneR B := by
  intro N N' L' L'' hN hN' hL' hL''
  have hLat := B.latAll hcc hδ h0
  have hT := tripleData_of hLat (admissible_of_integral_conj_le hN hN' (sd0 N) (sd0 N')) (admissible_of_integral_conj_le hN hN' (sd0 N) hL')
    (admissible_of_integral_conj_le hN hN' (sd0 N) hL'')
  obtain ⟨S₂, hS₂⟩ := (repsExist _ _ _ hT.i₁₂).1
  obtain ⟨S₃, hS₃⟩ := (repsExist _ _ _ hT.i₂₃).1
  refine ⟨S₂, S₃, hS₂, hS₃, ?_⟩
  obtain ⟨e, he, e21, e31, e32⟩ := exists_e hT
  obtain ⟨l, s, -, hl⟩ := J.negOneNorm D (4 * e) (by omega)
  obtain ⟨l', hl'⟩ := J.star_int l
  have hF : ∃ F ∈ fixedBy (Ker.formV (TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ)) D.what₂.Tau N N') (TaylorLogMetric.al D B.tor)
      (TaylorLogMetric.La D B.tor (StandardLatticesGL3.stdL D N) (StandardLatticesGL3.stdL D N')), F ≠ 0 :=
    ⟨B.thZero N N', (B.thZeroMem hS N N').2, B.thZero_ne_zero hS N N'⟩
  have hemb : ∀ τ x, (B.tor).emb τ x = TaylorLogMetric.embT D τ x := fun _ _ => rfl
  refine tripleMu_eq_one hT hF (signData_of B.tor (colP N N') (colSw N N') colP_colP (colP_orth _) (colSw_sw hN)
    (colSw_p hN) (colSw_form hN _) mulO_colP ?_ e e21 e31 e32 l s l' hl hl') hS₂ hS₃
  intro Λ hΛ
  rcases hΛ with rfl | rfl | rfl
  · exact ⟨fun x hx => colP_mem_la B.tor hemb hx, fun x hx => colSw_la B.tor hemb hN hx,
      fun r x hx => mulO_la B.tor hemb r hx,
      Formalism.L2.Ker.Cd.IntegralLatticeDensity.hermitian_form_integral_values D cc hcc δ hδ h0 N N' _ _ (admissible_of_integral_conj_le hN hN' (sd0 N) (sd0 N'))⟩
  · exact ⟨fun x hx => colP_mem_la B.tor hemb hx, fun x hx => colSw_la B.tor hemb hN hx,
      fun r x hx => mulO_la B.tor hemb r hx,
      Formalism.L2.Ker.Cd.IntegralLatticeDensity.hermitian_form_integral_values D cc hcc δ hδ h0 N N' _ _ (admissible_of_integral_conj_le hN hN' (sd0 N) hL')⟩
  · exact ⟨fun x hx => colP_mem_la B.tor hemb hx, fun x hx => colSw_la B.tor hemb hN hx,
      fun r x hx => mulO_la B.tor hemb r hx,
      Formalism.L2.Ker.Cd.IntegralLatticeDensity.hermitian_form_integral_values D cc hcc δ hδ h0 N N' _ _ (admissible_of_integral_conj_le hN hN' (sd0 N) hL'')⟩

theorem left_move_triangles_hold (hcc : TaylorLogMetric.IsCurveIdeal D cc) (hδ : TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (h0 : δ ≠ 0) (B : Cd.Base D cc δ)
    (hS : B.StdOK) : Tr0L D B.tor :=
  left_move_triangles_of_unit (B.latAll hcc hδ h0) (muOneL_of hcc hδ h0 B hS)

theorem right_move_triangles_hold (hcc : TaylorLogMetric.IsCurveIdeal D cc) (hδ : TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (h0 : δ ≠ 0) (B : Cd.Base D cc δ)
    (hS : B.StdOK) : Tr0R D B.tor :=
  right_move_triangles_of_unit (B.latAll hcc hδ h0) (muOneR_of hcc hδ h0 B hS)

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.Mu
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.MuFinal =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqFinal =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqFinal", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqFacts\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.NormOneUnitIdealAlt\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SecondConstantHolds\nimport Formalism.LocalToGlobal.KernelLattices.ColumnData.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Formalism.LocalToGlobal.TorsionIntegrality.QuadraticSemicharacters.SelfDualCovolume\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.Sq

open Formalism.L2.PairingIndexBounds.Eq.Sq Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions Formalism.L2.Th1.H Formalism.L2.Ker.Cd.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds.Eq

variable {D : Car} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ}

theorem sqP_of {B : Cd.Base D cc δ} (hL : B.LatAll) (hS : SqSplit B) : SqP D B.tor := by
  intro N N' L L₁ L' L'' hN hN' h1 h2 h3 h4 G hG
  obtain ⟨A, A', hP⟩ := hS N N' L L₁ L' L'' hN hN' h1 h2 h3 h4
  by_cases hG0 : G = 0
  · subst hG0
    funext v
    simp [TaylorLogMetric.Iop, TaylorLogMetric.U]
  have hF : ∃ F ∈ fixedBy (Ker.formV (TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ)) D.what₂.Tau N N') (TaylorLogMetric.al D B.tor)
      (TaylorLogMetric.La D B.tor L L'), F ≠ 0 := ⟨G, fun x hx z => hG.2 x hx z, hG0⟩
  have tripleData_of {N N' : ℕ}
      {L₁ L₂ L₃ : Submodule (𝓞 D.host.E) (Fin N → D.host.E)}
      {L₁' L₂' L₃' : Submodule (𝓞 D.host.E) (Fin N' → D.host.E)}
      (a1 : TaylorLogMetric.admitted D N N' L₁ L₁') (a2 : TaylorLogMetric.admitted D N N' L₂ L₂')
      (a3 : TaylorLogMetric.admitted D N N' L₃ L₃') :
      TripleData (Ker.formV (TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ)) D.what₂.Tau N N') (TaylorLogMetric.al D B.tor)
        (TaylorLogMetric.La D B.tor L₁ L₁') (TaylorLogMetric.La D B.tor L₂ L₂') (TaylorLogMetric.La D B.tor L₃ L₃') :=
    { herm := formV_herm' _ _ _ _
      sd₁ := (hL.1 N N' _ _ a1).1
      sd₂ := (hL.1 N N' _ _ a2).1
      sd₃ := (hL.1 N N' _ _ a3).1
      sc₁ := (hL.1 N N' _ _ a1).2
      sc₂ := (hL.1 N N' _ _ a2).2
      sc₃ := (hL.1 N N' _ _ a3).2
      i₁₂ := (hL.2 N N' _ _ _ _ a1 a2).1
      i₂₁ := (hL.2 N N' _ _ _ _ a1 a2).2
      i₁₃ := (hL.2 N N' _ _ _ _ a1 a3).1
      i₃₁ := (hL.2 N N' _ _ _ _ a1 a3).2
      i₂₃ := (hL.2 N N' _ _ _ _ a2 a3).1
      i₃₂ := (hL.2 N N' _ _ _ _ a2 a3).2 }
  have hT1 := tripleData_of (admissible_of_integral_conj_le hN hN' h1 h3) (admissible_of_integral_conj_le hN hN' h2 h3) (admissible_of_integral_conj_le hN hN' h2 h4)
  have hT2 := tripleData_of (admissible_of_integral_conj_le hN hN' h1 h3) (admissible_of_integral_conj_le hN hN' h1 h4) (admissible_of_integral_conj_le hN hN' h2 h4)
  obtain ⟨S₂, S₃, hS₂, hS₃, hμ⟩ :=
    mu_one_of_split hT1 (splitTri_of hP (false, false) (true, false) (true, true) hT1) hF
  obtain ⟨T₂, T₃, hT₂, hT₃, hν⟩ :=
    mu_one_of_split hT2 (splitTri_of hP (false, false) (false, true) (true, true) hT2) hF
  funext v
  have e1 := tripleFormula _ _ _ _ _ _ hT1 S₂ S₃ hS₂ hS₃ G (fun x hx z => hG.2 x hx z) v
  have e2 := tripleFormula _ _ _ _ _ _ hT2 T₂ T₃ hT₂ hT₃ G (fun x hx z => hG.2 x hx z) v
  rw [hμ, one_mul] at e1
  rw [hν, one_mul] at e2
  exact e1.trans e2.symm

theorem eqP_of_split (B : Cd.Base D cc δ) (hcc : TaylorLogMetric.IsCurveIdeal D cc) (hδ : TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (hδ0 : δ ≠ 0)
    (hS : B.StdOK) (χ : TaylorLogMetric.IdE D → ℂ) (hχ : TaylorLogMetric.IsChi D χ)
    (hSp : SqSplit B) (hTL : Tr0L D B.tor) (hTR : Tr0R D B.tor) : B.EqP χ :=
  J.eqP_of_paths B hcc hδ hδ0 hS χ hχ (sqP_of (B.latAll hcc hδ hδ0) hSp) hTL hTR

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.Sq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqFinal =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLComm =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLComm", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.Reduction\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.WeightThresholdDefs\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLMat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.IntegralSquareRoots.HenselQuad\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.SquareSplitPairs

open Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions Formalism.L2.Ker.Cd.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds.Eq

variable {D : Car}

theorem mul_smul_mem {N : ℕ} {L₁ : Submodule (𝓞 D.host.E) (Fin N → D.host.E)} {m k : 𝓞 D.host.E}
    {v : Fin N → D.host.E} (h : (k : D.host.E) • v ∈ L₁) : ((m * k : 𝓞 D.host.E) : D.host.E) • v ∈ L₁ := by
  have e : ((m * k : 𝓞 D.host.E) : D.host.E) • v = m • ((k : D.host.E) • v) := by
    rw [osmul, smul_smul]
    norm_cast
  rw [e]
  exact L₁.smul_mem m h

theorem exists_n_one {N : ℕ} {L L₁ : Submodule (𝓞 D.host.E) (Fin N → D.host.E)} (hL : L.FG)
    (hsp : Submodule.span D.host.E (L₁ : Set (Fin N → D.host.E)) = ⊤) :
    ∃ n : 𝓞 D.host.E, n ≠ 0 ∧ ∀ u ∈ L, (n : D.host.E) • u ∈ L₁ := by
  obtain ⟨s, hs⟩ := hL
  choose f hf0 hf using _root_.UpperTheory.Reformulated.B.WeightThresholdDefs.exists_smul_mem hsp
  refine ⟨∏ g ∈ s, f g, Finset.prod_ne_zero_iff.2 fun g _ => hf0 g, ?_⟩
  intro u hu
  rw [← hs] at hu
  induction hu using Submodule.span_induction with
  | mem g hg =>
    rw [← Finset.prod_erase_mul s f hg]
    exact mul_smul_mem (hf g)
  | zero => simp
  | add x y _ _ hx hy => rw [smul_add]; exact L₁.add_mem hx hy
  | smul c x _ hx =>
    rw [osmul c x, smul_comm, ← osmul]
    exact L₁.smul_mem c hx

theorem exists_n {N : ℕ} {L L₁ : Submodule (𝓞 D.host.E) (Fin N → D.host.E)} (hL : SD D L) (hL1 : SD D L₁) :
    ∃ n : 𝓞 D.host.E, n ≠ 0 ∧ (∀ u ∈ L, (n : D.host.E) • u ∈ L₁) ∧ ∀ u ∈ L₁, (n : D.host.E) • u ∈ L := by
  obtain ⟨hfg, hsp, -⟩ := hL
  obtain ⟨hfg1, hsp1, -⟩ := hL1
  obtain ⟨a, ha, h1⟩ := exists_n_one hfg hsp1
  obtain ⟨b, hb, h2⟩ := exists_n_one hfg1 hsp
  refine ⟨b * a, mul_ne_zero hb ha, fun u hu => mul_smul_mem (h1 u hu), fun u hu => ?_⟩
  rw [mul_comm]
  exact mul_smul_mem (h2 u hu)

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.SquareSplitPairs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLComm =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLLaw =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLLaw", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLMat\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.GMConjTranspose\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.IntegralSquareRoots.HenselQuad\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Classical Matrix

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.SquareSplitPairs

open Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions Formalism.L2.Ker.Cd.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds.Eq Formalism.L2.Th1.H

variable {D : Car}

theorem sum_three_comm {a b c : ℕ} (F : Fin a → Fin b → Fin c → ℂ) :
    ∑ i, ∑ j, ∑ k, F i j k = ∑ k, ∑ j, ∑ i, F i j k := by
  calc ∑ i, ∑ j, ∑ k, F i j k = ∑ i, ∑ k, ∑ j, F i j k :=
        Finset.sum_congr rfl fun i _ => Finset.sum_comm
    _ = ∑ k, ∑ i, ∑ j, F i j k := Finset.sum_comm
    _ = ∑ k, ∑ j, ∑ i, F i j k := Finset.sum_congr rfl fun k _ => Finset.sum_comm

private theorem formV_apply' (A : ℝ) {N N' : ℕ} (z w : TaylorLogMetric.VC D N N') :
    Ker.formV A D.what₂.Tau N N' z w = (∑ τ, ∑ i, ∑ j, z τ i j * (starRingEnd ℂ) (w τ i j)) / (A : ℂ) := rfl

theorem formV_phi {N N' : ℕ} (A : ℝ) (M : Matrix (Fin N') (Fin N') D.host.E) (x y : TaylorLogMetric.VC D N N') :
    Ker.formV A D.what₂.Tau N N' (phi M x) y =
      Ker.formV A D.what₂.Tau N N' x (phi (letI := D.host.cmStar; Mᴴ) y) := by
  rw [formV_apply', formV_apply']
  congr 1
  refine Finset.sum_congr rfl fun τ _ => ?_

  simp only [phi_apply, Matrix.conjTranspose_apply, Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.embT_star', Complex.star_def, map_sum,
  map_mul, Complex.conj_conj, Finset.sum_mul, Finset.mul_sum]
  refine (sum_three_comm _).trans ?_
  refine Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun i _ => ?_
  ring

variable (D) (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (N N' : ℕ)

def HH : Sesq (TaylorLogMetric.VC D N N') := Ker.formV (TaylorLogMetric.area (TaylorLogMetric.lamOf D cc δ)) D.what₂.Tau N N'

def qq (x : TaylorLogMetric.VC D N N') : ℝ := Real.sqrt D.host.d / 2 * (HH D cc δ N N' x x).re

def cp (x y : TaylorLogMetric.VC D N N') : ℝ :=
  Real.sqrt D.host.d / 2 * ((HH D cc δ N N' x y).re + (HH D cc δ N N' y x).re)

def bet (x y : TaylorLogMetric.VC D N N') : ℝ := cp D cc δ N N' x y - (HH D cc δ N N' x y).im

def Good (x y : TaylorLogMetric.VC D N N') : Prop := ∃ k : ℤ, bet D cc δ N N' x y = 2 * k

variable {D cc δ N N'}

theorem qq_add (x y : TaylorLogMetric.VC D N N') :
    qq D cc δ N N' (x + y) = qq D cc δ N N' x + qq D cc δ N N' y + cp D cc δ N N' x y := by
  simp only [qq, cp, map_add (f := _), LinearMap.add_apply, Complex.add_re]
  ring

theorem bet_add_left (x x' y : TaylorLogMetric.VC D N N') :
    bet D cc δ N N' (x + x') y = bet D cc δ N N' x y + bet D cc δ N N' x' y := by
  simp only [bet, cp, map_add (f := _), LinearMap.add_apply, Complex.add_re, Complex.add_im]
  ring

theorem bet_add_right (x y y' : TaylorLogMetric.VC D N N') :
    bet D cc δ N N' x (y + y') = bet D cc δ N N' x y + bet D cc δ N N' x y' := by
  simp only [bet, cp, map_add (f := _), LinearMap.add_apply, Complex.add_re, Complex.add_im]
  ring

theorem bet_phi (e : Matrix (Fin N') (Fin N') D.host.E) (x y : TaylorLogMetric.VC D N N') :
    bet D cc δ N N' (phi e x) (phi e y) = bet D cc δ N N' x (phi (letI := D.host.cmStar; eᴴ * e) y) := by
  letI := D.host.cmStar
  have h1 : ∀ a b : TaylorLogMetric.VC D N N', HH D cc δ N N' (phi e a) (phi e b) = HH D cc δ N N' a (phi (eᴴ * e) b) := by
    intro a b
    simp only [HH]
    rw [formV_phi, ← phi_mul]
  have h2 : ∀ a b : TaylorLogMetric.VC D N N', HH D cc δ N N' (phi (eᴴ * e) a) b = HH D cc δ N N' a (phi (eᴴ * e) b) := by
    intro a b
    simp only [HH]
    rw [formV_phi, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose]
  show cp D cc δ N N' (phi e x) (phi e y) - (HH D cc δ N N' (phi e x) (phi e y)).im =
    cp D cc δ N N' x (phi (eᴴ * e) y) - (HH D cc δ N N' x (phi (eᴴ * e) y)).im
  simp only [cp, h1, h2]

theorem negpow (b : ℤ) : ((-1 : ℂ) ^ b) = Complex.exp ((Real.pi : ℂ) * Complex.I * (b : ℂ)) := by
  rw [← Complex.exp_pi_mul_I, ← Complex.exp_int_mul]
  congr 1
  ring

theorem al_of_q {z : TaylorLogMetric.VC D N N'} {m : ℤ} (h : qq D cc δ N N' z = m) : TaylorLogMetric.al D (TaylorLogMetric.tor0 D cc δ) z = (-1 : ℂ) ^ m := by
  have h' : Real.sqrt D.host.d / 2 * (TaylorLogMetric.Hf D (TaylorLogMetric.tor0 D cc δ) z z).re = m := h
  unfold TaylorLogMetric.al
  rw [h', round_intCast]

private theorem exists_int_eq_add_two_mul_of_exp_eq {a b : ℝ}
    (h : Complex.exp ((Real.pi : ℂ) * Complex.I * (a : ℂ)) = Complex.exp ((Real.pi : ℂ) * Complex.I * (b : ℂ))) :
    ∃ n : ℤ, a = b + 2 * n := by
  obtain ⟨n, hn⟩ := Complex.exp_eq_exp_iff_exists_int.mp h
  refine ⟨n, ?_⟩
  have h2 : ((a : ℂ) - b - 2 * n) * ((Real.pi : ℂ) * Complex.I) = 0 := by
    linear_combination hn
  have hpi : (Real.pi : ℂ) * Complex.I ≠ 0 :=
    mul_ne_zero (Complex.ofReal_ne_zero.mpr Real.pi_ne_zero) Complex.I_ne_zero
  have h3 := (mul_eq_zero.mp h2).resolve_right hpi
  have h4 : ((a - b - 2 * n : ℝ) : ℂ) = 0 := by push_cast; exact h3
  have h5 := Complex.ofReal_eq_zero.mp h4
  linarith

private theorem cp_eq_qq_add_sub {x y : TaylorLogMetric.VC D N N'} {mx my mxy : ℤ} (hx : qq D cc δ N N' x = mx)
    (hy : qq D cc δ N N' y = my) (hxy : qq D cc δ N N' (x + y) = mxy) :
    cp D cc δ N N' x y = (mxy : ℝ) - mx - my := by
  have h := qq_add (cc := cc) (δ := δ) x y
  rw [hxy, hx, hy] at h
  linarith

theorem good_of_law {x y : TaylorLogMetric.VC D N N'} {mx my mxy : ℤ} (hx : qq D cc δ N N' x = mx) (hy : qq D cc δ N N' y = my)
    (hxy : qq D cc δ N N' (x + y) = mxy)
    (hlaw : TaylorLogMetric.al D (TaylorLogMetric.tor0 D cc δ) (x + y) = TaylorLogMetric.al D (TaylorLogMetric.tor0 D cc δ) x * TaylorLogMetric.al D (TaylorLogMetric.tor0 D cc δ) y *
      Complex.exp ((Real.pi : ℂ) * Complex.I * (altE (HH D cc δ N N') x y : ℂ))) :
    Good D cc δ N N' x y := by
  have hc := cp_eq_qq_add_sub hx hy hxy
  rw [al_of_q hxy, al_of_q hx, al_of_q hy] at hlaw
  have hpow : ((-1 : ℂ) ^ mxy) = (-1 : ℂ) ^ mx * (-1 : ℂ) ^ my * (-1 : ℂ) ^ (mxy - mx - my) := by
    rw [mul_assoc, ← zpow_add₀ (by norm_num : (-1 : ℂ) ≠ 0), ← zpow_add₀ (by norm_num : (-1 : ℂ) ≠ 0)]
    congr 1
    ring
  rw [hpow] at hlaw
  have hne : ((-1 : ℂ) ^ mx * (-1 : ℂ) ^ my) ≠ 0 := by
    apply mul_ne_zero <;> exact zpow_ne_zero _ (by norm_num)
  have he := mul_left_cancel₀ hne hlaw
  rw [negpow] at he
  obtain ⟨n, hn⟩ := exists_int_eq_add_two_mul_of_exp_eq (a := altE (HH D cc δ N N') x y) (b := (mxy : ℝ) - mx - my) (by
    rw [← he]
    push_cast
    ring_nf)
  refine ⟨-n, ?_⟩
  show cp D cc δ N N' x y - (HH D cc δ N N' x y).im = 2 * ((-n : ℤ) : ℝ)
  simp only [altE] at hn
  rw [hc]
  push_cast
  linarith

theorem law_of_good {x y : TaylorLogMetric.VC D N N'} {mx my mxy : ℤ} (hx : qq D cc δ N N' x = mx) (hy : qq D cc δ N N' y = my)
    (hxy : qq D cc δ N N' (x + y) = mxy) (hg : Good D cc δ N N' x y) :
    TaylorLogMetric.al D (TaylorLogMetric.tor0 D cc δ) (x + y) = TaylorLogMetric.al D (TaylorLogMetric.tor0 D cc δ) x * TaylorLogMetric.al D (TaylorLogMetric.tor0 D cc δ) y *
      Complex.exp ((Real.pi : ℂ) * Complex.I * (altE (HH D cc δ N N') x y : ℂ)) := by
  have hc := cp_eq_qq_add_sub hx hy hxy
  obtain ⟨k, hk⟩ := hg
  have hA0 : altE (HH D cc δ N N') x y = (mxy : ℝ) - mx - my - 2 * k := by
    simp only [bet] at hk
    simp only [altE]
    linarith
  have hA : ((altE (HH D cc δ N N') x y : ℝ) : ℂ) = ((mxy - mx - my - 2 * k : ℤ) : ℂ) := by
    rw [hA0]
    push_cast
    ring
  rw [al_of_q hxy, al_of_q hx, al_of_q hy, hA, ← negpow, mul_assoc,
    ← zpow_add₀ (by norm_num : (-1 : ℂ) ≠ 0), ← zpow_add₀ (by norm_num : (-1 : ℂ) ≠ 0)]
  have he : mx + (my + (mxy - mx - my - 2 * k)) = mxy + 2 * (-k) := by ring
  rw [he, zpow_add₀ (by norm_num : (-1 : ℂ) ≠ 0), _root_.zpow_mul]
  norm_num

theorem good_of_lat {Y : AddSubgroup (TaylorLogMetric.VC D N N')} (hsc : IsSemiChar (HH D cc δ N N') Y (TaylorLogMetric.al D (TaylorLogMetric.tor0 D cc δ)))
    (hq : ∀ z ∈ Y, ∃ m : ℤ, qq D cc δ N N' z = m) {x y : TaylorLogMetric.VC D N N'} (hx : x ∈ Y) (hy : y ∈ Y) :
    Good D cc δ N N' x y := by
  obtain ⟨mx, hmx⟩ := hq x hx
  obtain ⟨my, hmy⟩ := hq y hy
  obtain ⟨mxy, hmxy⟩ := hq (x + y) (Y.add_mem hx hy)
  exact good_of_law hmx hmy hmxy (hsc.2 x hx y hy)

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.SquareSplitPairs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLLaw =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLMain =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLMain", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqFacts\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLInput\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.BaseLinkOfNonzeroDelta\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.NormOneUnitIdealAlt\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLComm\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLLaw\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.IsAdmissibleFlagPairOfUnitriangularLeftAutomorph\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Classical Matrix

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.SquareSplitPairs

open Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions Formalism.L2.Ker.Cd.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds.Eq Formalism.L2.Th1.H

variable {D : Car} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ}

theorem good3 {a b c t : ℝ} (h : t = a + b + c) (ha : ∃ k : ℤ, a = 2 * k) (hb : ∃ k : ℤ, b = 2 * k)
    (hc : ∃ k : ℤ, c = 2 * k) : ∃ k : ℤ, t = 2 * k := by
  obtain ⟨i, rfl⟩ := ha
  obtain ⟨j, rfl⟩ := hb
  obtain ⟨l, rfl⟩ := hc
  exact ⟨i + j + l, by rw [h]; push_cast; ring⟩

theorem sqSplit_of (B : Cd.Base D cc δ) (hcc : TaylorLogMetric.IsCurveIdeal D cc) (hδ : TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (hδ0 : δ ≠ 0)
    (hP : SplitPair D) : Sq.SqSplit B := by
  intro N N' L L₁ L' L'' hN hN' h1 h2 h3 h4
  obtain ⟨n, hn0, hnL, hnL1⟩ := exists_n h1 h2
  obtain ⟨e, heL', heL'', hM⟩ := hP N' L' L'' hN' h3 h4 n hn0
  have hAdm : ∀ i : Bool × Bool, TaylorLogMetric.admitted D N N' (if i.1 then L₁ else L) (if i.2 then L'' else L') := by
    rintro ⟨a, b⟩
    cases a <;> cases b
    · exact admissible_of_integral_conj_le hN hN' h1 h3
    · exact admissible_of_integral_conj_le hN hN' h1 h4
    · exact admissible_of_integral_conj_le hN hN' h2 h3
    · exact admissible_of_integral_conj_le hN hN' h2 h4
  have hq : ∀ i, ∀ z ∈ Sq.sqFam B.tor L L₁ L' L'' i, ∃ m : ℤ, qq D cc δ N N' z = m := fun i z hz =>
    Formalism.L2.Ker.Cd.IntegralLatticeDensity.rational_integrality_link D cc hcc δ hδ B N N' _ _ (hAdm i) z hz
  have hsc : ∀ i, IsSemiChar (HH D cc δ N N') (Sq.sqFam B.tor L L₁ L' L'' i) (TaylorLogMetric.al D (TaylorLogMetric.tor0 D cc δ)) :=
    fun i => ((B.latAll hcc hδ hδ0).1 N N' _ _ (hAdm i)).2
  have hn : ∀ a c : Bool, ∀ u ∈ (if c then L₁ else L), (n : D.host.E) • u ∈ (if a then L₁ else L) := by
    intro a c u hu
    cases a <;> cases c <;> simp only [Bool.false_eq_true, ↓reduceIte] at hu ⊢
    · rw [← osmul]; exact L.smul_mem n hu
    · exact hnL1 u hu
    · exact hnL u hu
    · rw [← osmul]; exact L₁.smul_mem n hu
  have hor : ∀ b : Bool, ∀ y ∈ (if b then L'' else L'), y ∈ L' ∨ y ∈ L'' := by
    intro b y hy
    cases b <;> simp only [Bool.false_eq_true, ↓reduceIte] at hy
    · exact Or.inl hy
    · exact Or.inr hy
  have hin : ∀ d : Bool, ∀ m, m ∈ L' → m ∈ L'' → m ∈ (if d then L'' else L') := by
    intro d m hm1 hm2
    cases d <;> simp only [Bool.false_eq_true, ↓reduceIte]
    · exact hm1
    · exact hm2
  have he : ∀ b : Bool, ∀ y ∈ (if b then L'' else L'), e *ᵥ y ∈ (if b then L'' else L') := by
    intro b y hy
    cases b <;> simp only [Bool.false_eq_true, ↓reduceIte] at hy ⊢
    · exact heL' y hy
    · exact heL'' y hy
  have hpres : ∀ i, ∀ z ∈ Sq.sqFam B.tor L L₁ L' L'' i, phi e z ∈ Sq.sqFam B.tor L L₁ L' L'' i := by
    intro i z hz
    exact phi_La (yy_mul fun A hA => homL_mul_pres (he i.2) hA) z hz
  have hMin : ∀ M ∈ ({e * e - e, (letI := D.host.cmStar; eᴴ) * e,
      (letI := D.host.cmStar; (1 - e)ᴴ) * (1 - e)} : Set (Matrix (Fin N') (Fin N') D.host.E)),
      ∀ i j, ∀ z ∈ Sq.sqFam B.tor L L₁ L' L'' i, phi M z ∈ Sq.sqFam B.tor L L₁ L' L'' j := by
    intro M hMs i j z hz
    refine phi_La (yy_mul fun A hA => homL_mul_min hn0 (hn i.1 j.1) ?_ hA) z hz
    intro y hy
    obtain ⟨m, hm1, hm2, hm⟩ := hM M hMs y (hor i.2 y hy)
    exact ⟨m, hin j.2 m hm1 hm2, hm⟩
  have hM1 : e * e - e ∈ ({e * e - e, (letI := D.host.cmStar; eᴴ) * e,
      (letI := D.host.cmStar; (1 - e)ᴴ) * (1 - e)} : Set (Matrix (Fin N') (Fin N') D.host.E)) :=
    Set.mem_insert _ _
  have hM2 : (letI := D.host.cmStar; eᴴ) * e ∈ ({e * e - e, (letI := D.host.cmStar; eᴴ) * e,
      (letI := D.host.cmStar; (1 - e)ᴴ) * (1 - e)} : Set (Matrix (Fin N') (Fin N') D.host.E)) :=
    Set.mem_insert_of_mem _ (Set.mem_insert _ _)
  have hM3 : (letI := D.host.cmStar; (1 - e)ᴴ) * (1 - e) ∈ ({e * e - e, (letI := D.host.cmStar; eᴴ) * e,
      (letI := D.host.cmStar; (1 - e)ᴴ) * (1 - e)} : Set (Matrix (Fin N') (Fin N') D.host.E)) :=
    Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _ rfl)

  have hidem : ∀ x : TaylorLogMetric.VC D N N', phi e x - phi e (phi e x) = -(phi (e * e - e) x) := by
    intro x
    rw [phi_sub, phi_mul]
    abel
  have hone : ∀ x : TaylorLogMetric.VC D N N', x - phi e x = phi (1 - e) x := by
    intro x
    rw [phi_sub, phi_one]
  refine ⟨AddSubgroup.comap (AddMonoidHom.id _ - phi e) (⨅ i, Sq.sqFam B.tor L L₁ L' L'' i),
    AddSubgroup.comap (phi e) (⨅ i, Sq.sqFam B.tor L L₁ L' L'' i), ?_⟩
  have hA : ∀ x, x ∈ AddSubgroup.comap (AddMonoidHom.id _ - phi e) (⨅ i, Sq.sqFam B.tor L L₁ L' L'' i) ↔
      ∀ i, x - phi e x ∈ Sq.sqFam B.tor L L₁ L' L'' i := by
    intro x
    simp [AddSubgroup.mem_iInf]
  have hA' : ∀ x, x ∈ AddSubgroup.comap (phi e) (⨅ i, Sq.sqFam B.tor L L₁ L' L'' i) ↔
      ∀ i, phi e x ∈ Sq.sqFam B.tor L L₁ L' L'' i := by
    intro x
    simp [AddSubgroup.mem_iInf]
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro x hx hx' i
    have := (Sq.sqFam B.tor L L₁ L' L'' i).add_mem ((hA x).1 hx i) ((hA' x).1 hx' i)
    rwa [sub_add_cancel] at this
  · intro i x hx
    refine ⟨phi e x, (hA _).2 fun j => ?_, x - phi e x, (hA' _).2 fun j => ?_, hpres i x hx,
      (Sq.sqFam B.tor L L₁ L' L'' i).sub_mem hx (hpres i x hx), (add_sub_cancel _ _).symm⟩
    · rw [hidem]
      exact (Sq.sqFam B.tor L L₁ L' L'' j).neg_mem (hMin _ hM1 i j x hx)
    · rw [map_sub, hidem]
      exact (Sq.sqFam B.tor L L₁ L' L'' j).neg_mem (hMin _ hM1 i j x hx)
  · intro x y hx hy i j k hxi hyj hxy
    obtain ⟨mx, hmx⟩ := hq i x hxi
    obtain ⟨my, hmy⟩ := hq j y hyj
    obtain ⟨mxy, hmxy⟩ := hq k (x + y) hxy
    refine law_of_good hmx hmy hmxy ?_
    have key : bet D cc δ N N' x y = bet D cc δ N N' (phi e x) (phi e y) +
        bet D cc δ N N' (phi e x) (y - phi e y) + bet D cc δ N N' (x - phi e x) y := by
      have h := bet_add_left (cc := cc) (δ := δ) (phi e x) (x - phi e x) y
      have h' := bet_add_right (cc := cc) (δ := δ) (phi e x) (phi e y) (y - phi e y)
      rw [add_sub_cancel] at h h'
      rw [h, h']
    refine good3 key ?_ ?_ ?_
    · rw [bet_phi]
      exact good_of_lat (hsc i) (hq i) hxi (hMin _ hM2 j i y hyj)
    · exact good_of_lat (hsc i) (hq i) (hpres i x hxi) ((hA y).1 hy i)
    · exact good_of_lat (hsc j) (hq j) ((hA x).1 hx j) hyj
  · intro x y hx hy i j k hxi hyj hxy
    obtain ⟨mx, hmx⟩ := hq i x hxi
    obtain ⟨my, hmy⟩ := hq j y hyj
    obtain ⟨mxy, hmxy⟩ := hq k (x + y) hxy
    refine law_of_good hmx hmy hmxy ?_
    have key : bet D cc δ N N' x y = bet D cc δ N N' (x - phi e x) (y - phi e y) +
        bet D cc δ N N' (x - phi e x) (phi e y) + bet D cc δ N N' (phi e x) y := by
      have h := bet_add_left (cc := cc) (δ := δ) (x - phi e x) (phi e x) y
      have h' := bet_add_right (cc := cc) (δ := δ) (x - phi e x) (y - phi e y) (phi e y)
      rw [sub_add_cancel] at h h'
      rw [h, h']
    refine good3 key ?_ ?_ ?_
    · rw [hone x, hone y, bet_phi]
      exact good_of_lat (hsc i) (hq i) hxi (hMin _ hM3 j i y hyj)
    · exact good_of_lat (hsc i) (hq i) ((Sq.sqFam B.tor L L₁ L' L'' i).sub_mem hxi ((hA' x).1 hx i)) ((hA' y).1 hy i)
    · exact good_of_lat (hsc j) (hq j) ((hA' x).1 hx j) hyj

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.SquareSplitPairs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLMain =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLTop =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLTop", "h": "module\n\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLInput\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.MuFinal\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqFinal\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLMain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Formalism.BasicNotions Classical

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.SquareSplitPairs

open Formalism.L2.PairingIndexBounds.Eq Formalism.L2.PairingIndexBounds

open Formalism.MainNotions

variable {D : Car} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ}

theorem eqP_of_pair (B : Cd.Base D cc δ) (hcc : TaylorLogMetric.IsCurveIdeal D cc) (hδ : TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (hδ0 : δ ≠ 0)
    (hS : B.StdOK) (χ : TaylorLogMetric.IdE D → ℂ) (hχ : TaylorLogMetric.IsChi D χ) (hP : SplitPair D) : B.EqP χ := by
  exact Sq.eqP_of_split B hcc hδ hδ0 hS χ hχ (sqSplit_of B hcc hδ hδ0 hP)
    (Mu.left_move_triangles_hold hcc hδ hδ0 B hS) (Mu.right_move_triangles_hold hcc hδ hδ0 B hS)

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.SquareSplitPairs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLTop =====

-- ===== clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SplitPairOfGen =====
-- clump-header: {"m": "Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SplitPairOfGen", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.SplitPairEquations.SplitPairGen\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLInput\nimport Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.BaseLinkOfNonzeroDelta\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SqLTop\npublic import Formalism.LocalToGlobal.KernelLattices.ColumnData.StdOKP\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SplitPairGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open NumberField Matrix

namespace Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.SqG

open Formalism.L2.PairingIndexBounds.Eq.SqG

theorem splitPair_of_gen (h : SplitPairGen) (D : Formalism.L2.Ker.Car) : SquareSplitPairs.SplitPair D := by
  have hCM : IsCMField D.host.E := Formalism.HC.HostAx.isCMField_hostE D.host.toHostAx
  have hcj : ∀ y : D.host.E, D.host.conj y = star y := by
    intro y
    obtain ψ := Classical.choice (inferInstance : Nonempty (D.host.E →+* ℂ))
    apply ψ.injective
    rw [Formalism.HC.HostAx.conjE_apply D.host.toHostAx ψ y]
    exact (NumberField.IsCMField.complexEmbedding_complexConj D.host.E ψ y).symm
  have hU : PI.IsCMUnram D.host.E := by
    refine ⟨hCM.to_isTotallyComplex, fun φ a => ?_, fun P hP => ?_⟩
    · rw [← hcj]
      exact Formalism.HC.HostAx.conjE_apply D.host.toHostAx φ a
    · have hne : P ≠ ⊥ :=
        Ring.ne_bot_of_isMaximal_of_not_isField hP (NumberField.RingOfIntegers.not_isField _)
      have h2 := Formalism.HC.HostDer.unramEF D.host.der P hP.isPrime hne
      push_neg at h2
      obtain ⟨x, hx⟩ := h2
      refine ⟨x, D.host.conj • x, ?_, ?_⟩
      · exact hcj (x : D.host.E)
      · intro hm
        apply hx
        have h3 : D.host.conj • x - x = -(x - D.host.conj • x) := by ring
        rw [h3]
        exact P.neg_mem hm
  intro N' L' L'' hN hL' hL'' n hn
  exact h D.host.E hU N' L' L'' hN hL' hL'' n hn

theorem eqP_gen {D : Formalism.L2.Ker.Car} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ} (B : Formalism.L2.Ker.Cd.Base D cc δ)
    (hcc : Formalism.L2.Ker.Cd.TaylorLogMetric.IsCurveIdeal D cc) (hδ : Formalism.L2.Ker.Cd.TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) (hδ0 : δ ≠ 0) (hS : B.StdOK)
    (χ : Formalism.L2.Ker.Cd.TaylorLogMetric.IdE D → ℂ) (hχ : Formalism.L2.Ker.Cd.TaylorLogMetric.IsChi D χ) (hG : SplitPairGen) : B.EqP χ :=
  SquareSplitPairs.eqP_of_pair B hcc hδ hδ0 hS χ hχ (splitPair_of_gen hG D)

theorem delta_ne {D : Formalism.L2.Ker.Car} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ}
    (hcc : Formalism.L2.Ker.Cd.TaylorLogMetric.IsCurveIdeal D cc) (hδ : Formalism.L2.Ker.Cd.TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ) : δ ≠ 0 := Formalism.L2.Ker.Cd.IntegralLatticeDensity.delta_nonzero_link D cc hcc δ hδ

theorem eqP_all {D : Formalism.L2.Ker.Car} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ}
    (B : Formalism.L2.Ker.Cd.Base D cc δ) (hcc : Formalism.L2.Ker.Cd.TaylorLogMetric.IsCurveIdeal D cc) (hδ : Formalism.L2.Ker.Cd.TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ)
    (hS : B.StdOK) (χ : Formalism.L2.Ker.Cd.TaylorLogMetric.IdE D → ℂ) (hχ : Formalism.L2.Ker.Cd.TaylorLogMetric.IsChi D χ) (hP : SplitPairGen) : B.EqP χ :=
  eqP_gen B hcc hδ (delta_ne hcc hδ) hS χ hχ hP

theorem eqP_car {D : Formalism.L2.Ker.Car} {cc : Ideal (𝓞 D.host.K)} {δ : ℂ}
    (B : Formalism.L2.Ker.Cd.Base D cc δ) (hcc : Formalism.L2.Ker.Cd.TaylorLogMetric.IsCurveIdeal D cc) (hδ : Formalism.L2.Ker.Cd.TaylorLogMetric.IsDiscriminantTwelfthRootOfIdealLattice D cc δ)
    (χ : Formalism.L2.Ker.Cd.TaylorLogMetric.IdE D → ℂ) (hχ : Formalism.L2.Ker.Cd.TaylorLogMetric.IsChi D χ) : B.EqP χ :=
  eqP_all B hcc hδ (Formalism.L2.Ker.Cd.IntegralLatticeDensity.SO.stdOK B hcc hδ) χ hχ split_pair_generation

end Formalism.L2.Ker.Cd.PairingIndexBounds.Eq.SqG

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.KernelLattices.ColumnData.ColumnDataEquations.SplitPairOfGen =====
