module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJD
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity
public import Formalism.HermitianCurvature.StatementJF
public import Formalism.HermitianCurvature.StatementTBB
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BXiAsm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaCutoffLimit
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutDomCutInt
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLemB
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFApxDom
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CccoefMono
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEnTrSmooth
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutFpmDecay
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDCCLower
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_PtwCut
public import Mathlib.Analysis.PSeries
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellHermitian
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LUFactorOrbitBounds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplySub
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TriangleInequalityAtPlace
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFApxDomThQ, Formalism.HermitianCurvature.HermitianCurvatureProofs.DominatedL2OperatorBoundHolds, Formalism.HermitianCurvature.HermitianCurvatureProofs.DominatedL2TruncationBoundHolds

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFApxDomThQ =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFApxDomThQ", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJD\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.P.BetaSesquilinearity
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.CutBP

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

noncomputable section

theorem ccleQ_nonneg {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {A : ℝ} {m : ℕ}
    {F : B.Mat k r → E} {b : ℝ} (h : B.CCle A m F b) : 0 ≤ b := by
  obtain ⟨g, hg⟩ : ∃ g, g ∈ B.GV k r := ⟨1, by simp [B.GV, Formalism.QuantumDeterminants.UH]⟩
  have h1 := h.2 [] [] (by simp) (by simp) (by simp) g hg
  have h2 : 0 ≤ B.gN g ^ A * ‖B.dLR [] [] F g‖ :=
    mul_nonneg (Real.rpow_nonneg (gN_pos hg).le _) (norm_nonneg _)
  linarith

theorem ccleQ_mono_c {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {A : ℝ} {m : ℕ}
    {F : B.Mat k r → E} {b b' : ℝ} (h : B.CCle A m F b) (hb : b ≤ b') : B.CCle A m F b' := ⟨h.1, fun u v hu hv hl g hg => (h.2 u v hu hv hl g hg).trans hb⟩

private theorem le_foldr_max_zero_of_mem : ∀ (l : List ℕ), ∀ x ∈ l, x ≤ l.foldr max 0 := by
  intro l
  induction l with
  | nil => intro x hx; simp at hx
  | cons y t ih =>
    intro x hx
    simp only [List.foldr_cons]
    rcases List.mem_cons.mp hx with h | h
    · subst h; exact le_max_left _ _
    · exact le_trans (ih x h) (le_max_right _ _)

theorem word_le_opOrder {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq] (Θ : B.DiffOp k r Wp Wq) :
    ∀ T ∈ Θ, T.word.length ≤ B.opOrder Θ := by
  intro T hT
  unfold B.opOrder
  exact le_foldr_max_zero_of_mem _ _ (List.mem_map_of_mem hT)

theorem jdCCLowerQ {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [FiniteDimensional ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq] (Θ : B.DiffOp k r Wp Wq) (d A : ℝ)
    (hd : 0 ≤ d) (hG : CutMP.GlobCoef Θ d) (m : ℕ) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ (F : B.Mat k r → (Wq →L[ℂ] Wp)) (b : ℝ), B.CkOn ⊤ (B.GV k r) F →
      B.CCle A (m + B.opOrder Θ) F b → B.CCle (A - d) m (B.opApply Θ F) (K * b) := by
  have _hd := hd
  set o := B.opOrder Θ with ho
  have hO : IsOpen (∅ : Set (B.Mat k r)) := isOpen_empty
  have hcov : ∀ g ∈ B.GV k r, g ∈ (∅ : Set (B.Mat k r)) ∨ g ∈ B.GV k r := fun g hg => Or.inr hg

  have hterm : ∀ T ∈ Θ, ∃ K : ℝ, 0 ≤ K ∧ ∀ (F : B.Mat k r → (Wq →L[ℂ] Wp)) (b : ℝ),
      B.CCle A (m + o) F b → B.CCle (A - d) m (ap T.coef (B.Rw T.word F)) (K * b) := by
    intro T hT
    obtain ⟨hc1, -, hcb⟩ := hG T hT
    obtain ⟨C, hC⟩ := hcb m
    set s : ℂ := (((T.word.map nz).prod : ℝ) : ℂ) with hs
    refine ⟨2 ^ m * (|C| * ‖s‖), by positivity, fun F b hF => ?_⟩
    have hb0 : 0 ≤ b := ccleQ_nonneg hF
    have hlen : T.word.length ≤ o := word_le_opOrder Θ T hT
    have hF1 : B.CCle A (m + (T.word.map nrm).length) F b :=
      CCle_mono_m (by simp; omega) hF
    have hunit : ∀ X ∈ T.word.map nrm, unitLie k r X := by
      intro X hX
      obtain ⟨Y, hY, rfl⟩ := List.mem_map.mp hX
      exact nrm_unit (T.word_lie Y hY)
    have hR : B.CCle A m (B.Rw T.word F) (‖s‖ * b) := by
      rw [Rw_scale]
      exact CCle_smul s (CCle_Rw hunit hF1)
    have hR' : B.CCle (A - d + d) m (B.Rw T.word F) (‖s‖ * b) := by rw [sub_add_cancel]; exact hR
    have hP := prodBound hO hcov (sCkOn_mono le_top hc1)
      (fun u v hu hv hl g hg _ => (hC u v hu hv hl g hg).1) hR' (fun g _ hg => by simp at hg)
    refine ccleQ_mono_c hP (le_of_eq ?_)
    rw [abs_of_nonneg (mul_nonneg (norm_nonneg _) hb0)]
    ring

  have hsum : ∀ L : List (B.DTerm k r Wp Wq), (∀ T ∈ L, T ∈ Θ) → ∃ K : ℝ, 0 ≤ K ∧
      ∀ (F : B.Mat k r → (Wq →L[ℂ] Wp)) (b : ℝ), B.CCle A (m + o) F b →
        B.CCle (A - d) m (fun g => (L.map fun T => ap T.coef (B.Rw T.word F) g).sum) (K * b) := by
    intro L
    induction L with
    | nil =>
      intro _
      refine ⟨0, le_rfl, fun F b _ => ?_⟩
      simpa using (CCle_zero : B.CCle (A - d) m (fun _ : B.Mat k r => (0 : Wq →L[ℂ] Wp)) 0)
    | cons T L ih =>
      intro hL
      obtain ⟨K₁, hK₁, h₁⟩ := hterm T (hL T (by simp))
      obtain ⟨K₂, hK₂, h₂⟩ := ih fun S hS => hL S (by simp [hS])
      refine ⟨K₁ + K₂, add_nonneg hK₁ hK₂, fun F b hF => ?_⟩
      have h := CCle_add (h₁ F b hF) (h₂ F b hF)
      have e : (K₁ + K₂) * b = K₁ * b + K₂ * b := by ring
      rw [e]
      simpa using h
  obtain ⟨K, hK, hKb⟩ := hsum Θ fun T hT => hT
  refine ⟨K, hK, fun F b _ hF => ?_⟩
  have hop : B.opApply Θ F = fun g => (Θ.map fun T => ap T.coef (B.Rw T.word F) g).sum := rfl
  rw [hop]
  exact hKb F b hF

end

end Formalism.FourierDecayAlt.P.CutBP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFApxDomThQ =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.DominatedL2OperatorBoundHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.DominatedL2OperatorBoundHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementJF\npublic import Formalism.HermitianCurvature.StatementTBB\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BXiAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaCutoffLimit\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutDomCutInt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLemB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

def bcE (r : ℕ) : (Fin (r + 1) → ℂ) ≃ᵐ (Fin r → ℂ) × ℂ :=
  (MeasurableEquiv.piFinSuccAbove (fun _ => ℂ) (Fin.last r)).trans MeasurableEquiv.prodComm

theorem bcE_apply (r : ℕ) (c : Fin (r + 1) → ℂ) : bcE r c = ((fun j => c j.castSucc), c (Fin.last r)) := by
  ext j <;> simp [bcE, MeasurableEquiv.piFinSuccAbove_apply] <;> rfl

theorem bcE_mp (r : ℕ) : MeasurePreserving (bcE r) volume volume := by
  have h := (Measure.measurePreserving_swap (μ := (volume : Measure ℂ))
    (ν := Measure.pi fun _ : Fin r => (volume : Measure ℂ))).comp
    (measurePreserving_piFinSuccAbove (fun _ : Fin (r + 1) => (volume : Measure ℂ)) (Fin.last r))
  exact h

theorem ae_ne_zero_all (r : ℕ) : ∀ᵐ c : Fin (r + 1) → ℂ, ∀ a, c a ≠ 0 := by
  exact ae_all_iff.2 fun a => Measure.ae_eval_ne (fun _ => (volume : Measure ℂ)) a 0

section place

variable {P : M.Par} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

private theorem ptEntry_map_one_eq_ite_getD (L : List ℂ) :
    ∀ a b : ℕ, D.ptEntry (L.map fun t => ((1 : ℕ), t)) a b = if a = b then L.getD a 0 else 0 := by
  induction L with
  | nil => intro a b; simp [D.ptEntry]
  | cons t L ih =>
    intro a b
    rcases a with _ | a <;> rcases b with _ | b <;> simp [D.ptEntry, ih]

private theorem ptMatN_bigPt_eq_diagonal (r n : ℕ) (c : Fin (r + 1) → ℂ) :
    D.ptMatN (TBB.bigPt r c) n = Matrix.diagonal fun i : Fin n => (List.ofFn c).getD i 0 := by
  have hb : TBB.bigPt r c = (List.ofFn c).map fun t => ((1 : ℕ), t) := by
    simp [TBB.bigPt, List.map_ofFn, Function.comp_def]
  ext a b
  rw [D.ptMatN, hb, ptEntry_map_one_eq_ite_getD, Matrix.diagonal_apply]
  by_cases h : a = b
  · subst h; simp
  · simp [h, Fin.val_inj]

private theorem ofFn_getD_eq_apply {m : ℕ} (c : Fin m → ℂ) (j : ℕ) (hj : j < m) :
    (List.ofFn c).getD j 0 = c ⟨j, hj⟩ := by
  simp [List.getD_eq_getElem?_getD, hj]

theorem Gp_bigPt_eq (p : KB.Pl P Wp Wq) (c : Fin (P.r + 1) → ℂ) :
    TBB.Gp p (TBB.bigPt P.r c) =
      Complex.normSq (∏ i, c i) - TBB.TTp p * Complex.normSq (∏ i : Fin P.r, c i.castSucc) := by
  simp only [TBB.Gp, D.ptG, ptMatN_bigPt_eq_diagonal, Matrix.det_diagonal]
  have h1 : ∀ i : Fin (P.r + 1), (List.ofFn c).getD i 0 = c i := fun i => ofFn_getD_eq_apply c i i.isLt
  have h2 : ∀ i : Fin P.r, (List.ofFn c).getD i 0 = c i.castSucc := fun i =>
    ofFn_getD_eq_apply c i (by omega)
  simp only [h1, h2]

private theorem isLocPt_bigPt_of_ne_zero (r : ℕ) (c : Fin (r + 1) → ℂ) (hd : ∀ a, c a ≠ 0) :
    D.IsLocPt (TBB.bigPt r c) (r + 1) := by
  refine ⟨fun b hb => ?_, ?_⟩
  · rw [TBB.bigPt, List.mem_ofFn] at hb
    obtain ⟨l, rfl⟩ := hb
    exact ⟨le_rfl, hd l⟩
  · simp [D.ptSize, TBB.bigPt, List.map_ofFn, Function.comp_def]
    omega

private theorem bcWeight_eq_zero_of_normSq_le {k r : ℕ} (hk : 2 ≤ k) (T T' : ℝ) (q : (Fin r → ℂ) × ℂ)
    (hq : Complex.normSq q.2 ≤ T * T') : bcWeight k r T T' q = 0 := by
  unfold bcWeight
  split_ifs with h
  · have h0 : Complex.normSq q.2 - T * T' = 0 := by linarith
    rw [h0, zero_pow (by omega), mul_zero]
  · rfl

private theorem gp_bigPt_eq_normSq_prod_mul_sub (p : KB.Pl P Wp Wq) (c : Fin (P.r + 1) → ℂ) :
    TBB.Gp p (TBB.bigPt P.r c) = Complex.normSq (∏ i : Fin P.r, c i.castSucc) *
      (Complex.normSq (c (Fin.last P.r)) - TBB.TTp p) := by
  rw [Gp_bigPt_eq, Fin.prod_univ_castSucc, Complex.normSq_mul]
  ring

theorem ew_eq_weight (p : KB.Pl P Wp Wq) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (c : Fin (P.r + 1) → ℂ)
    (hd : ∀ a, c a ≠ 0) :
    TBB.Ew p (fun _ => 1) F (P.r + 1) [] (TBB.bigPt P.r c) =
      bcWeight P.k P.r (Tz P.k P.r p.T.base.z) (Tz P.k P.r p.T.base.z') ((fun j => c j.castSucc), c (Fin.last P.r)) *
        ‖B.hsVec (B.JF p.T.base F (bigCell P.k P.r (fun j => c j.castSucc) (p.T.base.μsec (c (Fin.last P.r)))))‖ ^ 2 := by
  have hloc := isLocPt_bigPt_of_ne_zero P.r c hd
  have hTT : TBB.TTp p = Tz P.k P.r p.T.base.z * Tz P.k P.r p.T.base.z' := rfl
  have hpos : 0 < Complex.normSq (∏ i : Fin P.r, c i.castSucc) :=
    Complex.normSq_pos.2 (Finset.prod_ne_zero_iff.2 fun i _ => hd _)
  have hRR : p.RR F (P.r + 1) [] (TBB.bigPt P.r c) (TBB.bigPt P.r c) =
      B.hsInner (p.V F (TBB.bigPt P.r c)) (p.V F (TBB.bigPt P.r c)) := by
    unfold KB.Pl.RR D.RRplace
    rw [dite_eq_left ⟨hloc, hloc⟩, dite_eq_right (by omega), if_pos rfl, if_pos rfl]
    rfl
  have hEw : TBB.Ew p (fun _ => 1) F (P.r + 1) [] (TBB.bigPt P.r c) =
      Real.sqrt (TBB.nPt P.k P.r (TBB.TTp p) (TBB.bigPt P.r c)) *
        Real.sqrt (TBB.nPt P.k P.r (TBB.TTp p) (TBB.bigPt P.r c)) *
        ‖B.hsVec (p.V F (TBB.bigPt P.r c))‖ ^ 2 := by
    rw [TBB.Ew, TBB.NP, hRR, B.hsInner, JCTx2.inner_self_real, ← Complex.ofReal_mul, Complex.ofReal_re]
    simp [TBB.normC]
  rw [hEw]
  by_cases hζ : TBB.TTp p < Complex.normSq (c (Fin.last P.r))
  · have hG : 0 < TBB.Gp p (TBB.bigPt P.r c) := by
      rw [gp_bigPt_eq_normSq_prod_mul_sub]
      exact mul_pos hpos (by linarith)
    have hn := nPt_bigPt P.k P.r (Tz P.k P.r p.T.base.z) (Tz P.k P.r p.T.base.z') c
      (by rw [← hTT]; exact hζ.le)
    rw [hTT, hn, Real.mul_self_sqrt (bcWeight_nonneg0 _ _ _ _ _), hsVec_norm_V_bigPt p F c hd hG]
  · replace hζ := not_lt.1 hζ
    have hG : ¬ 0 < TBB.Gp p (TBB.bigPt P.r c) := by
      rw [gp_bigPt_eq_normSq_prod_mul_sub]
      intro h
      have := (pos_iff_pos_of_mul_pos h).1 hpos
      linarith
    have hV0 : p.V F (TBB.bigPt P.r c) = 0 := by
      unfold KB.Pl.V D.vecV
      rw [dite_eq_right]
      exact fun hh => hG hh.2
    have h0 : B.hsVec (0 : Wq →L[ℂ] Wp) = 0 := by
      simpa using JCTx2.hsVec_smul' (0 : ℂ) (0 : Wq →L[ℂ] Wp)
    rw [bcWeight_eq_zero_of_normSq_le p.hl.2.2 _ _ _ (by exact hζ), hV0, h0]
    simp

theorem ew_integrable (p : KB.Pl P Wp Wq) {A : ℝ} {H : B.Mat P.k P.r → (Wq →L[ℂ] Wp)} (hAB : B.AB P.k P.r ≤ A)
    (hT : JF.TransportedAlt P.k P.r A 0) (hH : ∀ j : ℕ, j ≤ 5 → B.InCC A j H) :
    Integrable (fun c : Fin (P.r + 1) → ℂ => TBB.Ew p (fun _ => 1) H (P.r + 1) [] (TBB.bigPt P.r c)) := by
  obtain ⟨cc, -, -, ⟨C, hB1⟩, -⟩ := Formalism.FourierDecayAlt.P.b_any_of_xi P.k P.r Wp Wq p.T.base A hAB
  obtain ⟨c4, hc4⟩ := hH 4 (by norm_num)
  have hfin : B.normSq p.T.base H ≠ ⊤ := (hB1 H H c4 c4 (hH 5 le_rfl) (hH 5 le_rfl) hc4 hc4).1
  set g : (Fin P.r → ℂ) × ℂ → ℝ := fun q =>
    bcWeight P.k P.r (Tz P.k P.r p.T.base.z) (Tz P.k P.r p.T.base.z') q *
      ‖B.hsVec (B.JF p.T.base H (B.gq p.T.base q))‖ ^ 2 with hg
  have hg0 : ∀ q, 0 ≤ g q := fun q => mul_nonneg (bcWeight_nonneg0 _ _ _ _ q) (sq_nonneg _)
  have hmeas : AEStronglyMeasurable g volume := by
    have hc := jgq_continuousOn p.T.base hT (hH 0 (by norm_num))
    have h2 : ContinuousOn (fun q => ‖B.hsVec (B.JF p.T.base H (B.gq p.T.base q))‖ ^ 2)
        (JF.QDom P.k P.r p.T.base.z p.T.base.z') :=
      ((JCTx2.hsVec_cont'.comp_continuousOn hc).norm).pow 2
    simpa [hg, smul_eq_mul] using aesm_weight_smul p.T.base h2
  have hint : Integrable g volume := by
    refine ⟨hmeas, ?_⟩
    rw [hasFiniteIntegral_iff_ofReal (Filter.Eventually.of_forall hg0)]
    have hns : B.normSq p.T.base H = ∫⁻ q, ENNReal.ofReal (g q) := rfl
    rw [← hns]
    exact lt_top_iff_ne_top.2 hfin
  have hcomp : Integrable (g ∘ bcE P.r) volume :=
    ((bcE_mp P.r).integrable_comp_emb (bcE P.r).measurableEmbedding).2 hint
  refine hcomp.congr ?_
  filter_upwards [ae_ne_zero_all P.r] with c hc
  simp only [Function.comp, bcE_apply, hg, B.gq]
  exact (ew_eq_weight p H c hc).symm

end place

theorem nf_pow_bound (y : ℝ) (hy : 0 ≤ y) (a b : ℕ) (E : ℝ) (hE : 0 ≤ E) : y ^ (a - b) * E ≤ E + y ^ a * E := by
  have hya : 0 ≤ y ^ a * E := mul_nonneg (pow_nonneg hy _) hE
  rcases le_total y 1 with h | h
  · have h1 : y ^ (a - b) ≤ 1 := pow_le_one₀ hy h
    nlinarith [mul_le_mul_of_nonneg_right h1 hE]
  · have h1 : y ^ (a - b) ≤ y ^ a := pow_le_pow_right₀ h (Nat.sub_le a b)
    nlinarith [mul_le_mul_of_nonneg_right h1 hE]

theorem nf_arith_d (C₁ R x N : ℝ) (hC₁ : 0 ≤ C₁) (hR1 : 1 ≤ R) (hx1 : 1 ≤ x) (hN0 : 0 ≤ N) :
    C₁ * R * x * (N + 1) ≤ C₁ * (R ^ 4 * (N * x ^ 2 + x ^ 3)) := by
  have h4 : R ≤ R ^ 4 := le_self_pow₀ hR1 (by norm_num)
  have h2 : x ≤ x ^ 2 := le_self_pow₀ hx1 (by norm_num)
  have h3 : x ≤ x ^ 3 := le_self_pow₀ hx1 (by norm_num)
  have hS : x * (N + 1) ≤ N * x ^ 2 + x ^ 3 := by nlinarith
  have hx0 : 0 ≤ x * (N + 1) := mul_nonneg (by linarith) (by linarith)
  have hR0 : 0 ≤ R ^ 4 := by positivity
  have hmain : R * (x * (N + 1)) ≤ R ^ 4 * (N * x ^ 2 + x ^ 3) := mul_le_mul h4 hS hx0 hR0
  calc C₁ * R * x * (N + 1) = C₁ * (R * (x * (N + 1))) := by ring
    _ ≤ C₁ * (R ^ 4 * (N * x ^ 2 + x ^ 3)) := mul_le_mul_of_nonneg_left hmain hC₁

theorem nf_arith_low (R x N : ℝ) (hR1 : 1 ≤ R) (hx1 : 1 ≤ x) (hN0 : 0 ≤ N) :
    R * x ^ 3 ≤ R ^ 4 * (N * x ^ 2 + x ^ 3) := by
  have h4 : R ≤ R ^ 4 := le_self_pow₀ hR1 (by norm_num)
  have hx3 : 0 ≤ x ^ 3 := pow_nonneg (by linarith) 3
  have hNx : 0 ≤ N * x ^ 2 := mul_nonneg hN0 (sq_nonneg x)
  have hR4 : 0 ≤ R ^ 4 := by positivity
  nlinarith [mul_le_mul_of_nonneg_right h4 hx3, mul_nonneg hR4 hNx]

theorem nf_arith_ab (r k : ℝ) (hr : 0 ≤ r) (hk : 2 ≤ k) :
    2 * (k + r) * (r + 1) + 1 ≤ 20 * ((r + 1) * (2 * r + k + 1) ^ 3) := by
  have hs3 : 9 * (2 * r + k + 1) ≤ (2 * r + k + 1) ^ 3 := by
    nlinarith [mul_nonneg (mul_nonneg (by linarith : (0 : ℝ) ≤ 2 * r + k + 1)
      (by linarith : (0 : ℝ) ≤ 2 * r + k + 1 - 3)) (by linarith : (0 : ℝ) ≤ 2 * r + k + 1 + 3)]
  have h1 : (r + 1) * (9 * (2 * r + k + 1)) ≤ (r + 1) * (2 * r + k + 1) ^ 3 :=
    mul_le_mul_of_nonneg_left hs3 (by linarith)
  nlinarith [mul_le_mul_of_nonneg_left (by linarith : k + r ≤ 2 * r + k + 1) (by linarith : (0 : ℝ) ≤ r + 1)]

theorem nf_arith_thr (R x : ℝ) (hR1 : 1 ≤ R) (hx1 : 1 ≤ x) : x ^ 2 * (9 * R) < 20 * (R * x ^ 3) := by
  have hx2 : 0 < R * x ^ 2 := mul_pos (by linarith) (pow_pos (by linarith) 2)
  nlinarith [mul_lt_mul_of_pos_left (by linarith : (9 : ℝ) < 20 * x) hx2]

end

end Formalism.FourierDecayAlt.P.CutBP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.DominatedL2OperatorBoundHolds =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.DominatedL2TruncationBoundHolds =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.DominatedL2TruncationBoundHolds", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFApxDom\npublic import Formalism.HermitianCurvature.StatementJF\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BXiAsm\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellHermitian\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CccoefMono\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutDomCutInt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEnTrSmooth\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutFpmDecay\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutJDCCLower\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLemB\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFApxDomThQ\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DominatedL2OperatorBoundHolds\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LUFactorOrbitBounds\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplySub\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.TriangleInequalityAtPlace\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_PtwCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.PSeries\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory
open scoped ENNReal

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

section general

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem jf_sub_thr (D : B.RealPlaceData k r Wp Wq) {A : ℝ} (hT : JF.TransportedAlt k r A 0) {F G : B.Mat k r → (Wq →L[ℂ] Wp)}
    (hF : B.InCC A 0 F) (hG : B.InCC A 0 G) {h : B.Mat k r} (hh : h ∈ JF.Om k r D.z D.z') :
    B.JF D (fun g => F g - G g) h = B.JF D F h - B.JF D G h := by
  have hJ : ∀ H : B.Mat k r → (Wq →L[ℂ] Wp), B.JF D H h = ∫ q, JF.integrand D H h q ∂D.μSS := fun H => rfl
  obtain ⟨hFi, -⟩ := Formalism.FourierDecayAlt.P.bessel_integral_converges k r Wp Wq D A F hT hF
  obtain ⟨hGi, -⟩ := Formalism.FourierDecayAlt.P.bessel_integral_converges k r Wp Wq D A G hT hG
  rw [hJ, hJ, hJ, ← integral_sub (hFi h hh) (hGi h hh)]
  congr 1
  funext q
  simp [JF.integrand, B.rho, smul_sub]

theorem hsVec_sub'' (A C : Wq →L[ℂ] Wp) : B.hsVec (A - C) = B.hsVec A - B.hsVec C := by
  unfold B.hsVec
  ext i
  simp

end general

section place

variable {P : M.Par} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]

theorem pos_bigPt (p : KB.Pl P Wp Wq) (c : Fin (P.r + 1) → ℂ) (hG : 0 < TBB.Gp p (TBB.bigPt P.r c)) :
    (∀ a, c a ≠ 0) ∧
      ((fun j => c j.castSucc), c (Fin.last P.r)) ∈ JF.QDom P.k P.r p.T.base.z p.T.base.z' := by
  have hG' := hG
  rw [Gp_bigPt_eq] at hG'
  have hTT : 0 < TBB.TTp p := mul_pos p.T.base.T_pos p.T.base.T'_pos
  rw [Fin.prod_univ_castSucc c, Complex.normSq_mul] at hG'
  have ha0 : 0 ≤ Complex.normSq (∏ i : Fin P.r, c i.castSucc) := Complex.normSq_nonneg _
  have hfac : Complex.normSq (∏ i : Fin P.r, c i.castSucc) * Complex.normSq (c (Fin.last P.r)) -
      TBB.TTp p * Complex.normSq (∏ i : Fin P.r, c i.castSucc)
      = Complex.normSq (∏ i : Fin P.r, c i.castSucc) * (Complex.normSq (c (Fin.last P.r)) - TBB.TTp p) := by ring
  rw [hfac] at hG'
  rcases pos_and_pos_or_neg_and_neg_of_mul_pos hG' with ⟨hapos, hb⟩ | ⟨hneg, -⟩
  swap
  · exact absurd ha0 (not_le.mpr hneg)
  have hne' : ∀ i : Fin P.r, c i.castSucc ≠ 0 := by
    intro i hi
    apply hapos.ne'
    rw [Complex.normSq_eq_zero]
    exact Finset.prod_eq_zero (Finset.mem_univ i) hi
  have hlast : c (Fin.last P.r) ≠ 0 := by
    intro h0
    rw [h0, map_zero] at hb
    linarith
  refine ⟨fun a => ?_, ⟨hne', ?_⟩⟩
  · induction a using Fin.lastCases with
    | last => exact hlast
    | cast i => exact hne' i
  · show TBB.TTp p < Complex.normSq (c (Fin.last P.r))
    linarith

private lemma mul_norm_sub_sq_le_two_mul_add {E : Type*} [SeminormedAddCommGroup E] (w : ℝ) (hw : 0 ≤ w) (a b : E) :
    w * ‖a - b‖ ^ 2 ≤ 2 * (w * ‖a‖ ^ 2) + 2 * (w * ‖b‖ ^ 2) := by
  have h1 := norm_sub_le a b
  have h2 : ‖a - b‖ ^ 2 ≤ 2 * ‖a‖ ^ 2 + 2 * ‖b‖ ^ 2 := by
    nlinarith [norm_nonneg a, norm_nonneg b, norm_nonneg (a - b), sq_nonneg (‖a‖ - ‖b‖)]
  nlinarith [mul_le_mul_of_nonneg_left h2 hw]

theorem ew_sub_le (p : KB.Pl P Wp Wq) {A : ℝ} (hT : JF.TransportedAlt P.k P.r A 0) {X Y : B.Mat P.k P.r → (Wq →L[ℂ] Wp)}
    (hX : B.InCC A 0 X) (hY : B.InCC A 0 Y) (c : Fin (P.r + 1) → ℂ) :
    TBB.Ew p (fun _ => 1) (fun g => X g - Y g) (P.r + 1) [] (TBB.bigPt P.r c) ≤
      2 * TBB.Ew p (fun _ => 1) X (P.r + 1) [] (TBB.bigPt P.r c) +
        2 * TBB.Ew p (fun _ => 1) Y (P.r + 1) [] (TBB.bigPt P.r c) := by
  by_cases hG : 0 < TBB.Gp p (TBB.bigPt P.r c)
  · obtain ⟨hd, hq⟩ := pos_bigPt p c hG
    rw [ew_eq_weight p _ c hd, ew_eq_weight p X c hd, ew_eq_weight p Y c hd]
    have hmem := Formalism.FourierDecayAlt.P.big_cell_domain P.k P.r Wp Wq p.T.base _ hq
    have hJ := jf_sub_thr p.T.base hT hX hY hmem
    simp only [B.gq] at hJ
    rw [hJ, hsVec_sub'']
    exact mul_norm_sub_sq_le_two_mul_add _ (bcWeight_nonneg0 _ _ _ _ _) _ _
  · have h0 : ¬ (D.IsLocPt (TBB.bigPt P.r c) (P.r + 1) ∧ 0 < TBB.Gp p (TBB.bigPt P.r c)) := fun h' => hG h'.2
    rw [Formalism.FourierDecayAlt.P.TBBx4.ew_zero_of p _ h0, Formalism.FourierDecayAlt.P.TBBx4.ew_zero_of p X h0,
      Formalism.FourierDecayAlt.P.TBBx4.ew_zero_of p Y h0]
    norm_num

theorem ew_congr_GV (p : KB.Pl P Wp Wq) {F F' : B.Mat P.k P.r → (Wq →L[ℂ] Wp)} (h : ∀ g ∈ B.GV P.k P.r, F g = F' g)
    (c : Fin (P.r + 1) → ℂ) :
    TBB.Ew p (fun _ => 1) F (P.r + 1) [] (TBB.bigPt P.r c) = TBB.Ew p (fun _ => 1) F' (P.r + 1) [] (TBB.bigPt P.r c) := by
  by_cases hG : 0 < TBB.Gp p (TBB.bigPt P.r c)
  · obtain ⟨hd, hq⟩ := pos_bigPt p c hG
    rw [ew_eq_weight p F c hd, ew_eq_weight p F' c hd]
    have hmem := Formalism.FourierDecayAlt.P.big_cell_domain P.k P.r Wp Wq p.T.base _ hq
    have hJ : B.JF p.T.base F _ = B.JF p.T.base F' _ := jf_congr_level p.T.base hmem.1 (fun x hx _ => h x hx)
    simp only [B.gq] at hJ
    rw [hJ]
  · have h0 : ¬ (D.IsLocPt (TBB.bigPt P.r c) (P.r + 1) ∧ 0 < TBB.Gp p (TBB.bigPt P.r c)) := fun h' => hG h'.2
    rw [Formalism.FourierDecayAlt.P.TBBx4.ew_zero_of p F h0, Formalism.FourierDecayAlt.P.TBBx4.ew_zero_of p F' h0]

theorem ew_Gpow_le (p : KB.Pl P Wp Wq) (Z : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (p₀ N : ℕ) (c : Fin (P.r + 1) → ℂ) :
    ‖TBB.Gp p (TBB.bigPt P.r c)‖ ^ (2 * p₀ - N) * TBB.Ew p (fun _ => 1) Z (P.r + 1) [] (TBB.bigPt P.r c) ≤
      TBB.Ew p (fun _ => 1) Z (P.r + 1) [] (TBB.bigPt P.r c) +
        TBB.Ew p (fun _ => 1) (fun g => ((Gf P.k P.r p.T.base.z p.T.base.z' g ^ p₀ : ℝ) : ℂ) • Z g) (P.r + 1) []
          (TBB.bigPt P.r c) := by
  by_cases hγ : D.IsLocPt (TBB.bigPt P.r c) (P.r + 1) ∧ 0 < TBB.Gp p (TBB.bigPt P.r c)
  · have hE0 := Formalism.FourierDecayAlt.P.TBBx4.ew_nonneg p Z (TBB.bigPt P.r c)
    have hb := nf_pow_bound ‖TBB.Gp p (TBB.bigPt P.r c)‖ (norm_nonneg _) (2 * p₀) N _ hE0
    have heq : TBB.Ew p (fun _ => 1) (fun g => ((Gf P.k P.r p.T.base.z p.T.base.z' g ^ p₀ : ℝ) : ℂ) • Z g)
        (P.r + 1) [] (TBB.bigPt P.r c)
        = ‖TBB.Gp p (TBB.bigPt P.r c)‖ ^ (2 * p₀) * TBB.Ew p (fun _ => 1) Z (P.r + 1) [] (TBB.bigPt P.r c) := by
      rw [Formalism.FourierDecayAlt.P.TBBx2.Tri.Ew_top p _ hγ.1, Formalism.FourierDecayAlt.P.TBBx2.Tri.Ew_top p _ hγ.1,
        Formalism.FourierDecayAlt.P.TBBx4.vec_Gpow p Z p₀ hγ.1 hγ.2, Formalism.FourierDecayAlt.P.TBBx4.hsVec_real_smul_sq, Real.norm_eq_abs,
        abs_of_pos hγ.2]
      ring
    rw [heq]
    exact hb
  · rw [Formalism.FourierDecayAlt.P.TBBx4.ew_zero_of p Z hγ, Formalism.FourierDecayAlt.P.TBBx4.ew_zero_of p _ hγ]
    simp

theorem ew_lint_le (p : KB.Pl P Wp Wq) {A : ℝ} (hAB : B.AB P.k P.r ≤ A) (hT : JF.TransportedAlt P.k P.r A 0) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ (H : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (b : ℝ), B.InCC A 5 H → B.CCle A 4 H b →
      ∫⁻ c, ENNReal.ofReal (TBB.Ew p (fun _ => 1) H (P.r + 1) [] (TBB.bigPt P.r c)) ≤ ENNReal.ofReal (C * b * b) := by
  obtain ⟨c0, -, -, hB1, -⟩ := Formalism.FourierDecayAlt.P.b_any_of_xi P.k P.r Wp Wq p.T.base A hAB
  obtain ⟨C, hC⟩ := hB1
  refine ⟨max C 0, le_max_right _ _, fun H b hH5 hH4 => ?_⟩
  obtain ⟨hfin, -, hbeta⟩ := hC H H b b hH5 hH5 hH4 hH4
  set w : (Fin P.r → ℂ) × ℂ → ℝ := fun q => bcWeight P.k P.r (Tz P.k P.r p.T.base.z) (Tz P.k P.r p.T.base.z') q
    with hw
  set J : (Fin P.r → ℂ) × ℂ → PiLp 2 (fun _ : Fin (Module.finrank ℂ Wq) => Wp) :=
    fun q => B.hsVec (B.JF p.T.base H (B.gq p.T.base q)) with hJ
  have hw0 : ∀ q, 0 ≤ w q := fun q => bcWeight_nonneg0 _ _ _ _ q

  have hae : (fun c : Fin (P.r + 1) → ℂ => ENNReal.ofReal (TBB.Ew p (fun _ => 1) H (P.r + 1) [] (TBB.bigPt P.r c)))
      =ᵐ[volume] (fun c => ENNReal.ofReal (w (bcE P.r c) * ‖J (bcE P.r c)‖ ^ 2)) := by
    filter_upwards [ae_ne_zero_all P.r] with c hc
    rw [ew_eq_weight p H c hc, bcE_apply]
    rfl
  have hnorm : ∫⁻ c, ENNReal.ofReal (TBB.Ew p (fun _ => 1) H (P.r + 1) [] (TBB.bigPt P.r c))
      = B.normSq p.T.base H := by
    rw [lintegral_congr_ae hae]
    exact (bcE_mp P.r).lintegral_comp_emb (bcE P.r).measurableEmbedding
      (fun q => ENNReal.ofReal (w q * ‖J q‖ ^ 2))
  rw [hnorm]

  have hH0 : B.InCC A 0 H := Formalism.FourierDecayAlt.P.BetaSesquilinearity.sInCC_mono le_rfl (Nat.zero_le 5) hH5
  have hcont : ContinuousOn (fun q => ‖J q‖ ^ 2) (JF.QDom P.k P.r p.T.base.z p.T.base.z') := by
    have h1 := jgq_continuousOn p.T.base hT hH0
    exact ((Formalism.FourierDecayAlt.P.CutMP.En.hsVec_contDiff.continuous.comp_continuousOn h1).norm).pow 2
  have hmeas : AEStronglyMeasurable (fun q => w q * ‖J q‖ ^ 2) volume := by
    have h := aesm_weight_smul p.T.base hcont
    simpa only [smul_eq_mul] using h
  have hint : ∫ q, w q * ‖J q‖ ^ 2 = (B.normSq p.T.base H).toReal :=
    integral_eq_lintegral_of_nonneg_ae (Filter.Eventually.of_forall fun q => mul_nonneg (hw0 q) (sq_nonneg _))
      hmeas
  have hbeta' : B.beta p.T.base H H = ((∫ q, w q * ‖J q‖ ^ 2 : ℝ) : ℂ) := by
    rw [← integral_complex_ofReal]
    unfold B.beta betaBig
    congr 1
    funext q
    rw [inner_self_eq_norm_sq_to_K]
    push_cast
    rfl
  rw [hbeta', hint, Complex.norm_real, Real.norm_eq_abs] at hbeta
  rw [← ENNReal.ofReal_toReal hfin]
  apply ENNReal.ofReal_le_ofReal
  calc (B.normSq p.T.base H).toReal ≤ |(B.normSq p.T.base H).toReal| := le_abs_self _
    _ ≤ C * b * b := hbeta
    _ ≤ max C 0 * b * b := by
      rw [mul_assoc, mul_assoc]
      exact mul_le_mul_of_nonneg_right (le_max_left _ _) (mul_self_nonneg b)

end place



theorem dominated_L2_truncation_bound_holds : DominatedL2TruncationBound := by
  intro Cb C₁
  refine ⟨max C₁ 0 + 21, ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p f A₀ p₀ χ N hH Th hTh
  obtain ⟨-, -, hfck, hf, hA, hN⟩ := hH
  obtain ⟨-, -, hgc, hord⟩ := hTh
  have hk : 2 ≤ P.k := p.hl.2.2
  have hr0 : (0 : ℝ) ≤ P.r := Nat.cast_nonneg _
  have hk2 : (2 : ℝ) ≤ P.k := by exact_mod_cast hk
  have hnD : CutMP.nDim P.k P.r = 2 * (P.r : ℝ) + P.k + 1 := by unfold CutMP.nDim; push_cast; ring
  rw [hnD] at hgc hord
  have hx1 : 1 ≤ 2 * (P.r : ℝ) + P.k + 1 := by linarith
  have hR1 : 1 ≤ (P.r : ℝ) + 1 := by linarith
  have hN0 : (0 : ℝ) ≤ N := Nat.cast_nonneg _
  have hC₁ : 0 ≤ C₁ := by
    by_contra h
    push Not at h
    have hp : 0 < (2 * (P.r : ℝ) + P.k + 1) * ((N : ℝ) + 1) := by positivity
    have h1 : C₁ * (2 * (P.r : ℝ) + P.k + 1) * ((N : ℝ) + 1) < 0 := by
      have := mul_neg_of_neg_of_pos h hp
      linarith [this, show C₁ * (2 * (P.r : ℝ) + P.k + 1) * ((N : ℝ) + 1) =
        C₁ * ((2 * (P.r : ℝ) + P.k + 1) * ((N : ℝ) + 1)) by ring]
    linarith
  have hd0 : 0 ≤ C₁ * ((P.r : ℝ) + 1) * (2 * (P.r : ℝ) + P.k + 1) * ((N : ℝ) + 1) := by positivity
  obtain ⟨-, hcc1⟩ := Formalism.FourierDecayAlt.P.CutMP.class_lower_decay_holds P.k P.r Wp Wq Th _ A₀ hd0 hgc f hfck hf
  have hcc2 := inCC_Gpow_smul p.T.base.z p.T.base.z' p₀ hcc1
  obtain ⟨bf, hbf⟩ := hf (5 + B.opOrder Th)
  have hbf0 : 0 ≤ bf := JCx2.pd_ccle_nonneg hbf
  obtain ⟨Kp, hKp0, hKp⟩ := JCx2.pd_cut_ccle (k := P.k) (r := P.r) (E := Wq →L[ℂ] Wp) (5 + B.opOrder Th)
  obtain ⟨KT, hKT0, hKT⟩ := jdCCLowerQ Th _ (A₀ - 1) hd0 hgc 5
  set d : ℝ := C₁ * ((P.r : ℝ) + 1) * (2 * (P.r : ℝ) + P.k + 1) * ((N : ℝ) + 1) with hd
  set q₀ : ℝ := (((2 * P.r + 2) * p₀ : ℕ) : ℝ) with hq₀
  set x : ℝ := 2 * (P.r : ℝ) + P.k + 1 with hx
  set R : ℝ := (P.r : ℝ) + 1 with hR
  have hS : 0 ≤ R ^ 4 * (N * x ^ 2 + x ^ 3) := by positivity
  have hbig : (C₁ + 21) * (R ^ 4 * (N * x ^ 2 + x ^ 3)) ≤ A₀ - q₀ := by
    have hA' : (max C₁ 0 + 21) * (R ^ 4 * (N * x ^ 2 + x ^ 3)) ≤ A₀ - q₀ := by
      rw [← mul_assoc]; exact hA
    exact le_trans (mul_le_mul_of_nonneg_right (by linarith [le_max_left C₁ 0]) hS) hA'
  have hdle := nf_arith_d C₁ R x N hC₁ hR1 hx1 hN0
  have hlow0 := nf_arith_low R x N hR1 hx1 hN0
  have hx3 : 1 ≤ x ^ 3 := one_le_pow₀ hx1
  have hRx : 1 ≤ R * x ^ 3 := by nlinarith
  set A₃ : ℝ := A₀ - q₀ - d - 1 with hA₃
  have hlow : 20 * (R * x ^ 3) ≤ A₃ := by
    have e : (C₁ + 21) * (R ^ 4 * (N * x ^ 2 + x ^ 3)) =
        C₁ * (R ^ 4 * (N * x ^ 2 + x ^ 3)) + 21 * (R ^ 4 * (N * x ^ 2 + x ^ 3)) := by ring
    have hdd : d = C₁ * R * x * (N + 1) := rfl
    linarith
  have hab := nf_arith_ab (P.r : ℝ) (P.k : ℝ) hr0 hk2
  have hthr := nf_arith_thr R x hR1 hx1
  have hAB_le : ∀ A : ℝ, A₃ ≤ A → B.AB P.k P.r ≤ A := by
    intro A hA2
    unfold B.AB
    linarith
  have hThr : ∀ A : ℝ, A₃ ≤ A → JF.TransportedAlt P.k P.r A 0 := by
    intro A hA2
    unfold JF.TransportedAlt
    rw [lt_div_iff₀ (by positivity)]
    have e : (((2 * P.r + P.k + 1 : ℕ) : ℝ)) = x := by simp only [hx]; push_cast; ring
    rw [e]
    simp only [Nat.cast_zero, mul_zero, sub_zero]
    linarith
  have hA3le : A₃ ≤ A₀ - 1 - d := by linarith
  have hA3X : A₃ ≤ A₀ - d := by linarith
  have hA3X' : A₃ ≤ A₀ - d - q₀ := by linarith

  set ψ : ℕ → B.Mat P.k P.r → (Wq →L[ℂ] Wp) := fun m g => JCx2.pdPsi ((m : ℝ) + 1) g • f g with hψ
  have hψc : ∀ m : ℕ, B.CCle (A₀ - 1) (5 + B.opOrder Th) (ψ m) (Kp * bf / ((m : ℝ) + 1)) := fun m =>
    hKp _ (by positivity) A₀ f bf hbf
  have hψs : ∀ m : ℕ, B.CkOn ⊤ (B.GV P.k P.r) (ψ m) := fun m => JCx2.pd_smooth_smul (JCx2.pd_psi_cd _) hfck
  have hYc : ∀ m : ℕ, B.CCle (A₀ - 1 - d) 5 (B.opApply Th (ψ m)) (KT * (Kp * bf / ((m : ℝ) + 1))) := fun m =>
    hKT (ψ m) _ (hψs m) (hψc m)
  obtain ⟨KG, hKG0, hKG⟩ := (pd_good_Gpow (Wp := Wp) (Wq := Wq) p.T.base.z p.T.base.z' p₀).2 A₃ 5
  have e3 : A₃ + q₀ = A₀ - 1 - d := by rw [hA₃]; ring
  have hY'c : ∀ m : ℕ, B.CCle A₃ 5 (fun g => ((Gf P.k P.r p.T.base.z p.T.base.z' g ^ p₀ : ℝ) : ℂ) •
      B.opApply Th (ψ m) g) (KG * (KT * (Kp * bf / ((m : ℝ) + 1)))) := by
    intro m
    have h1 := hYc m
    rw [← e3] at h1
    exact hKG _ _ h1
  obtain ⟨C3, hC30, hC3⟩ := ew_lint_le p (hAB_le A₃ le_rfl) (hThr A₃ le_rfl)

  have aeE : ∀ (H : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (A : ℝ), A₃ ≤ A → (∀ j : ℕ, j ≤ 5 → B.InCC A j H) →
      AEMeasurable (fun c : Fin (P.r + 1) → ℂ =>
        ENNReal.ofReal (TBB.Ew p (fun _ => 1) H (P.r + 1) [] (TBB.bigPt P.r c))) :=
    fun H A hA hH => (ew_integrable p (hAB_le A hA) (hThr A hA) hH).aestronglyMeasurable.aemeasurable.ennreal_ofReal
  have intX := ew_integrable p (hAB_le _ hA3X) (hThr _ hA3X) (fun j _ => hcc1 j)
  have intX' := ew_integrable p (hAB_le _ hA3X') (hThr _ hA3X') (fun j _ => hcc2 j)
  have aeX := intX.aestronglyMeasurable.aemeasurable.ennreal_ofReal
  have aeX' := intX'.aestronglyMeasurable.aemeasurable.ennreal_ofReal
  have aeY : ∀ m : ℕ, AEMeasurable (fun c : Fin (P.r + 1) → ℂ =>
      ENNReal.ofReal (TBB.Ew p (fun _ => 1) (B.opApply Th (ψ m)) (P.r + 1) [] (TBB.bigPt P.r c))) := fun m =>
    aeE _ A₃ le_rfl fun j hj => ⟨_, Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_A hA3le (Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_m hj (hYc m))⟩
  have aeY' : ∀ m : ℕ, AEMeasurable (fun c : Fin (P.r + 1) → ℂ =>
      ENNReal.ofReal (TBB.Ew p (fun _ => 1) (fun g => ((Gf P.k P.r p.T.base.z p.T.base.z' g ^ p₀ : ℝ) : ℂ) •
        B.opApply Th (ψ m) g) (P.r + 1) [] (TBB.bigPt P.r c))) := fun m =>
    aeE _ A₃ le_rfl fun j hj => ⟨_, Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_m hj (hY'c m)⟩
  set T : ℕ → (Fin (P.r + 1) → ℂ) → ℝ≥0∞ := fun m c =>
    ENNReal.ofReal (TBB.Ew p (fun _ => 1) (B.opApply Th (ψ m)) (P.r + 1) [] (TBB.bigPt P.r c)) +
      ENNReal.ofReal (TBB.Ew p (fun _ => 1) (fun g => ((Gf P.k P.r p.T.base.z p.T.base.z' g ^ p₀ : ℝ) : ℂ) •
        B.opApply Th (ψ m) g) (P.r + 1) [] (TBB.bigPt P.r c)) with hTdef
  have aeT : ∀ m, AEMeasurable (T m) := fun m => (aeY m).add (aeY' m)

  set a : ℝ := KT * (Kp * bf) with ha
  set M : ℝ := C3 * a ^ 2 + C3 * KG ^ 2 * a ^ 2 with hM
  have hM0 : 0 ≤ M := by positivity
  have hT_le : ∀ m : ℕ, ∫⁻ c, T m c ≤ ENNReal.ofReal (M * (1 / ((m : ℝ) + 1) ^ 2)) := by
    intro m
    have i1 := hC3 (B.opApply Th (ψ m)) _ ⟨_, Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_A hA3le (hYc m)⟩
      (Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_A hA3le (Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_m (by norm_num) (hYc m)))
    have i2 := hC3 _ _ ⟨_, hY'c m⟩ (Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_m (by norm_num) (hY'c m))
    rw [hTdef]
    simp only
    rw [lintegral_add_right' _ (aeY' m)]
    refine le_trans (add_le_add i1 i2) ?_
    rw [← ENNReal.ofReal_add (by positivity) (by positivity)]
    apply le_of_eq
    congr 1
    rw [hM, ha]
    field_simp
  have hs : Summable (fun m : ℕ => 1 / ((m : ℝ) + 1) ^ 2) := by
    have := (summable_nat_add_iff 1).mpr (Real.summable_one_div_nat_pow.mpr one_lt_two)
    simpa using this
  set Hn : (Fin (P.r + 1) → ℂ) → ℝ≥0∞ := fun c =>
    ENNReal.ofReal (TBB.Ew p (fun _ => 1) (B.opApply Th f) (P.r + 1) [] (TBB.bigPt P.r c)) +
      ENNReal.ofReal (TBB.Ew p (fun _ => 1) (fun g => ((Gf P.k P.r p.T.base.z p.T.base.z' g ^ p₀ : ℝ) : ℂ) •
        B.opApply Th f g) (P.r + 1) [] (TBB.bigPt P.r c)) + ∑' m, T m c with hHn
  have aeHn : AEMeasurable Hn := (aeX.add aeX').add (AEMeasurable.tsum aeT)
  have hfin : ∫⁻ c, Hn c ≠ ∞ := by
    rw [hHn]
    simp only
    rw [lintegral_add_right' _ (AEMeasurable.tsum aeT), lintegral_tsum aeT, lintegral_add_right' _ aeX']
    refine ENNReal.add_ne_top.2 ⟨ENNReal.add_ne_top.2 ⟨intX.lintegral_lt_top.ne, intX'.lintegral_lt_top.ne⟩, ?_⟩
    refine ne_top_of_le_ne_top ?_ (ENNReal.tsum_le_tsum hT_le)
    rw [← ENNReal.ofReal_tsum_of_nonneg (fun m => mul_nonneg hM0 (by positivity)) (hs.mul_left M)]
    exact ENNReal.ofReal_ne_top
  refine ⟨fun c => 2 * (Hn c).toReal, (integrable_toReal_of_lintegral_ne_top aeHn hfin).const_mul 2, fun n => ?_⟩
  filter_upwards [ae_lt_top' aeHn hfin] with c hc
  have hfn : ∀ g ∈ B.GV P.k P.r, B.opApply Th (fun g => cutN P.k P.r n g • f g) g =
      B.opApply Th f g - B.opApply Th (ψ n) g := by
    intro g hg
    have e : (fun g => cutN P.k P.r n g • f g) = fun g => f g - ψ n g := by
      funext g'
      rw [PBE.cut_eq (fun n g => cutN P.k P.r n g) (fun n g => rfl) n g']
      simp only [hψ, sub_smul, one_smul]
    rw [e]
    exact PBE.opApply_sub Th hfck (hψs n) g hg
  rw [ew_congr_GV p hfn c]
  have hX0 : B.InCC A₃ 0 (B.opApply Th f) := Formalism.FourierDecayAlt.P.BetaSesquilinearity.sInCC_mono hA3X le_rfl (hcc1 0)
  have hY0 : B.InCC A₃ 0 (B.opApply Th (ψ n)) :=
    ⟨_, Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_A hA3le (Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_m (Nat.zero_le 5) (hYc n))⟩
  have hXY := ew_sub_le p (hThr A₃ le_rfl) hX0 hY0 c
  have gX := ew_Gpow_le p (B.opApply Th f) p₀ N c
  have gY := ew_Gpow_le p (B.opApply Th (ψ n)) p₀ N c
  have n1 := TBBx4.ew_nonneg p (B.opApply Th f) (TBB.bigPt P.r c)
  have n2 := TBBx4.ew_nonneg p (fun g => ((Gf P.k P.r p.T.base.z p.T.base.z' g ^ p₀ : ℝ) : ℂ) • B.opApply Th f g)
    (TBB.bigPt P.r c)
  have n3 := TBBx4.ew_nonneg p (B.opApply Th (ψ n)) (TBB.bigPt P.r c)
  have n4 := TBBx4.ew_nonneg p (fun g => ((Gf P.k P.r p.T.base.z p.T.base.z' g ^ p₀ : ℝ) : ℂ) •
    B.opApply Th (ψ n) g) (TBB.bigPt P.r c)
  have hGn : 0 ≤ ‖TBB.Gp p (TBB.bigPt P.r c)‖ ^ (2 * p₀ - N) := by positivity
  have hle : ENNReal.ofReal (TBB.Ew p (fun _ => 1) (B.opApply Th f) (P.r + 1) [] (TBB.bigPt P.r c) +
      TBB.Ew p (fun _ => 1) (fun g => ((Gf P.k P.r p.T.base.z p.T.base.z' g ^ p₀ : ℝ) : ℂ) • B.opApply Th f g)
        (P.r + 1) [] (TBB.bigPt P.r c) +
      (TBB.Ew p (fun _ => 1) (B.opApply Th (ψ n)) (P.r + 1) [] (TBB.bigPt P.r c) +
        TBB.Ew p (fun _ => 1) (fun g => ((Gf P.k P.r p.T.base.z p.T.base.z' g ^ p₀ : ℝ) : ℂ) •
          B.opApply Th (ψ n) g) (P.r + 1) [] (TBB.bigPt P.r c))) ≤ Hn c := by
    rw [ENNReal.ofReal_add (add_nonneg n1 n2) (add_nonneg n3 n4), ENNReal.ofReal_add n1 n2,
      ENNReal.ofReal_add n3 n4, hHn]
    exact add_le_add le_rfl (ENNReal.le_tsum (f := fun m => T m c) n)
  have hle' := ENNReal.toReal_mono hc.ne hle
  rw [ENNReal.toReal_ofReal (add_nonneg (add_nonneg n1 n2) (add_nonneg n3 n4))] at hle'
  calc ‖TBB.Gp p (TBB.bigPt P.r c)‖ ^ (2 * p₀ - N) *
        TBB.Ew p (fun _ => 1) (fun g => B.opApply Th f g - B.opApply Th (ψ n) g) (P.r + 1) [] (TBB.bigPt P.r c)
      ≤ ‖TBB.Gp p (TBB.bigPt P.r c)‖ ^ (2 * p₀ - N) *
        (2 * TBB.Ew p (fun _ => 1) (B.opApply Th f) (P.r + 1) [] (TBB.bigPt P.r c) +
          2 * TBB.Ew p (fun _ => 1) (B.opApply Th (ψ n)) (P.r + 1) [] (TBB.bigPt P.r c)) :=
        mul_le_mul_of_nonneg_left hXY hGn
    _ = 2 * (‖TBB.Gp p (TBB.bigPt P.r c)‖ ^ (2 * p₀ - N) *
          TBB.Ew p (fun _ => 1) (B.opApply Th f) (P.r + 1) [] (TBB.bigPt P.r c)) +
        2 * (‖TBB.Gp p (TBB.bigPt P.r c)‖ ^ (2 * p₀ - N) *
          TBB.Ew p (fun _ => 1) (B.opApply Th (ψ n)) (P.r + 1) [] (TBB.bigPt P.r c)) := by ring
    _ ≤ 2 * (Hn c).toReal := by linarith

end

end Formalism.FourierDecayAlt.P.CutBP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.DominatedL2TruncationBoundHolds =====
