module

public import CompanionTheory.HarishChandraModules.NonemptyRepresentations.NonemptyOfAntitone
public import Mathlib.Analysis.Calculus.Deriv.Basic
public import Mathlib.Analysis.InnerProductSpace.Basic
public import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
public import Mathlib.Analysis.Calculus.Deriv.Prod
public import Mathlib.Analysis.Calculus.Deriv.Linear
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Normed.Algebra.Exponential
public import Mathlib.Topology.Instances.Matrix
public import Mathlib.Analysis.Matrix.Normed
public import Mathlib.Analysis.Calculus.Deriv.Comp
public import Mathlib.Analysis.Calculus.FDeriv.Linear
public import Mathlib.Analysis.SpecialFunctions.Exponential
public import Formalism.HermitianCurvature.FrameExists2
public import Mathlib.Analysis.CStarAlgebra.Matrix
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameCompletion
public import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.DiscreteSeriesCharacters.CapelliDeterminantBlockProduct
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DiagonalTransferAction
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SettingConstruction
import Formalism.SharpRestriction.CuspSpanNormBounds.SGauge
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator
import Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.HarishChandraModules.NonemptyRepresentations.HWRepD, CompanionTheory.HarishChandraModules.NonemptyRepresentations.ExpEntry, CompanionTheory.HarishChandraModules.NonemptyRepresentations.TypeExists, CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.KhwExists

