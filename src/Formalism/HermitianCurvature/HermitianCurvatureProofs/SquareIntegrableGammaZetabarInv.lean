module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CoordinateCommuteRaisingConstant
import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdmissibleRecOfAdmissibleWord
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivedCoefficientIntegrable
import Formalism.HermitianCurvature.HermitianCurvatureProofs.Interlace
import Formalism.HermitianCurvature.HermitianCurvatureProofs.InterlaceSignTwo
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftMatrixTransferConjTransposeCommute
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ScalarCommuteTransposedRMatrixEntry
public import Mathlib.Analysis.Calculus.LineDeriv.IntegrationByParts
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelNablaStarRelations

@[expose] public section

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false

namespace Formalism.FourierDecayAlt.P.MAx2.R2
open Formalism.FourierDecayAlt.MA

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.MAx1.An MeasureTheory
open scoped ComplexConjugate

noncomputable section

variable {τ : ℝ}

abbrev S (τ : ℝ) := SmQ 0 τ
def z : S τ := coordQ M.vz
def gg : S τ := (anQ 0 τ).gg τ
def th : Module.End ℂ (S τ) := eulerQ M.vz
def thb : Module.End ℂ (S τ) := eulerQ M.vzb

def ev (f : S τ) (q : Qp 0 τ) : ℂ := f.1 q

theorem S_ext {f g : S τ} (h : ∀ q, ev f q = ev g q) : f = g := Subtype.ext (funext h)

theorem ev_gg (q) : ev (gg : S τ) q = q.1.2 * conj q.1.2 - τ := by
  have := gg_apply (r := 0) (TT := τ) q
  rw [coordE_vz, coordE_vzb] at this
  exact this

theorem ext_conj (f : Qp 0 τ → ℂ) : ext (fun q => conj (f q)) = fun x => Complex.conjCLE (ext f x) := by
  funext x; by_cases hx : x ∈ Qset 0 τ <;> simp [ext, hx]

def cj (f : S τ) : S τ := ⟨fun q => conj (f.1 q), by
  show ContDiffOn ℝ sm (ext fun q => conj (f.1 q)) (Qset 0 τ)
  rw [ext_conj]
  exact Complex.conjCLE.contDiff.comp_contDiffOn f.2⟩

@[simp] theorem ev_cj (f : S τ) (q) : ev (cj f) q = conj (ev f q) := rfl

instance haarE : (volume : Measure (E 0)).IsAddHaarMeasure :=
  Measure.prod.instIsAddHaarMeasure (volume : Measure (Fin 0 → ℂ)) (volume : Measure ℂ)

end

end Formalism.FourierDecayAlt.P.MAx2.R2

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false

namespace Formalism.FourierDecayAlt.P.MAx2.R2
open Formalism.FourierDecayAlt.MA

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.MAx1.An MeasureTheory
open scoped ComplexConjugate

noncomputable section

variable {τ : ℝ}

theorem inner_eq_integral_alt (f g : S τ) : ip0 f g = ∫ q, ev (f * cj g) q ∂mu0 0 τ := rfl

theorem cj_mul (f g : S τ) : cj (f * g) = cj f * cj g :=
  S_ext fun q => (starRingEnd ℂ).map_mul (ev f q) (ev g q)
theorem cj_gg : cj (gg : S τ) = gg := S_ext fun q => by simp [ev_gg, mul_comm]

end

end Formalism.FourierDecayAlt.P.MAx2.R2

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false

namespace Formalism.FourierDecayAlt.P.MAx2.R2
open Formalism.FourierDecayAlt.MA

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.P.MAx1.An MeasureTheory Finset
open scoped ComplexConjugate

noncomputable section

section Act
variable (P : M.Par)

def Phi : (DQ P).Pr →+* Module.End ℂ (SmQ P.r P.TT) :=
  RingHom.fst (Module.End ℂ (SmQ P.r P.TT)) (Module.End ℂ (SmQ P.r P.TT))ᵐᵒᵖ
