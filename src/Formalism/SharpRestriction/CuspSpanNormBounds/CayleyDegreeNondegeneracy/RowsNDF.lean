module

public import Formalism.SharpRestriction.CuspSpanNormBounds.BruhatCellsKronecker.FamilyPacketOfEquivalentStatement
public import Formalism.SharpRestriction.CuspSpanNormBounds.CayleyDegreeNondegeneracy.RowsDef
public import Formalism.SharpRestriction.CuspSpanNormBounds.AbsoluteAmplitudeSecondOfSource
public import Formalism.SharpRestriction.CuspSpanNormBounds.CayleyDegreeNondegeneracy.RowsTrm
import Formalism.SharpRestriction.CuspSpanNormBounds.LocalModelPeriodLattices

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.BridgeLemma₂

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.Cnt Formalism.HermitianLatticeCounting Formalism.MainNotions.BridgeLemma

theorem rows_q_bound {m k r c cf a2 : ℝ} (hm : m = 2 * r + 2) (hr : 0 ≤ r) (hk : m + 3 ≤ k) (hc : 0 ≤ c) (hcf : cf ≤ m)
    (ha2 : a2 ≤ k) :
    (r + 1) * (4 * (c * k) + 4 * (c * (k + m) * m + c * cf) + 4 * (c * r ^ 2) + a2 / 2 + 12 * (r + 1) ^ 2) + 1 ≤
      (9 * c + 3) * k * m ^ 2 := by
  subst hm
  have hs0 : 0 ≤ r + 1 := by linarith
  have hs1 : 1 ≤ r + 1 := by linarith
  have hk2 : 2 * (r + 1) ≤ k := by linarith
  have hk5 : 5 ≤ k := by linarith
  have hk0 : 0 ≤ k := by linarith
  have hck : 0 ≤ c * k := mul_nonneg hc hk0
  have P1 : c * cf * (r + 1) ≤ c * (2 * r + 2) * (r + 1) :=
    mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hcf hc) hs0
  have P2 : a2 * (r + 1) ≤ k * (r + 1) := mul_le_mul_of_nonneg_right ha2 hs0
  have P3 : c * r ^ 2 * (r + 1) ≤ c * (r + 1) ^ 2 * (r + 1) := by
    have : r ^ 2 ≤ (r + 1) ^ 2 := by nlinarith
    exact mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left this hc) hs0
  have hss : r + 1 ≤ (r + 1) ^ 2 := by nlinarith
  have Q1 : c * k * (r + 1) ≤ c * k * (r + 1) ^ 2 := mul_le_mul_of_nonneg_left hss hck
  have Q2 : c * (r + 1) ^ 2 * (2 * (r + 1)) ≤ c * (r + 1) ^ 2 * k :=
    mul_le_mul_of_nonneg_left hk2 (by positivity)
  have Q3 : c * (r + 1) ^ 2 * 5 ≤ c * (r + 1) ^ 2 * k :=
    mul_le_mul_of_nonneg_left hk5 (by positivity)
  have Q4 : k * (r + 1) ≤ k * (r + 1) ^ 2 := mul_le_mul_of_nonneg_left hss hk0
  have Q5 : (r + 1) ^ 2 * (2 * (r + 1)) ≤ (r + 1) ^ 2 * k :=
    mul_le_mul_of_nonneg_left hk2 (by positivity)
  have Q6 : (r + 1) ^ 2 * 5 ≤ (r + 1) ^ 2 * k := mul_le_mul_of_nonneg_left hk5 (by positivity)
  have Q7 : 1 ≤ (r + 1) ^ 2 := by nlinarith
  nlinarith [P1, P2, P3, Q1, Q2, Q3, Q4, Q5, Q6, Q7, mul_nonneg hc hs0]

section Mono

variable {D : D7} {large₂ : SizeData₂ D} {X : TermTie D} {u u' : D.what₂.Word} {C1 : ℝ} (Y : LoopTie D large₂ X u u' C1)

