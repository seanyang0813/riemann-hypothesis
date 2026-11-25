module

public import Formalism.PeriodIntegrals.GTLower
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ZScalarVanish
public import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.CapelliShift
public import Formalism.RealPlaceAnalysis.StatementE
public import Lemmata.GeneralBFactRight.Imports
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HwIrred
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.IoPolDiagHw
public import Formalism.PeriodIntegrals.GTDefs
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.AdjBase
public import Formalism.LocalRingCardinality.DataCoeff
public import Formalism.PeriodIntegrals.HwIrred
public import Formalism.PeriodIntegrals.SchurFock
public import Mathlib.LinearAlgebra.Eigenspace.Triangularizable
public import Mathlib.LinearAlgebra.Eigenspace.Basic
public import Formalism.GradedWeylDivisibility.FinalB
public import Formalism.GradedWeylDivisibility.FinalD
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.IoExistsOfCap
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.CapelliEqv
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinTopCoefficient.CardEraseIccMin
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinTopCoefficient.InterlacingDefectEqCard
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.MultisetProdNormLeOne
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionLift
import Formalism.LocalRingCardinality.Params
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ProdFactorialSupportSubSingle
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightIrreducible.ConstructionB
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightIrreducible.ConstructionA
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.QuantumDetHighestWeightHolds
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinBranching.RowActDiagMonomial

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.Assembly, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.CapelliZ, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.Capelli2_2, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.SqActMemNabla, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitPowerNormScale.NormUnitsZpowSq, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionAdj, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionBrInt, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.IoXiHw, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionIo, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinTopCoefficient.NumMore, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionNum, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.RowsZStrictMono, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.EvalInitMinorNormLe, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionXi, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.GTLowerOf

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.Assembly =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.Assembly", "h": "module\n\npublic import Formalism.PeriodIntegrals.GTLower\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ZScalarVanish\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions MvPolynomial

theorem ioIntegral_of (hZ : CapelliZ) (hL : LiftMod) (hV : ZScalarVanish) : IoIntegral := by
  intro n N h lam sg hI io0 hE hx hW s hs
  obtain ⟨Z, hZi, hZa⟩ := hZ n N h lam sg hI
  obtain ⟨m, hm, hd⟩ := hL n N h lam sg hI io0 hE hx hW s hs
  obtain ⟨f', hf', hZf⟩ := hZi m hm
  refine ⟨f', hf', ?_⟩
  have hsC : MvPolynomial.map (Int.castRingHom ℂ) s ∈ nablaSq ℂ n sg :=
    Formalism.GradedWeylDivisibility.dualWeylMap ℤ ℂ (Int.castRingHom ℂ) n n sg.natW s hs
  have hO : OtherPart h lam sg ≤ LinearMap.ker Z := by
    unfold OtherPart
    refine iSup_le fun mu => iSup_le fun hmu => iSup_le fun hne => iSup_le fun hw =>
      iSup_le fun φ => iSup_le fun hφ => ?_
    rintro _ ⟨t, ht, rfl⟩
    rw [LinearMap.mem_ker, hZa mu hmu φ hφ t ht, hV n N h lam sg mu hI hmu hne hw, Int.cast_zero, zero_smul]
  have h0 := hO hd
  rw [LinearMap.mem_ker, map_sub, hZf, hZa sg hI io0 hE _ hsC] at h0
  have hz : zScalar h lam sg sg = cBr h lam sg := rfl
  rw [hz] at h0
  rw [map_smul]
  exact (sub_eq_zero.mp h0).symm

theorem sqAct_smul {k : ℕ} (mu : DomWeight k) (g : GL (Fin k) ℂ) (c : ℂ)
    (x : MvPolynomial (Fin k × Fin k) ℂ) : sqAct ℂ k mu g (c • x) = c • sqAct ℂ k mu g x := by
  rw [sqAct, sqAct, map_smul, smul_comm]

theorem gTLower_of_steps (hN : Numbers) (hX : XiFacts) (hE : IoExists) (hP4 : IoIntegral)
    (hA : AdjointBr) (hB : BrIntegral) : PI.GTLower := by
  intro n N h lam sg hI
  obtain ⟨hc0, hcB, hdeg⟩ := hN n N h lam sg hI
  obtain ⟨hxi0, -⟩ := hX n N h lam sg hI
  obtain ⟨io0, ⟨hE1, hE2⟩, hx, hW⟩ := hE n N h lam sg hI
  let c : ℂ := ((cBr h lam sg : ℤ) : ℂ)
  let io := c • io0
  have hio : ∀ x, io x = c • io0 x := fun x => rfl
  have I2 : ∀ s ∈ nablaSq ℂ n sg, io s ∈ nablaSq ℂ N lam := fun s hs =>
    Submodule.smul_mem _ _ (hE1 s hs)
  have I3 : ∀ (g : GL (Fin n) ℂ), ∀ s ∈ nablaSq ℂ n sg,
      io (sqAct ℂ n sg g s) = sqAct ℂ N lam (embGL ℂ n N h g) (io s) := by
    intro g s hs
    rw [hio, hio, hE2 g s hs, sqAct_smul]
  have I4 : io (extremal ℂ n sg) = c • xi ℂ h lam sg := by rw [hio, hx]
  have I5 : LastWeight lam sg io := by
    intro a s hs
    rw [hio, sqAct_smul, hW a s hs, smul_comm]
  have I1 : ∀ s ∈ nablaSq ℤ n sg, ∃ f ∈ nablaSq ℤ N lam,
      io (MvPolynomial.map (Int.castRingHom ℂ) s) = MvPolynomial.map (Int.castRingHom ℂ) f := by
    intro s hs
    obtain ⟨f, hf, hf'⟩ := hP4 n N h lam sg hI io0 ⟨hE1, hE2⟩ hx hW s hs
    exact ⟨f, hf, by rw [hio, ← map_smul]; exact hf'⟩
  obtain ⟨I6, br, hrest, hT⟩ := hA n N h lam sg hI io ⟨I2, I3⟩ I4 I5
  have B1 := hB n N h lam sg hI io br I1 I2 hrest.1 hT
  exact ⟨hc0, hcB, hxi0, hdeg, io, br, ⟨I1, I2, I3, I4, I5, I6⟩, ⟨B1, hrest⟩, hT⟩

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.Assembly =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.CapelliZ =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.CapelliZ", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.CapelliShift\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ZScalarVanish\npublic import Formalism.RealPlaceAnalysis.StatementE\npublic import Lemmata.GeneralBFactRight.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions Formalism.GradedWeylDivisibility MvPolynomial

