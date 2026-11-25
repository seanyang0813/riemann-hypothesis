module

public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementC
public import Formalism.FormalGroupLog.Statement
public import Formalism.LocalToGlobal.TorsionIntegrality.FrobeniusFibreCurves.CurveHyp
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.IsotropicVanish
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.BiextensionHypothesesOfLevelOne
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.NormLeInvOfLtOne
import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.SubstFirstCoboundaryThree
import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.TilInvariantLOf
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.ConstantCoeffVecConsPairEqZero
import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.BinomialSeriesCoefficients.Points
public import Formalism.LocalToGlobal.TorsionIntegrality.SecondCoefficientNorms.PhNormFromDatum
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FinalS

@[expose] public section

noncomputable section
open scoped BigOperators

namespace Formalism.L2.Th1.D

open Formalism.DworkPowerSeriesWeights (Integral mvExp)
open Formalism.InvariantFactorPaths.G7 (lgF at1 Simeq DivAB d1 swap2 in3 cob UnrOK IsLawOfLog)

namespace BrC

section Alg

variable {K : Type} [Field K]

private theorem lgF_zero_lemma (l : ℕ) : PowerSeries.constantCoeff (lgF K l) = 0 := by
  rw [← PowerSeries.coeff_zero_eq_constantCoeff_apply, lgF, PowerSeries.coeff_mk]
  simp

theorem logPair {l : ℕ} (hl : 2 ≤ l) : C.IsLogPair (lgF K l) (expF K l) := by
  have h0 := lgF_zero_lemma (K := K) l
  have h1 := _root_.Formalism.InvariantFactorPaths.G7.LemTwo.coeff_one_lgF (K := K) hl
  have hu : IsUnit (PowerSeries.coeff 1 (lgF K l)) := by rw [h1]; exact isUnit_one
  have he : expF K l = (lgF K l).substInvOfIsUnit hu := by rw [expF, dite_eq_left hu]
  refine ⟨h0, h1, ?_, ?_, ?_⟩
  · rw [he]; exact PowerSeries.constantCoeff_substInvOfIsUnit _ _
  · rw [he]; exact PowerSeries.subst_substInvOfIsUnit_left _ h0 hu
  · rw [he]; exact PowerSeries.subst_substInvOfIsUnit_right _ h0 hu

end Alg

section Normed

variable {K : Type} [NormedField K] [IsUltrametricDist K]

def Osub (σ : K →+* K) : Subring K :=
  Formalism.G.unitBall K ⊓ (σ.comp σ).eqLocus (RingHom.id K)

theorem mem_Osub {σ : K →+* K} {a : K} : a ∈ Osub σ ↔ ‖a‖ ≤ 1 ∧ σ (σ a) = a := by
  simp only [Osub, Subring.mem_inf, RingHom.mem_eqLocus, RingHom.comp_apply, RingHom.id_apply]
  exact Iff.rfl

@[reducible] def starO {σ : K →+* K} (hσ : ∀ a : K, ‖a‖ ≤ 1 → ‖σ a‖ ≤ 1) : StarRing (Osub σ) where
  star a := ⟨σ a.1, mem_Osub.2 ⟨hσ _ a.2.1, congrArg σ a.2.2⟩⟩
  star_involutive a := Subtype.ext a.2.2
  star_mul a b := Subtype.ext (by
    show σ (a.1 * b.1) = σ b.1 * σ a.1
    rw [map_mul, mul_comm])
  star_add a b := Subtype.ext (map_add σ a.1 b.1)

theorem ne_zero_of_norm {a : K} (ha : ‖a‖ = 1) : a ≠ 0 := by
  intro h
  rw [h, norm_zero] at ha
  exact zero_ne_one ha

theorem norm_sub_le (x y : K) : ‖x - y‖ ≤ max ‖x‖ ‖y‖ := by
  simpa [sub_eq_add_neg, norm_neg] using IsUltrametricDist.norm_add_le_max x (-y)

def unitO {σ : K →+* K} {a : K} (ha : ‖a‖ = 1) (hs : σ (σ a) = a) : (Osub σ)ˣ where
  val := ⟨a, mem_Osub.2 ⟨ha.le, hs⟩⟩
  inv := ⟨a⁻¹, mem_Osub.2 ⟨by rw [norm_inv, ha, inv_one], by rw [map_inv₀, map_inv₀, hs]⟩⟩
  val_inv := Subtype.ext (mul_inv_cancel₀ (ne_zero_of_norm ha))
  inv_val := Subtype.ext (inv_mul_cancel₀ (ne_zero_of_norm ha))

