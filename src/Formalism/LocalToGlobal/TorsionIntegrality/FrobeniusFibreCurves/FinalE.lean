module

public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementD
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalB
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffEqZeroOfParallelogram
public import Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalA
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.OneAddMulDerivLogSubst
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffLawWithInverseThree
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.BridgeTwoMore
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementE
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffSeriesAtVariable
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.WeierstrassSeriesIntegral
public import Formalism.FormalGroupLog.FormalGroupLogProofs.ConstantCoeffSubstOfZero
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.RestrictSecondZeroInVarOne
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.AtVariableWeierstrassDerivative
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LogarithmEquivalence
import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.PderivZeroZeroWeierstrassDifference
import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.EvalSecondZeroAtVariableZero
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementF
import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.InVarAddInVarNeZero
import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.WeierstrassReducedEquations

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.FirstLevelOfThreeVarParallelogram, Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.RealAdelicInertTransportTypeFormsEqAlt, Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.Wp3ApplyEqSqMulSubSqMul, Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.XTwoDvdOfRestrictThirdZero, Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalD, Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.CocycleDiffExpEquiv, Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffQuotientXSq, Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.DivLaw, Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalE

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.FirstLevelOfThreeVarParallelogram =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.FirstLevelOfThreeVarParallelogram", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementD\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalB\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffEqZeroOfParallelogram\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LogarithmEquivalence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Th1.B.E3

open Formalism.DworkPowerSeriesWeights (Integral)
open Formalism.InvariantFactorPaths.G7 (Simeq at1 cob d1 in3 swap2 DivAB equivalence_rules)

theorem parallelogram_three_sub_pairs {K : Type} [NormedField K] [CharZero K] (F : MvPowerSeries (Fin 2) K)
    (hF : MvPowerSeries.constantCoeff F = 0) (i f : PowerSeries K)
    (hi : PowerSeries.constantCoeff i = 0) :
    par3 F i f -
        MvPowerSeries.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 3) K), MvPowerSeries.X 1]
          (par F i f) -
        MvPowerSeries.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 3) K), MvPowerSeries.X 2]
          (par F i f) -
        MvPowerSeries.subst ![(MvPowerSeries.X 1 : MvPowerSeries (Fin 3) K), MvPowerSeries.X 2]
          (par F i f) =
      d1 F (cob F f) := by
  have h0 : ∀ j : Fin 3, MvPowerSeries.constantCoeff (MvPowerSeries.X j : MvPowerSeries (Fin 3) K) = 0 :=
    fun j => MvPowerSeries.constantCoeff_X j
  rw [parallelogram_coboundary_three_vars F hF f, cube_par_subst F hF i f hi _ _ (h0 0) (h0 1),
    cube_par_subst F hF i f hi _ _ (h0 0) (h0 2), cube_par_subst F hF i f hi _ _ (h0 1) (h0 2)]
  unfold par3 F3 lawDifferenceThree in3 at1
  ring

theorem cube_relation_from_parallelograms : CubeFromPars := by
  intro K _ _ _ F l i f hF hi hp h3
  obtain ⟨_, hsymm, _, hadd, _⟩ := equivalence_rules K (Fin 3)
  have hsubS : ∀ a b : MvPowerSeries (Fin 3) K, Simeq a 0 → Simeq b 0 → Simeq (a - b) 0 := by
    intro a b ha hb
    have h := hadd a 0 0 b ha (hsymm _ _ hb)
    rw [add_zero, zero_add] at h
    unfold Simeq at h ⊢
    simpa using h
  have hpar : ∀ j k : Fin 3,
      Simeq (MvPowerSeries.subst ![(MvPowerSeries.X j : MvPowerSeries (Fin 3) K), MvPowerSeries.X k]
        (par F i f)) 0 := by
    intro j k
    have hc : ∀ m : Fin 2, MvPowerSeries.constantCoeff
        (![(MvPowerSeries.X j : MvPowerSeries (Fin 3) K), MvPowerSeries.X k] m) = 0 := by
      intro m; fin_cases m <;> simp
    have hI : ∀ m : Fin 2, Integral
        (![(MvPowerSeries.X j : MvPowerSeries (Fin 3) K), MvPowerSeries.X k] m) := by
      intro m; fin_cases m <;> simp [integral_mvPowerSeries_X]
    have h := (equivalence_rules K (Fin 2)).2.2.2.2 (Fin 3) (par F i f) 0 _ hc hI hp
    have hz : MvPowerSeries.subst ![(MvPowerSeries.X j : MvPowerSeries (Fin 3) K), MvPowerSeries.X k]
        (0 : MvPowerSeries (Fin 2) K) = 0 := by
      rw [← MvPowerSeries.coe_substAlgHom (MvPowerSeries.hasSubst_of_constantCoeff_zero hc), map_zero]
    rwa [hz] at h
  rw [← parallelogram_three_sub_pairs F hF.1 i f hi.1]
  exact hsubS _ _ (hsubS _ _ (hsubS _ _ h3 (hpar 0 1)) (hpar 0 2)) (hpar 1 2)

theorem log_sigma_pullback_cocycle_jets_of_parallelogram_and_cube (hP : ParThree) (hC : CubeFromPars) : LogSigmaPullbackCocycleJets := by
  intro K _ _ _ g2 g3 s2 c0 a1 a3 P l i ep F hW hF hi hc hc3
  have hpar := parO K g2 g3 s2 c0 P l i ep F hW hF hi hc
  have hp3 := hP K g2 g3 s2 c0 a1 a3 P l i ep F hW hF hi hc hc3
  have hd := hC K F l i (phO s2 P l) hF hi hpar hp3
  have hf0 := constantCoeff_eq_zero_of_parallelogram hF hi hpar
  obtain ⟨hdiv, hsw⟩ := _root_.Formalism.L2.Th1.B.coboundary_rules_hold K F l (phO s2 P l) hF hf0
  refine ⟨hdiv, hsw, hd, ?_, fun n hn => jetsThree K F l _ hF hd n hn⟩
  rw [hsw]
  exact hd

end Formalism.L2.Th1.B.E3
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.FirstLevelOfThreeVarParallelogram =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.RealAdelicInertTransportTypeFormsEqAlt =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.RealAdelicInertTransportTypeFormsEqAlt", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementD\npublic import Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalA\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.OneAddMulDerivLogSubst\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.PderivZeroZeroWeierstrassDifference\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Th1.B.Fs

open Formalism.InvariantFactorPaths.G7 (at1)

section

variable {K : Type} [Field K] [CharZero K]

local notation "A3" => MvPowerSeries (Fin 3) K

theorem cc_psubst {ι : Type} {u : MvPowerSeries ι K} (hu : MvPowerSeries.constantCoeff u = 0)
    {f : PowerSeries K} (hf : PowerSeries.constantCoeff f = 0) :
    MvPowerSeries.constantCoeff (PowerSeries.subst u f) = 0 :=
  PowerSeries.constantCoeff_subst_eq_zero hu _ hf

theorem psubst_fExp {ι : Type} {u : MvPowerSeries ι K} (hu : MvPowerSeries.constantCoeff u = 0)
    {f : PowerSeries K} (hf : PowerSeries.constantCoeff f = 0) :
    PowerSeries.subst u (fExp f) = fExp (PowerSeries.subst u f) :=
  Formalism.L2.Th1.B.subst_fExp (ι := Unit) (φ := fun _ => u) (fun _ => hu) hf

theorem subst_sigma {ι : Type} (P : PowerSeries K) {u : MvPowerSeries ι K}
    (hu : MvPowerSeries.constantCoeff u = 0) :
    PowerSeries.subst u (sigma P) = u * fExp (PowerSeries.subst u (sigS P)) := by
  have hs := PowerSeries.HasSubst.of_constantCoeff_zero hu
  rw [sigma, PowerSeries.subst_mul hs, PowerSeries.subst_X hs, psubst_fExp hu (_root_.Formalism.L2.Th1.B.Add0.sigS_cc P)]

theorem subst_sgStar {ι : Type} (s2 : K) (P : PowerSeries K)
    {u : MvPowerSeries ι K} (hu : MvPowerSeries.constantCoeff u = 0) :
    PowerSeries.subst u (sgStar s2 P) =
      PowerSeries.subst u (sigma P) * fExp (-(MvPowerSeries.C (s2 / 2) * u ^ 2)) := by
  have hs := PowerSeries.HasSubst.of_constantCoeff_zero hu
  rw [sgStar, PowerSeries.subst_mul hs, psubst_fExp hu (by simp)]
  congr 2
  rw [← PowerSeries.coe_substAlgHom hs, map_neg, map_mul, map_pow, PowerSeries.substAlgHom_X,
    PowerSeries.coe_substAlgHom hs, PowerSeries.subst_C]

theorem pd_psubst (i : Fin 3) {u : A3} (hu : MvPowerSeries.constantCoeff u = 0)
    (f : PowerSeries K) : pd i (PowerSeries.subst u f) = PowerSeries.subst u (dz f) * pd i u :=
  Formalism.G.LogCR.pderiv_psubst hu f i

theorem hs_emb (j k : Fin 3) :
    MvPowerSeries.HasSubst ![(MvPowerSeries.X j : A3), MvPowerSeries.X k] :=
  MvPowerSeries.hasSubst_of_constantCoeff_zero fun s => by fin_cases s <;> simp

def emb (j k : Fin 3) : MvPowerSeries (Fin 2) K →ₐ[K] A3 := MvPowerSeries.substAlgHom (hs_emb j k)

theorem emb_apply (j k : Fin 3) (h : MvPowerSeries (Fin 2) K) :
    emb j k h = MvPowerSeries.subst ![(MvPowerSeries.X j : A3), MvPowerSeries.X k] h := by
  rw [emb, MvPowerSeries.coe_substAlgHom]

theorem embed_pair_X_zero (j k : Fin 3) : emb (K := K) j k (MvPowerSeries.X 0) = MvPowerSeries.X j := by
  rw [emb, MvPowerSeries.substAlgHom_X]; rfl

theorem embed_pair_X_one (j k : Fin 3) : emb (K := K) j k (MvPowerSeries.X 1) = MvPowerSeries.X k := by
  rw [emb, MvPowerSeries.substAlgHom_X]; rfl

theorem emb_psubst (j k : Fin 3) (f : PowerSeries K) {u : MvPowerSeries (Fin 2) K}
    (hu : MvPowerSeries.constantCoeff u = 0) :
    emb j k (PowerSeries.subst u f) = PowerSeries.subst (emb j k u) f := by
  rw [emb_apply, emb_apply, psubst_msubst f hu (hs_emb j k)]

theorem embed_pair_at_variable_zero (j k : Fin 3) (f : PowerSeries K) : emb j k (at1 0 f) = at1 j f := by
  rw [at1, emb_psubst j k f (by simp), embed_pair_X_zero]; rfl

theorem embed_pair_at_variable_one (j k : Fin 3) (f : PowerSeries K) : emb j k (at1 1 f) = at1 k f := by
  rw [at1, emb_psubst j k f (by simp), embed_pair_X_one]; rfl

theorem emb_atD (j k : Fin 3) (f : PowerSeries K) : emb j k (atD f) = evalDiffThree j k f := by
  rw [atD, emb_psubst j k f (by simp), map_sub, embed_pair_X_zero, embed_pair_X_one]; rfl

theorem emb_atS (j k : Fin 3) (f : PowerSeries K) :
    emb j k (atS f) = PowerSeries.subst (MvPowerSeries.X j + MvPowerSeries.X k : A3) f := by
  rw [atS, emb_psubst j k f (by simp), map_add (f := _), embed_pair_X_zero, embed_pair_X_one]

theorem emb_wpDiff (j k : Fin 3) (P : PowerSeries K) : emb j k (wpDiff P) = wp3 P j k := by
  simp only [wpDiff, wp3, map_add (f := _), map_sub, map_mul, map_pow, embed_pair_X_zero, embed_pair_X_one, embed_pair_at_variable_zero,
    embed_pair_at_variable_one]

theorem emb_fExp (j k : Fin 3) {f : MvPowerSeries (Fin 2) K}
    (hf : MvPowerSeries.constantCoeff f = 0) : emb j k (fExp f) = fExp (emb j k f) := by
  rw [emb_apply, emb_apply]
  exact Formalism.L2.Th1.B.subst_fExp (fun s => by fin_cases s <;> simp) hf

theorem pd_emb_0 {j k : Fin 3} (hjk : j ≠ k) (h : MvPowerSeries (Fin 2) K) :
    pd j (emb j k h) = emb j k (pd 0 h) := by
  rw [emb_apply, emb_apply, pd,
    Formalism.G.LogCR.pderiv_subst (fun s => by fin_cases s <;> simp) h j, Fin.sum_univ_two]
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one]
  rw [MvPowerSeries.pderiv_X_self, MvPowerSeries.pderiv_X_of_ne hjk.symm, mul_one, mul_zero,
    add_zero]

theorem pd_emb_1 {j k : Fin 3} (hjk : j ≠ k) (h : MvPowerSeries (Fin 2) K) :
    pd k (emb j k h) = emb j k (pd 1 h) := by
  rw [emb_apply, emb_apply, pd,
    Formalism.G.LogCR.pderiv_subst (fun s => by fin_cases s <;> simp) h k, Fin.sum_univ_two]
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one]
  rw [MvPowerSeries.pderiv_X_self, MvPowerSeries.pderiv_X_of_ne hjk, mul_one, mul_zero,
    zero_add]

theorem tau3 (hT : TauRule) {g2 g3 : K} {P : PowerSeries K} (hP : IsWp g2 g3 P) {j k : Fin 3}
    (hjk : j ≠ k) :
    (MvPowerSeries.X j - MvPowerSeries.X k) * (pd j (wp3 P j k) - pd k (wp3 P j k)) =
      wp3 P j k * (2 + 2 * (MvPowerSeries.X j - MvPowerSeries.X k) *
        (evalDiffThree j k (dz (sigS P)) - at1 j (dz (sigS P)) + at1 k (dz (sigS P)))) := by
  have h := congrArg (emb j k) (hT K g2 g3 P hP)
  simp only [map_add (f := _), map_sub, map_mul, map_ofNat, embed_pair_X_zero, embed_pair_X_one, embed_pair_at_variable_zero, embed_pair_at_variable_one, emb_atD,
    emb_wpDiff, ← pd_emb_0 hjk, ← pd_emb_1 hjk] at h
  exact h

theorem wp3_apply_eq_sq_mul_sub_sq_mul {g2 g3 : K} {P : PowerSeries K} (hP : IsWp g2 g3 P) (j k : Fin 3) :
    wp3 P j k = (MvPowerSeries.X j ^ 2 - MvPowerSeries.X k ^ 2) *
      fExp (emb j k (par0 (sigS P))) := by
  have hN1 : MvPowerSeries.constantCoeff
      (1 - MvPowerSeries.X 0 ^ 2 * MvPowerSeries.X 1 ^ 2 * dq P : MvPowerSeries (Fin 2) K) = 1 := by
    simp
  have c0 : MvPowerSeries.constantCoeff (par0 (sigS P)) = 0 := by
    rw [addSigmaLog K g2 g3 P hP]; exact constantCoeff_fLog hN1
  rw [← emb_wpDiff, Add0.wpDiff_eq _root_.Formalism.L2.Th1.B.difference_quotient_rule_holds hP.2.1, ← fExp_fLog hN1, ← addSigmaLog K g2 g3 P hP,
    map_mul, emb_fExp j k c0, map_sub, map_pow, map_pow, embed_pair_X_zero, embed_pair_X_one]

theorem hasSubst_eval_last_zero :
    MvPowerSeries.HasSubst ![(MvPowerSeries.X 0 : A3), MvPowerSeries.X 1, 0] :=
  MvPowerSeries.hasSubst_of_constantCoeff_zero fun s => by fin_cases s <;> simp

