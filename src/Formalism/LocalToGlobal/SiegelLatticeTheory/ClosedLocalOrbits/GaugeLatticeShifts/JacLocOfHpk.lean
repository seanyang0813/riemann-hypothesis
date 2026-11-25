module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacobianCoordinates
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.MeasurePreservingPiProd

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LintegralMulRightOfMap, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacLocOfHpk

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LintegralMulRightOfMap =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LintegralMulRightOfMap", "h": "module\n\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.MeasurePreservingPiProd\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacobianCoordinates\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open scoped ENNReal

namespace Formalism.L2.SG.RealObj.InfCut.JacobianCoordinates

open Formalism.L2.SG.RealObj Formalism.L2.SG.HidaSetting

namespace JL

theorem frameLoc_swap {n r k : ℕ} {ε : Fin n → Bool} {e : Fin r → Fin n → ℂ} {z z' : Fin n → ℂ} {T T' : ℝ}
    (hF : FrameLoc ε k e z z' T T') : FrameLoc ε k e z' z T' T :=
  ⟨hF.dim, hF.k_pos, hF.sig, hF.e_li, hF.ee, hF.ez', hF.ez, hF.zz', hF.zz, hF.T'_pos, hF.T_pos⟩

theorem lintegral_mul_right_of_map {n : ℕ} {ε : Fin n → Bool} (μ : Measure (Formalism.REAL.UJ ε))
    (t : Formalism.REAL.UJ ε) (hμ : μ.map (fun x => x * t) = μ) (F : Formalism.REAL.UJ ε → ℝ≥0∞) :
    ∫⁻ x, F (x * t) ∂μ = ∫⁻ x, F x ∂μ := by
  have hE : MeasurableEmbedding (fun x : Formalism.REAL.UJ ε => x * t) :=
    (MeasurableEquiv.mulRight t).measurableEmbedding
  calc ∫⁻ x, F (x * t) ∂μ = ∫⁻ x, F x ∂(μ.map (fun x => x * t)) := (hE.lintegral_map F).symm
    _ = ∫⁻ x, F x ∂μ := by rw [hμ]

theorem inner_dc {n : ℕ} {ε : Fin n → Bool} (μS μS' : Measure (Formalism.REAL.UJ ε))
    (s₁ s₁' g : Formalism.REAL.UJ ε) (h₁ : μS.map (fun x => x * s₁) = μS)
    (h₁' : μS'.map (fun x => x * s₁') = μS') (φ : Formalism.REAL.UJ ε → ℝ≥0∞) :
    ∫⁻ s, ∫⁻ s', φ (s * (s₁ * g * s₁'⁻¹) * s'⁻¹) ∂μS' ∂μS = ∫⁻ s, ∫⁻ s', φ (s * g * s'⁻¹) ∂μS' ∂μS := by
  have key : ∀ s s' : Formalism.REAL.UJ ε,
      φ (s * (s₁ * g * s₁'⁻¹) * s'⁻¹) = φ ((s * s₁) * g * (s' * s₁')⁻¹) := by
    intro s s'
    congr 1
    group
  have inner : ∀ x : Formalism.REAL.UJ ε,
      ∫⁻ s', φ (x * g * (s' * s₁')⁻¹) ∂μS' = ∫⁻ s', φ (x * g * s'⁻¹) ∂μS' := fun x =>
    lintegral_mul_right_of_map μS' s₁' h₁' (fun y => φ (x * g * y⁻¹))
  simp_rw [key, inner]
  exact lintegral_mul_right_of_map μS s₁ h₁ (fun x => ∫⁻ s', φ (x * g * s'⁻¹) ∂μS')

theorem measurableSet_goodLoc (r : ℕ) (T T' : ℝ) : MeasurableSet (GoodLoc (r := r) T T') := by
  apply Formalism.L2.SG.RealObj.InfCut.ProductExactness.measurableSet_goodLoc

end JL

end Formalism.L2.SG.RealObj.InfCut.JacobianCoordinates
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LintegralMulRightOfMap =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacLocOfHpk =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacLocOfHpk", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LintegralMulRightOfMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S
open scoped ENNReal ComplexConjugate
open Matrix

namespace Formalism.L2.SG.RealObj.InfCut.JacobianCoordinates.JL

open Formalism.L2.SG.RealObj Formalism.L2.SG.HidaSetting

def JacEx : Prop :=
  ∀ (n r k : ℕ) (ε : Fin n → Bool) (e : Fin r → Fin n → ℂ) (z z' : Fin n → ℂ) (T T' sc : ℝ),
    FrameLoc ε k e z z' T T' → 0 < sc →
    ∃ h : (Fin (r + 1) → ℂ) → Formalism.REAL.UJ ε, IsSecLoc ε sc e z z' T T' h ∧
      ∀ μS μS' : Measure (Formalism.REAL.UJ ε), IsHaarS (SLoc ε e z) μS → IsHaarS (SLoc ε e z') μS' →
        ∃ C, 0 < C ∧ DisintLoc ε k T T' μS μS' h C

