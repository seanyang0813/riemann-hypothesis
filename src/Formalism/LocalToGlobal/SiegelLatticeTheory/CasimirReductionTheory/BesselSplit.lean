module

public import Formalism.PeriodIntegrals.PhMeasCore
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Comp
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.Development
public import Formalism.SharpRestriction.CuspSpanNormBounds.CayleySignature
public import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms
import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.GardingBump
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.ContDiffMulRight, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.SmoothTranslate, Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.BesselSplit

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.ContDiffMulRight =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.ContDiffMulRight", "h": "module\n\nimport CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AdmissibleSmoothVectors.GardingBump\npublic import Formalism.PeriodIntegrals.PhMeasCore\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Comp\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open scoped ContDiff

noncomputable section

namespace PI.PhMeasCore.UnitaryGroupMassFormula

open PI.PhMeasCore

theorem mul_mem_UH {n : ℕ} {Hm a b : Matrix (Fin n) (Fin n) ℂ} (ha : a ∈ UH Hm) (hb : b ∈ UH Hm) :
    a * b ∈ UH Hm := by
  have ha' : aᴴ * Hm * a = Hm := ha
  have hb' : bᴴ * Hm * b = Hm := hb
  show (a * b)ᴴ * Hm * (a * b) = Hm
  calc (a * b)ᴴ * Hm * (a * b) = bᴴ * (aᴴ * Hm * a) * b := by
        simp only [conjTranspose_mul, Matrix.mul_assoc]
    _ = Hm := by rw [ha', hb']

section Smooth

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem contDiff_matMul {n : ℕ} :
    ContDiff ℝ ∞ (fun p : Matrix (Fin n) (Fin n) ℂ × Matrix (Fin n) (Fin n) ℂ => p.1 * p.2) := by
  apply CompanionTheory.D.gk.admitted.Gard.contDiff_mul

theorem contDiff_mulRight {n : ℕ} (g : Matrix (Fin n) (Fin n) ℂ) :
    ContDiff ℝ ∞ (fun x : Matrix (Fin n) (Fin n) ℂ => x * g) :=
  (@contDiff_matMul n).comp (contDiff_id.prodMk contDiff_const)

end Smooth

end PI.PhMeasCore.UnitaryGroupMassFormula

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.ContDiffMulRight =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.SmoothTranslate =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.SmoothTranslate", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.ContDiffMulRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open scoped ContDiff

noncomputable section

namespace PI.PhMeasCore.UnitaryGroupMassFormula

open PI.PhMeasCore

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {n : ℕ} {Hm : Matrix (Fin n) (Fin n) ℂ} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
  {σ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)}

theorem smooth_translate {w : H} (hmul : MulOnUH Hm σ) (hw : w ∈ smoothVecs Hm σ)
    {g : Matrix (Fin n) (Fin n) ℂ} (hg : g ∈ UH Hm) : σ g w ∈ smoothVecs Hm σ := by
  have hw' : PI.PhMeasCore.SmoothOnH Hm (fun x => σ x w) := hw
  show PI.PhMeasCore.SmoothOnH Hm (fun x => σ x (σ g w))
  intro g₀ hg₀
  obtain ⟨U, F, hU, hmem, hF, hFeq⟩ := hw' (g₀ * g) (mul_mem_UH (a := g₀) hg₀ hg)
  refine ⟨(fun x => x * g) ⁻¹' U, fun x => F (x * g),
    hU.preimage (contDiff_mulRight g).continuous, hmem, ?_, ?_⟩
  · exact hF.comp (contDiff_mulRight g).contDiffOn (fun x hx => hx)
  · intro x hx hxI
    have e : σ (x * g) w = F (x * g) := hFeq (x * g) hx (mul_mem_UH hxI hg)
    show σ x (σ g w) = F (x * g)
    rw [← e, hmul.2 x hxI g hg, ContinuousLinearMap.comp_apply]

end PI.PhMeasCore.UnitaryGroupMassFormula

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.SmoothTranslate =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.BesselSplit =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.BesselSplit", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.Development\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.CayleySignature\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.SmoothTranslationMeasure.SmoothTranslate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.BesselSplit

open Formalism.MainNotions.S Formalism.MainNotions.CayleySignature MeasureTheory Finset
open scoped InnerProductSpace

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

section Period

variable {k r : ℕ} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
  {Vp : Type} [NormedAddCommGroup Vp] [InnerProductSpace ℂ Vp]

end Period

section Chain

variable {k r : ℕ} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
  {Vp : Type} [NormedAddCommGroup Vp] [InnerProductSpace ℂ Vp]

end Chain

section Smooth

variable {k r : ℕ} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

