module

public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.FinalTheorems
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.XFacts
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.EvalIdFrameRowAct
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.RowActSrcN
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.NumericalIdentityScalar
public import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.CoefficientProductHolds
import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.WeylComplementDetCoeffSpan
import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.YVMapRowAct
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.InterpolationHolds

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.ProdRowAct, Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.HinjX

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.ProdRowAct =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.ProdRowAct", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.FinalTheorems\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.XFacts\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.EvalIdFrameRowAct\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.RowActSrcN\nimport Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.WeylComplementDetCoeffSpan\nimport Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.YVMapRowAct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.GradedWeylDivisibility Formalism.MainNotions.G Formalism.MainNotions.FormalGroupSystem Formalism.L2.G.Pend Formalism.L2.G.Model.TS

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

variable {p : ℕ} [Fact p.Prime] (X : Sys p)

theorem mF_mul (j : ℕ) (b : BX X) (A B : Matrix (Fin ((X.Pj j).m + 1)) (Fin ((X.Pj j).m + 1)) (X.G.P.Qq b.1)) :
    mF X j b A * mF X j b B = mF X j b (A * B) := by
  simp only [mF]
  rw [Matrix.submatrix_mul_equiv]
  congr 1
  ext i k

  simp only [Matrix.mul_apply, Matrix.map_apply, map_sum, map_mul]

theorem mF_one (j : ℕ) (b : BX X) : mF X j b 1 = 1 := by
  ext i k
  by_cases h : i = k <;> simp [mF, Matrix.one_apply, h]

theorem mF_inv_mul (j : ℕ) (b : BX X) (g : GL (Fin ((X.Pj j).m + 1)) (X.G.P.Qq b.1)) :
    mF X j b ((g⁻¹ : GL _ _) : Matrix _ _ (X.G.P.Qq b.1)) * mF X j b (g : Matrix _ _ (X.G.P.Qq b.1)) = 1 := by
  rw [mF_mul, ← Units.val_mul, inv_mul_cancel, Units.val_one, mF_one]

theorem mF_det_ne (j : ℕ) (b : BX X) (g : GL (Fin ((X.Pj j).m + 1)) (X.G.P.Qq b.1)) :
    (mF X j b (g : Matrix _ _ (X.G.P.Qq b.1))).det ≠ 0 := by
  intro h
  have := congrArg Matrix.det (mF_inv_mul X j b g)
  rw [Matrix.det_mul, h, mul_zero, Matrix.det_one] at this
  exact zero_ne_one this

variable (Kc : Type) [Field Kc] [Algebra X.G.Kf Kc]

def PhiX (j : ℕ) (l : XspC (X.Pj (j + 1)) Kc →ₗ[Kc] Kc) (a : Kc) (f : MvPowerSeries (X.ZA j) Kc) :
    (X.Pj j).Xsp →ₗ[X.G.Kf] Kc :=
  ((LinearMap.mulLeft Kc a).restrictScalars X.G.Kf) ∘ₗ (l.restrictScalars X.G.Kf) ∘ₗ ((delF X Kc j).flip f)

theorem PhiX_apply (j : ℕ) (l : XspC (X.Pj (j + 1)) Kc →ₗ[Kc] Kc) (a : Kc) (f : MvPowerSeries (X.ZA j) Kc) (G : (X.Pj j).Xsp) :
    PhiX X Kc j l a f G = a * l (delF X Kc j G f) := rfl

def WT (j : ℕ) : Submodule Kc (XspC (X.Pj (j + 1)) Kc) :=
  Submodule.span Kc {z | ∃ F : BX X → MvPolynomial (Fin (NJ X (j + 1)) × Fin (NJ X (j + 1))) X.G.Kf,
    (∀ b, F b ∈ dualWeyl X.G.Kf (NJ X (j + 1)) (NJ X (j + 1)) (nuT X j b)) ∧
      z = map (algebraMap X.G.Kf Kc) (∏ b, rename (emX X (j + 1) b) (F b))}

private theorem prod_rowAct_lemma {K : Type} [Field K] {n : ℕ} (M : Matrix (Fin n) (Fin n) K) (d : K) :
    rowAct K M (C d : MvPolynomial (Fin n × Fin n) K) = C d := by
  simp [rowAct]

