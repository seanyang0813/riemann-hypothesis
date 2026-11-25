module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDM
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveOrbitOpen
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutDomCutInt
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEnTrSmooth
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLemB
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.JfBetaAdjCOfLemmaBNorm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorVanishesBigCell
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeas
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoByOneBlock
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsCompactZetaLe
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving
public import Formalism.HermitianCurvature.StatementTBB
public import Formalism.FormalDegreeBessel.FinalBF
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactCoefficientAppend
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DensityConstantOfParts
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_TypeNormMeas_TC
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopForm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopDom
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutFpmDecay
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LimitOfModuleForms
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TriangleInequalityAtPlace
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellZetaMinors
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting
import Formalism.FormalDegreeBessel.FinalG
import Formalism.HermitianCurvature.HermitianCurvatureProofs.StabilizerFourthCondition
import Formalism.HermitianCurvature.HermitianCurvatureProofs.WittOrthonormalBasis
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellOpenDomain
import Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LieBracketMultiplication
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ParametersUPrimeForULower
import Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator
import Mathlib.RingTheory.Etale.Weakly

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMDop, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMSE, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMVV, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMAll, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasHM, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasV, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasMain, Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_TypeNormMeas_Proof, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormDone, Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFMainS

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMDop =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMDop", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDM\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaSesquilinearity\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveOrbitOpen\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP.TDM

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

section loc

variable {k r : ℕ} {E₁ E₂ : Type*} [NormedAddCommGroup E₁] [NormedSpace ℂ E₁] [NormedAddCommGroup E₂] [NormedSpace ℂ E₂]

theorem dop_rdV_local {X : B.Mat k r} (hX : B.inLie k r X) {U : Set (B.Mat k r)} (hU : IsOpen U)
    {f f' : B.Mat k r → E₁} (he : ∀ x ∈ U, x ∈ B.GV k r → f x = f' x) {g : B.Mat k r} (hg : g ∈ U)
    (hgG : g ∈ B.GV k r) : Formalism.REAL.RdV X f g = Formalism.REAL.RdV X f' g := by
  show deriv (fun t : ℝ => f (g * NormedSpace.exp ((t : ℂ) • X))) 0 =
    deriv (fun t : ℝ => f' (g * NormedSpace.exp ((t : ℂ) • X))) 0
  apply Filter.EventuallyEq.deriv_eq
  have hc : Continuous (fun t : ℝ => g * NormedSpace.exp ((t : ℂ) • X)) :=
    (Formalism.FourierDecayAlt.P.B5.curve_contDiff g X).continuous
  have hev : ∀ᶠ t : ℝ in nhds (0 : ℝ), g * NormedSpace.exp (((t : ℝ) : ℂ) • X) ∈ U := by
    apply hc.continuousAt.preimage_mem_nhds
    show U ∈ nhds (g * NormedSpace.exp (((0 : ℝ) : ℂ) • X))
    rw [Formalism.FourierDecayAlt.P.B5.curve_zero]
    exact hU.mem_nhds hg
  filter_upwards [hev] with t ht
  exact he _ ht (Formalism.FourierDecayAlt.P.B5.curve_mem hgG hX t)

theorem dop_rw_local (w : List (B.Mat k r)) (hw : ∀ X ∈ w, B.inLie k r X) {U : Set (B.Mat k r)} (hU : IsOpen U)
    {f f' : B.Mat k r → E₁} (he : ∀ x ∈ U, x ∈ B.GV k r → f x = f' x) :
    ∀ x ∈ U, x ∈ B.GV k r → B.Rw w f x = B.Rw w f' x := by
  induction w with
  | nil => exact he
  | cons X w ih =>
    intro x hx hxG
    exact dop_rdV_local (hw X (by simp)) hU (ih (fun Y hY => hw Y (by simp [hY]))) hx hxG

theorem dop_rw_zero : ∀ v : List (B.Mat k r), B.Rw v (0 : B.Mat k r → E₁) = 0
  | [] => rfl
  | X :: v => by
    show Formalism.REAL.RdV X (B.Rw v 0) = 0
    rw [dop_rw_zero v]
    funext g
    simp [Formalism.REAL.RdV]

theorem dop_ckOn_ap {UU : Set (B.Mat k r)} {a : B.Mat k r → (E₁ →L[ℂ] E₂)} {Φ : B.Mat k r → E₁}
    (ha : B.CkOn ⊤ UU a) (hΦ : B.CkOn ⊤ UU Φ) : B.CkOn ⊤ UU (fun g => a g (Φ g)) := by
  intro g₀ hg₀
  obtain ⟨U, a', hU, hgU, hc, hff⟩ := ha g₀ hg₀
  obtain ⟨U₂, Φ', hU₂, hgU₂, hc₂, hff₂⟩ := hΦ g₀ hg₀
  refine ⟨U ∩ U₂, fun g => a' g (Φ' g), hU.inter hU₂, ⟨hgU, hgU₂⟩, ?_,
    fun g hg hgG => by simp only [hff g hg.1 hgG, hff₂ g hg.2 hgG]⟩
  have h1 : ContDiffOn ℝ ((⊤ : ℕ∞) : WithTop ℕ∞)
      (fun g => ContinuousLinearMap.restrictScalarsL ℂ E₁ E₂ ℝ ℝ (a' g)) (U ∩ U₂) :=
    (ContinuousLinearMap.restrictScalarsL ℂ E₁ E₂ ℝ ℝ).contDiff.comp_contDiffOn
      (hc.mono Set.inter_subset_left)
  exact h1.clm_apply (hc₂.mono Set.inter_subset_right)

theorem dop_ckOn_Rw {UU : Set (B.Mat k r)} {w : List (B.Mat k r)} (hw : ∀ X ∈ w, B.inLie k r X)
    {f : B.Mat k r → E₁} (hf : B.CkOn ⊤ UU f) : B.CkOn ⊤ UU (B.Rw w f) := by
  rw [← Formalism.FourierDecayAlt.P.BetaSesquilinearity.Dw_wR]
  apply Formalism.FourierDecayAlt.P.BetaSesquilinearity.CkOn_Dw (fun x hx => Formalism.FourierDecayAlt.P.BetaSesquilinearity.lie_LR (u := []) (by simp) hw x
    (by simpa [Formalism.FourierDecayAlt.P.BetaSesquilinearity.wL] using hx))
  have e : ((⊤ : ℕ∞) + ((Formalism.FourierDecayAlt.P.BetaSesquilinearity.wR w).length : ℕ∞)) = ⊤ := top_add _
  rw [e]; exact hf

end loc

section op

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

theorem dop_ckOn_opApply {UU : Set (B.Mat k r)} {J : B.Mat k r → (Wq →L[ℂ] Wp)} (hJ : B.CkOn ⊤ UU J) :
    ∀ Θ : B.DiffOp k r Wp Wq, (∀ T ∈ Θ, B.CkOn ⊤ UU T.coef) → B.CkOn ⊤ UU (B.opApply Θ J)
  | [], _ => by
    have e : B.opApply ([] : B.DiffOp k r Wp Wq) J = fun _ => 0 := by funext g; simp [B.opApply]
    rw [e]; exact Formalism.FourierDecayAlt.P.BetaSesquilinearity.CkOn_zero
  | T :: Θ, h => by
    have e : B.opApply (T :: Θ) J = fun g => T.coef g (B.Rw T.word J g) + B.opApply Θ J g := by
      funext g; simp [B.opApply]
    rw [e]
    exact Formalism.FourierDecayAlt.P.BetaSesquilinearity.CkOn_add (dop_ckOn_ap (h T (by simp)) (dop_ckOn_Rw T.word_lie hJ))
      (dop_ckOn_opApply hJ Θ (fun T' hT' => h T' (by simp [hT'])))