def CapScalar : Prop :=
  ∀ {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (mu : DomWeight n)
    (φ : MvPolynomial (Fin n × Fin n) ℂ →ₗ[ℂ] MvPolynomial (Fin N × Fin N) ℂ), IsEqv h mu lam φ →
    ∀ s ∈ nablaSq ℂ n mu, ∀ u : ℂ,
      Formalism.REAL.qdet (capE h lam) u (φ s) = (∏ k : Fin n, (u - (k : ℂ) + (mu.w k : ℂ))) • φ s

def capF {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (i : Fin n) (v : ℤ) :
    Module.End ℂ (MvPolynomial (Fin N × Fin N) ℂ) :=
  ((-1 : ℂ) ^ n) • Formalism.REAL.qdet (capE h lam) (-((v : ℂ) - ((i.1 : ℤ) : ℂ)))

def capZ {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) :
    Module.End ℂ (MvPolynomial (Fin N × Fin N) ℂ) :=
  ((List.finRange n).map fun i =>
    ((((Rset h lam sg i).erase (sg.w i)).toList.map fun v => capF h lam i v).prod)).prod

theorem capF_scalar (hC : CapScalar) {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (mu : DomWeight n)
    (φ : MvPolynomial (Fin n × Fin n) ℂ →ₗ[ℂ] MvPolynomial (Fin N × Fin N) ℂ) (hφ : IsEqv h mu lam φ)
    (s : MvPolynomial (Fin n × Fin n) ℂ) (hs : s ∈ nablaSq ℂ n mu) (i : Fin n) (v : ℤ) :
    capF h lam i v (φ s) = (∏ j : Fin n, ((((v - (i.1 : ℤ)) - mu.w j + (j.1 : ℤ) : ℤ)) : ℂ)) • φ s := by
  rw [capF, LinearMap.smul_apply, hC h lam mu φ hφ s hs, smul_smul]
  congr 1
  have : ((-1 : ℂ) ^ n) = ∏ _j : Fin n, (-1 : ℂ) := by simp
  rw [this, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun j _ => ?_
  push_cast; ring

theorem capZ_scalar (hC : CapScalar) {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg mu : DomWeight n)
    (φ : MvPolynomial (Fin n × Fin n) ℂ →ₗ[ℂ] MvPolynomial (Fin N × Fin N) ℂ) (hφ : IsEqv h mu lam φ)
    (s : MvPolynomial (Fin n × Fin n) ℂ) (hs : s ∈ nablaSq ℂ n mu) :
    capZ h lam sg (φ s) = ((zScalar h lam sg mu : ℤ) : ℂ) • φ s := by
  unfold capZ
  rw [_root_.Bl.general_b_fact_right.goal1 (List.finRange n) _
    (fun i => ∏ v ∈ (Rset h lam sg i).erase (sg.w i),
      ∏ j : Fin n, ((((v - (i.1 : ℤ)) - mu.w j + (j.1 : ℤ) : ℤ)) : ℂ)) (φ s)]
  · rw [← Fin.prod_univ_def]
    unfold zScalar
    push_cast
    rfl
  · intro i _
    rw [_root_.Bl.general_b_fact_right.goal1 _ _ (fun v => ∏ j : Fin n, ((((v - (i.1 : ℤ)) - mu.w j + (j.1 : ℤ) : ℤ)) : ℂ)) (φ s),
      Finset.prod_map_toList]
    intro v _
    exact capF_scalar hC h lam mu φ hφ s hs i v

def presRing {N : ℕ} (lam : DomWeight N) : Subring (Module.End ℂ (MvPolynomial (Fin N × Fin N) ℂ)) where
  carrier := {Q | ∀ f ∈ nablaSq ℤ N lam, ∃ f' ∈ nablaSq ℤ N lam,
    Q (MvPolynomial.map (Int.castRingHom ℂ) f) = MvPolynomial.map (Int.castRingHom ℂ) f'}
  mul_mem' := by
    intro Q1 Q2 h1 h2 f hf
    obtain ⟨f2, hf2, e2⟩ := h2 f hf
    obtain ⟨f3, hf3, e3⟩ := h1 f2 hf2
    exact ⟨f3, hf3, by rw [Module.End.mul_apply, e2, e3]⟩
  one_mem' := fun f hf => ⟨f, hf, rfl⟩
  add_mem' := by
    intro Q1 Q2 h1 h2 f hf
    obtain ⟨f1, hf1, e1⟩ := h1 f hf
    obtain ⟨f2, hf2, e2⟩ := h2 f hf
    exact ⟨f1 + f2, add_mem hf1 hf2, by rw [LinearMap.add_apply, e1, e2, map_add (f := _)]⟩
  zero_mem' := fun f hf => ⟨0, zero_mem _, by simp⟩
  neg_mem' := by
    intro Q h1 f hf
    obtain ⟨f1, hf1, e1⟩ := h1 f hf
    exact ⟨-f1, neg_mem hf1, by rw [LinearMap.neg_apply, e1, map_neg]⟩

theorem algebraMap_int_mem {N : ℕ} (lam : DomWeight N) (w : ℤ) :
    algebraMap ℂ (Module.End ℂ (MvPolynomial (Fin N × Fin N) ℂ)) (w : ℂ) ∈ presRing lam := by
  rw [map_intCast]; exact intCast_mem _ w

theorem pol_mem_presRing {N : ℕ} (lam : DomWeight N) (a b : Fin N) :
    (pol ℂ (m := N) a b : Module.End ℂ (MvPolynomial (Fin N × Fin N) ℂ)) ∈ presRing lam := by
  intro f hf
  exact ⟨pol ℤ a b f, pol_mem_dualWeyl ℤ lam.natW a b f hf, pol_map _ a b f⟩

theorem capE_mem {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (a b : Fin n) : capE h lam a b ∈ presRing lam := by
  unfold capE
  refine add_mem (pol_mem_presRing lam _ _) ?_
  split_ifs
  · exact algebraMap_int_mem lam _
  · exact zero_mem _

theorem qdet_mem {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (w : ℤ) :
    Formalism.REAL.qdet (capE h lam) (w : ℂ) ∈ presRing lam := by
  unfold Formalism.REAL.qdet Formalism.REAL.qminor
  refine Subring.sum_mem _ fun σ _ => mul_mem (intCast_mem _ _) (Subring.list_prod_mem _ fun x hx => ?_)
  obtain ⟨k, rfl⟩ := List.mem_ofFn.mp hx
  unfold Formalism.REAL.Tm
  refine add_mem ?_ (capE_mem h lam _ _)
  split_ifs
  · have : (w : ℂ) - (k : ℂ) = ((w - (k.1 : ℤ) : ℤ) : ℂ) := by push_cast; rfl
    rw [this]; exact algebraMap_int_mem lam _
  · exact zero_mem _

theorem capF_mem {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (i : Fin n) (v : ℤ) :
    capF h lam i v ∈ presRing lam := by
  unfold capF
  have h1 : (-((v : ℂ) - ((i.1 : ℤ) : ℂ))) = ((-(v - (i.1 : ℤ)) : ℤ) : ℂ) := by push_cast; ring
  have h2 : ((-1 : ℂ) ^ n) = (((-1 : ℤ) ^ n : ℤ) : ℂ) := by push_cast; ring
  rw [h1, h2, Algebra.smul_def]
  exact mul_mem (algebraMap_int_mem lam _) (qdet_mem h lam _)

theorem capZ_mem {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) :
    capZ h lam sg ∈ presRing lam := by
  unfold capZ
  refine Subring.list_prod_mem _ fun x hx => ?_
  obtain ⟨i, _, rfl⟩ := List.mem_map.mp hx
  refine Subring.list_prod_mem _ fun y hy => ?_
  obtain ⟨v, _, rfl⟩ := List.mem_map.mp hy
  exact capF_mem h lam i v

theorem capelliZ_of (hC : CapScalar) : CapelliZ := by
  intro n N h lam sg _
  refine ⟨capZ h lam sg, fun f hf => capZ_mem h lam sg f hf, ?_⟩
  intro mu _ φ hφ s hs
  exact capZ_scalar hC h lam sg mu φ hφ s hs

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.CapelliZ =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.Capelli2_2 =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.Capelli2_2", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ZScalarVanish\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.HwIrred\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.CapelliZ\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.IoPolDiagHw\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions MvPolynomial

theorem capelli_scalar_identity : CapelliZ :=
  capelliZ_of fun h lam mu φ hφ s hs u => capScalar highest_weight_irreducible h lam mu φ hφ s hs u

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.Capelli2_2 =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.SqActMemNabla =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.SqActMemNabla", "h": "module\n\npublic import Formalism.PeriodIntegrals.GTDefs\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.AdjBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL.Adj

open Formalism.BasicNotions MvPolynomial

def gStar {N : ℕ} (g : GL (Fin N) ℂ) : GL (Fin N) ℂ where
  val := Matrix.conjTranspose (g : Matrix (Fin N) (Fin N) ℂ)
  inv := Matrix.conjTranspose ((g⁻¹ : GL (Fin N) ℂ) : Matrix (Fin N) (Fin N) ℂ)
  val_inv := by rw [← Matrix.conjTranspose_mul]; simp
  inv_val := by rw [← Matrix.conjTranspose_mul]; simp

theorem gStar_val {N : ℕ} (g : GL (Fin N) ℂ) :
    ((gStar g : GL (Fin N) ℂ) : Matrix (Fin N) (Fin N) ℂ) = Matrix.conjTranspose (g : Matrix (Fin N) (Fin N) ℂ) := rfl

theorem gStar_gStar {N : ℕ} (g : GL (Fin N) ℂ) : gStar (gStar g) = g := by
  ext i j; simp [gStar_val]

def cU (a : ℂˣ) : ℂˣ := Units.map (starRingEnd ℂ : ℂ →* ℂ) a

theorem cU_zpow_val (a : ℂˣ) (e : ℤ) : ((cU a ^ e : ℂˣ) : ℂ) = star ((a ^ e : ℂˣ) : ℂ) := by
  unfold cU
  rw [← map_zpow, Units.coe_map]
  rfl

theorem embGL_gStar {n N : ℕ} (h : n + 1 = N) (g : GL (Fin n) ℂ) :
    embGL ℂ n N h (gStar g) = gStar (embGL ℂ n N h g) := by
  have key : ∀ p q : Fin n ⊕ Fin 1,
      Matrix.fromBlocks (Matrix.conjTranspose (g : Matrix (Fin n) (Fin n) ℂ)) 0 0 1 p q =
        (starRingEnd ℂ) (Matrix.fromBlocks (g : Matrix (Fin n) (Fin n) ℂ) 0 0 1 q p) := by
    rintro (p | p) (q | q)
    · simp [Matrix.conjTranspose_apply]
    · simp
    · simp
    · have hp : p = q := Subsingleton.elim _ _
      subst hp; simp
  ext i j
  simp only [embGL, blkHom, gStar_val, Matrix.conjTranspose_apply]
  simp
  exact key _ _

theorem lastGL_cU (N : ℕ) (a : ℂˣ) : lastGL ℂ N (cU a) = gStar (lastGL ℂ N a) := by
  ext i j
  simp only [lastGL, diagGL, gStar_val, Matrix.conjTranspose_apply, Matrix.diagonal_apply]
  by_cases hij : i = j
  · subst hij; split_ifs <;> simp [cU]
  · have hji : j ≠ i := fun e => hij e.symm
    simp [hij, hji]

theorem detPow_gStar {N : ℕ} (g : GL (Fin N) ℂ) (k : ℤ) :
    detPow ℂ N (gStar g) k = star (detPow ℂ N g k) := by
  unfold detPow
  rw [Units.val_zpow_eq_zpow_val, Units.val_zpow_eq_zpow_val, star_zpow₀]
  congr 1
  simp [gStar_val, Matrix.det_conjTranspose]

theorem sqAct_mem_nabla {N : ℕ} (lam : DomWeight N) (g : GL (Fin N) ℂ) (f : MvPolynomial (Fin N × Fin N) ℂ)
    (hf : f ∈ nablaSq ℂ N lam) : sqAct ℂ N lam g f ∈ nablaSq ℂ N lam := by
  unfold sqAct
  exact Submodule.smul_mem _ _ (Formalism.GradedWeylDivisibility.dualWeylRowStable ℂ N N lam.natW _ f hf)

theorem sqAct_smul {N : ℕ} (lam : DomWeight N) (g : GL (Fin N) ℂ) (c : ℂ) (f : MvPolynomial (Fin N × Fin N) ℂ) :
    sqAct ℂ N lam g (c • f) = c • sqAct ℂ N lam g f := by
  unfold sqAct
  rw [map_smul, smul_comm]

theorem nf_sqAct_adj {N : ℕ} (lam : DomWeight N) (g : GL (Fin N) ℂ) (x y : MvPolynomial (Fin N × Fin N) ℂ) :
    normFock lam (sqAct ℂ N lam g x) y = normFock lam x (sqAct ℂ N lam (gStar g) y) := by
  have hm : Matrix.conjTranspose (Matrix.transpose (g : Matrix (Fin N) (Fin N) ℂ)) =
      Matrix.transpose ((gStar g : GL (Fin N) ℂ) : Matrix (Fin N) (Fin N) ℂ) := by
    ext i j; simp [gStar_val, Matrix.conjTranspose_apply]
  have hf : Formalism.REAL.fockF (Formalism.GradedWeylDivisibility.rowAct ℂ (n := N) (Matrix.transpose (g : Matrix (Fin N) (Fin N) ℂ)) x) y =
      Formalism.REAL.fockF x (Formalism.GradedWeylDivisibility.rowAct ℂ (n := N)
        (Matrix.transpose ((gStar g : GL (Fin N) ℂ) : Matrix (Fin N) (Fin N) ℂ)) y) := by
    rw [Formalism.GradedWeylDivisibility.fockRowAdj, hm]
  unfold sqAct
  rw [nf_smul_left, nf_smul_right, detPow_gStar, star_star]
  unfold normFock
  rw [hf]

theorem nf_sqAct_adj' {N : ℕ} (lam : DomWeight N) (g : GL (Fin N) ℂ) (x y : MvPolynomial (Fin N × Fin N) ℂ) :
    normFock lam x (sqAct ℂ N lam g y) = normFock lam (sqAct ℂ N lam (gStar g) x) y := by
  rw [nf_sqAct_adj, gStar_gStar]

theorem natW_anti {N : ℕ} (lam : DomWeight N) : Antitone lam.natW := by
  intro i j hij
  unfold DomWeight.natW
  exact Int.toNat_le_toNat (by have := lam.anti hij; linarith)

theorem extremal_mem {N : ℕ} (lam : DomWeight N) : extremal ℂ N lam ∈ nablaSq ℂ N lam :=
  Formalism.GradedWeylDivisibility.hwMem ℂ N N le_rfl lam.natW (natW_anti lam)

theorem extremal_ne {N : ℕ} (lam : DomWeight N) : extremal ℂ N lam ≠ 0 :=
  Formalism.GradedWeylDivisibility.hwNe ℂ N N le_rfl lam.natW

end PI.WGL.Adj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.SqActMemNabla =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitPowerNormScale.NormUnitsZpowSq =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitPowerNormScale.NormUnitsZpowSq", "h": "module\n\npublic import Formalism.LocalRingCardinality.DataCoeff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.ProdFactorialSupportSubSingle\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.GTS

open Formalism.BasicNotions MvPolynomial

theorem fockF_smul_self {σ : Type*} (c : ℂ) (f : MvPolynomial σ ℂ) :
    Formalism.REAL.fockF (c • f) (c • f) = (c * star c) * Formalism.REAL.fockF f f := by
  rw [_root_.Formalism.REAL.fischerInner_eq_sum_of_subset (c • f) _ f.support MvPolynomial.support_smul,
    _root_.Formalism.REAL.fischerInner_eq_sum_of_subset f f f.support subset_rfl, Finset.mul_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  simp only [MvPolynomial.coeff_smul, smul_eq_mul, star_mul']
  ring

theorem re_normFock_smul {N : ℕ} (lam : DomWeight N) (c : ℂ) (x : MvPolynomial (Fin N × Fin N) ℂ) :
    (normFock lam (c • x) (c • x)).re = ‖c‖ ^ 2 * (normFock lam x x).re := by
  unfold normFock
  rw [fockF_smul_self, mul_div_assoc]
  have hc : c * star c = ((‖c‖ ^ 2 : ℝ) : ℂ) := by
    rw [show star c = (starRingEnd ℂ) c from rfl, Complex.mul_conj, Complex.normSq_eq_norm_sq]
  rw [hc, Complex.re_ofReal_mul]

end PI.GTS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitPowerNormScale.NormUnitsZpowSq =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionAdj =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionAdj", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ZScalarVanish\npublic import Formalism.PeriodIntegrals.HwIrred\npublic import Formalism.PeriodIntegrals.SchurFock\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.AdjBase\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.SqActMemNabla\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightIrreducible.ConstructionB\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitPowerNormScale.NormUnitsZpowSq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Eigenspace.Triangularizable\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\npublic import Mathlib.LinearAlgebra.Eigenspace.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions MvPolynomial PI.WGL.Adj

theorem adjointBr_of (h3 : PI.HwIrred) (h5 : PI.SchurFock) (hN : Numbers) (hX : XiFacts) :
    AdjointBr := by
  intro n N h lam sg hI io hio hext hlast
  obtain ⟨hioV, hioEq⟩ := hio
  obtain ⟨hc0, hcB, -⟩ := hN n N h lam sg hI
  obtain ⟨hxi0, hxiV, -, -, -, hxiU⟩ := hX n N h lam sg hI
  obtain ⟨d, b, hbV, hexp⟩ := exists_frame n sg
  have hdel_sg : delSq ℂ n sg = nablaSq ℂ n sg := ((h3 n sg).1).symm
  have hdel_lam : delSq ℂ N lam = nablaSq ℂ N lam := ((h3 N lam).1).symm

  let br : MvPolynomial (Fin N × Fin N) ℂ →ₗ[ℂ] MvPolynomial (Fin n × Fin n) ℂ :=
    ∑ k, (nfL lam (io (b k))).smulRight (b k)
  have hbr : ∀ f, br f = ∑ k, normFock lam f (io (b k)) • b k := by
    intro f
    simp [br, LinearMap.sum_apply, LinearMap.smulRight_apply, nfL_apply]
  have hbrV : ∀ f, br f ∈ nablaSq ℂ n sg := by
    intro f
    rw [hbr]
    exact Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ (hbV k)
  have hT : ∀ s ∈ nablaSq ℂ n sg, ∀ f, normFock lam (io s) f = normFock sg s (br f) := by
    intro s hs f
    have e := hexp s hs
    calc normFock lam (io s) f = normFock lam (io (∑ k, normFock sg s (b k) • b k)) f := by rw [← e]
      _ = ∑ k, normFock sg s (b k) * normFock lam (io (b k)) f := by

          rw [map_sum]
          simp only [map_smul]
          rw [nf_sum_smul_left]
      _ = normFock sg s (br f) := by
          rw [hbr, nf_sum_smul_right]
          refine Finset.sum_congr rfl fun k _ => ?_
          rw [← nf_herm, mul_comm]
  have hsep : ∀ x y, x ∈ nablaSq ℂ n sg → y ∈ nablaSq ℂ n sg →
      (∀ s ∈ nablaSq ℂ n sg, normFock sg s x = normFock sg s y) → x = y := by
    intro x y hx hy hxy
    have hd : x - y ∈ nablaSq ℂ n sg := Submodule.sub_mem _ hx hy
    have h0 : normFock sg (x - y) (x - y) = 0 := by rw [nf_sub_right, hxy _ hd, sub_self]
    exact sub_eq_zero.mp (nf_self_eq_zero sg _ h0)

  have hB4 : ∀ (g : GL (Fin n) ℂ) (f : MvPolynomial (Fin N × Fin N) ℂ),
      br (sqAct ℂ N lam (embGL ℂ n N h g) f) = sqAct ℂ n sg g (br f) := by
    intro g f
    refine hsep _ _ (hbrV _) (sqAct_mem_nabla sg g _ (hbrV f)) fun s hs => ?_
    have hs' : sqAct ℂ n sg (gStar g) s ∈ nablaSq ℂ n sg := sqAct_mem_nabla sg _ s hs
    rw [← hT s hs, nf_sqAct_adj' lam (embGL ℂ n N h g) (io s) f, ← embGL_gStar, ← hioEq _ s hs,
      hT _ hs', nf_sqAct_adj' sg g s (br f)]
  have hB5 : ∀ (a : ℂˣ) (f : MvPolynomial (Fin N × Fin N) ℂ),
      br (sqAct ℂ N lam (lastGL ℂ N a) f) = ((a ^ degZ lam sg : ℂˣ) : ℂ) • br f := by
    intro a f
    refine hsep _ _ (hbrV _) (Submodule.smul_mem _ _ (hbrV f)) fun s hs => ?_
    rw [← hT s hs, nf_sqAct_adj' lam (lastGL ℂ N a) (io s) f, ← lastGL_cU, hlast _ s hs, nf_smul_left,
      nf_smul_right, hT s hs, cU_zpow_val]

  have hextV : extremal ℂ n sg ∈ nablaSq ℂ n sg := extremal_mem sg
  have hext0 : extremal ℂ n sg ≠ 0 := extremal_ne sg
  let Tm : Module.End ℂ (nablaSq ℂ n sg) :=
    LinearMap.codRestrict (nablaSq ℂ n sg) ((br ∘ₗ io) ∘ₗ (nablaSq ℂ n sg).subtype) (fun x => hbrV _)
  haveI : FiniteDimensional ℂ (nablaSq ℂ n sg) := PI.WHw.bC_fd n n sg.natW
  haveI : Nontrivial (nablaSq ℂ n sg) :=
    ⟨⟨⟨_, hextV⟩, 0, fun h0 => hext0 (congrArg Subtype.val h0)⟩⟩
  obtain ⟨κ, hκ⟩ := Module.End.exists_eigenvalue Tm
  obtain ⟨v, hv⟩ := hκ.exists_hasEigenvector
  have hv1 : br (io (v : MvPolynomial (Fin n × Fin n) ℂ)) = κ • (v : MvPolynomial (Fin n × Fin n) ℂ) := by
    have := Module.End.HasEigenvector.apply_eq_smul hv
    exact congrArg Subtype.val this
  have hv0 : (v : MvPolynomial (Fin n × Fin n) ℂ) ≠ 0 := fun h0 => hv.2 (Subtype.ext h0)
  let U : Submodule ℂ (MvPolynomial (Fin n × Fin n) ℂ) :=
    nablaSq ℂ n sg ⊓ LinearMap.ker (br ∘ₗ io - κ • LinearMap.id)
  have hmemU : ∀ x, x ∈ U ↔ x ∈ nablaSq ℂ n sg ∧ br (io x) = κ • x := by
    intro x
    simp only [U, Submodule.mem_inf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.comp_apply,
      LinearMap.smul_apply, LinearMap.id_apply, sub_eq_zero]
  have hUst : ∀ (g : GL (Fin n) ℂ), ∀ x ∈ U, sqAct ℂ n sg g x ∈ U := by
    intro g x hx
    rw [hmemU] at hx ⊢
    refine ⟨sqAct_mem_nabla sg g x hx.1, ?_⟩
    rw [hioEq g x hx.1, hB4, hx.2, sqAct_smul]
  have hall : ∀ s ∈ nablaSq ℂ n sg, br (io s) = κ • s := by
    rcases (h3 n sg).2.1 U inf_le_left hUst with hU | hU
    · exfalso
      have hvU : (v : MvPolynomial (Fin n × Fin n) ℂ) ∈ U := (hmemU _).2 ⟨v.2, hv1⟩
      rw [hU, Submodule.mem_bot] at hvU
      exact hv0 hvU
    · intro s hs
      rw [← hU] at hs
      exact ((hmemU s).1 hs).2

  set K := normFock lam (io (extremal ℂ n sg)) (io (extremal ℂ n sg)) with hKdef
  have hnorm : ∀ s ∈ nablaSq ℂ n sg, normFock lam (io s) (io s) = K * normFock sg s s := by
    have hK : star κ = K := by
      have := hT _ hextV (io (extremal ℂ n sg))
      rw [hall _ hextV, nf_smul_right, nf_extremal, mul_one] at this
      exact this.symm
    intro s hs
    rw [hT s hs, hall s hs, nf_smul_right, hK]
  have hKre : K.re = ‖((cBr h lam sg : ℤ) : ℂ)‖ ^ 2 * (normFock lam (xi ℂ h lam sg) (xi ℂ h lam sg)).re := by
    rw [hKdef, hext, PI.GTS.re_normFock_smul]
  have hKreal : K = ((K.re : ℝ) : ℂ) := by rw [hKdef]; exact nf_self_eq_re lam _
  have hcpos : 0 < ‖((cBr h lam sg : ℤ) : ℂ)‖ := by
    rw [norm_pos_iff]; exact_mod_cast hc0
  have hKpos : 0 < K.re := by
    rw [hKre]; exact mul_pos (pow_pos hcpos 2) (nf_self_re_pos lam _ hxi0)
  have hKle : K.re ≤ brBd h lam sg ^ 2 := by
    have hc2 : ‖((cBr h lam sg : ℤ) : ℂ)‖ ^ 2 ≤ cBd h lam sg ^ 2 := by
      have hcn : ‖((cBr h lam sg : ℤ) : ℂ)‖ = |((cBr h lam sg : ℤ) : ℝ)| := by
        rw [← Complex.ofReal_intCast, Complex.norm_real, Real.norm_eq_abs]
      rw [hcn]
      exact pow_le_pow_left₀ (abs_nonneg _) hcB 2
    have hSF := h5 N lam (xi ℂ h lam sg) hxiV hxiU
    have hbb : brBd h lam sg ^ 2 = cBd h lam sg ^ 2 * (Module.finrank ℂ (delSq ℂ N lam) : ℝ) := by
      unfold brBd; rw [mul_pow, Real.sq_sqrt (Nat.cast_nonneg _)]
    rw [hKre, hbb]
    exact mul_le_mul hc2 hSF (nf_self_re_nonneg lam _) (sq_nonneg _)
  refine ⟨?_, br, ⟨?_, ?_, ?_, ?_, ?_⟩, ?_⟩
  ·
    intro s hs
    rw [hnorm s hs, hKreal, Complex.re_ofReal_mul]
    exact mul_le_mul_of_nonneg_right hKle (nf_self_re_nonneg sg s)
  ·
    intro f _
    rw [hdel_sg]; exact hbrV f
  ·
    refine ⟨io (extremal ℂ n sg), ?_, ?_⟩
    · rw [hdel_lam]; exact hioV _ hextV
    · intro h0
      have := hT _ hextV (io (extremal ℂ n sg))
      rw [h0, nf_zero_right] at this
      rw [← hKdef] at this
      rw [this] at hKpos
      simp at hKpos
  ·
    intro g f _
    exact hB4 g f
  ·
    intro a f _
    exact hB5 a f
  ·
    intro f _
    set u := br f with hu
    have huV : u ∈ nablaSq ℂ n sg := hbrV f
    have hTu : normFock lam (io u) f = normFock sg u u := hT u huV f
    have hCS := nf_cauchy_schwarz lam (io u) f
    have hnA : ‖normFock sg u u‖ = (normFock sg u u).re := by
      conv_lhs => rw [nf_self_eq_re sg u]
      exact Complex.norm_of_nonneg (nf_self_re_nonneg sg u)
    rw [nf_herm lam (io u) f, hTu, norm_star, hnA, hnorm u huV, hKreal, Complex.re_ofReal_mul] at hCS
    have hA := nf_self_re_nonneg sg u
    have hF := nf_self_re_nonneg lam f
    have hAle : (normFock sg u u).re ≤ K.re * (normFock lam f f).re := by
      rcases hA.lt_or_eq with hApos | hA0
      · refine le_of_mul_le_mul_left ?_ hApos
        nlinarith
      · rw [← hA0]; exact mul_nonneg hKpos.le hF
    calc (normFock sg u u).re ≤ K.re * (normFock lam f f).re := hAle
      _ ≤ brBd h lam sg ^ 2 * (normFock lam f f).re := mul_le_mul_of_nonneg_right hKle hF
  ·
    intro s hs f _
    exact hT s hs f

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionAdj =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionBrInt =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionBrInt", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ZScalarVanish\npublic import Formalism.PeriodIntegrals.HwIrred\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.GradedWeylDivisibility.FinalB\npublic import Formalism.GradedWeylDivisibility.FinalD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions MvPolynomial

namespace BrInt

open Formalism.REAL Formalism.GradedWeylDivisibility

section fock

variable {σ : Type}

theorem fockF_add_right (f g g' : MvPolynomial σ ℂ) : fockF f (g + g') = fockF f g + fockF f g' := by
  unfold fockF
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun m _ => ?_
  simp only [MvPolynomial.coeff_add, star_add]
  ring

theorem fockF_smul_right (c : ℂ) (f g : MvPolynomial σ ℂ) : fockF f (c • g) = star c * fockF f g := by
  unfold fockF
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  simp only [MvPolynomial.coeff_smul, smul_eq_mul, star_mul']
  ring

theorem fockF_zero_right (f : MvPolynomial σ ℂ) : fockF f 0 = 0 := by
  unfold fockF
  simp

theorem fockF_sum_right {ι : Type*} (s : Finset ι) (f : MvPolynomial σ ℂ) (c : ι → ℂ)
    (g : ι → MvPolynomial σ ℂ) :
    fockF f (∑ i ∈ s, c i • g i) = ∑ i ∈ s, star (c i) * fockF f (g i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [fockF_zero_right]
  | insert a s ha ih =>
    rw [Finset.sum_insert ha, Finset.sum_insert ha, fockF_add_right, fockF_smul_right, ih]

private theorem fockF_eq_sum_of_support_subset (f g : MvPolynomial σ ℂ) (S : Finset (σ →₀ ℕ))
    (hS : f.support ⊆ S) :
    fockF f g = ∑ m ∈ S, f.coeff m * star (g.coeff m) * ((∏ k ∈ m.support, (m k).factorial : ℕ) : ℂ) := by
  unfold fockF
  apply Finset.sum_subset hS
  intro m _ hm
  have h0 : f.coeff m = 0 := by simpa [MvPolynomial.mem_support_iff] using hm
  simp [h0]

theorem brFockF_map (f g : MvPolynomial σ ℚ) :
    fockF (map (algebraMap ℚ ℂ) f) (map (algebraMap ℚ ℂ) g) = ((fockQ f g : ℚ) : ℂ) := by
  rw [fockF_eq_sum_of_support_subset _ _ f.support (MvPolynomial.support_map_subset _ _)]
  unfold fockQ
  push_cast
  refine Finset.sum_congr rfl fun m _ => ?_
  simp [MvPolynomial.coeff_map]

theorem map_ratSmul (q : ℚ) (p : MvPolynomial σ ℚ) :
    map (algebraMap ℚ ℂ) (q • p) = ((q : ℚ) : ℂ) • map (algebraMap ℚ ℂ) p := by
  ext m
  simp [MvPolynomial.coeff_map]

theorem rat_of_pairings {ι : Type*} [Fintype ι] (β : ι → MvPolynomial σ ℚ) (G : MvPolynomial σ ℂ)
    (hG : G ∈ Submodule.span ℂ (Set.range fun i => map (algebraMap ℚ ℂ) (β i)))
    (hq : ∀ i, ∃ q : ℚ, fockF (map (algebraMap ℚ ℂ) (β i)) G = (q : ℂ)) :
    ∃ G0 ∈ Submodule.span ℚ (Set.range β), G = map (algebraMap ℚ ℂ) G0 := by
  classical
  obtain ⟨c, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun ℂ).mp hG
  obtain ⟨π, hπ⟩ := LinearMap.exists_leftInverse_of_injective (Algebra.linearMap ℚ ℂ)
    (LinearMap.ker_eq_bot.mpr (algebraMap ℚ ℂ).injective)
  have hπq : ∀ q : ℚ, π (q : ℂ) = q := fun q => by
    have := LinearMap.congr_fun hπ q
    simpa using this
  choose r hr using hq
  set g : ι → MvPolynomial σ ℂ := fun i => map (algebraMap ℚ ℂ) (β i) with hg
  have hgg : ∀ j i, fockF (g j) (g i) = ((fockQ (β j) (β i) : ℚ) : ℂ) := fun j i =>
    brFockF_map (β j) (β i)
  have hrj : ∀ j, (r j : ℂ) = ∑ i, star (c i) * ((fockQ (β j) (β i) : ℚ) : ℂ) := by
    intro j
    rw [← hr j, fockF_sum_right]
    simp only [brFockF_map]
  have hrq : ∀ j, r j = ∑ i, fockQ (β j) (β i) * π (star (c i)) := by
    intro j
    have h1 := congrArg π (hrj j)

    rw [hπq, map_sum] at h1
    rw [h1]
    refine Finset.sum_congr rfl fun i _ => ?_
    have : star (c i) * ((fockQ (β j) (β i) : ℚ) : ℂ) = (fockQ (β j) (β i)) • star (c i) := by
      rw [Rat.smul_def, mul_comm]
    rw [this, LinearMap.map_smul, smul_eq_mul]
  set G0 : MvPolynomial σ ℚ := ∑ i, π (star (c i)) • β i with hG0
  have hG0m : map (algebraMap ℚ ℂ) G0 = ∑ i, ((π (star (c i)) : ℚ) : ℂ) • g i := by

    rw [hG0, map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_ratSmul]
  set D : MvPolynomial σ ℂ := ∑ i, (c i - ((π (star (c i)) : ℚ) : ℂ)) • g i with hD
  have hDeq : ∑ i, c i • g i - map (algebraMap ℚ ℂ) G0 = D := by
    rw [hG0m, hD, ← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [sub_smul]
  have hDj : ∀ j, fockF (g j) D = 0 := by
    intro j
    rw [hD, fockF_sum_right]
    simp only [hgg, star_sub]
    have hs : ∀ i, star (((π (star (c i)) : ℚ) : ℂ)) = ((π (star (c i)) : ℚ) : ℂ) := fun i => by simp
    simp only [hs, sub_mul, Finset.sum_sub_distrib]
    rw [← hrj j, hrq j]
    push_cast
    rw [sub_eq_zero]
    refine Finset.sum_congr rfl fun i _ => ?_
    ring
  have hDD : fockF D D = 0 := by
    have hjD : ∀ j, fockF D (g j) = 0 := fun j => by
      rw [fockHerm σ (g j) D, hDj j, star_zero]
    conv_lhs => arg 2; rw [hD]
    rw [fockF_sum_right]
    simp [hjD]
  have hD0 : D = 0 := by
    by_contra hne
    have := (fockPos σ D hne).1
    rw [hDD] at this
    simp at this
  refine ⟨G0, ?_, ?_⟩
  · exact Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)
  · rw [← sub_eq_zero, hDeq, hD0]

end fock

theorem natW_anti {N : ℕ} (lam : DomWeight N) : Antitone lam.natW := by
  intro i j hij
  have h := lam.anti hij
  simp only [DomWeight.natW]
  omega

private theorem map_initMinor {R S : Type*} [CommRing R] [CommRing S] (φ : R →+* S)
    {r n s : ℕ} (I : Fin s → Fin r) (hs : s ≤ n) :
    MvPolynomial.map φ (initMinor R I hs) = initMinor S I hs := by
  unfold initMinor
  rw [RingHom.map_det]
  congr 1
  ext p q
  simp [RingHom.mapMatrix_apply]

theorem map_bidet_int (R : Type) [CommRing R] {r n K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n)
    (I : ∀ k, Fin (sz k) → Fin r) :
    MvPolynomial.map (Int.castRingHom R) (bideterminant ℤ sz hsz I) = bideterminant R sz hsz I := by
  unfold bideterminant
  rw [map_prod]
  exact Finset.prod_congr rfl fun k _ => map_initMinor _ (I k) (hsz k)

theorem mapZC {σ : Type*} (f : MvPolynomial σ ℤ) :
    map (Int.castRingHom ℂ) f = map (algebraMap ℚ ℂ) (map (Int.castRingHom ℚ) f) := by
  rw [MvPolynomial.map_map]
  congr 1

theorem extremal_map {N : ℕ} (lam : DomWeight N) :
    extremal ℂ N lam = map (algebraMap ℚ ℂ) (extremal ℚ N lam) := by
  unfold extremal hw
  rw [map_prod]
  refine Finset.prod_congr rfl fun s _ => ?_
  rw [map_pow]
  congr 1
  unfold lpMinor
  rw [RingHom.map_det]
  congr 1
  ext p q
  simp [RingHom.mapMatrix_apply]

theorem normFock_map {N : ℕ} (lam : DomWeight N) (a b : MvPolynomial (Fin N × Fin N) ℚ) :
    normFock lam (map (algebraMap ℚ ℂ) a) (map (algebraMap ℚ ℂ) b) = ((normFockQ lam a b : ℚ) : ℂ) := by
  unfold normFock normFockQ
  rw [brFockF_map, extremal_map, brFockF_map]
  exact (Rat.cast_div _ _).symm

theorem normFockQ_symm {N : ℕ} (lam : DomWeight N) (a b : MvPolynomial (Fin N × Fin N) ℚ) :
    normFockQ lam a b = normFockQ lam b a := by
  classical
  unfold normFockQ
  congr 1
  rw [_root_.Formalism.GradedWeylDivisibility.lfockq_eq_sum a b (a.support ∪ b.support) Finset.subset_union_left,
    _root_.Formalism.GradedWeylDivisibility.lfockq_eq_sum b a (a.support ∪ b.support) Finset.subset_union_right]
  refine Finset.sum_congr rfl fun m _ => ?_
  ring

private theorem fockF_swap_eq_star {σ : Type*} [DecidableEq σ] (f g : MvPolynomial σ ℂ) :
    fockF g f = star (fockF f g) := by
  classical
  rw [_root_.Formalism.REAL.fischerInner_eq_sum_of_subset g f (f.support ∪ g.support) Finset.subset_union_right,
    _root_.Formalism.REAL.fischerInner_eq_sum_of_subset f g (f.support ∪ g.support) Finset.subset_union_left, star_sum]
  refine Finset.sum_congr rfl fun m _ => ?_
  simp only [star_mul', star_star, star_natCast]
  ring

theorem normFock_swap {N : ℕ} (lam : DomWeight N) (f g : MvPolynomial (Fin N × Fin N) ℂ) :
    normFock lam g f = star (normFock lam f g) := by
  unfold normFock
  rw [star_div₀, ← fockF_swap_eq_star f g, ← fockF_swap_eq_star (extremal ℂ N lam) (extremal ℂ N lam)]

theorem fockF_ext_ne {N : ℕ} (lam : DomWeight N) :
    fockF (extremal ℂ N lam) (extremal ℂ N lam) ≠ 0 := by
  rw [extremal_map, brFockF_map]
  have hne : extremal ℚ N lam ≠ 0 := by
    unfold extremal
    exact hwNe ℚ N N le_rfl lam.natW
  have hpos := (fockQPos (Fin N × Fin N) (extremal ℚ N lam) (extremal ℚ N lam)).2 hne
  exact_mod_cast hpos.ne'

end BrInt

open BrInt Formalism.REAL Formalism.GradedWeylDivisibility in
theorem brIntegral_of (h2 : Formalism.BasicNotions.FactDelDualNabla) (h3 : PI.HwIrred) : BrIntegral := by
  intro n N h lam sg hI io br hI1 hI2 hB2 hT f hf
  have hfN : f ∈ nablaSq ℤ N lam := weylLeDual ℤ N N le_rfl lam.natW (natW_anti lam) hf
  have hFd : map (Int.castRingHom ℂ) f ∈ delSq ℂ N lam := by
    rw [← (h3 N lam).1]
    exact dualWeylMap ℤ ℂ (Int.castRingHom ℂ) N N lam.natW f hfN
  have hG : br (map (Int.castRingHom ℂ) f) ∈ nablaSq ℂ n sg := by
    rw [(h3 n sg).1]
    exact hB2 _ hFd
  have hfQ : map (Int.castRingHom ℚ) f ∈ nablaSq ℚ N lam :=
    dualWeylMap ℤ ℚ (Int.castRingHom ℚ) N N lam.natW f hfN
  have hpair : ∀ s ∈ nablaSq ℤ n sg, ∃ z : ℤ,
      normFock sg (map (Int.castRingHom ℂ) s) (br (map (Int.castRingHom ℂ) f)) = (z : ℂ) := by
    intro s hs
    have hsC : map (Int.castRingHom ℂ) s ∈ nablaSq ℂ n sg :=
      dualWeylMap ℤ ℂ (Int.castRingHom ℂ) n n sg.natW s hs
    obtain ⟨fI, hfI, hio⟩ := hI1 s hs
    obtain ⟨z, hz⟩ := (h2 N lam _ hfQ).mpr ⟨f, hf, rfl⟩ fI hfI
    refine ⟨z, ?_⟩
    rw [← hT _ hsC _ hFd, hio, mapZC fI, mapZC f, normFock_map, normFockQ_symm, hz]
    push_cast
    rfl
  have : Fintype (ssIdx n n sg.natW) := (sSIdxFinite n n sg.natW).fintype
  obtain ⟨b, hWB, hb⟩ := sSBasis ℂ n n sg.natW
  have hb' : ∀ m : ssIdx n n sg.natW, ∃ p : MvPolynomial (Fin n × Fin n) ℤ,
      p ∈ nablaSq ℤ n sg ∧ map (Int.castRingHom ℂ) p = b m := by
    intro m
    obtain ⟨K, sz, hsz, I, hsh, -, hbm⟩ := (hb m).2.2
    refine ⟨bideterminant ℤ sz hsz I, ?_, ?_⟩
    · have := bidetMem ℤ n n K sz hsz I
      rw [hsh] at this
      exact this
    · rw [hbm, map_bidet_int]
  choose p hp hpb using hb'
  have hbeq : (fun m => map (algebraMap ℚ ℂ) (map (Int.castRingHom ℚ) (p m))) = b := by
    funext m
    rw [← mapZC, hpb]
  have hspan : br (map (Int.castRingHom ℂ) f) ∈
      Submodule.span ℂ (Set.range fun m => map (algebraMap ℚ ℂ) (map (Int.castRingHom ℚ) (p m))) := by
    rw [hbeq, hWB.2.1]
    exact hG
  have hq : ∀ m, ∃ q : ℚ, fockF (map (algebraMap ℚ ℂ) (map (Int.castRingHom ℚ) (p m)))
      (br (map (Int.castRingHom ℂ) f)) = (q : ℂ) := by
    intro m
    obtain ⟨z, hz⟩ := hpair (p m) (hp m)
    refine ⟨z * fockQ (extremal ℚ n sg) (extremal ℚ n sg), ?_⟩
    unfold normFock at hz
    rw [div_eq_iff (fockF_ext_ne sg), mapZC] at hz
    rw [hz, extremal_map, brFockF_map]
    push_cast
    rfl
  obtain ⟨G0, hG0s, hG0⟩ := rat_of_pairings _ _ hspan hq
  have hG0N : G0 ∈ nablaSq ℚ n sg := by
    refine (Submodule.span_le.mpr ?_) hG0s
    rintro _ ⟨m, rfl⟩
    exact dualWeylMap ℤ ℚ (Int.castRingHom ℚ) n n sg.natW (p m) (hp m)
  obtain ⟨f0, hf0, hf0eq⟩ := (h2 n sg G0 hG0N).mp (by
    intro g hg
    obtain ⟨z, hz⟩ := hpair g hg
    refine ⟨z, ?_⟩
    apply (Rat.cast_injective (α := ℂ))
    rw [← normFock_map, ← hG0, ← mapZC, normFock_swap, hz]
    simp)
  refine ⟨f0, hf0, ?_⟩
  rw [hG0, ← hf0eq, ← mapZC]

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionBrInt =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.IoXiHw =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.IoXiHw", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.CapelliShift\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.IoExistsOfCap\npublic import Formalism.RealPlaceAnalysis.StatementE\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.CapelliEqv\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.IoPolDiagHw\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HighestWeightIrreducible.ConstructionA\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.QuantumDetHighestWeightHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions Formalism.GradedWeylDivisibility MvPolynomial

theorem io_fixed_up {n : ℕ} (lam : DomWeight (n + 1)) (f : MvPolynomial (Fin (n + 1) × Fin (n + 1)) ℂ)
    (hU : ∀ g : GL (Fin n) ℂ, (∀ i j, j < i → g i j = 0) → (∀ i, g i i = 1) →
      sqAct ℂ (n + 1) lam (embGL ℂ n (n + 1) rfl g) f = f)
    (a b : Fin n) (hab : a < b) : pol ℂ a.castSucc b.castSucc f = 0 := by
  have hne : a ≠ b := ne_of_lt hab
  have key : ∀ m : ℕ, (rowGen ℂ a.castSucc b.castSucc f - Polynomial.C f).eval (C (m : ℂ)) ∈
      (⊥ : Submodule ℂ (MvPolynomial (Fin (n + 1) × Fin (n + 1)) ℂ)) := by
    intro m
    rw [Submodule.mem_bot, Polynomial.eval_sub, Polynomial.eval_C, PI.WHw.eval_rowGen, sub_eq_zero]
    have hdet : (1 + Matrix.single a b (m : ℂ)).det ≠ 0 := by
      rw [det_one_add_single, if_neg hne]; exact one_ne_zero
    let g := Matrix.GeneralLinearGroup.mkOfDetNeZero _ hdet
    have hgv : (g : Matrix (Fin n) (Fin n) ℂ) = 1 + Matrix.single a b (m : ℂ) := rfl
    have hup : ∀ i j, j < i → g i j = 0 := by
      intro i j hji
      have hij : i ≠ j := ne_of_gt hji
      show (1 + Matrix.single a b (m : ℂ)) i j = 0
      simp only [Matrix.add_apply, Matrix.one_apply, Matrix.single_apply, if_neg hij, zero_add]
      rw [if_neg]
      rintro ⟨rfl, rfl⟩
      exact absurd (lt_trans hab hji) (lt_irrefl _)
    have hdiag : ∀ i, g i i = 1 := by
      intro i
      show (1 + Matrix.single a b (m : ℂ)) i i = 1
      simp only [Matrix.add_apply, Matrix.one_apply, Matrix.single_apply, if_true]
      rw [if_neg]; · simp
      rintro ⟨rfl, h⟩; exact hne h.symm
    have h1 := hU g hup hdiag
    have hT := embGL_transvec g a b (m : ℂ) hgv
    have hdet1 : detPow ℂ (n + 1) (embGL ℂ n (n + 1) rfl g) lam.detShift = 1 := by
      unfold detPow
      have hd : Matrix.GeneralLinearGroup.det (embGL ℂ n (n + 1) rfl g) = 1 := Units.ext (by
        rw [Matrix.GeneralLinearGroup.val_det_apply, ← Matrix.det_transpose, hT, det_one_add_single,
          if_neg (fun h => hne (Fin.castSucc_injective _ h).symm)]
        rfl)
      rw [hd, one_zpow, Units.val_one]
    unfold sqAct at h1
    rw [hdet1, one_smul, hT] at h1
    exact h1
  have := PI.WHw.coeff_mem_of_eval ⊥ _ key 1
  rw [Submodule.mem_bot, Polynomial.coeff_sub, Polynomial.coeff_C, if_neg (by omega), sub_zero] at this
  rw [pol_eq_rowDiv]
  exact this

theorem io_torus_diag {n : ℕ} (lam : DomWeight (n + 1)) (sg : DomWeight n)
    (f : MvPolynomial (Fin (n + 1) × Fin (n + 1)) ℂ)
    (hT : ∀ t : Fin n → ℂˣ, sqAct ℂ (n + 1) lam (embGL ℂ n (n + 1) rfl (diagGL ℂ n t)) f =
      ((∏ j, t j ^ sg.w j : ℂˣ) : ℂ) • f)
    (a : Fin n) (hd : lam.detShift ≤ sg.w a) :
    pol ℂ a.castSucc a.castSucc f = ((sg.w a - lam.detShift : ℤ) : ℂ) • f := by
  set d : ℕ := (sg.w a - lam.detShift).toNat with hd'
  have hdz : ((d : ℕ) : ℤ) = sg.w a - lam.detShift := Int.toNat_of_nonneg (by omega)
  have key : ∀ m : ℕ, (rowGen ℂ a.castSucc a.castSucc f - Polynomial.C f * (1 + Polynomial.X) ^ d).eval
      (C (m : ℂ)) ∈ (⊥ : Submodule ℂ (MvPolynomial (Fin (n + 1) × Fin (n + 1)) ℂ)) := by
    intro m
    have hm0 : (m : ℂ) + 1 ≠ 0 := by norm_cast
    let t : Fin n → ℂˣ := fun j => if j = a then Units.mk0 ((m : ℂ) + 1) hm0 else 1
    have h1 := hT t
    have hgv : ((diagGL ℂ n t : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) = 1 + Matrix.single a a (m : ℂ) := by
      ext i j
      simp only [diagGL, Matrix.diagonal_apply, Matrix.add_apply, Matrix.one_apply, Matrix.single_apply, t]
      by_cases hij : i = j <;> by_cases hia : i = a <;> simp_all [add_comm] <;> intro h <;> exact absurd h.symm hia
    have hTr := embGL_transvec (diagGL ℂ n t) a a (m : ℂ) hgv
    have hdet : detPow ℂ (n + 1) (embGL ℂ n (n + 1) rfl (diagGL ℂ n t)) lam.detShift =
        ((m : ℂ) + 1) ^ lam.detShift := by
      unfold detPow
      rw [Units.val_zpow_eq_zpow_val, Matrix.GeneralLinearGroup.val_det_apply, ← Matrix.det_transpose, hTr,
        det_one_add_single, if_pos rfl]
    have hprod : ((∏ j, t j ^ sg.w j : ℂˣ) : ℂ) = ((m : ℂ) + 1) ^ sg.w a := by
      rw [Finset.prod_eq_single a (fun j _ hj => by simp [t, hj]) (by simp), Units.val_zpow_eq_zpow_val]
      simp [t]
    unfold sqAct at h1
    rw [hdet, hTr, hprod] at h1
    have hz : ((m : ℂ) + 1) ^ sg.w a = ((m : ℂ) + 1) ^ lam.detShift * ((m : ℂ) + 1) ^ d := by
      rw [← zpow_natCast, hdz, ← zpow_add₀ hm0]
      congr 1
      ring
    rw [hz, ← smul_smul] at h1
    have h2 := smul_right_injective _ (zpow_ne_zero _ hm0) h1
    rw [Submodule.mem_bot, Polynomial.eval_sub, PI.WHw.eval_rowGen, sub_eq_zero, Polynomial.eval_mul,
      Polynomial.eval_C, Polynomial.eval_pow, Polynomial.eval_add, Polynomial.eval_one, Polynomial.eval_X]
    rw [show (1 + C (m : ℂ) : MvPolynomial (Fin (n + 1) × Fin (n + 1)) ℂ) ^ d = C (((m : ℂ) + 1) ^ d) by
      rw [map_pow, map_add (f := _), map_one, add_comm (C (m : ℂ)) 1], mul_comm, ← smul_eq_C_mul]
    exact h2
  have := PI.WHw.coeff_mem_of_eval ⊥ _ key 1
  rw [Submodule.mem_bot, Polynomial.coeff_sub, Polynomial.coeff_C_mul, Polynomial.coeff_one_add_X_pow,
    Nat.choose_one_right, sub_eq_zero] at this
  rw [pol_eq_rowDiv]
  unfold rowDiv
  rw [this, ← hdz, Int.cast_natCast, smul_eq_C_mul, mul_comm, map_natCast]

theorem capXi (hx : XiFacts) {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n)
    (hI : Interlace h lam sg) (u : ℂ) :
    Formalism.REAL.qdet (capE h lam) u (xi ℂ h lam sg) = capP sg u • xi ℂ h lam sg := by
  subst h
  obtain ⟨-, -, hU, hT, -, -⟩ := hx n (n + 1) rfl lam sg hI
  have hHW : Formalism.REAL.IsHW (capE rfl lam) (fun k => ((sg.w k : ℤ) : ℂ)) (xi ℂ rfl lam sg) := by
    refine ⟨fun a' => ?_, fun a' b' hab => ?_⟩
    · have hd : lam.detShift ≤ sg.w a' := by
        have ha := a'.isLt
        have h1 := (hI a').2
        have h2 : lam.w ⟨n, by omega⟩ ≤ lam.w ⟨a'.1 + 1, by omega⟩ := lam.anti (by
          rw [Fin.le_iff_val_le_val]
          show a'.1 + 1 ≤ n
          omega)
        have h3 : lam.detShift = lam.w ⟨n, by omega⟩ := by
          unfold DomWeight.detShift
          rw [dite_eq_left (by omega)] <;> congr 1
        linarith
      have e : pol ℂ (Fin.castLE (by omega : n ≤ n + 1) a') (Fin.castLE (by omega : n ≤ n + 1) a')
          (xi ℂ rfl lam sg) = ((sg.w a' - lam.detShift : ℤ) : ℂ) • xi ℂ rfl lam sg :=
        io_torus_diag lam sg (xi ℂ rfl lam sg) hT a' hd
      rw [capE_apply, if_pos rfl, e, ← add_smul]
      congr 1
      push_cast
      ring
    · have e : pol ℂ (Fin.castLE (by omega : n ≤ n + 1) a') (Fin.castLE (by omega : n ≤ n + 1) b')
          (xi ℂ rfl lam sg) = 0 :=
        io_fixed_up lam (xi ℂ rfl lam sg) hU a' b' hab
      rw [capE_apply, if_neg (ne_of_lt hab), e, add_zero]
  rw [Formalism.REAL.quantumDetHighestWeight_holds _ n (capE rfl lam) _ _ (capE_glRel rfl lam) hHW u]
  rfl

theorem capFacts_of (h3 : PI.HwIrred) (hx : XiFacts) : CapFacts := by
  intro n N h lam sg hI
  refine ⟨fun u => Formalism.REAL.qdet (capE h lam) u, ?_, ?_⟩
  · intro mu _ φ hφ s hs u
    exact capScalar h3 h lam mu φ hφ s hs u
  · intro u
    exact capXi hx h lam sg hI u

theorem ioExists_of' (h3 : PI.HwIrred) (h4 : PI.GTBranch) (hx : XiFacts) : IoExists :=
  ioExists_of_cap h3 h4 hx (capFacts_of h3 hx)

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.IoXiHw =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionIo =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionIo", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ZScalarVanish\npublic import Formalism.PeriodIntegrals.HwIrred\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.IoXiHw\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionIo =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinTopCoefficient.NumMore =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinTopCoefficient.NumMore", "h": "module\n\npublic import Formalism.PeriodIntegrals.GTDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinTopCoefficient.CardEraseIccMin\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinTopCoefficient.InterlacingDefectEqCard\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.GTNum

open Formalism.BasicNotions PI Finset

variable {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n)

theorem sg_le_top (hI : Interlace h lam sg) (j : Fin n) : sg.w j ≤ lam.w ⟨0, by omega⟩ :=
  le_trans (hI j).1 (lam.anti (Fin.mk_le_mk.2 (Nat.zero_le _)))

theorem mem_R_bounds_top (i : Fin n) (v : ℤ) (hv : v ∈ Rset h lam sg i) :
    lam.w ⟨N - 1, by omega⟩ ≤ v ∧ v ≤ lam.w ⟨0, by omega⟩ := by
  unfold Rset at hv
  rw [Finset.mem_Icc] at hv
  have h1 := lam_le_last h lam (i.1 + 1) (by omega)
  have h2 : lam.w ⟨i.1, by omega⟩ ≤ lam.w ⟨0, by omega⟩ := lam.anti (Fin.mk_le_mk.2 (Nat.zero_le _))
  have h5 := min_le_left (lam.w ⟨i.1, by omega⟩) (lam.w ⟨i.1 + 1, by omega⟩ + D0 h lam sg)
  constructor <;> omega

theorem cBr_ne_zero (hI : Interlace h lam sg) : cBr h lam sg ≠ 0 := by
  unfold cBr
  refine Finset.prod_ne_zero_iff.2 (fun i _ => Finset.prod_ne_zero_iff.2 (fun v hv =>
    Finset.prod_ne_zero_iff.2 (fun j _ => ?_)))
  have hvs : v ≠ sg.w i := Finset.ne_of_mem_erase hv
  have hvR := Finset.mem_of_mem_erase hv
  unfold Rset at hvR
  rw [Finset.mem_Icc] at hvR
  have h5 := min_le_left (lam.w ⟨i.1, by omega⟩) (lam.w ⟨i.1 + 1, by omega⟩ + D0 h lam sg)
  rcases lt_trichotomy j.1 i.1 with hji | hji | hji
  · have a1 : lam.w ⟨i.1, by omega⟩ ≤ lam.w ⟨j.1 + 1, by omega⟩ := lam.anti (Fin.mk_le_mk.2 (by omega))
    have a2 := (hI j).2
    omega
  · have e : j = i := Fin.ext hji
    subst e
    omega
  · have a1 : lam.w ⟨j.1, by omega⟩ ≤ lam.w ⟨i.1 + 1, by omega⟩ := lam.anti (Fin.mk_le_mk.2 (by omega))
    have a2 := (hI j).1
    omega

theorem abs_cBr_le_top (hI : Interlace h lam sg) :
    |cBr h lam sg| ≤ (lam.w ⟨0, by omega⟩ - lam.w ⟨N - 1, by omega⟩ + (n : ℤ)) ^
      (n * ∑ i : Fin n, ((Rset h lam sg i).erase (sg.w i)).card) := by
  unfold cBr
  rw [← prod_pow_pow]
  refine abs_prod_le_prod _ _ _ (fun i _ => ?_)
  refine abs_prod_le_pow _ _ _ (fun v hv => ?_)
  have hc : ((lam.w ⟨0, by omega⟩ - lam.w ⟨N - 1, by omega⟩ + (n : ℤ)) ^ n) =
      (lam.w ⟨0, by omega⟩ - lam.w ⟨N - 1, by omega⟩ + (n : ℤ)) ^ (univ : Finset (Fin n)).card := by
    rw [Finset.card_univ, Fintype.card_fin]
  rw [hc]
  refine abs_prod_le_pow _ _ _ (fun j _ => ?_)
  have hv' := mem_R_bounds_top h lam sg i v (Finset.mem_of_mem_erase hv)
  have hs1 := last_le_sg h lam sg hI j
  have hs2 := sg_le_top h lam sg hI j
  have hi := i.2
  have hj := j.2
  rw [abs_le]
  constructor <;> omega

theorem abs_cBr_le_cBd (hI : Interlace h lam sg) :
    |((cBr h lam sg : ℤ) : ℝ)| ≤ cBd h lam sg := by
  set K : ℕ := ∑ i : Fin n, ((Rset h lam sg i).erase (sg.w i)).card with hK
  have hD1 : (N : ℤ) * D1 h lam sg = ((N * K : ℕ) : ℤ) := by
    rw [interlacing_defect_eq_card h lam sg hI, ← hK, Nat.cast_mul]
  have hN : 0 < N := by omega
  have hsp : lam.spread = lam.w ⟨0, by omega⟩ - lam.w ⟨N - 1, by omega⟩ + N := by
    unfold DomWeight.spread
    rw [dite_eq_left hN]
  have hlast := lam_le_last h lam 0 (by omega)
  have hb := abs_cBr_le_top h lam sg hI
  rw [← hK] at hb
  have hb2 : (lam.w ⟨0, by omega⟩ - lam.w ⟨N - 1, by omega⟩ + (n : ℤ)) ^ (n * K) ≤
      (2 * lam.spread) ^ (N * K) := by
    calc (lam.w ⟨0, by omega⟩ - lam.w ⟨N - 1, by omega⟩ + (n : ℤ)) ^ (n * K)
        ≤ (2 * lam.spread) ^ (n * K) := by
          apply pow_le_pow_left₀ (by omega)
          rw [hsp]
          omega
      _ ≤ (2 * lam.spread) ^ (N * K) := by
          apply pow_le_pow_right₀ (by rw [hsp]; omega)
          exact Nat.mul_le_mul_right K (by omega)
  unfold cBd
  rw [hD1, Int.cast_natCast, Real.rpow_natCast, ← Int.cast_abs]
  exact_mod_cast le_trans hb hb2

theorem degZ_eq : degZ lam sg = lam.w ⟨0, by omega⟩ - D0 h lam sg := by
  subst h
  unfold degZ wsum D0
  rw [Fin.sum_univ_succ, Finset.sum_sub_distrib]
  have e1 : ∑ i : Fin n, lam.w i.succ = ∑ i : Fin n, lam.w ⟨i.1 + 1, by omega⟩ := rfl
  have e0 : lam.w 0 = lam.w ⟨0, by omega⟩ := rfl
  rw [e1, e0]
  ring

end PI.GTNum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinTopCoefficient.NumMore =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionNum =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionNum", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ZScalarVanish\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinTopCoefficient.InterlacingDefectEqCard\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinTopCoefficient.NumMore\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions MvPolynomial

theorem numbers_dominant_large : Numbers := by
  intro n N h lam sg hI
  exact ⟨PI.GTNum.cBr_ne_zero h lam sg hI, PI.GTNum.abs_cBr_le_cBd h lam sg hI,
    PI.GTNum.degZ_eq h lam sg⟩

theorem scalar_vanishing_criterion : ZScalarVanish := by
  intro n N h lam sg mu hsg hmu hne hw
  have hsum : (∑ i : Fin n, mu.w i) = ∑ i : Fin n, sg.w i := by
    unfold wsum at hw
    exact hw
  have hD : D0 h lam mu = D0 h lam sg := by
    unfold D0
    rw [Finset.sum_sub_distrib, Finset.sum_sub_distrib, hsum]
  obtain ⟨i, hi⟩ : ∃ i, mu.w i ≠ sg.w i := by
    by_contra hc
    push_neg at hc
    exact hne (funext hc)
  have hmem : mu.w i ∈ Rset h lam sg i := by
    have hm := PI.GTNum.sg_mem_R h lam mu hmu i
    unfold Rset at hm ⊢
    rw [hD] at hm
    exact hm
  unfold zScalar
  apply Finset.prod_eq_zero (Finset.mem_univ i)
  apply Finset.prod_eq_zero (Finset.mem_erase.mpr ⟨hi, hmem⟩)
  apply Finset.prod_eq_zero (Finset.mem_univ i)
  ring

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionNum =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.RowsZStrictMono =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.RowsZStrictMono", "h": "module\n\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinBranching.RowActDiagMonomial\npublic import Formalism.PeriodIntegrals.GTDefs\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.MultisetProdNormLeOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL.XiA

open Formalism.BasicNotions MvPolynomial

theorem embGL_apply {n N : ℕ} (h : n + 1 = N) (g : GL (Fin n) ℂ) (a b : Fin N) :
    ((embGL ℂ n N h g : GL (Fin N) ℂ) : Matrix (Fin N) (Fin N) ℂ) a b =
      if ha : a.1 < n then (if hb : b.1 < n then (g : Matrix (Fin n) (Fin n) ℂ) ⟨a.1, ha⟩ ⟨b.1, hb⟩ else 0)
      else (if b.1 < n then 0 else 1) := by
  apply PI.WGB.embGL_apply_B

theorem rowAct_initMinor {N s : ℕ} (G : Matrix (Fin N) (Fin N) ℂ) (I : Fin s → Fin N) (hI : StrictMono I)
    (hs : s ≤ N) (hG : ∀ a b : Fin N, a < b → G b a = 0)
    (hcl : ∀ p b, G b (I p) ≠ 0 → b ∈ Set.range I) :
    Formalism.GradedWeylDivisibility.rowAct ℂ G.transpose (Formalism.GradedWeylDivisibility.initMinor ℂ (n := N) I hs) =
      C (∏ p, G (I p) (I p)) * Formalism.GradedWeylDivisibility.initMinor ℂ (n := N) I hs := by
  classical
  set B : Matrix (Fin s) (Fin s) ℂ := Matrix.of fun p p' => G (I p') (I p) with hB
  have hmat : ((Formalism.GradedWeylDivisibility.rowAct ℂ (n := N) G.transpose : MvPolynomial (Fin N × Fin N) ℂ →+* MvPolynomial (Fin N × Fin N) ℂ)).mapMatrix
      (Matrix.of fun p q : Fin s => (X (I p, Fin.castLE hs q) : MvPolynomial (Fin N × Fin N) ℂ)) =
      (C : ℂ →+* MvPolynomial (Fin N × Fin N) ℂ).mapMatrix B *
      (Matrix.of fun p q : Fin s => (X (I p, Fin.castLE hs q) : MvPolynomial (Fin N × Fin N) ℂ)) := by
    ext p q
    simp only [RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply, Matrix.mul_apply, hB,
      RingHom.coe_coe, Formalism.GradedWeylDivisibility.rowAct, aeval_X, Matrix.transpose_apply]
    rw [XiU.sum_comp_eq I hI.injective]
    intro b hb
    have : G b (I p) = 0 := by
      by_contra hne
      exact hb (hcl p b hne)
    simp [this]
  have hBdet : B.det = ∏ p, G (I p) (I p) := by
    rw [Matrix.det_of_isLowerTriangular B]
    · rfl
    · intro p p' hpp'
      exact hG _ _ (hI (by simpa using hpp'))
  have hdet := RingHom.map_det ((Formalism.GradedWeylDivisibility.rowAct ℂ (n := N) G.transpose :
      MvPolynomial (Fin N × Fin N) ℂ →+* MvPolynomial (Fin N × Fin N) ℂ))
    (Matrix.of fun p q : Fin s => (X (I p, Fin.castLE hs q) : MvPolynomial (Fin N × Fin N) ℂ))
  rw [RingHom.coe_coe] at hdet
  show Formalism.GradedWeylDivisibility.rowAct ℂ G.transpose
      (Matrix.of fun p q : Fin s => (X (I p, Fin.castLE hs q) : MvPolynomial (Fin N × Fin N) ℂ)).det =
    C (∏ p, G (I p) (I p)) * (Matrix.of fun p q : Fin s => (X (I p, Fin.castLE hs q) : MvPolynomial (Fin N × Fin N) ℂ)).det
  rw [hdet, hmat, Matrix.det_mul, ← RingHom.map_det, hBdet]

theorem lpMinor_eq {N : ℕ} (s : ℕ) (hr : s ≤ N) (hn : s ≤ N) :
    Formalism.GradedWeylDivisibility.lpMinor ℂ (r := N) (n := N) s hr hn = Formalism.GradedWeylDivisibility.initMinor ℂ (n := N) (Fin.castLE hr) hn := rfl

theorem rowsZ_strictMono {n N : ℕ} (h : n + 1 = N) (i : Fin n) : StrictMono (rowsZ h i) := by
  unfold rowsZ
  intro p q hpq
  have hpq' := Fin.lt_def.mp hpq
  have hq := q.isLt
  have hi := i.isLt
  simp only
  split_ifs with h1 h2 h2 <;> simp only [Fin.lt_def] <;> omega

def GoodG (n : ℕ) {N : ℕ} (h : n + 1 = N) (G : Matrix (Fin N) (Fin N) ℂ) : Prop :=
  (∀ a b : Fin N, a < b → G b a = 0) ∧ (∀ b : Fin N, b.1 ≠ n → G b ⟨n, by omega⟩ = 0)

def xiScal {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) (G : Matrix (Fin N) (Fin N) ℂ) : ℂ :=
  ∏ i : Fin n, (∏ p : Fin (i.1 + 1), G (Fin.castLE (by omega) p) (Fin.castLE (by omega) p)) ^ (aa h lam sg i).toNat *
    (∏ p : Fin (i.1 + 1), G (rowsZ h i p) (rowsZ h i p)) ^ (bb h lam sg i).toNat

theorem rowAct_xi {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n)
    (G : Matrix (Fin N) (Fin N) ℂ) (hG : GoodG n h G) :
    Formalism.GradedWeylDivisibility.rowAct ℂ G.transpose (xi ℂ h lam sg) = C (xiScal h lam sg G) * xi ℂ h lam sg := by
  have hlp : ∀ i : Fin n, Formalism.GradedWeylDivisibility.rowAct ℂ G.transpose
      (Formalism.GradedWeylDivisibility.lpMinor ℂ (r := N) (n := N) (i.1 + 1) (by omega) (by omega)) =
      C (∏ p : Fin (i.1 + 1), G (Fin.castLE (by omega) p) (Fin.castLE (by omega) p)) *
        Formalism.GradedWeylDivisibility.lpMinor ℂ (r := N) (n := N) (i.1 + 1) (by omega) (by omega) := by
    intro i
    rw [lpMinor_eq]
    apply rowAct_initMinor G _ (Fin.strictMono_castLE _) _ hG.1
    intro p b hb
    have hle : b ≤ Fin.castLE (by omega) p := by
      by_contra hlt
      push Not at hlt
      exact hb (hG.1 _ _ hlt)
    refine ⟨⟨b.1, ?_⟩, Fin.ext rfl⟩
    have := p.2
    simp only [Fin.le_def, Fin.coe_castLE] at hle
    omega
  have hrz : ∀ i : Fin n, Formalism.GradedWeylDivisibility.rowAct ℂ G.transpose (Formalism.GradedWeylDivisibility.initMinor ℂ (n := N) (rowsZ h i) (by omega)) =
      C (∏ p : Fin (i.1 + 1), G (rowsZ h i p) (rowsZ h i p)) *
        Formalism.GradedWeylDivisibility.initMinor ℂ (n := N) (rowsZ h i) (by omega) := by
    intro i
    apply rowAct_initMinor G _ (rowsZ_strictMono h i) _ hG.1
    intro p b hb
    by_cases hp : p.1 = i.1
    · have e : rowsZ h i p = ⟨n, by omega⟩ := by
        simp only [rowsZ, hp, if_true]; ext; simp; omega
      rw [e] at hb
      have hbn : b.1 = n := by
        by_contra hne
        exact hb (hG.2 b hne)
      refine ⟨⟨i.1, by omega⟩, ?_⟩
      simp only [rowsZ, if_true]
      ext; simp; omega
    · have e : rowsZ h i p = ⟨p.1, by omega⟩ := by
        simp only [rowsZ, hp, if_false]
      rw [e] at hb
      have hle : b.1 ≤ p.1 := by
        by_contra hlt
        push Not at hlt
        exact hb (hG.1 _ _ (by simpa [Fin.lt_def] using hlt))
      have hpi : p.1 < i.1 := by have := p.2; omega
      refine ⟨⟨b.1, by omega⟩, ?_⟩
      have : b.1 ≠ i.1 := by omega
      simp only [rowsZ, this, if_false]
  unfold xi xiScal
  rw [map_prod, map_prod, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl (fun i _ => ?_)
  rw [map_mul, map_pow, map_pow, hlp i, hrz i, mul_pow, mul_pow, map_mul, map_pow, map_pow]
  ring

theorem initMinor_mem {N s : ℕ} (I : Fin s → Fin N) (hs : s ≤ N) :
    Formalism.GradedWeylDivisibility.initMinor ℂ (n := N) I hs ∈
      Formalism.GradedWeylDivisibility.dualWeyl ℂ N N (fun t : Fin N => if t.1 < s then 1 else 0) := by
  have hm := Formalism.GradedWeylDivisibility.bidetMem ℂ N N 1 (fun _ => s) (fun _ => hs) (fun _ => I)
  have e1 : Formalism.GradedWeylDivisibility.bideterminant ℂ (r := N) (n := N) (fun _ : Fin 1 => s) (fun _ => hs) (fun _ => I) =
      Formalism.GradedWeylDivisibility.initMinor ℂ (n := N) I hs := by
    simp [Formalism.GradedWeylDivisibility.bideterminant]
  have e2 : Formalism.GradedWeylDivisibility.shapeDeg (n := N) (fun _ : Fin 1 => s) = fun t : Fin N => if t.1 < s then 1 else 0 := by
    funext t
    by_cases ht : t.1 < s <;> simp [Formalism.GradedWeylDivisibility.shapeDeg, ht]
  rwa [e1, e2] at hm

private theorem mul_mem_dualWeyl_complex {N : ℕ} (ν μ : Fin N → ℕ) (f g : MvPolynomial (Fin N × Fin N) ℂ)
    (hf : f ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N ν) (hg : g ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N μ) :
    f * g ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N (ν + μ) := by
  unfold Formalism.GradedWeylDivisibility.dualWeyl at hf hg ⊢
  rw [Submodule.mem_inf] at hf hg ⊢
  obtain ⟨hf1, hf2⟩ := hf
  obtain ⟨hg1, hg2⟩ := hg
  refine ⟨?_, ?_⟩
  · rw [MvPolynomial.mem_weightedHomogeneousSubmodule] at hf1 hg1 ⊢
    exact hf1.mul hg1
  · simp only [Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, AlgHom.toLinearMap_apply,
      sub_eq_zero] at hf2 hg2 ⊢
    intro l j hlj
    rw [map_mul, map_mul, hf2 l j hlj, hg2 l j hlj]

private theorem one_mem_dualWeyl_complex {N : ℕ} :
    (1 : MvPolynomial (Fin N × Fin N) ℂ) ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N 0 := by
  unfold Formalism.GradedWeylDivisibility.dualWeyl
  rw [Submodule.mem_inf]
  refine ⟨?_, ?_⟩
  · rw [MvPolynomial.mem_weightedHomogeneousSubmodule]
    exact MvPolynomial.isWeightedHomogeneous_one _ _
  · simp only [Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, AlgHom.toLinearMap_apply,
      sub_eq_zero]
    intro l j hlj
    rw [map_one, map_one]

theorem pow_mem {N : ℕ} (ν : Fin N → ℕ) (f : MvPolynomial (Fin N × Fin N) ℂ)
    (hf : f ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N ν) (k : ℕ) : f ^ k ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N (k • ν) := by
  induction k with
  | zero => simpa using one_mem_dualWeyl_complex (N := N)
  | succ k ih =>
    rw [pow_succ, succ_nsmul]
    exact mul_mem_dualWeyl_complex _ _ _ _ ih hf

theorem prod_mem {N : ℕ} {ι : Type*} (s : Finset ι) (ν : ι → Fin N → ℕ) (f : ι → MvPolynomial (Fin N × Fin N) ℂ)
    (hf : ∀ i ∈ s, f i ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N (ν i)) :
    ∏ i ∈ s, f i ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N (∑ i ∈ s, ν i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using one_mem_dualWeyl_complex (N := N)
  | insert a s ha ih =>
    rw [Finset.prod_insert ha, Finset.sum_insert ha]
    exact mul_mem_dualWeyl_complex _ _ _ _ (hf a (Finset.mem_insert_self a s))
      (ih fun i hi => hf i (Finset.mem_insert_of_mem hi))

theorem tele_sum (ℓ : ℕ → ℤ) (n t : ℕ) (ht : t ≤ n) :
    ∑ i ∈ Finset.range n, (if t ≤ i then ℓ i - ℓ (i + 1) else 0) = ℓ t - ℓ n := by
  induction n with
  | zero =>
    have ht0 : t = 0 := by omega
    subst ht0
    simp
  | succ n ih =>
    rcases Nat.lt_or_ge n t with h | h
    · have htn : t = n + 1 := by omega
      subst htn
      rw [Finset.sum_eq_zero]
      · ring
      · intro i hi
        rw [Finset.mem_range] at hi
        rw [if_neg (by omega)]
    · rw [Finset.sum_range_succ, ih h, if_pos h]
      ring

end PI.WGL.XiA
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.RowsZStrictMono =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.EvalInitMinorNormLe =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.EvalInitMinorNormLe", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.RowsZStrictMono\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.MultisetProdNormLeOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL.XiB

open Formalism.BasicNotions MvPolynomial

theorem teleA {G : Type*} [AddCommGroup G] (n : ℕ) (P : ℕ → G) (hP0 : P 0 = 0) (w : G) (ℓ σ : ℕ → ℤ) :
    ℓ n • (P n + w) + ∑ i ∈ Finset.range n, ((σ i - ℓ (i + 1)) • P (i + 1) + (ℓ i - σ i) • (P i + w)) =
    (∑ j ∈ Finset.range n, σ j • (P (j + 1) - P j)) +
      ((∑ p ∈ Finset.range (n + 1), ℓ p) - ∑ j ∈ Finset.range n, σ j) • w := by
  induction n with
  | zero => simp [hP0]
  | succ n ih =>
    rw [Finset.sum_range_succ, eq_sub_of_add_eq' ih]
    simp only [Finset.sum_range_succ]
    simp only [smul_add, smul_sub, add_smul, sub_smul]
    abel

theorem teleM {G : Type*} [CommGroup G] (n : ℕ) (P : ℕ → G) (hP0 : P 0 = 1) (w : G) (ℓ σ : ℕ → ℤ) :
    (P n * w) ^ ℓ n * ∏ i ∈ Finset.range n, (P (i + 1) ^ (σ i - ℓ (i + 1)) * (P i * w) ^ (ℓ i - σ i)) =
    (∏ j ∈ Finset.range n, (P (j + 1) / P j) ^ σ j) *
      w ^ ((∑ p ∈ Finset.range (n + 1), ℓ p) - ∑ j ∈ Finset.range n, σ j) := by
  have h := teleA (G := Additive G) n (fun i => Additive.ofMul (P i)) (by simp [hP0])
    (Additive.ofMul w) ℓ σ
  have h2 := congrArg Additive.toMul h
  simpa [toMul_sum, toMul_zsmul, toMul_sub, toMul_add, mul_zpow] using h2

theorem diag_scalar {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) (hI : Interlace h lam sg)
    (s : Fin N → ℂˣ) :
    detPow ℂ N (diagGL ℂ N s) lam.detShift * XiA.xiScal h lam sg (Matrix.diagonal fun a => (s a : ℂ)) =
      (((∏ j : Fin n, s ⟨j.1, by omega⟩ ^ sg.w j) * s ⟨n, by omega⟩ ^ degZ lam sg : ℂˣ) : ℂ) := by
  subst h
  set v : ℕ → ℂˣ := fun p => if hp : p < n + 1 then s ⟨p, hp⟩ else 1 with hv
  set P : ℕ → ℂˣ := fun k => ∏ p ∈ Finset.range k, v p with hP
  set ℓ : ℕ → ℤ := fun k => if hk : k < n + 1 then lam.w ⟨k, hk⟩ else 0 with hℓ
  set σ : ℕ → ℤ := fun k => if hk : k < n then sg.w ⟨k, hk⟩ else 0 with hσ
  set w : ℂˣ := s ⟨n, by omega⟩ with hw
  have hPa : ∀ k (hk : k ≤ n + 1), ∏ p : Fin k, s (Fin.castLE hk p) = P k := by
    intro k hk
    show ∏ p : Fin k, s (Fin.castLE hk p) = ∏ p ∈ Finset.range k, v p
    rw [← Fin.prod_univ_eq_prod_range]
    refine Finset.prod_congr rfl (fun p _ => ?_)
    have : p.1 < n + 1 := by omega
    simp only [hv, dif_pos this]
    rfl
  have hPs : ∀ k, P (k + 1) = P k * v k := fun k => by simp only [hP, Finset.prod_range_succ]
  have hdet : Matrix.GeneralLinearGroup.det (diagGL ℂ (n + 1) s) = P n * w := by
    ext
    have e := hPa (n + 1) le_rfl
    simp only [Fin.castLE_rfl, id] at e
    rw [hPs, show v n = w by simp [hv, hw]] at e
    rw [← e]
    simp [diagGL, Matrix.det_diagonal]
  have hshift : lam.detShift = ℓ n := by
    simp [DomWeight.detShift, hℓ]
  have hx : XiA.xiScal rfl lam sg (Matrix.diagonal fun a => (s a : ℂ)) =
      ((∏ i ∈ Finset.range n, (P (i + 1) ^ (σ i - ℓ (i + 1)) * (P i * w) ^ (ℓ i - σ i)) : ℂˣ) : ℂ) := by
    rw [← Fin.prod_univ_eq_prod_range (fun i => P (i + 1) ^ (σ i - ℓ (i + 1)) * (P i * w) ^ (ℓ i - σ i)) n]
    unfold XiA.xiScal
    rw [Units.coe_prod]
    refine Finset.prod_congr rfl (fun i _ => ?_)
    have hi := i.2
    have hA : 0 ≤ aa rfl lam sg i := by have := (hI i).2; unfold aa; omega
    have hB : 0 ≤ bb rfl lam sg i := by have := (hI i).1; unfold bb; omega
    have e1 : ∏ p : Fin (i.1 + 1), (Matrix.diagonal fun a => (s a : ℂ)) (Fin.castLE (by omega) p)
        (Fin.castLE (by omega) p) = ((P (i.1 + 1) : ℂˣ) : ℂ) := by
      rw [← hPa (i.1 + 1) (by omega), Units.coe_prod]
      simp [Matrix.diagonal_apply_eq]
    have e2 : ∏ p : Fin (i.1 + 1), (Matrix.diagonal fun a => (s a : ℂ)) (rowsZ rfl i p) (rowsZ rfl i p) =
        ((P i.1 * w : ℂˣ) : ℂ) := by
      simp only [Matrix.diagonal_apply_eq]
      rw [Fin.prod_univ_castSucc, ← hPa i.1 (by omega), Units.val_mul, Units.coe_prod]
      congr 1
      · refine Finset.prod_congr rfl (fun p _ => ?_)
        have : (Fin.castSucc p).1 ≠ i.1 := by simp; omega
        simp only [rowsZ, this, if_false]
        rfl
      · simp only [rowsZ, Fin.val_last, if_true, hw]
        congr 2
    rw [e1, e2, ← Units.val_pow_eq_pow_val, ← Units.val_pow_eq_pow_val, ← Units.val_mul]
    congr 1
    rw [← zpow_natCast, ← zpow_natCast, Int.toNat_of_nonneg hA, Int.toNat_of_nonneg hB]
    congr 2
    · simp [aa, hσ, hℓ, hi]
    · simp [bb, hσ, hℓ, hi]
  have htarget : ((∏ j : Fin n, s ⟨j.1, by omega⟩ ^ sg.w j) * s ⟨n, by omega⟩ ^ degZ lam sg : ℂˣ) =
      (∏ j ∈ Finset.range n, (P (j + 1) / P j) ^ σ j) *
        w ^ ((∑ p ∈ Finset.range (n + 1), ℓ p) - ∑ j ∈ Finset.range n, σ j) := by
    congr 1
    · rw [← Fin.prod_univ_eq_prod_range (fun j => (P (j + 1) / P j) ^ σ j) n]
      refine Finset.prod_congr rfl (fun j _ => ?_)
      have hj := j.2
      rw [hPs, mul_div_cancel_left]
      simp [hv, hσ, hj]
    · congr 1
      unfold degZ wsum
      rw [← Fin.sum_univ_eq_sum_range ℓ (n + 1), ← Fin.sum_univ_eq_sum_range σ n]
      congr 1
      · refine Finset.sum_congr rfl (fun p _ => ?_)
        simp only [hℓ]; rw [dif_pos p.2]
      · refine Finset.sum_congr rfl (fun p _ => ?_)
        simp only [hσ]; rw [dif_pos p.2]
  unfold detPow
  rw [hx, hdet, hshift, htarget, ← Units.val_mul, teleM n P (by simp [hP]) w ℓ σ]

theorem sqAct_diag_xi {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) (hI : Interlace h lam sg)
    (s : Fin N → ℂˣ) :
    sqAct ℂ N lam (diagGL ℂ N s) (xi ℂ h lam sg) =
      (((∏ j : Fin n, s ⟨j.1, by omega⟩ ^ sg.w j) * s ⟨n, by omega⟩ ^ degZ lam sg : ℂˣ) : ℂ) • xi ℂ h lam sg := by
  have hG : XiA.GoodG n h (Matrix.diagonal fun a => (s a : ℂ)) := by
    unfold XiA.GoodG
    refine ⟨fun a b hab => ?_, fun b hb => ?_⟩
    · exact Matrix.diagonal_apply_ne _ (ne_of_lt hab).symm
    · apply Matrix.diagonal_apply_ne
      intro e
      apply hb
      rw [e]
  have hcoe : ((diagGL ℂ N s : GL (Fin N) ℂ) : Matrix (Fin N) (Fin N) ℂ) =
      Matrix.diagonal fun a => (s a : ℂ) := by
    ext i j
    unfold diagGL
    simp [Matrix.diagonal_apply]
  unfold sqAct
  rw [hcoe, XiA.rowAct_xi h lam sg _ hG, MvPolynomial.C_mul', smul_smul, diag_scalar h lam sg hI s]

theorem embGL_diag {n N : ℕ} (h : n + 1 = N) (t : Fin n → ℂˣ) :
    embGL ℂ n N h (diagGL ℂ n t) = diagGL ℂ N (fun a => if ha : a.1 < n then t ⟨a.1, ha⟩ else 1) := by
  apply Units.ext
  ext a b
  rw [XiA.embGL_apply]
  unfold diagGL
  simp only [Matrix.diagonal_apply]
  by_cases ha : a.1 < n
  · by_cases hb : b.1 < n
    · simp only [ha, hb, dite_true]
      by_cases hab : a = b
      · subst hab
        simp
      · have hab' : (⟨a.1, ha⟩ : Fin n) ≠ ⟨b.1, hb⟩ := fun e => hab (Fin.ext (Fin.mk.inj_iff.mp e))
        simp [hab, hab']
    · have hab : a ≠ b := fun e => hb (e ▸ ha)
      simp [ha, hb, hab]
  · by_cases hb : b.1 < n
    · have hab : a ≠ b := fun e => ha (e ▸ hb)
      simp [ha, hb, hab]
    · have hab : a = b := Fin.ext (by omega)
      subst hab
      simp [ha]

theorem xi_torus {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) (hI : Interlace h lam sg)
    (t : Fin n → ℂˣ) :
    sqAct ℂ N lam (embGL ℂ n N h (diagGL ℂ n t)) (xi ℂ h lam sg) =
      ((∏ j, t j ^ sg.w j : ℂˣ) : ℂ) • xi ℂ h lam sg := by
  rw [embGL_diag, sqAct_diag_xi h lam sg hI]
  simp

theorem xi_last {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) (hI : Interlace h lam sg)
    (a : ℂˣ) :
    sqAct ℂ N lam (lastGL ℂ N a) (xi ℂ h lam sg) = ((a ^ degZ lam sg : ℂˣ) : ℂ) • xi ℂ h lam sg := by
  have hL : lastGL ℂ N a = diagGL ℂ N (fun b => if b.1 < n then 1 else a) := by
    apply Units.ext
    ext i j
    unfold lastGL diagGL
    simp [Matrix.diagonal_apply]
    split_ifs <;> simp_all <;> omega
  rw [hL, sqAct_diag_xi h lam sg hI]
  simp

theorem xi_unitri {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n)
    (g : GL (Fin n) ℂ) (hlow : ∀ i j, j < i → (g : Matrix (Fin n) (Fin n) ℂ) i j = 0)
    (hdiag : ∀ i, (g : Matrix (Fin n) (Fin n) ℂ) i i = 1) :
    sqAct ℂ N lam (embGL ℂ n N h g) (xi ℂ h lam sg) = xi ℂ h lam sg := by
  set G := ((embGL ℂ n N h g : GL (Fin N) ℂ) : Matrix (Fin N) (Fin N) ℂ) with hGdef
  have hlowG : ∀ a b : Fin N, a < b → G b a = 0 := by
    intro a b hab
    have hab' := Fin.lt_def.mp hab
    rw [hGdef, XiA.embGL_apply]
    by_cases hb : b.1 < n
    · have ha : a.1 < n := by omega
      rw [dif_pos hb, dif_pos ha]
      exact hlow _ _ (Fin.mk_lt_mk.mpr hab')
    · have hbN := b.isLt
      rw [dite_eq_right hb, if_pos (by omega)]
  have hcol : ∀ b : Fin N, b.1 ≠ n → G b ⟨n, by omega⟩ = 0 := by
    intro b hb
    have hbN := b.isLt
    have hb' : b.1 < n := by omega
    rw [hGdef, XiA.embGL_apply, dif_pos hb', dite_eq_right (lt_irrefl n)]
  have hdg : ∀ a : Fin N, G a a = 1 := by
    intro a
    rw [hGdef, XiA.embGL_apply]
    by_cases ha : a.1 < n
    · rw [dif_pos ha, dif_pos ha]
      exact hdiag ⟨a.1, ha⟩
    · rw [dite_eq_right ha, if_neg ha]
  have hgood : XiA.GoodG n h G := by
    unfold XiA.GoodG
    exact ⟨hlowG, hcol⟩
  have hdet : G.det = 1 := by
    rw [Matrix.det_of_upperTriangular (fun i j hij => hlowG j i hij)]
    simp [hdg]
  have hxs : XiA.xiScal h lam sg G = 1 := by
    unfold XiA.xiScal
    simp [hdg]
  unfold sqAct
  rw [XiA.rowAct_xi h lam sg G hgood, hxs, MvPolynomial.C_1, one_mul]
  have hdu : Matrix.GeneralLinearGroup.det (embGL ℂ n N h g) = 1 := by
    apply Units.ext
    rw [Units.val_one, Matrix.GeneralLinearGroup.val_det_apply, ← hGdef, hdet]
  unfold detPow
  rw [hdu]
  simp

private theorem mul_mem_dualWeyl_complex_add {N : ℕ} (ν μ : Fin N → ℕ) (f g : MvPolynomial (Fin N × Fin N) ℂ)
    (hf : f ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N ν) (hg : g ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N μ) :
    f * g ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ N N (ν + μ) := by
  unfold Formalism.GradedWeylDivisibility.dualWeyl at hf hg ⊢
  rw [Submodule.mem_inf] at hf hg ⊢
  obtain ⟨hf1, hf2⟩ := hf
  obtain ⟨hg1, hg2⟩ := hg
  refine ⟨?_, ?_⟩
  · rw [MvPolynomial.mem_weightedHomogeneousSubmodule] at hf1 hg1 ⊢
    exact hf1.mul hg1
  · simp only [Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, AlgHom.toLinearMap_apply,
      sub_eq_zero] at hf2 hg2 ⊢
    intro l j hlj
    rw [map_mul, map_mul, hf2 l j hlj, hg2 l j hlj]

theorem nu_eq {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) (hI : Interlace h lam sg)
    (t : Fin N) :
    (∑ i : Fin n, ((aa h lam sg i).toNat * (if t.1 < i.1 + 1 then 1 else 0) +
      (bb h lam sg i).toNat * (if t.1 < i.1 + 1 then 1 else 0)) : ℕ) = lam.natW t := by
  subst h
  set ℓ : ℕ → ℤ := fun k => if hk : k < n + 1 then lam.w ⟨k, hk⟩ else 0 with hℓ
  apply Nat.cast_injective (R := ℤ)
  have hnat : ((lam.natW t : ℕ) : ℤ) = lam.w t - lam.w ⟨n, by omega⟩ := by
    have hle : t ≤ ⟨n, by omega⟩ := by rw [Fin.le_def]; have := t.2; simp; omega
    have := lam.anti hle
    simp only [DomWeight.natW, DomWeight.detShift, dif_pos (show 0 < n + 1 by omega)]
    rw [Int.toNat_of_nonneg (by simp; omega)]
    simp
  rw [hnat]
  push_cast
  rw [Finset.sum_congr rfl (g := fun i : Fin n => (fun k : ℕ => if t.1 ≤ k then ℓ k - ℓ (k + 1) else 0) i.1)]
  · rw [Fin.sum_univ_eq_sum_range (fun k : ℕ => if t.1 ≤ k then ℓ k - ℓ (k + 1) else 0) n,
      XiA.tele_sum ℓ n t.1 (by have := t.2; omega)]
    simp only [hℓ, dif_pos t.2, dif_pos (show n < n + 1 by omega)]
  · intro i _
    have hi := i.2
    have hA : 0 ≤ aa rfl lam sg i := by have := (hI i).2; unfold aa; omega
    have hB : 0 ≤ bb rfl lam sg i := by have := (hI i).1; unfold bb; omega
    rw [Int.toNat_of_nonneg hA, Int.toNat_of_nonneg hB]
    simp only [hℓ, dif_pos (show i.1 < n + 1 by omega), dif_pos (show i.1 + 1 < n + 1 by omega)]
    by_cases hti : t.1 ≤ i.1
    · rw [if_pos (by omega), if_pos hti]
      unfold aa bb
      ring
    · rw [if_neg (by omega), if_neg hti]
      ring

theorem xi_mem {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) (hI : Interlace h lam sg) :
    xi ℂ h lam sg ∈ nablaSq ℂ N lam := by
  unfold nablaSq
  have key : lam.natW = ∑ i : Fin n, ((aa h lam sg i).toNat • (fun t : Fin N => if t.1 < i.1 + 1 then 1 else 0) +
      (bb h lam sg i).toNat • (fun t : Fin N => if t.1 < i.1 + 1 then 1 else 0)) := by
    funext t
    rw [← nu_eq h lam sg hI t]
    simp only [Finset.sum_apply, Pi.add_apply, Pi.smul_apply, smul_eq_mul]
  unfold xi
  rw [key]
  refine XiA.prod_mem Finset.univ _ _ (fun i _ => ?_)
  apply mul_mem_dualWeyl_complex_add
  · apply XiA.pow_mem
    rw [XiA.lpMinor_eq]
    exact XiA.initMinor_mem _ _
  · apply XiA.pow_mem
    exact XiA.initMinor_mem _ _

theorem initMinor_ne {N s : ℕ} (I : Fin s → Fin N) (hI : Function.Injective I) (hs : s ≤ N) :
    Formalism.GradedWeylDivisibility.initMinor ℂ (n := N) I hs ≠ 0 := by
  classical
  intro h0
  let v : Fin N × Fin N → ℂ := fun w => if ∃ p : Fin s, I p = w.1 ∧ Fin.castLE hs p = w.2 then 1 else 0
  have h1 := congrArg (MvPolynomial.eval v) h0
  rw [map_zero] at h1
  unfold Formalism.GradedWeylDivisibility.initMinor at h1
  rw [RingHom.map_det] at h1
  have hM : (MvPolynomial.eval v).mapMatrix
      (Matrix.of fun p q : Fin s => (X (I p, Fin.castLE hs q) : MvPolynomial (Fin N × Fin N) ℂ)) = 1 := by
    ext p q
    simp only [RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply, MvPolynomial.eval_X,
      Matrix.one_apply, v]
    by_cases hpq : p = q
    · subst hpq
      rw [if_pos ⟨p, rfl, rfl⟩, if_pos rfl]
    · rw [if_neg hpq, if_neg]
      rintro ⟨p', h2, h3⟩
      have h4 : p' = p := hI h2
      subst h4
      apply hpq
      have h5 := congrArg Fin.val h3
      simp only [Fin.coe_castLE] at h5
      exact Fin.ext h5
  rw [hM, Matrix.det_one] at h1
  exact one_ne_zero h1

theorem xi_ne {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) : xi ℂ h lam sg ≠ 0 := by
  unfold xi
  rw [Finset.prod_ne_zero_iff]
  intro i _
  apply mul_ne_zero
  · apply pow_ne_zero
    rw [XiA.lpMinor_eq]
    exact initMinor_ne _ (Fin.castLE_injective _) _
  · apply pow_ne_zero
    exact initMinor_ne _ (XiA.rowsZ_strictMono h i).injective _

theorem eval_initMinor_norm_le {N s : ℕ} (x : Matrix (Fin N) (Fin N) ℂ) (hx : x ∈ Matrix.unitaryGroup (Fin N) ℂ)
    (I : Fin s → Fin N) (hI : Function.Injective I) (hs : s ≤ N) :
    ‖MvPolynomial.eval (fun v : Fin N × Fin N => x v.1 v.2) (Formalism.GradedWeylDivisibility.initMinor ℂ (n := N) I hs)‖ ≤ 1 := by
  unfold Formalism.GradedWeylDivisibility.initMinor
  rw [RingHom.map_det]
  have : (MvPolynomial.eval fun v : Fin N × Fin N => x v.1 v.2).mapMatrix
      (Matrix.of fun p q : Fin s => (X (I p, Fin.castLE hs q) : MvPolynomial (Fin N × Fin N) ℂ)) =
      Matrix.of fun p q => x (I p) (Fin.castLE hs q) := by
    ext p q; simp
  rw [this]
  exact XiU.det_sub_norm_le_one x hx I (Fin.castLE hs) hI (Fin.castLE_injective hs)

theorem xi_unitary {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n)
    (x : Matrix (Fin N) (Fin N) ℂ) (hx : x ∈ Matrix.unitaryGroup (Fin N) ℂ) :
    ‖MvPolynomial.eval (fun v : Fin N × Fin N => x v.1 v.2) (xi ℂ h lam sg)‖ ≤ 1 := by
  unfold xi
  rw [map_prod, norm_prod]
  apply Finset.prod_le_one₀ (fun i _ => norm_nonneg _)
  intro i _
  rw [map_mul, map_pow, map_pow, norm_mul, norm_pow, norm_pow]
  apply mul_le_one₀ (pow_le_one₀ (norm_nonneg _) ?_) (pow_nonneg (norm_nonneg _) _)
    (pow_le_one₀ (norm_nonneg _) ?_)
  · rw [XiA.lpMinor_eq]
    exact eval_initMinor_norm_le x hx _ (Fin.castLE_injective _) _
  · exact eval_initMinor_norm_le x hx _ (XiA.rowsZ_strictMono h i).injective _

end PI.WGL.XiB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.EvalInitMinorNormLe =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionXi =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionXi", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ZScalarVanish\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.EvalInitMinorNormLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions MvPolynomial

theorem xi_coefficient_facts : XiFacts := by
  intro n N h lam sg hI
  refine ⟨XiB.xi_ne h lam sg, XiB.xi_mem h lam sg hI, ?_, ?_, ?_, ?_⟩
  · intro g hlow hdiag
    exact XiB.xi_unitri h lam sg g hlow hdiag
  · intro t
    exact XiB.xi_torus h lam sg hI t
  · intro a
    exact XiB.xi_last h lam sg hI a
  · intro x hx
    exact XiB.xi_unitary h lam sg x hx

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionXi =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.GTLowerOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.GTLowerOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.GTLower\npublic import Formalism.PeriodIntegrals.HwIrred\npublic import Formalism.PeriodIntegrals.SchurFock\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.Assembly\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.Capelli2_2\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionAdj\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionBrInt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionIo\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionLift\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionNum\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionXi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

theorem gTLower_of (h2 : Formalism.BasicNotions.FactDelDualNabla) (h3 : PI.HwIrred) (h4 : PI.GTBranch)
    (h5 : PI.SchurFock) : PI.GTLower := by
  have hN : Numbers := numbers_dominant_large
  have hX : XiFacts := xi_coefficient_facts
  have hZ : CapelliZ := capelli_scalar_identity
  have hV : ZScalarVanish := scalar_vanishing_criterion
  exact gTLower_of_steps hN hX (_root_.PI.WGL.ioExists_of' h3 h4 hX)
    (ioIntegral_of hZ (liftMod_of h3 h4 hZ hV hN hX) hV)
    (adjointBr_of h3 h5 hN hX) (brIntegral_of h2 h3)

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.GTLowerOf =====
