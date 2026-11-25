module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.StrictUpperNeg
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SubMulRight
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.MulVecBvecApply
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormRankZeroApply
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LowerCoordinateProd
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellDiagonalMap
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BlkUUMapMuPRn
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SigmaFiniteOfHaar
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceContOn
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LowerParabolicCoordinates
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul
import Mathlib.Tactic.Linter.Style
import Aesop.Main
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.UTransEMp, Formalism.HermitianCurvature.HermitianCurvatureProofs.MeasurePreservingProdPermThree, Formalism.HermitianCurvature.HermitianCurvatureProofs.PsiCStarMul, Formalism.HermitianCurvature.HermitianCurvatureProofs.ChiLIntegrable

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.UTransEMp =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.UTransEMp", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.StrictUpperNeg\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LowerParabolicCoordinates\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SubMulRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.U

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBM

section muSS

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq]

def QN (k r : ℕ) : Measure (U.RC k r 0 × (G.UT r → ℂ)) := (U.muRC k r 0).prod volume

instance (k r : ℕ) : SigmaFinite (U.muRC k r 0) := Dx2.SplitF.sf_RC r 0

instance (k r : ℕ) : SFinite (QN k r) := by unfold QN; infer_instance

def TN (k r : ℕ) (p : (Mt k r × (U.RC k r 0 × (G.UT r → ℂ))) × (Mt k r × (U.RC k r 0 × (G.UT r → ℂ)))) :
    B.SS k r :=
  ((p.1.1, psiR k r p.1.2), (p.2.1, psiR k r p.2.2))

theorem TN_meas : Measurable (TN k r) := by
  unfold TN
  exact ((measurable_fst.comp measurable_fst).prodMk ((psiR_meas r).comp (measurable_snd.comp measurable_fst))).prodMk
    ((measurable_fst.comp measurable_snd).prodMk ((psiR_meas r).comp (measurable_snd.comp measurable_snd)))