private theorem prod_rowAct_lemma_2 {K : Type} [Field K] {n : ℕ} (M : Matrix (Fin n) (Fin n) K) :
    (yV K n).map (rowAct K M) = M.map C * yV K n := by
  ext a t
  simp [yV, BidetPairing.rowAct_X', Matrix.mul_apply]

private theorem prod_rowAct_lemma_3 {K : Type} [Field K] {n : ℕ} (A B : Matrix (Fin n) (Fin n) K)
    (y : Fin n → ℕ → K) : mulC A (mulC B y) = mulC (A * B) y := by
  funext a i
  simp only [mulC, Matrix.mul_apply, Finset.mul_sum, Finset.sum_mul, mul_assoc]
  exact Finset.sum_comm

private theorem prod_rowAct_lemma_4 {K : Type} [Field K] {n : ℕ} (M : Matrix (Fin n) (Fin n) K)
    (y : Fin n → ℕ → K) :
    mulC (M.map (C : K →+* MvPolynomial (Fin n × Fin n) K)) (fun a i => C (y a i)) =
      fun a i => C (mulC M y a i) := by
  funext a i

  simp [mulC, map_sum, map_mul]

private theorem prod_rowAct_lemma_5 {K : Type} [Field K] {n : ℕ} (M : Matrix (Fin n) (Fin n) K)
    (hM : M.det ≠ 0) (y : Fin n → ℕ → K) (c : ℕ) (h : Fin c → ℕ) :
    rowAct K M (hvO (fun a i => C (y a i)) (yV K n) c h) =
      C (M.det ^ c) * hvO (fun a i => C (mulC M⁻¹ y a i)) (yV K n) c h := by
  show (rowAct K M).toRingHom _ = _
  rw [map_hvO]
  simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, prod_rowAct_lemma]
  rw [prod_rowAct_lemma_2]
  have hy : (fun a i => (C (y a i) : MvPolynomial (Fin n × Fin n) K)) =
      mulC (M.map (C : K →+* MvPolynomial (Fin n × Fin n) K)) (fun a i => C (mulC M⁻¹ y a i)) := by
    rw [prod_rowAct_lemma_4, prod_rowAct_lemma_3, Matrix.mul_nonsing_inv _ (isUnit_iff_ne_zero.mpr hM),
      mulC_one']
  rw [hy, hvO_mul]
  congr 1
  rw [map_pow, RingHom.map_det, RingHom.mapMatrix_apply]

private theorem prod_rowAct_lemma_6 {K : Type} [Field K] {n : ℕ} (M : Matrix (Fin n) (Fin n) K)
    (y : Fin n → ℕ → K) (c : ℕ) (h : Fin c → ℕ) (hh : ∀ k : Fin c, h k ≤ n) :
    rowAct K M (hvE (fun a i => C (y a i)) (yV K n) c h hh) =
      hvE (fun a i => C (mulC M.transpose y a i)) (yV K n) c h hh := by
  show (rowAct K M).toRingHom _ = _
  rw [map_hvE]
  simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, prod_rowAct_lemma]
  rw [prod_rowAct_lemma_2, hvE_mul, ← Matrix.transpose_map, prod_rowAct_lemma_4]

private theorem prod_rowAct_lemma_7 (j : ℕ) (b : BX X) (M : Matrix (Fin (NJ X j)) (Fin (NJ X j)) X.G.Kf)
    (hM : M.det ≠ 0) (y : Fin (NJ X j) → ℕ → X.G.Kf) :
    ∃ (c : X.G.Kf) (y'' : Fin (NJ X j) → ℕ → X.G.Kf),
      rowAct X.G.Kf M (srcN X j b y) = c • srcN X j b y'' := by
  unfold srcN
  split_ifs with hb
  · exact ⟨M.det ^ cX X j b, mulC M⁻¹ y, by rw [prod_rowAct_lemma_5 M hM, MvPolynomial.smul_eq_C_mul]⟩
  · refine ⟨(M.det ^ eX X j b)⁻¹, mulC M.transpose y, ?_⟩
    rw [map_mul, prod_rowAct_lemma, prod_rowAct_lemma_6, MvPolynomial.smul_eq_C_mul, ← mul_assoc, ← map_mul]
    congr 2
    have hd : (Matrix.of fun (a i : Fin (NJ X j)) => mulC M.transpose y a ↑i) =
        M.transpose * Matrix.of fun (a i : Fin (NJ X j)) => y a ↑i := by
      ext a i
      simp [mulC, Matrix.mul_apply]
    rw [hd, Matrix.det_mul, Matrix.det_transpose, mul_pow, ← mul_assoc,
      inv_mul_cancel₀ (pow_ne_zero _ hM), one_mul]

