module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLocCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactSupportFiniteClass
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelOneSquareIntegrableGeneral
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivCombCongr
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelSquareIntegrableOfTransport
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevTransportHer
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ContinuousZetaL
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsPlaceWithVectors
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelTransport
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ModuleFormEqRadialFormOne
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.Tower
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSliceCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHAsm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHCellTie
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHFamJFOK
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHOpClosed
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSliceFamGood
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSliceFamJF
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelZeroFormIntegrableCompact
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SfiniteOfHaar
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE2
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RadialIdentityOfQuadratic
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSliceDone
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETopHer
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RadialIdentityOfSpectralData
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RadialAdjointOfParts
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationContinuousOnInvertible
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelsOfBuiltSetting
import Formalism.HermitianCurvature.HermitianCurvatureProofs.QNFAsm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SiteTransport
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BXiAsm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.JfBetaAdjCOfLemmaBNorm
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormSesquilinearFiniteClass
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FsvMulFsvNeg
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftMemMatrixAlgebra
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionInsertionDiagonalCompat
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SfiniteOfIsHaarOn
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ThmPActualCptOfStepForm
import Std.Tactic.BVDecide.Normalize.Bool
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoIntUv

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLocFamCC, Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelOneSquareIntegrableOfTransport, Formalism.HermitianCurvature.HermitianCurvatureProofs.LevTransportU, Formalism.HermitianCurvature.HermitianCurvatureProofs.PTieUL, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLoc, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEOneLetterDens, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE_TopSpec

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLocFamCC =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLocFamCC", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLocCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactSupportFiniteClass\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RadialAdjointOfParts\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Filter Topology
open scoped ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE.FamCC

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF Formalism.FourierDecayAlt.P.B4 Formalism.FourierDecayAlt.P.JFxG

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

theorem phiP_contDiffAt (f : ℂ × Mat k r → E) {U : Set (ℂ × Mat k r)} (hU : IsOpen U) (hf : ContDiffOn ℝ ∞ f U) :
    ∀ (j : ℕ) (bs : Fin j → Bool) (p : ℂ × ((Fin j → Mat k r) × Mat k r)), (p.1, p.2.2) ∈ U →
      ContDiffAt ℝ ∞ (fun p : ℂ × ((Fin j → Mat k r) × Mat k r) => Phi (fun x => f (p.1, x)) j bs p.2) p := by
  intro j
  induction j with
  | zero =>
    intro bs p hp
    have hm : ContDiff ℝ ∞ (fun p : ℂ × ((Fin 0 → Mat k r) × Mat k r) => (p.1, p.2.2)) :=
      contDiff_fst.prodMk (contDiff_snd.comp contDiff_snd)
    exact (hf.contDiffAt (hU.mem_nhds hp)).comp p hm.contDiffAt
  | succ j ih =>
    intro bs p hp
    have hsh : ContDiff ℝ ∞ (fun q : (ℂ × ((Fin (j + 1) → Mat k r) × Mat k r)) × Mat k r =>
        (q.1.1, ((fun i : Fin j => q.1.2.1 i.succ), q.2))) :=
      (contDiff_fst.comp contDiff_fst).prodMk
        ((contDiff_pi.2 fun (i : Fin j) =>
          (by simpa only [Function.comp_def] using
            (contDiff_apply ℝ (fun _ : Fin (j + 1) => Mat k r) i.succ).comp (contDiff_fst.comp (contDiff_snd.comp contDiff_fst)))).prodMk
          contDiff_snd)
    have h1 : ContDiffAt ℝ ∞ (Function.uncurry fun (q : ℂ × ((Fin (j + 1) → Mat k r) × Mat k r)) (g : Mat k r) =>
        Phi (fun x => f (q.1, x)) j (fun i => bs i.succ) ((fun i => q.2.1 i.succ), g)) (p, p.2.2) :=
      ContDiffAt.comp (g := fun q : ℂ × ((Fin j → Mat k r) × Mat k r) =>
        Phi (fun x => f (q.1, x)) j (fun i => bs i.succ) q.2) (p, p.2.2)
        (ih (fun i => bs i.succ) (p.1, ((fun i => p.2.1 i.succ), p.2.2)) hp) hsh.contDiffAt
    have h2 := ContDiffAt.fderiv h1 (contDiffAt_snd.comp p contDiffAt_snd) top_add_one_le
    have h3 : ContDiff ℝ ∞ (fun q : ℂ × ((Fin (j + 1) → Mat k r) × Mat k r) => vf (bs 0) (q.2.1 0) q.2.2) :=
      vf_contDiff (bs 0) (by simpa only [Function.comp_def] using
        (contDiff_apply ℝ (fun _ : Fin (j + 1) => Mat k r) 0).comp (contDiff_fst.comp contDiff_snd))
        (contDiff_snd.comp contDiff_snd)
    exact h2.clm_apply h3.contDiffAt

