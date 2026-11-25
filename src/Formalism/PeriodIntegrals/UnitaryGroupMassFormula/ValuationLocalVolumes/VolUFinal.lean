module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolTSt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolTUnit
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUTr
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUHerm
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.DiffProd
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.CondAllPf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUTyp
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUTF, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUFinal

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUTF =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUTF", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolTSt\nimport Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolTUnit\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUTr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.NcVal

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.LocVol Formalism.L2.SG.TypedSets Formalism.L2.SG.Sub Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
  NumberField IsDedekindDomain
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace VolUF

variable {D : D7} (X : HidaSetting D)

theorem star_eq (a : D.host.E) : star a = D.host.conj a := by
  apply D.host.φ₀.injective
  rw [show star a = IsCMField.complexConj D.host.E a from rfl, IsCMField.complexEmbedding_complexConj]
  exact (D.host.conjE_apply D.host.φ₀ a).symm

theorem sig_eq (b : X.B.I.E) : X.ιE (X.B.I.cm.sig b) = star (X.ιE b) := by
  have h1 : X.B.I.cm.sig b = star b := rfl
  rw [h1, X.ιE_conj, star_eq]

theorem hE_crd (x y : (VS D).V) :
    X.ιE (hE X.B.I.cm.sig X.B.I.J (crdOf X.B.I X.ιE X.bas x) (crdOf X.B.I X.ιE X.bas y)) = (VS D).hT x y := by
  unfold hE Formalism.UG.hform crdOf

  simp only [map_sum, map_mul, RingHom.coe_coe]
  simp only [sig_eq, X.J_eq, RingEquiv.apply_symm_apply]
  conv_rhs => rw [← X.bas.sum_repr x, ← X.bas.sum_repr y]

  simp only [map_sum, LinearMap.sum_apply, map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul, starRingEnd_apply,
  RingHom.id_apply, Finset.mul_sum]
  conv_rhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem gram_eq (w : D.what₂.Word) (i j : Fin (D.R.rS + 1)) :
    X.ιE (gramE X.B.I.cm.sig X.B.I.J (F0 (frameOf X w)) i j) =
      if i = Fin.last D.R.rS ∧ j = Fin.last D.R.rS then -(((D.mem w).A.T : ℕ) : D.host.E) else 0 := by
  unfold gramE
  induction i using Fin.lastCases with
  | last =>
    induction j using Fin.lastCases with
    | last =>
      simp only [F0, Fin.snoc_last, frameOf]
      rw [hE_crd, X.zu_norm]
      simp
    | cast b =>
      simp only [F0, Fin.snoc_last, Fin.snoc_castSucc, frameOf]
      rw [hE_crd, ← LinearMap.isSymm_def.1 (VS D).herm (X.eX b) (X.zu w), (X.zu_orth w b).1, map_zero]
      simp [Fin.castSucc_ne_last]
  | cast a =>
    induction j using Fin.lastCases with
    | last =>
      simp only [F0, Fin.snoc_last, Fin.snoc_castSucc, frameOf]
      rw [hE_crd, (X.zu_orth w a).1]
      simp [Fin.castSucc_ne_last]
    | cast b =>
      simp only [F0, Fin.snoc_castSucc, frameOf]
      rw [hE_crd, X.ee]
      simp [Fin.castSucc_ne_last]

theorem gram_eq' (w : D.what₂.Word) (i j : Fin (D.R.rS + 1)) :
    gramE X.B.I.cm.sig X.B.I.J (F0 (frameOf X w)) i j =
      if i = Fin.last D.R.rS ∧ j = Fin.last D.R.rS then -(((D.mem w).A.T : ℕ) : X.B.I.E) else 0 := by
  apply X.ιE.injective
  rw [gram_eq]
  split_ifs <;> simp