theorem prod_rowAct (j : ℕ) (g : ∀ v : X.Pl, GL (Fin ((X.Pj j).m + 1)) (X.G.P.Qq v)) (x : X.FrI j → X.G.Kf) :
    ∃ (a : X.G.Kf) (x'' : ∀ b : BX X, Fin (NJ X j) → ℕ → X.G.Kf),
      ∏ b, rename (emX X j b) (rowAct X.G.Kf (mF X j b ((g b.1)⁻¹ : GL _ _))
        (evX (fun s => x (xmX X j b s)) (HgX X X.G.Kf j b))) = a • ∏ b, rename (emX X j b) (srcN X j b (x'' b)) := by
  have key : ∀ b : BX X, ∃ (c : X.G.Kf) (y'' : Fin (NJ X j) → ℕ → X.G.Kf),
      rename (emX X j b) (rowAct X.G.Kf (mF X j b ((g b.1)⁻¹ : GL _ _))
        (evX (fun s => x (xmX X j b s)) (HgX X X.G.Kf j b))) =
        c • rename (emX X j b) (srcN X j b y'') := by
    intro b
    rw [evX_HgX]
    obtain ⟨c, y'', hc⟩ := prod_rowAct_lemma_7 X j b _ (mF_det_ne X j b (g b.1)⁻¹) _
    exact ⟨c, y'', by rw [hc, MvPolynomial.smul_eq_C_mul, map_mul, rename_C, MvPolynomial.smul_eq_C_mul]⟩
  choose c y'' hc using key
  refine ⟨∏ b, c b, y'', ?_⟩
  rw [Finset.prod_congr rfl (fun b _ => hc b)]
  simp only [MvPolynomial.smul_eq_C_mul, Finset.prod_mul_distrib, map_prod]

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.ProdRowAct =====

