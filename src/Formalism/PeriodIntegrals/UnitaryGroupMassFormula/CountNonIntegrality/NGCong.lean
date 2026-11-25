module

public import Formalism.SharpRestriction.CuspSpanNormBounds.LocalGroupInFamilyNontrivial
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountNonIntegrality.ValOneOfNotMem
import Mathlib.Algebra.AffineMonoid.Basic
import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.CntLocal

@[expose] public section

noncomputable section

namespace PI.CntNotIntW

open NumberField IsDedekindDomain Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.MainNotions.S.LocalSplitGroups Formalism.L2.SG.CntLocal
open Classical ValuativeRel

theorem flag_gram {E : Type} [Field E] [NumberField E] [StarRing E] {S : Formalism.BasicNotions.HSpace E} {r : ℕ} {T : E}
    (F : FlagG S r T) (a b : Fin (r + 1)) :
    S.hT (F.fvec a) (F.fvec b) = if a = Fin.last r ∧ b = Fin.last r then -T else 0 := by
  induction a using Fin.lastCases with
  | last =>
    induction b using Fin.lastCases with
    | last => simp [FlagG.fvec, F.z_norm]
    | cast j =>
      have h := S.herm.eq (F.e j) F.z
      rw [F.z_orth, map_zero] at h
      simp only [FlagG.fvec, Fin.snoc_last, Fin.snoc_castSucc]
      rw [← h]
      simp [Fin.castSucc_ne_last]
  | cast i =>
    induction b using Fin.lastCases with
    | last => simp [FlagG.fvec, F.z_orth, Fin.castSucc_ne_last]
    | cast j => simp [FlagG.fvec, F.e_iso, Fin.castSucc_ne_last]

theorem frameAct_one {E : Type} [Field E] [NumberField E] [StarRing E] {S : Formalism.BasicNotions.HSpace E} {n : ℕ}
    (f : Fin n → S.V) : frameAct f (1 : Matrix (Fin n) (Fin n) (𝓞 E)) = f := by
  funext b
  unfold frameAct
  rw [Finset.sum_eq_single b]
  · simp
  · intro c _ hc
    simp [Matrix.one_apply_ne hc]
  · simp

theorem star_eq_conjF (D : Formalism.BasicNotions.D7) (x : D.host.E) : star x = D.conjF x := by
  rw [D.conjF_eq]
  have := D.host.isCMField_hostE
  apply D.host.φ₀.injective
  change D.host.φ₀ (NumberField.IsCMField.complexConj D.host.E x) = D.host.φ₀ (D.host.conj x)
  rw [NumberField.IsCMField.complexEmbedding_complexConj]
  exact (D.host.conjE_apply D.host.φ₀ x).symm

theorem one_mem_dd (D : Formalism.BasicNotions.D7) (k : ℕ) :
    (1 : D.host.E) ∈ ((ddS D) ^ (-(k : ℤ)) : FractionalIdeal (nonZeroDivisors (𝓞 D.host.E)) D.host.E) := by
  have h0 : ddS D ≠ 0 := by
    unfold ddS
    rw [FractionalIdeal.coeIdeal_ne_zero]
    exact Ideal.map_ne_bot_of_ne_bot (differentIdeal_ne_bot)
  have hle : ddS D ≤ 1 := by
    unfold ddS
    exact FractionalIdeal.coeIdeal_le_one
  have hk0 : ddS D ^ k ≠ 0 := pow_ne_zero _ h0
  have hk1 : ddS D ^ k ≤ 1 := pow_le_one' hle k
  rw [zpow_neg, zpow_natCast]
  have h1 := FractionalIdeal.inv_anti_mono hk0 hk1
  rw [inv_one] at h1
  exact h1 (FractionalIdeal.one_mem_one _)

theorem pair_int (D : Formalism.BasicNotions.D7) (Λ : Submodule (𝓞 D.host.E) (VS D).V) (hU : Formalism.HermitianLatticesTheory.dual (VS D).hT Λ = Λ)
    {x y : (VS D).V} (hx : x ∈ Λ) (hy : y ∈ Λ) : ∃ o : 𝓞 D.host.E, (o : D.host.E) = (VS D).hT x y := by
  have hd : y ∈ Formalism.HermitianLatticesTheory.dual (VS D).hT Λ := by rw [hU]; exact hy
  unfold Formalism.HermitianLatticesTheory.dual Formalism.E.hdual at hd
  rw [Submodule.mem_iInf] at hd
  have hd2 := hd x
  rw [Submodule.mem_iInf] at hd2
  have hint := hd2 hx
  rw [Submodule.mem_comap] at hint
  obtain ⟨o, ho⟩ := Submodule.mem_one.1 hint
  simp only [LinearMap.coe_restrictScalars] at ho
  exact ⟨o, ho⟩