theorem rows_one_le_HHZ' (D : D7) (large₂ : SizeData₂ D) (c : ℝ) (Z : GramM D) : 1 ≤ HHZ D large₂.sc.b c Z := by
  have hb : 1 ≤ large₂.sc.b := by
    have h := exp_one_le_b_rpow large₂ (le_refl (1 : ℝ))
    rw [Real.rpow_one] at h
    linarith [Real.add_one_le_exp (1 : ℝ)]
  have hsz : 1 ≤ Cnt.sizeZ D large₂.sc.b c Z := by
    have key : ∀ {ι : Type} (s : Finset ι) (g : ι → ℝ), (∀ i ∈ s, 1 ≤ g i) → 1 ≤ ∏ i ∈ s, g i :=
      fun s g h => by simpa using Finset.prod_le_prod₀ (f := fun _ => (1 : ℝ)) (fun _ _ => zero_le_one) h
    unfold Cnt.sizeZ
    exact key _ _ (fun τ _ => key _ _ (fun l _ => le_max_left _ _))
  unfold Cnt.HHZ
  rw [← Real.rpow_mul (by linarith)]
  refine one_le_mul_of_one_le_of_one_le (Real.one_le_rpow hb ?_) (one_le_pow₀ hsz)
  have hm : (0 : ℝ) ≤ D.R.m := Nat.cast_nonneg _
  have hf : (0 : ℝ) ≤ D.R.f := Nat.cast_nonneg _
  have : c * (D.R.m : ℝ) ^ 2 * D.R.f * (c * D.R.m) = c ^ 2 * (D.R.m : ℝ) ^ 3 * D.R.f := by ring
  rw [this]
  positivity