theorem actA_eq (a : A P (DQ P)) (f π) : actA P a f π = ∑ π', Phi P (a π π') (f π') := rfl

theorem act_mul (a b : A P (DQ P)) (f) : actA P (a * b) f = actA P a (actA P b f) := by
  funext π

  simp only [actA_eq, Matrix.mul_apply, map_sum, map_mul, LinearMap.sum_apply, Module.End.mul_apply]
  rw [Finset.sum_comm]
theorem act_add (a b : A P (DQ P)) (f π) : actA P (a + b) f π = actA P a f π + actA P b f π := by
  simp only [actA_eq, Matrix.add_apply, map_add, LinearMap.add_apply, Finset.sum_add_distrib]
theorem act_diag (d : M.Ty P → (DQ P).Pr) (f π) : actA P (Matrix.diagonal d) f π = (d π).1 (f π) := by
  rw [actA_eq, Finset.sum_eq_single π (fun b _ hb => by rw [Matrix.diagonal_apply_ne _ hb.symm, map_zero]; rfl)
    (by simp), Matrix.diagonal_apply_eq]
  rfl
theorem act_one (f) : actA P 1 f = f := by
  funext π; rw [← Matrix.diagonal_one, act_diag]; rfl
theorem act_sc (w : (DQ P).Pr) (f π) : actA P (sc P (DQ P) w) f π = w.1 (f π) := act_diag P _ f π
theorem star_sc (w : (DQ P).Pr) : star (sc P (DQ P) w) = sc P (DQ P) (star w) := by
  simp only [sc, Matrix.scalar_apply, Matrix.star_eq_conjTranspose, Matrix.diagonal_conjTranspose]; rfl
theorem alg_fst (c : ℂ) (g : SmQ P.r P.TT) : (algebraMap ℂ (DQ P).Pr c).1 g = c • g := rfl
theorem act_alg (c : ℂ) (f π) : actA P (algebraMap ℂ (A P (DQ P)) c) f π = c • f π := by
  rw [Matrix.algebraMap_eq_diagonal, act_diag]; rfl
theorem act_kap (g : M.Ty P → ℂ) (f π) : actA P (kap P (DQ P) g) f π = g π • f π := act_diag P _ f π
end Act

abbrev Pb (b : ℕ) : M.Par := ⟨1, 0, 1, 1, fun _ => 0, fun _ => 2 * b⟩

variable (b : ℕ)

theorem hT : 1 ≤ (Pb b).TT := by simp [M.Par.TT]

variable {b}
variable {L : LevelData (A (Pb b) (DQ (Pb b))) 0} (hL : IsModelLevel (Pb b) (DQ (Pb b)) L)
include hL



end

end Formalism.FourierDecayAlt.P.MAx2.R2

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false

namespace Formalism.FourierDecayAlt.P.MAx2.R2
end Formalism.FourierDecayAlt.P.MAx2.R2

namespace Formalism.FourierDecayAlt.P.MAx2.R2
open Formalism.FourierDecayAlt.MA

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Wd Formalism.YangianSpanCharacter.T Matrix

section G
variable {A : Type} [Ring A] [StarRing A] [Algebra ℂ A] [StarModule ℂ A]

noncomputable def low : (ℂ → M2 A) → List (Site A) → ℂ → M2 A
  | QQ, [] => QQ
  | QQ, σ :: s => low (fun Y => (Ts σ (star Y))ᴴ * QQ Y * Ts σ Y) s

theorem comm_mul (x : A) (M N : M2 A) (hM : ∀ i j, Commute (M i j) x) (hN : ∀ i j, Commute (N i j) x) (i j) :
    Commute ((M * N) i j) x := by
  rw [Matrix.mul_apply]
  exact Commute.sum_left _ _ _ fun k _ => (hM i k).mul_left (hN k j)

theorem step_ok (σ : Site A) (s : List (Site A)) (QQ : ℂ → M2 A) (h : SitesOK QQ (σ :: s)) :
    SitesOK (fun Y => (Ts σ (star Y))ᴴ * QQ Y * Ts σ Y) s := by
  obtain ⟨h1, h2⟩ := h
  rw [List.pairwise_cons] at h2
  refine ⟨fun τ hτ => ⟨(h1 τ (List.mem_cons_of_mem _ hτ)).1, ?_⟩, h2.2⟩
  intro Y i j x hx
  have hc := h2.1 τ hτ
  have hT : ∀ y ∈ ops τ, ∀ (Z : ℂ) a b, Commute (Ts σ Z a b) y := fun y hy Z a b =>
    (Formalism.FourierDecayAlt.P.MAx1.WeylSymmetry.Ts_comm σ y (hc _ (Or.inl (by simp [hol])) y hy).symm
      (hc _ (Or.inl (by simp [hol])) y hy).symm (hc _ (Or.inl (by simp [hol])) y hy).symm Z a b).symm
  have hsx : star x ∈ ops τ := by
    rcases hx with hx | hx
    · right; rwa [star_star]
    · left; exact hx
  refine comm_mul x _ _ (comm_mul x _ _ (fun a b => ?_) fun a b => (h1 τ (List.mem_cons_of_mem _ hτ)).2 Y a b x hx)
    (hT x hx Y) i j
  rw [Matrix.conjTranspose_apply]
  have := (hT _ hsx (star Y) b a).star_star
  rwa [star_star] at this

theorem low_real (s : List (Site A)) : ∀ (QQ : ℂ → M2 A) (Y : ℂ), star Y = Y →
    low QQ s Y = ((s.map fun σ => Ts σ Y).prod)ᴴ * QQ Y * (s.map fun σ => Ts σ Y).prod := by
  induction s with
  | nil => intro QQ Y _; simp [low]
  | cons σ s ih =>
    intro QQ Y hY
    rw [low, ih _ Y hY]
    simp only [hY, List.map_cons, List.prod_cons, Matrix.conjTranspose_mul, mul_assoc]

theorem form_low {S : Type} [Fintype S] [DecidableEq S] (w : List (Letter ℂ S)) (hw : Good w) (s : List (Site A)) :
    ∀ QQ : ℂ → M2 A, SitesOK QQ s →
      star (s.map fun σ => bT σ w).prod * RRw QQ w * (s.map fun σ => bT σ w).prod = RRw (low QQ s) w := by
  induction s with
  | nil => intro QQ _; simp [low]
  | cons σ s ih =>
    intro QQ h
    have h0 := h.1 σ (List.mem_cons_self ..)
    have := Formalism.FourierDecayAlt.P.site_exchange_relation ℂ A S σ QQ (fun Y => (Ts σ (star Y))ᴴ * QQ Y * Ts σ Y) w h0.1 h0.2
      (fun Y hY => by simp only [hY]) hw
    rw [low, ← ih _ (step_ok σ s QQ h), ← this]
    simp only [List.map_cons, List.prod_cons, star_mul, mul_assoc]

theorem first_clause {S : Type} [Fintype S] [DecidableEq S] (w : List (Letter ℂ S)) (hw : Good w) (s : List (Site A))
    (QQ : ℂ → M2 A) (h : SitesOK QQ s) :
    ∑ e, ∑ e', star (uw s w e) * RRw QQ w e e' * uw s w e' = (w.reverse.map fun a => C0 QQ s a.pt).prod := by
  have h1 := congrFun (congrFun (form_low w hw s QQ h) e1) e1
  rw [Formalism.FourierDecayAlt.P.word_matrix_entry_one ℂ A S _ w hw] at h1
  have h2 : (w.reverse.map fun l => low QQ s l.pt 0 0) = w.reverse.map fun a => C0 QQ s a.pt := by
    refine List.map_congr_left fun l hl => ?_
    rw [low_real s QQ l.pt (hw.2.1 l (List.mem_reverse.1 hl))]
    simp only [C0, v0, Matrix.mul_apply, Matrix.conjTranspose_apply, Finset.sum_mul]
    rw [Finset.sum_comm]
  rw [← h2, ← h1]
  simp only [uw, Matrix.mul_apply, Matrix.star_apply, Finset.sum_mul]
  rw [Finset.sum_comm]
end G

theorem modelWordsD : Formalism.FourierDecayAlt.MA.ModelWordsD := by
  intro P _ D hL l S _ _ w hw
  have : Fact (D.Laws P.TT) := ⟨hL⟩
  have hs : SitesOK (K := ℂ) (startM P D l).QQ (sites P D) := by
    rw [Formalism.FourierDecayAlt.P.MAx1.sites_eq]; exact Formalism.FourierDecayAlt.P.MAx1.sitesOKM P D l
  exact ⟨first_clause w hw _ _ hs, fun Y h1 h2 z => Formalism.FourierDecayAlt.P.conjugate_word_eigen ℂ _ S _ _ w Y hs hw h1 h2 z⟩

end Formalism.FourierDecayAlt.P.MAx2.R2

namespace Formalism.FourierDecayAlt.P.MAx2

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.MA

theorem between_of_onCut {u u' : ℕ → ℝ} {l : ℕ} {Y : ℝ} (h : I.OnCut u u' l Y) : C7.Between u u' l Y := by
  unfold I.OnCut at h
  unfold C7.Between
  rcases h with ⟨h1, h2⟩ | ⟨h1, h2⟩
  · exact ⟨min_lt_iff.2 (Or.inl (by linarith)), lt_max_iff.2 (Or.inr (by linarith))⟩
  · exact ⟨min_lt_iff.2 (Or.inr (by linarith)), lt_max_iff.2 (Or.inl (by linarith))⟩

end Formalism.FourierDecayAlt.P.MAx2

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.MA

theorem roots_outside_of_parts_alt : Formalism.FourierDecayAlt.MA.RootsOutQOfParts := by
  intro hJ P l L j lam α β Lb c Ntot hH
  obtain ⟨⟨_, hl1, hlk, _, hu, hu', _, hcut⟩, _⟩ := hH
  exact hJ (sysQ P l L j lam α β Lb c Ntot) P.u P.u' l hl1 hlk hu hu'
    (fun Y hY => MAx2.between_of_onCut (hcut Y hY))

theorem induction_imports_of_parts : Formalism.FourierDecayAlt.MA.StepImportsQOfParts := by
  intro hM hW hPR hI3 hAB hJ hI4 hI4' hI5 hR hWR hPRat
  obtain ⟨CR, hCR, hR⟩ := hR
  obtain ⟨Cd, hCd, hWR⟩ := hWR
  refine ⟨CR, Cd, Real.exp 3, hCR, hCd, (Real.exp_pos 3).le, fun P l L j lam α β Lb c Ntot hH w hw hl => ?_⟩
  exact ⟨hM P l L j lam α β Lb c Ntot hH w hw hl, hW P l L j lam α β Lb c Ntot hH w hw hl,
    hPR P l L j lam α β Lb c Ntot hH w hw hl, hI3 P l L j lam α β Lb c Ntot hH w hw hl,
    hAB P l L j lam α β Lb c Ntot hH w hw hl, hJ P l L j lam α β Lb c Ntot hH w hw hl,
    hI4 P l L j lam α β Lb c Ntot hH w hw hl, hI4' P l L j lam α β Lb c Ntot hH w hw hl,
    hI5 P l L j lam α β Lb c Ntot hH w hw hl, hR P l L j lam α β Lb c Ntot hH w hw hl,
    hWR P l L j lam α β Lb c Ntot hH w hw hl, hPRat P l L j lam α β Lb c Ntot hH w hw hl⟩

theorem third_identity_of_parts : Formalism.FourierDecayAlt.MA.EnergyAbsoluteIdentityFromComponents := by
  intro hS hPS hTy hBF P l L j lam α β Lb c Ntot hH w hw hl Y hY ω i
  have hH' := hH
  obtain ⟨⟨hOK, hl1, hlk, _, hu, hu', hαβ, hcut⟩, _, _, _, _, _, hL2, _, h6⟩ := hH'
  have hbox := (hBF (sysQ P l L j lam α β Lb c Ntot) hL2 h6).1 w.length hl
  have hYb : Y ∈ (sysQ P l L j lam α β Lb c Ntot).box w.length := hY
  have hmid : Y ∈ Set.Icc (α + (β - α) / 3) (β - (β - α) / 3) := hbox hYb
  have hYI : Y ∈ Set.Icc α β := ⟨by have := hmid.1; linarith, by have := hmid.2; linarith⟩
  have hπ := hTy P hOK (ixOf P w.length i).2
  have hsign := (hPS P.k P.r P.u P.u' (M.rho P (ixOf P w.length i).2) lam l Y hl1 hlk hu hu' hπ
    (MAx2.between_of_onCut (hcut Y hYI))).2.2
  have h := hS P l L j lam α β Lb c Ntot hH w hw hl Y hY ω i
  show _ = ((|∏ s, (Y + lam s)| * _ : ℝ) : ℂ) * _
  rw [hsign]
  exact h

theorem factor_chosen : Formalism.FourierDecayAlt.MA.FactorChosen := by
  intro hex P l L j lam α β Lb c Ntot hH N hN
  obtain ⟨mB, hmB⟩ := hex P l L j lam α β Lb Ntot hH N hN
  exact Classical.epsilon_spec ⟨mB, hmB⟩

theorem family_imports_of_parts : Formalism.FourierDecayAlt.MA.FamImportsQOfParts := by
  intro hex hch hrest P l L j lam α β Lb c Ntot hH N hN
  obtain ⟨h0, h1, h2, h3⟩ := hch hex P l L j lam α β Lb c Ntot hH N hN
  obtain ⟨m2, m3⟩ := hrest P l L j lam α β Lb c Ntot hH N hN
  exact ⟨h0, m2, h1, h2, h3, m3⟩

theorem theorem_P_of_parts : Formalism.FourierDecayAlt.MA.ThmPQOfParts := by
  intro hF hA hG P l L j lam α β Lb c Ntot hH N Y hN hB ε hε
  show cutoffEnergyForm P l j c ε (LE.plus (List.ofFn Y)) = _
  rw [hF P l L j lam α β Lb c Ntot hH N Y hN hB ε hε, hA P l L j lam α β Lb c Ntot hH N Y hN hB ε hε,
    hG P l L j lam α β Lb c Ntot hH N Y hN hB ε hε]
  rfl

theorem jacobi_norm : Formalism.FourierDecayAlt.MA.JnNorm := by
  intro P l L j lam α β Lb c Ntot
  simp only [LE.Sys.jn, LE.Sys.dens, LE.sq]
  refine MeasureTheory.integral_congr_ae (Filter.Eventually.of_forall fun ω => ?_)
  refine Finset.sum_congr rfl fun a _ => ?_
  show (Wq P ω ^ 0 * ((1 : ℂ)).re) * ‖(j a : Qp P.r P.TT → ℂ) ω‖ ^ 2 = _
  simp

theorem lemma_model_of_parts : Formalism.FourierDecayAlt.MA.LemmaEModelOfParts := by
  intro hLE hC hSI hFI hRO hI1 hJL hTP hJn
  obtain ⟨CR, Cd, CP, hCR, hCd, hCP, hS⟩ := hSI
  have h7 : 0 ≤ 2 * Real.exp 1 * √(LE.C7 CR Cd CP) := by positivity
  refine ⟨64 * (1 + 2 * Real.exp 1 * √(LE.C7 CR Cd CP)), 6 * (64 * (1 + 2 * Real.exp 1 * √(LE.C7 CR Cd CP))),
    by positivity, by positivity, ?_⟩
  intro P l L j lam α β c Ntot hSet hD hA hE hN hI w hAdm hw
  set C₂ := 64 * (1 + 2 * Real.exp 1 * √(LE.C7 CR Cd CP)) with hC₂
  have hC2 : 64 ≤ C₂ := by rw [hC₂]; nlinarith
  have hN1 : (1 : ℝ) ≤ Ntot := by exact_mod_cast (by omega : 1 ≤ Ntot)
  have hr : (1 : ℝ) ≤ ((P.r : ℝ) + 1) ^ 2 := by
    have : (0 : ℝ) ≤ P.r := Nat.cast_nonneg _
    nlinarith
  obtain ⟨_, h2, h3⟩ := hC P.k P.r Ntot C₂ (6 * C₂) (β - α) hN (by linarith) le_rfl hI
  have hLb1 : (Ntot : ℝ) ≤ C₂ * Ntot * ((P.r : ℝ) + 1) ^ 2 := by
    have : (Ntot : ℝ) * 1 ≤ Ntot * (C₂ * ((P.r : ℝ) + 1) ^ 2) := by
      apply mul_le_mul_of_nonneg_left _ (by positivity); nlinarith
    nlinarith
  have hLb2 : 2 < C₂ * Ntot * ((P.r : ℝ) + 1) ^ 2 := by
    have : (64 : ℝ) * 1 * 1 ≤ C₂ * Ntot * ((P.r : ℝ) + 1) ^ 2 := by
      apply mul_le_mul (mul_le_mul hC2 hN1 (by norm_num) (by linarith)) hr (by norm_num) (by positivity)
    linarith
  have hH : Hyps P l L j lam α β (C₂ * Ntot * ((P.r : ℝ) + 1) ^ 2) Ntot :=
    ⟨hSet, hD, hA, hE, hN, hLb1, hLb2, h2, h3⟩
  have key := hLE CR Cd CP hCR hCd hCP C₂ le_rfl (6 * C₂) le_rfl
    (sysQ P l L j lam α β (C₂ * Ntot * ((P.r : ℝ) + 1) ^ 2) c Ntot) hN rfl hI
    (hRO P l L j lam α β _ c Ntot hH) (hI1 P l L j lam α β _ c Ntot hH) (hJL P l L j lam α β _ c Ntot hH)
    (hTP P l L j lam α β _ c Ntot hH) (fun w hw hl => hS P l L j lam α β _ c Ntot hH w hw hl)
    (hFI P l L j lam α β _ c Ntot hH)
  have := key w hAdm hw
  rw [hJn P l L j lam α β _ c Ntot] at this
  exact this

end Formalism.FourierDecayAlt.P

namespace Formalism.FourierDecayAlt.P.MAx2

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.MA Formalism.FourierDecayAlt.Wd

theorem wordS_pts : ∀ v : List (Bool × ℝ), (wordS v).map (fun lt => lt.pt) = v.map (fun x => ((x.2 : ℝ) : ℂ))
  | [] => rfl
  | x :: v => by
    simp only [wordS, List.map_cons, List.map_map]
    congr 1
    rw [← wordS_pts v]
    rfl

theorem plusWord_points (w : List ℝ) : (wordP w).map (fun lt => lt.pt) = w.map (fun Y => ((Y : ℝ) : ℂ)) := by
  unfold wordP
  rw [List.map_map]
  have := wordS_pts (LE.plus w)
  simp only [LE.plus, List.map_map] at this
  exact this

theorem mem_wordP {w : List ℝ} {a} (h : a ∈ wordP w) : ∃ Y ∈ w, a.pt = ((Y : ℝ) : ℂ) := by
  have : a.pt ∈ (wordP w).map (fun lt => lt.pt) := List.mem_map_of_mem h
  rw [plusWord_points, List.mem_map] at this
  obtain ⟨Y, hY, e⟩ := this
  exact ⟨Y, hY, e.symm⟩

theorem pairwise_wordP {w : List ℝ} (h : w.Pairwise fun Y Y' => 2 < |Y - Y'|) :
    (wordP w).Pairwise fun a a' => 2 < |a.pt.re - a'.pt.re| := by
  have h2 : ((wordP w).map (fun lt => lt.pt)).Pairwise fun z z' : ℂ => 2 < |z.re - z'.re| := by
    rw [plusWord_points, List.pairwise_map]
    refine h.imp fun {a b} hab => ?_
    simpa using hab
  rwa [List.pairwise_map] at h2

theorem famPos (P : M.Par) (l : ℕ) (L : R.LevelData (A P (DQ P)) P.r) (j : M.Ty P → SmQ P.r P.TT)
    (lam : Fin (P.k + 2 * P.r + 1) → ℝ) (α β Lb : ℝ) (c : LE.Cut) (Ntot : ℕ)
    (hH : Hyps P l L j lam α β Lb Ntot) (N : ℕ) (hN : N ≤ Ntot) :
    ((sysQ P l L j lam α β Lb c Ntot).fam N).Pos := by
  obtain ⟨⟨hOK, hl1, hlk, _, hu, hu', hαβ, hcut⟩, _, _, _, _, _, hL2, _, h6⟩ := hH
  have hBF := Formalism.FourierDecayAlt.P.boxes_fit (sysQ P l L j lam α β Lb c Ntot) hL2 h6
  have hTT : 0 < P.TT := mul_pos hOK.T_pos hOK.T'_pos
  refine ⟨fun ω => ?_, fun Y hY i => ?_⟩
  · show 0 < Complex.normSq ω.1.2 / (Complex.normSq ω.1.2 - P.TT)
    have h := ω.2.2
    exact div_pos (by linarith) (by linarith)
  · have hYbox : ∀ a : Fin N, Y a ∈ (sysQ P l L j lam α β Lb c Ntot).box (N - 1 - (a : ℕ)) := fun a => hY a
    have hYI : ∀ a : Fin N, Y a ∈ Set.Icc α β := fun a => by
      have hm : Y a ∈ Set.Icc (α + (β - α) / 3) (β - (β - α) / 3) :=
        hBF.1 (N - 1 - (a : ℕ)) (by show N - 1 - (a : ℕ) < Ntot; omega) (hYbox a)
      exact ⟨by have := hm.1; linarith, by have := hm.2; linarith⟩
    have hpw : (List.ofFn Y).Pairwise fun Y Y' => 2 < |Y - Y'| := by
      rw [List.pairwise_ofFn]
      intro a b hab
      have hab' : (a : ℕ) < b := hab
      have := hBF.2.1 (N - 1 - (b : ℕ)) (N - 1 - (a : ℕ)) (by omega) (Y b) (hYbox b) (Y a) (hYbox a)
      change Lb ≤ Y a - Y b at this
      rw [abs_of_pos (by linarith)]
      linarith
    have hcutw : ∀ a ∈ wordP (List.ofFn Y), a.pt.im = 0 ∧ I.OnCut P.u P.u' l a.pt.re := by
      intro a ha
      obtain ⟨Y', hY', e⟩ := mem_wordP ha
      rw [List.mem_ofFn] at hY'
      obtain ⟨b, rfl⟩ := hY'
      rw [e]
      exact ⟨Complex.ofReal_im _, by rw [Complex.ofReal_re]; exact hcut _ (hYI b)⟩
    set ix := ixOf P (List.ofFn Y).length (cast (iota_len P N Y) i)
    have hπ := Formalism.FourierDecayAlt.P.types_interlace P hOK ix.2
    have hpos := _root_.Formalism.FourierDecayAlt.P.Fr2.cPosCut _root_.Formalism.FourierDecayAlt.P.Interlace.interlaceSign _root_.Formalism.FourierDecayAlt.P.Interlace.qPositive
      _root_.Formalism.FourierDecayAlt.P.Fr2.qPositiveShift _root_.Formalism.FourierDecayAlt.P.Fr2.cPos (Fin (List.ofFn Y).length) P.k P.u P.u'
      (M.rho P ix.2) l P.T P.T' (wordP (List.ofFn Y)) hl1 hlk hπ hOK.T_pos hOK.T'_pos hcutw
      (pairwise_wordP hpw) ix.1
    exact hpos.1

end Formalism.FourierDecayAlt.P.MAx2

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false

namespace Formalism.FourierDecayAlt.P.MAx2.Jet

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.MA Formalism.FourierDecayAlt.P.MAx1.An
open scoped ComplexConjugate

noncomputable section

variable (P : M.Par)

def Gr (x : E P.r) : ℝ := (∏ l, Complex.normSq (x.1 l)) * (Complex.normSq x.2 - P.TT)

theorem normSq_smooth {f : E P.r → ℂ} (hf : ContDiff ℝ sm f) : ContDiff ℝ sm (fun x => Complex.normSq (f x)) := by
  have : (fun x => Complex.normSq (f x)) = fun x => (f x).re * (f x).re + (f x).im * (f x).im := by
    funext x; simp [Complex.normSq_apply]
  rw [this]
  have h1 : ContDiff ℝ sm fun x => (f x).re := Complex.reCLM.contDiff.comp hf
  have h2 : ContDiff ℝ sm fun x => (f x).im := Complex.imCLM.contDiff.comp hf
  exact (h1.mul h1).add (h2.mul h2)

theorem Gr_smooth : ContDiff ℝ sm (Gr P) := by
  unfold Gr
  refine ContDiff.mul ?_ ((normSq_smooth P contDiff_snd).sub contDiff_const)
  exact contDiff_prod fun l _ => normSq_smooth P ((contDiff_apply ℝ (fun _ => ℂ) l).comp contDiff_fst)

theorem psi_smooth {φ : ℝ → ℝ} (hφ : LE.SmoothLog φ) (n : ℕ) :
    ContDiff ℝ sm (iteratedDeriv n (fun u => φ (Real.exp u))) := by
  rw [iteratedDeriv_eq_iterate]; exact ContDiff.iterate_deriv n hφ

def Phi (φ : ℝ → ℝ) (n : ℕ) : SmQ P.r P.TT := toSm P (fun x => ((LE.ld n φ (Gq P x) : ℝ) : ℂ))

theorem phi_mem {φ : ℝ → ℝ} (hφ : LE.SmoothLog φ) (n : ℕ) :
    (fun x : Qp P.r P.TT => ((LE.ld n φ (Gq P x) : ℝ) : ℂ)) ∈ smSub P.r P.TT := by
  have h1 : ContDiffOn ℝ sm (fun x => Real.log (Gr P x)) (Qset P.r P.TT) :=
    (Gr_smooth P).contDiffOn.log fun x hx => (Gq_pos P ⟨x, hx⟩).ne'
  have h2 : ContDiffOn ℝ sm
      (fun x => ((iteratedDeriv n (fun u => φ (Real.exp u)) (Real.log (Gr P x)) : ℝ) : ℂ)) (Qset P.r P.TT) :=
    Complex.ofRealCLM.contDiff.comp_contDiffOn ((psi_smooth hφ n).comp_contDiffOn h1)
  exact h2.congr fun x hx => by rw [ext_of_mem _ hx]; rfl

theorem ev_Phi {φ : ℝ → ℝ} (hφ : LE.SmoothLog φ) (n : ℕ) (x : Qp P.r P.TT) :
    evQ P (Phi P φ n) x = ((LE.ld n φ (Gq P x) : ℝ) : ℂ) := by
  unfold Phi toSm; rw [dif_pos (phi_mem P hφ n)]; rfl

theorem G_mem : (fun x : Qp P.r P.TT => ((Gq P x : ℝ) : ℂ)) ∈ smSub P.r P.TT := by
  have h2 : ContDiffOn ℝ sm (fun x => ((Gr P x : ℝ) : ℂ)) (Qset P.r P.TT) :=
    Complex.ofRealCLM.contDiff.comp_contDiffOn (Gr_smooth P).contDiffOn
  exact h2.congr fun x hx => by rw [ext_of_mem _ hx]; rfl

def GQ : SmQ P.r P.TT := ⟨_, G_mem P⟩

theorem GQ_unit : IsUnit (GQ P) := isUnit_of_ne _ fun q => by
  show ((Gq P q : ℝ) : ℂ) ≠ 0
  exact_mod_cast (Gq_pos P q).ne'

theorem ev_inverse (f : SmQ P.r P.TT) (hf : IsUnit f) (q : Qp P.r P.TT) :
    ((Ring.inverse f : SmQ P.r P.TT) : Qp P.r P.TT → ℂ) q = ((f : Qp P.r P.TT → ℂ) q)⁻¹ := by
  have h : ((f * Ring.inverse f : SmQ P.r P.TT) : Qp P.r P.TT → ℂ) q = 1 := by
    rw [Ring.mul_inverse_cancel f hf]; rfl
  exact eq_inv_of_mul_eq_one_right h

def kapG (v : M.Var P.r) : SmQ P.r P.TT := eulerQ v (GQ P) * Ring.inverse (GQ P)

theorem euler_Phi {φ : ℝ → ℝ} (hφ : LE.SmoothLog φ) (n : ℕ) (v : M.Var P.r) :
    eulerQ v (Phi P φ n) = Phi P φ (n + 1) * kapG P v := by
  apply Subtype.ext; funext x
  have hG : HasFDerivAt (Gr P) (fderiv ℝ (Gr P) x.1) x.1 :=
    ((Gr_smooth P).differentiable (by simp [sm]) x.1).hasFDerivAt
  have hψ : HasDerivAt (iteratedDeriv n (fun u => φ (Real.exp u)))
      (iteratedDeriv (n + 1) (fun u => φ (Real.exp u)) (Real.log (Gr P x.1))) (Real.log (Gr P x.1)) := by
    rw [iteratedDeriv_succ]
    exact (((psi_smooth hφ n).differentiable (by simp [sm])) _).hasDerivAt
  have h1 := (hψ.comp _ (Real.hasDerivAt_log (Gq_pos P x).ne')).comp_hasFDerivAt x.1 hG
  have h2 := Complex.ofRealCLM.hasFDerivAt.comp x.1 h1
  have h3 := Complex.ofRealCLM.hasFDerivAt.comp x.1 hG
  have e1 : ext (Phi P φ n : Qp P.r P.TT → ℂ) =ᶠ[nhds x.1]
      (Complex.ofRealCLM ∘ ((iteratedDeriv n (fun u => φ (Real.exp u))) ∘ Real.log) ∘ Gr P) := by
    filter_upwards [(Qset_open _ _).mem_nhds x.2] with y hy
    rw [ext_of_mem _ hy]
    exact ev_Phi P hφ n ⟨y, hy⟩
  have e2 : ext (GQ P : Qp P.r P.TT → ℂ) =ᶠ[nhds x.1] (Complex.ofRealCLM ∘ Gr P) := by
    filter_upwards [(Qset_open _ _).mem_nhds x.2] with y hy
    rw [ext_of_mem _ hy]; rfl
  have hk : ((kapG P v : SmQ P.r P.TT) : Qp P.r P.TT → ℂ) x =
      coordE v x.1 * wirt v (ext (GQ P : Qp P.r P.TT → ℂ)) x.1 * ((Gr P x.1 : ℝ) : ℂ)⁻¹ := by
    show ((eulerQ v (GQ P) : SmQ P.r P.TT) : Qp P.r P.TT → ℂ) x *
      ((Ring.inverse (GQ P) : SmQ P.r P.TT) : Qp P.r P.TT → ℂ) x = _
    rw [ev_inverse P _ (GQ_unit P), eulerQ_apply]; rfl
  show ((eulerQ v (Phi P φ n) : SmQ P.r P.TT) : Qp P.r P.TT → ℂ) x =
    (Phi P φ (n + 1) : Qp P.r P.TT → ℂ) x * ((kapG P v : SmQ P.r P.TT) : Qp P.r P.TT → ℂ) x
  rw [hk, eulerQ_apply, wirt_congr v e1, wirt_congr v e2, wirt_eq, wirt_eq]
  simp only []
  rw [h2.fderiv, h3.fderiv]
  have e3 := ev_Phi P hφ (n + 1) x
  simp only [evQ] at e3
  rw [e3]
  simp only [WL_apply, ContinuousLinearMap.coe_comp, Function.comp_apply, ContinuousLinearMap.smul_apply,
    Complex.ofRealCLM_apply, smul_eq_mul, Complex.ofReal_mul, Complex.ofReal_inv]
  have hGx : ((Gr P x.1 : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (Gq_pos P x).ne'
  have hGG : Gq P x = Gr P x.1 := rfl
  unfold LE.ld
  rw [hGG]
  field_simp

def IsJ (F : (ℝ → ℝ) → SmQ P.r P.TT) : Prop :=
  ∃ (n : ℕ) (qs : Fin n → ℕ) (c : Fin n → SmQ P.r P.TT), ∀ φ, LE.SmoothLog φ → F φ = ∑ t, Phi P φ (qs t) * c t

theorem isJ_zero : IsJ P (fun _ => 0) := ⟨0, Fin.elim0, Fin.elim0, fun φ _ => by simp⟩

theorem isJ_add {F G : (ℝ → ℝ) → SmQ P.r P.TT} (hF : IsJ P F) (hG : IsJ P G) : IsJ P (fun φ => F φ + G φ) := by
  obtain ⟨n, qs, c, h⟩ := hF
  obtain ⟨m, qs', c', h'⟩ := hG
  refine ⟨n + m, Fin.append qs qs', Fin.append c c', fun φ hφ => ?_⟩
  beta_reduce
  rw [h φ hφ, h' φ hφ, Fin.sum_univ_add]
  simp [Fin.append_left, Fin.append_right]

theorem isJ_smul (z : ℂ) {F : (ℝ → ℝ) → SmQ P.r P.TT} (hF : IsJ P F) : IsJ P (fun φ => z • F φ) := by
  obtain ⟨n, qs, c, h⟩ := hF
  refine ⟨n, qs, fun t => z • c t, fun φ hφ => ?_⟩
  beta_reduce
  rw [h φ hφ, Finset.smul_sum]
  simp [mul_smul_comm]

theorem isJ_mul (g : SmQ P.r P.TT) {F : (ℝ → ℝ) → SmQ P.r P.TT} (hF : IsJ P F) : IsJ P (fun φ => g * F φ) := by
  obtain ⟨n, qs, c, h⟩ := hF
  refine ⟨n, qs, fun t => g * c t, fun φ hφ => ?_⟩
  beta_reduce
  rw [h φ hφ, Finset.mul_sum]
  exact Finset.sum_congr rfl fun t _ => by ring

theorem isJ_sum {ι : Type} (s : Finset ι) (F : ι → (ℝ → ℝ) → SmQ P.r P.TT) (h : ∀ i ∈ s, IsJ P (F i)) :
    IsJ P (fun φ => ∑ i ∈ s, F i φ) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using isJ_zero P
  | insert a s ha ih =>
    simp_rw [Finset.sum_insert ha]
    exact isJ_add P (h a (Finset.mem_insert_self _ _)) (ih fun i hi => h i (Finset.mem_insert_of_mem hi))

theorem isJ_euler (v : M.Var P.r) {F : (ℝ → ℝ) → SmQ P.r P.TT} (hF : IsJ P F) :
    IsJ P (fun φ => eulerQ v (F φ)) := by
  obtain ⟨n, qs, c, h⟩ := hF
  refine ⟨n + n, Fin.append (fun t => qs t + 1) qs, Fin.append (fun t => kapG P v * c t) (fun t => eulerQ v (c t)),
    fun φ hφ => ?_⟩
  beta_reduce

  rw [h φ hφ, map_sum, Fin.sum_univ_add]
  simp only [Fin.append_left, Fin.append_right]
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun t _ => ?_
  rw [Formalism.FourierDecayAlt.P.analytic_leibniz, euler_Phi P hφ]
  ring

def okSub : Subalgebra ℂ (Module.End ℂ (SmQ P.r P.TT)) where
  carrier := {T | ∀ F, IsJ P F → IsJ P (fun φ => T (F φ))}
  mul_mem' {a b} ha hb F hF := ha _ (hb F hF)
  add_mem' {a b} ha hb F hF := isJ_add P (ha F hF) (hb F hF)
  algebraMap_mem' z F hF := by
    show IsJ P (fun φ => (algebraMap ℂ (Module.End ℂ (SmQ P.r P.TT)) z) (F φ))
    simp only [Module.algebraMap_end_apply]
    exact isJ_smul P z hF

theorem mulOp_mem (g : SmQ P.r P.TT) : (DQ P).mulOp g ∈ okSub P := fun F hF => isJ_mul P g hF

theorem euler_mem (v : M.Var P.r) : (DQ P).ev v ∈ okSub P := fun F hF => isJ_euler P v hF

def prSub : Subalgebra ℂ (DQ P).Pr where
  carrier := {a | a.1 ∈ okSub P}
  mul_mem' {a b} ha hb := by show a.1 * b.1 ∈ okSub P; exact mul_mem ha hb
  add_mem' {a b} ha hb := by show a.1 + b.1 ∈ okSub P; exact add_mem ha hb
  algebraMap_mem' z := Subalgebra.algebraMap_mem (okSub P) z

theorem gens_sub : (DQ P).gens P.TT ⊆ prSub P := by
  intro a ha
  simp only [DAlg.gens, Set.mem_union, Set.mem_range, Set.mem_insert_iff, Set.mem_singleton_iff] at ha
  rcases ha with ((((((⟨l, rfl⟩ | ⟨l, rfl⟩) | ⟨l, rfl⟩) | ⟨l, rfl⟩) | ⟨l, rfl⟩) | ⟨l, rfl⟩) | h)
  · exact mulOp_mem P _
  · exact mulOp_mem P _
  · exact mulOp_mem P _
  · exact mulOp_mem P _
  · exact euler_mem P _
  · exact euler_mem P _
  · rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact mulOp_mem P _
    · exact mulOp_mem P _
    · exact mulOp_mem P _
    · exact mulOp_mem P _
    · exact mulOp_mem P _
    · exact mulOp_mem P _
    · exact mul_mem (mulOp_mem P _) (euler_mem P _)
    · exact mul_mem (mulOp_mem P _) (euler_mem P _)

end

end Formalism.FourierDecayAlt.P.MAx2.Jet

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false

namespace Formalism.FourierDecayAlt.P.MAx2.Jet

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.MA Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.Fr

noncomputable section

def matSub {R : Type} [Ring R] [Algebra ℂ R] (S : Subalgebra ℂ R) (n : Type) [Fintype n] [DecidableEq n] :
    Subalgebra ℂ (Matrix n n R) where
  carrier := {M | ∀ i j, M i j ∈ S}
  mul_mem' {a b} ha hb i j := by
    rw [Matrix.mul_apply]; exact Subalgebra.sum_mem _ fun k _ => mul_mem (ha i k) (hb k j)
  add_mem' {a b} ha hb i j := add_mem (ha i j) (hb i j)
  algebraMap_mem' z i j := by
    rw [Matrix.algebraMap_matrix_apply]
    split_ifs
    · exact S.algebraMap_mem z
    · exact S.zero_mem

section Gen
variable {R : Type} [Ring R] [Algebra ℂ R] (S : Subalgebra ℂ R) {n : Type} [Fintype n] [DecidableEq n]

theorem mem_matSub {M : Matrix n n R} : M ∈ matSub S n ↔ ∀ i j, M i j ∈ S := Iff.rfl

theorem diag_mem (d : n → R) (h : ∀ i, d i ∈ S) : Matrix.diagonal d ∈ matSub S n := fun i j => by
  rw [Matrix.diagonal_apply]; split_ifs
  · exact h i
  · exact S.zero_mem

theorem scalar_mem (x : R) (h : x ∈ S) : Matrix.scalar n x ∈ matSub S n := by
  rw [Matrix.scalar_apply]; exact diag_mem S _ fun _ => h

theorem matrix_two_mem_sub (a b c d : R) (ha : a ∈ S) (hb : b ∈ S) (hc : c ∈ S) (hd : d ∈ S) :
    !![a, b; c, d] ∈ matSub S (Fin 2) := by
  intro i j; fin_cases i <;> fin_cases j <;> simpa

end Gen

variable (P : M.Par)

abbrev TS : Subalgebra ℂ (A P (DQ P)) := matSub (prSub P) (M.Ty P)

theorem gen_mem {a : (DQ P).Pr} (h : a ∈ (DQ P).gens P.TT) : a ∈ prSub P := gens_sub P h

theorem sc_mem {w : (DQ P).Pr} (h : w ∈ prSub P) : sc P (DQ P) w ∈ TS P := scalar_mem _ _ h

theorem kap_mem (f : M.Ty P → ℂ) : kap P (DQ P) f ∈ TS P :=
  diag_mem _ _ fun _ => Subalgebra.algebraMap_mem _ _

theorem SS_mem (i : ℕ) : SS P (DQ P) i ∈ TS P := fun π π' => by
  simp only [SS, Matrix.of_apply]
  split_ifs
  · exact Subalgebra.algebraMap_mem _ _
  · exact Subalgebra.zero_mem _

section Lev
variable {L : LevelData (A P (DQ P)) P.r} (hL : IsModelLevel P (DQ P) L)
include hL

theorem lev_mem : (∀ l, L.p l ∈ TS P) ∧ (∀ l, L.pb l ∈ TS P) ∧ (∀ l, L.c l ∈ TS P) ∧ (∀ l, L.ci l ∈ TS P) ∧
    (∀ l, L.cb l ∈ TS P) ∧ (∀ l, L.cbi l ∈ TS P) ∧ L.ζ ∈ TS P ∧ L.ζi ∈ TS P ∧ L.ζb ∈ TS P ∧ L.ζbi ∈ TS P ∧
    L.GG ∈ TS P ∧ L.GGi ∈ TS P ∧ L.nab ∈ TS P ∧ L.nabs ∈ TS P := by
  obtain ⟨hp, hpb, hc, hci, hcb, hcbi, hz, hzi, hzb, hzbi, hg, hgi, hn, hns, -⟩ := hL
  have gm : ∀ a ∈ (DQ P).gens P.TT, sc P (DQ P) a ∈ TS P := fun a ha => sc_mem P (gen_mem P ha)
  refine ⟨fun l => ?_, fun l => ?_, fun l => ?_, fun l => ?_, fun l => ?_, fun l => ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hp]; exact gm _ (Or.inl (Or.inl (Or.inr ⟨l, rfl⟩)))
  · rw [hpb]; exact gm _ (Or.inl (Or.inr ⟨l, rfl⟩))
  · rw [hc]; exact gm _ (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl ⟨l, rfl⟩))))))
  · rw [hci]; exact gm _ (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inr ⟨l, rfl⟩))))))
  · rw [hcb]; exact gm _ (Or.inl (Or.inl (Or.inl (Or.inl (Or.inr ⟨l, rfl⟩)))))
  · rw [hcbi]; exact gm _ (Or.inl (Or.inl (Or.inl (Or.inr ⟨l, rfl⟩))))
  · rw [hz]; exact gm _ (Or.inr (Or.inl rfl))
  · rw [hzi]; exact gm _ (Or.inr (Or.inr (Or.inl rfl)))
  · rw [hzb]; exact gm _ (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  · rw [hzbi]; exact gm _ (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  · rw [hg]; exact gm _ (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  · rw [hgi]; exact gm _ (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))
  · rw [hn]
    refine diag_mem _ _ fun π => add_mem (gen_mem P (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))) (Subalgebra.smul_mem _
      (mul_mem (gen_mem P (Or.inr (Or.inr (Or.inr (Or.inl rfl))))) (gen_mem P (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))) _)
  · rw [hns]
    refine diag_mem _ _ fun π => add_mem (neg_mem (gen_mem P (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr rfl)))))))))) (Subalgebra.smul_mem _
      (mul_mem (gen_mem P (Or.inr (Or.inl rfl))) (gen_mem P (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))) _)