def ev3H : A3 →ₐ[K] A3 := MvPowerSeries.substAlgHom hasSubst_eval_last_zero

theorem eval_three_eq_eval_last_zero (h : A3) : ev3 h = ev3H h := by
  rw [ev3H, MvPowerSeries.coe_substAlgHom]; rfl

theorem eval_last_zero_X_zero : ev3H (K := K) (MvPowerSeries.X 0) = MvPowerSeries.X 0 := by
  rw [ev3H, MvPowerSeries.substAlgHom_X]; rfl

theorem eval_last_zero_X_one : ev3H (K := K) (MvPowerSeries.X 1) = MvPowerSeries.X 1 := by
  rw [ev3H, MvPowerSeries.substAlgHom_X]; rfl

theorem eval_last_zero_X_two : ev3H (K := K) (MvPowerSeries.X 2) = 0 := by
  rw [ev3H, MvPowerSeries.substAlgHom_X]; rfl

theorem eval_last_zero_subst_series (f : PowerSeries K) {u : A3} (hu : MvPowerSeries.constantCoeff u = 0) :
    ev3H (PowerSeries.subst u f) = PowerSeries.subst (ev3H u) f := by
  rw [← eval_three_eq_eval_last_zero, ← eval_three_eq_eval_last_zero, ev3, ev3, psubst_msubst f hu hasSubst_eval_last_zero]

theorem eval_last_zero_formal_exp {f : A3} (hf : MvPowerSeries.constantCoeff f = 0) :
    ev3H (fExp f) = fExp (ev3H f) := by
  rw [← eval_three_eq_eval_last_zero, ← eval_three_eq_eval_last_zero]
  exact Formalism.L2.Th1.B.subst_fExp (fun s => by fin_cases s <;> simp) hf

theorem eval_last_zero_at_variable_zero (f : PowerSeries K) : ev3H (at1 0 f) = at1 0 f := by
  rw [at1, eval_last_zero_subst_series f (by simp), eval_last_zero_X_zero]

theorem eval_last_zero_at_variable_one (f : PowerSeries K) : ev3H (at1 1 f) = at1 1 f := by
  rw [at1, eval_last_zero_subst_series f (by simp), eval_last_zero_X_one]

theorem det_three_points_eq_expansion (P : PowerSeries K) : det3 P =
    MvPowerSeries.X 0 ^ 3 * (MvPowerSeries.X 1 * (1 + MvPowerSeries.X 1 ^ 2 * at1 1 P)) *
        (-2 + MvPowerSeries.X 2 ^ 3 * at1 2 (dz P)) -
      MvPowerSeries.X 0 ^ 3 * (-2 + MvPowerSeries.X 1 ^ 3 * at1 1 (dz P)) *
        (MvPowerSeries.X 2 * (1 + MvPowerSeries.X 2 ^ 2 * at1 2 P)) -
      MvPowerSeries.X 0 * (1 + MvPowerSeries.X 0 ^ 2 * at1 0 P) * MvPowerSeries.X 1 ^ 3 *
        (-2 + MvPowerSeries.X 2 ^ 3 * at1 2 (dz P)) +
      MvPowerSeries.X 0 * (1 + MvPowerSeries.X 0 ^ 2 * at1 0 P) *
        (-2 + MvPowerSeries.X 1 ^ 3 * at1 1 (dz P)) * MvPowerSeries.X 2 ^ 3 +
      (-2 + MvPowerSeries.X 0 ^ 3 * at1 0 (dz P)) * MvPowerSeries.X 1 ^ 3 *
        (MvPowerSeries.X 2 * (1 + MvPowerSeries.X 2 ^ 2 * at1 2 P)) -
      (-2 + MvPowerSeries.X 0 ^ 3 * at1 0 (dz P)) *
        (MvPowerSeries.X 1 * (1 + MvPowerSeries.X 1 ^ 2 * at1 1 P)) * MvPowerSeries.X 2 ^ 3 := by
  rw [det3, Matrix.det_fin_three]
  simp only [Matrix.of_apply, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val]

theorem eval_last_zero_det_three_points (P : PowerSeries K) :
    ev3H (det3 P) = -2 * (MvPowerSeries.X 0 * MvPowerSeries.X 1) * wp3 P 0 1 := by
  rw [det_three_points_eq_expansion]
  simp only [map_add (f := _), map_sub, map_mul, map_pow, map_neg, map_one, map_ofNat, eval_last_zero_X_zero, eval_last_zero_X_one,
    eval_last_zero_X_two, eval_last_zero_at_variable_zero, eval_last_zero_at_variable_one, wp3]
  ring

theorem eval_last_zero_vandermonde_three : ev3H (vand3 K) =
    (MvPowerSeries.X 0 * MvPowerSeries.X 1) * (MvPowerSeries.X 0 ^ 2 - MvPowerSeries.X 1 ^ 2) := by
  simp only [vand3, map_add (f := _), map_sub, map_mul, eval_last_zero_X_zero, eval_last_zero_X_one, eval_last_zero_X_two]
  ring

theorem eval_last_zero_exp_parallelogram {f : PowerSeries K} (hf : PowerSeries.constantCoeff f = 0) :
    ev3H (fsE f) = emb 0 1 (par0 f) := by
  have h0 : PowerSeries.subst (0 : A3) f = 0 := PowerSeries.subst_zero_of_constantCoeff_zero hf
  simp only [fsE, par0, evalSumThree, evalDiffThree, map_add (f := _), map_sub, map_mul, map_ofNat, emb_atS, emb_atD,
    embed_pair_at_variable_zero, embed_pair_at_variable_one]
  rw [eval_last_zero_subst_series f (by simp), eval_last_zero_subst_series f (by simp), eval_last_zero_subst_series f (by simp),
    eval_last_zero_subst_series f (by simp), eval_last_zero_at_variable_zero, eval_last_zero_at_variable_one, at1, at1, at1, eval_last_zero_subst_series f (by simp)]
  simp only [map_add (f := _), map_sub, eval_last_zero_X_zero, eval_last_zero_X_one, eval_last_zero_X_two, add_zero, sub_zero, h0]
  ring

theorem fsE_cc {f : PowerSeries K} (hf : PowerSeries.constantCoeff f = 0) :
    MvPowerSeries.constantCoeff (fsE f) = 0 := by
  simp only [fsE, evalSumThree, evalDiffThree, at1, map_add (f := _), map_sub, map_mul]
  rw [cc_psubst (by simp) hf, cc_psubst (by simp) hf, cc_psubst (by simp) hf,
    cc_psubst (by simp) hf, cc_psubst (by simp) hf, cc_psubst (by simp) hf,
    cc_psubst (by simp) hf]
  simp

theorem ne_zero_of_pd {f : A3} (i : Fin 3) (h : pd i f = 1) : f ≠ 0 := by
  rintro rfl
  simp at h

theorem X_ne_zero (j : Fin 3) : (MvPowerSeries.X j : A3) ≠ 0 :=
  ne_zero_of_pd j MvPowerSeries.pderiv_X_self

theorem X_sub_ne_zero {j k : Fin 3} (hjk : j ≠ k) :
    (MvPowerSeries.X j - MvPowerSeries.X k : A3) ≠ 0 :=
  ne_zero_of_pd j (by
    rw [pd, map_sub, MvPowerSeries.pderiv_X_self, MvPowerSeries.pderiv_X_of_ne hjk.symm, sub_zero])

theorem X_add_ne_zero {j k : Fin 3} (hjk : j ≠ k) :
    (MvPowerSeries.X j + MvPowerSeries.X k : A3) ≠ 0 :=
  ne_zero_of_pd j (by
    rw [pd, map_add (f := _), MvPowerSeries.pderiv_X_self, MvPowerSeries.pderiv_X_of_ne hjk.symm, add_zero])

theorem sq_sub_ne_zero {j k : Fin 3} (hjk : j ≠ k) :
    (MvPowerSeries.X j ^ 2 - MvPowerSeries.X k ^ 2 : A3) ≠ 0 := by
  rw [sq_sub_sq]
  exact mul_ne_zero (X_add_ne_zero hjk) (X_sub_ne_zero hjk)

theorem fExp_ne_zero {f : A3} (hf : MvPowerSeries.constantCoeff f = 0) : fExp f ≠ 0 := by
  intro h
  have := constantCoeff_fExp hf
  rw [h] at this
  simp at this

theorem constantCoeff_parallelogram_defect {f : PowerSeries K} (hf : PowerSeries.constantCoeff f = 0) :
    MvPowerSeries.constantCoeff (par0 f) = 0 := by
  simp only [par0, atS, atD, at1, map_add (f := _), map_sub, map_mul]
  rw [cc_psubst (by simp) hf, cc_psubst (by simp) hf, cc_psubst (by simp) hf,
    cc_psubst (by simp) hf]
  simp

theorem emb_cc (j k : Fin 3) {h : MvPowerSeries (Fin 2) K}
    (hh : MvPowerSeries.constantCoeff h = 0) : MvPowerSeries.constantCoeff (emb j k h) = 0 := by
  rw [emb_apply]
  exact MvPowerSeries.constantCoeff_subst_eq_zero (hs_emb j k)
    (fun s => by fin_cases s <;> simp) hh

theorem weierstrass_pair_ne_zero {g2 g3 : K} {P : PowerSeries K} (hP : IsWp g2 g3 P) {j k : Fin 3}
    (hjk : j ≠ k) : wp3 P j k ≠ 0 := by
  rw [wp3_apply_eq_sq_mul_sub_sq_mul hP]
  exact mul_ne_zero (sq_sub_ne_zero hjk) (fExp_ne_zero (emb_cc j k (constantCoeff_parallelogram_defect (_root_.Formalism.L2.Th1.B.Add0.sigS_cc P))))

theorem pdX (i j : Fin 3) :
    MvPowerSeries.pderiv (R := K) i (MvPowerSeries.X j : A3) = if j = i then 1 else 0 := by
  split_ifs with h
  · rw [h, MvPowerSeries.pderiv_X_self]
  · rw [MvPowerSeries.pderiv_X_of_ne h]

theorem pd_two (i : Fin 3) : MvPowerSeries.pderiv (R := K) i (2 : A3) = 0 := by
  simpa using (MvPowerSeries.pderiv (R := K) i).map_natCast 2

theorem pd_three (i : Fin 3) : MvPowerSeries.pderiv (R := K) i (3 : A3) = 0 := by
  simpa using (MvPowerSeries.pderiv (R := K) i).map_natCast 3

theorem pderiv_series_at_variable (i j : Fin 3) (f : PowerSeries K) :
    MvPowerSeries.pderiv (R := K) i (at1 j f : A3) = at1 j (dz f) * if j = i then 1 else 0 := by
  rw [← pdX]; exact pd_psubst i (by simp) f

theorem pderiv_series_at_difference_three (i j k : Fin 3) (f : PowerSeries K) :
    MvPowerSeries.pderiv (R := K) i (evalDiffThree j k f : A3) =
      evalDiffThree j k (dz f) * ((if j = i then 1 else 0) - if k = i then 1 else 0) := by
  rw [← pdX, ← pdX, ← map_sub]; exact pd_psubst i (by simp) f

theorem pderiv_series_at_sum_three (i : Fin 3) (f : PowerSeries K) :
    MvPowerSeries.pderiv (R := K) i (evalSumThree f : A3) = evalSumThree (dz f) := by
  have h := pd_psubst i (u := MvPowerSeries.X 0 + MvPowerSeries.X 1 + MvPowerSeries.X 2)
    (by simp) f
  simp only [pd, map_add (f := _), pdX] at h
  rw [evalSumThree, h]
  fin_cases i <;> simp [evalSumThree]

theorem D_vand3 : pd 1 (vand3 K) - pd 2 (vand3 K) =
    (MvPowerSeries.X 0 + MvPowerSeries.X 1 + MvPowerSeries.X 2) *
      (-((MvPowerSeries.X 0 - MvPowerSeries.X 2) * (MvPowerSeries.X 1 - MvPowerSeries.X 2)) +
        (MvPowerSeries.X 0 - MvPowerSeries.X 1) * (MvPowerSeries.X 1 - MvPowerSeries.X 2) +
        2 * ((MvPowerSeries.X 0 - MvPowerSeries.X 1) * (MvPowerSeries.X 0 - MvPowerSeries.X 2))) := by
  simp only [vand3, pd, Derivation.leibniz, map_add (f := _), map_sub, smul_eq_mul, pdX]
  simp
  ring

theorem D_fsE (f : PowerSeries K) : pd 1 (fsE f) - pd 2 (fsE f) =
    -(evalDiffThree 0 1 (dz f) - at1 0 (dz f) + at1 1 (dz f)) +
      (evalDiffThree 0 2 (dz f) - at1 0 (dz f) + at1 2 (dz f)) +
      2 * (evalDiffThree 1 2 (dz f) - at1 1 (dz f) + at1 2 (dz f)) := by
  simp only [fsE, pd, Derivation.leibniz, map_add (f := _), map_sub, smul_eq_mul, pd_three, pderiv_series_at_variable, pderiv_series_at_difference_three,
    pderiv_series_at_sum_three]
  simp
  ring

theorem ring_core {R : Type} [CommRing R] (a b c M01 M02 M12 D01 D02 D12 t01 t02 t12 A DA : R)
    (T01 : (a - b) * D01 = M01 * (2 + 2 * (a - b) * t01))
    (T02 : (a - c) * D02 = M02 * (2 + 2 * (a - c) * t02))
    (T12 : (b - c) * D12 = M12 * (2 + 2 * (b - c) * t12))
    (hR : 2 * M01 * M02 * M12 * DA =
      A * (-D01 * M02 * M12 + D02 * M01 * M12 + 2 * D12 * M01 * M02)) :
    (2 * M01 * M02 * M12) *
        (A * ((a + b + c) * (-((a - c) * (b - c)) + (a - b) * (b - c) + 2 * ((a - b) * (a - c))) +
          (a + b + c) * (a - b) * (a - c) * (b - c) * (-t01 + t02 + 2 * t12))) =
      (2 * M01 * M02 * M12) * ((a + b + c) * (a - b) * (a - c) * (b - c) * DA) := by
  linear_combination (-((a + b + c) * (a - b) * (a - c) * (b - c))) * hR +
    A * M02 * M12 * (a + b + c) * (a - c) * (b - c) * T01 -
    A * M01 * M12 * (a + b + c) * (a - b) * (b - c) * T02 -
    2 * A * M01 * M02 * (a + b + c) * (a - b) * (a - c) * T12

end

