module

public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ContinuousHermNormGroup

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.MahlerSectionBasic, GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.MahlerSectionBasic =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.MahlerSectionBasic", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.Statements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial MeasureTheory

noncomputable section

variable {n : ℕ}

def ballH (h : HermNorm n) : Set (Fin n → ℂ) := {v | h.norm v < 1}

def nrmv (h : HermNorm n) (v : Fin n → ℂ) : Fin n → ℂ := fun j => ((h.norm v : ℝ) : ℂ)⁻¹ * v j

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.MahlerSectionBasic =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.MahlerSectionBasic\npublic import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ContinuousHermNormGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial MeasureTheory Matrix

noncomputable section

variable {n : ℕ}

def nrmGroups (h : HermNorm n) (k : ℕ) (u : Fin k × Fin n → ℂ) : Fin k × Fin n → ℂ :=
  fun ij => ((h.norm fun j => u (ij.1, j) : ℝ) : ℂ)⁻¹ * u ij

def consGroup {k : ℕ} (v : Fin n → ℂ) (w : Fin k × Fin n → ℂ) : Fin (k + 1) × Fin n → ℂ :=
  fun ij => Fin.cases (motive := fun _ => ℂ) (v ij.2) (fun i => w (i, ij.2)) ij.1

def IsAdmissible (Z : ProjCycle ℂ n) (u : Fin n → ℂ) : Prop :=
  ∀ W ∈ Z.support, linForm u ∉ W

def mahlerDefect (h : HermNorm n) (e : ℕ) (Z : ProjCycle ℂ n)
    (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ) (u : Fin n → ℂ) : ℝ :=
  mahler h e (specFirst f u) - cycleIntegral h Z e (fsLog h u)

structure IsChowCycleData (Z : ProjCycle ℂ n) (e δ : ℕ) (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ) :
    Prop where

  prime : ∀ W ∈ Z.support, IsProjPrime W

  chow : IsChowFormCycle Z (e + 1) f

  homog : Heights.IsMultiHomog δ f

def MahlerSectionDim (e : ℕ) : Prop :=
  ∀ (n δ : ℕ) (h : HermNorm n) (Z : ProjCycle ℂ n) (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ)
    (u : Fin n → ℂ), IsChowCycleData Z e δ f → IsAdmissible Z u →
      mahler h e (specFirst f u) =
        mahler h (e + 1) f + δ * (harmonic (n - 1) : ℝ) / 2 + cycleIntegral h Z e (fsLog h u)