-- ===== clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.HinjX =====
-- clump-header: {"m": "Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.HinjX", "h": "module\n\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.ProdRowAct\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.NumericalIdentityScalar\npublic import Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.CoefficientProductHolds\nimport Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.InterpolationHolds\nimport Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.RowActSrcN\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.PairingIndexBounds.Ent

open Formalism.GradedWeylDivisibility Formalism.MainNotions.G Formalism.MainNotions.FormalGroupSystem Formalism.L2.G.Pend Formalism.L2.G.Model.TS

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

variable {p : ℕ} [Fact p.Prime] (X : Sys p) [IsFractionRing X.G.O X.G.Kf]
  (Kc : Type) [Field Kc] [Algebra X.G.Kf Kc] [CharZero Kc]

theorem hinjX : Function.Injective (algebraMap X.G.O X.G.Kf) := IsFractionRing.injective X.G.O X.G.Kf

theorem phi_mem (hS : XShape) (hBrS : XBrS) (hInj : XInj) (j : ℕ) (L : (X.Pj j).Tup)
    (g : ∀ v : X.Pl, GL (Fin ((X.Pj j).m + 1)) (X.G.P.Qq v))
    (hg : ∀ v, X.latAt v j L = colSpan (X.G.P.W v) (g v : Matrix _ _ (X.G.P.Qq v)))
    (M : AddSubgroup Kc) (hM : ∀ (o : X.G.O), ∀ a ∈ M, algebraMap X.G.Kf Kc (algebraMap X.G.O X.G.Kf o) * a ∈ M)
    (Φ : (X.Pj j).Xsp →ₗ[X.G.Kf] Kc) (A : MvPolynomial (X.FrI j) Kc) (hA : ∀ m, AddMonoidAlgebra.coeff A m ∈ M)
    (hnum : ∀ x : X.FrI j → X.G.Kf, Φ (sX X j (fun v => g v) • ∏ b, rename (emX X j b) (rowAct X.G.Kf (mF X j b ((g b.1)⁻¹ : GL _ _))
      (evX (fun s => x (xmX X j b s)) (HgX X X.G.Kf j b)))) = eval (fun t => algebraMap X.G.Kf Kc (x t)) A) :
    ∀ G ∈ (X.Pj j).HtupW L, Φ G ∈ M := by
  have : CharZero X.G.Kf := (algebraMap X.G.Kf Kc).charZero
  let T : Submodule X.G.O (X.Pj j).Xsp :=
    { carrier := {G | Φ G ∈ M}
      add_mem' := fun {a b} ha hb => by
        show Φ (a + b) ∈ M
        rw [map_add (f := _)]; exact M.add_mem ha hb
      zero_mem' := by show Φ 0 ∈ M; rw [map_zero]; exact M.zero_mem
      smul_mem' := fun o G hG => by
        show Φ (o • G) ∈ M
        rw [← algebraMap_smul X.G.Kf o G, map_smul, Algebra.smul_def]
        exact hM o _ hG }
  refine hBrS p X (hinjX X) j L (fun v => g v) (fun v => (Matrix.isUnit_iff_isUnit_det _).1 (g v).isUnit) hg T ?_
  intro F hF
  let Φ' : (X.Pj j).Xsp →ₗ[X.G.Kf] Kc := Φ ∘ₗ (LinearMap.lsmul X.G.Kf (X.Pj j).Xsp (sX X j fun v => g v))
  exact src_abs (O := X.G.O) (emX X j) (xmX X j) (hInj p X j).2 (nuM X j) (fun b => mF X j b (g b.1))
    (fun b => mF X j b ((g b.1)⁻¹ : GL _ _)) (fun b => mF_inv_mul X j b (g b.1)) M hM (HgX X X.G.Kf j) (hQX X hS j) Φ' A hA hnum
    interpolation_holds coefficient_product_holds F hF

theorem xSpan (hS : XShape) (hBrS : XBrS) (hInj : XInj) (hSp : XSpanN) (j : ℕ) (L : (X.Pj j).Tup)
    (g : ∀ v : X.Pl, GL (Fin ((X.Pj j).m + 1)) (X.G.P.Qq v))
    (hg : ∀ v, X.latAt v j L = colSpan (X.G.P.W v) (g v : Matrix _ _ (X.G.P.Qq v)))
    (f : MvPowerSeries (X.ZA j) Kc) (G : (X.Pj j).Xsp) (hG : G ∈ (X.Pj j).HtupW L) : delF X Kc j G f ∈ WT X Kc j := by
  by_contra hne
  obtain ⟨l, hl1, hl2⟩ := Submodule.exists_le_ker_of_notMem hne
  have h0 := phi_mem X Kc hS hBrS hInj j L g hg ⊥ (fun o a ha => by
    rw [AddSubgroup.mem_bot] at ha ⊢; rw [ha, mul_zero]) (PhiX X Kc j l 1 f) 0 (fun m => by simp only [AddMonoidAlgebra.coeff_zero, Finsupp.zero_apply, AddSubgroup.zero_mem])
    (fun x => by
      obtain ⟨a, x'', hx⟩ := prod_rowAct X j g x
      rw [hx, map_zero, PhiX_apply, one_mul, map_smul, map_smul, LinearMap.smul_apply, LinearMap.smul_apply]
      have h1 : delF X Kc j (∏ b, rename (emX X j b) (srcN X j b (x'' b))) f ∈ WT X Kc j := hSp p X Kc j x'' f
      have h2 : l (delF X Kc j (∏ b, rename (emX X j b) (srcN X j b (x'' b))) f) = 0 := hl2 h1
      rw [← algebraMap_smul Kc (sX X j fun v => g v), ← algebraMap_smul Kc a, map_smul, map_smul, h2, smul_zero, smul_zero]) G hG
  rw [AddSubgroup.mem_bot, PhiX_apply, one_mul] at h0
  exact hl1 h0

end Formalism.L2.PairingIndexBounds.Ent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.PairingIndexBounds.RowActionCoefficients.AdmissibleInterpolation.HinjX =====
