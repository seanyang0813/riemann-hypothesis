module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Calculus.FDeriv.Defs
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
public import Mathlib.LinearAlgebra.Matrix.PosDef
public import Mathlib.Analysis.Calculus.FDeriv.Add
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.AssemblyBase

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.ThetaKeyFormula.RigSymFormTauINontrivial, GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PVanishingCechResidue

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ThetaKeyFormula.RigSymFormTauINontrivial =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ThetaKeyFormula.RigSymFormTauINontrivial", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.Calculus.FDeriv.Defs\npublic import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic\npublic import Mathlib.LinearAlgebra.Matrix.PosDef\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.FDeriv.Add\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.KeyFormula

open Complex Matrix Real

noncomputable section

structure SiegelPt (g : ℕ) where

  τ : Matrix (Fin g) (Fin g) ℂ
  isSymm : τ.IsSymm
  im_posDef : (τ.map Complex.im).PosDef

def intVec {g : ℕ} (v : Fin g → ℤ) : Fin g → ℂ := fun i => (v i : ℂ)

structure HalfChar (g : ℕ) where

  ε : Fin g → Fin 2

  ε' : Fin g → Fin 2

namespace HalfChar

variable {g : ℕ} (m : HalfChar g)

def a : Fin g → ℂ := fun i => ((m.ε i : ℕ) : ℂ) / 2

def b : Fin g → ℂ := fun i => ((m.ε' i : ℕ) : ℂ) / 2

end HalfChar

def autFactor {g : ℕ} (P : SiegelPt g) (m : HalfChar g) (n : ℕ) (u : Fin g → ℤ) (z : Fin g → ℂ) :
    ℂ :=
  cexp (-(π * I * n * (intVec u ⬝ᵥ P.τ *ᵥ intVec u)) - 2 * π * I * n * (intVec u ⬝ᵥ (z + m.b)))

def perFactor {g : ℕ} (m : HalfChar g) (n : ℕ) (v : Fin g → ℤ) : ℂ :=
  cexp (2 * π * I * n * (m.a ⬝ᵥ intVec v))

def thetaSec {g : ℕ} (P : SiegelPt g) (m : HalfChar g) (n : ℕ) :
    Submodule ℂ ((Fin g → ℂ) → ℂ) where
  carrier := {f | Differentiable ℂ f ∧
    (∀ (v : Fin g → ℤ) (z : Fin g → ℂ), f (z + intVec v) = perFactor m n v * f z) ∧
    ∀ (u : Fin g → ℤ) (z : Fin g → ℂ), f (z + P.τ *ᵥ intVec u) = autFactor P m n u z * f z}
  add_mem' := by
    rintro f h ⟨hf, hf1, hf2⟩ ⟨hh, hh1, hh2⟩
    refine ⟨hf.add hh, fun v z => ?_, fun u z => ?_⟩
    · simp only [Pi.add_apply, hf1, hh1]; ring
    · simp only [Pi.add_apply, hf2, hh2]; ring
  zero_mem' := ⟨differentiable_const 0, fun _ _ => by simp, fun _ _ => by simp⟩
  smul_mem' := by
    rintro c f ⟨hf, hf1, hf2⟩
    refine ⟨hf.const_smul c, fun v z => ?_, fun u z => ?_⟩
    · simp only [Pi.smul_apply, smul_eq_mul, hf1]; ring
    · simp only [Pi.smul_apply, smul_eq_mul, hf2]; ring

structure RigSymForm (K : Type) [Field K] [Algebra K ℂ] where

  g : ℕ

  pt : SiegelPt g

  ch : HalfChar g

  S : ℕ → Submodule K ((Fin g → ℂ) → ℂ)
  S_le : ∀ n, ∀ f ∈ S n, f ∈ thetaSec pt ch n
  one_mem : (fun _ => (1 : ℂ)) ∈ S 0
  mul_mem : ∀ k n f h, f ∈ S k → h ∈ S n → f * h ∈ S (k + n)
  span_eq : ∀ n, Submodule.span ℂ (S n : Set ((Fin g → ℂ) → ℂ)) = thetaSec pt ch n
  linIndep : ∀ (n : ℕ) (s : Finset ((Fin g → ℂ) → ℂ)), (↑s : Set ((Fin g → ℂ) → ℂ)) ⊆ S n →
    LinearIndependent K (fun f : s => (f : (Fin g → ℂ) → ℂ)) →
    LinearIndependent ℂ (fun f : s => (f : (Fin g → ℂ) → ℂ))

  rig : ℂˣ
  rig_mem : ∀ n, ∀ f ∈ S n, ∃ c : K, (rig : ℂ) ^ n * f 0 = algebraMap K ℂ c

end

end GroundTheory.Heights₂.Heights.KeyFormula
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ThetaKeyFormula.RigSymFormTauINontrivial =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PVanishingCechResidue =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PVanishingCechResidue", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.AssemblyBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport GroundTheory.HeightsAndTheta.Heights.ThetaKeyFormula.RigSymFormTauINontrivial\n\n"}
section -- clump:auto
@[expose] public section

end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PVanishingCechResidue =====