theorem FrobStickLog_of (hS : ShearLemma) (hT : TauRule) (hD : DetRule) : FrobStickLog := by
  intro K _ _ g2 g3 P hP
  have cE : MvPowerSeries.constantCoeff (fsE (sigS P)) = 0 := fsE_cc (_root_.Formalism.L2.Th1.B.Add0.sigS_cc P)
  have two_ne : (2 : MvPowerSeries (Fin 3) K) ≠ 0 := by
    intro h
    have := congrArg MvPowerSeries.constantCoeff h
    rw [map_ofNat, map_zero] at this
    exact two_ne_zero this
  have hb : ev3H (-2 * vand3 K * fExp (fsE (sigS P))) =
      -2 * (MvPowerSeries.X 0 * MvPowerSeries.X 1) * wp3 P 0 1 := by
    rw [map_mul, map_mul, map_neg, map_ofNat, eval_last_zero_vandermonde_three, eval_last_zero_formal_exp cE, eval_last_zero_exp_parallelogram (_root_.Formalism.L2.Th1.B.Add0.sigS_cc P),
      wp3_apply_eq_sq_mul_sub_sq_mul hP]
    ring
  refine hS K _ _ ?_ ?_ ?_
  · have hY : ∀ i : Fin 3, pd i (-2 * vand3 K * fExp (fsE (sigS P))) =
        -2 * (pd i (vand3 K) * fExp (fsE (sigS P)) +
          vand3 K * (fExp (fsE (sigS P)) * pd i (fsE (sigS P)))) := by
      intro i
      have h1 := pd_fExp i cE
      simp only [pd] at h1 ⊢
      rw [Derivation.leibniz, Derivation.leibniz, h1, map_neg, pd_two]
      simp only [smul_eq_mul]
      ring
    have core := ring_core (MvPowerSeries.X 0) (MvPowerSeries.X 1) (MvPowerSeries.X 2) _ _ _ _ _ _
      _ _ _ _ _ (tau3 hT hP (j := 0) (k := 1) (by decide)) (tau3 hT hP (j := 0) (k := 2) (by decide))
      (tau3 hT hP (j := 1) (k := 2) (by decide)) (hD K g2 g3 P hP)
    have hM : 2 * wp3 P 0 1 * wp3 P 0 2 * wp3 P 1 2 ≠ 0 :=
      mul_ne_zero (mul_ne_zero (mul_ne_zero two_ne (weierstrass_pair_ne_zero hP (by decide)))
        (weierstrass_pair_ne_zero hP (by decide))) (weierstrass_pair_ne_zero hP (by decide))
    have core' := mul_left_cancel₀ hM core
    have hV : vand3 K = (MvPowerSeries.X 0 + MvPowerSeries.X 1 + MvPowerSeries.X 2) *
      (MvPowerSeries.X 0 - MvPowerSeries.X 1) * (MvPowerSeries.X 0 - MvPowerSeries.X 2) *
      (MvPowerSeries.X 1 - MvPowerSeries.X 2) := rfl
    rw [← hV] at core'
    rw [hY, hY]
    linear_combination (-2 * fExp (fsE (sigS P))) * core' +
      (-2 * det3 P * fExp (fsE (sigS P))) * D_vand3 (K := K) +
      (-2 * det3 P * fExp (fsE (sigS P)) * vand3 K) * D_fsE (sigS P)
  · rw [eval_three_eq_eval_last_zero, eval_three_eq_eval_last_zero, hb, eval_last_zero_det_three_points]
  · rw [eval_three_eq_eval_last_zero, hb]
    exact mul_ne_zero (mul_ne_zero (neg_ne_zero.mpr two_ne)
      (mul_ne_zero (X_ne_zero 0) (X_ne_zero 1))) (weierstrass_pair_ne_zero hP (by decide))

theorem fExp_three {K : Type} [Field K] [CharZero K] {ι : Type} {f : MvPowerSeries ι K}
    (hf : MvPowerSeries.constantCoeff f = 0) : fExp f ^ 3 = fExp (3 * f) := by
  have h3 : 3 * f = f + f + f := by ring
  rw [h3, fExp_add (by rw [map_add (f := _), hf, add_zero]) hf, fExp_add hf hf]
  ring

theorem FrobStick_of (hL : FrobStickLog) : FrobStick := by
  intro K _ _ g2 g3 P hP
  have h := hL K g2 g3 P hP
  have c0 : ∀ x : Fin 3, MvPowerSeries.constantCoeff
      (at1 x (sigS P) : MvPowerSeries (Fin 3) K) = 0 := fun x => cc_psubst (by simp) (_root_.Formalism.L2.Th1.B.Add0.sigS_cc P)
  have c3 : ∀ x : Fin 3, MvPowerSeries.constantCoeff
      (3 * at1 x (sigS P) : MvPowerSeries (Fin 3) K) = 0 := fun x => by rw [map_mul, c0, mul_zero]
  have cS : MvPowerSeries.constantCoeff (evalSumThree (sigS P)) = 0 := cc_psubst (by simp) (_root_.Formalism.L2.Th1.B.Add0.sigS_cc P)
  have cD : ∀ j k : Fin 3, MvPowerSeries.constantCoeff (evalDiffThree j k (sigS P)) = 0 :=
    fun j k => cc_psubst (by simp) (_root_.Formalism.L2.Th1.B.Add0.sigS_cc P)
  have cE : MvPowerSeries.constantCoeff (fsE (sigS P)) = 0 := fsE_cc (_root_.Formalism.L2.Th1.B.Add0.sigS_cc P)
  have key : fExp (at1 0 (sigS P)) ^ 3 * fExp (at1 1 (sigS P)) ^ 3 * fExp (at1 2 (sigS P)) ^ 3 *
        fExp (fsE (sigS P)) =
      fExp (evalSumThree (sigS P)) * fExp (evalDiffThree 0 1 (sigS P)) * fExp (evalDiffThree 0 2 (sigS P)) *
        fExp (evalDiffThree 1 2 (sigS P)) := by
    rw [fExp_three (c0 0), fExp_three (c0 1), fExp_three (c0 2), ← fExp_add (c3 0) (c3 1),
      ← fExp_add (by rw [map_add (f := _), c3, c3, add_zero]) (c3 2),
      ← fExp_add (by rw [map_add (f := _), map_add (f := _), c3, c3, c3, add_zero, add_zero]) cE,
      ← fExp_add cS (cD 0 1), ← fExp_add (by rw [map_add (f := _), cS, cD, add_zero]) (cD 0 2),
      ← fExp_add (by rw [map_add (f := _), map_add (f := _), cS, cD, cD, add_zero, add_zero]) (cD 1 2)]
    congr 1
    rw [fsE]
    ring
  have eS : evalSumThree (sigma P) = (MvPowerSeries.X 0 + MvPowerSeries.X 1 + MvPowerSeries.X 2) *
      fExp (evalSumThree (sigS P)) := subst_sigma P (by simp)
  have eD : ∀ j k : Fin 3, evalDiffThree j k (sigma P) = (MvPowerSeries.X j - MvPowerSeries.X k) *
      fExp (evalDiffThree j k (sigS P)) := fun j k => subst_sigma P (by simp)
  have e0 : ∀ x : Fin 3, (at1 x (sigma P) : MvPowerSeries (Fin 3) K) =
      MvPowerSeries.X x * fExp (at1 x (sigS P)) := fun x => subst_sigma P (by simp)
  rw [eS, eD, eD, eD, e0, e0, e0, h, vand3]
  linear_combination
    (-2 * (MvPowerSeries.X 0 * MvPowerSeries.X 1 * MvPowerSeries.X 2) ^ 3 *
      ((MvPowerSeries.X 0 + MvPowerSeries.X 1 + MvPowerSeries.X 2) *
        (MvPowerSeries.X 0 - MvPowerSeries.X 1) * (MvPowerSeries.X 0 - MvPowerSeries.X 2) *
        (MvPowerSeries.X 1 - MvPowerSeries.X 2))) * key

theorem FrobStickStar_of (hF : FrobStick) : FrobStickStar := by
  intro K _ _ g2 g3 s2 P hP
  have h := hF K g2 g3 P hP
  have cc : ∀ u : MvPowerSeries (Fin 3) K, MvPowerSeries.constantCoeff u = 0 →
      MvPowerSeries.constantCoeff (-(MvPowerSeries.C (s2 / 2) * u ^ 2)) = 0 := by
    intro u hu; simp [hu]
  have z : ∀ x : Fin 3, MvPowerSeries.constantCoeff
      (-(MvPowerSeries.C (s2 / 2) * (MvPowerSeries.X x : MvPowerSeries (Fin 3) K) ^ 2)) = 0 :=
    fun x => cc _ (by simp)
  have z3 : ∀ x : Fin 3, MvPowerSeries.constantCoeff
      (3 * -(MvPowerSeries.C (s2 / 2) * (MvPowerSeries.X x : MvPowerSeries (Fin 3) K) ^ 2)) = 0 :=
    fun x => by rw [map_mul, z, mul_zero]
  have zS := cc (MvPowerSeries.X 0 + MvPowerSeries.X 1 + MvPowerSeries.X 2) (by simp)
  have zD : ∀ j k : Fin 3, MvPowerSeries.constantCoeff
      (-(MvPowerSeries.C (s2 / 2) *
        (MvPowerSeries.X j - MvPowerSeries.X k : MvPowerSeries (Fin 3) K) ^ 2)) = 0 :=
    fun j k => cc _ (by simp)
  have key : (fExp (-(MvPowerSeries.C (s2 / 2) *
          (MvPowerSeries.X 0 : MvPowerSeries (Fin 3) K) ^ 2)) *
        fExp (-(MvPowerSeries.C (s2 / 2) * MvPowerSeries.X 1 ^ 2)) *
        fExp (-(MvPowerSeries.C (s2 / 2) * MvPowerSeries.X 2 ^ 2))) ^ 3 =
      fExp (-(MvPowerSeries.C (s2 / 2) *
          (MvPowerSeries.X 0 + MvPowerSeries.X 1 + MvPowerSeries.X 2) ^ 2)) *
        fExp (-(MvPowerSeries.C (s2 / 2) * (MvPowerSeries.X 0 - MvPowerSeries.X 1) ^ 2)) *
        fExp (-(MvPowerSeries.C (s2 / 2) * (MvPowerSeries.X 0 - MvPowerSeries.X 2) ^ 2)) *
        fExp (-(MvPowerSeries.C (s2 / 2) * (MvPowerSeries.X 1 - MvPowerSeries.X 2) ^ 2)) := by
    rw [mul_pow, mul_pow, fExp_three (z 0), fExp_three (z 1), fExp_three (z 2),
      ← fExp_add (z3 0) (z3 1), ← fExp_add (by rw [map_add (f := _), z3, z3, add_zero]) (z3 2),
      ← fExp_add zS (zD 0 1), ← fExp_add (by rw [map_add (f := _), zS, zD, add_zero]) (zD 0 2),
      ← fExp_add (by rw [map_add (f := _), map_add (f := _), zS, zD, zD, add_zero, add_zero]) (zD 1 2)]
    congr 1
    ring
  have eS : evalSumThree (sgStar s2 P) = evalSumThree (sigma P) * _ := subst_sgStar s2 P (by simp)
  have eD : ∀ j k : Fin 3, evalDiffThree j k (sgStar s2 P) = evalDiffThree j k (sigma P) * _ :=
    fun j k => subst_sgStar s2 P (by simp)
  have e0 : ∀ x : Fin 3, (at1 x (sgStar s2 P) : MvPowerSeries (Fin 3) K) = at1 x (sigma P) * _ :=
    fun x => subst_sgStar s2 P (by simp)
  rw [eS, eD, eD, eD, e0, e0, e0]
  linear_combination
    ((fExp (-(MvPowerSeries.C (s2 / 2) * (MvPowerSeries.X 0 : MvPowerSeries (Fin 3) K) ^ 2)) *
        fExp (-(MvPowerSeries.C (s2 / 2) * MvPowerSeries.X 1 ^ 2)) *
        fExp (-(MvPowerSeries.C (s2 / 2) * MvPowerSeries.X 2 ^ 2))) ^ 3) * h +
    (-2 * (MvPowerSeries.X 0 * MvPowerSeries.X 1 * MvPowerSeries.X 2) ^ 3 *
      (evalSumThree (sigma P) * evalDiffThree 0 1 (sigma P) * evalDiffThree 0 2 (sigma P) * evalDiffThree 1 2 (sigma P))) * key

end Formalism.L2.Th1.B.Fs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.RealAdelicInertTransportTypeFormsEqAlt =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.Wp3ApplyEqSqMulSubSqMul =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.Wp3ApplyEqSqMulSubSqMul", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementD\npublic import Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalA\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.EvalSecondZeroAtVariableZero\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.OneAddMulDerivLogSubst\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.PderivZeroZeroWeierstrassDifference\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Th1.B.Det

open Formalism.InvariantFactorPaths.G7 (at1)

theorem tau_derivative_rule_holds : TauRule := by
  intro K _ _ g2 g3 P hP
  set U : MvPowerSeries (Fin 2) K := 1 - MvPowerSeries.X 0 ^ 2 * MvPowerSeries.X 1 ^ 2 * dq P with hU
  have hU1 : MvPowerSeries.constantCoeff U = 1 := by simp [hU]
  have hW : wpDiff P = (MvPowerSeries.X 0 ^ 2 - MvPowerSeries.X 1 ^ 2) * U :=
    Formalism.L2.Th1.B.Add0.wpDiff_eq _root_.Formalism.L2.Th1.B.difference_quotient_rule_holds hP.2.1
  have hL : par0 (sigS P) = fLog U := addSigmaLog K g2 g3 P hP
  have e0 := mul_pd_fLog (0 : Fin 2) hU1
  have e1 := mul_pd_fLog (1 : Fin 2) hU1
  have p0 := pderiv_zero_parallelogram_defect (sigS P)
  have p1 := pderiv_one_parallelogram_defect (sigS P)
  rw [hL] at p0 p1
  have x00 : pd 0 (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) = 1 := MvPowerSeries.pderiv_X_self
  have x11 : pd 1 (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) = 1 := MvPowerSeries.pderiv_X_self
  have x01 : pd 0 (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) = 0 := by
    simp
  have x10 : pd 1 (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) = 0 := by
    simp
  rw [hW]
  simp only [pd, Derivation.leibniz, map_sub, Derivation.leibniz_pow, smul_eq_mul, nsmul_eq_mul] at x00 x11 x01 x10 e0 e1 p0 p1 ⊢
  rw [x00, x11, x01, x10]
  linear_combination (MvPowerSeries.X 0 - MvPowerSeries.X 1) * (MvPowerSeries.X 0 ^ 2 - MvPowerSeries.X 1 ^ 2) * (-e0 + e1 + U * p0 - U * p1)


theorem core {R : Type} [CommRing R] (a b c Xa Ya Xb Yb Xc Yc h g3 : R)
    (Ca : Ya ^ 2 = 4 * Xa ^ 3 - 2 * h * a ^ 4 * Xa - g3 * a ^ 6)
    (Cb : Yb ^ 2 = 4 * Xb ^ 3 - 2 * h * b ^ 4 * Xb - g3 * b ^ 6)
    (Cc : Yc ^ 2 = 4 * Xc ^ 3 - 2 * h * c ^ 4 * Xc - g3 * c ^ 6) :
    2 * (a ^ 2 * Xb - b ^ 2 * Xa) * (a ^ 2 * Xc - c ^ 2 * Xa) * (b ^ 2 * Xc - c ^ 2 * Xb) * a *
      (c * (a ^ 3 * (b * (3 * Xb + Yb) * Yc - (6 * Xb ^ 2 - h * b ^ 4 + 3 * Yb) * (c * Xc)) -
          a * Xa * (3 * b ^ 3 * Yc - (6 * Xb ^ 2 - h * b ^ 4 + 3 * Yb) * c ^ 3) +
          Ya * (3 * b ^ 3 * (c * Xc) - b * (3 * Xb + Yb) * c ^ 3)) -
        b * (a ^ 3 * (b * Xb * (6 * Xc ^ 2 - h * c ^ 4 + 3 * Yc) - Yb * (c * (3 * Xc + Yc))) -
          a * Xa * (b ^ 3 * (6 * Xc ^ 2 - h * c ^ 4 + 3 * Yc) - Yb * (3 * c ^ 3)) +
          Ya * (b ^ 3 * (c * (3 * Xc + Yc)) - b * Xb * (3 * c ^ 3)))) =
    (a ^ 3 * (b * Xb * Yc - Yb * (c * Xc)) - a * Xa * (b ^ 3 * Yc - Yb * c ^ 3) +
        Ya * (b ^ 3 * (c * Xc) - b * Xb * c ^ 3)) *
      (-c * (b * (2 * a ^ 2 * Xb - b ^ 2 * (Ya + 2 * Xa)) -
            a * (a ^ 2 * (Yb + 2 * Xb) - 2 * b ^ 2 * Xa)) *
          (a ^ 2 * Xc - c ^ 2 * Xa) * (b ^ 2 * Xc - c ^ 2 * Xb) +
        b * (c * (2 * a ^ 2 * Xc - c ^ 2 * (Ya + 2 * Xa)) -
            a * (a ^ 2 * (Yc + 2 * Xc) - 2 * c ^ 2 * Xa)) *
          (a ^ 2 * Xb - b ^ 2 * Xa) * (b ^ 2 * Xc - c ^ 2 * Xb) +
        2 * a * (c * (2 * b ^ 2 * Xc - c ^ 2 * (Yb + 2 * Xb)) -
            b * (b ^ 2 * (Yc + 2 * Xc) - 2 * c ^ 2 * Xb)) *
          (a ^ 2 * Xb - b ^ 2 * Xa) * (a ^ 2 * Xc - c ^ 2 * Xa)) := by
  linear_combination (-a^2*b^2*c^2*(-Xb*c^2 + Xc*b^2)^3) * Ca + (a^2*c^2*(-Xa*c^2 + Xc*a^2)^2*(2*Xa*b^2*c^2 - 3*Xb*a^2*c^2 + Xc*a^2*b^2)) * Cb +
    (a^2*b^2*(-Xa*b^2 + Xb*a^2)^2*(-2*Xa*b^2*c^2 - Xb*a^2*c^2 + 3*Xc*a^2*b^2)) * Cc

