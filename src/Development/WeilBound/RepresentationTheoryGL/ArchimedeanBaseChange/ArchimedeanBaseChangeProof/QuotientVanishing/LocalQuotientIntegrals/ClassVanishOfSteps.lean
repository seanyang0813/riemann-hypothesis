module

public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.QuotVanish
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteTwConjOfIsTest
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.T2SpaceAdelicGLCmField
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MeasurableSdot
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedCentralizerLocalUnitaryCommOfSeparable
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableNilrad
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousConjNilSymm
public import Mathlib.Algebra.Group.Subgroup.Basic
public import Mathlib.Topology.Algebra.ContinuousMonoidHom
public import Mathlib.Topology.Constructions
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.NonEllFlag
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.IsClosedEmbeddingSlice
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DetOneAddOfSq
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.CategoryTheory.Countable
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.CVEmbInfSelf, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.EnormOfRealToRealLe, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.ExistsMeasure, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.LintegralIndicatorNeTop, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PAdTop, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PClassVanish, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PCutInt, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PFamAt, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PLocTor, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.POneVanish, Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ProdE, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PQProd, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PTwoVanish, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PfQMap, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.QuotIntegralMulRight, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.ClassVanishOfSteps

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.CVEmbInfSelf =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.CVEmbInfSelf", "h": "module\n\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DetOneAddOfSq\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Matrix.PosDef\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.QuotVanish\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix MeasureTheory
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.Tf.Loc
open scoped ComplexOrder

namespace PositivityTheory.Rg.BcB.CV.LocalPlacePositivity

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ}

theorem cV_alg (v : InfinitePlace E) (x : E) : cV v (algebraMap E (Ad E) x) = v.embedding x :=
  pInf_algebraMap x v

open Classical in
theorem cV_embInf (v w : InfinitePlace E) (y : GL (Fin n) ℂ) :
    GeneralLinearGroup.map (cV w) (embInf n v y) = if w = v then y else 1 := by
  ext i j
  change (GeneralLinearGroup.map (pInf E) (embInf n v y)) i j w = _
  unfold embInf
  rw [MonoidHom.comp_apply, pInf_infGL]
  change (MonoidHom.mulSingle (fun _ : InfinitePlace E => GL (Fin n) ℂ) v y w).val i j = _
  by_cases h : w = v
  · subst h
    simp
  · simp [h]

theorem cV_embInf_self (v : InfinitePlace E) (y : GL (Fin n) ℂ) :
    GeneralLinearGroup.map (cV v) (embInf n v y) = y := by
  classical
  rw [cV_embInf, if_pos rfl]

theorem pFin_embInf (v : InfinitePlace E) (y : GL (Fin n) ℂ) :
    GeneralLinearGroup.map (pFin E) (embInf n v y) = 1 := by
  unfold embInf
  exact pFin_infGL _

theorem cW_embInf (w : HeightOneSpectrum (𝓞 E)) (v : InfinitePlace E) (y : GL (Fin n) ℂ) :
    GeneralLinearGroup.map (cW w) (embInf n v y) = 1 := by
  have e : GeneralLinearGroup.map (cW w) (embInf n v y) =
      GeneralLinearGroup.map (pLoc E w) (GeneralLinearGroup.map (pFin E) (embInf n v y)) := rfl
  rw [e, pFin_embInf, map_one]

theorem cV_ratGL (v : InfinitePlace E) (d : GL (Fin n) E) :
    GeneralLinearGroup.map (cV v) (ratGL E n d) = locGL v d := by
  ext i j
  exact pInf_algebraMap (d i j) v

theorem map_inv_val {R : Type} [CommRing R] (f : Ad E →+* R) (x : GA E n) :
    ((x⁻¹ : GA E n).val).map f = ((GeneralLinearGroup.map f x)⁻¹ : GL (Fin n) R).val := by
  rw [← map_inv]; rfl

theorem frame_map_eq {R : Type} [CommRing R] (f : Ad E →+* R) (x y : GA E n)
    (h : GeneralLinearGroup.map f x = GeneralLinearGroup.map f y) {r : ℕ} (M : Matrix (Fin n) (Fin r) E) :
    (frame x M).map f = (frame y M).map f := by
  rw [frame, frame, Matrix.map_mul, Matrix.map_mul, map_inv_val, map_inv_val, h]

theorem frame_map (v : InfinitePlace E) (x : GA E n) {r : ℕ} (M : Matrix (Fin n) (Fin r) E) :
    (frame x M).map (cV v) = ((GeneralLinearGroup.map (cV v) x)⁻¹ : GL (Fin n) ℂ).val * M.map v.embedding := by
  have h : (M.map (algebraMap E (Ad E))).map (cV v) = M.map v.embedding := by
    ext i j
    exact cV_alg v (M i j)
  rw [frame, Matrix.map_mul, h, map_inv_val]

theorem lognInf_eq (v : InfinitePlace E) (x : GA E n) {r : ℕ} (M : Matrix (Fin n) (Fin r) E) :
    lognInf v (frame x M) = ploc (M.map v.embedding) (GeneralLinearGroup.map (cV v) x) := by
  rw [lognInf, frame_map, ploc]

theorem exists_left (v : InfinitePlace E) (W : Submodule E (Fin n → E)) :
    ∃ L : Matrix (Fin (Module.finrank E W)) (Fin n) ℂ, L * (basisMat W).map v.embedding = 1 := by
  apply _root_.GlobalTheory.CompanionTheory.LocFlagPf.exists_left

theorem gram_re_pos {r : ℕ} (B : Matrix (Fin n) (Fin r) ℂ) (L : Matrix (Fin r) (Fin n) ℂ) (hL : L * B = 1) :
    0 < (Bᴴ * B).det.re := by
  have hps : (Bᴴ * B).PosSemidef := posSemidef_conjTranspose_mul_self B
  have h0 : (Bᴴ * B).det ≠ 0 := by
    intro h
    obtain ⟨w, hw, hw0⟩ := Matrix.exists_mulVec_eq_zero_iff.2 h
    apply hw
    have h1 : B *ᵥ w = 0 := (conjTranspose_mul_self_mulVec_eq_zero B w).1 hw0
    calc w = (L * B) *ᵥ w := by rw [hL, Matrix.one_mulVec]
      _ = 0 := by rw [← Matrix.mulVec_mulVec, h1, Matrix.mulVec_zero]
  have hpos : 0 < (Bᴴ * B).det := lt_of_le_of_ne hps.det_nonneg (Ne.symm h0)
  exact (Complex.pos_iff.1 hpos).1

theorem ploc_re_pos (v : InfinitePlace E) (W : Submodule E (Fin n → E)) (g : GL (Fin n) ℂ) :
    0 < ((((g⁻¹ : GL (Fin n) ℂ).val * (basisMat W).map v.embedding)ᴴ *
      ((g⁻¹ : GL (Fin n) ℂ).val * (basisMat W).map v.embedding)).det).re := by
  obtain ⟨L, hL⟩ := exists_left v W
  refine gram_re_pos _ (L * g.val) ?_
  rw [Matrix.mul_assoc, ← Matrix.mul_assoc g.val, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.one_mul, hL]

