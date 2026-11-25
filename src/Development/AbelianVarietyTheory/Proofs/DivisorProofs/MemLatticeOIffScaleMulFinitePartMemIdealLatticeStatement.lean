module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLsB
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardLatticeDoubleCosetClassesStabilisers
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulMemLatO
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsIntegralSplitIdempotentOverTwo
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IdealExtendConjMulEqAbsNorm
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormPeriodSq
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SupportedSubgroupSplitCommutePrimeIdempotents
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ActAApply
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatticeOIffScaleMulFinitePartMemIdealLattice, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatticeOIffScaleMulFinitePartMemIdealLatticeStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatticeOIffScaleMulFinitePartMemIdealLattice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatticeOIffScaleMulFinitePartMemIdealLattice", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLsB\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardLatticeDoubleCosetClassesStabilisers\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SmulMemLatO\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsIntegralSplitIdempotentOverTwo\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.RealIdemMulOfReal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IdealExtendConjMulEqAbsNorm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormPeriodSq\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ActAApply\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SupportedSubgroupSplitCommutePrimeIdempotents\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory IsDedekindDomain
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormExact
open GlobalTheory.BotFormula (IsFinPt)
open GlobalTheory.BotClassDict (finQ)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.SplitLatDict

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open scoped TensorProduct



section SlopeTestRemainingChoices

variable {D : D7}

theorem cE_ccK_eq (D : D7) :
    GlobalTheory.VacRead.cE D D.host.ccK =
      ((D.host.ccE : FractionalIdeal (nonZeroDivisors (𝓞 D.host.E)) D.host.E) : Submodule (𝓞 D.host.E) D.host.E) := by
  rw [FractionalIdeal.coe_coeIdeal]
  apply le_antisymm
  · refine Submodule.span_le.2 ?_
    rintro _ ⟨c, hc, rfl⟩
    exact (IsLocalization.mem_coeSubmodule _ _).2
      ⟨algebraMap (𝓞 D.host.K) (𝓞 D.host.E) c, Ideal.mem_map_of_mem _ hc, rfl⟩
  · intro x hx
    obtain ⟨y, hy, rfl⟩ := (IsLocalization.mem_coeSubmodule _ _).1 hx
    have hy' : y ∈ Submodule.span (𝓞 D.host.E)
        (algebraMap (𝓞 D.host.K) (𝓞 D.host.E) '' (D.host.ccK : Set (𝓞 D.host.K))) := hy
    clear hx hy
    induction hy' using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨c, hc, rfl⟩ := hz
      exact Submodule.subset_span ⟨c, hc, rfl⟩
    | zero => rw [map_zero]; exact zero_mem _
    | add a b _ _ ha hb => rw [map_add]; exact add_mem ha hb
    | smul o a _ ha =>
      rw [smul_eq_mul, map_mul, ← Algebra.smul_def]
      exact Submodule.smul_mem _ o ha

theorem mul_conj_div_absNorm_mem_auxiliaryOrder {a γ : D.host.E} (ha : a ∈ D.host.AA) (hγ : γ ∈ GlobalTheory.VacRead.cE D D.host.ccK) :
    a * D.host.conj γ / (Ideal.absNorm D.host.ccK : D.host.E) ∈ (D.host.AA0 : Submodule (𝓞 D.host.E) D.host.E) := by
  have ha' : a ∈ ((D.host.ccE : FractionalIdeal (nonZeroDivisors (𝓞 D.host.E)) D.host.E) : Submodule (𝓞 D.host.E) D.host.E) *
      (D.host.AA0 : Submodule (𝓞 D.host.E) D.host.E) := by
    rw [← FractionalIdeal.coe_mul]; exact ha
  refine Submodule.mul_induction_on ha' (fun x hx b hb => ?_) (fun x y hx hy => ?_)
  · rw [← cE_ccK_eq] at hx
    obtain ⟨o, ho⟩ := (GlobalTheory.VacRead.conj_mul_cE_absNorm D D.host.ccK).1 γ hγ x hx
    by_cases hN : (Ideal.absNorm D.host.ccK : D.host.E) = 0
    · rw [hN, div_zero]; exact zero_mem _
    have e : x * b * D.host.conj γ / (Ideal.absNorm D.host.ccK : D.host.E) =
        algebraMap (𝓞 D.host.E) D.host.E o * b := by
      rw [show x * b * D.host.conj γ = (D.host.conj γ * x) * b by ring, ho]
      field_simp
    rw [e, ← Algebra.smul_def]
    exact Submodule.smul_mem _ o hb
  · rw [add_mul, add_div]; exact add_mem hx hy