theorem Dr_mem : L.Dr ∈ TS P ∧ L.Drb ∈ TS P ∧ L.Dri ∈ TS P ∧ L.Drbi ∈ TS P := by
  obtain ⟨hp, hpb, hc, hci, hcb, hcbi, -⟩ := lev_mem P hL
  refine ⟨Subalgebra.list_prod_mem _ fun x hx => ?_, Subalgebra.list_prod_mem _ fun x hx => ?_,
    Subalgebra.list_prod_mem _ fun x hx => ?_, Subalgebra.list_prod_mem _ fun x hx => ?_⟩ <;>
  · obtain ⟨l, rfl⟩ := List.mem_ofFn.1 hx
    first | exact hc l | exact hcb l | exact hci l | exact hcbi l

theorem Tprod_mem (Y : ℂ) : L.Tprod Y ∈ matSub (TS P) (Fin 2) ∧ L.Tvprod Y ∈ matSub (TS P) (Fin 2) := by
  obtain ⟨hp, hpb, hc, hci, hcb, hcbi, -⟩ := lev_mem P hL
  refine ⟨Subalgebra.list_prod_mem _ fun x hx => ?_, Subalgebra.list_prod_mem _ fun x hx => ?_⟩
  · obtain ⟨l, rfl⟩ := List.mem_ofFn.1 (List.mem_reverse.1 hx)
    exact matrix_two_mem_sub _ _ _ _ _ (add_mem (Subalgebra.algebraMap_mem _ _) (hp l)) (neg_mem (hc l)) (hci l)
      (Subalgebra.zero_mem _)
  · obtain ⟨l, rfl⟩ := List.mem_ofFn.1 (List.mem_reverse.1 hx)
    exact matrix_two_mem_sub _ _ _ _ _ (sub_mem (Subalgebra.algebraMap_mem _ _) (hpb l)) (neg_mem (hcb l)) (hcbi l)
      (Subalgebra.zero_mem _)