theorem norm_unitO {σ : K →+* K} (u : (Osub σ)ˣ) : ‖((u : Osub σ) : K)‖ = 1 := by
  have h1 : ‖((u : Osub σ) : K)‖ ≤ 1 := (mem_Osub.1 (u : Osub σ).2).1
  have h2 : ‖(((u⁻¹ : (Osub σ)ˣ) : Osub σ) : K)‖ ≤ 1 := (mem_Osub.1 ((u⁻¹ : (Osub σ)ˣ) : Osub σ).2).1
  have h3 : ((u : Osub σ) : K) * (((u⁻¹ : (Osub σ)ˣ) : Osub σ) : K) = 1 := by
    exact congrArg Subtype.val u.mul_inv
  have h4 := congrArg norm h3
  rw [norm_mul, norm_one] at h4
  have h5 := mul_le_mul_of_nonneg_left h2 (norm_nonneg ((u : Osub σ) : K))
  rw [h4, mul_one] at h5
  exact le_antisymm h1 h5

variable [CharZero K]

theorem norm_two {l : ℕ} {σ : K →+* K} (hU : UnrOK K l σ) : ‖(2 : K)‖ = 1 := by
  obtain ⟨hp, h2p, hpn, -, -⟩ := hU
  have hle : ‖(2 : K)‖ ≤ 1 := by exact_mod_cast IsUltrametricDist.norm_natCast_le_one K 2
  obtain ⟨m, hm⟩ : Odd l := hp.odd_of_ne_two (by omega)
  have h1 : (1 : K) = (l : K) - 2 * (m : K) := by rw [hm]; push_cast; ring
  have h3 : (1 : ℝ) ≤ max ‖(l : K)‖ ‖2 * (m : K)‖ := by
    calc (1 : ℝ) = ‖(1 : K)‖ := norm_one.symm
      _ = ‖(l : K) - 2 * (m : K)‖ := by rw [← h1]
      _ ≤ _ := BrC.norm_sub_le _ _
  rw [hpn, norm_mul] at h3
  have hm1 : ‖(m : K)‖ ≤ 1 := IsUltrametricDist.norm_natCast_le_one K m
  have hl : ((l : ℕ) : ℝ)⁻¹ < 1 := inv_lt_one_of_one_lt₀ (by exact_mod_cast (by omega : 1 < l))
  have h4 := mul_le_of_le_one_right (norm_nonneg (2 : K)) hm1
  rcases le_max_iff.1 h3 with h | h
  · linarith
  · linarith

theorem mem_closure_nat {l : ℕ} {σ : K →+* K} (hU : UnrOK K l σ) {x : K} (hx : ‖x‖ ≤ 1)
    (hs : σ x = x) : x ∈ closure (Set.range fun n : ℕ => (n : K)) := by
  rw [Metric.mem_closure_iff]
  intro ε hε
  have h1 : (1 : ℝ) < l := by exact_mod_cast (by have := hU.2.1; omega : 1 < l)
  obtain ⟨k, hk⟩ := exists_pow_lt_of_lt_one hε (inv_lt_one_of_one_lt₀ h1)
  obtain ⟨n, hn⟩ := fixed_is_limit K l σ hU x hx hs k
  refine ⟨n, ⟨n, rfl⟩, ?_⟩
  rw [dist_eq_norm]
  rw [inv_pow] at hk
  exact lt_of_le_of_lt hn hk

theorem of_closed_nat {l : ℕ} {σ : K →+* K} (hU : UnrOK K l σ) {P : K → Prop}
    (hc : IsClosed {z : K | P z}) (hi : ∀ n : ℕ, P (n : K)) {x : K} (hx : ‖x‖ ≤ 1)
    (hs : σ x = x) : P x := by
  exact closure_minimal (Set.range_subset_iff.2 hi) hc (mem_closure_nat hU hx hs)

theorem of_closed_int {l : ℕ} {σ : K →+* K} (hU : UnrOK K l σ) {P : K → Prop}
    (hc : IsClosed {z : K | P z}) (hi : ∀ n : ℤ, P (n : K)) {x : K} (hx : ‖x‖ ≤ 1)
    (hs : σ x = x) : P x := by
  exact of_closed_nat hU hc (fun n => by simpa using hi n) hx hs