def GoodPos {n r : ℕ} (ε : Fin n → Bool) (e : Fin r → Fin n → ℂ) (z z' : Fin n → ℂ) : Prop :=
  ∃ f : Fin r → Fin n → ℂ, (∀ a b, hJ ε (e a) (f b) = if a = b then 1 else 0) ∧ (∀ a b, hJ ε (f a) (f b) = 0) ∧
    ∀ a, hJ ε (f a) z = 0 ∧ hJ ε (f a) z' = 0

def JacExGood : Prop :=
  ∀ (n r k : ℕ) (ε : Fin n → Bool) (e : Fin r → Fin n → ℂ) (z z' : Fin n → ℂ) (T T' sc : ℝ),
    FrameLoc ε k e z z' T T' → GoodPos ε e z z' → 0 < sc →
    ∃ h : (Fin (r + 1) → ℂ) → Formalism.REAL.UJ ε, IsSecLoc ε sc e z z' T T' h ∧
      ∀ μS μS' : Measure (Formalism.REAL.UJ ε), IsHaarS (SLoc ε e z) μS → IsHaarS (SLoc ε e z') μS' →
        ∃ C, 0 < C ∧ DisintLoc ε k T T' μS μS' h C

def HpkEx : Prop :=
  ∀ (k r : ℕ) (z z' : Fin (2 * r + k + 1) → ℂ), 1 ≤ k → Formalism.QuantumDeterminants.inWb k r z → Formalism.QuantumDeterminants.inWb k r z' →
    0 < Formalism.QuantumDeterminants.Tz k r z → 0 < Formalism.QuantumDeterminants.Tz k r z' →
    ∀ μ μW μW' μN : Measure (Formalism.QuantumDeterminants.Mt k r), Formalism.MainNotions.S.IsHaarOn (Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) μ →
      Formalism.MainNotions.S.IsHaarOn (Formalism.QuantumDeterminants.UWset k r z) μW → Formalism.MainNotions.S.IsHaarOn (Formalism.QuantumDeterminants.UWset k r z') μW' →
      Formalism.MainNotions.S.IsHaarOn (Formalism.QuantumDeterminants.Nset k r) μN →
    ∀ μsec, Formalism.QuantumDeterminants.IsSection k r z z' μsec →
    ∃ K : ℝ, 0 < K ∧ ∀ φ : Formalism.QuantumDeterminants.Mt k r → ℝ≥0∞, Measurable φ →
      ∫⁻ x, φ x ∂μ = ENNReal.ofReal K * ∫⁻ q : (Fin r → ℂ) × ℂ,
        ENNReal.ofReal (Formalism.QuantumDeterminants.bcWeight k r (Formalism.QuantumDeterminants.Tz k r z) (Formalism.QuantumDeterminants.Tz k r z') q) *
          ∫⁻ s, ∫⁻ s', φ (fun i j => (Matrix.of s * Formalism.QuantumDeterminants.bigCell k r q.1 (μsec q.2) * (Matrix.of s')⁻¹) i j)
            ∂(Formalism.MainNotions.S.muS μW' μN) ∂(Formalism.MainNotions.S.muS μW μN)

def TransEx : Prop := HpkEx → _root_.Formalism.L2.SG.RealObj.InfCut.JacobianCoordinates.UnimodLoc → JacExGood

def DegRed : Prop := _root_.Formalism.L2.SG.RealObj.InfCut.JacobianCoordinates.UnimodLoc → JacExGood → JacEx

theorem jacLoc_of_ex (h1 : DiagDCLoc) (hR : _root_.Formalism.L2.SG.RealObj.InfCut.JacobianCoordinates.UnimodLoc) (hE : JacEx) : JacLoc := by
  intro n r k ε e z z' T T' sc hF hsc μS μS' hμ hμ' h hh
  obtain ⟨h0, hh0, hD⟩ := hE n r k ε e z z' T T' sc hF hsc
  obtain ⟨C, hC, hDC⟩ := hD μS μS' hμ hμ'
  have hF' : FrameLoc ε k e z' z T' T :=
    ⟨hF.dim, hF.k_pos, hF.sig, hF.e_li, hF.ee, hF.ez', hF.ez, hF.zz', hF.zz, hF.T'_pos, hF.T_pos⟩
  refine ⟨C, hC, fun φ hφ => ?_⟩
  rw [hDC φ hφ]
  refine setLIntegral_congr_fun (measurableSet_goodLoc r T T') ?_
  intro c hc
  obtain ⟨s₁, hs₁, s₁', hs₁', hcs⟩ :=
    h1 n r k ε e z z' T T' sc hF c hc (h0 c) (h c) (hh0 c hc) (hh c hc)
  beta_reduce
  congr 1
  rw [hcs]
  symm
  have eS := hR n r k ε e z z' T T' hF μS hμ s₁ hs₁
  have eS' := hR n r k ε e z' z T' T hF' μS' hμ' s₁' hs₁'
  have hmap : ∀ (a : Formalism.REAL.UJ ε) (ν : Measure (Formalism.REAL.UJ ε)),
      ν.map (fun x => x * a) = ν → ∀ F : Formalism.REAL.UJ ε → ℝ≥0∞, ∫⁻ x, F (x * a) ∂ν = ∫⁻ x, F x ∂ν := by
    intro a ν hν F
    have := lintegral_map_equiv F (MeasurableEquiv.mulRight a) (μ := ν)
    rw [show ⇑(MeasurableEquiv.mulRight a) = (fun x => x * a) from rfl, hν] at this
    exact this.symm
  calc ∫⁻ s, ∫⁻ s', φ (s * (s₁ * h0 c * s₁'⁻¹) * s'⁻¹) ∂μS' ∂μS
      = ∫⁻ s, ∫⁻ s', φ ((s * s₁) * h0 c * (s' * s₁')⁻¹) ∂μS' ∂μS := by
        simp only [_root_.mul_inv_rev, mul_assoc]
    _ = ∫⁻ s, ∫⁻ s', φ (s * h0 c * (s' * s₁')⁻¹) ∂μS' ∂μS :=
        hmap s₁ μS eS (fun s => ∫⁻ s', φ (s * h0 c * (s' * s₁')⁻¹) ∂μS')
    _ = ∫⁻ s, ∫⁻ s', φ (s * h0 c * s'⁻¹) ∂μS' ∂μS := by
        congr 1
        funext s
        exact hmap s₁' μS' eS' (fun s' => φ (s * h0 c * s'⁻¹))

end Formalism.L2.SG.RealObj.InfCut.JacobianCoordinates.JL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacLocOfHpk =====