private theorem conjTranspose_conj_mul_Jm_mul_conj_eq_Jm_of_mem_UH {k r : ℕ} {ε : Fin (2 * r + k + 1) → Bool} {P : Mat k r}
    (hPu : IsUnit P) (hPJ : Matrix.conjTranspose P * Formalism.REAL.Jm ε * P = Formalism.QuantumDeterminants.Hpk k r) {a : Mat k r}
    (ha : a ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) :
    Matrix.conjTranspose (P * a * P⁻¹) * Formalism.REAL.Jm ε * (P * a * P⁻¹) = Formalism.REAL.Jm ε := by
  have hdet : IsUnit P.det := (Matrix.isUnit_iff_isUnit_det P).1 hPu
  have h1 : P⁻¹ * P = 1 := Matrix.nonsing_inv_mul P hdet
  have h2 : P * P⁻¹ = 1 := Matrix.mul_nonsing_inv P hdet
  have hJ : Formalism.REAL.Jm ε = Matrix.conjTranspose P⁻¹ * Formalism.QuantumDeterminants.Hpk k r * P⁻¹ := by
    rw [← hPJ]
    rw [show Matrix.conjTranspose P⁻¹ * (Matrix.conjTranspose P * Formalism.REAL.Jm ε * P) * P⁻¹ = Matrix.conjTranspose (P * P⁻¹) * Formalism.REAL.Jm ε * (P * P⁻¹) by
      simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]]
    rw [h2, Matrix.conjTranspose_one, Matrix.one_mul, Matrix.mul_one]
  have hPP : Matrix.conjTranspose P * Matrix.conjTranspose P⁻¹ = 1 := by rw [← Matrix.conjTranspose_mul, h1, Matrix.conjTranspose_one]
  have ha' : Matrix.conjTranspose a * Formalism.QuantumDeterminants.Hpk k r * a = Formalism.QuantumDeterminants.Hpk k r := ha
  calc Matrix.conjTranspose (P * a * P⁻¹) * Formalism.REAL.Jm ε * (P * a * P⁻¹)
      = Matrix.conjTranspose P⁻¹ * Matrix.conjTranspose a * (Matrix.conjTranspose P * Matrix.conjTranspose P⁻¹) * Formalism.QuantumDeterminants.Hpk k r * (P⁻¹ * P) * a * P⁻¹ := by
        rw [hJ]; simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
    _ = Matrix.conjTranspose P⁻¹ * (Matrix.conjTranspose a * Formalism.QuantumDeterminants.Hpk k r * a) * P⁻¹ := by
        rw [hPP, h1]; simp only [Matrix.mul_one, Matrix.mul_assoc]
    _ = Formalism.REAL.Jm ε := by rw [ha', hJ]

theorem mulOnUH_of_dsHpk {ε : Fin (2 * r + k + 1) → Bool} {lam : Fin (2 * r + k + 1) → ℝ}
    {σ : Mat k r → (H →L[ℂ] H)} (hσ : IsDSHpk k r ε lam σ) :
    PI.PhMeasCore.UnitaryGroupMassFormula.MulOnUH (Formalism.QuantumDeterminants.Hpk k r) σ := by
  obtain ⟨P, ⟨⟨hPu, hPJ⟩, -⟩, hDS⟩ := hσ
  have hdet : IsUnit P.det := (Matrix.isUnit_iff_isUnit_det P).1 hPu
  have h1 : P⁻¹ * P = 1 := Matrix.nonsing_inv_mul P hdet
  obtain ⟨⟨hone, hmul⟩, -, -⟩ := hDS.2.2.1
  have conj : ∀ a : Mat k r, P⁻¹ * (P * a * P⁻¹) * P = a := fun a => by
    simp only [Matrix.mul_assoc]
    rw [h1, Matrix.mul_one, ← Matrix.mul_assoc, h1, Matrix.one_mul]
  have mem : ∀ a ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r), P * a * P⁻¹ ∈ UJset ε := fun a ha => conjTranspose_conj_mul_Jm_mul_conj_eq_Jm_of_mem_UH hPu hPJ ha
  refine ⟨?_, fun a ha b hb => ?_⟩
  · simpa [h1] using hone
  · have e := hmul _ (mem a ha) _ (mem b hb)
    have e3 : P * a * P⁻¹ * (P * b * P⁻¹) = P * (a * b) * P⁻¹ := by
      simp only [Matrix.mul_assoc]
      rw [← Matrix.mul_assoc P⁻¹ P, h1, Matrix.one_mul]
    simp only [e3, conj] at e
    exact e

theorem smooth_translate_ds {ε : Fin (2 * r + k + 1) → Bool} {lam : Fin (2 * r + k + 1) → ℝ}
    {σ : Mat k r → (H →L[ℂ] H)} (hσ : IsDSHpk k r ε lam σ) {w : H} (hw : w ∈ smoothVecs (k := k) (r := r) σ)
    {x : Mat k r} (hx : x ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) : σ x w ∈ smoothVecs (k := k) (r := r) σ := by
  exact PI.PhMeasCore.UnitaryGroupMassFormula.smooth_translate (mulOnUH_of_dsHpk hσ) hw hx

end Smooth

section GGP

end GGP

end Formalism.L2.SG.BesselSplit
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CasimirReductionTheory.BesselSplit =====
