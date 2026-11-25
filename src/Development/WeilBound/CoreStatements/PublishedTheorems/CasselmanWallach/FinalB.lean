module

public import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws
public import Mathlib.LinearAlgebra.Eigenspace.Triangularizable
public import Mathlib.LinearAlgebra.Eigenspace.Basic
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Analysis.Calculus.Deriv.MeanValue
public import Mathlib.Analysis.InnerProductSpace.Calculus
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import Mathlib.Analysis.Calculus.Deriv.Shift
public import Mathlib.Analysis.InnerProductSpace.Spectrum
public import Mathlib.Analysis.Normed.Algebra.MatrixExponential
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.RigidityTheorems.IsInLieAlgebraISmulAddConjTranspose
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirAlgebra.MulMulSubMulMulEqAdd
public import Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff
public import GroundTheory.GlobalFields.Artin.LogCharpoly
public import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.BasisFormSumOfGain
public import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.BasisSumOfOrthogonality
public import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CommutatorAdjointHolds
public import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EigenspacesOrthogonalOfCalculus
public import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EnvelopingAlgebraGrowthBound
public import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.MatrixActionSingle
public import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.MaximumPrincipleOfFacts
public import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.OrthonormalEigenbasisOfBasic
public import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.SecondDerivativeHolds
public import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.U0Commute
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasDRepIffHasDerivAt
public import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CwOf
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Algebra.Order.Star.Real
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.PiTensorProduct
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.TypeStar
import Mathlib.Algebra.Order.Star.Rat

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirPowerCommute, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirRealOfCentral, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirRealScalar, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.ColumnMomentsOfSymmetric, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CompactGroupFacts, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EigenWeightedSumBound, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EigenbasisOfBasic, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusOfBasic, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GelfandCentralHolds, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GroupFactsHolds, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GrowthOfBasic, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GrowthPolynomialOperator, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.IdentityFiltrationBound, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.InversePowerBoundHolds, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.KFiniteInclusion, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.NilpotentOfPowerTraces, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.PMaxPr, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.SymmetricPowerHolds, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.WordFiltrationCommute, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EtaleCohomologyNegativeVanishingDegreeZero, Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FinalB

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirPowerCommute =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirPowerCommute", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace AdjointWordFiltration

variable {n : ℕ} {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V]

theorem U_mono (E : Fin n → Fin n → Module.End ℂ V) {j k : ℕ} (h : j ≤ k) : U E j ≤ U E k := by
  unfold U
  apply Submodule.span_mono
  rintro x ⟨l, hl, rfl⟩
  exact ⟨l, hl.trans h, rfl⟩

theorem word_mem (E : Fin n → Fin n → Module.End ℂ V) (l : List (Fin n × Fin n)) :
    (l.map fun p => E p.1 p.2).prod ∈ U E l.length :=
  Submodule.subset_span ⟨l, le_rfl, rfl⟩

theorem mul_E_mem (E : Fin n → Fin n → Module.End ℂ V) (a b : Fin n) {j : ℕ} {w : Module.End ℂ V}
    (hw : w ∈ U E j) : w * E a b ∈ U E (j + 1) := by
  unfold U at hw
  induction hw using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨l, hl, rfl⟩ := hx
    apply Submodule.subset_span
    refine ⟨l ++ [(a, b)], by simp; omega, ?_⟩
    simp [List.prod_append]
  | zero => simp
  | add x y _ _ hx hy => rw [add_mul]; exact Submodule.add_mem _ hx hy
  | smul c x _ hx => rw [smul_mul_assoc]; exact Submodule.smul_mem _ c hx

theorem adjSign_mul_self (ε : Fin n → Bool) (a b : Fin n) : adjSign ε a b * adjSign ε a b = 1 := by
  unfold adjSign; split_ifs <;> norm_num

