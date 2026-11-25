module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.WuDecayAll
public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGGlob
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyCut
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.SettingExistsOfGap
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.WFLStepsLocHNProps
public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.HaarSubSWire
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LintegralFinProd
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative
import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SchurTensInst
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstLeftInvMuInf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGOne, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGG

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGOne =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGOne", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.WuDecayAll\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LintegralFinProd\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGGlob\nimport Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S
open scoped InnerProductSpace ENNReal

namespace Formalism.L2.S.Pv.ConvG

open Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj Formalism.L2.SG.Pf.EnergyAbs Formalism.L2.S.Pv.EnergyAbs

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def Kv {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (w : D.what₂.Word) (v : InfinitePlace X.B.I.F)
    (a : Formalism.REAL.UJ (X.B.I.ε v)) : ℝ≥0∞ :=
  ‖X.Wloc w v a‖ₑ * ∫⁻ b, ‖⟪X.B.σ v (uMat a) (X.B.w v), X.B.σ v (uMat b) (X.B.w v)⟫_ℂ‖ₑ * ‖X.Wloc w v b‖ₑ
    ∂(Formalism.REAL.muG (X.B.I.ε v))

section Pf

variable {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D)

@[irreducible] def hv (v : InfinitePlace X.B.I.F) (a b : Formalism.REAL.UJ (X.B.I.ε v)) (w : D.what₂.Word) : ℝ≥0∞ :=
  ‖⟪X.B.σ v (uMat a) (X.B.w v), X.B.σ v (uMat b) (X.B.w v)⟫_ℂ‖ₑ * ‖X.Wloc w v b‖ₑ

theorem measurable_hv (w : D.what₂.Word) (v : InfinitePlace X.B.I.F) :
    Measurable (fun p : Formalism.REAL.UJ (X.B.I.ε v) × Formalism.REAL.UJ (X.B.I.ε v) => hv X v p.1 p.2 w) := by
  have hU := (X.ds v).2.2.1
  have hcont : Continuous (fun a : Formalism.REAL.UJ (X.B.I.ε v) => X.B.σ v (uMat a) (X.B.w v)) := by
    refine (hU.2.2 (X.B.w v)).comp_continuous ?_ ?_
    · exact Units.continuous_val.comp continuous_subtype_val
    · intro a; exact a.2
  have hW : Continuous (X.Wloc w v) := X.Wloc_cont w v
  have heq : (fun p : Formalism.REAL.UJ (X.B.I.ε v) × Formalism.REAL.UJ (X.B.I.ε v) => hv X v p.1 p.2 w) =
      fun p => ‖⟪X.B.σ v (uMat p.1) (X.B.w v), X.B.σ v (uMat p.2) (X.B.w v)⟫_ℂ‖ₑ * ‖X.Wloc w v p.2‖ₑ := by
    funext p
    unfold hv
    rfl
  rw [heq]
  exact ((hcont.comp continuous_fst).inner (hcont.comp continuous_snd)).enorm.measurable.mul
    (hW.comp continuous_snd).enorm.measurable

theorem Kv_eq (w : D.what₂.Word) (v : InfinitePlace X.B.I.F) (a : Formalism.REAL.UJ (X.B.I.ε v)) :
    Kv X w v a = ‖X.Wloc w v a‖ₑ * ∫⁻ b, hv X v a b w ∂(Formalism.REAL.muG (X.B.I.ε v)) := by
  simp only [Kv, hv]

theorem measurable_Kv (w : D.what₂.Word) (v : InfinitePlace X.B.I.F) : Measurable (Kv X w v) := by
  have h1 : Measurable (fun a => ∫⁻ b, hv X v a b w ∂(Formalism.REAL.muG (X.B.I.ε v))) :=
    (measurable_hv X w v).lintegral_prod_right'
  have h2 : Measurable (fun a => ‖X.Wloc w v a‖ₑ) := (X.Wloc_cont w v).enorm.measurable
  have heq : Kv X w v = fun a => ‖X.Wloc w v a‖ₑ * ∫⁻ b, hv X v a b w ∂(Formalism.REAL.muG (X.B.I.ε v)) :=
    funext (Kv_eq X w v)
  rw [heq]
  exact h2.mul h1

theorem H_eq (w : D.what₂.Word) (z y : X.B.I.Ginf) :
    ‖⟪X.B.σs z (X.B.tens X.B.w), X.B.σs y (X.B.tens X.B.w)⟫_ℂ‖ₑ * ‖X.Wu w y‖ₑ = ∏ v, hv X v (z v) (y v) w := by
  obtain ⟨hi, hσ, -⟩ := X.B.tens_spec
  rw [hσ, hσ, hi, Formalism.L2.SG.Pf.WuDec.enorm_Wu]
  have hprod : ‖∏ v, ⟪X.B.σ v (uMat (z v)) (X.B.w v), X.B.σ v (uMat (y v)) (X.B.w v)⟫_ℂ‖ₑ =
      ∏ v, ‖⟪X.B.σ v (uMat (z v)) (X.B.w v), X.B.σ v (uMat (y v)) (X.B.w v)⟫_ℂ‖ₑ := by
    simp only [enorm_eq_nnnorm, nnnorm_prod]
    push_cast
    rfl
  rw [hprod, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun v _ => ?_
  unfold hv
  rfl

theorem K_eq (w : D.what₂.Word) (z : X.B.I.Ginf) :
    ‖X.Wu w z‖ₑ * ∫⁻ y, ‖⟪X.B.σs z (X.B.tens X.B.w), X.B.σs y (X.B.tens X.B.w)⟫_ℂ‖ₑ * ‖X.Wu w y‖ₑ
        ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) = ∏ v, Kv X w v (z v) := by
  have hmu : Formalism.L2.SG.ProjRows.muInf X.B.I = Measure.pi fun v => Formalism.REAL.muG (X.B.I.ε v) := rfl
  have hm : ∀ v, Measurable (fun b => hv X v (z v) b w) := by
    intro v
    have h := measurable_hv X w v
    exact h.comp (measurable_const.prodMk measurable_id)
  simp_rw [H_eq X w z]
  rw [hmu, Formalism.L2.SG.RealObj.InfCut.ProductExactness.PiM.lintegral_pi_prod _ (fun v b => hv X v (z v) b w) hm,
    Formalism.L2.SG.Pf.WuDec.enorm_Wu, ← Finset.prod_mul_distrib]
  exact Finset.prod_congr rfl fun v _ => (Kv_eq X w v (z v)).symm

theorem Kv_inv (w : D.what₂.Word) (v : InfinitePlace X.B.I.F) (m : Formalism.REAL.UJ (X.B.I.ε v))
    (hm : m ∈ Formalism.L2.SG.Pf.WuDec.Nloc X w v) (h : Formalism.REAL.UJ (X.B.I.ε v)) (hh : h ∈ Formalism.L2.SG.Pf.WuDec.Hloc X w v)
    (x : Formalism.REAL.UJ (X.B.I.ε v)) : Kv X w v (m * h * x) = Kv X w v x := by
  have hg : m * h ∈ Formalism.L2.SG.Pf.WuDec.Sloc X w v :=
    Formalism.L2.SG.Pf.WuDec.mul_mem_Sloc (X := X) (u := w) v
      (Formalism.L2.SG.Pf.WuDec.Nloc_sub (X := X) (u := w) v hm)
      (Formalism.L2.SG.Pf.WuDec.Hloc_sub (X := X) (u := w) v hh)
  set g := m * h with hgdef
  have hn : ∀ y, ‖X.Wloc w v (g * y)‖ₑ = ‖X.Wloc w v y‖ₑ := fun y => by
    rw [← ofReal_norm_eq_enorm, ← ofReal_norm_eq_enorm,
      Formalism.L2.SG.Pf.WuDec.norm_Wloc_inv (X := X) (u := w) v hg y]
  have hinv : ∀ f : Formalism.REAL.UJ (X.B.I.ε v) → ℝ≥0∞,
      ∫⁻ b, f (g * b) ∂(Formalism.REAL.muG (X.B.I.ε v)) = ∫⁻ b, f b ∂(Formalism.REAL.muG (X.B.I.ε v)) := by
    intro f
    unfold Formalism.REAL.muG
    exact lintegral_mul_left_eq_self f g
  have hU := (X.ds v).2.2.1
  have hσmul : ∀ a b : Formalism.REAL.UJ (X.B.I.ε v),
      X.B.σ v (uMat (a * b)) = (X.B.σ v (uMat a)).comp (X.B.σ v (uMat b)) :=
    fun a b => hU.1.2 _ a.2 _ b.2
  have hiso : ∀ p q, ⟪X.B.σ v (uMat g) p, X.B.σ v (uMat g) q⟫_ℂ = ⟪p, q⟫_ℂ := by
    intro p q
    let L : X.B.H v →ₗᵢ[ℂ] X.B.H v :=
      ⟨(X.B.σ v (uMat g) : X.B.H v →ₗ[ℂ] X.B.H v), fun y => hU.2.1 _ g.2 y⟩
    exact L.inner_map_map p q
  rw [Kv_eq, Kv_eq, hn x]
  congr 1
  refine ((hinv (fun b => hv X v (g * x) b w)).symm).trans (lintegral_congr fun b => ?_)
  unfold hv
  rw [hn b]
  congr 2
  rw [hσmul g x, hσmul g b, ContinuousLinearMap.comp_apply, ContinuousLinearMap.comp_apply, hiso]

theorem inner_weil (w : D.what₂.Word) (z : X.B.I.Ginf) :
    ∫⁻ z', ∫⁻ s, ‖⟪X.B.σs z (X.B.tens X.B.w), X.B.σs s (X.B.σs z' (X.B.tens X.B.w))⟫_ℂ‖ₑ *
        ‖X.Wu w z‖ₑ * ‖X.Wu w z'‖ₑ ∂(muS X w) ∂(X.nuQ w) =
      ‖X.Wu w z‖ₑ * ∫⁻ y, ‖⟪X.B.σs z (X.B.tens X.B.w), X.B.σs y (X.B.tens X.B.w)⟫_ℂ‖ₑ * ‖X.Wu w y‖ₑ
        ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) := by
  obtain ⟨-, hσt, -⟩ := X.B.tens_spec
  set G : X.B.I.Ginf → ℝ≥0∞ := fun y =>
    ‖⟪X.B.σs z (X.B.tens X.B.w), X.B.σs y (X.B.tens X.B.w)⟫_ℂ‖ₑ * ‖X.Wu w y‖ₑ with hGdef
  have hGm : Measurable G := by
    have hG : G = fun y => ∏ v, hv X v (z v) (y v) w := funext (H_eq X w z)
    rw [hG]
    exact Finset.measurable_prod _ fun v _ =>
      (measurable_hv X w v).comp (measurable_const.prodMk (measurable_pi_apply v))
  have hmul : ∀ s z' : X.B.I.Ginf,
      X.B.σs s (X.B.σs z' (X.B.tens X.B.w)) = X.B.σs (s * z') (X.B.tens X.B.w) := by
    intro s z'
    rw [hσt, hσt, hσt]
    congr 1
    funext v
    have hU := (X.ds v).2.2.1
    rw [show uMat ((s * z') v) = uMat (s v) * uMat (z' v) from rfl, hU.1.2 _ (s v).2 _ (z' v).2]
    rfl
  have hS := Formalism.L2.SG.WuDecayPf.muSOn X w
  have hinner : ∀ z', ∫⁻ s, ‖⟪X.B.σs z (X.B.tens X.B.w), X.B.σs s (X.B.σs z' (X.B.tens X.B.w))⟫_ℂ‖ₑ *
      ‖X.Wu w z‖ₑ * ‖X.Wu w z'‖ₑ ∂(muS X w) = ‖X.Wu w z‖ₑ * ∫⁻ s, G (s * z') ∂(muS X w) := by
    intro z'
    rw [← lintegral_const_mul' _ _ enorm_ne_top]
    refine lintegral_congr_ae ?_
    filter_upwards [hS] with s hs
    have hn : ‖X.Wu w (s * z')‖ₑ = ‖X.Wu w z'‖ₑ := by
      rw [← ofReal_norm_eq_enorm, ← ofReal_norm_eq_enorm, _root_.Formalism.L2.SG.Pf.WuDec.norm_Wu_inv X w s hs z']
    rw [hmul, hGdef]
    simp only [hn]
    ring
  simp_rw [hinner]
  rw [lintegral_const_mul' _ _ enorm_ne_top]
  congr 1
  have hq := X.nuQ_weil w
  exact (hq G hGm).symm

end Pf

end Formalism.L2.S.Pv.ConvG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGOne =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGG =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGG", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGOne\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.EnergyCut\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.SettingExistsOfGap\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.WFLStepsLocHNProps\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGGlob\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.HaarSubSWire\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SchurTensInst\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstLeftInvMuInf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.unusedVariables false

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S
open scoped InnerProductSpace ENNReal

namespace Formalism.L2.S.Pv.ConvG

open Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj Formalism.L2.SG.Pf.EnergyAbs

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def LocQuadGG_G : Prop :=
  ∀ (D : D7), Formalism.L2.SG.ConcreteSettingExists.GapHyp D → ∀ (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word) (sc : ℝ),
    0 < sc → ∀ (v : InfinitePlace X.B.I.F) (cv : Fin (D.R.rS + 1) → ℂ),
      cv ∈ Formalism.L2.SG.RealObj.EnergyCut.GoodV (D := D) u u' → ∀ g : Formalism.REAL.UJ (X.B.I.ε v),
        Zhat (X.B.I.ε v) (frm X u sc v) (frm X u' sc v) (uMat g) = Matrix.diagonal cv →
        ∫⁻ x, ∫⁻ y, ‖⟪X.B.σ v (uMat x) (X.B.w v), X.B.σ v (uMat g) (X.B.σ v (uMat y) (X.B.w v))⟫_ℂ‖ₑ *
          ‖X.Wloc u v x‖ₑ * ‖X.Wloc u' v y‖ₑ ∂(Formalism.REAL.muG (X.B.I.ε v)) ∂(Formalism.REAL.muG (X.B.I.ε v)) < ⊤

def LocQuad1_G : Prop :=
  ∀ (D : D7), Formalism.L2.SG.ConcreteSettingExists.GapHyp D → ∀ (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (w : D.what₂.Word)
    (μS νl : ∀ v, Measure (Formalism.REAL.UJ (X.B.I.ε v))) (C : ℝ≥0∞),
    Formalism.L2.SG.Pf.WuDec.QuotWit X w μS νl C → ∀ v, ∫⁻ a, Kv X w v a ∂(νl v) < ⊤

def StepConvG : Prop :=
  ∀ (D : D7), Formalism.L2.SG.ConcreteSettingExists.GapHyp D → ∀ (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word) (sc : ℝ),
    0 < sc →
    (∀ c ∈ Good X u u', ∀ γ, HasDiag X u u' sc c γ →
      ∫⁻ z, ∫⁻ z', ∫⁻ s, ∫⁻ s', ‖⟪X.B.σs z (X.B.tens X.B.w),
          X.B.σs (s * γ * s'⁻¹) (X.B.σs z' (X.B.tens X.B.w))⟫_ℂ‖ₑ * ‖X.Wu u z‖ₑ * ‖X.Wu u' z'‖ₑ
        ∂(muS X u') ∂(muS X u) ∂(X.nuQ u') ∂(X.nuQ u) < ⊤) ∧
    ∀ w : D.what₂.Word,
      ∫⁻ z, ∫⁻ z', ∫⁻ s, ‖⟪X.B.σs z (X.B.tens X.B.w), X.B.σs s (X.B.σs z' (X.B.tens X.B.w))⟫_ℂ‖ₑ *
        ‖X.Wu w z‖ₑ * ‖X.Wu w z'‖ₑ ∂(muS X w) ∂(X.nuQ w) ∂(X.nuQ w) < ⊤

theorem double_integral_finite_diagonal {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (u u' : D.what₂.Word) (sc : ℝ) (hsc : 0 < sc)
    (hL : ∀ (v : InfinitePlace X.B.I.F) (cv : Fin (D.R.rS + 1) → ℂ),
      cv ∈ Formalism.L2.SG.RealObj.EnergyCut.GoodV (D := D) u u' → ∀ g : Formalism.REAL.UJ (X.B.I.ε v),
        Zhat (X.B.I.ε v) (frm X u sc v) (frm X u' sc v) (uMat g) = Matrix.diagonal cv →
        ∫⁻ x, ∫⁻ y, ‖⟪X.B.σ v (uMat x) (X.B.w v), X.B.σ v (uMat g) (X.B.σ v (uMat y) (X.B.w v))⟫_ℂ‖ₑ *
          ‖X.Wloc u v x‖ₑ * ‖X.Wloc u' v y‖ₑ ∂(Formalism.REAL.muG (X.B.I.ε v)) ∂(Formalism.REAL.muG (X.B.I.ε v)) < ⊤)
    (c : Cinf X) (hc : c ∈ Good X u u') (γ : X.B.I.Ginf) (hγ : HasDiag X u u' sc c γ) :
    ∫⁻ z, ∫⁻ z', ∫⁻ s, ∫⁻ s', ‖⟪X.B.σs z (X.B.tens X.B.w),
        X.B.σs (s * γ * s'⁻¹) (X.B.σs z' (X.B.tens X.B.w))⟫_ℂ‖ₑ * ‖X.Wu u z‖ₑ * ‖X.Wu u' z'‖ₑ
      ∂(muS X u') ∂(muS X u) ∂(X.nuQ u') ∂(X.nuQ u) < ⊤ := by
  obtain ⟨hH, -, -, -, hsf⟩ := Formalism.L2.S.Pv.HaarSubS.stepSubG_holds D X u
  obtain ⟨hH', -, -, -, hsf'⟩ := Formalism.L2.S.Pv.HaarSubS.stepSubG_holds D X u'
  obtain ⟨-, -, -, hiS, hsig, -, h0, -, -, -, hinv⟩ := hH
  obtain ⟨-, -, -, hiS', hsig', -, h0', -, -, -, hinv'⟩ := hH'
  have := hsig
  have := hsig'
  have := hsf
  have := hsf'
  have hrep := (Formalism.L2.S.Pv.SchurTens.stepSchurG_holds D X).1
  rw [quad_eq_GG (μ := Formalism.L2.SG.ProjRows.muInf X.B.I) (μS := muS X u) (μS' := muS X u') hrep
    (X.B.tens X.B.w) (X.Wu_spec u).2.2.1 (X.Wu_spec u').2.2.1 (X.nuQ_weil u) (X.nuQ_weil u') hinv hinv' h0 h0'
    hiS hiS' (_root_.Formalism.L2.SG.Pf.WuDec.norm_Wu_inv X u) (_root_.Formalism.L2.SG.Pf.WuDec.norm_Wu_inv X u') γ, lint_GG_prod]
  refine ENNReal.prod_lt_top fun v _ => ?_
  unfold phiV
  exact hL v (c v) (hc v) (γ v) (hγ v)

theorem convolution_integral_finite {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D) (w : D.what₂.Word)
    (hC : ∀ (μS νl : ∀ v, Measure (Formalism.REAL.UJ (X.B.I.ε v))) (C : ℝ≥0∞),
      Formalism.L2.SG.Pf.WuDec.QuotWit X w μS νl C → ∀ v, ∫⁻ a, Kv X w v a ∂(νl v) < ⊤) :
    ∫⁻ z, ∫⁻ z', ∫⁻ s, ‖⟪X.B.σs z (X.B.tens X.B.w), X.B.σs s (X.B.σs z' (X.B.tens X.B.w))⟫_ℂ‖ₑ *
      ‖X.Wu w z‖ₑ * ‖X.Wu w z'‖ₑ ∂(muS X w) ∂(X.nuQ w) ∂(X.nuQ w) < ⊤ := by
  obtain ⟨μSl, νl, C, hQ⟩ := Formalism.L2.SG.Pf.WuDec.quotAll_of Formalism.L2.SG.Closed.QuotProdK_holds
    Formalism.L2.SG.Pf.WFL.locHNProps_holds Formalism.L2.SG.Closed.NUnimodLoc_holds D X w
  have hQ' := hQ
  obtain ⟨hC0, hCt, -, hprod⟩ := hQ'
  simp only [inner_weil X w, K_eq X w]
  rw [hprod (fun v => Kv X w v) (fun v => measurable_Kv X w v)
    (fun v m hm h hh x => Kv_inv X w v m hm h hh x)]
  exact ENNReal.mul_lt_top (lt_of_le_of_ne le_top hCt) (ENNReal.prod_lt_top fun v _ => hC μSl νl C hQ v)

theorem stepConvG_of (hB : LocQuadGG_G) (hC : LocQuad1_G) : StepConvG := by
  intro D hG X u u' sc hsc
  exact ⟨fun c hc γ hγ => double_integral_finite_diagonal X u u' sc hsc (hB D hG X u u' sc hsc) c hc γ hγ,
    fun w => convolution_integral_finite X w (hC D hG X w)⟩

end Formalism.L2.S.Pv.ConvG
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGG =====
