module

public import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.CoeffOneLNe
public import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSo
public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.IsDiscriminantTwelfthRootOfIdealLattice
public import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MemWOfNorm
public import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSp
public import Formalism.SharpRestriction.GlobalSchurBounds.GL3Theta
public import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSq
public import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSu
public import Formalism.LocalRingCardinality.DataKerP
public import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.ExistsCoprimePowEqOne
public import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.StmtEndIntWHolds
public import Formalism.LocalToGlobal.InertKernelTheory.DefsBeW
public import Formalism.LocalToGlobal.InertKernelTheory.DefsSigma
public import Formalism.LocalToGlobal.InertKernelTheory.StatementBeW
public import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.BeWInertOfSigma
public import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.HurwitzSubstituteTwoSeries
public import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.PadicNormTwoHundredSixteenEqOneOfFiveLe
public import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.EndInt
public import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.PhNorm
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.SigmaAlg

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.InertKernelTheory.StatementBe, Formalism.SharpRestriction.AdmissibleParameterJoins.GandSt, Formalism.SharpRestriction.AdmissibleParameterJoins.GandSv, Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.BeProp, Formalism.LocalToGlobal.InertKernelTheory.FinalA, Formalism.LocalToGlobal.InertKernelTheory.AdmissibleEleventhInert