section

variable {K : Type} [Field K] [CharZero K]

local notation "A3" => MvPowerSeries (Fin 3) K

theorem pderiv_series_at_variable (i x : Fin 3) (f : PowerSeries K) :
    pd i (at1 x f : A3) = at1 x (dz f) * pd i (MvPowerSeries.X x : A3) := by
  show MvPowerSeries.pderiv (R := K) i (PowerSeries.subst (MvPowerSeries.X x : A3) f) =
    PowerSeries.subst (MvPowerSeries.X x : A3) (PowerSeries.derivative (R := K) f) * MvPowerSeries.pderiv (R := K) i (MvPowerSeries.X x : A3)
  exact Formalism.G.LogCR.pderiv_psubst (by simp) f i

theorem partialDeriv_inVar_self (x : Fin 3) (f : PowerSeries K) : pd x (at1 x f : A3) = at1 x (dz f) := by
  rw [pderiv_series_at_variable, show pd x (MvPowerSeries.X x : A3) = 1 from MvPowerSeries.pderiv_X_self, mul_one]

theorem partialDeriv_inVar_of_ne {i x : Fin 3} (h : x ≠ i) (f : PowerSeries K) : pd i (at1 x f : A3) = 0 := by
  rw [pderiv_series_at_variable, show pd i (MvPowerSeries.X x : A3) = 0 by
    simp [MvPowerSeries.pderiv_X, Pi.single_eq_of_ne h], mul_zero]

theorem X_ne (j : Fin 3) : (MvPowerSeries.X j : A3) ≠ 0 := by
  intro h
  have h' := congrArg (MvPowerSeries.coeff (Finsupp.single j 1)) h
  simp [MvPowerSeries.coeff_X] at h'

def Xt (P : PowerSeries K) (j : Fin 3) : A3 := 1 + MvPowerSeries.X j ^ 2 * at1 j P

def Yt (P : PowerSeries K) (j : Fin 3) : A3 := -2 + MvPowerSeries.X j ^ 3 * at1 j (dz P)

def dXt (P : PowerSeries K) (j : Fin 3) : A3 :=
  2 * MvPowerSeries.X j * at1 j P + MvPowerSeries.X j ^ 2 * at1 j (dz P)

def dYt (P : PowerSeries K) (j : Fin 3) : A3 :=
  3 * MvPowerSeries.X j ^ 2 * at1 j (dz P) + MvPowerSeries.X j ^ 3 * at1 j (dz (dz P))

theorem pd_Xt_self (P : PowerSeries K) (j : Fin 3) :
    MvPowerSeries.pderiv (R := K) j (Xt P j) = dXt P j := by
  simp only [Xt, dXt, map_add (f := _), Derivation.leibniz, Derivation.leibniz_pow, Derivation.map_one_eq_zero,
    MvPowerSeries.pderiv_X_self, partialDeriv_inVar_self, smul_eq_mul, nsmul_eq_mul]
  push_cast
  ring

theorem pd_Xt_ne (P : PowerSeries K) {i j : Fin 3} (h : j ≠ i) :
    MvPowerSeries.pderiv (R := K) i (Xt P j) = 0 := by
  simp [Xt, Derivation.leibniz, Derivation.leibniz_pow, MvPowerSeries.pderiv_X, Pi.single_eq_of_ne h,
    partialDeriv_inVar_of_ne h]

theorem pd_neg_two (i : Fin 3) : MvPowerSeries.pderiv (R := K) i (-2 : A3) = 0 := by
  have h2 : MvPowerSeries.pderiv (R := K) i (2 : A3) = 0 := by
    simpa using (MvPowerSeries.pderiv (R := K) i).map_natCast 2
  rw [map_neg, h2, neg_zero]

theorem pd_Yt_self (P : PowerSeries K) (j : Fin 3) :
    MvPowerSeries.pderiv (R := K) j (Yt P j) = dYt P j := by
  simp only [Yt, dYt, map_add (f := _), Derivation.leibniz, Derivation.leibniz_pow, pd_neg_two,
    MvPowerSeries.pderiv_X_self, partialDeriv_inVar_self, smul_eq_mul, nsmul_eq_mul]
  push_cast
  ring

theorem pd_Yt_ne (P : PowerSeries K) {i j : Fin 3} (h : j ≠ i) :
    MvPowerSeries.pderiv (R := K) i (Yt P j) = 0 := by
  simp [Yt, Derivation.leibniz, Derivation.leibniz_pow, MvPowerSeries.pderiv_X, Pi.single_eq_of_ne h,
    partialDeriv_inVar_of_ne h, pd_neg_two]

theorem wp3_apply_eq_sq_mul_sub_sq_mul (P : PowerSeries K) (j k : Fin 3) :
    wp3 P j k = MvPowerSeries.X j ^ 2 * Xt P k - MvPowerSeries.X k ^ 2 * Xt P j := by
  simp only [wp3, Xt]
  ring

theorem det_three_points_eq_expansion (P : PowerSeries K) :
    det3 P = MvPowerSeries.X 0 ^ 3 * (MvPowerSeries.X 1 * Xt P 1 * Yt P 2 -
        Yt P 1 * (MvPowerSeries.X 2 * Xt P 2)) -
      MvPowerSeries.X 0 * Xt P 0 * (MvPowerSeries.X 1 ^ 3 * Yt P 2 -
        Yt P 1 * MvPowerSeries.X 2 ^ 3) +
      Yt P 0 * (MvPowerSeries.X 1 ^ 3 * (MvPowerSeries.X 2 * Xt P 2) -
        MvPowerSeries.X 1 * Xt P 1 * MvPowerSeries.X 2 ^ 3) := by
  simp [det3, Matrix.det_fin_three, Xt, Yt]
  ring

theorem X_mul_dXt (P : PowerSeries K) (j : Fin 3) :
    MvPowerSeries.X j * dXt P j = Yt P j + 2 * Xt P j := by
  simp only [dXt, Yt, Xt]
  ring

theorem curve_eq {g2 g3 : K} {P : PowerSeries K} (hP : IsWp g2 g3 P) (j : Fin 3) :
    Yt P j ^ 2 = 4 * Xt P j ^ 3 - 2 * MvPowerSeries.C (g2 / 2) * MvPowerSeries.X j ^ 4 * Xt P j -
      MvPowerSeries.C g3 * MvPowerSeries.X j ^ 6 := by
  have h' := congrArg (PowerSeries.substAlgHom (R := K) (PowerSeries.HasSubst.X (S := K) (τ := Fin 3) j)) hP.2.2
  simp only [map_add (f := _), map_sub, map_mul, map_pow, map_neg, map_ofNat, map_one, PowerSeries.coe_substAlgHom,
    PowerSeries.subst_X (R := K) (PowerSeries.HasSubst.X (S := K) j), PowerSeries.subst_C] at h'
  have hc : (MvPowerSeries.C g2 : A3) = 2 * MvPowerSeries.C (g2 / 2) := by
    conv_lhs => rw [show g2 = 2 * (g2 / 2) by ring]
    rw [map_mul, map_ofNat]
  simp only [Xt, Yt, Formalism.InvariantFactorPaths.G7.at1]
  linear_combination h' - (MvPowerSeries.X j ^ 4 * (1 + MvPowerSeries.X j ^ 2 * PowerSeries.subst (MvPowerSeries.X j : A3) P)) * hc

theorem X_mul_dYt {g2 g3 : K} {P : PowerSeries K} (hP : IsWp g2 g3 P) (j : Fin 3) :
    MvPowerSeries.X j * dYt P j =
      6 * Xt P j ^ 2 - MvPowerSeries.C (g2 / 2) * MvPowerSeries.X j ^ 4 + 3 * Yt P j := by
  have h' := congrArg (PowerSeries.substAlgHom (R := K) (PowerSeries.HasSubst.X (S := K) (τ := Fin 3) j)) (_root_.Formalism.L2.Th1.B.weierstrassReducedEquations K g2 g3 P hP).2
  simp only [map_add (f := _), map_sub, map_mul, map_pow, map_ofNat, PowerSeries.coe_substAlgHom,
    PowerSeries.subst_X (R := K) (PowerSeries.HasSubst.X (S := K) j), PowerSeries.subst_C] at h'
  simp only [dYt, Xt, Yt, Formalism.InvariantFactorPaths.G7.at1]
  linear_combination MvPowerSeries.X j ^ 2 * h'

theorem pderiv_left_weierstrass_pair (P : PowerSeries K) {j k : Fin 3} (h : k ≠ j) :
    pd j (wp3 P j k) = 2 * MvPowerSeries.X j * Xt P k - MvPowerSeries.X k ^ 2 * dXt P j := by
  rw [wp3_apply_eq_sq_mul_sub_sq_mul]
  simp only [map_sub, Derivation.leibniz, Derivation.leibniz_pow, MvPowerSeries.pderiv_X_self,
    MvPowerSeries.pderiv_X, Pi.single_eq_of_ne h, pd_Xt_self, pd_Xt_ne P h, smul_eq_mul, nsmul_eq_mul]
  push_cast
  ring

theorem pderiv_right_weierstrass_pair (P : PowerSeries K) {j k : Fin 3} (h : j ≠ k) :
    pd k (wp3 P j k) = MvPowerSeries.X j ^ 2 * dXt P k - 2 * MvPowerSeries.X k * Xt P j := by
  rw [wp3_apply_eq_sq_mul_sub_sq_mul]
  simp only [map_sub, Derivation.leibniz, Derivation.leibniz_pow, MvPowerSeries.pderiv_X_self,
    MvPowerSeries.pderiv_X, Pi.single_eq_of_ne h, pd_Xt_self, pd_Xt_ne P h, smul_eq_mul, nsmul_eq_mul]
  push_cast
  ring

theorem pderiv_one_det_three_points (P : PowerSeries K) :
    pd 1 (det3 P) = MvPowerSeries.X 0 ^ 3 * ((Xt P 1 + MvPowerSeries.X 1 * dXt P 1) * Yt P 2 -
        dYt P 1 * (MvPowerSeries.X 2 * Xt P 2)) -
      MvPowerSeries.X 0 * Xt P 0 * (3 * MvPowerSeries.X 1 ^ 2 * Yt P 2 -
        dYt P 1 * MvPowerSeries.X 2 ^ 3) +
      Yt P 0 * (3 * MvPowerSeries.X 1 ^ 2 * (MvPowerSeries.X 2 * Xt P 2) -
        (Xt P 1 + MvPowerSeries.X 1 * dXt P 1) * MvPowerSeries.X 2 ^ 3) := by
  have h0 : (0 : Fin 3) ≠ 1 := by decide
  have h2 : (2 : Fin 3) ≠ 1 := by decide
  rw [det_three_points_eq_expansion]
  simp only [map_add (f := _), map_sub, Derivation.leibniz, Derivation.leibniz_pow, MvPowerSeries.pderiv_X_self,
    MvPowerSeries.pderiv_X, Pi.single_eq_of_ne h0, Pi.single_eq_of_ne h2, pd_Xt_self, pd_Xt_ne P h0,
    pd_Xt_ne P h2, pd_Yt_self, pd_Yt_ne P h0, pd_Yt_ne P h2, smul_eq_mul, nsmul_eq_mul]
  push_cast
  ring

theorem pderiv_two_det_three_points (P : PowerSeries K) :
    pd 2 (det3 P) = MvPowerSeries.X 0 ^ 3 * (MvPowerSeries.X 1 * Xt P 1 * dYt P 2 -
        Yt P 1 * (Xt P 2 + MvPowerSeries.X 2 * dXt P 2)) -
      MvPowerSeries.X 0 * Xt P 0 * (MvPowerSeries.X 1 ^ 3 * dYt P 2 -
        Yt P 1 * (3 * MvPowerSeries.X 2 ^ 2)) +
      Yt P 0 * (MvPowerSeries.X 1 ^ 3 * (Xt P 2 + MvPowerSeries.X 2 * dXt P 2) -
        MvPowerSeries.X 1 * Xt P 1 * (3 * MvPowerSeries.X 2 ^ 2)) := by
  have h0 : (0 : Fin 3) ≠ 2 := by decide
  have h1 : (1 : Fin 3) ≠ 2 := by decide
  rw [det_three_points_eq_expansion]
  simp only [map_add (f := _), map_sub, Derivation.leibniz, Derivation.leibniz_pow, MvPowerSeries.pderiv_X_self,
    MvPowerSeries.pderiv_X, Pi.single_eq_of_ne h0, Pi.single_eq_of_ne h1, pd_Xt_self, pd_Xt_ne P h0,
    pd_Xt_ne P h1, pd_Yt_self, pd_Yt_ne P h0, pd_Yt_ne P h1, smul_eq_mul, nsmul_eq_mul]
  push_cast
  ring

end

