module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DilationUnipotentWeylMeasure
public import Formalism.HermitianCurvature.WeylElementCommutesLevelOne
public import Formalism.FormalDegreeBessel.FinalG
public import Formalism.FormalDegreeBessel.FormalDegreeRatio.BFCell
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HaarUniquenessConjugation
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormFactor
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LongWeylElement
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OppositeWeylSubgroupClosed
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SettingExistence
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.HermitianCurvature.HermitianCurvatureProofs.Block3MulBlocks
import Formalism.HermitianCurvature.StatementJF

@[expose] public section

noncomputable section

section PartDefs
open Matrix MeasureTheory

namespace Formalism.FourierDecayAlt.P.SliceLastLevel

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF

open scoped Matrix.Norms.Elementwise

end Formalism.FourierDecayAlt.P.SliceLastLevel

end PartDefs

section PartSz
open Matrix

namespace Formalism.FourierDecayAlt.P.SliceLastLevel

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF Formalism.FourierDecayAlt.P.Ux5

section szIndex

variable (k r : ℕ)

variable {k r}

end szIndex

section szBlocks

variable {k r : ℕ}

end szBlocks

section szRel

variable {k r : ℕ}

end szRel

section szBound

end szBound

section szMain

lemma sz_N_zero {k : ℕ} {q : B.Mat k 0} (hq : q ∈ Nset k 0) : q = 1 := by
  ext i j
  have hj := j.isLt
  rw [hq.2.2 i j (Nat.zero_le _) (by omega) (Nat.zero_le _), Matrix.one_apply]

end szMain

end Formalism.FourierDecayAlt.P.SliceLastLevel

end PartSz

section PartTr
open Matrix MeasureTheory Filter Topology

set_option linter.style.haveILetI false

namespace Formalism.FourierDecayAlt.P.SliceLastLevel

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF

open scoped Matrix.Norms.Elementwise

variable {k r : ℕ}

section transport

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

end transport

lemma tr_gN_nonneg (g : B.Mat k r) : 0 ≤ B.gN g := Real.sqrt_nonneg _

lemma gN_mul_le (X X' : B.Mat k r) : B.gN (X * X') ≤ B.gN X * B.gN X' := P.B6.gN_mul_le X X'

lemma tr_inv_GV {n : B.Mat k r} (hn : n ∈ B.GV k r) : n⁻¹ = Hpk k r * nᴴ * Hpk k r := by
  apply Matrix.inv_eq_left_inv
  have h : nᴴ * Hpk k r * n = Hpk k r := hn
  calc Hpk k r * nᴴ * Hpk k r * n = Hpk k r * (nᴴ * Hpk k r * n) := by simp only [Matrix.mul_assoc]
    _ = 1 := by rw [h, (hpkFacts k r).2.1]

lemma gN_inv_GV {n : B.Mat k r} (hn : n ∈ B.GV k r) : B.gN n⁻¹ = B.gN n := by
  have hH1 : (Hpk k r)ᴴ = Hpk k r := (hpkFacts k r).1
  have hH2 : Hpk k r * Hpk k r = 1 := (hpkFacts k r).2.1
  have h2 : B.gN n⁻¹ ^ 2 = B.gN n ^ 2 := by
    rw [P.HermitianFormFactor.gN_sq, P.HermitianFormFactor.gN_sq, tr_inv_GV hn]
    have e : Hpk k r * nᴴ * Hpk k r * (Hpk k r * nᴴ * Hpk k r)ᴴ = Hpk k r * (nᴴ * n) * Hpk k r := by
      rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hH1]
      calc Hpk k r * nᴴ * Hpk k r * (Hpk k r * (n * Hpk k r))
          = Hpk k r * nᴴ * (Hpk k r * Hpk k r) * n * Hpk k r := by simp only [Matrix.mul_assoc]
        _ = _ := by rw [hH2, Matrix.mul_one]; simp only [Matrix.mul_assoc]
    rw [e, Matrix.trace_mul_cycle, hH2, Matrix.one_mul, Matrix.trace_mul_comm]
  rw [← Real.sqrt_sq (tr_gN_nonneg n⁻¹), h2, Real.sqrt_sq (tr_gN_nonneg n)]

lemma tr_f_meas (A : ℝ) : Measurable fun g : Mt k r => ENNReal.ofReal (B.gN (Matrix.of g : B.Mat k r) ^ (-A)) :=
  ENNReal.measurable_ofReal.comp ((P.HaarUniquenessConjugation.gN_meas k r).pow_const _)