theorem word_adj (ε : Fin n → Bool) (E : Fin n → Fin n → Module.End ℂ V) (hu : IsInfUnitary ε E)
    (l : List (Fin n × Fin n)) :
    ∃ u' ∈ U E l.length, ∀ x y, inner ℂ x ((l.map fun p => E p.1 p.2).prod y) = inner ℂ (u' x) y := by
  induction l with
  | nil =>
    refine ⟨1, by simpa using word_mem E [], fun x y => ?_⟩
    simp
  | cons p t ih =>
    obtain ⟨w', hw', hw⟩ := ih
    refine ⟨(starRingEnd ℂ (adjSign ε p.2 p.1)) • (w' * E p.2 p.1), ?_, fun x y => ?_⟩
    · exact Submodule.smul_mem _ _ (by simpa using mul_E_mem E p.2 p.1 hw')
    · have h1 := hu p.2 p.1 x ((t.map fun p => E p.1 p.2).prod y)
      rw [List.map_cons, List.prod_cons, Module.End.mul_apply, LinearMap.smul_apply, inner_smul_left,
        Complex.conj_conj, Module.End.mul_apply, ← hw, h1, ← mul_assoc, adjSign_mul_self, one_mul]

end AdjointWordFiltration

theorem adjoint_stable_filtration : FiltrationAdjointStable := by
  intro n ε V _ _ E hM k u hu
  unfold U at hu
  induction hu using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨l, hl, rfl⟩ := hx
    obtain ⟨u', hu', h⟩ := AdjointWordFiltration.word_adj ε E hM.uni l
    exact ⟨u', AdjointWordFiltration.U_mono E hl hu', h⟩
  | zero => exact ⟨0, Submodule.zero_mem _, fun x y => by simp⟩
  | add x y _ _ hx hy =>
    obtain ⟨x', hx', hx⟩ := hx
    obtain ⟨y', hy', hy⟩ := hy
    exact ⟨x' + y', Submodule.add_mem _ hx' hy', fun a b => by
      simp only [LinearMap.add_apply, inner_add_left, inner_add_right, hx, hy]⟩
  | smul c x _ hx =>
    obtain ⟨x', hx', hx⟩ := hx
    refine ⟨starRingEnd ℂ c • x', Submodule.smul_mem _ _ hx', fun a b => ?_⟩
    rw [LinearMap.smul_apply, LinearMap.smul_apply, inner_smul_left, inner_smul_right, Complex.conj_conj, hx]

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirPowerCommute =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirRealOfCentral =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirRealOfCentral", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace CasimirRealScalar

variable {n : ℕ}

theorem casimir_eq_trace {V : Type} [AddCommGroup V] [Module ℂ V] (E : Fin n → Fin n → Module.End ℂ V) :
    casimir E = (Mm E ^ 2).trace := by
  unfold casimir Mm
  rw [sq, Matrix.trace]
  simp [Matrix.diag, Matrix.mul_apply]

theorem term_im {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] (ε : Fin n → Bool)
    (E : Fin n → Fin n → Module.End ℂ V) (hu : IsInfUnitary ε E) (a b : Fin n) (v : V) :
    (inner ℂ v (E a b (E b a v))).im = 0 := by
  rw [← inner_conj_symm, hu a b, Complex.conj_im, neg_eq_zero]
  have h1 : (adjSign ε a b).im = 0 := by
    unfold adjSign
    split_ifs <;> simp
  have h2 : (inner ℂ (E b a v) (E b a v)).im = 0 := inner_self_im (𝕜 := ℂ) _
  rw [Complex.mul_im, h1, h2]
  ring

theorem cas_im {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] (ε : Fin n → Bool)
    (E : Fin n → Fin n → Module.End ℂ V) (hu : IsInfUnitary ε E) (v : V) :
    (inner ℂ v (casimir E v)).im = 0 := by
  unfold casimir
  simp only [LinearMap.sum_apply, Module.End.mul_apply, inner_sum, Complex.im_sum]
  exact Finset.sum_eq_zero fun a _ => Finset.sum_eq_zero fun b _ => term_im ε E hu a b v

end CasimirRealScalar

theorem casimir_real_of_central : A2 → A3 → CasimirIsRealScalar := by
  intro h2 h3
  unfold CasimirIsRealScalar ForMod
  intro n ε V _ _ E h
  have hc : ∀ a b, E a b * casimir E = casimir E * E a b := by
    intro a b
    rw [CasimirRealScalar.casimir_eq_trace]
    exact h2 n ε V E h 2 a b
  obtain ⟨c, hc'⟩ := h3 n ε V E h (casimir E) hc
  rcases subsingleton_or_nontrivial V with hV | hV
  · exact ⟨0, fun v => Subsingleton.elim _ _⟩
  obtain ⟨v, hv⟩ := exists_ne (0 : V)
  have him := CasimirRealScalar.cas_im ε E h.uni v
  have hn : ‖v‖ ≠ 0 := norm_ne_zero_iff.mpr hv
  have hcim : c.im = 0 := by
    rw [hc', inner_smul_right, inner_self_eq_norm_sq_to_K, Complex.mul_im] at him
    have hre : ((‖v‖ : ℂ) ^ 2).re = ‖v‖ ^ 2 := by
      rw [← Complex.ofReal_pow, Complex.ofReal_re]
    have him2 : ((‖v‖ : ℂ) ^ 2).im = 0 := by
      rw [← Complex.ofReal_pow, Complex.ofReal_im]
    erw [hre, him2, mul_zero, zero_add] at him
    rcases mul_eq_zero.mp him with h0 | h0
    · exact h0
    · exact absurd (pow_eq_zero_iff two_ne_zero |>.mp h0) hn
  refine ⟨c.re, fun w => ?_⟩
  rw [hc' w]
  congr 1
  apply Complex.ext <;> simp [hcim]

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirRealOfCentral =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirRealScalar =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirRealScalar", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Eigenspace.Triangularizable\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Eigenspace.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace CasimirEigenvector

variable {n : ℕ} {ε : Fin n → Bool} {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
  {E : Fin n → Fin n → Module.End ℂ V}

lemma comm_casimirK (T : Module.End ℂ V) (hT : ∀ a b, E a b * T = T * E a b) :
    casimirK ε E * T = T * casimirK ε E := by
  unfold casimirK
  rw [Finset.sum_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Finset.sum_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [mul_assoc, hT b a, ← mul_assoc, hT a b, mul_assoc]

lemma exists_eig_ne (h : Mod ε E) [Nontrivial V] : ∃ μ : ℝ, ∃ v : V, v ≠ 0 ∧ Eig ε E μ v := by
  by_contra hc
  push_neg at hc
  have hb : Submodule.span ℂ {v | ∃ μ : ℝ, Eig ε E μ v} = ⊥ := by
    rw [Submodule.span_eq_bot]
    rintro v ⟨μ, hv⟩
    by_contra hne
    exact hc μ v hne hv
  rw [h.span] at hb
  exact top_ne_bot hb

end CasimirEigenvector

theorem casimir_eigen_exists : A3 := by
  intro n ε V _ _ E h T hT
  rcases subsingleton_or_nontrivial V with hV | hV
  · exact ⟨0, fun v => Subsingleton.elim _ _⟩
  obtain ⟨μ, v, hv0, hv⟩ := CasimirEigenvector.exists_eig_ne h
  set W := Module.End.eigenspace (casimirK ε E) (μ : ℂ) with hWdef
  have hWle : W ≤ Submodule.span ℂ {v | ∃ ν : ℝ, ν ≤ μ ∧ Eig ε E ν v} := by
    intro x hx
    apply Submodule.subset_span
    exact ⟨μ, le_rfl, Module.End.mem_eigenspace_iff.mp hx⟩
  have := h.fin μ
  have : FiniteDimensional ℂ W := Submodule.finiteDimensional_of_le hWle
  have hvW : v ∈ W := Module.End.mem_eigenspace_iff.mpr hv
  have : Nontrivial W := ⟨⟨⟨v, hvW⟩, 0, fun he => hv0 (congrArg Subtype.val he)⟩⟩
  have hTW : ∀ x ∈ W, T x ∈ W := by
    intro x hx
    rw [Module.End.mem_eigenspace_iff] at hx ⊢
    have hc := congrArg (fun f : Module.End ℂ V => f x) (CasimirEigenvector.comm_casimirK (ε := ε) T hT)
    simp only [Module.End.mul_apply] at hc
    rw [hc, hx, map_smul]
  obtain ⟨c, hc⟩ := Module.End.exists_eigenvalue (T.restrict hTW)
  obtain ⟨w, hw⟩ := hc.exists_hasEigenvector
  refine ⟨c, ?_⟩
  have hN : LinearMap.ker (T - c • 1) = ⊥ ∨ LinearMap.ker (T - c • 1) = ⊤ := by
    apply h.irr
    intro a b x hx
    rw [LinearMap.mem_ker] at hx ⊢
    have he := congrArg (fun f : Module.End ℂ V => f x) (hT a b)
    simp only [Module.End.mul_apply] at he
    simp only [LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply] at hx ⊢
    rw [← he, ← LinearMap.map_smul, ← map_sub, hx, map_zero]
  have hw1 : T (w : V) = c • (w : V) := by
    have := Module.End.mem_eigenspace_iff.mp hw.1
    exact congrArg Subtype.val this
  have hw0 : (w : V) ≠ 0 := fun h0 => hw.2 (Subtype.ext h0)
  rcases hN with hN | hN
  · exfalso
    apply hw0
    have : (w : V) ∈ LinearMap.ker (T - c • 1) := by
      rw [LinearMap.mem_ker]
      simp [hw1]
    rw [hN] at this
    exact (Submodule.mem_bot ℂ).mp this
  · intro x
    have : x ∈ LinearMap.ker (T - c • 1) := by rw [hN]; trivial
    rw [LinearMap.mem_ker] at this
    simpa [sub_eq_zero] using this

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirRealScalar =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.ColumnMomentsOfSymmetric =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.ColumnMomentsOfSymmetric", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\npublic import Mathlib.Analysis.InnerProductSpace.PiL2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace MatrixActionSingle

variable {n : ℕ} {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V]

def act (A : Matrix (Fin n) (Fin n) (Module.End ℂ V)) : Module.End ℂ (PiLp 2 fun _ : Fin n => V) where
  toFun u := WithLp.toLp 2 (fun a => ∑ b, A a b (u b))
  map_add' u w := by ext a; simp [Finset.sum_add_distrib]
  map_smul' c u := by ext a; simp [Finset.smul_sum]

lemma act_apply (A : Matrix (Fin n) (Fin n) (Module.End ℂ V)) (u : PiLp 2 fun _ : Fin n => V) (a : Fin n) :
    act A u a = ∑ b, A a b (u b) := rfl

lemma act_mul (A B : Matrix (Fin n) (Fin n) (Module.End ℂ V)) (u : PiLp 2 fun _ : Fin n => V) :
    act (A * B) u = act A (act B u) := by
  ext a

  simp only [act_apply, Matrix.mul_apply, LinearMap.sum_apply, Module.End.mul_apply, map_sum]
  exact Finset.sum_comm

lemma act_pow (A : Matrix (Fin n) (Fin n) (Module.End ℂ V)) (m : ℕ) (u : PiLp 2 fun _ : Fin n => V) :
    act (A ^ m) u = (act A ^ m) u := by
  induction m generalizing u with
  | zero =>
    ext a
    simp [act_apply, Matrix.one_apply]
    rw [Finset.sum_eq_single a (fun b _ hb => by simp [Ne.symm hb]) (by simp)]
    simp
  | succ m ih => rw [pow_succ, act_mul, ih, pow_succ, Module.End.mul_apply]

lemma adjSign_symm (ε : Fin n → Bool) (a b : Fin n) : adjSign ε a b = adjSign ε b a := by
  simp [adjSign, eq_comm]

lemma adj (ε : Fin n → Bool) (E : Fin n → Fin n → Module.End ℂ V) (hu : IsInfUnitary ε E)
    (u w : PiLp 2 fun _ : Fin n => V) :
    inner ℂ (act (Mm E) u) w = inner ℂ u (act (Md ε E) w) := by
  simp only [PiLp.inner_apply, act_apply, Mm, Md, Matrix.of_apply, sum_inner, inner_sum,
    LinearMap.smul_apply, inner_smul_right]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun b _ => Finset.sum_congr rfl fun a _ => ?_
  rw [adjSign_symm]
  exact hu a b _ _

lemma adj' (ε : Fin n → Bool) (E : Fin n → Fin n → Module.End ℂ V) (hu : IsInfUnitary ε E)
    (u w : PiLp 2 fun _ : Fin n => V) :
    inner ℂ (act (Md ε E) u) w = inner ℂ u (act (Mm E) w) := by
  rw [← inner_conj_symm, ← adj ε E hu, inner_conj_symm]

lemma act_single (A : Matrix (Fin n) (Fin n) (Module.End ℂ V)) (e a : Fin n) (v : V) :
    act A (PiLp.single 2 e v) a = A a e v := by
  rw [act_apply, Finset.sum_eq_single e]
  · simp
  · intro b _ hb
    simp [hb]
  · intro h
    exact absurd (Finset.mem_univ e) h

lemma inner_single (e : Fin n) (v : V) (w : PiLp 2 fun _ : Fin n => V) :
    inner ℂ (PiLp.single 2 e v) w = inner ℂ v (w e) := by
  rw [PiLp.inner_apply, Finset.sum_eq_single e (fun b _ hb => by simp [hb]) (by simp)]
  simp

end MatrixActionSingle

open MatrixActionSingle in
theorem column_moments_of_symmetric : A7 → ColumnOperatorMoments := by
  intro h7
  unfold ColumnOperatorMoments ForMod
  intro n ε V _ _ E hM v hv e j
  have hu := hM.uni
  have hsa : ∀ y z : PiLp 2 (fun _ : Fin n => V),
      inner ℂ (act (Md ε E * Mm E) y) z = inner ℂ y (act (Md ε E * Mm E) z) := by
    intro y z
    rw [act_mul, act_mul, adj' ε E hu, adj ε E hu]
  have hxn : ‖(PiLp.single 2 e v : PiLp 2 (fun _ : Fin n => V))‖ = 1 := by
    rw [PiLp.norm_single, hv]
  have hn : ‖act (Mm E) (PiLp.single 2 e v : PiLp 2 (fun _ : Fin n => V))‖ ^ 2
      = ∑ a, ‖E a e v‖ ^ 2 := by
    rw [PiLp.norm_sq_eq_of_L2]
    refine Finset.sum_congr rfl fun a _ => ?_
    have := act_single (Mm E) e a v
    simp only [Mm, Matrix.of_apply] at this
    rw [← this]
    rfl
  have hq : inner ℂ (PiLp.single 2 e v : PiLp 2 (fun _ : Fin n => V))
      (act (Md ε E * Mm E) (PiLp.single 2 e v)) = ((∑ a, ‖E a e v‖ ^ 2 : ℝ) : ℂ) := by
    rw [act_mul, ← adj ε E hu, inner_self_eq_norm_sq_to_K, ← hn]
    norm_cast
  have hre : (inner ℂ (PiLp.single 2 e v : PiLp 2 (fun _ : Fin n => V))
      (act (Md ε E * Mm E) (PiLp.single 2 e v))).re = ∑ a, ‖E a e v‖ ^ 2 := by
    rw [hq, Complex.ofReal_re]
  have key := h7 (PiLp 2 (fun _ : Fin n => V)) (act (Md ε E * Mm E)) hsa
    (PiLp.single 2 e v) hxn (by rw [hre]; positivity) j
  rw [hre, ← act_pow, inner_single, act_single] at key
  exact key

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.ColumnMomentsOfSymmetric =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CompactGroupFacts =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CompactGroupFacts", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.Deriv.MeanValue\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS Filter Topology Set

namespace PositivityTheory.CW

theorem second_derivative_holds : B3 := by
  intro ψ ψ' d hmax hψ hd
  by_contra hneg
  have hdpos : 0 < d := lt_of_not_ge hneg
  have h0 : ψ' 0 = 0 := hmax.hasDerivAt_eq_zero (hψ 0)
  have hslope := hd.tendsto_slope_zero_right
  have e1 : ∀ᶠ t in 𝓝[>] (0 : ℝ), ψ t ≤ ψ 0 := nhdsWithin_le_nhds hmax
  have e2 : ∀ᶠ t in 𝓝[>] (0 : ℝ), 0 < t⁻¹ • (ψ' (0 + t) - ψ' 0) := hslope (lt_mem_nhds hdpos)
  obtain ⟨u, hu, hsub⟩ := mem_nhdsGT_iff_exists_Ioo_subset.mp (e1.and e2)
  have hu0 : (0 : ℝ) < u := hu
  have hb : u / 2 ∈ Set.Ioo (0 : ℝ) u := ⟨by linarith, by linarith⟩
  obtain ⟨c, hc, hcslope⟩ := exists_hasDerivAt_eq_slope ψ ψ' (half_pos hu0)
    (fun t _ => (hψ t).continuousAt.continuousWithinAt) (fun t _ => hψ t)
  have hcu : c ∈ Set.Ioo (0 : ℝ) u := ⟨hc.1, hc.2.trans (by linarith)⟩
  obtain ⟨-, hc'⟩ := hsub hcu
  obtain ⟨hbmax, -⟩ := hsub hb
  simp only [zero_add, h0, sub_zero, smul_eq_mul] at hc'
  have hψc : 0 < ψ' c := (pos_iff_pos_of_mul_pos hc').mp (inv_pos.mpr hc.1)
  rw [hcslope, sub_zero] at hψc
  have hdiff : 0 < ψ (u / 2) - ψ 0 := by
    have := mul_pos hψc (half_pos hu0)
    rwa [div_mul_cancel₀ _ (half_pos hu0).ne'] at this
  linarith

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CompactGroupFacts =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EigenWeightedSumBound =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EigenWeightedSumBound", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Calculus\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.Deriv.Add\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\npublic import Mathlib.Analysis.Calculus.Deriv.Shift\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace SumSquaresShift

theorem shift {n : ℕ} {ε : Fin n → Bool} (hB3g : UnitaryGroupFacts) (F0 : Matrix (Fin n) (Fin n) ℂ → ℂ)
    (X : Matrix (Fin n) (Fin n) ℂ) (hX : inP ε X) (D : Matrix (Fin n) (Fin n) ℂ → ℂ)
    (h : ∀ g ∈ UJset ε, HasDerivAt (fun t : ℝ => F0 (g * NormedSpace.exp (t • X))) (D g) 0)
    (g : Matrix (Fin n) (Fin n) ℂ) (hg : g ∈ UJset ε) (t : ℝ) :
    HasDerivAt (fun t : ℝ => F0 (g * NormedSpace.exp (t • X))) (D (g * NormedSpace.exp (t • X))) t := by
  obtain ⟨-, -, hmem, hadd, -⟩ := hB3g n ε
  have hg' := hmem g hg X hX t
  have h1 := h _ hg'
  have h0 : HasDerivAt (fun s : ℝ => F0 (g * NormedSpace.exp (t • X) * NormedSpace.exp (s • X)))
      (D (g * NormedSpace.exp (t • X))) (t - t) := by
    rw [sub_self]; exact h1
  have h4 := h0.comp_sub_const t t
  refine h4.congr_of_eventuallyEq (Filter.Eventually.of_forall fun u => ?_)
  have hu : t + (u - t) = u := by ring
  show F0 (g * NormedSpace.exp (u • X)) = F0 (g * NormedSpace.exp (t • X) * NormedSpace.exp ((u - t) • X))
  rw [mul_assoc, ← hadd X t (u - t), hu]

end SumSquaresShift

open SumSquaresShift in
theorem second_derivatives_of_growth : B1 → UnitaryGroupFacts → SumSquaresSecondDerivative := by
  intro hB1 hB3g n ε V _ _ E hMod ι b μ hEig κ hκ F hF S a g hg
  obtain ⟨hXp, hcas, hnorm⟩ := hB1 n ε V E hMod
  have hd : ∀ p ∈ nc ε, ∀ (v : V) (t : ℝ),
      HasDerivAt (fun s : ℝ => F v (g * NormedSpace.exp (s • Xp p.1 p.2)))
        (F (actM E (Xp p.1 p.2) v) (g * NormedSpace.exp (t • Xp p.1 p.2))) t := by
    intro p hp v t
    exact shift hB3g (F v) (Xp p.1 p.2) (hXp p hp) (fun k => F (actM E (Xp p.1 p.2) v) k)
      (fun k hk => hF _ (hXp p hp) v k hk) g hg t
  have hexp0 : ∀ X : Matrix (Fin n) (Fin n) ℂ, g * NormedSpace.exp ((0:ℝ) • X) = g := by
    intro X
    simp [NormedSpace.exp_zero]
  refine ⟨fun p => ∑ i ∈ S, a i * (2 * (inner ℝ (F (b i) g)
      (F (actM E (Xp p.1 p.2) (actM E (Xp p.1 p.2) (b i))) g) + ‖F (actM E (Xp p.1 p.2) (b i)) g‖ ^ 2)), ?_, ?_⟩
  · intro p hp
    refine ⟨fun t => ∑ i ∈ S, a i * (2 * inner ℝ (F (b i) (g * NormedSpace.exp (t • Xp p.1 p.2)))
      (F (actM E (Xp p.1 p.2) (b i)) (g * NormedSpace.exp (t • Xp p.1 p.2)))), ?_, ?_⟩
    · intro t
      beta_reduce
      apply HasDerivAt.fun_sum
      intro i _
      exact ((hd p hp (b i) t).norm_sq).const_mul (a i)
    · beta_reduce
      apply HasDerivAt.fun_sum
      intro i _
      have h1 := hd p hp (b i) 0
      have h2 := hd p hp (actM E (Xp p.1 p.2) (b i)) 0
      have h3 := ((HasDerivAt.inner ℝ h1 h2).const_mul 2).const_mul (a i)
      rw [hexp0] at h3
      refine h3.congr_deriv ?_
      rw [real_inner_self_eq_norm_sq]
  · dsimp only
    rw [Finset.sum_comm, Finset.mul_sum]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    have hN : ∑ p ∈ nc ε, ‖F (actM E (Xp p.1 p.2) (b i)) g‖ ^ 2
        = ∑ p ∈ nc ε, ‖F (E p.1 p.2 (b i)) g‖ ^ 2 :=
      hnorm ((LinearMap.proj g).comp F) (b i)
    have hs : ∑ p ∈ nc ε, F (actM E (Xp p.1 p.2) (actM E (Xp p.1 p.2) (b i))) g
        = ((κ - μ i : ℝ) : ℂ) * F (b i) g := by
      have h0 := congrArg (fun v => F v g) (hcas κ hκ (b i))

      simp only [map_sum, Finset.sum_apply] at h0
      rw [h0, (hEig.eig i : casimirK ε E (b i) = _)]
      simp only [map_sub, map_smul, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
      push_cast
      ring
    have hI : ∑ p ∈ nc ε, inner ℝ (F (b i) g) (F (actM E (Xp p.1 p.2) (actM E (Xp p.1 p.2) (b i))) g)
        = (κ - μ i) * ‖F (b i) g‖ ^ 2 := by
      rw [← inner_sum, hs, ← Complex.real_smul, real_inner_smul_right, real_inner_self_eq_norm_sq]
    rw [← Finset.mul_sum, ← Finset.mul_sum, Finset.sum_add_distrib, hI, hN]
    ring

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EigenWeightedSumBound =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EigenbasisOfBasic =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EigenbasisOfBasic", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\npublic import Mathlib.LinearAlgebra.Eigenspace.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Spectrum\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.InnerProductSpace.PiL2\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace EigenspaceDecomposition

variable {n : ℕ} {ε : Fin n → Bool} {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
  {E : Fin n → Fin n → Module.End ℂ V}

abbrev Es (ε : Fin n → Bool) (E : Fin n → Fin n → Module.End ℂ V) (μ : ℝ) : Submodule ℂ V :=
  Module.End.eigenspace (casimirK ε E) (μ : ℂ)

theorem mem_Es {μ : ℝ} {v : V} : v ∈ Es ε E μ ↔ Eig ε E μ v :=
  Module.End.mem_eigenspace_iff

theorem fd (h : Mod ε E) (μ : ℝ) : FiniteDimensional ℂ (Es ε E μ) := by
  haveI := h.fin μ
  refine Submodule.finiteDimensional_of_le (S₂ := Submodule.span ℂ {v : V | ∃ μ' ≤ μ, Eig ε E μ' v}) ?_
  intro v hv
  exact Submodule.subset_span ⟨μ, le_rfl, mem_Es.mp hv⟩

end EigenspaceDecomposition

open EigenspaceDecomposition in
theorem eigenbasis_of_basic : A0 → EigenbasisExists := by
  intro hA n ε V _ _ E h
  obtain ⟨hsym, hnn, -, -⟩ := hA n ε V E h
  haveI : ∀ μ : ℝ, FiniteDimensional ℂ (Es ε E μ) := fun μ => fd h μ
  let f : (Σ μ : ℝ, Fin (Module.finrank ℂ (Es ε E μ))) → V :=
    fun i => ((stdOrthonormalBasis ℂ (Es ε E i.1)) i.2 : V)
  have hOF : OrthogonalFamily ℂ (fun μ : ℝ => Es ε E μ) (fun μ => (Es ε E μ).subtypeₗᵢ) :=
    (LinearMap.IsSymmetric.orthogonalFamily_eigenspaces (T := casimirK ε E) hsym).comp
      (f := fun μ : ℝ => (μ : ℂ)) Complex.ofReal_injective
  have hon : Orthonormal ℂ f :=
    hOF.orthonormal_sigma_orthonormal (fun μ => (stdOrthonormalBasis ℂ (Es ε E μ)).orthonormal)
  have hli : LinearIndependent ℂ f := hon.linearIndependent
  have hEs : ∀ μ : ℝ, ∀ v ∈ Es ε E μ, v ∈ Submodule.span ℂ (Set.range f) := by
    intro μ v hv
    have key := (stdOrthonormalBasis ℂ (Es ε E μ)).sum_repr ⟨v, hv⟩
    have hv' : v = ∑ i, ((stdOrthonormalBasis ℂ (Es ε E μ)).repr ⟨v, hv⟩ i) •
        ((stdOrthonormalBasis ℂ (Es ε E μ)) i : V) := by
      have := congrArg Subtype.val key
      rw [Submodule.coe_sum] at this
      simpa using this.symm
    rw [hv']
    exact Submodule.sum_mem _ fun i _ =>
      Submodule.smul_mem _ _ (Submodule.subset_span ⟨⟨μ, i⟩, rfl⟩)
  have hsp : ⊤ ≤ Submodule.span ℂ (Set.range f) := by
    rw [← h.span, Submodule.span_le]
    rintro v ⟨μ, hμ⟩
    exact hEs μ v (mem_Es.mpr hμ)
  have heig : ∀ i, Eig ε E i.1 (f i) := fun i =>
    mem_Es.mp ((stdOrthonormalBasis ℂ (Es ε E i.1)) i.2).2
  refine ⟨_, Module.Basis.mk hli hsp, fun i => i.1, ?_⟩
  refine ⟨?_, ?_, ?_, ?_⟩
  · simpa using hon
  · intro i
    simpa using heig i
  · intro i
    refine hnn i.1 (f i) (heig i) ?_
    intro h0
    have := hon.1 i
    rw [h0, norm_zero] at this
    exact zero_ne_one this
  · intro R
    haveI := h.fin R
    let W := Submodule.span ℂ {v : V | ∃ μ ≤ R, Eig ε E μ v}
    let g : {i : (Σ μ : ℝ, Fin (Module.finrank ℂ (Es ε E μ))) | i.1 ≤ R} → W :=
      fun i => ⟨f i.1, Submodule.subset_span ⟨i.1.1, i.2, heig i.1⟩⟩
    have hg : LinearIndependent ℂ g :=
      LinearIndependent.of_comp W.subtype (hli.comp _ Subtype.val_injective)
    haveI := hg.finite
    exact Set.toFinite _

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EigenbasisOfBasic =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusOfBasic =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusOfBasic", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace FunctionalCalculusInner

variable {n : ℕ} {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] {ι : Type}

theorem fc_basis (b : Module.Basis ι ℂ V) (μ : ι → ℝ) (φ : ℝ → ℝ) (i : ι) :
    fc b μ φ (b i) = ((φ (μ i) : ℝ) : ℂ) • b i := by
  unfold fc
  exact b.constr_basis ℂ _ i

theorem repr_fc (b : Module.Basis ι ℂ V) (μ : ι → ℝ) (φ : ℝ → ℝ) (v : V) (i : ι) :
    b.repr (fc b μ φ v) i = ((φ (μ i) : ℝ) : ℂ) * b.repr v i := by
  have key : (b.coord i).comp (fc b μ φ) = ((φ (μ i) : ℝ) : ℂ) • b.coord i := by
    refine b.ext fun j => ?_
    simp only [LinearMap.comp_apply, Module.Basis.coord_apply, fc_basis, map_smul,
      LinearMap.smul_apply, Module.Basis.repr_self]
    by_cases hji : j = i
    · subst hji; simp
    · simp [hji]
  exact LinearMap.congr_fun key v

theorem inner_basis_left (b : Module.Basis ι ℂ V) (hb : Orthonormal ℂ b) (i : ι) (y : V) :
    inner ℂ (b i) y = b.repr y i := by
  classical
  have key : (innerₛₗ ℂ (b i) : V →ₗ[ℂ] ℂ) = b.coord i := by
    refine b.ext fun j => ?_
    show inner ℂ (b i) (b j) = b.repr (b j) i
    rw [Module.Basis.repr_self, orthonormal_iff_ite.mp hb i j]
    by_cases hij : i = j
    · subst hij; simp
    · simp [hij]
  exact LinearMap.congr_fun key y

theorem inner_eq_sum (b : Module.Basis ι ℂ V) (hb : Orthonormal ℂ b) (x y : V) (s : Finset ι)
    (hs : (b.repr x).support ⊆ s) :
    inner ℂ x y = ∑ i ∈ s, starRingEnd ℂ (b.repr x i) * b.repr y i := by
  have hx : x = ∑ i ∈ s, b.repr x i • b i := by
    conv_lhs => rw [← b.linearCombination_repr x]
    rw [Finsupp.linearCombination_apply, Finsupp.sum_of_support_subset _ hs]
    intro i _
    simp
  conv_lhs => rw [hx]
  rw [sum_inner]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [inner_smul_left, inner_basis_left b hb]

theorem fc_id (ε : Fin n → Bool) (E : Fin n → Fin n → Module.End ℂ V) (b : Module.Basis ι ℂ V) (μ : ι → ℝ)
    (h : ∀ i, Eig ε E (μ i) (b i)) : fc b μ (fun x => x) = casimirK ε E :=
  b.ext fun i => by rw [fc_basis]; exact (h i).symm

theorem re_conj_mul (z : ℂ) (r : ℝ) : (starRingEnd ℂ z * ((r : ℂ) * z)).re = r * ‖z‖ ^ 2 := by
  rw [mul_left_comm, Complex.conj_mul']
  norm_cast

theorem re_inner_fc (b : Module.Basis ι ℂ V) (hb : Orthonormal ℂ b) (μ : ι → ℝ) (φ : ℝ → ℝ) (w : V) :
    (inner ℂ w (fc b μ φ w)).re = ∑ i ∈ (b.repr w).support, φ (μ i) * ‖b.repr w i‖ ^ 2 := by
  rw [inner_eq_sum b hb w _ _ subset_rfl, Complex.re_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [repr_fc, re_conj_mul]

end FunctionalCalculusInner

open FunctionalCalculusInner in
theorem functional_calculus_of_basic : A0 → FunctionalCalculusLaws := by
  intro _ n ε V _ _ E _ ι b μ hb
  have hid := fc_id ε E b μ hb.eig
  refine ⟨fun φ ν v hv => ?_, fun φ x y => ?_, fun φ ψ hφψ w => ?_, fun φ ψ => ?_, fun φ ψ => ?_,
    fun c => ?_, hid⟩
  · refine b.repr.injective (Finsupp.ext fun i => ?_)
    have h1 : b.repr (casimirK ε E v) i = b.repr ((ν : ℂ) • v) i := by rw [show casimirK ε E v = (ν : ℂ) • v from hv]
    rw [← hid, repr_fc] at h1
    simp only [map_smul, Finsupp.smul_apply, smul_eq_mul] at h1
    rw [repr_fc, map_smul, Finsupp.smul_apply, smul_eq_mul]
    by_cases h0 : b.repr v i = 0
    · simp [h0]
    · have : μ i = ν := by
        have := mul_right_cancel₀ h0 h1
        exact_mod_cast this
      rw [this]
  · have hs : (b.repr (fc b μ φ x)).support ⊆ (b.repr x).support := by
      intro i hi
      rw [Finsupp.mem_support_iff] at hi ⊢
      rw [repr_fc] at hi
      exact right_ne_zero_of_mul hi
    rw [inner_eq_sum b hb.on _ _ _ hs, inner_eq_sum b hb.on _ _ _ subset_rfl]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [repr_fc, repr_fc, map_mul, Complex.conj_ofReal]
    ring
  · rw [re_inner_fc b hb.on, re_inner_fc b hb.on]
    exact Finset.sum_le_sum fun i _ =>
      mul_le_mul_of_nonneg_right (hφψ _ (hb.nonneg i)) (sq_nonneg _)
  · refine b.ext fun i => ?_
    simp only [fc_basis, LinearMap.add_apply, Complex.ofReal_add, add_smul]
  · refine b.ext fun i => ?_
    simp only [fc_basis, Module.End.mul_apply, map_smul, smul_smul, Complex.ofReal_mul, mul_comm]
  · refine b.ext fun i => ?_
    simp [fc_basis]

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusOfBasic =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GelfandCentralHolds =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GelfandCentralHolds", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace CasimirPowerCommute

variable {n : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V]

theorem comm_pow (E : Fin n → Fin n → Module.End ℂ V) (hE : IsGlRep E) (c d : Fin n) :
    ∀ (k : ℕ) (a b : Fin n), E c d * (Mm E ^ k) a b - (Mm E ^ k) a b * E c d =
      (if d = a then (Mm E ^ k) c b else 0) - (if b = c then (Mm E ^ k) a d else 0) := by
  have hM : ∀ i j, Mm E i j = E i j := fun _ _ => rfl
  intro k
  induction k with
  | zero =>
    intro a b
    simp only [pow_zero, Matrix.one_apply]
    have h0 : (if d = a then (if c = b then (1 : Module.End ℂ V) else 0) else 0) =
        (if b = c then (if a = d then 1 else 0) else 0) := by
      by_cases h2 : d = a
      · subst h2
        by_cases h3 : b = c
        · subst h3; simp
        · simp [h3, Ne.symm h3]
      · simp [h2, Ne.symm h2]
    rw [h0, sub_self]
    split_ifs <;> simp
  | succ k ih =>
    intro a b
    have key : ∀ j, E c d * ((Mm E ^ k) a j * E j b) - ((Mm E ^ k) a j * E j b) * E c d
        = (E c d * (Mm E ^ k) a j - (Mm E ^ k) a j * E c d) * E j b
          + (Mm E ^ k) a j * (E c d * E j b - E j b * E c d) := by
      intro j; noncomm_ring
    simp only [pow_succ, Matrix.mul_apply, hM]
    rw [Finset.mul_sum, Finset.sum_mul, ← Finset.sum_sub_distrib]
    simp only [key, ih, hE c d]
    simp only [sub_mul, mul_sub, ite_mul, mul_ite, zero_mul, mul_zero, Finset.sum_add_distrib,
      Finset.sum_sub_distrib, Finset.sum_ite_eq, Finset.sum_ite_eq', Finset.mem_univ, if_true]
    by_cases h1 : d = a <;> by_cases h2 : b = c <;> simp [h1, h2] <;> abel

end CasimirPowerCommute

theorem gelfand_central_holds : A2 := by
  intro n ε V _ _ E h k c d
  have hc := CasimirPowerCommute.comm_pow E h.gl c d k
  rw [← sub_eq_zero, Matrix.trace, Finset.mul_sum, Finset.sum_mul, ← Finset.sum_sub_distrib]
  simp only [Matrix.diag_apply, hc, Finset.sum_sub_distrib, Finset.sum_ite_eq, Finset.sum_ite_eq',
    Finset.mem_univ, if_true, sub_self]

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GelfandCentralHolds =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GroupFactsHolds =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GroupFactsHolds", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.RigidityTheorems.IsInLieAlgebraISmulAddConjTranspose\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace CompactGroupFacts

variable {n : ℕ}

theorem mul_mem (ε : Fin n → Bool) {g h : Matrix (Fin n) (Fin n) ℂ} (hg : g ∈ UJset ε) (hh : h ∈ UJset ε) :
    g * h ∈ UJset ε := by
  have hg' : gᴴ * Jm ε * g = Jm ε := hg
  have hh' : hᴴ * Jm ε * h = Jm ε := hh
  show (g * h)ᴴ * Jm ε * (g * h) = Jm ε
  rw [Matrix.conjTranspose_mul]
  calc hᴴ * gᴴ * Jm ε * (g * h) = hᴴ * (gᴴ * Jm ε * g) * h := by simp only [Matrix.mul_assoc]
    _ = Jm ε := by rw [hg', hh']

theorem hilbert_schmidt_continuous : Continuous (hs2 : Matrix (Fin n) (Fin n) ℂ → ℝ) := by
  unfold hs2
  fun_prop

theorem isClosed_UJ (ε : Fin n → Bool) : IsClosed (UJset ε) := by
  have : UJset ε = (fun g : Matrix (Fin n) (Fin n) ℂ => gᴴ * Jm ε * g) ⁻¹' {Jm ε} := rfl
  rw [this]
  exact isClosed_singleton.preimage (by fun_prop)

theorem entry_le (g : Matrix (Fin n) (Fin n) ℂ) (i j : Fin n) : ‖g i j‖ ^ 2 ≤ hs2 g := by
  unfold hs2
  calc ‖g i j‖ ^ 2 ≤ ∑ j', ‖g i j'‖ ^ 2 :=
        Finset.single_le_sum (f := fun j' => ‖g i j'‖ ^ 2) (fun _ _ => by positivity) (Finset.mem_univ j)
    _ ≤ ∑ i', ∑ j', ‖g i' j'‖ ^ 2 :=
        Finset.single_le_sum (f := fun i' => ∑ j', ‖g i' j'‖ ^ 2)
          (fun _ _ => Finset.sum_nonneg fun _ _ => by positivity) (Finset.mem_univ i)

theorem compact (ε : Fin n → Bool) (ρ : ℝ) : IsCompact {g | g ∈ UJset ε ∧ hs2 g ≤ ρ} := by
  let K : Set (Fin n → Fin n → ℂ) :=
    Set.pi Set.univ fun _ => Set.pi Set.univ fun _ => Metric.closedBall (0 : ℂ) (Real.sqrt ρ)
  have hK : IsCompact K := isCompact_univ_pi fun _ => isCompact_univ_pi fun _ => isCompact_closedBall _ _
  refine hK.of_isClosed_subset ((isClosed_UJ ε).inter (isClosed_le hilbert_schmidt_continuous continuous_const)) ?_
  rintro g ⟨-, hg⟩ i - j -
  simp only [Metric.mem_closedBall, dist_zero_right]
  exact Real.le_sqrt_of_sq_le ((entry_le g i j).trans hg)

theorem Xp_inP (ε : Fin n → Bool) (p : Fin n × Fin n) (hp : p ∈ nc ε) : inP ε (Xp p.1 p.2) := by
  obtain ⟨a, b⟩ := p
  have hab : ε a ≠ ε b := by simpa [nc] using hp
  have hne : a ≠ b := fun h => hab (h ▸ rfl)
  set σ : Fin n → ℂ := fun k => if ε k then 1 else -1 with hσdef
  have hσ : σ b = -σ a := by
    simp only [hσdef]; revert hab; cases ε a <;> cases ε b <;> simp
  have h2 : Xp a b * Jm ε = -(Jm ε * Xp a b) := by
    show Xp a b * Matrix.diagonal σ = -(Matrix.diagonal σ * Xp a b)
    ext i j
    simp only [Xp, Matrix.mul_diagonal, Matrix.diagonal_mul, Matrix.neg_apply, Matrix.add_apply,
      Matrix.single_apply]
    by_cases h1 : a = i ∧ b = j <;> by_cases h3 : b = i ∧ a = j
    · exact absurd (h1.1.trans h3.1.symm) hne
    · obtain ⟨rfl, rfl⟩ := h1; simp only [if_neg h3, hσ]; ring
    · obtain ⟨rfl, rfl⟩ := h3; simp only [if_neg h1, hσ]; ring
    · simp only [if_neg h1, if_neg h3]; ring
  have hh : (Xp a b)ᴴ = Xp a b := by
    ext i j
    simp only [Xp, Matrix.conjTranspose_apply, Matrix.add_apply, Matrix.single_apply]
    by_cases hi : a = i <;> by_cases hj : b = j <;> by_cases hi' : b = i <;> by_cases hj' : a = j <;>
      subst_vars <;> simp_all [Complex.ext_iff]
  refine ⟨?_, h2⟩
  show (Xp a b)ᴴ * Jm ε + Jm ε * Xp a b = 0
  rw [hh, h2, neg_add_cancel]

end CompactGroupFacts

theorem group_facts_holds : UnitaryGroupFacts := by
  intro n ε
  refine ⟨CompactGroupFacts.compact ε, ?_, ?_, ?_, CompactGroupFacts.hilbert_schmidt_continuous, CompactGroupFacts.Xp_inP ε⟩
  · show (1 : Matrix (Fin n) (Fin n) ℂ)ᴴ * Jm ε * 1 = Jm ε
    simp
  · intro g hg X hX t
    refine CompactGroupFacts.mul_mem ε hg ?_
    have := rq_exp_mem ε X hX.1 t
    rwa [Complex.coe_smul] at this
  · intro X s t
    rw [add_smul]
    exact Matrix.exp_add_of_commute _ _ ((Commute.refl X).smul_left s |>.smul_right t)

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GroupFactsHolds =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GrowthOfBasic =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GrowthOfBasic", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace GrowthPolynomialOperator

variable {n : ℕ}

lemma actM_Xp {M : Type*} [AddCommGroup M] [Module ℂ M] (E : Fin n → Fin n → Module.End ℂ M) (a b : Fin n) :
    actM E (Xp a b) = ((1 + Complex.I) / 2) • E a b + ((1 - Complex.I) / 2) • E b a := by
  simp only [actM, Xp, Matrix.add_apply, add_smul, Finset.sum_add_distrib, Matrix.single_apply, ite_smul, zero_smul, ite_and]
  simp [Finset.sum_ite_eq]

lemma sum_nc_swap {β : Type*} [AddCommMonoid β] (ε : Fin n → Bool) (g : Fin n × Fin n → β) :
    ∑ p ∈ nc ε, g p.swap = ∑ p ∈ nc ε, g p := by
  apply Finset.sum_nbij' Prod.swap Prod.swap <;> simp [nc, ne_comm]

lemma norm_id (x y : ℂ) :
    ‖(1 + Complex.I) / 2 * x + (1 - Complex.I) / 2 * y‖ ^ 2 +
      ‖(1 + Complex.I) / 2 * y + (1 - Complex.I) / 2 * x‖ ^ 2 = ‖x‖ ^ 2 + ‖y‖ ^ 2 := by
  simp only [Complex.sq_norm, Complex.normSq_apply]
  simp [Complex.add_re, Complex.mul_re, Complex.add_im, Complex.mul_im]
  ring

lemma coef1 : ((1 + Complex.I) / 2) ^ 2 + ((1 - Complex.I) / 2) ^ 2 = 0 := by
  ring_nf; simp [Complex.I_sq]

lemma coef2 : (1 + Complex.I) / 2 * ((1 - Complex.I) / 2) + (1 - Complex.I) / 2 * ((1 + Complex.I) / 2) = 1 := by
  linear_combination (-1/2 : ℂ) * Complex.I_sq

lemma inP_Xp (ε : Fin n → Bool) (a b : Fin n) (h : ε a ≠ ε b) : inP ε (Xp a b) := by
  have hab : a ≠ b := fun e => h (e ▸ rfl)
  refine ⟨?_, ?_⟩
  · unfold inG
    ext i j
    simp [Jm, Xp, Matrix.mul_diagonal, Matrix.diagonal_mul, Matrix.single_apply, ← sub_eq_add_neg]
    by_cases h1 : a = i ∧ b = j
    · obtain ⟨h1a, h1b⟩ := h1
      subst h1a
      subst h1b
      cases ha : ε a <;> cases hb : ε b <;> simp_all
    · by_cases h2 : b = i ∧ a = j
      · obtain ⟨h2a, h2b⟩ := h2
        subst h2a
        subst h2b
        cases ha : ε a <;> cases hb : ε b <;> simp_all
      · simp [h1, h2]
  · ext i j
    simp [Jm, Xp, Matrix.mul_diagonal, Matrix.diagonal_mul, Matrix.single_apply]
    by_cases h1 : a = i ∧ b = j
    · obtain ⟨h1a, h1b⟩ := h1
      subst h1a
      subst h1b
      cases ha : ε a <;> cases hb : ε b <;> simp_all
    · by_cases h2 : b = i ∧ a = j
      · obtain ⟨h2a, h2b⟩ := h2
        subst h2a
        subst h2b
        cases ha : ε a <;> cases hb : ε b <;> simp_all
      · simp [h1, h2]

end GrowthPolynomialOperator

open GrowthPolynomialOperator in
theorem growth_of_basic : A0 → B1 := by
  intro hA n ε V _ _ E hm
  obtain ⟨_, _, _, h4⟩ := hA n ε V E hm
  refine ⟨fun p hp => inP_Xp ε p.1 p.2 (by simpa [nc] using hp), fun κ hκ v => ?_, fun f w => ?_⟩
  · have hterm : ∀ a b : Fin n, actM E (Xp a b) (actM E (Xp a b) v) =
        ((1 + Complex.I) / 2) ^ 2 • E a b (E a b v) + ((1 + Complex.I) / 2 * ((1 - Complex.I) / 2)) • E a b (E b a v) +
        ((1 - Complex.I) / 2 * ((1 + Complex.I) / 2)) • E b a (E a b v) + ((1 - Complex.I) / 2) ^ 2 • E b a (E b a v) := by
      intro a b
      rw [actM_Xp]
      simp only [LinearMap.add_apply, LinearMap.smul_apply, map_add (f := _), map_smul]
      module
    rw [Finset.sum_congr rfl (fun p _ => hterm p.1 p.2)]
    simp only [Finset.sum_add_distrib, ← Finset.smul_sum]
    have s1 := sum_nc_swap ε (fun p => E p.1 p.2 (E p.1 p.2 v))
    have s2 := sum_nc_swap ε (fun p => E p.1 p.2 (E p.2 p.1 v))
    simp only [Prod.fst_swap, Prod.snd_swap] at s1 s2
    rw [s1, s2, ← (h4 κ hκ v).2.2]
    calc _ = (((1 + Complex.I) / 2) ^ 2 + ((1 - Complex.I) / 2) ^ 2) • ∑ p ∈ nc ε, E p.1 p.2 (E p.1 p.2 v) +
          ((1 + Complex.I) / 2 * ((1 - Complex.I) / 2) + (1 - Complex.I) / 2 * ((1 + Complex.I) / 2)) •
            ∑ p ∈ nc ε, E p.1 p.2 (E p.2 p.1 v) := by module
      _ = _ := by rw [coef1, coef2]; simp
  · have key : ∀ p ∈ nc ε, ‖f (actM E (Xp p.1 p.2) w)‖ ^ 2 + ‖f (actM E (Xp p.2 p.1) w)‖ ^ 2 =
        ‖f (E p.1 p.2 w)‖ ^ 2 + ‖f (E p.2 p.1 w)‖ ^ 2 := by
      intro p _
      simp only [actM_Xp, LinearMap.add_apply, LinearMap.smul_apply, map_add (f := _), map_smul, smul_eq_mul]
      exact norm_id _ _
    have h1 := sum_nc_swap ε (fun p => ‖f (actM E (Xp p.1 p.2) w)‖ ^ 2)
    have h2 := sum_nc_swap ε (fun p => ‖f (E p.1 p.2 w)‖ ^ 2)
    simp only [Prod.fst_swap, Prod.snd_swap] at h1 h2
    have h3 := Finset.sum_congr rfl key
    rw [Finset.sum_add_distrib, Finset.sum_add_distrib, h1, h2] at h3
    linarith

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GrowthOfBasic =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GrowthPolynomialOperator =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GrowthPolynomialOperator", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace NoncommutativeSwapSum

lemma sumS {n : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V] (ε : Fin n → Bool)
    (E : Fin n → Fin n → Module.End ℂ V) (κ : ℂ)
    (hS : ∀ w, ∑ p ∈ nc ε, E p.1 p.2 (E p.2 p.1 w) = κ • w - casimirK ε E w) :
    ∑ p ∈ nc ε, E p.1 p.2 * E p.2 p.1 = κ • (1 : Module.End ℂ V) - casimirK ε E := by
  ext w
  rw [LinearMap.sum_apply]
  simpa using hS w

lemma key {n : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V] (ε : Fin n → Bool)
    (E : Fin n → Fin n → Module.End ℂ V) (κ : ℂ)
    (hS : ∀ w, ∑ p ∈ nc ε, E p.1 p.2 (E p.2 p.1 w) = κ • w - casimirK ε E w) :
    ∑ p ∈ nc ε, E p.2 p.1 * Z ε E p.1 p.2 = -∑ p ∈ nc ε, Z ε E p.1 p.2 * E p.2 p.1 := by
  have h1 := sumS ε E κ hS
  have hc : casimirK ε E * (∑ p ∈ nc ε, E p.1 p.2 * E p.2 p.1)
      - (∑ p ∈ nc ε, E p.1 p.2 * E p.2 p.1) * casimirK ε E = 0 := by
    rw [h1, mul_sub, sub_mul, mul_smul_comm, smul_mul_assoc, mul_one, one_mul]
    abel
  rw [Finset.mul_sum, Finset.sum_mul, ← Finset.sum_sub_distrib] at hc
  have h2 : ∀ p ∈ nc ε, casimirK ε E * (E p.1 p.2 * E p.2 p.1) - E p.1 p.2 * E p.2 p.1 * casimirK ε E
      = Z ε E p.1 p.2 * E p.2 p.1 + E p.1 p.2 * Z ε E p.2 p.1 := by
    intro p _
    simp only [Z]
    noncomm_ring
  rw [Finset.sum_congr rfl h2, Finset.sum_add_distrib] at hc
  have h3 : ∑ p ∈ nc ε, E p.1 p.2 * Z ε E p.2 p.1 = ∑ p ∈ nc ε, E p.2 p.1 * Z ε E p.1 p.2 :=
    PositivityTheory.CW.GrowthPolynomialOperator.sum_nc_swap ε (fun p => E p.2 p.1 * Z ε E p.1 p.2)
  rw [h3] at hc
  exact eq_neg_iff_add_eq_zero.mpr (by rw [add_comm]; exact hc)

end NoncommutativeSwapSum

theorem a9_of_a0_a1_eigenbasis_a6 : A0 → A1 → CasimirIsRealScalar → A6 → A9 := by
  intro h0 h1 h3 h6 n ε V _ _ E hM
  obtain ⟨_, _, _, h0c⟩ := h0 n ε V E hM
  obtain ⟨_, _, hE1, _, hcomm, hL2, hZ2⟩ := h1 n ε V E hM
  obtain ⟨κ, hκ⟩ := h3 n ε V E hM
  have hS : ∀ w, ∑ p ∈ nc ε, E p.1 p.2 (E p.2 p.1 w) = (κ : ℂ) • w - casimirK ε E w :=
    fun w => (h0c κ hκ w).2.2
  have hWU : (∑ p ∈ nc ε, (E p.2 p.1 * Z ε E p.1 p.2 - Z ε E p.1 p.2 * E p.2 p.1)) ∈ U E 2 :=
    Submodule.sum_mem _ fun p _ => hcomm 1 2 _ (hE1 _ _) _ (hZ2 _ _)
  obtain ⟨C1, hC1, hW1⟩ := h6 n ε V E hM 2 _ hWU
  have hZZ : ∀ p : Fin n × Fin n,
      casimirK ε E * Z ε E p.1 p.2 - Z ε E p.1 p.2 * casimirK ε E ∈ U E 3 :=
    fun p => hcomm 2 2 _ hL2 _ (hZ2 _ _)
  choose Cp hCp0 hCp using fun p => h6 n ε V E hM 3 _ (hZZ p)
  have hCs : 0 ≤ ∑ p ∈ nc ε, Cp p ^ 2 := Finset.sum_nonneg fun p _ => sq_nonneg _
  refine ⟨C1 + ∑ p ∈ nc ε, Cp p ^ 2, by positivity, fun μ v hμ hv => ⟨?_, ?_⟩⟩
  · have hT : (∑ p ∈ nc ε, (E p.2 p.1 * Z ε E p.1 p.2 - Z ε E p.1 p.2 * E p.2 p.1))
        = (2 : ℂ) • ∑ p ∈ nc ε, E p.2 p.1 * Z ε E p.1 p.2 := by
      rw [Finset.sum_sub_distrib, NoncommutativeSwapSum.key ε E (κ : ℂ) hS, two_smul]
      abel
    have hWv := hW1 μ v hμ hv
    rw [Real.sq_sqrt (by linarith), hT, LinearMap.smul_apply, norm_smul] at hWv
    have h2 : ‖(2 : ℂ)‖ = 2 := by simp
    rw [h2] at hWv
    have hTsum : ∑ p ∈ nc ε, inner ℂ (E p.1 p.2 v) (Z ε E p.1 p.2 v)
        = -inner ℂ v ((∑ p ∈ nc ε, E p.2 p.1 * Z ε E p.1 p.2) v) := by
      rw [LinearMap.sum_apply, inner_sum, ← Finset.sum_neg_distrib]
      refine Finset.sum_congr rfl fun p hp => ?_
      have hne : ε p.1 ≠ ε p.2 := (Finset.mem_filter.mp hp).2
      rw [hM.uni, adjSign, if_neg hne]
      simp
    have hv0 := norm_nonneg v
    have hTv0 := norm_nonneg ((∑ p ∈ nc ε, E p.2 p.1 * Z ε E p.1 p.2) v)
    rw [hTsum, norm_neg]
    calc ‖inner ℂ v ((∑ p ∈ nc ε, E p.2 p.1 * Z ε E p.1 p.2) v)‖
        ≤ ‖v‖ * ‖(∑ p ∈ nc ε, E p.2 p.1 * Z ε E p.1 p.2) v‖ := norm_inner_le_norm _ _
      _ ≤ ‖v‖ * (C1 * (1 + μ) * ‖v‖) := by
          apply mul_le_mul_of_nonneg_left _ hv0
          have : 0 ≤ C1 * (1 + μ) * ‖v‖ := by
            apply mul_nonneg (mul_nonneg hC1 (by linarith)) hv0
          linarith
      _ = C1 * (1 + μ) * ‖v‖ ^ 2 := by ring
      _ ≤ (C1 + ∑ p ∈ nc ε, Cp p ^ 2) * (1 + μ) * ‖v‖ ^ 2 := by
          apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
          apply mul_le_mul_of_nonneg_right _ (by linarith)
          linarith
  · have hs : Real.sqrt (1 + μ) ^ 2 = 1 + μ := Real.sq_sqrt (by linarith)
    have hp : ∀ p ∈ nc ε,
        ‖(casimirK ε E * Z ε E p.1 p.2 - Z ε E p.1 p.2 * casimirK ε E) v‖ ^ 2
          ≤ Cp p ^ 2 * (1 + μ) ^ 3 * ‖v‖ ^ 2 := by
      intro p _
      have h := hCp p μ v hμ hv
      have hm := mul_self_le_mul_self (norm_nonneg _) h
      calc ‖(casimirK ε E * Z ε E p.1 p.2 - Z ε E p.1 p.2 * casimirK ε E) v‖ ^ 2
          = ‖(casimirK ε E * Z ε E p.1 p.2 - Z ε E p.1 p.2 * casimirK ε E) v‖
            * ‖(casimirK ε E * Z ε E p.1 p.2 - Z ε E p.1 p.2 * casimirK ε E) v‖ := sq _
        _ ≤ (Cp p * Real.sqrt (1 + μ) ^ 3 * ‖v‖) * (Cp p * Real.sqrt (1 + μ) ^ 3 * ‖v‖) := hm
        _ = Cp p ^ 2 * (Real.sqrt (1 + μ) ^ 2) ^ 3 * ‖v‖ ^ 2 := by ring
        _ = Cp p ^ 2 * (1 + μ) ^ 3 * ‖v‖ ^ 2 := by rw [hs]
    calc ∑ p ∈ nc ε, ‖(casimirK ε E * Z ε E p.1 p.2 - Z ε E p.1 p.2 * casimirK ε E) v‖ ^ 2
        ≤ ∑ p ∈ nc ε, Cp p ^ 2 * (1 + μ) ^ 3 * ‖v‖ ^ 2 := Finset.sum_le_sum hp
      _ = (∑ p ∈ nc ε, Cp p ^ 2) * (1 + μ) ^ 3 * ‖v‖ ^ 2 := by
          rw [Finset.sum_mul, Finset.sum_mul]
      _ ≤ (C1 + ∑ p ∈ nc ε, Cp p ^ 2) * (1 + μ) ^ 3 * ‖v‖ ^ 2 := by
          apply mul_le_mul_of_nonneg_right _ (sq_nonneg _)
          apply mul_le_mul_of_nonneg_right _ (pow_nonneg (by linarith) _)
          linarith

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GrowthPolynomialOperator =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.IdentityFiltrationBound =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.IdentityFiltrationBound", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirAlgebra.MulMulSubMulMulEqAdd\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace CommutatorAdjointLower

variable {n : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V]

theorem comm_eq (ε : Fin n → Bool) (E : Fin n → Fin n → Module.End ℂ V) (a b : Fin n) :
    (Mm E * Md ε E - Md ε E * Mm E) a b = ∑ c, (adjSign ε c b - adjSign ε a c) • (E a c * E c b) := by
  simp only [Mm, Md, Matrix.sub_apply, Matrix.mul_apply, Matrix.of_apply, mul_smul_comm, smul_mul_assoc,
    sub_smul, Finset.sum_sub_distrib]

theorem Z_eq (ε : Fin n → Bool) {E : Fin n → Fin n → Module.End ℂ V} (hE : IsGlRep E) (a b : Fin n) :
    Z ε E a b = ∑ c, ((if ε c = ε a then E a c * E c b + E c b * E a c else 0) -
      (if ε c = ε b then E a c * E c b + E c b * E a c else 0)) := by
  unfold IsGlRep at hE
  rw [← sub_eq_zero]
  unfold Z casimirK
  simp_rw [Finset.sum_filter]
  rw [Finset.sum_mul, Finset.mul_sum, ← Finset.sum_sub_distrib]
  simp_rw [Finset.sum_mul, Finset.mul_sum, ← Finset.sum_sub_distrib, ite_mul_sub_mul_ite, mul_mul_sub_mul_mul_eq_add, hE]
  simp only [sub_mul, mul_sub, ite_mul, mul_ite, zero_mul, mul_zero]
  simp only [ite_sub_add_sub_eq, ← ite_and, Finset.sum_add_distrib, Finset.sum_sub_distrib]
  simp only [and_comm (b := _ = a), and_comm (b := b = _), Finset.sum_ite_eq', Finset.sum_ite_eq, ite_and, Finset.mem_univ, if_true]
  simp only [Finset.sum_ite_irrel, Finset.sum_const_zero, Finset.sum_ite_eq', Finset.sum_ite_eq,
    Finset.mem_univ, if_true]
  simp only [@eq_comm _ (ε a), @eq_comm _ (ε b), ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
  apply Finset.sum_eq_zero
  intro x _
  split_ifs <;> abel

end CommutatorAdjointLower

theorem commutator_adjoint_holds : A1 → CommutatorAdjointModLower := by
  intro hA n ε V _ _ E h a b
  obtain ⟨-, -, hE1, -, hcomm, -, -⟩ := hA n ε V E h
  rw [CommutatorAdjointLower.comm_eq, CommutatorAdjointLower.Z_eq ε h.gl, ← Finset.sum_add_distrib]
  have key : ∀ c, (adjSign ε c b - adjSign ε a c) • (E a c * E c b) +
      ((if ε c = ε a then E a c * E c b + E c b * E a c else 0) -
        (if ε c = ε b then E a c * E c b + E c b * E a c else 0)) =
      ((if ε c = ε a then (1 : ℂ) else 0) - (if ε c = ε b then 1 else 0)) • (E c b * E a c - E a c * E c b) := by
    intro c
    simp only [adjSign, @eq_comm _ (ε a) (ε c)]
    split_ifs <;> module
  rw [Finset.sum_congr rfl fun c _ => key c]
  exact Submodule.sum_mem _ fun c _ => Submodule.smul_mem _ _ (hcomm 1 1 _ (hE1 c b) _ (hE1 a c))

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.IdentityFiltrationBound =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.InversePowerBoundHolds =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.InversePowerBoundHolds", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace InversePowerBound

lemma sq_le_inv_pow (s : ℕ) (y : ℝ) (hy : -1 < y) (h0 : 0 ≤ 1 - (s : ℝ) * y / 2) :
    (1 - (s : ℝ) * y / 2) ^ 2 ≤ ((1 + y) ^ s)⁻¹ := by
  have h1 : 0 < 1 + y := by linarith
  have hpos : 0 < (1 + y) ^ s := pow_pos h1 s

  have hA : 1 - (s : ℝ) * y / 2 ≤ Real.exp (-((s : ℝ) * y / 2)) := by
    linarith [Real.add_one_le_exp (-((s : ℝ) * y / 2))]
  have hB : (1 + y) ^ s ≤ Real.exp ((s : ℝ) * y) := by
    calc (1 + y) ^ s ≤ (Real.exp y) ^ s :=
          pow_le_pow_left₀ h1.le (by linarith [Real.add_one_le_exp y]) s
      _ = Real.exp ((s : ℝ) * y) := by rw [← Real.exp_nat_mul]
  have hC : (1 - (s : ℝ) * y / 2) ^ 2 ≤ Real.exp (-((s : ℝ) * y)) := by
    calc (1 - (s : ℝ) * y / 2) ^ 2 ≤ (Real.exp (-((s : ℝ) * y / 2))) ^ 2 :=
          pow_le_pow_left₀ h0 hA 2
      _ = Real.exp (-((s : ℝ) * y)) := by
          rw [← Real.exp_nat_mul]; congr 1; push_cast; ring
  calc (1 - (s : ℝ) * y / 2) ^ 2 ≤ Real.exp (-((s : ℝ) * y)) := hC
    _ = (Real.exp ((s : ℝ) * y))⁻¹ := by rw [Real.exp_neg]
    _ ≤ ((1 + y) ^ s)⁻¹ := inv_anti₀ hpos hB

end InversePowerBound

theorem inverse_power_bound_holds : A10 := by
  intro s _hs
  refine ⟨(s : ℝ) ^ 4 / 16, by positivity, fun y hy => ?_⟩
  have hpos : 0 < ((1 + y) ^ s)⁻¹ := inv_pos.mpr (pow_pos (by linarith) s)

  have hsq : 1 - (s : ℝ) * y + (s : ℝ) ^ 2 / 4 * y ^ 2 = (1 - (s : ℝ) * y / 2) ^ 2 := by ring
  have e : (s : ℝ) ^ 4 / 16 * y ^ 4 = ((s : ℝ) * y / 2) ^ 4 := by ring
  by_cases h0 : 0 ≤ 1 - (s : ℝ) * y / 2
  · have h := InversePowerBound.sq_le_inv_pow s y hy h0
    have : 0 ≤ (s : ℝ) ^ 4 / 16 * y ^ 4 := by positivity
    linarith
  ·
    rw [not_le] at h0
    have hu : 1 < (s : ℝ) * y / 2 := by linarith
    have k1 : (1 - (s : ℝ) * y / 2) ^ 2 ≤ ((s : ℝ) * y / 2) ^ 2 := by nlinarith
    have k2 : ((s : ℝ) * y / 2) ^ 2 ≤ ((s : ℝ) * y / 2) ^ 4 := by
      have : 1 ≤ ((s : ℝ) * y / 2) ^ 2 := by nlinarith
      nlinarith
    linarith

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.InversePowerBoundHolds =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.KFiniteInclusion =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.KFiniteInclusion", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace WeightedEigenSum

theorem pow_eig {V : Type} [AddCommGroup V] [Module ℂ V] (T : Module.End ℂ V) (m : ℝ) (x : V)
    (h : T x = (m : ℂ) • x) (s : ℕ) : ((1 + T) ^ s) x = (((1 + m) ^ s : ℝ) : ℂ) • x := by
  induction s with
  | zero => simp
  | succ k ih =>
    have hx : x + (m : ℂ) • x = (((1 + m : ℝ)) : ℂ) • x := by
      push_cast
      rw [add_smul, one_smul]
    rw [pow_succ', Module.End.mul_apply, ih, map_smul, LinearMap.add_apply, Module.End.one_apply, h, hx,
      smul_smul]
    congr 1
    push_cast
    ring

theorem wsum_le {ι : Type} (μ : ι → ℝ) (hnn : ∀ i, 0 ≤ μ i) (hfin : ∀ R : ℝ, {i | μ i ≤ R}.Finite)
    (a : ι → ℝ) (ha : ∀ i, 0 ≤ a i) (s : ℕ) (hs : 1 ≤ s) (K : ℝ)
    (hS : ∀ (R : ℝ) (S : Finset ι), (∀ i, i ∈ S ↔ μ i < R) → ∑ i ∈ S, phiR s R (μ i) * a i ≤ K ^ 2)
    (T : Finset ι) : ∑ i ∈ T, ((1 + μ i) ^ s)⁻¹ * a i ≤ K ^ 2 := by
  obtain ⟨R0, hR0⟩ : ∃ R0 : ℝ, ∀ i ∈ T, μ i < R0 :=
    ⟨∑ i ∈ T, μ i + 1, fun i hi => by
      have := Finset.single_le_sum (fun j _ => hnn j) hi
      linarith⟩
  have key : ∀ R : ℝ, R0 ≤ R →
      ∑ i ∈ T, ((1 + μ i) ^ s)⁻¹ * a i - ((1 + R) ^ s)⁻¹ * ∑ i ∈ T, a i ≤ K ^ 2 := by
    intro R hR
    have hSmem : ∀ i, i ∈ (hfin R).toFinset.filter (fun i => μ i < R) ↔ μ i < R := by
      intro i
      simp only [Finset.mem_filter, Set.Finite.mem_toFinset, Set.mem_ofPred_eq]
      exact ⟨fun h => h.2, fun h => ⟨h.le, h⟩⟩
    have hTS : T ⊆ (hfin R).toFinset.filter (fun i => μ i < R) :=
      fun i hi => (hSmem i).mpr (lt_of_lt_of_le (hR0 i hi) hR)
    have h1 := hS R _ hSmem
    have h2 : ∑ i ∈ T, phiR s R (μ i) * a i ≤
        ∑ i ∈ (hfin R).toFinset.filter (fun i => μ i < R), phiR s R (μ i) * a i :=
      Finset.sum_le_sum_of_subset_of_nonneg hTS (fun i _ _ => mul_nonneg (le_max_right _ _) (ha i))
    have h3 : ∑ i ∈ T, phiR s R (μ i) * a i =
        ∑ i ∈ T, ((1 + μ i) ^ s)⁻¹ * a i - ((1 + R) ^ s)⁻¹ * ∑ i ∈ T, a i := by
      rw [Finset.mul_sum, ← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun i hi => ?_
      have hlt : ((1 + R) ^ s)⁻¹ ≤ ((1 + μ i) ^ s)⁻¹ := by
        apply inv_anti₀ (pow_pos (by linarith [hnn i]) s)
        exact pow_le_pow_left₀ (by linarith [hnn i]) (by linarith [hR0 i hi]) s
      rw [phiR, max_eq_left (by linarith)]
      ring
    linarith
  have hpow : Filter.Tendsto (fun R : ℝ => (1 + R) ^ s) Filter.atTop Filter.atTop :=
    (Filter.tendsto_pow_atTop (by omega : s ≠ 0)).comp
      (Filter.tendsto_atTop_add_const_left _ 1 Filter.tendsto_id)
  have ht : Filter.Tendsto
      (fun R : ℝ => ∑ i ∈ T, ((1 + μ i) ^ s)⁻¹ * a i - ((1 + R) ^ s)⁻¹ * ∑ i ∈ T, a i) Filter.atTop
      (nhds (∑ i ∈ T, ((1 + μ i) ^ s)⁻¹ * a i - 0 * ∑ i ∈ T, a i)) :=
    tendsto_const_nhds.sub ((tendsto_inv_atTop_zero.comp hpow).mul_const _)
  have hlim := le_of_tendsto ht (Filter.eventually_atTop.mpr ⟨R0, key⟩)
  simpa using hlim

end WeightedEigenSum

theorem eigen_weighted_sum_bound : A0 → FunctionalCalculusLaws → B5 := by
  intro _ _ n ε V _ _ E _ ι b μ hb f s K hK hS hs v
  have hv : v = ∑ i ∈ (b.repr v).support, b.repr v i • b i := by
    conv_lhs => rw [← b.linearCombination_repr v]
    rw [Finsupp.linearCombination_apply, Finsupp.sum]
  have hpos : ∀ i, 0 < (1 + μ i) ^ s := fun i => pow_pos (by linarith [hb.nonneg i]) s
  have heig : ∀ i, ((1 + casimirK ε E) ^ s) (b i) = (((1 + μ i) ^ s : ℝ) : ℂ) • b i :=
    fun i => WeightedEigenSum.pow_eig _ (μ i) (b i) (hb.eig i) s
  have hw : ((1 + casimirK ε E) ^ s) v =
      ∑ i ∈ (b.repr v).support, (b.repr v i * (((1 + μ i) ^ s : ℝ) : ℂ)) • b i := by
    conv_lhs => rw [hv]

    rw [map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_smul, heig, smul_smul]
  have hfv : f v = inner ℂ (∑ i ∈ (b.repr v).support,
      (starRingEnd ℂ (f (b i)) * ((((1 + μ i) ^ s)⁻¹ : ℝ) : ℂ)) • b i) (((1 + casimirK ε E) ^ s) v) := by
    rw [hw, hb.on.inner_sum]
    conv_lhs => rw [hv]

    rw [map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_smul, smul_eq_mul, map_mul, Complex.conj_conj, Complex.conj_ofReal]
    have h1 : ((((1 + μ i) ^ s)⁻¹ : ℝ) : ℂ) * (((1 + μ i) ^ s : ℝ) : ℂ) = 1 := by
      rw [← Complex.ofReal_mul, inv_mul_cancel₀ (hpos i).ne', Complex.ofReal_one]
    linear_combination (-(b.repr v i * f (b i))) * h1
  have hu2 : ‖∑ i ∈ (b.repr v).support,
      (starRingEnd ℂ (f (b i)) * ((((1 + μ i) ^ s)⁻¹ : ℝ) : ℂ)) • b i‖ ^ 2 ≤ K ^ 2 := by
    have e : ‖∑ i ∈ (b.repr v).support,
        (starRingEnd ℂ (f (b i)) * ((((1 + μ i) ^ s)⁻¹ : ℝ) : ℂ)) • b i‖ ^ 2 =
        ∑ i ∈ (b.repr v).support, ‖f (b i)‖ ^ 2 * (((1 + μ i) ^ s)⁻¹) ^ 2 := by

      rw [@norm_sq_eq_re_inner ℂ, hb.on.inner_sum, map_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      have hr : 0 ≤ ((1 + μ i) ^ s)⁻¹ := (inv_pos.mpr (hpos i)).le
      rw [RCLike.conj_mul, ← RCLike.ofReal_pow, RCLike.ofReal_re, norm_mul, Complex.norm_real,
        Real.norm_eq_abs, abs_of_nonneg hr, Complex.norm_conj, mul_pow]
    have e2 : ∑ i ∈ (b.repr v).support, ‖f (b i)‖ ^ 2 * (((1 + μ i) ^ s)⁻¹) ^ 2 ≤
        ∑ i ∈ (b.repr v).support, ((1 + μ i) ^ s)⁻¹ * ‖f (b i)‖ ^ 2 := by
      refine Finset.sum_le_sum fun i _ => ?_
      have h0 : 0 ≤ ((1 + μ i) ^ s)⁻¹ := (inv_pos.mpr (hpos i)).le
      have h1 : ((1 + μ i) ^ s)⁻¹ ≤ 1 := inv_le_one_of_one_le₀ (one_le_pow₀ (by linarith [hb.nonneg i]))
      nlinarith [mul_nonneg (mul_nonneg (sq_nonneg ‖f (b i)‖) h0) (sub_nonneg.mpr h1)]
    have e3 : ∑ i ∈ (b.repr v).support, ((1 + μ i) ^ s)⁻¹ * ‖f (b i)‖ ^ 2 ≤ K ^ 2 :=
      WeightedEigenSum.wsum_le μ hb.nonneg hb.fin (fun i => ‖f (b i)‖ ^ 2) (fun i => sq_nonneg _) s hs K hS _
    linarith
  have hu := (pow_le_pow_iff_left₀ (norm_nonneg _) hK two_ne_zero).mp hu2
  rw [hfv]
  exact (norm_inner_le_norm _ _).trans (mul_le_mul_of_nonneg_right hu (norm_nonneg _))

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.KFiniteInclusion =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.NilpotentOfPowerTraces =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.NilpotentOfPowerTraces", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\npublic import Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff\npublic import GroundTheory.GlobalFields.Artin.LogCharpoly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace CharpolyPowerTraces

open Polynomial

theorem coeff_succ {R : Type} [CommRing R] {n : ℕ} (N : Matrix (Fin n) (Fin n) R)
    (h : ∀ k, (N ^ (k + 1)).trace = 0) (m : ℕ) :
    ((m : R) + 1) * N.charpolyRev.coeff (m + 1) = 0 := by
  have hps : (PowerSeries.mk fun k => (N ^ (k + 1)).trace) = 0 := by
    ext k
    simp [h]
  have hd : derivative N.charpolyRev = 0 := by
    have hc := GroundTheory.Global.coe_derivative_charpolyRev N
    rw [hps, mul_zero] at hc
    exact Polynomial.coe_eq_zero_iff.mp hc
  have hm := congrArg (fun p => _root_.AddMonoidAlgebra.coeff (M := ℕ) p m) hd
  simp only [Polynomial.coeff_derivative, Polynomial.coeff_zero] at hm
  rw [mul_comm]
  exact hm

theorem coeff_succ_zero {R : Type} [CommRing R] [Algebra ℚ R] {n : ℕ} (N : Matrix (Fin n) (Fin n) R)
    (h : ∀ k, (N ^ (k + 1)).trace = 0) (m : ℕ) : N.charpolyRev.coeff (m + 1) = 0 := by
  have hu : IsUnit ((m : R) + 1) := by
    have : ((m : R) + 1) = algebraMap ℚ R ((m : ℚ) + 1) := by simp
    rw [this]; exact (IsUnit.mk0 _ (by positivity)).map _
  exact hu.mul_right_eq_zero.mp (coeff_succ N h m)

theorem charpoly_eq {R : Type} [CommRing R] [Algebra ℚ R] [Nontrivial R] {n : ℕ}
    (N : Matrix (Fin n) (Fin n) R) (h : ∀ k, (N ^ (k + 1)).trace = 0) : N.charpoly = X ^ n := by
  have hRev : ∀ i, 1 ≤ i → N.charpolyRev.coeff i = 0 := by
    intro i hi
    obtain ⟨m, rfl⟩ := Nat.exists_eq_add_of_le' hi
    exact coeff_succ_zero N h m
  have hdeg : N.charpoly.natDegree = n := by
    rw [Matrix.charpoly_natDegree_eq_dim, Fintype.card_fin]
  ext j
  rw [Polynomial.coeff_X_pow]
  rcases lt_trichotomy j n with hj | hj | hj
  · rw [if_neg hj.ne]
    have hz := hRev (n - j) (by omega)
    rw [← Matrix.reverse_charpoly, Polynomial.coeff_reverse, hdeg,
      Polynomial.revAt_le (by omega)] at hz
    rwa [show n - (n - j) = j by omega] at hz
  · rw [if_pos hj]
    have hl := (Matrix.charpoly_monic N).leadingCoeff
    rw [Polynomial.leadingCoeff, hdeg] at hl
    rw [hj]
    exact hl
  · rw [if_neg hj.ne']
    exact Polynomial.coeff_eq_zero_of_natDegree_lt (by omega)

end CharpolyPowerTraces

theorem nilpotent_of_power_traces : A4 := by
  unfold A4
  intro R _ _ n N h
  rcases subsingleton_or_nontrivial R with hR | hR
  · exact Subsingleton.elim _ _
  have hc := Matrix.aeval_self_charpoly N
  rw [CharpolyPowerTraces.charpoly_eq N h, Polynomial.aeval_X_pow] at hc
  exact hc

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.NilpotentOfPowerTraces =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.PMaxPr =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.PMaxPr", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace PMaxPr

theorem hilbert_schmidt_nonneg_alt {n : ℕ} (g : Matrix (Fin n) (Fin n) ℂ) : 0 ≤ hs2 g :=
  Finset.sum_nonneg fun _ _ => Finset.sum_nonneg fun _ _ => sq_nonneg _

def evalAt {n : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V] (g : Matrix (Fin n) (Fin n) ℂ)
    (F : V →ₗ[ℂ] (Matrix (Fin n) (Fin n) ℂ → ℂ)) : V →ₗ[ℂ] ℂ :=
  (LinearMap.proj (R := ℂ) (φ := fun _ : Matrix (Fin n) (Fin n) ℂ => ℂ) g).comp F

@[simp] theorem evalAt_apply {n : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V] (g : Matrix (Fin n) (Fin n) ℂ)
    (F : V →ₗ[ℂ] (Matrix (Fin n) (Fin n) ℂ → ℂ)) (v : V) : evalAt g F v = F v g := rfl

theorem sq_bound (x C w : ℝ) (N : ℕ) (h : x ≤ C * w ^ N) (hx : 0 ≤ x) : x ^ 2 ≤ C ^ 2 * w ^ (2 * N) := by
  calc x ^ 2 ≤ (C * w ^ N) ^ 2 := pow_le_pow_left₀ hx h 2
    _ = C ^ 2 * w ^ (2 * N) := by rw [mul_pow, ← pow_mul, mul_comm N 2]

end PMaxPr

open PMaxPr in
theorem maxPr_of : CasimirIsRealScalar → EigenbasisExists → A13 → UnitaryGroupFacts → MaximumPrincipleVar → SumSquaresSecondDerivative → B5 → MaxPr := by
  intro hA3c hA11a hA13 _ hB4a hB4b hB5 n ε V _ _ E hM N
  classical
  obtain ⟨κ, hκ⟩ := hA3c n ε V E hM
  obtain ⟨ι, b, μ, hb⟩ := hA11a n ε V E hM
  obtain ⟨c, hc0, hc⟩ := hB4a n ε (2 * N)
  obtain ⟨s, x₀, C₁, hs, hC₁, h13⟩ := hA13 n ε V E hM ι b μ hb κ hκ (c / 2) (div_nonneg hc0 (by norm_num))
  have hTfin : {i | μ i < x₀}.Finite := (hb.fin x₀).subset fun i (hi : μ i < x₀) => show μ i ≤ x₀ from le_of_lt hi
  have hT : ∀ i, i ∈ hTfin.toFinset ↔ μ i < x₀ := fun i => by simp
  have hW1 : 0 ≤ (1 + hs2 (1 : Matrix (Fin n) (Fin n) ℂ)) ^ (2 * N) :=
    pow_nonneg (by linarith [hilbert_schmidt_nonneg_alt (1 : Matrix (Fin n) (Fin n) ℂ)]) _
  have hKK : 0 ≤ 2 * C₁ * (hTfin.toFinset.card : ℝ) * (1 + hs2 (1 : Matrix (Fin n) (Fin n) ℂ)) ^ (2 * N) :=
    mul_nonneg (mul_nonneg (mul_nonneg (by norm_num) hC₁) (Nat.cast_nonneg _)) hW1
  refine ⟨s, Real.sqrt (2 * C₁ * hTfin.toFinset.card * (1 + hs2 (1 : Matrix (Fin n) (Fin n) ℂ)) ^ (2 * N)),
    hTfin.toFinset.image b, Real.sqrt_nonneg _, ?_⟩
  intro F hcont hder hgrow B hB hI v
  have hA0 : 0 ≤ 2 * C₁ * (hTfin.toFinset.card : ℝ) * B ^ 2 :=
    mul_nonneg (mul_nonneg (mul_nonneg (by norm_num) hC₁) (Nat.cast_nonneg _)) (sq_nonneg B)
  choose Cf hCf using hgrow
  have key : ∀ (R : ℝ) (S : Finset ι), (∀ i, i ∈ S ↔ μ i < R) →
      ∑ i ∈ S, phiR s R (μ i) * ‖F (b i) 1‖ ^ 2 ≤
        (Real.sqrt (2 * C₁ * hTfin.toFinset.card * (1 + hs2 (1 : Matrix (Fin n) (Fin n) ℂ)) ^ (2 * N)) * B) ^ 2 := by
    intro R S hS
    have hcu : ContinuousOn (fun g => ∑ i ∈ S, phiR s R (μ i) * ‖F (b i) g‖ ^ 2) (UJset ε) :=
      continuousOn_finsetSum _ fun i _ => continuousOn_const.mul ((hcont (b i)).norm.pow 2)
    have hgu : ∃ C : ℝ, ∀ g ∈ UJset ε,
        (∑ i ∈ S, phiR s R (μ i) * ‖F (b i) g‖ ^ 2) ≤ C * (1 + hs2 g) ^ (2 * N) := by
      refine ⟨∑ i ∈ S, phiR s R (μ i) * Cf (b i) ^ 2, fun g hg => ?_⟩
      rw [Finset.sum_mul]
      refine Finset.sum_le_sum fun i _ => ?_
      rw [mul_assoc]
      exact mul_le_mul_of_nonneg_left (sq_bound _ _ _ _ (hCf (b i) g hg) (norm_nonneg _)) (le_max_right _ _)
    have hdu : ∀ g ∈ UJset ε, ∃ d : Fin n × Fin n → ℝ,
        (∀ p ∈ nc ε, ∃ u' : ℝ → ℝ, (∀ t, HasDerivAt (fun t : ℝ =>
          ∑ i ∈ S, phiR s R (μ i) * ‖F (b i) (g * NormedSpace.exp (t • Xp p.1 p.2))‖ ^ 2) (u' t) t) ∧
          HasDerivAt u' (d p) 0) ∧
        c * (∑ i ∈ S, phiR s R (μ i) * ‖F (b i) g‖ ^ 2) -
          2 * C₁ * (hTfin.toFinset.card : ℝ) * B ^ 2 * (1 + hs2 g) ^ (2 * N) ≤ ∑ p ∈ nc ε, d p := by
      intro g hg
      obtain ⟨d, hd, hsum⟩ := hB4b n ε V E hM ι b μ hb κ hκ F hder S (fun i => phiR s R (μ i)) g hg
      refine ⟨d, hd, ?_⟩
      rw [hsum]
      have h13g := h13 R (evalAt g F) S hTfin.toFinset hS hT
      simp only [evalAt_apply] at h13g
      have hTb : ∑ i ∈ hTfin.toFinset, ‖F (b i) g‖ ^ 2 ≤
          hTfin.toFinset.card • (B ^ 2 * (1 + hs2 g) ^ (2 * N)) :=
        Finset.sum_le_card_nsmul _ _ _ fun i hi =>
          sq_bound _ _ _ _ (hI (b i) (Finset.mem_image_of_mem b hi) g hg) (norm_nonneg _)
      rw [nsmul_eq_mul] at hTb
      have h2 := mul_le_mul_of_nonneg_left hTb hC₁
      nlinarith [h2, h13g]
    have h1 := hc (fun g => ∑ i ∈ S, phiR s R (μ i) * ‖F (b i) g‖ ^ 2) _ hA0 hcu hgu hdu
    calc _ ≤ _ := h1
      _ = _ := by rw [mul_pow, Real.sq_sqrt hKK]; ring
  have h5 := hB5 n ε V E hM ι b μ hb (evalAt 1 F) s _
    (mul_nonneg (Real.sqrt_nonneg _) hB) (fun R S hS => by simpa only [evalAt_apply] using key R S hS) hs v
  simpa only [evalAt_apply] using h5

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.PMaxPr =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.SymmetricPowerHolds =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.SymmetricPowerHolds", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace identity_filtration_of_scalar

theorem symm_pow {W : Type} [NormedAddCommGroup W] [InnerProductSpace ℂ W] (P : Module.End ℂ W)
    (hP : ∀ x y, inner ℂ (P x) y = inner ℂ x (P y)) :
    ∀ k : ℕ, ∀ x y, inner ℂ ((P ^ k) x) y = inner ℂ x ((P ^ k) y) := by
  intro k
  induction k with
  | zero => intro x y; simp
  | succ k ih =>
    intro x y
    rw [pow_succ, Module.End.mul_apply, Module.End.mul_apply, ih, hP]
    congr 1
    rw [← Module.End.mul_apply, ← Module.End.mul_apply, (Commute.self_pow P k).eq]

end identity_filtration_of_scalar

theorem symmetric_power_holds : A7 := by
  intro W _ _ P hP x hx h0 j
  induction j with
  | zero => simp
  | succ j ih =>
    have hsym := identity_filtration_of_scalar.symm_pow P hP (2 ^ j)

    have key : (inner ℂ x ((P ^ (2 ^ (j + 1))) x)).re = ‖(P ^ (2 ^ j)) x‖ ^ 2 := by
      rw [pow_succ, pow_mul, sq, Module.End.mul_apply, ← hsym]
      exact inner_self_eq_norm_sq (𝕜 := ℂ) ((P ^ (2 ^ j)) x)

    have cs : |(inner ℂ x ((P ^ (2 ^ j)) x)).re| ≤ ‖(P ^ (2 ^ j)) x‖ := by
      calc _ ≤ ‖inner ℂ x ((P ^ (2 ^ j)) x)‖ := Complex.abs_re_le_norm _
        _ ≤ ‖x‖ * ‖(P ^ (2 ^ j)) x‖ := norm_inner_le_norm _ _
        _ = _ := by rw [hx, one_mul]
    have hpos : 0 ≤ (inner ℂ x (P x)).re ^ (2 ^ j) := pow_nonneg h0 _
    calc (inner ℂ x (P x)).re ^ (2 ^ (j + 1)) = ((inner ℂ x (P x)).re ^ (2 ^ j)) ^ 2 := by
          rw [pow_succ, pow_mul]
      _ ≤ ((inner ℂ x ((P ^ (2 ^ j)) x)).re) ^ 2 := pow_le_pow_left₀ hpos ih 2
      _ = |(inner ℂ x ((P ^ (2 ^ j)) x)).re| ^ 2 := (sq_abs _).symm
      _ ≤ ‖(P ^ (2 ^ j)) x‖ ^ 2 := pow_le_pow_left₀ (abs_nonneg _) cs 2
      _ = _ := key.symm

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.SymmetricPowerHolds =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.WordFiltrationCommute =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.WordFiltrationCommute", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Finset ReciprocityTheory.ChartRestriction.DS

namespace PositivityTheory.CW

namespace EigenSumRepresentation

variable {n : ℕ} {ε : Fin n → Bool} {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] {ι : Type}

lemma inner_basis {b : Module.Basis ι ℂ V} (hb : Orthonormal ℂ b) (i : ι) (y : V) :
    inner ℂ (b i) y = b.repr y i := by
  have h := hb.inner_right_finsupp (b.repr y) i
  rwa [b.linearCombination_repr] at h

lemma repr_sum {b : Module.Basis ι ℂ V} (T : Finset ι) (y : V) (hy : (b.repr y).support ⊆ T) :
    y = ∑ j ∈ T, b.repr y j • b j := by
  conv_lhs => rw [← b.linearCombination_repr y]
  rw [Finsupp.linearCombination_apply]
  exact Finsupp.sum_of_support_subset _ hy _ (fun i _ => zero_smul ℂ (b i))

lemma inner_h {b : Module.Basis ι ℂ V} (hb : Orthonormal ℂ b) (f : V →ₗ[ℂ] ℂ) (T : Finset ι) (y : V)
    (hy : (b.repr y).support ⊆ T) :
    inner ℂ (∑ j ∈ T, starRingEnd ℂ (f (b j)) • b j) y = f y := by
  rw [sum_inner]

  conv_rhs => rw [repr_sum (b := b) T y hy, map_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [inner_smul_left, inner_basis hb, map_smul, smul_eq_mul, starRingEnd_self_apply, mul_comm]

lemma inner_fc {b : Module.Basis ι ℂ V} (hb : Orthonormal ℂ b) (μ : ι → ℝ) (φ : ℝ → ℝ) (S : Finset ι)
    (hS : ∀ i, i ∉ S → φ (μ i) = 0) (y : V) :
    inner ℂ y (fc b μ φ y) = ∑ i ∈ S, ((φ (μ i) * ‖b.repr y i‖ ^ 2 : ℝ) : ℂ) := by
  classical
  have hyU : (b.repr y).support ⊆ (b.repr y).support ∪ S := Finset.subset_union_left
  have hfc : fc b μ φ y = ∑ j ∈ (b.repr y).support ∪ S, b.repr y j • ((φ (μ j) : ℂ) • b j) := by
    conv_lhs => rw [repr_sum (b := b) _ y hyU]

    rw [map_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [map_smul, fc, Module.Basis.constr_basis]
  have key : ∀ j, inner ℂ y (b.repr y j • ((φ (μ j) : ℂ) • b j)) = ((φ (μ j) * ‖b.repr y j‖ ^ 2 : ℝ) : ℂ) := by
    intro j
    rw [inner_smul_right, inner_smul_right, ← inner_conj_symm, inner_basis hb]
    push_cast
    rw [← Complex.mul_conj']
    ring
  rw [hfc, inner_sum, Finset.sum_congr rfl (fun j _ => key j)]
  symm
  apply Finset.sum_subset Finset.subset_union_right
  intro j _ hj
  rw [hS j hj]
  simp

lemma beta_sum {E : Fin n → Fin n → Module.End ℂ V} (A : Module.End ℂ V) {κ : Type} (s : Finset κ) (v : κ → V) :
    beta ε E A (∑ k ∈ s, v k) (∑ k ∈ s, v k) = ∑ l ∈ s, ∑ k ∈ s, beta ε E A (v k) (v l) := by

  simp only [beta, map_sum, sum_inner, inner_sum]
  rw [Finset.sum_comm]
  refine sum_congr rfl fun _ _ => ?_
  rw [Finset.sum_comm]

lemma eig_sum {E : Fin n → Fin n → Module.End ℂ V} {b : Module.Basis ι ℂ V} {μ : ι → ℝ}
    (heig : ∀ i, Eig ε E (μ i) (b i)) (s : Finset ι) (c : ι → ℂ) (ν : ℝ) (hs : ∀ j ∈ s, μ j = ν) :
    Eig ε E ν (∑ j ∈ s, c j • b j) := by
  unfold Eig

  rw [map_sum, smul_sum]
  refine sum_congr rfl fun j hj => ?_
  rw [map_smul, show casimirK ε E (b j) = _ from heig j, hs j hj, smul_comm]

lemma mem_nc_swap {p : Fin n × Fin n} (hp : p ∈ nc ε) : p.swap ∈ nc ε := by
  simp only [nc, Finset.mem_filter, Finset.mem_univ, true_and] at hp ⊢
  exact Ne.symm hp

end EigenSumRepresentation

open EigenSumRepresentation in
theorem basis_sum_of_orthogonality : A0 → FunctionalCalculusLaws → EigenspacesOrthogonalAlt → BasisSumAsFormValues := by
  intro _ _ h11c n ε V _ _ E hM ι b μ hB φ S hS
  classical
  set T : Finset ι := S ∪ S.biUnion (fun i => (nc ε).biUnion (fun p => (b.repr (E p.1 p.2 (b i))).support)) with hT
  refine ⟨T, Finset.subset_union_left, fun f => ?_⟩
  have hsupp : ∀ i ∈ S, ∀ p ∈ nc ε, (b.repr (E p.1 p.2 (b i))).support ⊆ T := by
    intro i hi p hp j hj
    apply Finset.mem_union_right
    exact Finset.mem_biUnion.2 ⟨i, hi, Finset.mem_biUnion.2 ⟨p, hp, hj⟩⟩
  set H : V := ∑ j ∈ T, starRingEnd ℂ (f (b j)) • b j with hH
  have hinner : ∀ y, (b.repr y).support ⊆ T → inner ℂ H y = f y := fun y hy => inner_h hB.on f T y hy
  have hfib : ∑ ν ∈ image μ T, (∑ j ∈ T with μ j = ν, starRingEnd ℂ (f (b j)) • b j) = H :=
    Finset.sum_fiberwise_of_maps_to (fun j hj => Finset.mem_image_of_mem μ hj) _
  have heig : ∀ ν, Eig ε E ν (∑ j ∈ T with μ j = ν, starRingEnd ℂ (f (b j)) • b j) := fun ν =>
    eig_sum hB.eig _ (fun j => starRingEnd ℂ (f (b j))) ν (fun j hj => (Finset.mem_filter.1 hj).2)
  have hdiag : ∑ ν ∈ image μ T, beta ε E (fc b μ φ) (∑ j ∈ T with μ j = ν, starRingEnd ℂ (f (b j)) • b j)
      (∑ j ∈ T with μ j = ν, starRingEnd ℂ (f (b j)) • b j) = beta ε E (fc b μ φ) H H := by
    rw [← hfib, beta_sum (v := fun ν => ∑ j ∈ T with μ j = ν, starRingEnd ℂ (f (b j)) • b j)]
    refine Finset.sum_congr rfl fun l hl => ?_
    rw [Finset.sum_eq_single_of_mem l hl]
    intro k _ hk
    exact h11c n ε V E hM ι b μ hB φ k l _ _ hk (heig k) (heig l)
  rw [← Complex.re_sum, hdiag]
  have hterm : ∀ p ∈ nc ε, ∀ i ∈ S, ‖b.repr (E p.1 p.2 H) i‖ = ‖f (E p.2 p.1 (b i))‖ := by
    intro p hp i hi
    have hsw : (p.2, p.1) ∈ nc ε := mem_nc_swap hp
    have hsign : adjSign ε p.1 p.2 = -1 := by
      simp only [nc, Finset.mem_filter, Finset.mem_univ, true_and] at hp
      simp [adjSign, hp]
    rw [← inner_basis hB.on, ← inner_conj_symm, hM.uni p.1 p.2 H (b i), hinner _ (hsupp i hi _ hsw), hsign]
    simp
  have hbeta : beta ε E (fc b μ φ) H H =
      ∑ p ∈ nc ε, ∑ i ∈ S, ((φ (μ i) * ‖f (E p.2 p.1 (b i))‖ ^ 2 : ℝ) : ℂ) := by
    unfold beta
    refine Finset.sum_congr rfl fun p hp => ?_
    rw [inner_fc hB.on μ φ S hS]
    refine Finset.sum_congr rfl fun i hi => ?_
    rw [hterm p hp i hi]
  rw [hbeta, Finset.sum_comm]
  simp only [Complex.re_sum, Complex.ofReal_re]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [← Finset.mul_sum]
  congr 1
  exact Finset.sum_nbij' Prod.swap Prod.swap (fun p hp => mem_nc_swap hp) (fun p hp => mem_nc_swap hp)
    (fun p _ => rfl) (fun p _ => rfl) (fun p _ => rfl)

end PositivityTheory.CW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.WordFiltrationCommute =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EtaleCohomologyNegativeVanishingDegreeZero =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EtaleCohomologyNegativeVanishingDegreeZero", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusLaws\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.BasisFormSumOfGain\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.BasisSumOfOrthogonality\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirPowerCommute\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirRealOfCentral\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CasimirRealScalar\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.ColumnMomentsOfSymmetric\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CommutatorAdjointHolds\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CompactGroupFacts\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EigenWeightedSumBound\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EigenbasisOfBasic\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EigenspacesOrthogonalOfCalculus\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EnvelopingAlgebraGrowthBound\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FunctionalCalculusOfBasic\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GelfandCentralHolds\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GroupFactsHolds\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GrowthOfBasic\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.GrowthPolynomialOperator\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.IdentityFiltrationBound\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.InversePowerBoundHolds\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.KFiniteInclusion\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.MatrixActionSingle\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.MaximumPrincipleOfFacts\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.NilpotentOfPowerTraces\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.OrthonormalEigenbasisOfBasic\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.PMaxPr\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.SecondDerivativeHolds\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.SymmetricPowerHolds\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.U0Commute\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.WordFiltrationCommute\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.CWB

open PositivityTheory.CW

theorem casimir_real_scalar : CasimirIsRealScalar := casimir_real_of_central _root_.PositivityTheory.CW.gelfand_central_holds _root_.PositivityTheory.CW.casimir_eigen_exists

theorem commutator_adjoint_lower_order : CommutatorAdjointModLower := commutator_adjoint_holds _root_.PositivityTheory.CWB.word_filtration_of_length

theorem aux_statement_6 : A5 := normal_nilpotent_of_commutator _root_.PositivityTheory.CWB.word_filtration_of_length _root_.PositivityTheory.CW.gelfand_central_holds _root_.PositivityTheory.CW.casimir_eigen_exists _root_.PositivityTheory.CW.nilpotent_of_power_traces commutator_adjoint_lower_order

theorem identity_operator_filtration : A6 := SymmetricPowerMatrix _root_.PositivityTheory.CW.orthonormal_eigenbasis_of_basic _root_.PositivityTheory.CWB.word_filtration_of_length casimir_real_scalar

theorem column_moments_bound : ColumnOperatorMoments := column_moments_of_symmetric _root_.PositivityTheory.CW.symmetric_power_holds

theorem second_moment_bound : A8 := second_moment_of_columns _root_.PositivityTheory.CW.orthonormal_eigenbasis_of_basic _root_.PositivityTheory.CWB.word_filtration_of_length _root_.PositivityTheory.CW.adjoint_stable_filtration casimir_real_scalar aux_statement_6 identity_operator_filtration column_moments_bound

theorem etale_cohomology_vanishing_negative_degree_zero : A9 := a9_of_a0_a1_eigenbasis_a6 _root_.PositivityTheory.CW.orthonormal_eigenbasis_of_basic _root_.PositivityTheory.CWB.word_filtration_of_length casimir_real_scalar identity_operator_filtration

theorem orthonormal_eigenbasis_exists : EigenbasisExists := eigenbasis_of_basic _root_.PositivityTheory.CW.orthonormal_eigenbasis_of_basic

theorem functional_calculus : FunctionalCalculusLaws := functional_calculus_of_basic _root_.PositivityTheory.CW.orthonormal_eigenbasis_of_basic

theorem normal_nilpotent_graded_zero : EigenspacesOrthogonalAlt := eigenspaces_orthogonal_of_calculus _root_.PositivityTheory.CW.orthonormal_eigenbasis_of_basic functional_calculus

theorem eigen_gain_high : A12 := eigen_gain_of_moments _root_.PositivityTheory.CW.orthonormal_eigenbasis_of_basic second_moment_bound etale_cohomology_vanishing_negative_degree_zero _root_.PositivityTheory.CW.inverse_power_bound_holds functional_calculus

theorem basis_sum_form_values : BasisSumAsFormValues := basis_sum_of_orthogonality _root_.PositivityTheory.CW.orthonormal_eigenbasis_of_basic functional_calculus normal_nilpotent_graded_zero

theorem eigenspace_form_sum : A13 := basis_form_sum_of_gain _root_.PositivityTheory.CW.orthonormal_eigenbasis_of_basic functional_calculus eigen_gain_high basis_sum_form_values

theorem word_length_filtration : B1 := growth_of_basic _root_.PositivityTheory.CW.orthonormal_eigenbasis_of_basic

theorem maximum_principle_one_function : MaximumPrincipleVar := maximum_principle_of_facts _root_.PositivityTheory.CW.heightFunctionalStatement_of_pairingProperties _root_.PositivityTheory.CW.second_derivative_holds _root_.PositivityTheory.CW.group_facts_holds

theorem second_derivative_sum_squares : SumSquaresSecondDerivative := second_derivatives_of_growth word_length_filtration _root_.PositivityTheory.CW.group_facts_holds

theorem lieExponentialMajorant_holds : B5 := eigen_weighted_sum_bound _root_.PositivityTheory.CW.orthonormal_eigenbasis_of_basic functional_calculus

theorem maxPr : MaxPr := maxPr_of casimir_real_scalar orthonormal_eigenbasis_exists eigenspace_form_sum _root_.PositivityTheory.CW.group_facts_holds maximum_principle_one_function second_derivative_sum_squares lieExponentialMajorant_holds

end PositivityTheory.CWB
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EtaleCohomologyNegativeVanishingDegreeZero =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FinalB =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FinalB", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasDRepIffHasDerivAt\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.CwOf\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.EtaleCohomologyNegativeVanishingDegreeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.CWB

theorem casselmanWallach : GlobalTheory.Published.CasselmanWallach :=
  PositivityTheory.CW.cw_of maxPr

end PositivityTheory.CWB
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.CasselmanWallach.FinalB =====