-- ===== clump member: Formalism.LocalToGlobal.InertKernelTheory.StatementBe =====
-- clump-header: {"m": "Formalism.LocalToGlobal.InertKernelTheory.StatementBe", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.CoeffOneLNe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.KerInert

open MvPowerSeries Formalism.MainNotions.GL3Theta Formalism.L2.G.Pend

def BeWAt (D : Formalism.BasicNotions.D7) {p : ℕ} [Fact p.Prime] (g : G1 p) : Prop :=
  CoefWf (g.be (Xv 0) (Xv 1) : MvPowerSeries (Fin 2) ℂ_[p]) ∧
    SimeqW (g.be (g.add (Xv 0) (Xv 1)) (Xv 2) : MvPowerSeries (Fin 3) ℂ_[p])
      (g.be (Xv 0) (Xv 2) + g.be (Xv 1) (Xv 2)) ∧
    SimeqW (g.be (Xv 0) (g.add (Xv 1) (Xv 2)) : MvPowerSeries (Fin 3) ℂ_[p])
      (g.be (Xv 0) (Xv 1) + g.be (Xv 0) (Xv 2)) ∧
    ∀ α ∈ OKp D g.lam,
      SimeqW (g.be (g.mulBy α.1 (Xv 0)) (Xv 1) : MvPowerSeries (Fin 2) ℂ_[p])
        (g.be (Xv 0) (g.mulBy α.2 (Xv 1)))

def BePropOfBeW : Prop :=
  ∀ (D : Formalism.BasicNotions.D7) (cc : Ideal (NumberField.RingOfIntegers D.host.K)) (δ : ℂ) (p : ℕ) [Fact p.Prime] (g : G1 p)
    (hLT : LTIso g), At D cc δ g → 5 ≤ p → InertK D p → ModelOverW g.lam g.abelian₂ g.C → BeWAt D g →
    Formalism.MainNotions.FormalGroupSystem.BeProp p (beLT hLT)

def Adm2cAt : Prop :=
  ∀ (D : Formalism.BasicNotions.D7) (cc : Ideal (NumberField.RingOfIntegers D.host.K)) (δ : ℂ) (p : ℕ) [Fact p.Prime] (g : G1 p)
    (hLT : LTIso g), At D cc δ g → 5 ≤ p → InertK D p → ModelOverW g.lam g.abelian₂ g.C → BeWAt D g →
    ∀ (X : Formalism.MainNotions.FormalGroupSystem.Sys p) (Y : Formalism.MainNotions.FormalGroupSystem.Pend X), Y.be = beLT hLT → Formalism.MainNotions.FormalGroupSystem.adm2c D X Y

end Formalism.L2.KerInert
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.InertKernelTheory.StatementBe =====

-- ===== clump member: Formalism.SharpRestriction.AdmissibleParameterJoins.GandSt =====
-- clump-header: {"m": "Formalism.SharpRestriction.AdmissibleParameterJoins.GandSt", "h": "module\n\npublic import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSo\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.IsDiscriminantTwelfthRootOfIdealLattice\npublic import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MemWOfNorm\npublic import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.GlobalSchurBounds.GL3Theta\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.J

open MvPowerSeries Formalism.MainNotions.G Formalism.BasicNotions Formalism.MainNotions.FormalGroupSystem Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.GL3Theta NumberField

section W

variable {p : ℕ} [Fact p.Prime]

theorem mem_W_of_norm (i0 : K0 p →+* ℂ_[p]) (hW : ∀ x : WW p, ‖i0 (algebraMap (WW p) (K0 p) x)‖ ≤ 1) (x : K0 p)
    (hx : ‖i0 x‖ ≤ 1) : ∃ w : WW p, algebraMap (WW p) (K0 p) w = x := by
  first | (apply UpperTheory.Reformulated.B.Qi32.mem_W_of_norm <;> assumption)

theorem cc_Ex {ι K : Type} [Field K] [CharZero K] {f : MvPowerSeries ι K} (hf : constantCoeff f = 0) :
    constantCoeff (Ex f) = 1 := by
  rw [← coeff_zero_eq_constantCoeff_apply, coeff_Ex hf]
  simp

theorem cc_lgE (Kc : Type) [Field Kc] [Algebra (K0 p) Kc] (iC : Kc →+* ℂ_[p])
    (th : PowerSeries (WW p)) (th_zero : PowerSeries.constantCoeff th = 0) (lgE : PowerSeries ℂ_[p])
    (th_log : PowerSeries.subst
      (PowerSeries.map (iC.comp ((algebraMap (K0 p) Kc).comp (algebraMap (WW p) (K0 p)))) th)
      (PowerSeries.map (iC.comp (algebraMap (K0 p) Kc)) (logF p)) = lgE) : PowerSeries.constantCoeff lgE = 0 := by
  rw [← th_log]
  exact PowerSeries.constantCoeff_subst_eq_zero (cc_pmap _ th_zero) _ (cc_pmap _ (cc_logF p))

theorem simeq_of {ι : Type} (Kc : Type) [Field Kc] [Algebra (K0 p) Kc] (Oc : Subring Kc)
    (witt_mem_integers_Cp : ∀ x : WW p, algebraMap (K0 p) Kc (algebraMap (WW p) (K0 p) x) ∈ Oc)
    (iC : Kc →+* ℂ_[p]) (iC_int : ∀ x : Kc, x ∈ Oc ↔ ‖iC x‖ ≤ 1)
    (th : PowerSeries (WW p)) (th_zero : PowerSeries.constantCoeff th = 0) (th_unit : IsUnit (PowerSeries.coeff 1 th))
    (lgE : PowerSeries ℂ_[p])
    (th_log : PowerSeries.subst
      (PowerSeries.map (iC.comp ((algebraMap (K0 p) Kc).comp (algebraMap (WW p) (K0 p)))) th)
      (PowerSeries.map (iC.comp (algebraMap (K0 p) Kc)) (logF p)) = lgE)
    (f g : MvPowerSeries ι (K0 p)) (hfg : constantCoeff (f - g) = 0)
    (h : IntegralMv (expMv (subst (diagS lgE) (map (iC.comp (algebraMap (K0 p) Kc)) (f - g))))) :
    FormalGroupSystem.Simeq p f g := by
  have : CharZero Kc := charZero_of_injective_algebraMap (algebraMap (K0 p) Kc).injective
  have hl0 := cc_lgE Kc iC th th_zero lgE th_log
  refine ⟨hfg, ?_⟩
  obtain ⟨U, hU1, hU2⟩ := K1core Kc Oc witt_mem_integers_Cp iC iC_int th th_zero th_unit lgE th_log (f - g) hfg 1 (by
    have h1 : subst (diagS lgE) (1 : MvPowerSeries ι ℂ_[p]) = 1 := by
      rw [← coe_substAlgHom (hs_dg hl0), map_one]
    rw [map_one, h1, one_mul]
    exact h)
  have hU : U = map (algebraMap (K0 p) Kc) (Ex (f - g)) := by
    have h1 : map (algebraMap (K0 p) Kc) (Ex (f - g)) * (map (algebraMap (K0 p) Kc) (expS p (-(f - g))) * U) =
        map (algebraMap (K0 p) Kc) (Ex (f - g)) := by rw [← hU1, mul_one]
    rw [expS_eq_Ex p (by rw [map_neg, hfg, neg_zero]), ← mul_assoc, ← map_mul, mul_comm (Ex (f - g)), Ex_neg_mul hfg,
      map_one, one_mul] at h1
    exact h1
  have e0 : constantCoeff (inParam p (f - g)) = 0 :=
    constantCoeff_subst_eq_zero (hs_dg (cc_logF p)) (cc_dg (cc_logF p)) hfg
  have hP : inParamK p Kc U = map (algebraMap (K0 p) Kc) (expS p (inParam p (f - g))) := by
    rw [expS_eq_Ex p e0, hU]
    show subst (diagS (PowerSeries.map (algebraMap (K0 p) Kc) (logF p))) (map (algebraMap (K0 p) Kc) (Ex (f - g))) =
      map (algebraMap (K0 p) Kc) (Ex (subst (diagS (logF p)) (f - g)))
    rw [← subst_Ex (hs_dg (cc_logF p)) hfg, map_subst (hs_dg (cc_logF p))]
    congr 1
    funext i
    rw [map_dg]
  have hm : ∀ n, ∃ w : WW p, algebraMap (WW p) (K0 p) w = coeff n (expS p (inParam p (f - g))) := fun n =>
    mem_W_of_norm (iC.comp (algebraMap (K0 p) Kc)) (fun x => (iC_int _).mp (witt_mem_integers_Cp x)) _ (by
      have h3 := hU2 n
      rw [hP, coeff_map] at h3
      exact (iC_int _).mp h3)
  choose G hG using hm
  let Gs : MvPowerSeries ι (WW p) := G
  have hGs : map (algebraMap (WW p) (K0 p)) Gs = expS p (inParam p (f - g)) := by
    ext n
    rw [coeff_map]
    exact hG n
  refine ⟨Gs - 1, ?_, ?_⟩
  · have h4 : algebraMap (WW p) (K0 p) (constantCoeff Gs) = 1 := by
      rw [← constantCoeff_map, hGs, expS_eq_Ex p e0, cc_Ex e0]
    rw [map_sub, map_one, sub_eq_zero]
    exact IsFractionRing.injective (WW p) (K0 p) (by rw [h4, map_one])
  · rw [map_sub, map_one, add_sub_cancel, hGs]

end W

end Formalism.MainNotions.J
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.AdmissibleParameterJoins.GandSt =====

-- ===== clump member: Formalism.SharpRestriction.AdmissibleParameterJoins.GandSv =====
-- clump-header: {"m": "Formalism.SharpRestriction.AdmissibleParameterJoins.GandSv", "h": "module\n\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GL3Theta\npublic import Formalism.SharpRestriction.GrowthBounds.FormalGroupSystem\npublic import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSq\npublic import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSu\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalRingCardinality.DataKerP\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.J

open MvPowerSeries Formalism.MainNotions.G Formalism.BasicNotions Formalism.MainNotions.FormalGroupSystem Formalism.MainNotions.TaylorLogMetric Formalism.MainNotions.GL3Theta NumberField

section Ab

variable {p : ℕ} [Fact p.Prime] (g : G1 p)

theorem cc_ph : PowerSeries.constantCoeff g.ph = 0 := by
  rw [Formalism.MainNotions.GL3Theta.G1.ph.eq_1, map_neg, neg_eq_zero]
  show Formalism.MainNotions.GL3Theta.logMv _ 0 = 0
  rw [Formalism.MainNotions.GL3Theta.logMv.eq_1]
  simp

theorem be_ab (i0 : K0 p →+* ℂ_[p]) (be : MvPowerSeries (Fin 2) (K0 p)) (ep : ℂ_[p]) (hep : ep ≠ 0)
    (hex : PowerSeries.constantCoeff g.ex = 0) (hinv : PowerSeries.subst g.ex g.l = PowerSeries.X)
    (be_tie : subst ![C ep * g.lg (X (0 : Fin 2)), C ep * g.lg (X (1 : Fin 2))] (map i0 be) =
      g.be (X (0 : Fin 2)) (X (1 : Fin 2)))
    (n : Fin 2 →₀ ℕ) (hn : coeff n be ≠ 0) : 1 ≤ n 0 ∧ 1 ≤ n 1 := by
  classical
  set c : ℂ_[p] := ep⁻¹ with hc
  set ψ : PowerSeries ℂ_[p] :=
    PowerSeries.subst (PowerSeries.subst (PowerSeries.C c * PowerSeries.X : PowerSeries ℂ_[p]) g.ex) g.ph with hψ
  have hcX : PowerSeries.constantCoeff (PowerSeries.C c * PowerSeries.X : PowerSeries ℂ_[p]) = 0 := by simp
  have hE : PowerSeries.constantCoeff (PowerSeries.subst (PowerSeries.C c * PowerSeries.X : PowerSeries ℂ_[p]) g.ex) = 0 :=
    PowerSeries.constantCoeff_subst_eq_zero hcX _ hex
  have hψ0 : PowerSeries.coeff 0 ψ = 0 := by
    rw [PowerSeries.coeff_zero_eq_constantCoeff_apply]
    exact PowerSeries.constantCoeff_subst_eq_zero hE _ (cc_ph g)
  have key : ∀ z : MvPowerSeries (Fin 2) ℂ_[p], constantCoeff z = 0 →
      g.phAt (g.pt (C c * z)) = PowerSeries.subst z ψ := by
    intro z hz
    have hz' := PowerSeries.HasSubst.of_constantCoeff_zero hz
    rw [hψ, PowerSeries.subst_comp_subst_apply (PowerSeries.HasSubst.of_constantCoeff_zero' hE) hz',
      PowerSeries.subst_comp_subst_apply (PowerSeries.HasSubst.of_constantCoeff_zero' hcX) hz',
      PowerSeries.subst_mul hz', PowerSeries.subst_C, PowerSeries.subst_X hz']
    rfl
  have h0 : ∀ i : Fin 2, constantCoeff (C c * X i : MvPowerSeries (Fin 2) ℂ_[p]) = 0 := by intro i; simp
  have hB : map i0 be = PowerSeries.subst (X 0 + X 1 : MvPowerSeries (Fin 2) ℂ_[p]) ψ -
      PowerSeries.subst (X 0 : MvPowerSeries (Fin 2) ℂ_[p]) ψ -
      PowerSeries.subst (X 1 : MvPowerSeries (Fin 2) ℂ_[p]) ψ := by
    have h := be_at g i0 be ep hex be_tie (cc_pt g hex (h0 0)) (cc_pt g hex (h0 1))
    rw [lg_pt g hex hinv (h0 0), lg_pt g hex hinv (h0 1)] at h
    have e : (![C ep * (C c * X 0), C ep * (C c * X 1)] : Fin 2 → MvPowerSeries (Fin 2) ℂ_[p]) = X := by
      funext s
      fin_cases s
      · show C ep * (C c * X 0) = X 0
        rw [← mul_assoc, ← map_mul, hc, mul_inv_cancel₀ hep, map_one, one_mul]
      · show C ep * (C c * X 1) = X 1
        rw [← mul_assoc, ← map_mul, hc, mul_inv_cancel₀ hep, map_one, one_mul]
    rw [e, subst_self] at h
    have h' : map i0 be = g.be (g.pt (C c * X 0)) (g.pt (C c * X 1)) := h
    rw [h']
    unfold G1.be G1.add
    rw [lg_pt g hex hinv (h0 0), lg_pt g hex hinv (h0 1), ← mul_add, key _ (by simp), key _ (by simp),
      key _ (by simp)]
  have hco : i0 (coeff n be) = ((n 0 + n 1).choose (n 0) : ℂ_[p]) * PowerSeries.coeff (n 0 + n 1) ψ -
      (if n = Finsupp.single 0 (n 0) then PowerSeries.coeff (n 0) ψ else 0) -
      (if n = Finsupp.single 1 (n 1) then PowerSeries.coeff (n 1) ψ else 0) := by
    rw [← coeff_map, hB, map_sub, map_sub, PowerSeries.coeff_subst_X_zero_add_X_one, PowerSeries.coeff_subst_single,
      PowerSeries.coeff_subst_single]
  by_contra hcon
  apply hn
  apply i0.injective
  rw [map_zero, hco]
  have hcase : n 0 = 0 ∨ n 1 = 0 := by
    by_contra h
    push Not at h
    exact hcon ⟨Nat.one_le_iff_ne_zero.2 h.1, Nat.one_le_iff_ne_zero.2 h.2⟩
  rcases hcase with h | h
  · have e1 : n = Finsupp.single 1 (n 1) := by
      ext i
      fin_cases i
      · simp [h]
      · simp
    rw [if_pos e1, h, zero_add, Nat.choose_zero_right, Nat.cast_one, one_mul]
    split_ifs with h2
    · have : n 1 = 0 := by rw [h2]; simp
      rw [this, hψ0]; ring
    · ring
  · have e1 : n = Finsupp.single 0 (n 0) := by
      ext i
      fin_cases i
      · simp
      · simp [h]
    rw [if_pos e1, h, add_zero, Nat.choose_self, Nat.cast_one, one_mul]
    split_ifs with h2
    · have : n 0 = 0 := by rw [h2]; simp
      rw [this, hψ0]; ring
    · ring

end Ab

variable {D : D7} {Gt : GatTies D} {Tw : TwForms D} {u : D.what₂.Word} {w : D.what₂.places.Pl}
    [Fact (D.what₂.places.resChar w).Prime] {h : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)}
    {T : Formalism.MainNotions.TaylorLogMetric.Tor D} {e : Formalism.MainNotions.TaylorLogMetric.FamE D} {X : Sys (D.what₂.places.resChar w)} {Y : Pend X}

end Formalism.MainNotions.J
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.AdmissibleParameterJoins.GandSv =====

-- ===== clump member: Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.BeProp =====
-- clump-header: {"m": "Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.BeProp", "h": "module\n\npublic import Formalism.LocalToGlobal.InertKernelTheory.StatementBe\npublic import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.ExistsCoprimePowEqOne\nimport Formalism.SharpRestriction.AdmissibleParameterJoins.GandSq\npublic import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSt\npublic import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSu\npublic import Formalism.SharpRestriction.AdmissibleParameterJoins.GandSv\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GlobalRankLatticeProofs.UnitTraceSumBounds.StmtEndIntWHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.KerInert

open MvPowerSeries Formalism.MainNotions.GL3Theta Formalism.L2.G.Pend Formalism.MainNotions.J

section Witt

variable {p : ℕ} [hp : Fact p.Prime]

theorem sig_teich (y : kb p) :
    Formalism.MainNotions.FormalGroupSystem.sigW p (WittVector.teichmuller p y) = WittVector.teichmuller p (y ^ p) := by
  ext n
  show (WittVector.frobenius (WittVector.teichmuller p y)).coeff n = _
  rw [WittVector.coeff_frobenius_charP]
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · rw [WittVector.teichmuller_coeff_zero, WittVector.teichmuller_coeff_zero]
  · rw [WittVector.teichmuller_coeff_pos p y n hn, WittVector.teichmuller_coeff_pos p _ n hn,
      zero_pow hp.out.ne_zero]

def pairHom (p : ℕ) [Fact p.Prime] : WW p →+* ℂ_[p] × ℂ_[p] :=
  RingHom.prod (wToC p) ((wToC p).comp (Formalism.MainNotions.FormalGroupSystem.sigW p))

def gensP (p : ℕ) [Fact p.Prime] : Set (ℂ_[p] × ℂ_[p]) :=
  {x : ℂ_[p] × ℂ_[p] | ∃ ζ : ℂ_[p], ζ ^ (p ^ 2 - 1) = 1 ∧ x = (ζ, ζ ^ p)}

theorem teich_mem {y : kb p} (hy : y ^ (p ^ 2) = y) :
    pairHom p (WittVector.teichmuller p y) ∈ Subring.closure (gensP p) := by
  by_cases h0 : y = 0
  · rw [h0, WittVector.teichmuller_zero, map_zero]
    exact zero_mem _
  · apply Subring.subset_closure
    refine ⟨wToC p (WittVector.teichmuller p y), ?_, ?_⟩
    · have h1 : y ^ (p ^ 2 - 1) * y = 1 * y := by
        rw [← pow_succ, Nat.sub_add_cancel (Nat.one_le_pow _ _ hp.out.pos), hy, one_mul]
      have h2 : y ^ (p ^ 2 - 1) = 1 := mul_right_cancel₀ h0 h1
      rw [← map_pow, ← map_pow, h2, map_one, map_one]
    · show (wToC p (WittVector.teichmuller p y), wToC p (Formalism.MainNotions.FormalGroupSystem.sigW p (WittVector.teichmuller p y))) = _
      rw [sig_teich, map_pow, map_pow]

theorem coeff_fix {α : WW p} (hα : (Formalism.MainNotions.FormalGroupSystem.sigW p)^[2] α = α) (i : ℕ) :
    α.coeff i ^ (p ^ 2) = α.coeff i := by
  have h2 : Formalism.MainNotions.FormalGroupSystem.sigW p (Formalism.MainNotions.FormalGroupSystem.sigW p α) = α := hα
  have h3 := congrArg (fun x : WW p => x.coeff i) h2
  have e : ∀ x : WW p, (Formalism.MainNotions.FormalGroupSystem.sigW p x).coeff i = x.coeff i ^ p := fun x =>
    WittVector.coeff_frobenius_charP (p := p) x i
  rw [e, e, ← pow_mul, ← sq] at h3
  exact h3

theorem pair_mem_W2pair {α : WW p} (hα : (Formalism.MainNotions.FormalGroupSystem.sigW p)^[2] α = α) :
    (wToC p α, wToC p (Formalism.MainNotions.FormalGroupSystem.sigW p α)) ∈ W2pair p := by
  show pairHom p α ∈ closure (Subring.closure (gensP p) : Set (ℂ_[p] × ℂ_[p]))
  rw [Metric.mem_closure_iff]
  intro ε hε
  obtain ⟨n, hn⟩ := exists_pow_lt_of_lt_one hε (r_lt_one p)
  obtain ⟨c, hc⟩ := WittVector.dvd_sub_sum_teichmuller_iterateFrobeniusEquiv_coeff α n
  set S := ∑ i ∈ Finset.Iic n, WittVector.teichmuller p
    (((_root_.frobeniusEquiv (kb p) p).symm ^ i) (α.coeff i)) * (p : WW p) ^ i with hS
  refine ⟨pairHom p S, ?_, ?_⟩
  · set_option synthInstance.maxHeartbeats 100000 in
    rw [hS, map_sum]
    refine Subring.sum_mem _ fun i _ => ?_
    rw [map_mul, map_pow, map_natCast]
    refine Subring.mul_mem _ (teich_mem ?_) (Subring.pow_mem _ (natCast_mem _ p) i)
    rw [← map_pow, coeff_fix hα]
  · rw [dist_eq_norm, ← map_sub, hc, Prod.norm_def]
    have h1 : ‖wToC p ((p : WW p) ^ (n + 1) * c)‖ ≤ ((p : ℝ)⁻¹) ^ (n + 1) := norm_wToC_pow_mul p (n + 1) c
    have h2 : ‖wToC p (Formalism.MainNotions.FormalGroupSystem.sigW p ((p : WW p) ^ (n + 1) * c))‖ ≤ ((p : ℝ)⁻¹) ^ (n + 1) := by
      rw [map_mul, map_pow, map_natCast]
      exact norm_wToC_pow_mul p (n + 1) _
    have h3 : ((p : ℝ)⁻¹) ^ (n + 1) ≤ ((p : ℝ)⁻¹) ^ n :=
      pow_le_pow_of_le_one (r_nonneg p) (r_lt_one p).le (Nat.le_succ n)
    exact lt_of_le_of_lt (max_le (h1.trans h3) (h2.trans h3)) hn

theorem okp_of (D : Formalism.BasicNotions.D7) (lam : Formalism.MainNotions.TaylorLogMetric.Qbar →+* ℂ_[p]) (h2 : p ≠ 2) (hin : InertK D p) {α : WW p}
    (hα : (Formalism.MainNotions.FormalGroupSystem.sigW p)^[2] α = α) : (wToC p α, wToC p (Formalism.MainNotions.FormalGroupSystem.sigW p α)) ∈ OKp D lam := by
  rw [Formalism.MainNotions.Ext.okpInert_holds D p lam h2 hin]
  exact pair_mem_W2pair hα

end Witt

section Be

variable {p : ℕ} [hp : Fact p.Prime]

theorem integralMv_of_integralW {σ : Type*} {F : MvPowerSeries σ ℂ_[p]} (h : IntegralW F) : Formalism.MainNotions.TaylorLogMetric.IntegralMv F := by
  intro n
  obtain ⟨w, hw⟩ := (mem_Wp_iff p _).1 (h n)
  show ‖_‖ ≤ 1
  rw [← hw]
  exact norm_wToC_le p w

theorem be_props_at (D : Formalism.BasicNotions.D7) (g : G1 p) (hLT : LTIso g) (hOk : g.Ok) (h2 : p ≠ 2) (hin : InertK D p)
    (hM : ModelOverW g.lam g.abelian₂ g.C) (hB : BeWAt D g) :
    (∀ n : Fin 2 →₀ ℕ, coeff n (beLT hLT) ≠ 0 → 1 ≤ n 0 ∧ 1 ≤ n 1) ∧
    Formalism.MainNotions.FormalGroupSystem.Simeq p (Formalism.MainNotions.FormalGroupSystem.sub2 p (beLT hLT) (MvPowerSeries.X 0 + MvPowerSeries.X 1) (MvPowerSeries.X 2) -
              Formalism.MainNotions.FormalGroupSystem.sub2 p (beLT hLT) (MvPowerSeries.X 0) (MvPowerSeries.X 2) -
              Formalism.MainNotions.FormalGroupSystem.sub2 p (beLT hLT) (MvPowerSeries.X 1) (MvPowerSeries.X 2))
      (0 : MvPowerSeries (Fin 3) (K0 p)) ∧
    Formalism.MainNotions.FormalGroupSystem.Simeq p (Formalism.MainNotions.FormalGroupSystem.sub2 p (beLT hLT) (MvPowerSeries.X 0) (MvPowerSeries.X 1 + MvPowerSeries.X 2) -
              Formalism.MainNotions.FormalGroupSystem.sub2 p (beLT hLT) (MvPowerSeries.X 0) (MvPowerSeries.X 1) -
              Formalism.MainNotions.FormalGroupSystem.sub2 p (beLT hLT) (MvPowerSeries.X 0) (MvPowerSeries.X 2))
      (0 : MvPowerSeries (Fin 3) (K0 p)) ∧
    ∀ α : WW p, (Formalism.MainNotions.FormalGroupSystem.sigW p)^[2] α = α →
      Formalism.MainNotions.FormalGroupSystem.Simeq p
        (Formalism.MainNotions.FormalGroupSystem.sub2 p (beLT hLT) (C (algebraMap (WW p) (K0 p) α) * MvPowerSeries.X (0 : Fin 2)) (MvPowerSeries.X 1))
        (Formalism.MainNotions.FormalGroupSystem.sub2 p (beLT hLT) (MvPowerSeries.X 0)
          (C (algebraMap (WW p) (K0 p) (Formalism.MainNotions.FormalGroupSystem.sigW p α)) * MvPowerSeries.X 1)) := by
  have hex : PowerSeries.constantCoeff g.ex = 0 := hOk.2.2.1
  have hinv : PowerSeries.subst g.ex g.l = PowerSeries.X := hOk.2.2.2
  set ep : ℂ_[p] := wToC p (epOf hLT : WW p) with hep
  have hep0 : ep ≠ 0 := wToC_unit_ne _
  have hrat : BeRat g ep := by
    rw [hep, ← witt_fraction_to_Cp_algebraMap]
    exact beRat_of g hex hB.1 (exRat_of g hOk hM) _
  set i0 : K0 p →+* ℂ_[p] := (k0ToC p).comp (algebraMap (K0 p) (K0 p)) with hi0
  have hi0' : i0 = k0ToC p := by rw [hi0, Algebra.algebraMap_self, RingHom.comp_id]
  have hi0W : ∀ x : WW p, i0 (algebraMap (WW p) (K0 p) x) = wToC p x := by
    intro x
    rw [hi0', witt_fraction_to_Cp_algebraMap]
  have htie : subst ![C ep * g.lg (MvPowerSeries.X (0 : Fin 2)), C ep * g.lg (MvPowerSeries.X (1 : Fin 2))]
      (map i0 (beLT hLT)) = g.be (MvPowerSeries.X (0 : Fin 2)) (MvPowerSeries.X (1 : Fin 2)) := by
    rw [hi0']
    exact be_tie hOk hep0 hrat
  have hlog : PowerSeries.subst
      (PowerSeries.map ((k0ToC p).comp ((algebraMap (K0 p) (K0 p)).comp (algebraMap (WW p) (K0 p)))) (thOf hLT))
      (PowerSeries.map ((k0ToC p).comp (algebraMap (K0 p) (K0 p))) (Formalism.MainNotions.FormalGroupSystem.logF p)) = PowerSeries.C ep * g.l := by
    have e1 : (k0ToC p).comp ((algebraMap (K0 p) (K0 p)).comp (algebraMap (WW p) (K0 p))) = wToC p := by
      rw [Algebra.algebraMap_self, RingHom.id_comp]
      exact wToC_eq
    have e2 : (k0ToC p).comp (algebraMap (K0 p) (K0 p)) = k0ToC p := by
      rw [Algebra.algebraMap_self, RingHom.comp_id]
    rw [e1, e2]
    exact thOf_log hLT
  have hab := be_ab g i0 (beLT hLT) ep hep0 hex hinv htie
  have hbe : constantCoeff (beLT hLT) = 0 := by
    by_contra h0
    have := (hab 0 (by rwa [coeff_zero_eq_constantCoeff_apply])).1
    simp at this
  have hs3 := hs_dg (ι := Fin 3) (cc_Cl g ep)
  have hs2' := hs_dg (ι := Fin 2) (cc_Cl g ep)
  have lX3 := fun i : Fin 3 => logOf_X g i0 ep i
  have lX2 := fun i : Fin 2 => logOf_X g i0 ep i
  let Oc : Subring (K0 p) := (algebraMap (WW p) (K0 p)).range
  have witt_mem_integers_Cp : ∀ x : WW p, algebraMap (K0 p) (K0 p) (algebraMap (WW p) (K0 p) x) ∈ Oc := by
    intro x
    rw [Algebra.algebraMap_self, RingHom.id_apply]
    exact ⟨x, rfl⟩
  have iC_int : ∀ x : K0 p, x ∈ Oc ↔ ‖k0ToC p x‖ ≤ 1 := by
    intro x
    rw [norm_k0ToC_le_iff]
    rfl
  have sim := fun (ι : Type) => simeq_of (ι := ι) (K0 p) Oc witt_mem_integers_Cp (k0ToC p) iC_int (thOf hLT) (thOf_zero hLT)
    (thOf_unit hLT) _ hlog
  refine ⟨hab, ?_, ?_, ?_⟩
  · have l01 := logOf_add g i0 ep hex hinv (lX3 0) (lX3 1)
    refine sim (Fin 3) _ _ ?_ ?_
    · rw [sub_zero, map_sub, map_sub, constantCoeff_sub2_eq_zero (beLT hLT) hbe l01.1 (lX3 2).1, constantCoeff_sub2_eq_zero (beLT hLT) hbe (lX3 0).1 (lX3 2).1,
        constantCoeff_sub2_eq_zero (beLT hLT) hbe (lX3 1).1 (lX3 2).1]
      simp
    · rw [sub_zero, map_sub, map_sub, subst_sub hs3, subst_sub hs3, subtraction_formal_group_log g i0 (beLT hLT) _ hex htie l01 (lX3 2),
        subtraction_formal_group_log g i0 (beLT hLT) _ hex htie (lX3 0) (lX3 2), subtraction_formal_group_log g i0 (beLT hLT) _ hex htie (lX3 1) (lX3 2), sub_sub]
      exact integralMv_of_integralW hB.2.1.2
  · have l12 := logOf_add g i0 ep hex hinv (lX3 1) (lX3 2)
    refine sim (Fin 3) _ _ ?_ ?_
    · rw [sub_zero, map_sub, map_sub, constantCoeff_sub2_eq_zero (beLT hLT) hbe (lX3 0).1 l12.1, constantCoeff_sub2_eq_zero (beLT hLT) hbe (lX3 0).1 (lX3 1).1,
        constantCoeff_sub2_eq_zero (beLT hLT) hbe (lX3 0).1 (lX3 2).1]
      simp
    · rw [sub_zero, map_sub, map_sub, subst_sub hs3, subst_sub hs3, subtraction_formal_group_log g i0 (beLT hLT) _ hex htie (lX3 0) l12,
        subtraction_formal_group_log g i0 (beLT hLT) _ hex htie (lX3 0) (lX3 1), subtraction_formal_group_log g i0 (beLT hLT) _ hex htie (lX3 0) (lX3 2), sub_sub]
      exact integralMv_of_integralW hB.2.2.1.2
  · intro α hα
    have la := logOf_mul g i0 ep hex hinv (algebraMap (WW p) (K0 p) α) (lX2 0)
    have lb := logOf_mul g i0 ep hex hinv (algebraMap (WW p) (K0 p) (Formalism.MainNotions.FormalGroupSystem.sigW p α)) (lX2 1)
    refine sim (Fin 2) _ _ ?_ ?_
    · rw [map_sub, constantCoeff_sub2_eq_zero (beLT hLT) hbe la.1 (lX2 1).1, constantCoeff_sub2_eq_zero (beLT hLT) hbe (lX2 0).1 lb.1, sub_zero]
    · rw [map_sub, subst_sub hs2', subtraction_formal_group_log g i0 (beLT hLT) _ hex htie la (lX2 1),
        subtraction_formal_group_log g i0 (beLT hLT) _ hex htie (lX2 0) lb]
      have hok := okp_of D g.lam h2 hin hα
      rw [← hi0W, ← hi0W] at hok
      exact integralMv_of_integralW (hB.2.2.2 _ hok).2

theorem beProp_of_ok (D : Formalism.BasicNotions.D7) (g : G1 p) (hLT : LTIso g) (hOk : g.Ok) (h2 : p ≠ 2) (hin : InertK D p)
    (hM : ModelOverW g.lam g.abelian₂ g.C) (hB : BeWAt D g) : Formalism.MainNotions.FormalGroupSystem.BeProp p (beLT hLT) := by
  obtain ⟨h1, h2', h3, h4⟩ := be_props_at D g hLT hOk h2 hin hM hB
  refine ⟨h1, h2', h3, ?_⟩
  intro α hα
  exact h4 α hα

end Be

theorem beta_property_of_weight : BePropOfBeW := by
  intro D cc δ p _ g hLT hAt h5 hin hM hB
  exact beProp_of_ok D g hLT hAt.2.2.2.2 (by omega) hin hM hB

theorem admissible_second_at_place : Adm2cAt := by
  intro D cc δ p _ g hLT hAt h5 hin hM hB X Y hY
  show Formalism.MainNotions.FormalGroupSystem.BeProp p Y.be
  rw [hY]
  exact beta_property_of_weight D cc δ p g hLT hAt h5 hin hM hB

end Formalism.L2.KerInert
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.BeProp =====

-- ===== clump member: Formalism.LocalToGlobal.InertKernelTheory.FinalA =====
-- clump-header: {"m": "Formalism.LocalToGlobal.InertKernelTheory.FinalA", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.PendingLemmas.CoeffOneLNe\npublic import Formalism.LocalToGlobal.InertKernelTheory.DefsBeW\npublic import Formalism.LocalToGlobal.InertKernelTheory.DefsSigma\npublic import Formalism.LocalToGlobal.InertKernelTheory.StatementBeW\npublic import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.BeProp\npublic import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.BeWInertOfSigma\npublic import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.HurwitzSubstituteTwoSeries\npublic import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.PadicNormTwoHundredSixteenEqOneOfFiveLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.KerInert

open Formalism.MainNotions.GL3Theta Formalism.L2.G.Pend

def FactsA : Prop := Sigma.InvAlg ∧ Sigma.SecondEisensteinAlgebraic ∧ EndIntInert ∧ PhNormOKInert

theorem beWInert_ofA (h : FactsA) : BeWInert :=
  beWInert_of_sigma (Sigma.sigmaCurveInert_of h.1 h.2.1) h.2.2.1 h.2.2.2

theorem beProp_ofA (h : FactsA) (D : Formalism.BasicNotions.D7) (cc : Ideal (NumberField.RingOfIntegers D.host.K)) (δ : ℂ) (p : ℕ)
    [Fact p.Prime] (g : G1 p) (hLT : LTIso g) (hAt : At D cc δ g) (h5 : 5 ≤ p) (hin : InertK D p)
    (hW : ModelOverW g.lam g.abelian₂ g.C) : Formalism.MainNotions.FormalGroupSystem.BeProp p (beLT hLT) :=
  beta_property_of_weight D cc δ p g hLT hAt h5 hin hW (beWInert_ofA h D p cc δ g hAt h5 hin hW)

theorem admissible_second_of_facts (h : FactsA) (D : Formalism.BasicNotions.D7) (cc : Ideal (NumberField.RingOfIntegers D.host.K)) (δ : ℂ) (p : ℕ)
    [Fact p.Prime] (g : G1 p) (hLT : LTIso g) (hAt : At D cc δ g) (h5 : 5 ≤ p) (hin : InertK D p)
    (hW : ModelOverW g.lam g.abelian₂ g.C) (X : Formalism.MainNotions.FormalGroupSystem.Sys p) (Y : Formalism.MainNotions.FormalGroupSystem.Pend X) (hY : Y.be = beLT hLT) :
    Formalism.MainNotions.FormalGroupSystem.adm2c D X Y :=
  admissible_second_at_place D cc δ p g hLT hAt h5 hin hW (beWInert_ofA h D p cc δ g hAt h5 hin hW) X Y hY

theorem admissible_eleventh_of_facts (h : FactsA) (D : Formalism.BasicNotions.D7) (cc : Ideal (NumberField.RingOfIntegers D.host.K)) (δ : ℂ) (p : ℕ)
    [Fact p.Prime] (g : G1 p) (hLT : LTIso g) (hAt : At D cc δ g) (h5 : 5 ≤ p) (hin : InertK D p)
    (hW : ModelOverW g.lam g.abelian₂ g.C) (X : Formalism.MainNotions.FormalGroupSystem.Sys p) (Y : Formalism.MainNotions.FormalGroupSystem.Pend X) (hY : Y.be = beLT hLT) :
    Formalism.MainNotions.FormalGroupSystem.adm11 D X Y :=
  Jet.adm11OfBeProp D p X Y (hY ▸ beProp_ofA h D cc δ p g hLT hAt h5 hin hW)

end Formalism.L2.KerInert
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.InertKernelTheory.FinalA =====

-- ===== clump member: Formalism.LocalToGlobal.InertKernelTheory.AdmissibleEleventhInert =====
-- clump-header: {"m": "Formalism.LocalToGlobal.InertKernelTheory.AdmissibleEleventhInert", "h": "module\n\npublic import Formalism.LocalToGlobal.InertKernelTheory.FinalA\npublic import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.EndInt\npublic import Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.PhNorm\nimport Formalism.LocalToGlobal.InertKernelTheory.InertCoprimeLemmas.SigmaAlg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.KerInert

open Formalism.MainNotions.GL3Theta Formalism.L2.G.Pend

theorem inert_facts_first_hold : FactsA :=
  ⟨_root_.Formalism.L2.KerInert.Sigma.ChartWirtingerDerivatives.weierstrass_invariants_algebraic, Sigma.secondEisensteinAlgebraic, endomorphisms_integral_inert, _root_.Formalism.L2.KerInert.PN.phNormOKInert_of⟩

theorem admissible_second_inert (D : Formalism.BasicNotions.D7) (cc : Ideal (NumberField.RingOfIntegers D.host.K)) (δ : ℂ) (p : ℕ)
    [Fact p.Prime] (g : G1 p) (hLT : LTIso g) (hAt : At D cc δ g) (h5 : 5 ≤ p) (hin : InertK D p)
    (hW : ModelOverW g.lam g.abelian₂ g.C) (X : Formalism.MainNotions.FormalGroupSystem.Sys p) (Y : Formalism.MainNotions.FormalGroupSystem.Pend X) (hY : Y.be = beLT hLT) :
    Formalism.MainNotions.FormalGroupSystem.adm2c D X Y :=
  admissible_second_of_facts inert_facts_first_hold D cc δ p g hLT hAt h5 hin hW X Y hY

theorem admissible_eleventh_inert (D : Formalism.BasicNotions.D7) (cc : Ideal (NumberField.RingOfIntegers D.host.K)) (δ : ℂ) (p : ℕ)
    [Fact p.Prime] (g : G1 p) (hLT : LTIso g) (hAt : At D cc δ g) (h5 : 5 ≤ p) (hin : InertK D p)
    (hW : ModelOverW g.lam g.abelian₂ g.C) (X : Formalism.MainNotions.FormalGroupSystem.Sys p) (Y : Formalism.MainNotions.FormalGroupSystem.Pend X) (hY : Y.be = beLT hLT) :
    Formalism.MainNotions.FormalGroupSystem.adm11 D X Y :=
  admissible_eleventh_of_facts inert_facts_first_hold D cc δ p g hLT hAt h5 hin hW X Y hY

end Formalism.L2.KerInert
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.InertKernelTheory.AdmissibleEleventhInert =====