lemma tr_meas_bigCell : @Measurable (Fin r → ℂ) (Mt k r) _ _ (fun c => bigCell k r c 1) := by
  refine Measurable.of_eval (f := fun c : Fin r → ℂ => fun i j => bigCell k r c 1 i j) fun i => ?_
  refine Measurable.of_eval (f := fun c : Fin r → ℂ => fun j => bigCell k r c 1 i j) fun j => ?_
  unfold bigCell
  split_ifs
  all_goals first
    | exact measurable_const
    | exact measurable_pi_apply (X := fun _ : Fin r => ℂ) _
    | exact (continuous_star.measurable.comp (measurable_pi_apply (X := fun _ : Fin r => ℂ) _)).inv

lemma tr_cWeight_cont : Continuous (B2.cWeight k r) := by
  unfold B2.cWeight
  exact continuous_finsetProd _ fun a _ => (continuous_norm.comp (continuous_apply a)).pow _

lemma tr_f_pos {A : ℝ} {g : B.Mat k r} (hg : g ∈ B.GV k r) : 0 < ENNReal.ofReal (B.gN g ^ (-A)) :=
  ENNReal.ofReal_pos.2 (Real.rpow_pos_of_pos (lt_of_lt_of_le one_pos (P.BetaSesquilinearity.gN_ge_one hg)) _)

lemma tr_bigCell_one_mem {c : Fin r → ℂ} (hc : ∀ a, c a ≠ 0) : bigCell k r c 1 ∈ B.GV k r :=
  big_cell_mem_holds k r c 1 hc (by simp)