theorem rows_HHZ_mono (large₂ : SizeData₂ D) (hrd : 0 < D.host.rdE) {c' c : ℝ} (h1 : c' ≤ c) (h2 : 2 ≤ c + c') (Z : GramM D) :
    HHZ D large₂.sc.b c' Z ≤ HHZ D large₂.sc.b c Z := by
  have hb : 1 ≤ large₂.sc.b := by
    have h := exp_one_le_b_rpow large₂ (le_refl (1 : ℝ))
    rw [Real.rpow_one] at h
    linarith [Real.add_one_le_exp (1 : ℝ)]
  refine (rows_HHZ_cmp hrd hb c' c Z).trans ?_
  unfold Cnt.HHZ
  rw [← Real.rpow_mul (by linarith)]
  refine mul_le_mul_of_nonneg_right (Real.rpow_le_rpow_of_exponent_le hb ?_) (by positivity)
  rw [max_eq_left (by linarith)]
  have hm : (D.R.m : ℝ) = 2 * D.R.rS + 2 := by
    exact_mod_cast Formalism.MainNotions.BridgeLemma.d_m_eq (D := D)
  rw [hm]
  have hf : (0 : ℝ) ≤ D.R.f := Nat.cast_nonneg _
  have hr : (0 : ℝ) ≤ D.R.rS := Nat.cast_nonneg _
  have key : 0 ≤ (2 * (D.R.rS : ℝ) + 2) ^ 2 * D.R.f * (c - c') * (2 * (D.R.rS : ℝ) + 2) * (c + c' - 2) := by
    have a1 : 0 ≤ c - c' := by linarith
    have a2 : 0 ≤ c + c' - 2 := by linarith
    positivity
  have e : c * (2 * (D.R.rS : ℝ) + 2) ^ 2 * D.R.f * (c * (2 * (D.R.rS : ℝ) + 2)) -
      (c' ^ 2 * (2 * (D.R.rS : ℝ) + 2) ^ 3 * D.R.f +
        4 * ((c - c') * (2 * (D.R.rS : ℝ) + 2) ^ 2 * D.R.f * ((D.R.rS : ℝ) + 1))) =
      (2 * (D.R.rS : ℝ) + 2) ^ 2 * D.R.f * (c - c') * (2 * (D.R.rS : ℝ) + 2) * (c + c' - 2) := by ring
  linarith

theorem rows_stHH_mono {C' Cl Cg cb Cu cT CT C0 A c' c : ℝ} (h1 : c' ≤ c) (h2 : 2 ≤ c + c')
    (h : UnitaryVolumeMass.stHH D large₂ u u' C' Cl Cg cb Cu cT CT C0 A c') : UnitaryVolumeMass.stHH D large₂ u u' C' Cl Cg cb Cu cT CT C0 A c := by
  intro hH F0 he hz Λ hΛ F' hT hR
  obtain ⟨a1, a2, a3, Z, hZ, hm⟩ := h hH F0 he hz Λ hΛ F' hT hR
  have mono := rows_HHZ_mono large₂ (Formalism.MainNotions.LocalModelPeriodLattices.rdE_pos D) h1 h2 (ZhatL (lf D F0) F')
  exact ⟨a1.trans mono, a2.trans mono, a3.trans mono, Z, hZ,
    fun j I J hd => ⟨(hm j I J hd).1.trans mono, (hm j I J hd).2.trans mono⟩⟩

theorem rows_stVol_mono {C' Cl Cg cb Cu cT CT C0 A c' c : ℝ} (h1 : c' ≤ c) (h2 : 2 ≤ c + c')
    (h : VanishingOnXAndXPlus.TermVolumeSmallCellBound D large₂ X u u' C1 Y C' Cl Cg cb Cu cT CT C0 A c') :
    VanishingOnXAndXPlus.TermVolumeSmallCellBound D large₂ X u u' C1 Y C' Cl Cg cb Cu cT CT C0 A c := by
  unfold VanishingOnXAndXPlus.TermVolumeSmallCellBound UnitaryVolumeMass.stVol at h ⊢
  intro hH t ht hr
  refine (h hH t ht hr).trans ?_
  have mono := rows_HHZ_mono large₂ (Formalism.MainNotions.LocalModelPeriodLattices.rdE_pos D) h1 h2 (ZhatL (X.fl t) (X.fl' t))
  have o1 := rows_one_le_HHZ' D large₂ c' (ZhatL (X.fl t) (X.fl' t))
  have o2 := rows_one_le_HHZ' D large₂ c (ZhatL (X.fl t) (X.fl' t))
  have hr2 : (0 : ℝ) ≤ (D.R.rS : ℝ) ^ 2 := by positivity
  rcases le_total 0 c' with hc' | hc'
  · calc _ ≤ HHZ D large₂.sc.b c (ZhatL (X.fl t) (X.fl' t)) ^ (c' * (D.R.rS : ℝ) ^ 2) :=
          Real.rpow_le_rpow (by linarith) mono (mul_nonneg hc' hr2)
      _ ≤ _ := Real.rpow_le_rpow_of_exponent_le o2 (mul_le_mul_of_nonneg_right h1 hr2)
  · calc _ ≤ 1 := Real.rpow_le_one_of_one_le_of_nonpos o1 (mul_nonpos_of_nonpos_of_nonneg hc' hr2)
      _ ≤ _ := Real.one_le_rpow o2 (mul_nonneg (by linarith) hr2)


include Y in
theorem rows_dim_pos {C' Cl Cg cb Cu cT CT C0 : ℝ} (hH : Cnt.Hyp0 D large₂ C' Cl Cg cb Cu cT CT C0) (hF : UnitaryVolumeMass.FormAt D u) :
    0 < dimPi (hc := D.hcW) u := by
  obtain ⟨-, hD, hC0⟩ := hH
  obtain ⟨-, -, -, -, -, -, -, -, -, hdu, -⟩ := hD
  have hlow := (hdu u).1
  have hG : 0 < (D.mem u).A.GamP ^ (-2 : ℤ) := zpow_pos (lt_trans zero_lt_one (D.mem u).A.one_lt_gammaP) _
  have hpos : 0 < (D.duS u : ℝ) :=
    lt_of_lt_of_le (div_pos (mul_pos hG (d_Dstar_pos (D := D))) (by linarith)) hlow
  have hform := hF Y.F0 Y.flag_e_eq_hyperbolic Y.formsAtZero Y.what₂ Y.isRows
  have hnn : 0 ≤ dimPi (hc := D.hcW) u := by
    unfold dimPi
    exact Finset.prod_nonneg fun τ _ => Nat.cast_nonneg _
  rcases hnn.lt_or_eq with h | h
  · exact h
  · rw [← h, mul_zero] at hform
    rw [← hform] at hpos
    exact absurd hpos (lt_irrefl 0)

end Mono

section Fam

variable {eps : ℝ} (Fm : FamP eps) (C1 : ℝ) (X : ∀ x, Fm.x1 < x → ∀ i : Fm.Ix x, TermTie (Fm.D x i))
  (Y : ∀ x (hx : Fm.x1 < x) (i : Fm.Ix x) (u u' : (Fm.D x i).what₂.Word),
    LoopTie (Fm.D x i) (Fm.L x i) (X x hx i) u u' C1)

def rows_TiesF : Prop :=
  ∀ x (hx : Fm.x1 < x) (i : Fm.Ix x) (u u' : (Fm.D x i).what₂.Word),
    TermPtsTie (X x hx i) (Y x hx i u u') ∧ @LatticeDeterminantFactorization (Fm.D x i) (X x hx i) u u' ∧ wordPairEntriesInLattice (X x hx i) u u'

end Fam

end Formalism.MainNotions.BridgeLemma₂

end
