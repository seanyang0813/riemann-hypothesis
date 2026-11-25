module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.ConvGGG
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.HidaSetting
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.LintegralFinProd
public import Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.SchurTensInst
import Formalism.SharpRestriction.CuspSpanNormBounds.UnimodularSchurMeasures.RightRegularIsometricMultiplicative
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.IUnfold

@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S
open scoped InnerProductSpace ENNReal

namespace Formalism.L2.S.Pv.ConvG

open Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj Formalism.L2.SG.Pf.EnergyAbs

section Glob

variable {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D)

@[irreducible] def phiV (u u' : D.what₂.Word) (γ : X.B.I.Ginf) (v : InfinitePlace X.B.I.F) (a b : Formalism.REAL.UJ (X.B.I.ε v)) :
    ℝ≥0∞ :=
  ‖⟪X.B.σ v (uMat a) (X.B.w v), X.B.σ v (uMat (γ v)) (X.B.σ v (uMat b) (X.B.w v))⟫_ℂ‖ₑ *
    ‖X.Wloc u v a‖ₑ * ‖X.Wloc u' v b‖ₑ

private theorem nnnorm_tensU_eq_prod (u : D.what₂.Word) (a : ∀ v, X.Vloc u v) :
    ‖X.tensU u a‖₊ = ∏ v, ‖a v‖₊ := by
  have h := X.tensU_inner u a a
  simp only [inner_self_eq_norm_sq_to_K] at h
  have h2 : ‖X.tensU u a‖ ^ 2 = (∏ v, ‖a v‖) ^ 2 := by
    rw [← Finset.prod_pow]
    exact_mod_cast h
  have h3 := (pow_left_inj₀ (norm_nonneg _) (Finset.prod_nonneg fun v _ => norm_nonneg (a v))
    two_ne_zero).1 h2
  ext
  push_cast
  exact h3

theorem phiGG_eq (u u' : D.what₂.Word) (γ x y : X.B.I.Ginf) :
    PhiGG X.B.σs (X.B.tens X.B.w) (X.Wu u) (X.Wu u') γ x y = ∏ v, phiV X u u' γ v (x v) (y v) := by
  obtain ⟨hin, hσ, -⟩ := X.B.tens_spec
  unfold PhiGG phiV
  simp only [hσ, hin, X.Wu_tens, enorm_eq_nnnorm, nnnorm_prod, nnnorm_tensU_eq_prod, ENNReal.ofNNReal_finsetProd,
    ← Finset.prod_mul_distrib]

theorem measurable_phiV (u u' : D.what₂.Word) (γ : X.B.I.Ginf) (v : InfinitePlace X.B.I.F) :
    Measurable (fun p : Formalism.REAL.UJ (X.B.I.ε v) × Formalism.REAL.UJ (X.B.I.ε v) => phiV X u u' γ v p.1 p.2) := by
  have hc : ∀ h : X.B.H v, Continuous (fun g : Formalism.REAL.UJ (X.B.I.ε v) => X.B.σ v (uMat g) h) :=
    (Formalism.L2.S.Pv.SchurTens.unitRep_of_URepOn (X.ds v).2.2.1).2.2.2
  have h1 : Measurable (fun p : Formalism.REAL.UJ (X.B.I.ε v) × Formalism.REAL.UJ (X.B.I.ε v) =>
      ‖⟪X.B.σ v (uMat p.1) (X.B.w v), X.B.σ v (uMat (γ v)) (X.B.σ v (uMat p.2) (X.B.w v))⟫_ℂ‖ₑ) :=
    (((hc _).comp continuous_fst).inner
      ((X.B.σ v (uMat (γ v))).continuous.comp ((hc _).comp continuous_snd))).enorm.measurable
  have h2 : Measurable (fun p : Formalism.REAL.UJ (X.B.I.ε v) × Formalism.REAL.UJ (X.B.I.ε v) => ‖X.Wloc u v p.1‖ₑ) :=
    ((X.Wloc_cont u v).comp continuous_fst).enorm.measurable
  have h3 : Measurable (fun p : Formalism.REAL.UJ (X.B.I.ε v) × Formalism.REAL.UJ (X.B.I.ε v) => ‖X.Wloc u' v p.2‖ₑ) :=
    ((X.Wloc_cont u' v).comp continuous_snd).enorm.measurable
  unfold phiV
  exact (h1.mul h2).mul h3

theorem lint_GG_prod (u u' : D.what₂.Word) (γ : X.B.I.Ginf) :
    ∫⁻ x, ∫⁻ y, PhiGG X.B.σs (X.B.tens X.B.w) (X.Wu u) (X.Wu u') γ x y
        ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) =
      ∏ v, ∫⁻ a, ∫⁻ b, phiV X u u' γ v a b ∂(Formalism.REAL.muG (X.B.I.ε v)) ∂(Formalism.REAL.muG (X.B.I.ε v)) := by
  have hm := measurable_phiV X u u' γ
  have h1 : ∀ x : X.B.I.Ginf, ∫⁻ y, PhiGG X.B.σs (X.B.tens X.B.w) (X.Wu u) (X.Wu u') γ x y
      ∂(Formalism.L2.SG.ProjRows.muInf X.B.I) =
        ∏ v, ∫⁻ b, phiV X u u' γ v (x v) b ∂(Formalism.REAL.muG (X.B.I.ε v)) := by
    intro x
    simp_rw [phiGG_eq X u u' γ x]
    exact Formalism.L2.SG.RealObj.InfCut.ProductExactness.PiM.lintegral_pi_prod (fun v => Formalism.REAL.muG (X.B.I.ε v))
      (fun v b => phiV X u u' γ v (x v) b) (fun v => (hm v).comp measurable_prodMk_left)
  simp_rw [h1]
  exact Formalism.L2.SG.RealObj.InfCut.ProductExactness.PiM.lintegral_pi_prod (fun v => Formalism.REAL.muG (X.B.I.ε v))
    (fun v a => ∫⁻ b, phiV X u u' γ v a b ∂(Formalism.REAL.muG (X.B.I.ε v))) (fun v => (hm v).lintegral_prod_right')

end Glob

end Formalism.L2.S.Pv.ConvG