theorem modG_at (D : Formalism.BasicNotions.D7) (Λ : Submodule (𝓞 D.host.E) (VS D).V) {y : (VS D).V}
    (h : ModG (VS D) Λ (gS D) y) (P : HeightOneSpectrum (𝓞 D.host.E)) (hP : ((gS D : ℕ) : 𝓞 D.host.E) ∈ P.asIdeal) :
    ∃ s : 𝓞 D.host.E, s ∉ P.asIdeal ∧ ∃ l ∈ Λ, (s : D.host.E) • y = ((gS D : ℕ) : D.host.E) • l := by
  obtain ⟨s, hs, hsy⟩ := h P hP
  rw [Submodule.ideal_span_singleton_smul, Submodule.mem_smul_pointwise_iff_exists] at hsy
  obtain ⟨l, hl, hl'⟩ := hsy
  refine ⟨s, hs, l, hl, ?_⟩
  rw [algebraMap_smul, ← hl', ← algebraMap_smul (A := D.host.E) ((gS D : ℕ) : 𝓞 D.host.E) l]
  simp

variable {D : Formalism.BasicNotions.D7} {M : ∀ p : PlF D, Loc.Model (D.s.atP p).Fp (D.s.atP p).Ep}

def sg1 (p : PlF D) (g : Loc.SplitG (M p).L) : D.host.E →+* (D.s.atP p).Fp :=
  (RingHom.fst _ _).comp (g.e.toRingEquiv.toRingHom.comp (D.s.atP p).ιE)

def sg2 (p : PlF D) (g : Loc.SplitG (M p).L) : D.host.E →+* (D.s.atP p).Fp :=
  (RingHom.snd _ _).comp (g.e.toRingEquiv.toRingHom.comp (D.s.atP p).ιE)

theorem firstSplitEmbed_apply (p : PlF D) (g : Loc.SplitG (M p).L) (x : D.host.E) :
    sg1 p g x = (g.e ((D.s.atP p).ιE x)).1 := rfl

theorem secondSplitEmbed_apply (p : PlF D) (g : Loc.SplitG (M p).L) (x : D.host.E) :
    sg2 p g x = (g.e ((D.s.atP p).ιE x)).2 := rfl

theorem firstSplitEmbed_star (δ : ∀ p : PlF D, (D.s.atP p).Fp) (hA : ∀ p, Agree δ M p) (p : PlF D) (g : Loc.SplitG (M p).L)
    (x : D.host.E) : sg1 p g (star x) = sg2 p g x := by
  have hcj : (M p).L.cj = (D.s.atP p).cj := (hA p).2.2.1
  rw [firstSplitEmbed_apply, secondSplitEmbed_apply, star_eq_conjF]
  have h1 : (D.s.atP p).ιE (D.conjF x) = (D.s.atP p).cj ((D.s.atP p).ιE x) := ((D.s.atP p).cj_ιE x).symm
  rw [h1, ← hcj, g.e_cj]
  rfl

theorem split_ell (δ : ∀ p : PlF D, (D.s.atP p).Fp) (hA : ∀ p, Agree δ M p) (p : PlF D) (g : Loc.SplitG (M p).L)
    (hs : (M p).split = some g) :
    (g.q : (D.s.atP p).Fp) = ((Loc.resChar p : ℕ) : (D.s.atP p).Fp) ∧
      Loc.resChar p ∈ ({D.host.g 0, D.host.g 1} : Finset ℕ) := by
  have hm := (hA p).2.2.2.2.2
  rw [hs] at hm
  rcases hsp : (D.s.atP p).split with _ | sg
  · rw [hsp] at hm
    exact hm.elim
  · rw [hsp] at hm
    have hqq : g.q = sg.q := hm.2
    refine ⟨by rw [hqq, sg.q_eq], (D.s_split p).1 (by rw [hsp]; rfl)⟩

theorem val_q_lt (p : PlF D) (g : Loc.SplitG (M p).L) :
    valuation (D.s.atP p).Fp (g.q : (D.s.atP p).Fp) < 1 :=
  Valuation.Integer.not_isUnit_iff_valuation_lt_one.1 g.q_irr.not_isUnit

theorem gS_split (p : PlF D) (h : Loc.resChar p ∈ ({D.host.g 0, D.host.g 1} : Finset ℕ)) :
    ∃ k : ℕ, gS D = Loc.resChar p * k := by
  unfold gS
  rcases Finset.mem_insert.1 h with h0 | h1
  · exact ⟨D.host.g 1, by rw [h0]⟩
  · exact ⟨D.host.g 0, by rw [Finset.mem_singleton.1 h1, mul_comm]⟩

theorem cong_one {K : Type} [Field K] [ValuativeRel K] (Λ : Submodule (𝓞 D.host.E) (VS D).V)
    (hU : Formalism.HermitianLatticesTheory.dual (VS D).hT Λ = Λ) {x y : (VS D).V} (hx : x ∈ Λ) (hy : ModG (VS D) Λ (gS D) y)
    (σ : D.host.E →+* K) (P : HeightOneSpectrum (𝓞 D.host.E)) (hgP : ((gS D : ℕ) : 𝓞 D.host.E) ∈ P.asIdeal)
    (hPσ : ∀ s : 𝓞 D.host.E, s ∉ P.asIdeal → valuation K (σ (s : D.host.E)) = 1) (q m : 𝒪[K])
    (hg : ((gS D : ℕ) : K) = (q : K) * m) : ∃ t : 𝒪[K], σ ((VS D).hT x y) = (q : K) * t := by
  obtain ⟨s, hs, l, hl, hsl⟩ := modG_at D Λ hy P hgP
  obtain ⟨o, ho⟩ := pair_int D Λ hU hx hl
  have he : (s : D.host.E) * (VS D).hT x y = ((gS D : ℕ) : D.host.E) * o := by
    rw [ho, ← smul_eq_mul, ← map_smul, hsl, map_smul, smul_eq_mul]
  obtain ⟨t, ht⟩ := div_q σ q m 1 (gS D) (s : D.host.E) _ o (hPσ s hs) (by rw [pow_one]; exact hg) he
  exact ⟨t, by rw [ht, pow_one]⟩

theorem cong_two {K : Type} [Field K] [ValuativeRel K] (Λ : Submodule (𝓞 D.host.E) (VS D).V)
    (hU : Formalism.HermitianLatticesTheory.dual (VS D).hT Λ = Λ) {y y' : (VS D).V} (hy : ModG (VS D) Λ (gS D) y)
    (hy' : ModG (VS D) Λ (gS D) y') (σ : D.host.E →+* K) (P P' : HeightOneSpectrum (𝓞 D.host.E))
    (hgP : ((gS D : ℕ) : 𝓞 D.host.E) ∈ P.asIdeal) (hgP' : ((gS D : ℕ) : 𝓞 D.host.E) ∈ P'.asIdeal)
    (hPσ : ∀ s : 𝓞 D.host.E, s ∉ P.asIdeal → valuation K (σ (s : D.host.E)) = 1)
    (hP'σ : ∀ s : 𝓞 D.host.E, s ∉ P'.asIdeal → valuation K (σ (star (s : D.host.E))) = 1) (q m : 𝒪[K])
    (hg : ((gS D : ℕ) : K) = (q : K) * m) : ∃ t : 𝒪[K], σ ((VS D).hT y y') = (q : K) ^ 2 * t := by
  obtain ⟨s, hs, l, hl, hsl⟩ := modG_at D Λ hy P' hgP'
  obtain ⟨s', hs', l', hl', hsl'⟩ := modG_at D Λ hy' P hgP
  obtain ⟨o, ho⟩ := pair_int D Λ hU hl hl'
  have he : (star (s : D.host.E) * s') * (VS D).hT y y' = ((gS D ^ 2 : ℕ) : D.host.E) * o := by
    have h1 : (VS D).hT ((s : D.host.E) • y) ((s' : D.host.E) • y') = star (s : D.host.E) * s' * (VS D).hT y y' := by
      rw [LinearMap.map_smulₛₗ₂, map_smul, smul_eq_mul, smul_eq_mul, starRingEnd_apply]
      ring
    have h2 : (VS D).hT (((gS D : ℕ) : D.host.E) • l) (((gS D : ℕ) : D.host.E) • l') =
        ((gS D ^ 2 : ℕ) : D.host.E) * (VS D).hT l l' := by
      rw [LinearMap.map_smulₛₗ₂, map_smul, smul_eq_mul, smul_eq_mul, starRingEnd_apply,
        star_natCast]
      push_cast
      ring
    rw [← h1, hsl, hsl', h2, ho]
  have hc : valuation K (σ (star (s : D.host.E) * s')) = 1 := by
    rw [map_mul, Valuation.map_mul, hP'σ s hs, hPσ s' hs', one_mul]
  obtain ⟨t, ht⟩ := div_q σ q (m ^ 2) 2 (gS D ^ 2) _ _ o hc (by push_cast; rw [hg]; ring) he
  exact ⟨t, ht⟩

theorem fin_three {E K : Type} [Field E] [Field K] (σ : E →+* K) (A B C : E) (T T' : ℕ) (c : Prop) [Decidable c]
    (hA : A = if c then -(T : E) else 0) (hB : B = if c then -(T' : E) else 0) (x : K) (hx : σ C = x) :
    σ (A + B - C) + (if c then (T : K) + (T' : K) else 0) = -x := by
  rw [map_sub, map_add (f := _), hx, hA, hB]
  split_ifs
  · rw [map_neg, map_neg, map_natCast, map_natCast]
    ring
  · rw [map_zero]
    ring

end PI.CntNotIntW