theorem core2 {R : Type} [CommRing R] (a b c Xa Ya Xb Yb Xc Yc h g3 dXa dXb dXc dYb dYc : R)
    (Ca : Ya ^ 2 = 4 * Xa ^ 3 - 2 * h * a ^ 4 * Xa - g3 * a ^ 6)
    (Cb : Yb ^ 2 = 4 * Xb ^ 3 - 2 * h * b ^ 4 * Xb - g3 * b ^ 6)
    (Cc : Yc ^ 2 = 4 * Xc ^ 3 - 2 * h * c ^ 4 * Xc - g3 * c ^ 6)
    (ha : a * dXa = Ya + 2 * Xa) (hb : b * dXb = Yb + 2 * Xb) (hc : c * dXc = Yc + 2 * Xc)
    (kb : b * dYb = 6 * Xb ^ 2 - h * b ^ 4 + 3 * Yb)
    (kc : c * dYc = 6 * Xc ^ 2 - h * c ^ 4 + 3 * Yc) :
    (a * b * c) * (2 * (a ^ 2 * Xb - b ^ 2 * Xa) * (a ^ 2 * Xc - c ^ 2 * Xa) *
        (b ^ 2 * Xc - c ^ 2 * Xb) *
      ((a ^ 3 * ((Xb + b * dXb) * Yc - dYb * (c * Xc)) -
          a * Xa * (3 * b ^ 2 * Yc - dYb * c ^ 3) +
          Ya * (3 * b ^ 2 * (c * Xc) - (Xb + b * dXb) * c ^ 3)) -
        (a ^ 3 * (b * Xb * dYc - Yb * (Xc + c * dXc)) -
          a * Xa * (b ^ 3 * dYc - Yb * (3 * c ^ 2)) +
          Ya * (b ^ 3 * (Xc + c * dXc) - b * Xb * (3 * c ^ 2))))) =
    (a * b * c) * ((a ^ 3 * (b * Xb * Yc - Yb * (c * Xc)) - a * Xa * (b ^ 3 * Yc - Yb * c ^ 3) +
        Ya * (b ^ 3 * (c * Xc) - b * Xb * c ^ 3)) *
      (-((2 * a * Xb - b ^ 2 * dXa) - (a ^ 2 * dXb - 2 * b * Xa)) *
          (a ^ 2 * Xc - c ^ 2 * Xa) * (b ^ 2 * Xc - c ^ 2 * Xb) +
        ((2 * a * Xc - c ^ 2 * dXa) - (a ^ 2 * dXc - 2 * c * Xa)) *
          (a ^ 2 * Xb - b ^ 2 * Xa) * (b ^ 2 * Xc - c ^ 2 * Xb) +
        2 * ((2 * b * Xc - c ^ 2 * dXb) - (b ^ 2 * dXc - 2 * c * Xb)) *
          (a ^ 2 * Xb - b ^ 2 * Xa) * (a ^ 2 * Xc - c ^ 2 * Xa))) := by
  linear_combination (-a^2*b*c*(-Xb*c^2 + Xc*b^2)^2*(Xa*Yb*a*c^3 - Xa*Yc*a*b^3 - Xb*Ya*b*c^3 + Xb*Yc*a^3*b + Xc*Ya*b^3*c - Xc*Yb*a^3*c)) * ha +
    (a^2*c*(-Xa*c^2 + Xc*a^2)*(-2*Xa^2*Yb*b^2*c^5 + 2*Xa^2*Yc*b^5*c^2 + 3*Xa*Xb*Yb*a^2*c^5 - 3*Xa*Xb*Yc*a^2*b^3*c^2 + Xa*Xc*Yb*a^2*b^2*c^3 - Xa*Xc*Yc*a^2*b^5 - Xb^2*Ya*a*b*c^5 + Xb^2*Yc*a^4*b*c^2 + 2*Xb*Xc*Ya*a*b^3*c^3 - 3*Xb*Xc*Yb*a^4*c^3 + Xb*Xc*Yc*a^4*b^3 - Xc^2*Ya*a*b^5*c + Xc^2*Yb*a^4*b^2*c)) * hb +
    (a^2*b*(-Xa*b^2 + Xb*a^2)*(-2*Xa^2*Yb*b^2*c^5 + 2*Xa^2*Yc*b^5*c^2 + Xa*Xb*Yb*a^2*c^5 - Xa*Xb*Yc*a^2*b^3*c^2 + 3*Xa*Xc*Yb*a^2*b^2*c^3 - 3*Xa*Xc*Yc*a^2*b^5 + Xb^2*Ya*a*b*c^5 - Xb^2*Yc*a^4*b*c^2 - 2*Xb*Xc*Ya*a*b^3*c^3 - Xb*Xc*Yb*a^4*c^3 + 3*Xb*Xc*Yc*a^4*b^3 + Xc^2*Ya*a*b^5*c - Xc^2*Yb*a^4*b^2*c)) * hc +
    (-2*a^2*c^2*(-Xa*b^2 + Xb*a^2)*(-Xa*c^2 + Xc*a^2)^2*(-Xb*c^2 + Xc*b^2)) * kb + (-2*a^2*b^2*(-Xa*b^2 + Xb*a^2)^2*(-Xa*c^2 + Xc*a^2)*(-Xb*c^2 + Xc*b^2)) * kc +
    core a b c Xa Ya Xb Yb Xc Yc h g3 Ca Cb Cc

theorem determinant_derivative_rule_holds : DetRule := by
  intro K _ _ g2 g3 P hP
  have key := core2 (MvPowerSeries.X 0 : MvPowerSeries (Fin 3) K) (MvPowerSeries.X 1) (MvPowerSeries.X 2) (Xt P 0) (Yt P 0)
    (Xt P 1) (Yt P 1) (Xt P 2) (Yt P 2) (MvPowerSeries.C (g2 / 2)) (MvPowerSeries.C g3)
    (dXt P 0) (dXt P 1) (dXt P 2) (dYt P 1) (dYt P 2) (curve_eq hP 0) (curve_eq hP 1)
    (curve_eq hP 2) (X_mul_dXt P 0) (X_mul_dXt P 1) (X_mul_dXt P 2) (X_mul_dYt hP 1)
    (X_mul_dYt hP 2)
  have habc : (MvPowerSeries.X 0 * MvPowerSeries.X 1 * MvPowerSeries.X 2 : MvPowerSeries (Fin 3) K) ≠ 0 :=
    mul_ne_zero (mul_ne_zero (X_ne 0) (X_ne 1)) (X_ne 2)
  rw [pderiv_one_det_three_points, pderiv_two_det_three_points, pderiv_left_weierstrass_pair P (by decide : (1 : Fin 3) ≠ 0),
    pderiv_right_weierstrass_pair P (by decide : (0 : Fin 3) ≠ 1), pderiv_left_weierstrass_pair P (by decide : (2 : Fin 3) ≠ 0),
    pderiv_right_weierstrass_pair P (by decide : (0 : Fin 3) ≠ 2), pderiv_left_weierstrass_pair P (by decide : (2 : Fin 3) ≠ 1),
    pderiv_right_weierstrass_pair P (by decide : (1 : Fin 3) ≠ 2), wp3_apply_eq_sq_mul_sub_sq_mul, wp3_apply_eq_sq_mul_sub_sq_mul, wp3_apply_eq_sq_mul_sub_sq_mul, det_three_points_eq_expansion]
  apply mul_left_cancel₀ habc
  linear_combination key

end Formalism.L2.Th1.B.Det
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.Wp3ApplyEqSqMulSubSqMul =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.XTwoDvdOfRestrictThirdZero =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.XTwoDvdOfRestrictThirdZero", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementD\npublic import Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Th1.B.Wr

open MvPowerSeries

variable {K : Type} [Field K] [CharZero K]

private theorem hasSubst_fin_three_of_constantCoeff_eq_zero {a : Fin 3 → MvPowerSeries (Fin 3) K}
    (ha : ∀ s, constantCoeff (a s) = 0) : HasSubst a := by
  exact hasSubst_of_constantCoeff_zero ha

theorem hasSubst_restrictThirdZero : HasSubst ![(X 0 : MvPowerSeries (Fin 3) K), X 1, 0] :=
  hasSubst_fin_three_of_constantCoeff_eq_zero (fun s => by fin_cases s <;> simp)

theorem restrictThirdZero_eq_rescale (h : MvPowerSeries (Fin 3) K) : ev3 h = rescale ![1, 1, 0] h := by
  rw [rescale_eq_subst]
  unfold Formalism.L2.Th1.B.ev3
  congr 1
  funext s
  fin_cases s <;> simp

theorem coeff_restrictThirdZero (h : MvPowerSeries (Fin 3) K) (n : Fin 3 →₀ ℕ) (hn : n 2 = 0) :
    coeff n (ev3 h) = coeff n h := by
  rw [restrictThirdZero_eq_rescale]
  rw [coeff_rescale, Finsupp.prod_fintype _ _ (fun _ => pow_zero _), Fin.prod_univ_three]
  simp [hn]

theorem restrictThirdZero_mul (f g : MvPowerSeries (Fin 3) K) : ev3 (f * g) = ev3 f * ev3 g := by
  simp only [restrictThirdZero_eq_rescale, map_mul]

theorem restrictThirdZero_add (f g : MvPowerSeries (Fin 3) K) : ev3 (f + g) = ev3 f + ev3 g := by
  simp only [restrictThirdZero_eq_rescale, map_add (f := _)]

theorem restrictThirdZero_sub (f g : MvPowerSeries (Fin 3) K) : ev3 (f - g) = ev3 f - ev3 g := by
  simp only [restrictThirdZero_eq_rescale, map_sub]

theorem restrictThirdZero_natCast (k : ℕ) : ev3 (k : MvPowerSeries (Fin 3) K) = k := by
  simp only [restrictThirdZero_eq_rescale, map_natCast]

theorem restrictThirdZero_X_two : ev3 (X 2 : MvPowerSeries (Fin 3) K) = 0 := by
  unfold Formalism.L2.Th1.B.ev3
  rw [subst_X hasSubst_restrictThirdZero]
  simp

theorem X_two_dvd_of_restrictThirdZero {h : MvPowerSeries (Fin 3) K} (h0 : ev3 h = 0) : X 2 ∣ h := by
  rw [X_dvd_iff]
  intro m hm
  rw [← coeff_restrictThirdZero h m hm, h0]
  simp

private theorem X_two_fin_three_ne_zero : (X 2 : MvPowerSeries (Fin 3) K) ≠ 0 := by
  intro h
  have := congrArg (coeff (Finsupp.single (2 : Fin 3) 1)) h
  simp [coeff_X] at this

private theorem pderiv_X_fin_three_self (i : Fin 3) :
    MvPowerSeries.pderiv (R := K) i (X i : MvPowerSeries (Fin 3) K) = 1 := by
  simp

private theorem pderiv_two_X_two_pow_succ (m : ℕ) :
    MvPowerSeries.pderiv (R := K) 2 ((X 2 : MvPowerSeries (Fin 3) K) ^ (m + 1)) =
      ((m + 1 : ℕ) : MvPowerSeries (Fin 3) K) * X 2 ^ m := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [pow_succ (X 2 : MvPowerSeries (Fin 3) K) (m + 1), Derivation.leibniz, ih, pderiv_X_fin_three_self]
    simp only [smul_eq_mul]
    push_cast
    ring

private theorem pd_two_X_two_pow_succ_mul (m : ℕ) (R : MvPowerSeries (Fin 3) K) :
    Formalism.L2.Th1.B.pd 2 (X 2 ^ (m + 1) * R) =
      X 2 ^ (m + 1) * Formalism.L2.Th1.B.pd 2 R + R * (((m + 1 : ℕ) : MvPowerSeries (Fin 3) K) * X 2 ^ m) := by
  unfold Formalism.L2.Th1.B.pd
  rw [Derivation.leibniz, pderiv_two_X_two_pow_succ]
  simp only [smul_eq_mul]

theorem eq_zero_of_wronsk {Q B : MvPowerSeries (Fin 3) K} (hw : Q * pd 2 B = B * pd 2 Q)
    (hQ : ev3 Q = 0) (hB : ev3 B ≠ 0) : Q = 0 := by
  have key : ∀ m : ℕ, ∃ R : MvPowerSeries (Fin 3) K, Q = X 2 ^ (m + 1) * R := by
    intro m
    induction m with
    | zero =>
      obtain ⟨R, hR⟩ := X_two_dvd_of_restrictThirdZero hQ
      exact ⟨R, by rw [hR]; ring⟩
    | succ m ih =>
      obtain ⟨R, rfl⟩ := ih
      rw [pd_two_X_two_pow_succ_mul] at hw
      have h1 : X 2 ^ m * (X 2 * R * Formalism.L2.Th1.B.pd 2 B) =
          X 2 ^ m * (B * (((m + 1 : ℕ) : MvPowerSeries (Fin 3) K) * R + X 2 * Formalism.L2.Th1.B.pd 2 R)) := by
        linear_combination hw
      have h2 := mul_left_cancel₀ (pow_ne_zero m X_two_fin_three_ne_zero) h1
      have h3 := congrArg Formalism.L2.Th1.B.ev3 h2
      simp only [restrictThirdZero_mul, restrictThirdZero_add, restrictThirdZero_X_two,
        restrictThirdZero_natCast, zero_mul, add_zero] at h3
      have hc : ((m + 1 : ℕ) : MvPowerSeries (Fin 3) K) ≠ 0 := by
        intro hc
        have := congrArg (coeff (0 : Fin 3 →₀ ℕ)) hc
        simp at this
        exact Nat.cast_add_one_ne_zero m this
      have hR : Formalism.L2.Th1.B.ev3 R = 0 := by
        rcases mul_eq_zero.mp h3.symm with h | h
        · exact absurd h hB
        · rcases mul_eq_zero.mp h with h | h
          · exact absurd h hc
          · exact h
      obtain ⟨S, hS⟩ := X_two_dvd_of_restrictThirdZero hR
      exact ⟨S, by rw [hS]; ring⟩
  ext n
  obtain ⟨R, hR⟩ := key (n 2)
  suffices hz : coeff n ((X 2 : MvPowerSeries (Fin 3) K) ^ (n 2 + 1) * R) = 0 by
    rw [hR, hz]; simp
  rw [coeff_mul]
  apply Finset.sum_eq_zero
  rintro ⟨p, q⟩ hpq
  have hpq' : p + q = n := by simpa using hpq
  rw [coeff_X_pow]
  split_ifs with hp
  · exfalso
    subst hp
    have := DFunLike.congr_fun hpq' 2
    simp only [Finsupp.add_apply, Finsupp.single_eq_same] at this
    omega
  · simp

