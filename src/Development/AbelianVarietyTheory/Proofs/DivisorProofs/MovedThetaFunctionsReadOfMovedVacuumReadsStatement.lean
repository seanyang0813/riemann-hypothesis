module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ActOMemFinSub
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisenbergFinitePointReadsClassicalTranslationStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairMovesPhasedHeisenbergTranslateStatement
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.OmEqPullOfVacuum
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ThetaSpanRationalTranslatesVacuum
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormPeriodSq
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.CmThetaLatticePointMemThetaLatticeOfAdelic
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DefiniteThetaPairTestVectorExpansion
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsLatticeOfAdelicPoint
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.InducedTypeThetaGenusOnePermutes
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ThetaSpaceSelfDualPairAtMostLine
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

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MovedThetaFunctionsReadOfMovedVacuumReads, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MovedThetaFunctionsReadOfMovedVacuumReadsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MovedThetaFunctionsReadOfMovedVacuumReads =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MovedThetaFunctionsReadOfMovedVacuumReads", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ActOMemFinSub\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisenbergFinitePointReadsClassicalTranslationStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormPeriodSq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeilPairMovesPhasedHeisenbergTranslateStatement\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.CmThetaLatticePointMemThetaLatticeOfAdelic\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.DefiniteThetaPairTestVectorExpansion\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsLatticeOfAdelicPoint\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.InducedTypeThetaGenusOnePermutes\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.OmEqPullOfVacuum\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ThetaSpaceSelfDualPairAtMostLine\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ThetaSpanRationalTranslatesVacuum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormSum (Pair Tup minorPol ratG intG Cls gam)
open GlobalTheory.NormDict GlobalTheory.NormExact
open GlobalTheory.BotFormula (IsFinPt)
open GlobalTheory.IndefiniteRowSideFullHecke.ClassFunctionSumIntegral (IsDefiniteSpace IsOpenCompactLevel)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.NormExact

theorem closeTo_of_mul {D : D7} {cc : Ideal (𝓞 D.host.K)} {N N' : ℕ} {g : GL (Fin N) (Formalism.MainNotions.StandardLatticesGL3.AE D)}
    {g' : GL (Fin N') (Formalism.MainNotions.StandardLatticesGL3.AE D)} {z z' : Matrix (Fin N') (Fin N) D.host.E} (m k : ℕ)
    (h : Formalism.MainNotions.StandardLatticesGL3.CloseTo D cc (m * k) g g' z z') : Formalism.MainNotions.StandardLatticesGL3.CloseTo D cc m g g' z z' := by
  intro i j
  obtain ⟨y, hy, e⟩ := h i j
  refine ⟨(k : Formalism.MainNotions.StandardLatticesGL3.AE D) * y, ?_, by rw [e]; push_cast; ring⟩
  rw [← nsmul_eq_mul]; exact nsmul_mem hy k