-- ===== clump member: CompanionTheory.HarishChandraModules.NonemptyRepresentations.HWRepD =====
-- clump-header: {"m": "CompanionTheory.HarishChandraModules.NonemptyRepresentations.HWRepD", "h": "module\n\npublic import CompanionTheory.HarishChandraModules.NonemptyRepresentations.NonemptyOfAntitone\npublic import Mathlib.Analysis.Calculus.Deriv.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Basic\npublic import Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.Analysis.Calculus.Deriv.Prod\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.Calculus.Deriv.Linear\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

noncomputable section

namespace CompanionTheory.D.Inhab.HWRep

variable {k : ℕ} {ν : Fin k → ℤ} (R : HWRep k ν)

def one' (k : ℕ) : Fin k → Fin k → ℂ := (1 : Matrix (Fin k) (Fin k) ℂ)

def D (Y : Matrix (Fin k) (Fin k) ℂ) : Matrix R.I R.I ℂ :=
  Matrix.of fun i j => fderiv ℂ (fun B : Fin k → Fin k → ℂ => R.ρ (Matrix.of B) i j) (one' k) (fun a b => Y a b)

theorem D_add (Y Z : Matrix (Fin k) (Fin k) ℂ) : R.D (Y + Z) = R.D Y + R.D Z := by
  ext i j
  simp only [D, Matrix.of_apply, Matrix.add_apply]
  rw [← map_add (f := _)]; rfl

theorem D_smul (c : ℂ) (Y : Matrix (Fin k) (Fin k) ℂ) : R.D (c • Y) = c • R.D Y := by
  ext i j
  simp only [D, Matrix.of_apply, Matrix.smul_apply]
  rw [← map_smul]; rfl

theorem hasDerivAt_curve (γ : ℝ → Matrix (Fin k) (Fin k) ℂ) (Y : Matrix (Fin k) (Fin k) ℂ) (h0 : γ 0 = 1)
    (hγ : ∀ a b, HasDerivAt (fun t => γ t a b) (Y a b) 0) (v : R.I → ℂ) :
    HasDerivAt (fun t => R.ρ (γ t) *ᵥ v) (R.D Y *ᵥ v) 0 := by
  have hγ' : HasDerivAt (fun t => (fun a b => γ t a b : Fin k → Fin k → ℂ)) (fun a b => Y a b) 0 :=
    hasDerivAt_pi.2 fun a => hasDerivAt_pi.2 fun b => hγ a b
  refine hasDerivAt_pi.2 fun i => ?_
  simp only [Matrix.mulVec, dotProduct]
  refine HasDerivAt.fun_sum fun j _ => HasDerivAt.mul_const ?_ _
  have hd := (R.diff (one' k) (by show (1 : Matrix (Fin k) (Fin k) ℂ).det ≠ 0; simp) i j).hasFDerivAt
  have e : one' k = (fun t => (fun a b => γ t a b : Fin k → Fin k → ℂ)) 0 := by
    funext a b; simp [h0, one']
  have hd' := hd.restrictScalars ℝ
  rw [e] at hd'
  have := hd'.comp_hasDerivAt (0 : ℝ) hγ'
  rw [← e] at this
  exact this

theorem curve_deriv (a b c d : Fin k) :
    HasDerivAt (fun t : ℝ => (1 + (t : ℂ) • Matrix.single a b (1 : ℂ) : Matrix (Fin k) (Fin k) ℂ) c d)
      ((Matrix.single a b (1 : ℂ) : Matrix (Fin k) (Fin k) ℂ) c d) 0 := by
  simp only [Matrix.add_apply, Matrix.smul_apply, smul_eq_mul]
  simpa using ((Complex.ofRealCLM.hasDerivAt (x := (0 : ℝ))).mul_const
    ((Matrix.single a b (1 : ℂ) : Matrix (Fin k) (Fin k) ℂ) c d)).const_add ((1 : Matrix (Fin k) (Fin k) ℂ) c d)

theorem curve_tri {a b : Fin k} (hab : a ≤ b) (t : ℂ) :
    (1 + t • Matrix.single a b (1 : ℂ) : Matrix (Fin k) (Fin k) ℂ).BlockTriangular id := by
  intro c d h
  have h' : d < c := h
  have : ¬(a = c ∧ b = d) := by rintro ⟨rfl, rfl⟩; exact absurd hab (not_le.2 h')
  simp [h'.ne', this]

theorem D_upper {a b : Fin k} (hab : a < b) : R.D (Matrix.single a b 1) *ᵥ R.v0 = 0 := by
  have h := R.hasDerivAt_curve (fun t : ℝ => 1 + (t : ℂ) • Matrix.single a b (1 : ℂ)) _ (by simp)
    (curve_deriv a b) R.v0
  have hdiag : ∀ (t : ℂ) c, (1 + t • Matrix.single a b (1 : ℂ) : Matrix (Fin k) (Fin k) ℂ) c c = 1 := by
    intro t c
    have : ¬(a = c ∧ b = c) := by rintro ⟨rfl, rfl⟩; exact lt_irrefl _ hab
    simp [this]
  have e : (fun t : ℝ => R.ρ (1 + (t : ℂ) • Matrix.single a b (1 : ℂ)) *ᵥ R.v0) = fun _ => R.v0 := by
    funext t
    rw [R.hw _ (curve_tri hab.le _)]
    · simp only [hdiag]; simp
    · rw [Matrix.det_of_upperTriangular (curve_tri hab.le _)]
      simp only [hdiag]; simp
  rw [e] at h
  exact h.unique (hasDerivAt_const _ _)

theorem D_diag (a : Fin k) : R.D (Matrix.single a a 1) *ᵥ R.v0 = (ν a : ℂ) • R.v0 := by
  have h := R.hasDerivAt_curve (fun t : ℝ => 1 + (t : ℂ) • Matrix.single a a (1 : ℂ)) _ (by simp)
    (curve_deriv a a) R.v0
  have hdiag : ∀ (t : ℂ) c, (1 + t • Matrix.single a a (1 : ℂ) : Matrix (Fin k) (Fin k) ℂ) c c =
      if c = a then 1 + t else 1 := by
    intro t c
    by_cases hc : c = a
    · simp [hc]
    · simp [hc, Ne.symm hc]
  have h1 : HasDerivAt (fun t : ℝ => (1 : ℂ) + t) 1 0 := by
    simpa using (Complex.ofRealCLM.hasDerivAt (x := (0 : ℝ))).const_add (1 : ℂ)
  have hne : ∀ᶠ t : ℝ in nhds 0, (1 : ℂ) + t ≠ 0 :=
    h1.continuousAt.eventually_ne (by simp)
  have e : (fun t : ℝ => ((1 : ℂ) + t) ^ ν a • R.v0) =ᶠ[nhds 0]
      fun t : ℝ => R.ρ (1 + (t : ℂ) • Matrix.single a a (1 : ℂ)) *ᵥ R.v0 := by
    filter_upwards [hne] with t ht
    rw [R.hw _ (curve_tri le_rfl _)]
    · congr 1
      simp only [hdiag]
      rw [Finset.prod_eq_single a] <;> simp +contextual
    · rw [Matrix.det_of_upperTriangular (curve_tri le_rfl _)]
      simp only [hdiag]
      exact Finset.prod_ne_zero_iff.2 fun c _ => by split_ifs <;> simp [ht]
  have hz : HasDerivAt (fun x : ℂ => x ^ ν a) (ν a : ℂ) ((1 : ℂ) + ((0 : ℝ) : ℂ)) := by
    simpa using hasDerivAt_zpow (ν a) (1 : ℂ) (Or.inl one_ne_zero)
  have h2 : HasDerivAt (fun t : ℝ => ((1 : ℂ) + t) ^ ν a) (ν a : ℂ) 0 := by
    have := (hz.hasFDerivAt.restrictScalars ℝ).comp_hasDerivAt (0 : ℝ) h1
    simp only [ContinuousLinearMap.coe_restrictScalars', ContinuousLinearMap.toSpanSingleton_apply, one_smul] at this
    exact this
  exact (h.congr_of_eventuallyEq e).unique (h2.smul_const R.v0)

end CompanionTheory.D.Inhab.HWRep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.HarishChandraModules.NonemptyRepresentations.HWRepD =====

-- ===== clump member: CompanionTheory.HarishChandraModules.NonemptyRepresentations.ExpEntry =====
-- clump-header: {"m": "CompanionTheory.HarishChandraModules.NonemptyRepresentations.ExpEntry", "h": "module\n\nimport Formalism.SharpRestriction.CuspSpanNormBounds.SGauge\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Calculus.Deriv.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Basic\npublic import Mathlib.Analysis.LocallyConvex.AbsConvexOpen\npublic import Mathlib.Analysis.Normed.Algebra.Exponential\npublic import Mathlib.Topology.Instances.Matrix\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Normed\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Matrix\npublic import Mathlib.Analysis.Calculus.Deriv.Comp\npublic import Mathlib.Analysis.Calculus.FDeriv.Linear\npublic import Mathlib.Analysis.SpecialFunctions.Exponential\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace CompanionTheory.D.Inhab

theorem exp_entry (N : ℕ) (X : Matrix (Fin N) (Fin N) ℂ) (i j : Fin N) :
    HasDerivAt (fun t : ℝ => (NormedSpace.exp ((t : ℂ) • X)) i j) (X i j) 0 := by
  apply Formalism.MainNotions.S.Gauge.exp_entry

end CompanionTheory.D.Inhab
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.HarishChandraModules.NonemptyRepresentations.ExpEntry =====

-- ===== clump member: CompanionTheory.HarishChandraModules.NonemptyRepresentations.TypeExists =====
-- clump-header: {"m": "CompanionTheory.HarishChandraModules.NonemptyRepresentations.TypeExists", "h": "module\n\npublic import CompanionTheory.HarishChandraModules.NonemptyRepresentations.HWRepD\npublic import Formalism.HermitianCurvature.FrameExists2\npublic import Mathlib.Analysis.CStarAlgebra.Matrix\npublic import CompanionTheory.HarishChandraModules.NonemptyRepresentations.ExpEntry\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameCompletion\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix

noncomputable section

namespace CompanionTheory.D.Inhab.TypeExists

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Qr Formalism.FourierDecayAlt.P CompanionTheory.D.Inhab

variable {k r : ℕ}

def fm (B : Fin k → Fin (2 * r + k + 1) → ℂ) (g : Mx k r) : Matrix (Fin k) (Fin k) ℂ :=
  Matrix.of fun a b => herm (Hpk k r) (g *ᵥ B b) (B a)

theorem fm_eq (B : Fin k → Fin (2 * r + k + 1) → ℂ) (g : Mx k r) (a b : Fin k) :
    fm B g a b = ∑ p, ∑ q, (star (B a) ᵥ* Hpk k r) p * g p q * B b q := by
  simp only [fm, herm, Matrix.of_apply]
  rw [Matrix.dotProduct_mulVec]
  simp only [Matrix.mulVec, dotProduct, Finset.mul_sum, mul_assoc]

theorem fm_add (B : Fin k → Fin (2 * r + k + 1) → ℂ) (g h : Mx k r) : fm B (g + h) = fm B g + fm B h := by
  ext a b
  simp only [fm, Matrix.of_apply, Matrix.add_apply, Matrix.add_mulVec, Qx8.herm_add_left']

theorem fm_smul (B : Fin k → Fin (2 * r + k + 1) → ℂ) (c : ℂ) (g : Mx k r) : fm B (c • g) = c • fm B g := by
  ext a b
  simp only [fm, Matrix.of_apply, Matrix.smul_apply, Matrix.smul_mulVec, Qx8.herm_smul_left', smul_eq_mul]

theorem continuous_fm (B : Fin k → Fin (2 * r + k + 1) → ℂ) : Continuous (fm B) := by
  refine continuous_pi fun a => continuous_pi fun b => ?_
  simp only [fm_eq]
  fun_prop

variable {z : Fin (2 * r + k + 1) → ℂ} {B : Fin k → Fin (2 * r + k + 1) → ℂ}

theorem fm_one (hB : IsFrameOf k r [z] B) : fm B 1 = 1 := by
  ext a b
  simp only [fm, Matrix.of_apply, Matrix.one_mulVec, hB.2.1, Matrix.one_apply, eq_comm]

theorem fm_unitB (hB : IsFrameOf k r [z] B) (a b : Fin k) : fm B (unitB (Hpk k r) B a b) = Matrix.single a b 1 := by
  ext c d
  simp only [fm, Matrix.of_apply, Qx8.unitB_mulVec, Qx8.herm_smul_left', hB.2.1, Matrix.single_apply]
  by_cases h1 : a = c <;> by_cases h2 : b = d <;> simp [h1, h2, eq_comm]

theorem mulVec_frame (hz : inWb k r z) (hT : 0 < Tz k r z) (hB : IsFrameOf k r [z] B) {h : Mx k r}
    (hh : h ∈ UWset k r z) (b : Fin k) : h *ᵥ B b = ∑ c, fm B h c b • B c := by
  refine HermitianFormSums.complete0 hz (HermitianFormSums.hzz hT) hB (Qx8.inWb_mulVec (Qx8.uw_glev _ hh) (hB.1 b)) ?_
  conv_lhs => rw [← hh.2.2]
  rw [Qx8.herm_UH hh.1, hB.2.2 b z (by simp)]

theorem fm_mul (hz : inWb k r z) (hT : 0 < Tz k r z) (hB : IsFrameOf k r [z] B) (g : Mx k r) {h : Mx k r}
    (hh : h ∈ UWset k r z) : fm B (g * h) = fm B g * fm B h := by
  ext a b
  rw [Matrix.mul_apply]
  show herm (Hpk k r) ((g * h) *ᵥ B b) (B a) = _
  rw [← Matrix.mulVec_mulVec, mulVec_frame hz hT hB hh, Matrix.mulVec_sum]
  simp only [Matrix.mulVec_smul]
  rw [HermitianFormSums.herm_lsum]
  exact Finset.sum_congr rfl fun c _ => mul_comm _ _

theorem fm_unitary (hz : inWb k r z) (hT : 0 < Tz k r z) (hB : IsFrameOf k r [z] B) {h : Mx k r}
    (hh : h ∈ UWset k r z) : (fm B h)ᴴ * fm B h = 1 := by
  ext a b
  have e := Qx8.herm_UH hh.1 (B b) (B a)
  rw [hB.2.1, mulVec_frame hz hT hB hh a, HermitianFormSums.herm_rsum] at e
  rw [Matrix.mul_apply, Matrix.one_apply]
  simp only [eq_comm (a := a), ← e]
  rfl

variable {ν : Fin k → ℤ} (R : HWRep k ν)

def πR (B : Fin k → Fin (2 * r + k + 1) → ℂ) (g : Mx k r) : EuclideanSpace ℂ R.I →L[ℂ] EuclideanSpace ℂ R.I :=
  Matrix.toEuclideanCLM (n := R.I) (𝕜 := ℂ) (R.ρ (fm B g))

theorem πR_isRepW (hz : inWb k r z) (hT : 0 < Tz k r z) (hB : IsFrameOf k r [z] B) : IsRepW k r z (πR R B) := by
  refine ⟨⟨?_, fun a _ b hb => ?_⟩, ?_⟩
  · rw [πR, fm_one hB, R.map_one, map_one]
  · rw [πR, fm_mul hz hT hB a hb, R.map_mul, map_mul]; rfl
  · have h1 : ContinuousOn (fun g : Mx k r => R.ρ (fm B g)) (UWset k r z) := by
      refine continuousOn_pi.2 fun i => continuousOn_pi.2 fun j => fun g hg => ?_
      have hd : (Matrix.of (fm B g : Fin k → Fin k → ℂ)).det ≠ 0 := by
        intro h0
        have := congrArg Matrix.det (fm_unitary hz hT hB hg)
        rw [Matrix.det_mul] at this
        have h0' : (fm B g).det = 0 := h0
        simp [h0'] at this
      exact ((R.diff _ hd i j).continuousAt.comp (f := fm B) (continuous_fm B).continuousAt).continuousWithinAt
    have h2 : Continuous (fun M : Matrix R.I R.I ℂ => Matrix.toEuclideanCLM (n := R.I) (𝕜 := ℂ) M) :=
      LinearMap.continuous_of_finiteDimensional
        (Matrix.toEuclideanCLM (n := R.I) (𝕜 := ℂ)).toAlgEquiv.toLinearMap
    exact h2.comp_continuousOn h1

theorem πR_unitary (hz : inWb k r z) (hT : 0 < Tz k r z) (hB : IsFrameOf k r [z] B) :
    ∀ h ∈ UWset k r z, ∀ v, ‖πR R B h v‖ = ‖v‖ := by
  intro h hh v
  have e : star (πR R B h) * πR R B h = 1 := by
    rw [πR, ← map_star, ← map_mul, Matrix.star_eq_conjTranspose, ← R.map_star, ← R.map_mul, fm_unitary hz hT hB hh,
      R.map_one, map_one]
  exact (ContinuousLinearMap.norm_map_iff_adjoint_comp_self (πR R B h)).2 e v

theorem dRep_πR (hB : IsFrameOf k r [z] B) (X : Mx k r) (v : EuclideanSpace ℂ R.I) :
    dRep (πR R B) X v = WithLp.toLp 2 (R.D (fm B X) *ᵥ v.ofLp) := by
  have h := R.hasDerivAt_curve (fun t : ℝ => fm B (NormedSpace.exp ((t : ℂ) • X))) (fm B X)
    (by simp [NormedSpace.exp_zero, fm_one hB]) (fun a b => by
      simp only [fm_eq]
      exact HasDerivAt.fun_sum fun p _ => HasDerivAt.fun_sum fun q _ =>
        ((exp_entry _ X p q).const_mul _).mul_const _) v.ofLp
  exact (((EuclideanSpace.equiv R.I ℂ).symm.toContinuousLinearMap.restrictScalars ℝ).hasFDerivAt.comp_hasDerivAt
    (0 : ℝ) h).deriv

theorem hpart_sum {n : ℕ} (H Z : Matrix (Fin n) (Fin n) ℂ) : hpart1 H Z + Complex.I • hpart2 H Z = Z := by
  unfold hpart1 hpart2
  have hI : Complex.I * (1 / (2 * Complex.I)) = 1 / 2 := by field_simp
  rw [smul_smul, hI]
  module

theorem ecRep_πR (hB : IsFrameOf k r [z] B) (Z : Mx k r) (v : EuclideanSpace ℂ R.I) :
    EcRep (Hpk k r) (πR R B) Z v = WithLp.toLp 2 (R.D (fm B Z) *ᵥ v.ofLp) := by
  conv_rhs => rw [← hpart_sum (Hpk k r) Z, fm_add, fm_smul, R.D_add, R.D_smul, Matrix.add_mulVec, Matrix.smul_mulVec]
  rw [EcRep, dRep_πR R hB, dRep_πR R hB]
  rfl

theorem isHW_πR (hz : inWb k r z) (hT : 0 < Tz k r z) (hB : IsFrameOf k r [z] B) :
    IsHW (EB (πR R B) B) (fun a => (ν a : ℂ)) (WithLp.toLp 2 R.v0) := by
  have hπ := πR_isRepW R hz hT hB
  have e : ∀ a b, EB (πR R B) B a b (WithLp.toLp 2 R.v0) = WithLp.toLp 2 (R.D (Matrix.single a b 1) *ᵥ R.v0) := by
    intro a b
    rw [← fm_unitB hB, ← ecRep_πR R hB _ (WithLp.toLp 2 R.v0),
      QrD.ecRep_eq hπ.1 hπ.2 (QrD.frame_lie hB a b).1 (QrD.frame_lie hB a b).2]
    rfl
  exact ⟨fun a => by rw [e, R.D_diag]; rfl, fun a b hab => by rw [e, R.D_upper hab]; rfl⟩

end CompanionTheory.D.Inhab.TypeExists
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.HarishChandraModules.NonemptyRepresentations.TypeExists =====

-- ===== clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.KhwExists =====
-- clump-header: {"m": "CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.KhwExists", "h": "module\n\npublic import CompanionTheory.HarishChandraModules.LowKTypeMultiplicity.DiscreteSeriesCharacters.CapelliDeterminantBlockProduct\npublic import CompanionTheory.HarishChandraModules.NonemptyRepresentations.TypeExists\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DiagonalTransferAction\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SettingConstruction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.Fin.Tuple.Sort\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import CompanionTheory.HarishChandraModules.NonemptyRepresentations.NonemptyOfAntitone\n\n"}
section -- clump:auto
@[expose] public section

open scoped InnerProductSpace

noncomputable section

namespace GlobalTheory.CompanionTheory.KHighestExists

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Qr Formalism.FourierDecayAlt.P CompanionTheory.D.Inhab CompanionTheory.D.DSIC

theorem gl_exists (n : ℕ) (ν : Fin n → ℤ) (hν : Antitone ν) :
    ∃ (U : Type) (_ : NormedAddCommGroup U) (_ : InnerProductSpace ℂ U) (_ : FiniteDimensional ℂ U)
      (E : Fin n → Fin n → Module.End ℂ U) (u : U),
      GlRel E ∧ (∀ a b x y, ⟪E a b x, y⟫_ℂ = ⟪x, E b a y⟫_ℂ) ∧ u ≠ 0 ∧ IsHW E (fun a => (ν a : ℂ)) u := by
  obtain ⟨R⟩ := HWRep.nonempty_of_antitone ν hν
  obtain ⟨hz, h1⟩ := base_vector_exists n 0
  have hT : 0 < Tz n 0 (bvec (wI n 0 (Fin.last n))) := by rw [h1]; exact one_pos
  obtain ⟨B, hB⟩ := Qx8.frame_exists hz hT
  have hπ := TypeExists.πR_isRepW R hz hT hB
  exact ⟨EuclideanSpace ℂ R.I, inferInstance, inferInstance, inferInstance, EB (TypeExists.πR R B) B,
    WithLp.toLp 2 R.v0, (frame_general_linear _ n 0 n _ _ B hπ hB).1,
    Formalism.FourierDecayAlt.P5.Kfp.EB_adj hπ.1 hπ.2 (TypeExists.πR_unitary R hz hT hB) hB,
    fun h => R.v0_ne (congrArg WithLp.ofLp h), TypeExists.isHW_πR R hz hT hB⟩

theorem reorder (n : ℕ) (ε : Fin n → Bool) (γ : Fin n → ℤ) (hγ : ∀ c d, c < d → ε c = ε d → γ d ≤ γ c) :
    ∃ (σ : Fin n ≃ Fin n) (N : ℤ), (∀ c d, c < d → ε c = ε d → σ.symm c < σ.symm d) ∧
      Antitone fun i => γ (σ i) + if ε (σ i) then N else 0 := by
  let f : Fin n → ℕ := fun c => if ε c then (c : ℕ) else n + c
  have hm : Monotone (f ∘ Tuple.sort f) := Tuple.monotone_sort f
  have hb : ∀ c, |γ c| ≤ ∑ d, |γ d| := fun c =>
    Finset.single_le_sum (f := fun d => |γ d|) (fun _ _ => abs_nonneg _) (Finset.mem_univ c)
  refine ⟨Tuple.sort f, 2 * ∑ d, |γ d|, fun c d hcd he => ?_, fun i j hij => ?_⟩
  · by_contra h
    have := hm (not_lt.1 h)
    simp only [Function.comp, Equiv.apply_symm_apply, f, he] at this
    split_ifs at this <;> omega
  · have h := hm hij
    simp only [Function.comp, f] at h
    show γ (Tuple.sort f j) + _ ≤ γ (Tuple.sort f i) + _
    generalize Tuple.sort f i = a at *
    generalize Tuple.sort f j = b at *
    have ha := abs_le.1 (hb a)
    have hb' := abs_le.1 (hb b)
    have key : ε a = ε b → (a : ℕ) ≤ b → γ b ≤ γ a := fun he hab => by
      rcases (show a ≤ b from hab).lt_or_eq with h | h
      · exact hγ a b h he
      · rw [h]
    have := b.2
    cases h1 : ε a <;> cases h2 : ε b <;> simp only [h1, h2] at h key ⊢ <;> simp at h ⊢
    · exact key trivial h
    · omega
    · linarith [ha.1, hb'.2]
    · exact key trivial h

theorem khwExists : CompanionTheory.D.DSIC.KHWExists := by
  intro n ε γ hγ
  obtain ⟨σ, N, hσ, hν⟩ := reorder n ε γ hγ
  obtain ⟨U, _, _, _, E, u, hgl, hadj, hu, hw⟩ := gl_exists n _ hν
  let s : Fin n → ℤ := fun c => if ε c then N else 0
  refine ⟨U, inferInstance, inferInstance, inferInstance,
    fun c d => E (σ.symm c) (σ.symm d) - (if c = d then (s c : ℂ) else 0) • 1, u, ?_, ?_, hu, ?_, ?_⟩
  · intro a b c d hab _
    have h := hgl (σ.symm a) (σ.symm b) (σ.symm c) (σ.symm d)
    simp only [EmbeddingLike.apply_eq_iff_eq] at h
    have e : ∀ (X Y : Module.End ℂ U) (p q : ℂ),
        (X - p • 1) * (Y - q • 1) - (Y - q • 1) * (X - p • 1) = X * Y - Y * X := by
      intro X Y p q
      simp only [sub_mul, mul_sub, smul_mul_assoc, mul_smul_comm, mul_one, one_mul]
      module
    show (_ - _ • 1) * (_ - _ • 1) - (_ - _ • 1) * (_ - _ • 1) = _
    rw [e, h]
    by_cases h1 : b = c <;> by_cases h2 : d = a
    · subst h1; subst h2
      have : s d = s b := by simp only [s, hab]
      simp [this]
    · simp [h1, h2, Ne.symm h2]
    · simp [h1, h2, Ne.symm h1]
    · simp [h1, h2]
  · intro a b _ x y
    simp only [LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply, inner_sub_left, inner_sub_right,
      inner_smul_left, inner_smul_right, hadj]
    by_cases h : a = b
    · subst h; simp
    · simp [h, Ne.symm h]
  · intro a
    have h := hw.1 (σ.symm a)
    simp only [Equiv.apply_symm_apply] at h
    simp only [LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply, h, if_true, s, ← sub_smul]
    congr 1
    push_cast
    ring
  · intro a b hab he
    simp [hw.2 _ _ (hσ a b hab he), hab.ne]

end GlobalTheory.CompanionTheory.KHighestExists
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.SpectralGeometry.LocalGlobalProofs.StableLattices.KhwExists =====
