module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameOO3FrameValTrans
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepPtRepPfB
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SpanPreservation
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepPtRepPf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.HermitianCombinationZ
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameOO1FrameValPiIso
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.HermitianETransportInvariant
public import Mathlib.LinearAlgebra.Matrix.Rank
public import Mathlib.LinearAlgebra.LinearIndependent.BaseChange
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.SecondNormalTransport
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PairCorankPositivity.FinrankOrthAddLe
public import Formalism.SharpRestriction.CuspSpanNormBounds.IsPrimitiveSub
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ClassFrameNormal
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RealDecompL
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DecompPhaseCOf
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepPtRepPfA
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGeneral.ScalarFactorEqOneOfLe
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarPairOrthogonal.XLeOrthXplus
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermDef
import Formalism.PeriodIntegrals.ScalPairs

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameMoveH, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameSDecomp, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.OrthogonalComplementRational, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.FrameZEqLinZu, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGenerators.ScalarEquivOfGen, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ScalarAgreeRatCOfScalT, Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameAll

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameMoveH =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameMoveH", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameOO3FrameValTrans\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepPtRepPfB\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SpanPreservation\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepPtRepPf\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepPtRepPfA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj Formalism.L2.SG.RealObj.InfCut

namespace Formalism.L2.SG.Pf.RowForm

namespace ClassFrameUnitaryMoves

variable {n r k : ℕ}

def wm (ε : Fin n → Bool) (wb : Fin k → Fin n → ℂ) (M : Matrix (Fin n) (Fin n) ℂ) : Matrix (Fin k) (Fin k) ℂ :=
  fun i j => hJ ε (wb i) (M *ᵥ wb j)

variable {ε : Fin n → Bool}

alias uMat_mul_ := _root_.Formalism.L2.SG.PoincareInHH.Cut.uMat_mul

theorem cancel_ (g : Formalism.REAL.UJ ε) (w : Fin n → ℂ) : uMat g *ᵥ (uMat g⁻¹ *ᵥ w) = w := by
  rw [mulVec_mulVec, _root_.Formalism.L2.SG.RealObj.InfCut.PtRepPf.uMat_mul_inv, one_mulVec]

theorem hJ_adj (g : Formalism.REAL.UJ ε) (x y : Fin n → ℂ) :
    hJ ε x (uMat g *ᵥ y) = hJ ε (uMat g⁻¹ *ᵥ x) y := by
  rw [← PtRepPf.hJ_UJ ε g (uMat g⁻¹ *ᵥ x) y, cancel_]

theorem fix_inv (g : Formalism.REAL.UJ ε) {x : Fin n → ℂ} (h : uMat g *ᵥ x = x) : uMat g⁻¹ *ᵥ x = x := by
  calc uMat g⁻¹ *ᵥ x = uMat g⁻¹ *ᵥ (uMat g *ᵥ x) := by rw [h]
    _ = x := by rw [mulVec_mulVec, _root_.Formalism.L2.SG.PoincareInHH.Cut.uMat_inv_mul, one_mulVec]

theorem hJ_span_zero (w : Fin n → ℂ) {S : Set (Fin n → ℂ)} (hS : ∀ y ∈ S, hJ ε w y = 0) {x : Fin n → ℂ}
    (hx : x ∈ Submodule.span ℂ S) : hJ ε w x = 0 := by
  induction hx using Submodule.span_induction with
  | mem y hy => exact hS y hy
  | zero => exact PtRepPf.hJ_zero_right ε w
  | add x y _ _ hx hy => rw [PtRepPf.hJ_add_right, hx, hy, add_zero]
  | smul c x _ hx => rw [PtRepPf.hJ_smul_right, hx, mul_zero]

theorem fam_fix {e : Fin r → Fin n → ℂ} {z : Fin n → ℂ} {M : Matrix (Fin n) (Fin n) ℂ}
    (he : ∀ c, M *ᵥ e c = e c) (hz : M *ᵥ z = z) (b : Fin (r + 1)) : M *ᵥ fam e z b = fam e z b := by
  induction b using Fin.lastCases with
  | last => rw [PtRepPf.fam_last, hz]
  | cast c => rw [PtRepPf.fam_cs, he]