theorem mul_mem_AA {ε b : D.host.E} (hε : ε ∈ GlobalTheory.VacRead.cE D D.host.ccK) (hb : b ∈ D.host.AA0) :
    ε * b ∈ D.host.AA := by
  have hε' : ε ∈ (D.host.ccE : FractionalIdeal (nonZeroDivisors (𝓞 D.host.E)) D.host.E) := by
    rw [← FractionalIdeal.mem_coe, ← cE_ccK_eq]; exact hε
  exact FractionalIdeal.mul_mem_mul hε' hb

theorem inc_mem_IhE {cc : Ideal (𝓞 D.host.K)} {α : D.host.E} (hα : α ∈ GlobalTheory.VacRead.cE D cc) :
    ∀ x ∈ (D.host.AA0 : Submodule (𝓞 D.host.E) D.host.E), Formalism.MainNotions.StandardLatticesGL3.inc D (α * x) ∈ Formalism.MainNotions.StandardLatticesGL3.IhE D cc := by
  induction hα using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨c, hc, rfl⟩ := hy
    intro x hx
    exact AddSubgroup.subset_closure ⟨c, hc, x, hx, 1, Subring.one_mem _, by rw [mul_one]⟩
  | zero => intro x _; rw [zero_mul, map_zero]; exact zero_mem _
  | add a b _ _ ha hb => intro x hx; rw [add_mul, map_add (f := _)]; exact add_mem (ha x hx) (hb x hx)
  | smul o a _ ha =>
    intro x hx
    have e : (o • a) * x = a * (o • x) := by rw [Algebra.smul_def, Algebra.smul_def]; ring
    rw [e]; exact ha _ (Submodule.smul_mem _ o hx)

theorem absNorm_ne_zero {cc : Ideal (𝓞 D.host.K)} (hc : cc ≠ ⊥) : (Ideal.absNorm cc : D.host.E) ≠ 0 :=
  Nat.cast_ne_zero.2 fun h => hc (Ideal.absNorm_eq_zero_iff.1 h)

theorem inc_r_mem_IhE {cc : Ideal (𝓞 D.host.K)} {r : D.host.E} (hc : cc ≠ ⊥) (hr : IsScale D cc r)
    {y : D.host.E} (hy : y ∈ GlobalTheory.VacRead.bInv D cc r) :
    ∀ a ∈ D.host.AA, Formalism.MainNotions.StandardLatticesGL3.inc D (r * (a * star y)) ∈ Formalism.MainNotions.StandardLatticesGL3.IhE D cc := by
  have hr0 : r ≠ 0 := IsScale.ne_zero hc hr
  have hN := absNorm_ne_zero (D := D) hc
  have hs : r * D.host.conj r * ((Ideal.absNorm D.host.ccK : ℕ) : D.host.E) = ((Ideal.absNorm cc : ℕ) : D.host.E) := hr
  have hN0 : ((Ideal.absNorm D.host.ccK : ℕ) : D.host.E) ≠ 0 := fun h => hN (by rw [← hs, h, mul_zero])
  have hcr : D.host.conj r ≠ 0 := (map_ne_zero _).2 hr0
  induction hy using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨α, hα, γ, hγ, rfl⟩ := hy
    intro a ha
    have e : r * (a * star (r * D.host.conj α * γ / (Ideal.absNorm cc : D.host.E))) =
        α * (a * D.host.conj γ / (Ideal.absNorm D.host.ccK : D.host.E)) := by
      rw [GlobalTheory.SplitIdem.star_eq_conj, map_div₀, map_mul, map_mul, GlobalTheory.InertSign.conj_conj, map_natCast, ← hs]
      field_simp
    rw [e]
    exact inc_mem_IhE hα _ (mul_conj_div_absNorm_mem_auxiliaryOrder ha hγ)
  | zero => intro a _; rw [star_zero, mul_zero, mul_zero, map_zero]; exact zero_mem _
  | add x y _ _ hx hy =>
    intro a ha; rw [star_add, mul_add, mul_add, map_add (f := _)]; exact add_mem (hx a ha) (hy a ha)
  | smul o y _ hy =>
    intro a ha
    have hco : algebraMap (𝓞 D.host.E) D.host.E (GlobalTheory.InertSign.sgO D o) =
        D.host.conj (algebraMap (𝓞 D.host.E) D.host.E o) := rfl
    have e : r * (a * star (o • y)) = r * ((GlobalTheory.InertSign.sgO D o) • a * star y) := by
      rw [Algebra.smul_def, Algebra.smul_def, GlobalTheory.SplitIdem.star_eq_conj, GlobalTheory.SplitIdem.star_eq_conj, map_mul, hco]
      ring
    rw [e]
    exact hy _ ((D.host.AA : Submodule (𝓞 D.host.E) D.host.E).smul_mem _ ha)

