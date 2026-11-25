module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.HAdaptRed
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsCongruentMod
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.InGMulInt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.AdqHRRatV
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.PsiVIteOne
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.FirstCoordsMulVec
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.SecondProjWeightVectorZero
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ExistsGlOfLeftInv
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.FrAIntReindex
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.MatRMulMatC
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.CharZeroAdicCompletion
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SplitLatticeBasisExists
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.SumKfMulZREqZero

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.AdaptInDet, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.DotPTPinv, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.HacFrame, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.AdaptedBasisEveryPlace

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.AdaptInDet =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.AdaptInDet", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.HAdaptRed\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsCongruentMod\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.SecondProjWeightVectorZero\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.ExistsGlOfLeftInv\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.FrAIntReindex\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.MatRMulMatC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.MassDataColumns

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge MassDataIdxStIm MassDataIdxRed MassDataIdxSpl
  MassDataIdxFrA MassDataIdxAdA MassDataIdxSteps Formalism.FourierDecayAlt.S3
open scoped Matrix TensorProduct

variable {D : D7}

section B

variable (X : HidaSetting D) (hb : AdBridgeIso X.B.I) (u : D.what₂.Word) (p : TypX X)
  (θ : TpX X p ≃ₐ[FpX X p] FpX X p × FpX X p) (P : GL (IdxD D) (FpX X p))

def vT : IdxD D → Fin X.B.I.n → TpX X p
  | Sum.inr (Sum.inl (Sum.inl i)) => adqM X hb u p *ᵥ PI.FinKW.vecV X.B.I p.1 (X.bw i)
  | Sum.inl a => ratV (F := X.B.I.F) (FpX X p) (vecAt (k := D.R.k) (frameOf X u) (Sum.inl a))
  | Sum.inr (Sum.inl (Sum.inr v)) => ratV (F := X.B.I.F) (FpX X p) (vecAt (k := D.R.k) (frameOf X u) (Sum.inr (Sum.inl (Sum.inr v))))
  | Sum.inr (Sum.inr c) => ratV (F := X.B.I.F) (FpX X p) (vecAt (k := D.R.k) (frameOf X u) (Sum.inr (Sum.inr c)))

def mT : Matrix (IdxD D) (IdxD D) (FpX X p) := fun j t => crd1 X p θ P (vT X hb u p t) j

theorem mC_eq :
    ((P⁻¹ : GL (IdxD D) (FpX X p)) : Matrix (IdxD D) (IdxD D) (FpX X p)) *
      ofCols (colv (cV X u p θ) (yV X hb u p θ)) = mT X hb u p θ P := by
  ext j t
  have e : (((P⁻¹ : GL (IdxD D) (FpX X p)) : Matrix (IdxD D) (IdxD D) (FpX X p)) *
      ofCols (colv (cV X u p θ) (yV X hb u p θ))) j t =
      (((P⁻¹ : GL (IdxD D) (FpX X p)) : Matrix (IdxD D) (IdxD D) (FpX X p)) *ᵥ
        colv (cV X u p θ) (yV X hb u p θ) t) j := by
    simp [Matrix.mul_apply, Matrix.mulVec, dotProduct, ofCols]
  rw [e]
  rcases t with a | ((i | v) | c) <;> rfl

theorem vT_cong (t : IdxD D) : vT X hb u p t - adqRef X hb u p t ∈ gLam X p := by
  rcases t with a | ((i | v) | c)
  · exact adq_e_cong X hb u p a
  · show adqM X hb u p *ᵥ PI.FinKW.vecV X.B.I p.1 (X.bw i) -
      adqM X hb u p *ᵥ PI.FinKW.vecV X.B.I p.1 (X.bw i) ∈ gLam X p
    rw [sub_self]
    exact zero_mem _
  · exact adq_z_cong X hb u p
  · exact adq_f_cong X hb u p (Fin.rev c)

theorem vT_cong1 (hL : LatBasis X p θ (reindex₂ X p P)) (t j : IdxD D) :
    InG X p (crd1 X p θ P (vT X hb u p t) j - crd1 X p θ P (adqRef X hb u p t) j) :=
  firstCoords_congruent_mod X p θ P hL _ _ (vT_cong X hb u p t) j

