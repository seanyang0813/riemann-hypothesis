module

public import Formalism.SharpRestriction.AdmissibleParameterJoins.DIVfromGLm
public import Formalism.SharpRestriction.Divisibility.SlopeExcess.ConstRankBaseLePolyFourth
public import Formalism.SharpRestriction.Divisibility.LocalQuadraticParts
public import Formalism.SharpRestriction.GlobalSchurBounds.FlipTwoThree
public import Formalism.LocalToGlobal.GlobalTheory.GL4.LowerSlopeInequalityFamily
public import Formalism.LocalToGlobal.GlobalTheory.GL4.PStmtFree
public import Formalism.SharpRestriction.Divisibility.SlopeExcess.HeightBoundOfComponentBounds
import Formalism.SharpRestriction.SmoothDesignExistence.DGamSmooth

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.Divisibility.SlopeExcess.UniformSizeBoundOfOpenFamily, Formalism.LocalToGlobal.Divisibility.DivisibilityRemainder.ValueBounds.SlopeMaxB

-- ===== clump member: Formalism.SharpRestriction.Divisibility.SlopeExcess.UniformSizeBoundOfOpenFamily =====
-- clump-header: {"m": "Formalism.SharpRestriction.Divisibility.SlopeExcess.UniformSizeBoundOfOpenFamily", "h": "module\n\npublic import Formalism.SharpRestriction.AdmissibleParameterJoins.DIVfromGLm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.DIV.Proofs

open Formalism.BasicNotions Formalism.MainNotions

theorem top2c2_dlSize (eps : ℝ) (Fm : FamP eps) : J.DlSize Fm := by
  unfold J.DlSize
  refine ⟨Fm.x1 + 1, fun x hx i => ?_⟩
  have hx1 : Fm.x1 < x := by linarith
  obtain ⟨-, -, -, -, -, -, hQD, -⟩ := Fm.sizes x hx1 i
  obtain ⟨-, -, -, -, -, h, -⟩ := hQD
  exact h

end Formalism.MainNotions.DIV.Proofs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.Divisibility.SlopeExcess.UniformSizeBoundOfOpenFamily =====

-- ===== clump member: Formalism.LocalToGlobal.Divisibility.DivisibilityRemainder.ValueBounds.SlopeMaxB =====
-- clump-header: {"m": "Formalism.LocalToGlobal.Divisibility.DivisibilityRemainder.ValueBounds.SlopeMaxB", "h": "module\n\npublic import Formalism.SharpRestriction.Divisibility.SlopeExcess.ConstRankBaseLePolyFourth\npublic import Formalism.SharpRestriction.Divisibility.LocalQuadraticParts\npublic import Formalism.SharpRestriction.GlobalSchurBounds.FlipTwoThree\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.LowerSlopeInequalityFamily\npublic import Formalism.LocalToGlobal.GlobalTheory.GL4.PStmtFree\npublic import Formalism.SharpRestriction.Divisibility.SlopeExcess.HeightBoundOfComponentBounds\npublic import Formalism.SharpRestriction.Divisibility.SlopeExcess.UniformSizeBoundOfOpenFamily\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.AdmissibleParameterJoins.DIVfromGLm\nimport Formalism.SharpRestriction.SmoothDesignExistence.DGamSmooth\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.DIV.SlopeMaxB

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Pk Formalism.MainNotions.DIV.Proofs Formalism.MainNotions.DIV.Proofs.HHParts

theorem muMax_le_pol {D : D7} (L : SizeData₂ D) (hS : SizesAt L) (C CTu : ℝ)
    (hTu : ∀ u, Real.log ((D.mem u).A.T : ℝ) ≤ CTu * D.R.m * L.sc.L) (h : LocalQuadraticParts.FrobeniusExpansionCongruence L C) (u : D.what₂.Word) :
    ((D.fm u).lat 0).muMax ≤ |C| * (12 + 2 * |CTu|) * szPol L ^ 4 * L.sc.b := by
  obtain ⟨hN, -, hK, -, -, -, hQD, hTT, -, -, -, -, -, -, -, -, hDel, -, -, -, -, -, -⟩ := hS
  have hP := one_le_szPol L
  have hb := one_le_b L
  have hP0 : 0 ≤ szPol L := by linarith
  have hb0 : 0 ≤ L.sc.b := by linarith
  have hk1 := k_one hK
  have hr1 : 1 ≤ D.host.rdE := hQD.2.2.2.2.2.2.1
  obtain ⟨-, hr2⟩ := log_rdE_bounds hN hQD
  have hkP := k_le L
  have hfP := f_le L
  have hmP := m_le L
  have hLP := L_le L
  have hL0 := (sc_L_pos L).le
  have hf0 : (0 : ℝ) ≤ D.R.f := Nat.cast_nonneg _
  have hk0 : (0 : ℝ) ≤ D.R.k := Nat.cast_nonneg _
  have hm0 : (0 : ℝ) ≤ D.R.m := Nat.cast_nonneg _
  have hT0 : (0 : ℝ) ≤ LocalQuadraticParts.nTT D := Nat.cast_nonneg _
  have hTP : LocalQuadraticParts.nTT D ≤ szPol L := TT_le hTT
  have ha0 := a_nonneg L
  have haP := a_le L hK
  have hb'0 := b'_nonneg L
  have hb'P : L.sc.b' ≤ szPol L * L.sc.b := (b'_le_a L).trans haP
  have hSc0 := L.Sc_pos.le
  have hScP := Sc_le' hN hK hDel

  have hlkv : Real.log ((D.R.k : ℝ) * D.host.v) ≤ 3 * szPol L := by
    have hv : D.host.v = D.host.rdE / 2 := rfl
    have hle : (D.R.k : ℝ) * D.host.v ≤ (D.R.k : ℝ) * D.host.rdE := by
      rw [hv]; exact mul_le_mul_of_nonneg_left (by linarith) hk0
    have hpos : 0 < (D.R.k : ℝ) * D.host.v := by rw [hv]; positivity
    have e1 := Real.log_le_log hpos hle
    have e0 : Real.log ((D.R.k : ℝ) * D.host.rdE) = Real.log (D.R.k : ℝ) + Real.log D.host.rdE :=
      Real.log_mul (by linarith) (by linarith)
    rw [e0] at e1
    have e2 : Real.log (D.R.k : ℝ) ≤ D.R.k := by
      have := Real.log_le_sub_one_of_pos (show (0 : ℝ) < D.R.k by linarith); linarith
    linarith
  set lkv := Real.log ((D.R.k : ℝ) * D.host.v) with hlkvd
  set lT := Real.log ((D.mem u).A.T : ℝ) with hlTd
  have hlT0 : 0 ≤ lT := Real.log_natCast_nonneg _
  have hlTP : lT ≤ |CTu| * (szPol L * szPol L) := by
    refine (hTu u).trans ?_
    have e1 : CTu * D.R.m * L.sc.L ≤ |CTu| * D.R.m * L.sc.L :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right (le_abs_self _) hm0) hL0
    have e2 : (D.R.m : ℝ) * L.sc.L ≤ szPol L * szPol L := mul_le_mul hmP hLP hL0 hP0
    have e3 := mul_le_mul_of_nonneg_left e2 (abs_nonneg CTu)
    calc CTu * D.R.m * L.sc.L ≤ |CTu| * D.R.m * L.sc.L := e1
      _ = |CTu| * ((D.R.m : ℝ) * L.sc.L) := by ring
      _ ≤ _ := e3
  have hc0 := abs_nonneg CTu
  have hlkv0 : 0 ≤ lkv := by
    apply Real.log_nonneg
    have hk5 : 5 ≤ D.R.k := by have := D.R.m_add_three_le_k; have := D.R.two_le_m; omega
    have hkR : (5 : ℝ) ≤ D.R.k := by exact_mod_cast hk5
    have hv : D.host.v = D.host.rdE / 2 := rfl
    rw [hv]; nlinarith

  have q1 : LocalQuadraticParts.nTT D * L.sc.a * lkv ≤ szPol L * (szPol L * L.sc.b) * (3 * szPol L) :=
    mul_le_mul (mul_le_mul hTP haP ha0 hP0) hlkv hlkv0 (by positivity)
  have q2a : (D.R.k : ℝ) * lkv + lT ≤ szPol L * (3 * szPol L) + |CTu| * (szPol L * szPol L) :=
    add_le_add (mul_le_mul hkP hlkv hlkv0 hP0) hlTP
  have q2b : L.sc.b' + L.Sc ≤ 2 * (szPol L * L.sc.b) := by linarith
  have q2 : (D.R.f : ℝ) * (L.sc.b' + L.Sc) * ((D.R.k : ℝ) * lkv + lT) ≤
      szPol L * (2 * (szPol L * L.sc.b)) * (szPol L * (3 * szPol L) + |CTu| * (szPol L * szPol L)) :=
    mul_le_mul (mul_le_mul hfP q2b (by linarith) hP0) q2a (by positivity) (by positivity)
  have q3 : (D.R.f : ℝ) * (D.R.k : ℝ) ^ 2 * L.sc.L ≤ szPol L * szPol L ^ 2 * szPol L :=
    mul_le_mul (mul_le_mul hfP (pow_le_pow_left₀ hk0 hkP 2) (by positivity) hP0) hLP hL0 (by positivity)
  have q10 : 0 ≤ LocalQuadraticParts.nTT D * L.sc.a * lkv := by positivity
  have q20 : 0 ≤ (D.R.f : ℝ) * (L.sc.b' + L.Sc) * ((D.R.k : ℝ) * lkv + lT) := by positivity
  have q30 : 0 ≤ (D.R.f : ℝ) * (D.R.k : ℝ) ^ 2 * L.sc.L := by positivity
  have hsum : LocalQuadraticParts.nTT D * L.sc.a * lkv + (D.R.f : ℝ) * (L.sc.b' + L.Sc) * ((D.R.k : ℝ) * lkv + lT) +
      (D.R.f : ℝ) * (D.R.k : ℝ) ^ 2 * L.sc.L ≤ (12 + 2 * |CTu|) * szPol L ^ 4 * L.sc.b := by
    have p34 : szPol L ^ 3 * L.sc.b ≤ szPol L ^ 4 * L.sc.b :=
      mul_le_mul_of_nonneg_right (pow_mono_P (L := L) (by norm_num)) hb0
    have p4 : szPol L ^ 4 ≤ szPol L ^ 4 * L.sc.b := le_mul_of_one_le_right (by positivity) hb
    have r1 : szPol L * (szPol L * L.sc.b) * (3 * szPol L) = 3 * (szPol L ^ 3 * L.sc.b) := by ring
    have r2 : szPol L * (2 * (szPol L * L.sc.b)) * (szPol L * (3 * szPol L) + |CTu| * (szPol L * szPol L)) =
        (6 + 2 * |CTu|) * (szPol L ^ 4 * L.sc.b) := by ring
    have r3 : szPol L * szPol L ^ 2 * szPol L = szPol L ^ 4 := by ring
    rw [r1] at q1; rw [r2] at q2; rw [r3] at q3
    have : (12 + 2 * |CTu|) * szPol L ^ 4 * L.sc.b =
        3 * (szPol L ^ 4 * L.sc.b) + (6 + 2 * |CTu|) * (szPol L ^ 4 * L.sc.b) + 3 * (szPol L ^ 4 * L.sc.b) := by ring
    have p40 : 0 ≤ szPol L ^ 4 * L.sc.b := by positivity
    linarith
  have h2 := (h u).2
  have e : C * LocalQuadraticParts.nTT D * L.sc.a * lkv + C * D.R.f * (L.sc.b' + L.Sc) * (D.R.k * lkv + lT) +
      C * D.R.f * (D.R.k : ℝ) ^ 2 * L.sc.L =
      C * (LocalQuadraticParts.nTT D * L.sc.a * lkv + (D.R.f : ℝ) * (L.sc.b' + L.Sc) * ((D.R.k : ℝ) * lkv + lT) +
      (D.R.f : ℝ) * (D.R.k : ℝ) ^ 2 * L.sc.L) := by ring
  rw [e] at h2
  refine h2.trans ?_
  calc C * (LocalQuadraticParts.nTT D * L.sc.a * lkv + (D.R.f : ℝ) * (L.sc.b' + L.Sc) * ((D.R.k : ℝ) * lkv + lT) +
        (D.R.f : ℝ) * (D.R.k : ℝ) ^ 2 * L.sc.L)
      ≤ |C| * (LocalQuadraticParts.nTT D * L.sc.a * lkv + (D.R.f : ℝ) * (L.sc.b' + L.Sc) * ((D.R.k : ℝ) * lkv + lT) +
        (D.R.f : ℝ) * (D.R.k : ℝ) ^ 2 * L.sc.L) := mul_le_mul_of_nonneg_right (le_abs_self _) (by linarith)
    _ ≤ |C| * ((12 + 2 * |CTu|) * szPol L ^ 4 * L.sc.b) := mul_le_mul_of_nonneg_left hsum (abs_nonneg _)
    _ = |C| * (12 + 2 * |CTu|) * szPol L ^ 4 * L.sc.b := by ring

def EbMu (l : List ℝ) : ℝ := 4 * (max (l.headD 0) 5 + 3) + 1

def BoundB {eps : ℝ} (Fm : FamP eps) (Eb : List ℝ → ℝ) : Prop :=
  ∃ x0 : ℝ, ∀ x ≥ x0, Fm.x1 < x → ∀ (i : Fm.Ix x) u,
    (((Fm.D x i).fm u).lat 0).muMax ≤ (Fm.L x i).sc.x ^ Eb Fm.cOut * (Fm.L x i).sc.b

theorem boundB_of_slopes {eps : ℝ} (Fm : FamP eps) (hT : TuSize Fm) (h : LocalQuadraticParts.SlopesFamily Fm) : BoundB Fm EbMu := by
  obtain ⟨C, xa, h⟩ := h
  obtain ⟨xt, hT⟩ := hT
  refine ⟨max (max xa xt) (max 9 (|C| * (12 + 2 * |Fm.CTu|))), fun x hx hx1 i u => ?_⟩
  have ga : xa ≤ x := le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) hx
  have gt : xt ≤ x := le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) hx
  have g9 : max 9 (|C| * (12 + 2 * |Fm.CTu|)) ≤ x := le_trans (le_max_right _ _) hx
  have hsc : (Fm.L x i).sc.x = x := Fm.L_x x i hx1
  have hCt : (Fm.L x i).Ct = Fm.Ct := Fm.Ct_eq x i
  have h1 := muMax_le_pol (Fm.L x i) (Fm.sizes x hx1 i) C Fm.CTu (hT x gt i).2 (h x ga i) u
  have h2 := bPol_le (Fm.sizes x hx1 i) (|C| * (12 + 2 * |Fm.CTu|)) 4 (by rw [hsc]; exact g9)
  have hE : EbMu Fm.cOut = ((4 : ℕ) : ℝ) * (max (Fm.L x i).Ct 5 + 3) + 1 := by
    unfold EbMu; rw [cOut_headD, hCt]; norm_num
  rw [hE]
  exact h1.trans h2

theorem slopes_of_values {eps : ℝ} (Fm : FamP eps) (hT : TuSize Fm)
    (hCV : ∃ x0 : ℝ, ∀ x ≥ x0, ∀ (i : Fm.Ix x) u, Nonempty (flipTwoThree.ColVal (Fm.D x i) u)) : LocalQuadraticParts.SlopesFamily Fm :=
  J.slopes_family_of_column_values Fm hT (top2c2_dlSize eps Fm) (flipTwoThree.familySlopeLower_of_open Fm (Formalism.L2.GlobalTheoryTheory.TraceIntegrality.lower_slope_inequality_family Fm))
    (flipTwoThree.familySlopeMax_of_open Fm 4 (Formalism.L2.GlobalTheoryTheory.TraceIntegrality.slope_inequality_family_four Fm)) hCV

theorem boundB_of_values {eps : ℝ} (Fm : FamP eps) (hT : TuSize Fm)
    (hCV : ∃ x0 : ℝ, ∀ x ≥ x0, ∀ (i : Fm.Ix x) u, Nonempty (flipTwoThree.ColVal (Fm.D x i) u)) : BoundB Fm EbMu :=
  boundB_of_slopes Fm hT (slopes_of_values Fm hT hCV)

end Formalism.L2.DIV.SlopeMaxB

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.Divisibility.DivisibilityRemainder.ValueBounds.SlopeMaxB =====