theorem tri (e : Fin r → Fin n → ℂ) (z : Fin n → ℂ) (M : Matrix (Fin n) (Fin n) ℂ) (hM : InS e z M) :
    ∃ Q : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ, Q.IsUpperTriangular ∧ (∀ b, Q b b = 1) ∧
      ∀ b, M *ᵥ fam e z b = ∑ c, Q c b • fam e z c := by
  have hmem : ∀ b : Fin (r + 1), (M - 1) *ᵥ fam e z b ∈ Submodule.span ℂ (fam e z '' {c | c < b}) := by
    intro b
    induction b using Fin.lastCases with
    | last =>
      rw [PtRepPf.fam_last]
      refine Submodule.span_mono ?_ hM.2
      rintro _ ⟨c, -, rfl⟩
      exact ⟨Fin.castSucc c, Fin.castSucc_lt_last c, PtRepPf.fam_cs e z c⟩
    | cast a =>
      rw [PtRepPf.fam_cs]
      refine Submodule.span_mono ?_ (hM.1 a)
      rintro _ ⟨c, hc, rfl⟩
      exact ⟨Fin.castSucc c, Fin.castSucc_lt_castSucc_iff.2 hc, PtRepPf.fam_cs e z c⟩
  choose l hl hlx using fun b => (Finsupp.mem_span_image_iff_linearCombination (R := ℂ)).1 (hmem b)
  have hz : ∀ b c, ¬ c < b → l b c = 0 := fun b c hc => by
    by_contra h
    have h2 := hl b
    rw [Finsupp.mem_supported] at h2
    exact hc (h2 (Finsupp.mem_support_iff.2 h))
  refine ⟨Matrix.of fun c b => (if c = b then (1 : ℂ) else 0) + l b c, ?_, ?_, ?_⟩
  · intro i j hji
    have hji' : j < i := hji
    rw [Matrix.of_apply, if_neg (ne_of_lt hji').symm, hz j i (not_lt.2 hji'.le), add_zero]
  · intro b
    rw [Matrix.of_apply, if_pos rfl, hz b b (lt_irrefl b), add_zero]
  · intro b
    have e1 : M *ᵥ fam e z b = fam e z b + (M - 1) *ᵥ fam e z b := by
      rw [sub_mulVec, one_mulVec]; abel
    rw [e1, ← hlx b, Finsupp.linearCombination_apply,
      Finsupp.sum_fintype _ _ (fun i => zero_smul ℂ (fam e z i))]
    simp only [Matrix.of_apply, add_smul, Finset.sum_add_distrib, ite_smul, one_smul, zero_smul,
      Finset.sum_ite_eq', Finset.mem_univ, if_true]

theorem col_last (Q : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) (hQ : Q.IsUpperTriangular) (hd : ∀ b, Q b b = 1) :
    Qᴴ *ᵥ Pi.single (Fin.last r) 1 = Pi.single (Fin.last r) 1 := by
  funext d
  simp only [mulVec, dotProduct, Pi.single_apply, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq',
    Finset.mem_univ, if_true, conjTranspose_apply]
  by_cases h : d = Fin.last r
  · subst h; rw [hd, star_one, if_pos rfl]
  · have h0 : Q (Fin.last r) d = 0 := hQ (lt_of_le_of_ne (Fin.le_last d) h)
    rw [h0, star_zero, if_neg h]

theorem row_last (Q : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) (hQ : Q.IsUpperTriangular) (hd : ∀ b, Q b b = 1) :
    Pi.single (Fin.last r) 1 ᵥ* Q = Pi.single (Fin.last r) 1 := by
  funext c
  simp only [vecMul, dotProduct, Pi.single_apply, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq',
    Finset.mem_univ, if_true]
  by_cases h : c = Fin.last r
  · subst h; rw [hd, if_pos rfl]
  · have h0 : Q (Fin.last r) c = 0 := hQ (lt_of_le_of_ne (Fin.le_last c) h)
    rw [h0, if_neg h]

theorem tri_adj (Z Q Q' : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) (hQt : Q.IsUpperTriangular) (hQd : ∀ b, Q b b = 1)
    (hQt' : Q'.IsUpperTriangular) (hQd' : ∀ b, Q' b b = 1) :
    (Q' * adjugate (Qᴴ * Z * Q')) *ᵥ Pi.single (Fin.last r) 1 = adjugate Z *ᵥ Pi.single (Fin.last r) 1 ∧
      Pi.single (Fin.last r) 1 ᵥ* (adjugate (Qᴴ * Z * Q') * Qᴴ) = Pi.single (Fin.last r) 1 ᵥ* adjugate Z ∧
      (Qᴴ * Z * Q').det = Z.det := by
  have hQdet : Q.det = 1 := by rw [det_of_isUpperTriangular hQt]; simp [hQd]
  have hQdet' : Q'.det = 1 := by rw [det_of_isUpperTriangular hQt']; simp [hQd']
  have hcolQ : Qᴴ *ᵥ Pi.single (Fin.last r) (1 : ℂ) = Pi.single (Fin.last r) 1 := col_last Q hQt hQd
  have hrowQ : Pi.single (Fin.last r) (1 : ℂ) ᵥ* Q' = Pi.single (Fin.last r) 1 := row_last Q' hQt' hQd'
  have hA1 : adjugate Qᴴ * Qᴴ = 1 := by rw [adjugate_mul, det_conjTranspose, hQdet, star_one, one_smul]
  have hA2 : Q' * adjugate Q' = 1 := by rw [mul_adjugate, hQdet', one_smul]
  refine ⟨?_, ?_, ?_⟩
  · rw [adjugate_mul_distrib, adjugate_mul_distrib, ← Matrix.mul_assoc, hA2, Matrix.one_mul, ← mulVec_mulVec]
    congr 1
    conv_lhs => rw [← hcolQ]
    rw [mulVec_mulVec, hA1, one_mulVec]
  · have hs : Pi.single (Fin.last r) (1 : ℂ) ᵥ* adjugate Q' = Pi.single (Fin.last r) 1 := by
      conv_lhs => rw [← hrowQ]
      rw [vecMul_vecMul, hA2, vecMul_one]
    rw [adjugate_mul_distrib, adjugate_mul_distrib, Matrix.mul_assoc, Matrix.mul_assoc, hA1, Matrix.mul_one,
      ← vecMul_vecMul, hs]
  · rw [det_mul, det_mul, det_conjTranspose, hQdet, hQdet', star_one, one_mul, mul_one]

theorem xPr_move (Z₂ Z Q' : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) (G₂ G Nm Am : Matrix (Fin n) (Fin n) ℂ)
    (f' : Fin (r + 1) → Fin n → ℂ) (hG : ∀ b, G₂ *ᵥ f' b = Nm *ᵥ (Am *ᵥ ∑ c, Q' c b • (G *ᵥ f' c)))
    (hc : (Q' * adjugate Z₂) *ᵥ Pi.single (Fin.last r) 1 = adjugate Z *ᵥ Pi.single (Fin.last r) 1) :
    xPr Z₂ G₂ f' = Nm *ᵥ (Am *ᵥ xPr Z G f') := by
  have hc' : ∀ c, ∑ b, adjugate Z₂ b (Fin.last r) * Q' c b = adjugate Z c (Fin.last r) := fun c => by
    have h := congrFun hc c
    simp only [mulVec, dotProduct, Pi.single_apply, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq',
      Finset.mem_univ, if_true, Matrix.mul_apply] at h
    rw [← h]
    exact Finset.sum_congr rfl fun b _ => mul_comm _ _
  unfold xPr
  simp only [hG, mulVec_sum, mulVec_smul, Finset.smul_sum, smul_smul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun c _ => ?_
  rw [← Finset.sum_smul, hc' c]

theorem xUn_move (Z₂ Z Q : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) (Ni Ai : Matrix (Fin n) (Fin n) ℂ)
    (f : Fin (r + 1) → Fin n → ℂ) (hQ : ∀ b, Ni *ᵥ f b = ∑ c, Q c b • f c) (hA : ∀ b, Ai *ᵥ f b = f b)
    (hr : Pi.single (Fin.last r) 1 ᵥ* (adjugate Z₂ * Qᴴ) = Pi.single (Fin.last r) 1 ᵥ* adjugate Z) :
    Ai *ᵥ (Ni *ᵥ xUn Z₂ f) = xUn Z f := by
  have hr' : ∀ d, ∑ a, star (adjugate Z₂ (Fin.last r) a) * Q d a = star (adjugate Z (Fin.last r) d) := by
    intro d
    have h := congrFun hr d
    simp only [vecMul, dotProduct, Pi.single_apply, ite_mul, one_mul, zero_mul, Finset.sum_ite_eq',
      Finset.mem_univ, if_true, Matrix.mul_apply, conjTranspose_apply] at h
    rw [← h, star_sum]
    exact Finset.sum_congr rfl fun a _ => by rw [star_mul', star_star]
  unfold xUn
  simp only [mulVec_sum, mulVec_smul, hQ, Finset.smul_sum, smul_smul, hA]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun d _ => ?_
  rw [← Finset.sum_smul, hr' d]

theorem xPr_perp (e : Fin r → Fin n → ℂ) (z : Fin n → ℂ) (f' : Fin (r + 1) → Fin n → ℂ)
    (G : Matrix (Fin n) (Fin n) ℂ) (c : Fin r) : hJ ε (e c) (xPr (Zhat ε (fam e z) f' G) G f') = 0 := by
  have h1 := congrFun₂ (mul_adjugate (Zhat ε (fam e z) f' G)) (Fin.castSucc c) (Fin.last r)
  rw [Matrix.mul_apply, Matrix.smul_apply, Matrix.one_apply_ne (Fin.castSucc_lt_last c).ne, smul_zero] at h1
  unfold xPr
  rw [PtRepPf.hJ_sum_right, ← h1]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [PtRepPf.hJ_smul_right, ← PtRepPf.fam_cs e z c]
  exact mul_comm _ _

theorem xUn_perp (f : Fin (r + 1) → Fin n → ℂ) (e' : Fin r → Fin n → ℂ) (z' : Fin n → ℂ) (g : Formalism.REAL.UJ ε)
    (c : Fin r) : hJ ε (e' c) (uMat g⁻¹ *ᵥ xUn (Zhat ε f (fam e' z') (uMat g)) f) = 0 := by
  have h1 := congrFun₂ (adjugate_mul (Zhat ε f (fam e' z') (uMat g))) (Fin.last r) (Fin.castSucc c)
  rw [Matrix.mul_apply, Matrix.smul_apply, Matrix.one_apply_ne (Fin.castSucc_lt_last c).ne', smul_zero] at h1
  rw [hJ_adj, inv_inv]
  unfold xUn
  rw [PtRepPf.hJ_sum_right]
  calc ∑ a, hJ ε (uMat g *ᵥ e' c) (star (adjugate (Zhat ε f (fam e' z') (uMat g)) (Fin.last r) a) • f a)
      = star (∑ a, adjugate (Zhat ε f (fam e' z') (uMat g)) (Fin.last r) a *
          Zhat ε f (fam e' z') (uMat g) a (Fin.castSucc c)) := by
        rw [star_sum]
        refine Finset.sum_congr rfl fun a _ => ?_
        rw [PtRepPf.hJ_smul_right, star_mul', ← PtRepPf.hJ_conj, ← PtRepPf.fam_cs e' z' c]
        rfl
    _ = 0 := by rw [h1, star_zero]

theorem pair_na (e : Fin r → Fin n → ℂ) (z : Fin n → ℂ) (nn a : Formalism.REAL.UJ ε)
    (Q : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) (hQ : ∀ b, uMat nn⁻¹ *ᵥ fam e z b = ∑ c, Q c b • fam e z c)
    (ha : ∀ b, uMat a *ᵥ fam e z b = fam e z b) (b : Fin (r + 1)) (y : Fin n → ℂ) :
    hJ ε (fam e z b) (uMat nn *ᵥ (uMat a *ᵥ y)) = ∑ d, star (Q d b) * hJ ε (fam e z d) y := by
  rw [hJ_adj, hJ_adj, hQ, mulVec_sum, PtRepPf.hJ_sum_left]
  refine Finset.sum_congr rfl fun d _ => ?_
  rw [mulVec_smul, fix_inv a (ha d), PtRepPf.hJ_smul_left]

theorem dot_self_ (y : Fin k → ℂ) : ((∑ i, ‖y i‖ ^ 2 : ℝ) : ℂ) = star y ⬝ᵥ y := by
  simp only [dotProduct, Pi.star_apply, Complex.ofReal_sum, Complex.ofReal_pow]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [Complex.star_def, Complex.conj_mul']

theorem eN_unitary (U : Matrix (Fin k) (Fin k) ℂ) (hU : U ∈ Matrix.unitaryGroup (Fin k) ℂ) (y : Fin k → ℂ) :
    eN (U *ᵥ y) = eN y := by
  have hUU : star U * U = 1 := (Matrix.mem_unitaryGroup_iff').1 hU
  have h : ((∑ i, ‖(U *ᵥ y) i‖ ^ 2 : ℝ) : ℂ) = ((∑ i, ‖y i‖ ^ 2 : ℝ) : ℂ) := by
    rw [dot_self_, dot_self_, star_mulVec, dotProduct_mulVec, vecMul_vecMul, ← Matrix.star_eq_conjTranspose, hUU,
      vecMul_one]
  unfold eN
  rw [Complex.ofReal_injective h]

section Fr

variable (F : PtRepPf.Fr ε r k)

theorem wCoord_fix (M : Matrix (Fin n) (Fin n) ℂ) (he : ∀ c, M *ᵥ F.e c = F.e c)
    (hf : ∀ c, M *ᵥ F.fd c = F.fd c) (hz : M *ᵥ F.z = F.z) (x : Fin n → ℂ) :
    wCoord ε F.wb (M *ᵥ x) = wm ε F.wb M *ᵥ wCoord ε F.wb x := by
  have hx := PtRepPf.expand_of_dual ε F.bv F.dv F.card_ix F.dual x
  funext i
  have h2 : hJ ε (F.wb i) (M *ᵥ x) = ∑ j, hJ ε (F.dv j) x * hJ ε (F.wb i) (M *ᵥ F.bv j) := by
    conv_lhs => rw [hx]
    rw [mulVec_sum, PtRepPf.hJ_sum_right]
    simp only [mulVec_smul, PtRepPf.hJ_smul_right]
  show hJ ε (F.wb i) (M *ᵥ x) = ∑ j, wm ε F.wb M i j * hJ ε (F.wb j) x
  rw [h2, Fintype.sum_sum_type, Fintype.sum_sum_type, Fintype.sum_sum_type]
  simp only [PtRepPf.Fr.bv, PtRepPf.Fr.dv, Sum.elim_inl, Sum.elim_inr, he, hf, hz, F.we, F.wf, F.wz, mul_zero,
    Finset.sum_const_zero, zero_add]
  exact Finset.sum_congr rfl fun j _ => mul_comm _ _

theorem wCoord_N (N : Matrix (Fin n) (Fin n) ℂ) (hN : InN ε F.e F.z N) {x : Fin n → ℂ}
    (hx : ∀ c, hJ ε (F.e c) x = 0) : wCoord ε F.wb (N *ᵥ x) = wCoord ε F.wb x := by
  funext i
  show hJ ε (F.wb i) (N *ᵥ x) = hJ ε (F.wb i) x
  have e1 : N *ᵥ x = x + (N - 1) *ᵥ x := by rw [sub_mulVec, one_mulVec]; abel
  have h0 : hJ ε (F.wb i) ((N - 1) *ᵥ x) = 0 := by
    refine hJ_span_zero (F.wb i) (fun y hy => ?_) (hN.2 x hx)
    obtain ⟨c, -, rfl⟩ := hy
    exact F.we i c
  rw [e1, PtRepPf.hJ_add_right, h0, add_zero]

theorem perp_fix (g : Formalism.REAL.UJ ε) (he : ∀ c, uMat g *ᵥ F.e c = F.e c) {x : Fin n → ℂ}
    (hx : ∀ c, hJ ε (F.e c) x = 0) (c : Fin r) : hJ ε (F.e c) (uMat g *ᵥ x) = 0 := by
  rw [← he c, PtRepPf.hJ_UJ, hx]

theorem wm_unitary (g : Formalism.REAL.UJ ε) (he : ∀ c, uMat g *ᵥ F.e c = F.e c) (hz : uMat g *ᵥ F.z = F.z) :
    wm ε F.wb (uMat g) ∈ Matrix.unitaryGroup (Fin k) ℂ := by
  rw [Matrix.mem_unitaryGroup_iff']
  ext j l
  have hzw : ∀ m, hJ ε F.z (uMat g *ᵥ F.wb m) = 0 := fun m => by rw [← hz, PtRepPf.hJ_UJ, F.zw]
  have hew : ∀ m c, hJ ε (F.e c) (uMat g *ᵥ F.wb m) = 0 := fun m c => by rw [← he c, PtRepPf.hJ_UJ, F.ew]
  have hp := F.pair (uMat g *ᵥ F.wb j) (uMat g *ᵥ F.wb l) (hew j) (hew l)
  simp only [hzw, mul_zero, star_zero, zero_add] at hp
  rw [PtRepPf.hJ_UJ, F.ww] at hp
  rw [Matrix.mul_apply, Matrix.one_apply, hp]
  refine Finset.sum_congr rfl fun i _ => ?_
  simp only [Matrix.star_apply, wm]
  ring

theorem wm_mul (A H : Matrix (Fin n) (Fin n) ℂ) (he : ∀ c, A *ᵥ F.e c = F.e c) (hf : ∀ c, A *ᵥ F.fd c = F.fd c)
    (hz : A *ᵥ F.z = F.z) : wm ε F.wb (A * H) = wm ε F.wb A * wm ε F.wb H := by
  ext i j
  have h1 := congrFun (wCoord_fix F A he hf hz (H *ᵥ F.wb j)) i
  calc wm ε F.wb (A * H) i j = wCoord ε F.wb (A *ᵥ (H *ᵥ F.wb j)) i := by
        simp only [wm, wCoord, mulVec_mulVec]
    _ = _ := h1
    _ = (wm ε F.wb A * wm ε F.wb H) i j := by
        simp only [mulVec, dotProduct, Matrix.mul_apply, wm, wCoord]

end Fr

theorem move_loc (A B : PtRepPf.Fr ε r k) (i0 i0' : Fin k) (γ nn a nn' a' : Formalism.REAL.UJ ε)
    (hn : InN ε A.e A.z (uMat nn)) (hn' : InN ε B.e B.z (uMat nn'))
    (hae : ∀ c, uMat a *ᵥ A.e c = A.e c) (haf : ∀ c, uMat a *ᵥ A.fd c = A.fd c) (haz : uMat a *ᵥ A.z = A.z)
    (hae' : ∀ c, uMat a' *ᵥ B.e c = B.e c) (haf' : ∀ c, uMat a' *ᵥ B.fd c = B.fd c)
    (haz' : uMat a' *ᵥ B.z = B.z) (H H' : Matrix (Fin k) (Fin k) ℂ)
    (hD : IsDFrame ε (fam A.e A.z) (fam B.e B.z) (uMat γ) (uMat γ⁻¹) A.wb B.wb i0 i0' H H') :
    IsDFrame ε (fam A.e A.z) (fam B.e B.z) (uMat (nn * a * γ * a'⁻¹ * nn'⁻¹))
      (uMat ((nn * a * γ * a'⁻¹ * nn'⁻¹)⁻¹)) A.wb B.wb i0 i0' (wm ε A.wb (uMat a) * H)
      (wm ε B.wb (uMat a') * H') := by
  obtain ⟨hH, hH', hN1, hN2, hU0⟩ := hD
  have haF : ∀ b, uMat a *ᵥ fam A.e A.z b = fam A.e A.z b := fam_fix hae haz
  have haF' : ∀ b, uMat a' *ᵥ fam B.e B.z b = fam B.e B.z b := fam_fix hae' haz'
  have haiF : ∀ b, uMat a⁻¹ *ᵥ fam A.e A.z b = fam A.e A.z b := fun b => fix_inv a (haF b)
  have haiF' : ∀ b, uMat a'⁻¹ *ᵥ fam B.e B.z b = fam B.e B.z b := fun b => fix_inv a' (haF' b)
  obtain ⟨Q, hQt, hQd, hQ⟩ := tri A.e A.z (uMat nn⁻¹)
    (Formalism.L2.SG.RealObj.SpanPreservation.inN_inv ε A.e A.z (uMat nn) (uMat nn⁻¹) (_root_.Formalism.L2.SG.PoincareInHH.Cut.uMat_inv_mul nn) hn).1
  obtain ⟨Q', hQt', hQd', hQ'⟩ := tri B.e B.z (uMat nn'⁻¹)
    (Formalism.L2.SG.RealObj.SpanPreservation.inN_inv ε B.e B.z (uMat nn') (uMat nn'⁻¹) (_root_.Formalism.L2.SG.PoincareInHH.Cut.uMat_inv_mul nn') hn').1
  obtain ⟨Qn, -, -, hQn⟩ := tri A.e A.z (uMat nn) hn.1
  obtain ⟨Qn', -, -, hQn'⟩ := tri B.e B.z (uMat nn') hn'.1
  have hWa := wm_unitary A a hae haz
  have hWa' := wm_unitary B a' hae' haz'

  have hG2f : ∀ b, uMat (nn * a * γ * a'⁻¹ * nn'⁻¹) *ᵥ fam B.e B.z b =
      uMat nn *ᵥ (uMat a *ᵥ ∑ c, Q' c b • (uMat γ *ᵥ fam B.e B.z c)) := fun b => by
    simp only [uMat_mul_, ← mulVec_mulVec, hQ', mulVec_sum, mulVec_smul, haiF']
  have hZ2 : Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat (nn * a * γ * a'⁻¹ * nn'⁻¹)) =
      Qᴴ * Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat γ) * Q' := by
    ext i j
    show hJ ε (fam A.e A.z i) (uMat (nn * a * γ * a'⁻¹ * nn'⁻¹) *ᵥ fam B.e B.z j) = _
    rw [hG2f, pair_na A.e A.z nn a Q hQ haF]
    simp only [PtRepPf.hJ_sum_right, PtRepPf.hJ_smul_right, Matrix.mul_apply, conjTranspose_apply,
      Finset.mul_sum, Finset.sum_mul]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun d _ => by
      simp only [Formalism.L2.SG.RealObj.Zhat]; ring
  obtain ⟨hcol, hrow, hdetZ⟩ := tri_adj (Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat γ)) Q Q' hQt hQd hQt' hQd'
  have hdet : Formalism.L2.SG.RealObj.Dl (Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat (nn * a * γ * a'⁻¹ * nn'⁻¹))) (r + 1) =
      Formalism.L2.SG.RealObj.Dl (Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat γ)) (r + 1) := by
    rw [_root_.Formalism.L2.SG.RealObj.InfCut.PtRepPf.dl_top, _root_.Formalism.L2.SG.RealObj.InfCut.PtRepPf.dl_top, hZ2, hdetZ]

  have hxPr : xPr (Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat (nn * a * γ * a'⁻¹ * nn'⁻¹)))
      (uMat (nn * a * γ * a'⁻¹ * nn'⁻¹)) (fam B.e B.z) =
      uMat nn *ᵥ (uMat a *ᵥ xPr (Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat γ)) (uMat γ) (fam B.e B.z)) :=
    xPr_move _ _ Q' _ _ _ _ _ hG2f (by rw [hZ2]; exact hcol)
  have hwc1 : wCoord ε A.wb (xPr (Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat (nn * a * γ * a'⁻¹ * nn'⁻¹)))
      (uMat (nn * a * γ * a'⁻¹ * nn'⁻¹)) (fam B.e B.z)) =
      wm ε A.wb (uMat a) *ᵥ wCoord ε A.wb (xPr (Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat γ)) (uMat γ) (fam B.e B.z)) := by
    rw [hxPr, wCoord_N A _ hn (perp_fix A a hae (fun c => xPr_perp A.e A.z _ _ c)), wCoord_fix A _ hae haf haz]

  have hg2inv : (nn * a * γ * a'⁻¹ * nn'⁻¹)⁻¹ = nn' * a' * γ⁻¹ * a⁻¹ * nn⁻¹ := by group
  have hinv : ∀ x, uMat ((nn * a * γ * a'⁻¹ * nn'⁻¹)⁻¹) *ᵥ x =
      uMat nn' *ᵥ (uMat a' *ᵥ (uMat γ⁻¹ *ᵥ (uMat a⁻¹ *ᵥ (uMat nn⁻¹ *ᵥ x)))) := fun x => by
    rw [hg2inv]
    simp only [uMat_mul_, ← mulVec_mulVec]
  have hxUn : uMat a⁻¹ *ᵥ (uMat nn⁻¹ *ᵥ
      xUn (Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat (nn * a * γ * a'⁻¹ * nn'⁻¹))) (fam A.e A.z)) =
      xUn (Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat γ)) (fam A.e A.z) :=
    xUn_move _ _ Q _ _ _ hQ haiF (by rw [hZ2]; exact hrow)
  have hwc2 : wCoord ε B.wb (uMat ((nn * a * γ * a'⁻¹ * nn'⁻¹)⁻¹) *ᵥ
      xUn (Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat (nn * a * γ * a'⁻¹ * nn'⁻¹))) (fam A.e A.z)) =
      wm ε B.wb (uMat a') *ᵥ wCoord ε B.wb (uMat γ⁻¹ *ᵥ xUn (Zhat ε (fam A.e A.z) (fam B.e B.z) (uMat γ)) (fam A.e A.z)) := by
    rw [hinv, hxUn, wCoord_N B _ hn' (perp_fix B a' hae' (fun c => xUn_perp _ B.e B.z γ c)),
      wCoord_fix B _ hae' haf' haz']

  have hgrp : nn * a * γ * a'⁻¹ * nn'⁻¹ * nn' * a' = nn * a * γ := by group
  have hmv : ∀ v, uMat (nn * a * γ * a'⁻¹ * nn'⁻¹) *ᵥ (uMat nn' *ᵥ (uMat a' *ᵥ v)) =
      uMat nn *ᵥ (uMat a *ᵥ (uMat γ *ᵥ v)) := fun v => by
    have h := congrArg (fun g => uMat g *ᵥ v) hgrp
    simp only [uMat_mul_, ← mulVec_mulVec] at h ⊢
    exact h
  refine ⟨(Matrix.unitaryGroup (Fin k) ℂ).mul_mem hWa hH, (Matrix.unitaryGroup (Fin k) ℂ).mul_mem hWa' hH', ?_, ?_, ?_⟩
  · rw [hdet, hwc1, ← mulVec_smul, eN_unitary _ hWa, ← mulVec_smul, ← mulVec_mulVec, hN1]
  · rw [hdet, hwc2, ← mulVec_smul, eN_unitary _ hWa', ← mulVec_smul, ← mulVec_mulVec, hN2]
  · intro y hya hyb
    have hy0a : ∀ c, hJ ε (fam A.e A.z c) (uMat a⁻¹ *ᵥ (uMat nn⁻¹ *ᵥ y)) = 0 := by
      intro c
      rw [hJ_adj, inv_inv, haF c, hJ_adj, inv_inv, hQn c, PtRepPf.hJ_sum_left]
      exact Finset.sum_eq_zero fun d _ => by rw [PtRepPf.hJ_smul_left, hya d, mul_zero]
    have hy0b : ∀ b, hJ ε (uMat γ *ᵥ fam B.e B.z b) (uMat a⁻¹ *ᵥ (uMat nn⁻¹ *ᵥ y)) = 0 := by
      intro b
      rw [hJ_adj, inv_inv, hJ_adj, inv_inv, ← hmv, haF' b, hQn' b, mulVec_sum, PtRepPf.hJ_sum_left]
      exact Finset.sum_eq_zero fun c _ => by rw [mulVec_smul, PtRepPf.hJ_smul_left, hyb c, mul_zero]
    have hperp0 : ∀ c, hJ ε (B.e c) (uMat γ⁻¹ *ᵥ (uMat a⁻¹ *ᵥ (uMat nn⁻¹ *ᵥ y))) = 0 := fun c => by
      rw [hJ_adj, inv_inv, ← PtRepPf.fam_cs B.e B.z c]
      exact hy0b _
    have hperpA : ∀ c, hJ ε (A.e c) (uMat a⁻¹ *ᵥ (uMat nn⁻¹ *ᵥ y)) = 0 := fun c => by
      rw [← PtRepPf.fam_cs A.e A.z c]
      exact hy0a _
    have hyy : y = uMat nn *ᵥ (uMat a *ᵥ (uMat a⁻¹ *ᵥ (uMat nn⁻¹ *ᵥ y))) := by
      rw [cancel_ a, cancel_ nn]
    have hWW : ∀ v, star (wm ε B.wb (uMat a')) *ᵥ (wm ε B.wb (uMat a') *ᵥ v) = v := fun v => by
      rw [mulVec_mulVec, (Matrix.mem_unitaryGroup_iff').1 hWa', one_mulVec]
    conv_rhs => rw [hyy]
    rw [wCoord_N A _ hn (perp_fix A a hae hperpA), wCoord_fix A _ hae haf haz, hinv,
      wCoord_N B _ hn' (perp_fix B a' hae' hperp0), wCoord_fix B _ hae' haf' haz', star_mul,
      ← mulVec_mulVec, ← mulVec_mulVec, hWW, hU0 _ hy0a hy0b]

end ClassFrameUnitaryMoves

open ClassFrameUnitaryMoves

variable {D : Formalism.BasicNotions.D7} (X : HidaSetting D)

theorem dFrameMoveHC_holds (u u' : D.what₂.Word) (i0 i0' : ∀ _ : NumberField.InfinitePlace X.B.I.F, Fin D.R.k) :
    DFrameMoveHC X u u' i0 i0' := by
  intro γ h h' n a n' a' hD hn ha hn' ha'
  unfold Formalism.L2.SG.RealObj.IsDFrameX at hD ⊢
  have hmulH : ∀ w {p q : X.B.I.Ginf}, p ∈ HsetU X w → q ∈ HsetU X w → p * q ∈ HsetU X w := by
    intro w p q hp hq v x hx
    show uMat (p v * q v) *ᵥ rv X.B.I v x = rv X.B.I v x
    rw [uMat_mul_, ← mulVec_mulVec, hq v x hx, hp v x hx]
  refine ⟨hmulH u ha hD.1, hmulH u' ha' hD.2.1, fun v => ?_⟩
  have hfx : ∀ w (p : X.B.I.Ginf), p ∈ HsetU X w →
      (∀ c, uMat (p v) *ᵥ rv X.B.I v (X.eR c) = rv X.B.I v (X.eR c)) ∧
      (∀ c, uMat (p v) *ᵥ rv X.B.I v (X.fR c) = rv X.B.I v (X.fR c)) ∧
      uMat (p v) *ᵥ rv X.B.I v (X.zR w) = rv X.B.I v (X.zR w) := fun w p hp =>
    ⟨fun c => hp v _ (Or.inl (Or.inl ⟨c, rfl⟩)), fun c => hp v _ (Or.inl (Or.inr ⟨c, rfl⟩)), hp v _ (Or.inr rfl)⟩
  obtain ⟨hae, haf, haz⟩ := hfx u a ha
  obtain ⟨hae', haf', haz'⟩ := hfx u' a' ha'
  have hfrm : ∀ w, frm X w 1 v = fam (fun c => rv X.B.I v (X.eR c)) (rv X.B.I v (X.zR w)) := fun w => by
    funext b
    simp [frm, famSc]
  have hmat : ∀ w (p q : X.B.I.Ginf), p ∈ HsetU X w →
      matW X.B.I (X.wfr w v) v (p * q) = wm (X.B.I.ε v) (X.wfr w v) (uMat (p v)) * matW X.B.I (X.wfr w v) v q :=
    fun w p q hp => by
      obtain ⟨he, hf, hz⟩ := hfx w p hp
      exact wm_mul (PtRepPf.frU X w v) (uMat (p v)) (uMat (q v)) he hf hz
  rw [hmat u a h ha, hmat u' a' h' ha', hfrm u, hfrm u']
  have h0 := hD.2.2 v
  rw [hfrm u, hfrm u'] at h0
  exact move_loc (PtRepPf.frU X u v) (PtRepPf.frU X u' v) (i0 v) (i0' v) (γ v) (n v) (a v) (n' v) (a' v)
    (hn v) (hn' v) hae haf haz hae' haf' haz' _ _ h0

end Formalism.L2.SG.Pf.RowForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameMoveH =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameSDecomp =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameSDecomp", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameOO3FrameValTrans\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.HermitianCombinationZ\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SpanPreservation\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.StepPtRepPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj

namespace Formalism.L2.SG.Pf.RowForm

namespace LocalFrameDecomposition

variable {D : Formalism.BasicNotions.D7} (X : HidaSetting D)

theorem frameLoc (w : D.what₂.Word) (v : NumberField.InfinitePlace X.B.I.F) :
    PI.SchurPlaces.LeviLA.Frame (X.B.I.ε v) (fun a => rv X.B.I v (X.eR a)) (fun a => rv X.B.I v (X.fR a))
      (rv X.B.I v (X.zR w)) (X.wfr w v) := by
  let fr := Formalism.L2.SG.RealObj.InfCut.PtRepPf.frU X w v
  exact
    { ee := fr.ee
      ef := fr.ef
      ff := fr.ff
      ez := fr.ez
      fz := fr.fz
      ew := fr.ew
      fw := fr.fw
      zw := fr.zw
      ww := fr.ww
      zz := fun h0 => fr.T_ne (neg_eq_zero.1 (fr.zz.symm.trans h0))
      card := by
        have h := fr.card
        omega }

end LocalFrameDecomposition

variable {D : Formalism.BasicNotions.D7} (X : HidaSetting D)

theorem sDecompC_holds (w : D.what₂.Word) : SDecompC X w := by
  intro g hg
  have hgi : g⁻¹ ∈ X.SinfU w := Formalism.L2.SG.RealObj.InfCut.sinfU_inv X w hg
  have hS : ∀ v, InS (fun a => rv X.B.I v (X.eR a)) (rv X.B.I v (X.zR w)) (uMat (g⁻¹ v)) := hgi
  choose V hVu hVe hVf hVz _ hVN using fun v =>
    PI.SchurPlaces.LeviLA.levi_place (LocalFrameDecomposition.frameLoc X w v)
      ((g⁻¹ v : Formalism.REAL.UJ (X.B.I.ε v)) : (Matrix (Fin X.B.I.n) (Fin X.B.I.n) ℂ)ˣ) (g⁻¹ v).2 (hS v)
  let s0 : X.B.I.Ginf := fun v => ⟨V v, hVu v⟩
  have hs0 : ∀ v, uMat (s0 v) = (V v : Matrix (Fin X.B.I.n) (Fin X.B.I.n) ℂ) := fun v => rfl
  have hs0H : s0 ∈ HsetU X w := by
    intro v p hp
    rw [hs0]
    rcases hp with (⟨a, rfl⟩ | ⟨a, rfl⟩) | hp
    · exact hVe v a
    · exact hVf v a
    · rw [Set.mem_singleton_iff] at hp
      subst hp
      exact hVz v
  have hN : s0⁻¹ * g⁻¹ ∈ X.NinfU w := fun v => by
    have e : uMat ((s0⁻¹ * g⁻¹) v) =
        (((V v)⁻¹ : (Matrix (Fin X.B.I.n) (Fin X.B.I.n) ℂ)ˣ) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) ℂ) *
          uMat (g⁻¹ v) := rfl
    rw [e]
    exact hVN v
  have hN' := Formalism.L2.SG.RealObj.SpanPreservation.ninfU_inv X w hN
  rw [_root_.mul_inv_rev, inv_inv, inv_inv] at hN'
  exact ⟨g * s0, hN', s0⁻¹, Formalism.L2.SG.RealObj.InfCut.hsetU_inv X w hs0H, by group⟩

end Formalism.L2.SG.Pf.RowForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameSDecomp =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.OrthogonalComplementRational =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.OrthogonalComplementRational", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameOO1FrameValPiIso\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.HermitianETransportInvariant\npublic import Mathlib.LinearAlgebra.Matrix.Rank\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.LinearIndependent.BaseChange\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace Formalism.L2.SG.Pf.RowForm.ClassFrameOO2Aux

open Module

open scoped Matrix

theorem rank_le_rank_map {K L : Type*} [Field K] [Field L] (φ : K →+* L) {m n : Type*} [Fintype m] [Fintype n]
    (A : Matrix m n K) : A.rank ≤ (A.map φ).rank := by
  letI := φ.toAlgebra
  haveI : FaithfulSMul K L := (faithfulSMul_iff_algebraMap_injective K L).2 φ.injective
  rw [← Matrix.finrank_span_range_col, ← Matrix.finrank_span_range_col]
  obtain ⟨b, hbs, hspan, hli⟩ := exists_linearIndependent K (Set.range A.col)
  have hbfin : b.Finite := (Set.finite_range _).subset hbs
  haveI := hbfin.fintype
  have h1 : finrank K (Submodule.span K (Set.range A.col)) = Fintype.card b := by
    rw [← hspan, finrank_span_set_eq_card hli, Set.toFinset_card]
  have hli' : LinearIndependent L (fun i : b => algebraMap K L ∘ (i : m → K)) :=
    linearIndependent_algebraMap_comp_iff.2 hli
  have hsub : Set.range (fun i : b => algebraMap K L ∘ (i : m → K)) ⊆ Set.range (A.map φ).col := by
    rintro _ ⟨⟨x, hx⟩, rfl⟩
    obtain ⟨j, rfl⟩ := hbs hx
    refine ⟨j, ?_⟩
    funext i
    simp [Matrix.col_apply, Matrix.map_apply, RingHom.algebraMap_toAlgebra]
  calc finrank K (Submodule.span K (Set.range A.col)) = Fintype.card b := h1
    _ = finrank L (Submodule.span L (Set.range (fun i : b => algebraMap K L ∘ (i : m → K)))) :=
        (finrank_span_eq_card hli').symm
    _ ≤ _ := Submodule.finrank_mono (Submodule.span_mono hsub)

theorem ker_map_le_span {K L : Type*} [Field K] [Field L] (φ : K →+* L) {m n : Type*} [Fintype m] [Fintype n]
    (A : Matrix m n K) (z : n → L) (hz : (A.map φ) *ᵥ z = 0) :
    z ∈ Submodule.span L ((fun x : n → K => φ ∘ x) '' {x | A *ᵥ x = 0}) := by
  letI := φ.toAlgebra
  haveI : FaithfulSMul K L := (faithfulSMul_iff_algebraMap_injective K L).2 φ.injective
  set S := LinearMap.ker A.mulVecLin
  let bS := Module.finBasis K S
  let w : Fin (finrank K S) → n → L := fun i => algebraMap K L ∘ ((bS i : S) : n → K)
  have hli0 : LinearIndependent K (fun i => ((bS i : S) : n → K)) :=
    bS.linearIndependent.map' S.subtype (Submodule.ker_subtype S)
  have hw : LinearIndependent L w := linearIndependent_algebraMap_comp_iff.2 hli0
  have hmap : ∀ x : n → K, (A.map φ) *ᵥ (φ ∘ x) = φ ∘ (A *ᵥ x) := by
    intro x
    funext k

    simp [Matrix.mulVec, dotProduct, Matrix.map_apply, map_sum]
  have hT : Submodule.span L (Set.range w) ≤ LinearMap.ker (A.map φ).mulVecLin := by
    rw [Submodule.span_le]
    rintro _ ⟨i, rfl⟩
    have hx : A *ᵥ ((bS i : S) : n → K) = 0 := (bS i).2
    show (A.map φ) *ᵥ w i = 0
    have : w i = φ ∘ ((bS i : S) : n → K) := by
      funext k
      simp [w, RingHom.algebraMap_toAlgebra]
    rw [this, hmap, hx]
    funext k
    simp
  have hdim : finrank L (LinearMap.ker (A.map φ).mulVecLin) ≤ finrank L (Submodule.span L (Set.range w)) := by
    rw [finrank_span_eq_card hw, Fintype.card_fin]
    have h1 := LinearMap.finrank_range_add_finrank_ker A.mulVecLin
    have h2 := LinearMap.finrank_range_add_finrank_ker (A.map φ).mulVecLin
    have h3 := rank_le_rank_map φ A
    rw [← Matrix.finrank_range_mulVecLin, ← Matrix.finrank_range_mulVecLin] at h3
    rw [Module.finrank_fintype_fun_eq_card] at h1 h2
    have hS : finrank K S = finrank K (LinearMap.ker A.mulVecLin) := rfl
    rw [hS]
    omega
  have heq := Submodule.eq_of_le_of_finrank_le hT hdim
  have hz' : z ∈ LinearMap.ker (A.map φ).mulVecLin := hz
  rw [← heq] at hz'
  refine Submodule.span_mono ?_ hz'
  rintro _ ⟨i, rfl⟩
  refine ⟨((bS i : S) : n → K), (bS i).2, ?_⟩
  funext k
  simp [w, RingHom.algebraMap_toAlgebra]

section Coord

variable {D : Formalism.BasicNotions.D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D)

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting

theorem hJ_swap' {n : ℕ} (ε : Fin n → Bool) (x y : Fin n → ℂ) : hJ ε y x = star (hJ ε x y) := by
  unfold hJ Formalism.REAL.Jm
  simp only [Matrix.mulVec_diagonal, dotProduct, star_sum, star_mul', star_star, Pi.star_apply]
  refine Finset.sum_congr rfl fun i _ => ?_
  split_ifs <;> simp [mul_comm]

theorem hJ_add_right {n : ℕ} (ε : Fin n → Bool) (x y y' : Fin n → ℂ) : hJ ε x (y + y') = hJ ε x y + hJ ε x y' := by
  unfold hJ; rw [Matrix.mulVec_add, dotProduct_add]

theorem hJ_smul_right {n : ℕ} (ε : Fin n → Bool) (x y : Fin n → ℂ) (c : ℂ) : hJ ε x (c • y) = c * hJ ε x y := by
  unfold hJ; rw [Matrix.mulVec_smul, dotProduct_smul, smul_eq_mul]

theorem hJ_zero_right {n : ℕ} (ε : Fin n → Bool) (x : Fin n → ℂ) : hJ ε x 0 = 0 := by
  unfold hJ; simp

theorem wCoord_add {n k : ℕ} (ε : Fin n → Bool) (wb : Fin k → Fin n → ℂ) (y y' : Fin n → ℂ) :
    Formalism.L2.SG.RealObj.wCoord ε wb (y + y') = Formalism.L2.SG.RealObj.wCoord ε wb y + Formalism.L2.SG.RealObj.wCoord ε wb y' := by
  funext i; simp [Formalism.L2.SG.RealObj.wCoord, hJ_add_right]

theorem wCoord_smul {n k : ℕ} (ε : Fin n → Bool) (wb : Fin k → Fin n → ℂ) (c : ℂ) (y : Fin n → ℂ) :
    Formalism.L2.SG.RealObj.wCoord ε wb (c • y) = c • Formalism.L2.SG.RealObj.wCoord ε wb y := by
  funext i; simp [Formalism.L2.SG.RealObj.wCoord, hJ_smul_right]

theorem wCoord_zero {n k : ℕ} (ε : Fin n → Bool) (wb : Fin k → Fin n → ℂ) :
    Formalism.L2.SG.RealObj.wCoord ε wb 0 = 0 := by
  funext i; simp [Formalism.L2.SG.RealObj.wCoord, hJ_zero_right]

def famE (w : D.what₂.Word) : Fin (D.R.rS + 1) → Fin X.B.I.n → X.B.I.E :=
  Fin.snoc (α := fun _ => Fin X.B.I.n → X.B.I.E) X.eR (X.zR w)

theorem frm_one (w : D.what₂.Word) (v : NumberField.InfinitePlace X.B.I.F) :
    Formalism.L2.SG.RealObj.frm X w 1 v = fun a => rv X.B.I v (famE X w a) := by
  funext a
  unfold Formalism.L2.SG.RealObj.frm Formalism.L2.SG.RealObj.famSc Formalism.L2.SG.RealObj.fam famE
  simp only [Complex.ofReal_one, one_pow, inv_one, one_smul]
  refine Fin.lastCases ?_ (fun i => ?_) a
  · simp only [Fin.snoc_last]
  · simp only [Fin.snoc_castSucc]

def WperpE (w : D.what₂.Word) : Submodule X.B.I.E (Fin X.B.I.n → X.B.I.E) :=
  Submodule.span X.B.I.E (Set.range X.eR ∪ Set.range X.fR ∪ {X.zR w})

theorem rv_add' (v : NumberField.InfinitePlace X.B.I.F) (x y : Fin X.B.I.n → X.B.I.E) :
    rv X.B.I v (x + y) = rv X.B.I v x + rv X.B.I v y :=
  map_add (Formalism.L2.SG.Pf.Level.rvHom X v) x y

theorem rv_sub' (v : NumberField.InfinitePlace X.B.I.F) (x y : Fin X.B.I.n → X.B.I.E) :
    rv X.B.I v (x - y) = rv X.B.I v x - rv X.B.I v y :=
  map_sub (Formalism.L2.SG.Pf.Level.rvHom X v) x y

theorem rv_smul'' (v : NumberField.InfinitePlace X.B.I.F) (c : X.B.I.E) (x : Fin X.B.I.n → X.B.I.E) :
    rv X.B.I v (c • x) = X.B.I.φ v c • rv X.B.I v x :=
  Formalism.L2.SG.Pf.Level.rv_smul X v c x

theorem rv_sum' {ι : Type*} (s : Finset ι) (v : NumberField.InfinitePlace X.B.I.F) (x : ι → Fin X.B.I.n → X.B.I.E) :
    rv X.B.I v (∑ i ∈ s, x i) = ∑ i ∈ s, rv X.B.I v (x i) :=
  map_sum (Formalism.L2.SG.Pf.Level.rvHom X v) x s

theorem rv_zero' (v : NumberField.InfinitePlace X.B.I.F) : rv X.B.I v 0 = 0 :=
  map_zero (Formalism.L2.SG.Pf.Level.rvHom X v)

theorem wCoord_perp (w : D.what₂.Word) (v : NumberField.InfinitePlace X.B.I.F) (x : Fin X.B.I.n → X.B.I.E)
    (hx : x ∈ WperpE X w) : Formalism.L2.SG.RealObj.wCoord (X.B.I.ε v) (X.wfr w v) (rv X.B.I v x) = 0 := by
  induction hx using Submodule.span_induction with
  | mem y hy =>
    funext i
    show hJ (X.B.I.ε v) (X.wfr w v i) (rv X.B.I v y) = 0
    rw [hJ_swap']
    have hp := X.wfr_perp w v i
    rcases hy with (⟨c, rfl⟩ | ⟨c, rfl⟩) | hz
    · rw [show hJ (X.B.I.ε v) (rv X.B.I v (X.eR c)) (X.wfr w v i) = 0 from (hp.1 c).1, star_zero]
    · rw [show hJ (X.B.I.ε v) (rv X.B.I v (X.fR c)) (X.wfr w v i) = 0 from (hp.1 c).2, star_zero]
    · rw [Set.mem_singleton_iff] at hz
      subst hz
      rw [show hJ (X.B.I.ε v) (rv X.B.I v (X.zR w)) (X.wfr w v i) = 0 from hp.2, star_zero]
  | zero => rw [rv_zero', wCoord_zero]
  | add x y _ _ hx hy => rw [rv_add', wCoord_add, hx, hy, add_zero]
  | smul c x _ hx => rw [rv_smul'', wCoord_smul, hx, smul_zero]

theorem wCoord_eq_of_perp (w : D.what₂.Word) (v : NumberField.InfinitePlace X.B.I.F) (x y : Fin X.B.I.n → X.B.I.E)
    (h : x - y ∈ WperpE X w) :
    Formalism.L2.SG.RealObj.wCoord (X.B.I.ε v) (X.wfr w v) (rv X.B.I v x) =
      Formalism.L2.SG.RealObj.wCoord (X.B.I.ε v) (X.wfr w v) (rv X.B.I v y) := by
  have h0 := wCoord_perp X w v _ h
  rw [rv_sub', show rv X.B.I v x - rv X.B.I v y = rv X.B.I v x + (-1 : ℂ) • rv X.B.I v y by
    rw [neg_one_smul, sub_eq_add_neg], wCoord_add, wCoord_smul, neg_one_smul, ← sub_eq_add_neg, sub_eq_zero] at h0
  exact h0

end Coord

section Real

variable {D : Formalism.BasicNotions.D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D)

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting

def ZE (u u' : D.what₂.Word) (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) :
    Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) X.B.I.E :=
  fun a b => Formalism.L2.SG.Pf.Level.hE X (famE X u a) (M *ᵥ famE X u' b)

def xPrE (u u' : D.what₂.Word) (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) : Fin X.B.I.n → X.B.I.E :=
  ∑ b, (ZE X u u' M).adjugate b (Fin.last _) • (M *ᵥ famE X u' b)

def xUnE (u u' : D.what₂.Word) (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) : Fin X.B.I.n → X.B.I.E :=
  ∑ a, star ((ZE X u u' M).adjugate (Fin.last _) a) • famE X u a

def nu1E (u u' : D.what₂.Word) (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) : Fin X.B.I.n → X.B.I.E :=
  ((ZE X u u' M).det)⁻¹ • xPrE X u u' M

def nu2E (u u' : D.what₂.Word) (M Mi : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) : Fin X.B.I.n → X.B.I.E :=
  (star (ZE X u u' M).det)⁻¹ • (Mi *ᵥ xUnE X u u' M)

def orthogonalComplementRational (u u' : D.what₂.Word) (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) (y : Fin X.B.I.n → X.B.I.E) : Prop :=
  (∀ a, Formalism.L2.SG.Pf.Level.hE X (famE X u a) y = 0) ∧ ∀ b, Formalism.L2.SG.Pf.Level.hE X (M *ᵥ famE X u' b) y = 0

variable (u u' : D.what₂.Word) (v : NumberField.InfinitePlace X.B.I.F)

abbrev rl (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) ℂ :=
  (X.B.I.P v)⁻¹ * M.map (X.B.I.φ v) * X.B.I.P v

theorem zhat_rat (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) :
    Formalism.L2.SG.RealObj.Zhat (X.B.I.ε v) (Formalism.L2.SG.RealObj.frm X u 1 v) (Formalism.L2.SG.RealObj.frm X u' 1 v) (rl X v M) =
      (ZE X u u' M).map (X.B.I.φ v) := by
  ext a b
  rw [frm_one, frm_one]
  simp only [Formalism.L2.SG.RealObj.Zhat, Matrix.map_apply, ZE]
  rw [Formalism.L2.SG.Pf.Level.rv_mulVec, Formalism.L2.SG.Pf.Level.hJ_rv]

theorem dl_rat (Z : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) X.B.I.E) :
    Formalism.L2.SG.RealObj.Dl (Z.map (X.B.I.φ v)) (D.R.rS + 1) = X.B.I.φ v Z.det := by
  unfold Formalism.L2.SG.RealObj.Dl
  rw [dite_eq_left le_rfl, RingHom.map_det]
  congr 1

theorem adj_rat (Z : Matrix (Fin (D.R.rS + 1)) (Fin (D.R.rS + 1)) X.B.I.E) :
    (Z.map (X.B.I.φ v)).adjugate = Z.adjugate.map (X.B.I.φ v) :=
  (RingHom.map_adjugate (X.B.I.φ v) Z).symm

theorem xPr_rat (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) :
    Formalism.L2.SG.RealObj.xPr ((ZE X u u' M).map (X.B.I.φ v)) (rl X v M) (Formalism.L2.SG.RealObj.frm X u' 1 v) =
      rv X.B.I v (xPrE X u u' M) := by
  unfold Formalism.L2.SG.RealObj.xPr xPrE
  rw [adj_rat, frm_one, rv_sum']
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [rv_smul'', Formalism.L2.SG.Pf.Level.rv_mulVec, Matrix.map_apply]

theorem xUn_rat (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) :
    Formalism.L2.SG.RealObj.xUn ((ZE X u u' M).map (X.B.I.φ v)) (Formalism.L2.SG.RealObj.frm X u 1 v) =
      rv X.B.I v (xUnE X u u' M) := by
  unfold Formalism.L2.SG.RealObj.xUn xUnE
  rw [adj_rat, frm_one, rv_sum']
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [rv_smul'', Matrix.map_apply, Formalism.L2.SG.Pf.Level.phi_star]

theorem wCoord_rvsmul {k : ℕ} (wb : Fin k → Fin X.B.I.n → ℂ) (c : X.B.I.E) (x : Fin X.B.I.n → X.B.I.E) :
    X.B.I.φ v c • Formalism.L2.SG.RealObj.wCoord (X.B.I.ε v) wb (rv X.B.I v x) =
      Formalism.L2.SG.RealObj.wCoord (X.B.I.ε v) wb (rv X.B.I v (c • x)) := by
  rw [rv_smul'', wCoord_smul]

theorem firstNormal_rational (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) :
    ClassFrameUnitaryProducts.nrm1 (X.B.I.ε v) (Formalism.L2.SG.RealObj.frm X u 1 v) (Formalism.L2.SG.RealObj.frm X u' 1 v) (rl X v M)
        (X.wfr u v) = Formalism.L2.SG.RealObj.wCoord (X.B.I.ε v) (X.wfr u v) (rv X.B.I v (nu1E X u u' M)) := by
  unfold ClassFrameUnitaryProducts.nrm1 nu1E
  rw [zhat_rat, dl_rat, xPr_rat, ← map_inv₀, wCoord_rvsmul]

theorem secondNormal_rational (M Mi : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) :
    ClassFrameUnitaryProducts.nrm2 (X.B.I.ε v) (Formalism.L2.SG.RealObj.frm X u 1 v) (Formalism.L2.SG.RealObj.frm X u' 1 v) (rl X v M)
        (rl X v Mi) (X.wfr u' v) = Formalism.L2.SG.RealObj.wCoord (X.B.I.ε v) (X.wfr u' v) (rv X.B.I v (nu2E X u u' M Mi)) := by
  unfold ClassFrameUnitaryProducts.nrm2 nu2E
  rw [zhat_rat, dl_rat, xUn_rat, Formalism.L2.SG.Pf.Level.rv_mulVec, ← Formalism.L2.SG.Pf.Level.phi_star, ← map_inv₀,
    wCoord_rvsmul]

end Real

end Formalism.L2.SG.Pf.RowForm.ClassFrameOO2Aux

namespace Formalism.L2.SG.Pf.RowForm

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.Pf.RowForm.ClassFrameOO2Aux

open scoped Matrix

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (X : HidaSetting D) (Y : Formalism.L2.SG.Full.Full X) (u u' : D.what₂.Word)
  (κ : TermDef.Term D u u' (X.Fu u) (Y.what₂ u) → ℕ)

def ratM (s : Formalism.L2.SG.TermOp.GTerm X u u' (X.Fu u) (X.Fu u') (Y.what₂ u) (Y.what₂ u')) :
    GL (Fin X.B.I.n) X.B.I.E :=
  s.rep.2.1.choose

theorem uMat_ratM (s : Formalism.L2.SG.TermOp.GTerm X u u' (X.Fu u) (X.Fu u') (Y.what₂ u) (Y.what₂ u'))
    (v : NumberField.InfinitePlace X.B.I.F) :
    uMat (s.pt.1 v) = rl X v ((ratM X Y u u' s : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) :=
  s.rep.2.1.choose_spec.2.1 v

theorem uMat_inv_ratM (s : Formalism.L2.SG.TermOp.GTerm X u u' (X.Fu u) (X.Fu u') (Y.what₂ u) (Y.what₂ u'))
    (v : NumberField.InfinitePlace X.B.I.F) :
    uMat ((s.pt.1 v)⁻¹) =
      rl X v (((ratM X Y u u' s)⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) := by
  have hPu : IsUnit (X.B.I.P v).det := (Matrix.isUnit_iff_isUnit_det _).1 (X.B.I.P_unit v)
  have h1 : uMat ((s.pt.1 v)⁻¹) * uMat (s.pt.1 v) = 1 := Formalism.L2.SG.RealObj.InfCut.uMat_inv_mul' _
  have e : ((((ratM X Y u u' s)⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E).map
      (X.B.I.φ v)) * (((ratM X Y u u' s : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E).map
      (X.B.I.φ v)) = 1 := by
    rw [← Matrix.map_mul, ← Units.val_mul, inv_mul_cancel, Units.val_one, Matrix.map_one _ (map_zero _) (map_one _)]
  have h2 : rl X v (((ratM X Y u u' s)⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) *
      uMat (s.pt.1 v) = 1 := by
    rw [uMat_ratM]
    simp only [rl, Matrix.mul_assoc]
    rw [Matrix.mul_nonsing_inv_cancel_left _ _ hPu, ← Matrix.mul_assoc (Matrix.map _ _), e, Matrix.one_mul,
      Matrix.nonsing_inv_mul _ hPu]
  have h3 : uMat (s.pt.1 v) * uMat ((s.pt.1 v)⁻¹) = 1 := mul_eq_one_comm.1 h1
  calc uMat ((s.pt.1 v)⁻¹) = (rl X v (((ratM X Y u u' s)⁻¹ : GL (Fin X.B.I.n) X.B.I.E) :
        Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) * uMat (s.pt.1 v)) * uMat ((s.pt.1 v)⁻¹) := by rw [h2, Matrix.one_mul]
    _ = _ := by rw [Matrix.mul_assoc, h3, Matrix.mul_one]

def ScalarAgreeRatC : Prop :=
  ∀ (R : Formalism.L2.SG.TermOp.Rw (Y.what₂ u) (Y.what₂ u') Y.TR) (ρ : ℕ) (s₁ s₂ : LiftT X Y u u' κ R ρ),
    s₁.1.relevant → s₂.1.relevant →
      nu1E X u u' (ratM X Y u u' s₁.1 : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) -
          nu1E X u u' (ratM X Y u u' s₂.1 : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) ∈ WperpE X u ∧
      nu2E X u u' (ratM X Y u u' s₁.1 : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E)
            (((ratM X Y u u' s₁.1)⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) -
          nu2E X u u' (ratM X Y u u' s₂.1 : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E)
            (((ratM X Y u u' s₂.1)⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) ∈ WperpE X u' ∧
      ∀ y₂, orthogonalComplementRational X u u' (ratM X Y u u' s₂.1 : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) y₂ →
        ∃ y₁, orthogonalComplementRational X u u' (ratM X Y u u' s₁.1 : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) y₁ ∧ y₁ - y₂ ∈ WperpE X u ∧
          (((ratM X Y u u' s₁.1)⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) *ᵥ y₁ -
            (((ratM X Y u u' s₂.1)⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) *ᵥ y₂ ∈
              WperpE X u'

end Formalism.L2.SG.Pf.RowForm

namespace Formalism.L2.SG.Pf.RowForm

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.Pf.RowForm.ClassFrameOO2Aux

open scoped Matrix

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (X : HidaSetting D) (Y : Formalism.L2.SG.Full.Full X) (u u' : D.what₂.Word)
  (κ : TermDef.Term D u u' (X.Fu u) (Y.what₂ u) → ℕ)

theorem classFrameOO2_hE_expand (a x : Fin X.B.I.n → X.B.I.E) :
    Formalism.L2.SG.Pf.Level.hE X a x = ∑ j, Formalism.L2.SG.Pf.Level.hE X a (Pi.single j 1) * x j := by
  conv_lhs => rw [← Formalism.L2.SG.Pf.Level.sum_single X x]

  rw [← Formalism.L2.SG.Pf.Level.hEl_apply, map_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [map_smul, Formalism.L2.SG.Pf.Level.hEl_apply, smul_eq_mul, mul_comm]

theorem classFrameOO2_hJ_sum {n : ℕ} (ε : Fin n → Bool) (x : Fin n → ℂ) {ι : Type*} (s : Finset ι) (f : ι → Fin n → ℂ) :
    hJ ε x (∑ i ∈ s, f i) = ∑ i ∈ s, hJ ε x (f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [hJ_zero_right]
  | insert j s hj ih => rw [Finset.sum_insert hj, Finset.sum_insert hj, hJ_add_right, ih]

theorem classFrameOO2_hJ_expand (v : NumberField.InfinitePlace X.B.I.F) (a : Fin X.B.I.n → X.B.I.E) (y : Fin X.B.I.n → ℂ) :
    hJ (X.B.I.ε v) (rv X.B.I v a) y =
      ∑ j, X.B.I.φ v (Formalism.L2.SG.Pf.Level.hE X a (Pi.single j 1)) * (X.B.I.P v *ᵥ y) j := by
  have hPu : IsUnit (X.B.I.P v).det := (Matrix.isUnit_iff_isUnit_det _).1 (X.B.I.P_unit v)
  have hs1 : ∀ j, rv X.B.I v (Pi.single j 1) = (X.B.I.P v)⁻¹ *ᵥ Pi.single j 1 := by
    intro j
    unfold rv
    congr 1
    funext k
    by_cases h : k = j
    · subst h; simp
    · simp [h]
  have hy : y = ∑ j, (X.B.I.P v *ᵥ y) j • rv X.B.I v (Pi.single j 1) := by
    simp only [hs1, ← Matrix.mulVec_smul, ← Matrix.mulVec_sum]
    rw [Formalism.L2.SG.Pf.Level.sum_single X, Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hPu, Matrix.one_mulVec]
  conv_lhs => rw [hy]
  rw [classFrameOO2_hJ_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [hJ_smul_right, Formalism.L2.SG.Pf.Level.hJ_rv, mul_comm]

theorem scalarAgreeC_of_rat (hR : ScalarAgreeRatC X Y u u' κ) : ScalarAgreeC X Y u u' κ := by
  intro R ρ s₁ s₂ h₁ h₂ v
  obtain ⟨ha, hb, hc⟩ := hR R ρ s₁ s₂ h₁ h₂
  have hPu : IsUnit (X.B.I.P v).det := (Matrix.isUnit_iff_isUnit_det _).1 (X.B.I.P_unit v)
  rw [uMat_ratM X Y u u' s₁.1 v, uMat_ratM X Y u u' s₂.1 v, uMat_inv_ratM X Y u u' s₁.1 v, uMat_inv_ratM X Y u u' s₂.1 v]
  refine ⟨?_, ?_, ?_⟩
  · rw [firstNormal_rational, firstNormal_rational]
    exact wCoord_eq_of_perp X u v _ _ ha
  · rw [secondNormal_rational, secondNormal_rational]
    exact wCoord_eq_of_perp X u' v _ _ hb
  · intro y₂ hy₂a hy₂b
    set M₁ : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E :=
      ((ratM X Y u u' s₁.1 : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) with hM₁
    set M₂ : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E :=
      ((ratM X Y u u' s₂.1 : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) with hM₂
    set Mi₁ : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E :=
      (((ratM X Y u u' s₁.1)⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) with hMi₁
    set Mi₂ : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E :=
      (((ratM X Y u u' s₂.1)⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) with hMi₂
    let wv : Fin (D.R.rS + 1) ⊕ Fin (D.R.rS + 1) → Fin X.B.I.n → X.B.I.E :=
      Sum.elim (famE X u) (fun b => M₂ *ᵥ famE X u' b)
    let A : Matrix (Fin (D.R.rS + 1) ⊕ Fin (D.R.rS + 1)) (Fin X.B.I.n) X.B.I.E :=
      fun i j => Formalism.L2.SG.Pf.Level.hE X (wv i) (Pi.single j 1)
    have hA : ∀ x i, (A *ᵥ x) i = Formalism.L2.SG.Pf.Level.hE X (wv i) x := by
      intro x i
      rw [classFrameOO2_hE_expand X (wv i) x]
      rfl
    have hAc : (A.map (X.B.I.φ v)) *ᵥ (X.B.I.P v *ᵥ y₂) = 0 := by
      funext i
      have h0 : hJ (X.B.I.ε v) (rv X.B.I v (wv i)) y₂ = 0 := by
        rcases i with a | b
        · have := hy₂a a
          rw [frm_one] at this
          exact this
        · have := hy₂b b
          rw [frm_one, Formalism.L2.SG.Pf.Level.rv_mulVec] at this
          exact this
      rw [classFrameOO2_hJ_expand] at h0
      simpa [Matrix.mulVec, dotProduct, Matrix.map_apply] using h0
    have hspan := ClassFrameOO2Aux.ker_map_le_span (X.B.I.φ v) A _ hAc
    have key : ∀ z ∈ Submodule.span ℂ ((fun x : Fin X.B.I.n → X.B.I.E => X.B.I.φ v ∘ x) '' {x | A *ᵥ x = 0}),
        ∃ y₁ : Fin X.B.I.n → ℂ,
          (∀ a, hJ (X.B.I.ε v) (Formalism.L2.SG.RealObj.frm X u 1 v a) y₁ = 0) ∧
          (∀ b, hJ (X.B.I.ε v) (rl X v M₁ *ᵥ Formalism.L2.SG.RealObj.frm X u' 1 v b) y₁ = 0) ∧
          Formalism.L2.SG.RealObj.wCoord (X.B.I.ε v) (X.wfr u v) y₁ =
            Formalism.L2.SG.RealObj.wCoord (X.B.I.ε v) (X.wfr u v) ((X.B.I.P v)⁻¹ *ᵥ z) ∧
          Formalism.L2.SG.RealObj.wCoord (X.B.I.ε v) (X.wfr u' v) (rl X v Mi₁ *ᵥ y₁) =
            Formalism.L2.SG.RealObj.wCoord (X.B.I.ε v) (X.wfr u' v) (rl X v Mi₂ *ᵥ ((X.B.I.P v)⁻¹ *ᵥ z)) := by
      intro z hz
      induction hz using Submodule.span_induction with
      | mem z hz =>
        obtain ⟨x, hx, rfl⟩ := hz
        have hx0 : A *ᵥ x = 0 := hx
        have hxU : orthogonalComplementRational X u u' M₂ x := by
          refine ⟨fun a => ?_, fun b => ?_⟩
          · have := congrFun hx0 (Sum.inl a)
            rw [hA] at this
            exact this
          · have := congrFun hx0 (Sum.inr b)
            rw [hA] at this
            exact this
        obtain ⟨x₁, hx₁, hd1, hd2⟩ := hc x hxU
        have hrv : (X.B.I.P v)⁻¹ *ᵥ (X.B.I.φ v ∘ x) = rv X.B.I v x := rfl
        refine ⟨rv X.B.I v x₁, fun a => ?_, fun b => ?_, ?_, ?_⟩
        · rw [frm_one, Formalism.L2.SG.Pf.Level.hJ_rv, hx₁.1 a, map_zero]
        · rw [frm_one, Formalism.L2.SG.Pf.Level.rv_mulVec, Formalism.L2.SG.Pf.Level.hJ_rv, hx₁.2 b, map_zero]
        · rw [hrv]
          exact wCoord_eq_of_perp X u v _ _ hd1
        · rw [hrv, Formalism.L2.SG.Pf.Level.rv_mulVec, Formalism.L2.SG.Pf.Level.rv_mulVec]
          exact wCoord_eq_of_perp X u' v _ _ hd2
      | zero =>
        refine ⟨0, fun a => hJ_zero_right _ _, fun b => hJ_zero_right _ _, ?_, ?_⟩
        · rw [Matrix.mulVec_zero]
        · rw [Matrix.mulVec_zero, Matrix.mulVec_zero, Matrix.mulVec_zero]
      | add z z' _ _ hz hz' =>
        obtain ⟨y, ya, yb, yc, yd⟩ := hz
        obtain ⟨y', ya', yb', yc', yd'⟩ := hz'
        refine ⟨y + y', fun a => ?_, fun b => ?_, ?_, ?_⟩
        · rw [hJ_add_right, ya a, ya' a, add_zero]
        · rw [hJ_add_right, yb b, yb' b, add_zero]
        · rw [Matrix.mulVec_add, wCoord_add, wCoord_add, yc, yc']
        · rw [Matrix.mulVec_add, Matrix.mulVec_add, Matrix.mulVec_add, wCoord_add, wCoord_add, yd, yd']
      | smul c z _ hz =>
        obtain ⟨y, ya, yb, yc, yd⟩ := hz
        refine ⟨c • y, fun a => ?_, fun b => ?_, ?_, ?_⟩
        · rw [hJ_smul_right, ya a, mul_zero]
        · rw [hJ_smul_right, yb b, mul_zero]
        · rw [Matrix.mulVec_smul, wCoord_smul, wCoord_smul, yc]
        · rw [Matrix.mulVec_smul, Matrix.mulVec_smul, Matrix.mulVec_smul, wCoord_smul, wCoord_smul, yd]
    have hy2 : (X.B.I.P v)⁻¹ *ᵥ (X.B.I.P v *ᵥ y₂) = y₂ := by
      rw [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hPu, Matrix.one_mulVec]
    obtain ⟨y₁, k1, k2, k3, k4⟩ := key _ hspan
    rw [hy2] at k3 k4
    exact ⟨y₁, k1, k2, k3, k4⟩

end Formalism.L2.SG.Pf.RowForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.OrthogonalComplementRational =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.FrameZEqLinZu =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.FrameZEqLinZu", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.OrthogonalComplementRational\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.SecondNormalTransport\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.PairCorankPositivity.FinrankOrthAddLe\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGeneral.ScalarFactorEqOneOfLe\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarPairOrthogonal.XLeOrthXplus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

open NumberField Module Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.HidaSetting Formalism.L2.SG.Pf.RowForm.ClassFrameOO2Aux
  Formalism.L2.SG.Pf.RowForm.ClassFramePositivePartDecomposition

open scoped Matrix

namespace Formalism.L2.SG.Pf.RowForm.ClassFrameFirstNormalAdjugate

section Coord

variable {D : D7} (X : HidaSetting D) (u u' : D.what₂.Word)

theorem hE_comb (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) (c : Fin (D.R.rS + 1) → X.B.I.E)
    (a : Fin (D.R.rS + 1)) :
    Formalism.L2.SG.Pf.Level.hE X (famE X u a) (∑ b, c b • (M *ᵥ famE X u' b)) = (ZE X u u' M *ᵥ c) a := by

  rw [← Formalism.L2.SG.Pf.Level.hEl_apply, map_sum]
  simp only [map_smul, Formalism.L2.SG.Pf.Level.hEl_apply, smul_eq_mul, Matrix.mulVec, dotProduct, ZE]
  exact Finset.sum_congr rfl fun b _ => mul_comm _ _

theorem firstNormal_eq_adjugate (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) :
    nu1E X u u' M = ∑ b, ((ZE X u u' M).det⁻¹ * (ZE X u u' M).adjugate b (Fin.last _)) • (M *ᵥ famE X u' b) := by
  unfold nu1E xPrE
  rw [Finset.smul_sum]
  simp only [smul_smul]

theorem hermitian_firstNormal (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) (hdet : (ZE X u u' M).det ≠ 0)
    (a : Fin (D.R.rS + 1)) :
    Formalism.L2.SG.Pf.Level.hE X (famE X u a) (nu1E X u u' M) = if a = Fin.last _ then 1 else 0 := by
  rw [firstNormal_eq_adjugate, hE_comb]
  simp only [Matrix.mulVec, dotProduct]
  have h1 : ∑ b, ZE X u u' M a b * ((ZE X u u' M).det⁻¹ * (ZE X u u' M).adjugate b (Fin.last _)) =
      (ZE X u u' M).det⁻¹ * (ZE X u u' M * (ZE X u u' M).adjugate) a (Fin.last _) := by
    rw [Matrix.mul_apply, Finset.mul_sum]
    exact Finset.sum_congr rfl fun b _ => by ring
  rw [h1, Matrix.mul_adjugate, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
  split_ifs
  · field_simp
  · simp

def x2E (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) : Fin X.B.I.n → X.B.I.E :=
  (star (ZE X u u' M).det)⁻¹ • xUnE X u u' M

theorem hE_sum_left {m : ℕ} (k : Fin m → X.B.I.E) (f : Fin m → Fin X.B.I.n → X.B.I.E) (y : Fin X.B.I.n → X.B.I.E) :
    Formalism.L2.SG.Pf.Level.hE X (∑ a, star (k a) • f a) y = ∑ a, k a * Formalism.L2.SG.Pf.Level.hE X (f a) y := by
  conv_lhs => rw [Formalism.L2.SG.Pf.Level.hE_symm]

  rw [← Formalism.L2.SG.Pf.Level.hEl_apply, map_sum, star_sum]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [map_smul, Formalism.L2.SG.Pf.Level.hEl_apply, smul_eq_mul, star_mul', star_star, ← Formalism.L2.SG.Pf.Level.hE_symm]

theorem secondNormal_eq_adjugate (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) :
    x2E X u u' M = ∑ a, star ((ZE X u u' M).det⁻¹ * (ZE X u u' M).adjugate (Fin.last _) a) • famE X u a := by
  unfold x2E xUnE
  rw [Finset.smul_sum]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [smul_smul, star_mul', star_inv₀]

theorem hermitian_secondNormal (M : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) (hdet : (ZE X u u' M).det ≠ 0)
    (b : Fin (D.R.rS + 1)) :
    Formalism.L2.SG.Pf.Level.hE X (x2E X u u' M) (M *ᵥ famE X u' b) = if b = Fin.last _ then 1 else 0 := by
  rw [secondNormal_eq_adjugate, hE_sum_left]
  have h1 : ∑ a, (ZE X u u' M).det⁻¹ * (ZE X u u' M).adjugate (Fin.last _) a *
      Formalism.L2.SG.Pf.Level.hE X (famE X u a) (M *ᵥ famE X u' b) =
      (ZE X u u' M).det⁻¹ * ((ZE X u u' M).adjugate * ZE X u u' M) (Fin.last _) b := by
    rw [Matrix.mul_apply, Finset.mul_sum]
    exact Finset.sum_congr rfl fun a _ => by simp only [ZE]; ring
  rw [h1, Matrix.adjugate_mul, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
  split_ifs with h h' h'
  · field_simp
  · exact absurd h.symm h'
  · exact absurd h'.symm h
  · simp

theorem secondNormal_eq_mulVec (M Mi : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E) : nu2E X u u' M Mi = Mi *ᵥ x2E X u u' M := by
  unfold nu2E x2E
  rw [Matrix.mulVec_smul]

end Coord

section Flag

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ} {T : E}

theorem fvec_mem_xplus (F : FlagG S r T) (a : Fin (r + 1)) : F.fvec a ∈ F.Xplus := by
  refine Fin.lastCases ?_ (fun i => ?_) a
  · simp only [FlagG.fvec, Fin.snoc_last]
    exact Submodule.mem_sup_right (Submodule.mem_span_singleton_self _)
  · simp only [FlagG.fvec, Fin.snoc_castSucc]
    exact Submodule.mem_sup_left (Submodule.subset_span ⟨i, rfl⟩)

theorem sum_mem_xplus (F : FlagG S r T) (c : Fin (r + 1) → E) : ∑ a, c a • F.fvec a ∈ F.Xplus :=
  Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (fvec_mem_xplus F a)

theorem orth_fvec (F : FlagG S r T) {v : S.V} : v ∈ orth S F.Xplus ↔ ∀ a, S.hT (F.fvec a) v = 0 := by
  rw [PI.ScalarPairDr.W.mem_orth_Xplus (S := S) F]
  constructor
  · rintro ⟨h1, h2⟩ a
    refine Fin.lastCases ?_ (fun i => ?_) a
    · simpa [FlagG.fvec] using h2
    · simpa [FlagG.fvec] using h1 i
  · intro h
    exact ⟨fun i => by simpa [FlagG.fvec] using h i.castSucc, by simpa [FlagG.fvec] using h (Fin.last r)⟩

theorem xplus_sum (F : FlagG S r T) {v : S.V} (hv : v ∈ F.Xplus) : ∃ C : Fin (r + 1) → E, ∑ a, C a • F.fvec a = v := by
  obtain ⟨a', x', hx', e'⟩ := xplus_dec F hv
  obtain ⟨c', hc'⟩ := x_sum F hx'
  exact ⟨Fin.snoc (α := fun _ => E) c' a', by rw [sum_fvec, hc', e']⟩

end Flag

section GT

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (X : HidaSetting D) (Y : Formalism.L2.SG.Full.Full X) (u u' : D.what₂.Word)
  (s : Formalism.L2.SG.TermOp.GTerm X u u' (X.Fu u) (X.Fu u') (Y.what₂ u) (Y.what₂ u'))

abbrev Mof : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E :=
  ((ratM X Y u u' s : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E)

abbrev Miof : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E :=
  (((ratM X Y u u' s)⁻¹ : GL (Fin X.B.I.n) X.B.I.E) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) X.B.I.E)

theorem toV_famE (w : D.what₂.Word) (a : Fin (D.R.rS + 1)) :
    Formalism.L2.SG.Pf.Level.toV X (famE X w a) = (X.Fu w).fvec a := by
  refine Fin.lastCases ?_ (fun i => ?_) a
  · simp [famE, FlagG.fvec, HidaSetting.zR, Formalism.L2.SG.Pf.Level.toV_crd, X.flagZVector]
  · simp [famE, FlagG.fvec, HidaSetting.eR, Formalism.L2.SG.Pf.Level.toV_crd, X.Fu_e]

theorem lin_iso : s.lin ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT := s.rep.2.2.1

theorem frame_e (b : Fin D.R.rS) : s.frame.fl.e b = s.lin (X.eX b) := by
  unfold Formalism.L2.SG.TermOp.GTerm.frame Formalism.L2.SG.TermOp.mapLF
  rw [dite_eq_left (lin_iso X Y u u' s)]
  show s.lin ((X.Fu u').e b) = _
  rw [X.Fu_e]

theorem frame_z_eq_lin_zu : s.frame.fl.z = s.lin (X.zu u') := by
  unfold Formalism.L2.SG.TermOp.GTerm.frame Formalism.L2.SG.TermOp.mapLF
  rw [dite_eq_left (lin_iso X Y u u' s)]
  show s.lin ((X.Fu u').z) = _
  rw [X.flagZVector]

theorem frame_zt : s.frame.zt = s.frame.fl.z := by
  unfold Formalism.L2.SG.TermOp.GTerm.frame Formalism.L2.SG.TermOp.mapLF
  rw [dite_eq_left (lin_iso X Y u u' s)]
  rfl

theorem frame_fvec (b : Fin (D.R.rS + 1)) : s.frame.fl.fvec b = s.lin ((X.Fu u').fvec b) := by
  refine Fin.lastCases ?_ (fun i => ?_) b
  · simp only [FlagG.fvec, Fin.snoc_last]; rw [frame_z_eq_lin_zu, X.flagZVector]
  · simp only [FlagG.fvec, Fin.snoc_castSucc]; rw [frame_e, X.Fu_e]

theorem lin_toV (x : Fin X.B.I.n → X.B.I.E) :
    s.lin (Formalism.L2.SG.Pf.Level.toV X x) = Formalism.L2.SG.Pf.Level.toV X (Mof X Y u u' s *ᵥ x) := by
  have h := s.rep.2.1.choose_spec.2.2.2 (Formalism.L2.SG.Pf.Level.toV X x)
  rw [Formalism.L2.SG.Pf.Level.crd_toV] at h
  rw [← Formalism.L2.SG.Pf.Level.toV_crd X (s.lin (Formalism.L2.SG.Pf.Level.toV X x))]
  exact congrArg (Formalism.L2.SG.Pf.Level.toV X) h

theorem linsymm_toV (x : Fin X.B.I.n → X.B.I.E) :
    s.lin.symm (Formalism.L2.SG.Pf.Level.toV X x) = Formalism.L2.SG.Pf.Level.toV X (Miof X Y u u' s *ᵥ x) := by
  rw [LinearEquiv.symm_apply_eq, lin_toV, Matrix.mulVec_mulVec, Mof, Miof, Units.mul_inv, Matrix.one_mulVec]

theorem toV_Mfam (b : Fin (D.R.rS + 1)) :
    Formalism.L2.SG.Pf.Level.toV X (Mof X Y u u' s *ᵥ famE X u' b) = s.frame.fl.fvec b := by
  rw [← lin_toV, toV_famE, frame_fvec]

theorem toV_comb (c : Fin (D.R.rS + 1) → X.B.I.E) :
    Formalism.L2.SG.Pf.Level.toV X (∑ b, c b • (Mof X Y u u' s *ᵥ famE X u' b)) = ∑ b, X.ιE (c b) • s.frame.fl.fvec b := by
  rw [Formalism.L2.SG.Pf.Level.toV_sum]
  simp only [Formalism.L2.SG.Pf.Level.toV_smul, toV_Mfam]

theorem toV_combL (c : Fin (D.R.rS + 1) → X.B.I.E) :
    Formalism.L2.SG.Pf.Level.toV X (∑ a, c a • famE X u a) = ∑ a, X.ιE (c a) • (X.Fu u).fvec a := by
  rw [Formalism.L2.SG.Pf.Level.toV_sum]
  simp only [Formalism.L2.SG.Pf.Level.toV_smul, toV_famE]

theorem iota_if (p : Prop) [Decidable p] : X.ιE (if p then 1 else 0) = if p then 1 else 0 := by
  split_ifs <;> simp

theorem firstNormal_mem_Xplus : Formalism.L2.SG.Pf.Level.toV X (nu1E X u u' (Mof X Y u u' s)) ∈ s.frame.fl.Xplus := by
  rw [firstNormal_eq_adjugate, toV_comb]
  exact sum_mem_xplus _ _

theorem firstNormal_pairing (hdet : (ZE X u u' (Mof X Y u u' s)).det ≠ 0) (a : Fin (D.R.rS + 1)) :
    (VS D).hT ((X.Fu u).fvec a) (Formalism.L2.SG.Pf.Level.toV X (nu1E X u u' (Mof X Y u u' s))) =
      if a = Fin.last _ then 1 else 0 := by
  rw [← toV_famE, ← Formalism.L2.SG.Pf.Level.iota_hE, hermitian_firstNormal X u u' _ hdet, iota_if]

theorem secondNormal_mem_Xplus : Formalism.L2.SG.Pf.Level.toV X (x2E X u u' (Mof X Y u u' s)) ∈ (X.Fu u).Xplus := by
  rw [secondNormal_eq_adjugate, toV_combL]
  exact sum_mem_xplus _ _

theorem secondNormal_pairing (hdet : (ZE X u u' (Mof X Y u u' s)).det ≠ 0) (b : Fin (D.R.rS + 1)) :
    (VS D).hT (Formalism.L2.SG.Pf.Level.toV X (x2E X u u' (Mof X Y u u' s))) (s.frame.fl.fvec b) =
      if b = Fin.last _ then 1 else 0 := by
  rw [← toV_Mfam, ← Formalism.L2.SG.Pf.Level.iota_hE, hermitian_secondNormal X u u' _ hdet, iota_if]

theorem secondNormal_toV : Formalism.L2.SG.Pf.Level.toV X (nu2E X u u' (Mof X Y u u' s) (Miof X Y u u' s)) =
    s.lin.symm (Formalism.L2.SG.Pf.Level.toV X (x2E X u u' (Mof X Y u u' s))) := by
  rw [secondNormal_eq_mulVec, linsymm_toV]

theorem ker_of_det (hG : Gflag (X.Fu u) s.frame.fl ≠ 0) (hdet : (ZE X u u' (Mof X Y u u' s)).det = 0) :
    ∃ d ∈ s.frame.fl.Xplus, d ∈ orth (VS D) (X.Fu u).Xplus ∧ d ≠ 0 := by
  obtain ⟨c, hc0, hc⟩ := Matrix.exists_mulVec_eq_zero_iff.2 hdet
  refine ⟨Formalism.L2.SG.Pf.Level.toV X (∑ b, c b • (Mof X Y u u' s *ᵥ famE X u' b)), ?_, ?_, ?_⟩
  · rw [toV_comb]; exact sum_mem_xplus _ _
  · rw [orth_fvec]
    intro a
    rw [← toV_famE, ← Formalism.L2.SG.Pf.Level.iota_hE, hE_comb, hc, Pi.zero_apply, map_zero]
  · intro h
    rw [toV_comb] at h
    have h2 := indep' (X.Fu u) s.frame.fl hG _ h
    apply hc0
    funext b
    have h3 := congrFun h2 b
    simpa using h3

theorem det_of_ker {d : (VS D).V} (hd : d ∈ s.frame.fl.Xplus) (hdO : d ∈ orth (VS D) (X.Fu u).Xplus) (hd0 : d ≠ 0) :
    (ZE X u u' (Mof X Y u u' s)).det = 0 := by
  obtain ⟨C, hC⟩ := xplus_sum _ hd
  set c : Fin (D.R.rS + 1) → X.B.I.E := fun b => X.ιE.symm (C b) with hc
  have hd' : Formalism.L2.SG.Pf.Level.toV X (∑ b, c b • (Mof X Y u u' s *ᵥ famE X u' b)) = d := by
    rw [toV_comb, ← hC]
    simp [c]
  have hZ : ZE X u u' (Mof X Y u u' s) *ᵥ c = 0 := by
    funext a
    apply X.ιE.injective
    rw [← hE_comb, Formalism.L2.SG.Pf.Level.iota_hE, toV_famE, hd', Pi.zero_apply, map_zero]
    exact (orth_fvec _).1 hdO a
  have hc0 : c ≠ 0 := by
    intro h
    apply hd0
    rw [← hd', h]
    simp [Formalism.L2.SG.Pf.Level.toV]
  exact Matrix.exists_mulVec_eq_zero_iff.1 ⟨c, hc0, hZ⟩

theorem det_of_lker {d : (VS D).V} (hd : d ∈ (X.Fu u).Xplus) (hdO : ∀ b, (VS D).hT d (s.frame.fl.fvec b) = 0)
    (hd0 : d ≠ 0) : (ZE X u u' (Mof X Y u u' s)).det = 0 := by
  obtain ⟨C, hC⟩ := xplus_sum _ hd
  set k : Fin (D.R.rS + 1) → X.B.I.E := fun a => star (X.ιE.symm (C a)) with hk
  have hd' : Formalism.L2.SG.Pf.Level.toV X (∑ a, star (k a) • famE X u a) = d := by
    rw [toV_combL, ← hC]
    simp [k]
  have hZ : k ᵥ* ZE X u u' (Mof X Y u u' s) = 0 := by
    funext b
    apply X.ιE.injective
    have e1 : (k ᵥ* ZE X u u' (Mof X Y u u' s)) b =
        Formalism.L2.SG.Pf.Level.hE X (∑ a, star (k a) • famE X u a) (Mof X Y u u' s *ᵥ famE X u' b) := by
      rw [hE_sum_left]
      simp only [Matrix.vecMul, dotProduct, ZE]
    rw [e1, Formalism.L2.SG.Pf.Level.iota_hE, hd', toV_Mfam, Pi.zero_apply, map_zero]
    exact hdO b
  have hk0 : k ≠ 0 := by
    intro h
    apply hd0
    rw [← hd', h]
    simp [Formalism.L2.SG.Pf.Level.toV]
  exact Matrix.exists_vecMul_eq_zero_iff.1 ⟨k, hk0, hZ⟩

theorem uue_le {Λ : Submodule (𝓞 D.host.E) (VS D).V} {T T' : D.host.E} (F : LFlag (D.sp.Y 0) D.R.rS T)
    (F' : LFlag (D.sp.Y 0) D.R.rS T') (hz : F.zt = F.fl.z) (hz' : F'.zt = F'.fl.z) :
    UUE Λ F F' ≤ F.fl.Xplus ⊔ F'.fl.Xplus := by
  unfold UUE spanE
  rw [Submodule.span_le]
  have h : UU Λ F F' ≤ (F.fl.Xplus ⊔ F'.fl.Xplus).restrictScalars (𝓞 D.host.E) := by
    unfold UU
    refine sup_le (sup_le (sup_le ?_ ?_) ?_) ?_
    · exact inf_le_right.trans (fun v hv => Submodule.mem_sup_left (Submodule.mem_sup_left hv))
    · rw [Submodule.span_le, Set.singleton_subset_iff, hz]
      exact Submodule.mem_sup_left (Submodule.mem_sup_right (Submodule.mem_span_singleton_self _))
    · exact inf_le_right.trans (fun v hv => Submodule.mem_sup_right (Submodule.mem_sup_left hv))
    · rw [Submodule.span_le, Set.singleton_subset_iff, hz']
      exact Submodule.mem_sup_right (Submodule.mem_sup_right (Submodule.mem_span_singleton_self _))
  exact fun v hv => h hv

theorem orthogonal_toV {Λ : Submodule (𝓞 D.host.E) (VS D).V} {y : Fin X.B.I.n → X.B.I.E}
    (hy : orthogonalComplementRational X u u' (Mof X Y u u' s) y) :
    Formalism.L2.SG.Pf.Level.toV X y ∈ Hp Λ (lf D (X.Fu u)) s.frame := by
  have h1 : ∀ a, (VS D).hT ((X.Fu u).fvec a) (Formalism.L2.SG.Pf.Level.toV X y) = 0 := fun a => by
    rw [← toV_famE, ← Formalism.L2.SG.Pf.Level.iota_hE, hy.1 a, map_zero]
  have h2 : ∀ b, (VS D).hT (s.frame.fl.fvec b) (Formalism.L2.SG.Pf.Level.toV X y) = 0 := fun b => by
    rw [← toV_Mfam, ← Formalism.L2.SG.Pf.Level.iota_hE, hy.2 b, map_zero]
  have o1 := (orth_fvec (X.Fu u)).2 h1
  have o2 := (orth_fvec s.frame.fl).2 h2
  apply PI.UnitaryGroupMassFormula.ScalEquivGen.orthAntiQ (uue_le (Λ := Λ) (lf D (X.Fu u)) s.frame rfl (frame_zt X Y u u' s))
  rw [PI.UnitaryGroupMassFormula.ScalEquivGen.memOrthQ]
  intro x hx
  obtain ⟨x1, hx1, x2, hx2, rfl⟩ := Submodule.mem_sup.mp hx
  rw [map_add (f := _), LinearMap.add_apply, PI.UnitaryGroupMassFormula.ScalEquivGen.memOrthQ.mp o1 x1 hx1,
    PI.UnitaryGroupMassFormula.ScalEquivGen.memOrthQ.mp o2 x2 hx2, add_zero]

theorem orthogonal_ofV {Λ : Submodule (𝓞 D.host.E) (VS D).V} (hΛ : Submodule.IsFullLattice D.host.E Λ)
    (hL : IsLift Λ (lf D (X.Fu u))) (hL' : IsLift Λ s.frame) {y : (VS D).V}
    (hy : y ∈ Hp Λ (lf D (X.Fu u)) s.frame) : orthogonalComplementRational X u u' (Mof X Y u u' s) (X.crd y) := by
  have hm := PI.PairCorankPos.W.frame_mem_UUE Λ hΛ (lf D (X.Fu u)) s.frame hL hL'
  have hy' : ∀ x ∈ UUE Λ (lf D (X.Fu u)) s.frame, (VS D).hT x y = 0 := PI.UnitaryGroupMassFormula.ScalEquivGen.memOrthQ.mp hy
  refine ⟨fun a => ?_, fun b => ?_⟩
  · apply X.ιE.injective
    rw [Formalism.L2.SG.Pf.Level.iota_hE, toV_famE, Formalism.L2.SG.Pf.Level.toV_crd, map_zero]
    exact hy' _ (hm (Sum.inl a))
  · apply X.ιE.injective
    rw [Formalism.L2.SG.Pf.Level.iota_hE, toV_Mfam, Formalism.L2.SG.Pf.Level.toV_crd, map_zero]
    exact hy' _ (hm (Sum.inr b))

theorem wperp_of (w : D.what₂.Word) {x : Fin X.B.I.n → X.B.I.E}
    (h : Formalism.L2.SG.Pf.Level.toV X x ∈ Submodule.span D.host.E (Set.range X.eX)) : x ∈ WperpE X w := by
  obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun D.host.E).1 h
  have e : x = ∑ i, X.ιE.symm (c i) • X.eR i := by
    rw [← Formalism.L2.SG.Pf.Level.crd_toV X x, ← Formalism.L2.SG.Pf.Level.crd_toV X (∑ i, X.ιE.symm (c i) • X.eR i)]
    congr 1
    rw [Formalism.L2.SG.Pf.Level.toV_sum, ← hc]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Formalism.L2.SG.Pf.Level.toV_smul, HidaSetting.eR, Formalism.L2.SG.Pf.Level.toV_crd, RingEquiv.apply_symm_apply]
  rw [e]
  exact Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span (Or.inl (Or.inl ⟨i, rfl⟩)))

theorem fixedX (v : (VS D).V) (hv : v ∈ (X.Fu u).X) : v ∈ Submodule.span D.host.E (Set.range X.eX) := by
  simpa [FlagG.X, X.Fu_e] using hv

theorem symm_frameX {v : (VS D).V} (hv : v ∈ s.frame.fl.X) : s.lin.symm v ∈ Submodule.span D.host.E (Set.range X.eX) := by
  obtain ⟨c, hc⟩ := x_sum _ hv

  rw [← hc, map_sum]
  refine Submodule.sum_mem _ fun i _ => ?_
  rw [map_smul, frame_e, LinearEquiv.symm_apply_apply]
  exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)

end GT

end Formalism.L2.SG.Pf.RowForm.ClassFrameFirstNormalAdjugate
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.FrameZEqLinZu =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGenerators.ScalarEquivOfGen =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGenerators.ScalarEquivOfGen", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.IsPrimitiveSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermDef\nimport Formalism.PeriodIntegrals.ScalPairs\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.UnitaryGroupMassFormula.ScalarEquivalenceHermitianSpace

open NumberField Module Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef PI.ScalPairs

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem finrank_VS (D : D7) : finrank D.host.E (VS D).V = D.R.k + 2 * D.R.rS + 1 := by
  have h1 := (VS D).rank_eq
  have h2 : (VS D).rank = D.R.rankY 0 := D.sp.Y_rank 0 (Nat.zero_le _)
  obtain ⟨j, hj⟩ := D.R.m_even
  have hm2 := D.R.two_le_m
  rw [h1, h2]
  simp only [Formalism.BasicNotions.Ranks.rankY, Formalism.BasicNotions.Ranks.r, Formalism.BasicNotions.Ranks.rS, zero_mul, add_zero]
  omega

theorem tu_ne_zero (D : D7) (u : D.what₂.Word) : ((Tu D u : ℕ) : D.host.E) ≠ 0 := by
  rw [Ne, Nat.cast_eq_zero]
  exact (D.mem u).A.T_prime.ne_zero

end PI.UnitaryGroupMassFormula.ScalarEquivalenceHermitianSpace
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGenerators.ScalarEquivOfGen =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ScalarAgreeRatCOfScalT =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ScalarAgreeRatCOfScalT", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.FrameZEqLinZu\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.SecondNormalTransport\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGeneral.ScalarFactorEqOneOfLe\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGenerators.ScalarEquivOfGen\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarPairOrthogonal.XLeOrthXplus\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

open NumberField Module Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.HidaSetting Formalism.L2.SG.Pf.RowForm.ClassFrameOO2Aux
  Formalism.L2.SG.Pf.RowForm.ClassFramePositivePartDecomposition Formalism.L2.SG.Pf.RowForm.ClassFrameFirstNormalAdjugate

open scoped Matrix

namespace Formalism.L2.SG.Pf.RowForm.ClassFrameNormalVectorScalars

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (X : HidaSetting D) (Y : Formalism.L2.SG.Full.Full X) (u u' : D.what₂.Word)

theorem gval_ne (s : Formalism.L2.SG.TermOp.GTerm X u u' (X.Fu u) (X.Fu u') (Y.what₂ u) (Y.what₂ u'))
    (hG : (Y.tO u u').G s ≠ 0) : Gval (lf D (X.Fu u)) s.frame ≠ 0 := by
  have hG' : s.G ≠ 0 := fun h => hG (by show Formalism.L2.SG.TermOp.Gt s = 0; simp [Formalism.L2.SG.TermOp.Gt, h])
  have hRL : IsRowLat D (X.Fu u) s.lam := (Y.rowsOK u).1 s.lam s.mem
  have hEq := _root_.term_eq_iff_relation D u u' (X.Fu u) s.lam hRL
  have hGF := (_root_.term_function_const D u u' (X.Fu u) s.lam hRL).1
  let x : Formalism.L2.SG.TermDef.Carrier (Formalism.L2.SG.TermDef.PD D s.lam (lf D (X.Fu u)) u') := ⟨s.frame, s.rep.2.2.2.2⟩
  have gv : Formalism.L2.SG.TermDef.Gt s.lam (lf D (X.Fu u)) (Formalism.L2.SG.TermDef.PD D s.lam (lf D (X.Fu u)) u')
      (Formalism.L2.SG.TermDef.mk _ _ _ x) = Gval (lf D (X.Fu u)) x.1 :=
    hGF _ _ ((hEq _ _).1 (Quot.out_eq (Formalism.L2.SG.TermDef.mk s.lam (lf D (X.Fu u))
      (Formalism.L2.SG.TermDef.PD D s.lam (lf D (X.Fu u)) u') x)))
  intro hz
  apply hG'
  exact gv.trans (by with_unfolding_all exact hz)

variable (s : Formalism.L2.SG.TermOp.GTerm X u u' (X.Fu u) (X.Fu u') (Y.what₂ u) (Y.what₂ u'))

theorem firstNormal_e (h : (ZE X u u' (Mof X Y u u' s)).det ≠ 0) (a : Fin D.R.rS) :
    (VS D).hT ((X.Fu u).e a) (Formalism.L2.SG.Pf.Level.toV X (nu1E X u u' (Mof X Y u u' s))) = 0 := by
  have := firstNormal_pairing X Y u u' s h a.castSucc
  rw [if_neg (Fin.castSucc_lt_last a).ne] at this
  simpa [FlagG.fvec] using this

theorem firstNormal_z (h : (ZE X u u' (Mof X Y u u' s)).det ≠ 0) :
    (VS D).hT (X.Fu u).z (Formalism.L2.SG.Pf.Level.toV X (nu1E X u u' (Mof X Y u u' s))) = 1 := by
  have := firstNormal_pairing X Y u u' s h (Fin.last _)
  rw [if_pos rfl] at this
  simpa [FlagG.fvec] using this

theorem secondNormal_e (h : (ZE X u u' (Mof X Y u u' s)).det ≠ 0) (b : Fin D.R.rS) :
    (VS D).hT (Formalism.L2.SG.Pf.Level.toV X (x2E X u u' (Mof X Y u u' s))) (s.frame.fl.e b) = 0 := by
  have := secondNormal_pairing X Y u u' s h b.castSucc
  rw [if_neg (Fin.castSucc_lt_last b).ne] at this
  simpa [FlagG.fvec] using this

theorem secondNormal_z (h : (ZE X u u' (Mof X Y u u' s)).det ≠ 0) :
    (VS D).hT (Formalism.L2.SG.Pf.Level.toV X (x2E X u u' (Mof X Y u u' s))) s.frame.fl.z = 1 := by
  have := secondNormal_pairing X Y u u' s h (Fin.last _)
  rw [if_pos rfl] at this
  simpa [FlagG.fvec] using this

theorem agree_pair (s₁ s₂ : Formalism.L2.SG.TermOp.GTerm X u u' (X.Fu u) (X.Fu u') (Y.what₂ u) (Y.what₂ u'))
    (hG₁ : (Y.tO u u').G s₁ ≠ 0) (hG₂ : (Y.tO u u').G s₂ ≠ 0) (hl : s₁.lam = s₂.lam)
    (hs0 : Lat.s0 s₁.lam (lf D (X.Fu u)) s₁.frame s₂.frame (s₂.lin * s₁.lin⁻¹) D.R.k = 1)
    (hsc : IsScalar s₁.lam (lf D (X.Fu u)) s₁.frame s₂.frame (s₂.lin * s₁.lin⁻¹)) :
    nu1E X u u' (Mof X Y u u' s₁) - nu1E X u u' (Mof X Y u u' s₂) ∈ WperpE X u ∧
      nu2E X u u' (Mof X Y u u' s₁) (Miof X Y u u' s₁) - nu2E X u u' (Mof X Y u u' s₂) (Miof X Y u u' s₂) ∈
        WperpE X u' ∧
      ∀ y₂, orthogonalComplementRational X u u' (Mof X Y u u' s₂) y₂ →
        ∃ y₁, orthogonalComplementRational X u u' (Mof X Y u u' s₁) y₁ ∧ y₁ - y₂ ∈ WperpE X u ∧
          Miof X Y u u' s₁ *ᵥ y₁ - Miof X Y u u' s₂ *ᵥ y₂ ∈ WperpE X u' := by
  have hRL : IsRowLat D (X.Fu u) s₁.lam := (Y.rowsOK u).1 s₁.lam s₁.mem
  obtain ⟨hgen, ⟨_, _, hlift, _⟩, _⟩ := hRL
  have hlat : Submodule.IsFullLattice D.host.E s₁.lam := hgen.1
  have hL₁ : IsLift s₁.lam s₁.frame := s₁.rep.2.2.2.2.1
  have hL₂ : IsLift s₁.lam s₂.frame := by rw [hl]; exact s₂.rep.2.2.2.2.1
  have gv₁ := gval_ne X Y u u' s₁ hG₁
  have gv₂ := gval_ne X Y u u' s₂ hG₂
  have nd₁ := PI.UnitaryGroupMassFormula.ScalEquivGen.ndOfQ hlat hlift hL₁ gv₁
  have nd₂ := PI.UnitaryGroupMassFormula.ScalEquivGen.ndOfQ hlat hlift hL₂ gv₂
  have hdim := PI.UnitaryGroupMassFormula.ScalarEquivalenceHermitianSpace.finrank_VS D
  have hTh := PI.UnitaryGroupMassFormula.ScalEquivGen.thEqQ hdim nd₁ hs0
  have hTh'' := PI.UnitaryGroupMassFormula.ScalEquivGen.thEq''Q hlat hdim nd₁ nd₂ hs0
  have hz₁ := frame_zt X Y u u' s₁
  have hz₂ := frame_zt X Y u u' s₂
  have hT0 := PI.UnitaryGroupMassFormula.ScalarEquivalenceHermitianSpace.tu_ne_zero D u
  have hT0' := PI.UnitaryGroupMassFormula.ScalarEquivalenceHermitianSpace.tu_ne_zero D u'
  have hi : s₂.lin * s₁.lin⁻¹ ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT :=
    Subgroup.mul_mem _ (lin_iso X Y u u' s₂) (Subgroup.inv_mem _ (lin_iso X Y u u' s₁))
  have hβ : ∀ x, (s₂.lin * s₁.lin⁻¹) x = s₂.lin (s₁.lin.symm x) := fun x => rfl
  have hβe : ∀ b, (s₂.lin * s₁.lin⁻¹) (s₁.frame.fl.e b) = s₂.frame.fl.e b := by
    intro b; rw [hβ, frame_e, frame_e, LinearEquiv.symm_apply_apply]
  have hβz : (s₂.lin * s₁.lin⁻¹) s₁.frame.fl.z = s₂.frame.fl.z := by
    rw [hβ, frame_z_eq_lin_zu, frame_z_eq_lin_zu, LinearEquiv.symm_apply_apply]
  have hdet : (ZE X u u' (Mof X Y u u' s₁)).det = 0 ↔ (ZE X u u' (Mof X Y u u' s₂)).det = 0 := by
    constructor
    · intro h
      obtain ⟨d, hd, hdO, hd0⟩ := ker_of_det X Y u u' s₁ gv₁ h
      obtain ⟨d₂, hd₂, hd₂O, hd₂0⟩ := ker_transport (by first | exact hlat) rfl hz₁ hz₂ gv₁ hTh'' hsc hd hdO hd0
      exact det_of_ker X Y u u' s₂ hd₂ hd₂O hd₂0
    · intro h
      obtain ⟨d, hd, hdO, hd0⟩ := ker_of_det X Y u u' s₂ gv₂ h
      obtain ⟨d₁, hd₁, hd₁O, hd₁0⟩ := ker_transport_rev (by first | exact hlat) rfl hz₁ hz₂ gv₂ hTh hsc hd hdO hd0
      exact det_of_ker X Y u u' s₁ hd₁ hd₁O hd₁0
  refine ⟨?_, ?_, ?_⟩
  ·
    by_cases h₁ : (ZE X u u' (Mof X Y u u' s₁)).det = 0
    · have h₂ := hdet.1 h₁
      simp [nu1E, h₁, h₂]
    have h₂ : (ZE X u u' (Mof X Y u u' s₂)).det ≠ 0 := fun h => h₁ (hdet.2 h)
    obtain ⟨ν, hνm, hνe, hνz, hνd⟩ := firstNormal_transport (by first | exact hlat) rfl hz₁ hz₂ hT0 hTh'' hsc (firstNormal_mem_Xplus X Y u u' s₁)
      (firstNormal_e X Y u u' s₁ h₁) (firstNormal_z X Y u u' s₁ h₁)
    have hνeq : ν = Formalism.L2.SG.Pf.Level.toV X (nu1E X u u' (Mof X Y u u' s₂)) := by
      by_contra hne
      apply h₂
      refine det_of_ker X Y u u' s₂ (Submodule.sub_mem _ hνm (firstNormal_mem_Xplus X Y u u' s₂)) ?_ (sub_ne_zero.2 hne)
      rw [PI.ScalarPairDr.W.mem_orth_Xplus (S := VS D) (X.Fu u)]
      refine ⟨fun a => ?_, ?_⟩
      · rw [map_sub]
        have e1 := hνe a
        have e2 := firstNormal_e X Y u u' s₂ h₂ a
        simp only at e1
        rw [e1, e2, sub_zero]
      · rw [map_sub]
        have e1 := hνz
        simp only at e1
        rw [e1, firstNormal_z X Y u u' s₂ h₂, sub_self]
    apply wperp_of X u
    rw [Formalism.L2.SG.Pf.Level.toV_sub, ← hνeq]
    exact fixedX X u _ hνd
  ·
    by_cases h₁ : (ZE X u u' (Mof X Y u u' s₁)).det = 0
    · have h₂ := hdet.1 h₁
      simp [nu2E, h₁, h₂]
    have h₂ : (ZE X u u' (Mof X Y u u' s₂)).det ≠ 0 := fun h => h₁ (hdet.2 h)
    obtain ⟨x, hxm, hxe, hxz, hxd⟩ := secondNormal_transport (by first | exact hlat) rfl hz₁ hz₂ hT0' hi hβe hβz hTh'' hsc
      (secondNormal_mem_Xplus X Y u u' s₁) (secondNormal_e X Y u u' s₁ h₁) (secondNormal_z X Y u u' s₁ h₁)
    have hxeq : x = Formalism.L2.SG.Pf.Level.toV X (x2E X u u' (Mof X Y u u' s₂)) := by
      by_contra hne
      apply h₂
      refine det_of_lker X Y u u' s₂ (Submodule.sub_mem _ hxm (secondNormal_mem_Xplus X Y u u' s₂)) ?_ (sub_ne_zero.2 hne)
      intro b
      refine Fin.lastCases ?_ (fun i => ?_) b
      · simp only [FlagG.fvec, Fin.snoc_last]
        rw [map_sub, LinearMap.sub_apply, hxz, secondNormal_z X Y u u' s₂ h₂, sub_self]
      · simp only [FlagG.fvec, Fin.snoc_castSucc]
        rw [map_sub, LinearMap.sub_apply, hxe i, secondNormal_e X Y u u' s₂ h₂ i, sub_self]
    apply wperp_of X u'
    rw [Formalism.L2.SG.Pf.Level.toV_sub, secondNormal_toV, secondNormal_toV, ← hxeq]
    have key : s₂.lin.symm x = s₁.lin.symm ((s₂.lin * s₁.lin⁻¹).symm x) := by
      rw [LinearEquiv.symm_apply_eq, ← hβ, LinearEquiv.apply_symm_apply]
    rw [key, ← map_sub, ← neg_sub, map_neg]
    exact Submodule.neg_mem _ (symm_frameX X Y u u' s₁ hxd)
  ·
    intro y₂ hy₂
    have hV := orthogonal_toV (Λ := s₁.lam) X Y u u' s₂ hy₂
    obtain ⟨y₁, hy₁, hd1, hd2⟩ := orthogonal_transport hTh'' hV
    refine ⟨X.crd y₁, orthogonal_ofV X Y u u' s₁ (by first | exact hgen.1) hlift hL₁ hy₁, ?_, ?_⟩
    · apply wperp_of X u
      rw [Formalism.L2.SG.Pf.Level.toV_sub, Formalism.L2.SG.Pf.Level.toV_crd]
      exact fixedX X u _ hd1
    · apply wperp_of X u'
      rw [Formalism.L2.SG.Pf.Level.toV_sub, ← linsymm_toV, ← linsymm_toV, Formalism.L2.SG.Pf.Level.toV_crd]
      have key : s₁.lin.symm y₁ = s₂.lin.symm ((s₂.lin * s₁.lin⁻¹) y₁) := by
        rw [hβ, LinearEquiv.symm_apply_apply]
      rw [key, ← map_sub]
      exact symm_frameX X Y u u' s₂ hd2

end Formalism.L2.SG.Pf.RowForm.ClassFrameNormalVectorScalars

namespace Formalism.L2.SG.Pf.RowForm

open Formalism.L2.SG.Pf.RowForm.ClassFrameNormalVectorScalars

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (X : HidaSetting D) (Y : Formalism.L2.SG.Full.Full X) (u u' : D.what₂.Word)
  (κ : Formalism.L2.SG.TermDef.Term D u u' (X.Fu u) (Y.what₂ u) → ℕ)

theorem scalarAgreeRatC_of_scalT (hS : ScalTC X Y u u' κ) : ScalarAgreeRatC X Y u u' κ := by
  intro R ρ s₁ s₂ _ _
  obtain ⟨hG₁, hn₁, hr₁, hk₁⟩ := s₁.2
  obtain ⟨hG₂, hn₂, hr₂, hk₂⟩ := s₂.2
  have h := (hS s₁.1 s₂.1 hG₁ hG₂ hn₁ hn₂ (hr₁.trans hr₂.symm)).2 (hk₁.trans hk₂.symm)
  have h2 : Formalism.L2.SG.TermOp.scalT s₁.1 s₂.1 := h.2
  obtain ⟨⟨hl, -⟩, hs0, hsc⟩ := h2
  exact agree_pair X Y u u' s₁.1 s₂.1 hG₁ hG₂ hl hs0 hsc

theorem scalarAgreeC_of_scalT (hS : ScalTC X Y u u' κ) : ScalarAgreeC X Y u u' κ :=
  scalarAgreeC_of_rat X Y u u' κ (scalarAgreeRatC_of_scalT X Y u u' κ hS)

end Formalism.L2.SG.Pf.RowForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ScalarAgreeRatCOfScalT =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameAll =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameAll", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.ClassFrameNormal\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameOO1FrameValPiIso\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RealDecompL\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameMoveH\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameSDecomp\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ScalarAgreeRatCOfScalT\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DecompPhaseCOf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical ComplexConjugate

namespace Formalism.L2.SG.Pf.RowForm

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.TermDef Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge Formalism.L2.SG.TypedSets
  Formalism.L2.SG.MassDataConc Formalism.L2.SG.MassDataForm MeasureTheory

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem classFrameAll_comp {V V' : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
    [NormedAddCommGroup V'] [InnerProductSpace ℂ V'] (P G K : V →L[ℂ] V) (G' H' K' : V' →L[ℂ] V') (T : V' →L[ℂ] V)
    (a : ℂ) (hK : K = P * G) (hK' : K' = G' * H') :
    P.comp ((a • G.comp (T.comp G')).comp H') = a • K.comp (T.comp K') := by
  subst hK hK'
  ext x
  simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.smul_apply, ContinuousLinearMap.mul_apply, map_smul]

variable {D : D7} (X : HidaSetting D) (hb : AdBridgeIso X.B.I) (Y : Formalism.L2.SG.Full.Full X)
  (u u' : D.what₂.Word) (X0 : Fin (2 * D.R.rS + 2) → Fin X.B.I.n → X.B.I.E)
  (ψ : AddChar (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.AF X.B.I.F) ℂ) (sd C Th : ℝ)
  (vR : Term D u u' (X.Fu u) (Y.what₂ u) → ℝ) (Q : Formalism.L2.SG.PairVal.PairSys D u u' (X.Fu u) (Y.what₂ u))
  (M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep) (δ : ∀ p : PlF D, (D.s.atP p).Fp)
  (i0 i0' : ∀ _ : NumberField.InfinitePlace X.B.I.F, Fin D.R.k) (νq : X.B.I.Ginf → Measure X.B.I.Ginf)
  (κ : Term D u u' (X.Fu u) (Y.what₂ u) → ℕ)

def VIndepAtC (sc : ℝ) : Prop :=
  ∀ w : Point D.host.E (D.R.rS + 1), (∃ γ, Formalism.L2.SG.RealObj.IsPtRep X u u' w γ) →
    (∀ v, 0 < Formalism.L2.SG.RealObj.GX X u u' D.host.rdE (Formalism.L2.SG.RealObj.gamW X u u' w) v) →
    ∀ h₁ h₁' h₂ h₂', Formalism.L2.SG.RealObj.IsDFrameX X u u' sc i0 i0' (Formalism.L2.SG.RealObj.gamW X u u' w) h₁ h₁' →
      Formalism.L2.SG.RealObj.IsDFrameX X u u' sc i0 i0' (Formalism.L2.SG.RealObj.gamW X u u' w) h₂ h₂' →
      (X.piU u h₁⁻¹).comp ((haveI := FiniteDimensional.complete ℂ (X.Vpi u)
          Formalism.L2.SG.TermOp.OO (νq (Formalism.L2.SG.RealObj.gamW X u u' w)) Set.univ (X.Wu u) (X.Wu u')
            (Formalism.L2.SG.RealObj.gamW X u u' w)).comp (X.piU u' h₁')) =
        (X.piU u h₂⁻¹).comp ((haveI := FiniteDimensional.complete ℂ (X.Vpi u)
          Formalism.L2.SG.TermOp.OO (νq (Formalism.L2.SG.RealObj.gamW X u u' w)) Set.univ (X.Wu u) (X.Wu u')
            (Formalism.L2.SG.RealObj.gamW X u u' w)).comp (X.piU u' h₂'))

theorem classFrameAll_pi_inv (w : D.what₂.Word) {k g h : X.B.I.Ginf} (hk : k ∈ X.SinfU w) (hg : g ∈ X.SinfU w)
    (hh : h ∈ X.SinfU w) (e : X.piU w k = X.piU w g⁻¹ * X.piU w h) :
    X.piU w k⁻¹ = X.piU w h⁻¹ * X.piU w g := by
  have rep := X.piU_rep w
  have hki := Formalism.L2.SG.RealObj.InfCut.sinfU_inv X w hk
  have hgi := Formalism.L2.SG.RealObj.InfCut.sinfU_inv X w hg
  have hhi := Formalism.L2.SG.RealObj.InfCut.sinfU_inv X w hh
  have e1 : X.piU w k * (X.piU w h⁻¹ * X.piU w g) = 1 := by
    rw [e, mul_assoc, ← mul_assoc (X.piU w h), ← rep.2.1 h hh h⁻¹ hhi, mul_inv_cancel, rep.1, one_mul,
      ← rep.2.1 g⁻¹ hgi g hg, inv_mul_cancel, rep.1]
  calc X.piU w k⁻¹ = X.piU w k⁻¹ * (X.piU w k * (X.piU w h⁻¹ * X.piU w g)) := by rw [e1, mul_one]
    _ = X.piU w h⁻¹ * X.piU w g := by rw [← mul_assoc, ← rep.2.1 k⁻¹ hki k hk, inv_mul_cancel, rep.1, one_mul]

theorem classFrameAll_pull (γ g g' h h' : X.B.I.Ginf) (hg : g ∈ X.SinfU u) (hg' : g' ∈ X.SinfU u')
    (hD : Formalism.L2.SG.RealObj.IsDFrameX X u u' 1 i0 i0' (g * γ * g'⁻¹) h h') :
    ∃ k k', Formalism.L2.SG.RealObj.IsDFrameX X u u' 1 i0 i0' γ k k' ∧
      X.piU u k⁻¹ = X.piU u h⁻¹ * X.piU u g ∧ X.piU u' k' = X.piU u' g'⁻¹ * X.piU u' h' := by
  have hgi := Formalism.L2.SG.RealObj.InfCut.sinfU_inv X u hg
  have hgi' := Formalism.L2.SG.RealObj.InfCut.sinfU_inv X u' hg'
  obtain ⟨n, hn, a, ha, e⟩ := sDecompC_holds X u g⁻¹ hgi
  obtain ⟨n', hn', a', ha', e'⟩ := sDecompC_holds X u' g'⁻¹ hgi'
  have hM := dFrameMoveHC_holds X u u' i0 i0' _ h h' n a n' a' hD hn ha hn' ha'
  have eγ : n * a * (g * γ * g'⁻¹) * a'⁻¹ * n'⁻¹ = γ := by
    have e0 : n * a * (g * γ * g'⁻¹) * a'⁻¹ * n'⁻¹ = n * a * (g * γ * g'⁻¹) * (n' * a')⁻¹ := by group
    rw [e0, ← e, ← e']
    group
  rw [eγ] at hM
  have hh := Formalism.L2.SG.RealObj.InfCut.hsetU_sub X u hD.1
  have hh' := Formalism.L2.SG.RealObj.InfCut.hsetU_sub X u' hD.2.1
  have hk := Formalism.L2.SG.RealObj.InfCut.hsetU_sub X u hM.1
  have p1 : X.piU u (a * h) = X.piU u g⁻¹ * X.piU u h := by
    rw [ClassFrameLeviDecomposition.pi_levi X u hn ha hh, ← e]
    rfl
  have p2 : X.piU u' (a' * h') = X.piU u' g'⁻¹ * X.piU u' h' := by
    rw [ClassFrameLeviDecomposition.pi_levi X u' hn' ha' hh', ← e']
    rfl
  exact ⟨a * h, a' * h', hM, classFrameAll_pi_inv X u hk hg hh p1, p2⟩

theorem vIndepLiftC_of_at (h3 : LiftDecompC X Y u u' κ) (h4' : LiftGPosC X Y u u' κ)
    (h5 : FormTranspC X Y u u' vR νq κ) (hVA : VIndepAtC X u u' i0 i0' νq 1) :
    VIndepLiftC X Y u u' i0 i0' κ := by
  intro R ρ s hrel h₁ h₁' h₂ h₂' hD₁ hD₂
  obtain ⟨hpt, g, hg, g', hg', hdec⟩ := h3 R ρ s hrel
  have hO : Formalism.L2.SG.TermOp.OOt s.1 =
      (((vR s.1.toTerm : ℝ) : ℂ) * (X.psiInfU u g * conj (X.psiInfU u' g'))) •
        (((Formalism.L2.SG.RealObj.InfCut.piIso X u g hg).toContinuousLinearEquiv : X.Vpi u →L[ℂ] X.Vpi u).comp
          ((haveI := FiniteDimensional.complete ℂ (X.Vpi u)
            Formalism.L2.SG.TermOp.OO (νq (Formalism.L2.SG.RealObj.gamW X u u' (Formalism.L2.SG.PairVal.ptOf s.1.toTerm))) Set.univ
              (X.Wu u) (X.Wu u') (Formalism.L2.SG.RealObj.gamW X u u' (Formalism.L2.SG.PairVal.ptOf s.1.toTerm))).comp
            ((Formalism.L2.SG.RealObj.InfCut.piIso X u' g' hg').symm.toContinuousLinearEquiv : X.Vpi u' →L[ℂ] X.Vpi u'))) := by
    rw [h5 R ρ s hrel g hg g' hg' hdec, ← smul_smul]
    congr 1
    rw [hdec]
    exact ClassFrameNormal.oo_map_mulLeft _ _ _ _ g g' _ _ _ _
      (fun x => (X.Wu_spec u).1 g hg x) (fun x => (X.Wu_spec u').1 g' hg' x)
  rw [Formalism.L2.SG.RealObj.InfCut.piIso_coe, Formalism.L2.SG.RealObj.InfCut.piIso_symm] at hO
  rw [hdec] at hD₁ hD₂
  obtain ⟨k₁, k₁', hK₁, e₁, e₁'⟩ := classFrameAll_pull X u u' i0 i0' _ g g' h₁ h₁' hg hg' hD₁
  obtain ⟨k₂, k₂', hK₂, e₂, e₂'⟩ := classFrameAll_pull X u u' i0 i0' _ g g' h₂ h₂' hg hg' hD₂
  have hV := hVA _ hpt (h4' R ρ s hrel) k₁ k₁' k₂ k₂' hK₁ hK₂
  unfold chiOO
  rw [hO, smul_smul, classFrameAll_comp _ _ _ _ _ _ _ _ e₁ e₁', classFrameAll_comp _ _ _ _ _ _ _ _ e₂ e₂', hV]

theorem normalFormC_all
    (hAtS : ∀ t : Term D u u' (X.Fu u) (Y.what₂ u), t.G ≠ 0 → t.relevant → ∃ w, t.atPt w)
    (hTP : ∀ (t : Term D u u' (X.Fu u) (Y.what₂ u)) (w : Point D.host.E (D.R.rS + 1)), t.atPt w →
      TotPos (Gpt (D.mem u).A.T (D.mem u').A.T w))
    (hCU : Formalism.L2.SG.PairVal.CellPtUnique D u u' (X.Fu u) (Y.what₂ u))
    (hDF : DFrameAtS X u u' i0 i0' 1) (hPT : PhaseTieC X Y u u' κ) (hFT : FormTranspC X Y u u' vR νq κ) :
    NormalFormC X Y u u' vR i0 i0' νq κ :=
  normalFormC_of' X Y u u' vR i0 i0' νq κ (RealDecompL.liftAtSomeC_of X Y u u' κ hAtS) hCU
    (decompPhaseC_of X Y u u' κ (RealDecompL.liftDecompC_of_atSome X Y u u' κ hAtS) hPT) hDF
    (RealDecompL.liftGPosC_of X Y u u' κ hAtS hTP) hFT

theorem commonFrameC_all
    (hAtS : ∀ t : Term D u u' (X.Fu u) (Y.what₂ u), t.G ≠ 0 → t.relevant → ∃ w, t.atPt w)
    (hTP : ∀ (t : Term D u u' (X.Fu u) (Y.what₂ u)) (w : Point D.host.E (D.R.rS + 1)), t.atPt w →
      TotPos (Gpt (D.mem u).A.T (D.mem u').A.T w))
    (hCU : Formalism.L2.SG.PairVal.CellPtUnique D u u' (X.Fu u) (Y.what₂ u))
    (hDF : DFrameAtS X u u' i0 i0' 1) (hPT : PhaseTieC X Y u u' κ) (hFT : FormTranspC X Y u u' vR νq κ)
    (hVA : VIndepAtC X u u' i0 i0' νq 1) (hSc : ScalTC X Y u u' κ) (hV : LemmaVLiftC X Y u u' κ)
    (hAt : AtPtRelevantC X Y u u') :
    CommonFrameC X Y u u' vR i0 i0' νq κ := by
  have hLD := RealDecompL.liftDecompC_of_atSome X Y u u' κ hAtS
  have hGP := RealDecompL.liftGPosC_of X Y u u' κ hAtS hTP
  have hP : PtValueC X Y u u' vR i0 i0' νq κ :=
    ptValueC_of X Y u u' vR i0 i0' νq κ (RealDecompL.liftAtSomeC_of X Y u u' κ hAtS) hCU
      (decompPhaseC_of X Y u u' κ hLD hPT) hDF hGP hFT
      (dFrameMoveC_of X u u' i0 i0' (sDecompC_holds X u) (sDecompC_holds X u') (dFrameMoveHC_holds X u u' i0 i0'))
  exact commonFrameC_of X Y u u' vR i0 i0' νq κ hP (vIndepLiftC_of_at X Y u u' vR i0 i0' νq κ hLD hGP hFT hVA)
    (commonDFrameC_of_exact X Y u u' vR i0 i0' νq κ (commonDFrameExactC_of X Y u u' vR i0 i0' νq κ hP
      (pairDFrameC_of X Y u u' i0 i0' κ (scalarAgreeC_of_scalT X Y u u' κ hSc))))
    (irrelZeroC_of X Y u u' vR i0 i0' νq κ hV hAt)

theorem classFrameOO_all
    (hAtS : ∀ t : Term D u u' (X.Fu u) (Y.what₂ u), t.G ≠ 0 → t.relevant → ∃ w, t.atPt w)
    (hTP : ∀ (t : Term D u u' (X.Fu u) (Y.what₂ u)) (w : Point D.host.E (D.R.rS + 1)), t.atPt w →
      TotPos (Gpt (D.mem u).A.T (D.mem u').A.T w))
    (hCU : Formalism.L2.SG.PairVal.CellPtUnique D u u' (X.Fu u) (Y.what₂ u))
    (hDF : DFrameAtS X u u' i0 i0' 1) (hPT : PhaseTieC X Y u u' κ) (hFT : FormTranspC X Y u u' vR νq κ)
    (hVA : VIndepAtC X u u' i0 i0' νq 1) (hSc : ScalTC X Y u u' κ) (hV : LemmaVLiftC X Y u u' κ)
    (hAt : AtPtRelevantC X Y u u') :
    ClassFrameOO X Y u u' vR i0 i0' νq κ :=
  Formalism.L2.SG.Pf.classFrameOO_of X Y u u' vR i0 i0' νq κ
    (normalFormC_all X Y u u' vR i0 i0' νq κ hAtS hTP hCU hDF hPT hFT)
    (commonFrameC_all X Y u u' vR i0 i0' νq κ hAtS hTP hCU hDF hPT hFT hVA hSc hV hAt) hV hAt

theorem classFrameC_all
    (hAtS : ∀ t : Term D u u' (X.Fu u) (Y.what₂ u), t.G ≠ 0 → t.relevant → ∃ w, t.atPt w)
    (hTP : ∀ (t : Term D u u' (X.Fu u) (Y.what₂ u)) (w : Point D.host.E (D.R.rS + 1)), t.atPt w →
      TotPos (Gpt (D.mem u).A.T (D.mem u').A.T w))
    (hCU : Formalism.L2.SG.PairVal.CellPtUnique D u u' (X.Fu u) (Y.what₂ u))
    (hDF : DFrameAtS X u u' i0 i0' 1) (hPT : PhaseTieC X Y u u' κ) (hFT : FormTranspC X Y u u' vR νq κ)
    (hVA : VIndepAtC X u u' i0 i0' νq 1) (hSc : ScalTC X Y u u' κ) (hV : LemmaVLiftC X Y u u' κ)
    (hAt : AtPtRelevantC X Y u u') (hVol : 0 < X.volK2)
    (hc : 0 ≤ (bCF X hb Y.hK (Y.FN u) (Y.FN u') u u' X0 ψ (Y.tO u u') sd C Th vR Q M δ i0 i0' νq).c0 *
      (bCF X hb Y.hK (Y.FN u) (Y.FN u') u u' X0 ψ (Y.tO u u') sd C Th vR Q M δ i0 i0' νq).c0') :
    ClassFrameC X hb Y u u' X0 ψ sd C Th vR Q M δ i0 i0' νq κ :=
  classFrameC_of_OO X hb Y u u' X0 ψ sd C Th vR Q M δ i0 i0' νq κ
    (classFrameOO_all X Y u u' vR i0 i0' νq κ hAtS hTP hCU hDF hPT hFT hVA hSc hV hAt) hVol hc

end Formalism.L2.SG.Pf.RowForm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.RowFrameCoherence.ClassFrameAll =====