theorem vT_int (hL : LatBasis X p θ (reindex₂ X p P)) (t j : IdxD D) :
    crd1 X p θ P (vT X hb u p t) j ∈ OvA X p := by
  have h := (OvA X p).add_mem _ _ (adq_inG_int X p (vT_cong1 X hb u p θ P hL t j))
    (((latCrd_of X p θ P hL _).1 (adq_ref_lat X hb u p t)).1 j)
  rwa [sub_add_cancel] at h

theorem vT_RC (hθ : IsSplitEquiv X p θ) (hε : θ (epsP X p) = (1, 0)) (hL : LatBasis X p θ (reindex₂ X p P))
    (s t : IdxD D) : ∃ z : OvA X p, (adqR X hb u p θ P * mT X hb u p θ P) s t =
      (1 : Matrix (IdxD D) (IdxD D) (FpX X p)) s t + ((gOf p : ℕ) : FpX X p) * (z : FpX X p) := by
  have e1 : (adqR X hb u p θ P * mT X hb u p θ P) s t =
      sgnV X p s * (crd2 X p θ P (adqRefR X hb u p s) ⬝ᵥ crd1 X p θ P (vT X hb u p t)) := by
    simp only [Matrix.mul_apply, adqR, mT, dotProduct, Finset.mul_sum, mul_assoc]
  have hD := adq_dotG X p (a := crd2 X p θ P (adqRefR X hb u p s)) (a' := crd2 X p θ P (adqRefR X hb u p s))
    (b := crd1 X p θ P (vT X hb u p t)) (b' := crd1 X p θ P (adqRef X hb u p t))
    (fun j => ((latCrd_of X p θ P hL _).1 (adq_refR_lat X hb u p s)).2 j)
    (fun j => vT_int X hb u p θ P hL t j) (fun j => by rw [sub_self]; exact inG_zero)
    (fun j => vT_cong1 X hb u p θ P hL t j)
  rw [adq_pairM X hb u p θ P hθ] at hD
  obtain ⟨y, hy⟩ := inG_mul_int _ (sgnV_int X p s) hD
  obtain ⟨z, hz⟩ := rc_cong X p θ P hθ hε hL s t
  refine ⟨y + z, ?_⟩
  rw [e1]
  push_cast
  linear_combination hy + hz

theorem adaptIn_det (hθ : IsSplitEquiv X p θ) (hε : θ (epsP X p) = (1, 0)) (hL : LatBasis X p θ (reindex₂ X p P)) :
    IntO (p.1.adicCompletionIntegers X.B.I.F).toSubring
        (((P⁻¹ : GL (IdxD D) (FpX X p)) : Matrix (IdxD D) (IdxD D) (FpX X p)) *
          ofCols (colv (cV X u p θ) (yV X hb u p θ))) ∧
      ∃ uu : FpX X p, uu ∈ p.1.adicCompletionIntegers X.B.I.F ∧
        (((P⁻¹ : GL (IdxD D) (FpX X p)) : Matrix (IdxD D) (IdxD D) (FpX X p)) *
          ofCols (colv (cV X u p θ) (yV X hb u p θ))).det * uu = 1 := by
  rw [mC_eq X hb u p θ P]
  choose N hN using fun s t => vT_RC X hb u p θ P hθ hε hL s t
  have hgc : ((gA X p : OvA X p) : FpX X p) = ((gOf p : ℕ) : FpX X p) := by simp [gA]
  have hRC : adqR X hb u p θ P * mT X hb u p θ P =
      1 + ((gA X p : OvA X p) : FpX X p) • Matrix.of (fun s t => ((N s t : OvA X p) : FpX X p)) := by
    ext s t
    rw [hN s t, hgc]
    simp
  obtain ⟨c, hc⟩ := exists_gl_of_left_inv (OvA X p) (gA X p) (PIW.MassDataColumns.gOf_nonunit X p)
    (mT X hb u p θ P) (adqR X hb u p θ P) _
    (fun i t => vT_int X hb u p θ P hL t i)
    (fun s i => (OvA X p).mul_mem _ _ (sgnV_int X p s)
      (((latCrd_of X p θ P hL _).1 (adq_refR_lat X hb u p s)).2 i))
    (fun s t => (N s t).2) hRC
  refine ⟨fun i t => vT_int X hb u p θ P hL t i,
    ((((c⁻¹ : GL (IdxD D) (OvA X p)) : Matrix (IdxD D) (IdxD D) (OvA X p)).det : OvA X p) : FpX X p),
    (((c⁻¹ : GL (IdxD D) (OvA X p)) : Matrix (IdxD D) (IdxD D) (OvA X p)).det : OvA X p).2, ?_⟩
  have hdet : (mT X hb u p θ P).det = (((c : Matrix (IdxD D) (IdxD D) (OvA X p)).det : OvA X p) : FpX X p) := by
    rw [← hc]
    exact (RingHom.map_det (OvA X p).subtype (c : Matrix (IdxD D) (IdxD D) (OvA X p))).symm
  have hu : (c : Matrix (IdxD D) (IdxD D) (OvA X p)).det *
      ((c⁻¹ : GL (IdxD D) (OvA X p)) : Matrix (IdxD D) (IdxD D) (OvA X p)).det = 1 := by
    rw [← Matrix.det_mul, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.det_one]
  rw [hdet]
  have := congrArg (fun x : OvA X p => (x : FpX X p)) hu
  simpa using this

end B

end PIW.MassDataColumns
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.AdaptInDet =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.DotPTPinv =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.DotPTPinv", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.HAdaptRed\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.InGMulInt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.AdqHRRatV\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.FrAIntReindex\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsCongruentMod\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.PsiVIteOne\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.MassDataColumns

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.TypedSets MeasureTheory NumberField
  IsDedekindDomain Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge MassDataIdxStIm MassDataIdxRed MassDataIdxSpl
  MassDataIdxFrA MassDataIdxAdA MassDataIdxSteps Formalism.FourierDecayAlt.S3
open scoped Matrix TensorProduct

variable {D : D7}

section B

variable (X : HidaSetting D) (hb : AdBridgeIso X.B.I) (u : D.what₂.Word) (p : TypX X)
  (θ : TpX X p ≃ₐ[FpX X p] FpX X p × FpX X p) (P : GL (IdxD D) (FpX X p))

theorem yV_crd (i : Fin D.R.k) :
    ((P⁻¹ : GL (IdxD D) (FpX X p)) : Matrix (IdxD D) (IdxD D) (FpX X p)) *ᵥ yV X hb u p θ i =
      crd1 X p θ P (adqM X hb u p *ᵥ PI.FinKW.vecV X.B.I p.1 (X.bw i)) := rfl

theorem dot_PT_Pinv (a w : IdxD D → FpX X p) :
    ((P : Matrix (IdxD D) (IdxD D) (FpX X p))ᵀ *ᵥ a) ⬝ᵥ
      (((P⁻¹ : GL (IdxD D) (FpX X p)) : Matrix (IdxD D) (IdxD D) (FpX X p)) *ᵥ w) = a ⬝ᵥ w := by
  rw [Matrix.mulVec_transpose, Matrix.dotProduct_mulVec, Matrix.vecMul_vecMul, ← Units.val_mul, mul_inv_cancel,
    Units.val_one, Matrix.vecMul_one]

theorem aV_dot (s : IdxD D) (w : IdxD D → FpX X p) :
    aV X u p θ s ⬝ᵥ w = crd2 X p θ P (ratV (F := X.B.I.F) (FpX X p) (vecAt (frameOf X u) s)) ⬝ᵥ
      (((P⁻¹ : GL (IdxD D) (FpX X p)) : Matrix (IdxD D) (IdxD D) (FpX X p)) *ᵥ w) := by
  unfold crd2 aV
  exact (dot_PT_Pinv X p P _ _).symm

theorem ay_gen (hθ : IsSplitEquiv X p θ) (hL : LatBasis X p θ (reindex₂ X p P)) (i : Fin D.R.k)
    (V : Fin X.B.I.n → TpX X p) (v0 : Formalism.L2.SG.HidaSetting.VA X.B.I)
    (hw : adqM X hb u p *ᵥ PI.FinKW.vecV X.B.I p.1 v0 ∈
      latLoc (E := X.B.I.E) p.1 (X.B.I.L : Set (Fin X.B.I.n → X.B.I.E)))
    (hd : V - adqM X hb u p *ᵥ PI.FinKW.vecV X.B.I p.1 v0 ∈ gLam X p)
    (h0 : ∃ z : OvA X p, crd2 X p θ P (PI.FinKW.vecV X.B.I p.1 v0) ⬝ᵥ
      crd1 X p θ P (PI.FinKW.vecV X.B.I p.1 (X.bw i)) = ((gOf p : ℕ) : FpX X p) * (z : FpX X p)) :
    InG X p (crd2 X p θ P V ⬝ᵥ crd1 X p θ P (adqM X hb u p *ᵥ PI.FinKW.vecV X.B.I p.1 (X.bw i))) := by
  have hyi : ∀ j, crd1 X p θ P (adqM X hb u p *ᵥ PI.FinKW.vecV X.B.I p.1 (X.bw i)) j ∈ OvA X p :=
    fun j => ((latCrd_of X p θ P hL _).1 (adq_ref_lat X hb u p (wI i))).1 j
  have h1 := adq_dotG X p (a := crd2 X p θ P V)
    (a' := crd2 X p θ P (adqM X hb u p *ᵥ PI.FinKW.vecV X.B.I p.1 v0))
    (b := crd1 X p θ P (adqM X hb u p *ᵥ PI.FinKW.vecV X.B.I p.1 (X.bw i)))
    (b' := crd1 X p θ P (adqM X hb u p *ᵥ PI.FinKW.vecV X.B.I p.1 (X.bw i)))
    (fun j => ((latCrd_of X p θ P hL _).1 hw).2 j) hyi
    (secondCoords_congruent_mod X p θ P hL _ _ hd) (fun j => by rw [sub_self]; exact inG_zero)
  rw [adq_pairM X hb u p θ P hθ] at h1
  obtain ⟨z, hz⟩ := h0
  rw [hz] at h1
  have h3 := inG_add h1 (inG_g_mul (X := X) (p := p) z)
  rwa [sub_add_cancel] at h3

theorem ay_inG (hθ : IsSplitEquiv X p θ) (hL : LatBasis X p θ (reindex₂ X p P)) (s : IdxD D) (hs : ¬ IsW s)
    (i : Fin D.R.k) : InG X p (aV X u p θ s ⬝ᵥ yV X hb u p θ i) := by
  rw [aV_dot X u p θ P, yV_crd X hb u p θ P]
  rcases s with a | ((j | v) | c)
  · exact ay_gen X hb u p θ P hθ hL i _ (X.e0 a) (adq_ref_lat X hb u p (Sum.inl a)) (adq_e_cong X hb u p a)
      (fin_dir X p θ P hθ hL _ _ ((X.weightVectorsIntegral i).2.2 a).1)
  · exact absurd ⟨j, rfl⟩ hs
  · exact ay_gen X hb u p θ P hθ hL i _ X.z0 (adq_ref_lat X hb u p zI) (adq_z_cong X hb u p)
      (fin_dir X p θ P hθ hL _ _ (X.weightVectorsIntegral i).1)
  · exact ay_gen X hb u p θ P hθ hL i _ (X.f0 (Fin.rev c)) (adq_refR_lat X hb u p (Sum.inl (Fin.rev c)))
      (adq_f_cong X hb u p (Fin.rev c)) (fin_dir X p θ P hθ hL _ _ ((X.weightVectorsIntegral i).2.2 (Fin.rev c)).2.1)

theorem adaptIn_ay (hθ : IsSplitEquiv X p θ) (hL : LatBasis X p θ (reindex₂ X p P)) :
    ∃ o : IdxD D → Fin D.R.k → FpX X p,
      (∀ s i, ¬ IsW s → aV X u p θ s ⬝ᵥ yV X hb u p θ i = ((gOf p : ℕ) : FpX X p) * o s i) ∧
      (∀ s i, o s i ∈ p.1.adicCompletionIntegers X.B.I.F) := by
  have h : ∀ (s : IdxD D) (i : Fin D.R.k), ∃ y : OvA X p,
      ¬ IsW s → aV X u p θ s ⬝ᵥ yV X hb u p θ i = ((gOf p : ℕ) : FpX X p) * (y : FpX X p) := by
    intro s i
    by_cases hs : IsW s
    · exact ⟨0, fun h => absurd hs h⟩
    · obtain ⟨y, hy⟩ := ay_inG X hb u p θ P hθ hL s hs i
      exact ⟨y, fun _ => hy⟩
  choose o ho using h
  exact ⟨fun s i => (o s i : FpX X p), ho, fun s i => (o s i).2⟩

end B

end PIW.MassDataColumns
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.DotPTPinv =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.HacFrame =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.HacFrame", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.HAdaptRed\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.CharZeroAdicCompletion\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SecondCoordsCongruentMod\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SplitLatticeBasisExists\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.SumKfMulZREqZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.FirstCoordsMulVec\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.MassDataColumns

open Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge Formalism.L2.SG.TypedSets Formalism.L2.SG.Measures Formalism.L2.SG.Sub
  Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes NumberField IsDedekindDomain Formalism.FourierDecayAlt.S3 MassDataIdxSteps MassDataIdxStIm MassDataIdxSpl
open scoped Matrix TensorProduct

variable {D : D7}

section G

variable (X : HidaSetting D) (u : D.what₂.Word) (p : TypX X) (θ : TpX X p ≃ₐ[FpX X p] FpX X p × FpX X p)

theorem av_cv (hθ : IsSplitEquiv X p θ) (s t : Idx D.R.rS D.R.k) :
    aV X u p θ s ⬝ᵥ cV X u p θ t =
      (θ (inclR (FpX X p) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.hE X.B.I.cm.sig X.B.I.J (vecAt (frameOf X u) s) (vecAt (frameOf X u) t)))).1 := by
  have h := MassDataIdxSteps.adq_pairR (X := X) (p := p) (θ := θ) (Q := 1) hθ (vecAt (frameOf X u) s) (vecAt (frameOf X u) t)
  unfold aV cV
  simpa only [MassDataIdxSteps.crd1, MassDataIdxSteps.crd2, inv_one, Units.val_one, Matrix.transpose_one, Matrix.one_mulVec] using h

def lF : Idx D.R.rS D.R.k → FpX X p
  | Sum.inr (Sum.inl (Sum.inr _)) =>
      (θ (inclR (FpX X p) (algebraMap X.B.I.F X.B.I.E (-(((D.mem u).A.T : ℕ) : X.B.I.F))))).1
  | _ => 1

theorem hac_frame (hθ : IsSplitEquiv X p θ) (s t : Idx D.R.rS D.R.k) (hs : ¬ IsW s) (ht : ¬ IsW t) :
    aV X u p θ s ⬝ᵥ cV X u p θ t = if t = dlH s then lF X u p θ s else 0 := by
  obtain ⟨hee, hff, hef, hez, hfz, hzz, -⟩ := _root_.MassDataLevelSSteps.FrameW.frameOf_isStd X u
  have hsw := MassDataMassesW.NRatW.hE_swap X
  rw [av_cv X u p θ hθ s t]
  rcases s with a | (i | ⟨⟩) | c
  · rcases t with b | (j | ⟨⟩) | d
    · simp only [vecAt, dlH]
      rw [hee]
      simp
    · exact absurd ⟨j, rfl⟩ ht
    · simp only [vecAt, dlH]
      rw [hez]
      simp
    · simp only [vecAt, dlH, lF]
      rw [hef]
      by_cases h : a = Fin.rev d
      · subst h
        simp
      · have h' : d ≠ Fin.rev a := fun e => h (by rw [e, Fin.rev_rev])
        simp [h, h']
  · exact absurd ⟨i, rfl⟩ hs
  · rcases t with b | (j | ⟨⟩) | d
    · simp only [vecAt, dlH]
      rw [hsw, hez, star_zero]
      simp
    · exact absurd ⟨j, rfl⟩ ht
    · simp only [vecAt, dlH, lF]
      simp only [hzz, ↓reduceIte]
    · simp only [vecAt, dlH]
      rw [hsw, hfz, star_zero]
      simp
  · rcases t with b | (j | ⟨⟩) | d
    · simp only [vecAt, dlH, lF]
      rw [hsw, hef]
      by_cases h : b = Fin.rev c
      · subst h
        simp
      · simp [h]
    · exact absurd ⟨j, rfl⟩ ht
    · simp only [vecAt, dlH]
      rw [hfz]
      simp
    · simp only [vecAt, dlH]
      rw [hff]
      simp

theorem lF_unit (hb : AdBridgeIso X.B.I) (hθ : IsSplitEquiv X p θ) (s : Idx D.R.rS D.R.k) (hs : ¬ IsW s) :
    lF X u p θ s ≠ 0 ∧ (lF X u p θ s)⁻¹ ∈ p.1.adicCompletionIntegers X.B.I.F := by
  rcases s with a | (i | ⟨⟩) | c
  · simp [lF]
  · exact absurd ⟨i, rfl⟩ hs
  · obtain ⟨Q, hQ⟩ := MassDataIdxSteps.exists_GL_latBasis_of_isSplitEquiv X p θ hθ
    have h := MassDataIdxSteps.adq_tau_inv X hb u p θ Q hθ hQ
    have htau : adqTau X u p θ Q = lF X u p θ (Sum.inr (Sum.inl (Sum.inr ()))) := by
      unfold adqTau
      rw [adq_pairR X p θ Q hθ]
      exact congrArg (fun x => (θ (inclR (FpX X p) x)).1) (_root_.MassDataLevelSSteps.FrameW.frameOf_isStd X u).2.2.2.2.2.1
    rw [htau] at h
    exact ⟨h.2, h.1⟩
  · simp [lF]

end G

end PIW.MassDataColumns
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.HacFrame =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.AdaptedBasisEveryPlace =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.AdaptedBasisEveryPlace", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.HAdaptRed\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.AdaptInDet\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.DotPTPinv\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.HacFrame\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeIndices.SplitLatticeBasisExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PIW.MassDataColumns

open Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge Formalism.L2.SG.TypedSets Formalism.L2.SG.Measures Formalism.L2.SG.Sub
  Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes NumberField IsDedekindDomain Formalism.FourierDecayAlt.S3 MassDataIdxSteps MassDataIdxStIm MassDataIdxSpl
open scoped Matrix TensorProduct

variable {D : D7}

theorem adaptIn_holds (X : HidaSetting D) (hb : AdBridgeIso X.B.I) (u : D.what₂.Word) (p : TypX X) :
    AdaptIn X hb u p := by
  obtain ⟨θ, hθ, hε⟩ := exists_split_eps X p
  obtain ⟨P, hL⟩ := exists_GL_latBasis_of_isSplitEquiv X p θ hθ
  obtain ⟨o, hay, ho⟩ := adaptIn_ay X hb u p θ P hθ hL
  obtain ⟨hC, uu, huu, hdet⟩ := adaptIn_det X hb u p θ P hθ hε hL
  exact ⟨θ, hθ, P, hL, lF X u p θ, o, uu, fun s t hs ht => hac_frame X u p θ hθ s t hs ht, hay,
    fun s hs => (lF_unit X u p θ hb hθ s hs).1, fun s hs => (lF_unit X u p θ hb hθ s hs).2, ho, hC, huu, hdet⟩

theorem adapted_basis_every_place : AdaptInAll :=
  fun X hb _ u _ _ p => adaptIn_holds X hb u p

end PIW.MassDataColumns
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeColumns.AdaptedBasisEveryPlace =====
