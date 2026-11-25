module

public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4Realisable
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideEdge
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockRAddRight
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.ProdBlockEmbMonomial
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LaTwInvT
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FockR
public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FockPairingRowAction
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestCloudBOfThree
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ProductFirstParts
public import Formalism.LocalToGlobal.GroupLattices.FockModels.Cartan
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.Closed
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OnePosDef
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FirstWeightLeConductor
public import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestXiPOfNS
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.Proposition5Gram
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.OperatorWeightBoundHolds
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.MemRed
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.Lemma5aMonomial
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.JointEIntList
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.TwistedMonomialFiltration.TwistSubXMemSupported
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.Lemma5aGeneratorProducts
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.SymGSupport
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.WordLossNonneg
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.Proposition5OfThreeParts
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.GramExponentArithmetic
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.LeOfOneLeMul
public import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembFinal
import Formalism.LocalToGlobal.GroupLattices.FockModels.ElementaryDivisorBasis
import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.EvensBeforePairwise
import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ScaleNegMono
import Formalism.LocalToGlobal.GroupLattices.FockModels.FlatModels.LetterWtAnti
import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockRLinDual
import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.EdgePlane
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.EdgeLatticeMulOfWeightSum
import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.RankMulConductorDivLeOne

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockSumRight, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.PairFormula, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ScaleZeroIff, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestCloudBOfTwo, Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LogSizeBoundLe, Formalism.SharpRestriction.GrowthBounds.DualFockLinear, Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution, Formalism.SharpRestriction.GrowthBounds.DiagonalSupport

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockSumRight =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockSumRight", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4Realisable\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.ElementaryDivisorBasis\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.EvensBeforePairwise\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ScaleNegMono\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14
open Formalism.L2.G.Model (kapR kapR_alg)

theorem fock_sum_right {R : Type} [CommRing R] {τ : Type} {ι : Type} (s : Finset ι) (F : MvPolynomial τ R)
    (G : ι → MvPolynomial τ R) : fock F (∑ q ∈ s, G q) = ∑ q ∈ s, fock F (G q) := by
  simp only [fock, MvPolynomial.coeff_sum, Finset.mul_sum, Finset.sum_mul]
  exact Finset.sum_comm

theorem inWj_map {O : Type} [CommRing O] [IsDomain O] {τ : Type} (w : O) (P : MvPolynomial τ O) :
    InWj w (MvPolynomial.map (algebraMap O (KK O)) P) 0 := by
  intro m
  exact ⟨P.coeff m, by simp [MvPolynomial.coeff_map]⟩