theorem lawLog {l : ℕ} (hl : 2 ≤ l) {F : MvPowerSeries (Fin 2) K} (hF : IsLawOfLog l F) :
    Formalism.L2.Th1.B.LawLog F (lgF K l) := by
  exact ⟨hF.1, hF.2.1, lgF_zero_lemma l, _root_.Formalism.InvariantFactorPaths.G7.LemTwo.coeff_one_lgF hl, hF.2.2⟩

theorem endInt {l : ℕ} {σ : K →+* K} (hU : UnrOK K l σ) {α : K} (hα : ‖α‖ ≤ 1)
    (hs : σ (σ α) = α) : C.EndInt (Formalism.G.unitBall K) (lgF K l) (expF K l) α := by
  have hl : 2 ≤ l := by have := hU.2.1; omega
  obtain ⟨hLP0, -, hLP2, -, hLP4⟩ := logPair (K := K) hl
  have hgc : MvPowerSeries.constantCoeff (PowerSeries.C α * lgF K l) = 0 := by
    change PowerSeries.constantCoeff _ = 0
    simp [hLP0]
  have hg : PowerSeries.HasSubst (PowerSeries.C α * lgF K l) :=
    PowerSeries.HasSubst.of_constantCoeff_zero' hgc
  have he : PowerSeries.HasSubst (expF K l) := PowerSeries.HasSubst.of_constantCoeff_zero' hLP2
  have hmul : IsMul l α (mulS K l α) := by
    refine ⟨?_, ?_⟩
    · change MvPowerSeries.constantCoeff (PowerSeries.subst (PowerSeries.C α * lgF K l) (expF K l)) = 0
      rw [PowerSeries.constantCoeff_subst hg]
      apply finsum_eq_zero_of_forall_eq_zero
      intro d
      rcases Nat.eq_zero_or_pos d with rfl | hd
      · simp [hLP2]
      · simp [map_pow, hgc, hd.ne']
    · rw [mulS, ← PowerSeries.subst_comp_subst_apply he hg, hLP4, PowerSeries.subst_X hg]
  intro n
  exact (mulSpec K l σ hU α).2.2 hα hs _ hmul n

theorem phNorm_iff {l : ℕ} {σ : K →+* K} (ph : PowerSeries K) (α : K) :
    C.PhNormAt (Formalism.G.unitBall K) (lgF K l) (expF K l) ph α (σ α) ↔ NormRel l σ ph α := by
  unfold C.PhNormAt NormRel
  rw [Formalism.L2.Th1.C.simeq_iff_congruence K Unit, PowerSeries.smul_eq_C_mul]
  rfl

theorem two_units {l : ℕ} {σ : K →+* K} (hU : UnrOK K l σ) (α : Osub σ) :
    ∃ u v : (Osub σ)ˣ, α = u + v := by
  have hα := mem_Osub.1 α.2
  have h2 := norm_two hU
  rcases lt_or_eq_of_le hα.1 with h | h
  · have hn : ‖(α : K) + 1‖ = 1 := by
      rw [IsUltrametricDist.norm_add_eq_max_of_norm_ne_norm (by rw [norm_one]; exact h.ne), norm_one]
      exact max_eq_right h.le
    refine ⟨unitO hn (by simp [hα.2]), unitO (a := -1) (by simp) (by simp), ?_⟩
    apply Subtype.ext
    show (α : K) = ((α : K) + 1) + -1
    ring
  · refine ⟨unitO (a := 2 * (α : K)) (by rw [norm_mul, h2, h, one_mul]) (by simp [hα.2, map_ofNat]),
      unitO (a := -(α : K)) (by rw [norm_neg, h]) (by simp [hα.2]), ?_⟩
    apply Subtype.ext
    show (α : K) = 2 * (α : K) + -(α : K)
    ring

theorem all {l : ℕ} {σ : K →+* K} (hU : UnrOK K l σ) {F : MvPowerSeries (Fin 2) K}
    (hF : IsLawOfLog l F) {ph : PowerSeries K} (hph : PowerSeries.constantCoeff ph = 0)
    (hF1 : F1 F (cob F ph))
    (hN : ∀ α : K, ‖α‖ = 1 → σ (σ α) = α → NormRel l σ ph α) :
    C.Frame (Formalism.G.unitBall K) (lgF K l) (expF K l) ph ∧
    C.F1 (Formalism.G.unitBall K) (lgF K l) (expF K l) ph ∧
    F = C.fadd (lgF K l) (expF K l) (MvPowerSeries.X 0) (MvPowerSeries.X 1) ∧
    ∀ α : K, ‖α‖ ≤ 1 → σ (σ α) = α →
      C.PhNormAt (Formalism.G.unitBall K) (lgF K l) (expF K l) ph α (σ α) ∧
      C.AdjAt (Formalism.G.unitBall K) (lgF K l) (expF K l) ph α (σ α) := by
  have hl : 2 ≤ l := by have := hU.2.1; omega
  have hLP := logPair (K := K) hl
  have hLL := lawLog hl hF
  obtain ⟨hFeq, hFG, hF1C⟩ := Formalism.L2.Th1.C.first_level_from_universal_holds K F (lgF K l) (expF K l) ph hLP hLL hph hF1.2.1
  have hFrame : C.Frame (Formalism.G.unitBall K) (lgF K l) (expF K l) ph := ⟨hLP, hFG, hph⟩
  refine ⟨hFrame, hF1C, hFeq, ?_⟩
  have hiso := sigma_isometry K l σ hU
  have hσ1 : ∀ a : K, ‖a‖ ≤ 1 → ‖σ a‖ ≤ 1 := fun a ha => by rw [hiso a]; exact ha
  letI : StarRing (Osub σ) := starO hσ1
  have hσc : Continuous σ := (AddMonoidHomClass.isometry_of_norm σ hiso).continuous
  have hcs : Continuous (star : Osub σ → Osub σ) :=
    (hσc.comp continuous_subtype_val).subtype_mk _
  have hfix : ∀ z : Osub σ, star z = z →
      (Osub σ).subtype z ∈ closure (Set.range (fun n : ℤ => (n : K))) := fun z hz => by
    have h1 : σ (z : K) = z := congrArg Subtype.val hz
    refine closure_mono (fun y hy => ?_) (mem_closure_nat hU (mem_Osub.1 z.2).1 h1)
    obtain ⟨n, rfl⟩ := hy
    exact ⟨n, by simp⟩
  have hinv2 : (2 : K)⁻¹ ∈ Formalism.G.unitBall K := by
    show ‖(2 : K)⁻¹‖ ≤ 1
    rw [norm_inv, norm_two hU, inv_one]
  have hu2 : IsUnit (2 : Osub σ) :=
    ⟨unitO (a := 2) (norm_two hU) (by simp [map_ofNat]), Subtype.ext (by show (2 : K) = _; first | rfl)⟩
  have hDn : ∀ a ∈ Set.range (fun u : (Osub σ)ˣ => (u : Osub σ)),
      C.EndInt (Formalism.G.unitBall K) (lgF K l) (expF K l) ((Osub σ).subtype a) ∧
      C.PhNormAt (Formalism.G.unitBall K) (lgF K l) (expF K l) ph ((Osub σ).subtype a) ((Osub σ).subtype (star a)) := by
    rintro a ⟨u, rfl⟩
    have hn := norm_unitO u
    have hs := (mem_Osub.1 (u : Osub σ).2).2
    exact ⟨endInt hU hn.le hs, (phNorm_iff (l := l) (σ := σ) ph _).2 (hN _ hn hs)⟩
  have key := Formalism.L2.Th1.C.endoAll K (Formalism.G.unitBall K) (Formalism.L2.Th1.C.unit_ball_closed K)
    (lgF K l) (expF K l) ph hFrame hF1C (Osub σ) (Osub σ).subtype continuous_subtype_val hcs hfix
    hinv2 hu2 (two_units hU) (Set.range (fun u : (Osub σ)ˣ => (u : Osub σ)))
    (fun u => subset_closure ⟨u, rfl⟩) hDn
  intro α hα hs
  obtain ⟨-, h2, h3⟩ := key ⟨α, mem_Osub.2 ⟨hα, hs⟩⟩
  exact ⟨h2, h3⟩

end Normed

end BrC

open BrC in
theorem second_level_of_norm_holds : SecondLevelOfNorm := by
  intro K _ _ _ l σ hU F hF ph hph hF1 hN
  have hl : 2 ≤ l := hU.1.two_le
  have hP := logPair (K := K) hl
  have hσ : ∀ a : K, ‖a‖ ≤ 1 → ‖σ a‖ ≤ 1 := (frobSq K l σ hU).2
  obtain ⟨hFr, hC1, hFe, hall⟩ := all hU hF hph hF1 hN
  refine ⟨?_, fun α hα hs => (phNorm_iff ph α).1 (hall α hα hs).1, ?_⟩
  · intro α hα hs e e' he he'
    have e1 : e = mulS K l α := (mulSpec K l σ hU α).2.1 _ _ he (Pair.isMul_mulF expSpec hl α)
    have e2 : e' = mulS K l (σ α) :=
      (mulSpec K l σ hU (σ α)).2.1 _ _ he' (Pair.isMul_mulF expSpec hl (σ α))
    rw [e1, e2]
    exact C.adjoint_universal_form K F _ _ ph α (σ α) hP (lawLog hl hF) hph (endInt hU hα hs)
      (endInt hU (hσ _ hα) (congrArg σ hs)) (hall α hα hs).2
  · have hX : MvPowerSeries.constantCoeff (PowerSeries.X : MvPowerSeries Unit K) = 0 :=
      PowerSeries.constantCoeff_X
    have h2 := (hall 2 (norm_two hU).le (by rw [map_ofNat, map_ofNat])).1
    have ev : (fun _ : Fin 2 => (PowerSeries.X : PowerSeries K)) =
        ![(PowerSeries.X : MvPowerSeries Unit K), PowerSeries.X] := by
      funext i
      fin_cases i <;> rfl
    have e3 : C.fadd (lgF K l) (expF K l) (PowerSeries.X : MvPowerSeries Unit K) PowerSeries.X =
        C.mulBy (lgF K l) (expF K l) 2 := by
      rw [C.Pts.mulBy_eq_fmul, ← one_add_one_eq_two, C.Pts.fmul_add hP 1 1 hX, C.Pts.fmul_one hP hX]
    rw [ev, hFe, C.Dict.subst_cob hP ph hX hX, C.be0, e3, PowerSeries.X_subst]
    have hsym := InverseCommuting.sim_symm ((phNorm_iff ph 2).1 h2)
    unfold Simeq at hsym ⊢
    rw [map_ofNat] at hsym
    have e4 : MvPowerSeries.C (2 : K) * ph -
        (PowerSeries.subst (C.mulBy (lgF K l) (expF K l) 2) ph - ph - ph) =
        MvPowerSeries.C ((2 : K) * 2) * ph - PowerSeries.subst (mulS K l 2) ph := by
      rw [map_mul]
      show _ = MvPowerSeries.C (2 : K) * MvPowerSeries.C (2 : K) * ph -
        PowerSeries.subst (C.mulBy (lgF K l) (expF K l) 2) ph
      rw [map_ofNat]
      ring
    rw [e4]
    exact hsym


open BrC in
theorem norm_units_alt : NormUnits := by
  intro K _ _ _ l σ hU ph hph S hS α hα
  have hl : 2 ≤ l := by have := hU.2.1; omega
  obtain ⟨hL0, -, hE0, -, -⟩ := BrC.logPair (K := K) hl
  have hσc : Continuous σ := (AddMonoidHomClass.isometry_of_norm σ (sigma_isometry K l σ hU)).continuous
  have hC := Formalism.L2.Th1.C.phNormClosed K (Formalism.G.unitBall K) (Formalism.L2.Th1.C.unit_ball_closed K)
    (lgF K l) (expF K l) ph hL0 hE0 hph
  have hC' : IsClosed {a : K | NormRel l σ ph a} := by
    have h2 := hC.preimage (continuous_id.prodMk hσc)
    convert h2 using 1
    ext a
    exact (BrC.phNorm_iff (l := l) (σ := σ) ph a).symm
  apply closure_minimal (fun a ha => hS a ha) hC'
  rw [Metric.mem_closure_iff]
  intro ε hε
  obtain ⟨a, ha, h⟩ := hα ε hε
  exact ⟨a, ha, by rw [dist_eq_norm, norm_sub_rev]; exact h⟩


end Formalism.L2.Th1.D