theorem hat_mem (Y : ℂ) : L.Di * L.Ahat Y ∈ TS P ∧ L.Dbi * L.R0 Y ∈ TS P := by
  obtain ⟨-, -, -, -, -, -, hz, hzi, hzb, hzbi, hg, hgi, hn, hns⟩ := lev_mem P hL
  obtain ⟨d1, d2, d3, d4⟩ := Dr_mem P hL
  have hT := (Tprod_mem P hL Y).1
  have hA : L.Ar Y ∈ TS P := hT 0 0
  have hB : L.Br Y ∈ TS P := hT 1 0
  refine ⟨mul_mem (mul_mem hzi d3) (mul_mem d1 hA), mul_mem (mul_mem hzbi d4) (mul_mem (mul_mem d2 hg) (add_mem
    (mul_mem (sub_mem (neg_mem hn) (mul_mem (Subalgebra.algebraMap_mem _ _) (mul_mem hzb hgi))) hA) hB))⟩

end Lev

section SlopeTestRemainingChoices
variable {S : Type} [Fintype S] [DecidableEq S]

abbrev US (S : Type) [Fintype S] [DecidableEq S] : Subalgebra ℂ (SlopeTestRemainingChoices S (A P (DQ P))) := matSub (TS P) (Ix S)

theorem io_mem {x : A P (DQ P)} (h : x ∈ TS P) : (io x : SlopeTestRemainingChoices S (A P (DQ P))) ∈ US P S := scalar_mem _ _ h

theorem eU_mem (a : S) (i j : Fin 2) : (eU a i j : SlopeTestRemainingChoices S (A P (DQ P))) ∈ US P S := fun x y => by
  simp only [eU, Matrix.of_apply]
  split_ifs
  · exact Subalgebra.one_mem _
  · exact Subalgebra.zero_mem _

theorem ins_mem (a : S) (M : Matrix (Fin 2) (Fin 2) (SlopeTestRemainingChoices S (A P (DQ P)))) (h : ∀ i j, M i j ∈ US P S) :
    ins a M ∈ US P S :=
  Subalgebra.sum_mem _ fun i _ => Subalgebra.sum_mem _ fun j _ => mul_mem (eU_mem P a i j) (h i j)

theorem insert_matrix_mem (a : S) (x y z w : SlopeTestRemainingChoices S (A P (DQ P))) (hx : x ∈ US P S) (hy : y ∈ US P S) (hz : z ∈ US P S)
    (hw : w ∈ US P S) : ins a !![x, y; z, w] ∈ US P S :=
  ins_mem P a _ (matrix_two_mem_sub (US P S) x y z w hx hy hz hw)