theorem dop_opApply_zero (Θ : B.DiffOp k r Wp Wq) {O : Set (B.Mat k r)} (hO : IsOpen O)
    {J : B.Mat k r → (Wq →L[ℂ] Wp)} (hJ : ∀ g ∈ O, g ∈ B.GV k r → J g = 0) :
    ∀ g ∈ O, g ∈ B.GV k r → B.opApply Θ J g = 0 := by
  intro g hg hgG
  unfold B.opApply
  apply List.sum_eq_zero
  intro x hx
  obtain ⟨T, _, rfl⟩ := List.mem_map.1 hx
  rw [dop_rw_local T.word T.word_lie hO (f' := 0) hJ g hg hgG, dop_rw_zero]
  simp

end op

theorem diff_operator_in_class_CC : DopCC := by
  intro Wp Wq _ _ _ _ _ _ P p X w Cb hD hX hw e
  obtain ⟨nf, fib, o, κ, Dop, hfib, hDD, -, -, hΘ⟩ := hD w hw e
  set Bs := p.T.base with hBs
  obtain ⟨hXs, ⟨R, hR⟩, ⟨ε, hε, hXε⟩⟩ := hX
  set O : Set (B.Mat P.k P.r) := {g | R < B.gN g} ∪ {g | Gf P.k P.r Bs.z Bs.z' g < ε} with hOdef
  have hO : IsOpen O := (isOpen_lt continuous_const Formalism.FourierDecayAlt.P.B6.gN_continuous).union
    (isOpen_lt (Formalism.FourierDecayAlt.P.PositiveOrbitOpen.gf_cont _ _) continuous_const)
  have hX0 : ∀ g ∈ O, g ∈ B.GV P.k P.r → X g = 0 := by
    intro g hg hgG
    by_contra hne
    rcases hg with h | h
    · exact absurd (hR g hgG hne) (not_le.2 h)
    · exact absurd (hXε g hgG hne) (not_le.2 h)
  set Y : B.Mat P.k P.r → (Wq →L[ℂ] Wp) := B.opApply Dop X with hYdef
  have hY0 : ∀ g ∈ O, g ∈ B.GV P.k P.r → Y g = 0 := dop_opApply_zero Dop hO hX0
  have hYs : B.CkOn ⊤ (B.GV P.k P.r) Y := by
    intro g₀ hg₀
    by_cases hgO : g₀ ∈ O
    · exact ⟨O, 0, hO, hgO, contDiffOn_const, fun g hg hgG => hY0 g hg hgG⟩
    · have hG : ε ≤ Gf P.k P.r Bs.z Bs.z' g₀ := by
        by_contra h; exact hgO (Or.inr (not_le.1 h))
      have hdom : g₀ ∈ C6.domL Bs ∅ := ⟨hg₀, lt_of_lt_of_le hε hG, fun l hl => absurd hl (Finset.notMem_empty l)⟩
      have hXd : B.CkOn ⊤ (C6.domL Bs ∅) X := fun g hg => hXs g hg.1
      exact dop_ckOn_opApply hXd Dop (fun T hT => (hDD.1 T hT).1) g₀ hdom
  refine ⟨Y, fun g hg hG => ?_, fun A => ?_⟩
  · exact (hΘ X g ⟨hg, hG, fun l hl => absurd hl (Finset.notMem_empty l)⟩).symm
  ·
    set K : Set (B.Mat P.k P.r) := B.GV P.k P.r ∩ ({g | B.gN g ≤ R} ∩ {g | ε ≤ Gf P.k P.r Bs.z Bs.z' g}) with hKdef
    have hK : IsCompact K := (Formalism.FourierDecayAlt.P.PBE.isCompact_gN_le P.k P.r R).of_isClosed_subset
      (Formalism.FourierDecayAlt.P.B5.GV_closed.inter ((isClosed_le Formalism.FourierDecayAlt.P.B6.gN_continuous continuous_const).inter
        (isClosed_le continuous_const (Formalism.FourierDecayAlt.P.PositiveOrbitOpen.gf_cont _ _))))
      (fun g hg => hg.2.1)
    have hYc : ContinuousOn Y (B.GV P.k P.r) := Formalism.FourierDecayAlt.P.B5.ckOn_continuousOn hYs
    have hfc : ContinuousOn (fun g => B.gN g ^ A * ‖Y g‖) K := by
      refine ContinuousOn.mul ?_ ((hYc.mono Set.inter_subset_left).norm)
      exact (Formalism.FourierDecayAlt.P.B6.gN_continuous.continuousOn).rpow_const
        (fun g hg => Or.inl (ne_of_gt (Formalism.FourierDecayAlt.P.BetaSesquilinearity.gN_pos hg.1)))
    obtain ⟨C, hC⟩ := hK.exists_bound_of_continuousOn hfc
    refine ⟨max C 0, ⟨?_, ?_⟩⟩
    · intro g₀ hg₀
      obtain ⟨U, f', hU, hgU, hc, he⟩ := hYs g₀ hg₀
      exact ⟨U, f', hU, hgU, hc.of_le (by exact_mod_cast le_top), he⟩
    · intro u v _ _ huv g hg
      have hu : u = [] := List.eq_nil_of_length_eq_zero (by omega)
      have hv : v = [] := List.eq_nil_of_length_eq_zero (by omega)
      subst hu; subst hv
      show B.gN g ^ A * ‖Y g‖ ≤ max C 0
      by_cases hgK : g ∈ K
      · have := hC g hgK
        rw [Real.norm_of_nonneg (mul_nonneg (Real.rpow_nonneg (le_of_lt (Formalism.FourierDecayAlt.P.BetaSesquilinearity.gN_pos hg)) _)
          (norm_nonneg _))] at this
        exact le_trans this (le_max_left _ _)
      · have hgO : g ∈ O := by
          by_contra hgO
          apply hgK
          refine ⟨hg, ?_, ?_⟩
          · show B.gN g ≤ R
            by_contra h; exact hgO (Or.inl (not_le.1 h))
          · show ε ≤ Gf P.k P.r Bs.z Bs.z' g
            by_contra h; exact hgO (Or.inr (not_le.1 h))
        rw [hY0 g hgO hg, norm_zero, mul_zero]
        exact le_max_right _ _

end

end Formalism.FourierDecayAlt.P.CutBP.TDM
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMDop =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMSE =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMSE", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDM\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutDomCutInt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutEnTrSmooth\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLemB\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.JfBetaAdjCOfLemmaBNorm\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.TriangleInequalityAtPlace\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorVanishesBigCell\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP.TDM

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory

noncomputable section

theorem nPt_bigPt_eq (k r : ℕ) (TT : ℝ) (c : Fin (r + 1) → ℂ) :
    TBB.nPt k r TT (TBB.bigPt r c) = ∏ i : Fin (r + 1), (if 1 + (i : ℕ) = r + 1 then
      (Complex.normSq (c (Fin.last r)) - TT) ^ (k - 1)
      else ‖c i‖ ^ (2 * (C.Mlev k r (1 + (i : ℕ)) - 2))) := by
  unfold TBB.nPt D.ptGG
  rw [Formalism.FourierDecayAlt.P.CutBP.ptLast_bigPt]
  exact Formalism.FourierDecayAlt.P.CutBP.level_product_of_constant_weights k r _ (r + 1) c 1

theorem measurable_nPt_bigPt (k r : ℕ) (TT : ℝ) :
    Measurable (fun c : Fin (r + 1) → ℂ => TBB.nPt k r TT (TBB.bigPt r c)) := by
  simp only [nPt_bigPt_eq]
  refine Finset.measurable_prod _ fun i _ => ?_
  by_cases h : 1 + (i : ℕ) = r + 1
  · simp only [h, if_true]
    exact ((Complex.continuous_normSq.measurable.comp (measurable_pi_apply _)).sub_const _).pow_const _
  · simp only [h, if_false]
    have hm : Measurable (fun c : Fin (r + 1) → ℂ => ‖c i‖) := continuous_norm.measurable.comp (measurable_pi_apply i)
    exact hm.pow_const _

theorem wPt_bigPt_eq (TT : ℝ) (r : ℕ) (c : Fin (r + 1) → ℂ) :
    Top.wPt TT r (TBB.bigPt r c) = Complex.normSq (∏ i, c i) /
      (Complex.normSq (∏ i, c i) - TT * Complex.normSq (∏ a : Fin r, c a.castSucc)) := by
  show Complex.normSq (D.ptMatN (Formalism.FourierDecayAlt.P.PBJ.bigPt c) (r + 1)).det /
    D.ptG TT r (Formalism.FourierDecayAlt.P.PBJ.bigPt c) = _
  unfold D.ptG
  rw [Formalism.FourierDecayAlt.P.PBM.ptMatN_bigPt_head, Formalism.FourierDecayAlt.P.PBJ.Dens.ptMatN_bigPt, Formalism.FourierDecayAlt.P.PBM.hMat_one,
    Matrix.det_diagonal, Matrix.det_diagonal]

theorem measurable_wPt_bigPt (TT : ℝ) (r : ℕ) :
    Measurable (fun c : Fin (r + 1) → ℂ => Top.wPt TT r (TBB.bigPt r c)) := by
  simp only [wPt_bigPt_eq]
  have h1 : Measurable (fun c : Fin (r + 1) → ℂ => Complex.normSq (∏ i, c i)) :=
    (Complex.continuous_normSq.comp (continuous_finsetProd _ fun i _ => continuous_apply i)).measurable
  have h2 : Measurable (fun c : Fin (r + 1) → ℂ => Complex.normSq (∏ a : Fin r, c a.castSucc)) :=
    (Complex.continuous_normSq.comp (continuous_finsetProd _ fun a _ => continuous_apply _)).measurable
  exact h1.div (h1.sub (h2.const_mul TT))

theorem scalar_point_measurability_holds : ScalarMeas := fun k r TT => ⟨measurable_nPt_bigPt k r TT, measurable_wPt_bigPt TT r⟩

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem gN_ball_compact (k r : ℕ) (R : ℝ) : IsCompact {g : B.Mat k r | B.gN g ≤ R} := by
  have hc : Continuous (fun g : B.Mat k r => B.gN g) := by
    unfold B.gN
    exact Real.continuous_sqrt.comp (continuous_finsetSum _ fun i _ => continuous_finsetSum _ fun j _ =>
      Complex.continuous_normSq.comp (continuous_id.matrix_elem i j))
  refine Metric.isCompact_of_isClosed_isBounded (isClosed_le hc continuous_const) ?_
  rw [isBounded_iff_forall_norm_le]
  refine ⟨max R 0, fun g hg => ?_⟩
  rw [Matrix.norm_le_iff (le_max_right _ _)]
  intro i j
  exact (_root_.Formalism.FourierDecayAlt.P.Ux5.entry_le_gN g i j).trans (le_trans hg (le_max_left _ _))

theorem cptCoef_inCC {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] (Bs : B.RealPlaceData k r Wp Wq) {X : B.Mat k r → (Wq →L[ℂ] Wp)}
    (hX : KB.CptCoef Bs X) (A : ℝ) (m : ℕ) : B.InCC A m X := by
  obtain ⟨R, hR⟩ := hX.2.1
  exact Formalism.FourierDecayAlt.P.JFxG.cptInCC_G hX.1 (gN_ball_compact k r R)
    (fun g hg hgC => by by_contra h; exact hgC (hR g hg h)) A m

theorem empty_list_measurability_holds : EmptyMeas := by
  intro Wp Wq _ _ _ _ _ _ P p X hX
  set Bs := p.T.base with hBs
  set T := Tz P.k P.r Bs.z with hT
  set T' := Tz P.k P.r Bs.z' with hT'
  set A : ℝ := 9 * ((P.r : ℝ) + 1) * (((2 * P.r + P.k + 1 : ℕ) : ℝ) ^ 2 + 1) with hA
  have hThr : JF.TransportedAlt P.k P.r A 0 := by
    unfold JF.TransportedAlt
    have hr : (0 : ℝ) < 9 * ((P.r : ℝ) + 1) := by positivity
    rw [Nat.cast_zero, mul_zero, sub_zero, lt_div_iff₀ hr, hA]
    nlinarith
  have hc := Formalism.FourierDecayAlt.P.CutBP.jgq_continuousOn Bs hThr (cptCoef_inCC Bs hX A 0)
  have hcn : ContinuousOn (fun q => ‖B.hsVec (B.JF Bs X (B.gq Bs q))‖ ^ 2) (JF.QDom P.k P.r Bs.z Bs.z') :=
    ((Formalism.FourierDecayAlt.P.CutMP.En.hsVec_contDiff.continuous.comp_continuousOn hc).norm).pow 2
  have hm := Formalism.FourierDecayAlt.P.CutBP.aesm_weight_smul Bs hcn
  let e : (Fin (P.r + 1) → ℂ) ≃ᵐ (Fin P.r → ℂ) × ℂ :=
    (MeasurableEquiv.piFinSuccAbove (fun _ => ℂ) (Fin.last P.r)).trans MeasurableEquiv.prodComm
  have hmp : MeasurePreserving e volume volume :=
    (Measure.measurePreserving_swap).comp (volume_preserving_piFinSuccAbove (fun _ : Fin (P.r + 1) => ℂ) (Fin.last P.r))
  have he : ∀ c, e c = ((fun j => c j.castSucc), c (Fin.last P.r)) := by
    intro c
    simp [e, MeasurableEquiv.piFinSuccAbove]
    rfl
  have hm2 := hm.comp_measurePreserving hmp
  refine hm2.congr ?_
  filter_upwards [ae_all_ne P.r] with c hc0
  show bcWeight P.k P.r T T' (e c) • ‖B.hsVec (B.JF Bs X (B.gq Bs (e c)))‖ ^ 2 = topD p X [] c
  rw [he c, smul_eq_mul]
  have hl : D.IsLocPt (TBB.bigPt P.r c) (P.r + 1) := Formalism.FourierDecayAlt.P.PBJ.Dens.isLocPt_bigPt c hc0
  unfold topD
  rw [Formalism.FourierDecayAlt.P.TBBx2.Tri.Ew_top p X hl]
  have hk : 2 ≤ P.k := p.hl.2.2
  have hcin : ∀ a : Fin P.r, c a.castSucc ≠ 0 := fun a => hc0 _
  have hp : 0 < Complex.normSq (∏ i : Fin P.r, c i.castSucc) :=
    Complex.normSq_pos.2 (Finset.prod_ne_zero_iff.2 fun a _ => hcin a)
  have hGeq : TBB.Gp p (TBB.bigPt P.r c) =
      Complex.normSq (∏ i : Fin P.r, c i.castSucc) * (Complex.normSq (c (Fin.last P.r)) - T * T') := by
    show D.ptG (T * T') P.r (Formalism.FourierDecayAlt.P.PBJ.bigPt c) = _
    unfold D.ptG
    rw [Formalism.FourierDecayAlt.P.PBM.ptMatN_bigPt_head, Formalism.FourierDecayAlt.P.PBJ.Dens.ptMatN_bigPt, Formalism.FourierDecayAlt.P.PBM.hMat_one,
      Matrix.det_diagonal, Matrix.det_diagonal, Fin.prod_univ_castSucc, Complex.normSq_mul]
    ring
  by_cases hG : 0 < TBB.Gp p (TBB.bigPt P.r c)
  · rw [Formalism.FourierDecayAlt.P.CutBP.hsVec_norm_V_bigPt p X c hc0 hG]
    have hζ : T * T' ≤ Complex.normSq (c (Fin.last P.r)) := by
      rw [hGeq] at hG
      have := (pos_iff_pos_of_mul_pos hG).1 hp
      linarith
    have hn : TBB.nPt P.k P.r (TBB.TTp p) (TBB.bigPt P.r c) =
        bcWeight P.k P.r T T' ((fun j => c j.castSucc), c (Fin.last P.r)) :=
      Formalism.FourierDecayAlt.P.CutBP.nPt_bigPt P.k P.r T T' c hζ
    rw [hn, Real.mul_self_sqrt (Formalism.FourierDecayAlt.P.CutBP.bcWeight_nonneg0 _ _ _ _ _)]
    rfl
  · have hV : p.V X (TBB.bigPt P.r c) = 0 := by
      unfold KB.Pl.V D.vecV
      rw [dite_eq_right (fun h => hG h.2)]
    rw [hV]
    have hw0 : bcWeight P.k P.r T T' ((fun j => c j.castSucc), c (Fin.last P.r)) = 0 := by
      unfold bcWeight
      split_ifs with hle
      · have hle2 : Complex.normSq (c (Fin.last P.r)) ≤ T * T' := by
          by_contra hlt
          push Not at hlt
          apply hG
          rw [hGeq]
          exact mul_pos hp (by linarith)
        have hle' : T * T' ≤ Complex.normSq (c (Fin.last P.r)) := hle
        have heq : Complex.normSq (c (Fin.last P.r)) - T * T' = 0 := by linarith
        show (∏ a : Fin P.r, ‖c a.castSucc‖ ^ (2 * (Mdim P.k P.r a - 2))) *
          (Complex.normSq (c (Fin.last P.r)) - T * T') ^ (P.k - 1) = 0
        rw [heq, zero_pow (by omega), mul_zero]
      · rfl
    rw [hw0]
    have h0 : B.hsVec (0 : Wq →L[ℂ] Wp) = 0 := by
      unfold B.hsVec
      rfl
    simp [h0]

end

end Formalism.FourierDecayAlt.P.CutBP.TDM
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMSE =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMVV =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMVV", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDM\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellZetaMinors\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PositiveOrbitOpen\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP.TDM

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory

noncomputable section

section orb

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem orbJ_congr_gpos (Bs : B.RealPlaceData k r Wp Wq) {γ : B.Mat k r} (hγ : γ ∈ B.GV k r)
    (hpos : 0 < Gf k r Bs.z Bs.z' γ) (μR : Measure (Mt k r)) (Y Y' : B.Mat k r → (Wq →L[ℂ] Wp))
    (hYY : ∀ g ∈ B.GV k r, 0 < Gf k r Bs.z Bs.z' g → Y g = Y' g) :
    D.orbJ Bs γ μR Y = D.orbJ Bs γ μR Y' := by
  have hae : D.orbIntegrand Bs γ Y =ᵐ[Bs.μSS] D.orbIntegrand Bs γ Y' := by
    filter_upwards [Formalism.FourierDecayAlt.P.B5.ae_inSS Bs] with q hq
    have hG : 0 < Gf k r Bs.z Bs.z' (B.sgs q γ) := by
      have e : Gf k r Bs.z Bs.z' (B.sgs q γ) = Gf k r Bs.z Bs.z' γ := by
        unfold Gf
        rw [Formalism.FourierDecayAlt.P.BigCellZetaMinors.dmin_sgs Bs hq, Formalism.FourierDecayAlt.P.BigCellZetaMinors.dmin_sgs Bs hq]
      rw [e]; exact hpos
    unfold D.orbIntegrand B.rho
    rw [hYY _ (Formalism.FourierDecayAlt.P.PositiveOrbitOpen.sgs_GV Bs hq hγ) hG]
  have hP : (fun θ => D.IsNormCut Bs γ μR θ ∧ Integrable (fun q => θ q • D.orbIntegrand Bs γ Y q) Bs.μSS) =
      (fun θ => D.IsNormCut Bs γ μR θ ∧ Integrable (fun q => θ q • D.orbIntegrand Bs γ Y' q) Bs.μSS) := by
    funext θ
    apply propext
    apply and_congr_right
    intro _
    exact integrable_congr (hae.mono fun q hq => by simp only [hq])
  unfold D.orbJ
  by_cases h : ∃ θ, D.IsNormCut Bs γ μR θ ∧ Integrable (fun q => θ q • D.orbIntegrand Bs γ Y q) Bs.μSS
  · have h2 : ∃ θ, D.IsNormCut Bs γ μR θ ∧ Integrable (fun q => θ q • D.orbIntegrand Bs γ Y' q) Bs.μSS := hP ▸ h
    rw [dite_eq_left h, dite_eq_left h2, _root_.Formalism.FourierDecayAlt.P.JCx1.needs.choose_congr hP h h2]
    apply integral_congr_ae
    filter_upwards [hae] with q hq
    rw [hq]
  · have h2 : ¬∃ θ, D.IsNormCut Bs γ μR θ ∧ Integrable (fun q => θ q • D.orbIntegrand Bs γ Y' q) Bs.μSS := hP ▸ h
    rw [dite_eq_right h, dite_eq_right h2]

end orb

theorem vector_positive_cone : VecVGPos := by
  intro Wp Wq _ _ _ _ _ _ P p Y Y' hYY a
  unfold KB.Pl.V D.vecV
  by_cases h : D.IsLocPt a (P.r + 1) ∧
      0 < D.ptG (Tz P.k P.r p.T.base.z * Tz P.k P.r p.T.base.z') P.r a
  · rw [dite_eq_left h, dite_eq_left h]
    by_cases h' : ∃ γ ∈ B.GV P.k P.r, Zhat P.k P.r p.T.base.z p.T.base.z' γ = D.ptMatN a (P.r + 1) ∧
        D.IsDFrame p.T.base p.ν' p.m₀ γ
    · rw [dite_eq_left h', dite_eq_left h']
      obtain ⟨hγ, hZ, -⟩ := h'.choose_spec
      have hpos : 0 < Gf P.k P.r p.T.base.z p.T.base.z' h'.choose := by
        rw [← Formalism.FourierDecayAlt.P.ptG_spec P.k P.r _ _ a _ h.1 hZ]; exact h.2
      exact orbJ_congr_gpos p.T.base hγ hpos _ Y Y' hYY
    · rw [dite_eq_right h', dite_eq_right h']
  · rw [dite_eq_right h, dite_eq_right h]

end

end Formalism.FourierDecayAlt.P.CutBP.TDM
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMVV =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMAll =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMAll", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDM\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMDop\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMSE\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMVV\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP.TDM

theorem topDMeasCpt_of_typeNormMeas (h : TypeNormMeas) : TopDMeasCpt :=
  topDMeasCpt_of_parts h vector_positive_cone diff_operator_in_class_CC scalar_point_measurability_holds empty_list_measurability_holds

end Formalism.FourierDecayAlt.P.CutBP.TDM
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMAll =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasHM =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasHM", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeas\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoByOneBlock\nimport Formalism.FormalDegreeBessel.FinalG\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IsCompactZetaLe\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP.TNM.HM

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants MeasureTheory Matrix
open Formalism.FourierDecayAlt.P5.HerB

noncomputable section

variable {k r : ℕ}

theorem herm_real (x : Fin (2 * r + k + 1) → ℂ) : herm (Hpk k r) x x = ((herm (Hpk k r) x x).re : ℂ) :=
  hb_self_real _ (hpk_herm k r) x

theorem perp_eq_zero {z v : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (hzn : (herm (Hpk k r) z z).re < 0)
    (hv : inWb k r v) (hvz : herm (Hpk k r) v z = 0) (h0 : (herm (Hpk k r) v v).re = 0) : v = 0 := by
  have hzz : herm (Hpk k r) z z ≠ 0 := fun h => by rw [h, Complex.zero_re] at hzn; exact lt_irrefl _ hzn
  have hW : ∀ x, inWb k r x → herm (Hpk k r) x z = 0 → herm (Hpk k r) v x = 0 := by
    intro x hx hxz
    have key : ∀ s : ℝ, 0 < s → ‖herm (Hpk k r) v x‖ * s ≤ (herm (Hpk k r) x x).re := by
      intro s hs
      set t : ℝ := Real.sqrt s with htdef
      have ht : 0 < t := Real.sqrt_pos.2 hs
      have htt : t * t = s := Real.mul_self_sqrt hs.le
      have h := norm_perp_le hz hzn (u := (t : ℂ) • v) (v := ((t⁻¹ : ℝ) : ℂ) • x) (inWb_smul _ hv)
        (inWb_smul _ hx) (by rw [hb_smul_left, hvz, mul_zero]) (by rw [hb_smul_left, hxz, mul_zero])
      rw [hb_smul_left, hb_smul_right, hb_smul_left, hb_smul_right, hb_smul_left, hb_smul_right] at h
      have e1 : (t : ℂ) * (star (((t⁻¹ : ℝ)) : ℂ) * herm (Hpk k r) v x) = herm (Hpk k r) v x := by
        rw [Complex.star_def, Complex.conj_ofReal, ← mul_assoc, ← Complex.ofReal_mul, mul_inv_cancel₀ ht.ne',
          Complex.ofReal_one, one_mul]
      rw [e1] at h
      simp only [Complex.star_def, Complex.conj_ofReal] at h
      rw [Complex.re_ofReal_mul, Complex.re_ofReal_mul, Complex.re_ofReal_mul, Complex.re_ofReal_mul, h0] at h
      have hti : t⁻¹ * (t⁻¹ * (herm (Hpk k r) x x).re) = (herm (Hpk k r) x x).re / s := by
        rw [← htt]; field_simp
      rw [hti] at h
      have h' : ‖herm (Hpk k r) v x‖ ≤ (herm (Hpk k r) x x).re / s := by linarith
      rwa [le_div_iff₀ hs] at h'
    by_contra hne
    have hn : 0 < ‖herm (Hpk k r) v x‖ := norm_pos_iff.2 hne
    have hxx : 0 ≤ (herm (Hpk k r) x x).re := perp_nonneg hz hzn hx hxz
    have := key (((herm (Hpk k r) x x).re + 1) / ‖herm (Hpk k r) v x‖) (by positivity)
    rw [mul_div_cancel₀ _ hn.ne'] at this
    linarith
  have hall : ∀ y, herm (Hpk k r) v y = 0 := by
    intro y
    have hd := Formalism.FourierDecayAlt.P.Dx2.DF.decomp (k := k) (r := r) y
    set α : ℂ := herm (Hpk k r) (Formalism.FourierDecayAlt.P.Dx2.DF.Wb y) z / herm (Hpk k r) z z with hα
    have hWb : inWb k r (Formalism.FourierDecayAlt.P.Dx2.DF.Wb y) := by
      intro i hi; simp only [Formalism.FourierDecayAlt.P.Dx2.DF.Wb]; rw [if_neg (by omega)]
    have hx : inWb k r (Formalism.FourierDecayAlt.P.Dx2.DF.Wb y - α • z) := inWb_sub hWb (inWb_smul _ hz)
    have hxz : herm (Hpk k r) (Formalism.FourierDecayAlt.P.Dx2.DF.Wb y - α • z) z = 0 := by
      rw [hb_sub_left, hb_smul_left, hα, div_mul_cancel₀ _ hzz, sub_self]
    have h1 : herm (Hpk k r) v (Formalism.FourierDecayAlt.P.Dx2.DF.Wb y) = 0 := by
      have e : Formalism.FourierDecayAlt.P.Dx2.DF.Wb y = (Formalism.FourierDecayAlt.P.Dx2.DF.Wb y - α • z) + α • z := by abel
      rw [e, hb_add_right, hb_smul_right, hW _ hx hxz, hvz, mul_zero, add_zero]
    rw [hd, hb_add_right, hb_add_right, h1, Formalism.FourierDecayAlt.P.Dx2.DF.herm_sum_right, Formalism.FourierDecayAlt.P.Dx2.DF.herm_sum_right]
    simp only [hb_smul_right, Formalism.FourierDecayAlt.P.Dx2.DF.h_w_ee hv, Formalism.FourierDecayAlt.P.Dx2.DF.h_w_es hv, mul_zero,
      Finset.sum_const_zero, add_zero]
  have hHv : Hpk k r *ᵥ v = 0 := by
    funext p
    have := hall (bvec p)
    rw [Formalism.FourierDecayAlt.P.Dx2.DF.herm_bvec_right] at this
    simpa [mulVec, dotProduct] using this
  have hHH : Hpk k r * Hpk k r = 1 := (Formalism.QuantumDeterminants.hpkFacts k r).2.1
  calc v = (Hpk k r * Hpk k r) *ᵥ v := by rw [hHH, one_mulVec]
    _ = 0 := by rw [← mulVec_mulVec, hHv, mulVec_zero]

section house

def pW (k r : ℕ) (z u : Fin (2 * r + k + 1) → ℂ) : Fin (2 * r + k + 1) → ℂ := D.prW k r z u

def aC (k r : ℕ) (z e u : Fin (2 * r + k + 1) → ℂ) : ℂ := herm (Hpk k r) (pW k r z u) e

def nR (k r : ℕ) (z u : Fin (2 * r + k + 1) → ℂ) : ℝ := Real.sqrt (herm (Hpk k r) (pW k r z u) (pW k r z u)).re

def sC (k r : ℕ) (z e u : Fin (2 * r + k + 1) → ℂ) : ℂ :=
  if aC k r z e u = 0 then (nR k r z u : ℂ) else (nR k r z u : ℂ) * (aC k r z e u / (‖aC k r z e u‖ : ℂ))

def vH (k r : ℕ) (z e u : Fin (2 * r + k + 1) → ℂ) : Fin (2 * r + k + 1) → ℂ := pW k r z u - sC k r z e u • e

def hh (k r : ℕ) (z e u : Fin (2 * r + k + 1) → ℂ) : B.Mat k r :=
  if (herm (Hpk k r) (vH k r z e u) (vH k r z e u)).re = 0 then 1
  else Formalism.FourierDecayAlt.P.TwoByOneBlock.qrefl (Hpk k r) (vH k r z e u)
    ((-2 / (herm (Hpk k r) (vH k r z e u) (vH k r z e u)).re : ℝ) : ℂ)

variable {k r : ℕ} {z e : Fin (2 * r + k + 1) → ℂ}

theorem pW_inWb (hz : inWb k r z) (u : Fin (2 * r + k + 1) → ℂ) : inWb k r (pW k r z u) := by
  unfold pW
  rw [Formalism.FourierDecayAlt.P.Dx2.DF.prW_eq]
  refine inWb_sub ?_ (inWb_smul _ hz)
  intro i hi; simp only [Formalism.FourierDecayAlt.P.Dx2.DF.Wb]; rw [if_neg (by omega)]

theorem pW_perp (hzz : herm (Hpk k r) z z ≠ 0) (u : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) (pW k r z u) z = 0 := by
  unfold pW
  rw [Formalism.FourierDecayAlt.P.Dx2.DF.prW_eq, hb_sub_left, hb_smul_left, div_mul_cancel₀ _ hzz, sub_self]

theorem vH_inWb (hz : inWb k r z) (he : inWb k r e) (u : Fin (2 * r + k + 1) → ℂ) : inWb k r (vH k r z e u) :=
  inWb_sub (pW_inWb hz u) (inWb_smul _ he)

theorem vH_perp (hzz : herm (Hpk k r) z z ≠ 0) (hez : herm (Hpk k r) e z = 0) (u : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) (vH k r z e u) z = 0 := by
  unfold vH
  rw [hb_sub_left, hb_smul_left, pW_perp hzz, hez, mul_zero, sub_zero]

theorem hh_mem (hz : inWb k r z) (hzz : herm (Hpk k r) z z ≠ 0) (he : inWb k r e) (hez : herm (Hpk k r) e z = 0)
    (u : Fin (2 * r + k + 1) → ℂ) : hh k r z e u ∈ UWset k r z := by
  unfold hh
  split_ifs with h0
  · exact ⟨by simp [UH], fun a => by simp, by simp⟩
  · set v := vH k r z e u with hv
    set R := (herm (Hpk k r) v v).re with hR
    have hvv : herm (Hpk k r) v v = (R : ℂ) := herm_real v
    have hvW := vH_inWb hz he u
    have hvz := vH_perp hzz hez u
    have hzv : herm (Hpk k r) z v = 0 := by rw [hb_symm _ (hpk_herm k r) v z, hvz, star_zero]
    refine ⟨?_, fun a => ⟨?_, ?_⟩, ?_⟩
    · apply Formalism.FourierDecayAlt.P.TwoByOneBlock.qrefl_mem (Hpk k r) (hpk_herm k r)
      rw [hvv, Complex.star_def, Complex.conj_ofReal]
      have hR0 : (R : ℂ) ≠ 0 := by exact_mod_cast h0
      push_cast
      field_simp
      ring
    · rw [Formalism.FourierDecayAlt.P.TwoByOneBlock.qrefl_mulVec, Formalism.FourierDecayAlt.P.Dx2.DF.h_ee_w hvW a, mul_zero, zero_smul, add_zero]
    · rw [Formalism.FourierDecayAlt.P.TwoByOneBlock.qrefl_mulVec, Formalism.FourierDecayAlt.P.Dx2.DF.h_es_w hvW a, mul_zero, zero_smul, add_zero]
    · rw [Formalism.FourierDecayAlt.P.TwoByOneBlock.qrefl_mulVec, hzv, mul_zero, zero_smul, add_zero]

end house

section apply

variable {k r : ℕ} {z e : Fin (2 * r + k + 1) → ℂ}

theorem hh_apply (hz : inWb k r z) (hzn : (herm (Hpk k r) z z).re < 0) (he : inWb k r e)
    (hez : herm (Hpk k r) e z = 0) (hee : herm (Hpk k r) e e = 1) {u : Fin (2 * r + k + 1) → ℂ}
    (hu : inWb k r u) (huz : herm (Hpk k r) u z = 0) : hh k r z e u *ᵥ u = sC k r z e u • e := by
  have hzz : herm (Hpk k r) z z ≠ 0 := fun h => by rw [h, Complex.zero_re] at hzn; exact lt_irrefl _ hzn
  have hp : pW k r z u = u := Formalism.FourierDecayAlt.P.Dx2.DF.prW_perp hu huz
  set a := aC k r z e u with ha
  set N := nR k r z u with hN
  set s := sC k r z e u with hs
  have ha' : herm (Hpk k r) u e = a := by rw [ha, aC, hp]
  have hNn : 0 ≤ N := Real.sqrt_nonneg _
  have hre : 0 ≤ (herm (Hpk k r) u u).re := perp_nonneg hz hzn hu huz
  have hN2 : N ^ 2 = (herm (Hpk k r) u u).re := by rw [hN, nR, hp, Real.sq_sqrt hre]
  have huu : herm (Hpk k r) u u = ((N ^ 2 : ℝ) : ℂ) := by rw [hN2]; exact herm_real u
  have hsa : star s * a = ((N * ‖a‖ : ℝ) : ℂ) := by
    rw [hs, sC, ← ha]
    split_ifs with h0
    · rw [h0]; simp
    · have hn : (‖a‖ : ℂ) ≠ 0 := by simpa using h0
      simp only [star_mul', star_div₀, Complex.star_def, Complex.conj_ofReal]
      rw [← hN, show (N : ℂ) * ((starRingEnd ℂ) a / (‖a‖ : ℂ)) * a = (N : ℂ) * ((starRingEnd ℂ) a * a) / (‖a‖ : ℂ) by
        ring, Complex.conj_mul']
      push_cast
      field_simp
  have hss : s * star s = ((N ^ 2 : ℝ) : ℂ) := by
    rw [hs, sC, ← ha]
    split_ifs with h0
    · rw [Complex.star_def, Complex.conj_ofReal]; push_cast; ring
    · have hn : (‖a‖ : ℂ) ≠ 0 := by simpa using h0
      simp only [star_mul', star_div₀, Complex.star_def, Complex.conj_ofReal]
      rw [← hN, show (N : ℂ) * (a / (‖a‖ : ℂ)) * ((N : ℂ) * ((starRingEnd ℂ) a / (‖a‖ : ℂ))) =
        (N : ℂ) ^ 2 * (a * (starRingEnd ℂ) a) / (‖a‖ : ℂ) ^ 2 by ring, Complex.mul_conj']
      push_cast
      field_simp
  have hea : s * herm (Hpk k r) e u = ((N * ‖a‖ : ℝ) : ℂ) := by
    rw [hb_symm _ (hpk_herm k r) u e, ha']
    have : s * star a = star (star s * a) := by rw [star_mul', star_star, mul_comm]
    rw [this, hsa, Complex.star_def, Complex.conj_ofReal]
  have hv : vH k r z e u = u + (-s) • e := by rw [vH, hp, neg_smul, ← sub_eq_add_neg]
  have hvv : herm (Hpk k r) (vH k r z e u) (vH k r z e u) = ((2 * (N ^ 2 - N * ‖a‖) : ℝ) : ℂ) := by
    rw [hv, hb_expand, huu, ha', hee]
    simp only [star_neg, neg_mul, mul_neg, neg_neg, mul_one]
    rw [hsa, hea, hss]
    push_cast; ring
  have huv : herm (Hpk k r) u (vH k r z e u) = ((N ^ 2 - N * ‖a‖ : ℝ) : ℂ) := by
    rw [hv, hb_add_right, hb_smul_right, huu, ha', star_neg, neg_mul, hsa]
    push_cast; ring
  unfold hh
  rw [hvv, Complex.ofReal_re]
  split_ifs with h0
  · have hv0 : vH k r z e u = 0 := perp_eq_zero hz hzn (vH_inWb hz he u) (vH_perp hzz hez u)
      (by rw [hvv, Complex.ofReal_re, h0])
    rw [one_mulVec]
    have := hv0
    rw [vH, hp, sub_eq_zero] at this
    exact this
  · rw [Formalism.FourierDecayAlt.P.TwoByOneBlock.qrefl_mulVec, huv]
    have h1 : N ^ 2 - N * ‖a‖ ≠ 0 := fun h => h0 (by rw [h, mul_zero])
    have hc : ((-2 / (2 * (N ^ 2 - N * ‖a‖)) : ℝ) : ℂ) * ((N ^ 2 - N * ‖a‖ : ℝ) : ℂ) = -1 := by
      rw [← Complex.ofReal_mul]
      have : -2 / (2 * (N ^ 2 - N * ‖a‖)) * (N ^ 2 - N * ‖a‖) = -1 := by
        have h2 : (2 : ℝ) * (N ^ 2 - N * ‖a‖) ≠ 0 := mul_ne_zero two_ne_zero h1
        rw [div_mul_eq_mul_div, div_eq_iff h2]; ring
      rw [this]; push_cast; ring
    rw [hc, vH, hp]
    simp only [neg_smul, one_smul]
    rw [← hs]; abel

end apply

section meas

variable {k r : ℕ}

theorem herm_cont : Continuous (fun q : (Fin (2 * r + k + 1) → ℂ) × (Fin (2 * r + k + 1) → ℂ) =>
    herm (Hpk k r) q.1 q.2) := by
  unfold herm; fun_prop

theorem pW_cont (z : Fin (2 * r + k + 1) → ℂ) : Continuous (pW k r z) := by
  let L : (Fin (2 * r + k + 1) → ℂ) →ₗ[ℂ] (Fin (2 * r + k + 1) → ℂ) :=
    { toFun := pW k r z
      map_add' := fun v w => Formalism.FourierDecayAlt.P.Dx2.DF.prW_add z v w
      map_smul' := fun c v => Formalism.FourierDecayAlt.P.Dx2.DF.prW_smul z v c }
  exact L.continuous_of_finiteDimensional

theorem aC_cont (z e : Fin (2 * r + k + 1) → ℂ) : Continuous (aC k r z e) := by
  have hp := pW_cont (k := k) (r := r) z
  unfold aC
  exact (herm_cont (k := k) (r := r)).comp (hp.prodMk continuous_const)

theorem nR_cont (z : Fin (2 * r + k + 1) → ℂ) : Continuous (nR k r z) := by
  have hp := pW_cont (k := k) (r := r) z
  unfold nR
  exact Real.continuous_sqrt.comp (Complex.continuous_re.comp ((herm_cont (k := k) (r := r)).comp (hp.prodMk hp)))

theorem sC_meas (z e : Fin (2 * r + k + 1) → ℂ) : Measurable (sC k r z e) := by
  have ha := aC_cont (k := k) (r := r) z e
  have hn := nR_cont (k := k) (r := r) z
  unfold sC
  exact Measurable.ite (measurableSet_eq_fun ha.measurable measurable_const)
    (Complex.measurable_ofReal.comp hn.measurable)
    ((Complex.measurable_ofReal.comp hn.measurable).mul
      (ha.measurable.div (Complex.measurable_ofReal.comp ha.measurable.norm)))

theorem vH_meas (z e : Fin (2 * r + k + 1) → ℂ) : Measurable (vH k r z e) := by
  have hp := pW_cont (k := k) (r := r) z
  unfold vH
  exact hp.measurable.sub ((sC_meas (k := k) (r := r) z e).smul_const e)

theorem hermSelf_cont : Continuous (fun x : Fin (2 * r + k + 1) → ℂ => herm (Hpk k r) x x) := by
  unfold herm; fun_prop

theorem vecH_cont (j : Fin (2 * r + k + 1)) :
    Continuous (fun x : Fin (2 * r + k + 1) → ℂ => (star x ᵥ* Hpk k r) j) := by
  fun_prop

theorem R_meas (z e : Fin (2 * r + k + 1) → ℂ) :
    Measurable (fun u => (herm (Hpk k r) (vH k r z e u) (vH k r z e u)).re) :=
  (Complex.continuous_re.comp (hermSelf_cont (k := k) (r := r))).measurable.comp (vH_meas (k := k) (r := r) z e)

open scoped Formalism.DoubleCosetMeasures in
theorem hh_meas (z e : Fin (2 * r + k + 1) → ℂ) : Measurable (hh k r z e) := by
  have hv := vH_meas (k := k) (r := r) z e
  have hR := R_meas (k := k) (r := r) z e
  refine Measurable.of_eval fun i => Measurable.of_eval fun j => ?_
  have e1 : (fun u => hh k r z e u i j) = fun u =>
      if (herm (Hpk k r) (vH k r z e u) (vH k r z e u)).re = 0 then (1 : B.Mat k r) i j
      else (1 : B.Mat k r) i j + ((-2 / (herm (Hpk k r) (vH k r z e u) (vH k r z e u)).re : ℝ) : ℂ) *
        (vH k r z e u i * (star (vH k r z e u) ᵥ* Hpk k r) j) := by
    funext u; unfold hh; split_ifs
    · rfl
    · simp [Formalism.FourierDecayAlt.P.TwoByOneBlock.qrefl, Matrix.vecMulVec_apply]
  rw [e1]
  exact Measurable.ite (measurableSet_eq_fun hR measurable_const) measurable_const
    (measurable_const.add ((Complex.measurable_ofReal.comp (measurable_const.div hR)).mul
      (((measurable_pi_apply i).comp hv).mul ((vecH_cont (k := k) (r := r) j).measurable.comp hv))))

end meas

theorem householder_measurability_holds : HouseMeas := by
  intro k r z e hz hzn he hez hee
  have hzz : herm (Hpk k r) z z ≠ 0 := fun h => by rw [h, Complex.zero_re] at hzn; exact lt_irrefl _ hzn
  exact ⟨hh k r z e, hh_meas z e, hh_mem hz hzz he hez, fun u hu huz _ =>
    ⟨sC k r z e u, hh_apply hz hzn he hez hee hu huz⟩⟩

end

end Formalism.FourierDecayAlt.P.CutBP.TNM.HM
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasHM =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasV =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasV", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\npublic import Formalism.HermitianCurvature.StatementTBB\npublic import Formalism.FormalDegreeBessel.FinalBF\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactCoefficientAppend\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.StabilizerFourthCondition\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorVanishesBigCell\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.WittOrthonormalBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DensityConstantOfParts\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP.TNM

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants Filter Topology MeasureTheory Matrix

noncomputable section

section vec

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {P : M.Par}

def gd (p : KB.Pl P Wp Wq) (d : Fin (P.r + 1) → ℂ) : B.Mat P.k P.r :=
  bigCell P.k P.r (fun i => d i.castSucc) (p.T.base.μsec (d (Fin.last P.r)))

def wq (p : KB.Pl P Wp Wq) (d : Fin (P.r + 1) → ℂ) : Fin (2 * P.r + P.k + 1) → ℂ :=
  D.prW P.k P.r p.T.base.z (D.cofR p.T.base (gd p d))

theorem vDecomp (p : KB.Pl P Wp Wq) (F : B.Mat P.k P.r → (Wq →L[ℂ] Wp)) (d : Fin (P.r + 1) → ℂ)
    (hd : ∀ a, d a ≠ 0) (hG : 0 < TBB.Gp p (TBB.bigPt P.r d)) :
    ∃ hA ∈ UWset P.k P.r p.T.base.z, ∃ hB ∈ UWset P.k P.r p.T.base.z', ∃ l : ℂ,
      p.V F (TBB.bigPt P.r d) = Formalism.FourierDecayAlt.P.Dx2.VV.CinL p.T.base hA hB (B.JF p.T.base F (gd p d)) ∧
      hA *ᵥ wq p d = l • (p.m₀ *ᵥ p.ν') ∧ l ≠ 0 := by
  have hl : D.IsLocPt (Formalism.FourierDecayAlt.P.PBJ.bigPt d) (P.r + 1) := Formalism.FourierDecayAlt.P.PBJ.Dens.isLocPt_bigPt d hd
  have hG' : 0 < D.ptG (Tz P.k P.r p.T.base.z * Tz P.k P.r p.T.base.z') P.r (Formalism.FourierDecayAlt.P.PBJ.bigPt d) := hG
  have h' := Formalism.FourierDecayAlt.P.exists_isotropic_frame P.k P.r Wp Wq p.T.base p.ν' p.m₀ _ p.hF hl hG'
  have hV : p.V F (TBB.bigPt P.r d) = D.orbJ p.T.base h'.choose
      (D.muR p.T.base h'.choose (hl.2 ▸ D.ptPerm (Formalism.FourierDecayAlt.P.PBJ.bigPt d))) F := by
    show D.vecV p.T.base p.ν' p.m₀ F (Formalism.FourierDecayAlt.P.PBJ.bigPt d) = _
    unfold D.vecV
    rw [dite_eq_left ⟨hl, hG'⟩, dite_eq_left h']
  obtain ⟨hγ, hZγ, hDγ⟩ := h'.choose_spec
  have hζ : Tz P.k P.r p.T.base.z * Tz P.k P.r p.T.base.z' < Complex.normSq (d (Fin.last P.r)) :=
    Formalism.FourierDecayAlt.P.PBM.zeta_big _ d hG'
  have hc : ∀ a : Fin P.r, d a.castSucc ≠ 0 := fun a => hd _
  have hsec := p.T.base.sec.2 _ hζ
  have hγ' : gd p d ∈ B.GV P.k P.r := bigCellMem P.k P.r _ _ hc hsec.1
  have hZγ' : Zhat P.k P.r p.T.base.z p.T.base.z' (gd p d) = D.ptMatN (Formalism.FourierDecayAlt.P.PBJ.bigPt d) (P.r + 1) :=
    Formalism.FourierDecayAlt.P.PBM.zhat_bigCell_pt p.T.base d hζ
  have hpos : 0 < Gf P.k P.r p.T.base.z p.T.base.z' h'.choose := by
    rw [← Formalism.FourierDecayAlt.P.ptG_spec P.k P.r _ _ (Formalism.FourierDecayAlt.P.PBJ.bigPt d) _ hl hZγ]; exact hG'
  have hpos' : 0 < Gf P.k P.r p.T.base.z p.T.base.z' (gd p d) := by
    rw [← Formalism.FourierDecayAlt.P.ptG_spec P.k P.r _ _ (Formalism.FourierDecayAlt.P.PBJ.bigPt d) _ hl hZγ']; exact hG'
  obtain ⟨s, hs, s', hs', hγs⟩ := Formalism.FourierDecayAlt.P.fibre_orbit_description P.k P.r p.T.base.z p.T.base.z'
    ⟨p.T.base.k_pos, Formalism.FourierDecayAlt.P.Dx2.VV.std_vector_z p.T.base, Formalism.FourierDecayAlt.P.Dx2.VV.std_vector_z_prime p.T.base⟩
    _ hγ _ hγ' hpos (hZγ.trans hZγ'.symm)
  obtain ⟨hA, hhA, nA, hnA, hfA, rfl⟩ := Formalism.FourierDecayAlt.P.Dx2.VV.stabilizer_decomp_unitary_mul_unipotent (Formalism.FourierDecayAlt.P.Dx2.VV.std_vector_z p.T.base) hs
  obtain ⟨hB, hhB, nB, hnB, hfB, rfl⟩ := Formalism.FourierDecayAlt.P.Dx2.VV.stabilizer_decomp_unitary_mul_unipotent (Formalism.FourierDecayAlt.P.Dx2.VV.std_vector_z_prime p.T.base) hs'
  have hlaw := Formalism.FourierDecayAlt.P.Dx2.VV.orbJ_pt p.T.base (Formalism.FourierDecayAlt.P.PBJ.bigPt d) hl hγ hZγ hpos hhA hnA hfA hhB hnB
    hfB F
  have hw : (hl.2 ▸ D.ptPerm (Formalism.FourierDecayAlt.P.PBJ.bigPt d) : Equiv.Perm (Fin (P.r + 1))) = 1 :=
    Formalism.FourierDecayAlt.P.PBM.cast_perm_eq_one _ _ (Formalism.FourierDecayAlt.P.PBM.ptPerm_bigPt d hd)
  obtain ⟨hmono, hnz⟩ := Formalism.FourierDecayAlt.P.Dx2.VV.ptMatN_monoP' (Formalism.FourierDecayAlt.P.PBJ.bigPt d) (P.r + 1) hl.2 hl.1
  rw [hw] at hmono
  obtain ⟨a, ha, hpr⟩ := hDγ.1
  have hdet : (Zhat P.k P.r p.T.base.z p.T.base.z' h'.choose).det ≠ 0 :=
    Formalism.FourierDecayAlt.P.determinant_nonzero P.k P.r p.T.base.z p.T.base.z' (Formalism.FourierDecayAlt.P.Dx2.VV.std_vector_z p.T.base)
      (Formalism.FourierDecayAlt.P.Dx2.VV.std_vector_z_prime p.T.base) _ hpos
  refine ⟨hA, hhA, hB, hhB, (a : ℂ) * (Zhat P.k P.r p.T.base.z p.T.base.z' h'.choose).det, ?_, ?_,
    mul_ne_zero (by exact_mod_cast ha.ne') hdet⟩
  · rw [hV, ← hlaw]
    show _ = Formalism.FourierDecayAlt.P.Dx2.VV.CinL p.T.base hA hB (B.JF p.T.base F (gd p d))
    rw [← hγs, hw, Formalism.FourierDecayAlt.P.PBM.orbJ_one_eq p.T.base hγ' hpos' hnz (hZγ'.trans hmono) F]
  · have hZ1 := Formalism.FourierDecayAlt.P.Dx2.VV.zhat_conj p.T.base hhA hnA hfA hhB hnB hfB h'.choose
    have hcof := Formalism.FourierDecayAlt.P.Dx2.VV.cofR_conj p.T.base (sA := hA * nA)
      (Formalism.FourierDecayAlt.P.Dx2.VV.mul_fix hhB hfB) hZ1
    have hzz : herm (Hpk P.k P.r) p.T.base.z p.T.base.z ≠ 0 := by
      rw [Formalism.FourierDecayAlt.P.Dx2.DF.herm_self_alt]
      have := p.T.base.T_pos
      intro h
      have h2 := congrArg Complex.re h
      simp at h2; linarith
    have hsinv := Formalism.FourierDecayAlt.P.Dx2.VV.prW_sinv p.T.base.z_mem hzz hhA hnA
      (Formalism.FourierDecayAlt.P.Dx2.VV.cofR_free p.T.base h'.choose)
    unfold wq
    rw [hγs, hcof, hsinv, hpr, Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ (Formalism.FourierDecayAlt.P.Dx2.OrbJ.isUnit_of_G hhA.1),
      Matrix.one_mulVec]

end vec

end

end Formalism.FourierDecayAlt.P.CutBP.TNM
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasV =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasMain =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasMain", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasV\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDM\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeas\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BigCellOpenDomain\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutLemB\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.InvariantOperatorUnderJacquet\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LieBracketMultiplication\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ParametersUPrimeForULower\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.RestrictionIrrelevantDoubleLevelOperator\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorVanishesBigCell\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP.TNM

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants Filter Topology MeasureTheory Matrix

noncomputable section

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

section aux

variable {k r : ℕ}

theorem prW_inWb {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (v : Fin (2 * r + k + 1) → ℂ) :
    inWb k r (D.prW k r z v) := by
  intro i hi
  have hzi : z i = 0 := hz i hi
  simp only [D.prW]
  simp only [Pi.sub_apply, Pi.smul_apply, smul_eq_mul, hzi, mul_zero, sub_zero]
  split_ifs with h
  · exfalso; omega
  · rfl

theorem projection_hermitian_orthogonal (z v : Fin (2 * r + k + 1) → ℂ) (hzz : herm (Hpk k r) z z ≠ 0) :
    herm (Hpk k r) (D.prW k r z v) z = 0 := by
  have key : ∀ (x y : Fin (2 * r + k + 1) → ℂ) (c : ℂ),
      herm (Hpk k r) (x - c • y) z = herm (Hpk k r) x z - c * herm (Hpk k r) y z := by
    intro x y c
    simp only [herm, Matrix.mulVec_sub, Matrix.mulVec_smul, dotProduct_sub, dotProduct_smul, smul_eq_mul]
  simp only [D.prW]
  rw [key, div_mul_cancel₀ _ hzz, sub_self]

def prWL (z : Fin (2 * r + k + 1) → ℂ) : (Fin (2 * r + k + 1) → ℂ) →ₗ[ℂ] (Fin (2 * r + k + 1) → ℂ) where
  toFun := D.prW k r z
  map_add' := Formalism.FourierDecayAlt.P.Dx2.DF.prW_add z
  map_smul' c v := Formalism.FourierDecayAlt.P.Dx2.DF.prW_smul z v c

theorem prW_cont (z : Fin (2 * r + k + 1) → ℂ) : Continuous (D.prW k r z) :=
  (prWL (k := k) (r := r) z).continuous_of_finiteDimensional

theorem cofR_cont {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] (S : B.RealPlaceData k r Wp Wq) : Continuous (D.cofR S) := by
  have hZ : Continuous (fun γ : B.Mat k r => Zhat k r S.z S.z' γ) := by
    refine continuous_pi fun i => continuous_pi fun j => ?_
    simp only [Zhat, herm]
    exact continuous_const.dotProduct (continuous_const.matrix_mulVec (continuous_id.matrix_mulVec continuous_const))
  show Continuous (fun γ : B.Mat k r =>
    ∑ j, (Zhat k r S.z S.z' γ).adjugate j (Fin.last r) • (γ *ᵥ fvec k r S.z' j))
  refine continuous_finsetSum _ fun j _ => ?_
  exact ((continuous_apply (Fin.last r)).comp ((continuous_apply j).comp hZ.matrix_adjugate)).smul
    (continuous_id.matrix_mulVec continuous_const)

theorem gd_eq {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] {P : M.Par} (p : KB.Pl P Wp Wq)
    (c : Fin (P.r + 1) → ℂ) :
    gd p c = B.gq p.T.base ((fun i : Fin P.r => c i.castSucc), c (Fin.last P.r)) := rfl

end aux

section main

theorem typeNormMeas_of_typeComm_houseMeas (hTC : TypeComm) (hHM : HouseMeas) : TDM.TypeNormMeas := by
  intro Wp Wq _ _ _ _ _ _ P p Y A hThr hY ρ
  obtain ⟨hmU, hmW, -, -, -, hzeq, -⟩ := Formalism.FourierDecayAlt.P.Topx1.vecw_base_parts p.T.base p.hF
  obtain ⟨hν, hνz, hνν, -, -⟩ := id p.hF
  have he : inWb P.k P.r (p.m₀ *ᵥ p.ν') := hmW p.ν' hν
  have hee : herm (Hpk P.k P.r) (p.m₀ *ᵥ p.ν') (p.m₀ *ᵥ p.ν') = 1 := by
    rw [Formalism.FourierDecayAlt.P.Dx2.DF.herm_m0_mulVec_invariant p.m₀ hmU]; exact hνν
  have hez : herm (Hpk P.k P.r) (p.m₀ *ᵥ p.ν') p.T.base.z = 0 := by
    rw [hzeq, Formalism.FourierDecayAlt.P.Qx8.herm_smul_right', Formalism.FourierDecayAlt.P.Dx2.DF.herm_m0_mulVec_invariant p.m₀ hmU, hνz, mul_zero]
  have hzW : inWb P.k P.r p.T.base.z := (Formalism.FourierDecayAlt.P.Dx2.VV.std_vector_z p.T.base).1
  have hzz : herm (Hpk P.k P.r) p.T.base.z p.T.base.z ≠ 0 := by
    rw [Formalism.FourierDecayAlt.P.Dx2.DF.herm_self_alt]
    have := p.T.base.T_pos
    intro h
    have h2 := congrArg Complex.re h
    simp at h2; linarith
  have hzneg : (herm (Hpk P.k P.r) p.T.base.z p.T.base.z).re < 0 := by
    rw [Formalism.FourierDecayAlt.P.Dx2.DF.herm_self_alt]
    have := p.T.base.T_pos
    simp; linarith
  have he0 : p.m₀ *ᵥ p.ν' ≠ 0 := by
    intro h0; rw [h0] at hee; simp [herm] at hee
  obtain ⟨H, hHm, hHU, hHe⟩ := hHM P.k P.r p.T.base.z (p.m₀ *ᵥ p.ν') hzW hzneg he hez hee
  set TT : ℝ := Tz P.k P.r p.T.base.z * Tz P.k P.r p.T.base.z' with hTT
  set D0 : Set (Fin (P.r + 1) → ℂ) := {c | (∀ i, c i ≠ 0) ∧ TT < Complex.normSq (c (Fin.last P.r))} with hD0def
  set Φ : (Fin (P.r + 1) → ℂ) → ℝ := fun c =>
    ‖B.hsVec ((p.TP.E ρ).comp ((p.T.base.π (H (wq p c))).comp (B.JF p.T.base Y (gd p c))))‖ with hΦ

  have hGform : ∀ c : Fin (P.r + 1) → ℂ, TBB.Gp p (TBB.bigPt P.r c) =
      Complex.normSq (∏ a : Fin P.r, c a.castSucc) * (Complex.normSq (c (Fin.last P.r)) - TT) := by
    intro c
    show D.ptG TT P.r (Formalism.FourierDecayAlt.P.PBJ.bigPt c) = _
    unfold D.ptG
    rw [Formalism.FourierDecayAlt.P.PBM.ptMatN_bigPt_head, Formalism.FourierDecayAlt.P.PBJ.Dens.ptMatN_bigPt, Formalism.FourierDecayAlt.P.PBM.hMat_one,
      Matrix.det_diagonal, Matrix.det_diagonal, Fin.prod_univ_castSucc, Complex.normSq_mul]
    ring

  have h1 : ∀ c ∈ D0, ‖B.hsVec ((p.TP.E ρ).comp (p.V Y (TBB.bigPt P.r c)))‖ = Φ c := by
    intro c hc
    obtain ⟨hd, hζ⟩ := hc
    have hG : 0 < TBB.Gp p (TBB.bigPt P.r c) := by
      rw [hGform]
      have h0 : (∏ a : Fin P.r, c a.castSucc) ≠ 0 := Finset.prod_ne_zero_iff.2 fun a _ => hd _
      exact mul_pos (Complex.normSq_pos.2 h0) (by linarith)
    obtain ⟨hA, hhA, hB, hhB, l, hVeq, hAw, hl0⟩ := vDecomp p Y c hd hG
    set w := wq p c with hw
    have uA : IsUnit hA.det := Formalism.FourierDecayAlt.P.Dx2.OrbJ.isUnit_of_G hhA.1
    have hwA : w = hA⁻¹ *ᵥ (l • (p.m₀ *ᵥ p.ν')) := by
      rw [← hAw, Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ uA, Matrix.one_mulVec]
    have hw0 : w ≠ 0 := by
      intro h0
      rw [h0, Matrix.mulVec_zero] at hAw
      exact (smul_ne_zero hl0 he0) hAw.symm
    have hwW : inWb P.k P.r w := prW_inWb (k := P.k) (r := P.r) hzW _
    have hwz : herm (Hpk P.k P.r) w p.T.base.z = 0 := projection_hermitian_orthogonal (k := P.k) (r := P.r) _ _ hzz
    obtain ⟨l', hl'⟩ := hHe w hwW hwz hw0
    have hHUw := hHU w
    set Mw := H w with hMw
    have uH : IsUnit Mw.det := Formalism.FourierDecayAlt.P.Dx2.OrbJ.isUnit_of_G hHUw.1
    have hl'0 : l' ≠ 0 := by
      intro h0
      rw [h0, zero_smul] at hl'
      apply hw0
      rw [← Matrix.one_mulVec w, ← Matrix.nonsing_inv_mul _ uH, ← Matrix.mulVec_mulVec, hl', Matrix.mulVec_zero]
    have hHinv : Mw⁻¹ *ᵥ (p.m₀ *ᵥ p.ν') = l'⁻¹ • w := by
      have h0 : Mw⁻¹ *ᵥ (Mw *ᵥ w) = w := by
        rw [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ uH, Matrix.one_mulVec]
      rw [hl', Matrix.mulVec_smul] at h0
      calc Mw⁻¹ *ᵥ (p.m₀ *ᵥ p.ν') = l'⁻¹ • (l' • Mw⁻¹ *ᵥ (p.m₀ *ᵥ p.ν')) := by
            rw [smul_smul, inv_mul_cancel₀ hl'0, one_smul]
        _ = l'⁻¹ • w := by rw [h0]
    set g := hA * Mw⁻¹ with hgdef
    have hg : g ∈ UWset P.k P.r p.T.base.z :=
      Formalism.FourierDecayAlt.P.LieBracketMultiplication.uw_mul hhA (Formalism.FourierDecayAlt.P.LieBracketMultiplication.uw_inv (hHU w))
    have hge : g *ᵥ (p.m₀ *ᵥ p.ν') = (l'⁻¹ * l) • (p.m₀ *ᵥ p.ν') := by
      rw [hgdef, ← Matrix.mulVec_mulVec, hHinv, Matrix.mulVec_smul, hAw, smul_smul]
    have hcomm := hTC P Wp p.T.base.π p.T.base.z (p.m₀ *ᵥ p.ν') p.TP p.T.base.π_rep p.T.base.π_cont
      p.T.base.π_unitary (by have := p.hl.2.2; omega) hzW p.T.base.T_pos he hez hee g hg (l'⁻¹ * l) hge ρ
    have hgH : g * Mw = hA := by
      rw [hgdef, Matrix.mul_assoc, Matrix.nonsing_inv_mul _ uH, Matrix.mul_one]
    have hπA : p.T.base.π hA = (p.T.base.π g).comp (p.T.base.π Mw) := by
      rw [← hgH]; exact p.T.base.π_rep.2 g hg Mw hHUw
    have key : (p.TP.E ρ).comp (p.V Y (TBB.bigPt P.r c)) = Formalism.FourierDecayAlt.P.Dx2.VV.CinL p.T.base g hB
        ((p.TP.E ρ).comp ((p.T.base.π Mw).comp (B.JF p.T.base Y (gd p c)))) := by
      rw [hVeq, Formalism.FourierDecayAlt.P.Dx2.VV.CinL_apply, Formalism.FourierDecayAlt.P.Dx2.VV.CinL_apply]
      unfold Formalism.FourierDecayAlt.P.Dx2.VV.Cin
      rw [hπA]
      ext v
      have := congrArg (fun L : Wp →L[ℂ] Wp => L ((p.T.base.π Mw) ((B.JF p.T.base Y (gd p c))
        ((p.T.base.π' hB⁻¹) v)))) hcomm
      simpa using this
    rw [key, CutBP.hsVec_norm_CinL p.T.base hg hhB]

  have h2 : ∀ c : Fin (P.r + 1) → ℂ, (∀ i, c i ≠ 0) → c ∉ D0 → p.V Y (TBB.bigPt P.r c) = 0 := by
    intro c hc hcD
    have hζ : Complex.normSq (c (Fin.last P.r)) ≤ TT := by
      by_contra h; exact hcD ⟨hc, lt_of_not_ge h⟩
    have hG : ¬ 0 < TBB.Gp p (TBB.bigPt P.r c) := by
      rw [hGform]
      exact not_lt.2 (mul_nonpos_of_nonneg_of_nonpos (Complex.normSq_nonneg _) (by linarith))
    show D.vecV p.T.base p.ν' p.m₀ Y (TBB.bigPt P.r c) = 0
    unfold D.vecV
    rw [dite_eq_right]
    exact fun h => hG h.2

  have hD0 : MeasurableSet D0 := by
    have ho1 : IsOpen {c : Fin (P.r + 1) → ℂ | ∀ i, c i ≠ 0} := by
      simp only [Set.setOf_forall]
      exact isOpen_iInter_of_finite fun i => isOpen_ne_fun (continuous_apply i) continuous_const
    have ho2 : IsOpen {c : Fin (P.r + 1) → ℂ | TT < Complex.normSq (c (Fin.last P.r))} :=
      isOpen_lt continuous_const (Complex.continuous_normSq.comp (continuous_apply _))
    have ho : IsOpen D0 := ho1.inter ho2
    exact ho.measurableSet
  have hqmap : Set.MapsTo (fun c : Fin (P.r + 1) → ℂ => ((fun i : Fin P.r => c i.castSucc), c (Fin.last P.r))) D0
      (JF.QDom P.k P.r p.T.base.z p.T.base.z') := fun c hc => ⟨fun a => hc.1 _, hc.2⟩
  have hqc : Continuous (fun c : Fin (P.r + 1) → ℂ => ((fun i : Fin P.r => c i.castSucc), c (Fin.last P.r))) :=
    (continuous_pi fun i => continuous_apply _).prodMk (continuous_apply _)
  have hJ : ContinuousOn (fun c => B.JF p.T.base Y (gd p c)) D0 := by
    have h0 : ContDiffOn ℝ ((0 : ℕ) : WithTop ℕ∞) (fun q => B.JF p.T.base Y (B.gq p.T.base q))
        (JF.QDom P.k P.r p.T.base.z p.T.base.z') :=
      Formalism.FourierDecayAlt.P.jacquet_smooth_coordinates P.k P.r Wp Wq p.T.base A 0 Y hThr hY
    have h1' : ContinuousOn (fun q => B.JF p.T.base Y (B.gq p.T.base q))
        (JF.QDom P.k P.r p.T.base.z p.T.base.z') := h0.continuousOn
    have e : (fun c => B.JF p.T.base Y (gd p c)) = (fun q => B.JF p.T.base Y (B.gq p.T.base q)) ∘
        (fun c : Fin (P.r + 1) → ℂ => ((fun i : Fin P.r => c i.castSucc), c (Fin.last P.r))) := by
      funext c; rw [Function.comp_apply, gd_eq]
    rw [e]
    exact h1'.comp hqc.continuousOn hqmap
  have hgd : ContinuousOn (fun c => gd p c) D0 := by
    have h1' : ContinuousOn (fun q => B.gq p.T.base q) (JF.QDom P.k P.r p.T.base.z p.T.base.z') :=
      (Formalism.FourierDecayAlt.P.BigCellOpenDomain.gq_contDiffOn p.T.base 0).continuousOn
    have e : (fun c => gd p c) = (fun q => B.gq p.T.base q) ∘
        (fun c : Fin (P.r + 1) → ℂ => ((fun i : Fin P.r => c i.castSucc), c (Fin.last P.r))) := by
      funext c; rw [Function.comp_apply, gd_eq]
    rw [e]
    exact h1'.comp hqc.continuousOn hqmap
  have hwq : ContinuousOn (fun c => wq p c) D0 :=
    ((prW_cont (k := P.k) (r := P.r) p.T.base.z).comp (cofR_cont (k := P.k) (r := P.r) p.T.base)).comp_continuousOn hgd
  have hπH : Measurable (fun u => p.T.base.π (H u)) := by
    let U : Set (Fin (2 * P.r + P.k + 1) → Fin (2 * P.r + P.k + 1) → ℂ) := UWset P.k P.r p.T.base.z
    let f : (Fin (2 * P.r + P.k + 1) → Fin (2 * P.r + P.k + 1) → ℂ) → (Wp →L[ℂ] Wp) :=
      fun m => p.T.base.π (Matrix.of m)
    have hf : ContinuousOn f U := p.T.base.π_cont
    have hH' : Measurable (fun u => (Matrix.of.symm (H u) : Fin (2 * P.r + P.k + 1) → Fin (2 * P.r + P.k + 1) → ℂ)) :=
      hHm
    have hr : Continuous (U.restrict f) := hf.restrict
    exact hr.measurable.comp (hH'.subtype_mk (h := fun u => hHU u))
  have hA1 : AEStronglyMeasurable (fun c => p.T.base.π (H (wq p c))) (volume.restrict D0) :=
    (hπH.comp_aemeasurable (hwq.aemeasurable hD0)).aestronglyMeasurable
  have hA2 : AEStronglyMeasurable (fun c => B.JF p.T.base Y (gd p c)) (volume.restrict D0) :=
    hJ.aestronglyMeasurable hD0
  have hsc : Continuous (fun X : Wq →L[ℂ] Wp => B.hsVec X) := by
    unfold B.hsVec
    exact (PiLp.continuous_toLp 2 _).comp
      (continuous_pi fun i => (ContinuousLinearMap.apply ℂ Wp (stdOrthonormalBasis ℂ Wq i)).continuous)
  have hGc : Continuous (fun x : (Wp →L[ℂ] Wp) × (Wq →L[ℂ] Wp) => ‖B.hsVec ((p.TP.E ρ).comp (x.1.comp x.2))‖) :=
    (hsc.comp (continuous_const.clm_comp (continuous_fst.clm_comp continuous_snd))).norm
  have h3 : AEStronglyMeasurable Φ (volume.restrict D0) := by
    have e : Φ = (fun x : (Wp →L[ℂ] Wp) × (Wq →L[ℂ] Wp) => ‖B.hsVec ((p.TP.E ρ).comp (x.1.comp x.2))‖) ∘
        (fun c => (p.T.base.π (H (wq p c)), B.JF p.T.base Y (gd p c))) := by
      rw [hΦ]; rfl
    rw [e]
    exact hGc.comp_aestronglyMeasurable (hA1.prodMk hA2)
  have hind : AEStronglyMeasurable (D0.indicator Φ) volume := (aestronglyMeasurable_indicator_iff hD0).2 h3
  refine hind.congr ?_
  filter_upwards [TDM.ae_all_ne P.r] with c hc
  by_cases hcD : c ∈ D0
  · rw [Set.indicator_of_mem hcD, h1 c hcD]
  · rw [Set.indicator_of_notMem hcD, h2 c hc hcD, ContinuousLinearMap.comp_zero]
    unfold B.hsVec
    simp only [ContinuousLinearMap.zero_apply]
    symm
    rw [norm_eq_zero]
    first
      | rfl

end main

end

end Formalism.FourierDecayAlt.P.CutBP.TNM
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasMain =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_TypeNormMeas_Proof =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_TypeNormMeas_Proof", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDM\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasHM\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutTypeNormMeasMain\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_TypeNormMeas_TC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP

theorem type_norm_measurability_holds : TDM.TypeNormMeas :=
  TNM.typeNormMeas_of_typeComm_houseMeas TNM.type_commutation_holds TNM.HM.householder_measurability_holds

end Formalism.FourierDecayAlt.P.CutBP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_TypeNormMeas_Proof =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormDone =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormDone", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopForm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormTDMAll\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.cut_TypeNormMeas_Proof\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP

theorem top_domination_measurable_compact : TopDMeasCpt := TDM.topDMeasCpt_of_typeNormMeas type_norm_measurability_holds

end Formalism.FourierDecayAlt.P.CutBP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormDone =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFMainS =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFMainS", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopDom\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutFpmDecay\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFTopFormDone\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LimitOfModuleForms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.CutBP

open Formalism.FourierDecayAlt Formalism.QuantumDeterminants Filter Topology MeasureTheory

noncomputable section

def flCutS (k r : ℕ) (n : ℕ) (g : B.Mat k r) : ℂ :=
  ((Real.smoothTransition ((4 - ∑ i, ∑ j, Complex.normSq ((((n : ℝ) + 1)⁻¹ • g) i j)) / 3) : ℝ) : ℂ)

theorem domination_measurability_holds : NFDomMeas := by
  intro Cb
  obtain ⟨Cc, hFL⟩ := Formalism.FourierDecayAlt.P.limit_of_module_forms Cb
  refine ⟨Cc, ?_⟩
  intro Wp Wq _ _ _ _ _ _ P p f A₀ p₀ χ Y N hH w hw hN ε hε
  obtain ⟨hχ, hInD, hfck, hfcc, hA, -⟩ := hH
  have hck : B.CkOn ⊤ (B.GV P.k P.r) (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) := by
    rw [fpm_id]; exact ckOn_Gpow_smul _ _ p₀ hfck
  obtain ⟨hcpt, hlim⟩ := hFL Wp Wq P p (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) χ ε
    (A₀ - (((2 * P.r + 2) * p₀ : ℕ) : ℝ)) N (flCutS P.k P.r) hInD hχ hε hck (inCC_fpm_id p p₀ hfcc) hA
    (fun n g => rfl)
  refine aestronglyMeasurable_of_tendsto_ae atTop
    (f := fun n => topD p (fun g => flCutS P.k P.r n g •
      D.cutF p.T.base χ (TBBx4.fpm p f (fun _ => ContinuousLinearMap.id ℂ Wq) p₀) ε g) w)
    (fun n => top_domination_measurable_compact Wp Wq P p _ w Cb hInD (hcpt n) hw.1) (ae_of_all _ fun c => ?_)
  have h := hlim (P.r + 1) w hw.1 hN (TBB.bigPt P.r c) (TBB.bigPt P.r c)
  unfold topD TBB.Ew TBB.NP
  exact (Complex.continuous_re.tendsto _).comp (h.const_mul _)


end

end Formalism.FourierDecayAlt.P.CutBP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CutNFMainS =====