theorem local_boundP {G : ℂ → Mat k r → E} (f : ℂ × Mat k r → E) {U : Set (ℂ × Mat k r)} (hU : IsOpen U)
    (hf : ContDiffOn ℝ ∞ f U) (hGf : ∀ p ∈ U, p.2 ∈ GV k r → G p.1 p.2 = f p) (m : ℕ) {p₀ : ℂ × Mat k r}
    (hp₀ : p₀ ∈ U) :
    ∃ V ∈ 𝓝 p₀, ∃ c : ℝ, 0 ≤ c ∧ ∀ p ∈ V, p.2 ∈ GV k r → ∀ (j : ℕ), j ≤ m → ∀ (bs : Fin j → Bool)
      (Xs : Fin j → Mat k r), (∀ i, inLie k r (Xs i)) → (∀ i, Xs i ∈ Box k r) →
        ‖W (List.ofFn fun i => (bs i, Xs i)) (G p.1) p.2‖ ≤ c := by
  obtain ⟨ε, hε, hball⟩ := Metric.isOpen_iff.1 hU p₀ hp₀
  have hsub : Metric.closedBall p₀ (ε / 2) ⊆ U :=
    (Metric.closedBall_subset_ball (by linarith)).trans hball
  have hb : ∀ (j : ℕ) (bs : Fin j → Bool), ∃ c : ℝ, ∀ q ∈ Metric.closedBall p₀.1 (ε / 2) ×ˢ
      ((Set.pi Set.univ fun _ : Fin j => Box k r) ×ˢ Metric.closedBall p₀.2 (ε / 2)),
      ‖Phi (fun x => f (q.1, x)) j bs q.2‖ ≤ c := by
    intro j bs
    have hK : IsCompact (Metric.closedBall p₀.1 (ε / 2) ×ˢ
        ((Set.pi Set.univ fun _ : Fin j => Box k r) ×ˢ Metric.closedBall p₀.2 (ε / 2))) :=
      (isCompact_closedBall _ _).prod ((isCompact_univ_pi fun _ => box_compact).prod (isCompact_closedBall _ _))
    refine hK.exists_bound_of_continuousOn fun q hq => ?_
    have hqU : (q.1, q.2.2) ∈ U := by
      apply hsub
      rw [Metric.mem_closedBall, Prod.dist_eq]
      exact max_le (Metric.mem_closedBall.1 hq.1) (Metric.mem_closedBall.1 hq.2.2)
    exact (phiP_contDiffAt f hU hf j bs q hqU).continuousAt.continuousWithinAt
  choose c hcb using hb
  refine ⟨Metric.closedBall p₀ (ε / 2), Metric.closedBall_mem_nhds p₀ (by linarith),
    ∑ j : Fin (m + 1), ∑ bs : Fin j → Bool, |c j bs|, by positivity, ?_⟩
  intro p hp hpG j hj bs Xs hL hB
  have hpU : p ∈ U := hsub hp
  have hUt : IsOpen {x : Mat k r | (p.1, x) ∈ U} :=
    hU.preimage (continuous_const.prodMk continuous_id)
  have hft : ContDiffOn ℝ ∞ (fun x => f (p.1, x)) {x : Mat k r | (p.1, x) ∈ U} :=
    hf.comp (contDiff_const.prodMk contDiff_id).contDiffOn (fun x hx => hx)
  have hmem : p.2 ∈ {x : Mat k r | (p.1, x) ∈ U} := hpU
  rw [W_eq_phi hUt hft (fun x hx hxG => hGf (p.1, x) hx hxG) j bs Xs hL p.2 hmem hpG]
  have hpd : dist p p₀ ≤ ε / 2 := Metric.mem_closedBall.1 hp
  rw [Prod.dist_eq] at hpd
  have hq : (p.1, (Xs, p.2)) ∈ Metric.closedBall p₀.1 (ε / 2) ×ˢ
      ((Set.pi Set.univ fun _ : Fin j => Box k r) ×ˢ Metric.closedBall p₀.2 (ε / 2)) :=
    ⟨Metric.mem_closedBall.2 ((le_max_left _ _).trans hpd), fun i _ => hB i,
      Metric.mem_closedBall.2 ((le_max_right _ _).trans hpd)⟩
  calc ‖Phi (fun x => f (p.1, x)) j bs (Xs, p.2)‖ ≤ |c j bs| := (hcb j bs _ hq).trans (le_abs_self _)
    _ = |c (⟨j, by omega⟩ : Fin (m + 1)) bs| := rfl
    _ ≤ ∑ bs' : Fin (⟨j, by omega⟩ : Fin (m + 1)) → Bool, |c (⟨j, by omega⟩ : Fin (m + 1)) bs'| :=
        Finset.single_le_sum (f := fun bs' => |c (⟨j, by omega⟩ : Fin (m + 1)) bs'|) (fun _ _ => abs_nonneg _)
          (Finset.mem_univ bs)
    _ ≤ ∑ j' : Fin (m + 1), ∑ bs' : Fin j' → Bool, |c j' bs'| :=
        Finset.single_le_sum (f := fun j' : Fin (m + 1) => ∑ bs' : Fin j' → Bool, |c j' bs'|)
          (fun _ _ => Finset.sum_nonneg fun _ _ => abs_nonneg _) (Finset.mem_univ _)

theorem ccle_unif {G : ℂ → Mat k r → E} {K : Set ℂ} (hK : IsCompact K) {C : Set (Mat k r)} (hC : IsCompact C)
    (hloc : ∀ t ∈ K, ∀ γ ∈ GV k r, ∃ (U : Set (ℂ × Mat k r)) (f : ℂ × Mat k r → E), IsOpen U ∧ (t, γ) ∈ U ∧
      ContDiffOn ℝ ∞ f U ∧ ∀ p ∈ U, p.2 ∈ GV k r → G p.1 p.2 = f p)
    (hck : ∀ t ∈ K, CkOn ⊤ (GV k r) (G t))
    (hsupp : ∀ t ∈ K, ∀ γ, G t γ ≠ 0 → γ ∈ C) (A : ℝ) (m : ℕ) :
    ∃ c : ℝ, ∀ t ∈ K, CCle A m (G t) c := by
  classical
  have hS : IsCompact (K ×ˢ (C ∩ GV k r)) := hK.prod (hC.inter_right B5.GV_closed)
  have hl : ∀ p ∈ K ×ˢ (C ∩ GV k r), ∃ V, V ∈ 𝓝 p ∧ ∃ c : ℝ, 0 ≤ c ∧ ∀ q ∈ V, q.2 ∈ GV k r → ∀ (j : ℕ), j ≤ m →
      ∀ (bs : Fin j → Bool) (Xs : Fin j → Mat k r), (∀ i, inLie k r (Xs i)) → (∀ i, Xs i ∈ Box k r) →
        ‖W (List.ofFn fun i => (bs i, Xs i)) (G q.1) q.2‖ ≤ c := fun p hp => by
    obtain ⟨U, f, hU, hpU, hf, hGf⟩ := hloc p.1 hp.1 p.2 hp.2.2
    obtain ⟨V, hV, c, hc0, hc⟩ := local_boundP f hU hf hGf m (p₀ := (p.1, p.2)) hpU
    exact ⟨V, hV, c, hc0, hc⟩
  choose! V hV c hc0 hc using hl
  obtain ⟨s, hsS, hcov⟩ := hS.elim_nhds_subcover V hV
  have hsum0 : 0 ≤ ∑ x ∈ s, c x := Finset.sum_nonneg fun y hy => hc0 y (hsS y hy)
  have hcW : ∀ t ∈ K, ∀ g ∈ C ∩ GV k r, ∀ (j : ℕ), j ≤ m → ∀ (bs : Fin j → Bool) (Xs : Fin j → Mat k r),
      (∀ i, inLie k r (Xs i)) → (∀ i, Xs i ∈ Box k r) →
        ‖W (List.ofFn fun i => (bs i, Xs i)) (G t) g‖ ≤ ∑ x ∈ s, c x := by
    intro t ht g hg j hj bs Xs hL hB
    obtain ⟨x, hxs, hgx⟩ := Set.mem_iUnion₂.1 (hcov (show (t, g) ∈ K ×ˢ (C ∩ GV k r) from ⟨ht, hg⟩))
    exact (hc x (hsS x hxs) (t, g) hgx hg.2 j hj bs Xs hL hB).trans
      (Finset.single_le_sum (fun y hy => hc0 y (hsS y hy)) hxs)
  obtain ⟨cg, hcg⟩ := (hC.inter_right B5.GV_closed).exists_bound_of_continuousOn
    (f := fun g : Mat k r => gN g ^ A)
    fun g hg => ((B6.gN_continuous.continuousAt).rpow_const (Or.inl (B6.gN_pos hg.2).ne')).continuousWithinAt
  refine ⟨|cg| * ∑ x ∈ s, c x, fun t ht => ⟨B5.ckOn_mono le_top (hck t ht), ?_⟩⟩
  intro u v hu hv hlen g hg
  rw [dLR_eq]
  have hmemlr : ∀ y ∈ lr u v, unitLie k r y.2 := by
    intro y hy
    simp only [lr, List.mem_append, List.mem_map] at hy
    rcases hy with ⟨X, hX, rfl⟩ | ⟨X, hX, rfl⟩
    · exact hu X hX
    · exact hv X hX
  by_cases hgC : g ∈ C
  · have hw : lr u v = List.ofFn fun i : Fin (lr u v).length => ((lr u v)[i].1, (lr u v)[i].2) := by
      simp
    have hlen' : (lr u v).length ≤ m := by simp [lr]; omega
    have hb := hcW t ht g ⟨hgC, hg⟩ _ hlen' (fun i => (lr u v)[i].1) (fun i => (lr u v)[i].2)
      (fun i => (hmemlr _ (List.getElem_mem _)).1) (fun i => mem_box (hmemlr _ (List.getElem_mem _)).2)
    rw [← hw] at hb
    have hg1 : gN g ^ A ≤ |cg| := by
      have := hcg g ⟨hgC, hg⟩
      rw [Real.norm_eq_abs] at this
      exact (le_abs_self _).trans (this.trans (le_abs_self _))
    exact mul_le_mul hg1 hb (norm_nonneg _) (abs_nonneg _)
  · have h0 := W_local_zero hC.isClosed.isOpen_compl
      (fun x hx _ => by by_contra h; exact hx (hsupp t ht x h)) (lr u v)
      (fun y hy => (hmemlr y hy).1) g hgC hg
    rw [h0, norm_zero, mul_zero]
    positivity

end Formalism.FourierDecayAlt.P.CutSE.FamCC

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P5

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem family_uniform_compact_convergence : FamCCUnif := by
  intro Wp Wq _ _ _ _ _ _ P T j G hG K hK hK0 A m
  obtain ⟨hG1, hG2⟩ := hG
  obtain ⟨C, hC, ε, hε, hCε⟩ := hG2 K hK hK0
  have hck : ∀ t ∈ K, B.CkOn ⊤ (B.GV P.k (P.r - (j + 1))) (G t) := by
    intro t ht γ₀ hγ₀
    obtain ⟨U, f, hU, hmem, hf, hfe⟩ := hG1 t (hK0 t ht) γ₀ hγ₀
    have hcm : Continuous (fun γ : B.Mat P.k (P.r - (j + 1)) => (t, γ)) :=
      continuous_const.prodMk continuous_id
    refine ⟨(fun γ => (t, γ)) ⁻¹' U, fun γ => f (t, γ), hU.preimage hcm, hmem, ?_, ?_⟩
    · exact hf.comp (contDiff_const.prodMk contDiff_id).contDiffOn (fun γ hγ => hγ)
    · intro γ hγ hγG
      exact hfe (t, γ) hγ hγG
  exact FamCC.ccle_unif hK hC (fun t ht γ hγ => hG1 t (hK0 t ht) γ hγ) hck
    (fun t ht γ h => (hCε t ht γ h).1) A m

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLocFamCC =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelOneSquareIntegrableOfTransport =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelOneSquareIntegrableOfTransport", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelOneSquareIntegrableGeneral\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivCombCongr\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelSquareIntegrableOfTransport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped Matrix

noncomputable section

namespace Formalism.FourierDecayAlt.P5.HerD

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerA Formalism.FourierDecayAlt.P5.HerB Formalism.FourierDecayAlt.P5.HerC

section Tr

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
  [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
  [FiniteDimensional ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

theorem fs_tr (μ : Measure (Mt k r)) (l : Fin r) (c : Fin r → ℂ) (t : ℂ)
    {zi zi' : Fin (2 * (r - l.succ) + k + 1) → ℂ} {πi : Mx k (r - l.succ) → (Wp →L[ℂ] Wp)}
    {πi' : Mx k (r - l.succ) → (Wq →L[ℂ] Wq)} (μi : Measure (Mt k (r - l.succ)))
    (T : RadSp k r z z' π π' →ₗ[ℂ] RadSp k (r - l.succ) zi zi' πi πi') (κ : ℝ) (hκ : 0 < κ)
    (hT : ∀ Φ Ψ c'', pairAt μi (T Φ) (T Ψ) c'' =
      (κ : ℂ) * pairAt μ Φ Ψ (glue l.succ (Function.update c l t) (Formalism.FourierDecayAlt.P.PTie.shiftCf l.succ c'')))
    (Φ Ψ : RadSp k r z z' π π') :
    fs μ l Φ Ψ c t = (κ : ℂ)⁻¹ * ∫ c'' : Cf (r - l.succ) 0, wtI 0 c'' *
      pairAt μi (T Φ) (T Ψ) (glue 0 (shiftV l.succ (Function.update c l t)) c'') := by
  have hjl : (0 : Fin (r - l.succ + 1)).val + l.succ.val = l.succ.val := by simp
  have hκ0 : (κ : ℂ) ≠ 0 := by exact_mod_cast hκ.ne'
  unfold fs
  rw [← (shEqJ_mp l.succ l.succ 0 hjl).integral_comp', ← integral_const_mul]
  congr 1; funext c''
  rw [wtI_shEqJ, glue_shEqJ l.succ l.succ 0 hjl (Function.update c l t) (Function.update c l t) (fun _ _ => rfl), hT]
  field_simp

theorem level_one_square_integrable_of_transport (μ : Measure (Mt k r)) (l : Fin r) (c : Fin r → ℂ) (t : ℂ)
    {zi zi' : Fin (2 * (r - l.succ) + k + 1) → ℂ} {πi : Mx k (r - l.succ) → (Wp →L[ℂ] Wp)}
    {πi' : Mx k (r - l.succ) → (Wq →L[ℂ] Wq)} (μi : Measure (Mt k (r - l.succ)))
    (T : RadSp k r z z' π π' →ₗ[ℂ] RadSp k (r - l.succ) zi zi' πi πi') (κ : ℝ) (hκ : 0 < κ)
    (hT : ∀ Φ Ψ c'', pairAt μi (T Φ) (T Ψ) c'' =
      (κ : ℂ) * pairAt μ Φ Ψ (glue l.succ (Function.update c l t) (Formalism.FourierDecayAlt.P.PTie.shiftCf l.succ c'')))
    (Φ : RadSp k r z z' π π') (c₀ : Fin (r - l.succ) → ℂ) (h : LevelSquareIntegrable μi 0 (T Φ) c₀) :
    LevelSquareIntegrable μ l.succ Φ (Function.update c l t) :=
  level_square_integrable_of_transport μ l.succ (Function.update c l t) μi T κ hκ hT Φ c₀ h

end Tr

end Formalism.FourierDecayAlt.P5.HerD
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelOneSquareIntegrableOfTransport =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LevTransportU =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.LevTransportU", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevTransportHer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory

noncomputable section

namespace Formalism.FourierDecayAlt.P.PTie

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P.PBH

def LevTransportU : Prop :=
  ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par)
    (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp)) (π' : Mx P.k P.r → (Wq →L[ℂ] Wq))
    (X : ActualOps P.k P.r z z' π π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (Bs : B.RealPlaceData P.k P.r Wp Wq),
    IsData P z z' π π' X μ L st l0 → Bs.z = z → Bs.z' = z' → Bs.π = π → Bs.π' = π' →
    ∀ (i : Fin (P.r + 1)),
    ∃ Tw : D.LevTower P.k P.r Wp Wq, D.TowerNormalised Tw ∧
      Tw.base.z = z ∧ Tw.base.z' = z' ∧ Tw.base.π = π ∧ Tw.base.π' = π' ∧
    ∃ (Di : B.RealPlaceData P.k (P.r - i) Wp Wq)
      (Xi : ActualOps (JC.parLev P i).k (JC.parLev P i).r Di.z Di.z' Di.π Di.π') (μi : Measure (Mt P.k (P.r - i)))
      (Li : R.LevelData (Pr (RadSp P.k (P.r - i) Di.z Di.z' Di.π Di.π')) (P.r - i))
      (sti : Fr.Start (Pr (RadSp P.k (P.r - i) Di.z Di.z' Di.π Di.π'))) (κ : ℝ),
      Di = Tw.bs i ∧ 0 < κ ∧ IsData (JC.parLev P i) Di.z Di.z' Di.π Di.π' Xi μi Li sti l0 ∧
      ∀ (c : Fin P.r → ℂ), (∀ l : Fin P.r, l.val < i.val → c l ≠ 0) →
      ∃ T : RadSp P.k P.r z z' π π' →ₗ[ℂ] RadSp P.k (P.r - i) Di.z Di.z' Di.π Di.π',
        LevTrClauses P μ L st l0 i c Di μi Li sti T ∧
        ∀ Φ Ψ c'', pairAt μi (T Φ) (T Ψ) c'' = (κ : ℂ) * pairAt μ Φ Ψ (glue i c (shiftCf i c''))

end Formalism.FourierDecayAlt.P.PTie
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.LevTransportU =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PTieUL =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.PTieUL", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevTransportU\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationContinuousOnInvertible\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ContinuousZetaL\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsPlaceWithVectors\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelTransport\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelsOfBuiltSetting\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ModuleFormEqRadialFormOne\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.QNFAsm\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SiteTransport\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.Tower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory
open scoped ENNReal NNReal

noncomputable section

namespace Formalism.FourierDecayAlt.P.PTieUL

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.PBH Formalism.FourierDecayAlt.P.PTieB Formalism.FourierDecayAlt.P.PTieL

theorem lev_indU {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par)
    (T : D.LevTower P.k P.r Wp Wq) (hP : IsPlace P T.base.z T.base.z' T.base.π T.base.π')
    (X : ActualOps P.k P.r T.base.z T.base.z' T.base.π T.base.π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r T.base.z T.base.z' T.base.π T.base.π')) P.r)
    (st : Fr.Start (Pr (RadSp P.k P.r T.base.z T.base.z' T.base.π T.base.π'))) (l0 : ℕ)
    (hD : P5.IsData P T.base.z T.base.z' T.base.π T.base.π' X μ L st l0) :
    ∀ (j : ℕ) (hj : j ≤ P.r),
    ∃ (Xj : ActualOps (JC.parLev P j).k (JC.parLev P j).r (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π')
      (μj : Measure (Mt P.k (P.r - j)))
      (Lj : R.LevelData (Pr (RadSp P.k (P.r - j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π')) (P.r - j))
      (stj : Fr.Start (Pr (RadSp P.k (P.r - j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π'))) (κ : ℝ),
      0 < κ ∧ P5.IsData (JC.parLev P j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π' Xj μj Lj stj l0 ∧
      KB.ZetaNorm (T.bs j) μj ∧
      ∀ c : Fin P.r → ℂ, (∀ l : Fin P.r, l.val < j → c l ≠ 0) →
      ∃ Tj : RadSp P.k P.r T.base.z T.base.z' T.base.π T.base.π' →ₗ[ℂ]
        RadSp P.k (P.r - j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π',
      (∀ Φ c'' g, (Tj Φ : Fn P.k (P.r - j) (Wq →L[ℂ] Wp)) c'' g =
        (Φ : Fn P.k P.r (Wq →L[ℂ] Wp)) (P5.glue ⟨j, by omega⟩ c (PTie.shiftCf ⟨j, by omega⟩ c''))
          (D.castM (by omega) (ιLev P.k j (P.r - j) g))) ∧
      (∀ Φ Ψ c'', P5.pairAt μj (Tj Φ) (Tj Ψ) c'' =
        (κ : ℂ) * P5.pairAt μ Φ Ψ (P5.glue ⟨j, by omega⟩ c (PTie.shiftCf ⟨j, by omega⟩ c''))) ∧
      (∀ l : Fin (P.r - j), Rel Tj (L.p ⟨l.val + j, by omega⟩) (Lj.p l) ∧
        Rel Tj (L.c ⟨l.val + j, by omega⟩) (Lj.c l) ∧ Rel Tj (L.ci ⟨l.val + j, by omega⟩) (Lj.ci l)) ∧
      ∀ (n : ℕ) (hn : n + j ≤ P.r) (Y : ℂ),
        MRel Tj (P5.QQi L st ⟨n + j, by omega⟩ Y) (P5.QQi Lj stj ⟨n, by omega⟩ Y) := by
  intro j
  induction j with
  | zero =>
    intro _
    obtain ⟨μ0, hμ0⟩ := Formalism.FourierDecayAlt.P.exists_zeta_normalized_haar P.k (P.r - 0) Wp Wq (T.bs 0)
    have h1 : B.IsHaarOn (Glev P.k P.r (Fin.last P.r)) μ := hD.2.1
    obtain ⟨a, ha⟩ : ∃ a : ℝ≥0, μ = a • μ0 := by
      have hU := Formalism.FourierDecayAlt.P.opposite_weyl_subgroup_closed P.k P.r
      have h1' := h1
      have h0 : B.IsHaarOn (Glev P.k P.r (Fin.last P.r)) μ0 := hμ0.1
      rw [glev_last_eq] at h1' h0
      exact Formalism.FourierDecayAlt.P.haar_measure_unique_up_to_scalar P.k P.r _ μ0 μ hU h0 h1'.conc h1'.left h1'.finite_compact
    have ha0 : (a : ℝ) ≠ 0 := by
      intro h
      apply h1.ne_zero
      rw [ha, show a = 0 from by exact_mod_cast h, zero_smul]
    refine ⟨X, μ0, L, st, (a : ℝ)⁻¹, inv_pos.2 (lt_of_le_of_ne a.2 (Ne.symm ha0)),
      ⟨JCTx5.isPlace_lev P T ⟨0, by omega⟩ hP, hμ0.1, hD.2.2⟩, hμ0, fun c _ => ⟨LinearMap.id,
      fun Φ c'' g => ?_, fun Φ Ψ c'' => ?_, fun l => ⟨rel_id _, rel_id _, rel_id _⟩, fun n hn Y => mrel_id _⟩⟩
    · rw [glue_zero', castM_iota0]; rfl
    · rw [glue_zero', ha, pairAt_smul, ← mul_assoc, ← Complex.ofReal_mul, inv_mul_cancel₀ ha0, Complex.ofReal_one,
        one_mul]
      rfl
  | succ j ih =>
    intro hj'
    obtain ⟨Xj, μj, Lj, stj, κ, hκ, hDj, hZj, hall⟩ := ih (by omega)
    have hPl := JCTx5.isPlace_lev P T ⟨j + 1, by omega⟩ hP
    obtain ⟨Xs⟩ := Formalism.FourierDecayAlt.P.actual_operators_exist _ _ _ _ _ _ _ hPl
    obtain ⟨Ls, sts, h1, h2, h3, h4, h5, h6⟩ := Formalism.FourierDecayAlt.P.level_start_actual _ _ _ _ _ _ _ hPl Xs l0
    obtain ⟨μs, hμs⟩ := Formalism.FourierDecayAlt.P.exists_zeta_normalized_haar P.k (P.r - (j + 1)) Wp Wq (T.bs (j + 1))
    have hDs : P5.IsData (JC.parLev P (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z' (T.bs (j + 1)).π
        (T.bs (j + 1)).π' Xs μs Ls sts l0 := ⟨hPl, hμs.1, h1, h2, h3, h4, h5, h6⟩
    refine ⟨Xs, μs, Ls, sts, κ, hκ, hDs, hμs, fun c hc => ?_⟩
    obtain ⟨Tj, hform, hpair, hsite, hqq⟩ := hall c (fun l hl => hc l (by omega))
    have hn : P.r - j = 1 + (P.r - (j + 1)) := by omega
    have hcj : c ⟨j, by omega⟩ ≠ 0 := hc ⟨j, by omega⟩ (by simp)
    obtain ⟨T', hf', hs', hq', hp'⟩ := step_cast (k := P.k) (n := P.r - j) (ρ := P.r - (j + 1)) hn
      (levTower_bs_z_eq_castV_liftVec T j hj') (levTower_bs_z'_eq_castV_liftVec T j hj') (T.bs (j + 1)).z_mem (T.bs (j + 1)).z'_mem (tower_π T j hj')
      (tower_π' T j hj') Xj Xs Lj stj Ls sts (M.sgn (JC.parLev P j) l0) μj μs hDj.2.2.1 hDs.2.2.1
      hDj.2.2.2.1 hDs.2.2.2.1 hZj.1 hμs.1 hZj.2 hμs.2 (c ⟨j, by omega⟩) hcj
    refine ⟨T' ∘ₗ Tj, fun Φ c'' g => ?_, fun Φ Ψ c'' => ?_, fun l => ?_, fun n hn' Y => ?_⟩
    · rw [LinearMap.comp_apply, hf', hform, glue_step j hj' c c'' hn,
        lift_lift_M j (P.r - (j + 1)) (P.r - j) P.r hn.symm (by omega) (by omega)]
    · rw [LinearMap.comp_apply, LinearMap.comp_apply, hp', hpair, glue_step j hj' c c'' hn]
    · have e : (⟨l.val + 1 + j, by omega⟩ : Fin P.r) = ⟨l.val + (j + 1), by omega⟩ :=
        Fin.ext (show l.val + 1 + j = l.val + (j + 1) by omega)
      obtain ⟨a1, a2, a3⟩ := hsite ⟨l.val + 1, by omega⟩
      obtain ⟨b1, b2, b3⟩ := hs' l
      rw [← e]
      exact ⟨rel_comp a1 b1, rel_comp a2 b2, rel_comp a3 b3⟩
    · have e : (⟨n + 1 + j, by omega⟩ : Fin (P.r + 1)) = ⟨n + (j + 1), by omega⟩ :=
        Fin.ext (show n + 1 + j = n + (j + 1) by omega)
      have a := hqq (n + 1) (by omega) Y
      have b := hq' n (by omega) Y
      rw [← e]
      exact mrel_comp a b

theorem levTransportU : Formalism.FourierDecayAlt.P.PTie.LevTransportU := by
  intro Wp Wq _ _ _ _ _ _ P z z' π π' X μ L st l0 Bs hD hz hz' hπ hπ' i
  obtain ⟨T, h1, h2, h3, h4, hN⟩ := _root_.Formalism.FourierDecayAlt.P.HaarMassHermitianCurvature.towerAt P.k P.r Wp Wq Bs
  have e1 : T.base.z = z := h1.trans hz
  have e2 : T.base.z' = z' := h2.trans hz'
  have e3 : T.base.π = π := h3.trans hπ
  have e4 : T.base.π' = π' := h4.trans hπ'
  subst e1 e2 e3 e4
  obtain ⟨Xi, μi, Li, sti, κ, hκ, hDi, -, hall⟩ := lev_indU P T hD.1 X μ L st l0 hD i.val (by omega)
  refine ⟨T, hN, rfl, rfl, rfl, rfl, T.bs i, Xi, μi, Li, sti, κ, rfl, hκ, hDi, fun c hc => ?_⟩
  obtain ⟨Ti, hform, hpair, hsite, hqq⟩ := hall c hc
  refine ⟨Ti, ⟨hform, ⟨κ, hκ, hpair⟩, fun n hn Y => hqq n hn Y,
    fun S _ _ w => ⟨fun l => ?_, fun n hn => ?_, fun hw => ?_⟩⟩, hpair⟩
  · obtain ⟨a1, a2, a3⟩ := hsite l
    exact arel_bT (σ := P5.site L ⟨l.val + i, by omega⟩) (σ' := P5.site Li l) a1 a2 a3 w
  · exact arel_RRw (fun Y => hqq n hn Y) w
  · obtain ⟨⟨hA1, hA2, hA3, hA4⟩, hw2, hw3⟩ := hw
    have hq : sti.q = st.q := hDi.2.2.2.2.1.trans hD.2.2.2.2.1.symm
    have hinv : sti.inv = st.inv := hDi.2.2.2.2.2.1.trans hD.2.2.2.2.2.1.symm
    refine ⟨⟨hA1, hA2, fun l hl => ?_, hA4⟩, hw2, hw3⟩
    rw [hq, hinv]
    exact hA3 l hl

end Formalism.FourierDecayAlt.P.PTieUL

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PTieUL =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLoc =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLoc", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLocCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSliceCut\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BXiAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLocFamCC\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHAsm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHCellTie\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHFamJFOK\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHOpClosed\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSliceFamGood\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSHSliceFamJF\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.JfBetaAdjCOfLemmaBNorm\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelFormSesquilinearFiniteClass\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelOneSquareIntegrableOfTransport\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelZeroFormIntegrableCompact\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelsOfBuiltSetting\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PTieUL\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SfiniteOfHaar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Matrix\nimport Mathlib.Topology.UniformSpace.Uniformizable\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivCombCongr\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology

noncomputable section

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerD Formalism.FourierDecayAlt.P.PBH

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem jSRadLoc_of (hU : FamCCUnif) : JSRadLoc := by
  intro Wp Wq _ _ _ _ _ _ P z z' π π' X μ L st l0 D hD hl1 hl2 hz hz' hπ hπ' l hl ε hε G hN hGc Φ hlc hΦ c hc js hjs t0 ht0
  have hr0 : 0 < P.r := by have := l.isLt; omega
  obtain rfl : l = ⟨0, hr0⟩ := Fin.ext hl
  obtain ⟨Tw, hNw, e1, e2, e3, e4, Di, Xi, μi, Li, sti, κ, hDiEq, hκ, hDi, hall⟩ :=
    _root_.Formalism.FourierDecayAlt.P.PTieUL.levTransportU Wp Wq P z z' π π' X μ L st l0 D hD hz hz' hπ hπ' ⟨1, by omega⟩
  subst e1 e2 e3 e4
  subst hDiEq
  have hj : 0 + 1 ≤ P.r := by omega
  have hP : IsPlace P Tw.base.z Tw.base.z' Tw.base.π Tw.base.π' := hD.1
  have hPj := Formalism.FourierDecayAlt.P.JCTx5.isPlace_lev P Tw ⟨0, by omega⟩ hP
  have hPs := Formalism.FourierDecayAlt.P.JCTx5.isPlace_lev P Tw ⟨0 + 1, by omega⟩ hP
  obtain ⟨κ0, hκ0⟩ := _root_.Formalism.FourierDecayAlt.P.PTieJ.jfScale P.k P.r Wp Wq D Tw.base hz hz' hπ hπ'

  set G0 : B.Mat P.k (P.r - 0) → (Wq →L[ℂ] Wp) := fun g => κ0 • G g with hG0
  have hG0ok : JFOKCpt (JC.parLev P 0) (Tw.bs 0).z (Tw.bs 0).z' G0 := by
    have hck : B.CkOn ⊤ (B.GV P.k (P.r - 0)) G0 := by
      intro g₀ hg₀
      obtain ⟨U, f', hU', hgU, hcf, hff⟩ := hN.1 g₀ hg₀
      exact ⟨U, fun g => κ0 • f' g, hU', hgU, hcf.const_smul κ0, fun g hg hgG => by
        simp only [hG0]; rw [hff g hg hgG]⟩
    have hz0 : ∀ g ∈ B.GV P.k (P.r - 0), g ∉ tsupport G → G0 g = 0 := fun g _ hg => by
      simp only [hG0]; rw [image_eq_zero_of_notMem_tsupport hg, smul_zero]
    refine ⟨⟨fun A m => Formalism.FourierDecayAlt.P.JFxG.cptInCC_G hck hGc hz0 A m, ε, hε, fun g hg hne => ?_⟩, ?_⟩
    · have hne' : G g ≠ 0 := fun h => hne (by simp only [hG0]; rw [h, smul_zero])
      have := hN.2.2 g hg hne'
      rwa [hz, hz'] at this
    · exact HasCompactSupport.intro hGc (fun g hg => by simp only [hG0]; rw [image_eq_zero_of_notMem_tsupport hg, smul_zero])
  have hΦ0 : IsRadJF (JC.parLev P 0) (Tw.bs 0).z (Tw.bs 0).z' (Tw.bs 0).π (Tw.bs 0).π' (Tw.bs 0) G0 Φ := by
    intro (x : (Fin P.r → ℂ) × Mx P.k P.r) hx
    have e : B.JF Tw.base G0 = κ0 • B.JF Tw.base G := by
      funext h
      exact Formalism.FourierDecayAlt.P.JCx2.bc_JF_smul (Bs := Tw.base) κ0 G h
    have h2 : resG P.k P.r (Fin.last P.r) (B.JF D G) x.1 x.2 =
        resG P.k P.r (Fin.last P.r) (B.JF Tw.base G0) x.1 x.2 := by
      rw [hκ0 G, e]
    exact (hΦ x hx).trans h2
  have hC0 : CutSH.InC Tw 0 hj Φ :=
    CutSH.inC_seed _root_.Formalism.FourierDecayAlt.P.CutSH.cell_compatibility Formalism.FourierDecayAlt.P.slice_family_good
      CutSH.slice_family_orbital hP hNw hPj hPs G0 hG0ok Φ hΦ0
  have hW : ∀ js : List (Fin 6), CutSH.InC Tw 0 hj (wOp X ⟨0, hr0⟩ js Φ) := by
    intro js
    induction js with
    | nil => simpa [wOp] using hC0
    | cons j js ih =>
      have e : wOp X ⟨0, hr0⟩ (j :: js) Φ = X.op ⟨0, hr0⟩ j (wOp X ⟨0, hr0⟩ js Φ) := by
        simp [wOp, List.map_cons, List.prod_cons]
      rw [e]
      exact Formalism.FourierDecayAlt.P.operator_class_closed Wp Wq P Tw hP hNw 0 hj hPj hPs X j _ ih
  obtain ⟨Gj, hGj, hRep⟩ := hW js
  set K : Set ℂ := Metric.closedBall t0 (‖t0‖ / 2) with hKdef
  have hK : IsCompact K := isCompact_closedBall _ _
  have hn0 : 0 < ‖t0‖ := norm_pos_iff.2 ht0
  have hK0 : ∀ t ∈ K, t ≠ 0 := fun t ht h0 => by
    rw [h0, hKdef, Metric.mem_closedBall, dist_zero_left] at ht
    linarith
  obtain ⟨c4, hc4⟩ := hU Wp Wq P Tw 0 Gj hGj K hK hK0 (B.AB P.k (P.r - (0 + 1))) 4
  obtain ⟨CR, hCR, hRB⟩ := Formalism.FourierDecayAlt.P.radial_beta_pos Wp Wq P Tw ⟨1, by omega⟩ μi hDi.2.1
  obtain ⟨-, -, -, ⟨CB, hB1⟩, -⟩ := Formalism.FourierDecayAlt.P.b_any_of_xi P.k (P.r - (0 + 1)) Wp Wq (Tw.bs (0 + 1))
    (B.AB _ _) le_rfl
  refine ⟨‖t0‖ / 2, by positivity, κ⁻¹ * CR⁻¹ * (|CB| * |c4| * |c4|), fun t ht => ?_⟩
  have htK : t ∈ K := Metric.ball_subset_closedBall ht
  have ht0' : t ≠ 0 := hK0 t htK
  obtain ⟨Tt, ⟨hform, -⟩, hpair⟩ := hall (Function.update c ⟨0, hr0⟩ t) (fun l' hl' => by
    have e : l' = ⟨0, hr0⟩ := Fin.ext (by simp at hl'; omega)
    subst e
    simpa using ht0')

  set Ψ := wOp X ⟨0, hr0⟩ js Φ with hΨdef
  have hTΨ : ∀ x ∈ DomR P.k (P.r - (0 + 1)) (Tw.bs (0 + 1)).z (Tw.bs (0 + 1)).z',
      (Tt Ψ : Fn P.k (P.r - (0 + 1)) (Wq →L[ℂ] Wp)) x.1 x.2 =
        resG P.k (P.r - (0 + 1)) (Fin.last _) (B.JF (Tw.bs (0 + 1)) (Gj t)) x.1 x.2 := by
    intro x hx
    rw [hform]
    have hg : glue ⟨1, by omega⟩ (Function.update c ⟨0, hr0⟩ t) (PTie.shiftCf ⟨1, by omega⟩ x.1) =
        CutSH.cc 0 hj t x.1 := by
      funext l'
      rcases Nat.eq_zero_or_pos l'.val with h | h
      · have e : l' = ⟨0, hr0⟩ := Fin.ext h
        subst e
        simp [glue, CutSH.cc, consC]
      · have hne : l' ≠ ⟨0, hr0⟩ := fun e => by rw [e] at h; simp at h
        have h1 : (1 : ℕ) ≤ l'.val := h
        simp [glue, CutSH.cc, consC, PTie.shiftCf, h1, Nat.pos_iff_ne_zero.mp h]
    rw [hg]
    exact hRep t ht0' x hx
  obtain ⟨⟨hInCC, εt, hεt, hεG⟩, -⟩ := CutSH.family_orbital_valid Wp Wq P Tw 0 Gj hGj t ht0'
  have hck : B.CkOn ⊤ (B.GV P.k (P.r - (0 + 1))) (Gj t) := by
    intro γ₀ hγ₀
    obtain ⟨U, f, hU', hmem, hf, hfe⟩ := hGj.1 t ht0' γ₀ hγ₀
    have hcm : Continuous (fun γ : B.Mat P.k (P.r - (0 + 1)) => (t, γ)) :=
      continuous_const.prodMk continuous_id
    refine ⟨(fun γ => (t, γ)) ⁻¹' U, fun γ => f (t, γ), hU'.preimage hcm, hmem, ?_, ?_⟩
    · exact hf.comp (contDiff_const.prodMk contDiff_id).contDiffOn (fun γ hγ => hγ)
    · intro γ hγ hγG
      exact hfe (t, γ) hγ hγG
  have hNice : JC.NiceCoef (Tw.bs (0 + 1)) εt (Gj t) := ⟨hck, hInCC, hεG⟩
  have hL2 : LevelSquareIntegrable μi 0 (Tt Ψ) 0 := by
    have h := Formalism.FourierDecayAlt.P5.HerC.level_zero_form_integrable_compact (S := Empty) (Tw.bs (0 + 1)) μi hDi.2.1 (fun _ => Gj t) (fun _ => Gj t)
      (fun _ => Tt Ψ) (fun _ => Tt Ψ) (fun _ => hInCC) (fun _ => hInCC) (fun _ => hTΨ) (fun _ => hTΨ) 0
    unfold LevelSquareIntegrable
    simpa [wtI] using h
  refine ⟨level_one_square_integrable_of_transport μ ⟨0, hr0⟩ c t μi Tt κ hκ hpair Ψ 0 hL2, ?_⟩
  rw [fs_tr μ ⟨0, hr0⟩ c t μi Tt κ hκ hpair Ψ Ψ]
  have hform0 : (∫ c'' : Cf (P.r - (0 + 1)) 0, wtI 0 c'' * pairAt μi (Tt Ψ) (Tt Ψ)
      (glue 0 (shiftV (Fin.succ ⟨0, hr0⟩) (Function.update c ⟨0, hr0⟩ t)) c'')) =
      form μi 0 (fun _ : Wd.Ix (Fin 0) => Tt Ψ) (fun _ => Tt Ψ) 0 := by
    unfold form
    congr 1
    funext c''
    have eg : glue 0 (shiftV (Fin.succ ⟨0, hr0⟩) (Function.update c ⟨0, hr0⟩ t)) c'' = glue 0 0 c'' := by
      funext l'; simp [glue]
    rw [eg]
    simp [wtI]
  have hβ := hRB 0 (fun _ => Gj t) (fun _ => Gj t) (fun _ => Tt Ψ) (fun _ => Tt Ψ) εt hεt (fun _ => hNice)
    (fun _ => hNice) (fun _ => hTΨ) (fun _ => hTΨ)
  have hβ' : B.beta (Tw.bs (0 + 1)) (Gj t) (Gj t) = (CR : ℂ) * form μi 0 (fun _ : Wd.Ix (Fin 0) => Tt Ψ) (fun _ => Tt Ψ) 0 := by
    convert hβ using 1
    · simp
    · rfl
  have hb := (hB1 (Gj t) (Gj t) c4 c4 (hInCC _ 5) (hInCC _ 5) (hc4 t htK) (hc4 t htK)).2.2
  erw [hform0]
  have hf : form μi 0 (fun _ : Wd.Ix (Fin 0) => Tt Ψ) (fun _ => Tt Ψ) 0 = (CR : ℂ)⁻¹ * B.beta (Tw.bs (0 + 1)) (Gj t) (Gj t) := by
    rw [hβ']
    have : (CR : ℂ) ≠ 0 := by exact_mod_cast hCR.ne'
    field_simp
  rw [hf, norm_mul, norm_mul, norm_inv, norm_inv, Complex.norm_real, Complex.norm_real, Real.norm_of_nonneg hκ.le,
    Real.norm_of_nonneg hCR.le, mul_assoc]
  gcongr
  calc ‖B.beta (Tw.bs (0 + 1)) (Gj t) (Gj t)‖ ≤ CB * c4 * c4 := hb
    _ ≤ |CB| * |c4| * |c4| := by
      have := abs_mul_abs_self c4
      calc CB * c4 * c4 = CB * (c4 * c4) := by ring
        _ ≤ |CB * (c4 * c4)| := le_abs_self _
        _ = |CB| * |c4| * |c4| := by rw [abs_mul, abs_mul, mul_assoc]

theorem spectral_radial_locality : JSRadLoc := jSRadLoc_of family_uniform_compact_convergence

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLoc =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEOneLetterDens =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEOneLetterDens", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE2\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.FsvMulFsvNeg\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LiftMemMatrixAlgebra\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PositionInsertionDiagonalCompat\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SfiniteOfIsHaarOn\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ThmPActualCptOfStepForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Bool\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoIntUv\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped Matrix ComplexConjugate

noncomputable section

set_option linter.unusedSimpArgs false
set_option linter.deprecated false

namespace Formalism.FourierDecayAlt.P.CutSE

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P5.HerA Formalism.FourierDecayAlt.P5.HerB Formalism.FourierDecayAlt.P5.HerC
  Formalism.FourierDecayAlt.P5.HerD

namespace OneLetterPf

section HS

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

theorem hs_neg_l (A C : Wq →L[ℂ] Wp) : B.hsInner (-A) C = -B.hsInner A C := by
  rw [← neg_one_smul ℂ A, _root_.Formalism.FourierDecayAlt.P5.hsInner_smul_left]; ring

theorem hs_neg_r (A C : Wq →L[ℂ] Wp) : B.hsInner A (-C) = -B.hsInner A C := by
  rw [← neg_one_smul ℂ C, _root_.Formalism.FourierDecayAlt.P5.HerB.hs_smul_right]; simp

theorem hs_zero_l (C : Wq →L[ℂ] Wp) : B.hsInner 0 C = 0 := by
  rw [← zero_smul ℂ (0 : Wq →L[ℂ] Wp), _root_.Formalism.FourierDecayAlt.P5.hsInner_smul_left]; ring

theorem hs_zero_r (A : Wq →L[ℂ] Wp) : B.hsInner A 0 = 0 := by
  rw [← zero_smul ℂ (0 : Wq →L[ℂ] Wp), _root_.Formalism.FourierDecayAlt.P5.HerB.hs_smul_right]; simp

end HS

section Act

variable {V : Type} [AddCommGroup V] [Module ℂ V] {S : Type} [Fintype S] [DecidableEq S]

theorem pfst_zero : (0 : Pr V).1 = 0 := rfl
theorem pfst_one : (1 : Pr V).1 = 1 := rfl
theorem pfst_add (x y : Pr V) : (x + y).1 = x.1 + y.1 := rfl
theorem pfst_neg (x : Pr V) : (-x).1 = -x.1 := rfl
theorem pfst_sub (x y : Pr V) : (x - y).1 = x.1 - y.1 := rfl
theorem pfst_one_apply (Φ : V) : (1 : Pr V).1 Φ = Φ := rfl
theorem pfst_alg (Y : ℂ) (Φ : V) : (algebraMap ℂ (Pr V) Y).1 Φ = Y • Φ := rfl
theorem pfst_star_alg (Y : ℂ) (Φ : V) : (star (algebraMap ℂ (Pr V) Y)).1 Φ = conj Y • Φ := rfl
theorem pfst_mkP (X Xs : Module.End ℂ V) : (mkP X Xs : Pr V).1 = X := rfl
theorem pfst_star_mkP (X Xs : Module.End ℂ V) : (star (mkP X Xs : Pr V)).1 = Xs := rfl

theorem ins_apply1 (a : S) (M : M2 (Pr V)) (y y' : Ix S) :
    (ins a (lift0 M) : SlopeTestRemainingChoices S (Pr V)) y y' = ∑ j, if y' = Function.update y a j then M (y a) j else 0 := by
  unfold ins lift0
  simp only [Matrix.sum_apply, Matrix.map_apply]
  have hm : ∀ i j, (((eU a i j : SlopeTestRemainingChoices S (Pr V)) * (io (M i j) : SlopeTestRemainingChoices S (Pr V)) : SlopeTestRemainingChoices S (Pr V))) y y' =
      if y a = i ∧ y' = Function.update y a j then M i j else 0 := by
    intro i j
    simp only [io, Matrix.scalar_apply, Matrix.mul_diagonal, Formalism.FourierDecayAlt.P.Wd1.eU_apply, ite_mul, one_mul, zero_mul]
  simp only [hm]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [Finset.sum_eq_single (y a)]
  · simp
  · intro i _ hi; simp [Ne.symm hi]
  · simp

end Act

section ActR

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
  [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq]
  {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)} {S : Type} [Fintype S] [DecidableEq S]

theorem action_inserted_letter_apply (a : S) (M : M2 (Pr (RadSp k r z z' π π'))) (u : Ix S → RadSp k r z z' π π') (y : Ix S) :
    act (ins a (lift0 M)) u y = ∑ j, (M (y a) j).1 (u (Function.update y a j)) := by
  simp only [act, ins_apply1, pr_fst_sum, LinearMap.sum_apply]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [Finset.sum_eq_single (Function.update y a j)]
  · simp
  · intro b _ hb; simp [hb, pfst_zero]
  · simp

theorem action_elementary_unit_apply (a : S) (i j : Fin 2) (u : Ix S → RadSp k r z z' π π') (y : Ix S) :
    act (eU a i j : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) u y = if y a = i then u (Function.update y a j) else 0 := by
  simp only [act, Formalism.FourierDecayAlt.P.Wd1.eU_apply]
  rw [Finset.sum_eq_single (Function.update y a j)]
  · by_cases h : y a = i <;> simp [h, pfst_one, pfst_zero]
  · intro b _ hb; simp [hb, pfst_zero]
  · simp

theorem sum_split (a : S) {M : Type} [AddCommMonoid M] (f : Ix S → M) :
    ∑ y, f y = ∑ y, if y a = 0 then f y + f (Function.update y a 1) else 0 := by
  rw [Finset.sum_ite, Finset.sum_const_zero, add_zero, Finset.sum_add_distrib,
    ← Finset.sum_filter_add_sum_filter_not Finset.univ (fun y : Ix S => y a = 0) f]
  congr 1
  refine Finset.sum_nbij' (fun y => Function.update y a 0) (fun y => Function.update y a 1) ?_ ?_ ?_ ?_ ?_
  · intro y _; simp
  · intro y _; simp
  · intro y hy
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hy
    have h1 := Fin.eq_one_of_ne_zero _ hy
    funext b
    by_cases hb : b = a
    · subst hb; simp [h1]
    · simp [Function.update_of_ne hb]
  · intro y hy
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hy
    funext b
    by_cases hb : b = a
    · subst hb; simp [hy]
    · simp [Function.update_of_ne hb]
  · intro y hy
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hy
    have h1 := Fin.eq_one_of_ne_zero _ hy
    congr 1
    funext b
    by_cases hb : b = a
    · subst hb; simp [h1]
    · simp [Function.update_of_ne hb]

end ActR

section Cls

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp]
  [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp]
  [FiniteDimensional ℂ Wq]
  {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

theorem opv1 (X : ActualOps k r z z' π π') (l : Fin r) (Φ : RadSp k r z z' π π') (p : Fin r → ℂ) (h : Mx k r) :
    ((X.op l 1 Φ : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) p h = p l • (Φ : Fn k r (Wq →L[ℂ] Wp)) p h := by
  rw [X.op_apply]; rfl

theorem opv2 (X : ActualOps k r z z' π π') (l : Fin r) (Φ : RadSp k r z z' π π') (p : Fin r → ℂ) (h : Mx k r) :
    ((X.op l 2 Φ : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) p h = (p l)⁻¹ • (Φ : Fn k r (Wq →L[ℂ] Wp)) p h := by
  rw [X.op_apply]; rfl

theorem opv4 (X : ActualOps k r z z' π π') (l : Fin r) (Φ : RadSp k r z z' π π') (p : Fin r → ℂ) (h : Mx k r) :
    ((X.op l 4 Φ : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) p h = conj (p l) • (Φ : Fn k r (Wq →L[ℂ] Wp)) p h := by
  rw [X.op_apply]; rfl

theorem opv5 (X : ActualOps k r z z' π π') (l : Fin r) (Φ : RadSp k r z z' π π') (p : Fin r → ℂ) (h : Mx k r) :
    ((X.op l 5 Φ : RadSp k r z z' π π') : Fn k r (Wq →L[ℂ] Wp)) p h =
      (conj (p l))⁻¹ • (Φ : Fn k r (Wq →L[ℂ] Wp)) p h := by
  rw [X.op_apply]; rfl

theorem opClos_op (X : ActualOps k r z z' π π') (l : Fin r) (Bs : Submodule ℂ (RadSp k r z z' π π')) (j : Fin 6)
    {Φ : RadSp k r z z' π π'} (h : Φ ∈ OpClos X l Bs) : X.op l j Φ ∈ OpClos X l Bs := by
  unfold OpClos at h ⊢
  refine (Submodule.span_le.mpr ?_ : _ ≤ (Submodule.span ℂ _).comap (X.op l j)) h
  rintro _ ⟨js, Ψ, hΨ, rfl⟩
  exact Submodule.subset_span ⟨j :: js, Ψ, hΨ, by simp [List.map_cons, List.prod_cons, Module.End.mul_apply]⟩

theorem opClos_lc (X : ActualOps k r z z' π π') (l : Fin r) (Bs : Submodule ℂ (RadSp k r z z' π π'))
    (hB : Bs ≤ lcSub k r z z' π π') : OpClos X l Bs ≤ lcSub k r z z' π π' := by
  unfold OpClos
  rw [Submodule.span_le]
  rintro _ ⟨js, Ψ, hΨ, rfl⟩
  induction js with
  | nil => simpa using hB hΨ
  | cons j js ih =>
    simp only [List.map_cons, List.prod_cons, Module.End.mul_apply]
    exact op_lc X l j _ ih

end Cls

section ClsP

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {S : Type} [Fintype S] [DecidableEq S]

theorem clsE_lc (P : M.Par) (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp))
    (π' : Mx P.k P.r → (Wq →L[ℂ] Wq)) (X : ActualOps P.k P.r z z' π π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (D : B.RealPlaceData P.k P.r Wp Wq) (hD : IsData P z z' π π' X μ L st l0) (hz : D.z = z) (hz' : D.z' = z')
    (hπ : D.π = π) (hπ' : D.π' = π') (l : Fin P.r) :
    ClsE S P z z' π π' X L st l0 D l ≤ lcSub P.k P.r z z' π π' := by
  have hle := herKc_le_lc (S := S) (st := st) (l0 := l0) (D := D) X hD.2.2.1
    (fun F Φ hF hΦ => jfCptLocAll Wp Wq P z z' π π' D F Φ hD.1 hz hz' hπ hπ' hF hΦ) 0
  refine opClos_lc X l _ (sup_le hle ?_)
  rw [Submodule.span_le]
  rintro _ ⟨w, hw, a, b, Ψ, hΨ, rfl⟩
  exact (RRi_lc X μ L st l0 hD 0 w hw.1.2.1 a b).1 _ (hle hΨ)

theorem clsE_op (P : M.Par) (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp))
    (π' : Mx P.k P.r → (Wq →L[ℂ] Wq)) (X : ActualOps P.k P.r z z' π π')
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (D : B.RealPlaceData P.k P.r Wp Wq) (l : Fin P.r) (j : Fin 6) {Φ : RadSp P.k P.r z z' π π'}
    (h : Φ ∈ ClsE S P z z' π π' X L st l0 D l) : X.op l j Φ ∈ ClsE S P z z' π π' X L st l0 D l :=
  opClos_op X l _ j h

end ClsP

section Pt

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {S : Type} [Fintype S] [DecidableEq S]
  {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

theorem upd_self (y : Ix S) (a : S) (hy : y a = 0) : Function.update y a 0 = y := by
  rw [← hy]; exact Function.update_eq_self a y

theorem upd_upd (y : Ix S) (a : S) (i j : Fin 2) :
    Function.update (Function.update y a i) a j = Function.update y a j := Function.update_idem _ _ _

theorem ivlet_plus_0 (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r)
    (hAL : IsActualLevel X L) (l : Fin r) (le : Letter ℂ S) (hp : le.plus = true)
    (u : Ix S → RadSp k r z z' π π') (y : Ix S) (hy : y le.intersection_update_fsHerm_neg_one = 0) :
    act (ivlet (site L l) le) u y = -X.op l 5 (u (Function.update y le.intersection_update_fsHerm_neg_one 1)) := by
  simp [ivlet, hp, action_inserted_letter_apply, hy, Fin.sum_univ_two, site, hAL.2.2.2.1 l, pfst_neg, pfst_zero, pfst_star_mkP]

theorem ivlet_plus_1 (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r)
    (hAL : IsActualLevel X L) (l : Fin r) (le : Letter ℂ S) (hp : le.plus = true)
    (u : Ix S → RadSp k r z z' π π') (y : Ix S) (hy : y le.intersection_update_fsHerm_neg_one = 0) :
    act (ivlet (site L l) le) u (Function.update y le.intersection_update_fsHerm_neg_one 1) =
      X.op l 4 (u y) + (le.pt + 1) • u (Function.update y le.intersection_update_fsHerm_neg_one 1) - X.op l 3 (u (Function.update y le.intersection_update_fsHerm_neg_one 1)) := by
  simp [ivlet, hp, action_inserted_letter_apply, upd_upd, upd_self y le.intersection_update_fsHerm_neg_one hy, Fin.sum_univ_two, site, hAL.1 l, hAL.2.2.1 l,
    pfst_neg, pfst_zero, pfst_star_mkP, pfst_add, pfst_alg, pfst_one_apply, sub_eq_add_neg, add_smul]
  abel

theorem vlet_plus_0 (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r)
    (hAL : IsActualLevel X L) (l : Fin r) (le : Letter ℂ S) (hp : le.plus = true)
    (v : Ix S → RadSp k r z z' π π') (y : Ix S) (hy : y le.intersection_update_fsHerm_neg_one = 0) :
    act (vlet (site L l) le) v y = le.pt • v y + X.op l 0 (v y) - X.op l 1 (v (Function.update y le.intersection_update_fsHerm_neg_one 1)) := by
  simp [vlet, hp, action_inserted_letter_apply, hy, upd_self y le.intersection_update_fsHerm_neg_one hy, Fin.sum_univ_two, site, Ts, YangianSpanCharacter.T.Tm, hAL.1 l, hAL.2.2.1 l,
    pfst_neg, pfst_add, pfst_alg, pfst_mkP, sub_eq_add_neg]

theorem vlet_plus_1 (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r)
    (hAL : IsActualLevel X L) (l : Fin r) (le : Letter ℂ S) (hp : le.plus = true)
    (v : Ix S → RadSp k r z z' π π') (y : Ix S) (hy : y le.intersection_update_fsHerm_neg_one = 0) :
    act (vlet (site L l) le) v (Function.update y le.intersection_update_fsHerm_neg_one 1) = X.op l 2 (v y) := by
  simp [vlet, hp, action_inserted_letter_apply, upd_upd, upd_self y le.intersection_update_fsHerm_neg_one hy, Fin.sum_univ_two, site, Ts, YangianSpanCharacter.T.Tm, hAL.2.2.2.1 l,
    pfst_zero, pfst_mkP]

theorem ivlet_minus_0 (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r)
    (hAL : IsActualLevel X L) (l : Fin r) (le : Letter ℂ S) (hp : le.plus = false)
    (u : Ix S → RadSp k r z z' π π') (y : Ix S) (hy : y le.intersection_update_fsHerm_neg_one = 0) :
    act (ivlet (site L l) le) u y = -X.op l 2 (u (Function.update y le.intersection_update_fsHerm_neg_one 1)) := by
  simp [ivlet, hp, action_inserted_letter_apply, hy, Fin.sum_univ_two, site, hAL.2.2.2.1 l, pfst_neg, pfst_zero, pfst_mkP]

theorem ivlet_minus_1 (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r)
    (hAL : IsActualLevel X L) (l : Fin r) (le : Letter ℂ S) (hp : le.plus = false)
    (u : Ix S → RadSp k r z z' π π') (y : Ix S) (hy : y le.intersection_update_fsHerm_neg_one = 0) :
    act (ivlet (site L l) le) u (Function.update y le.intersection_update_fsHerm_neg_one 1) =
      X.op l 1 (u y) + (le.pt - 1) • u (Function.update y le.intersection_update_fsHerm_neg_one 1) + X.op l 0 (u (Function.update y le.intersection_update_fsHerm_neg_one 1)) := by
  simp [ivlet, hp, action_inserted_letter_apply, upd_upd, upd_self y le.intersection_update_fsHerm_neg_one hy, Fin.sum_univ_two, site, hAL.1 l, hAL.2.2.1 l,
    pfst_zero, pfst_mkP, pfst_add, pfst_alg, pfst_sub, pfst_one_apply, sub_smul]
  abel

theorem vlet_minus_0 (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r)
    (hAL : IsActualLevel X L) (l : Fin r) (le : Letter ℂ S) (hp : le.plus = false)
    (v : Ix S → RadSp k r z z' π π') (y : Ix S) (hy : y le.intersection_update_fsHerm_neg_one = 0) :
    act (vlet (site L l) le) v y =
      conj le.pt • v y - X.op l 3 (v y) - X.op l 4 (v (Function.update y le.intersection_update_fsHerm_neg_one 1)) := by
  simp [vlet, hp, action_inserted_letter_apply, hy, upd_self y le.intersection_update_fsHerm_neg_one hy, Fin.sum_univ_two, site, Ts, YangianSpanCharacter.T.Tm, hAL.1 l, hAL.2.2.1 l,
    pfst_neg, pfst_add, pfst_star_alg, pfst_star_mkP, sub_eq_add_neg]

theorem vlet_minus_1 (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r)
    (hAL : IsActualLevel X L) (l : Fin r) (le : Letter ℂ S) (hp : le.plus = false)
    (v : Ix S → RadSp k r z z' π π') (y : Ix S) (hy : y le.intersection_update_fsHerm_neg_one = 0) :
    act (vlet (site L l) le) v (Function.update y le.intersection_update_fsHerm_neg_one 1) = X.op l 5 (v y) := by
  simp [vlet, hp, action_inserted_letter_apply, upd_upd, upd_self y le.intersection_update_fsHerm_neg_one hy, Fin.sum_univ_two, site, Ts, YangianSpanCharacter.T.Tm, hAL.2.2.2.1 l,
    pfst_zero, pfst_star_mkP]

end Pt

section SumPt

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {S : Type} [Fintype S] [DecidableEq S]
  {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

theorem sum_comb (a : S) (f g1 g2 g3 g4 : Ix S → ℂ) (c : ℂ)
    (H : ∀ y, y a = 0 → f y + f (Function.update y a 1) = (g1 y + g1 (Function.update y a 1)) +
      c * (g2 y + g2 (Function.update y a 1)) - (g3 y + g3 (Function.update y a 1)) -
      (g4 y + g4 (Function.update y a 1))) :
    ∑ y, f y = ∑ y, g1 y + c * ∑ y, g2 y - ∑ y, g3 y - ∑ y, g4 y := by
  rw [sum_split a f, sum_split a g1, sum_split a g2, sum_split a g3, sum_split a g4, Finset.mul_sum,
    ← Finset.sum_add_distrib, ← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun y _ => ?_
  split_ifs with hy
  · exact H y hy
  · simp

abbrev vl (Φ : RadSp k r z z' π π') (p : Fin r → ℂ) (h : Mx k r) : Wq →L[ℂ] Wp :=
  (Φ : Fn k r (Wq →L[ℂ] Wp)) p h

theorem sumPt_plus (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r)
    (hAL : IsActualLevel X L) (l : Fin r) (le : Letter ℂ S) (hp : le.plus = true) (hY : conj le.pt = le.pt)
    (u v : Ix S → RadSp k r z z' π π') (p : Fin r → ℂ) (ht : p l ≠ 0) (h : Mx k r) :
    ∑ y, B.hsInner (vl (act (ivlet (site L l) le) u y) p h) (vl (act (vlet (site L l) le) v y) p h) =
      ∑ y, B.hsInner (vl (u y) p h) (vl (v y) p h) +
      (conj (p l))⁻¹ * ∑ y, B.hsInner (vl (u y) p h) (vl (act (eU le.intersection_update_fsHerm_neg_one 1 0) v y) p h) -
      ∑ y, B.hsInner (vl (X.op l 5 (X.op l 3 (u y))) p h) (vl (act (eU le.intersection_update_fsHerm_neg_one 1 0) v y) p h) -
      ∑ y, B.hsInner (vl (u y) p h) (vl (X.op l 2 (X.op l 0 (act (eU le.intersection_update_fsHerm_neg_one 1 0) v y))) p h) := by
  refine sum_comb le.intersection_update_fsHerm_neg_one _ _ _ _ _ _ fun y hy => ?_
  have hy1 : Function.update y le.intersection_update_fsHerm_neg_one 1 le.intersection_update_fsHerm_neg_one = 1 := by simp
  rw [ivlet_plus_0 X L hAL l le hp u y hy, ivlet_plus_1 X L hAL l le hp u y hy, vlet_plus_0 X L hAL l le hp v y hy,
    vlet_plus_1 X L hAL l le hp v y hy, action_elementary_unit_apply, action_elementary_unit_apply, if_neg (by rw [hy]; decide), if_pos hy1, upd_upd,
    upd_self y le.intersection_update_fsHerm_neg_one hy]
  have hct : conj (p l) ≠ 0 := (map_ne_zero _).mpr ht
  simp only [vl, map_zero, ZeroMemClass.coe_zero, Pi.zero_apply, Submodule.coe_add, Submodule.coe_sub,
    Submodule.coe_neg, Submodule.coe_smul, Pi.add_apply, Pi.sub_apply, Pi.neg_apply, Pi.smul_apply, opv1, opv2, opv4,
    opv5, sub_eq_add_neg, _root_.Formalism.FourierDecayAlt.P5.HerB.hs_add_left, _root_.Formalism.FourierDecayAlt.P5.HerB.hs_add_right, _root_.Formalism.FourierDecayAlt.P5.hsInner_smul_left, _root_.Formalism.FourierDecayAlt.P5.HerB.hs_smul_right, hs_neg_l, hs_neg_r, hs_zero_l, hs_zero_r, map_inv₀,
    hY, Complex.conj_conj]
  field_simp
  ring

theorem sumPt_minus (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r)
    (hAL : IsActualLevel X L) (l : Fin r) (le : Letter ℂ S) (hp : le.plus = false) (hY : conj le.pt = le.pt)
    (u v : Ix S → RadSp k r z z' π π') (p : Fin r → ℂ) (ht : p l ≠ 0) (h : Mx k r) :
    ∑ y, B.hsInner (vl (act (ivlet (site L l) le) u y) p h) (vl (act (vlet (site L l) le) v y) p h) =
      ∑ y, B.hsInner (vl (u y) p h) (vl (v y) p h) +
      (-(p l)⁻¹) * ∑ y, B.hsInner (vl (u y) p h) (vl (act (eU le.intersection_update_fsHerm_neg_one 1 0) v y) p h) -
      (-∑ y, B.hsInner (vl (X.op l 2 (X.op l 0 (u y))) p h) (vl (act (eU le.intersection_update_fsHerm_neg_one 1 0) v y) p h)) -
      (-∑ y, B.hsInner (vl (u y) p h) (vl (X.op l 5 (X.op l 3 (act (eU le.intersection_update_fsHerm_neg_one 1 0) v y))) p h)) := by
  simp only [← Finset.sum_neg_distrib]
  refine sum_comb le.intersection_update_fsHerm_neg_one _ _ _ _ _ _ fun y hy => ?_
  have hy1 : Function.update y le.intersection_update_fsHerm_neg_one 1 le.intersection_update_fsHerm_neg_one = 1 := by simp
  rw [ivlet_minus_0 X L hAL l le hp u y hy, ivlet_minus_1 X L hAL l le hp u y hy,
    vlet_minus_0 X L hAL l le hp v y hy, vlet_minus_1 X L hAL l le hp v y hy, action_elementary_unit_apply, action_elementary_unit_apply,
    if_neg (by rw [hy]; decide), if_pos hy1, upd_upd, upd_self y le.intersection_update_fsHerm_neg_one hy]
  have hct : conj (p l) ≠ 0 := (map_ne_zero _).mpr ht
  simp only [vl, map_zero, ZeroMemClass.coe_zero, Pi.zero_apply, Submodule.coe_add, Submodule.coe_sub,
    Submodule.coe_neg, Submodule.coe_smul, Pi.add_apply, Pi.sub_apply, Pi.neg_apply, Pi.smul_apply, opv1, opv2, opv4,
    opv5, sub_eq_add_neg, _root_.Formalism.FourierDecayAlt.P5.HerB.hs_add_left, _root_.Formalism.FourierDecayAlt.P5.HerB.hs_add_right, _root_.Formalism.FourierDecayAlt.P5.hsInner_smul_left, _root_.Formalism.FourierDecayAlt.P5.HerB.hs_smul_right, hs_neg_l, hs_neg_r, hs_zero_l, hs_zero_r, map_inv₀,
    hY, Complex.conj_conj, map_neg]
  field_simp
  ring

end SumPt

section Int

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {S : Type} [Fintype S] [DecidableEq S]
  {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

def hsSum (x y : Ix S → RadSp k r z z' π π') (p : Fin r → ℂ) (g : Mt k r) : ℂ :=
  ∑ b, B.hsInner (vl (x b) p (Matrix.of g)) (vl (y b) p (Matrix.of g))

theorem hsSum_int (μ : Measure (Mt k r)) (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ) (x y : Ix S → RadSp k r z z' π π')
    (hx : ∀ b, x b ∈ lcSub k r z z' π π') (hy : ∀ b, y b ∈ lcSub k r z z' π π') (p : Fin r → ℂ) :
    Integrable (hsSum x y p) μ := by
  unfold hsSum
  exact integrable_finsetSum _ fun b _ => int_lc μ hμ (hx b) (hy b) p

theorem pairSum_eq (μ : Measure (Mt k r)) (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ) (x y : Ix S → RadSp k r z z' π π')
    (hx : ∀ b, x b ∈ lcSub k r z z' π π') (hy : ∀ b, y b ∈ lcSub k r z z' π π') (p : Fin r → ℂ) :
    ∑ b, pairAt μ (x b) (y b) p = ∫ g, hsSum x y p g ∂μ := by
  unfold hsSum pairAt
  rw [integral_finsetSum _ fun b _ => int_lc μ hμ (hx b) (hy b) p]

theorem int4 {α : Type} [MeasurableSpace α] {ν : Measure α} (f1 f2 f3 f4 : α → ℂ) (c d : ℂ)
    (i1 : Integrable f1 ν) (i2 : Integrable f2 ν) (i3 : Integrable f3 ν) (i4 : Integrable f4 ν) :
    ∫ a, f1 a + c * f2 a + d * f3 a + d * f4 a ∂ν = ∫ a, f1 a ∂ν + c * ∫ a, f2 a ∂ν + d * ∫ a, f3 a ∂ν +
      d * ∫ a, f4 a ∂ν := by
  rw [integral_add (f := fun a => f1 a + c * f2 a + d * f3 a) (g := fun a => d * f4 a)
      (by exact (i1.add (i2.const_mul c)).add (i3.const_mul d)) (by exact i4.const_mul d),
    integral_add (f := fun a => f1 a + c * f2 a) (g := fun a => d * f3 a)
      (by exact i1.add (i2.const_mul c)) (by exact i3.const_mul d),
    integral_add (f := fun a => f1 a) (g := fun a => c * f2 a) i1 (by exact i2.const_mul c),
    integral_const_mul, integral_const_mul, integral_const_mul]

theorem form_comb (μ : Measure (Mt k r)) [SFinite μ] (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ) (i : Fin (r + 1))
    (c1 : Fin r → ℂ) (x0 y0 x1 y1 x2 y2 x3 y3 x4 y4 : Ix S → RadSp k r z z' π π') (c d : ℂ)
    (h0 : ∀ b, x0 b ∈ lcSub k r z z' π π' ∧ y0 b ∈ lcSub k r z z' π π')
    (h1 : ∀ b, x1 b ∈ lcSub k r z z' π π' ∧ y1 b ∈ lcSub k r z z' π π')
    (h2 : ∀ b, x2 b ∈ lcSub k r z z' π π' ∧ y2 b ∈ lcSub k r z z' π π')
    (h3 : ∀ b, x3 b ∈ lcSub k r z z' π π' ∧ y3 b ∈ lcSub k r z z' π π')
    (h4 : ∀ b, x4 b ∈ lcSub k r z z' π π' ∧ y4 b ∈ lcSub k r z z' π π')
    (I1 : ∀ b, LevelSquareIntegrable μ i (x1 b) c1 ∧ LevelSquareIntegrable μ i (y1 b) c1) (I2 : ∀ b, LevelSquareIntegrable μ i (x2 b) c1 ∧ LevelSquareIntegrable μ i (y2 b) c1)
    (I3 : ∀ b, LevelSquareIntegrable μ i (x3 b) c1 ∧ LevelSquareIntegrable μ i (y3 b) c1) (I4 : ∀ b, LevelSquareIntegrable μ i (x4 b) c1 ∧ LevelSquareIntegrable μ i (y4 b) c1)
    (H : ∀ (c' : Cf r i) (g : Mt k r), hsSum x0 y0 (glue i c1 c') g =
      hsSum x1 y1 (glue i c1 c') g + c * hsSum x2 y2 (glue i c1 c') g + d * hsSum x3 y3 (glue i c1 c') g +
        d * hsSum x4 y4 (glue i c1 c') g) :
    form μ i x0 y0 c1 = form μ i x1 y1 c1 + c * form μ i x2 y2 c1 + d * form μ i x3 y3 c1 + d * form μ i x4 y4 c1 := by
  have hp : ∀ c' : Cf r i, ∑ b, pairAt μ (x0 b) (y0 b) (glue i c1 c') =
      ∑ b, pairAt μ (x1 b) (y1 b) (glue i c1 c') + c * ∑ b, pairAt μ (x2 b) (y2 b) (glue i c1 c') +
        d * ∑ b, pairAt μ (x3 b) (y3 b) (glue i c1 c') + d * ∑ b, pairAt μ (x4 b) (y4 b) (glue i c1 c') := by
    intro c'
    have J := fun (x y : Ix S → RadSp k r z z' π π') (h : ∀ b, x b ∈ lcSub k r z z' π π' ∧ y b ∈ lcSub k r z z' π π') =>
      hsSum_int μ hμ x y (fun b => (h b).1) (fun b => (h b).2) (glue i c1 c')
    rw [pairSum_eq μ hμ x0 y0 (fun b => (h0 b).1) (fun b => (h0 b).2),
      pairSum_eq μ hμ x1 y1 (fun b => (h1 b).1) (fun b => (h1 b).2),
      pairSum_eq μ hμ x2 y2 (fun b => (h2 b).1) (fun b => (h2 b).2),
      pairSum_eq μ hμ x3 y3 (fun b => (h3 b).1) (fun b => (h3 b).2),
      pairSum_eq μ hμ x4 y4 (fun b => (h4 b).1) (fun b => (h4 b).2),
      integral_congr_ae (Filter.Eventually.of_forall (H c'))]
    exact int4 _ _ _ _ c d (J x1 y1 h1) (J x2 y2 h2) (J x3 y3 h3) (J x4 y4 h4)
  have O := fun (x y : Ix S → RadSp k r z z' π π') (h : ∀ b, x b ∈ lcSub k r z z' π π' ∧ y b ∈ lcSub k r z z' π π')
      (I : ∀ b, LevelSquareIntegrable μ i (x b) c1 ∧ LevelSquareIntegrable μ i (y b) c1) =>
    formIntOuter_of_l2I μ hμ i x y (fun b => (h b).1) (fun b => (h b).2) c1 (fun b => (I b).1) (fun b => (I b).2)
  unfold form
  simp_rw [hp]
  have e : ∀ c' : Cf r i, ((∏ l, ‖c' l‖ ^ (-2 : ℤ) : ℝ) : ℂ) *
      (∑ b, pairAt μ (x1 b) (y1 b) (glue i c1 c') + c * ∑ b, pairAt μ (x2 b) (y2 b) (glue i c1 c') +
        d * ∑ b, pairAt μ (x3 b) (y3 b) (glue i c1 c') + d * ∑ b, pairAt μ (x4 b) (y4 b) (glue i c1 c')) =
      ((∏ l, ‖c' l‖ ^ (-2 : ℤ) : ℝ) : ℂ) * ∑ b, pairAt μ (x1 b) (y1 b) (glue i c1 c') +
        c * (((∏ l, ‖c' l‖ ^ (-2 : ℤ) : ℝ) : ℂ) * ∑ b, pairAt μ (x2 b) (y2 b) (glue i c1 c')) +
        d * (((∏ l, ‖c' l‖ ^ (-2 : ℤ) : ℝ) : ℂ) * ∑ b, pairAt μ (x3 b) (y3 b) (glue i c1 c')) +
        d * (((∏ l, ‖c' l‖ ^ (-2 : ℤ) : ℝ) : ℂ) * ∑ b, pairAt μ (x4 b) (y4 b) (glue i c1 c')) := fun c' => by ring
  simp_rw [e]
  exact int4 _ _ _ _ c d (O x1 y1 h1 I1) (O x2 y2 h2 I2) (O x3 y3 h3 I3) (O x4 y4 h4 I4)

end Int

section Wirt

theorem wirt_mul (b : Bool) {f g : ℂ → ℂ} {t : ℂ} (hf : DifferentiableAt ℝ f t) (hg : DifferentiableAt ℝ g t) :
    wirt b (fun s => f s * g s) t = wirt b f t * g t + f t * wirt b g t := by
  have hm : HasFDerivAt (fun s => f s * g s) (f t • fderiv ℝ g t + g t • fderiv ℝ f t) t :=
    hf.hasFDerivAt.mul hg.hasFDerivAt
  unfold wirt
  rw [hm.fderiv]
  simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply, smul_eq_mul]
  ring

theorem hasFDerivAt_q (t : ℂ) :
    HasFDerivAt (fun s : ℂ => s * conj s)
      (t • (Complex.conjCLE : ℂ →L[ℝ] ℂ) + conj t • ContinuousLinearMap.id ℝ ℂ) t := by
  exact (hasFDerivAt_id (𝕜 := ℝ) t).mul (Complex.conjCLE.hasFDerivAt (x := t))

theorem wirt_q (b : Bool) (t : ℂ) : wirt b (fun s : ℂ => s * conj s) t = if b then conj t else t := by
  unfold wirt
  rw [(hasFDerivAt_q t).fderiv]
  cases b <;> simp <;> ring_nf <;> simp [Complex.I_sq] <;> ring

theorem q_wt (s : ℂ) (hs : s ≠ 0) : s * conj s * ((‖s‖ ^ (-2 : ℤ) : ℝ) : ℂ) = 1 := by
  have hn : (‖s‖ : ℂ) ≠ 0 := by exact_mod_cast norm_ne_zero_iff.mpr hs
  rw [Complex.mul_conj, Complex.normSq_eq_norm_sq]
  push_cast
  rw [zpow_neg, zpow_ofNat]
  field_simp

end Wirt

section LetterLc

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {S : Type} [Fintype S] [DecidableEq S]
  {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

theorem split_y (a : S) (y : Ix S) : ∃ y0 : Ix S, y0 a = 0 ∧ (y = y0 ∨ y = Function.update y0 a 1) := by
  refine ⟨Function.update y a 0, by simp, ?_⟩
  by_cases h : y a = 0
  · left; rw [upd_self y a h]
  · right
    rw [upd_upd, ← Fin.eq_one_of_ne_zero _ h]
    exact (Function.update_eq_self a y).symm

theorem act_letter_lc (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r)
    (hAL : IsActualLevel X L) (l : Fin r) (le : Letter ℂ S) (u : Ix S → RadSp k r z z' π π')
    (hu : ∀ b, u b ∈ lcSub k r z z' π π') (y : Ix S) :
    act (ivlet (site L l) le) u y ∈ lcSub k r z z' π π' ∧ act (vlet (site L l) le) u y ∈ lcSub k r z z' π π' := by
  have hop := op_lc X l
  obtain ⟨y0, hy0, h | h⟩ := split_y le.intersection_update_fsHerm_neg_one y <;> rw [h] <;> cases hp : le.plus
  · rw [ivlet_minus_0 X L hAL l le hp u y0 hy0, vlet_minus_0 X L hAL l le hp u y0 hy0]
    exact ⟨neg_mem (hop _ _ (hu _)), sub_mem (sub_mem (Submodule.smul_mem _ _ (hu _)) (hop _ _ (hu _)))
      (hop _ _ (hu _))⟩
  · rw [ivlet_plus_0 X L hAL l le hp u y0 hy0, vlet_plus_0 X L hAL l le hp u y0 hy0]
    exact ⟨neg_mem (hop _ _ (hu _)), sub_mem (add_mem (Submodule.smul_mem _ _ (hu _)) (hop _ _ (hu _)))
      (hop _ _ (hu _))⟩
  · rw [ivlet_minus_1 X L hAL l le hp u y0 hy0, vlet_minus_1 X L hAL l le hp u y0 hy0]
    exact ⟨add_mem (add_mem (hop _ _ (hu _)) (Submodule.smul_mem _ _ (hu _))) (hop _ _ (hu _)), hop _ _ (hu _)⟩
  · rw [ivlet_plus_1 X L hAL l le hp u y0 hy0, vlet_plus_1 X L hAL l le hp u y0 hy0]
    exact ⟨sub_mem (add_mem (hop _ _ (hu _)) (Submodule.smul_mem _ _ (hu _))) (hop _ _ (hu _)), hop _ _ (hu _)⟩

end LetterLc

section Core

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {S : Type} [Fintype S] [DecidableEq S]
  {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

theorem glue_succ_self (l : Fin r) (c : Fin r → ℂ) (t : ℂ) (c' : Cf r l.succ) :
    glue l.succ (Function.update c l t) c' l = t := by
  simp [glue]

theorem eU_mem (K : Submodule ℂ (RadSp k r z z' π π')) (a : S) (i j : Fin 2) (v : Ix S → RadSp k r z z' π π')
    (hv : ∀ b, v b ∈ K) (y : Ix S) : act (eU a i j : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v y ∈ K := by
  rw [action_elementary_unit_apply]
  split_ifs
  · exact hv _
  · exact zero_mem _

theorem core (X : ActualOps k r z z' π π') (L : R.LevelData (Pr (RadSp k r z z' π π')) r) (hAL : IsActualLevel X L)
    (μ : Measure (Mt k r)) [SFinite μ] (hμ : B.IsHaarOn (Glev k r (Fin.last r)) μ) (l : Fin r) (le : Letter ℂ S)
    (hY : conj le.pt = le.pt) (K : Submodule ℂ (RadSp k r z z' π π'))
    (hKop : ∀ (j : Fin 6) Φ, Φ ∈ K → X.op l j Φ ∈ K) (hKlc : K ≤ lcSub k r z z' π π')
    (c : Fin r → ℂ) (t : ℂ) (ht : t ≠ 0)
    (hL2 : ∀ x y : Ix S → RadSp k r z z' π π', (∀ b, x b ∈ K) → (∀ b, y b ∈ K) →
      ∀ b, LevelSquareIntegrable μ l.succ (x b) (Function.update c l t) ∧ LevelSquareIntegrable μ l.succ (y b) (Function.update c l t))
    (hDf : ∀ x y : Ix S → RadSp k r z z' π π', (∀ b, x b ∈ K) → (∀ b, y b ∈ K) →
      DifferentiableAt ℝ (Dens μ l x y c) t)
    (hLb : ∀ x y : Ix S → RadSp k r z z' π π', (∀ b, x b ∈ K) → (∀ b, y b ∈ K) →
      wirt true (fun t => form μ l.succ x y (Function.update c l t)) t =
        form μ l.succ (fun b => X.op l 2 (X.op l 0 (x b))) y (Function.update c l t) +
          form μ l.succ x (fun b => X.op l 5 (X.op l 3 (y b))) (Function.update c l t) ∧
      wirt false (fun t => form μ l.succ x y (Function.update c l t)) t =
        form μ l.succ (fun b => X.op l 5 (X.op l 3 (x b))) y (Function.update c l t) +
          form μ l.succ x (fun b => X.op l 2 (X.op l 0 (y b))) (Function.update c l t))
    (u v : Ix S → RadSp k r z z' π π') (hu : ∀ b, u b ∈ K) (hv : ∀ b, v b ∈ K) :
    Dens μ l (act (ivlet (site L l) le) u) (act (vlet (site L l) le) v) c t =
      Dens μ l u v c t + (if le.plus then (-1 : ℂ) else 1) *
        wirt (!le.plus) (Dens μ l u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v) c) t := by
  have hE : ∀ b, act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v b ∈ K := eU_mem K le.intersection_update_fsHerm_neg_one 1 0 v hv
  have hop2 : ∀ (i j : Fin 6) (x : Ix S → RadSp k r z z' π π'), (∀ b, x b ∈ K) →
      ∀ b, X.op l i (X.op l j (x b)) ∈ K := fun i j x hx b => hKop i _ (hKop j _ (hx b))
  have LC : ∀ x y : Ix S → RadSp k r z z' π π', (∀ b, x b ∈ K) → (∀ b, y b ∈ K) →
      ∀ b, x b ∈ lcSub k r z z' π π' ∧ y b ∈ lcSub k r z z' π π' := fun x y hx hy b => ⟨hKlc (hx b), hKlc (hy b)⟩
  have h0 : ∀ b, act (ivlet (site L l) le) u b ∈ lcSub k r z z' π π' ∧
      act (vlet (site L l) le) v b ∈ lcSub k r z z' π π' := fun b =>
    ⟨(act_letter_lc X L hAL l le u (fun b => hKlc (hu b)) b).1, (act_letter_lc X L hAL l le v (fun b => hKlc (hv b)) b).2⟩
  have hq := q_wt t ht
  have hev : (fun s => form μ l.succ u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v)
      (Function.update c l s)) =ᶠ[𝓝 t]
      (fun s => s * conj s * Dens μ l u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v) c s) := by
    filter_upwards [isClosed_singleton.isOpen_compl.mem_nhds ht] with s hs
    simp only [Dens]
    rw [← mul_assoc, q_wt s hs, one_mul]
  have hprod : ∀ bb : Bool, wirt bb (fun s => form μ l.succ u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v)
      (Function.update c l s)) t = (if bb then conj t else t) * Dens μ l u (act (eU le.intersection_update_fsHerm_neg_one 1 0) v) c t +
        t * conj t * wirt bb (Dens μ l u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v) c) t := by
    intro bb
    have e1 : wirt bb (fun s => form μ l.succ u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v)
        (Function.update c l s)) t =
        wirt bb (fun s => s * conj s * Dens μ l u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v) c s) t := by
      unfold wirt; rw [hev.fderiv_eq]
    have e2 := wirt_mul bb (f := fun s : ℂ => s * conj s)
      (g := Dens μ l u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v) c)
      (hasFDerivAt_q t).differentiableAt (hDf u _ hu hE)
    beta_reduce at e2
    rw [e1, e2, wirt_q]
  cases hp : le.plus
  ·
    have hform := form_comb μ hμ l.succ (Function.update c l t) (act (ivlet (site L l) le) u)
      (act (vlet (site L l) le) v) u v u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v)
      (fun b => X.op l 2 (X.op l 0 (u b))) (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v)
      u (fun b => X.op l 5 (X.op l 3 (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v b))) (-t⁻¹) 1 h0
      (LC _ _ hu hv) (LC _ _ hu hE) (LC _ _ (hop2 2 0 u hu) hE) (LC _ _ hu (hop2 5 3 _ hE))
      (hL2 _ _ hu hv) (hL2 _ _ hu hE) (hL2 _ _ (hop2 2 0 u hu) hE) (hL2 _ _ hu (hop2 5 3 _ hE))
      (fun c' g => by
        simp only [hsSum]
        rw [sumPt_minus X L hAL l le hp hY u v _ (by rw [glue_succ_self]; exact ht) (Matrix.of g), glue_succ_self]
        ring)
    have hleib := (hLb u _ hu hE).1
    have hpr := hprod true
    simp only [Bool.not_false, Bool.false_eq_true, ↓reduceIte, one_mul] at hpr ⊢
    generalize wirt true (Dens μ l u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v) c) t = wD at hpr ⊢
    simp only [Dens] at hpr ⊢
    rw [hform]
    generalize ((‖t‖ ^ (-2 : ℤ) : ℝ) : ℂ) = W at hpr hq ⊢
    generalize form μ l.succ u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v)
      (Function.update c l t) = F at hpr hleib ⊢
    have hct2 : t⁻¹ * t = 1 := inv_mul_cancel₀ ht
    linear_combination W * hpr - W * hleib + wD * hq + W * F * t⁻¹ * hq - W * F * conj t * W * hct2
  ·
    have hform := form_comb μ hμ l.succ (Function.update c l t) (act (ivlet (site L l) le) u)
      (act (vlet (site L l) le) v) u v u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v)
      (fun b => X.op l 5 (X.op l 3 (u b))) (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v)
      u (fun b => X.op l 2 (X.op l 0 (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v b))) (conj t)⁻¹ (-1) h0
      (LC _ _ hu hv) (LC _ _ hu hE) (LC _ _ (hop2 5 3 u hu) hE) (LC _ _ hu (hop2 2 0 _ hE))
      (hL2 _ _ hu hv) (hL2 _ _ hu hE) (hL2 _ _ (hop2 5 3 u hu) hE) (hL2 _ _ hu (hop2 2 0 _ hE))
      (fun c' g => by
        simp only [hsSum]
        rw [sumPt_plus X L hAL l le hp hY u v _ (by rw [glue_succ_self]; exact ht) (Matrix.of g), glue_succ_self]
        ring)
    have hleib := (hLb u _ hu hE).2
    have hpr := hprod false
    simp only [Bool.not_true, Bool.false_eq_true, ↓reduceIte] at hpr ⊢
    generalize wirt false (Dens μ l u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v) c) t = wD at hpr ⊢
    simp only [Dens] at hpr ⊢
    rw [hform]
    generalize ((‖t‖ ^ (-2 : ℤ) : ℝ) : ℂ) = W at hpr hq ⊢
    generalize form μ l.succ u (act (eU le.intersection_update_fsHerm_neg_one 1 0 : SlopeTestRemainingChoices S (Pr (RadSp k r z z' π π'))) v)
      (Function.update c l t) = F at hpr hleib ⊢
    have hct : (conj t)⁻¹ * conj t = 1 := inv_mul_cancel₀ ((map_ne_zero _).mpr ht)
    linear_combination -W * hpr + W * hleib - wD * hq - W * F * (conj t)⁻¹ * hq + W * F * t * W * hct

end Core

end OneLetterPf


open OneLetterPf in
theorem one_letter_density_estimate (hL : LeibnizCls) (hS : DensSmoothCls) : OneLetterDens := by
  intro Wp Wq _ _ _ _ _ _ S _ _ P z z' π π' X μ L st l0 D hD hl1 hl2 hz hz' hπ hπ' l hl le hre
  have : SFinite μ := sfinite_of_isHaarOn _ μ hD.2.1
  have hY : conj le.pt = le.pt := Complex.conj_eq_iff_im.mpr hre
  refine ⟨if le.plus then -1 else 1, !le.plus, 1, 0, fun u v hu hv c hc t ht => ?_⟩
  have hS' := fun (x y : Ix S → RadSp P.k P.r z z' π π') (hx : ∀ b, x b ∈ ClsE S P z z' π π' X L st l0 D l)
      (hy : ∀ b, y b ∈ ClsE S P z z' π π' X L st l0 D l) =>
    hS Wp Wq S P z z' π π' X μ L st l0 D hD hl1 hl2 hz hz' hπ hπ' l hl x y hx hy c hc
  exact core X L hD.2.2.1 μ hD.2.1 l le hY (ClsE S P z z' π π' X L st l0 D l)
    (fun j Φ hΦ => clsE_op P z z' π π' X L st l0 D l j hΦ)
    (clsE_lc P z z' π π' X μ L st l0 D hD hz hz' hπ hπ' l) c t ht
    (fun x y hx hy b => (hS' x y hx hy).2 t ht b)
    (fun x y hx hy => (((hS' x y hx hy).1 1).contDiffAt
      (isClosed_singleton.isOpen_compl.mem_nhds ht)).differentiableAt (by norm_num))
    (fun x y hx hy => hL Wp Wq S P z z' π π' X μ L st l0 D hD hl1 hl2 hz hz' hπ hπ' l hl x y hx hy c hc t ht)
    u v hu hv

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEOneLetterDens =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE_TopSpec =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE_TopSpec", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RadialIdentityOfQuadratic\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSRadLoc\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEJSliceDone\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSEOneLetterDens\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSETopHer\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RadialIdentityOfSpectralData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutSE

theorem leibniz_class : LeibnizCls := leibnizCls_of_radLoc spectral_radial_locality

theorem density_smooth_class : DensSmoothCls := densSmoothCls_of_radLoc spectral_radial_locality

theorem thmPActualCpt_of_spec (h : RDIdentSpec) : Formalism.FourierDecayAlt.P5.ThmPActualCpt :=
  thmPActualCpt_of_leaves (one_letter_density_estimate leibniz_class density_smooth_class) density_smooth_class
    (radDecay_of_spec h)

end Formalism.FourierDecayAlt.P.CutSE
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutSE_TopSpec =====