theorem finQ_pair_tmul (α : Af D.host.F) (e : D.host.E) :
    finQ D (pairA D.host.F 0 α ⊗ₜ[D.host.F] e) =
      finQ D (pairA D.host.F 0 α ⊗ₜ[D.host.F] (1 : D.host.E)) * Formalism.MainNotions.StandardLatticesGL3.inc D e := by
  rw [← GlobalTheory.BotClassDict.finQ_inclR, ← map_mul]
  congr 1
  show _ = (pairA D.host.F 0 α ⊗ₜ[D.host.F] (1 : D.host.E)) * ((1 : AF D.host.F) ⊗ₜ[D.host.F] e)
  rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]

theorem finQ_pair_mem {α : Af D.host.F} (hα : α ∈ Formalism.MainNotions.StandardLattice.intAf D.host.F) :
    finQ D (pairA D.host.F 0 α ⊗ₜ[D.host.F] (1 : D.host.E)) ∈ Formalism.MainNotions.StandardLatticesGL3.OhE D := by
  refine (GlobalTheory.BotClassDict.toAfE_int_iff _).1 ?_
  rw [GlobalTheory.BotClassDict.toAfE_finQ]
  exact (GlobalTheory.IdemSupport.mem_intAE_iff _).1 (AddSubgroup.subset_closure ⟨α, hα, 1, rfl⟩)

theorem infPart_liftFin (z : Af D.host.F ⊗[D.host.F] D.host.E) : infPart D (GlobalTheory.LatticeStable.liftFin D z) = 0 := by
  induction z using TensorProduct.induction_on with
  | zero => rw [map_zero, map_zero]
  | tmul α e =>
    rw [GlobalTheory.LatticeStable.liftFin_tmul]
    show (Algebra.TensorProduct.map _ _) _ = 0
    rw [Algebra.TensorProduct.map_tmul]
    exact TensorProduct.zero_tmul _ _
  | add x y hx hy => rw [map_add, map_add, hx, hy, add_zero]

theorem finPart_liftFin (z : Af D.host.F ⊗[D.host.F] D.host.E) : finPart D (GlobalTheory.LatticeStable.liftFin D z) = z := by
  induction z using TensorProduct.induction_on with
  | zero => rw [map_zero, map_zero]
  | tmul α e => rw [GlobalTheory.LatticeStable.liftFin_tmul]; rfl
  | add x y hx hy => rw [map_add, map_add, hx, hy]

theorem toAfE_inc (e : D.host.E) :
    GlobalTheory.BotFormula.toAfE D (Formalism.MainNotions.StandardLatticesGL3.inc D e) = (1 : Af D.host.F) ⊗ₜ[D.host.F] e := by
  rw [← GlobalTheory.BotClassDict.finQ_inclR, GlobalTheory.BotClassDict.toAfE_finQ]; rfl

end SlopeTestRemainingChoices

section Main

variable {D : D7}