theorem wronskianUniqueness : WronskLemma := by
  intro L _ _ A Bs hw hr hB
  have hQ : Formalism.L2.Th1.B.ev3 (A - Bs) = 0 := by rw [restrictThirdZero_sub, hr, sub_self]
  have hd : Formalism.L2.Th1.B.pd 2 (A - Bs) = Formalism.L2.Th1.B.pd 2 A - Formalism.L2.Th1.B.pd 2 Bs := by
    simp only [Formalism.L2.Th1.B.pd, map_sub]
  have hw' : (A - Bs) * Formalism.L2.Th1.B.pd 2 Bs = Bs * Formalism.L2.Th1.B.pd 2 (A - Bs) := by
    rw [hd]
    linear_combination hw
  exact sub_eq_zero.mp (eq_zero_of_wronsk hw' hQ hB)

def sh (h : MvPowerSeries (Fin 3) K) : MvPowerSeries (Fin 3) K :=
  subst ![(X 0 : MvPowerSeries (Fin 3) K), X 1 - X 2, X 2] h

def shI (h : MvPowerSeries (Fin 3) K) : MvPowerSeries (Fin 3) K :=
  subst ![(X 0 : MvPowerSeries (Fin 3) K), X 1 + X 2, X 2] h

theorem cc_sh (s : Fin 3) :
    constantCoeff (![(X 0 : MvPowerSeries (Fin 3) K), X 1 - X 2, X 2] s) = 0 := by
  fin_cases s <;> simp

theorem cc_shI (s : Fin 3) :
    constantCoeff (![(X 0 : MvPowerSeries (Fin 3) K), X 1 + X 2, X 2] s) = 0 := by
  fin_cases s <;> simp

theorem hasSubst_sh : HasSubst ![(X 0 : MvPowerSeries (Fin 3) K), X 1 - X 2, X 2] :=
  hasSubst_fin_three_of_constantCoeff_eq_zero cc_sh

theorem hasSubst_shI : HasSubst ![(X 0 : MvPowerSeries (Fin 3) K), X 1 + X 2, X 2] :=
  hasSubst_fin_three_of_constantCoeff_eq_zero cc_shI

private theorem subst_fin_three_mul {a : Fin 3 → MvPowerSeries (Fin 3) K} (ha : HasSubst a)
    (f g : MvPowerSeries (Fin 3) K) : subst a (f * g) = subst a f * subst a g := by
  exact subst_mul ha f g

theorem sh_mul (f g : MvPowerSeries (Fin 3) K) : sh (f * g) = sh f * sh g := by
  unfold sh
  exact subst_fin_three_mul hasSubst_sh f g

private theorem subst_fin_three_sub {a : Fin 3 → MvPowerSeries (Fin 3) K} (ha : HasSubst a)
    (f g : MvPowerSeries (Fin 3) K) : subst a (f - g) = subst a f - subst a g := by
  exact subst_sub ha f g

theorem sh_sub (f g : MvPowerSeries (Fin 3) K) : sh (f - g) = sh f - sh g := by
  unfold sh
  exact subst_fin_three_sub hasSubst_sh f g

private theorem subst_X_fin_three_eq_self (h : MvPowerSeries (Fin 3) K) :
    subst (X : Fin 3 → MvPowerSeries (Fin 3) K) h = h := by
  rw [← map_algebraMap_eq_subst_X]
  simp

theorem shI_sh (h : MvPowerSeries (Fin 3) K) : shI (sh h) = h := by
  unfold shI sh
  rw [subst_comp_subst_apply hasSubst_sh hasSubst_shI]
  trans subst (X : Fin 3 → MvPowerSeries (Fin 3) K) h
  · congr 1
    funext s
    fin_cases s <;> simp [subst_X hasSubst_shI, subst_fin_three_sub hasSubst_shI]
  · exact subst_X_fin_three_eq_self h

theorem restrictThirdZero_shear (h : MvPowerSeries (Fin 3) K) : ev3 (sh h) = ev3 h := by
  unfold Formalism.L2.Th1.B.ev3 sh
  rw [subst_comp_subst_apply hasSubst_sh hasSubst_restrictThirdZero]
  congr 1
  funext s
  fin_cases s <;> simp [subst_X hasSubst_restrictThirdZero, subst_fin_three_sub hasSubst_restrictThirdZero]

theorem partialDeriv_two_shear (h : MvPowerSeries (Fin 3) K) : pd 2 (sh h) = sh (pd 2 h) - sh (pd 1 h) := by
  unfold sh Formalism.L2.Th1.B.pd
  rw [Formalism.G.LogCR.pderiv_subst cc_sh, Fin.sum_univ_three]
  simp
  try ring

theorem shearedWronskianUniqueness : ShearLemma := by
  intro L _ _ A Bs hw hr hB
  have h1 : sh A * Formalism.L2.Th1.B.pd 2 (sh Bs) = sh Bs * Formalism.L2.Th1.B.pd 2 (sh A) := by
    rw [partialDeriv_two_shear, partialDeriv_two_shear]
    have e := congrArg sh hw
    rw [sh_mul, sh_mul, sh_sub, sh_sub] at e
    linear_combination -e
  have h2 : Formalism.L2.Th1.B.ev3 (sh A) = Formalism.L2.Th1.B.ev3 (sh Bs) := by
    rw [restrictThirdZero_shear, restrictThirdZero_shear, hr]
  have h3 : Formalism.L2.Th1.B.ev3 (sh Bs) ≠ 0 := by
    rwa [restrictThirdZero_shear]
  have h4 := wronskianUniqueness L (sh A) (sh Bs) h1 h2 h3
  calc A = shI (sh A) := (shI_sh A).symm
    _ = shI (sh Bs) := by rw [h4]
    _ = Bs := shI_sh Bs

end Formalism.L2.Th1.B.Wr
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.XTwoDvdOfRestrictThirdZero =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalD =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalD", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementD\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffLawWithInverseThree\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.FirstLevelOfThreeVarParallelogram\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.RealAdelicInertTransportTypeFormsEqAlt\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.Wp3ApplyEqSqMulSubSqMul\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.XTwoDvdOfRestrictThirdZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.BridgeTwoMore\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementF\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Th1.B

open Formalism.L2.Th1.A (bridgeWp bridgeLaw bridgeCurve bridgeCurve3)

theorem frobStickLog : FrobStickLog := Fs.FrobStickLog_of _root_.Formalism.L2.Th1.B.Wr.shearedWronskianUniqueness _root_.Formalism.L2.Th1.B.Det.tau_derivative_rule_holds _root_.Formalism.L2.Th1.B.Det.determinant_derivative_rule_holds
theorem frobStick : FrobStick := Fs.FrobStick_of frobStickLog
theorem frobStickStar : FrobStickStar := Fs.FrobStickStar_of frobStick
theorem parThree : ParThree := E2.ParThree_of frobStickStar _root_.Formalism.L2.Th1.B.E2.formal_inverse_unit_holds
theorem first_level_all_formal_groups : LogSigmaPullbackCocycleJets := E3.log_sigma_pullback_cocycle_jets_of_parallelogram_and_cube parThree _root_.Formalism.L2.Th1.B.E3.cube_relation_from_parallelograms

end Formalism.L2.Th1.B
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalD =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.CocycleDiffExpEquiv =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.CocycleDiffExpEquiv", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementE\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalB\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalD\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffEqZeroOfParallelogram\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffLawWithInverseThree\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffSeriesAtVariable\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.InVarAddInVarNeZero\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.WeierstrassSeriesIntegral\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LogarithmEquivalence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.FormalGroupLog.FormalGroupLogProofs.ConstantCoeffSubstOfZero\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Th1.B.BeE

open Formalism.DworkPowerSeriesWeights (Integral mvExp)
open Formalism.InvariantFactorPaths.G7 (Simeq at1 cob d1 in3 swap2 DivAB equivalence_rules)
open Formalism.G.LogP (hs2 hs3 subst2_subst psubst_subst)

section Alg

variable {K : Type} [Field K] [CharZero K]

theorem cob_sub {F : MvPowerSeries (Fin 2) K} (hF : MvPowerSeries.constantCoeff F = 0)
    (f g : PowerSeries K) : cob F (f - g) = cob F f - cob F g := by
  have h0 := PowerSeries.HasSubst.of_constantCoeff_zero hF
  simp only [cob, at1, PowerSeries.subst_sub h0, PowerSeries.subst_sub (PowerSeries.HasSubst.X (0 : Fin 2)),
    PowerSeries.subst_sub (PowerSeries.HasSubst.X (1 : Fin 2))]
  ring

theorem cob_add {F : MvPowerSeries (Fin 2) K} (hF : MvPowerSeries.constantCoeff F = 0)
    (f g : PowerSeries K) : cob F (f + g) = cob F f + cob F g := by
  have h0 := PowerSeries.HasSubst.of_constantCoeff_zero hF
  simp only [cob, at1, PowerSeries.subst_add h0, PowerSeries.subst_add (PowerSeries.HasSubst.X (0 : Fin 2)),
    PowerSeries.subst_add (PowerSeries.HasSubst.X (1 : Fin 2))]
  ring

theorem cob_zero {F : MvPowerSeries (Fin 2) K} (hF : MvPowerSeries.constantCoeff F = 0) :
    cob F (0 : PowerSeries K) = 0 := by
  simpa using cob_sub hF (0 : PowerSeries K) 0

theorem cob_neg {F : MvPowerSeries (Fin 2) K} (hF : MvPowerSeries.constantCoeff F = 0)
    (f : PowerSeries K) : cob F (-f) = -cob F f := by
  have h := cob_sub hF (0 : PowerSeries K) f
  rwa [zero_sub, cob_zero hF, zero_sub] at h

theorem psubst_fLog {ι : Type} {U : MvPowerSeries ι K} (hU : MvPowerSeries.constantCoeff U = 0)
    {g : PowerSeries K} (hg : PowerSeries.constantCoeff g = 1) :
    PowerSeries.subst U (fLog g) = fLog (PowerSeries.subst U g) := by
  have hg1 : PowerSeries.constantCoeff (g - 1) = 0 := by simp [hg]
  have hU' := PowerSeries.HasSubst.of_constantCoeff_zero hU
  unfold fLog
  rw [PowerSeries.subst_comp_subst_apply (PowerSeries.HasSubst.of_constantCoeff_zero hg1) hU',
    PowerSeries.subst_sub hU']
  congr 2
  rw [← map_one (PowerSeries.C (R := K)), PowerSeries.subst_C, map_one]

theorem cc_psubst {ι : Type} {U : MvPowerSeries ι K} (hU : MvPowerSeries.constantCoeff U = 0)
    {g : PowerSeries K} {c : K} (hg : PowerSeries.constantCoeff g = c) :
    MvPowerSeries.constantCoeff (PowerSeries.subst U g) = c := by
  have hU' := PowerSeries.HasSubst.of_constantCoeff_zero hU
  have hgc : PowerSeries.constantCoeff (g - PowerSeries.C c) = 0 := by simp [hg]
  have e : g = PowerSeries.C c + (g - PowerSeries.C c) := by ring
  rw [e, PowerSeries.subst_add hU', PowerSeries.subst_C, map_add (f := _),
    PowerSeries.constantCoeff_subst_eq_zero hU _ hgc]
  simp

theorem cob_fLog {F : MvPowerSeries (Fin 2) K} (hF : MvPowerSeries.constantCoeff F = 0)
    {g : PowerSeries K} (hg : PowerSeries.constantCoeff g = 1) :
    cob F (fLog g) = fLog (PowerSeries.subst F g) - fLog (at1 0 g) - fLog (at1 1 g) := by
  have hX : ∀ i : Fin 2, MvPowerSeries.constantCoeff (MvPowerSeries.X i : MvPowerSeries (Fin 2) K) = 0 :=
    fun i => MvPowerSeries.constantCoeff_X i
  simp only [cob, at1]
  rw [psubst_fLog hF hg, psubst_fLog (hX 0) hg, psubst_fLog (hX 1) hg]

theorem two_ne {ι : Type} : (2 : MvPowerSeries ι K) ≠ 0 := by
  intro h
  have h2 := congrArg MvPowerSeries.constantCoeff h
  have e2 : MvPowerSeries.constantCoeff (2 : MvPowerSeries ι K) = 2 := map_ofNat _ 2
  rw [e2, map_zero] at h2
  exact two_ne_zero h2

end Alg

theorem BeESim_of (hG : GCob) (hL : LDiv) : BeESim := by
  intro K _ _ _ g2 g3 s2 c0 a1 a3 xT yT P l i ep F hP hF hi hC hC3 hT
  obtain ⟨nu, hnuI, hnu0, hLT⟩ := hL K g2 g3 c0 a1 a3 xT yT P l i ep F hP hF hi hC hC3 hT
  obtain ⟨hy, hcub, hx, -, -, hk⟩ := hT
  have hGC := hG K g2 g3 c0 a1 a3 xT yT P l i ep F hP hF hC hC3 hy hcub
  have hF0 := hF.1
  have hce : c0 - (xT + c0) = -xT := by ring
  have hn : ‖c0 - (xT + c0)‖ ≤ 1 := by rw [hce, norm_neg]; exact hx
  have hg : ep + PowerSeries.C (c0 - (xT + c0)) * PowerSeries.X ^ 2 = gT ep xT := by
    rw [hce, map_neg, gT]; ring
  have hD := (diffPh K g2 g3 s2 c0 (xT + c0) P l i ep F hP hcub hF hC).1
  obtain ⟨hw, hwI⟩ := _root_.Formalism.L2.Th1.B.ParE.weierstrass_series_integral K c0 (xT + c0) P l i ep F hF hC hn
  rw [hg] at hD hw
  have hg0 : PowerSeries.constantCoeff (gT ep xT) = 1 := by
    rw [gT, map_sub, hC.2.1]; simp
  have hw0 : PowerSeries.constantCoeff (PowerSeries.subst l (wOf (xT + c0) P)) = 0 := by
    have := congrArg PowerSeries.constantCoeff hw
    rw [map_mul, hg0, mul_one] at this
    rw [this]; simp
  generalize PowerSeries.subst l (wOf (xT + c0) P) = wl at hGC hwI hw0
  generalize phE s2 (xT + c0) (3 * (xT + c0) ^ 2 - g2 / 4) (wOf (xT + c0) P) l = ph' at hD ⊢
  generalize 3 * (xT + c0) ^ 2 - g2 / 4 = kap at hGC hk
  generalize phO s2 P l = ph at hD ⊢
  generalize gT ep xT = g at hGC hD hg0
  obtain ⟨d, hd⟩ : ∃ d : MvPowerSeries (Fin 2) K,
      d = 1 - MvPowerSeries.C kap * at1 0 wl * at1 1 wl := ⟨_, rfl⟩
  rw [← hd, hLT] at hGC
  have hdI : Integral d := by
    rw [hd]
    exact ParE.integral_sub' Formalism.InvariantFactorPaths.G7.LogarithmEquivalence.integral_one'
      (Formalism.InvariantFactorPaths.G7.LogarithmEquivalence.integral_mul' (Formalism.InvariantFactorPaths.G7.LogarithmEquivalence.integral_mul' (ParE.integral_C' hk)
        (integral_series_at_variable 0 wl hwI)) (integral_series_at_variable 1 wl hwI))
  have hd0 : MvPowerSeries.constantCoeff d = 1 := by
    rw [hd, map_sub, map_mul, map_mul, constantCoeff_series_at_variable 0 wl hw0]; simp
  have hFne : F ≠ 0 := by
    intro h
    have := law_coeff_single hF 0
    rw [h, map_zero] at this
    exact zero_ne_one this
  have hmain : PowerSeries.subst F g * (nu * nu) = at1 0 g * at1 1 g * (d * d) := by
    refine mul_right_cancel₀ (pow_ne_zero 2 hFne) ?_
    linear_combination hGC
  have cF := cc_psubst hF0 hg0
  have cA : MvPowerSeries.constantCoeff (at1 (0 : Fin 2) g) = 1 := cc_psubst (by simp) hg0
  have cB : MvPowerSeries.constantCoeff (at1 (1 : Fin 2) g) = 1 := cc_psubst (by simp) hg0
  have hlog := congrArg fLog hmain
  rw [ParO.fLog_mul cF (by rw [map_mul, hnu0, mul_one]), ParO.fLog_mul hnu0 hnu0,
    ParO.fLog_mul (by rw [map_mul, cA, cB, mul_one]) (by rw [map_mul, hd0, mul_one]),
    ParO.fLog_mul cA cB, ParO.fLog_mul hd0 hd0] at hlog
  have h2 : cob F (2 * (ph' - ph)) = 2 * (cob F ph' - cob F ph) := by
    rw [two_mul, cob_add hF0, cob_sub hF0]; ring
  have h3 := congrArg (cob F) hD
  rw [h2, cob_neg hF0, cob_fLog hF0 hg0] at h3
  have e : cob F ph' - cob F ph = fLog nu - fLog d := by
    refine mul_left_cancel₀ (two_ne (K := K)) ?_
    linear_combination h3 - hlog
  have s := (_root_.Formalism.L2.Th1.B.Sim.simeq_integral_series K (Fin 2) _ _ _ _ (_root_.Formalism.L2.Th1.B.Sim.simeq_formal_log K (Fin 2) nu hnu0 hnuI).1
    (_root_.Formalism.L2.Th1.B.Sim.simeq_formal_log K (Fin 2) d hd0 hdI).1).1
  unfold Simeq at s ⊢
  rw [e]
  simpa using s

theorem cocycle_diff_exp_equiv : CocycleDiffExpEquiv := by
  intro K _ _ _ F H H' hF0 hFi hHH'
  obtain ⟨-, -, -, -, hsub⟩ := equivalence_rules K (Fin 2)
  obtain ⟨hrefl, hsymm, -, hadd, -⟩ := equivalence_rules K (Fin 3)
  have hneg : ∀ a b : MvPowerSeries (Fin 3) K, Simeq a b → Simeq (-a) (-b) := by
    intro a b h
    have h' := hadd b a (-a - b) (-a - b) (hsymm a b h) (hrefl _)
    have e1 : b + (-a - b) = -a := by ring
    have e2 : a + (-a - b) = -b := by ring
    rwa [e1, e2] at h'
  have hsub' : ∀ a b c d : MvPowerSeries (Fin 3) K, Simeq a b → Simeq c d → Simeq (a - c) (b - d) := by
    intro a b c d h1 h2
    rw [sub_eq_add_neg, sub_eq_add_neg]
    exact hadd _ _ _ _ h1 (hneg _ _ h2)
  have hX : ∀ j : Fin 3, MvPowerSeries.constantCoeff (MvPowerSeries.X j : MvPowerSeries (Fin 3) K) = 0 :=
    fun j => MvPowerSeries.constantCoeff_X j
  have iX : ∀ j : Fin 3, Integral (MvPowerSeries.X j : MvPowerSeries (Fin 3) K) :=
    fun j => integral_mvPowerSeries_X j
  have c3 : MvPowerSeries.constantCoeff (in3 F) = 0 := Formalism.L2.Th1.B.E2.constantCoeff_law_first_two_of_three hF0
  have i3 : Integral (in3 F) := integral_subst_two_variables hFi _ _ (hX 0) (hX 1) (iX 0) (iX 1)
  unfold d1
  refine hsub' _ _ _ _ (hsub' _ _ _ _ ?_ ?_) ?_
  · refine hsub (Fin 3) H H' _ ?_ ?_ hHH' <;> intro j <;> fin_cases j <;> simp [c3, i3, hX, iX]
  · refine hsub (Fin 3) H H' _ ?_ ?_ hHH' <;> intro j <;> fin_cases j <;> simp [hX, iX]
  · refine hsub (Fin 3) H H' _ ?_ ?_ hHH' <;> intro j <;> fin_cases j <;> simp [hX, iX]

theorem CubeE_of (hB : BeESim) (hD : CocycleDiffExpEquiv) : CubeE := by
  intro K _ _ _ g2 g3 s2 c0 a1 a3 xT yT P l i ep F hW hLaw hI hC hC3 hT
  intro ph'
  have hl0 : PowerSeries.constantCoeff l = 0 := hLaw.2.2.1
  have hcc : PowerSeries.constantCoeff ph' = 0 :=
    (_root_.Formalism.L2.Th1.B.Ph.logSigmaOnePullbackSpec K s2 (xT + c0) (3 * (xT + c0) ^ 2 - g2 / 4) (wOf (xT + c0) P) l hl0).1
  obtain ⟨hdiv, hsw⟩ := _root_.Formalism.L2.Th1.B.coboundary_rules_hold K F l ph' hLaw hcc
  have hO := (first_level_all_formal_groups K g2 g3 s2 c0 a1 a3 P l i ep F hW hLaw hI hC hC3).2.2.1
  have hBE := hB K g2 g3 s2 c0 a1 a3 xT yT P l i ep F hW hLaw hI hC hC3 hT
  have hDD := hD K F _ _ hLaw.1 hLaw.2.1 hBE
  obtain ⟨-, -, htrans, -, -⟩ := equivalence_rules K (Fin 3)
  have h3 : Simeq (d1 F (cob F ph')) 0 := htrans _ _ _ hDD hO
  exact ⟨hdiv, hsw, h3, by rw [hsw]; exact h3⟩

end Formalism.L2.Th1.B.BeE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.CocycleDiffExpEquiv =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffQuotientXSq =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffQuotientXSq", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementE\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalA\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.EvalSecondZeroAtVariableZero\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.OneAddMulDerivLogSubst\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.RestrictSecondZeroInVarOne\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.WeierstrassReducedEquations\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Th1.B.SAdd

open Formalism.InvariantFactorPaths.G7 (at1)

section One

open PowerSeries

variable {K : Type} [Field K] [CharZero K]

theorem eq_X_sq_mul_quotient {w : PowerSeries K} (h0 : constantCoeff w = 0) (h1 : coeff 1 w = 0) :
    w = X ^ 2 * divByXSq w := by
  ext n
  rw [coeff_X_pow_mul']
  by_cases h : 2 ≤ n
  · rw [if_pos h, divByXSq, coeff_mk, Nat.sub_add_cancel h]
  · rw [if_neg h]
    have : n = 0 ∨ n = 1 := by omega
    rcases this with rfl | rfl
    · rw [coeff_zero_eq_constantCoeff_apply, h0]
    · exact h1

theorem constantCoeff_quotient_X_sq {w : PowerSeries K} (h2 : coeff 2 w = 1) :
    constantCoeff (divByXSq w) = 1 := by
  rw [← coeff_zero_eq_constantCoeff_apply, divByXSq, coeff_mk, zero_add, h2]

theorem constantCoeff_half_log {w : PowerSeries K} (h2 : coeff 2 w = 1) :
    constantCoeff (C (1 / 2 : K) * fLog (divByXSq w)) = 0 := by
  have h : constantCoeff (fLog (divByXSq w)) = 0 := constantCoeff_fLog (constantCoeff_quotient_X_sq h2)
  rw [map_mul, h, mul_zero]

theorem sW_sq {w : PowerSeries K} (h0 : constantCoeff w = 0) (h1 : coeff 1 w = 0)
    (h2 : coeff 2 w = 1) : sW w ^ 2 = w := by
  have hL := constantCoeff_half_log h2
  have hadd : C (1 / 2 : K) * fLog (divByXSq w) + C (1 / 2 : K) * fLog (divByXSq w) = fLog (divByXSq w) := by
    rw [← add_mul, ← map_add (f := _), add_halves, map_one, one_mul]
  have hE := fExp_add (K := K) (ι := Unit) hL hL
  rw [hadd, fExp_fLog (constantCoeff_quotient_X_sq h2)] at hE
  conv_rhs => rw [eq_X_sq_mul_quotient h0 h1, hE]
  rw [sW]
  ring

theorem constantCoeff_sW (w : PowerSeries K) : constantCoeff (sW w) = 0 := by
  rw [sW, map_mul, constantCoeff_X, zero_mul]

theorem coeff_one_sW {w : PowerSeries K} (h2 : coeff 2 w = 1) : coeff 1 (sW w) = 1 := by
  rw [sW, coeff_succ_X_mul, coeff_zero_eq_constantCoeff_apply]
  exact constantCoeff_fExp (constantCoeff_half_log h2)

theorem constantCoeff_dz_sW {w : PowerSeries K} (h2 : coeff 2 w = 1) :
    constantCoeff (dz (sW w)) = 1 := by
  rw [← coeff_zero_eq_constantCoeff_apply, dz, coeff_derivative, zero_add, coeff_one_sW h2]
  simp

end One

theorem sigma_rules_hold : SRules := by
  intro K _ _ A kap w hw
  obtain ⟨hw1, -⟩ := _root_.Formalism.L2.Th1.B.invertedSecondDeriv K A kap w hw
  obtain ⟨hw0, hw2, hwE⟩ := hw
  have hsq := sW_sq hw0 hw1 hw2
  have hd : 2 * sW w * dz (sW w) = dz w := by
    rw [← dz_sq, hsq]
  have hwne : w ≠ 0 := by
    intro h
    rw [h, map_zero] at hw2
    exact zero_ne_one hw2
  have h4 : (4 : PowerSeries K) ≠ 0 := by
    intro h
    have := congrArg PowerSeries.constantCoeff h
    rw [map_ofNat, map_zero] at this
    exact absurd this (by norm_num)
  have hs1 : dz (sW w) ^ 2 = 1 + PowerSeries.C A * w + PowerSeries.C kap * w ^ 2 := by
    refine mul_left_cancel₀ (mul_ne_zero h4 hwne) ?_
    linear_combination (-4 * dz (sW w) ^ 2) * hsq + (2 * sW w * dz (sW w) + dz w) * hd + hwE
  have hds : dz (sW w) ≠ 0 := by
    intro h
    have := constantCoeff_dz_sW hw2
    rw [h, map_zero] at this
    exact zero_ne_one this
  refine ⟨hsq, constantCoeff_sW w, coeff_one_sW hw2, hd, hs1, ?_⟩
  have h5 := congrArg dz hs1
  rw [dz_sq, dz_add, dz_add, dz_one, dz_mul, dz_mul, dz_C, dz_C, dz_sq] at h5
  refine mul_left_cancel₀ (mul_ne_zero two_ne hds) ?_
  linear_combination h5 - (PowerSeries.C A + 2 * PowerSeries.C kap * w) * hd

theorem eq_zero_of_shear {K : Type} [Field K] [CharZero K] {k : MvPowerSeries (Fin 2) K}
    (hk : pd 0 k = pd 1 k) (h0 : ev0 k = 0) : k = 0 := by
  have key : ∀ j : ℕ, ∀ n : Fin 2 →₀ ℕ, n 1 = j → MvPowerSeries.coeff n k = 0 := by
    intro j
    induction j with
    | zero => exact fun n hn => coeff_eq_zero_of_eval_second_zero h0 n hn
    | succ j ih =>
      intro n hn
      have hle : Finsupp.single (1 : Fin 2) 1 ≤ n := by
        rw [Finsupp.single_le_iff]; omega
      set m := n - Finsupp.single (1 : Fin 2) 1 with hm
      have hmn : m + Finsupp.single 1 1 = n := by
        rw [hm, tsub_add_cancel_of_le hle]
      have hm1 : m 1 = j := by simp [hm, hn]
      have e := congrArg (MvPowerSeries.coeff m) hk
      rw [MvPowerSeries.coeff_pderiv, MvPowerSeries.coeff_pderiv, hmn,
        ih (m + Finsupp.single 0 1) (by simp [hm1]), zero_mul] at e
      rcases mul_eq_zero.mp e.symm with h | h
      · exact h
      · exact absurd h (Nat.cast_add_one_ne_zero _)
  ext n
  rw [map_zero]
  exact key _ n rfl

theorem shear_two_variables_holds : ShearTwo := by
  intro K _ _ h hh
  have hk : pd 0 (h - atS (ev0 h)) = pd 1 (h - atS (ev0 h)) := by
    rw [Add1.pd_sub, Add1.pd_sub, pd_atS, pd_atS, hh]
  have h0 : ev0 (h - atS (ev0 h)) = 0 := by
    rw [eval_second_zero_sub, eval_second_zero_at_sum, sub_self]
  exact sub_eq_zero.mp (eq_zero_of_shear hk h0)

section Two

variable {K : Type} [Field K] [CharZero K]

theorem eval_second_zero_one : ev0 (1 : MvPowerSeries (Fin 2) K) = 1 := by
  rw [eval_second_zero_eq_algHom, map_one]

theorem atS_sq (f : PowerSeries K) : atS (f ^ 2) = atS f ^ 2 := by
  have hs : PowerSeries.HasSubst
      (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) :=
    PowerSeries.HasSubst.of_constantCoeff_zero (by simp)
  rw [atS, atS, ← PowerSeries.coe_substAlgHom hs, map_pow]

theorem shear_alg {R : Type} [CommRing R] (k a x y x1 y1 : R)
    (hx : x1 ^ 2 = 1 + a * x ^ 2 + k * (x ^ 2) ^ 2)
    (hy : y1 ^ 2 = 1 + a * y ^ 2 + k * (y ^ 2) ^ 2) :
    (1 - k * x ^ 2 * y ^ 2) *
        (y * ((a + 2 * k * x ^ 2) * x) - x * ((a + 2 * k * y ^ 2) * y)) =
      (x * y1 + y * x1) *
        (-(k * (2 * x * x1) * y ^ 2) + k * x ^ 2 * (2 * y * y1)) := by
  linear_combination (2 * k * x * y * y ^ 2) * hx - (2 * k * x * y * x ^ 2) * hy

end Two

theorem sigma_addition_holds : SAdd := by
  intro K _ _ A kap w hw
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := sigma_rules_hold K A kap w hw
  obtain ⟨hw0, hw2, -⟩ := hw
  have E1 : ∀ i : Fin 2, at1 i w = at1 i (sW w) ^ 2 := by
    intro i
    have := congrArg (at1 i) h1
    simpa only [Add1.triple_lintegral_eq, map_pow] using this.symm
  have E4 : ∀ i : Fin 2, at1 i (dz w) = 2 * at1 i (sW w) * at1 i (dz (sW w)) := by
    intro i
    have := congrArg (at1 i) h4
    simpa only [Add1.triple_lintegral_eq, map_mul, map_ofNat] using this.symm
  have E5 : ∀ i : Fin 2, at1 i (dz (sW w)) ^ 2 =
      1 + MvPowerSeries.C A * at1 i (sW w) ^ 2 + MvPowerSeries.C kap * (at1 i (sW w) ^ 2) ^ 2 := by
    intro i
    have := congrArg (at1 i) h5
    rw [← E1]
    simpa only [Add1.triple_lintegral_eq, map_pow, map_add (f := _), map_mul, map_one, Add1.inVarAlgHom_C] using this
  have E6 : ∀ i : Fin 2, at1 i (dz (dz (sW w))) =
      (MvPowerSeries.C A + 2 * MvPowerSeries.C kap * at1 i (sW w) ^ 2) * at1 i (sW w) := by
    intro i
    have := congrArg (at1 i) h6
    rw [← E1]
    simpa only [Add1.triple_lintegral_eq, map_add (f := _), map_mul, map_ofNat, Add1.inVarAlgHom_C] using this
  set d : MvPowerSeries (Fin 2) K := 1 - MvPowerSeries.C kap * at1 0 w * at1 1 w with hd
  set n : MvPowerSeries (Fin 2) K :=
    at1 0 (sW w) * at1 1 (dz (sW w)) + at1 1 (sW w) * at1 0 (dz (sW w)) with hn
  have hd0 : MvPowerSeries.constantCoeff d = 1 := by
    rw [hd, map_sub, map_mul, Add1.constantCoeff_inVar_eq_zero 1 hw0, mul_zero, map_one, sub_zero]
  have hdne : d ≠ 0 := by
    intro h
    rw [h, map_zero] at hd0
    exact zero_ne_one hd0
  have hdi : d⁻¹ * d = 1 := MvPowerSeries.inv_mul_cancel d (by rw [hd0]; exact one_ne_zero)
  have hhd : n * d⁻¹ * d = n := by rw [mul_assoc, hdi, mul_one]
  have n01 : (1 : Fin 2) ≠ 0 := by decide
  have n10 : (0 : Fin 2) ≠ 1 := by decide
  have pn0 : pd 0 n = at1 1 (dz (sW w)) * at1 0 (dz (sW w)) +
      at1 1 (sW w) * at1 0 (dz (dz (sW w))) := by
    rw [hn, pd, map_add (f := _)]
    change pd 0 _ + pd 0 _ = _
    rw [Add1.pd_mul, Add1.pd_mul, partialDeriv_inVar_self, partialDeriv_inVar_self, pderiv_at_variable_of_ne n01, pderiv_at_variable_of_ne n01]
    ring
  have pn1 : pd 1 n = at1 0 (sW w) * at1 1 (dz (dz (sW w))) +
      at1 0 (dz (sW w)) * at1 1 (dz (sW w)) := by
    rw [hn, pd, map_add (f := _)]
    change pd 1 _ + pd 1 _ = _
    rw [Add1.pd_mul, Add1.pd_mul, partialDeriv_inVar_self, partialDeriv_inVar_self, pderiv_at_variable_of_ne n10, pderiv_at_variable_of_ne n10]
    ring
  have pC : ∀ i : Fin 2, pd i (MvPowerSeries.C kap : MvPowerSeries (Fin 2) K) = 0 :=
    fun i => MvPowerSeries.pderiv_C
  have p1 : ∀ i : Fin 2, pd i (1 : MvPowerSeries (Fin 2) K) = 0 :=
    fun i => MvPowerSeries.pderiv_one
  have pd0 : pd 0 d = -(MvPowerSeries.C kap * at1 0 (dz w) * at1 1 w) := by
    rw [hd, Add1.pd_sub, Add1.pd_mul, Add1.pd_mul, p1, pC, partialDeriv_inVar_self, pderiv_at_variable_of_ne n01]
    ring
  have pd1 : pd 1 d = -(MvPowerSeries.C kap * at1 0 w * at1 1 (dz w)) := by
    rw [hd, Add1.pd_sub, Add1.pd_mul, Add1.pd_mul, p1, pC, partialDeriv_inVar_self, pderiv_at_variable_of_ne n10]
    ring
  have halg : d * (pd 0 n - pd 1 n) = n * (pd 0 d - pd 1 d) := by
    have := shear_alg (MvPowerSeries.C kap) (MvPowerSeries.C A) (at1 0 (sW w)) (at1 1 (sW w))
      (at1 0 (dz (sW w))) (at1 1 (dz (sW w))) (E5 0) (E5 1)
    rw [pn0, pn1, pd0, pd1, hd, hn, E6, E6, E4, E4, E1, E1]
    linear_combination this
  have q0 := congrArg (pd 0) hhd
  have q1 := congrArg (pd 1) hhd
  rw [Add1.pd_mul] at q0 q1
  have hsh : pd 0 (n * d⁻¹) = pd 1 (n * d⁻¹) := by
    refine sub_eq_zero.mp ?_
    refine (mul_eq_zero.mp (?_ : (d * d) * (pd 0 (n * d⁻¹) - pd 1 (n * d⁻¹)) = 0)).resolve_left
      (mul_ne_zero hdne hdne)
    linear_combination d * q0 - d * q1 + halg - (pd 0 d - pd 1 d) * hhd
  have hS := shear_two_variables_holds K (n * d⁻¹) hsh
  have hev : ev0 (n * d⁻¹) = sW w := by
    have e := congrArg ev0 hhd
    have ed : ev0 d = 1 := by
      rw [hd, eval_second_zero_sub, evalYZero_mul, restrictSecondZero_inVar_one, hw0, map_zero, mul_zero, eval_second_zero_one, sub_zero]
    have en : ev0 n = sW w := by
      rw [hn, evalYZero_add, evalYZero_mul, evalYZero_mul, eval_second_zero_at_variable_zero, restrictSecondZero_inVar_one, restrictSecondZero_inVar_one, h2,
        constantCoeff_dz_sW hw2, map_zero, map_one, mul_one, zero_mul, add_zero]
    rwa [evalYZero_mul, ed, mul_one, en] at e
  rw [hev] at hS
  rw [← hS, hhd]

theorem weierstrass_addition_holds : WAdd := by
  intro K _ _ A kap w hw
  have H := sigma_addition_holds K A kap w hw
  obtain ⟨h1, -, -, h4, -, -⟩ := sigma_rules_hold K A kap w hw
  have E1 : ∀ i : Fin 2, at1 i w = at1 i (sW w) ^ 2 := by
    intro i
    have := congrArg (at1 i) h1
    simpa only [Add1.triple_lintegral_eq, map_pow] using this.symm
  have E4 : ∀ i : Fin 2, at1 i (dz w) = 2 * at1 i (sW w) * at1 i (dz (sW w)) := by
    intro i
    have := congrArg (at1 i) h4
    simpa only [Add1.triple_lintegral_eq, map_mul, map_ofNat] using this.symm
  have ES : atS w = atS (sW w) ^ 2 := by rw [← atS_sq, h1]
  rw [E1, E1] at H
  rw [ES, E4, E4, E1, E1]
  linear_combination (4 * at1 0 (sW w) ^ 2 * at1 1 (sW w) ^ 2 *
    (atS (sW w) * (1 - MvPowerSeries.C kap * at1 0 (sW w) ^ 2 * at1 1 (sW w) ^ 2) +
      (at1 0 (sW w) * at1 1 (dz (sW w)) + at1 1 (sW w) * at1 0 (dz (sW w))))) * H

end Formalism.L2.Th1.B.SAdd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffQuotientXSq =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.DivLaw =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.DivLaw", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementE\npublic import Formalism.FormalGroupLog.FormalGroupLogProofs.ConstantCoeffSubstOfZero\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffEqZeroOfParallelogram\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffSeriesAtVariable\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.OneAddMulDerivLogSubst\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.WeierstrassSeriesIntegral\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LogarithmEquivalence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Th1.B.LDiv

open Formalism.DworkPowerSeriesWeights (Integral)
open Formalism.InvariantFactorPaths.G7 (Simeq at1 cob)
open Formalism.InvariantFactorPaths.G7.LogarithmEquivalence (integral_mul' integral_one' integral_of_mul_eq_one)
open Formalism.L2.Th1.B.ParE (integral_add' integral_sub' integral_C')
open Formalism.G.LogP (hs2 subst2_subst subst_XX)

section Div

variable {K : Type} [NormedField K] [IsUltrametricDist K] [CharZero K]

theorem div_law {F G : MvPowerSeries (Fin 2) K} {l i : PowerSeries K} (hF : LawLog F l)
    (hi : IsInv l i) (hG : Integral G)
    (hd : MvPowerSeries.subst
      ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K), at1 0 i] G = 0) :
    ∃ n : MvPowerSeries (Fin 2) K, Integral n ∧ G = F * n := by
  have c0 : MvPowerSeries.constantCoeff (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) = 0 := by simp
  have c1 : MvPowerSeries.constantCoeff (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) = 0 := by simp
  have cz : MvPowerSeries.constantCoeff (0 : MvPowerSeries (Fin 2) K) = 0 := by simp
  have ci : MvPowerSeries.constantCoeff (at1 (0 : Fin 2) i) = 0 := constantCoeff_series_at_variable 0 i hi.1
  have i0 := integral_mvPowerSeries_X (K := K) (0 : Fin 2)
  have i1 := integral_mvPowerSeries_X (K := K) (1 : Fin 2)
  have ii : Integral (at1 (0 : Fin 2) i) := integral_series_at_variable 0 i hi.2.1
  obtain ⟨D, hD⟩ : ∃ D, D = MvPowerSeries.subst
      ![at1 (0 : Fin 2) i, (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K)] F := ⟨_, rfl⟩
  have cD : MvPowerSeries.constantCoeff D = 0 := by
    rw [hD]
    exact law_constantCoeff_subst2 F hF.1 _ _ ci c1
  have iD : Integral D := by
    rw [hD]
    exact integral_subst_two_variables hF.2.1 _ _ ci c1 ii i1
  obtain ⟨H, hH⟩ : ∃ H, H = MvPowerSeries.subst
      ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K), D] G := ⟨_, rfl⟩
  have iH : Integral H := by
    rw [hH]
    exact integral_subst_two_variables hG _ _ c0 cD i0 iD
  have hH0 : MvPowerSeries.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K), 0] H = 0 := by
    have hb := hs2 c0 cz
    rw [hH, subst2_subst G c0 cD hb, MvPowerSeries.subst_X hb, hD, subst2_subst F ci c1 hb,
      MvPowerSeries.subst_X hb, subst_at_variable_eq_subst i 0 hb]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one]
    change MvPowerSeries.subst ![MvPowerSeries.X 0, MvPowerSeries.subst ![at1 (0 : Fin 2) i, 0] F] G
      = 0
    rw [law_right_zero hF _ ci]
    exact hd
  have hdvd : (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) ∣ H := by
    rw [MvPowerSeries.X_dvd_iff]
    intro m hm
    rw [law_coeff_axis0 H m hm, hH0, map_zero]
  obtain ⟨H1, e1⟩ := hdvd
  have iH1 : Integral H1 := by
    intro n
    have := iH (Finsupp.single 1 1 + n)
    rwa [e1, MvPowerSeries.X_def, MvPowerSeries.coeff_add_monomial_mul, one_mul] at this
  have hb := hs2 c0 hF.1
  refine ⟨MvPowerSeries.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K), F] H1,
    integral_subst_two_variables iH1 _ _ c0 hF.1 i0 hF.2.1, ?_⟩
  have e3 : MvPowerSeries.subst ![at1 (0 : Fin 2) i, F] F =
      (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) := by
    refine law_eq_of_log hF _ _ _ ci hF.1 c1 ?_
    have e4 := law_subst hF (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) (MvPowerSeries.X 1) c0 c1
    rw [subst_XX] at e4
    rw [e4, log_subst_formal_inverse hi 0]
    change -at1 0 l + (at1 0 l + _) = _
    rw [neg_add_cancel_left]
  have e2 : MvPowerSeries.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K), F] H = G := by
    rw [hH, subst2_subst G c0 cD hb, MvPowerSeries.subst_X hb, hD, subst2_subst F ci c1 hb,
      MvPowerSeries.subst_X hb, subst_at_variable_eq_subst i 0 hb]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one]
    change MvPowerSeries.subst ![MvPowerSeries.X 0, MvPowerSeries.subst ![at1 (0 : Fin 2) i, F] F] G
      = G
    rw [e3]
    exact subst_XX G
  rw [← e2, e1, MvPowerSeries.subst_mul hb, MvPowerSeries.subst_X hb]
  rfl

