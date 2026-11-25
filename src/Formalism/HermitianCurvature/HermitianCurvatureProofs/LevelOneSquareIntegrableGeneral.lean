module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianSquareIntegrableAll
public import Formalism.HermitianCurvature.StatementJC
import Formalism.FormalDegreeBessel.FormalDegreeRatio.BFCell
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivativeRulesA1
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FsvMulFsvNeg
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HasFDerivAtFsvOther
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermMulVecMulVec
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormSesquilinearFiniteClass
import Formalism.HermitianCurvature.HermitianCurvatureProofs.MeasurableOfContinuousOnZero
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SendsToAlgMulAlg
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ThmPActualCptOfStepForm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.WCellMemOmPlus
import Mathlib.Tactic.Linter.Style

@[expose] public section

open MeasureTheory Filter Topology
open scoped Matrix ComplexConjugate

noncomputable section

namespace Formalism.FourierDecayAlt.P5.HerD

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerA Formalism.FourierDecayAlt.P5.HerB Formalism.FourierDecayAlt.P5.HerC

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem fsv_add (s s' t : ℂ) : fsv s t * fsv s' t = fsv (s + s') t := by
  unfold fsv
  rw [← Complex.exp_add]
  congr 1
  simp only [map_add (f := _)]
  ring

theorem fsv_zero (t : ℂ) : fsv 0 t = 1 := by
  simp [fsv]

section WaveJ

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]
variable (P : M.Par) (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp))
  (π' : Mx P.k P.r → (Wq →L[ℂ] Wq)) (D : B.RealPlaceData P.k P.r Wp Wq) (l : Fin P.r)

def IsWaveJ (Ψ : RadSp P.k P.r z z' π π') : Prop :=
  Ψ ∈ lcSub P.k P.r z z' π π' ∧ ∃ (s : ℂ) (ε : ℝ) (G : Mx P.k P.r → (Wq →L[ℂ] Wp)), 0 < ε ∧ JC.NiceCoef D ε G ∧
    ∀ y ∈ DomR P.k P.r z z', (Ψ : Fn P.k P.r (Wq →L[ℂ] Wp)) y.1 y.2 =
      fsv s (y.1 l) • resG P.k P.r (Fin.last P.r) (B.JF D G) y.1 y.2

def waveJ : Submodule ℂ (RadSp P.k P.r z z' π π') :=
  Submodule.span ℂ {Ψ | IsWaveJ P z z' π π' D l Ψ}

theorem waveJ_wave {Wv : Module.End ℂ (RadSp P.k P.r z z' π π')} {s : ℂ} (hW : multiplicationOperator Wv (fun c _ => fsv s (c l))) :
    ∀ Ψ ∈ waveJ P z z' π π' D l, Wv Ψ ∈ waveJ P z z' π π' D l := by
  intro Ψ hΨ
  unfold waveJ at hΨ ⊢
  induction hΨ using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨hlc, s0, ε, G, hε, hN, hval⟩ := hx
    apply Submodule.subset_span
    show IsWaveJ P z z' π π' D l (Wv x)
    unfold IsWaveJ
    refine ⟨fun c0 hc0 => ?_, s + s0, ε, G, hε, hN, fun y hy => ?_⟩
    · obtain ⟨U, hU, hcU, K, hKc, hKG, hK0⟩ := hlc c0 hc0
      exact ⟨U, hU, hcU, K, hKc, hKG, fun c' hc' g hg hgK => by rw [hW x c' g, hK0 c' hc' g hg hgK, smul_zero]⟩
    · rw [hW x y.1 y.2, hval y hy, smul_smul, fsv_add]
  | zero => rw [map_zero]; exact Submodule.zero_mem _
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
  | smul a x _ hx => rw [map_smul]; exact Submodule.smul_mem _ a hx

end WaveJ

section Her

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {S : Type} [Fintype S] [DecidableEq S]

theorem isWaveJ_jf (P : M.Par) (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp))
    (π' : Mx P.k P.r → (Wq →L[ℂ] Wq)) (D : B.RealPlaceData P.k P.r Wp Wq) (hP : IsPlace P z z' π π') (hz : D.z = z)
    (hz' : D.z' = z') (hπ : D.π = π) (hπ' : D.π' = π') (l : Fin P.r) (F : Mx P.k P.r → (Wq →L[ℂ] Wp))
    (hF : JFOKCpt P z z' F) (Φ : RadSp P.k P.r z z' π π') (hΦ : IsRadJF P z z' π π' D F Φ) :
    IsWaveJ P z z' π π' D l Φ := by
  refine ⟨jfCptLocAll Wp Wq P z z' π π' D F Φ hP hz hz' hπ hπ' hF hΦ, ?_⟩
  obtain ⟨ε, hε, hG⟩ := hF.1.2
  refine ⟨0, ε, F, hε, ⟨Formalism.FourierDecayAlt.P.SmoothnessOrderArithmetic.ckOn_top_of_all (fun m => (hF.1.1 0 m).choose_spec.1), hF.1.1,
    fun g hg hne => by rw [hz, hz']; exact hG g hg hne⟩, fun y hy => ?_⟩
  rw [fsv_zero, one_smul]
  exact hΦ y hy

theorem herKc0_le_waveJ (P : M.Par) (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp))
    (π' : Mx P.k P.r → (Wq →L[ℂ] Wq)) (X : ActualOps P.k P.r z z' π π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (D : B.RealPlaceData P.k P.r Wp Wq) (hD : IsData P z z' π π' X μ L st l0) (hz : D.z = z) (hz' : D.z' = z')
    (hπ : D.π = π) (hπ' : D.π' = π') (l : Fin P.r) (hl : l.castSucc = 0) :
    herKc S P z z' π π' L st l0 D 0 ≤ waveJ P z z' π π' D l := by
  refine Submodule.span_le.mpr fun Φ hΦ => ?_
  have key : ∀ (i : Fin (P.r + 1)) (Ψ : RadSp P.k P.r z z' π π'), HerGenC S P z z' π π' L st l0 D i Ψ →
      i = 0 → Ψ ∈ waveJ P z z' π π' D l := by
    intro i Ψ h
    induction h with
    | jf F Φ hF hΦ =>
      exact fun _ => Submodule.subset_span (isWaveJ_jf P z z' π π' D hD.1 hz hz' hπ hπ' l F hF Φ hΦ)
    | slice l' w a b Φ _ _ _ => exact fun h => absurd h (Fin.succ_ne_zero l')
    | waveC l' w' s Wv Wv' a' b' Φ _ h1 _ _ ih =>
      intro h
      have hll : l' = l := Fin.castSucc_injective _ (h.trans hl.symm)
      subst hll
      have hv := ih h
      have hVw : Vw (mkP Wv Wv') s w' a' b' = mkP Wv Wv' * UUiw s w' a' b' := by
        unfold Vw; exact io_apply_mul _ _ _ _
      obtain ⟨κ, hκ⟩ := mem_bot_alg (UUiw_mem (A := Pr (RadSp P.k P.r z z' π π')) (𝒜 := ⊥) s w' a' b')
      have e : (Vw (mkP Wv Wv') s w' a' b').1 Φ = κ • Wv Φ := by
        rw [hVw, hκ, pr_fst_mul, pr_fst_algebraMap, Module.End.mul_apply, Module.algebraMap_end_apply, map_smul]
        rfl
      rw [e]
      exact (waveJ P z z' π π' D l').smul_mem κ (waveJ_wave P z z' π π' D l' h1 Φ hv)
    | waveZ w s Wv Wv' a b Φ _ _ _ _ _ =>
      intro h
      exfalso
      have h0 := congrArg Fin.val h
      have h1 := congrArg Fin.val hl
      simp only [Fin.val_last, Fin.val_zero, Fin.val_castSucc] at h0 h1
      have := l.isLt
      omega
  exact key 0 Φ hΦ rfl

open Formalism.FourierDecayAlt.P.JCx2 (mnClosed BcGood mn_nice_zero mn_nice_add mn_nice_smul bc_JF_zero bc_JF_add bc_JF_smul) in
theorem rr_pic (P : M.Par) (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp))
    (π' : Mx P.k P.r → (Wq →L[ℂ] Wq)) (X : ActualOps P.k P.r z z' π π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (D : B.RealPlaceData P.k P.r Wp Wq) (hD : IsData P z z' π π' X μ L st l0) (hz : D.z = z) (hz' : D.z' = z')
    (hπ : D.π = π) (hπ' : D.π' = π') (ε : ℝ) (hε : 0 < ε) (G : Mx P.k P.r → (Wq →L[ℂ] Wp)) (hN : JC.NiceCoef D ε G)
    (Φ : RadSp P.k P.r z z' π π')
    (hΦ : ∀ y ∈ DomR P.k P.r z z', (Φ : Fn P.k P.r (Wq →L[ℂ] Wp)) y.1 y.2 = resG P.k P.r (Fin.last P.r) (B.JF D G) y.1 y.2)
    (w : List (Letter ℂ S)) (a b : Ix S) :
    ∃ G' : Mx P.k P.r → (Wq →L[ℂ] Wp), JC.NiceCoef D ε G' ∧ ∀ y ∈ DomR P.k P.r z z',
      ((((RRi L st 0 w) a b).1 Φ : RadSp P.k P.r z z' π π') : Fn P.k P.r (Wq →L[ℂ] Wp)) y.1 y.2 =
        resG P.k P.r (Fin.last P.r) (B.JF D G') y.1 y.2 := by
  subst hz hz' hπ hπ'
  let F' : Ix S → Mx P.k P.r → (Wq →L[ℂ] Wp) := fun b' => if b' = b then G else fun _ => 0
  have hN' : ∀ b', JC.NiceCoef D ε (F' b') := by
    intro b'
    by_cases h : b' = b
    · simp only [F', if_pos h]; exact hN
    · simp only [F', if_neg h]; exact Formalism.FourierDecayAlt.P.JCx2.mn_nice_zero
  let x : Ix S → Mx P.k P.r → (Wq →L[ℂ] Wp) := fun b' => B.JF D (F' b')
  let Φv : Ix S → RadSp P.k P.r D.z D.z' D.π D.π' := fun b' => if b' = b then Φ else 0
  have hx : ∀ b', x b' ∈ FFl P.k P.r D.z D.z' D.π D.π' 0 (OmPlus P.k P.r D.z D.z') := fun b' =>
    Formalism.FourierDecayAlt.P.bessel_function_finite_class P.k P.r Wp Wq D (F' b') ε hε (hN' b')
  have hΦv : ∀ b', ∀ y ∈ DomR P.k P.r D.z D.z',
      (Φv b' : Fn P.k P.r (Wq →L[ℂ] Wp)) y.1 y.2 = resG P.k P.r (Fin.last P.r) (x b') y.1 y.2 := by
    intro b' y hy
    by_cases h : b' = b
    · simp only [Φv, x, F', if_pos h]; exact hΦ y hy
    · simp only [Φv, x, F', if_neg h]
      simp only [resG, Formalism.FourierDecayAlt.P.JCx2.bc_JF_zero, smul_zero]
      rfl
  have key := Formalism.FourierDecayAlt.P.JCx2.rma_main D.z_mem D.z'_mem X L st (M.sgn P l0) hD.2.2.1 hD.2.2.2.1 w x Φv hx hΦv
  have hsingle : act (RRi L st 0 w) Φv a = ((RRi L st 0 w) a b).1 Φ := by
    unfold act
    rw [Finset.sum_eq_single b (fun b' _ hb' => by simp only [Φv, if_neg hb', map_zero])
      (fun h => absurd (Finset.mem_univ b) h)]
    simp only [Φv, if_pos rfl]
  have hClosed : mnClosed (BcGood D ε) := {
    zero := ⟨fun _ _ => mn_nice_zero, fun _ _ h _ => bc_JF_zero h,
      fun _ _ _ _ _ _ => rfl⟩
    one := ⟨fun _ hF => hF, fun _ _ _ _ => rfl, fun _ _ hff x hx hxG => hff x hx hxG⟩
    add := fun a b ha hb => ⟨fun F hF => mn_nice_add (ha.1 F hF) (hb.1 F hF),
      fun F hF h hh => by
        show B.JF D (fun g => a F g + b F g) h = a (B.JF D F) h + b (B.JF D F) h
        rw [bc_JF_add (ha.1 F hF) (hb.1 F hF) hh, ha.2.1 F hF h hh, hb.2.1 F hF h hh],
      fun f f' hff x hx hxG => by
        show a f x + b f x = a f' x + b f' x
        rw [ha.2.2 f f' hff x hx hxG, hb.2.2 f f' hff x hx hxG]⟩
    mul := fun a b ha hb => ⟨fun F hF => ha.1 _ (hb.1 F hF),
      fun F hF h hh => by
        show B.JF D (a (b F)) h = a (b (B.JF D F)) h
        rw [ha.2.1 _ (hb.1 F hF) h hh]
        exact ha.2.2 _ _ (fun x hx hxG => hb.2.1 F hF x ⟨hxG, hx⟩) h hh.2 hh.1,
      fun f f' hff x hx hxG =>
        ha.2.2 (b f) (b f') (fun y hy hyG => hb.2.2 f f' hff y hy hyG) x hx hxG⟩
    cop := fun c => ⟨fun _ hF => mn_nice_smul c hF, fun F _ h _ => bc_JF_smul c F h,
      fun f f' hff x hx hxG => by
        show c • f x = c • f' x
        rw [hff x hx hxG]⟩ }
  have hR := Formalism.FourierDecayAlt.P.JCx2.mn_rrop_closure hClosed
    (Formalism.FourierDecayAlt.P.JCx2.rma_Qop P.k P.r D.z D.z' (M.sgn P l0))
    (fun Y p q => Formalism.FourierDecayAlt.P.JCx2.bcGood_tL (Bs := D) (ε := ε) (M.sgn P l0) Y p q) w
  refine ⟨Formalism.FourierDecayAlt.D.actOp (Formalism.FourierDecayAlt.D.RRop (Formalism.FourierDecayAlt.P.JCx2.rma_Qop P.k P.r D.z D.z' (M.sgn P l0)) w) F' a, ?_, ?_⟩
  · show JC.NiceCoef D ε (∑ b', Formalism.FourierDecayAlt.D.ap (Formalism.FourierDecayAlt.D.RRop (Formalism.FourierDecayAlt.P.JCx2.rma_Qop P.k P.r D.z D.z' (M.sgn P l0)) w a b') (F' b'))
    exact Formalism.FourierDecayAlt.P.JCx2.mn_nice_sum' Finset.univ _ fun b' _ => (hR a b').1 (F' b') (hN' b')
  · intro y hy
    rw [← hsingle, key a y hy]
    have hGV : wCell P.k P.r (Fin.last _) y.1 * y.2 ∈ B.GV P.k P.r := by
      rw [Formalism.FourierDecayAlt.P5.Rad.wCell_last_eq]
      exact Formalism.FourierDecayAlt.P.BetaSesquilinearity.gv_mul (Formalism.QuantumDeterminants.big_cell_mem_holds _ _ _ 1 hy.1 (by simp)) hy.2.1.1
    have hh : wCell P.k P.r (Fin.last _) y.1 * y.2 ∈ JF.Om P.k P.r D.z D.z' :=
      ⟨hGV, Formalism.FourierDecayAlt.P5.Rad.wCell_mem_omPlus D.z_mem D.z'_mem hy.1 hy.2.1 hy.2.2⟩
    simp only [resG]
    congr 1
    exact (Formalism.FourierDecayAlt.P.JCx2.bc_core _ hR F' hN' a hh).symm

theorem rr_waveJ (P : M.Par) (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp))
    (π' : Mx P.k P.r → (Wq →L[ℂ] Wq)) (X : ActualOps P.k P.r z z' π π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (D : B.RealPlaceData P.k P.r Wp Wq) (hD : IsData P z z' π π' X μ L st l0) (hz : D.z = z) (hz' : D.z' = z')
    (hπ : D.π = π) (hπ' : D.π' = π') (l : Fin P.r) (hl : l.castSucc = 0) (w : List (Letter ℂ S))
    (hw : WordOK P z z' π π' st l0 w) (a b : Ix S) :
    ∀ Ψ ∈ waveJ P z z' π π' D l, ((RRi L st 0 w) a b).1 Ψ ∈ waveJ P z z' π π' D l := by
  have hRRlc := RRi_lc X μ L st l0 hD 0 w hw.1.2.1
  have hbase : ∀ (Φ : RadSp P.k P.r z z' π π'), Φ ∈ lcSub P.k P.r z z' π π' → ∀ (ε : ℝ), 0 < ε →
      ∀ G, JC.NiceCoef D ε G → (∀ y ∈ DomR P.k P.r z z', (Φ : Fn P.k P.r (Wq →L[ℂ] Wp)) y.1 y.2 =
        resG P.k P.r (Fin.last P.r) (B.JF D G) y.1 y.2) → ∀ c d, ((RRi L st 0 w) c d).1 Φ ∈ waveJ P z z' π π' D l := by
    intro Φ hlc ε hε G hN hΦ c d
    obtain ⟨G', hN', hpic⟩ := rr_pic P z z' π π' X μ L st l0 D hD hz hz' hπ hπ' ε hε G hN Φ hΦ w c d
    refine Submodule.subset_span ⟨(hRRlc c d).1 Φ hlc, 0, ε, G', hε, hN', fun y hy => ?_⟩
    rw [fsv_zero, one_smul]
    exact hpic y hy
  intro Ψ hΨ
  induction hΨ using Submodule.span_induction with
  | mem Ψ hx =>
    obtain ⟨hlc, s, ε, G, hε, hN, hv⟩ := hx
    obtain ⟨Wv, hWv⟩ := Formalism.FourierDecayAlt.P5.waveCExists Wp Wq P.k P.r z z' π π' l s
    obtain ⟨Wv', hWv'⟩ := Formalism.FourierDecayAlt.P5.waveCExists Wp Wq P.k P.r z z' π π' l (-s)
    set Φ := Wv' Ψ with hΦdef
    have hΦlc : Φ ∈ lcSub P.k P.r z z' π π' := mul_lc hWv' Ψ hlc
    have hΦ : ∀ y ∈ DomR P.k P.r z z', (Φ : Fn P.k P.r (Wq →L[ℂ] Wp)) y.1 y.2 =
        resG P.k P.r (Fin.last P.r) (B.JF D G) y.1 y.2 := by
      intro y hy
      rw [hΦdef, hWv' Ψ y.1 y.2, hv y hy, smul_smul, fsv_neg_mul_fsv, one_smul]
    have hΨΦ : Ψ = Wv Φ := by
      apply Subtype.ext
      funext c g
      show (Ψ : Fn P.k P.r (Wq →L[ℂ] Wp)) c g = (Wv Φ : Fn P.k P.r (Wq →L[ℂ] Wp)) c g
      by_cases hy : (c, g) ∈ DomR P.k P.r z z'
      · rw [hWv Φ c g, hΦ (c, g) hy, hv (c, g) hy]
      · rw [radSp_zero_off Ψ (x := (c, g)) hy, radSp_zero_off (Wv Φ) (x := (c, g)) hy]
    have hC := Formalism.FourierDecayAlt.P5.waveCommQQAll Wp Wq P z z' π π' X μ L st l0 hD l s Wv Wv' hWv hWv'
    have hWQ := waveQQ_castSucc X L st hD.2.2.1 l s Wv Wv' hWv hWv' hC
    rw [hl] at hWQ
    obtain ⟨hWave, -⟩ := Formalism.FourierDecayAlt.P5.waveSiteAll Wp Wq P z z' π π' X L hD.2.2.1 l s Wv Wv' hWv hWv'
    have hrr := rr_io_wave (QQi L st 0) (mkP Wv Wv') (mkP Wv' Wv) s w hWave hWQ hw.1.1
    have he := congrFun (congrFun hrr a) b
    rw [mul_io_apply, io_apply_mul] at he
    have hM : ((star (UUw s w) * RRw (QQi L st 0) w * UUw s w : SlopeTestRemainingChoices S (Pr (RadSp P.k P.r z z' π π'))) a b) ∈
        sendsTo (waveJ P z z' π π' D l) Φ := by
      rw [Matrix.mul_apply]
      refine Submodule.sum_mem _ fun d _ => ?_
      rw [Matrix.mul_apply, Finset.sum_mul]
      refine Submodule.sum_mem _ fun c _ => ?_
      obtain ⟨α, hα⟩ := mem_bot_alg (star_entSub (UUw_mem (A := Pr (RadSp P.k P.r z z' π π')) (𝒜 := ⊥) s w) a c)
      obtain ⟨β, hβ⟩ := mem_bot_alg (UUw_mem (A := Pr (RadSp P.k P.r z z' π π')) (𝒜 := ⊥) s w d b)
      rw [hα, hβ]
      exact sendsTo_alg_mul_alg _ Φ (hbase Φ hΦlc ε hε G hN hΦ c d) α β
    have e : ((RRi L st 0 w) a b).1 (Wv Φ) =
        Wv (((star (UUw s w) * RRw (QQi L st 0) w * UUw s w : SlopeTestRemainingChoices S (Pr (RadSp P.k P.r z z' π π'))) a b).1 Φ) :=
      congrArg (fun x : Pr (RadSp P.k P.r z z' π π') => x.1 Φ) he
    rw [hΨΦ, e]
    exact waveJ_wave P z z' π π' D l hWv _ hM
  | zero => rw [map_zero]; exact (waveJ P z z' π π' D l).zero_mem
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact (waveJ P z z' π π' D l).add_mem hx hy
  | smul c x _ hx => rw [map_smul]; exact (waveJ P z z' π π' D l).smul_mem c hx

theorem unwave (P : M.Par) (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp))
    (π' : Mx P.k P.r → (Wq →L[ℂ] Wq)) (D : B.RealPlaceData P.k P.r Wp Wq) (l : Fin P.r) (Ψ : RadSp P.k P.r z z' π π')
    (hΨ : IsWaveJ P z z' π π' D l Ψ) :
    ∃ (s : ℂ) (ε : ℝ) (G : Mx P.k P.r → (Wq →L[ℂ] Wp)) (Φ : RadSp P.k P.r z z' π π')
      (Wv : Module.End ℂ (RadSp P.k P.r z z' π π')), 0 < ε ∧ JC.NiceCoef D ε G ∧ Φ ∈ lcSub P.k P.r z z' π π' ∧
      (∀ y ∈ DomR P.k P.r z z', (Φ : Fn P.k P.r (Wq →L[ℂ] Wp)) y.1 y.2 =
        resG P.k P.r (Fin.last P.r) (B.JF D G) y.1 y.2) ∧ multiplicationOperator Wv (fun c _ => fsv s (c l)) ∧ Ψ = Wv Φ := by
  obtain ⟨hlc, s, ε, G, hε, hN, hval⟩ := hΨ
  obtain ⟨Wv, hWv⟩ := waveCExists Wp Wq P.k P.r z z' π π' l s
  obtain ⟨Wv', hWv'⟩ := waveCExists Wp Wq P.k P.r z z' π π' l (-s)
  have e1 : -s + s = 0 := by ring
  have e2 : s + -s = 0 := by ring
  refine ⟨s, ε, G, Wv' Ψ, Wv, hε, hN, fun c0 hc0 => ?_, fun y hy => ?_, hWv, ?_⟩
  · obtain ⟨U, hU, hcU, K, hKc, hKG, hK0⟩ := hlc c0 hc0
    exact ⟨U, hU, hcU, K, hKc, hKG, fun c' hc' g hg hgK => by rw [hWv' Ψ c' g, hK0 c' hc' g hg hgK, smul_zero]⟩
  · rw [hWv' Ψ y.1 y.2, hval y hy, smul_smul, fsv_add, e1, fsv_zero, one_smul]
  · apply Subtype.ext
    funext c g
    rw [hWv (Wv' Ψ) c g, hWv' Ψ c g, smul_smul, fsv_add, e2, fsv_zero, one_smul]

end Her

section Fs

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
  [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
  [FiniteDimensional ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

def fs (μ : Measure (Mt k r)) (l : Fin r) (Φ Ψ : RadSp k r z z' π π') (c : Fin r → ℂ) (t : ℂ) : ℂ :=
  ∫ c' : Cf r l.succ, wtI l.succ c' * pairAt μ Φ Ψ (glue l.succ (Function.update c l t) c')

variable (μ : Measure (Mt k r)) [SFinite μ] (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ) (l : Fin r) (c : Fin r → ℂ)

include hμ in
theorem pairAt_add_left_lc {u1 u2 v : RadSp k r z z' π π'} (h1 : u1 ∈ lcSub k r z z' π π')
    (h2 : u2 ∈ lcSub k r z z' π π') (hv : v ∈ lcSub k r z z' π π') (p : Fin r → ℂ) :
    pairAt μ (u1 + u2) v p = pairAt μ u1 v p + pairAt μ u2 v p := by
  have hadd : ∀ A A' C : Wq →L[ℂ] Wp, B.hsInner (A + A') C = B.hsInner A C + B.hsInner A' C := by
    intro A A' C
    simp [B.hsInner, B.hsVec, PiLp.inner_apply, inner_add_right, Finset.sum_add_distrib]
  unfold pairAt
  rw [← integral_add (int_lc μ hμ h1 hv p) (int_lc μ hμ h2 hv p)]
  congr 1
  ext x
  simp only [Submodule.coe_add, Pi.add_apply, hadd]



end Fs

section Red

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {S : Type} [Fintype S] [DecidableEq S]

end Red

end Formalism.FourierDecayAlt.P5.HerD