theorem exists_closeTo {D : D7} {cc : Ideal (𝓞 D.host.K)} (hc : cc ≠ ⊥) {N N' : ℕ} (g : GL (Fin N) (Formalism.MainNotions.StandardLatticesGL3.AE D))
    (g' : GL (Fin N') (Formalism.MainNotions.StandardLatticesGL3.AE D)) (z : Matrix (Fin N') (Fin N) D.host.E) (n : ℕ) (hn : 0 < n) :
    ∃ z', Formalism.MainNotions.StandardLatticesGL3.CloseTo D cc n g g' z z' := by
  obtain ⟨c, hc1, hc0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hc
  obtain ⟨a, ha0, ha⟩ := FractionalIdeal.exists_ne_zero_mem_isInteger (GlobalTheory.NormSum.MovedLattice.inverseHalfDifferent_ne_zero D)
  set b : D.host.E := ((c : D.host.K) : D.host.E) * algebraMap (𝓞 D.host.E) D.host.E a with hb
  set_option synthInstance.maxHeartbeats 200000 in
  have hb0 : b ≠ 0 := by
    refine mul_ne_zero ?_ ((map_ne_zero_iff _ (FaithfulSMul.algebraMap_injective _ _)).2 ha0)
    intro h0
    apply hc0
    have : (c : D.host.K) = 0 := by exact_mod_cast h0
    exact_mod_cast this
  obtain ⟨v, hv⟩ : ∃ v, Formalism.MainNotions.StandardLatticesGL3.inc D b * v = 1 := by
    have hb1 : b * b⁻¹ = 1 := mul_inv_cancel₀ hb0
    exact ⟨Formalism.MainNotions.StandardLatticesGL3.inc D b⁻¹, by rw [← map_mul, hb1, map_one]⟩
  set t : Matrix (Fin N') (Fin N) (Formalism.MainNotions.StandardLatticesGL3.AE D) := (g' : Matrix (Fin N') (Fin N') (Formalism.MainNotions.StandardLatticesGL3.AE D)) *
    z.map (Formalism.MainNotions.StandardLatticesGL3.inc D) * ((g⁻¹ : GL (Fin N) (Formalism.MainNotions.StandardLatticesGL3.AE D)) : Matrix (Fin N) (Fin N) (Formalism.MainNotions.StandardLatticesGL3.AE D)) with ht
  choose e w hw he using fun i j => GlobalTheory.NormSum.Expand.approx (t i j * v) n hn
  refine ⟨Matrix.of fun i j => e i j * b, fun i j => ⟨Formalism.MainNotions.StandardLatticesGL3.inc D b * w i j,
    AddSubgroup.subset_closure ⟨c, hc1, _, ha, w i j, hw i j, rfl⟩, ?_⟩⟩
  have h1 : t i j * v * Formalism.MainNotions.StandardLatticesGL3.inc D b = t i j := by
    rw [mul_assoc, mul_comm v, hv, mul_one]
  rw [Matrix.sub_apply, ← ht, Matrix.map_apply, Matrix.of_apply, map_mul]
  linear_combination (Formalism.MainNotions.StandardLatticesGL3.inc D b) * he i j + h1

theorem reads_om_of_vacuum : ∀ {D : D7} (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (S T : HSp D) {a d : ℕ} (hS : S.rank = a) (hT : T.rank = d)
  (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (r : D.host.E), Setup ψ θ S T cc δ r →
  ∀ (e0 : VC D a d → ℂ) (W : WeilO D cc δ a d e0) (χS χT : (AE D)ˣ →* Circle)
    (om : GA D S × GA D T →* Module.End ℂ (WO S T → ℂ)), IsWeilDatumO ψ S T χS χT om →
  e0 ∈ Th D (tor0 D cc δ) (stdL D a) (stdL D d) →
  ∀ (x : Formalism.MainNotions.StandardLatticesGL3.GA D a) (y : Formalism.MainNotions.StandardLatticesGL3.GA D d) (g : GA D S) (h : GA D T), IsFinPt S g x → IsFinPt T h y →
  ∀ (c : ℂ) (f₀ : WO S T → ℂ), Reads ψ θ hS hT cc δ r e0 f₀ → Reads ψ θ hS hT cc δ r (c • W.Om x y e0) (om (g, h) f₀) →
  ∀ G ∈ TT D (tor0 D cc δ) a d, ∀ f, Reads ψ θ hS hT cc δ r G f → Reads ψ θ hS hT cc δ r (c • W.Om x y G) (om (g, h) f) := by
  intro D ψ θ S T a d hS hT cc δ r hSet e0 W χS χT om hW he0 x y g h hg hh c f₀ hf₀ hc G hG f hf
  have hC := hSet.crv
  have hSD0 : ∀ N : ℕ, Formalism.MainNotions.StandardLatticesGL3.SD D (stdL D N) := by
    intro N
    obtain ⟨Lt, h1, h2, -⟩ := GlobalTheory.NormSum.exists_lattice_of_adelic_point D N
    rw [← h2]; exact (h1 1).2
  obtain ⟨-, hWL, hint, -⟩ := GlobalTheory.ThetaLine.theta_line D (GlobalTheory.InducedType.induced_type D).1 cc δ hC a d
    (Formalism.MainNotions.StandardLatticesGL3.La0 D (tor0 D cc δ) a d) (Or.inr ⟨_, _, hSD0 _, hSD0 _, rfl⟩)
  have hfix : ∀ v ∈ Formalism.MainNotions.StandardLatticesGL3.La0 D (tor0 D cc δ) a d, Formalism.MainNotions.StandardLatticesGL3.Wd D (tor0 D cc δ) v e0 = e0 := by
    intro v hv
    rw [hWL v hv]; funext w; exact he0.2 v hv w
  have heT : e0 ∈ TT D (tor0 D cc δ) a d :=
    ⟨he0.1, 1, one_pos, fun v hv => by rw [one_nsmul]; exact hfix v hv⟩
  have hTT : ∀ z, Formalism.MainNotions.StandardLatticesGL3.Wd D (tor0 D cc δ) (pt D (tor0 D cc δ) δ z) e0 ∈ TT D (tor0 D cc δ) a d := by
    intro z
    obtain ⟨Q, hQ, hz⟩ := GlobalTheory.NormSum.RatExtend.exists_nsmul_mem hC.1.1 δ z
    refine ⟨GlobalTheory.NormSum.RatExtend.Wd_diff _ he0.1, Q, hQ, fun v hv => ?_⟩
    obtain ⟨m, hm⟩ := hint v hv _ hz
    rw [GlobalTheory.NormSum.RatExtend.Hf_nsmul_right, ← GlobalTheory.NormSum.RatExtend.Hf_nsmul_left] at hm
    rw [GlobalTheory.NormSum.RatExtend.Wd_comm _ _ m hm, hfix _ (nsmul_mem hv _)]
  have hRt : ∀ (F : VC D a d → ℂ) (f' : WO S T → ℂ), Reads ψ θ hS hT cc δ r F f' → ∀ z,
      Reads ψ θ hS hT cc δ r (Formalism.MainNotions.StandardLatticesGL3.Wd D (tor0 D cc δ) (pt D (tor0 D cc δ) δ z) F)
        (Formalism.MainNotions.StandardLatticesGL3.wdPh D (tor0 D cc δ) (pt D (tor0 D cc δ) δ z) • heisO ψ S T (finPt hS hT r z) f') := by
    intro F f' hF z
    exact (GlobalTheory.T.heisenbergFinitePoint_reads_classicalTranslation ψ θ S T hS hT cc δ r hSet F f' hF z).smul _
  have hR0 : Reads ψ θ hS hT cc δ r (0 : VC D a d → ℂ) (0 : WO S T → ℂ) :=
    ⟨(GlobalTheory.FinWeilO.thetaSub ψ S T).zero_mem, fun w _ => by simp⟩
  have hRsum : ∀ {k : ℕ} (rr : Fin k → ℂ) (F : Fin k → VC D a d → ℂ) (f' : Fin k → WO S T → ℂ),
      (∀ i, Reads ψ θ hS hT cc δ r (F i) (f' i)) →
        Reads ψ θ hS hT cc δ r (∑ i, rr i • F i) (∑ i, rr i • f' i) := by
    intro k rr F f' hF
    have : ∀ s : Finset (Fin k), Reads ψ θ hS hT cc δ r (∑ i ∈ s, rr i • F i) (∑ i ∈ s, rr i • f' i) := by
      intro s
      induction s using Finset.induction_on with
      | empty => simpa using hR0
      | insert i s hi ih =>
        rw [Finset.sum_insert hi, Finset.sum_insert hi]; exact ((hF i).smul (rr i)).add ih
    exact this Finset.univ
  have key : ∀ zz : Matrix (Fin d) (Fin a) D.host.E, ∃ z',
      W.Om x y (Formalism.MainNotions.StandardLatticesGL3.Wd D (tor0 D cc δ) (pt D (tor0 D cc δ) δ zz) e0) =
        Formalism.MainNotions.StandardLatticesGL3.Wd D (tor0 D cc δ) (pt D (tor0 D cc δ) δ z') (W.Om x y e0) ∧
      Formalism.MainNotions.StandardLatticesGL3.wdPh D (tor0 D cc δ) (pt D (tor0 D cc δ) δ zz) • om (g, h) (heisO ψ S T (finPt hS hT r zz) f₀) =
        Formalism.MainNotions.StandardLatticesGL3.wdPh D (tor0 D cc δ) (pt D (tor0 D cc δ) δ z') • heisO ψ S T (finPt hS hT r z') (om (g, h) f₀) := by
    intro zz
    obtain ⟨m, hm, hl⟩ := W.lift x y zz e0 heT
    obtain ⟨n, hn, hL⟩ := _root_.GlobalTheory.MovedTr.moved_translate ψ θ S T hS hT cc δ r hSet χS χT om hW x y g h hg hh f₀ hf₀.1 zz
    obtain ⟨z', hz'⟩ := exists_closeTo hC.1.1 (x : GL (Fin a) (Formalism.MainNotions.StandardLatticesGL3.AE D)) (y : GL (Fin d) (Formalism.MainNotions.StandardLatticesGL3.AE D))
      zz (m * n) (Nat.mul_pos hm hn)
    refine ⟨z', hl z' (closeTo_of_mul m n hz'), hL z' (closeTo_of_mul n m ?_)⟩
    rwa [mul_comm] at hz'
  choose z' hz1 hz2 using key
  obtain ⟨k, rr, z, rfl⟩ := GlobalTheory.ThetaSpan.theta_span D cc δ hC a d e0 he0 W.nz G hG
  have hfG := Reads.unique hf (hRsum rr _ _ fun i => hRt e0 f₀ hf₀ (z i))
  subst hfG
  have e1 : c • W.Om x y (∑ i, rr i • Formalism.MainNotions.StandardLatticesGL3.Wd D (tor0 D cc δ) (pt D (tor0 D cc δ) δ (z i)) e0) =
      ∑ i, rr i • Formalism.MainNotions.StandardLatticesGL3.Wd D (tor0 D cc δ) (pt D (tor0 D cc δ) δ (z' (z i))) (c • W.Om x y e0) := by
    rw [(GlobalTheory.NormSum.RatExtend.Om_sum W x y Finset.univ rr _ fun i => hTT (z i)).2, Finset.smul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [hz1, GlobalTheory.NormSum.RatExtend.Wd_smul, smul_comm]
  have e2 : om (g, h) (∑ i, rr i • (Formalism.MainNotions.StandardLatticesGL3.wdPh D (tor0 D cc δ) (pt D (tor0 D cc δ) δ (z i)) •
        heisO ψ S T (finPt hS hT r (z i)) f₀)) =
      ∑ i, rr i • (Formalism.MainNotions.StandardLatticesGL3.wdPh D (tor0 D cc δ) (pt D (tor0 D cc δ) δ (z' (z i))) •
        heisO ψ S T (finPt hS hT r (z' (z i))) (om (g, h) f₀)) := by

    rw [map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_smul, map_smul, hz2]
  rw [e1, e2]
  exact hRsum rr _ _ fun i => hRt _ _ hc (z' (z i))

end GlobalTheory.NormExact
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MovedThetaFunctionsReadOfMovedVacuumReads =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MovedThetaFunctionsReadOfMovedVacuumReadsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MovedThetaFunctionsReadOfMovedVacuumReadsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MovedThetaFunctionsReadOfMovedVacuumReads\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormSum (Pair Tup minorPol ratG intG Cls gam)
open GlobalTheory.NormDict GlobalTheory.NormExact
open GlobalTheory.BotFormula (IsFinPt)
open GlobalTheory.IndefiniteRowSideFullHecke.ClassFunctionSumIntegral (IsDefiniteSpace IsOpenCompactLevel)

attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem _root_.GlobalTheory.T.movedThetaFunctions_read_of_movedVacuum_reads : ∀ {D : D7} (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D) (S T : HSp D) {a d : ℕ} (hS : S.rank = a) (hT : T.rank = d)
  (cc : Ideal (𝓞 D.host.K)) (δ : ℂ) (r : D.host.E), Setup ψ θ S T cc δ r →
  ∀ (e0 : VC D a d → ℂ) (W : WeilO D cc δ a d e0) (χS χT : (AE D)ˣ →* Circle)
    (om : GA D S × GA D T →* Module.End ℂ (WO S T → ℂ)), IsWeilDatumO ψ S T χS χT om →
  e0 ∈ Th D (tor0 D cc δ) (stdL D a) (stdL D d) →
  ∀ (x : Formalism.MainNotions.StandardLatticesGL3.GA D a) (y : Formalism.MainNotions.StandardLatticesGL3.GA D d) (g : GA D S) (h : GA D T), IsFinPt S g x → IsFinPt T h y →
  ∀ (c : ℂ) (f₀ : WO S T → ℂ), Reads ψ θ hS hT cc δ r e0 f₀ → Reads ψ θ hS hT cc δ r (c • W.Om x y e0) (om (g, h) f₀) →
  ∀ G ∈ TT D (tor0 D cc δ) a d, ∀ f, Reads ψ θ hS hT cc δ r G f → Reads ψ θ hS hT cc δ r (c • W.Om x y G) (om (g, h) f) := by
  first | exact @GlobalTheory.NormExact.reads_om_of_vacuum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MovedThetaFunctionsReadOfMovedVacuumReadsStatement =====