theorem intN_AB {μN : Measure (Mt k r)} (hN : IsHaarOn (Nset k r) μN) :
    ∫⁻ x, ENNReal.ofReal (B.gN (Matrix.of x : B.Mat k r) ^ (-(B.AB k r))) ∂μN < ⊤ := by
  classical
  haveI := P.LongWeylElement.sf hN
  obtain ⟨μG, hG⟩ := P.unitary_group_haar_exists k r
  obtain ⟨μb, hb⟩ := P.opposite_weyl_haar_exists k r
  haveI := P.LongWeylElement.sf hb
  set A := B.AB k r with hA
  have hA0 : 0 ≤ A := by
    rw [hA]; unfold B.AB; positivity
  set f : Mt k r → ENNReal := fun g => ENNReal.ofReal (B.gN (Matrix.of g : B.Mat k r) ^ (-A)) with hfdef
  have hfm : Measurable f := tr_f_meas A
  obtain ⟨C, hC, hI⟩ := P.iterated_integration_formula k r μG μN μb hG hN hb
  have hfin : (∫⁻ g, f g ∂μG) < ⊤ := P.norm_power_integrable_sharp k r μG A hG le_rfl
  rw [hI f hfm] at hfin
  set IN := ∫⁻ x, f x ∂μN with hIN
  set Ib := ∫⁻ x, f x ∂μb with hIbdef

  have hIb : Ib ≠ 0 := by
    intro h0
    have h1 := (lintegral_eq_zero_iff hfm).1 h0
    have h2 : ∀ᵐ x ∂μb, False := by
      filter_upwards [h1, P.LongWeylElement.haar_ae hb] with x hx hxU
      have := tr_f_pos (A := A) hxU.1
      simp only [Pi.zero_apply] at hx
      exact absurd hx (ne_of_gt this)
    have h3 : μb Set.univ = 0 := by
      have := ae_iff.1 h2
      simpa using this
    exact hb.ne_zero (Measure.measure_univ_eq_zero.1 h3)

  set S : Set (Fin r → ℂ) := {c | ∀ a, c a ≠ 0} with hSdef
  have hSo : IsOpen S := by
    have : S = ⋂ a : Fin r, (fun c : Fin r → ℂ => c a) ⁻¹' {0}ᶜ := by
      ext c; simp [hSdef]
    rw [this]
    exact isOpen_iInter_of_finite fun a => isOpen_compl_singleton.preimage (continuous_apply a)
  have hSm : MeasurableSet S := hSo.measurableSet

  have hinner : ∀ c ∈ S, ENNReal.ofReal (B.gN (bigCell k r c 1) ^ (-A)) * (IN * IN * Ib) ≤
      ∫⁻ p : (Mt k r × Mt k r) × Mt k r,
        f ((Matrix.of p.1.1)⁻¹ * bigCell k r c 1 * Matrix.of p.2 * Matrix.of p.1.2) ∂((μN.prod μN).prod μb) := by
    intro c hc
    have hbG := tr_bigCell_one_mem (k := k) hc
    have hae1 : ∀ᵐ p ∂((μN.prod μN).prod μb), (Matrix.of p.1.1 : B.Mat k r) ∈ Nset k r :=
      Measure.quasiMeasurePreserving_fst.ae (Measure.quasiMeasurePreserving_fst.ae (P.LongWeylElement.haar_ae hN))
    have hae2 : ∀ᵐ p ∂((μN.prod μN).prod μb), (Matrix.of p.1.2 : B.Mat k r) ∈ Nset k r :=
      Measure.quasiMeasurePreserving_fst.ae (Measure.quasiMeasurePreserving_snd.ae (P.LongWeylElement.haar_ae hN))
    have hae3 : ∀ᵐ p ∂((μN.prod μN).prod μb), (Matrix.of p.2 : B.Mat k r) ∈ B2.UWb k r :=
      Measure.quasiMeasurePreserving_snd.ae (P.LongWeylElement.haar_ae hb)
    set β : ENNReal := ENNReal.ofReal (B.gN (bigCell k r c 1) ^ (-A)) with hβ
    have hpt : ∀ᵐ p ∂((μN.prod μN).prod μb),
        β * ((f p.1.1 * f p.1.2) * f p.2) ≤
          f ((Matrix.of p.1.1)⁻¹ * bigCell k r c 1 * Matrix.of p.2 * Matrix.of p.1.2) := by
      filter_upwards [hae1, hae2, hae3] with p h1 h2 h3
      set n : B.Mat k r := Matrix.of p.1.1
      set n' : B.Mat k r := Matrix.of p.1.2
      set m : B.Mat k r := Matrix.of p.2
      have hn : n ∈ B.GV k r := h1.1
      have hn' : n' ∈ B.GV k r := h2.1
      have hm : m ∈ B.GV k r := h3.1
      have hgG : n⁻¹ * bigCell k r c 1 * m * n' ∈ B.GV k r :=
        P.BetaSesquilinearity.gv_mul (P.BetaSesquilinearity.gv_mul (P.BetaSesquilinearity.gv_mul (P.BetaSesquilinearity.gv_inv hn) hbG) hm) hn'
      have hgpos : 0 < B.gN (n⁻¹ * bigCell k r c 1 * m * n') :=
        lt_of_lt_of_le one_pos (P.BetaSesquilinearity.gN_ge_one hgG)
      have hle : B.gN (n⁻¹ * bigCell k r c 1 * m * n') ≤
          B.gN n * B.gN (bigCell k r c 1) * B.gN m * B.gN n' := by
        calc B.gN (n⁻¹ * bigCell k r c 1 * m * n') ≤ B.gN (n⁻¹ * bigCell k r c 1 * m) * B.gN n' := gN_mul_le _ _
          _ ≤ (B.gN (n⁻¹ * bigCell k r c 1) * B.gN m) * B.gN n' :=
              mul_le_mul_of_nonneg_right (gN_mul_le _ _) (tr_gN_nonneg _)
          _ ≤ ((B.gN n⁻¹ * B.gN (bigCell k r c 1)) * B.gN m) * B.gN n' :=
              mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right (gN_mul_le _ _) (tr_gN_nonneg _))
                (tr_gN_nonneg _)
          _ = B.gN n * B.gN (bigCell k r c 1) * B.gN m * B.gN n' := by rw [gN_inv_GV hn]
      have hrp := Real.rpow_le_rpow_of_nonpos hgpos hle (by linarith : -A ≤ 0)
      have e1 : (B.gN n * B.gN (bigCell k r c 1) * B.gN m * B.gN n') ^ (-A) =
          B.gN n ^ (-A) * B.gN (bigCell k r c 1) ^ (-A) * B.gN m ^ (-A) * B.gN n' ^ (-A) := by
        rw [Real.mul_rpow (mul_nonneg (mul_nonneg (tr_gN_nonneg _) (tr_gN_nonneg _)) (tr_gN_nonneg _))
            (tr_gN_nonneg _),
          Real.mul_rpow (mul_nonneg (tr_gN_nonneg _) (tr_gN_nonneg _)) (tr_gN_nonneg _),
          Real.mul_rpow (tr_gN_nonneg _) (tr_gN_nonneg _)]
      rw [e1] at hrp
      have hnn : ∀ g : B.Mat k r, 0 ≤ B.gN g ^ (-A) := fun g => Real.rpow_nonneg (tr_gN_nonneg _) _
      calc β * ((f p.1.1 * f p.1.2) * f p.2)
          = ENNReal.ofReal (B.gN n ^ (-A) * B.gN (bigCell k r c 1) ^ (-A) * B.gN m ^ (-A) * B.gN n' ^ (-A)) := by
            rw [ENNReal.ofReal_mul (mul_nonneg (mul_nonneg (hnn _) (hnn _)) (hnn _)),
              ENNReal.ofReal_mul (mul_nonneg (hnn _) (hnn _)), ENNReal.ofReal_mul (hnn _)]
            simp only [hfdef, hβ]
            ring
        _ ≤ f ((Matrix.of p.1.1)⁻¹ * bigCell k r c 1 * Matrix.of p.2 * Matrix.of p.1.2) :=
            ENNReal.ofReal_le_ofReal hrp
    refine le_trans (le_of_eq ?_) (lintegral_mono_ae hpt)
    have hm3 : Measurable (fun p : (Mt k r × Mt k r) × Mt k r => f p.1.1 * f p.1.2 * f p.2) :=
      ((hfm.comp (measurable_fst.comp measurable_fst)).mul (hfm.comp (measurable_snd.comp measurable_fst))).mul
        (hfm.comp measurable_snd)
    have hm2 : Measurable (fun q : Mt k r × Mt k r => f q.1 * f q.2) :=
      (hfm.comp measurable_fst).mul (hfm.comp measurable_snd)
    have e1 : ∫⁻ p : (Mt k r × Mt k r) × Mt k r, f p.1.1 * f p.1.2 * f p.2 ∂((μN.prod μN).prod μb) =
        (∫⁻ q : Mt k r × Mt k r, f q.1 * f q.2 ∂(μN.prod μN)) * Ib :=
      lintegral_prod_mul (f := fun q : Mt k r × Mt k r => f q.1 * f q.2) (g := f) hm2.aemeasurable hfm.aemeasurable
    have e2 : ∫⁻ q : Mt k r × Mt k r, f q.1 * f q.2 ∂(μN.prod μN) = IN * IN :=
      lintegral_prod_mul (f := f) (g := f) hfm.aemeasurable hfm.aemeasurable
    rw [lintegral_const_mul _ hm3, e1, e2]

  set F : (Fin r → ℂ) → ENNReal := fun c => ENNReal.ofReal (B2.cWeight k r c) *
    ENNReal.ofReal (B.gN (bigCell k r c 1) ^ (-A)) with hFdef
  have hFm : Measurable F :=
    (ENNReal.measurable_ofReal.comp tr_cWeight_cont.measurable).mul (hfm.comp tr_meas_bigCell)
  set K := ∫⁻ c, S.indicator F c with hKdef
  have hK : K ≠ 0 := by
    intro h0
    have h1 := (lintegral_eq_zero_iff (hFm.indicator hSm)).1 h0
    have hpos : ∀ c ∈ S, S.indicator F c ≠ 0 := by
      intro c hc
      rw [Set.indicator_of_mem hc]
      refine ne_of_gt (ENNReal.mul_pos ?_ ?_)
      · refine ne_of_gt (ENNReal.ofReal_pos.2 ?_)
        unfold B2.cWeight
        exact Finset.prod_pos fun a _ => pow_pos (norm_pos_iff.2 (hc a)) _
      · exact ne_of_gt (tr_f_pos (tr_bigCell_one_mem hc))
    have h2 : (volume : Measure (Fin r → ℂ)) S = 0 := by
      refine measure_mono_null (fun c hc => ?_) (ae_iff.1 h1)
      exact hpos c hc
    have h3 := hSo.measure_pos (volume : Measure (Fin r → ℂ)) ⟨fun _ => 1, fun a => one_ne_zero⟩
    exact absurd h2 (ne_of_gt h3)
  have hlow : K * (IN * IN * Ib) ≤ ∫⁻ c, ENNReal.ofReal (B2.cWeight k r c) *
      ∫⁻ p : (Mt k r × Mt k r) × Mt k r,
        f ((Matrix.of p.1.1)⁻¹ * bigCell k r c 1 * Matrix.of p.2 * Matrix.of p.1.2) ∂((μN.prod μN).prod μb) := by
    rw [hKdef, ← lintegral_mul_const _ (hFm.indicator hSm)]
    refine lintegral_mono fun c => ?_
    by_cases hc : c ∈ S
    · rw [Set.indicator_of_mem hc, hFdef, mul_assoc]
      gcongr
      exact hinner c hc
    · rw [Set.indicator_of_notMem hc, zero_mul]
      exact zero_le
  have hfin2 : (C : ENNReal) * (K * (IN * IN * Ib)) < ⊤ := by
    refine lt_of_le_of_lt ?_ hfin
    gcongr
  by_contra htop
  have hIN : IN = ⊤ := not_lt_top_iff.1 htop
  have hCne : (C : ENNReal) ≠ 0 := by exact_mod_cast (ne_of_gt hC)
  rw [hIN, ENNReal.top_mul (by simp), ENNReal.top_mul hIb, ENNReal.mul_top hK, ENNReal.mul_top hCne] at hfin2
  exact lt_irrefl _ hfin2

theorem intN (k r : ℕ) (μN : Measure (Mt k r)) (hN : IsHaarOn (Nset k r) μN) (a : ℝ) (ha : B.AB k r ≤ a) :
    Integrable (fun x : Mt k r => B.gN (Matrix.of x : B.Mat k r) ^ (-a)) μN := by
  refine ⟨((P.HaarUniquenessConjugation.gN_meas k r).pow_const _).aestronglyMeasurable, ?_⟩
  rw [hasFiniteIntegral_iff_ofReal (Eventually.of_forall fun x => Real.rpow_nonneg (tr_gN_nonneg _) _)]
  refine lt_of_le_of_lt (lintegral_mono_ae ?_) (intN_AB hN)
  filter_upwards [P.LongWeylElement.haar_ae hN] with x hx
  have h1 : 1 ≤ B.gN (Matrix.of x : B.Mat k r) := P.BetaSesquilinearity.gN_ge_one hx.1
  exact ENNReal.ofReal_le_ofReal (Real.rpow_le_rpow_of_exponent_le h1 (by linarith))

end Formalism.FourierDecayAlt.P.SliceLastLevel

end PartTr

section PartCd
open Matrix Filter Topology
open scoped ContDiff

namespace Formalism.FourierDecayAlt.P.SliceLastLevel

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF

open scoped Matrix.Norms.Elementwise

section cdmap

variable {k r d : ℕ} {O : Set (Fin d → ℝ)} {cx : (Fin d → ℝ) → Fin r → ℂ} {μx : (Fin d → ℝ) → B.Mat k 0}

end cdmap

section cdmap2

variable {k r d : ℕ} {O : Set (Fin d → ℝ)} {cx : (Fin d → ℝ) → Fin r → ℂ} {μx : (Fin d → ℝ) → B.Mat k 0}

end cdmap2

section cdmap3

variable {k r d : ℕ} {O : Set (Fin d → ℝ)} {cx : (Fin d → ℝ) → Fin r → ℂ} {μx : (Fin d → ℝ) → B.Mat k 0}
  {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

end cdmap3

end Formalism.FourierDecayAlt.P.SliceLastLevel

end PartCd

section PartM

open Matrix MeasureTheory Filter Topology

namespace Formalism.FourierDecayAlt.P.SliceLastLevel

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF

open scoped Matrix.Norms.Elementwise

section bound

variable {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

lemma allLie_lr' {u v : List (B.Mat k r)} (hu : ∀ X ∈ u, B.inLie k r X) (hv : ∀ X ∈ v, B.inLie k r X) :
    Formalism.FourierDecayAlt.P.B4.AllLie (Formalism.FourierDecayAlt.P.B4.lr u v) := by
  intro x hx
  simp only [Formalism.FourierDecayAlt.P.B4.lr, List.mem_append, List.mem_map] at hx
  rcases hx with ⟨X, hX, rfl⟩ | ⟨X, hX, rfl⟩
  · exact hu X hX
  · exact hv X hX

end bound

section meas

variable {k r : ℕ}

end meas

section clause2

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

end clause2

section clause12

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

end clause12

end Formalism.FourierDecayAlt.P.SliceLastLevel

end PartM

section PartE

open Matrix MeasureTheory Filter Topology
open scoped ContDiff

set_option linter.style.haveILetI false

namespace Formalism.FourierDecayAlt.P.SliceLastLevel

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF

open scoped Matrix.Norms.Elementwise

section words

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

end words

section clause3

variable {k r d : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

end clause3

section clause3b

variable {k r d : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

end clause3b

end Formalism.FourierDecayAlt.P.SliceLastLevel

end PartE
