module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdmissibleOfUnitWords
public import Mathlib.Geometry.Manifold.PartitionOfUnity
public import Mathlib.Geometry.Manifold.ContMDiff.NormedSpace
public import Mathlib.Geometry.Manifold.ContMDiffMap
public import Formalism.HermitianCurvature.StatementTL
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DiagonalTransferAction
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HomogeneityNaturalDegree
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPIntegralOfPlaces
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SplLen
import Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket
import Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameCompletion
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.ExistsFrameOfPositiveVector
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.Sq2UnitOfEqOneOfSq2EqDiv, Formalism.HermitianCurvature.HermitianCurvatureProofs.XFibreOfParts

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.Sq2UnitOfEqOneOfSq2EqDiv =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.Sq2UnitOfEqOneOfSq2EqDiv", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdmissibleOfUnitWords\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SplLen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.Geometry.Manifold.PartitionOfUnity\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Uniformizable\npublic import Mathlib.Geometry.Manifold.ContMDiff.NormedSpace\npublic import Mathlib.Geometry.Manifold.ContMDiffMap\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Set
open scoped ComplexConjugate ContDiff Manifold Topology

noncomputable section

namespace Formalism.FourierDecayAlt.P.AdmissibleLieWords

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.P.BetaSesquilinearity PI.UnitaryCorollaryDerivatives.CRH

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

def utv {k r m : ℕ} (ε T : ℝ) (Gp : Mat k r → ℝ) (om : Mat k r → Fin m → ℂ) (g : Mat k r) : Fin m → ℂ :=
  fun a => (Real.sqrt T : ℂ) * (Phh ε ((Gp g : ℝ) : ℂ) * om g a)

lemma utv_eq {k r m : ℕ} {ε T : ℝ} (hε : 0 < ε) (hT : 0 < T) (Gp : Mat k r → ℝ) (om : Mat k r → Fin m → ℂ)
    {g : Mat k r} (hg : ε / 2 < Gp g) : C6.unitOf T (Gp g) (om g) = utv ε T Gp om g := by
  have hx : 0 < Gp g := by linarith
  funext a
  simp only [C6.unitOf, utv, Phh, hh, Complex.ofReal_re, sc_one hε hg.le, one_mul, Pi.smul_apply,
    smul_eq_mul, sqrt_div_eq hT hx, Complex.ofReal_mul]
  ring

lemma utv_cd {k r m : ℕ} {ε T : ℝ} (hε : 0 < ε) {Gp : Mat k r → ℝ} {om : Mat k r → Fin m → ℂ}
    (hG : ContDiff ℝ ∞ (fun g => ((Gp g : ℝ) : ℂ))) (ho : ∀ a, ContDiff ℝ ∞ (fun g => om g a)) :
    ContDiff ℝ ∞ (utv ε T Gp om) := by
  refine contDiff_pi.2 fun a => ?_
  simp only [utv]
  exact contDiff_const.mul (((Phh_cd hε).comp hG).mul (ho a))