theorem frame_mem (l : ℕ) {L : LevelData (A P (DQ P)) P.r} (hL : IsModelLevel P (DQ P) L) :
    ∀ w : List (Letter ℂ S), (∀ Y, (ofWord L (startM P (DQ P) l) w).ee Y ∈ US P S) ∧
      (∀ Y, (ofWord L (startM P (DQ P) l) w).x Y ∈ US P S) ∧ (∀ Y, (ofWord L (startM P (DQ P) l) w).xi Y ∈ US P S) := by
  intro w
  induction w with
  | nil =>
    refine ⟨fun Y => io_mem P ?_, fun Y => io_mem P (kap_mem P _), fun Y => io_mem P (kap_mem P _)⟩
    show eeA P (DQ P) Y ∈ TS P
    refine mul_mem (mul_mem (sc_mem P (gen_mem P (Or.inr (Or.inl rfl)))) (sc_mem P (gen_mem P (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))
      (Subalgebra.sum_mem _ fun j _ => mul_mem (kap_mem P _) (SS_mem P j))
  | cons lt w ih =>
    obtain ⟨he, hx, hxi⟩ := ih
    obtain ⟨-, -, -, -, -, -, hz, hzi, hzb, hzbi, hg, hgi, hn, hns⟩ := lev_mem P hL
    have htz : (tz L : SlopeTestRemainingChoices S (A P (DQ P))) ∈ US P S := io_mem P (Subalgebra.smul_mem _ hzbi _)
    have hDD : ∀ Y Ya, (ofWord L (startM P (DQ P) l) w).DD Y Ya ∈ US P S := fun Y Ya =>
      Subalgebra.smul_mem _ (sub_mem (he Y) (he Ya)) _
    have h1 : (1 : SlopeTestRemainingChoices S (A P (DQ P))) ∈ US P S := Subalgebra.one_mem _
    have h0 : (0 : SlopeTestRemainingChoices S (A P (DQ P))) ∈ US P S := Subalgebra.zero_mem _
    simp only [ofWord]
    split_ifs
    · refine ⟨fun Y => ?_, fun Y => ?_, fun Y => ?_⟩
      · exact insert_matrix_mem P _ _ _ _ _ (add_mem (sub_mem (he Y) (hDD Y _)) htz) (neg_mem (Subalgebra.smul_mem _ h1 _)) h0
          (mul_mem (mul_mem (hxi _) (he Y)) (hx _))
      · exact mul_mem (hx Y) (insert_matrix_mem P _ _ _ _ _ (Subalgebra.smul_mem _ h1 _) h0 h0 h1)
      · exact mul_mem (hxi Y) (insert_matrix_mem P _ _ _ _ _ (Subalgebra.smul_mem _ h1 _) h0 h0 h1)
    · refine ⟨fun Y => ?_, fun Y => ?_, fun Y => ?_⟩
      · exact insert_matrix_mem P _ _ _ _ _ (he Y) h0 (neg_mem (Subalgebra.smul_mem _ (mul_mem (hxi _) (hxi _)) _))
          (add_mem (sub_mem (mul_mem (mul_mem (hxi _) (he Y)) (hx _)) (hDD Y _)) htz)
      · exact mul_mem (hx Y) (insert_matrix_mem P _ _ _ _ _ (Subalgebra.smul_mem _ h1 _) h0 h0 h1)
      · exact mul_mem (hxi Y) (insert_matrix_mem P _ _ _ _ _ (Subalgebra.smul_mem _ h1 _) h0 h0 h1)

end SlopeTestRemainingChoices

theorem g_mem (l : ℕ) {L : LevelData (A P (DQ P)) P.r} (hL : IsModelLevel P (DQ P) L) (w : List ℝ) (Y : ℝ) :
    g1 P L w Y ∈ US P (Fin w.length) ∧ g2 P l L w Y ∈ US P (Fin w.length) := by
  obtain ⟨h1, h2⟩ := hat_mem P hL (Y : ℂ)
  refine ⟨io_mem P h1, add_mem (io_mem P h2) (mul_mem ((frame_mem P l hL (wordP w)).1 _) (io_mem P h1))⟩

end

end Formalism.FourierDecayAlt.P.MAx2.Jet

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false

namespace Formalism.FourierDecayAlt.P.MAx2.Jet

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.MA Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.Fr

noncomputable section

variable (P : M.Par)

def JF (N : ℕ) (X : (ℝ → ℝ) → Qp P.r P.TT → Iota P N → ℂ) : Prop :=
  ∀ i, ∃ F : (ℝ → ℝ) → SmQ P.r P.TT, IsJ P F ∧ ∀ φ, LE.SmoothLog φ → ∀ x, X φ x i = evQ P (F φ) x

theorem toSm_ev (f : SmQ P.r P.TT) : toSm P (evQ P f) = f := by
  unfold toSm; rw [dif_pos (show evQ P f ∈ smSub P.r P.TT from f.2)]; rfl

theorem evQ_sum {ι : Type} (s : Finset ι) (f : ι → SmQ P.r P.TT) (x : Qp P.r P.TT) :
    evQ P (∑ i ∈ s, f i) x = ∑ i ∈ s, evQ P (f i) x := by
  classical
  induction s using Finset.induction_on with
  | empty => rfl
  | insert a s ha ih => rw [Finset.sum_insert ha, Finset.sum_insert ha, ← ih]; rfl

theorem evQ_mul (f g : SmQ P.r P.TT) (x : Qp P.r P.TT) : evQ P (f * g) x = evQ P f x * evQ P g x := rfl

theorem apply_matrix_jet_family {N : ℕ} (b : SlopeTestRemainingChoices (Fin N) (A P (DQ P))) (hb : b ∈ US P (Fin N))
    {X : (ℝ → ℝ) → Qp P.r P.TT → Iota P N → ℂ} (hX : JF P N X) :
    JF P N (fun φ => wordModuleApply P b (X φ)) := by
  intro i
  choose F hF hXF using hX
  refine ⟨fun φ => ∑ e', ∑ π', ((b (ixOf P N i).1 e') (ixOf P N i).2 π').1 (F (iotaOf P N e' π') φ), ?_, ?_⟩
  · exact isJ_sum P _ _ fun e' _ => isJ_sum P _ _ fun π' _ => (hb _ _ _ _) _ (hF _)
  · intro φ hφ x
    have e : ∀ e' π', toSm P (fun q' => X φ q' (iotaOf P N e' π')) = F (iotaOf P N e' π') φ := fun e' π' => by
      have : (fun q' => X φ q' (iotaOf P N e' π')) = evQ P (F (iotaOf P N e' π') φ) := funext (hXF _ φ hφ)
      rw [this, toSm_ev]
    simp only [wordModuleApply, e]
    rw [evQ_sum]
    exact Finset.sum_congr rfl fun e' _ => (evQ_sum P _ _ x).symm

theorem gL_JF (l : ℕ) {L : LevelData (A P (DQ P)) P.r} (hL : IsModelLevel P (DQ P) L) (w : List ℝ) (Y : ℝ)
    {X : (ℝ → ℝ) → Qp P.r P.TT → Iota P w.length → ℂ} (hX : JF P w.length X) :
    JF P (w.length + 1) (fun φ => gL P l L w Y (X φ)) := by
  rintro ⟨b, i⟩
  cases b
  · obtain ⟨F, hF, h⟩ := apply_matrix_jet_family P _ (g_mem P l hL w Y).1 hX i
    exact ⟨F, hF, fun φ hφ x => h φ hφ x⟩
  · obtain ⟨F, hF, h⟩ := apply_matrix_jet_family P _ (g_mem P l hL w Y).2 hX i
    exact ⟨F, hF, fun φ hφ x => h φ hφ x⟩

theorem Xw_JF (l : ℕ) {L : LevelData (A P (DQ P)) P.r} (hL : IsModelLevel P (DQ P) L)
    {u : (ℝ → ℝ) → Qp P.r P.TT → M.Ty P → ℂ} (hu : JF P 0 u) :
    ∀ w : List ℝ, JF P w.length (fun φ => Xw P l L (u φ) w)
  | [] => hu
  | Y :: w => gL_JF P l hL w Y (Xw_JF l hL hu w)

theorem base_JF (j : M.Ty P → SmQ P.r P.TT) : JF P 0 (fun φ => LE.mulF (baseQ P) φ (ju P j)) := by
  intro π
  refine ⟨fun φ => Phi P φ 0 * j π, ⟨1, fun _ => 0, fun _ => j π, fun φ hφ => by simp⟩, fun φ hφ x => ?_⟩
  rw [evQ_mul, ev_Phi P hφ]
  simp only [LE.mulF, ju, LE.ld, iteratedDeriv_zero, Real.exp_log (Gq_pos P x)]
  rfl

theorem famJet (l : ℕ) (L : LevelData (A P (DQ P)) P.r) (hL : IsModelLevel P (DQ P) L) (j : M.Ty P → SmQ P.r P.TT)
    (lam : Fin (P.k + 2 * P.r + 1) → ℝ) (α β Lb : ℝ) (c : LE.Cut) (Ntot N : ℕ) :
    ((sysQ P l L j lam α β Lb c Ntot).fam N).Jet := by
  intro Y _
  have hX := Xw_JF P l hL (base_JF P j) (List.ofFn Y)
  have hJ : ∀ a : Iota P N, ∃ (n : ℕ) (qs : Fin n → ℕ) (cc : Fin n → SmQ P.r P.TT), ∀ φ, LE.SmoothLog φ →
      ∀ x, Xw P l L (LE.mulF (baseQ P) φ (ju P j)) (List.ofFn Y) x (cast (iota_len P N Y) a) =
        ∑ t, ((LE.ld (qs t) φ (Gq P x) : ℝ) : ℂ) * evQ P (cc t) x := by
    intro a
    obtain ⟨F, ⟨n, qs, cc, hF⟩, h⟩ := hX (cast (iota_len P N Y) a)
    refine ⟨n, qs, cc, fun φ hφ x => ?_⟩
    refine (h φ hφ x).trans ?_
    rw [hF φ hφ, evQ_sum]
    exact Finset.sum_congr rfl fun t _ => by rw [evQ_mul, ev_Phi P hφ]
  choose n qs cc hcc using hJ
  refine ⟨Finset.univ.sup fun a => Finset.univ.sup (qs a),
    fun q ω a => ∑ t ∈ Finset.univ.filter (fun t => qs a t = q), evQ P (cc a t) ω, fun φ hφ ω a => ?_⟩
  show Xw P l L (LE.mulF (baseQ P) φ (ju P j)) (List.ofFn Y) ω (cast (iota_len P N Y) a) = _
  rw [hcc a φ hφ ω]
  have hmaps : ∀ t ∈ (Finset.univ : Finset (Fin (n a))),
      qs a t ∈ Finset.range ((Finset.univ.sup fun a => Finset.univ.sup (qs a)) + 1) := fun t _ =>
    Finset.mem_range.2 (Nat.lt_succ_of_le ((Finset.le_sup (f := qs a) (Finset.mem_univ t)).trans
      (Finset.le_sup (f := fun a => Finset.univ.sup (qs a)) (Finset.mem_univ a))))
  rw [← Finset.sum_fiberwise_of_maps_to hmaps]
  refine Finset.sum_congr rfl fun q _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun t ht => ?_
  rw [(Finset.mem_filter.1 ht).2]
  rfl

end

end Formalism.FourierDecayAlt.P.MAx2.Jet

namespace Formalism.FourierDecayAlt.P

theorem family_restriction : Formalism.FourierDecayAlt.MA.FamRestQ := by
  intro P l L j lam α β Lb c Ntot hH N hN
  exact ⟨MAx2.famPos P l L j lam α β Lb c Ntot hH N hN,
    MAx2.Jet.famJet P l L hH.1.2.2.2.1 j lam α β Lb c Ntot N⟩

end Formalism.FourierDecayAlt.P

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false

namespace Formalism.FourierDecayAlt.P.MAx2.J0

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.MA Formalism.FourierDecayAlt.P.MAx1.An MeasureTheory
open scoped ComplexConjugate

noncomputable section

variable {τ : ℝ}

abbrev S (τ : ℝ) := SmQ 0 τ
def z : S τ := coordQ M.vz
def gg : S τ := (anQ 0 τ).gg τ
def th : Module.End ℂ (S τ) := eulerQ M.vz
def thb : Module.End ℂ (S τ) := eulerQ M.vzb

def ev (f : S τ) (q : Qp 0 τ) : ℂ := f.1 q

theorem S_ext {f g : S τ} (h : ∀ q, ev f q = ev g q) : f = g := Subtype.ext (funext h)

theorem ev_gg (q) : ev (gg : S τ) q = q.1.2 * conj q.1.2 - τ := by
  have := gg_apply (r := 0) (TT := τ) q
  rw [coordE_vz, coordE_vzb] at this
  exact this

def GR (q : Qp 0 τ) : ℝ := Complex.normSq q.1.2 - τ

theorem ext_conj (f : Qp 0 τ → ℂ) : ext (fun q => conj (f q)) = fun x => Complex.conjCLE (ext f x) := by
  funext x; by_cases hx : x ∈ Qset 0 τ <;> simp [ext, hx]

def cj (f : S τ) : S τ := ⟨fun q => conj (f.1 q), by
  show ContDiffOn ℝ sm (ext fun q => conj (f.1 q)) (Qset 0 τ)
  rw [ext_conj]
  exact Complex.conjCLE.contDiff.comp_contDiffOn f.2⟩

@[simp] theorem ev_cj (f : S τ) (q) : ev (cj f) q = conj (ev f q) := rfl

theorem cj_mul (f g : S τ) : cj (f * g) = cj f * cj g :=
  S_ext fun q => (starRingEnd ℂ).map_mul (ev f q) (ev g q)
theorem cj_add (f g : S τ) : cj (f + g) = cj f + cj g :=
  S_ext fun q => (starRingEnd ℂ).map_add (ev f q) (ev g q)
theorem cj_gg : cj (gg : S τ) = gg := S_ext fun q => by simp [ev_gg, mul_comm]

instance haarE : (volume : Measure (E 0)).IsAddHaarMeasure :=
  Measure.prod.instIsAddHaarMeasure (volume : Measure (Fin 0 → ℂ)) (volume : Measure ℂ)

end

end Formalism.FourierDecayAlt.P.MAx2.J0

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false

namespace Formalism.FourierDecayAlt.P.MAx2.J0

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.MA Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.P.MAx1.An MeasureTheory Finset
open scoped ComplexConjugate

noncomputable section

section Act
variable (P : M.Par)

def Phi : (DQ P).Pr →+* Module.End ℂ (SmQ P.r P.TT) :=
  RingHom.fst (Module.End ℂ (SmQ P.r P.TT)) (Module.End ℂ (SmQ P.r P.TT))ᵐᵒᵖ
theorem actA_eq (a : A P (DQ P)) (f π) : actA P a f π = ∑ π', Phi P (a π π') (f π') := rfl

theorem act_mul (a b : A P (DQ P)) (f) : actA P (a * b) f = actA P a (actA P b f) := by
  funext π

  simp only [actA_eq, Matrix.mul_apply, map_sum, map_mul, LinearMap.sum_apply, Module.End.mul_apply]
  rw [Finset.sum_comm]
theorem act_diag (d : M.Ty P → (DQ P).Pr) (f π) : actA P (Matrix.diagonal d) f π = (d π).1 (f π) := by
  rw [actA_eq, Finset.sum_eq_single π (fun b _ hb => by rw [Matrix.diagonal_apply_ne _ hb.symm, map_zero]; rfl)
    (by simp), Matrix.diagonal_apply_eq]
  rfl
theorem act_one (f) : actA P 1 f = f := by
  funext π; rw [← Matrix.diagonal_one, act_diag]; rfl
theorem act_sc (w : (DQ P).Pr) (f π) : actA P (sc P (DQ P) w) f π = w.1 (f π) := act_diag P _ f π
theorem alg_fst (c : ℂ) (g : SmQ P.r P.TT) : (algebraMap ℂ (DQ P).Pr c).1 g = c • g := rfl
theorem act_alg (c : ℂ) (f π) : actA P (algebraMap ℂ (A P (DQ P)) c) f π = c • f π := by
  rw [Matrix.algebraMap_eq_diagonal, act_diag]; rfl
end Act

variable {τ : ℝ}

variable {k : ℕ} {T T' : ℝ} {uu uu' : ℕ → ℝ}

end

end Formalism.FourierDecayAlt.P.MAx2.J0

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false

namespace Formalism.FourierDecayAlt.P.MAx2.J0

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.MA Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.P.MAx1.An MeasureTheory Finset
open scoped ComplexConjugate

noncomputable section

variable {τ : ℝ}

def Bdd (δ : ℝ) (β : S τ) : Prop := ∃ C, 0 ≤ C ∧ ∀ q, δ < GR q → ‖ev β q‖ ≤ C
def Good (δ : ℝ) (β : S τ) : Prop := Bdd δ β ∧ Bdd δ (th β) ∧ Bdd δ (thb β)

end

end Formalism.FourierDecayAlt.P.MAx2.J0

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false

namespace Formalism.FourierDecayAlt.P.MAx2.J0

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.MA Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.P.MAx1.An MeasureTheory Finset
open scoped ComplexConjugate

noncomputable section

variable {τ : ℝ}

theorem inner_eq_integral_alt (f g : S τ) : ip0 f g = ∫ q, ev (f * cj g) q ∂mu0 0 τ := rfl

variable {k : ℕ} {T T' : ℝ} {uu uu' : ℕ → ℝ}

end

end Formalism.FourierDecayAlt.P.MAx2.J0

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false

namespace Formalism.FourierDecayAlt.P.MAx2.Adj

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.MA Formalism.FourierDecayAlt.P.MAx1.An MeasureTheory
open scoped ComplexConjugate

noncomputable section

variable {r : ℕ} {TT : ℝ}

theorem ext_conj (f : Qp r TT → ℂ) : ext (fun q => conj (f q)) = fun x => conj (ext f x) := by
  funext x; by_cases hx : x ∈ Qset r TT <;> simp [ext, hx]

theorem ext_add (f g : Qp r TT → ℂ) : ext (f + g) = ext f + ext g := by
  funext x; by_cases hx : x ∈ Qset r TT <;> simp [ext, hx]

theorem ext_out (f : Qp r TT → ℂ) {x : E r} (hx : x ∉ Qset r TT) : ext f x = 0 := by
  simp [ext, hx]

def cj (f : SmQ r TT) : SmQ r TT :=
  ⟨fun q => conj ((f : Qp r TT → ℂ) q), by
    show ContDiffOn ℝ sm (ext fun q => conj ((f : Qp r TT → ℂ) q)) (Qset r TT)
    rw [ext_conj]
    exact (Complex.conjCLE.contDiff.comp_contDiffOn
      (f.2 : ContDiffOn ℝ sm (ext (f : Qp r TT → ℂ)) (Qset r TT))).congr fun x _ => by simp⟩

theorem cj_apply (f : SmQ r TT) (q : Qp r TT) : ((cj f : SmQ r TT) : Qp r TT → ℂ) q = conj ((f : Qp r TT → ℂ) q) :=
  rfl

theorem S_ext {f g : SmQ r TT} (h : ∀ q, (f : Qp r TT → ℂ) q = (g : Qp r TT → ℂ) q) : f = g :=
  Subtype.ext (funext h)

theorem cj_mul (f g : SmQ r TT) : cj (f * g) = cj f * cj g := S_ext fun q => by
  simp [cj_apply]

theorem test_zero_near {f : SmQ r TT} {x : E r} (hx : x ∉ tsupport (ext (f : Qp r TT → ℂ))) :
    ext (f : Qp r TT → ℂ) =ᶠ[nhds x] 0 :=
  notMem_tsupport_iff_eventuallyEq.1 hx

theorem test_contDiff {f : SmQ r TT} (hf : f ∈ Test r TT) : ContDiff ℝ sm (ext (f : Qp r TT → ℂ)) := by
  rw [contDiff_iff_contDiffAt]
  intro x
  by_cases hx : x ∈ Qset r TT
  · exact (f.2 : ContDiffOn ℝ sm (ext (f : Qp r TT → ℂ)) (Qset r TT)).contDiffAt ((Qset_open r TT).mem_nhds hx)
  · have h1 : x ∉ tsupport (ext (f : Qp r TT → ℂ)) := fun h => hx (hf.2 h)
    exact (contDiffAt_const (c := (0 : ℂ))).congr_of_eventuallyEq (test_zero_near h1)

theorem test_integrable {f : SmQ r TT} (hf : f ∈ Test r TT) : Integrable (ext (f : Qp r TT → ℂ)) :=
  (test_contDiff hf).continuous.integrable_of_hasCompactSupport hf.1

theorem test_mul_left (g : SmQ r TT) {f : SmQ r TT} (hf : f ∈ Test r TT) : g * f ∈ Test r TT := by
  have he : ext ((g * f : SmQ r TT) : Qp r TT → ℂ) = ext (g : Qp r TT → ℂ) * ext (f : Qp r TT → ℂ) := by
    rw [Subalgebra.coe_mul, ext_mul]
  refine ⟨?_, ?_⟩
  · rw [he]; exact hf.1.mul_left
  · rw [he]; exact tsupport_mul_subset_right.trans hf.2

theorem test_mul_right {f : SmQ r TT} (hf : f ∈ Test r TT) (g : SmQ r TT) : f * g ∈ Test r TT := by
  rw [mul_comm]; exact test_mul_left g hf

theorem test_add {f g : SmQ r TT} (hf : f ∈ Test r TT) (hg : g ∈ Test r TT) : f + g ∈ Test r TT := by
  have he : ext ((f + g : SmQ r TT) : Qp r TT → ℂ) = ext (f : Qp r TT → ℂ) + ext (g : Qp r TT → ℂ) := by
    rw [Subalgebra.coe_add, ext_add]
  refine ⟨?_, ?_⟩
  · rw [he]; exact hf.1.add hg.1
  · rw [he]; exact (tsupport_add _ _).trans (Set.union_subset hf.2 hg.2)

theorem test_smul (c : ℂ) {f : SmQ r TT} (hf : f ∈ Test r TT) : c • f ∈ Test r TT := by
  rw [Algebra.smul_def]; exact test_mul_left _ hf

theorem test_neg {f : SmQ r TT} (hf : f ∈ Test r TT) : -f ∈ Test r TT := by
  rw [neg_eq_neg_one_mul]; exact test_mul_left _ hf

theorem test_zero : (0 : SmQ r TT) ∈ Test r TT := by
  have he : ext ((0 : SmQ r TT) : Qp r TT → ℂ) = 0 := by
    funext x; by_cases hx : x ∈ Qset r TT <;> simp [ext, hx]
  refine ⟨?_, ?_⟩
  · rw [he]; exact HasCompactSupport.zero
  · rw [he, tsupport_zero]; exact Set.empty_subset _

theorem test_sum {ι : Type*} (s : Finset ι) (f : ι → SmQ r TT) (hf : ∀ i ∈ s, f i ∈ Test r TT) :
    ∑ i ∈ s, f i ∈ Test r TT := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using test_zero
  | insert a s ha ih =>
    rw [Finset.sum_insert ha]
    exact test_add (hf a (Finset.mem_insert_self a s)) (ih fun i hi => hf i (Finset.mem_insert_of_mem hi))

theorem wirt_zero_of_near (v : M.Var r) {F : E r → ℂ} {x : E r} (h : F =ᶠ[nhds x] 0) : wirt v F x = 0 := by
  rw [wirt_congr v h]
  simp [wirt]

theorem test_euler (v : M.Var r) {f : SmQ r TT} (hf : f ∈ Test r TT) : eulerQ v f ∈ Test r TT := by
  have hs : Function.support (ext ((eulerQ v f : SmQ r TT) : Qp r TT → ℂ)) ⊆ tsupport (ext (f : Qp r TT → ℂ)) := by
    intro x hx
    by_contra hn
    apply hx
    by_cases hq : x ∈ Qset r TT
    · rw [ext_of_mem _ hq, eulerQ_apply]
      simp only
      rw [wirt_zero_of_near v (test_zero_near hn), mul_zero]
    · exact ext_out _ hq
  refine ⟨hf.1.mono' hs, ?_⟩
  exact (closure_minimal hs (isClosed_tsupport _)).trans hf.2

instance haarE : (volume : Measure (E r)).IsAddHaarMeasure := by
  have h1 : (volume : Measure ℂ).IsAddHaarMeasure := by infer_instance
  have h2 : (volume : Measure (Fin r → ℂ)).IsAddHaarMeasure := Measure.pi.isAddHaarMeasure _
  exact Measure.prod.instIsAddHaarMeasure (volume : Measure (Fin r → ℂ)) (volume : Measure ℂ)

theorem int_fderiv_zero {f : SmQ r TT} (hf : f ∈ Test r TT) (d : E r) :
    ∫ x, fderiv ℝ (ext (f : Qp r TT → ℂ)) x d = 0 := by
  have hF := test_contDiff hf
  have hdiff : Differentiable ℝ (ext (f : Qp r TT → ℂ)) := hF.differentiable (by simp [sm])
  have hcont : Continuous fun x => fderiv ℝ (ext (f : Qp r TT → ℂ)) x d :=
    (hF.continuous_fderiv (by simp [sm])).clm_apply continuous_const
  have hint : Integrable (fun x => fderiv ℝ (ext (f : Qp r TT → ℂ)) x d) :=
    hcont.integrable_of_hasCompactSupport (hf.1.fderiv_apply (𝕜 := ℝ) d)
  have key := integral_mul_fderiv_eq_neg_fderiv_mul_of_integrable (μ := (volume : Measure (E r)))
    (f := fun _ : E r => (1 : ℂ)) (g := ext (f : Qp r TT → ℂ)) (v := d)
    (by simp) (by simpa using hint) (by simpa using test_integrable hf)
    (fun x _ => differentiableAt_const _) (fun x _ => hdiff x)
  simpa using key

theorem int_wirt_zero (v : M.Var r) {f : SmQ r TT} (hf : f ∈ Test r TT) :
    ∫ x, wirt v (ext (f : Qp r TT → ℂ)) x = 0 := by
  have hF := test_contDiff hf
  have hint : ∀ d : E r, Integrable (fun x => fderiv ℝ (ext (f : Qp r TT → ℂ)) x d) := fun d =>
    ((hF.continuous_fderiv (by simp [sm])).clm_apply continuous_const).integrable_of_hasCompactSupport
      (hf.1.fderiv_apply (𝕜 := ℝ) d)
  unfold wirt
  rw [integral_const_mul, integral_add (hint _) ((hint _).const_mul _), integral_const_mul,
    int_fderiv_zero hf, int_fderiv_zero hf]
  simp

def dR (x : E r) : ℝ := ∏ l, (Complex.normSq (x.1 l))⁻¹

theorem density_measurable : Measurable (dens0 (r := r)) := by
  unfold dens0
  exact Finset.measurable_prod _ fun l _ => ENNReal.measurable_ofReal.comp
    ((Complex.continuous_normSq.comp ((continuous_apply l).comp continuous_fst)).measurable.inv)

theorem density_lt_top (x : E r) : dens0 x < ⊤ := by
  unfold dens0
  exact ENNReal.prod_lt_top fun l _ => ENNReal.ofReal_lt_top

theorem density_toReal (x : E r) : (dens0 x).toReal = dR x := by
  unfold dens0 dR
  rw [ENNReal.toReal_prod]
  exact Finset.prod_congr rfl fun l _ => ENNReal.toReal_ofReal (inv_nonneg.2 (Complex.normSq_nonneg _))

theorem integral_base_measure (F : Qp r TT → ℂ) : ∫ q, F q ∂mu0 r TT = ∫ x, ((dR x : ℝ) : ℂ) * ext F x := by
  have hQ : MeasurableSet (Qset r TT) := (Qset_open r TT).measurableSet
  have e1 : ∫ q, F q ∂mu0 r TT = ∫ q : Qp r TT, ext F (q : E r) ∂mu0 r TT := by
    congr 1; funext q; simp [ext, q.2]
  rw [e1, mu0, integral_subtype_comap hQ (fun x => ext F x),
    setIntegral_withDensity_eq_setIntegral_toReal_smul density_measurable (ae_of_all _ fun x => density_lt_top x) _ hQ,
    setIntegral_eq_integral_of_forall_compl_eq_zero (fun x hx => by simp [ext_out _ hx])]
  congr 1; funext x
  rw [Complex.real_smul, density_toReal]

def evq (q : Qp r TT) : SmQ r TT →+* ℂ :=
  (Pi.evalRingHom (fun _ : Qp r TT => ℂ) q).comp (smSub r TT).val.toRingHom

theorem evq_apply (q : Qp r TT) (f : SmQ r TT) : evq q f = (f : Qp r TT → ℂ) q := rfl

theorem inv_val (u : SmQ r TT) (hu : ∀ q, (u : Qp r TT → ℂ) q ≠ 0) (q : Qp r TT) :
    ((Ring.inverse u : SmQ r TT) : Qp r TT → ℂ) q = ((u : Qp r TT → ℂ) q)⁻¹ := by
  have h1 := congrArg (evq q) (Ring.mul_inverse_cancel u (isUnit_of_ne u hu))
  rw [map_mul, map_one, evq_apply, evq_apply] at h1
  exact (inv_eq_of_mul_eq_one_right h1).symm

theorem coordE_vc (l : Fin r) (x : E r) : coordE (M.vc l) x = x.1 l := by
  have h : ((ofLex (M.vc l : M.Var r)).1 : ℕ) < r := by simp [M.vc]
  unfold coordE zE
  rw [dif_pos h]
  simp [M.vc]

theorem coordE_vcb (l : Fin r) (x : E r) : coordE (M.vcb l) x = conj (x.1 l) := by
  have h : ((ofLex (M.vcb l : M.Var r)).1 : ℕ) < r := by simp [M.vcb]
  unfold coordE zE
  rw [dif_pos h]
  simp [M.vcb]

theorem coordE_vc_ne (l : Fin r) (q : Qp r TT) : coordE (M.vc l) q.1 ≠ 0 := by
  rw [coordE_vc]; exact q.2.1 l

theorem coordE_vcb_ne (l : Fin r) (q : Qp r TT) : coordE (M.vcb l) q.1 ≠ 0 := by
  rw [coordE_vcb]; simpa using q.2.1 l

def d0Q : SmQ r TT := ∏ l, Ring.inverse (coordQ (M.vc l)) * Ring.inverse (coordQ (M.vcb l))

theorem density_value (q : Qp r TT) : ((d0Q : SmQ r TT) : Qp r TT → ℂ) q = ((dR q.1 : ℝ) : ℂ) := by
  rw [← evq_apply, d0Q, map_prod]
  unfold dR
  push_cast
  refine Finset.prod_congr rfl fun l _ => ?_
  rw [map_mul, evq_apply, evq_apply, inv_val _ (fun q => coordE_vc_ne l q), inv_val _ (fun q => coordE_vcb_ne l q)]
  show (coordE (M.vc l) q.1)⁻¹ * (coordE (M.vcb l) q.1)⁻¹ = _
  rw [coordE_vc, coordE_vcb, ← mul_inv, Complex.mul_conj]

theorem dR_ext (Ψ : SmQ r TT) (x : E r) :
    ((dR x : ℝ) : ℂ) * ext (Ψ : Qp r TT → ℂ) x = ext ((Ψ * d0Q : SmQ r TT) : Qp r TT → ℂ) x := by
  by_cases hx : x ∈ Qset r TT
  · rw [ext_of_mem _ hx, ext_of_mem _ hx, Subalgebra.coe_mul, Pi.mul_apply, density_value]; ring
  · rw [ext_out _ hx, ext_out _ hx, mul_zero]

def IE (Ψ : SmQ r TT) : ℂ := ∫ x, ext (Ψ : Qp r TT → ℂ) x

theorem inner_eq_integral_alt (f g : SmQ r TT) : ip0 f g = IE (f * cj g * d0Q) := by
  unfold ip0 IE
  rw [integral_base_measure (fun q => (f : Qp r TT → ℂ) q * conj ((g : Qp r TT → ℂ) q))]
  congr 1; funext x
  exact dR_ext (f * cj g) x

theorem IE_add {Φ Ψ : SmQ r TT} (hΦ : Φ ∈ Test r TT) (hΨ : Ψ ∈ Test r TT) : IE (Φ + Ψ) = IE Φ + IE Ψ := by
  unfold IE
  rw [Subalgebra.coe_add, ext_add]
  exact integral_add (test_integrable hΦ) (test_integrable hΨ)

theorem inner_add_left_alt {f₁ f₂ : SmQ r TT} (h₁ : f₁ ∈ Test r TT) (h₂ : f₂ ∈ Test r TT) (g : SmQ r TT) :
    ip0 (f₁ + f₂) g = ip0 f₁ g + ip0 f₂ g := by
  rw [inner_eq_integral_alt, inner_eq_integral_alt, inner_eq_integral_alt, add_mul, add_mul,
    IE_add (test_mul_right (test_mul_right h₁ _) _) (test_mul_right (test_mul_right h₂ _) _)]

theorem cj_add (g₁ g₂ : SmQ r TT) : cj (g₁ + g₂) = cj g₁ + cj g₂ := S_ext fun q => by simp [cj_apply]

theorem inner_add_right_alt {f : SmQ r TT} (hf : f ∈ Test r TT) (g₁ g₂ : SmQ r TT) :
    ip0 f (g₁ + g₂) = ip0 f g₁ + ip0 f g₂ := by
  rw [inner_eq_integral_alt, inner_eq_integral_alt, inner_eq_integral_alt, cj_add, mul_add, add_mul,
    IE_add (test_mul_right (test_mul_right hf _) _) (test_mul_right (test_mul_right hf _) _)]

theorem inner_smul_left_alt (z : ℂ) (f g : SmQ r TT) : ip0 (z • f) g = z * ip0 f g := by
  unfold ip0
  rw [← integral_const_mul]
  congr 1; funext q
  simp [mul_assoc]

theorem inner_smul_right_alt (z : ℂ) (f g : SmQ r TT) : ip0 f (z • g) = conj z * ip0 f g := by
  unfold ip0
  rw [← integral_const_mul]
  congr 1; funext q
  simp; ring

theorem inner_neg_right_alt (f g : SmQ r TT) : ip0 f (-g) = -ip0 f g := by
  unfold ip0
  rw [← integral_neg]
  congr 1; funext q
  simp

theorem inner_conj_symm_alt (f g : SmQ r TT) : ip0 f g = conj (ip0 g f) := by
  unfold ip0
  rw [← integral_conj]
  congr 1; funext q
  simp [mul_comm]

theorem inner_zero_left_alt (g : SmQ r TT) : ip0 0 g = 0 := by unfold ip0; simp

theorem inner_zero_right_alt (f : SmQ r TT) : ip0 f 0 = 0 := by unfold ip0; simp

theorem inner_sum_left_alt {ι : Type*} (s : Finset ι) (h : ι → SmQ r TT) (hh : ∀ i ∈ s, h i ∈ Test r TT)
    (g : SmQ r TT) : ip0 (∑ i ∈ s, h i) g = ∑ i ∈ s, ip0 (h i) g := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [inner_zero_left_alt]
  | insert a s ha ih =>
    rw [Finset.sum_insert ha, Finset.sum_insert ha,
      inner_add_left_alt (hh a (Finset.mem_insert_self a s))
        (test_sum s h fun i hi => hh i (Finset.mem_insert_of_mem hi)),
      ih fun i hi => hh i (Finset.mem_insert_of_mem hi)]

theorem inner_sum_right_alt {ι : Type*} {f : SmQ r TT} (hf : f ∈ Test r TT) (s : Finset ι) (h : ι → SmQ r TT) :
    ip0 f (∑ i ∈ s, h i) = ∑ i ∈ s, ip0 f (h i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [inner_zero_right_alt]
  | insert a s ha ih => rw [Finset.sum_insert ha, Finset.sum_insert ha, inner_add_right_alt hf, ih]

theorem add_fst (a b : (anQ r TT).Pr) (f : SmQ r TT) : (a + b).1 f = a.1 f + b.1 f := rfl
theorem add_snd (a b : (anQ r TT).Pr) (g : SmQ r TT) : (a + b).2.unop g = a.2.unop g + b.2.unop g := rfl
theorem mul_fst (a b : (anQ r TT).Pr) (f : SmQ r TT) : (a * b).1 f = a.1 (b.1 f) := rfl
theorem mul_snd (a b : (anQ r TT).Pr) (g : SmQ r TT) : (a * b).2.unop g = b.2.unop (a.2.unop g) := rfl
theorem one_fst (f : SmQ r TT) : (1 : (anQ r TT).Pr).1 f = f := rfl
theorem one_snd (g : SmQ r TT) : (1 : (anQ r TT).Pr).2.unop g = g := rfl
theorem star_fst (a : (anQ r TT).Pr) (f : SmQ r TT) : (star a).1 f = a.2.unop f := rfl
theorem star_snd (a : (anQ r TT).Pr) (g : SmQ r TT) : (star a).2.unop g = a.1 g := rfl
theorem alg_fst (z : ℂ) (f : SmQ r TT) : (algebraMap ℂ (anQ r TT).Pr z).1 f = z • f := rfl
theorem alg_snd (z : ℂ) (g : SmQ r TT) : (algebraMap ℂ (anQ r TT).Pr z).2.unop g = conj z • g := rfl

theorem isAdj_one : IsAdj (1 : (anQ r TT).Pr) :=
  ⟨fun f hf => by rw [one_fst]; exact hf, fun g hg => by rw [one_snd]; exact hg,
    fun f _ g _ => by rw [one_fst, one_snd]⟩

theorem isAdj_add {a b : (anQ r TT).Pr} (ha : IsAdj a) (hb : IsAdj b) : IsAdj (a + b) :=
  ⟨fun f hf => by rw [add_fst]; exact test_add (ha.1 f hf) (hb.1 f hf),
    fun g hg => by rw [add_snd]; exact test_add (ha.2.1 g hg) (hb.2.1 g hg),
    fun f hf g hg =>
      calc ip0 ((a + b).1 f) g = ip0 (a.1 f + b.1 f) g := rfl
        _ = ip0 (a.1 f) g + ip0 (b.1 f) g := inner_add_left_alt (ha.1 f hf) (hb.1 f hf) g
        _ = ip0 f (a.2.unop g) + ip0 f (b.2.unop g) :=
          congrArg₂ (· + ·) (ha.2.2 f hf g hg) (hb.2.2 f hf g hg)
        _ = ip0 f (a.2.unop g + b.2.unop g) := (inner_add_right_alt hf _ _).symm
        _ = ip0 f ((a + b).2.unop g) := rfl⟩

theorem isAdj_mul {a b : (anQ r TT).Pr} (ha : IsAdj a) (hb : IsAdj b) : IsAdj (a * b) :=
  ⟨fun f hf => by rw [mul_fst]; exact ha.1 _ (hb.1 f hf),
    fun g hg => by rw [mul_snd]; exact hb.2.1 _ (ha.2.1 g hg),
    fun f hf g hg => (ha.2.2 _ (hb.1 f hf) g hg).trans (hb.2.2 f hf _ (ha.2.1 g hg))⟩

theorem isAdj_alg (z : ℂ) : IsAdj (algebraMap ℂ (anQ r TT).Pr z) :=
  ⟨fun f hf => by rw [alg_fst]; exact test_smul z hf,
    fun g hg => by rw [alg_snd]; exact test_smul _ hg,
    fun f _ g _ => by rw [alg_fst, alg_snd, inner_smul_left_alt, inner_smul_right_alt, Complex.conj_conj]⟩

theorem isAdj_smul (z : ℂ) {a : (anQ r TT).Pr} (ha : IsAdj a) : IsAdj (z • a) := by
  rw [Algebra.smul_def]; exact isAdj_mul (isAdj_alg z) ha

theorem isAdj_star {a : (anQ r TT).Pr} (ha : IsAdj a) : IsAdj (star a) :=
  ⟨fun f hf => by rw [star_fst]; exact ha.2.1 f hf,
    fun g hg => by rw [star_snd]; exact ha.1 g hg,
    fun f hf g hg =>
      calc ip0 ((star a).1 f) g = ip0 (a.2.unop f) g := rfl
        _ = conj (ip0 g (a.2.unop f)) := inner_conj_symm_alt _ _
        _ = conj (ip0 (a.1 g) f) := congrArg conj (ha.2.2 g hg f hf).symm
        _ = ip0 f (a.1 g) := (inner_conj_symm_alt _ _).symm
        _ = ip0 f ((star a).2.unop g) := rfl⟩

def Bar (v w : M.Var r) : Prop :=
  dirE v = dirE w ∧ ((if (ofLex v).2 = 0 then -Complex.I else Complex.I) =
    conj (if (ofLex w).2 = 0 then -Complex.I else Complex.I)) ∧ ∀ x : E r, coordE v x = conj (coordE w x)

theorem bar_c (l : Fin r) : Bar (M.vc l) (M.vcb l) := by
  refine ⟨?_, ?_, fun x => ?_⟩
  · simp [dirE, M.vc, M.vcb]
  · simp [M.vc, M.vcb]
  · rw [coordE_vc, coordE_vcb, Complex.conj_conj]

theorem bar_cb (l : Fin r) : Bar (M.vcb l) (M.vc l) := by
  refine ⟨?_, ?_, fun x => ?_⟩
  · simp [dirE, M.vc, M.vcb]
  · simp [M.vc, M.vcb]
  · rw [coordE_vc, coordE_vcb]

theorem conjugate_zeta_pair : Bar (M.vz : M.Var r) M.vzb := by
  refine ⟨?_, ?_, fun x => ?_⟩
  · simp [dirE, M.vz, M.vzb]
  · simp [M.vz, M.vzb]
  · rw [coordE_vz, coordE_vzb, Complex.conj_conj]

theorem bar_zb : Bar (M.vzb : M.Var r) M.vz := by
  refine ⟨?_, ?_, fun x => ?_⟩
  · simp [dirE, M.vz, M.vzb]
  · simp [M.vz, M.vzb]
  · rw [coordE_vz, coordE_vzb]

theorem wirt_conj {v w : M.Var r} (hb : Bar v w) {F : E r → ℂ} {x : E r} (hF : DifferentiableAt ℝ F x) :
    wirt v (fun y => conj (F y)) x = conj (wirt w F x) := by
  have he : (fun y => conj (F y)) = (Complex.conjCLE : ℂ →L[ℝ] ℂ) ∘ F := by funext y; simp
  have hd : fderiv ℝ (fun y => conj (F y)) x = (Complex.conjCLE : ℂ →L[ℝ] ℂ).comp (fderiv ℝ F x) := by
    rw [he]; exact ((Complex.conjCLE : ℂ →L[ℝ] ℂ).hasFDerivAt.comp x hF.hasFDerivAt).fderiv
  have h2 : (starRingEnd ℂ) (2 : ℂ) = 2 := map_ofNat _ 2
  unfold wirt
  rw [hd, hb.1, hb.2.1]
  by_cases h : (ofLex w).2 = 0
  · simp [h, h2, map_add (f := _), map_mul]
  · simp [h, h2, map_add (f := _), map_mul]

theorem ev_cj {v w : M.Var r} (hb : Bar v w) (g : SmQ r TT) : eulerQ v (cj g) = cj (eulerQ w g) :=
  S_ext fun q => by
    rw [eulerQ_apply, cj_apply, eulerQ_apply]
    have he : ext ((cj g : SmQ r TT) : Qp r TT → ℂ) = fun y => conj (ext (g : Qp r TT → ℂ) y) := ext_conj _
    rw [he, wirt_conj hb (ext_smooth_diff g.2 q.1 q.2), hb.2.2, map_mul]

theorem cj_coord {v w : M.Var r} (hb : Bar v w) : cj (coordQ w : SmQ r TT) = coordQ v :=
  S_ext fun q => by
    rw [cj_apply]
    exact (hb.2.2 q.1).symm

theorem cj_inv (u : SmQ r TT) (hu : ∀ q, (u : Qp r TT → ℂ) q ≠ 0) : cj (Ring.inverse u) = Ring.inverse (cj u) :=
  S_ext fun q => by
    rw [cj_apply, inv_val u hu, inv_val (cj u) (fun q => by rw [cj_apply]; simpa using hu q), cj_apply, map_inv₀]

theorem cj_one : cj (1 : SmQ r TT) = 1 := S_ext fun q => by simp [cj_apply]

theorem cj_gg : cj (ggQ r TT) = ggQ r TT := S_ext fun q => by
  rw [cj_apply, gg_apply, coordE_vz, coordE_vzb]
  simp [mul_comm]

theorem unit_coord (hTT : 0 ≤ TT) (v : M.Var r) (q : Qp r TT) : ((coordQ v : SmQ r TT) : Qp r TT → ℂ) q ≠ 0 :=
  coordE_ne q.2 hTT v

theorem inv_mul_coord (hTT : 0 ≤ TT) (v : M.Var r) : (Ring.inverse (coordQ v) : SmQ r TT) * coordQ v = 1 :=
  Ring.inverse_mul_cancel _ (isUnit_of_ne _ (unit_coord hTT v))

theorem IE_inv_euler (hTT : 0 ≤ TT) (v : M.Var r) {Ψ : SmQ r TT} (hΨ : Ψ ∈ Test r TT) :
    IE (Ring.inverse (coordQ v) * eulerQ v Ψ) = 0 := by
  unfold IE
  rw [← int_wirt_zero v hΨ]
  congr 1; funext x
  by_cases hx : x ∈ Qset r TT
  · rw [ext_of_mem _ hx, Subalgebra.coe_mul, Pi.mul_apply, inv_val _ (unit_coord hTT v), eulerQ_apply]
    show (coordE v x)⁻¹ * (coordE v x * wirt v (ext (Ψ : Qp r TT → ℂ)) x) = _
    rw [← mul_assoc, inv_mul_cancel₀ (coordE_ne hx hTT v), one_mul]
  · rw [ext_out _ hx, wirt_zero_of_near v (test_zero_near fun h => hx (hΨ.2 h))]

theorem ev_inv_coord (hTT : 0 ≤ TT) (v w : M.Var r) :
    eulerQ v (Ring.inverse (coordQ w) : SmQ r TT) = (if v = w then (-1 : ℂ) else 0) • Ring.inverse (coordQ w) := by
  have h := Formalism.FourierDecayAlt.P.MAx1.eci (Formalism.FourierDecayAlt.P.analytic_laws r TT hTT) v w
  refine h.trans ?_
  split_ifs with hvw
  · simp only [neg_smul, one_smul]; rfl
  · simp only [zero_smul]; rfl

theorem ev_prod (hTT : 0 ≤ TT) (v : M.Var r) {ι : Type*} (s : Finset ι) (g : ι → SmQ r TT) (a : ι → ℂ)
    (h : ∀ i, eulerQ v (g i) = a i • g i) : eulerQ v (∏ i ∈ s, g i) = (∑ i ∈ s, a i) • ∏ i ∈ s, g i := by
  classical
  induction s using Finset.induction_on with
  | empty =>
    simp only [Finset.prod_empty, Finset.sum_empty, zero_smul]
    exact Formalism.FourierDecayAlt.P.MAx1.ev_one (Formalism.FourierDecayAlt.P.analytic_laws r TT hTT) v
  | insert i s hi ih =>
    rw [Finset.prod_insert hi, Finset.sum_insert hi, Formalism.FourierDecayAlt.P.analytic_leibniz r TT v, h, ih, add_smul,
      smul_mul_assoc, mul_smul_comm]

theorem ev_d0Q (hTT : 0 ≤ TT) (v : M.Var r) : eulerQ v (d0Q : SmQ r TT) =
    (∑ m, ((if v = M.vc m then (-1 : ℂ) else 0) + (if v = M.vcb m then (-1 : ℂ) else 0))) • d0Q := by
  unfold d0Q
  apply ev_prod hTT v
  intro m
  rw [Formalism.FourierDecayAlt.P.analytic_leibniz r TT v, ev_inv_coord hTT, ev_inv_coord hTT, add_smul, smul_mul_assoc,
    mul_smul_comm]

theorem ev_d0Q_alt (hTT : 0 ≤ TT) : eulerQ M.vz (d0Q : SmQ r TT) = 0 := by
  rw [ev_d0Q hTT]
  have h : ∀ m : Fin r, ((if (M.vz : M.Var r) = M.vc m then (-1 : ℂ) else 0) +
      (if (M.vz : M.Var r) = M.vcb m then (-1 : ℂ) else 0)) = 0 := fun m => by
    rw [if_neg (_root_.Formalism.FourierDecayAlt.P.Mx2.vc_vz m).symm, if_neg (_root_.Formalism.FourierDecayAlt.P.Mx2.vcb_vz m).symm, add_zero]
  simp [h]

theorem ev_d0Q_zb (hTT : 0 ≤ TT) : eulerQ M.vzb (d0Q : SmQ r TT) = 0 := by
  rw [ev_d0Q hTT]
  have h : ∀ m : Fin r, ((if (M.vzb : M.Var r) = M.vc m then (-1 : ℂ) else 0) +
      (if (M.vzb : M.Var r) = M.vcb m then (-1 : ℂ) else 0)) = 0 := fun m => by
    rw [if_neg (_root_.Formalism.FourierDecayAlt.P.Mx2.vc_vzb m).symm, if_neg (_root_.Formalism.FourierDecayAlt.P.Mx2.vcb_vzb m).symm, add_zero]
  simp [h]

theorem ev_d0Q_c (hTT : 0 ≤ TT) (l : Fin r) : eulerQ (M.vc l) (d0Q : SmQ r TT) = (-1 : ℂ) • d0Q := by
  rw [ev_d0Q hTT]
  congr 1
  have h : ∀ m : Fin r, ((if (M.vc l : M.Var r) = M.vc m then (-1 : ℂ) else 0) +
      (if (M.vc l : M.Var r) = M.vcb m then (-1 : ℂ) else 0)) = if l = m then (-1 : ℂ) else 0 := fun m => by
    rw [if_neg (_root_.Formalism.FourierDecayAlt.P.Mx2.vc_vcb l m), add_zero]
    by_cases hlm : l = m
    · rw [if_pos hlm, if_pos ((_root_.Formalism.FourierDecayAlt.P.Mx2.vc_inj l m).2 hlm)]
    · rw [if_neg hlm, if_neg (fun h => hlm ((_root_.Formalism.FourierDecayAlt.P.Mx2.vc_inj l m).1 h))]
  simp [h]

theorem ev_d0Q_cb (hTT : 0 ≤ TT) (l : Fin r) : eulerQ (M.vcb l) (d0Q : SmQ r TT) = (-1 : ℂ) • d0Q := by
  rw [ev_d0Q hTT]
  congr 1
  have h : ∀ m : Fin r, ((if (M.vcb l : M.Var r) = M.vc m then (-1 : ℂ) else 0) +
      (if (M.vcb l : M.Var r) = M.vcb m then (-1 : ℂ) else 0)) = if l = m then (-1 : ℂ) else 0 := fun m => by
    rw [if_neg (_root_.Formalism.FourierDecayAlt.P.Mx2.vc_vcb m l).symm, zero_add]
    by_cases hlm : l = m
    · rw [if_pos hlm, if_pos ((_root_.Formalism.FourierDecayAlt.P.Mx2.vcb_inj l m).2 hlm)]
    · rw [if_neg hlm, if_neg (fun h => hlm ((_root_.Formalism.FourierDecayAlt.P.Mx2.vcb_inj l m).1 h))]
  simp [h]

theorem ev_kc (hTT : 0 ≤ TT) (l : Fin r) : eulerQ (M.vc l) (coordQ (M.vc l) * d0Q : SmQ r TT) = 0 := by
  rw [Formalism.FourierDecayAlt.P.analytic_leibniz r TT, ev_d0Q_c hTT, Formalism.FourierDecayAlt.P.analytic_coordinates r TT, if_pos rfl]
  simp

theorem ev_kcb (hTT : 0 ≤ TT) (l : Fin r) : eulerQ (M.vcb l) (coordQ (M.vcb l) * d0Q : SmQ r TT) = 0 := by
  rw [Formalism.FourierDecayAlt.P.analytic_leibniz r TT, ev_d0Q_cb hTT, Formalism.FourierDecayAlt.P.analytic_coordinates r TT, if_pos rfl]
  simp

theorem adj_fn (h hb : SmQ r TT) (hc : cj hb = h) : IsAdj ((anQ r TT).fnP h hb) := by
  refine ⟨fun f hf => test_mul_left h hf, fun g hg => test_mul_left hb hg, fun f hf g hg => ?_⟩
  show ip0 (h * f) g = ip0 f (hb * g)
  unfold ip0
  congr 1; funext q
  have e := congrArg (fun u : SmQ r TT => (u : Qp r TT → ℂ) q) hc
  simp only [cj_apply] at e
  simp only [Subalgebra.coe_mul, Pi.mul_apply, map_mul, e]
  ring

theorem adj_der (hTT : 0 ≤ TT) {v w : M.Var r} (hb : Bar v w) (m mb κ : SmQ r TT)
    (hm : cj mb = m) (hκ : m * d0Q = Ring.inverse (coordQ v) * κ) (hκ0 : eulerQ v κ = 0)
    (a : (anQ r TT).Pr) (h1 : ∀ f, a.1 f = m * eulerQ v f) (h2 : ∀ g, a.2.unop g = -(mb * eulerQ w g)) :
    IsAdj a := by
  refine ⟨fun f hf => ?_, fun g hg => ?_, fun f hf g hg => ?_⟩
  · exact (congrArg (fun t : SmQ r TT => t ∈ Test r TT) (h1 f)).mpr (test_mul_left m (test_euler v hf))
  · exact (congrArg (fun t : SmQ r TT => t ∈ Test r TT) (h2 g)).mpr
      (test_neg (test_mul_left mb (test_euler w hg)))
  · have main : ip0 (m * eulerQ v f) g = ip0 f (-(mb * eulerQ w g)) := by
      rw [inner_neg_right_alt, eq_neg_iff_add_eq_zero, inner_eq_integral_alt, inner_eq_integral_alt,
        ← IE_add (test_mul_right (test_mul_right (test_mul_left m (test_euler v hf)) _) _)
          (test_mul_right (test_mul_right hf _) _)]
      have key : m * eulerQ v f * cj g * d0Q + f * cj (mb * eulerQ w g) * d0Q =
          Ring.inverse (coordQ v) * eulerQ v (f * cj g * κ) := by
        rw [cj_mul, hm, ← ev_cj hb, Formalism.FourierDecayAlt.P.analytic_leibniz r TT v (f * cj g) κ, hκ0,
          Formalism.FourierDecayAlt.P.analytic_leibniz r TT v f (cj g)]
        linear_combination (eulerQ v f * cj g + f * eulerQ v (cj g)) * hκ
      rw [key]
      exact IE_inv_euler hTT v (test_mul_right (test_mul_right hf _) _)
    calc ip0 (a.1 f) g = ip0 (m * eulerQ v f) g := congrArg (fun t => ip0 t g) (h1 f)
      _ = ip0 f (-(mb * eulerQ w g)) := main
      _ = ip0 f (a.2.unop g) := (congrArg (fun t => ip0 f t) (h2 g)).symm

end

end Formalism.FourierDecayAlt.P.MAx2.Adj

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.MA Formalism.FourierDecayAlt.P.MAx1.An Formalism.FourierDecayAlt.P.MAx2.Adj MeasureTheory
open scoped ComplexConjugate

theorem adjoint_closed : Formalism.FourierDecayAlt.MA.AdjClosed := fun _ _ =>
  ⟨isAdj_one, fun _ _ ha hb => ⟨isAdj_add ha hb, isAdj_mul ha hb⟩, fun z _ ha => isAdj_smul z ha,
    fun _ ha => isAdj_star ha⟩

theorem adjoint_generators : Formalism.FourierDecayAlt.MA.AdjGens := by
  intro r TT hTT a ha
  have uc : ∀ v : M.Var r, ∀ q : Qp r TT, ((coordQ v : SmQ r TT) : Qp r TT → ℂ) q ≠ 0 := unit_coord hTT
  rcases ha with ((((((⟨l, rfl⟩ | ⟨l, rfl⟩) | ⟨l, rfl⟩) | ⟨l, rfl⟩) | ⟨l, rfl⟩) | ⟨l, rfl⟩) | ha)
  · exact adj_fn _ _ (cj_coord (bar_c l))
  · exact adj_fn _ _ ((cj_inv _ (uc _)).trans (congrArg Ring.inverse (cj_coord (bar_c l))))
  · exact adj_fn _ _ (cj_coord (bar_cb l))
  · exact adj_fn _ _ ((cj_inv _ (uc _)).trans (congrArg Ring.inverse (cj_coord (bar_cb l))))
  · exact adj_der hTT (bar_c l) 1 1 (coordQ (M.vc l) * d0Q) cj_one
      (by rw [← mul_assoc, inv_mul_coord hTT, one_mul]) (ev_kc hTT l) _
      (fun f => (one_mul _).symm) (fun g => by rw [one_mul]; rfl)
  · exact adj_der hTT (bar_cb l) 1 1 (coordQ (M.vcb l) * d0Q) cj_one
      (by rw [← mul_assoc, inv_mul_coord hTT, one_mul]) (ev_kcb hTT l) _
      (fun f => (one_mul _).symm) (fun g => by rw [one_mul]; rfl)
  · simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at ha
    rcases ha with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact adj_fn _ _ (cj_coord conjugate_zeta_pair)
    · exact adj_fn _ _ ((cj_inv _ (uc _)).trans (congrArg Ring.inverse (cj_coord conjugate_zeta_pair)))
    · exact adj_fn _ _ (cj_coord bar_zb)
    · exact adj_fn _ _ ((cj_inv _ (uc _)).trans (congrArg Ring.inverse (cj_coord bar_zb)))
    · exact adj_fn _ _ cj_gg
    · exact adj_fn _ _ ((cj_inv _ gg_ne).trans (congrArg Ring.inverse cj_gg))
    · exact adj_der hTT conjugate_zeta_pair (Ring.inverse (coordQ M.vz)) (Ring.inverse (coordQ M.vzb)) d0Q
        ((cj_inv _ (uc _)).trans (congrArg Ring.inverse (cj_coord conjugate_zeta_pair))) rfl (ev_d0Q_alt hTT) _
        (fun f => rfl) (fun g => rfl)
    · exact adj_der hTT bar_zb (Ring.inverse (coordQ M.vzb)) (Ring.inverse (coordQ M.vz)) d0Q
        ((cj_inv _ (uc _)).trans (congrArg Ring.inverse (cj_coord bar_zb))) rfl (ev_d0Q_zb hTT) _
        (fun f => rfl) (fun g => rfl)

end Formalism.FourierDecayAlt.P