theorem tf_diff (u u' : D.what₂.Word) (v : PlX X) (g : ℕ) (i j : Fin (D.R.rS + 1)) :
    (TFv X u' v i j - TFv X u v i j) * sc (E := X.B.I.E) v (g : Fv X.B.I.F v)⁻¹ =
      sc (E := X.B.I.E) v (if i = Fin.last D.R.rS ∧ j = Fin.last D.R.rS then
        ((((D.mem u).A.T : ℕ) : Fv X.B.I.F v) - (((D.mem u').A.T : ℕ) : Fv X.B.I.F v)) * (g : Fv X.B.I.F v)⁻¹
        else 0) := by
  unfold TFv
  simp only [Matrix.map_apply, gram_eq']
  split_ifs with h
  · rw [VolTU.sc_mul]
    congr 1
    rw [Formalism.L2.SG.Pf.NcVal.TrW.sc_eq, map_sub, map_natCast, map_natCast, map_neg, map_neg, map_natCast, map_natCast]
    ring
  · rw [sub_self, zero_mul, Formalism.L2.SG.Pf.NcVal.TrW.sc_eq, map_zero]

theorem sigR_sc (v : PlX X) (x : Fv X.B.I.F v) :
    sigR (Fv X.B.I.F v) X.B.I.cm.sig (sc (E := X.B.I.E) v x) = sc (E := X.B.I.E) v x := by
  simp [sigR, sc, Algebra.TensorProduct.map_tmul]

end VolUF

theorem volTTFCong_of {D : D7} (X : HidaSetting D) (u u' : D.what₂.Word) (v : PlX X) (hv : TypAt X v) :
    VolTTFCong X u u' v := by
  obtain ⟨m, hm⟩ := tCongX X u u' ⟨v, hv⟩
  have hg0 : (gAt X v : Fv X.B.I.F v) ≠ 0 := VolTU.natCast_ne_zero v (gAt_prime X v).ne_zero
  have hk : ((((D.mem u).A.T : ℕ) : Fv X.B.I.F v) - (((D.mem u').A.T : ℕ) : Fv X.B.I.F v)) *
      (gAt X v : Fv X.B.I.F v)⁻¹ = (m : Fv X.B.I.F v) := by
    have hm' : ((((D.mem u).A.T : ℕ) : ℤ) : Fv X.B.I.F v) - ((((D.mem u').A.T : ℕ) : ℤ) : Fv X.B.I.F v) =
        ((gAt X v : ℤ) : Fv X.B.I.F v) * (m : Fv X.B.I.F v) := by
      rw [← Int.cast_sub, ← Int.cast_mul]
      exact congrArg _ hm
    push_cast at hm'
    rw [hm', mul_comm, ← mul_assoc, inv_mul_cancel₀ hg0, one_mul]
  refine ⟨fun i j => ?_, fun i j => ?_⟩
  · simp only
    rw [VolUF.tf_diff, VolUF.tf_diff, VolUF.sigR_sc]
    congr 1
    simp only [and_comm]
  · simp only
    rw [VolUF.tf_diff]
    split_ifs
    · rw [hk, Formalism.L2.SG.Pf.NcVal.TrW.sc_eq]
      exact Formalism.L2.SG.Pf.NcVal.TrW.alg_mem v (_root_.intCast_mem _ m)
    · rw [Formalism.L2.SG.Pf.NcVal.TrW.sc_eq, map_zero]
      exact Submodule.zero_mem _

end Formalism.L2.SG.Pf.NcVal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUTF =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUFinal =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUFinal", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUHerm\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.DiffProd\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.CondAllPf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUTF\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUTr\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUTyp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf.NcVal

open Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.LocVol Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (X : HidaSetting D) (u u' : D.what₂.Word) (ψ : AddChar (AF X.B.I.F) ℂ)

def VolUHerm : Prop :=
  IsCharAF X.B.I.F ψ → IsStdChar ψ → ∀ v : PlX X, TypAt X v → VolTHermCnt X.B.I.cm.sig ψ v (gAt X v) D.R.rS

theorem volTypV_of_herm (hH : VolUHerm X ψ) : VolTypV X u u' ψ :=
  volTypV_of_cnt X u u' ψ Formalism.L2.SG.Pf.conductor_inverse_different (fun hh => hH hh.1 hh.2.1)
    (fun _ v hv => volTTFCong_of X u u' v hv)

def VolUHermBox : Prop :=
  IsCharAF X.B.I.F ψ → IsStdChar ψ → ∀ v : PlX X, TypAt X v →
    VolUHm.VolTHermBox X.B.I.cm.sig v D.R.rS ψ (gAt X v)

theorem volUHerm_of_box (hB : VolUHermBox X ψ) : VolUHerm X ψ := by
  intro hψ hs v hv
  obtain ⟨-, -, hd⟩ := VolUT.typ_arith X v hv
  have hinv : ∀ y : X.B.I.E, X.B.I.cm.sig (X.B.I.cm.sig y) = y := fun y => star_star y
  exact VolUHm.volTHermCnt_of_box X.B.I.cm.sig v D.R.rS ψ hψ X.B.I.cm.deg2
    (VolUTr.annX_of X ψ Formalism.L2.SG.Pf.conductor_inverse_different hψ hs v) hd hinv (gAt X v) (hB hψ hs v hv)

theorem volTypV_of_box (hB : VolUHermBox X ψ) : VolTypV X u u' ψ :=
  volTypV_of_herm X u u' ψ (volUHerm_of_box X ψ hB)

end Formalism.L2.SG.Pf.NcVal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.VolUFinal =====