def DefectConstDim (e : ℕ) : Prop :=
  ∀ (n δ : ℕ) (h : HermNorm n) (Z : ProjCycle ℂ n) (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ)
    (u u' : Fin n → ℂ), IsChowCycleData Z e δ f → IsAdmissible Z u → IsAdmissible Z u' →
      mahlerDefect h e Z f u = mahlerDefect h e Z f u'

def MahlerSectionOfConst.Statement : Prop :=
  ∀ e : ℕ, DefectConstDim e → MahlerSectionDim e

def DefectAverage.Statement : Prop :=
  ∀ (n e δ : ℕ) (h : HermNorm n) (Z : ProjCycle ℂ n) (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ),
    IsChowCycleData Z e δ f →
      IntegrableOn (fun v => mahlerDefect h e Z f (nrmv h v)) (ballH h) ∧
        ⨍ v in ballH h, mahlerDefect h e Z f (nrmv h v) = mahler h (e + 1) f + δ * (harmonic (n - 1) : ℝ) / 2

def AdmissibleAE.Statement : Prop :=
  ∀ (n : ℕ) (Z : ProjCycle ℂ n), (∀ W ∈ Z.support, IsRelevant W) → ∀ᵐ u : Fin n → ℂ, IsAdmissible Z u

def AdmissibleAENrm.Statement : Prop :=
  ∀ (n : ℕ) (h : HermNorm n) (Z : ProjCycle ℂ n), (∀ W ∈ Z.support, IsRelevant W) →
    ∀ᵐ v ∂(volume.restrict (ballH h)), IsAdmissible Z (nrmv h v)

def BallVolume.Statement : Prop :=
  ∀ (n : ℕ) (h : HermNorm n), 0 < volume (ballH h) ∧ volume (ballH h) < ⊤

def MahlerAverageSplit.Statement : Prop :=
  ∀ (n e δ : ℕ) (h : HermNorm n) (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ), f ≠ 0 → Heights.IsMultiHomog δ f →
    IntegrableOn (fun v => mahler h e (specFirst f (nrmv h v))) (ballH h) ∧
      mahler h (e + 1) f = ⨍ v in ballH h, mahler h e (specFirst f (nrmv h v))

def MahlerIntegrand.Statement : Prop :=
  ∀ (n k δ : ℕ) (h : HermNorm n) (f : MvPolynomial (Fin k × Fin n) ℂ), f ≠ 0 → Heights.IsMultiHomog δ f →
    IntegrableOn (fun u => Real.log ‖eval (nrmGroups h k u) f‖) (ballProd h k)

def SphereMeanFubini.Statement : Prop :=
  ∀ (n k : ℕ) (h : HermNorm n) (G : (Fin (k + 1) × Fin n → ℂ) → ℝ),
    IntegrableOn (fun u => G (nrmGroups h (k + 1) u)) (ballProd h (k + 1)) →
      IntegrableOn (fun v => sphereMean h k (fun w => G (consGroup (nrmv h v) w))) (ballH h) ∧
        sphereMean h (k + 1) G = ⨍ v in ballH h, sphereMean h k (fun w => G (consGroup (nrmv h v) w))

def EvalSpecFirst.Statement : Prop :=
  ∀ (n k : ℕ) (f : MvPolynomial (Fin (k + 1) × Fin n) ℂ) (v : Fin n → ℂ) (w : Fin k × Fin n → ℂ),
    eval w (specFirst f v) = eval (consGroup v w) f

def CycleAverage.Statement : Prop :=
  ∀ (n e δ : ℕ) (h : HermNorm n) (Z : ProjCycle ℂ n) (f : MvPolynomial (Fin (e + 1) × Fin n) ℂ),
    IsChowCycleData Z e δ f →
      IntegrableOn (fun v => cycleIntegral h Z e (fsLog h (nrmv h v))) (ballH h) ∧
        ⨍ v in ballH h, cycleIntegral h Z e (fsLog h (nrmv h v)) = -(δ * (harmonic (n - 1) : ℝ)) / 2

def ConeAverage.Statement : Prop :=
  ∀ (n e δ : ℕ) (h : HermNorm n) (W : Ideal (MvPolynomial (Fin n) ℂ))
    (g : MvPolynomial (Fin (e + 1) × Fin n) ℂ),
    IsProjPrime W → IsChowForm W (e + 1) g → Heights.IsMultiHomog δ g →
      IntegrableOn (fun v => coneIntegral h W e (fsLog h (nrmv h v))) (ballH h) ∧
        ⨍ v in ballH h, coneIntegral h W e (fsLog h (nrmv h v)) = -(δ * (harmonic (n - 1) : ℝ)) / 2

def ConeFubini.Statement : Prop :=
  ∀ (n : ℕ) (h : HermNorm n) (μ : Measure (EuclideanSpace ℂ (Fin n))) [IsFiniteMeasure μ]
    (F : (Fin n → ℂ) → EuclideanSpace ℂ (Fin n) → ℝ) (c M : ℝ),
    Measurable (Function.uncurry F) →
    (∀ᵐ y ∂μ, IntegrableOn (fun v => F v y) (ballH h) ∧ ∫ v in ballH h, |F v y| ≤ M ∧
      ⨍ v in ballH h, F v y = c) →
      IntegrableOn (fun v => ∫ y, F v y ∂μ) (ballH h) ∧
        ⨍ v in ballH h, ∫ y, F v y ∂μ = c * (μ Set.univ).toReal

def FsLogAverage.Statement : Prop :=
  ∀ (n : ℕ) (h : HermNorm n) (y : EuclideanSpace ℂ (Fin n)), y ≠ 0 →
    IntegrableOn (fun v => fsLog h (nrmv h v) (h.pointOf y)) (ballH h) ∧
      ∫ v in ballH h, |fsLog h (nrmv h v) (h.pointOf y)| =
        (harmonic (n - 1) : ℝ) / 2 * (volume (ballH h)).toReal ∧
      ⨍ v in ballH h, fsLog h (nrmv h v) (h.pointOf y) = -(harmonic (n - 1) : ℝ) / 2

def FsLogPointOf.Statement : Prop :=
  ∀ (n : ℕ) (h : HermNorm n) (v : Fin n → ℂ) (y : EuclideanSpace ℂ (Fin n)),
    fsLog h (nrmv h v) (h.pointOf y) =
      fsLog (HermNorm.std n) (nrmv (HermNorm.std n) (h.mat *ᵥ v)) (fun i => y i)

def BallAverageLinear.Statement : Prop :=
  ∀ (n : ℕ) (h : HermNorm n) (φ : (Fin n → ℂ) → ℝ),
    (IntegrableOn (fun v => φ (h.mat *ᵥ v)) (ballH h) ↔ IntegrableOn φ (ballH (HermNorm.std n))) ∧
      ⨍ v in ballH h, φ (h.mat *ᵥ v) = ⨍ w in ballH (HermNorm.std n), φ w

def SphereMeanLinearBall.Statement : Prop :=
  ∀ (n : ℕ) (y : Fin n → ℂ), y ≠ 0 →
    IntegrableOn (fun w => fsLog (HermNorm.std n) (nrmv (HermNorm.std n) w) y) (ballH (HermNorm.std n)) ∧
      (∀ w, fsLog (HermNorm.std n) (nrmv (HermNorm.std n) w) y ≤ 0) ∧
      ⨍ w in ballH (HermNorm.std n), fsLog (HermNorm.std n) (nrmv (HermNorm.std n) w) y =
        -(harmonic (n - 1) : ℝ) / 2

def FsLogMeasurable.Statement : Prop :=
  ∀ (n : ℕ) (h : HermNorm n),
    Measurable (fun p : (Fin n → ℂ) × EuclideanSpace ℂ (Fin n) => fsLog h (nrmv h p.1) (h.pointOf p.2))

def ChowDegreePos.Statement : Prop :=
  ∀ (n k δ : ℕ) (W : Ideal (MvPolynomial (Fin n) ℂ)) (g : MvPolynomial (Fin k × Fin n) ℂ),
    0 < k → IsProjPrime W → IsChowForm W k g → Heights.IsMultiHomog δ g → 1 ≤ δ

def SpecFirstHomog.Statement : Prop :=
  ∀ (n k δ : ℕ) (f : MvPolynomial (Fin (k + 1) × Fin n) ℂ) (u : Fin n → ℂ),
    Heights.IsMultiHomog δ f → Heights.IsMultiHomog δ (specFirst f u)

def ChowFormAssoc.Statement : Prop :=
  ∀ (F : Type) [Field F] (n k : ℕ) (I : Ideal (MvPolynomial (Fin n) F))
    (g g' : MvPolynomial (Fin k × Fin n) F), IsChowForm I k g → IsChowForm I k g' →
      ∃ c : F, c ≠ 0 ∧ g' = C c * g

def ChowFormCycleAdd.Statement : Prop :=
  ∀ (F : Type) [Field F] (n k : ℕ) (Z₁ Z₂ : ProjCycle F n) (f₁ f₂ : MvPolynomial (Fin k × Fin n) F),
    IsChowFormCycle Z₁ k f₁ → IsChowFormCycle Z₂ k f₂ → IsChowFormCycle (Z₁ + Z₂) k (f₁ * f₂)

def ChowFormCycleSmul.Statement : Prop :=
  ∀ (F : Type) [Field F] (n k m : ℕ) (Z : ProjCycle F n) (f : MvPolynomial (Fin k × Fin n) F),
    IsChowFormCycle Z k f → IsChowFormCycle (m • Z) k (f ^ m)

namespace MahlerInhabit

end MahlerInhabit

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.StatementsMahler =====