theorem muSS_eq (S : B.RealPlaceData k r Wp Wq) (hN : S.μN = D.muN k r) :
    S.μSS = ((S.μW.prod (QN k r)).prod (S.μW'.prod (QN k r))).map (TN k r) := by
  have hW : SigmaFinite S.μW := Dx2.MN.sigma_of_haar S.haarW
  have hW' : SigmaFinite S.μW' := Dx2.MN.sigma_of_haar S.haarW'
  have hN' : S.μN = (QN k r).map (psiR k r) := by rw [hN]; exact muN_rev (k := k) r
  unfold B.RealPlaceData.μSS
  rw [hN', ← Measure.map_id (μ := S.μW), Measure.map_prod_map _ _ measurable_id (psiR_meas r),
    ← Measure.map_id (μ := S.μW'), Measure.map_prod_map _ _ measurable_id (psiR_meas r),
    Measure.map_prod_map _ _ (measurable_id.prodMap (psiR_meas r)) (measurable_id.prodMap (psiR_meas r)),
    Measure.map_id, Measure.map_id]
  rfl

end muSS

section utrans

variable {r : ℕ} {X : Type} [MeasurableSpace X]

theorem ut_of_mem {A : Matrix (Fin r) (Fin r) ℂ} (hA : A ∈ C2.UTset r) : G.upper (StabilizerDisintegration.utc A) = A := by
  ext i j
  simp only [G.upper, G.strictUpper, StabilizerDisintegration.utc, Matrix.add_apply, Matrix.of_apply, Matrix.one_apply]
  rcases lt_trichotomy i j with h | h | h
  · rw [if_neg (ne_of_lt h), dite_eq_left h, zero_add]
  · subst h
    rw [if_pos rfl, dite_eq_right (lt_irrefl _), add_zero, hA.2 i]
  · rw [if_neg (ne_of_gt h), dite_eq_right (not_lt.2 h.le), add_zero, hA.1 i j h]

def uTransE (A : X → Matrix (Fin r) (Fin r) ℂ) (hA : ∀ x, A x ∈ C2.UTset r) (hAc : ∀ i j, Measurable fun x => A x i j)
    (hAi : ∀ i j, Measurable fun x => (A x)⁻¹ i j) :
    (X × (G.UT r → ℂ)) ≃ᵐ (X × (G.UT r → ℂ)) where
  toFun p := (p.1, StabilizerDisintegration.utc ((A p.1)⁻¹ * G.upper p.2))
  invFun p := (p.1, StabilizerDisintegration.utc (A p.1 * G.upper p.2))
  left_inv p := by
    ext
    · rfl
    · simp only
      rw [ut_of_mem (C2x2.ut_mul (_root_.Formalism.FourierDecayAlt.P.C2x2.ut_inv (hA p.1)) (StabilizerDisintegration.UC.upper_mem _)), ← Matrix.mul_assoc,
        Matrix.mul_nonsing_inv _ (_root_.Formalism.FourierDecayAlt.P.C2x2.ut_unit (hA p.1)), Matrix.one_mul, StabilizerDisintegration.UC.utc_upper]
  right_inv p := by
    ext
    · rfl
    · simp only
      rw [ut_of_mem (C2x2.ut_mul (hA p.1) (StabilizerDisintegration.UC.upper_mem _)), ← Matrix.mul_assoc,
        Matrix.nonsing_inv_mul _ (_root_.Formalism.FourierDecayAlt.P.C2x2.ut_unit (hA p.1)), Matrix.one_mul, StabilizerDisintegration.UC.utc_upper]
  measurable_toFun := by
    refine measurable_fst.prodMk ?_
    refine Measurable.of_eval fun q => ?_
    simp only [StabilizerDisintegration.utc, Matrix.mul_apply]
    refine Finset.measurable_sum _ fun c _ => Measurable.mul ?_ ?_
    · exact (hAi _ _).comp measurable_fst
    · exact ((StabilizerDisintegration.UC.cont_upper.matrix_elem _ _).measurable).comp measurable_snd
  measurable_invFun := by
    refine measurable_fst.prodMk ?_
    refine Measurable.of_eval fun q => ?_
    simp only [StabilizerDisintegration.utc, Matrix.mul_apply]
    refine Finset.measurable_sum _ fun c _ => Measurable.mul ?_ ?_
    · exact (hAc _ _).comp measurable_fst
    · exact ((StabilizerDisintegration.UC.cont_upper.matrix_elem _ _).measurable).comp measurable_snd

theorem uTransE_mp (A : X → Matrix (Fin r) (Fin r) ℂ) (hA : ∀ x, A x ∈ C2.UTset r) (hAc : ∀ i j, Measurable fun x => A x i j)
    (hAi : ∀ i j, Measurable fun x => (A x)⁻¹ i j)
    (μ : Measure X) [SFinite μ] :
    MeasurePreserving (uTransE A hA hAc hAi) (μ.prod volume) (μ.prod volume) := by
  have h := MeasurePreserving.skew_product (f := id) (g := fun x u => StabilizerDisintegration.utc ((A x)⁻¹ * G.upper u))
    (MeasurePreserving.id μ) (measurable_snd.comp (uTransE A hA hAc hAi).measurable)
    (Filter.Eventually.of_forall fun x => (StabilizerDisintegration.utLeft r _ (_root_.Formalism.FourierDecayAlt.P.C2x2.ut_inv (hA x))).map_eq)
  exact h

end utrans

end Formalism.FourierDecayAlt.P.PBM
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.UTransEMp =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.MeasurePreservingProdPermThree =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.MeasurePreservingProdPermThree", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.UTransEMp\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MulVecBvecApply\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SubMulRight\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormRankZeroApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.U

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBM

section perms

variable {α β γ δ : Type} [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ] [MeasurableSpace δ]
  (μa : Measure α) (μb : Measure β) (μc : Measure γ) (μd : Measure δ) [SFinite μa] [SFinite μb] [SFinite μc]
  [SFinite μd]

theorem measurePreserving_prod_perm_one : MeasurePreserving (fun p : α × (β × (γ × δ)) => ((p.1, p.2.2.2), (p.2.2.1, p.2.1)))
    (μa.prod (μb.prod (μc.prod μd))) ((μa.prod μd).prod (μc.prod μb)) := by
  have h1 := (MeasurePreserving.id μa).prod (Measure.measurePreserving_swap (μ := μb) (ν := μc.prod μd))
  have h2 := (MeasurePreserving.id μa).prod
    ((Measure.measurePreserving_swap (μ := μc) (ν := μd)).prod (MeasurePreserving.id μb))
  have h3 := (MeasurePreserving.id μa).prod (measurePreserving_prodAssoc μd μc μb)
  have h4 := MeasurePreserving.symm _ (measurePreserving_prodAssoc μa μd (μc.prod μb))
  exact h4.comp (h3.comp (h2.comp h1))

theorem measurePreserving_prod_perm_two : MeasurePreserving (fun p : (α × β) × (γ × δ) => ((p.1.1, p.2.1), (p.2.2, p.1.2)))
    ((μa.prod μb).prod (μc.prod μd)) ((μa.prod μc).prod (μd.prod μb)) := by
  have g1 := measurePreserving_prodAssoc μa μb (μc.prod μd)
  have g2 := (MeasurePreserving.id μa).prod (Measure.measurePreserving_swap (μ := μb) (ν := μc.prod μd))
  have g3 := (MeasurePreserving.id μa).prod (measurePreserving_prodAssoc μc μd μb)
  have g4 := MeasurePreserving.symm _ (measurePreserving_prodAssoc μa μc (μd.prod μb))
  exact g4.comp (g3.comp (g2.comp g1))

theorem measurePreserving_prod_perm_three : MeasurePreserving (fun p : α × ((β × γ) × δ) => ((p.2.1.1, p.1), (p.2.1.2, p.2.2)))
    (μa.prod ((μb.prod μc).prod μd)) ((μb.prod μa).prod (μc.prod μd)) := by
  have k1 := (MeasurePreserving.id μa).prod (measurePreserving_prodAssoc μb μc μd)
  have k2 := MeasurePreserving.symm _ (measurePreserving_prodAssoc μa μb (μc.prod μd))
  have k3 := (Measure.measurePreserving_swap (μ := μa) (ν := μb)).prod (MeasurePreserving.id (μc.prod μd))
  exact k3.comp (k2.comp k1)

end perms

section phi

variable {k r : ℕ} (σ : Equiv.Perm (Fin r)) (y1 y1' : B.Mat k 0)
  (A : (C2.Lstidx σ.symm → ℂ) → Matrix (Fin r) (Fin r) ℂ) (hA : ∀ x, A x ∈ C2.UTset r)
  (hAc : ∀ i j, Measurable fun x => A x i j) (hAi : ∀ i j, Measurable fun x => (A x)⁻¹ i j)

def phiC (p : (C2.Lstidx σ.symm → ℂ) × U.Xi k r 0 0 σ) : (U.RC k r 0 × (G.UT r → ℂ)) × (U.RC k r 0 × (G.UT r → ℂ)) :=
  ((rnAct y1 p.2.1.1, StabilizerDisintegration.UC.fSp σ.symm (p.1, fun q => p.2.2.2.1 (StabilizerDisintegration.UC.iota σ q))),
   (rnAct y1' p.2.1.2, StabilizerDisintegration.utc ((A p.1)⁻¹ * G.upper p.2.2.2.2)))

instance : SFinite (U.muRC k r 0) := inferInstance

instance : SFinite (U.muXiH r 0 σ) := by unfold U.muXiH; infer_instance

include hA hAc hAi in
theorem phiC_mp (hy1 : y1 ∈ B.GV k 0) (hy1' : y1' ∈ B.GV k 0) :
    MeasurePreserving (phiC σ y1 y1' A) ((volume : Measure (C2.Lstidx σ.symm → ℂ)).prod (U.muXi k r 0 0 σ))
      ((QN k r).prod (QN k r)) := by
  have := Dx2.SL.probT r

  have hin : MeasurePreserving (fun t : U.XiH r 0 σ => (fun q => t.2.1 (StabilizerDisintegration.UC.iota σ q), t.2.2))
      (U.muXiH r 0 σ) ((volume : Measure (C2.LPidx σ.symm → ℂ)).prod (volume : Measure (G.UT r → ℂ))) := by
    have h1 := Dx2.SL.dropE_mp ((Fin 0 → Fin r → ℂ) × (Fin r → Fin 0 → ℂ)) ((U.LW σ → ℂ) × (G.UT r → ℂ))
      volume ((volume : Measure (U.LW σ → ℂ)).prod volume)
    have h2 : MeasurePreserving (Prod.map (fun (y : U.LW σ → ℂ) (q : C2.LPidx σ.symm) => y (StabilizerDisintegration.UC.iota σ q)) id)
        ((volume : Measure (U.LW σ → ℂ)).prod (volume : Measure (G.UT r → ℂ)))
        ((volume : Measure (C2.LPidx σ.symm → ℂ)).prod volume) :=
      (Dx2.SL.reindex_mp (StabilizerDisintegration.UC.iota σ)).prod (MeasurePreserving.id _)
    have := h2.comp h1
    unfold U.muXiH
    rw [Measure.volume_eq_prod, Measure.volume_eq_prod (α := U.LW σ → ℂ)]
    convert this using 1
    funext t
    rfl
  have hA' : MeasurePreserving
      (fun p : (C2.Lstidx σ.symm → ℂ) × U.Xi k r 0 0 σ =>
        (p.1, (p.2.1, (fun q => p.2.2.2.1 (StabilizerDisintegration.UC.iota σ q), p.2.2.2.2))))
      ((volume : Measure (C2.Lstidx σ.symm → ℂ)).prod (U.muXi k r 0 0 σ))
      ((volume : Measure (C2.Lstidx σ.symm → ℂ)).prod (((U.muRC k r 0).prod (U.muRC k r 0)).prod
        ((volume : Measure (C2.LPidx σ.symm → ℂ)).prod (volume : Measure (G.UT r → ℂ))))) :=
    (MeasurePreserving.id _).prod ((MeasurePreserving.id _).prod hin)
  have hC := measurePreserving_prod_perm_one (volume : Measure (C2.Lstidx σ.symm → ℂ)) ((U.muRC k r 0).prod (U.muRC k r 0))
    (volume : Measure (C2.LPidx σ.symm → ℂ)) (volume : Measure (G.UT r → ℂ))
  have hD : MeasurePreserving (Prod.map (uTransE A hA hAc hAi) id)
      (((volume : Measure (C2.Lstidx σ.symm → ℂ)).prod (volume : Measure (G.UT r → ℂ))).prod
        ((volume : Measure (C2.LPidx σ.symm → ℂ)).prod ((U.muRC k r 0).prod (U.muRC k r 0))))
      (((volume : Measure (C2.Lstidx σ.symm → ℂ)).prod (volume : Measure (G.UT r → ℂ))).prod
        ((volume : Measure (C2.LPidx σ.symm → ℂ)).prod ((U.muRC k r 0).prod (U.muRC k r 0)))) :=
    (uTransE_mp A hA hAc hAi _).prod (MeasurePreserving.id _)
  have hE := measurePreserving_prod_perm_two (volume : Measure (C2.Lstidx σ.symm → ℂ)) (volume : Measure (G.UT r → ℂ))
    (volume : Measure (C2.LPidx σ.symm → ℂ)) ((U.muRC k r 0).prod (U.muRC k r 0))
  have hF : MeasurePreserving
      (Prod.map (StabilizerDisintegration.UC.fSp σ.symm) (Prod.map (Prod.map (rnAct (j := r) y1) (rnAct (j := r) y1')) id))
      (((volume : Measure (C2.Lstidx σ.symm → ℂ)).prod (volume : Measure (C2.LPidx σ.symm → ℂ))).prod
        (((U.muRC k r 0).prod (U.muRC k r 0)).prod (volume : Measure (G.UT r → ℂ))))
      ((volume : Measure (G.UT r → ℂ)).prod (((U.muRC k r 0).prod (U.muRC k r 0)).prod
        (volume : Measure (G.UT r → ℂ)))) := by
    refine MeasurePreserving.prod ?_ (((rnAct_mp y1 hy1).prod (rnAct_mp y1' hy1')).prod (MeasurePreserving.id _))
    have := StabilizerDisintegration.UC.fSp_mp σ.symm
    rw [Measure.volume_eq_prod] at this
    exact this
  have hG := measurePreserving_prod_perm_three (volume : Measure (G.UT r → ℂ)) (U.muRC k r 0) (U.muRC k r 0) (volume : Measure (G.UT r → ℂ))
  have := hG.comp (hF.comp (hE.comp (hD.comp (hC.comp hA'))))
  unfold QN
  convert this using 1
  funext p
  rfl

def psiC (q : (U.RC k r 0 × (G.UT r → ℂ)) × (U.RC k r 0 × (G.UT r → ℂ))) :
    (C2.Lstidx σ.symm → ℂ) × U.Xi k r 0 0 σ :=
  (((StabilizerDisintegration.UC.eSp σ.symm).symm q.1.2).1,
    ((rnAct y1⁻¹ q.1.1, rnAct y1'⁻¹ q.2.1),
      (default, (fun l => ((StabilizerDisintegration.UC.eSp σ.symm).symm q.1.2).2 ((StabilizerDisintegration.UC.iota σ).symm l),
        StabilizerDisintegration.utc (A ((StabilizerDisintegration.UC.eSp σ.symm).symm q.1.2).1 * G.upper q.2.2)))))

theorem rnAct_inv_rnAct {a : B.Mat k 0} (ha : IsUnit a.det) (x : U.RC k r 0) : rnAct a⁻¹ (rnAct a x) = x := by
  simp only [rnAct, Equiv.apply_symm_apply, ← Matrix.mul_assoc, Matrix.nonsing_inv_mul _ ha, Matrix.one_mul,
    Equiv.symm_apply_apply]

theorem rnAct_rnAct_inv {a : B.Mat k 0} (ha : IsUnit a.det) (x : U.RC k r 0) : rnAct a (rnAct a⁻¹ x) = x := by
  simp only [rnAct, Equiv.apply_symm_apply, ← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ ha, Matrix.one_mul,
    Equiv.symm_apply_apply]

theorem rnAct_meas (a : B.Mat k 0) : Measurable (rnAct (j := r) a) := by
  have h : (rnAct (j := r) a) = fun x => (Matrix.of.symm (a * Matrix.of x.1), x.2) := by
    funext x
    rfl
  rw [h]
  refine Measurable.prodMk ?_ measurable_snd
  refine Measurable.of_eval (fun i => Measurable.of_eval (fun l => ?_))
  change Measurable fun x : U.RC k r 0 => ∑ m, a i m * x.1 m l
  exact Finset.measurable_sum _ (fun m _ => measurable_const.mul
    ((measurable_pi_apply l).comp ((measurable_pi_apply m).comp measurable_fst)))

include hA in
theorem psiC_phiC (hy1 : IsUnit y1.det) (hy1' : IsUnit y1'.det) :
    Function.LeftInverse (psiC σ y1 y1' A) (phiC σ y1 y1' A) := by
  intro p
  obtain ⟨x0, ⟨⟨a, b⟩, ⟨e, ⟨v, u⟩⟩⟩⟩ := p
  have hM : (A x0)⁻¹ * G.upper u ∈ C2.UTset r :=
    _root_.Formalism.FourierDecayAlt.P.C2x2.ut_mul (_root_.Formalism.FourierDecayAlt.P.C2x2.ut_inv (hA x0)) (StabilizerDisintegration.HC.upper_mem u)
  have hE : (StabilizerDisintegration.UC.eSp σ.symm).symm (StabilizerDisintegration.UC.fSp σ.symm (x0, fun q => v (StabilizerDisintegration.UC.iota σ q))) =
      (x0, fun q => v (StabilizerDisintegration.UC.iota σ q)) := (StabilizerDisintegration.UC.eSp σ.symm).symm_apply_apply _
  have hU : A x0 * G.upper (StabilizerDisintegration.utc ((A x0)⁻¹ * G.upper u)) = G.upper u := by
    rw [_root_.Formalism.FourierDecayAlt.P.StabilizerDisintegration.HC.upper_utc hM, ← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ (_root_.Formalism.FourierDecayAlt.P.C2x2.ut_unit (hA x0)), Matrix.one_mul]
  simp only [psiC, phiC, hE, rnAct_inv_rnAct hy1, rnAct_inv_rnAct hy1', Equiv.apply_symm_apply, hU,
    StabilizerDisintegration.HC.utc_upper, Prod.mk.injEq, and_true, true_and]
  exact Subsingleton.elim _ _

include hA in
theorem phiC_psiC (hy1 : IsUnit y1.det) (hy1' : IsUnit y1'.det) :
    Function.RightInverse (psiC σ y1 y1' A) (phiC σ y1 y1' A) := by
  intro q
  obtain ⟨⟨x1, w1⟩, ⟨x2, w2⟩⟩ := q
  have hE : StabilizerDisintegration.UC.fSp σ.symm ((StabilizerDisintegration.UC.eSp σ.symm).symm w1) = w1 := (StabilizerDisintegration.UC.eSp σ.symm).apply_symm_apply w1
  have hM : A ((StabilizerDisintegration.UC.eSp σ.symm).symm w1).1 * G.upper w2 ∈ C2.UTset r :=
    _root_.Formalism.FourierDecayAlt.P.C2x2.ut_mul (hA _) (StabilizerDisintegration.HC.upper_mem w2)
  have hU : (A ((StabilizerDisintegration.UC.eSp σ.symm).symm w1).1)⁻¹ *
      G.upper (StabilizerDisintegration.utc (A ((StabilizerDisintegration.UC.eSp σ.symm).symm w1).1 * G.upper w2)) = G.upper w2 := by
    rw [_root_.Formalism.FourierDecayAlt.P.StabilizerDisintegration.HC.upper_utc hM, ← Matrix.mul_assoc, Matrix.nonsing_inv_mul _ (_root_.Formalism.FourierDecayAlt.P.C2x2.ut_unit (hA _)), Matrix.one_mul]
  simp only [psiC, phiC, rnAct_rnAct_inv hy1, rnAct_rnAct_inv hy1', Equiv.symm_apply_apply, Prod.mk.eta, hE, hU,
    StabilizerDisintegration.HC.utc_upper]

include hA hAc hAi in
theorem phiC_emb (hy1 : IsUnit y1.det) (hy1' : IsUnit y1'.det) : MeasurableEmbedding (phiC σ y1 y1' A) := by
  have hup : ∀ m j : Fin r, Measurable fun v : G.UT r → ℂ => G.upper v m j := by
    intro m j
    by_cases h : m < j
    · simp only [G.upper, G.strictUpper, Matrix.add_apply, Matrix.of_apply, dif_pos h]
      exact measurable_const.add (measurable_pi_apply _)
    · simp only [G.upper, G.strictUpper, Matrix.add_apply, Matrix.of_apply, dif_neg h, add_zero]
      exact measurable_const
  have hmφ : Measurable (phiC σ y1 y1' A) := by
    have h1 : Measurable fun p : (C2.Lstidx σ.symm → ℂ) × U.Xi k r 0 0 σ => rnAct y1 p.2.1.1 :=
      (rnAct_meas y1).comp measurable_snd.fst.fst
    have h2 : Measurable fun p : (C2.Lstidx σ.symm → ℂ) × U.Xi k r 0 0 σ =>
        StabilizerDisintegration.UC.fSp σ.symm (p.1, fun q => p.2.2.2.1 (StabilizerDisintegration.UC.iota σ q)) :=
      (StabilizerDisintegration.UC.eSp σ.symm).measurable.comp (measurable_fst.prodMk (Measurable.of_eval fun q =>
        (measurable_pi_apply _).comp measurable_snd.snd.snd.fst))
    have h3 : Measurable fun p : (C2.Lstidx σ.symm → ℂ) × U.Xi k r 0 0 σ => rnAct y1' p.2.1.2 :=
      (rnAct_meas y1').comp measurable_snd.fst.snd
    have h4 : Measurable fun p : (C2.Lstidx σ.symm → ℂ) × U.Xi k r 0 0 σ =>
        StabilizerDisintegration.utc ((A p.1)⁻¹ * G.upper p.2.2.2.2) := by
      refine Measurable.of_eval fun q => ?_
      change Measurable fun p : (C2.Lstidx σ.symm → ℂ) × U.Xi k r 0 0 σ =>
        ∑ m, (A p.1)⁻¹ q.1.1 m * G.upper p.2.2.2.2 m q.1.2
      exact Finset.measurable_sum _ fun m _ => ((hAi _ _).comp measurable_fst).mul
        ((hup m _).comp measurable_snd.snd.snd.snd)
    exact (h1.prodMk h2).prodMk (h3.prodMk h4)
  have hmψ : Measurable (psiC σ y1 y1' A) := by
    have hes : Measurable fun q : (U.RC k r 0 × (G.UT r → ℂ)) × (U.RC k r 0 × (G.UT r → ℂ)) =>
        (StabilizerDisintegration.UC.eSp σ.symm).symm q.1.2 :=
      (StabilizerDisintegration.UC.eSp σ.symm).symm.measurable.comp measurable_fst.snd
    have g1 := hes.fst
    have g2 : Measurable fun q : (U.RC k r 0 × (G.UT r → ℂ)) × (U.RC k r 0 × (G.UT r → ℂ)) =>
        rnAct y1⁻¹ q.1.1 := (rnAct_meas y1⁻¹).comp measurable_fst.fst
    have g3 : Measurable fun q : (U.RC k r 0 × (G.UT r → ℂ)) × (U.RC k r 0 × (G.UT r → ℂ)) =>
        rnAct y1'⁻¹ q.2.1 := (rnAct_meas y1'⁻¹).comp measurable_snd.fst
    have g5 : Measurable fun q : (U.RC k r 0 × (G.UT r → ℂ)) × (U.RC k r 0 × (G.UT r → ℂ)) =>
        fun l => ((StabilizerDisintegration.UC.eSp σ.symm).symm q.1.2).2 ((StabilizerDisintegration.UC.iota σ).symm l) :=
      Measurable.of_eval fun l => (measurable_pi_apply _).comp hes.snd
    have g6 : Measurable fun q : (U.RC k r 0 × (G.UT r → ℂ)) × (U.RC k r 0 × (G.UT r → ℂ)) =>
        StabilizerDisintegration.utc (A ((StabilizerDisintegration.UC.eSp σ.symm).symm q.1.2).1 * G.upper q.2.2) := by
      refine Measurable.of_eval fun q' => ?_
      change Measurable fun q : (U.RC k r 0 × (G.UT r → ℂ)) × (U.RC k r 0 × (G.UT r → ℂ)) =>
        ∑ m, A ((StabilizerDisintegration.UC.eSp σ.symm).symm q.1.2).1 q'.1.1 m * G.upper q.2.2 m q'.1.2
      exact Finset.measurable_sum _ fun m _ => ((hAc _ _).comp g1).mul
        ((hup _ _).comp measurable_snd.snd)
    exact g1.prodMk ((g2.prodMk g3).prodMk (measurable_const.prodMk (g5.prodMk g6)))
  let e : ((C2.Lstidx σ.symm → ℂ) × U.Xi k r 0 0 σ) ≃ᵐ
      ((U.RC k r 0 × (G.UT r → ℂ)) × (U.RC k r 0 × (G.UT r → ℂ))) :=
    { toFun := phiC σ y1 y1' A
      invFun := psiC σ y1 y1' A
      left_inv := psiC_phiC σ y1 y1' A hA hy1 hy1'
      right_inv := phiC_psiC σ y1 y1' A hA hy1 hy1'
      measurable_toFun := hmφ
      measurable_invFun := hmψ }
  exact e.measurableEmbedding

end phi

end Formalism.FourierDecayAlt.P.PBM
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.MeasurePreservingProdPermThree =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PsiCStarMul =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.PsiCStarMul", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MeasurePreservingProdPermThree\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LowerCoordinateProd\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellDiagonalMap\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BlkUUMapMuPRn\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SigmaFiniteOfHaar\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.U
open scoped ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBM

section pw

variable {k r : ℕ}

theorem hMat_monoP (σ : Equiv.Perm (Fin r)) (d : Fin r → ℂ) : U.hMat σ d = C2.monoP σ.symm d := by
  ext i a
  simp only [U.hMat, U.wP, C2.monoP, Matrix.mul_diagonal, Matrix.of_apply]
  by_cases h : σ i = a
  · have h' : i = σ.symm a := by rw [← h, Equiv.symm_apply_apply]
    simp [h']
  · have h' : ¬ i = σ.symm a := fun hh => h (by rw [hh, Equiv.apply_symm_apply])
    simp [h, h']

theorem headH_eq (σ : Equiv.Perm (Fin r)) (d : Fin r → ℂ) (v : U.LW σ → ℂ) (u : G.UT r → ℂ) :
    U.headH σ d v u = StabilizerDisintegration.lowP σ.symm (fun q => v (StabilizerDisintegration.UC.iota σ q)) * C2.monoP σ.symm d * G.upper u := by
  have h := StabilizerDisintegration.UC.permutationMatrix_mul_lowerUnipotent (σ := σ) (fun q => v (StabilizerDisintegration.UC.iota σ q))
  simp only [Equiv.apply_symm_apply] at h
  rw [U.headH, h, Matrix.mul_assoc (StabilizerDisintegration.lowP σ.symm _) (U.wP σ), ← U.hMat, hMat_monoP]

theorem psiC_add (c x y : ℂ) : C2.psiC c (x + y) = C2.psiC c x * C2.psiC c y := by
  unfold C2.psiC
  rw [← Complex.exp_add]
  congr 1
  simp only [mul_add, Complex.add_re, Complex.ofReal_add]

theorem psiC_star_mul (c x : ℂ) : C2.psiC c x * star (C2.psiC c x) = 1 := by
  have key : ∀ t : ℝ, Complex.exp (Complex.I * t) * star (Complex.exp (Complex.I * t)) = 1 := by
    intro t
    rw [Complex.star_def, ← Complex.exp_conj, ← Complex.exp_add, map_mul, Complex.conj_I, Complex.conj_ofReal]
    rw [show Complex.I * (t : ℂ) + -Complex.I * (t : ℂ) = 0 by ring, Complex.exp_zero]
  exact key _

end pw

section pwmain

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq]

def Amat (σ : Equiv.Perm (Fin r)) (d : Fin r → ℂ) (x0 : C2.Lstidx σ.symm → ℂ) : Matrix (Fin r) (Fin r) ℂ :=
  (C2.monoP σ.symm d)⁻¹ * StabilizerDisintegration.lowS σ.symm x0 * C2.monoP σ.symm d

theorem integrand_pw (S : B.RealPlaceData k r Wp Wq) (z0 z0' : Fin (2 * 0 + k + 1) → ℂ)
    (hz : S.z = liftVec k r 0 z0) (hz' : S.z' = liftVec k r 0 z0')
    (σ : Equiv.Perm (Fin r)) (d : Fin r → ℂ) (hd : ∀ a, d a ≠ 0) (γ0 : B.Mat k 0) (hγ0 : γ0 ∈ B.GV k 0)
    (hrel : C6.IsRelevant S (U.mMap k r 0 (U.hMat σ d) γ0)) (F : B.Mat k r → (Wq →L[ℂ] Wp))
    (h h' : Mt k r) (hh : Matrix.of h ∈ UWset k r S.z) (hh' : Matrix.of h' ∈ UWset k r S.z')
    (p : (C2.Lstidx σ.symm → ℂ) × U.Xi k r 0 0 σ) :
    theta0 S.z σ.symm (TN k r ((h, (phiC σ (midB r 0 (Matrix.of h)) (midB r 0 (Matrix.of h')) (Amat σ d) p).1),
        (h', (phiC σ (midB r 0 (Matrix.of h)) (midB r 0 (Matrix.of h')) (Amat σ d) p).2))) •
      D.orbIntegrand S (U.mMap k r 0 (U.hMat σ d) γ0) F
        (TN k r ((h, (phiC σ (midB r 0 (Matrix.of h)) (midB r 0 (Matrix.of h')) (Amat σ d) p).1),
          (h', (phiC σ (midB r 0 (Matrix.of h)) (midB r 0 (Matrix.of h')) (Amat σ d) p).2))) =
    chiL σ.symm p.1 • ((S.π (Matrix.of h)).comp
      ((U.psiStar k 0 σ S.z S.z' p.2 • F (U.gaXi k 0 σ d p.2 (fun a => a.elim0)
        ((midB r 0 (Matrix.of h))⁻¹ * γ0 * midB r 0 (Matrix.of h')))).comp (S.π' (Matrix.of h')⁻¹))) := by
  obtain ⟨x0, ⟨⟨y, y'⟩, ⟨⟨a, b⟩, ⟨v, u⟩⟩⟩⟩ := p
  have hhL : Matrix.of h ∈ UWset k (r + 0) (liftVec k r 0 z0) := hz ▸ hh
  have hhL' : Matrix.of h' ∈ UWset k (r + 0) (liftVec k r 0 z0') := hz' ▸ hh'
  have hY := uw_mid r 0 z0 _ hhL
  have hY' := uw_mid r 0 z0' _ hhL'
  have hYu : IsUnit (midB r 0 (Matrix.of h)).det := Formalism.FourierDecayAlt.P.PBG.isUnit_det_of_UH hY.1
  have hY'u : IsUnit (midB r 0 (Matrix.of h')).det := Formalism.FourierDecayAlt.P.PBG.isUnit_det_of_UH hY'.1
  have hAm : Amat σ d x0 ∈ C2.UTset r := conjS_UT hd x0
  have hAmi : (Amat σ d x0)⁻¹ ∈ C2.UTset r := _root_.Formalism.FourierDecayAlt.P.C2x2.ut_inv hAm
  have hup : G.upper u ∈ C2.UTset r := StabilizerDisintegration.UC.upper_mem u
  have hprod : (Amat σ d x0)⁻¹ * G.upper u ∈ C2.UTset r := _root_.Formalism.FourierDecayAlt.P.C2x2.ut_mul hAmi hup
  have hV' : G.upper (StabilizerDisintegration.utc ((Amat σ d x0)⁻¹ * G.upper u)) = (Amat σ d x0)⁻¹ * G.upper u := _root_.Formalism.FourierDecayAlt.P.StabilizerDisintegration.HC.upper_utc hprod
  have hAmu : IsUnit (Amat σ d x0).det := _root_.Formalism.FourierDecayAlt.P.C2x2.ut_unit hAm
  have hZu : IsUnit (U.hMat σ d).det := by
    rw [U.hMat, Matrix.det_mul, Matrix.det_diagonal]
    exact (Formalism.FourierDecayAlt.P.Dx2.SL.isUnit_wP σ).mul
      (isUnit_iff_ne_zero.mpr (Finset.prod_ne_zero_iff.mpr fun a _ => hd a))
  have hγ0u : IsUnit γ0.det := _root_.PI.StabPairsW.isUnit_det_of_mem_GV hγ0
  have hmat : (G.upper (StabilizerDisintegration.UC.fSp σ.symm (x0, (fun q => v (StabilizerDisintegration.UC.iota σ q)))))ᴴ * U.hMat σ d * G.upper (StabilizerDisintegration.utc ((Amat σ d x0)⁻¹ * G.upper u)) = U.headH σ d v u := by
    rw [hMat_monoP, orbit_split hd, headH_eq, hV']
    show _ * _ * G.upper (StabilizerDisintegration.utc (Amat σ d x0 * ((Amat σ d x0)⁻¹ * G.upper u))) = _
    rw [← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hAmu, Matrix.one_mul, StabilizerDisintegration.UC.utc_upper]
  have hsgs : B.sgs ((h, psiR k r (rnAct (midB r 0 (Matrix.of h)) y, StabilizerDisintegration.UC.fSp σ.symm (x0, (fun q => v (StabilizerDisintegration.UC.iota σ q))))), (h', psiR k r (rnAct (midB r 0 (Matrix.of h')) y', StabilizerDisintegration.utc ((Amat σ d x0)⁻¹ * G.upper u)))) (U.mMap k r 0 (U.hMat σ d) γ0) =
      U.gaXi k 0 σ d ((y, y'), ((a, b), (v, u))) (fun a => a.elim0) ((midB r 0 (Matrix.of h))⁻¹ * γ0 * midB r 0 (Matrix.of h')) := by
    rw [sgs_formula z0 z0' h h' hhL hhL', rnAct_inv_rnAct hYu, rnAct_inv_rnAct hY'u, hmat, gaXi_zero]
  have hθ : theta0 S.z σ.symm ((h, psiR k r (rnAct (midB r 0 (Matrix.of h)) y, StabilizerDisintegration.UC.fSp σ.symm (x0, (fun q => v (StabilizerDisintegration.UC.iota σ q))))), (h', psiR k r (rnAct (midB r 0 (Matrix.of h')) y', StabilizerDisintegration.utc ((Amat σ d x0)⁻¹ * G.upper u)))) = chiL σ.symm x0 := by
    simp only [theta0, psiR, Equiv.apply_symm_apply, blkU_uMap_muP_Rn, x0c, StabilizerDisintegration.UC.utc_upper]
    show chiL σ.symm ((StabilizerDisintegration.UC.eSp σ.symm).symm (StabilizerDisintegration.UC.eSp σ.symm (x0, (fun q => v (StabilizerDisintegration.UC.iota σ q))))).1 = chiL σ.symm x0
    rw [MeasurableEquiv.symm_apply_apply]
  have hUU : ∀ w : G.UT r → ℂ, Formalism.DoubleCosetMeasures.IsUpUni (G.upper w) := fun w =>
    ⟨fun i j hij => (StabilizerDisintegration.UC.upper_mem w).1 i j hij, (StabilizerDisintegration.UC.upper_mem w).2⟩
  have hr1 : psi k r S.z cStd (U.Rn k r 0 (rnAct (midB r 0 (Matrix.of h)) y)) = psi k r S.z cStd (U.Rn k r 0 y) := by
    have e := psi_rnAct z0 cStd _ hY (rnAct (midB r 0 (Matrix.of h)) y)
    rw [rnAct_inv_rnAct hYu] at e
    rw [hz]
    exact e.symm
  have hr2 : psi k r S.z' cStd (U.Rn k r 0 (rnAct (midB r 0 (Matrix.of h')) y')) = psi k r S.z' cStd (U.Rn k r 0 y') := by
    have e := psi_rnAct z0' cStd _ hY' (rnAct (midB r 0 (Matrix.of h')) y')
    rw [rnAct_inv_rnAct hY'u] at e
    rw [hz']
    exact e.symm
  have hs1 : C2.simpleUp (G.upper (StabilizerDisintegration.UC.fSp σ.symm (x0, (fun q => v (StabilizerDisintegration.UC.iota σ q))))) = C2.simpleUp (StabilizerDisintegration.lowS σ.symm x0)ᴴ +
      C2.simpleUp (StabilizerDisintegration.lowP σ.symm (fun q => v (StabilizerDisintegration.UC.iota σ q)))ᴴ := by
    rw [StabilizerDisintegration.UC.upper_fSp]
    exact simpleUp_mul (_root_.Formalism.FourierDecayAlt.P.C2x2.lt_conjT (StabilizerDisintegration.UC.lowS_mem σ.symm x0).1)
      (_root_.Formalism.FourierDecayAlt.P.C2x2.lt_conjT (StabilizerDisintegration.UC.lowerUnipotent_mem σ.symm _).1)
  have hs2 : C2.simpleUp (G.upper (StabilizerDisintegration.utc ((Amat σ d x0)⁻¹ * G.upper u))) = C2.simpleUp (Amat σ d x0)⁻¹ + C2.simpleUp (G.upper u) := by
    rw [hV']
    exact simpleUp_mul hAmi hup
  have hMu : IsUnit (C2.monoP σ.symm d).det := hMat_monoP σ d ▸ hZu
  have hinv : (U.hMat σ d)⁻¹ * ((StabilizerDisintegration.lowS σ.symm x0)ᴴᴴ)⁻¹ * U.hMat σ d = (Amat σ d x0)⁻¹ := by
    rw [Matrix.conjTranspose_conjTranspose, hMat_monoP]
    show _ = ((C2.monoP σ.symm d)⁻¹ * StabilizerDisintegration.lowS σ.symm x0 * C2.monoP σ.symm d)⁻¹
    rw [Matrix.mul_inv_rev, Matrix.mul_inv_rev, Matrix.nonsing_inv_nonsing_inv _ hMu]
    simp only [Matrix.mul_assoc]
  have hrelU : C2.psiC cStd (C2.simpleUp (StabilizerDisintegration.lowS σ.symm x0)ᴴ) =
      C2.psiC cStd (C2.simpleUp (Amat σ d x0)⁻¹) := by
    have hQ : (StabilizerDisintegration.lowS σ.symm x0)ᴴ ∈ C2.UTset r := _root_.Formalism.FourierDecayAlt.P.C2x2.lt_conjT (StabilizerDisintegration.UC.lowS_mem σ.symm x0).1
    have hQ' : (U.hMat σ d)⁻¹ * ((StabilizerDisintegration.lowS σ.symm x0)ᴴᴴ)⁻¹ * U.hMat σ d ∈ C2.UTset r := by
      rw [hinv]
      exact hAmi
    rw [relevance_U S (U.hMat σ d) hZu γ0 hγ0u hrel _ hQ hQ', hinv]
  have hw : U.wP σ * U.lowW σ v * (U.wP σ)⁻¹ = StabilizerDisintegration.lowP σ.symm (fun q => v (StabilizerDisintegration.UC.iota σ q)) := by
    have e := StabilizerDisintegration.UC.conj_lowW σ (fun q => v (StabilizerDisintegration.UC.iota σ q))
    simp only [Equiv.apply_symm_apply] at e
    exact e
  have hright : G.psi U.betaU (U.subS (U.wP σ * U.lowW σ v * (U.wP σ)⁻¹) + U.supS (G.upper u)) =
      C2.psiC cStd (C2.simpleUp (StabilizerDisintegration.lowP σ.symm (fun q => v (StabilizerDisintegration.UC.iota σ q)))ᴴ) * star (C2.psiC cStd (C2.simpleUp (G.upper u))) := by
    rw [StabilizerDisintegration.UC.psi_conj, map_add (f := _), psiC_add, hw, ← StabilizerDisintegration.UC.subS_eq, ← StabilizerDisintegration.UC.psi_conj,
      StabilizerDisintegration.UC.psi_star, StabilizerDisintegration.UC.supS_eq]
  have hstar := psiC_star_mul cStd (C2.simpleUp (Amat σ d x0)⁻¹)
  have hxi : B.xiTau S (1, 1) ((h, psiR k r (rnAct (midB r 0 (Matrix.of h)) y, StabilizerDisintegration.UC.fSp σ.symm (x0, (fun q => v (StabilizerDisintegration.UC.iota σ q))))), (h', psiR k r (rnAct (midB r 0 (Matrix.of h')) y', StabilizerDisintegration.utc ((Amat σ d x0)⁻¹ * G.upper u)))) = U.psiStar k 0 σ S.z S.z' ((y, y'), ((a, b), (v, u))) := by
    rw [xiTau_one, psiStar_zero]
    simp only [psiR, Equiv.apply_symm_apply]
    rw [Formalism.FourierDecayAlt.P.PBG.psi_mul_nset S.z S.z_mem cStd (Formalism.FourierDecayAlt.P.BigCellDiagonalMap.leviElement_nset _ (hUU _))
        (Formalism.FourierDecayAlt.P.Ux3.rn_nset _),
      Formalism.FourierDecayAlt.P.PBG.psi_mul_nset S.z' S.z'_mem cStd (Formalism.FourierDecayAlt.P.BigCellDiagonalMap.leviElement_nset _ (hUU _))
        (Formalism.FourierDecayAlt.P.Ux3.rn_nset _),
      psi_muP S.z S.z_mem, psi_muP S.z' S.z'_mem, hr1, hr2, hs1, hs2, psiC_add, psiC_add, hrelU, hright,
      star_mul', star_mul']
    linear_combination (C2.psiC cStd (C2.simpleUp (StabilizerDisintegration.lowP σ.symm (fun q => v (StabilizerDisintegration.UC.iota σ q)))ᴴ) *
      psi k r S.z cStd (U.Rn k r 0 y) * star (C2.psiC cStd (C2.simpleUp (G.upper u))) *
      star (psi k r S.z' cStd (U.Rn k r 0 y'))) * hstar
  have hphi : phiC σ (midB r 0 (Matrix.of h)) (midB r 0 (Matrix.of h')) (Amat σ d) (x0, ((y, y'), ((a, b), (v, u)))) =
      ((rnAct (midB r 0 (Matrix.of h)) y, StabilizerDisintegration.UC.fSp σ.symm (x0, (fun q => v (StabilizerDisintegration.UC.iota σ q)))), (rnAct (midB r 0 (Matrix.of h')) y', StabilizerDisintegration.utc ((Amat σ d x0)⁻¹ * G.upper u))) := rfl
  rw [hphi]
  dsimp only
  rw [show TN k r ((h, (rnAct (midB r 0 (Matrix.of h)) y, StabilizerDisintegration.UC.fSp σ.symm (x0, (fun q => v (StabilizerDisintegration.UC.iota σ q))))), (h', (rnAct (midB r 0 (Matrix.of h')) y', StabilizerDisintegration.utc ((Amat σ d x0)⁻¹ * G.upper u)))) = ((h, psiR k r (rnAct (midB r 0 (Matrix.of h)) y, StabilizerDisintegration.UC.fSp σ.symm (x0, (fun q => v (StabilizerDisintegration.UC.iota σ q))))), (h', psiR k r (rnAct (midB r 0 (Matrix.of h')) y', StabilizerDisintegration.utc ((Amat σ d x0)⁻¹ * G.upper u)))) from rfl,
    D.orbIntegrand, B.rho]
  dsimp only
  rw [hθ, hxi, hsgs, ContinuousLinearMap.smul_comp, ContinuousLinearMap.comp_smul]

end pwmain

end Formalism.FourierDecayAlt.P.PBM
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PsiCStarMul =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ChiLIntegrable =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ChiLIntegrable", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PsiCStarMul\nimport Aesop.Main\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BlkUUMapMuPRn\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceContOn\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.U

noncomputable section

namespace Formalism.FourierDecayAlt.P.PBM

section inst

variable {k r : ℕ} (σ : Equiv.Perm (Fin r))

instance borelRC : BorelSpace (U.RC k r 0) := Prod.borelSpace

instance borelXiH : BorelSpace (U.XiH r 0 σ) := by
  have : BorelSpace ((U.LW σ → ℂ) × (G.UT r → ℂ)) := Prod.borelSpace
  have : BorelSpace ((Fin 0 → Fin r → ℂ) × (Fin r → Fin 0 → ℂ)) := Prod.borelSpace
  exact Prod.borelSpace

end inst

section cont

variable {k r : ℕ}

theorem lowS_cont (w : Equiv.Perm (Fin r)) : Continuous (StabilizerDisintegration.lowS w) := by
  unfold StabilizerDisintegration.lowS C2.lowOf
  refine continuous_const.add ?_
  refine continuous_pi fun a => continuous_pi fun b => ?_
  simp only [Matrix.of_apply]
  refine continuous_finsetSum _ fun q _ => ?_
  split_ifs
  · exact continuous_apply q
  · exact continuous_const

theorem Amat_cont (σ : Equiv.Perm (Fin r)) (d : Fin r → ℂ) : Continuous (Amat σ d) := by
  unfold Amat
  exact (continuous_const.matrix_mul (lowS_cont σ.symm)).matrix_mul continuous_const

theorem Amat_inv_cont (σ : Equiv.Perm (Fin r)) (d : Fin r → ℂ) (hd : ∀ a, d a ≠ 0) :
    Continuous fun x => (Amat σ d x)⁻¹ := by
  have e : (fun x => (Amat σ d x)⁻¹) = fun x => (Amat σ d x).adjugate := by
    funext x; exact Dx2.SL.inv_adj _ (StabilizerDisintegration.UC.det_UT (conjS_UT hd x))
  rw [e]; exact (Amat_cont σ d).matrix_adjugate

theorem norm_psi (z : Fin (2 * r + k + 1) → ℂ) (c : ℂ) (g : B.Mat k r) : ‖psi k r z c g‖ = 1 := by
  unfold psi; rw [Complex.norm_exp]; simp

theorem norm_psiStar (σ : Equiv.Perm (Fin r)) (z z' : Fin (2 * (r + 0 + 0) + k + 1) → ℂ) (ξ : U.Xi k r 0 0 σ) :
    ‖U.psiStar k 0 σ z z' ξ‖ = 1 := by
  rw [psiStar_zero, norm_mul, norm_mul, norm_psi, norm_star, norm_psi, _root_.Formalism.FourierDecayAlt.P.StationaryPhaseModel.F_norm_psi]; norm_num

theorem psi_cont (z : Fin (2 * r + k + 1) → ℂ) (c : ℂ) : Continuous fun g : B.Mat k r => psi k r z c g := by
  unfold psi ell
  refine Complex.continuous_exp.comp (continuous_const.mul (Complex.continuous_ofReal.comp
    (Complex.continuous_re.comp (continuous_const.mul ?_))))
  refine continuous_finsetSum _ fun a _ => ?_
  split_ifs
  · exact (continuous_apply _).comp (continuous_apply _)
  · fun_prop

theorem psiStar_cont (σ : Equiv.Perm (Fin r)) (z z' : Fin (2 * (r + 0 + 0) + k + 1) → ℂ) :
    Continuous (U.psiStar k 0 σ z z') := by
  have e : U.psiStar k 0 σ z z' = fun ξ : U.Xi k r 0 0 σ => psi k r z cStd (U.Rn k r 0 ξ.1.1) *
      star (psi k r z' cStd (U.Rn k r 0 ξ.1.2)) *
      G.psi U.betaU (U.subS (U.wP σ * U.lowW σ ξ.2.2.1 * (U.wP σ)⁻¹) + U.supS (G.upper ξ.2.2.2)) := by
    funext ξ; exact psiStar_zero σ z z' ξ
  rw [e]
  refine ((((psi_cont z cStd).comp ((Dx2.SplitF.rn_cont r 0).comp (continuous_fst.comp continuous_fst))).mul
    (continuous_star.comp ((psi_cont z' cStd).comp ((Dx2.SplitF.rn_cont r 0).comp
      (continuous_snd.comp continuous_fst))))).mul ?_)
  unfold G.psi
  refine Complex.continuous_exp.comp (continuous_const.mul (Complex.continuous_ofReal.comp
    (Complex.continuous_re.comp (continuous_const.mul (Continuous.add ?_ ?_)))))
  · unfold U.subS
    refine continuous_finsetSum _ fun a _ => ?_
    split_ifs
    · exact ((((continuous_const.matrix_mul ((Dx2.SL.cont_lowW σ).comp
        (continuous_fst.comp (continuous_snd.comp continuous_snd)))).matrix_mul continuous_const)).matrix_elem _ _)
    · exact continuous_const
  · unfold U.supS
    refine continuous_finsetSum _ fun a _ => ?_
    split_ifs
    · exact ((StabilizerDisintegration.UC.cont_upper.comp (continuous_snd.comp (continuous_snd.comp continuous_snd))).matrix_elem _ _)
    · exact continuous_const

def gaX (σ : Equiv.Perm (Fin r)) (d : Fin r → ℂ) (γ : B.Mat k 0) (ξ : U.Xi k r 0 0 σ) : B.Mat k (r + 0 + 0) :=
  U.gaXi k 0 σ d ξ (fun a => a.elim0) γ

theorem gaX_cont (σ : Equiv.Perm (Fin r)) (d : Fin r → ℂ) (hd : ∀ i, d i ≠ 0) (γ : B.Mat k 0) :
    Continuous (gaX σ d γ) := by
  have h := (gaXi_cont (k := k) σ d hd).comp (Continuous.prodMk_left (X := U.Xi k r 0 0 σ) γ)
  exact h

theorem FgaX_cont {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] (σ : Equiv.Perm (Fin r)) (d : Fin r → ℂ)
    (hd : ∀ i, d i ≠ 0) (F : B.Mat k r → E) (hFc : ContinuousOn F (B.GV k r)) (γ : B.Mat k 0) (hγ : γ ∈ B.GV k 0) :
    Continuous fun ξ : U.Xi k r 0 0 σ => F (gaX σ d γ ξ) := by
  have hm : ∀ ξ : U.Xi k r 0 0 σ, gaX σ d γ ξ ∈ B.GV k (r + 0 + 0) := fun ξ => gaXi_mem_GV σ d hd ξ γ hγ
  have h := ContinuousOn.comp_continuous (f := gaX σ d γ) (s := B.GV k (r + 0 + 0)) hFc (gaX_cont σ d hd γ) hm
  exact h

instance muXi_sfinite (σ : Equiv.Perm (Fin r)) : SFinite (U.muXi k r 0 0 σ) := by
  unfold U.muXi; infer_instance

end cont

section inner

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]

def conjL (S : B.RealPlaceData k r Wp Wq) (h h' : Mt k r) : (Wq →L[ℂ] Wp) →L[ℂ] (Wq →L[ℂ] Wp) :=
  (ContinuousLinearMap.compL ℂ Wq Wp Wp (S.π (Matrix.of h))).comp
    ((ContinuousLinearMap.compL ℂ Wq Wq Wp).flip (S.π' (Matrix.of h')⁻¹))

theorem conjL_apply (S : B.RealPlaceData k r Wp Wq) (h h' : Mt k r) (X : Wq →L[ℂ] Wp) :
    conjL S h h' X = (S.π (Matrix.of h)).comp (X.comp (S.π' (Matrix.of h')⁻¹)) := rfl

theorem norm_conjL_le (S : B.RealPlaceData k r Wp Wq) (h h' : Mt k r) (hh : Matrix.of h ∈ UWset k r S.z)
    (hh' : Matrix.of h' ∈ UWset k r S.z') (X : Wq →L[ℂ] Wp) : ‖conjL S h h' X‖ ≤ ‖X‖ := by
  rw [conjL_apply]
  have h1 : ‖S.π (Matrix.of h)‖ ≤ 1 :=
    ContinuousLinearMap.opNorm_le_bound _ zero_le_one fun v => by rw [S.π_unitary _ hh v, one_mul]
  have hi : (Matrix.of h')⁻¹ ∈ UWset k r S.z' := WeylGroupFacts.uw_inv hh'
  have h2 : ‖S.π' (Matrix.of h')⁻¹‖ ≤ 1 :=
    ContinuousLinearMap.opNorm_le_bound _ zero_le_one fun v => by rw [S.π'_unitary _ hi v, one_mul]
  calc ‖(S.π (Matrix.of h)).comp (X.comp (S.π' (Matrix.of h')⁻¹))‖
      ≤ ‖S.π (Matrix.of h)‖ * (‖X‖ * ‖S.π' (Matrix.of h')⁻¹‖) :=
        (ContinuousLinearMap.opNorm_comp_le _ _).trans (mul_le_mul_of_nonneg_left
          (ContinuousLinearMap.opNorm_comp_le _ _) (norm_nonneg _))
    _ ≤ 1 * (‖X‖ * 1) := by gcongr
    _ = ‖X‖ := by ring

theorem chiL_integrable (w0 : Equiv.Perm (Fin r)) : Integrable (chiL w0) := by
  unfold chiL
  refine (integrableOn_const (C := (1 : ℝ)) ?_).integrable_indicator (MeasurableSet.univ_pi fun _ => boxC_meas)
  rw [volume_pi, Measure.pi_pi]
  simp [boxC_vol]



theorem inner_int (S : B.RealPlaceData k r Wp Wq) (z0 z0' : Fin (2 * 0 + k + 1) → ℂ)
    (hz : S.z = liftVec k r 0 z0) (hz' : S.z' = liftVec k r 0 z0')
    (σ : Equiv.Perm (Fin r)) (d : Fin r → ℂ) (hd : ∀ a, d a ≠ 0) (γ0 : B.Mat k 0) (hγ0 : γ0 ∈ B.GV k 0)
    (hrel : C6.IsRelevant S (U.mMap k r 0 (U.hMat σ d) γ0)) (F : B.Mat k r → (Wq →L[ℂ] Wp))
    (hFc : ContinuousOn F (B.GV k r)) (M : ℝ) (Bs : Set (U.Xi k r 0 0 σ)) (hBs : MeasurableSet Bs)
    (hBsf : U.muXi k r 0 0 σ Bs < ⊤)
    (hdom : ∀ (ξ : U.Xi k r 0 0 σ) (γ : B.Mat k 0), γ ∈ B.GV k 0 →
      ‖F (U.gaXi k 0 σ d ξ (fun a => a.elim0) γ)‖ ≤ Bs.indicator (fun _ => M) ξ)
    (h h' : Mt k r) (hh : Matrix.of h ∈ UWset k r S.z) (hh' : Matrix.of h' ∈ UWset k r S.z') :
    Integrable (fun q : (U.RC k r 0 × (G.UT r → ℂ)) × (U.RC k r 0 × (G.UT r → ℂ)) =>
        theta0 S.z σ.symm (TN k r ((h, q.1), (h', q.2))) •
          D.orbIntegrand S (U.mMap k r 0 (U.hMat σ d) γ0) F (TN k r ((h, q.1), (h', q.2))))
        ((QN k r).prod (QN k r)) ∧
      ∫ q, theta0 S.z σ.symm (TN k r ((h, q.1), (h', q.2))) •
          D.orbIntegrand S (U.mMap k r 0 (U.hMat σ d) γ0) F (TN k r ((h, q.1), (h', q.2)))
        ∂((QN k r).prod (QN k r)) =
        conjL S h h' (U.PhiFun (s := 0) k 0 σ d S.z S.z' F (fun a => a.elim0)
          ((midB r 0 (Matrix.of h))⁻¹ * γ0 * midB r 0 (Matrix.of h'))) ∧
      ∫ q, ‖theta0 S.z σ.symm (TN k r ((h, q.1), (h', q.2))) •
          D.orbIntegrand S (U.mMap k r 0 (U.hMat σ d) γ0) F (TN k r ((h, q.1), (h', q.2)))‖
        ∂((QN k r).prod (QN k r)) ≤ M * (U.muXi k r 0 0 σ Bs).toReal := by
  have : CompleteSpace Wp := FiniteDimensional.complete ℂ Wp
  set y1 := midB r 0 (Matrix.of h) with hy1
  set y1' := midB r 0 (Matrix.of h') with hy1'
  have hhL : Matrix.of h ∈ UWset k (r + 0) (liftVec k r 0 z0) := by rw [← hz]; exact hh
  have hhL' : Matrix.of h' ∈ UWset k (r + 0) (liftVec k r 0 z0') := by rw [← hz']; exact hh'
  have hy1W : y1 ∈ UWset k 0 z0 := uw_mid r 0 z0 _ hhL
  have hy1W' : y1' ∈ UWset k 0 z0' := uw_mid r 0 z0' _ hhL'
  have uy1 : IsUnit y1.det := _root_.PI.StabPairsW.isUnit_det_of_mem_GV hy1W.1
  have uy1' : IsUnit y1'.det := _root_.PI.StabPairsW.isUnit_det_of_mem_GV hy1W'.1
  have hγ' : y1⁻¹ * γ0 * y1' ∈ B.GV k 0 := by
    have hG := Formalism.FourierDecayAlt.P.unitary_group_closed k 0
    exact hG.mul_mem _ (hG.mul_mem _ (hG.inv_mem _ hy1W.1) _ hγ0) _ hy1W'.1
  have hAUT : ∀ x, Amat σ d x ∈ C2.UTset r := conjS_UT hd
  have hAc : ∀ i j, Measurable fun x => Amat σ d x i j := fun i j => ((Amat_cont σ d).matrix_elem i j).measurable
  have hAi : ∀ i j, Measurable fun x => (Amat σ d x)⁻¹ i j :=
    fun i j => ((Amat_inv_cont σ d hd).matrix_elem i j).measurable
  have hmp := phiC_mp σ y1 y1' (Amat σ d) hAUT hAc hAi hy1W.1 hy1W'.1
  have hemb := phiC_emb σ y1 y1' (Amat σ d) hAUT hAc hAi uy1 uy1'
  set g : (U.RC k r 0 × (G.UT r → ℂ)) × (U.RC k r 0 × (G.UT r → ℂ)) → (Wq →L[ℂ] Wp) := fun q =>
    theta0 S.z σ.symm (TN k r ((h, q.1), (h', q.2))) •
      D.orbIntegrand S (U.mMap k r 0 (U.hMat σ d) γ0) F (TN k r ((h, q.1), (h', q.2))) with hg
  set φ : U.Xi k r 0 0 σ → (Wq →L[ℂ] Wp) := fun ξ =>
    U.psiStar k 0 σ S.z S.z' ξ • F (U.gaXi k 0 σ d ξ (fun a => a.elim0) (y1⁻¹ * γ0 * y1')) with hφ
  have hcomp : g ∘ phiC σ y1 y1' (Amat σ d) = fun p => chiL σ.symm p.1 • conjL S h h' (φ p.2) := by
    funext p
    rw [conjL_apply]
    exact integrand_pw S z0 z0' hz hz' σ d hd γ0 hγ0 hrel F h h' hh hh' p

  have hφc : Continuous φ := (psiStar_cont σ S.z S.z').smul (FgaX_cont σ d hd F hFc _ hγ')
  have hφb : ∀ ξ, ‖φ ξ‖ ≤ Bs.indicator (fun _ => M) ξ := by
    intro ξ
    rw [hφ, norm_smul, norm_psiStar, one_mul]
    exact hdom ξ _ hγ'
  have hφi : Integrable φ (U.muXi k r 0 0 σ) := by
    refine Integrable.mono' ((integrableOn_const (C := M) hBsf.ne).integrable_indicator hBs)
      hφc.aestronglyMeasurable (Filter.Eventually.of_forall hφb)
  have hGi : Integrable (fun ξ => conjL S h h' (φ ξ)) (U.muXi k r 0 0 σ) := (conjL S h h').integrable_comp hφi
  have hpi : Integrable (fun p : (C2.Lstidx σ.symm → ℂ) × U.Xi k r 0 0 σ => chiL σ.symm p.1 • conjL S h h' (φ p.2))
      ((volume : Measure (C2.Lstidx σ.symm → ℂ)).prod (U.muXi k r 0 0 σ)) :=
    (chiL_integrable σ.symm).smul_prod hGi
  refine ⟨?_, ?_, ?_⟩
  · rw [← hmp.integrable_comp_emb hemb, hcomp]; exact hpi
  · rw [← hmp.integral_comp hemb g]
    change ∫ p, (g ∘ phiC σ y1 y1' (Amat σ d)) p ∂_ = _
    rw [hcomp]
    dsimp only
    rw [integral_prod_smul (chiL σ.symm) (fun ξ => conjL S h h' (φ ξ)), chiL_int, one_smul,
      (conjL S h h').integral_comp_comm hφi]
    rfl
  · have e1 := hmp.integral_comp hemb (fun q => ‖g q‖)
    rw [← e1]
    have e2 : (fun p => ‖g (phiC σ y1 y1' (Amat σ d) p)‖) = fun p => chiL σ.symm p.1 * ‖conjL S h h' (φ p.2)‖ := by
      funext p
      have := congrFun hcomp p
      simp only [Function.comp_apply] at this
      rw [this, norm_smul, Real.norm_of_nonneg (chiL_nonneg _ _)]
    rw [e2, integral_prod_mul (chiL σ.symm) (fun ξ => ‖conjL S h h' (φ ξ)‖), chiL_int, one_mul]
    calc ∫ ξ, ‖conjL S h h' (φ ξ)‖ ∂(U.muXi k r 0 0 σ) ≤ ∫ ξ, Bs.indicator (fun _ => M) ξ ∂(U.muXi k r 0 0 σ) := by
          refine integral_mono_of_nonneg (Filter.Eventually.of_forall fun _ => norm_nonneg _)
            ((integrableOn_const (C := M) hBsf.ne).integrable_indicator hBs)
            (Filter.Eventually.of_forall fun ξ => (norm_conjL_le S h h' hh hh' _).trans (hφb ξ))
      _ = M * (U.muXi k r 0 0 σ Bs).toReal := by
          rw [integral_indicator hBs, setIntegral_const, smul_eq_mul, mul_comm, Measure.real]

end inner

end Formalism.FourierDecayAlt.P.PBM
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ChiLIntegrable =====