theorem single_mem_latO_gen (S T : HSp D) (hG : S.gram = 1) {cc : Ideal (𝓞 D.host.K)} {r : D.host.E}
    (i : Fin T.rank) (j : Fin S.rank) {a y : D.host.E} (ha : a ∈ D.host.AA) (hy : y ∈ GlobalTheory.VacRead.bInv D cc r) :
    Matrix.single i j (pairA D.host.F 0 1 ⊗ₜ[D.host.F] (a * star y)) ∈
      latO S T (GlobalTheory.VacRead.lsB D cc r S.rank : Set (Fin S.rank → D.host.E))
        (stdL D T.rank : Set (Fin T.rank → D.host.E)) (fun _ => True) := by
  refine AddSubgroup.subset_closure ⟨1, ?_, fun v hv => (hv trivial).elim, a, ha, Pi.single j y, ?_,
    Pi.single i 1, ?_, ?_⟩
  · intro v; rw [map_one]; exact one_mem _
  · rw [SetLike.mem_coe, GlobalTheory.VacRead.mem_lsB]
    intro k
    by_cases h : k = j
    · subst h; rw [Pi.single_eq_same]; exact hy
    · rw [Pi.single_eq_of_ne h]; exact zero_mem _
  · rw [SetLike.mem_coe]
    refine Submodule.mem_pi.2 fun k _ => ?_
    by_cases h : k = i
    · subst h; rw [Pi.single_eq_same]; exact Submodule.mem_one.2 ⟨1, map_one _⟩
    · rw [Pi.single_eq_of_ne h]; exact zero_mem _
  · ext i' j'
    rw [hG]
    simp only [Matrix.single_apply, Matrix.of_apply, Matrix.one_apply, mul_ite, mul_one, mul_zero,
      Finset.sum_ite_eq', Finset.mem_univ, if_true, Pi.single_apply]
    rcases eq_or_ne i' i with rfl | h1 <;> rcases eq_or_ne j' j with rfl | h2
    · simp
    · simp [h2, h2.symm]
    · simp [h1, h1.symm]
    · simp [h1, h2, h1.symm, h2.symm]

theorem single_mem_latO_core (S T : HSp D) (hG : S.gram = 1) {cc : Ideal (𝓞 D.host.K)} {r : D.host.E}
    (hc : cc ≠ ⊥) (hr : IsScale D cc r) (i : Fin T.rank) (j : Fin S.rank) {c : 𝓞 D.host.K} (hcc : c ∈ cc)
    {a0 : D.host.E} (ha0 : a0 ∈ D.host.AA0) :
    Matrix.single i j (pairA D.host.F 0 1 ⊗ₜ[D.host.F] (r⁻¹ * (((c : D.host.K) : D.host.E) * a0))) ∈
      latO S T (GlobalTheory.VacRead.lsB D cc r S.rank : Set (Fin S.rank → D.host.E))
        (stdL D T.rank : Set (Fin T.rank → D.host.E)) (fun _ => True) := by
  have hr0 : r ≠ 0 := IsScale.ne_zero hc hr
  have hN := absNorm_ne_zero (D := D) hc
  have hs : r * D.host.conj r * ((Ideal.absNorm D.host.ccK : ℕ) : D.host.E) = ((Ideal.absNorm cc : ℕ) : D.host.E) := hr
  have hN0 : ((Ideal.absNorm D.host.ccK : ℕ) : D.host.E) ≠ 0 := fun h => hN (by rw [← hs, h, mul_zero])
  have hcr : D.host.conj r ≠ 0 := (map_ne_zero _).2 hr0
  set c' : D.host.E := ((c : D.host.K) : D.host.E) with hc'
  have key : ∀ x ∈ Submodule.span (𝓞 D.host.E)
      {t | ∃ α ∈ GlobalTheory.VacRead.cE D D.host.ccK, ∃ β ∈ GlobalTheory.VacRead.cE D D.host.ccK, t = D.host.conj α * β},
      ∀ o : 𝓞 D.host.E, Matrix.single i j (pairA D.host.F 0 1 ⊗ₜ[D.host.F]
        (r⁻¹ * (c' * a0) * (algebraMap (𝓞 D.host.E) D.host.E o * x) / (Ideal.absNorm D.host.ccK : D.host.E))) ∈
        latO S T (GlobalTheory.VacRead.lsB D cc r S.rank : Set (Fin S.rank → D.host.E))
          (stdL D T.rank : Set (Fin T.rank → D.host.E)) (fun _ => True) := by
    intro x hx
    induction hx using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨γ, hγ, ε, hε, rfl⟩ := hz
      intro o
      have e : r⁻¹ * (c' * a0) * (algebraMap (𝓞 D.host.E) D.host.E o * (D.host.conj γ * ε)) /
          (Ideal.absNorm D.host.ccK : D.host.E) =
          (algebraMap (𝓞 D.host.E) D.host.E o * ε * a0) *
            star (r * D.host.conj c' * γ / (Ideal.absNorm cc : D.host.E)) := by
        rw [GlobalTheory.SplitIdem.star_eq_conj, map_div₀, map_mul, map_mul, GlobalTheory.InertSign.conj_conj, map_natCast, ← hs]
        field_simp
      rw [e]
      refine single_mem_latO_gen S T hG i j (mul_mem_AA ?_ ha0)
        (Submodule.subset_span ⟨c', Submodule.subset_span ⟨c, hcc, rfl⟩, γ, hγ, rfl⟩)
      rw [← Algebra.smul_def]
      exact Submodule.smul_mem _ o hε
    | zero =>
      intro o
      rw [mul_zero, mul_zero, zero_div, TensorProduct.tmul_zero, Matrix.single_zero]
      exact zero_mem _
    | add x y _ _ hx hy =>
      intro o
      rw [mul_add, mul_add, add_div, TensorProduct.tmul_add, Matrix.single_add]
      exact add_mem (hx o) (hy o)
    | smul o' x _ hx =>
      intro o
      have e : algebraMap (𝓞 D.host.E) D.host.E o * (o' • x) = algebraMap (𝓞 D.host.E) D.host.E (o * o') * x := by
        rw [Algebra.smul_def, map_mul]; ring
      rw [e]; exact hx (o * o')
  have h1 := key _ (GlobalTheory.VacRead.conj_mul_cE_absNorm D D.host.ccK).2 1
  have e : r⁻¹ * (c' * a0) * (algebraMap (𝓞 D.host.E) D.host.E 1 * (Ideal.absNorm D.host.ccK : D.host.E)) /
      (Ideal.absNorm D.host.ccK : D.host.E) = r⁻¹ * (c' * a0) := by
    rw [map_one, one_mul, mul_div_assoc, div_self hN0, mul_one]
  rwa [e] at h1

theorem fwd {cc : Ideal (𝓞 D.host.K)} {r : D.host.E} (hc : cc ≠ ⊥) (hr : IsScale D cc r)
    (S T : HSp D) (hG : S.gram = 1) (u : WO S T)
    (hu : u ∈ latO S T (GlobalTheory.VacRead.lsB D cc r S.rank : Set (Fin S.rank → D.host.E))
        (stdL D T.rank : Set (Fin T.rank → D.host.E)) (fun _ => True)) (i : Fin T.rank) (j : Fin S.rank) :
    Formalism.MainNotions.StandardLatticesGL3.inc D r * finQ D (u i j) ∈ Formalism.MainNotions.StandardLatticesGL3.IhE D cc := by
  let Ψ : WO S T →+ Formalism.MainNotions.StandardLatticesGL3.AE D := AddMonoidHom.mk' (fun u => Formalism.MainNotions.StandardLatticesGL3.inc D r * finQ D (u i j))
    (fun x y => by rw [Matrix.add_apply, map_add, mul_add])
  have hle : latO S T (GlobalTheory.VacRead.lsB D cc r S.rank : Set (Fin S.rank → D.host.E))
      (stdL D T.rank : Set (Fin T.rank → D.host.E)) (fun _ => True) ≤ (Formalism.MainNotions.StandardLatticesGL3.IhE D cc).comap Ψ := by
    refine (AddSubgroup.closure_le _).2 ?_
    rintro _ ⟨α, hα, -, a, ha, s, hs, t, ht, rfl⟩
    show Formalism.MainNotions.StandardLatticesGL3.inc D r * finQ D (pairA D.host.F 0 α ⊗ₜ[D.host.F]
      (a * t i * ∑ k, star (s k) * S.gram k j)) ∈ Formalism.MainNotions.StandardLatticesGL3.IhE D cc
    rw [hG]
    have hsum : ∑ k, star (s k) * (1 : Matrix (Fin S.rank) (Fin S.rank) D.host.E) k j = star (s j) := by
      simp [Matrix.one_apply]
    rw [hsum, finQ_pair_tmul, mul_left_comm, ← map_mul]
    refine GlobalTheory.FinWeil.ihE_mul D cc (finQ_pair_mem hα) ?_
    have hti : t i ∈ (1 : Submodule (𝓞 D.host.E) D.host.E) := (Submodule.mem_pi.1 ht) i trivial
    obtain ⟨o, ho⟩ := Submodule.mem_one.1 hti
    have hsj : s j ∈ GlobalTheory.VacRead.bInv D cc r := GlobalTheory.VacRead.mem_lsB.1 hs j
    have hat : a * t i ∈ D.host.AA := by
      rw [← ho, mul_comm, ← Algebra.smul_def]
      exact (D.host.AA : Submodule (𝓞 D.host.E) D.host.E).smul_mem o ha
    exact inc_r_mem_IhE hc hr hsj _ hat
  exact hle hu


theorem bwd {cc : Ideal (𝓞 D.host.K)} {r : D.host.E} (hc : cc ≠ ⊥) (hr : IsScale D cc r)
    (S T : HSp D) (hG : S.gram = 1) (u : WO S T) (hinf : u.map (infPart D) = 0)
    (h : ∀ i j, Formalism.MainNotions.StandardLatticesGL3.inc D r * finQ D (u i j) ∈ Formalism.MainNotions.StandardLatticesGL3.IhE D cc) :
    u ∈ latO S T (GlobalTheory.VacRead.lsB D cc r S.rank : Set (Fin S.rank → D.host.E))
        (stdL D T.rank : Set (Fin T.rank → D.host.E)) (fun _ => True) := by
  have hr0 : r ≠ 0 := IsScale.ne_zero hc hr
  rw [Matrix.matrix_eq_sum_single u]
  refine sum_mem fun i _ => sum_mem fun j _ => ?_
  let Φ : Formalism.MainNotions.StandardLatticesGL3.AE D →+ WO S T := AddMonoidHom.mk'
    (fun x => Matrix.single i j (GlobalTheory.LatticeStable.liftFin D (GlobalTheory.BotFormula.toAfE D (Formalism.MainNotions.StandardLatticesGL3.inc D r⁻¹ * x))))
    (fun x y => by rw [mul_add, map_add, map_add, Matrix.single_add])
  have hle : Formalism.MainNotions.StandardLatticesGL3.IhE D cc ≤ (latO S T (GlobalTheory.VacRead.lsB D cc r S.rank : Set (Fin S.rank → D.host.E))
      (stdL D T.rank : Set (Fin T.rank → D.host.E)) (fun _ => True)).comap Φ := by
    refine (AddSubgroup.closure_le _).2 ?_
    rintro _ ⟨c, hcc, a0, ha0, s, hsO, rfl⟩
    show Matrix.single i j (GlobalTheory.LatticeStable.liftFin D (GlobalTheory.BotFormula.toAfE D
      (Formalism.MainNotions.StandardLatticesGL3.inc D r⁻¹ * (Formalism.MainNotions.StandardLatticesGL3.inc D (((c : D.host.K) : D.host.E) * a0) * s)))) ∈
      latO S T (GlobalTheory.VacRead.lsB D cc r S.rank : Set (Fin S.rank → D.host.E))
        (stdL D T.rank : Set (Fin T.rank → D.host.E)) (fun _ => True)
    have hw : finPart D (GlobalTheory.LatticeStable.liftFin D (GlobalTheory.BotFormula.toAfE D s)) ∈ intAE D := by
      rw [finPart_liftFin]
      exact (GlobalTheory.IdemSupport.mem_intAE_iff _).2 ((GlobalTheory.BotClassDict.toAfE_int_iff s).2 hsO)
    have e : Matrix.single i j (GlobalTheory.LatticeStable.liftFin D (GlobalTheory.BotFormula.toAfE D
        (Formalism.MainNotions.StandardLatticesGL3.inc D r⁻¹ * (Formalism.MainNotions.StandardLatticesGL3.inc D (((c : D.host.K) : D.host.E) * a0) * s)))) =
        GlobalTheory.LatticeStable.liftFin D (GlobalTheory.BotFormula.toAfE D s) •
          Matrix.single i j (pairA D.host.F 0 1 ⊗ₜ[D.host.F] (r⁻¹ * (((c : D.host.K) : D.host.E) * a0))) := by
      rw [Matrix.smul_single]
      congr 1
      rw [smul_eq_mul]
      apply GlobalTheory.SplitScalar.adele_ext
      · rw [infPart_liftFin, (infPart D).map_mul, infPart_liftFin, zero_mul]
      · rw [finPart_liftFin, (finPart D).map_mul, finPart_liftFin]
        show _ = _ * ((1 : Af D.host.F) ⊗ₜ[D.host.F] (r⁻¹ * (((c : D.host.K) : D.host.E) * a0)))
        rw [← toAfE_inc, ← (GlobalTheory.BotFormula.toAfE D).map_mul]
        congr 1
        rw [(Formalism.MainNotions.StandardLatticesGL3.inc D).map_mul r⁻¹]
        ring
    rw [e]
    exact GlobalTheory.LatticeStable.smul_mem_latO D S T _ _ _ _ hw _ (single_mem_latO_core S T hG hc hr i j hcc ha0)
  have e1 : Formalism.MainNotions.StandardLatticesGL3.inc D r⁻¹ * (Formalism.MainNotions.StandardLatticesGL3.inc D r * finQ D (u i j)) = finQ D (u i j) := by
    rw [← mul_assoc, ← map_mul (Formalism.MainNotions.StandardLatticesGL3.inc D), inv_mul_cancel₀ hr0, map_one, one_mul]
  have e2 : GlobalTheory.LatticeStable.liftFin D (GlobalTheory.BotFormula.toAfE D (finQ D (u i j))) = u i j := by
    rw [GlobalTheory.BotClassDict.toAfE_finQ]
    apply GlobalTheory.SplitScalar.adele_ext
    · rw [infPart_liftFin]; exact (congrFun (congrFun hinf i) j).symm
    · rw [finPart_liftFin]; rfl
  have hij : Matrix.single i j (u i j) = Φ (Formalism.MainNotions.StandardLatticesGL3.inc D r * finQ D (u i j)) := by
    show _ = Matrix.single i j (GlobalTheory.LatticeStable.liftFin D (GlobalTheory.BotFormula.toAfE D
      (Formalism.MainNotions.StandardLatticesGL3.inc D r⁻¹ * (Formalism.MainNotions.StandardLatticesGL3.inc D r * finQ D (u i j)))))
    rw [e1, e2]
  rw [hij]
  exact hle (h i j)

end Main

theorem mem_latO_iff_ihE : ∀ (D : D7) (S T : HSp D), S.gram = 1 → ∀ (cc : Ideal (𝓞 D.host.K)) (r : D.host.E), cc ≠ ⊥ → IsScale D cc r →
  ∀ u : WO S T, u.map (infPart D) = 0 →
  (u ∈ latO S T (GlobalTheory.VacRead.lsB D cc r S.rank : Set (Fin S.rank → D.host.E)) (stdL D T.rank : Set (Fin T.rank → D.host.E)) (fun _ => True) ↔
    ∀ i j, Formalism.MainNotions.StandardLatticesGL3.inc D r * finQ D (u i j) ∈ Formalism.MainNotions.StandardLatticesGL3.IhE D cc) := by
  intro D S T hG cc r hc hr u hinf
  exact ⟨fun hu i j => fwd hc hr S T hG u hu i j, fun h => bwd hc hr S T hG u hinf h⟩

end GlobalTheory.SplitLatDict
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatticeOIffScaleMulFinitePartMemIdealLattice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatticeOIffScaleMulFinitePartMemIdealLatticeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatticeOIffScaleMulFinitePartMemIdealLatticeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLsB\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardLatticeDoubleCosetClassesStabilisers\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatticeOIffScaleMulFinitePartMemIdealLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory IsDedekindDomain
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormExact
open GlobalTheory.BotFormula (IsFinPt)
open GlobalTheory.BotClassDict (finQ)

attribute [local instance] Formalism.BasicNotions.Host.cmStar


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemLatticeOIffScaleMulFinitePartMemIdealLatticeStatement =====