end Div

theorem LDiv_of (hG : GCob) : LDiv := by
  intro K _ _ _ g2 g3 c0 a1 a3 xT yT P l i ep F hP hF hi hC hC3 hT
  obtain ⟨hT1, hT2, nx, ny, na, -⟩ := hT
  have hep := hC.1
  have hep0 := hC.2.1
  have c0' : MvPowerSeries.constantCoeff (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) = 0 := by simp
  have c1' : MvPowerSeries.constantCoeff (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) = 0 := by simp
  have cz : MvPowerSeries.constantCoeff (0 : MvPowerSeries (Fin 2) K) = 0 := by simp
  have ci : MvPowerSeries.constantCoeff (at1 (0 : Fin 2) i) = 0 := constantCoeff_series_at_variable 0 i hi.1
  have i0 := integral_mvPowerSeries_X (K := K) (0 : Fin 2)
  have i1 := integral_mvPowerSeries_X (K := K) (1 : Fin 2)

  have hX : Integral (ι := Unit) (PowerSeries.X : PowerSeries K) := law_integral_X ()
  have hX2 : Integral (ι := Unit) (PowerSeries.X ^ 2 : PowerSeries K) := by
    rw [pow_two]
    exact integral_mul' hX hX
  have hX3 : Integral (ι := Unit) (PowerSeries.X ^ 3 : PowerSeries K) := by
    rw [pow_succ]
    exact integral_mul' hX2 hX
  have hg0 : PowerSeries.constantCoeff (gT ep xT) = 1 := by simp [gT, hep0]
  have hgi : Integral (ι := Unit) (gT ep xT) :=
    integral_sub' hep (integral_mul' (integral_C' nx) hX2)
  have hinv : (gT ep xT)⁻¹ * gT ep xT = 1 :=
    PowerSeries.inv_mul_cancel _ (by rw [hg0]; exact one_ne_zero)
  have hginv : Integral (ι := Unit) (gT ep xT)⁻¹ := integral_of_mul_eq_one hgi hg0 hinv
  have hth : Integral (ι := Unit) (thT ep xT yT) :=
    integral_mul' (integral_add' hep (integral_mul' (integral_C' ny) hX3)) hginv
  have hth0 : PowerSeries.constantCoeff (thT ep xT yT) = 1 := by
    have e := congrArg PowerSeries.constantCoeff hinv
    rw [map_mul, hg0, mul_one, map_one] at e
    unfold thT
    rw [map_mul, e]
    simp [hep0]
  have hL : Integral (LT ep xT yT a1) :=
    integral_sub' (integral_add' (integral_mul' i1 (integral_series_at_variable 0 _ hth))
      (integral_mul' i0 (integral_series_at_variable 1 _ hth)))
      (integral_mul' (integral_mul' (integral_C' na) i0) i1)

  have hb := hs2 c0' ci
  have eF : MvPowerSeries.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K), at1 0 i] F = 0 := by
    refine law_eq_of_log hF _ _ 0 c0' ci cz ?_
    rw [law_subst_zero l hF.2.2.1, log_subst_formal_inverse hi 0]
    exact add_neg_cancel _
  have hd : MvPowerSeries.subst
      ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K), at1 0 i] (LT ep xT yT a1) = 0 := by
    have e := congrArg (MvPowerSeries.subst
      ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K), at1 0 i])
      (hG K g2 g3 c0 a1 a3 xT yT P l i ep F hP hF hC hC3 hT1 hT2)
    rw [MvPowerSeries.subst_mul hb, MvPowerSeries.subst_mul hb, MvPowerSeries.subst_mul hb,
      MvPowerSeries.subst_pow hb F, eF, psubst_msubst _ hF.1 hb, eF] at e
    have e5 : PowerSeries.subst (0 : MvPowerSeries (Fin 2) K) (gT ep xT) ≠ 0 := by
      intro h
      rw [PowerSeries.subst_zero_eq_C_constantCoeff, hg0] at h
      simp at h
    rw [MvPowerSeries.subst_pow hb] at e
    simp only [ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true, zero_pow, mul_zero, zero_mul] at e
    rcases mul_eq_zero.1 e with h | h
    · exact absurd h e5
    · exact pow_eq_zero_iff (two_ne_zero) |>.1 h
  obtain ⟨nu, hnu, e⟩ := div_law hF hi hL hd
  refine ⟨nu, hnu, ?_, e⟩

  have a0 : ∀ n : MvPowerSeries (Fin 2) K,
      MvPowerSeries.coeff (Finsupp.single (1 : Fin 2) 1) (MvPowerSeries.X 1 * n) =
      MvPowerSeries.constantCoeff n := by
    intro n
    have := MvPowerSeries.coeff_add_monomial_mul (Finsupp.single (1 : Fin 2) 1) 0 n (1 : K)
    rwa [add_zero, one_mul] at this
  have a1' : ∀ n : MvPowerSeries (Fin 2) K,
      MvPowerSeries.coeff (Finsupp.single (1 : Fin 2) 1) (MvPowerSeries.X 0 * n) = 0 := by
    intro n
    have hx : (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) ∣ MvPowerSeries.X 0 * n :=
      Dvd.intro _ rfl
    exact MvPowerSeries.X_dvd_iff.1 hx _ (by simp)
  have h1 : MvPowerSeries.coeff (Finsupp.single (1 : Fin 2) 1) (LT ep xT yT a1) = 1 := by
    unfold LT
    have e6 : MvPowerSeries.C a1 * MvPowerSeries.X 0 * MvPowerSeries.X 1 =
        (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) * (MvPowerSeries.C a1 * MvPowerSeries.X 1) := by
      ring
    rw [e6, map_sub, map_add (f := _), a0, a1', a1', add_zero, sub_zero]
    exact (Formalism.G.LogP.constantCoeff_subst_of_zero (σ := Unit) (thT ep xT yT)
      (b := fun _ => (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K)) (fun _ => c0')).trans hth0
  have h2 : MvPowerSeries.coeff (Finsupp.single (1 : Fin 2) 1) (F * nu) =
      MvPowerSeries.constantCoeff nu := by
    classical
    rw [MvPowerSeries.coeff_mul, Finsupp.antidiagonal_single, Finset.sum_map]
    simp [Finset.Nat.antidiagonal_succ, law_coeff_single hF 1, hF.1]
  rw [e, h2] at h1
  exact h1

end Formalism.L2.Th1.B.LDiv
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.DivLaw =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalE =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalE", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.StatementE\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.AtVariableWeierstrassDerivative\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.CocycleDiffExpEquiv\npublic import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.ConstantCoeffQuotientXSq\nimport Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.LogarithmicSubstitution.DivLaw\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Th1.B

theorem gCob : GCob := GCob.GCob_of _root_.Formalism.L2.Th1.B.SAdd.weierstrass_addition_holds _root_.Formalism.L2.Th1.B.GCob.weierstrass_derivative_unit_holds
theorem lDiv : LDiv := LDiv.LDiv_of gCob
theorem beESim : BeESim := BeE.BeESim_of gCob lDiv
theorem cubeE : CubeE := BeE.CubeE_of beESim _root_.Formalism.L2.Th1.B.BeE.cocycle_diff_exp_equiv

end Formalism.L2.Th1.B
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.FinalE =====