theorem valLe_perturb {O Kf : Type} [CommRing O] [IsDomain O] [IsLocalRing O] [Field Kf] [Algebra O Kf] (p : ℕ) (w : O)
    (hw : ¬ IsUnit w) (hsq : w ^ 2 = (p : O)) (D c : ℕ) (hc : 2 * D < c) (a b z : O) (hab : a * b = (p : O) ^ D) :
    ValLe (Kf := Kf) (p : O) D (algebraMap O Kf (a + w ^ c * z)) := by
  obtain ⟨k, hk⟩ : ∃ k, c = 2 * D + (k + 1) := ⟨c - 2 * D - 1, by omega⟩
  have hwc : w ^ c = (p : O) ^ D * w ^ (k + 1) := by rw [hk, pow_add, pow_mul, hsq]
  have hwk : w ^ (k + 1) ∈ IsLocalRing.maximalIdeal O := by
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    exact fun h => hw ((isUnit_pow_iff (Nat.succ_ne_zero k)).1 h)
  have hm : b * w ^ (k + 1) * z ∈ IsLocalRing.maximalIdeal O :=
    Ideal.mul_mem_right _ _ (Ideal.mul_mem_left _ _ hwk)

  have hu : IsUnit (1 + b * w ^ (k + 1) * z) := by
    by_contra hne
    have h1 : (1 + b * w ^ (k + 1) * z) ∈ IsLocalRing.maximalIdeal O :=
      (IsLocalRing.mem_maximalIdeal _).2 hne
    have h2 : (1 : O) ∈ IsLocalRing.maximalIdeal O := by
      have := Ideal.sub_mem _ h1 hm
      simpa using this
    exact (IsLocalRing.maximalIdeal.isMaximal O).ne_top ((Ideal.eq_top_iff_one _).2 h2)
  have ha' : a + w ^ c * z = a * (1 + b * w ^ (k + 1) * z) := by rw [hwc, ← hab]; ring
  refine ⟨a + w ^ c * z, b * ↑hu.unit⁻¹, rfl, ?_⟩
  rw [ha', mul_mul_mul_comm, IsUnit.mul_val_inv, mul_one, hab]



theorem restFlat_of (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 : ℝ)
    (hXi : RestXi D CLa Ck Crk Cdeg CH CE C6 C18) (hRe : RestReal D CLa Ck Crk Cdeg) :
    RestFlat D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 := by
  intro hA _ h14b
  obtain ⟨Ct0, CDf, C₂, h0, h1, hC2, hX⟩ := hXi hA h14b
  obtain ⟨C₃, hC3, hR⟩ := hRe hA
  obtain ⟨C6U, hC6U, h6⟩ := one_sided_lemma4_of_admitted_theorem_II
  have h6' := h6 D CLa Ck Crk Cdeg hA
  obtain ⟨C₄, hC4, hII⟩ := hypII_at C6U (C6U + 1) C6U
  refine ⟨Ct0, CDf, max (max C₂ C₃) (max C₄ CDf), h0, h1,
    lt_of_lt_of_le hC2 (le_trans (le_max_left _ _) (le_max_left _ _)), ?_⟩
  intro C hCC p W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w n' m r _ _ TT L₁ L₂ de h x lam0 aT bT a Y cpp c0 Dp cStar hSet H φ hφ K
    _ _ hk hrk F hFr E' hE' nb B hB hli hc e he htgt hm g hhm hg hbasis
  let _ : Algebra (WF p n') O := algOfIdent j φ
  intro FsB hFsB Θ hΘ
  have c2 : C₂ ≤ C := le_trans (le_trans (le_max_left _ _) (le_max_left _ _)) hCC
  have c3 : C₃ ≤ C := le_trans (le_trans (le_max_right _ _) (le_max_left _ _)) hCC
  have c4 : C₄ ≤ C := le_trans (le_trans (le_max_left _ _) (le_max_right _ _)) hCC
  have c5 : CDf ≤ C := le_trans (le_trans (le_max_right _ _) (le_max_right _ _)) hCC
  obtain ⟨tF, DX, htF, hDX, hxi⟩ := hX C c2 p W Qq O Kf ι σ j w n' m r TT L₁ L₂ de h x lam0 aT bT a Y
    cpp c0 Dp cStar hSet H φ hφ K hk hrk F hFr E' hE' nb B hB hli hc e he htgt hm g hhm hg hbasis FsB hFsB Θ hΘ
  obtain ⟨gv, hgv, hreal⟩ := hR C c3 p W Qq O Kf ι σ j w n' m r TT L₁ L₂ de h x lam0 aT bT a Y
    cpp c0 Dp cStar hSet H φ hφ K hk hrk F hFr E' hE' nb B hB hli hc e he htgt hm g hhm hg hbasis FsB hFsB Θ hΘ
  obtain ⟨hII1, hcP⟩ := hII C c4 p n' m r TT L₁ L₂ de h x lam0 aT bT a Y cpp c0 Dp cStar H F hFr
  have hBas := hyps_basic (C := C) (le_trans hC4 c4) H
  have hGn : goodG' r de h x ≤ n' := by have := H.2.2.1.2.2.2; omega
  have hH : CommonHypotheses p n' r (m + 1) := ⟨H.1, H.2.1, hrk, hSet.1.two_le, hSet.1.even⟩
  have hw0 : algebraMap O Kf w ≠ 0 := Formalism.L2.G.Model.w_ne hSet.1

  have hlog : 0 ≤ (TT.card : ℝ) * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.logb p a := by
    have h2a := hBas.two_le_a
    have hp1 : (1 : ℝ) < (p : ℝ) := by
      have := H.1
      have : 1 < p := by omega
      exact_mod_cast this
    have : 0 ≤ Real.logb p a := Real.logb_nonneg hp1 (by linarith)
    positivity
  have hDp : (DX : ℝ) ≤ Dp := by
    have h10 : C * (TT.card : ℝ) * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.logb p a ≤ Dp := H.2.2.2.2.2.2.2.2.2.1
    have : CDf * (TT.card : ℝ) * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.logb p a ≤
        C * (TT.card : ℝ) * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.logb p a := by
      have e1 : ∀ t : ℝ, t * (TT.card : ℝ) * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.logb p a =
          t * ((TT.card : ℝ) * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.logb p a) := fun t => by ring
      rw [e1, e1]
      exact mul_le_mul_of_nonneg_right c5 hlog
    linarith
  have hDp' : DX ≤ Dp := by exact_mod_cast hDp
  have h2D : 2 * DX < cPrime n' r TT.card c0 cpp cStar := by
    have h11 : 8 * (Dp + 1) ≤ cStar := H.2.2.2.2.2.2.2.2.2.2.1
    unfold cPrime
    omega
  refine ⟨tF, DX, htF, hDX, ?_⟩
  intro F1 f1 f2 f3
  obtain ⟨nq, o, sig, hsig, hval⟩ := hxi F1 f1 f2 f3
  have hT : ∀ q, ∃ T : Module.Dual Kf (Vsp Kf (flW (m := m) (dT TT lam0))),
      T ∈ scale (algebraMap O Kf w ^ (-(tF : ℤ))) (dualLat O Kf (HL (O := O) ι σ (flW (dT TT lam0)) e.tgt)) ∧
      T ∈ Re' p ι σ w r (flW (dT TT lam0)) e ∧
      (∀ e' : Edge W Qq (m + 1), IsEdge p n' r e' → e'.tgt = e.tgt → e' ≠ e →
        T ∈ scale (algebraMap O Kf w ^ ((cPrime n' r TT.card c0 cpp cStar : ℕ) : ℤ))
          (Re' p ι σ w r (flW (dT TT lam0)) e')) ∧
      ∃ z : O, be p r (flW (dT TT lam0)) (Θ F1) T =
        kapR hSet.1 ((p : KK O) ^ (kapFl p (m + 1) (dT TT lam0)) *
          fock (subst p n' O w n' r g (F1 : MvPolynomial (TV n' (m + 1)) (KK O))) (sig q) /
            (((∏ s, (dT TT lam0 s).factorial : ℕ) : ℕ) : KK O)) +
          algebraMap O Kf (w ^ (cPrime n' r TT.card c0 cpp cStar) * z) := by
    intro q
    obtain ⟨ho, hmd, hL4⟩ := hsig q
    have hint : InWj w (sig q) 0 := by
      obtain ⟨_, _, _, _, _, _, _, _, _, _, hs⟩ := hL4
      rw [hs]
      exact inWj_map w _
    have hrl : Realisable p n' w n' r gv (cPrime n' r TT.card c0 cpp cStar) (o q) (sig q) := by
      rw [← hcP] at hL4 ⊢
      exact one_sided_lemma4_realisable D C6U (C6U + 1) C6U h6' O (dvrOfStd hSet) (oHyp_of hSet φ) hk hH F L₁ (orbitWindowCount r de h x)
        (goodG' r de h x) hFr.2.1 (twist_of hFr (by have := H.2.1; omega) hGn p (by have := H.1; omega))
        (flatDeg lam0) ⌈a⌉₊ Y c0 0 (cStar + 2 * r * n' * cpp) (Dp : ℝ) hII1 gv hgv (o q) (sig q) hL4
    obtain ⟨T, t1, t2, t3, t4⟩ := hreal (o q) (sig q) hmd hint hrl
    exact ⟨T, scale_neg_mono w hw0 ho _ t1, t2, t3, t4 F1 f2⟩
  choose T t1 t2 t3 z t4 using hT
  refine ⟨∑ q, T q, Submodule.sum_mem _ fun q _ => t1 q, Submodule.sum_mem _ fun q _ => t2 q,
    fun e' he' htg hne => Submodule.sum_mem _ fun q _ => t3 q e' he' htg hne, ?_⟩
  obtain ⟨aa, bb, hx1, hab⟩ := hval
  have hbe : be p r (flW (dT TT lam0)) (Θ F1) (∑ q, T q) =
      algebraMap O Kf (aa + w ^ (cPrime n' r TT.card c0 cpp cStar) * ∑ q, z q) := by
    have e1 : be p r (flW (dT TT lam0)) (Θ F1) (∑ q, T q) = ∑ q, be p r (flW (dT TT lam0)) (Θ F1) (T q) := by
      unfold be
      rw [LinearMap.sum_apply]
    rw [e1]
    simp only [t4, Finset.sum_add_distrib]

    rw [← map_sum, ← Finset.sum_div, ← Finset.mul_sum, ← fock_sum_right, hx1, kapR_alg, map_add (f := _), ← map_sum,
    ← Finset.mul_sum]
  rw [hbe]
  exact valLe_perturb p w hSet.2.1.not_isUnit hSet.1.w_sq DX _ h2D aa bb _ hab

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockSumRight =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.PairFormula =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.PairFormula", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideEdge\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockRAddRight\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.ElementaryDivisorBasis\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.FlatModels.LetterWtAnti\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.ProdBlockEmbMonomial\nimport Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockRLinDual\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LaTwInvT\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.EdgePlane\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.Pf14 Formalism.MainNotions.SourceCleaning
open Formalism.MainNotions.G.LatticeSystems (la_tw lb_D la_tw_det lb_D_det)
open Formalism.L2.G.Model (Lin Th0 Aa Lin_comp Lin_one Lin_Pol Lin_smul map_Pol mem_Pol
  dE invT_mul_D w_ne p_eq pQ_ne kapR kapR_alg lift_eq Bm Bm_eq Mx Mx_det Avec pol_iff thF flat_Ar)
open Formalism.L2.G.Model.TS

theorem Aa_dual2 {K : Type} [Field K] {m : ℕ} (vec : Bool) (M : Matrix (Fin (m + 1)) (Fin (m + 1)) K)
    (hM : IsUnit M.det) : Aa vec ((M⁻¹).transpose) * (Aa vec M).transpose = 1 := by
  have hMt : IsUnit ((M⁻¹).transpose).det := by
    rw [Matrix.det_transpose, Matrix.det_nonsing_inv]; exact hM.ringInverse
  cases vec
  · simp only [Aa, Bool.false_eq_true, if_false]
    rw [← Matrix.transpose_mul, Matrix.mul_nonsing_inv _ hMt, Matrix.transpose_one]
  · simp only [Aa, if_true]
    rw [← Matrix.transpose_mul, Matrix.mul_nonsing_inv _ hM, Matrix.transpose_one]

section

variable {p n' : ℕ} [Fact p.Prime] {W Qq O Kf : Type} [CommRing W] [IsDomain W] [IsDiscreteValuationRing W] [Field Qq]
  [Algebra W Qq] [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
  {ι : Qq →+* Kf} {σ : Qq ≃+* Qq} {j : W →+* O} {w : O} {m : ℕ} {d : Fin n' → ℕ}

theorem subst_Lin (hS : HidaSetting p n' W Qq O Kf ι σ j w) (φ : WF p n' ≃+* W) (hφ : IsWittIdent σ φ) (r : ℕ)
    (hmat : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq) (hh : IsUnit hmat.det)
    (g : Matrix (Fin (m + 1)) (Fin (m + 1)) (WF p n')) (hg : IsGLW g)
    (F : MvPolynomial (Fin n' × Fin (m + 1)) (KK O)) (hF : F ∈ Pol (KK O) (m + 1) d) :
    letI : Algebra (WF p n') O := algOfIdent j φ
    map (kapR hS) (subst p n' O w n' r g F) = (algebraMap O Kf w ^ Avec (vecE n') d) •
      Lin (fun x => Aa (vecE n' x) (Mx ι σ w φ r (fun x => x) hmat g x))
        (Lin (fun x => Aa (vecE n' x) (la_tw ι σ x.val hmat)⁻¹) (map (kapR hS) F)) := by
  letI : Algebra (WF p n') O := algOfIdent j φ
  have hw := w_ne hS
  have hF' := (pol_iff hS _ _ _).1 hF
  have h1 : map (kapR hS) (subst p n' O w n' r g F) =
      Lin (Bm ι σ w φ r (vecE n') (fun x => x) g) (map (kapR hS) F) :=
    lift_eq hS φ hφ r (LLT n') (fun x => x) (fun _ => rfl) g hg F
  have hB : Bm ι σ w φ r (vecE n') (fun x => x) g = fun x => (if vecE n' x then algebraMap O Kf w else 1) •
      (Aa (vecE n' x) (la_tw ι σ x.val hmat)⁻¹ * Aa (vecE n' x) (Mx ι σ w φ r (fun x => x) hmat g x)) :=
    funext fun x => Bm_eq hw φ r (vecE n') (fun x => x) hmat hh g hg x
  rw [h1, hB, Lin_smul _ _ _ hF', Lin_comp]
  congr 1
  unfold Avec
  rw [← Finset.prod_pow_eq_pow_sum]
  apply Finset.prod_congr rfl
  intro x _
  split_ifs <;> simp

variable (thK : ↥(Pol Kf (ι := Fin n') (m + 1) d) ≃ₗ[Kf] ↥(Vsp Kf (flW (m := m) d)))

theorem pair_formula (hS : HidaSetting p n' W Qq O Kf ι σ j w) (φ : WF p n' ≃+* W) (hφ : IsWittIdent σ φ)
    (r : ℕ) (hr1 : 1 ≤ r) (hr2 : r < m + 1)
    (hthK : ∀ P, ((thK P : ↥(Vsp Kf (flW (m := m) d))) : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) =
      Th0 Kf m (vecE n') (P : MvPolynomial (Fin n' × Fin (m + 1)) Kf)) (κ : ℕ)
    (hmat : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq) (hh : IsUnit hmat.det)
    (g gv : Matrix (Fin (m + 1)) (Fin (m + 1)) (WF p n')) (hg : IsGLW g) (hgv : IsGLW gv)
    (hb : IsUnit (hmat * ((matQ φ g)⁻¹).transpose).det)
    (hrel : ((matQ φ gv)⁻¹).transpose =
      ((hmat * ((matQ φ g)⁻¹).transpose)⁻¹).transpose * dE (m + 1) r ((p : ℕ) : Qq))
    (Θ Θv : ↥((Pol (KK O) (ι := Fin n') (m + 1) d).restrictScalars O) ≃ₗ[O] ↥(Vsp Kf (flW (m := m) d)))
    (hΘ : IsTrueTheta hS d (flW d) (vecE n') hmat Θ) (hΘv : IsTrueTheta hS d (flW d) (vecE n') 1 Θv)
    (F Fv : ↥((Pol (KK O) (ι := Fin n') (m + 1) d).restrictScalars O)) :
    letI : Algebra (WF p n') O := algOfIdent j φ
    be p r (flW d) (Θ F) (TY thK ((p : Kf) ^ κ / (((∏ s, (d s).factorial : ℕ) : ℕ) : Kf)) (Θv Fv)) =
      kapR hS ((p : KK O) ^ κ * fock (subst p n' O w n' r g (F : MvPolynomial (TV n' (m + 1)) (KK O)))
        (subst p n' O w n' r gv (Fv : MvPolynomial (TV n' (m + 1)) (KK O))) /
          (((∏ s, (d s).factorial : ℕ) : ℕ) : KK O)) := by
  letI : Algebra (WF p n') O := algOfIdent j φ
  have h1d : IsUnit (1 : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq).det := by simp
  let P : ↥(Pol Kf (ι := Fin n') (m + 1) d) :=
    ⟨Lin (fun x => Aa (vecE n' x) (la_tw ι σ x.val hmat)⁻¹) (map (kapR hS) F.1),
      Lin_Pol _ _ ((pol_iff hS _ _ _).1 F.2)⟩
  let Q : ↥(Pol Kf (ι := Fin n') (m + 1) d) :=
    ⟨Lin (fun x => Aa (vecE n' x) (la_tw ι σ x.val (1 : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq))⁻¹)
      (map (kapR hS) Fv.1), Lin_Pol _ _ ((pol_iff hS _ _ _).1 Fv.2)⟩
  have eF : Θ F = thK P := Subtype.ext (by rw [hΘ F, hthK]; rfl)
  have eFv : Θv Fv = thK Q := Subtype.ext (by rw [hΘv Fv, hthK]; rfl)
  have hdual : ∀ s : Fin n', Aa (vecE n' s) (Mx ι σ w φ r (fun x => x) 1 gv s) *
      (Aa (vecE n' s) (Mx ι σ w φ r (fun x => x) hmat g s)).transpose = 1 := by
    intro s
    have e1 : Mx ι σ w φ r (fun x => x) 1 gv s = ((Mx ι σ w φ r (fun x => x) hmat g s)⁻¹).transpose := by
      unfold Mx
      rw [Matrix.one_mul, hrel]
      exact dualM hS s.val r _ hb
    rw [e1]
    exact Aa_dual2 _ _ (Mx_det (w_ne hS) φ r (fun x => x) hmat hh g hg s)
  have hL : be p r (flW d) (Θ F) (TY thK ((p : Kf) ^ κ / (((∏ s, (d s).factorial : ℕ) : ℕ) : Kf)) (Θv Fv)) =
      (p : Kf) ^ Ar r (flW (m := m) d) * (((p : Kf) ^ κ / (((∏ s, (d s).factorial : ℕ) : ℕ) : Kf)) *
        fockR (P : MvPolynomial (Fin n' × Fin (m + 1)) Kf) (Q : MvPolynomial (Fin n' × Fin (m + 1)) Kf)) := by
    unfold be
    rw [eF, eFv, map_smul, smul_eq_mul, TY_apply]
  have hadjoint := fockR_Lin_dual _ _ hdual
  simp only [fockR] at hadjoint
  rw [hL, map_div₀, map_mul, map_pow, map_natCast, map_natCast, fock_eq_fockR]
  simp only [← FockPairing.pair_map]
  rw [subst_Lin hS φ hφ r hmat hh g hg F.1 F.2, subst_Lin hS φ hφ r 1 h1d gv hgv Fv.1 Fv.2]
  simp only [FockPairing.pair_smul_left, FockPairing.pair_smul_right]
  rw [hadjoint, flat_Ar r hr1 hr2 (vecE n') d (flW d) (isFlat_flW d), zpow_natCast, p_eq hS]
  show _ = _ * (_ * (_ * fockR (P : MvPolynomial (Fin n' × Fin (m + 1)) Kf)
    (Q : MvPolynomial (Fin n' × Fin (m + 1)) Kf))) / _
  ring

theorem exists_gv (hS : HidaSetting p n' W Qq O Kf ι σ j w) (φ : WF p n' ≃+* W) {k : ℕ} (X : Matrix (Fin k) (Fin k) Qq)
    (h : colSpan W X = colSpan W (1 : Matrix (Fin k) (Fin k) Qq)) :
    ∃ gv : Matrix (Fin k) (Fin k) (WF p n'), IsGLW gv ∧ matQ φ gv = X := by
  have := hS.frac_alt
  have hinj : Function.Injective (algebraMap W Qq) := IsFractionRing.injective W Qq
  have h1 : ∀ c : Fin k, ∃ y : Fin k → W, (fun i => X i c) =
      (1 : Matrix (Fin k) (Fin k) Qq).mulVec (fun a => algebraMap W Qq (y a)) := by
    intro c
    apply (mem_colSpan _ _).1
    rw [← h]
    exact Submodule.subset_span ⟨c, rfl⟩
  have h2 : ∀ c : Fin k, ∃ y : Fin k → W, (fun i => (1 : Matrix (Fin k) (Fin k) Qq) i c) =
      X.mulVec (fun a => algebraMap W Qq (y a)) := by
    intro c
    apply (mem_colSpan _ _).1
    rw [h]
    exact Submodule.subset_span ⟨c, rfl⟩
  choose Y hY using h1
  choose Y' hY' using h2
  let Cm : Matrix (Fin k) (Fin k) W := fun i c => Y c i
  let Cm' : Matrix (Fin k) (Fin k) W := fun i c => Y' c i
  have hX : X = Cm.map (algebraMap W Qq) := by
    ext i c
    have := congrFun (hY c) i
    rw [Matrix.one_mulVec] at this
    exact this
  have hprod : Cm * Cm' = 1 := by
    apply Matrix.map_injective hinj
    show (Cm * Cm').map (algebraMap W Qq) = (1 : Matrix (Fin k) (Fin k) W).map (algebraMap W Qq)
    rw [Matrix.map_mul, ← hX, Matrix.map_one _ (map_zero _) (map_one _)]
    ext i c
    have := congrFun (hY' c) i
    rw [Matrix.mul_apply]
    exact this.symm
  have hdet : IsUnit Cm.det := by
    have : Cm.det * Cm'.det = 1 := by rw [← Matrix.det_mul, hprod, Matrix.det_one]
    exact IsUnit.of_mul_eq_one _ this
  refine ⟨(φ.symm : W →+* WF p n').mapMatrix Cm, ?_, ?_⟩
  · unfold IsGLW
    rw [← RingHom.map_det]
    exact hdet.map _
  · rw [hX]
    ext a c
    simp [matQ, RingHom.mapMatrix_apply, Matrix.map_apply]

end

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.PairFormula =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ScaleZeroIff =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ScaleZeroIff", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OneSidedLemma4Realisable\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.ElementaryDivisorBasis\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.ProdBlockEmbMonomial\nimport Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockRLinDual\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockSumRight\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LaTwInvT\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.PairFormula\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.EdgePlane\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ScaleNegMono\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TestSideEdge\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FockR\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.TransposeWordsProofs.FockPairingRowAction\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FockRAddRight\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.Pf14 Formalism.MainNotions.SourceCleaning
open Formalism.MainNotions.G.LatticeSystems (la_tw lb_D la_tw_det lb_D_det)
open Formalism.L2.G.Model (Lin Th0 Aa Lin_Pol dE invT_mul_D dual_edgeBasis dual_edge edgeBasis latDual_colSpan w_ne p_eq pQ_ne
  kapR kapR_alg pol_iff inWj_iff pol_of_map)
open Formalism.L2.G.Model.TS

theorem scale_zero_iff {O Kf X : Type} [CommRing O] [Field Kf] [Algebra O Kf] [AddCommGroup X] [Module Kf X] [Module O X]
    [IsScalarTower O Kf X] (c : Kf) (M : Submodule O X) (x : X) : x ∈ scale (c ^ (0 : ℤ)) M ↔ x ∈ M := by
  rw [mem_scale]
  constructor
  · rintro ⟨y, hy, rfl⟩
    simpa using hy
  · intro h
    exact ⟨x, h, by simp⟩

section

variable {p n' : ℕ} [Fact p.Prime] [NeZero n'] {W Qq O Kf : Type} [CommRing W] [IsDomain W] [IsDiscreteValuationRing W]
  [Field Qq] [Algebra W Qq] [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Field Kf] [Algebra O Kf]
  {ι : Qq →+* Kf} {σ : Qq ≃+* Qq} {j : W →+* O} {w : O} {m : ℕ}



theorem realAt_gen (hS : HidaSetting p n' W Qq O Kf ι σ j w) (φ : WF p n' ≃+* W) (hφ : IsWittIdent σ φ)
    (hm1 : 1 ≤ m) (r : ℕ) (hr1 : 1 ≤ r) (hr2 : r < m + 1) (d : Fin n' → ℕ) (cP κ : ℕ)
    (hMD : MultDiv O p κ (k := m + 1) d)
    (e : Edge W Qq (m + 1)) (he : IsEdge p n' r e)
    (htgt : e.tgt = colSpan W (1 : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq))
    (hm : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq) (g : Matrix (Fin (m + 1)) (Fin (m + 1)) (WF p n'))
    (hhm : IsUnit hm.det) (hg : IsGLW g) (hbasis : IsEdgeBasis p r e (hm * ((matQ φ g)⁻¹).transpose))
    (Θ : ↥((Pol (KK O) (ι := Fin n') (m + 1) d).restrictScalars O) ≃ₗ[O] ↥(Vsp Kf (flW (m := m) d)))
    (hΘ : IsTrueTheta hS d (flW d) (vecE n') hm Θ) :
    letI : Algebra (WF p n') O := algOfIdent j φ
    ∃ gv : Matrix (Fin (m + 1)) (Fin (m + 1)) (WF p n'), IsGLW gv ∧
    ∀ (o : ℕ) (sig : MvPolynomial (TV n' (m + 1)) (KK O)), HasMultideg sig d → InWj w sig 0 →
      Realisable p n' w n' r gv cP o sig →
      ∃ T : Module.Dual Kf (Vsp Kf (flW (m := m) d)),
        T ∈ scale (algebraMap O Kf w ^ (-(o : ℤ))) (dualLat O Kf (HL (O := O) ι σ (flW d) e.tgt)) ∧
        T ∈ Re' p ι σ w r (flW d) e ∧
        (∀ e' : Edge W Qq (m + 1), IsEdge p n' r e' → e'.tgt = e.tgt → e' ≠ e →
          T ∈ scale (algebraMap O Kf w ^ (cP : ℤ)) (Re' p ι σ w r (flW d) e')) ∧
        ∀ F : ↥((Pol (KK O) (ι := Fin n') (m + 1) d).restrictScalars O),
          Θ F ∈ Re p ι σ w r (flW d) e →
          ∃ z : O, be p r (flW d) (Θ F) T =
            kapR hS ((p : KK O) ^ κ * fock (subst p n' O w n' r g (F : MvPolynomial (TV n' (m + 1)) (KK O))) sig /
              (((∏ s, (d s).factorial : ℕ) : ℕ) : KK O)) + algebraMap O Kf (w ^ cP * z) := by
  letI : Algebra (WF p n') O := algOfIdent j φ
  have hw := w_ne hS
  have h1d : IsUnit (1 : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq).det := by simp
  have h1T : ((1 : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq)⁻¹).transpose = 1 := by simp
  set b := hm * ((matQ φ g)⁻¹).transpose with hbdef
  have htg : e.tgt = colSpan W (b * lb_D (m + 1) r ((p : ℕ) : Qq)) := hbasis.2.2
  obtain ⟨gv, hgv, hgvX⟩ := exists_gv hS φ (b * lb_D (m + 1) r ((p : ℕ) : Qq)) (by rw [← htg, htgt])
  have hrel : ((matQ φ gv)⁻¹).transpose = (b⁻¹).transpose * dE (m + 1) r ((p : ℕ) : Qq) := by
    rw [hgvX]
    exact invT_mul_D b hbasis.1 r _ (pQ_ne hS)
  have hbv : IsEdgeBasis p r e.dual (1 * ((matQ φ gv)⁻¹).transpose) := by
    rw [Matrix.one_mul, hrel]
    exact dual_edgeBasis p r (pQ_ne hS) e b hbasis
  obtain ⟨Θv, ⟨hv1, hv2⟩, hv3⟩ := theta_exists p n' W Qq O Kf ι σ j w hS φ hφ m r (vecE n') d (flW d) hr1 hr2
    (isFlat_flW d) 1 h1d
  obtain ⟨Θ', ⟨_, h2'⟩, h3'⟩ := theta_exists p n' W Qq O Kf ι σ j w hS φ hφ m r (vecE n') d (flW d) hr1 hr2
    (isFlat_flW d) hm hhm
  have hΘeq : Θ = Θ' := LinearEquiv.ext fun F => Subtype.ext ((hΘ F).trans (h3' F).symm)
  subst hΘeq
  obtain ⟨thK, hthK⟩ := exists_thK Kf hm1 d
  obtain ⟨hE1, _, hE3⟩ := edgePlane p n' W Qq O Kf ι σ j w hS φ hφ m r 1 h1d
  refine ⟨gv, hgv, ?_⟩
  intro o sig hmd hint hreal
  obtain ⟨Ff, hA, hmdF, hsym, hoth⟩ := hreal
  let F' : ↥((Pol (KK O) (ι := Fin n') (m + 1) d).restrictScalars O) := ⟨Ff, hmdF d hmd⟩
  set cc : Kf := (p : Kf) ^ κ / (((∏ s, (d s).factorial : ℕ) : ℕ) : Kf) with hcc
  refine ⟨TY thK cc ((algebraMap O Kf w ^ (-(o : ℤ))) • Θv F'), ?_, ?_, ?_, ?_⟩
  · rw [htgt]
    apply FD_HL thK hS hm1 hthK κ hMD 1 h1d
    rw [h1T]
    exact mem_scale.2 ⟨Θv F', (hv1 F').1 hA, rfl⟩
  · rw [← scale_zero_iff (algebraMap O Kf w)]
    apply FD_edge thK hS hm1 hthK κ hMD r e b hbasis
    have h1 : InWjRg p n' O w r (flatLetters (vecE n')) gv
        (F' : MvPolynomial (Fin n' × Fin (m + 1)) (KK O)) (o + 0) := by
      intro mm
      obtain ⟨c1, hc1⟩ := hsym mm
      obtain ⟨c2, hc2⟩ := hint mm
      refine ⟨c2 + w ^ cP * c1, ?_⟩
      have e1 : AddMonoidAlgebra.coeff (subst p n' O w n' r gv Ff) mm =
          AddMonoidAlgebra.coeff (subst p n' O w n' r gv Ff - C (algebraMap O (KK O) (w ^ o)) * sig) mm +
            algebraMap O (KK O) (w ^ o) * AddMonoidAlgebra.coeff sig mm := by
        rw [MvPolynomial.coeff_sub, coeff_C_mul]
        ring
      show AddMonoidAlgebra.coeff (subst p n' O w n' r gv Ff) mm = _
      rw [e1, hc1, hc2, ← map_mul, ← map_add (f := _)]
      congr 1
      ring
    have h2 := (hv2 gv hgv e.dual hbv F' (o + 0)).1 h1
    exact scale_shift (algebraMap O Kf w) hw o 0 _ h2
  · intro e' he' htg' hne
    obtain ⟨b', hb'⟩ := edgeBasis hS m r e' he'
    apply FD_edge thK hS hm1 hthK κ hMD r e' b' hb'
    have hd' := dual_edge hS m r e' he'
    have hd := dual_edge hS m r e he
    have hsrc : e'.dual.src = colSpan W (1 : Matrix (Fin (m + 1)) (Fin (m + 1)) Qq) := by
      show latDual e'.tgt = _
      rw [htg', htgt, latDual_colSpan _ h1d, h1T]
    obtain ⟨g', hg', hbg'⟩ := hE1 e'.dual hd'.1 hsrc
    have hpl : ratPlane p n' r g' ≠ ratPlane p n' r gv := by
      intro hEq
      have h5 : e'.dual = e.dual := (hE3 g' gv e'.dual e.dual hg' hgv hbg' hbv).2 hEq
      apply hne
      rw [← hd'.2, h5, hd.2]
    have h1 : InWjRg p n' O w r (flatLetters (vecE n')) g'
        (F' : MvPolynomial (Fin n' × Fin (m + 1)) (KK O)) (o + cP) := hoth g' hg' hpl
    have h2 := (hv2 g' hg' e'.dual hbg' F' (o + cP)).1 h1
    exact scale_shift (algebraMap O Kf w) hw o cP _ h2
  · intro F hF
    have hpf := pair_formula thK hS φ hφ r hr1 hr2 hthK κ hm hhm g gv hg hgv hbasis.1 hrel Θ Θv hΘ hv3 F F'

    have hF0 : InWjRg p n' O w r (flatLetters (vecE n')) g (F : MvPolynomial (Fin n' × Fin (m + 1)) (KK O)) 0 :=
      (h2' g hg e hbasis F 0).2 (by
        have : ((0 : ℕ) : ℤ) = 0 := rfl
        rw [this, scale_zero_iff]
        exact hF)
    obtain ⟨G0, hG0⟩ := (inWj_iff hS _ 0).1 hF0
    rw [pow_zero, one_smul] at hG0
    have hG0' : map (kapR hS) (subst p n' O w n' r g (F : MvPolynomial (TV n' (m + 1)) (KK O))) =
        map (algebraMap O Kf) G0 := hG0
    have hG0P : G0 ∈ Pol O (m + 1) d := by
      apply pol_of_map hS
      rw [← hG0', subst_Lin hS φ hφ r hm hhm g hg F.1 F.2]
      exact Submodule.smul_mem _ _ (Lin_Pol _ _ (Lin_Pol _ _ ((pol_iff hS _ _ _).1 F.2)))
    obtain ⟨E, hE⟩ := (inWj_iff hS _ (o + cP)).1 hsym
    obtain ⟨z, hz⟩ := int_pair (Kf := Kf) p κ hMD G0 hG0P E
    refine ⟨z, ?_⟩
    set SF := subst p n' O w n' r g (F : MvPolynomial (TV n' (m + 1)) (KK O)) with hSF
    set Rr := subst p n' O w n' r gv Ff - C (algebraMap O (KK O) (w ^ o)) * sig with hRr
    have e1 : subst p n' O w n' r gv (F' : MvPolynomial (TV n' (m + 1)) (KK O)) =
        algebraMap O (KK O) (w ^ o) • sig + Rr := by
      rw [hRr, smul_eq_C_mul]
      show subst p n' O w n' r gv Ff = _
      ring
    have e2 : be p r (flW d) (Θ F) (TY thK cc ((algebraMap O Kf w ^ (-(o : ℤ))) • Θv F')) =
        algebraMap O Kf w ^ (-(o : ℤ)) * be p r (flW d) (Θ F) (TY thK cc (Θv F')) := by
      simp only [be, map_smul, LinearMap.smul_apply, smul_eq_mul]
      ring
    have e3 : kapR hS (fock SF Rr) = algebraMap O Kf w ^ (o + cP) *
        fockR (map (algebraMap O Kf) G0) (map (algebraMap O Kf) E) := by
      simp_rw [fock_eq_fockR, ← FockPairing.pair_map, hG0', hE, FockPairing.pair_smul_right]
    rw [e2, hpf, e1, fock_eq_fockR, fockR_add_right]
    simp only [FockPairing.pair_smul_right]
    have pair_eq_fock (P Q : MvPolynomial (TV n' (m + 1)) (KK O)) :
        FockPairing.pair P Q = fock P Q := rfl
    simp only [pair_eq_fock]
    have e4 : kapR hS ((p : KK O) ^ κ * (algebraMap O (KK O) (w ^ o) * fock SF sig + fock SF Rr) /
        (((∏ s, (d s).factorial : ℕ) : ℕ) : KK O)) =
        algebraMap O Kf w ^ o * kapR hS ((p : KK O) ^ κ * fock SF sig / (((∏ s, (d s).factorial : ℕ) : ℕ) : KK O)) +
          algebraMap O Kf w ^ (o + cP) * algebraMap O Kf z := by
      rw [← hz]
      simp only [map_div₀, map_mul, map_add (f := _), map_pow, map_natCast, kapR_alg, e3]
      ring
    rw [e4, zpow_neg, zpow_natCast, map_mul, map_pow, pow_add]
    field_simp

end

theorem realStep (C CLa : ℝ) : RealStep C CLa := by
  intro p W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w n' m r _ _ TT L₁ L₂ de h x lam0 aT bT a Y cpp c0 Dp cStar hSet H φ hφ K
    _ _ hk hrk F hFr E' hE' nb B hB hli hc e he htgt hm g hhm hg hbasis FsB hFsB Θ hΘ
  have hkr : orbitWindowCount r de h x + 2 * r ≤ (m + 1) - r := H.2.2.2.2.2.2.2.1
  have hr2 : 2 ≤ r := H.2.1
  exact realAt_gen hSet.1 φ hφ (by omega) r (by omega) (by omega) (dT TT lam0) _ _
    (multDiv_kapFl O p (dvrOfStd hSet).p_mem (dT TT lam0)) e he htgt hm g hhm hg hbasis Θ hΘ

theorem restReal (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) : RestReal D CLa Ck Crk Cdeg :=
  fun _ => ⟨1, one_pos, fun C _ => realStep C CLa⟩

theorem restFlat_of_Xi (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 : ℝ)
    (hXi : RestXi D CLa Ck Crk Cdeg CH CE C6 C18) : RestFlat D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 :=
  restFlat_of D CLa Ck Crk Cdeg CLa' CD Csz CH CE C6 C18 hXi (restReal D CLa Ck Crk Cdeg)

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ScaleZeroIff =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestCloudBOfTwo =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestCloudBOfTwo", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestCloudBOfThree\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ProductFirstParts\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.Cartan\nimport Formalism.LocalToGlobal.GroupLattices.FockModels.ElementaryDivisorBasis\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.EdgeLatticeMulOfWeightSum\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.RankMulConductorDivLeOne\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.ScaleNegMono\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 MvPolynomial
open Formalism.MainNotions.G.LatticeSystems (lb_D lb_D_det kp_lamAt_antitone)

section Tensor

variable {R K : Type} [CommRing R] [Field K] [Algebra R K] {S : Type} [Fintype S] [DecidableEq S] {k n : ℕ}

theorem tensor_onto (A B M : S → Submodule R (MvPolynomial (Fin k × Fin n) K))
    (hM : ∀ s, M s ≤ Submodule.span R {X | ∃ F ∈ A s, ∃ G ∈ B s, X = F * G}) :
    tensorLat R K M ≤ Submodule.span R {X | ∃ P ∈ tensorLat R K A, ∃ Q ∈ tensorLat R K B, X = P * Q} :=
  _root_.UpperTheory.Reformulated.B.product_first_partition.tensor_onto A B M hM

end Tensor

theorem ontoAll : OntoAll := by
  intro p n' W Qq O Kf _ _ _ _ _ _ _ _ _ _ ι σ j w h m r d rest lam hlam hdr e he z hz
  have hw := w_ne_zero h
  have := h.frac_O
  have hfd : IsDominant (flW (m := m) d) := flW_dom _
  have hAr : Ar r lam = Ar r (flW (m := m) d) + Ar r rest := by rw [hlam]; exact Ar_add r _ _
  obtain ⟨gs, hgs, _, h2, _⟩ := Formalism.L2.G.Model.edgeLat h m r e he
  have hΛ : ∀ s : Fin n', ∃ g : Matrix (Fin (m + 1)) (Fin (m + 1)) Kf, IsUnit g.det ∧
      LeAt p ι σ w s.val e = colSpan O g := fun s =>
    ⟨_, by rw [Matrix.det_mul]; exact (hgs _).mul (lb_D_det _ _ _ hw), h2 s.val⟩
  set cw : Kf := algebraMap O Kf w with hcw
  set Sp := Submodule.span O {z : Vsp Kf lam | ∃ y ∈ Re p ι σ w r (flW d) e,
    ∃ β ∈ Re p ι σ w r rest e, (z : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) = (y : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) * (β : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf)} with hSp
  obtain ⟨z0, hz0, rfl⟩ := mem_scale.1 hz
  have hz0' : ((z0 : Vsp Kf lam) : MvPolynomial (Fin n' × (Fin (m + 1) × Fin (m + 1))) Kf) ∈ Hten O lam (fun s => LeAt p ι σ w s.val e) := hz0
  have hten := tensor_onto (R := O) (fun s => H0 O m (lamAt (flW (m := m) d) s) (LeAt p ι σ w s.val e))
    (fun s => H0 O m (lamAt rest s) (LeAt p ι σ w s.val e)) (fun s => H0 O m (lamAt lam s) (LeAt p ι σ w s.val e))
    (fun s => by
      rw [hlam, lamAt_add]
      exact le_of_eq (Formalism.L2.G.Model.cartanOnto_proved O Kf m _ _ _ (hΛ s) (kp_lamAt_antitone _ hfd s)
        (kp_lamAt_antitone _ hdr s))) hz0'
  have key : ∀ x ∈ Submodule.span O {X | ∃ P ∈ Hten O (flW (m := m) d) (fun s => LeAt p ι σ w s.val e),
      ∃ Q ∈ Hten O rest (fun s => LeAt p ι σ w s.val e), X = P * Q},
      ∃ hx : x ∈ Vsp Kf lam, cw ^ (-Ar r lam) • (⟨x, hx⟩ : Vsp Kf lam) ∈ Sp := by
    intro x hx
    induction hx using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨P, hP, Q, hQ, rfl⟩ := hx
      have hPV := Hten_le_V hfd _ hΛ P hP
      have hQV := Hten_le_V hdr _ hΛ Q hQ
      refine ⟨V_mul Kf hlam hfd hdr hPV hQV, Submodule.subset_span
        ⟨cw ^ (-Ar r (flW (m := m) d)) • ⟨P, hPV⟩, mem_scale.2 ⟨⟨P, hPV⟩, hP, rfl⟩,
          cw ^ (-Ar r rest) • ⟨Q, hQV⟩, mem_scale.2 ⟨⟨Q, hQV⟩, hQ, rfl⟩, ?_⟩⟩
      simp only [Submodule.coe_smul]
      rw [smul_mul_smul_comm, ← zpow_add₀ hw, hAr]
      congr 2
      ring
    | zero => exact ⟨Submodule.zero_mem _, by
        have : (⟨0, Submodule.zero_mem _⟩ : Vsp Kf lam) = 0 := rfl
        rw [this, smul_zero]; exact Submodule.zero_mem _⟩
    | add a b _ _ ha hb =>
      obtain ⟨ha1, ha2⟩ := ha
      obtain ⟨hb1, hb2⟩ := hb
      refine ⟨Submodule.add_mem _ ha1 hb1, ?_⟩
      have : (⟨a + b, Submodule.add_mem _ ha1 hb1⟩ : Vsp Kf lam) = ⟨a, ha1⟩ + ⟨b, hb1⟩ := rfl
      rw [this, smul_add]
      exact Submodule.add_mem _ ha2 hb2
    | smul t a _ ha =>
      obtain ⟨ha1, ha2⟩ := ha
      have hta : t • a ∈ Vsp Kf lam := by
        rw [← algebraMap_smul Kf t a]
        exact Submodule.smul_mem _ _ ha1
      refine ⟨hta, ?_⟩
      have : (⟨t • a, hta⟩ : Vsp Kf lam) = t • ⟨a, ha1⟩ := rfl
      rw [this, smul_comm]
      exact Submodule.smul_mem _ _ ha2
  obtain ⟨hx, hmem⟩ := key _ hten
  exact hmem

theorem restCloudB_of_two (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) (hop : RestTSOp D CLa Ck Crk Cdeg) (hsz : RestSize) :
    RestCloudB D CLa Ck Crk Cdeg :=
  restCloudB_of_three D CLa Ck Crk Cdeg hop hsz ontoAll

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestCloudBOfTwo =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LogSizeBoundLe =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LogSizeBoundLe", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestCloudBOfThree\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestCloudBOfTwo\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.RankMulConductorDivLeOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.Interval.Finset.Box\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14

theorem num_size2 (C k r N Q cS c0 z Y a : ℝ) (hC : 2 ≤ C) (hk : 1 ≤ k) (hr : 2 ≤ r) (hN : 1 ≤ N) (hQ : 1 ≤ Q)
    (hcS : 8 ≤ cS) (hc0 : 0 ≤ c0) (hz : 0 ≤ z) (hY : 2 ≤ Y)
    (hsz : C * k ^ 3 * r ^ 2 * N * Q ^ 5 * (cS + (r * N * c0 + z)) * Y ≤ a) : 8 * k ≤ a := by
  have hk3 : k ≤ k ^ 3 := le_self_pow₀ hk (by norm_num)
  have hr2 : 4 ≤ r ^ 2 := by nlinarith [sq_nonneg (r - 2)]
  have hQ5 : 1 ≤ Q ^ 5 := one_le_pow₀ hQ
  have hW : 8 ≤ cS + (r * N * c0 + z) := by
    have : 0 ≤ r * N * c0 := by positivity
    linarith
  have hchain : 2 * k * 4 * 1 * 1 * 8 * 2 ≤ C * k ^ 3 * r ^ 2 * N * Q ^ 5 * (cS + (r * N * c0 + z)) * Y := by
    gcongr
  linarith

theorem log_size_bound_le (p n' m : ℕ) (TT : Finset (Fin n')) (X : Fin n' → Fin (m + 1) → ℤ) (a : ℝ) (hp : 1 < p) (ha : 1 ≤ a)
    (h0 : ∀ s, s ∉ TT → ellWt (lamAt X s) = 0)
    (h1 : ∀ s ∈ TT, ((ellWt (lamAt X s) : ℕ) : ℝ) + ((m + 1 : ℕ) : ℝ) ≤ a ^ 2) :
    ((kap1 p X : ℕ) : ℝ) ≤ 2 * (TT.card : ℝ) * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.logb p a := by
  have hp' : (1 : ℝ) < p := by exact_mod_cast hp
  have hlog : 0 ≤ Real.logb p a := Real.logb_nonneg hp' ha
  unfold kap1
  rw [Nat.cast_sum]
  have hterm : ∀ s, (((if ellWt (lamAt X s) = 0 then 0 else N0 (m + 1) * deF p (m + 1) (ellWt (lamAt X s)) : ℕ)) : ℝ) ≤
      if s ∈ TT then 2 * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.logb p a else 0 := by
    intro s
    by_cases hs : s ∈ TT
    · rw [if_pos hs]
      split_ifs with hz
      · rw [Nat.cast_zero]
        exact mul_nonneg (by positivity) hlog
      · rw [Nat.cast_mul]
        have hN0 : ((N0 (m + 1) : ℕ) : ℝ) ≤ ((m + 1 : ℕ) : ℝ) ^ 2 := by
          have : N0 (m + 1) ≤ (m + 1) ^ 2 := by
            unfold N0
            calc (m + 1) * (m + 1 - 1) / 2 ≤ (m + 1) * (m + 1 - 1) := Nat.div_le_self _ _
              _ ≤ (m + 1) * (m + 1) := Nat.mul_le_mul_left _ (Nat.sub_le _ _)
              _ = (m + 1) ^ 2 := by ring
          exact_mod_cast this
        have hde : ((deF p (m + 1) (ellWt (lamAt X s)) : ℕ) : ℝ) ≤ 2 * Real.logb p a := by
          unfold deF
          have hpos : (0 : ℝ) < ((ellWt (lamAt X s) + (m + 1) - 1 : ℕ) : ℝ) := by
            have : 0 < ellWt (lamAt X s) + (m + 1) - 1 := by omega
            exact_mod_cast this
          have hle : ((ellWt (lamAt X s) + (m + 1) - 1 : ℕ) : ℝ) ≤ a ^ 2 := by
            have h2 : ((ellWt (lamAt X s) + (m + 1) - 1 : ℕ) : ℝ) ≤ ((ellWt (lamAt X s) + (m + 1) : ℕ) : ℝ) := by
              exact_mod_cast Nat.sub_le _ _
            have h3 := h1 s hs
            rw [Nat.cast_add] at h2
            linarith
          calc ((Nat.log p (ellWt (lamAt X s) + (m + 1) - 1) : ℕ) : ℝ)
              ≤ Real.logb p ((ellWt (lamAt X s) + (m + 1) - 1 : ℕ) : ℝ) := Real.natLog_le_logb _ _
            _ ≤ Real.logb p (a ^ 2) := Real.logb_le_logb_of_le hp' hpos hle
            _ = 2 * Real.logb p a := by rw [Real.logb_pow]; norm_num
        calc ((N0 (m + 1) : ℕ) : ℝ) * ((deF p (m + 1) (ellWt (lamAt X s)) : ℕ) : ℝ)
            ≤ ((m + 1 : ℕ) : ℝ) ^ 2 * (2 * Real.logb p a) := mul_le_mul hN0 hde (Nat.cast_nonneg _) (by positivity)
          _ = 2 * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.logb p a := by ring
    · rw [if_neg hs, if_pos (h0 s hs), Nat.cast_zero]
  calc _ ≤ ∑ s : Fin n', (if s ∈ TT then 2 * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.logb p a else 0) :=
        Finset.sum_le_sum fun s _ => hterm s
    _ = _ := by
        rw [Finset.sum_ite_mem, Finset.univ_inter, Finset.sum_const, nsmul_eq_mul]
        ring

theorem lastIdx_eq (m : ℕ) : lastIdx (m + 1) = Fin.last m :=
  Fin.ext (by simp [lastIdx])

theorem ellWt_zero (m : ℕ) : ellWt (0 : Fin (m + 1) → ℤ) = 0 := by
  simp [ellWt]

theorem ellWt_flat {n' m : ℕ} (hm : 1 ≤ m) (d : Fin n' → ℕ) (s : Fin n') : ellWt (lamAt (flW (m := m) d) s) = d s := by
  have hne : Fin.last m ≠ 0 := by
    intro h
    have := congrArg Fin.val h
    simp at this
    omega
  simp only [lamAt, flW, ellWt, lastIdx_eq]
  split_ifs
  · simp [Pi.single_eq_same, Pi.single_eq_of_ne hne]
  · simp [Fin.rev_zero, Fin.rev_last, Pi.single_eq_same, Pi.single_eq_of_ne hne]

theorem sizeStep (C : ℝ) (hC : 2 ≤ C) : SizeStep C 4 := by
  intro p n' m r TT L₁ L₂ de h x lam0 aT bT a Y cpp c0 Dp cStar H
  have hkc := rank_mul_conductor_div_le_one hC H
  obtain ⟨hp, hr, _, hN1, hW, hY, _, hk, _, hD, hc, hsz⟩ := H
  have hm2 : 2 ≤ m := by omega
  have hN1pos : 1 ≤ orbitWindowCount r de h x := by unfold orbitWindowCount; omega
  have hNnat : 1 ≤ TT.card := by
    rcases Nat.eq_zero_or_pos TT.card with h0' | h0'
    · rw [h0', Nat.mul_zero] at hN1
      have : 0 < orbitWindowCount r de h x ^ 2 := by positivity
      omega
    · exact h0'
  have hN : (1 : ℝ) ≤ (TT.card : ℝ) := by exact_mod_cast hNnat
  have hk1 : (1 : ℝ) ≤ ((m + 1 : ℕ) : ℝ) := by
    have : 1 ≤ m + 1 := by omega
    exact_mod_cast this
  have hr2 : (2 : ℝ) ≤ r := by exact_mod_cast hr
  have hp1 : (1 : ℝ) < p := by
    have : 1 < p := by omega
    exact_mod_cast this
  have hQ : (1 : ℝ) ≤ (p : ℝ) ^ goodG' r de h x := one_le_pow₀ hp1.le
  have hY2 : (2 : ℝ) ≤ Y := le_trans hr2 hY
  have hc0 : (0 : ℝ) ≤ c0 := Nat.cast_nonneg _
  have hz : (0 : ℝ) ≤ 2 * (r : ℝ) * n' * cpp := by positivity
  have hcS : (8 : ℝ) ≤ cStar := by
    have : 8 ≤ cStar := by omega
    exact_mod_cast this
  have h8 := num_size2 C _ _ _ _ _ _ _ Y a hC hk1 hr2 hN hQ hcS hc0 hz hY2 hsz
  have ha8 : 8 ≤ a := by linarith
  have hapos : 0 < a := by linarith
  have hkc' : ((m + 1 : ℕ) : ℝ) * c0 ≤ a := by rwa [div_le_one hapos] at hkc
  have hc0a : (c0 : ℝ) ≤ a := le_trans (le_mul_of_one_le_left hc0 hk1) hkc'
  have hsq : 4 * a ≤ a ^ 2 := by nlinarith
  have A := log_size_bound_le p n' m TT (topW TT lam0) a (by omega) (by linarith)
    (fun s hs => by rw [lamAt_zero (by simp [topW, hs])]; exact ellWt_zero m)
    (fun s hs => by
      rw [lamAt_congr (show topW TT lam0 s = lam0 s by simp [topW, hs])]
      obtain ⟨hb, hdom, hw⟩ := hW
      obtain ⟨e0, elast, _⟩ := (hb s).1 hs
      obtain ⟨w1, w2, hb0, hbc⟩ := hw s hs
      have hzz : lamAt lam0 s 0 - lamAt lam0 s (Fin.last m) = aT s + bT s := by
        unfold lamAt
        split_ifs
        · rw [e0, elast]; ring
        · simp only [Fin.rev_zero, Fin.rev_last]
          rw [e0, elast]; ring
      have haT : 0 ≤ aT s := by
        have : (0 : ℝ) ≤ (aT s : ℝ) := by
          have : (0 : ℝ) ≤ cpp := Nat.cast_nonneg _
          linarith
        exact_mod_cast this
      have e1 : ((ellWt (lamAt lam0 s) : ℕ) : ℝ) = ((aT s + bT s : ℤ) : ℝ) := by
        unfold ellWt
        rw [lastIdx_eq, hzz, ← Int.cast_natCast, Int.toNat_of_nonneg (by omega)]
      have hbT : (bT s : ℝ) ≤ c0 := by
        have : bT s ≤ c0 := by omega
        exact_mod_cast this
      have hcp : (0 : ℝ) ≤ cpp := Nat.cast_nonneg _
      rw [e1]
      push_cast
      push_cast at h8
      linarith)
  have B := log_size_bound_le p n' m TT (flW (m := m) (dT TT lam0)) a (by omega) (by linarith)
    (fun s hs => by rw [ellWt_flat (by omega)]; simp [dT, hs])
    (fun s hs => by
      rw [ellWt_flat (by omega)]
      have := (flatDeg_bounds hm2 hapos.le hW s hs).2
      simp only [dT, if_pos hs]
      push_cast
      push_cast at h8
      linarith)
  rw [Nat.cast_add]
  linarith

theorem restSize : RestSize := ⟨4, 2, by norm_num, by norm_num, fun C hC => sizeStep C hC⟩

theorem restCloudB_of_op (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) (hop : RestTSOp D CLa Ck Crk Cdeg) :
    RestCloudB D CLa Ck Crk Cdeg :=
  restCloudB_of_two D CLa Ck Crk Cdeg hop restSize

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LogSizeBoundLe =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DualFockLinear", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.Closed\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.ScaleZeroIff\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.LogSizeBoundLe\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.OnePosDef\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.FirstWeightLeConductor\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.RestXiPOfNS\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.TestSideCounting

open Formalism.MainNotions.Pf14

theorem stmtE_of_OpNS (D : Formalism.BasicNotions.D7)
    (h : ∀ CLa Ck Crk Cdeg : ℝ, RestTSOp D CLa Ck Crk Cdeg ∧ RestNS D CLa Ck Crk Cdeg 26 2 24 60) : tableLineDegreeFive.ClosedFormOfAdmitted D := by
  obtain ⟨C, _, H⟩ := theorem_II_closed_of_test_bound
  intro CLa Ck Crk Cdeg hA
  exact H D CLa Ck Crk Cdeg hA
    (test_bound_of_two_halves D CLa Ck Crk Cdeg C (C + 1) C 26 2 24 60
      (restCloudB_of_op D CLa Ck Crk Cdeg (h CLa Ck Crk Cdeg).1)
      (restFlat_of_Xi D CLa Ck Crk Cdeg C (C + 1) C 26 2 24 60
        (restXi_of_NS D CLa Ck Crk Cdeg 26 2 24 60 (h CLa Ck Crk Cdeg).2)))

theorem stmtE_of_TenNS (hT : TenOp) (D : Formalism.BasicNotions.D7)
    (h : ∀ CLa Ck Crk Cdeg : ℝ, RestNS D CLa Ck Crk Cdeg 26 2 24 60) : tableLineDegreeFive.ClosedFormOfAdmitted D :=
  stmtE_of_OpNS D fun CLa Ck Crk Cdeg => ⟨restTSOp_of_ten hT D CLa Ck Crk Cdeg, h CLa Ck Crk Cdeg⟩

end Formalism.MainNotions.TestSideCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DualFockLinear =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.Proposition5Gram\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.OperatorWeightBoundHolds\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.MemRed\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.Lemma5aMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.JointEIntList\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.TwistedMonomialFiltration.TwistSubXMemSupported\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.Lemma5aGeneratorProducts\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.SymGSupport\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.WordLossNonneg\npublic import Formalism.SharpRestriction.GrowthBounds.DualFockLinear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.TestSideWords

open Formalism.MainNotions.TestSideCounting

theorem stmtE_of_TenMP (hT : TenOp) (D : Formalism.BasicNotions.D7)
    (hM : ∀ CLa Ck Crk Cdeg : ℝ, RestMEM D CLa Ck Crk Cdeg)
    (hP : ∀ CLa Ck Crk Cdeg : ℝ, Proposition5Gram D CLa Ck Crk Cdeg 26 2 24 60) : tableLineDegreeFive.ClosedFormOfAdmitted D :=
  stmtE_of_TenNS hT D fun CLa Ck Crk Cdeg => restNS_of D CLa Ck Crk Cdeg 26 2 24 60 (hM _ _ _ _) (hP _ _ _ _)

theorem stmtE_of_MP (D : Formalism.BasicNotions.D7)
    (hM : ∀ CLa Ck Crk Cdeg : ℝ, RestMEM D CLa Ck Crk Cdeg)
    (hP : ∀ CLa Ck Crk Cdeg : ℝ, Proposition5Gram D CLa Ck Crk Cdeg 26 2 24 60) : tableLineDegreeFive.ClosedFormOfAdmitted D :=
  stmtE_of_TenMP tensor_operators_holds D hM hP

end Formalism.MainNotions.TestSideWords
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.DiagonalSupport", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.Proposition5OfThreeParts\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.GramExponentArithmetic\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.LeOfOneLeMul\npublic import Formalism.SharpRestriction.GrowthBounds.DiagonalSupport.MembFinal\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.Proposition5Numerics

open Formalism.MainNotions.TestSideWords

theorem proposition5_holds (D : Formalism.BasicNotions.D7) (CLa Ck Crk Cdeg : ℝ) : Proposition5Gram D CLa Ck Crk Cdeg 26 2 24 60 :=
  proposition5_of_three_parts D CLa Ck Crk Cdeg (restPick D CLa Ck Crk Cdeg) (restMemb D CLa Ck Crk Cdeg) (restNum D CLa Ck Crk Cdeg)

theorem stmtE_of_mem (D : Formalism.BasicNotions.D7) (hM : ∀ CLa Ck Crk Cdeg : ℝ, RestMEM D CLa Ck Crk Cdeg) : tableLineDegreeFive.ClosedFormOfAdmitted D :=
  stmtE_of_MP D hM fun CLa Ck Crk Cdeg => proposition5_holds D CLa Ck Crk Cdeg

end Formalism.MainNotions.Proposition5Numerics
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.DiagonalSupport =====