theorem ploc_cont (v : InfinitePlace E) (W : Submodule E (Fin n → E)) :
    Continuous (ploc ((basisMat W).map v.embedding)) := by
  have hB : Continuous fun g : GL (Fin n) ℂ => (g⁻¹ : GL (Fin n) ℂ).val * (basisMat W).map v.embedding :=
    Units.continuous_coe_inv.matrix_mul continuous_const
  have hd : Continuous fun g : GL (Fin n) ℂ => ((((g⁻¹ : GL (Fin n) ℂ).val * (basisMat W).map v.embedding)ᴴ *
      ((g⁻¹ : GL (Fin n) ℂ).val * (basisMat W).map v.embedding)).det).re :=
    Complex.continuous_re.comp (hB.matrix_conjTranspose.matrix_mul hB).matrix_det
  exact (hd.log fun g => (ploc_re_pos v W g).ne').congr fun g => rfl

theorem ploc_mul_k {r : ℕ} (M : Matrix (Fin n) (Fin r) ℂ) (x k : GL (Fin n) ℂ) (hk : thC n k = k) :
    ploc M (x * k) = ploc M x := by
  have hk' : ((k⁻¹ : GL (Fin n) ℂ).val)ᴴ = k.val := by
    have h := congrArg Units.val hk
    rw [thetaR_val] at h
    refine Eq.trans ?_ h
    ext i j
    simp [Matrix.conjTranspose_apply]
  have e : ∀ B : Matrix (Fin n) (Fin r) ℂ,
      ((k⁻¹ : GL (Fin n) ℂ).val * B)ᴴ * ((k⁻¹ : GL (Fin n) ℂ).val * B) = Bᴴ * B := fun B => by
    rw [Matrix.conjTranspose_mul, hk', Matrix.mul_assoc, ← Matrix.mul_assoc k.val, ← Units.val_mul,
      mul_inv_cancel, Units.val_one, Matrix.one_mul]
  unfold ploc
  rw [_root_.mul_inv_rev, Units.val_mul, Matrix.mul_assoc, e]

theorem ploc_empty {r : ℕ} (M : Matrix (Fin n) (Fin r) ℂ) (hr : r = 0) (g : GL (Fin n) ℂ) : ploc M g = 0 := by
  subst hr
  simp [ploc]

theorem degM_empty {r : ℕ} (x : GA E n) (M : Matrix (Fin n) (Fin r) E) (hr : r = 0) : degM x M = 0 := by
  subst hr
  exact degM_zero x M

theorem deg_embInf (v : InfinitePlace E) (W : Submodule E (Fin n → E)) (g : GL (Fin n) ℂ) (x : GA E n) :
    deg (embInf n v g * x) W + ploc ((basisMat W).map v.embedding) (g * GeneralLinearGroup.map (cV v) x) =
      deg x W + ploc ((basisMat W).map v.embedding) (GeneralLinearGroup.map (cV v) x) := by
  classical
  have hfin : ∀ w, lognFin w (frame (embInf n v g * x) (basisMat W)) = lognFin w (frame x (basisMat W)) :=
    fun w => by
      unfold lognFin
      rw [frame_map_eq (cW w) _ x (by rw [map_mul, cW_embInf, one_mul])]
  have hinf : ∀ w, lognInf w (frame (embInf n v g * x) (basisMat W)) = lognInf w (frame x (basisMat W)) +
      if w = v then ploc ((basisMat W).map v.embedding) (g * GeneralLinearGroup.map (cV v) x) -
        ploc ((basisMat W).map v.embedding) (GeneralLinearGroup.map (cV v) x) else 0 := fun w => by
    by_cases h : w = v
    · subst h
      rw [if_pos rfl, lognInf_eq, lognInf_eq, map_mul, cV_embInf_self]
      ring
    · rw [if_neg h, add_zero]
      unfold lognInf
      rw [frame_map_eq (cV w) _ x (by rw [map_mul, cV_embInf, if_neg h, one_mul])]
  simp only [deg, degM, hfin, hinf, Finset.sum_add_distrib, Finset.sum_ite_eq',
    Finset.mem_univ, if_true]
  ring

end PositivityTheory.Rg.BcB.CV.LocalPlacePositivity

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4 in
theorem PositivityTheory.Rg.BcB.CV.pf_Ploc : PositivityTheory.Rg.BcB.CV.Ploc := by
  intro E _ _ _ n v W
  refine ⟨fun x => LocalPlacePositivity.lognInf_eq v x _, LocalPlacePositivity.ploc_cont v W, fun x k hk => LocalPlacePositivity.ploc_mul_k _ x k hk,
    fun hW => ?_, LocalPlacePositivity.cV_embInf_self v, fun v' hv' g => ?_, fun d => LocalPlacePositivity.cV_ratGL v d,
    fun g x => LocalPlacePositivity.deg_embInf v W g x⟩
  · subst hW
    exact ⟨fun x => LocalPlacePositivity.ploc_empty _ (by simp) x, fun x => LocalPlacePositivity.degM_empty x _ (by simp)⟩
  · classical
    rw [LocalPlacePositivity.cV_embInf, if_neg hv']
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.CVEmbInfSelf =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.EnormOfRealToRealLe =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.EnormOfRealToRealLe", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory PositivityTheory.Rg.Tf.Loc
open scoped ENNReal

namespace PositivityTheory.Rg.BcB.CV

namespace QuotientIntegral

theorem enorm_ofReal_toReal_le' (r : ℝ≥0∞) : ‖((r.toReal : ℝ) : ℂ)‖ₑ ≤ r := by
  rw [← ofReal_norm, Complex.norm_real, Real.norm_of_nonneg ENNReal.toReal_nonneg]
  exact ENNReal.ofReal_toReal_le

theorem integrable_mul {G : Type*} [MeasurableSpace G] {μ : Measure G} {F : G → ℂ}
    {ρ : G → ℝ≥0∞} (hF : Measurable F) (hρ : Measurable ρ) (h : ∫⁻ g, ‖F g‖ₑ * ρ g ∂μ ≠ ⊤) :
    Integrable (fun g => F g * ((ρ g).toReal : ℂ)) μ := by
  refine ⟨(hF.mul (Complex.measurable_ofReal.comp hρ.ennreal_toReal)).aestronglyMeasurable, ?_⟩
  refine lt_of_le_of_lt (lintegral_mono fun g => ?_) h.lt_top
  rw [enorm_mul]
  gcongr
  exact enorm_ofReal_toReal_le' _

end QuotientIntegral

theorem pf_QAdd : QAdd := by
  intro G _ _ μ T ν
  classical
  by_cases hex : ∃ ρ, IsQuotNormaliser T ν ρ
  · have hL : ∀ F : G → ℂ, quotLIntegral μ T ν (fun x => ‖F x‖ₑ) =
        ∫⁻ g, ‖F g‖ₑ * hex.choose g ∂μ := fun F => by rw [quotLIntegral, dite_eq_left hex]
    have hI : ∀ F : G → ℂ, quotIntegral μ T ν F =
        ∫ g, F g * ((hex.choose g).toReal : ℂ) ∂μ := fun F => by rw [quotIntegral, dite_eq_left hex]
    have hint : ∀ F : G → ℂ, Measurable F → quotLIntegral μ T ν (fun x => ‖F x‖ₑ) ≠ ⊤ →
        Integrable (fun g => F g * ((hex.choose g).toReal : ℂ)) μ := fun F hF h =>
      QuotientIntegral.integrable_mul hF hex.choose_spec.1 (by rwa [hL] at h)
    refine ⟨fun ι s F hF => ?_, fun F F' hF hF' h h' => ?_, fun c F => ?_⟩
    · simp only [hI, Finset.sum_mul]
      exact integral_finsetSum s fun i hi => hint _ (hF i hi).1 (hF i hi).2
    · simp only [hI, sub_mul]
      exact integral_sub (hint _ hF h) (hint _ hF' h')
    · simp only [hI, mul_assoc]
      exact integral_const_mul c _
  · refine ⟨fun _ _ _ _ => ?_, fun _ _ _ _ _ _ => ?_, fun _ _ => ?_⟩ <;>
      simp [quotIntegral, hex]

end PositivityTheory.Rg.BcB.CV
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.EnormOfRealToRealLe =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.ExistsMeasure =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.ExistsMeasure", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.QuotVanish\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix MeasureTheory
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.Tf.Loc

namespace PositivityTheory.Rg.BcB.CV.Glob1Aux

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4

theorem emb_conj {E : Type} [Field E] [NumberField E] [IsCMField E] (v : InfinitePlace E) (x : E) :
    v.embedding (conjE E x) = starRingEnd ℂ (v.embedding x) :=
  IsCMField.complexEmbedding_complexConj E v.embedding x

theorem locGL_theta {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ} (v : InfinitePlace E)
    (d : GL (Fin n) E) : locGL v (thetaE E n d) = thC n (locGL v d) := by
  apply Units.ext
  have h1 : (locGL v (thetaE E n d)).val = ((thetaR (conjE E) n d).val).map v.embedding := rfl
  have h2 : (locGL v d⁻¹).val = (d⁻¹ : GL (Fin n) E).val.map v.embedding := rfl
  rw [h1, thetaR_val, thetaR_val, ← map_inv, h2]
  ext i j
  simp [emb_conj]

theorem locGL_nrm {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ} (v : InfinitePlace E)
    (d : GL (Fin n) E) : locGL v (nrm d) = locGL v d * thC n (locGL v d) := by
  rw [nrm, map_mul, locGL_theta]

theorem sep {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ} (v : InfinitePlace E)
    (d : GL (Fin n) E) (hd : IsRegD d) : (locGL v d * thC n (locGL v d)).val.charpoly.Separable := by
  rw [← locGL_nrm]
  have : (locGL v (nrm d)).val = (nrm d).val.map v.embedding := rfl
  rw [this, Matrix.charpoly_map]
  exact hd.map

theorem exists_measure {G H : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [MeasurableSpace G]
    [BorelSpace G] [Group H] [TopologicalSpace H] [IsTopologicalGroup H] [MeasurableSpace H] [BorelSpace H]
    (e : G ≃ₜ* H) (T : Subgroup G) (T' : Subgroup H) (hT : T.map e.toMonoidHom = T') (ν : Measure T)
    [ν.IsHaarMeasure] [ν.IsInvInvariant] : ∃ ν' : Measure T', ν'.IsHaarMeasure ∧ ν'.IsInvInvariant := by
  have h1 : ∀ t : T, e t ∈ T' := fun t => by
    rw [← hT]; exact Subgroup.mem_map_of_mem _ t.2
  have h2 : ∀ s : T', e.symm s ∈ T := fun s => by
    have hs : (s : H) ∈ T.map e.toMonoidHom := by rw [hT]; exact s.2
    obtain ⟨t, ht, hts⟩ := Subgroup.mem_map.1 hs
    rw [← hts]
    show e.symm (e t) ∈ T
    rw [e.symm_apply_apply]
    exact ht
  let f : T ≃ₜ* T' :=
    { toFun := fun t => ⟨e t, h1 t⟩
      invFun := fun s => ⟨e.symm s, h2 s⟩
      left_inv := fun t => Subtype.ext (e.symm_apply_apply t)
      right_inv := fun s => Subtype.ext (e.apply_symm_apply s)
      map_mul' := fun a b => Subtype.ext (map_mul e (a : G) (b : G))
      continuous_toFun := (e.continuous.comp continuous_subtype_val).subtype_mk _
      continuous_invFun := (e.symm.continuous.comp continuous_subtype_val).subtype_mk _ }
  refine ⟨ν.map f, inferInstance, ⟨?_⟩⟩
  have hf : Measurable f := f.continuous.measurable
  have hinv : Measurable (fun t : T => t⁻¹) := continuous_inv.measurable
  have hν : Measure.map (fun t : T => t⁻¹) ν = ν := Measure.IsInvInvariant.inv_eq_self
  show Measure.map (fun s : T' => s⁻¹) (Measure.map f ν) = Measure.map f ν
  rw [Measure.map_map continuous_inv.measurable hf]
  conv_rhs => rw [← hν, Measure.map_map hf hinv]
  congr 1
  funext t
  exact (map_inv f t).symm

end PositivityTheory.Rg.BcB.CV.Glob1Aux

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4 PositivityTheory.Rg.BcB.CV.Glob1Aux in
theorem PositivityTheory.Rg.BcB.CV.pf_Glob1 : PositivityTheory.Rg.BcB.D4.SplitAt → PositivityTheory.Rg.BcB.D4.NonEllFlag → PositivityTheory.Rg.BcB.LocVanish → PositivityTheory.Rg.BcB.CV.LocTor → PositivityTheory.Rg.BcB.CV.QMap → PositivityTheory.Rg.BcB.CV.QProd → PositivityTheory.Rg.BcB.CV.Ploc → PositivityTheory.Rg.BcB.CV.AdTop → PositivityTheory.Rg.BcB.CV.Glob1 := by
  intro hSA hNEF hLV hLT hQM hQP hPl hAT E _ _ _ n _ _ μ _ d ν _ _ φ hreg hne hcomm hcl hφ hvc
  obtain ⟨v, W₁, W₂, hW0, hW12, hp1, hp2⟩ := hNEF E n d hreg hne
  obtain ⟨G', _, _, _, _, _, _, _, _, _, e, μ₁, μ₂, θ', hμ₁, hμ₂, -, he1, hemb, hθ, hcent⟩ := hSA E n v μ
  have hsep := sep v d hreg
  obtain ⟨hT1c, hT1m, -, hLC, hSC⟩ := hLT n (locGL v d) hsep
  obtain ⟨hLCA, hT2A, hSCA, hθA, -, -⟩ := hAT E n
  have := hLC; have := hSC; have := hLCA; have := hT2A; have := hSCA; have := hμ₁; have := hμ₂
  have : T2Space (GL (Fin n) ℂ × G') := e.symm.toHomeomorph.isEmbedding.t2Space
  have : T2Space (GL (Fin n) ℂ) :=
    T2Space.of_injective_continuous (f := fun g : GL (Fin n) ℂ => (g, (1 : G')))
      (fun a b h => (Prod.ext_iff.1 h).1) (continuous_id.prodMk continuous_const)
  have : T2Space G' :=
    T2Space.of_injective_continuous (f := fun b : G' => ((1 : GL (Fin n) ℂ), b))
      (fun a b h => (Prod.ext_iff.1 h).2) (continuous_const.prodMk continuous_id)
  have he1' : (e (ratGL E n d)).1 = locGL v d := by
    rw [he1]; exact (hPl E n v ⊥).2.2.2.2.2.2.1 d
  have hmem : ∀ p, p ∈ (twCent (thC n) (locGL v d)).prod (twCent θ' (e (ratGL E n d)).2) ↔
      p ∈ e '' (adCent d : Set (GA E n)) := by
    intro p; rw [← hcent d]; exact Iff.rfl
  have hT2c : IsClosed (twCent θ' (e (ratGL E n d)).2 : Set G') := by
    have hc : IsClosed (e '' (adCent d : Set (GA E n))) := e.toHomeomorph.isClosedMap _ hcl
    have : (twCent θ' (e (ratGL E n d)).2 : Set G') =
        (fun b => ((1 : GL (Fin n) ℂ), b)) ⁻¹' (e '' (adCent d : Set (GA E n))) := by
      ext b
      rw [Set.mem_preimage, ← hmem, Subgroup.mem_prod]
      exact ⟨fun h => ⟨Subgroup.one_mem _, h⟩, fun h => h.2⟩
    rw [this]
    exact hc.preimage (continuous_const.prodMk continuous_id)
  have hT2m : ∀ s ∈ twCent θ' (e (ratGL E n d)).2, ∀ t ∈ twCent θ' (e (ratGL E n d)).2, s * t = t * s := by
    intro s hs t ht
    obtain ⟨x, hx, hxs⟩ := (hmem (1, s)).1 (Subgroup.mem_prod.2 ⟨Subgroup.one_mem _, hs⟩)
    obtain ⟨y, hy, hyt⟩ := (hmem (1, t)).1 (Subgroup.mem_prod.2 ⟨Subgroup.one_mem _, ht⟩)
    have h := congrArg (fun p => (e p).2) (hcomm x hx y hy)
    simp only [map_mul, Prod.snd_mul, hxs, hyt] at h
    exact h
  obtain ⟨ν', hν'1, hν'2⟩ := exists_measure e (adCent d) _ (hcent d) ν
  have := hν'1; have := hν'2
  have hFc : Continuous fun x : GA E n => φ (twConj (thetaA E n) x (ratGL E n d)) :=
    hφ.cont.comp ((continuous_inv.mul continuous_const).mul hθA)
  refine hQM (GA E n) (GL (Fin n) ℂ × G') e μ (μ₁.prod μ₂) (adCent d) _ ν ν' _ hcl (hcent d) hFc.measurable
    (fun t ht x => congrArg φ (twConj_mul_left (thetaA E n) (ratGL E n d) ht x)) ?_
  refine hQP (GL (Fin n) ℂ) G' μ₁ μ₂ _ _ ν' _ hT1c hT2c hT1m hT2m (hFc.comp e.symm.continuous).measurable ?_ (Or.inl ?_)
  · intro t ht x
    obtain ⟨s, hs, rfl⟩ := (hmem t).1 ht
    show φ (twConj (thetaA E n) (e.symm (e s * x)) (ratGL E n d)) = φ (twConj (thetaA E n) (e.symm x) (ratGL E n d))
    rw [map_mul, e.symm_apply_apply]
    exact congrArg φ (twConj_mul_left (thetaA E n) (ratGL E n d) hs _)
  · intro ν₁ _ _ x₂
    have key : ∀ x₁ : GL (Fin n) ℂ, twConj (thetaA E n) (e.symm (x₁, x₂)) (ratGL E n d) =
        e.symm (twConj (thC n) x₁ (locGL v d), twConj θ' x₂ (e (ratGL E n d)).2) := by
      intro x₁
      apply e.injective
      rw [e.apply_symm_apply]
      simp only [twConj, map_mul, map_inv, hθ, e.apply_symm_apply]
      refine Prod.ext ?_ ?_
      · simp [he1']
      · simp
    have hf : VeryCusp fun g => φ (e.symm (g, twConj θ' x₂ (e (ratGL E n d)).2)) := by
      have h := hvc v (e.symm (1, twConj θ' x₂ (e (ratGL E n d)).2)) (by rw [← he1, e.apply_symm_apply])
      have : (fun g => φ (e.symm (g, twConj θ' x₂ (e (ratGL E n d)).2))) =
          fun g => φ (embInf n v g * e.symm (1, twConj θ' x₂ (e (ratGL E n d)).2)) := by
        funext g
        have hg : embInf n v g = e.symm (g, 1) := by rw [← hemb g, e.symm_apply_apply]
        rw [hg, ← map_mul, Prod.mk_mul_mk, mul_one, one_mul]
      rw [this]; exact h
    have hfc : Continuous fun g => φ (e.symm (g, twConj θ' x₂ (e (ratGL E n d)).2)) :=
      hφ.cont.comp (e.symm.continuous.comp (continuous_id.prodMk continuous_const))
    have hfs : HasCompactSupport fun g => φ (e.symm (g, twConj θ' x₂ (e (ratGL E n d)).2)) := by
      have hK : IsCompact (e '' tsupport φ) := hφ.supp.image e.continuous
      refine IsCompact.of_isClosed_subset (hK.image continuous_fst) (isClosed_tsupport _) ?_
      have hcl' : IsClosed {g : GL (Fin n) ℂ | (g, twConj θ' x₂ (e (ratGL E n d)).2) ∈ e '' tsupport φ} :=
        hK.isClosed.preimage (continuous_id.prodMk continuous_const)
      refine (closure_minimal ?_ hcl').trans ?_
      · intro g hg
        exact ⟨_, subset_tsupport _ hg, e.apply_symm_apply _⟩
      · intro g hg
        exact ⟨_, hg, rfl⟩
    have hLV' := hLV n μ₁ _ (fun _ => 1) (locGL v d) ν₁ W₁ W₂ hfc hfs hf hsep hW0 hW12 hp1 hp2 measurable_const
      (fun _ _ => ⟨1, fun _ _ => by simp⟩) (fun _ _ _ => rfl) (fun _ _ _ => rfl) (fun _ _ _ => rfl)
    refine Eq.trans ?_ hLV'
    congr 1
    funext x₁
    show φ (twConj (thetaA E n) (e.symm (x₁, x₂)) (ratGL E n d)) = _
    rw [key, mul_one]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.ExistsMeasure =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.LintegralIndicatorNeTop =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.LintegralIndicatorNeTop", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory PositivityTheory.Rg.Tf.Loc
open scoped Pointwise ENNReal

namespace PositivityTheory.Rg.BcB.CV

namespace QuotientIntegral

variable {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [LocallyCompactSpace G]
  [T2Space G] [SecondCountableTopology G] [MeasurableSpace G] [BorelSpace G]

theorem lintegral_indicator_ne_top (μ : Measure G) [μ.IsHaarMeasure]
    (T : Subgroup G) (ν : Measure T) [ν.IsHaarMeasure] [ν.IsInvInvariant] {C : Set G}
    (hT : IsClosed (T : Set G)) (hC : IsCompact C) {ρ0 : G → ℝ≥0∞}
    (h0 : IsQuotNormaliser T ν ρ0) :
    ∫⁻ g, ((T : Set G) * C).indicator 1 g * ρ0 g ∂μ ≠ ⊤ := by
  classical
  have : LocallyCompactSpace T := hT.isClosedEmbedding_subtypeVal.locallyCompactSpace
  have : SecondCountableTopology T := TopologicalSpace.Subtype.secondCountableTopology (T : Set G)
  have : SigmaCompactSpace T := inferInstance
  have : SFinite ν := inferInstance
  have hmcoe : Measurable (fun h : T => (h : G)) := measurable_subtype_coe
  have : ν.IsMulRightInvariant := by
    have : ν.inv.IsMulRightInvariant := inferInstance
    rwa [Measure.inv_eq_self] at this
  obtain ⟨U, hUc, hU1⟩ := exists_compact_mem_nhds (1 : G)
  set K : Set G := U * C with hKdef
  have hKc : IsCompact K := hUc.mul hC
  have hKm : MeasurableSet K := hKc.isClosed.measurableSet
  set S : Set G := (T : Set G) * C with hSdef
  have hSm : MeasurableSet S := (hT.mul_right_of_isCompact hC).measurableSet
  have hSinv : ∀ t ∈ T, ∀ x, t * x ∈ S ↔ x ∈ S := by
    intro t ht x
    constructor
    · rintro ⟨s, hs, c, hc, hsc⟩
      exact ⟨t⁻¹ * s, T.mul_mem (T.inv_mem ht) hs, c, hc, by
        show t⁻¹ * s * c = x
        rw [mul_assoc, show s * c = t * x from hsc, inv_mul_cancel_left]⟩
    · rintro ⟨s, hs, c, hc, rfl⟩
      exact ⟨t * s, T.mul_mem ht hs, c, hc, mul_assoc _ _ _⟩
  have hKind : Measurable (K.indicator (1 : G → ℝ≥0∞)) := measurable_one.indicator hKm
  set I : G → ℝ≥0∞ := fun g => ∫⁻ h : T, K.indicator 1 ((h : G) * g) ∂ν with hIdef
  have hIm : Measurable I := by
    have : Measurable (fun p : G × T => K.indicator (1 : G → ℝ≥0∞) ((p.2 : G) * p.1)) :=
      hKind.comp ((hmcoe.comp measurable_snd).mul measurable_fst)
    exact this.lintegral_prod_right'
  have hIT : ∀ t ∈ T, ∀ g, I (t * g) = I g := by
    intro t ht g
    have := lintegral_mul_right_eq_self (μ := ν)
      (fun h : T => K.indicator (1 : G → ℝ≥0∞) ((h : G) * g)) ⟨t, ht⟩
    simp only [hIdef]
    rw [← this]
    refine lintegral_congr fun h => ?_
    simp [mul_assoc]
  set V : Set T := (fun h : T => (h : G)) ⁻¹' interior U with hVdef
  have hVm : MeasurableSet V := hmcoe measurableSet_interior
  have hVpos : ν V ≠ 0 := by
    have hVo : IsOpen V := isOpen_interior.preimage continuous_subtype_val
    have h1 : (1 : T) ∈ V := by
      show ((1 : T) : G) ∈ interior U
      simpa using mem_interior_iff_mem_nhds.mpr hU1
    exact (hVo.measure_pos ν ⟨1, h1⟩).ne'
  have hIC : ∀ g ∈ S, ν V ≤ I g := by
    rintro _ ⟨t, ht, c, hc, rfl⟩
    rw [hIT t ht c, ← lintegral_indicator_one hVm]
    refine lintegral_mono fun h => ?_
    by_cases hh : h ∈ V
    · have hK : (h : G) * c ∈ K := Set.mul_mem_mul (interior_subset hh) hc
      simp [hh, hK]
    · simp [Set.indicator_apply, hh]
  have hIfin : ∀ g, I g ≠ ⊤ := by
    intro g
    have hemb : Topology.IsClosedEmbedding (fun h : T => (h : G) * g) :=
      (Homeomorph.mulRight g).isClosedEmbedding.comp hT.isClosedEmbedding_subtypeVal
    have hmeas : Measurable (fun h : T => (h : G) * g) := hmcoe.mul_const g
    have : I g = ν ((fun h : T => (h : G) * g) ⁻¹' K) := by
      rw [← lintegral_indicator_one (hmeas hKm)]
      rfl
    rw [this]
    exact ((hemb.isCompact_preimage hKc).measure_lt_top).ne
  set ρ : G → ℝ≥0∞ := S.piecewise (fun g => K.indicator 1 g * (I g)⁻¹) ρ0 with hρdef
  have hρ : IsQuotNormaliser T ν ρ := by
    refine ⟨Measurable.piecewise hSm (hKind.mul hIm.inv) h0.1, fun g => ?_⟩
    by_cases hg : g ∈ S
    · have hmem : ∀ h : T, (h : G) * g ∈ S := fun h => (hSinv _ h.2 g).2 hg
      calc ∫⁻ h : T, ρ ((h : G) * g) ∂ν = ∫⁻ h : T, K.indicator 1 ((h : G) * g) * (I g)⁻¹ ∂ν := by
            refine lintegral_congr fun h => ?_
            simp only [hρdef, Set.piecewise_eq_of_mem _ _ _ (hmem h), hIT _ h.2]
        _ = I g * (I g)⁻¹ := lintegral_mul_const _ (hKind.comp (hmcoe.mul_const g))
        _ = 1 := ENNReal.mul_inv_cancel
              (ne_of_gt (lt_of_lt_of_le (pos_iff_ne_zero.mpr hVpos) (hIC g hg))) (hIfin g)
    · have hmem : ∀ h : T, (h : G) * g ∉ S := fun h hh => hg ((hSinv _ h.2 g).1 hh)
      rw [← h0.2 g]
      refine lintegral_congr fun h => ?_
      simp only [hρdef, Set.piecewise_eq_of_notMem _ _ _ (hmem h)]
  have hF1 : Measurable (S.indicator (1 : G → ℝ≥0∞)) := measurable_one.indicator hSm
  have hFinv : ∀ h ∈ T, ∀ g, S.indicator (1 : G → ℝ≥0∞) (h * g) = S.indicator 1 g := by
    intro h hh g
    simp only [Set.indicator_apply, hSinv h hh g, Pi.one_apply]
  rw [lintegral_normaliser_eq hF1 hFinv h0 hρ]
  refine ne_of_lt (lt_of_le_of_lt (b := ∫⁻ g, K.indicator 1 g * (ν V)⁻¹ ∂μ)
    (lintegral_mono fun g => ?_) ?_)
  · by_cases hg : g ∈ S
    · simp only [Set.indicator_of_mem hg, Pi.one_apply, one_mul, hρdef,
        Set.piecewise_eq_of_mem _ _ _ hg]
      gcongr
      exact hIC g hg
    · simp [hg]
  · rw [lintegral_mul_const _ hKind, lintegral_indicator_one hKm]
    exact ENNReal.mul_lt_top hKc.measure_lt_top (ENNReal.inv_lt_top.mpr (pos_iff_ne_zero.mpr hVpos))

theorem main (μ : Measure G) [μ.IsHaarMeasure] (T : Subgroup G) (ν : Measure T) [ν.IsHaarMeasure]
    [ν.IsInvInvariant] (C : Set G) (hT : IsClosed (T : Set G)) (hC : IsCompact C) :
    ∃ A : ℝ, 0 ≤ A ∧ ∀ (F : G → ℂ) (B : ℝ), 0 ≤ B → Measurable F →
      (∀ t ∈ T, ∀ x, F (t * x) = F x) → (∀ x, F x ≠ 0 → x ∈ (T : Set G) * C) →
      (∀ x ∈ C, ‖F x‖ ≤ B) → quotLIntegral μ T ν (fun x => ‖F x‖ₑ) ≠ ⊤ ∧
        ‖quotIntegral μ T ν F‖ ≤ A * B := by
  classical
  by_cases hex : ∃ ρ, IsQuotNormaliser T ν ρ
  · have h0 : IsQuotNormaliser T ν hex.choose := hex.choose_spec
    set S : Set G := (T : Set G) * C with hSdef
    have hL : ∫⁻ g, S.indicator 1 g * hex.choose g ∂μ ≠ ⊤ :=
      lintegral_indicator_ne_top μ T ν hT hC h0
    refine ⟨(∫⁻ g, S.indicator 1 g * hex.choose g ∂μ).toReal, ENNReal.toReal_nonneg,
      fun F B hB hF hFT hFS hFC => ?_⟩
    have hbound : ∀ g, ‖F g‖ₑ ≤ ENNReal.ofReal B * S.indicator 1 g := by
      intro g
      by_cases hg : g ∈ S
      · rw [Set.indicator_of_mem hg, Pi.one_apply, mul_one]
        obtain ⟨t, ht, c, hc, rfl⟩ := hg
        rw [hFT t ht c, ← ofReal_norm]
        exact ENNReal.ofReal_le_ofReal (hFC c hc)
      · have : F g = 0 := by
          by_contra h
          exact hg (hFS g h)
        simp [this]
    have hle : ∫⁻ g, ‖F g‖ₑ * hex.choose g ∂μ ≤
        ENNReal.ofReal B * ∫⁻ g, S.indicator 1 g * hex.choose g ∂μ := by
      calc ∫⁻ g, ‖F g‖ₑ * hex.choose g ∂μ
          ≤ ∫⁻ g, ENNReal.ofReal B * (S.indicator 1 g * hex.choose g) ∂μ :=
            lintegral_mono fun g => by
              rw [← mul_assoc]
              gcongr
              exact hbound g
        _ = ENNReal.ofReal B * ∫⁻ g, S.indicator 1 g * hex.choose g ∂μ :=
            lintegral_const_mul' _ _ ENNReal.ofReal_ne_top
    have hne : ENNReal.ofReal B * ∫⁻ g, S.indicator 1 g * hex.choose g ∂μ ≠ ⊤ :=
      ENNReal.mul_ne_top ENNReal.ofReal_ne_top hL
    have hfin : ∫⁻ g, ‖F g‖ₑ * hex.choose g ∂μ ≠ ⊤ := ne_top_of_le_ne_top hne hle
    refine ⟨by rw [quotLIntegral, dite_eq_left hex]; exact hfin, ?_⟩
    rw [quotIntegral, dite_eq_left hex]
    calc ‖∫ g, F g * ((hex.choose g).toReal : ℂ) ∂μ‖
        = ‖∫ g, F g * ((hex.choose g).toReal : ℂ) ∂μ‖ₑ.toReal := (toReal_enorm _).symm
      _ ≤ (∫⁻ g, ‖F g‖ₑ * hex.choose g ∂μ).toReal := by
          refine ENNReal.toReal_mono hfin ((enorm_integral_le_lintegral_enorm _).trans
            (lintegral_mono fun g => ?_))
          rw [enorm_mul]
          gcongr
          exact PositivityTheory.Rg.BcB.CV.QuotientIntegral.enorm_ofReal_toReal_le' _
      _ ≤ (ENNReal.ofReal B * ∫⁻ g, S.indicator 1 g * hex.choose g ∂μ).toReal :=
          ENNReal.toReal_mono hne hle
      _ = (∫⁻ g, S.indicator 1 g * hex.choose g ∂μ).toReal * B := by
          rw [ENNReal.toReal_mul, ENNReal.toReal_ofReal hB, mul_comm]
  · refine ⟨0, le_rfl, fun F B _ _ _ _ _ => ?_⟩
    simp [quotLIntegral, quotIntegral, hex]

end QuotientIntegral

theorem pf_QInt : QInt := by
  intro G _ _ _ _ _ _ _ _ μ _ T ν _ _ C hT hC
  exact QuotientIntegral.main μ T ν C hT hC

end PositivityTheory.Rg.BcB.CV
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.LintegralIndicatorNeTop =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PAdTop =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PAdTop", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteTwConjOfIsTest\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.T2SpaceAdelicGLCmField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix MeasureTheory
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.Tf.Loc PositivityTheory.Rg.BcB

namespace PositivityTheory.Rg.BcB.CV.AdelicTopology

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ}

theorem ratCent_subset_range (d : GL (Fin n) E) :
    (ratCent d : Set (GA E n)) ⊆ ((ratGL E n).range : Set (GA E n)) := by
  rintro _ ⟨g, -, rfl⟩
  exact ⟨g, rfl⟩

theorem discrete_ratCent (d : GL (Fin n) E) : DiscreteTopology (ratCent d) :=
  DiscreteTopology.of_subset (s := ((ratGL E n).range : Set (GA E n)))
    GlobalTheory.CompanionTheory.KerTwFin.discreteTopology_range (ratCent_subset_range d)

theorem countable_ratCent (d : GL (Fin n) E) : Countable (ratCent d) := by
  have := GlobalTheory.CompanionTheory.UnfoldCut.countable_GL (E := E) (n := n)
  have h : (ratCent d : Set (GA E n)).Countable :=
    (Set.countable_range (ratGL E n)).mono fun _ hx => by
      obtain ⟨g, hg⟩ := ratCent_subset_range d hx
      exact ⟨g, hg⟩
  exact h.to_subtype

end PositivityTheory.Rg.BcB.CV.AdelicTopology

theorem PositivityTheory.Rg.BcB.CV.pf_AdTop : PositivityTheory.Rg.BcB.DegBdd → PositivityTheory.Rg.BcB.D4.RatDisc → PositivityTheory.Rg.BcB.CV.AdTop := by
  intro hD _ E _ _ _ n
  haveI : T2Space (GA E n) := GlobalTheory.CompanionTheory.UnfoldCut.t2Space_adelicGL_cmField (E := E) (n := n)
  haveI : T1Space (GA E n) := T2Space.t1Space
  refine ⟨GlobalTheory.CompanionTheory.UnfoldCut.locallyCompact_GA, inferInstance, GlobalTheory.CompanionTheory.UnfoldCut.secondCountable_GA,
    GlobalTheory.CompanionTheory.KerTwFin.continuous_thetaA, fun W => ?_, fun d => ?_⟩
  · let _ : MeasurableSpace (GA E n) := borel _
    have : BorelSpace (GA E n) := ⟨rfl⟩
    exact ((hD E n).2 W).measurable
  · have := PositivityTheory.Rg.BcB.CV.AdelicTopology.discrete_ratCent d
    exact ⟨Subgroup.isClosed_of_discrete, inferInstance, PositivityTheory.Rg.BcB.CV.AdelicTopology.countable_ratCent d⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PAdTop =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PClassVanish =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PClassVanish", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.QuotVanish\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix MeasureTheory
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.Tf.Loc
open scoped Pointwise

namespace PositivityTheory.Rg.BcB.CV.ClassVanishing

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4

theorem exists_haar_inv {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [MeasurableSpace G]
    [BorelSpace G] [LocallyCompactSpace G] (hc : ∀ a b : G, a * b = b * a) :
    ∃ ν : Measure G, ν.IsHaarMeasure ∧ ν.IsInvInvariant := by
  letI : CommGroup G := { (inferInstance : Group G) with mul_comm := hc }
  exact ⟨Measure.haar, inferInstance, Measure.IsHaarMeasure.isInvInvariant_of_regular _⟩

theorem gamma_fin_zero (y : (Fin 0 → SignType) → ℝ) (a : Fin 0 → ℝ) : gam y a = 1 := by
  unfold gam gamOn
  rw [Finset.sum_eq_single (∅ : Finset (Fin 0 → SignType))]
  · simp
  · intro s hs hne
    exfalso
    apply hne
    simp only [Finset.mem_filter] at hs
    exact Finset.subset_empty.mp fun e he => absurd (Subsingleton.elim e 0 ▸ he) hs.2.1
  · intro h
    exfalso
    apply h
    simp [Finset.mem_filter]

theorem quot_congr {G : Type} [Group G] [MeasurableSpace G] (μ : Measure G) {H H' : Subgroup G} (h : H = H')
    (F : G → ℂ) : quotIntegral μ H Measure.count F = quotIntegral μ H' Measure.count F := by
  subst h; rfl

theorem quotL_congr {G : Type} [Group G] [MeasurableSpace G] (μ : Measure G) {H H' : Subgroup G} (h : H = H')
    (F : G → ENNReal) : quotLIntegral μ H Measure.count F = quotLIntegral μ H' Measure.count F := by
  subst h; rfl

end PositivityTheory.Rg.BcB.CV.ClassVanishing

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4 PositivityTheory.Rg.BcB.CV

theorem PositivityTheory.Rg.BcB.CV.pf_ClassVanish : PositivityTheory.Rg.BcB.D4.PairParam → PositivityTheory.Rg.BcB.D4.TorusChar → PositivityTheory.Rg.BcB.D4.ChiGam → PositivityTheory.Rg.BcB.D4.QuotStage → PositivityTheory.Rg.BcB.D4.RatDisc → PositivityTheory.Rg.BcB.SizeBasic → PositivityTheory.Rg.BcB.CV.QAdd → PositivityTheory.Rg.BcB.CV.Vfun → PositivityTheory.Rg.BcB.CV.AdTop → PositivityTheory.Rg.BcB.CV.CutInt → PositivityTheory.Rg.BcB.CV.Glob1 → PositivityTheory.Rg.BcB.CV.Glob2 → PositivityTheory.Rg.BcB.ClassVanish := by
  intro hPP hTC hCG hQS hRD hSB hQA hVf hAT hCI hG1 hG2
  intro E _ _ _ _ n
  obtain ⟨C₀, hC₀⟩ := hCG E n
  refine ⟨max 0 C₀, ?_⟩
  intro _ _ μ _ τ r φ d hφ hsz hvc hτ hreg hne
  obtain ⟨hLC, hT2, hSC, -, -, -⟩ := hAT E n
  haveI := hLC
  haveI := hT2
  haveI := hSC
  obtain ⟨m, Wof, hiso, huniq, hzero, hmeet, hmono, hperp⟩ := hPP E n d hreg
  obtain ⟨hcomm, a, hdegT, hadd, hrat0, hcont, hcpt⟩ := hTC E n d m Wof hiso huniq hzero hmeet hmono hreg
  obtain ⟨hle, hdisc, hclosed⟩ := hRD.1 E n d
  haveI : LocallyCompactSpace (adCent d) := hclosed.locallyCompactSpace
  haveI : BorelSpace (adCent d) := Subtype.borelSpace _
  haveI : SecondCountableTopology (adCent d) := TopologicalSpace.Subtype.secondCountableTopology _
  have hcommT : ∀ s t : adCent d, s * t = t * s := fun s t => Subtype.ext (hcomm s s.2 t t.2)
  obtain ⟨ν, hνH, hνI⟩ := ClassVanishing.exists_haar_inv hcommT
  haveI := hνH
  haveI := hνI
  have hmap : (ratIn d).map (adCent d).subtype = ratCent d := by
    rw [ratIn, Subgroup.subgroupOf_map_subtype, inf_of_le_left hle]
  set F : GA E n → ℂ := fun x => chiT τ x * φ (twConj (thetaA E n) x (ratGL E n d)) with hF
  obtain ⟨hFm, hFinv, hFfin⟩ := hCI E n μ τ φ d hφ
  have hstage := hQS (GA E n) μ (adCent d) ν (ratIn d) F hclosed hdisc hFm
    (fun g hg x => hFinv g (Subgroup.mem_subgroupOf.1 hg) x)
    (by rw [ClassVanishing.quotL_congr μ hmap]; exact hFfin)
  rw [ClassVanishing.quot_congr μ hmap] at hstage

  obtain ⟨V, hVdef⟩ : ∃ V : ((Fin m → SignType) → ℝ) → ℂ,
      V = fun y => quotIntegral ν (ratIn d) Measure.count fun t : adCent d => (gam y (a t) : ℂ) := ⟨_, rfl⟩
  have hcptT : ∀ M : ℝ, ∃ K : Set (adCent d), IsCompact K ∧ ∀ t : adCent d, (∀ i, |a t i| ≤ M) →
      t ∈ ((ratIn d : Subgroup (adCent d)) : Set (adCent d)) * K := by
    intro M
    obtain ⟨K, hK, hKt⟩ := hcpt M
    refine ⟨Subtype.val ⁻¹' K, hclosed.isClosedEmbedding_subtypeVal.isCompact_preimage hK, fun t ht => ?_⟩
    obtain ⟨g, hg, k, hk, hgk⟩ := Set.mem_mul.1 (hKt t t.2 ht)
    have hgA : g ∈ adCent d := hle hg
    have hkA : k ∈ adCent d := by
      have : k = g⁻¹ * t := by rw [← hgk]; group
      rw [this]; exact (adCent d).mul_mem ((adCent d).inv_mem hgA) t.2
    exact Set.mem_mul.2 ⟨⟨g, hgA⟩, hg, ⟨k, hkA⟩, hk, Subtype.ext hgk⟩
  obtain ⟨hVP, hVtr⟩ := hVf (adCent d) ν (ratIn d) m (fun t => a t) hcommT hdisc
    (continuousOn_iff_continuous_domRestrict.1 hcont) (fun s t => hadd s s.2 t t.2)
    (fun t ht => hrat0 t (Subgroup.mem_subgroupOf.1 ht)) hcptT
  rw [← hVdef] at hVP
  have hVinv : ∀ t ∈ adCent d, ∀ y, V (fun e => y e - sdot e (a t)) = V y := by
    intro t ht y
    have := hVtr y ⟨t, ht⟩
    rw [hVdef]
    exact this

  have hinner : ∀ x, (quotIntegral ν (ratIn d) Measure.count fun t : adCent d => F ((t : GA E n) * x)) =
      φ (twConj (thetaA E n) x (ratGL E n d)) * V (yOf τ Wof x) := by
    intro x
    have hpt : (fun t : adCent d => F ((t : GA E n) * x)) =
        fun t : adCent d => φ (twConj (thetaA E n) x (ratGL E n d)) * (gam (yOf τ Wof x) (a t) : ℂ) := by
      funext t
      show chiT τ ((t : GA E n) * x) * φ (twConj (thetaA E n) ((t : GA E n) * x) (ratGL E n d)) = _
      rw [twConj_mul_left (thetaA E n) (ratGL E n d) t.2 x]
      by_cases h0 : φ (twConj (thetaA E n) x (ratGL E n d)) = 0
      · simp [h0]
      · have h1 := hsz _ h0
        have h2 := (hSB E n).2.1 (twConj (thetaA E n) x (ratGL E n d))
        have hτ' : C₀ * (1 + logSize (twConj (thetaA E n) x (ratGL E n d))) ≤ τ :=
          calc C₀ * (1 + logSize (twConj (thetaA E n) x (ratGL E n d)))
              ≤ max 0 C₀ * (1 + logSize (twConj (thetaA E n) x (ratGL E n d))) :=
                mul_le_mul_of_nonneg_right (le_max_right _ _) (by linarith)
            _ ≤ max 0 C₀ * (1 + r) := mul_le_mul_of_nonneg_left (by linarith) (le_max_left _ _)
            _ ≤ τ := hτ
        exact (mul_comm _ _).trans
          (congrArg (fun z => φ (twConj (thetaA E n) x (ratGL E n d)) * z)
            (hC₀ d m Wof a hiso huniq hzero hmeet hmono hreg hdegT τ x hτ' t t.2))
    rw [hpt, (hQA (adCent d) ν (ratIn d) Measure.count).2.2 (φ (twConj (thetaA E n) x (ratGL E n d)))
      (fun t : adCent d => (gam (yOf τ Wof x) (a t) : ℂ)), hVdef]
  have hcut : cutTerm μ τ φ d = quotIntegral μ (adCent d) ν
      (fun x => φ (twConj (thetaA E n) x (ratGL E n d)) * V (yOf τ Wof x)) := by
    show quotIntegral μ (ratCent d) Measure.count F = _
    rw [hstage]
    congr 1
    funext x
    exact hinner x
  rw [hcut]
  by_cases hm : m = 0
  · subst hm
    have hV : ∀ y, V y = V 0 := fun y => by
      rw [hVdef]
      simp only [ClassVanishing.gamma_fin_zero]
    rw [show (fun x => φ (twConj (thetaA E n) x (ratGL E n d)) * V (yOf τ Wof x)) =
        fun x => V 0 * φ (twConj (thetaA E n) x (ratGL E n d)) from funext fun x => by rw [hV, mul_comm],
      (hQA (GA E n) μ (adCent d) ν).2.2 (V 0) (fun x => φ (twConj (thetaA E n) x (ratGL E n d))),
      hG1 E n μ d ν φ hreg hne hcomm hclosed hφ hvc, mul_zero]
  · exact hG2 E n m μ d ν Wof a V τ φ hm
      ⟨hreg, hiso, huniq, hzero, hmeet, hmono, hperp, hcomm, hclosed, hdegT⟩ hVP hVinv hφ hvc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PClassVanish =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PCutInt =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PCutInt", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.QuotVanish\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MeasurableSdot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix MeasureTheory
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.Tf.Loc PositivityTheory.Rg.BcB
open scoped Pointwise

namespace PositivityTheory.Rg.BcB.CV.AdelicTopology

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ}

theorem twConj_mul_eq {G : Type} [Group G] (θ : Monoid.End G) (a b δ : G) :
    twConj θ (a * b) δ = twConj θ b (twConj θ a δ) := by
  simp only [twConj, map_mul]
  group

theorem twConj_ratGL (g d : GL (Fin n) E) :
    twConj (thetaA E n) (ratGL E n g) (ratGL E n d) = ratGL E n (twConj (thetaE E n) g d) := by
  simp only [twConj, GlobalTheory.CompanionTheory.RatDisc.thetaA_ratGL, map_mul, map_inv]

theorem chiT_ratGL_mul (hM : Mahler) (τ : ℝ) (c : GL (Fin n) E) (x : GA E n) :
    chiT τ (ratGL E n c * x) = chiT τ x := by
  have h := ((hM E n τ).2.1 c x)
  by_cases hx : x ∈ cutSet E n τ
  · unfold chiT
    rw [Set.indicator_of_mem hx, Set.indicator_of_mem (h.2 hx)]
    rfl
  · unfold chiT
    rw [Set.indicator_of_notMem hx, Set.indicator_of_notMem (mt h.1 hx)]

theorem norm_chiT_le (τ : ℝ) (x : GA E n) : ‖chiT τ x‖ ≤ 1 := by
  unfold chiT
  by_cases hx : x ∈ cutSet E n τ
  · rw [Set.indicator_of_mem hx]; simp
  · rw [Set.indicator_of_notMem hx]; simp

end PositivityTheory.Rg.BcB.CV.AdelicTopology

open PositivityTheory.Rg.BcB.CV.AdelicTopology in
theorem PositivityTheory.Rg.BcB.CV.pf_CutInt : PositivityTheory.Rg.BcB.D4.KerFin → PositivityTheory.Rg.BcB.Mahler → PositivityTheory.Rg.BcB.CV.QInt → PositivityTheory.Rg.BcB.CV.AdTop → PositivityTheory.Rg.BcB.CV.CutInt := by
  classical
  intro hK hM hQ hA E _ _ _ n _ _ μ _ τ φ d hφ
  obtain ⟨hLC, hT2, hSC, hθ, -, hrat⟩ := hA E n
  obtain ⟨hcl, hinv, C, hC, hsub⟩ := hM E n τ
  obtain ⟨hRc, hRd, -⟩ := hrat d
  have hcont : Continuous fun x : GA E n => twConj (thetaA E n) x (ratGL E n d) := by
    unfold twConj
    exact (continuous_inv.mul continuous_const).mul hθ
  have hmeas : Measurable fun x => chiT τ x * φ (twConj (thetaA E n) x (ratGL E n d)) := by
    refine Measurable.mul ?_ (hφ.cont.comp hcont).measurable
    exact (measurable_one.indicator hcl.measurableSet : Measurable ((cutSet E n τ).indicator (1 : GA E n → ℂ)))
  have hinvF : ∀ g ∈ ratCent d, ∀ x, chiT τ (g * x) * φ (twConj (thetaA E n) (g * x) (ratGL E n d)) =
      chiT τ x * φ (twConj (thetaA E n) x (ratGL E n d)) := by
    rintro _ ⟨c, hc, rfl⟩ x
    rw [chiT_ratGL_mul hM τ c x,
      twConj_mul_left _ _ (GlobalTheory.CompanionTheory.RatDisc.ratCent_le d ⟨c, hc, rfl⟩) x]
  refine ⟨hmeas, hinvF, ?_⟩

  set S := {d' : GL (Fin n) E | ∃ x ∈ C, φ (twConj (thetaA E n) x (ratGL E n d')) ≠ 0} with hSdef
  have hS : S.Finite := hK E n φ hφ C hC
  let pick : GL (Fin n) E → GL (Fin n) E := fun d' =>
    if h : ∃ g, twConj (thetaE E n) g d = d' then h.choose else 1
  set C' : Set (GA E n) := ⋃ d' ∈ S, (fun c => ratGL E n (pick d') * c) '' C with hC'def
  have hC' : IsCompact C' :=
    hS.isCompact_biUnion fun d' _ => hC.image (continuous_const.mul continuous_id)
  have hsupp : ∀ x, chiT τ x * φ (twConj (thetaA E n) x (ratGL E n d)) ≠ 0 → x ∈ (ratCent d : Set (GA E n)) * C' := by
    intro x hx
    have hxc : x ∈ cutSet E n τ := by
      by_contra h
      apply hx
      simp only [chiT, Set.indicator_of_notMem h, zero_mul]
    have hφx : φ (twConj (thetaA E n) x (ratGL E n d)) ≠ 0 := fun h => hx (by rw [h, mul_zero])
    obtain ⟨γ, ⟨g, rfl⟩, c, hcC, hγc⟩ := hsub hxc
    subst hγc
    have hd' : twConj (thetaE E n) g d ∈ S := by
      refine ⟨c, hcC, ?_⟩
      rwa [twConj_mul_eq, twConj_ratGL] at hφx
    have hex : ∃ g', twConj (thetaE E n) g' d = twConj (thetaE E n) g d := ⟨g, rfl⟩
    have hpick : pick (twConj (thetaE E n) g d) = hex.choose := dif_pos hex
    set g₀ := hex.choose with hg₀
    have hg₀d : twConj (thetaE E n) g₀ d = twConj (thetaE E n) g d := hex.choose_spec
    have hcent : g * g₀⁻¹ ∈ twCent (thetaE E n) d := by
      change twConj (thetaE E n) (g * g₀⁻¹) d = d
      rw [twConj_mul_eq, ← hg₀d, ← twConj_mul_eq, mul_inv_cancel]
      simp [twConj]
    refine ⟨ratGL E n (g * g₀⁻¹), ⟨g * g₀⁻¹, hcent, rfl⟩, ratGL E n g₀ * c, ?_, ?_⟩
    · refine Set.mem_biUnion hd' ⟨c, hcC, ?_⟩
      simp only [hpick]
    · rw [map_mul, map_inv]
      group
  obtain ⟨B, hB⟩ := hφ.cont.bounded_above_of_compact_support hφ.supp
  have hbound : ∀ x ∈ C', ‖chiT τ x * φ (twConj (thetaA E n) x (ratGL E n d))‖ ≤ max B 0 := by
    intro x _
    rw [norm_mul]
    calc ‖chiT τ x‖ * ‖φ (twConj (thetaA E n) x (ratGL E n d))‖
        ≤ 1 * ‖φ (twConj (thetaA E n) x (ratGL E n d))‖ :=
          mul_le_mul_of_nonneg_right (norm_chiT_le τ x) (norm_nonneg _)
      _ ≤ max B 0 := by rw [one_mul]; exact (hB _).trans (le_max_left _ _)
  have := hLC
  have := hT2
  have := hSC
  have := hRd
  have : T1Space (GA E n) := T2Space.t1Space
  have : MeasurableSingletonClass (GA E n) := ⟨fun x => isClosed_singleton.measurableSet⟩
  have : MeasurableSingletonClass (ratCent d) := Subtype.instMeasurableSingletonClass
  have : IsFiniteMeasureOnCompacts (Measure.count : Measure (ratCent d)) :=
    ⟨fun K hK => Measure.count_apply_lt_top.2 hK.finite_of_discrete⟩
  have : (Measure.count : Measure (ratCent d)).IsOpenPosMeasure :=
    ⟨fun U _ hne h => hne.ne_empty (Measure.count_eq_zero_iff.1 h)⟩
  have : (Measure.count : Measure (ratCent d)).IsHaarMeasure := {}
  obtain ⟨A, -, hQA⟩ := hQ (GA E n) μ (ratCent d) Measure.count C' hRc hC'
  exact (hQA _ (max B 0) (le_max_right _ _) hmeas hinvF hsupp hbound).1
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PCutInt =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PFamAt =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PFamAt", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.QuotVanish\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix MeasureTheory
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.Tf.Loc

namespace PositivityTheory.Rg.BcB.CV.FamilyAtPlace

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4

theorem emb_conj {E : Type} [Field E] [NumberField E] [IsCMField E] (v : InfinitePlace E) (x : E) :
    v.embedding (conjE E x) = starRingEnd ℂ (v.embedding x) :=
  IsCMField.complexEmbedding_complexConj E v.embedding x

theorem locGL_theta {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ} (v : InfinitePlace E)
    (d : GL (Fin n) E) : locGL v (thetaE E n d) = thC n (locGL v d) := by
  apply Units.ext
  have h1 : (locGL v (thetaE E n d)).val = ((thetaR (conjE E) n d).val).map v.embedding := rfl
  have h2 : (locGL v d⁻¹).val = (d⁻¹ : GL (Fin n) E).val.map v.embedding := rfl
  rw [h1, thetaR_val, thetaR_val, ← map_inv, h2]
  ext i j
  simp [emb_conj]

theorem locGL_nrm {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ} (v : InfinitePlace E)
    (d : GL (Fin n) E) : locGL v (nrm d) = locGL v d * thC n (locGL v d) := by
  rw [nrm, map_mul, locGL_theta]

theorem perp_anti {K : Type} [Field K] (σ : K →+* K) {n : ℕ} {W W' : Submodule K (Fin n → K)} (h : W ≤ W') :
    perp σ W' ≤ perp σ W := fun _ hy x hx => hy x (h hx)

theorem perpD_anti {K : Type} [Field K] (σ : K →+* K) {n : ℕ} (d : GL (Fin n) K) {W W' : Submodule K (Fin n → K)}
    (h : W ≤ W') : perpD σ d W' ≤ perpD σ d W :=
  Submodule.map_mono (perp_anti σ h)

end PositivityTheory.Rg.BcB.CV.FamilyAtPlace

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4 PositivityTheory.Rg.BcB.CV.FamilyAtPlace in
theorem PositivityTheory.Rg.BcB.CV.pf_FamAt : PositivityTheory.Rg.BcB.D4.LocFlag → PositivityTheory.Rg.BcB.CV.Ploc → PositivityTheory.Rg.BcB.CV.FamAt := by
  intro hLF hP E _ _ _ n m d Wof a V v hPar hV hemb
  refine ⟨?_, ?_⟩
  · rw [← locGL_nrm]
    have : (locGL v (nrm d)).val = (nrm d).val.map v.embedding := rfl
    rw [this, Matrix.charpoly_map]
    exact hPar.reg.map
  · refine ⟨?_, ?_, ?_, ?_, ?_⟩
    · exact continuous_pi fun e => (hP E n v (Wof e)).2.1
    · intro x
      exact ((hP E n v (Wof 0)).2.2.2.1 hPar.zero).1 x
    · intro x k hk
      funext e
      exact (hP E n v (Wof e)).2.2.1 x k hk
    · intro t ht x z
      have hs := hemb t ht
      have key : ∀ e, pAt Wof v (t * x) e = pAt Wof v x e - sdot e (a (embInf n v t)) := by
        intro e
        have h1 := (hP E n v (Wof e)).2.2.2.2.2.2.2 t (embInf n v x)
        rw [(hP E n v (Wof e)).2.2.2.2.1 x, hPar.degT _ hs] at h1
        simp only [pAt]
        linarith
      have : pAt Wof v (t * x) + z = fun e => (pAt Wof v x + z) e - sdot e (a (embInf n v t)) := by
        funext e
        simp only [Pi.add_apply, key]
        ring
      rw [this, hV _ hs]
    · intro e he
      have hW : Wof e ≠ ⊥ := by
        intro h
        obtain ⟨e0, _, hu⟩ := hPar.uniq ⊥ (hPar.zero ▸ hPar.iso 0)
        exact he ((hu e h).trans (hu 0 hPar.zero).symm)
      obtain ⟨h1, h2, h3, h4, h5⟩ := hLF E n d (Wof e) v (hPar.iso e) hW (hPar.perp e)
      refine ⟨_, _, ⟨h1, h2, h3, h4⟩, ?_⟩
      intro u hu x e' he'
      have hW' : Wof e' ≤ Wof e ∨ (Wof e ≤ Wof e' ∧ Wof e' ≤ perpD (conjE E) d (Wof e)) := by
        rcases he' with h | h
        · exact Or.inr ⟨hPar.mono _ _ h, (hPar.iso e').2.trans (perpD_anti _ _ (hPar.mono _ _ h))⟩
        · exact Or.inl (hPar.mono _ _ h)
      have c1 := (hP E n v (Wof e')).1 (embInf n v u * embInf n v x)
      have c2 := (hP E n v (Wof e')).1 (embInf n v x)
      rw [map_mul, (hP E n v (Wof e')).2.2.2.2.1 u, (hP E n v (Wof e')).2.2.2.2.1 x] at c1
      rw [(hP E n v (Wof e')).2.2.2.2.1 x] at c2
      simp only [pAt]
      rw [← c1, ← c2]
      exact h5 (embInf n v x) u hu (Wof e') hW'
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PFamAt =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PLocTor =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PLocTor", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwistedCentralizerLocalUnitaryCommOfSeparable\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableNilrad\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousConjNilSymm\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix PositivityTheory.Rg.Tf.Loc

namespace PositivityTheory.Rg.BcB.CV.LocalTorus

theorem comm (n : ℕ) (d : GL (Fin n) ℂ) (hs : (d * thC n d).val.charpoly.Separable)
    (s : GL (Fin n) ℂ) (hs' : s ∈ twCent (thC n) d) (t : GL (Fin n) ℂ) (ht : t ∈ twCent (thC n) d) :
    s * t = t * s := by
  have hθθ : ∀ g : GL (Fin n) ℂ, thC n (thC n g) = g := by
    intro g
    apply Units.ext
    show ((((thC n g)⁻¹ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ).map (starRingEnd ℂ))ᵀ = (g : Matrix (Fin n) (Fin n) ℂ)
    have e : (((thC n g)⁻¹ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) =
        ((g : Matrix (Fin n) (Fin n) ℂ).map (starRingEnd ℂ))ᵀ := rfl
    rw [e]
    ext i j
    simp [Matrix.map_apply, Matrix.transpose_apply]
  have key : ∀ x ∈ twCent (thC n) d,
      Commute ((d * thC n d : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) (x : Matrix (Fin n) (Fin n) ℂ) := by
    intro x hx
    have h1 : x⁻¹ * d * thC n x = d := hx
    have h2 : d * thC n x = x * d := by
      calc d * thC n x = x * (x⁻¹ * d * thC n x) := by group
        _ = x * d := by rw [h1]
    have h3 : thC n d * x = thC n x * thC n d := by
      have h4 := congrArg (thC n) h2
      rw [map_mul, map_mul, hθθ] at h4
      exact h4
    apply Commute.units_val
    show (d * thC n d) * x = x * (d * thC n d)
    rw [mul_assoc, h3, ← mul_assoc, h2, mul_assoc]
  have hc := GlobalTheory.BCT.CentComm.commute_of_commute_separable hs (key s hs') (key t ht)
  exact Units.ext (by simpa using hc.eq)

end PositivityTheory.Rg.BcB.CV.LocalTorus

theorem PositivityTheory.Rg.BcB.CV.pf_LocTor : PositivityTheory.Rg.BcB.CV.LocTor := by
  intro n d hs
  exact ⟨GlobalTheory.CompanionTheory.LocVan.isClosed_twCent d, PositivityTheory.Rg.BcB.CV.LocalTorus.comm n d hs,
    GlobalTheory.CompanionTheory.LocVan.continuous_thC, GlobalTheory.CompanionTheory.LocVan.locallyCompact_GL n, GlobalTheory.CompanionTheory.LocVan.secondCountable_GL n⟩

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PLocTor =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.POneVanish =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.POneVanish", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.QuotVanish\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory PositivityTheory.Rg.Tf.Loc

namespace PositivityTheory.Rg.BcB.CV.FirstVanishingAlt

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4 PositivityTheory.Rg.BcB.CV

theorem twConj_mul_left {n : ℕ} (d t x : GL (Fin n) ℂ) (ht : t ∈ twCent (thC n) d) :
    twConj (thC n) (t * x) d = twConj (thC n) x d := by
  rw [mem_twCent] at ht
  simp only [twConj, map_mul]
  calc (t * x)⁻¹ * d * ((thC n) t * (thC n) x) = x⁻¹ * (t⁻¹ * d * (thC n) t) * (thC n) x := by group
    _ = x⁻¹ * d * (thC n) x := by rw [ht]

theorem sle_refl {m : ℕ} (e : Fin m → SignType) : SLe e e := fun _ _ => rfl

def zr {m : ℕ} (z : (Fin m → SignType) → ℝ) (s : Finset (Fin m → SignType)) : (Fin m → SignType) → ℝ :=
  fun e => if e ∈ s then z e else 0

theorem zr_insert {m : ℕ} (z y : (Fin m → SignType) → ℝ) {s : Finset (Fin m → SignType)} {e : Fin m → SignType}
    (he : e ∉ s) : y + zr z (insert e s) = Function.update (y + zr z s) e (y e + z e) := by
  funext e'
  by_cases h : e' = e
  · subst h; simp [zr]
  · simp [zr, h]

theorem zr_self {m : ℕ} (z y : (Fin m → SignType) → ℝ) {s : Finset (Fin m → SignType)} {e : Fin m → SignType}
    (he : e ∉ s) : y + zr z s = Function.update (y + zr z s) e (y e) := by
  funext e'
  by_cases h : e' = e
  · subst h; simp [zr, he]
  · simp [h]

theorem diff_step {m : ℕ} {V : ((Fin m → SignType) → ℝ) → ℂ} (hV : VP V) (z : (Fin m → SignType) → ℝ)
    (s : Finset (Fin m → SignType)) (e : Fin m → SignType) (he : e ∉ s) (y y' : (Fin m → SignType) → ℝ)
    (hyy : ∀ e', SLe e e' ∨ SLe e' e → y e' = y' e') :
    V (y + zr z (insert e s)) - V (y + zr z s) = V (y' + zr z (insert e s)) - V (y' + zr z s) := by
  have key : ∀ w : (Fin m → SignType) → ℝ, V (w + zr z (insert e s)) - V (w + zr z s) =
      V (Function.update (w + zr z s) e (w e + z e)) - V (Function.update (w + zr z s) e (w e)) := fun w => by
    rw [← zr_insert z w he, ← zr_self z w he]
  have hee : y e = y' e := hyy e (Or.inl (sle_refl e))
  rw [key y, key y', hee]
  exact hV.diff _ _ e _ _ (fun e' h => by simp only [Pi.add_apply, hyy e' h])

theorem good_V {n m : ℕ} [MeasurableSpace (GL (Fin n) ℂ)] [BorelSpace (GL (Fin n) ℂ)] {d : GL (Fin n) ℂ}
    {V : ((Fin m → SignType) → ℝ) → ℂ} {p : GL (Fin n) ℂ → (Fin m → SignType) → ℝ} (hV : VP V) (hL : LocFam d V p)
    (c : (Fin m → SignType) → ℝ) :
    Measurable (fun x => V (p x + c)) ∧ (∀ t ∈ twCent (thC n) d, ∀ x, V (p (t * x) + c) = V (p x + c)) ∧
      ∀ C : Set (GL (Fin n) ℂ), IsCompact C → ∃ B : ℝ, ∀ x ∈ C, ‖V (p x + c)‖ ≤ B := by
  refine ⟨hV.meas.comp (hL.cont.add continuous_const).measurable, fun t ht x => hL.tor t ht x c, fun C hC => ?_⟩
  obtain ⟨M, hM⟩ := hC.exists_bound_of_continuousOn (f := fun x => p x + c) (hL.cont.add continuous_const).continuousOn
  obtain ⟨B, hB⟩ := hV.bdd M
  refine ⟨B, fun x hx => hB _ fun e => ?_⟩
  have := (norm_le_pi_norm (p x + c) e).trans (hM x hx)
  rwa [Real.norm_eq_abs] at this

end PositivityTheory.Rg.BcB.CV.FirstVanishingAlt

open PositivityTheory.Rg.BcB.CV.FirstVanishingAlt in
theorem PositivityTheory.Rg.BcB.CV.pf_OneVanish : PositivityTheory.Rg.BcB.LocVanish → PositivityTheory.Rg.BcB.D4.LocProper → PositivityTheory.Rg.BcB.CV.LocTor → PositivityTheory.Rg.BcB.CV.QInt → PositivityTheory.Rg.BcB.CV.QAdd → PositivityTheory.Rg.BcB.CV.OneVanish := by
  intro hLV hLP hLT hQI hQA n m _ _ μ _ d ν _ _ f V p z hsep hf hfs hfc hV hL hz0
  obtain ⟨hTc, -, hθc, hlc, hsc⟩ := hLT n d hsep
  have := hlc
  have := hsc
  have htc : Continuous (fun x : GL (Fin n) ℂ => twConj (thC n) x d) := by
    unfold twConj
    exact (continuous_inv.mul continuous_const).mul hθc
  obtain ⟨Bf, hBf⟩ := hf.bounded_above_of_compact_support hfs
  obtain ⟨C', hC', hsub⟩ := hLP n d hsep (tsupport f) hfs
  obtain ⟨A, -, hAI⟩ := hQI (GL (Fin n) ℂ) μ (twCent (thC n) d) ν C' hTc hC'
  have fin : ∀ g : GL (Fin n) ℂ → ℂ, Measurable g → (∀ t ∈ twCent (thC n) d, ∀ x, g (t * x) = g x) →
      (∀ C : Set (GL (Fin n) ℂ), IsCompact C → ∃ B : ℝ, ∀ x ∈ C, ‖g x‖ ≤ B) →
      Measurable (fun x => f (twConj (thC n) x d) * g x) ∧
      quotLIntegral μ (twCent (thC n) d) ν (fun x => ‖f (twConj (thC n) x d) * g x‖ₑ) ≠ ⊤ := by
    intro g hgm hgT hgb
    obtain ⟨Bg, hBg⟩ := hgb C' hC'
    have hm : Measurable (fun x => f (twConj (thC n) x d) * g x) := (hf.comp htc).measurable.mul hgm
    refine ⟨hm, (hAI _ (max Bf 0 * max Bg 0) (mul_nonneg (le_max_right _ _) (le_max_right _ _)) hm ?_ ?_ ?_).1⟩
    · intro t ht x
      rw [twConj_mul_left d t x ht, hgT t ht x]
    · intro x hx
      exact hsub (show twConj (thC n) x d ∈ tsupport f from
        subset_tsupport f (Function.mem_support.2 (left_ne_zero_of_mul hx)))
    · intro x hx
      rw [norm_mul]
      exact mul_le_mul ((hBf _).trans (le_max_left _ _)) ((hBg x hx).trans (le_max_left _ _)) (norm_nonneg _)
        (le_max_right _ _)
  have goodsub : ∀ c c' : (Fin m → SignType) → ℝ, Measurable (fun x => V (p x + c) - V (p x + c')) ∧
      (∀ t ∈ twCent (thC n) d, ∀ x, V (p (t * x) + c) - V (p (t * x) + c') = V (p x + c) - V (p x + c')) ∧
      ∀ C : Set (GL (Fin n) ℂ), IsCompact C → ∃ B : ℝ, ∀ x ∈ C, ‖V (p x + c) - V (p x + c')‖ ≤ B := by
    intro c c'
    obtain ⟨h1, h2, h3⟩ := good_V hV hL c
    obtain ⟨h1', h2', h3'⟩ := good_V hV hL c'
    refine ⟨h1.sub h1', fun t ht x => by rw [h2 t ht x, h2' t ht x], fun C hC => ?_⟩
    obtain ⟨B, hB⟩ := h3 C hC
    obtain ⟨B', hB'⟩ := h3' C hC
    exact ⟨B + B', fun x hx => (norm_sub_le _ _).trans (add_le_add (hB x hx) (hB' x hx))⟩
  have h0int : quotIntegral μ (twCent (thC n) d) ν (fun _ => (0 : ℂ)) = 0 := by
    simpa using (hQA (GL (Fin n) ℂ) μ (twCent (thC n) d) ν).2.2 0 (fun _ => 0)
  have main : ∀ s : Finset (Fin m → SignType), quotIntegral μ (twCent (thC n) d) ν
      (fun x => f (twConj (thC n) x d) * (V (p x + zr z s) - V (p x + 0))) = 0 := by
    intro s
    refine Finset.induction_on s ?_ ?_
    · have h0 : zr z ∅ = 0 := by funext e; simp [zr]
      simp only [h0, sub_self, mul_zero]
      exact h0int
    · intro e s he ih
      have hFi := fin _ (goodsub (zr z (insert e s)) 0).1 (goodsub _ 0).2.1 (goodsub _ 0).2.2
      have hFs := fin _ (goodsub (zr z s) 0).1 (goodsub _ 0).2.1 (goodsub _ 0).2.2
      have hdiff : quotIntegral μ (twCent (thC n) d) ν
          (fun x => f (twConj (thC n) x d) * (V (p x + zr z (insert e s)) - V (p x + zr z s))) = 0 := by
        by_cases he0 : e = 0
        · subst he0
          have hzz : zr z (insert 0 s) = zr z s := by
            funext e'
            by_cases h : e' = 0
            · subst h; simp [zr, he, hz0]
            · simp [zr, h]
          simp only [hzz, sub_self, mul_zero]
          exact h0int
        · obtain ⟨W₁, W₂, ⟨hW1, hW12, hp1, hp2⟩, hnil⟩ := hL.nil e he0
          obtain ⟨hm, hTi, hb⟩ := goodsub (zr z (insert e s)) (zr z s)
          exact hLV n μ f (fun x => V (p x + zr z (insert e s)) - V (p x + zr z s)) d ν W₁ W₂ hf hfs hfc hsep
            hW1 hW12 hp1 hp2 hm hb (fun x k hk => by simp only [hL.cpt x k hk]) hTi
            (fun u hu x => diff_step hV z s e he _ _ (fun e' h => hnil u hu x e' h))
      have key : quotIntegral μ (twCent (thC n) d) ν
          (fun x => f (twConj (thC n) x d) * (V (p x + zr z (insert e s)) - V (p x + 0)) -
            f (twConj (thC n) x d) * (V (p x + zr z s) - V (p x + 0))) =
          quotIntegral μ (twCent (thC n) d) ν (fun x => f (twConj (thC n) x d) * (V (p x + zr z (insert e s)) - V (p x + 0))) -
          quotIntegral μ (twCent (thC n) d) ν (fun x => f (twConj (thC n) x d) * (V (p x + zr z s) - V (p x + 0))) :=
        (hQA (GL (Fin n) ℂ) μ (twCent (thC n) d) ν).2.1 _ _ hFi.1 hFs.1 hFi.2 hFs.2
      have hfun : (fun x => f (twConj (thC n) x d) * (V (p x + zr z (insert e s)) - V (p x + 0)) -
            f (twConj (thC n) x d) * (V (p x + zr z s) - V (p x + 0))) =
          fun x => f (twConj (thC n) x d) * (V (p x + zr z (insert e s)) - V (p x + zr z s)) := by
        funext x; ring
      rw [hfun, hdiff, ih, sub_zero] at key
      exact key.symm
  have hu : zr z Finset.univ = z := by funext e; simp [zr]
  have := main Finset.univ
  rw [hu] at this
  simpa using this
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.POneVanish =====

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ProdE =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ProdE", "h": "module\n\npublic import Mathlib.Algebra.Group.Subgroup.Basic\npublic import Mathlib.Topology.Algebra.ContinuousMonoidHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Topology.Constructions\n\n"}
section -- clump:auto
@[expose] public section

noncomputable def UpperTheory.Reformulated.B.DaGva8.prodE :
    {G₁ G₂ : Type} →
      [inst : Group G₁] →
        [inst_1 : TopologicalSpace G₁] →
          [inst_2 : Group G₂] →
            [inst_3 : TopologicalSpace G₂] → (T₁ : Subgroup G₁) → (T₂ : Subgroup G₂) → ↥T₁ × ↥T₂ ≃ₜ* ↥(T₁.prod T₂) :=
  fun {_ _} _ _ _ _ T₁ T₂ =>
    { toFun := fun x => ⟨(x.1.1, x.2.1), x.1.2, x.2.2⟩
      invFun := fun y => (⟨y.1.1, y.2.1⟩, ⟨y.1.2, y.2.2⟩)
      left_inv := fun _ => rfl
      right_inv := fun _ => rfl
      map_mul' := fun _ _ => rfl
      continuous_toFun :=
        ((continuous_subtype_val.comp continuous_fst).prodMk
          (continuous_subtype_val.comp continuous_snd)).subtype_mk _
      continuous_invFun :=
        ((continuous_fst.comp continuous_subtype_val).subtype_mk _).prodMk
          ((continuous_snd.comp continuous_subtype_val).subtype_mk _) }
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ProdE =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PQProd =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PQProd", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ProdE\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory PositivityTheory.Rg.Tf.Loc

namespace PositivityTheory.Rg.BcB.CV.QuotientProduct

theorem exists_haar_inv (H : Type) [Group H] [TopologicalSpace H] [IsTopologicalGroup H]
    [LocallyCompactSpace H] [SecondCountableTopology H] [MeasurableSpace H] [BorelSpace H]
    (hc : ∀ a b : H, a * b = b * a) : ∃ ν : Measure H, ν.IsHaarMeasure ∧ ν.IsInvInvariant := by
  let inst : CommGroup H := { (inferInstance : Group H) with mul_comm := hc }
  exact ⟨Measure.haar, inferInstance,
    @Measure.IsHaarMeasure.isInvInvariant_of_regular H inst _ _ _ _ Measure.haar _ _ _⟩

noncomputable def prodE {G₁ G₂ : Type} [Group G₁] [TopologicalSpace G₁] [Group G₂] [TopologicalSpace G₂]
    (T₁ : Subgroup G₁) (T₂ : Subgroup G₂) : T₁ × T₂ ≃ₜ* T₁.prod T₂ :=
  _root_.UpperTheory.Reformulated.B.DaGva8.prodE T₁ T₂

def swapE (G₁ G₂ : Type) [Group G₁] [TopologicalSpace G₁] [Group G₂] [TopologicalSpace G₂] :
    G₁ × G₂ ≃ₜ* G₂ × G₁ where
  toFun := Prod.swap
  invFun := Prod.swap
  left_inv _ := rfl
  right_inv _ := rfl
  map_mul' _ _ := rfl
  continuous_toFun := continuous_swap
  continuous_invFun := continuous_swap

theorem isClosed_prod {G₁ G₂ : Type} [Group G₁] [TopologicalSpace G₁] [Group G₂] [TopologicalSpace G₂]
    {T₁ : Subgroup G₁} {T₂ : Subgroup G₂} (h₁ : IsClosed (T₁ : Set G₁)) (h₂ : IsClosed (T₂ : Set G₂)) :
    IsClosed ((T₁.prod T₂ : Subgroup (G₁ × G₂)) : Set (G₁ × G₂)) := by
  rw [Subgroup.coe_prod]; exact h₁.prod h₂

theorem left (hQP : PositivityTheory.Rg.BcB.D4.QuotProd) (hQM : QMap)
    (G₁ : Type) [Group G₁] [TopologicalSpace G₁] [IsTopologicalGroup G₁] [LocallyCompactSpace G₁] [T2Space G₁]
    [SecondCountableTopology G₁] [MeasurableSpace G₁] [BorelSpace G₁]
    (G₂ : Type) [Group G₂] [TopologicalSpace G₂] [IsTopologicalGroup G₂] [LocallyCompactSpace G₂] [T2Space G₂]
    [SecondCountableTopology G₂] [MeasurableSpace G₂] [BorelSpace G₂] (μ₁ : Measure G₁) [μ₁.IsHaarMeasure]
    (μ₂ : Measure G₂) [μ₂.IsHaarMeasure]
    (T₁ : Subgroup G₁) (T₂ : Subgroup G₂) (ν : Measure (T₁.prod T₂)) [ν.IsHaarMeasure] [ν.IsInvInvariant]
    (F : G₁ × G₂ → ℂ) (hT₁ : IsClosed (T₁ : Set G₁)) (hT₂ : IsClosed (T₂ : Set G₂))
    (hc₁ : ∀ s ∈ T₁, ∀ t ∈ T₁, s * t = t * s) (hc₂ : ∀ s ∈ T₂, ∀ t ∈ T₂, s * t = t * s)
    (hF : Measurable F) (hFT : ∀ t ∈ T₁.prod T₂, ∀ x, F (t * x) = F x)
    (h : ∀ (ν₁ : Measure T₁) [ν₁.IsHaarMeasure] [ν₁.IsInvInvariant] x₂,
      quotIntegral μ₁ T₁ ν₁ (fun x₁ => F (x₁, x₂)) = 0) :
    quotIntegral (μ₁.prod μ₂) (T₁.prod T₂) ν F = 0 := by
  have : LocallyCompactSpace T₁ := hT₁.locallyCompactSpace
  have : LocallyCompactSpace T₂ := hT₂.locallyCompactSpace
  have : SecondCountableTopology T₁ := inferInstanceAs (SecondCountableTopology (T₁ : Set G₁))
  have : SecondCountableTopology T₂ := inferInstanceAs (SecondCountableTopology (T₂ : Set G₂))
  obtain ⟨ν₁, _, _⟩ := exists_haar_inv T₁ (fun a b => Subtype.ext (hc₁ a a.2 b b.2))
  obtain ⟨ν₂, _, _⟩ := exists_haar_inv T₂ (fun a b => Subtype.ext (hc₂ a a.2 b b.2))
  set E := prodE T₁ T₂
  have hE : Measurable E := E.continuous.measurable
  have hinvP : Measure.map Inv.inv (ν₁.prod ν₂) = ν₁.prod ν₂ := by
    have : (Inv.inv : T₁ × T₂ → T₁ × T₂) = Prod.map Inv.inv Inv.inv := rfl
    rw [this, ← Measure.map_prod_map _ _ continuous_inv.measurable continuous_inv.measurable,
      Measure.map_inv_eq_self, Measure.map_inv_eq_self]
  have : (Measure.map E (ν₁.prod ν₂)).IsInvInvariant := by
    constructor
    show Measure.map Inv.inv (Measure.map E (ν₁.prod ν₂)) = Measure.map E (ν₁.prod ν₂)
    rw [Measure.map_map continuous_inv.measurable hE]
    have : (Inv.inv ∘ ⇑E) = ⇑E ∘ Inv.inv := funext fun p => (map_inv E p).symm
    rw [this, ← Measure.map_map hE continuous_inv.measurable, hinvP]
  have hmap : (Measure.map E (ν₁.prod ν₂)).map
      (fun t : T₁.prod T₂ => ((⟨t.1.1, (Subgroup.mem_prod.1 t.2).1⟩, ⟨t.1.2, (Subgroup.mem_prod.1 t.2).2⟩) : T₁ × T₂)) =
      ν₁.prod ν₂ := by
    have : (fun t : T₁.prod T₂ => ((⟨t.1.1, (Subgroup.mem_prod.1 t.2).1⟩, ⟨t.1.2, (Subgroup.mem_prod.1 t.2).2⟩) : T₁ × T₂))
      = ⇑E.symm := rfl
    rw [this, Measure.map_map (show Measurable ⇑E.symm from E.symm.continuous.measurable) hE]
    have : (⇑E.symm ∘ ⇑E) = id := funext fun p => E.symm_apply_apply p
    rw [this, Measure.map_id]
  have h0 := hQP G₁ G₂ μ₁ μ₂ T₁ T₂ ν₁ ν₂ (Measure.map E (ν₁.prod ν₂)) F hF hmap hFT (fun x₂ => h ν₁ x₂)
  refine hQM (G₁ × G₂) (G₁ × G₂) (ContinuousMulEquiv.refl _) (μ₁.prod μ₂) (μ₁.prod μ₂) (T₁.prod T₂) (T₁.prod T₂)
    ν (Measure.map E (ν₁.prod ν₂)) F (isClosed_prod hT₁ hT₂) ?_ hF hFT h0
  ext x
  constructor
  · rintro ⟨y, hy, rfl⟩; exact hy
  · intro hx; exact ⟨x, hx, rfl⟩

end PositivityTheory.Rg.BcB.CV.QuotientProduct

namespace PositivityTheory.Rg.BcB.CV

open QuotientProduct in
theorem pf_QProd : PositivityTheory.Rg.BcB.D4.QuotProd → PositivityTheory.Rg.BcB.CV.QMap → PositivityTheory.Rg.BcB.CV.QProd := by
  intro hQP hQM G₁ _ _ _ _ _ _ _ _ G₂ _ _ _ _ _ _ _ _ μ₁ _ μ₂ _ T₁ T₂ ν _ _ F hT₁ hT₂ hc₁ hc₂ hF hFT hcase
  rcases hcase with h | h
  · exact left hQP hQM G₁ G₂ μ₁ μ₂ T₁ T₂ ν F hT₁ hT₂ hc₁ hc₂ hF hFT h
  · have hcl := isClosed_prod hT₂ hT₁
    have : LocallyCompactSpace (T₂.prod T₁) := hcl.locallyCompactSpace
    have : SecondCountableTopology (T₂.prod T₁) :=
      inferInstanceAs (SecondCountableTopology ((T₂.prod T₁ : Subgroup (G₂ × G₁)) : Set (G₂ × G₁)))
    obtain ⟨ν', _, _⟩ := exists_haar_inv (T₂.prod T₁) (fun a b => Subtype.ext (Prod.ext
      (hc₂ _ (Subgroup.mem_prod.1 a.2).1 _ (Subgroup.mem_prod.1 b.2).1)
      (hc₁ _ (Subgroup.mem_prod.1 a.2).2 _ (Subgroup.mem_prod.1 b.2).2)))
    set S := swapE G₁ G₂
    have hFT' : ∀ t ∈ T₂.prod T₁, ∀ x, F (S.symm (t * x)) = F (S.symm x) := by
      intro t ht x
      rw [map_mul]
      exact hFT _ (Subgroup.mem_prod.2 ⟨(Subgroup.mem_prod.1 ht).2, (Subgroup.mem_prod.1 ht).1⟩) _
    have h0 := left hQP hQM G₂ G₁ μ₂ μ₁ T₂ T₁ ν' (fun y => F (S.symm y)) hT₂ hT₁ hc₂ hc₁
      (hF.comp S.symm.continuous.measurable) hFT' (fun ν₂ _ _ x₁ => h ν₂ x₁)
    refine hQM (G₁ × G₂) (G₂ × G₁) S (μ₁.prod μ₂) (μ₂.prod μ₁) (T₁.prod T₂) (T₂.prod T₁)
      ν ν' F (isClosed_prod hT₁ hT₂) ?_ hF hFT h0
    ext ⟨a, b⟩
    simp only [Subgroup.mem_map, Subgroup.mem_prod]
    constructor
    · rintro ⟨⟨x, y⟩, ⟨hx, hy⟩, hxy⟩
      change (y, x) = (a, b) at hxy
      simp only [Prod.mk.injEq] at hxy
      obtain ⟨rfl, rfl⟩ := hxy
      exact ⟨hy, hx⟩
    · rintro ⟨ha, hb⟩
      exact ⟨(b, a), ⟨hb, ha⟩, rfl⟩

end PositivityTheory.Rg.BcB.CV
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PQProd =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PTwoVanish =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PTwoVanish", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.QuotVanish\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix MeasureTheory
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.Tf.Loc
open scoped Pointwise

namespace PositivityTheory.Rg.BcB.CV.SecondVanishing

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4 PositivityTheory.Rg.BcB.CV

theorem hcs_left {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space Y]
    {f : X × Y → ℂ} (hf : HasCompactSupport f) (g : X) : HasCompactSupport fun y => f (g, y) := by
  refine HasCompactSupport.intro (IsCompact.image hf continuous_snd) fun y hy => ?_
  by_contra h
  exact hy ⟨(g, y), subset_tsupport _ (Function.mem_support.2 h), rfl⟩

theorem hcs_right {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y] [T2Space X]
    {f : X × Y → ℂ} (hf : HasCompactSupport f) (g : Y) : HasCompactSupport fun y => f (y, g) := by
  refine HasCompactSupport.intro (IsCompact.image hf continuous_fst) fun y hy => ?_
  by_contra h
  exact hy ⟨(y, g), subset_tsupport _ (Function.mem_support.2 h), rfl⟩

theorem vp_bdd_on {X : Type*} [TopologicalSpace X] {m : ℕ} {V : ((Fin m → SignType) → ℝ) → ℂ} (hV : VP V)
    {q : X → (Fin m → SignType) → ℝ} (hq : Continuous q) {K : Set X} (hK : IsCompact K) :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ x ∈ K, ‖V (q x)‖ ≤ B := by
  obtain ⟨R, hR⟩ := hK.exists_bound_of_continuousOn hq.continuousOn
  obtain ⟨B, hB⟩ := hV.bdd R
  refine ⟨max B 0, le_max_right _ _, fun x hx => (hB (q x) fun e => ?_).trans (le_max_left _ _)⟩
  rw [← Real.norm_eq_abs]
  exact (norm_le_pi_norm (q x) e).trans (hR x hx)

theorem tor2 {n m : ℕ} {d₁ d₂ : GL (Fin n) ℂ} {V : ((Fin m → SignType) → ℝ) → ℂ}
    {p₁ p₂ : GL (Fin n) ℂ → (Fin m → SignType) → ℝ} (h₁ : LocFam d₁ V p₁) (h₂ : LocFam d₂ V p₂)
    {t₁ t₂ : GL (Fin n) ℂ} (ht₁ : t₁ ∈ twCent (thC n) d₁) (ht₂ : t₂ ∈ twCent (thC n) d₂) (x₁ x₂ : GL (Fin n) ℂ)
    (z : (Fin m → SignType) → ℝ) : V (p₁ (t₁ * x₁) + p₂ (t₂ * x₂) + z) = V (p₁ x₁ + p₂ x₂ + z) := by
  rw [add_assoc, h₁.tor t₁ ht₁, add_left_comm (p₁ x₁), h₂.tor t₂ ht₂, add_left_comm (p₂ x₂), ← add_assoc]

end PositivityTheory.Rg.BcB.CV.SecondVanishing

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4 PositivityTheory.Rg.BcB.CV PositivityTheory.Rg.BcB.CV.SecondVanishing in
theorem PositivityTheory.Rg.BcB.CV.pf_TwoVanish : PositivityTheory.Rg.BcB.LocVanish → PositivityTheory.Rg.BcB.D4.LocProper → PositivityTheory.Rg.BcB.CV.LocTor → PositivityTheory.Rg.BcB.CV.QInt → PositivityTheory.Rg.BcB.CV.QAdd → PositivityTheory.Rg.BcB.CV.QProd → PositivityTheory.Rg.BcB.CV.OneVanish → PositivityTheory.Rg.BcB.CV.TwoVanish := by
  intro hLV hLP hLT hQI hQA hQP hOV n m _ _ μ _ d₁ d₂ ν _ _ f V p₁ p₂ z hm hd₁ hd₂ hfc hfs hcu₁ hcu₂ hV hF₁ hF₂ hz
  obtain ⟨hcl₁, hcomm₁, hθ, hlc, hsc⟩ := hLT n d₁ hd₁
  obtain ⟨hcl₂, hcomm₂, -, -, -⟩ := hLT n d₂ hd₂
  have := hlc
  have := hsc
  have hc₁ : Continuous fun x => twConj (thC n) x d₁ := by
    show Continuous fun x => x⁻¹ * d₁ * thC n x
    exact (continuous_inv.mul continuous_const).mul hθ
  have hc₂ : Continuous fun x => twConj (thC n) x d₂ := by
    show Continuous fun x => x⁻¹ * d₂ * thC n x
    exact (continuous_inv.mul continuous_const).mul hθ
  have hΦc : Continuous fun x : GL (Fin n) ℂ × GL (Fin n) ℂ => f (twConj (thC n) x.1 d₁, twConj (thC n) x.2 d₂) :=
    hfc.comp ((hc₁.comp continuous_fst).prodMk (hc₂.comp continuous_snd))
  have hΦinv : ∀ t ∈ (twCent (thC n) d₁).prod (twCent (thC n) d₂), ∀ x : GL (Fin n) ℂ × GL (Fin n) ℂ,
      f (twConj (thC n) (t * x).1 d₁, twConj (thC n) (t * x).2 d₂) = f (twConj (thC n) x.1 d₁, twConj (thC n) x.2 d₂) := by
    intro t ht x
    rw [Prod.fst_mul, Prod.snd_mul, twConj_mul_left _ _ (Subgroup.mem_prod.1 ht).1,
      twConj_mul_left _ _ (Subgroup.mem_prod.1 ht).2]
  obtain ⟨C₁, hC₁, hsub₁⟩ := hLP n d₁ hd₁ (Prod.fst '' tsupport f) (IsCompact.image hfs continuous_fst)
  obtain ⟨C₂, hC₂, hsub₂⟩ := hLP n d₂ hd₂ (Prod.snd '' tsupport f) (IsCompact.image hfs continuous_snd)
  obtain ⟨Bf, hBf⟩ := hfc.bounded_above_of_compact_support hfs
  have hBf0 : 0 ≤ Bf := (norm_nonneg _).trans (hBf (1, 1))
  have hclosed : IsClosed (((twCent (thC n) d₁).prod (twCent (thC n) d₂) : Subgroup _) :
      Set (GL (Fin n) ℂ × GL (Fin n) ℂ)) := by
    rw [Subgroup.coe_prod]; exact hcl₁.prod hcl₂
  obtain ⟨A₀, -, hA₀⟩ := hQI (GL (Fin n) ℂ × GL (Fin n) ℂ) (μ.prod μ) ((twCent (thC n) d₁).prod (twCent (thC n) d₂)) ν
    (C₁ ×ˢ C₂) hclosed (hC₁.prod hC₂)
  have hint : ∀ h : GL (Fin n) ℂ × GL (Fin n) ℂ → ℂ, Measurable h →
      (∀ t ∈ (twCent (thC n) d₁).prod (twCent (thC n) d₂), ∀ x, h (t * x) = h x) →
      (∃ B : ℝ, 0 ≤ B ∧ ∀ x ∈ C₁ ×ˢ C₂, ‖h x‖ ≤ B) →
      quotLIntegral (μ.prod μ) ((twCent (thC n) d₁).prod (twCent (thC n) d₂)) ν
        (fun x => ‖f (twConj (thC n) x.1 d₁, twConj (thC n) x.2 d₂) * h x‖ₑ) ≠ ⊤ := by
    intro h hm hinv ⟨B, hB0, hB⟩
    refine (hA₀ (fun x => f (twConj (thC n) x.1 d₁, twConj (thC n) x.2 d₂) * h x) (Bf * B) (mul_nonneg hBf0 hB0)
      (hΦc.measurable.mul hm) (fun t ht x => by rw [hΦinv t ht x, hinv t ht x]) ?_ ?_).1
    · intro x hx
      have hfx : f (twConj (thC n) x.1 d₁, twConj (thC n) x.2 d₂) ≠ 0 := left_ne_zero_of_mul hx
      have hts : (twConj (thC n) x.1 d₁, twConj (thC n) x.2 d₂) ∈ tsupport f :=
        subset_tsupport _ (Function.mem_support.2 hfx)
      obtain ⟨a₁, ha₁, b₁, hb₁, e₁⟩ := Set.mem_mul.1 (hsub₁ (show twConj (thC n) x.1 d₁ ∈ Prod.fst '' tsupport f from ⟨_, hts, rfl⟩))
      obtain ⟨a₂, ha₂, b₂, hb₂, e₂⟩ := Set.mem_mul.1 (hsub₂ (show twConj (thC n) x.2 d₂ ∈ Prod.snd '' tsupport f from ⟨_, hts, rfl⟩))
      exact Set.mem_mul.2 ⟨(a₁, a₂), Subgroup.mem_prod.2 ⟨ha₁, ha₂⟩, (b₁, b₂), ⟨hb₁, hb₂⟩, Prod.ext e₁ e₂⟩
    · intro x hx
      rw [norm_mul]
      exact mul_le_mul (hBf _) (hB x hx) (norm_nonneg _) hBf0
  have hq : Continuous fun x : GL (Fin n) ℂ × GL (Fin n) ℂ => p₁ x.1 + p₂ x.2 + z :=
    ((hF₁.cont.comp continuous_fst).add (hF₂.cont.comp continuous_snd)).add continuous_const
  have hq' : Continuous fun x : GL (Fin n) ℂ × GL (Fin n) ℂ => p₁ x.1 := hF₁.cont.comp continuous_fst
  have hmF : Measurable fun x : GL (Fin n) ℂ × GL (Fin n) ℂ => V (p₁ x.1 + p₂ x.2 + z) := hV.meas.comp hq.measurable
  have hmB : Measurable fun x : GL (Fin n) ℂ × GL (Fin n) ℂ => V (p₁ x.1) := hV.meas.comp hq'.measurable
  have hiF : ∀ t ∈ (twCent (thC n) d₁).prod (twCent (thC n) d₂), ∀ x : GL (Fin n) ℂ × GL (Fin n) ℂ,
      V (p₁ (t * x).1 + p₂ (t * x).2 + z) = V (p₁ x.1 + p₂ x.2 + z) := fun t ht x =>
    tor2 hF₁ hF₂ (Subgroup.mem_prod.1 ht).1 (Subgroup.mem_prod.1 ht).2 x.1 x.2 z
  have hiB : ∀ t ∈ (twCent (thC n) d₁).prod (twCent (thC n) d₂), ∀ x : GL (Fin n) ℂ × GL (Fin n) ℂ,
      V (p₁ (t * x).1) = V (p₁ x.1) := fun t ht x => by
    simpa using hF₁.tor t.1 (Subgroup.mem_prod.1 ht).1 x.1 0
  have hIF := hint _ hmF hiF (vp_bdd_on hV hq (hC₁.prod hC₂))
  have hIB := hint _ hmB hiB (vp_bdd_on hV hq' (hC₁.prod hC₂))
  have hsplit := (hQA (GL (Fin n) ℂ × GL (Fin n) ℂ) (μ.prod μ) ((twCent (thC n) d₁).prod (twCent (thC n) d₂)) ν).2.1
    (fun x => f (twConj (thC n) x.1 d₁, twConj (thC n) x.2 d₂) * V (p₁ x.1 + p₂ x.2 + z))
    (fun x => f (twConj (thC n) x.1 d₁, twConj (thC n) x.2 d₂) * V (p₁ x.1))
    (hΦc.measurable.mul hmF) (hΦc.measurable.mul hmB) hIF hIB

  have hA : quotIntegral (μ.prod μ) ((twCent (thC n) d₁).prod (twCent (thC n) d₂)) ν
      (fun x => f (twConj (thC n) x.1 d₁, twConj (thC n) x.2 d₂) * V (p₁ x.1 + p₂ x.2 + z) -
        f (twConj (thC n) x.1 d₁, twConj (thC n) x.2 d₂) * V (p₁ x.1)) = 0 := by
    refine hQP _ _ μ μ _ _ ν _ hcl₁ hcl₂ hcomm₁ hcomm₂
      ((hΦc.measurable.mul hmF).sub (hΦc.measurable.mul hmB))
      (fun t ht x => by simp only [hΦinv t ht x, hiF t ht x, hiB t ht x]) (Or.inl fun ν₁ _ _ x₂ => ?_)
    have h1 := hOV n m μ d₁ ν₁ (fun y => f (y, twConj (thC n) x₂ d₂)) V p₁ (p₂ x₂ + z) hd₁
      (hfc.comp (continuous_id.prodMk continuous_const)) (hcs_right hfs _) (hcu₁ _) hV hF₁
      (by rw [Pi.add_apply, hF₂.zero, hz, add_zero])
    calc _ = quotIntegral μ (twCent (thC n) d₁) ν₁ (fun x => f (twConj (thC n) x d₁, twConj (thC n) x₂ d₂) *
          (V (p₁ x + (p₂ x₂ + z)) - V (p₁ x))) := by
          congr 1; funext x; dsimp only; rw [add_assoc]; ring
      _ = 0 := h1

  have hB : quotIntegral (μ.prod μ) ((twCent (thC n) d₁).prod (twCent (thC n) d₂)) ν
      (fun x => f (twConj (thC n) x.1 d₁, twConj (thC n) x.2 d₂) * V (p₁ x.1)) = 0 := by
    refine hQP _ _ μ μ _ _ ν _ hcl₁ hcl₂ hcomm₁ hcomm₂ (hΦc.measurable.mul hmB)
      (fun t ht x => by simp only [hΦinv t ht x, hiB t ht x]) (Or.inr fun ν₂ _ _ x₁ => ?_)
    have hne : (fun _ : Fin m => (1 : SignType)) ≠ 0 := by
      intro h
      have := congrFun h ⟨0, Nat.pos_of_ne_zero hm⟩
      simp at this
    obtain ⟨W₁, W₂, hW, -⟩ := hF₂.nil _ hne
    have h1 := hLV n μ (fun y => f (twConj (thC n) x₁ d₁, y)) (fun _ => 1) d₂ ν₂ W₁ W₂
      (hfc.comp (continuous_const.prodMk continuous_id)) (hcs_left hfs _) (hcu₂ _) hd₂ hW.1 hW.2.1 hW.2.2.1 hW.2.2.2
      measurable_const (fun _ _ => ⟨1, fun _ _ => by simp⟩) (fun _ _ _ => rfl) (fun _ _ _ => rfl) (fun _ _ _ => rfl)
    calc _ = quotIntegral μ (twCent (thC n) d₂) ν₂ (fun x => V (p₁ x₁) *
          (f (twConj (thC n) x₁ d₁, twConj (thC n) x d₂) * (fun _ => (1 : ℂ)) x)) := by
          congr 1; funext x; dsimp only; ring
      _ = V (p₁ x₁) * quotIntegral μ (twCent (thC n) d₂) ν₂ (fun x =>
          f (twConj (thC n) x₁ d₁, twConj (thC n) x d₂) * (fun _ => (1 : ℂ)) x) := (hQA _ μ _ ν₂).2.2 _ _
      _ = 0 := by rw [h1, mul_zero]
  rw [hA, hB] at hsplit
  linear_combination -hsplit
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PTwoVanish =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PfQMap =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PfQMap", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.QuotVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory PositivityTheory.Rg.Tf.Loc
open scoped ENNReal NNReal

noncomputable section

namespace PositivityTheory.Rg.BcB.CV.QuotientMapAlt

def subEquiv {G G' : Type} [Group G] [TopologicalSpace G] [Group G'] [TopologicalSpace G']
    (e : G ≃ₜ* G') (T : Subgroup G) : T ≃ₜ* T.map e.toMonoidHom where
  toFun t := ⟨e t, Subgroup.mem_map.2 ⟨t, t.2, rfl⟩⟩
  invFun t := ⟨e.symm t, by
    obtain ⟨s, hs, hst⟩ := Subgroup.mem_map.1 t.2
    have h : e.symm (t : G') = s := by
      rw [← hst]
      exact e.symm_apply_apply s
    rw [h]
    exact hs⟩
  left_inv t := Subtype.ext (e.symm_apply_apply (t : G))
  right_inv t := Subtype.ext (e.apply_symm_apply (t : G'))
  map_mul' s t := Subtype.ext (map_mul e (s : G) (t : G))
  continuous_toFun := (e.continuous.comp continuous_subtype_val).subtype_mk _
  continuous_invFun := (e.symm.continuous.comp continuous_subtype_val).subtype_mk _

end PositivityTheory.Rg.BcB.CV.QuotientMapAlt

open PositivityTheory.Rg.BcB.CV.QuotientMapAlt in
theorem PositivityTheory.Rg.BcB.CV.pf_QMap : PositivityTheory.Rg.BcB.D4.NormEq → PositivityTheory.Rg.BcB.CV.QMap := by
  intro hN G _ _ _ _ _ _ _ _ G' _ _ _ _ _ _ _ _ e μ _ μ' _ T T' ν _ _ ν' _ _ F hTc hT hF hFT h0
  subst hT
  have hT'c : IsClosed ((T.map e.toMonoidHom : Subgroup G') : Set G') := by
    rw [Subgroup.coe_map]
    exact e.toHomeomorph.isClosedMap _ hTc
  have : SecondCountableTopology T := inferInstanceAs (SecondCountableTopology (T : Set G))
  have : SecondCountableTopology (T.map e.toMonoidHom) :=
    inferInstanceAs (SecondCountableTopology ((T.map e.toMonoidHom : Subgroup G') : Set G'))
  have : LocallyCompactSpace T := hTc.locallyCompactSpace
  have : LocallyCompactSpace (T.map e.toMonoidHom) := hT'c.locallyCompactSpace
  by_cases hex : ∃ ρ, IsQuotNormaliser T ν ρ
  swap
  · rw [quotIntegral, dite_eq_right hex]
  rw [quotIntegral, dite_eq_left hex]
  have hρ : IsQuotNormaliser T ν hex.choose := hex.choose_spec
  set ρ := hex.choose

  let φ := subEquiv e T
  let c : ℝ≥0 := Measure.haarScalarFactor (Measure.map φ.symm ν') ν
  have hc : Measure.map φ.symm ν' = c • ν := Measure.isMulLeftInvariant_eq_smul _ _
  have hc0 : (0 : ℝ≥0) < c := Measure.haarScalarFactor_pos_of_isHaarMeasure _ _
  have hcne : (c : ℝ≥0∞) ≠ 0 := by exact_mod_cast hc0.ne'
  let ρ' : G' → ℝ≥0∞ := fun x => (c : ℝ≥0∞)⁻¹ * ρ (e.symm x)
  have hρ' : IsQuotNormaliser (T.map e.toMonoidHom) ν' ρ' := by
    refine ⟨measurable_const.mul (hρ.1.comp e.symm.continuous.measurable), fun x => ?_⟩
    have hk : Measurable fun t : T => ρ ((t : G) * e.symm x) :=
      hρ.1.comp (measurable_subtype_coe.mul_const _)
    have h1 : ∫⁻ h : T.map e.toMonoidHom, ρ' ((h : G') * x) ∂ν' =
        (c : ℝ≥0∞)⁻¹ * ∫⁻ t, ρ ((t : G) * e.symm x) ∂(Measure.map φ.symm ν') := by
      rw [lintegral_map hk (show Measurable (⇑φ.symm) from φ.symm.continuous.measurable),
        ← lintegral_const_mul' _ _ (ENNReal.inv_ne_top.2 hcne)]
      refine lintegral_congr fun h => ?_
      show (c : ℝ≥0∞)⁻¹ * ρ (e.symm ((h : G') * x)) = _
      rw [map_mul]
      rfl
    rw [h1, hc, lintegral_smul_measure, hρ.2, ENNReal.smul_def, smul_eq_mul, mul_one]
    exact ENNReal.inv_mul_cancel hcne ENNReal.coe_ne_top

  let eM : G' ≃ᵐ G := e.symm.toHomeomorph.toMeasurableEquiv
  have hH : (Measure.map eM μ').IsHaarMeasure :=
    (inferInstance : (Measure.map e.symm μ').IsHaarMeasure)
  let a : ℝ≥0 := Measure.haarScalarFactor (Measure.map eM μ') μ
  have ha : Measure.map eM μ' = a • μ := Measure.isMulLeftInvariant_eq_smul _ _
  have ha0 : (0 : ℝ≥0) < a := Measure.haarScalarFactor_pos_of_isHaarMeasure _ _
  have hF' : Measurable fun x => F (e.symm x) := hF.comp e.symm.continuous.measurable
  have hFT' : ∀ h ∈ T.map e.toMonoidHom, ∀ x, F (e.symm (h * x)) = F (e.symm x) := by
    intro h hh x
    obtain ⟨t, ht, rfl⟩ := Subgroup.mem_map.1 hh
    show F (e.symm (e t * x)) = _
    rw [map_mul, e.symm_apply_apply]
    exact hFT t ht _
  have hex' : ∃ ρ, IsQuotNormaliser (T.map e.toMonoidHom) ν' ρ := ⟨ρ', hρ'⟩
  rw [quotIntegral, dite_eq_left hex', hN G' μ' _ ν' _ _ ρ' hF' hFT' hex'.choose_spec hρ'] at h0
  have key : a • ∫ g, F g * ((((c : ℝ≥0∞)⁻¹ * ρ g).toReal : ℝ) : ℂ) ∂μ = 0 := by
    rw [← integral_smul_nnreal_measure, ← ha, integral_map_equiv]
    exact h0
  have key2 : ∫ g, F g * ((((c : ℝ≥0∞)⁻¹ * ρ g).toReal : ℝ) : ℂ) ∂μ = 0 := by
    have := congrArg (fun z : ℂ => (a⁻¹ : ℝ≥0) • z) key
    simpa [smul_smul, inv_mul_cancel₀ ha0.ne'] using this
  have hcr : ((c : ℝ≥0∞)⁻¹).toReal ≠ 0 :=
    ENNReal.toReal_ne_zero.2 ⟨ENNReal.inv_ne_zero.2 ENNReal.coe_ne_top, ENNReal.inv_ne_top.2 hcne⟩
  have key3 : ∫ g, F g * ((((c : ℝ≥0∞)⁻¹ * ρ g).toReal : ℝ) : ℂ) ∂μ =
      (((c : ℝ≥0∞)⁻¹).toReal : ℂ) * ∫ g, F g * (((ρ g).toReal : ℝ) : ℂ) ∂μ := by
    rw [← integral_const_mul]
    refine integral_congr_ae (Filter.Eventually.of_forall fun g => ?_)
    simp only [ENNReal.toReal_mul, Complex.ofReal_mul]
    ring
  rw [key3] at key2
  exact (mul_eq_zero.1 key2).resolve_left (by exact_mod_cast hcr)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PfQMap =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.QuotIntegralMulRight =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.QuotIntegralMulRight", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.OneVanish\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.QuotVanish\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory PositivityTheory.Rg.Tf.Loc
open scoped ENNReal

namespace PositivityTheory.Rg.BcB.CV.VolumeFunction

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4

theorem gam_abs_le {m : ℕ} (y : (Fin m → SignType) → ℝ) (a : Fin m → ℝ) :
    |gam y a| ≤ (Fintype.card (Finset (Fin m → SignType)) : ℝ) := by
  classical
  unfold gam gamOn
  refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
  refine (Finset.sum_le_card_nsmul _ _ 1 ?_).trans ?_
  · intro s _
    rw [abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul, Finset.abs_prod]
    exact Finset.prod_le_one₀ (fun _ _ => abs_nonneg _) (fun e _ => by split_ifs <;> simp)
  · rw [nsmul_eq_mul, mul_one]
    exact_mod_cast Finset.card_le_univ _

theorem map_count_equiv {H : Type*} [MeasurableSpace H] [MeasurableSingletonClass H] [Countable H]
    (e : H ≃ H) : Measure.map e (Measure.count : Measure H) = Measure.count := by
  ext s hs
  rw [Measure.map_apply (measurable_of_countable _) hs]
  have h : e ⁻¹' s = e.symm '' s := Set.ext fun x => ⟨fun hx => ⟨e x, hx, e.symm_apply_apply x⟩, by
    rintro ⟨y, hy, rfl⟩
    show e (e.symm y) ∈ s
    rw [e.apply_symm_apply]; exact hy⟩
  rw [h, Measure.count_injective_image e.symm.injective]

theorem count_isHaar {H : Type*} [Group H] [TopologicalSpace H] [DiscreteTopology H] [MeasurableSpace H]
    [MeasurableSingletonClass H] [Countable H] : (Measure.count : Measure H).IsHaarMeasure where
  lt_top_of_isCompact := fun _ hK => Measure.count_apply_lt_top.2 hK.finite_of_discrete
  map_mul_left_eq_self := fun g => map_count_equiv (Equiv.mulLeft g)
  open_pos := fun _ _ hU => by rw [Ne, Measure.count_eq_zero_iff]; exact hU.ne_empty

theorem count_isInv {H : Type*} [Group H] [MeasurableSpace H]
    [MeasurableSingletonClass H] [Countable H] : (Measure.count : Measure H).IsInvInvariant :=
  ⟨map_count_equiv (Equiv.inv H)⟩

theorem quotIntegral_mul_right (hNE : NormEq) {T : Type} [Group T] [TopologicalSpace T] [IsTopologicalGroup T]
    [LocallyCompactSpace T] [SecondCountableTopology T] [MeasurableSpace T] [BorelSpace T]
    (ν : Measure T) [ν.IsHaarMeasure] (hcomm : ∀ s t : T, s * t = t * s) (Γ : Subgroup T) (μΓ : Measure Γ)
    [SFinite μΓ] [μΓ.IsInvInvariant] (F : T → ℂ) (hF : Measurable F) (hinv : ∀ g ∈ Γ, ∀ t, F (g * t) = F t)
    (s : T) : quotIntegral ν Γ μΓ (fun t => F (t * s)) = quotIntegral ν Γ μΓ F := by
  unfold quotIntegral
  by_cases hρ : ∃ ρ, IsQuotNormaliser Γ μΓ ρ
  · rw [dif_pos hρ, dif_pos hρ]
    have hρn := hρ.choose_spec
    have : ν.IsMulRightInvariant := ⟨fun g => by
      have h : (fun x => x * g) = (fun x => g * x) := funext fun x => hcomm x g
      rw [h]; exact map_mul_left_eq_self ν g⟩
    have hρ' : IsQuotNormaliser Γ μΓ (fun t => hρ.choose (t * s⁻¹)) := by
      refine ⟨hρn.1.comp (measurable_mul_const _), fun g => ?_⟩
      show ∫⁻ h, hρ.choose ((h : T) * g * s⁻¹) ∂μΓ = 1
      simp only [mul_assoc]
      exact hρn.2 _
    have h1 := integral_mul_right_eq_self (μ := ν) (fun t => F t * ((hρ.choose (t * s⁻¹)).toReal : ℂ)) s
    simp only [mul_inv_cancel_right] at h1
    rw [h1]
    exact hNE T ν Γ μΓ F _ _ hF hinv hρ' hρn
  · rw [dif_neg hρ, dif_neg hρ]

end PositivityTheory.Rg.BcB.CV.VolumeFunction

namespace PositivityTheory.Rg.BcB.CV

open PositivityTheory.Rg.BcB PositivityTheory.Rg.BcB.D4 PositivityTheory.Rg.BcB.CV.VolumeFunction

theorem pf_Vfun : PositivityTheory.Rg.BcB.ChainSum → PositivityTheory.Rg.BcB.D4.RatDisc → PositivityTheory.Rg.BcB.D4.NormEq → PositivityTheory.Rg.BcB.CV.QInt →
    PositivityTheory.Rg.BcB.CV.QAdd → PositivityTheory.Rg.BcB.CV.Vfun := by
  intro hCS hRD hNE hQI hQA T _ _ _ _ _ _ _ _ ν _ Γ m a hcomm hdisc hac hadd hΓ hprop
  have := hdisc
  have : Countable Γ := TopologicalSpace.separableSpace_iff_countable.1 inferInstance
  have hcl : IsClosed (Γ : Set T) := Subgroup.isClosed_of_discrete
  have : (Measure.count : Measure Γ).IsHaarMeasure := count_isHaar
  have : (Measure.count : Measure Γ).IsInvInvariant := count_isInv
  have hmeasF : ∀ y : (Fin m → SignType) → ℝ, Measurable fun t => (gam y (a t) : ℂ) := fun y =>
    Complex.measurable_ofReal.comp (((hCS m).2.2.1 y).comp hac.measurable)
  have hinv : ∀ y : (Fin m → SignType) → ℝ, ∀ g ∈ Γ, ∀ t, (gam y (a (g * t)) : ℂ) = (gam y (a t) : ℂ) := by
    intro y g hg t
    rw [hadd, hΓ g hg, zero_add]
  set K : ℝ := (Fintype.card (Finset (Fin m → SignType)) : ℝ) with hKdef
  have hK0 : 0 ≤ K := Nat.cast_nonneg _
  have key : ∀ M : ℝ, ∃ B : ℝ, ∀ y : (Fin m → SignType) → ℝ, (∀ e, |y e| ≤ M) →
      quotLIntegral ν Γ Measure.count (fun t => ‖(gam y (a t) : ℂ)‖ₑ) ≠ ⊤ ∧
        ‖quotIntegral ν Γ Measure.count (fun t => (gam y (a t) : ℂ))‖ ≤ B := by
    intro M
    obtain ⟨C, hC, hCm⟩ := hprop (2 * M)
    obtain ⟨A, _, hA⟩ := hQI T ν Γ Measure.count C hcl hC
    refine ⟨A * K, fun y hy => hA _ K hK0 (hmeasF y) (hinv y) ?_ ?_⟩
    · intro t ht
      apply hCm
      intro i
      exact (hCS m).2.1 y M (a t) hy (fun h => ht (by rw [h, Complex.ofReal_zero])) i
    · intro x _
      rw [Complex.norm_real, Real.norm_eq_abs]
      exact gam_abs_le _ _
  have hfin : ∀ y : (Fin m → SignType) → ℝ,
      quotLIntegral ν Γ Measure.count (fun t => ‖(gam y (a t) : ℂ)‖ₑ) ≠ ⊤ := by
    intro y
    obtain ⟨B, hB⟩ := key (∑ e, |y e|)
    exact (hB y fun e => Finset.single_le_sum (f := fun e => |y e|) (fun _ _ => abs_nonneg _)
      (Finset.mem_univ e)).1
  refine ⟨⟨?_, ?_, ?_⟩, ?_⟩
  · by_cases hρ : ∃ ρ, IsQuotNormaliser Γ (Measure.count : Measure Γ) ρ
    · simp only [quotIntegral, dif_pos hρ]
      have h2 : Measurable fun p : ((Fin m → SignType) → ℝ) × T => (p.1, a p.2) :=
        measurable_fst.prodMk (hac.measurable.comp measurable_snd)
      have hj : Measurable fun p : ((Fin m → SignType) → ℝ) × T =>
          (gam p.1 (a p.2) : ℂ) * ((hρ.choose p.2).toReal : ℂ) :=
        (Complex.measurable_ofReal.comp ((hRD.2 m).comp h2)).mul
          (Complex.measurable_ofReal.comp ((hρ.choose_spec.1.ennreal_toReal).comp measurable_snd))
      exact (hj.stronglyMeasurable.integral_prod_right' (ν := ν)).measurable
    · simp only [quotIntegral, dif_neg hρ]
      exact measurable_const
  · intro M
    obtain ⟨B, hB⟩ := key M
    exact ⟨B, fun y hy => (hB y hy).2⟩
  · intro y y' e s t h
    have hsub : ∀ u v : (Fin m → SignType) → ℝ,
        quotIntegral ν Γ Measure.count (fun x => (gam u (a x) : ℂ)) -
          quotIntegral ν Γ Measure.count (fun x => (gam v (a x) : ℂ)) =
        quotIntegral ν Γ Measure.count (fun x => ((gam u (a x) - gam v (a x) : ℝ) : ℂ)) := by
      intro u v
      rw [← (hQA T ν Γ Measure.count).2.1 _ _ (hmeasF u) (hmeasF v) (hfin u) (hfin v)]
      simp only [Complex.ofReal_sub]
    rw [hsub, hsub]
    congr 1
    funext x
    rw [(hCS m).2.2.2.2 y y' e s t (a x) h]
  · intro y s
    have hrew : ∀ t, (gam (fun e => y e - sdot e (a s)) (a t) : ℂ) = (gam y (a (t * s)) : ℂ) := by
      intro t
      have h := (hCS m).2.2.2.1 (fun e => y e - sdot e (a s)) (a t) (a s)
      simp only [sub_add_cancel] at h
      rw [hadd, h]
    simp only [hrew]
    exact quotIntegral_mul_right hNE ν hcomm Γ Measure.count _ (hmeasF y) (hinv y) s

end PositivityTheory.Rg.BcB.CV

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.QuotIntegralMulRight =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.ClassVanishOfSteps =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.ClassVanishOfSteps", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.NonEllFlag\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.QuotVanish\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.CVEmbInfSelf\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.EnormOfRealToRealLe\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.ExistsMeasure\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.IsClosedEmbeddingSlice\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.LintegralIndicatorNeTop\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PAdTop\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PClassVanish\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PCutInt\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PFamAt\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PLocTor\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.POneVanish\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PQProd\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PTwoVanish\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.PfQMap\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.QuotIntegralMulRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.Rg.BcB.CV

theorem classVanish_of_steps (hNormEq : PositivityTheory.Rg.BcB.D4.NormEq) (hQuotProd : PositivityTheory.Rg.BcB.D4.QuotProd) (hChainSum : PositivityTheory.Rg.BcB.ChainSum) (hRatDisc : PositivityTheory.Rg.BcB.D4.RatDisc) (hLocVanish : PositivityTheory.Rg.BcB.LocVanish) (hLocProper : PositivityTheory.Rg.BcB.D4.LocProper) (hLocFlag : PositivityTheory.Rg.BcB.D4.LocFlag) (hDegBdd : PositivityTheory.Rg.BcB.DegBdd) (hKerFin : PositivityTheory.Rg.BcB.D4.KerFin) (hMahler : PositivityTheory.Rg.BcB.Mahler) (hSplitAt : PositivityTheory.Rg.BcB.D4.SplitAt) (hNonEllFlag : PositivityTheory.Rg.BcB.D4.NonEllFlag) (hSplitAt2 : PositivityTheory.Rg.BcB.D4.SplitAt2) (hPairParam : PositivityTheory.Rg.BcB.D4.PairParam) (hTorusChar : PositivityTheory.Rg.BcB.D4.TorusChar) (hChiGam : PositivityTheory.Rg.BcB.D4.ChiGam) (hQuotStage : PositivityTheory.Rg.BcB.D4.QuotStage) (hSizeBasic : PositivityTheory.Rg.BcB.SizeBasic) :
    PositivityTheory.Rg.BcB.ClassVanish :=
  have hQMap : QMap := pf_QMap hNormEq
  have hQInt : QInt := pf_QInt
  have hQAdd : QAdd := pf_QAdd
  have hQProd : QProd := pf_QProd hQuotProd hQMap
  have hVfun : Vfun := pf_Vfun hChainSum hRatDisc hNormEq hQInt hQAdd
  have hLocTor : LocTor := pf_LocTor
  have hOneVanish : OneVanish := pf_OneVanish hLocVanish hLocProper hLocTor hQInt hQAdd
  have hTwoVanish : TwoVanish := pf_TwoVanish hLocVanish hLocProper hLocTor hQInt hQAdd hQProd hOneVanish
  have hPloc : Ploc := pf_Ploc
  have hFamAt : FamAt := pf_FamAt hLocFlag hPloc
  have hAdTop : AdTop := pf_AdTop hDegBdd hRatDisc
  have hCutInt : CutInt := pf_CutInt hKerFin hMahler hQInt hAdTop
  have hGlob1 : Glob1 := pf_Glob1 hSplitAt hNonEllFlag hLocVanish hLocTor hQMap hQProd hPloc hAdTop
  have hGlob2 : Glob2 := pf_Glob2 hSplitAt2 hLocTor hQMap hQProd hTwoVanish hPloc hFamAt hAdTop
  pf_ClassVanish hPairParam hTorusChar hChiGam hQuotStage hRatDisc hSizeBasic hQAdd hVfun hAdTop hCutInt hGlob1 hGlob2

end PositivityTheory.Rg.BcB.CV
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.QuotientVanishing.LocalQuotientIntegrals.ClassVanishOfSteps =====