lemma sq2_unitOf_eq_one_of_sq2_eq_div {m : ℕ} {T Gv : ℝ} (hT : 0 < T) (hG : 0 < Gv) {v : Fin m → ℂ} (hv : C6.sq2 v = Gv / T) :
    C6.sq2 (C6.unitOf T Gv v) = 1 := by
  unfold C6.sq2 C6.unitOf at *
  simp only [Pi.smul_apply, smul_eq_mul, Complex.normSq_mul, Complex.normSq_ofReal]
  rw [← Finset.mul_sum, hv, Real.mul_self_sqrt (div_nonneg hT.le hG.le), div_mul_div_comm, mul_comm T Gv,
    div_self (mul_pos hG hT).ne']

lemma continuous_sum_squares (m : ℕ) : Continuous (C6.sq2 (m := m)) := by
  unfold C6.sq2
  exact continuous_finsetSum _ fun a _ => Complex.continuous_normSq.comp (continuous_apply a)

lemma norm_le_one_of_sq2_eq_one {m : ℕ} {v : Fin m → ℂ} (h : C6.sq2 v = 1) : ‖v‖ ≤ 1 := by
  refine (pi_norm_le_iff_of_nonneg zero_le_one).2 fun a => ?_
  have h1 : Complex.normSq (v a) ≤ 1 := by
    rw [← h]
    unfold C6.sq2
    exact Finset.single_le_sum (f := fun a => Complex.normSq (v a)) (fun i _ => Complex.normSq_nonneg _)
      (Finset.mem_univ a)
  have h2 : ‖v a‖ ^ 2 ≤ 1 := by rw [← Complex.normSq_eq_norm_sq]; exact h1
  nlinarith [norm_nonneg (v a)]

lemma spheres_compact (m m' : ℕ) :
    IsCompact {w : (Fin m → ℂ) × (Fin m' → ℂ) | C6.sq2 w.1 = 1 ∧ C6.sq2 w.2 = 1} := by
  apply Metric.isCompact_of_isClosed_isBounded
  · exact (isClosed_eq ((continuous_sum_squares m).comp continuous_fst) continuous_const).inter
      (isClosed_eq ((continuous_sum_squares m').comp continuous_snd) continuous_const)
  · refine (Metric.isBounded_closedBall (x := (0 : (Fin m → ℂ) × (Fin m' → ℂ))) (r := 1)).subset ?_
    intro w hw
    rw [Metric.mem_closedBall, dist_zero_right]
    exact norm_prod_le_iff.2 ⟨norm_le_one_of_sq2_eq_one hw.1, norm_le_one_of_sq2_eq_one hw.2⟩

lemma bump_ext {F E : Type} [NormedAddCommGroup F] [NormedSpace ℝ F] [FiniteDimensional ℝ F]
    [NormedAddCommGroup E] [NormedSpace ℝ E] (K O : Set F) (hK : IsCompact K) (hO : IsOpen O) (hKO : K ⊆ O)
    (Pi : F → E) (hPi : ContDiffOn ℝ ∞ Pi O) :
    ∃ Φ : F → E, ContDiff ℝ ∞ Φ ∧ (∀ y ∈ K, Φ y = Pi y) ∧
      ∀ j : ℕ, ∃ B : ℝ, ∀ y ∈ K, ‖iteratedFDeriv ℝ j Φ y‖ ≤ B := by
  obtain ⟨V, hVo, hKV, hVO, -⟩ := exists_open_between_and_isCompact_closure hK hO hKO
  obtain ⟨χ, hχ0, hχ1, -⟩ := exists_contMDiffMap_zero_one_of_isClosed (I := 𝓘(ℝ, F)) hVo.isClosed_compl
    hK.isClosed (disjoint_compl_left_iff_subset.2 hKV)
  have hχ : ContDiff ℝ ∞ (χ : F → ℝ) := contMDiff_iff_contDiff.1 χ.contMDiff
  have hΦ : ContDiff ℝ ∞ (fun y => χ y • Pi y) := by
    rw [contDiff_iff_contDiffAt]
    intro x
    by_cases hx : x ∈ O
    · exact hχ.contDiffAt.smul (hPi.contDiffAt (hO.mem_nhds hx))
    · have hx' : x ∈ (closure V)ᶜ := fun h => hx (hVO h)
      have h0 : (fun y => χ y • Pi y) =ᶠ[𝓝 x] fun _ => (0 : E) := by
        filter_upwards [isClosed_closure.isOpen_compl.mem_nhds hx'] with y hy
        have hyV : y ∈ Vᶜ := fun h => hy (subset_closure h)
        simp [hχ0 hyV]
      exact contDiffAt_const.congr_of_eventuallyEq h0
  refine ⟨fun y => χ y • Pi y, hΦ, fun y hy => by simp [hχ1 hy], fun j => ?_⟩
  exact hK.exists_bound_of_continuousOn
    ((hΦ.continuous_iteratedFDeriv (m := j) (by exact_mod_cast le_top)).continuousOn)

end Formalism.FourierDecayAlt.P.AdmissibleLieWords

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.P.BetaSesquilinearity PI.UnitaryCorollaryDerivatives.CRH Formalism.FourierDecayAlt.P.AdmissibleLieWords

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem c6_fib_cost_of_pieces : C6.FibCostOfParts := by
  intro hU k r m m' om om' Gp T T' E _ _ Pi O hom hom' hGp hT hT' hsq hsq' hO hKO hPi ε hε i
  have hGcd : ContDiff ℝ ∞ (fun g => ((Gp g : ℝ) : ℂ)) := (poly_adm (n := 0) hGp).1
  have hGc : Continuous Gp := by
    have h := Complex.continuous_re.comp hGcd.continuous
    simp only [Function.comp_def, Complex.ofReal_re] at h
    exact h
  have ho : ∀ a, ContDiff ℝ ∞ (fun g => om g a) := fun a => (poly_adm (n := 0) (hom a)).1
  have ho' : ∀ a, ContDiff ℝ ∞ (fun g => om' g a) := fun a => (poly_adm (n := 0) (hom' a)).1
  have hu1 : ContDiff ℝ ∞ (utv ε T Gp om) := utv_cd hε hGcd ho
  have hu2 : ContDiff ℝ ∞ (utv ε T' Gp om') := utv_cd hε hGcd ho'
  have hψ : ContDiff ℝ ∞ (fun g => (utv ε T Gp om g, utv ε T' Gp om' g)) := hu1.prodMk hu2
  have hOε : IsOpen {g : Mat k r | ε / 2 < Gp g} := isOpen_lt continuous_const hGc

  have hsph : ∀ g ∈ GV k r, ε / 2 < Gp g →
      C6.unitOf T (Gp g) (om g) = utv ε T Gp om g ∧ C6.unitOf T' (Gp g) (om' g) = utv ε T' Gp om' g ∧
      (C6.unitOf T (Gp g) (om g), C6.unitOf T' (Gp g) (om' g)) ∈
        {w : (Fin m → ℂ) × (Fin m' → ℂ) | C6.sq2 w.1 = 1 ∧ C6.sq2 w.2 = 1} := by
    intro g hg hgt
    have hpos : 0 < Gp g := by linarith
    exact ⟨utv_eq hε hT Gp om hgt, utv_eq hε hT' Gp om' hgt, sq2_unitOf_eq_one_of_sq2_eq_div hT hpos (hsq g hg),
      sq2_unitOf_eq_one_of_sq2_eq_div hT' hpos (hsq' g hg)⟩
  obtain ⟨Φ, hΦ, hΦK, hΦb⟩ := bump_ext _ O (spheres_compact m m') hO hKO Pi hPi

  have hwl : ∀ u v : List (Mat k r), (∀ X ∈ u, unitLie k r X) → (∀ X ∈ v, unitLie k r X) →
      ∀ x ∈ wL u ++ wR v, inLie k r x.2 := by
    intro u v hu hv x hx
    rcases List.mem_append.mp hx with hx | hx
    · simp only [wL, List.mem_map] at hx
      obtain ⟨X, hX, rfl⟩ := hx
      exact (hu X hX).1
    · simp only [wR, List.mem_map] at hx
      obtain ⟨X, hX, rfl⟩ := hx
      exact (hv X hX).1
  have hlen : ∀ u v : List (Mat k r), (wL u ++ wR v).length = u.length + v.length := by
    intro u v
    simp [wL, wR]
  choose C1 hC1 using hU k r m om Gp T hom hGp hT hsq ε hε
  choose C2 hC2 using hU k r m' om' Gp T' hom' hGp hT' hsq' ε hε
  obtain ⟨M, hM⟩ : ∃ M : ℝ, M = ∑ j ∈ Finset.range (i + 1), (|C1 j| + |C2 j|) := ⟨_, rfl⟩
  have hCM : ∀ j ≤ i, C1 j ≤ M ∧ C2 j ≤ M := by
    intro j hj
    have hmem : j ∈ Finset.range (i + 1) := Finset.mem_range.mpr (by omega)
    have hle := Finset.single_le_sum (f := fun j => |C1 j| + |C2 j|)
      (fun j _ => add_nonneg (abs_nonneg _) (abs_nonneg _)) hmem
    rw [← hM] at hle
    exact ⟨by linarith [le_abs_self (C1 j), abs_nonneg (C2 j)], by linarith [le_abs_self (C2 j), abs_nonneg (C1 j)]⟩
  have H : ∀ w, admitted i w → w ≠ [] → ∀ g ∈ {g : Mat k r | g ∈ GV k r ∧ ε ≤ Gp g},
      ‖Dw w (fun g => (utv ε T Gp om g, utv ε T' Gp om' g)) g‖ ≤
        M * gN g ^ (2 * (r + 1) * w.length + (r + 1)) := by
    rintro w ⟨u, v, hu, hv, hl, rfl⟩ - g ⟨hg, hge⟩
    have hgt : ε / 2 < Gp g := by linarith
    have hw := hwl u v hu hv
    have huv : C6.UnitWords k r u v (u.length + v.length) := ⟨hu, hv, rfl⟩
    have e1 : Dw (wL u ++ wR v) (utv ε T Gp om) g =
        Dw (wL u ++ wR v) (fun g' => C6.unitOf T (Gp g') (om g')) g :=
      Dw_congr_loc hw hOε (fun g' hg' hg'O => ((hsph g' hg' hg'O).1).symm) g hg hgt
    have e2 : Dw (wL u ++ wR v) (utv ε T' Gp om') g =
        Dw (wL u ++ wR v) (fun g' => C6.unitOf T' (Gp g') (om' g')) g :=
      Dw_congr_loc hw hOε (fun g' hg' hg'O => ((hsph g' hg' hg'O).2.1).symm) g hg hgt
    have f1 : Dw (wL u ++ wR v) (utv ε T Gp om) g =
        (Dw (wL u ++ wR v) (fun g => (utv ε T Gp om g, utv ε T' Gp om' g)) g).1 := by
      have h := congrFun (dw_clm (ContinuousLinearMap.fst ℝ (Fin m → ℂ) (Fin m' → ℂ)) (wL u ++ wR v) hψ) g
      simpa using h
    have f2 : Dw (wL u ++ wR v) (utv ε T' Gp om') g =
        (Dw (wL u ++ wR v) (fun g => (utv ε T Gp om g, utv ε T' Gp om' g)) g).2 := by
      have h := congrFun (dw_clm (ContinuousLinearMap.snd ℝ (Fin m → ℂ) (Fin m' → ℂ)) (wL u ++ wR v) hψ) g
      simpa using h
    have b1 := hC1 _ u v huv g hg hge
    have b2 := hC2 _ u v huv g hg hge
    rw [dLR_eq, ← e1, f1] at b1
    rw [dLR_eq, ← e2, f2] at b2
    have hexp : (r + 1) * (2 * (u.length + v.length) + 1) =
        2 * (r + 1) * (wL u ++ wR v).length + (r + 1) := by
      rw [hlen]; ring
    rw [hexp] at b1 b2
    have hY : 0 ≤ gN g ^ (2 * (r + 1) * (wL u ++ wR v).length + (r + 1)) :=
      pow_nonneg (le_trans zero_le_one (gN_ge_one hg)) _
    obtain ⟨m1, m2⟩ := hCM _ hl
    rw [Prod.norm_def]
    exact max_le (b1.trans (mul_le_mul_of_nonneg_right m1 hY)) (b2.trans (mul_le_mul_of_nonneg_right m2 hY))
  obtain ⟨C, -, hC⟩ := fdb (fun g => (utv ε T Gp om g, utv ε T' Gp om' g)) hψ
    {g : Mat k r | g ∈ GV k r ∧ ε ≤ Gp g} _
    (fun g hg => by rw [← (hsph g hg.1 (by linarith [hg.2])).1, ← (hsph g hg.1 (by linarith [hg.2])).2.1]
                    exact (hsph g hg.1 (by linarith [hg.2])).2.2)
    gN (fun g hg => gN_ge_one hg.1) (2 * (r + 1)) (r + 1) M i H i E Φ hΦ hΦb
  refine ⟨C, fun u v huv g hg hge => ?_⟩
  have hw := hwl u v huv.1 huv.2.1
  rw [dLR_eq]
  have e : Dw (wL u ++ wR v) (fun g' => Pi (C6.unitOf T (Gp g') (om g'), C6.unitOf T' (Gp g') (om' g'))) g =
      Dw (wL u ++ wR v) (fun g' => Φ (utv ε T Gp om g', utv ε T' Gp om' g')) g := by
    refine Dw_congr_loc hw hOε (fun g' hg' hg'O => ?_) g hg (show ε / 2 < Gp g by linarith)
    obtain ⟨h1, h2, h3⟩ := hsph g' hg' hg'O
    rw [← hΦK _ h3, h1, h2]
  rw [e]
  have hl : (wL u ++ wR v).length = i := by rw [hlen]; exact huv.2.2
  have hb := hC (wL u ++ wR v) (admissible_of_unit_words huv) hl.le g ⟨hg, hge⟩
  rw [hl] at hb
  have hexp : (2 * (r + 1) + (r + 1)) * i = 3 * (r + 1) * i := by ring
  rwa [hexp] at hb

theorem fibre_cost_estimate : C6.FibCost := c6_fib_cost_of_pieces fibre_unit_normalization

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.Sq2UnitOfEqOneOfSq2EqDiv =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.XFibreOfParts =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.XFibreOfParts", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTL\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DiagonalTransferAction\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.DifferentialOperatorBracket\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.FrameCompletion\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HomogeneityNaturalDegree\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.Sq2UnitOfEqOneOfSq2EqDiv\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TheoremPIntegralOfPlaces\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuadraticFormTwoTwo.ExistsFrameOfPositiveVector\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset
open scoped ComplexConjugate ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Qr Formalism.FourierDecayAlt.TL

namespace TLC

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {k r : ℕ}

private theorem herm_swap_eq_zero_of_eq_zero {k r : ℕ} (v w : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) w v = star (herm (Hpk k r) v w) := by
  have hH : ∀ i j : Fin (2 * r + k + 1), star (Hpk k r i j) = Hpk k r j i := by
    intro i j
    simp only [Hpk, Fin.ext_iff]
    split_ifs <;> first | (exfalso; omega) | norm_num
  simp only [herm, dotProduct, mulVec, Pi.star_apply, star_sum, star_mul', star_star, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [hH]
  ring

private theorem herm_Hpk_frame_sum_of_orthogonal {z' y u : Fin (2 * r + k + 1) → ℂ} {B0 : Fin k → Fin (2 * r + k + 1) → ℂ}
    (hz' : inWb k r z') (hT' : 0 < Tz k r z') (hB0 : IsFrameOf k r [z'] B0) (a : ℂ) (hu : inWb k r u)
    (huz : herm (Hpk k r) u z' = 0) :
    herm (Hpk k r) u (∑ j, (a * herm (Hpk k r) y (B0 j)) • B0 j) = star a * herm (Hpk k r) u y := by
  have hdec := HermitianFormSums.complete0 hz' (HermitianFormSums.hzz hT') hB0 hu huz
  have h1 : herm (Hpk k r) u y = ∑ j, herm (Hpk k r) u (B0 j) * herm (Hpk k r) (B0 j) y := by
    conv_lhs => rw [hdec]
    exact HermitianFormSums.herm_lsum _ _ _ _ _
  rw [h1, HermitianFormSums.herm_rsum, Finset.mul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [herm_swap_eq_zero_of_eq_zero y (B0 j), star_mul']
  ring

theorem xf_perp {z' y u : Fin (2 * r + k + 1) → ℂ} {B0 : Fin k → Fin (2 * r + k + 1) → ℂ} (hz' : inWb k r z')
    (hT' : 0 < Tz k r z') (hB0 : IsFrameOf k r [z'] B0) (β : Fin k → ℂ) (a : ℂ)
    (hβ : ∀ j, β j = a * herm (Hpk k r) y (B0 j)) (hu : inWb k r u) (huz : herm (Hpk k r) u z' = 0)
    (huy : herm (Hpk k r) u y = 0) : herm (Hpk k r) u (∑ j, β j • B0 j) = 0 := by
  rw [show (∑ j, β j • B0 j) = ∑ j, (a * herm (Hpk k r) y (B0 j)) • B0 j from
    Finset.sum_congr rfl fun j _ => by rw [hβ j], herm_Hpk_frame_sum_of_orthogonal hz' hT' hB0 a hu huz, huy, mul_zero]

theorem xf_rad (hCell : CellVals) (hOm : OmFacts) (hCapF : CapVFrame) {Wp Wq : Type} [NormedAddCommGroup Wp]
    [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]
    (Bs : B.RealPlaceData k r Wp Wq) (X : ActualOps k r Bs.z Bs.z' Bs.π Bs.π')
    {B0 : Fin k → Fin (2 * r + k + 1) → ℂ} (hB0 : IsFrameOf k r [Bs.z'] B0) (Y : ℂ)
    (Φ : RadSp k r Bs.z Bs.z' Bs.π Bs.π') (x : (Fin r → ℂ) × Mx k r) (hx : x ∈ DomR k r Bs.z Bs.z') :
    (X.t Y 1 1 Φ : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 = ((GGl k r Bs.z Bs.z' x.2 : ℝ) : ℂ) •
      xFib Bs B0 (Y + ((k : ℂ) - 2) / 2) (wCell k r (Fin.last r) x.1 * x.2) ((Φ : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2) := by
  have hx' := hx
  obtain ⟨-, hgl, hGG⟩ := hx'
  obtain ⟨hbig, -⟩ := hCell k r Wp Wq Bs x hx
  obtain ⟨-, hsq, -, hcell⟩ := hOm k r Wp Wq Bs B0 hB0
  obtain ⟨Bs', -, -, hF, -⟩ := Q.LieAlgebraWeightVectors.geom_package Bs.z_mem Bs.z'_mem Bs.T_pos Bs.T'_pos hgl hGG.ne'
  have hν1 : C6.sq2 (C6.unitOf (Tz k r Bs.z') (Gf k r Bs.z Bs.z' (wCell k r (Fin.last r) x.1 * x.2))
      (omC Bs B0 (wCell k r (Fin.last r) x.1 * x.2))) = 1 :=
    AdmissibleLieWords.sq2_unitOf_eq_one_of_sq2_eq_div Bs.T'_pos hbig.2.1 (hsq _ hbig.1)
  have hF2 : IsFrameOf k r [Bs.z', ∑ j, C6.unitOf (Tz k r Bs.z') (Gf k r Bs.z Bs.z' (wCell k r (Fin.last r) x.1 * x.2))
      (omC Bs B0 (wCell k r (Fin.last r) x.1 * x.2)) j • B0 j] Bs' := by
    refine ⟨hF.1, hF.2.1, fun i v hv => ?_⟩
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hv
    rcases hv with rfl | rfl
    · exact hF.2.2 i _ (by simp)
    · refine xf_perp Bs.z'_mem Bs.T'_pos hB0 _
        (((Real.sqrt (Tz k r Bs.z' / Gf k r Bs.z Bs.z' (wCell k r (Fin.last r) x.1 * x.2)) : ℝ) : ℂ) *
          conj (∏ a, x.1 a)) (fun j => ?_) (hF.1 i) (hF.2.2 i Bs.z' (by simp))
          (hF.2.2 i (x.2⁻¹ *ᵥ Bs.z) (by simp))
      simp only [C6.unitOf, Pi.smul_apply, smul_eq_mul, hcell x hx j, mul_assoc]
  have hcap := hCapF Wq k r Bs.z' Bs.π' B0 Bs' _ Bs.k_pos Bs.z'_mem Bs.T'_pos ⟨Bs.π'_rep, Bs.π'_cont⟩ hB0 hν1 hF2
  have hgl2 := (frame_general_linear Wq k r (k - 1) Bs.z' Bs.π' Bs' ⟨Bs.π'_rep, Bs.π'_cont⟩ (HermitianFormSums.frame_sub hF2)).2
  have hne : ((GGl k r Bs.z Bs.z' x.2 : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hGG.ne'
  ext v
  have hfn := congrArg (fun T : Wq →L[ℂ] Wp => T v) (X.fn_apply 5 (X.t Y 1 1 Φ) x hx)
  have ht := P5.Kfp.diagonal_transfer_action X Bs.z_mem Bs.z'_mem Bs.π'_rep Bs.π'_cont (c := x.1) (g := x.2) hx Bs' hF Y Φ v
  simp only [Module.End.mul_apply] at ht
  simp only [_root_.smul_apply, fnVal] at hfn
  rw [ht] at hfn
  simp only [xFib, _root_.smul_apply, ContinuousLinearMap.flip_apply, ContinuousLinearMap.compL_apply,
    ContinuousLinearMap.comp_apply, hcap, hgl2]
  rw [hfn, smul_smul, mul_inv_cancel₀ hne, one_smul]

section fib

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

theorem xf_capV_sum (π' : Mx k r → (Wq →L[ℂ] Wq)) (B0 : Fin k → Fin (2 * r + k + 1) → ℂ) (w : ℂ) (ν : Fin k → ℂ) :
    capV π' B0 w ν = ∑ i : Fin k, ∑ j : Fin k, ((-1 : ℂ) ^ ((i : ℕ) + (j : ℕ)) * star (ν i) * ν j) •
      LinearMap.toContinuousLinearMap (qminor (EB π' B0) (skip1 i) (skip1 j) w : Module.End ℂ Wq) := by

  simp only [capV, Q.chatA, map_sum, map_smul, Pi.star_apply]

theorem xf_capV_cd (π' : Mx k r → (Wq →L[ℂ] Wq)) (B0 : Fin k → Fin (2 * r + k + 1) → ℂ) (w : ℂ) :
    ContDiff ℝ ∞ (fun ν : Fin k → ℂ => capV π' B0 w ν) := by
  rw [show (fun ν : Fin k → ℂ => capV π' B0 w ν) = fun ν => ∑ i : Fin k, ∑ j : Fin k,
      ((-1 : ℂ) ^ ((i : ℕ) + (j : ℕ)) * star (ν i) * ν j) •
        LinearMap.toContinuousLinearMap (qminor (EB π' B0) (skip1 i) (skip1 j) w : Module.End ℂ Wq) from
    funext (xf_capV_sum π' B0 w)]
  refine ContDiff.sum fun i _ => ContDiff.sum fun j _ => ?_
  have hs : ContDiff ℝ ∞ (fun ν : Fin k → ℂ => star (ν i)) :=
    Complex.conjCLE.contDiff.comp (contDiff_apply ℝ (fun _ => ℂ) i)
  exact ((contDiff_const.mul hs).mul (contDiff_apply ℝ (fun _ => ℂ) j)).smul contDiff_const

def xfPi (π' : Mx k r → (Wq →L[ℂ] Wq)) (B0 : Fin k → Fin (2 * r + k + 1) → ℂ) (w : ℂ) (ν : Fin k → ℂ) :
    C6.EndH Wp Wq :=
  (ContinuousLinearMap.compL ℂ Wq Wq Wp).flip (capV π' B0 w ν)

theorem xf_Pi_cd (π' : Mx k r → (Wq →L[ℂ] Wq)) (B0 : Fin k → Fin (2 * r + k + 1) → ℂ) (w : ℂ) :
    ContDiff ℝ ∞ (xfPi (Wp := Wp) π' B0 w) := by
  exact (((ContinuousLinearMap.compL ℂ Wq Wq Wp).flip).restrictScalars ℝ).contDiff.comp (xf_capV_cd π' B0 w)

private theorem contDiff_of_isPolyDeg' {k r κ : ℕ} {P : B.Mat k r → ℂ} (h : U.IsPolyDeg κ P) : ContDiff ℝ ∞ P := by
  obtain ⟨q, -, hq⟩ := h
  have hP : P = fun g => MvPolynomial.eval (Sum.elim (fun x => g x.1 x.2) (fun x => star (g x.1 x.2))) q := funext hq
  subst hP
  clear hq
  induction q using MvPolynomial.induction_on
  next a =>
    simp only [MvPolynomial.eval_C]
    exact contDiff_const
  next p q hp hq =>
    simp only [map_add (f := _)]
    exact hp.add hq
  next p i hp =>
    simp only [map_mul, MvPolynomial.eval_X]
    refine hp.mul ?_
    rcases i with ⟨a, b⟩ | ⟨a, b⟩
    · exact JCx1.contDiff_entry a b
    · exact Complex.conjCLE.contDiff.comp (JCx1.contDiff_entry a b)

theorem xf_bound (hOm : OmFacts) (Bs : B.RealPlaceData k r Wp Wq) {B0 : Fin k → Fin (2 * r + k + 1) → ℂ}
    (hB0 : IsFrameOf k r [Bs.z'] B0) (w : ℂ) : C6.FibBound Bs (xFib Bs B0 w) := by
  obtain ⟨hom, hsq, -, -⟩ := hOm k r Wp Wq Bs B0 hB0
  have hGc : ContDiff ℝ ∞ (fun g : B.Mat k r => ((Gf k r Bs.z Bs.z' g : ℝ) : ℂ)) :=
    Complex.ofRealCLM.contDiff.comp (JCx1.contDiff_Gf Bs.z Bs.z')
  have hoc : ∀ a, ContDiff ℝ ∞ (fun g => omC Bs B0 g a) := fun a => contDiff_of_isPolyDeg' (hom a)
  refine ⟨fun g₀ hg₀ => ?_, fun ε hε i => ?_⟩
  · refine ⟨{g | Gf k r Bs.z Bs.z' g₀ / 2 < Gf k r Bs.z Bs.z' g},
      fun g => xfPi Bs.π' B0 w (AdmissibleLieWords.utv (Gf k r Bs.z Bs.z' g₀) (Tz k r Bs.z') (Gf k r Bs.z Bs.z') (omC Bs B0) g),
      isOpen_lt continuous_const (JCx1.contDiff_Gf Bs.z Bs.z').continuous, half_lt_self hg₀.2, ?_, fun g hg _ => ?_⟩
    · exact ((xf_Pi_cd Bs.π' B0 w).comp (AdmissibleLieWords.utv_cd (T := Tz k r Bs.z') hg₀.2 hGc hoc)).contDiffOn
    · exact congrArg (xfPi (Wp := Wp) Bs.π' B0 w) (AdmissibleLieWords.utv_eq hg₀.2 Bs.T'_pos _ _ hg)
  · exact fibre_cost_estimate k r k k (omC Bs B0) (omC Bs B0) (Gf k r Bs.z Bs.z') (Tz k r Bs.z') (Tz k r Bs.z')
      (C6.EndH Wp Wq) (fun p => xfPi Bs.π' B0 w p.1) Set.univ hom hom (gram_function_polynomial k r Bs.z Bs.z')
      Bs.T'_pos Bs.T'_pos hsq hsq isOpen_univ (Set.subset_univ _)
      ((xf_Pi_cd Bs.π' B0 w).comp contDiff_fst).contDiffOn ε hε i

theorem xf_equiv (hOm : OmFacts) (hCapE : CapVEquiv) (Bs : B.RealPlaceData k r Wp Wq) {B0 : Fin k → Fin (2 * r + k + 1) → ℂ}
    (hB0 : IsFrameOf k r [Bs.z'] B0) (w : ℂ) :
    ∀ p, Bs.inSS p → ∀ g ∈ C6.domL Bs ∅, ∀ J : Wq →L[ℂ] Wp,
      xFib Bs B0 w g ((Bs.π (Matrix.of p.1.1)).comp (J.comp (Bs.π' (Matrix.of p.2.1)⁻¹))) =
        (Bs.π (Matrix.of p.1.1)).comp ((xFib Bs B0 w (B.sgs p g) J).comp (Bs.π' (Matrix.of p.2.1)⁻¹)) := by
  obtain ⟨-, hsq, hcov, -⟩ := hOm k r Wp Wq Bs B0 hB0
  intro p hp g hg J
  have hGf : Gf k r Bs.z Bs.z' (B.sgs p g) = Gf k r Bs.z Bs.z' g := JCx1.needs.gf_sgs Bs hp g
  have hsum : ∀ (c : ℂ) (v : Fin k → ℂ), ∑ j, (c • v) j • B0 j = c • ∑ j, v j • B0 j := by
    intro c v
    simp only [Pi.smul_apply, smul_eq_mul, mul_smul, Finset.smul_sum]
  have hE := hCapE Wq k r Bs.z' Bs.π' B0 (C6.unitOf (Tz k r Bs.z') (Gf k r Bs.z Bs.z' g) (omC Bs B0 g))
    (C6.unitOf (Tz k r Bs.z') (Gf k r Bs.z Bs.z' (B.sgs p g)) (omC Bs B0 (B.sgs p g))) (Matrix.of p.2.1)
    Bs.k_pos Bs.z'_mem Bs.T'_pos ⟨Bs.π'_rep, Bs.π'_cont⟩ hB0
    (AdmissibleLieWords.sq2_unitOf_eq_one_of_sq2_eq_div Bs.T'_pos hg.2.1 (hsq g hg.1)) hp.2.2.1
    (by simp only [C6.unitOf, hsum, hGf, hcov p hp g hg, Matrix.mulVec_smul]) w
  ext v
  have hv := congrArg (fun T : Wq →L[ℂ] Wq => T v) hE
  simp only [ContinuousLinearMap.comp_apply] at hv
  simp only [xFib, ContinuousLinearMap.flip_apply, ContinuousLinearMap.compL_apply, ContinuousLinearMap.comp_apply, hv]

end fib

end TLC

private theorem herm_Hpk_swap {k r : ℕ} (v w : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) w v = star (herm (Hpk k r) v w) := by
  have hH : ∀ i j : Fin (2 * r + k + 1), star (Hpk k r i j) = Hpk k r j i := by
    intro i j
    simp only [Hpk, Fin.ext_iff]
    split_ifs <;> first | (exfalso; omega) | norm_num
  simp only [herm, dotProduct, mulVec, Pi.star_apply, star_sum, star_mul', star_star, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  rw [hH]
  ring

private theorem exists_isFrameOf_singleton_of_Tz_pos {k r : ℕ} {z' : Fin (2 * r + k + 1) → ℂ} (hk : 1 ≤ k) (hz' : inWb k r z')
    (hT' : 0 < Tz k r z') : ∃ B0 : Fin k → Fin (2 * r + k + 1) → ℂ, IsFrameOf k r [z'] B0 := by
  obtain ⟨n, rfl⟩ : ∃ n, k = n + 1 := ⟨k - 1, by omega⟩
  have hbw : ∀ i : Fin (2 * r + (n + 1) + 1), r ≤ i.val → i.val ≤ r + (n + 1) → inWb (n + 1) r (bvec i) := by
    intro i h1 h2 j hj
    simp only [bvec, Pi.single_apply]
    split_ifs with h
    · subst h
      omega
    · rfl
  obtain ⟨a, ha, hind⟩ : ∃ a, inWb (n + 1) r a ∧ ∀ c : ℂ, a ≠ c • z' := by
    obtain ⟨i0, hi0⟩ : ∃ i : Fin (2 * r + (n + 1) + 1), i.val = r := ⟨⟨r, by omega⟩, rfl⟩
    obtain ⟨i1, hi1⟩ : ∃ i : Fin (2 * r + (n + 1) + 1), i.val = r + 1 := ⟨⟨r + 1, by omega⟩, rfl⟩
    have hne : i0 ≠ i1 := fun h => by rw [h] at hi0; omega
    by_cases h : ∀ c : ℂ, bvec i0 ≠ c • z'
    · exact ⟨_, hbw i0 (by omega) (by omega), h⟩
    · simp only [ne_eq, not_forall, not_not] at h
      obtain ⟨c0, h0⟩ := h
      refine ⟨_, hbw i1 (by omega) (by omega), fun c hc => ?_⟩
      have e0 := congrFun h0 i0
      have e1 := congrFun hc i0
      have e2 := congrFun hc i1
      simp only [bvec, Pi.single_apply, Pi.smul_apply, smul_eq_mul, if_neg hne] at e0 e1 e2
      have hz0 : z' i0 ≠ 0 := fun h => by rw [h, mul_zero] at e0; exact one_ne_zero e0
      have hc0 : c = 0 := (mul_eq_zero.mp e1.symm).resolve_right hz0
      rw [hc0, zero_mul] at e2
      exact one_ne_zero e2
  obtain ⟨e, he, hez, hee, -⟩ := Q.LieAlgebraWeightVectors.exists_unit hz' hT' ha hind
  obtain ⟨Bs, hBs⟩ := Q.LieAlgebraWeightVectors.exists_frame he hz' hT'
  refine ⟨Fin.cons e (fun i => Bs (Fin.cast (by omega) i)), fun i => ?_, fun i j => ?_, fun i v hv => ?_⟩
  · refine Fin.cases ?_ (fun j => ?_) i
    · simpa using he
    · simpa using hBs.1 _
  · refine Fin.cases ?_ (fun i => ?_) i <;> refine Fin.cases ?_ (fun j => ?_) j
    · simpa using hee
    · simp only [Fin.cons_zero, Fin.cons_succ]
      rw [herm_Hpk_swap _ e, hBs.2.2 _ e (by simp), star_zero, if_neg (Fin.succ_ne_zero j).symm]
    · simp only [Fin.cons_zero, Fin.cons_succ]
      rw [hBs.2.2 _ e (by simp), if_neg (Fin.succ_ne_zero i)]
    · simp only [Fin.cons_succ]
      rw [hBs.2.1]
      simp [Fin.ext_iff]
  · simp only [List.mem_cons, List.not_mem_nil, or_false] at hv
    subst hv
    refine Fin.cases ?_ (fun j => ?_) i
    · simpa using hez
    · simpa using hBs.2.2 _ _ (by simp)

theorem x_fibre_of_parts : TL.XFibOfParts := by
  intro hCell hOm hCapF hCapE Wp Wq _ _ _ _ _ _ P Bs X
  obtain ⟨B0, hB0⟩ := exists_isFrameOf_singleton_of_Tz_pos Bs.k_pos Bs.z'_mem Bs.T'_pos
  exact ⟨B0, hB0, fun Y => ⟨TLC.xf_bound hOm Bs hB0 _, TLC.xf_equiv hOm hCapE Bs hB0 _,
    fun Φ x hx => TLC.xf_rad hCell hOm hCapF Bs X hB0 Y Φ x hx⟩⟩

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.XFibreOfParts =====
