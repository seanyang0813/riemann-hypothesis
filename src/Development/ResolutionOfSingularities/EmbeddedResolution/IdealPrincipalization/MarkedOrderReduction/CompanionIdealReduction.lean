module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MonomialFactorTransform
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderAlongBlowupSequence
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.NonMonomialOrderReduction
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.LocallyMonomial
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PowerContainmentAndOrderLocus
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MaxOrder
import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.ControlledTransform
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Mathlib.Tactic.Linter.Style
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MonomialSplittingFunctoriality

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.ControlledMonomialTransform, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.CompanionIdealReduction

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.ControlledMonomialTransform =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.ControlledMonomialTransform", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MonomialFactorTransform\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PowerContainmentAndOrderLocus\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MaxOrder\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderAlongBlowupSequence\nimport Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.ControlledTransform\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

section

variable {k : Type u} [Field k] {X : Scheme.{u}} {p : X ⟶ Spec (CommRingCat.of k)}
  {J : X.IdealSheafData} {μ : ℕ} {E : List X.IdealSheafData}

def MarkedSequenceOfBlowups.controlledNonMonomialTransform (t : MarkedSequenceOfBlowups p J μ E) (N : X.IdealSheafData) (c : ℕ) :
    ∀ i : ℕ, (t.schemeAt i).IdealSheafData
  | 0 => N.comap t.isoZero.hom
  | i + 1 =>
      residualByPow ((MarkedSequenceOfBlowups.controlledNonMonomialTransform t N c i).comap (t.transitionMapSucc i)) (t.exceptionalDivisor i) c

@[simp]
theorem MarkedSequenceOfBlowups.controlledNonMonomialTransform_zero (t : MarkedSequenceOfBlowups p J μ E) (N : X.IdealSheafData)
    (c : ℕ) : MarkedSequenceOfBlowups.controlledNonMonomialTransform t N c 0 = N.comap t.isoZero.hom :=
  rfl

@[simp]
theorem MarkedSequenceOfBlowups.controlledNonMonomialTransform_succ (t : MarkedSequenceOfBlowups p J μ E) (N : X.IdealSheafData)
    (c i : ℕ) :
    MarkedSequenceOfBlowups.controlledNonMonomialTransform t N c (i + 1) =
      residualByPow ((MarkedSequenceOfBlowups.controlledNonMonomialTransform t N c i).comap (t.transitionMapSucc i)) (t.exceptionalDivisor i) c :=
  rfl

def MarkedSequenceOfBlowups.controlledMonomialTransform (t : MarkedSequenceOfBlowups p J μ E) (M : X.IdealSheafData) (a c : ℕ) :
    ∀ i : ℕ, (t.schemeAt i).IdealSheafData
  | 0 => M.comap t.isoZero.hom
  | i + 1 =>
      residualByPow ((MarkedSequenceOfBlowups.controlledMonomialTransform t M a c i).comap (t.transitionMapSucc i) * t.exceptionalDivisor i ^ c)
        (t.exceptionalDivisor i) a

@[simp]
theorem MarkedSequenceOfBlowups.controlledMonomialTransform_zero (t : MarkedSequenceOfBlowups p J μ E) (M : X.IdealSheafData)
    (a c : ℕ) : MarkedSequenceOfBlowups.controlledMonomialTransform t M a c 0 = M.comap t.isoZero.hom :=
  rfl

@[simp]
theorem MarkedSequenceOfBlowups.controlledMonomialTransform_succ (t : MarkedSequenceOfBlowups p J μ E) (M : X.IdealSheafData)
    (a c i : ℕ) :
    MarkedSequenceOfBlowups.controlledMonomialTransform t M a c (i + 1) =
      residualByPow ((MarkedSequenceOfBlowups.controlledMonomialTransform t M a c i).comap (t.transitionMapSucc i) * t.exceptionalDivisor i ^ c)
        (t.exceptionalDivisor i) a :=
  rfl

end

section

theorem isAdmissible_withIdealAndMult_pow_sup_pow {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible)
    {N : T.scheme.IdealSheafData} {s : ℕ} (hs : 1 ≤ s)
    (hord : ∀ x ∈ orderAtLeastLocus T.ideal T.mult, orderAt N x ≤ (s : ℕ∞)) :
    (T.withIdealAndMult (N ^ T.mult ⊔ T.ideal ^ s) (T.mult * s)).IsAdmissible ∧
      ∀ x : ↥T.scheme, orderAt (N ^ T.mult ⊔ T.ideal ^ s) x ≤ ((T.mult * s : ℕ) : ℕ∞) := by
  have hcz : CharZero T.base := hT.charZero
  have hsm : AlgebraicGeometry.Smooth T.structMap := hT.smooth
  have hle : ∀ x : ↥T.scheme,
      orderAt (N ^ T.mult ⊔ T.ideal ^ s) x ≤ ((T.mult * s : ℕ) : ℕ∞) := fun x =>
    orderAt_pow_sup_pow_le T.base T.structMap N T.ideal T.mult s hord x
  have hsub : (↑(N ^ T.mult ⊔ T.ideal ^ s).support : Set ↥T.scheme) ⊆
      (↑T.ideal.support : Set ↥T.scheme) := by
    intro x hx
    by_contra hc
    have h0 : orderAt T.ideal x = 0 := (orderAt_eq_zero_iff_not_mem_support T.ideal x).2 hc
    have h1 : (1 : ℕ∞) ≤ orderAt (N ^ T.mult ⊔ T.ideal ^ s) x :=
      (one_le_orderAt_iff_mem_support (N ^ T.mult ⊔ T.ideal ^ s) x).2 hx
    rw [orderAt_pow_sup_pow T.base T.structMap N T.ideal T.mult s x] at h1
    have h2 : (1 : ℕ∞) ≤ (s : ℕ∞) * orderAt T.ideal x := le_trans h1 (min_le_right _ _)
    rw [h0, mul_zero] at h2
    simp at h2
  have hnz : NonzeroOnComponents (N ^ T.mult ⊔ T.ideal ^ s) := by
    rw [nonzeroOnComponents_iff]
    intro Z hZ hZsub
    exact (nonzeroOnComponents_iff T.ideal).1 hT.nonzeroOnComponents Z hZ (hZsub.trans hsub)
  have hmult : 1 ≤ T.mult * s := by
    have h := Nat.mul_le_mul hT.one_le_mult hs
    simpa using h
  exact ⟨{ charZero := hT.charZero
           locallyOfFiniteType := hT.locallyOfFiniteType
           nonzeroOnComponents := hnz
           one_le_mult := hmult
           quasiCompact := hT.quasiCompact
           smooth := hT.smooth
           snc := hT.snc }, hle⟩

theorem isMonomialSplitting_controlledTransform_of_le_length (hG : PrincipalizationGeometryHypotheses.{u}) {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible)
    {M N : T.scheme.IdealSheafData} (hsplit : IsMonomialSplitting T.boundary T.ideal M N)
    {s : ℕ} (hs : 1 ≤ s)
    (hord : ∀ x ∈ orderAtLeastLocus T.ideal T.mult, orderAt N x ≤ (s : ℕ∞))
    (t : MarkedSequenceOfBlowups T.structMap (N ^ T.mult ⊔ T.ideal ^ s) (T.mult * s) T.boundary)
    (i : ℕ) (hi : i ≤ t.length) :
    t.ideal i =
        MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s i ^ T.mult ⊔
          MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i ^ s ∧
      IsMonomialSplitting (t.boundary i) (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i)
        (MarkedSequenceOfBlowups.controlledMonomialTransform t M T.mult s i) (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s i) ∧
      ∀ x ∈ orderAtLeastLocus (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i) T.mult,
        orderAt (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s i) x ≤ (s : ℕ∞) := by
  have := hT.charZero
  have := hT.smooth
  have hECNC : EffectiveCartierSupportContainsNoComponent.{u} := effectiveCartierSupportContainsNoComponent
  have hgeom : OrderAtComapOffExceptionalLocus.{u} :=
    orderAtComapOffExceptionalLocus_of_monomialGeometryHypotheses hG.monomialInputs
  have hm : 1 ≤ T.mult := hT.one_le_mult
  have hT' := (isAdmissible_withIdealAndMult_pow_sup_pow hT hs hord).1
  have key : ∀ j : ℕ, j ≤ t.length →
      (t.ideal j = MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s j ^ T.mult ⊔
          MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult j ^ s ∧
        IsMonomialSplitting (t.boundary j) (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult j)
          (MarkedSequenceOfBlowups.controlledMonomialTransform t M T.mult s j) (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s j) ∧
        ∀ x ∈ orderAtLeastLocus (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult j) T.mult,
          orderAt (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s j) x ≤ (s : ℕ∞)) := by
    intro j
    induction j with
    | zero =>
        intro _
        refine ⟨?_, ?_, ?_⟩
        · rw [t.ideal_zero, MarkedSequenceOfBlowups.controlledNonMonomialTransform_zero, MarkedSequenceOfBlowups.controlledTransform_zero,
            Scheme.IdealSheafData.comap_sup, Scheme.IdealSheafData.comap_pow,
            Scheme.IdealSheafData.comap_pow]
        · rw [t.boundary_zero, MarkedSequenceOfBlowups.controlledTransform_zero, MarkedSequenceOfBlowups.controlledMonomialTransform_zero,
            MarkedSequenceOfBlowups.controlledNonMonomialTransform_zero]
          exact hsplit.comap_iso t.isoZero
        · intro x hx
          have h1 : (T.mult : ℕ∞) ≤ orderAt (T.ideal.comap t.isoZero.hom) x :=
            (mem_orderAtLeastLocus_iff _ _ _).1 hx
          rw [orderAt_comap_of_isIso] at h1
          have h2 := hord _ ((mem_orderAtLeastLocus_iff _ _ _).2 h1)
          show orderAt (N.comap t.isoZero.hom) x ≤ (s : ℕ∞)
          rw [orderAt_comap_of_isIso]
          exact h2
    | succ n ih =>
        intro hn
        have hn' : n < t.length := hn
        obtain ⟨ih1, ih2, ih3⟩ := ih (le_of_lt hn')
        have hbl : Blowup.IsBlowupAlongIdealSheaf (t.transitionMapSucc n) (t.center n) := t.isBlowupAlongIdealSheaf_blowupMorphism n hn'
        have hexc : Blowup.exceptionalIdeal (t.transitionMapSucc n) (t.center n) = t.exceptionalDivisor n := by
          rw [MarkedSequenceOfBlowups.exceptionalDivisor_eq, Blowup.exceptionalIdeal_eq_comap]
        have hFcart : Blowup.IsLocallyGeneratedByNonZeroDivisor (t.exceptionalDivisor n) := by
          rw [← hexc]
          exact isLocallyGeneratedByNonZeroDivisor_exceptionalIdeal hbl
        have hTn := MarkedIdealWithBoundary.IsAdmissible.transformAt hECNC hT' t n (le_of_lt hn')
        have : AlgebraicGeometry.Smooth (MarkedSequenceOfBlowups.projectionToSpec t n) :=
          MarkedSequenceOfBlowups.smooth_projectionToSpec hECNC hT' t n (le_of_lt hn')
        have : AlgebraicGeometry.Smooth (MarkedSequenceOfBlowups.projectionToSpec t (n + 1)) :=
          MarkedSequenceOfBlowups.smooth_projectionToSpec hECNC hT' t (n + 1) hn
        have : AlgebraicGeometry.IsNoetherian (t.schemeAt (n + 1)) :=
          MarkedSequenceOfBlowups.isNoetherian_schemeAt hECNC hT' t (n + 1) hn
        have hsmn : AlgebraicGeometry.Smooth
            ((t.center n).subschemeι ≫ MarkedSequenceOfBlowups.projectionToSpec t n) := by
          rw [MarkedSequenceOfBlowups.projectionToSpec_eq]
          exact t.center_smooth n hn'
        have hsncn : HasStrictNormalCrossingsWith (MarkedSequenceOfBlowups.projectionToSpec t n) (t.center n) (t.boundary n) := by
          rw [MarkedSequenceOfBlowups.projectionToSpec_eq]
          exact t.center_snc n hn'
        have hcos : orderAtLeastLocus (t.ideal n) (T.mult * s)
            = orderAtLeastLocus (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s n) s ∩
              orderAtLeastLocus (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult n) T.mult := by
          rw [ih1]
          exact orderAtLeastLocus_pow_sup_pow T.base (MarkedSequenceOfBlowups.projectionToSpec t n) _ _ hm hs
        have hZord : ∀ x ∈ (t.center n).support,
            orderAt (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s n) x = (s : ℕ∞) := by
          intro x hx
          have hx1 := t.center_order n hn' hx
          rw [hcos] at hx1
          exact le_antisymm (ih3 x hx1.2) ((mem_orderAtLeastLocus_iff _ _ _).1 hx1.1)
        have hZP : (↑(t.center n).support : Set ↥(t.schemeAt n))
            ⊆ orderAtLeastLocus (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult n) T.mult := by
          intro x hx
          have hx1 := t.center_order n hn' hx
          rw [hcos] at hx1
          exact hx1.2
        have hPle : MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult n ≤ t.center n ^ T.mult :=
          le_pow_of_hasStrictNormalCrossingsWith (MarkedSequenceOfBlowups.projectionToSpec t n) (t.center n) _ (t.boundary n)
            hsncn T.mult hZP
        have hAle : MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s n ≤ t.center n ^ s := by
          refine le_pow_of_hasStrictNormalCrossingsWith (MarkedSequenceOfBlowups.projectionToSpec t n) (t.center n) _
            (t.boundary n) hsncn s ?_
          intro x hx
          exact (mem_orderAtLeastLocus_iff _ _ _).2 (le_of_eq (hZord x hx).symm)
        have hPdiv : ∃ B : (t.schemeAt (n + 1)).IdealSheafData, t.exceptionalDivisor n ^ T.mult * B
            = (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult n).comap (t.transitionMapSucc n) := by
          refine (hFcart.pow T.mult).exists_mul_eq ?_
          rw [← hexc]
          exact comap_le_exceptionalIdeal_pow (t.transitionMapSucc n) hPle
        have hAdiv : ∃ B : (t.schemeAt (n + 1)).IdealSheafData, t.exceptionalDivisor n ^ s * B
            = (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s n).comap (t.transitionMapSucc n) := by
          refine (hFcart.pow s).exists_mul_eq ?_
          rw [← hexc]
          exact comap_le_exceptionalIdeal_pow (t.transitionMapSucc n) hAle
        have hPtw : t.exceptionalDivisor n ^ T.mult *
            MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult (n + 1)
            = (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult n).comap (t.transitionMapSucc n) := by
          rw [MarkedSequenceOfBlowups.controlledTransform_succ]
          exact pow_mul_residualByPow _ _ _ hPdiv
        have hAtw : t.exceptionalDivisor n ^ s * MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s (n + 1)
            = (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s n).comap (t.transitionMapSucc n) := by
          rw [MarkedSequenceOfBlowups.controlledNonMonomialTransform_succ]
          exact pow_mul_residualByPow _ _ _ hAdiv
        have hPtw' : Blowup.exceptionalIdeal (t.transitionMapSucc n) (t.center n) ^ T.mult *
            MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult (n + 1)
            = (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult n).comap (t.transitionMapSucc n) := by
          rw [hexc]
          exact hPtw
        have hAtw' : Blowup.exceptionalIdeal (t.transitionMapSucc n) (t.center n) ^ s *
            MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s (n + 1)
            = (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s n).comap (t.transitionMapSucc n) := by
          rw [hexc]
          exact hAtw
        have hCdiv : ∃ Cc : (t.schemeAt (n + 1)).IdealSheafData,
            Blowup.exceptionalIdeal (t.transitionMapSucc n) (t.center n) ^ T.mult * Cc
              = (MarkedSequenceOfBlowups.controlledMonomialTransform t M T.mult s n).comap (t.transitionMapSucc n) *
                Blowup.exceptionalIdeal (t.transitionMapSucc n) (t.center n) ^ s :=
          exists_exceptionalIdeal_pow_mul_eq_comap_mul_pow hG _ hTn (t.center n) hsmn hsncn _
            (t.transitionMapSucc n) hbl _ _ _ T.mult s ih2 hZP hZord _ hPtw' _ hAtw'
        have hCtw : t.exceptionalDivisor n ^ T.mult * MarkedSequenceOfBlowups.controlledMonomialTransform t M T.mult s (n + 1)
            = (MarkedSequenceOfBlowups.controlledMonomialTransform t M T.mult s n).comap (t.transitionMapSucc n) *
              t.exceptionalDivisor n ^ s := by
          rw [MarkedSequenceOfBlowups.controlledMonomialTransform_succ]
          refine pow_mul_residualByPow _ _ _ ?_
          obtain ⟨Cc, hCc⟩ := hCdiv
          refine ⟨Cc, ?_⟩
          rw [← hexc]
          exact hCc
        have hCtw' : Blowup.exceptionalIdeal (t.transitionMapSucc n) (t.center n) ^ T.mult *
            MarkedSequenceOfBlowups.controlledMonomialTransform t M T.mult s (n + 1)
            = (MarkedSequenceOfBlowups.controlledMonomialTransform t M T.mult s n).comap (t.transitionMapSucc n) *
              Blowup.exceptionalIdeal (t.transitionMapSucc n) (t.center n) ^ s := by
          rw [hexc]
          exact hCtw
        refine ⟨?_, ?_, ?_⟩
        · have hidsucc : t.exceptionalDivisor n ^ (T.mult * s) * t.ideal (n + 1)
              = (t.ideal n).comap (t.transitionMapSucc n) := by
            rw [← hexc]
            exact t.ideal_succ n hn'
          have hcancel : t.exceptionalDivisor n ^ (T.mult * s) * t.ideal (n + 1)
              = t.exceptionalDivisor n ^ (T.mult * s) *
                (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s (n + 1) ^ T.mult ⊔
                  MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult (n + 1) ^ s) := by
            rw [hidsucc, ih1, Scheme.IdealSheafData.comap_sup, Scheme.IdealSheafData.comap_pow,
              Scheme.IdealSheafData.comap_pow, ← hAtw, ← hPtw, mul_pow, mul_pow, ← pow_mul,
              ← pow_mul, Scheme.IdealSheafData.mul_inf, Nat.mul_comm s T.mult]
          exact (hFcart.pow (T.mult * s)).eq_of_mul_eq_mul hcancel
        · rw [t.boundary_succ n hn']
          exact isMonomialSplitting_of_isBlowupAlongIdealSheaf hG _ hTn (t.center n) hsmn hsncn _
            (t.transitionMapSucc n) hbl _ _ _ T.mult s ih2 hZP hZord _ hPtw' _ hAtw' _ hCtw'
        · intro x hx
          by_cases hxE : x ∈ (Blowup.exceptionalIdeal (t.transitionMapSucc n) (t.center n)).support
          · exact hG.controlledTransform_orderAt_le _ hTn (t.center n) hsmn hsncn _
              (t.transitionMapSucc n) hbl _ s hZord _ hAtw' x hxE
          · have hcs : orderAtLeastLocus (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult (n + 1)) T.mult
                ⊆ ⇑(t.transitionMapSucc n) ⁻¹'
                  orderAtLeastLocus (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult n) T.mult :=
              orderAtLeastLocus_subset_preimage_of_isBlowupAlongIdealSheaf hgeom _ hTn (t.center n) _ (t.transitionMapSucc n)
                hbl _ T.mult hZP _ hPtw' T.mult le_rfl
            have hxP : (t.transitionMapSucc n) x ∈
                orderAtLeastLocus (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult n) T.mult := hcs hx
            have hord2 := ih3 _ hxP
            have hoff := hG.monomialInputs.orderAt_comap_off_exceptional _ hTn _
              (t.transitionMapSucc n) (t.center n) hbl x hxE (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s n)
            have hoff' : orderAt ((MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s n).comap (t.transitionMapSucc n)) x
                = orderAt (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s n) ((t.transitionMapSucc n) x) := hoff
            have hx0 : orderAt (t.exceptionalDivisor n) x = 0 := by
              rw [← hexc]
              exact (orderAt_eq_zero_iff_not_mem_support _ _).2 hxE
            have hsplit2 :
                orderAt ((MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s n).comap (t.transitionMapSucc n)) x
                  = orderAt (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s (n + 1)) x := by
              rw [← hAtw, orderAt_mul T.base (MarkedSequenceOfBlowups.projectionToSpec t (n + 1)),
                orderAt_pow T.base (MarkedSequenceOfBlowups.projectionToSpec t (n + 1)), hx0, mul_zero, zero_add]
            rw [← hsplit2, hoff']
            exact hord2
  exact key i hi

theorem exists_exceptionalDivisor_pow_mul_eq_comap_of_lt_length (hG : PrincipalizationGeometryHypotheses.{u}) {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible)
    {M N : T.scheme.IdealSheafData} (hsplit : IsMonomialSplitting T.boundary T.ideal M N)
    {s : ℕ} (hs : 1 ≤ s)
    (hord : ∀ x ∈ orderAtLeastLocus T.ideal T.mult, orderAt N x ≤ (s : ℕ∞))
    (t : MarkedSequenceOfBlowups T.structMap (N ^ T.mult ⊔ T.ideal ^ s) (T.mult * s) T.boundary)
    (i : ℕ) (hi : i < t.length) :
    (∀ x ∈ (t.center i).support,
        orderAt (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s i) x = (s : ℕ∞)) ∧
      (↑(t.center i).support : Set ↥(t.schemeAt i)) ⊆
        orderAtLeastLocus (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i) T.mult ∧
      (∃ A : (t.schemeAt (i + 1)).IdealSheafData,
        t.exceptionalDivisor i ^ T.mult * A =
          (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i).comap (t.transitionMapSucc i)) ∧
      (∃ B : (t.schemeAt (i + 1)).IdealSheafData,
        t.exceptionalDivisor i ^ s * B =
          (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s i).comap (t.transitionMapSucc i)) ∧
      (∃ C : (t.schemeAt (i + 1)).IdealSheafData,
        t.exceptionalDivisor i ^ T.mult * C =
          (MarkedSequenceOfBlowups.controlledMonomialTransform t M T.mult s i).comap (t.transitionMapSucc i) *
            t.exceptionalDivisor i ^ s) := by
  classical
  have hECNC : EffectiveCartierSupportContainsNoComponent.{u} := effectiveCartierSupportContainsNoComponent
  have hadm : (T.withIdealAndMult (N ^ T.mult ⊔ T.ideal ^ s) (T.mult * s)).IsAdmissible :=
    (isAdmissible_withIdealAndMult_pow_sup_pow hT hs hord).1
  have hlevel : ((T.withIdealAndMult (N ^ T.mult ⊔ T.ideal ^ s) (T.mult * s)).transformAt t i).IsAdmissible :=
    MarkedIdealWithBoundary.IsAdmissible.transformAt hECNC hadm t i (le_of_lt hi)
  have hchar : CharZero T.base := hT.charZero
  have hsmooth : AlgebraicGeometry.Smooth (t.projectionToSpec i) :=
    MarkedSequenceOfBlowups.smooth_projectionToSpec hECNC hadm t i (le_of_lt hi)
  have hnoeth : AlgebraicGeometry.IsNoetherian (t.schemeAt (i + 1)) :=
    MarkedSequenceOfBlowups.isNoetherian_schemeAt hECNC hadm t (i + 1) hi
  obtain ⟨hideal_i, hsplit_i, hord_i⟩ :=
    isMonomialSplitting_controlledTransform_of_le_length hG hT hsplit hs hord t i (le_of_lt hi)
  have hexc : t.exceptionalDivisor i = Blowup.exceptionalIdeal (t.transitionMapSucc i) (t.center i) := by
    rw [MarkedSequenceOfBlowups.exceptionalDivisor_eq, Blowup.exceptionalIdeal_eq_comap]
  have hbl : Blowup.IsBlowupAlongIdealSheaf (t.transitionMapSucc i) (t.center i) := t.isBlowupAlongIdealSheaf_blowupMorphism i hi
  have hsncc : HasStrictNormalCrossingsWith (t.projectionToSpec i) (t.center i) (t.boundary i) := by
    rw [MarkedSequenceOfBlowups.projectionToSpec_eq]
    exact t.center_snc i hi
  have hsm : AlgebraicGeometry.Smooth ((t.center i).subschemeι ≫ t.projectionToSpec i) := by
    rw [MarkedSequenceOfBlowups.projectionToSpec_eq]
    exact t.center_smooth i hi
  have key : ∀ x ∈ (t.center i).support,
      orderAt (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s i) x = (s : ℕ∞) ∧
        (T.mult : ℕ∞) ≤ orderAt (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i) x := by
    intro x hx
    have hx0 : ((T.mult * s : ℕ) : ℕ∞) ≤ orderAt (t.ideal i) x :=
      (mem_orderAtLeastLocus_iff _ _ _).1 (t.center_order i hi hx)
    rw [hideal_i, orderAt_pow_sup_pow T.base (t.projectionToSpec i) _ _ _ _ x, le_min_iff,
      Nat.cast_mul] at hx0
    obtain ⟨h1, h2⟩ := hx0
    have h1' : (s : ℕ∞) ≤ orderAt (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s i) x :=
      (natCast_mul_le_mul_iff hT.one_le_mult s _).1 h1
    have h2' : (T.mult : ℕ∞) ≤ orderAt (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i) x := by
      refine (natCast_mul_le_mul_iff hs T.mult _).1 ?_
      rwa [mul_comm ((s : ℕ∞)) ((T.mult : ℕ∞))]
    exact ⟨le_antisymm (hord_i x ((mem_orderAtLeastLocus_iff _ _ _).2 h2')) h1', h2'⟩
  have hZP : (↑(t.center i).support : Set ↥(t.schemeAt i)) ⊆
      orderAtLeastLocus (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i) T.mult := by
    intro x hx
    exact (mem_orderAtLeastLocus_iff _ _ _).2 (key x hx).2
  have hZord : (↑(t.center i).support : Set ↥(t.schemeAt i)) ⊆
      orderAtLeastLocus (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s i) s := by
    intro x hx
    exact (mem_orderAtLeastLocus_iff _ _ _).2 (le_of_eq (key x hx).1.symm)
  have hPle : MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i ≤ t.center i ^ T.mult :=
    le_pow_of_hasStrictNormalCrossingsWith (t.projectionToSpec i) (t.center i)
      (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i) (t.boundary i) hsncc T.mult hZP
  have hAle : MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s i ≤ t.center i ^ s :=
    le_pow_of_hasStrictNormalCrossingsWith (t.projectionToSpec i) (t.center i)
      (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s i) (t.boundary i) hsncc s hZord
  obtain ⟨B', hB', -⟩ := existsUnique_pow_mul_eq_comap_of_isBlowupAlongIdealSheaf (t.transitionMapSucc i) (t.center i)
    (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i) T.mult hbl hPle
  obtain ⟨A', hA', -⟩ := existsUnique_pow_mul_eq_comap_of_isBlowupAlongIdealSheaf (t.transitionMapSucc i) (t.center i)
    (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s i) s hbl hAle
  obtain ⟨C', hC'⟩ := exists_exceptionalIdeal_pow_mul_eq_comap_mul_pow hG _ hlevel
    (t.center i) hsm hsncc (t.schemeAt (i + 1)) (t.transitionMapSucc i) hbl
    (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i)
    (MarkedSequenceOfBlowups.controlledMonomialTransform t M T.mult s i)
    (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s i) T.mult s hsplit_i hZP
    (fun x hx => (key x hx).1) B' hB' A' hA'
  refine ⟨fun x hx => (key x hx).1, hZP, ⟨B', ?_⟩, ⟨A', ?_⟩, ⟨C', ?_⟩⟩
  · rw [hexc]
    exact hB'
  · rw [hexc]
    exact hA'
  · rw [hexc]
    exact hC'

private theorem controlledTransform_eq_ofMarkedSequence_controlledTransform {k : Type u} [Field k] {X : Scheme.{u}}
    {p : X ⟶ Spec (CommRingCat.of k)} {J : X.IdealSheafData} {μ : ℕ} {E : List X.IdealSheafData}
    (s : MarkedSequenceOfBlowups p J μ E) (I : X.IdealSheafData) (m i : ℕ) :
    MarkedSequenceOfBlowups.controlledTransform s I m i
      = ((MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData).controlledTransform I m i := by
  induction i with
  | zero =>
      exact (BlowupSequenceData.controlledTransform_zero ((MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData) I m).symm
  | succ n ih =>
      have h2 := BlowupSequenceData.controlledTransform_succ ((MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData) I m n
      refine Eq.trans ?_ h2.symm
      exact congrArg
        (fun Jj : (s.schemeAt n).IdealSheafData =>
          residualByPow (Jj.comap (s.transitionMapSucc n)) (s.exceptionalDivisor n) m) ih

private theorem comap_controlledTransform_eq_comap_ofMarkedSequence {k : Type u} [Field k] {X : Scheme.{u}}
    {p : X ⟶ Spec (CommRingCat.of k)} {J : X.IdealSheafData} {μ : ℕ} {E : List X.IdealSheafData}
    (s : MarkedSequenceOfBlowups p J μ E) (I : X.IdealSheafData) (m i : ℕ) :
    (MarkedSequenceOfBlowups.controlledTransform s I m i).comap (s.transitionMapSucc i)
      = (((MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData).controlledTransform I m i).comap
          (((MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData).map i) :=
  congrArg (fun Jj : (s.schemeAt i).IdealSheafData => Jj.comap (s.transitionMapSucc i))
    (controlledTransform_eq_ofMarkedSequence_controlledTransform s I m i)

theorem isMarked_ofMarkedSequence_of_isMonomialSplitting (hG : PrincipalizationGeometryHypotheses.{u}) {T : MarkedIdealWithBoundary.{u}}
    (hT : T.IsAdmissible) {M N : T.scheme.IdealSheafData}
    (hsplit : IsMonomialSplitting T.boundary T.ideal M N)
    {s : ℕ} (hs : 1 ≤ s)
    (hord : ∀ x ∈ orderAtLeastLocus T.ideal T.mult, orderAt N x ≤ (s : ℕ∞))
    (t : MarkedSequenceOfBlowups T.structMap (N ^ T.mult ⊔ T.ideal ^ s) (T.mult * s) T.boundary) :
    (MarkedBlowupSequenceData.ofMarkedSequence t).toBlowupSequenceData.IsMarked T.structMap T.ideal T.mult
      T.boundary := by
  have hself := (MarkedBlowupSequenceData.ofMarkedSequence t).isMarked_toBlowupSequenceData
  refine ⟨?_, ?_, hself.center_smooth, hself.center_snc⟩
  · intro i hi
    have hi' : i < t.length := hi
    obtain ⟨A, hA⟩ := (exists_exceptionalDivisor_pow_mul_eq_comap_of_lt_length hG hT hsplit hs hord t i hi').2.2.1
    exact ⟨A, hA.trans (comap_controlledTransform_eq_comap_ofMarkedSequence t T.ideal T.mult i)⟩
  · intro i hi
    have hi' : i < t.length := hi
    have hsub := (exists_exceptionalDivisor_pow_mul_eq_comap_of_lt_length hG hT hsplit hs hord t i hi').2.1
    intro x hx
    have h1 : (T.mult : ℕ∞) ≤ orderAt (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i) x :=
      (mem_orderAtLeastLocus_iff _ _ _).1 (hsub hx)
    have he : orderAt (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult i) x
        = orderAt (((MarkedBlowupSequenceData.ofMarkedSequence t).toBlowupSequenceData).controlledTransform T.ideal T.mult i) x :=
      congrArg (fun Jj : (t.schemeAt i).IdealSheafData => orderAt Jj x)
        (controlledTransform_eq_ofMarkedSequence_controlledTransform t T.ideal T.mult i)
    exact (mem_orderAtLeastLocus_iff _ _ _).2 (he ▸ h1)

theorem orderAt_controlledNonMonomialTransform_length_lt (hG : PrincipalizationGeometryHypotheses.{u}) {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible)
    {M N : T.scheme.IdealSheafData} (hsplit : IsMonomialSplitting T.boundary T.ideal M N)
    {s : ℕ} (hs : 1 ≤ s)
    (hord : ∀ x ∈ orderAtLeastLocus T.ideal T.mult, orderAt N x ≤ (s : ℕ∞))
    (t : MarkedSequenceOfBlowups T.structMap (N ^ T.mult ⊔ T.ideal ^ s) (T.mult * s) T.boundary)
    (hempty : orderAtLeastLocus (t.ideal t.length) (T.mult * s) = ∅) :
    ∀ x ∈ orderAtLeastLocus (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult t.length) T.mult,
      orderAt (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s t.length) x < (s : ℕ∞) := by
  classical
  have hECNC : EffectiveCartierSupportContainsNoComponent.{u} := effectiveCartierSupportContainsNoComponent
  have hadm : (T.withIdealAndMult (N ^ T.mult ⊔ T.ideal ^ s) (T.mult * s)).IsAdmissible :=
    (isAdmissible_withIdealAndMult_pow_sup_pow hT hs hord).1
  have hchar : CharZero T.base := hT.charZero
  have hsmooth : AlgebraicGeometry.Smooth (t.projectionToSpec t.length) :=
    MarkedSequenceOfBlowups.smooth_projectionToSpec hECNC hadm t t.length le_rfl
  obtain ⟨hideal, -, -⟩ := isMonomialSplitting_controlledTransform_of_le_length hG hT hsplit hs hord t t.length le_rfl
  rw [hideal] at hempty
  exact (orderAtLeastLocus_pow_sup_pow_eq_empty_iff T.base (t.projectionToSpec t.length)
      (MarkedSequenceOfBlowups.controlledNonMonomialTransform t N s t.length)
      (MarkedSequenceOfBlowups.controlledTransform t T.ideal T.mult t.length) hT.one_le_mult hs).1 hempty

end

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.ControlledMonomialTransform =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.CompanionIdealReduction =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.CompanionIdealReduction", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.NonMonomialOrderReduction\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.LocallyMonomial\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.ControlledMonomialTransform\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MaxOrder\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MonomialSplittingFunctoriality\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

abbrev companionTriple (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) : MarkedIdealWithBoundary.{u} :=
  tripleAtLength T s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)

theorem orderAt_lastNonMonomialPart_le_maxOrderNonMonomialOnOrderLocus (hG : PrincipalizationGeometryHypotheses.{u}) {T : MarkedIdealWithBoundary.{u}}
    (hT : T.IsAdmissible) (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) :
    ∀ x ∈ orderAtLeastLocus (s.ideal s.length) T.mult,
      orderAt (lastNonMonomialPart T s) x ≤ ((maxOrderNonMonomialOnOrderLocus T s : ℕ) : ℕ∞) := by
  obtain ⟨B, hB⟩ := exists_orderAt_lastNonMonomialPart_le hG hT s
  intro x hx
  exact orderAt_le_maxOrderOn (lastNonMonomialPart T s) hB
    (orderAtLeastLocus (s.ideal s.length) T.mult) hx

theorem orderAt_companionIdeal_le (hG : PrincipalizationGeometryHypotheses.{u}) {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) (hcont : CompanionIdealReductionContinues T s) :
    ∀ x : ↥(s.obj s.length),
      orderAt (companionIdeal T s) x ≤ ((T.mult * maxOrderNonMonomialOnOrderLocus T s : ℕ) : ℕ∞) := by
  have hs : 1 ≤ maxOrderNonMonomialOnOrderLocus T s := (companionIdealReductionContinues_iff T s).mp hcont
  have hT' : (tripleAtLength T s (s.ideal s.length) T.mult).IsAdmissible := isAdmissible_tripleAtLength hG hT s
  have hord := orderAt_lastNonMonomialPart_le_maxOrderNonMonomialOnOrderLocus hG hT s
  intro x
  exact (isAdmissible_withIdealAndMult_pow_sup_pow hT' hs hord).2 x

theorem companionTriple_isAdmissible (hG : PrincipalizationGeometryHypotheses.{u}) {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) (hcont : CompanionIdealReductionContinues T s) :
    (companionTriple T s).IsAdmissible := by
  have h1 : (tripleAtLength T s (s.ideal s.length) T.mult).IsAdmissible := isAdmissible_tripleAtLength hG hT s
  have hv : 1 ≤ maxOrderNonMonomialOnOrderLocus T s := (companionIdealReductionContinues_iff T s).mp hcont
  exact (isAdmissible_withIdealAndMult_pow_sup_pow h1 hv
    (orderAt_lastNonMonomialPart_le_maxOrderNonMonomialOnOrderLocus hG hT s)).1

theorem isMarked_seqAtEnd_companionIdeal (hG : PrincipalizationGeometryHypotheses.{u}) {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible)
    (A : PrincipalizationAssignment.{u}) (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (hcont : CompanionIdealReductionContinues T s) :
    (MarkedBlowupSequenceData.ofMarkedSequence
          (principalizationSeqAtEnd T (principalizationOfDimLe T A) s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)
            (tripleAtLength_dim_le hG hT s _ _))).toBlowupSequenceData.IsMarked
      (s.proj s.length ≫ T.structMap) (s.ideal s.length) T.mult (s.boundary s.length) := by
  have hs : 1 ≤ maxOrderNonMonomialOnOrderLocus T s := (companionIdealReductionContinues_iff T s).mp hcont
  have hT' : (tripleAtLength T s (s.ideal s.length) T.mult).IsAdmissible := isAdmissible_tripleAtLength hG hT s
  have hsplit := isMonomialSplitting_lastNonMonomialPart hG hT s
  have hord := orderAt_lastNonMonomialPart_le_maxOrderNonMonomialOnOrderLocus hG hT s
  exact isMarked_ofMarkedSequence_of_isMonomialSplitting hG hT' hsplit hs hord
    (principalizationSeqAtEnd T (principalizationOfDimLe T A) s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)
      (tripleAtLength_dim_le hG hT s _ _))

def continuationByCompanionIdeal (hG : PrincipalizationGeometryHypotheses.{u}) {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible)
    (A : PrincipalizationAssignment.{u}) (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (hcont : CompanionIdealReductionContinues T s) :
    MarkedBlowupSequenceData (s.proj s.length ≫ T.structMap) (s.ideal s.length) T.mult
      (s.boundary s.length) :=
  BlowupSequenceData.toMarkedBlowupSequenceData
    (MarkedBlowupSequenceData.ofMarkedSequence
        (principalizationSeqAtEnd T (principalizationOfDimLe T A) s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)
          (tripleAtLength_dim_le hG hT s _ _))).toBlowupSequenceData
    (s.proj s.length ≫ T.structMap) (s.ideal s.length) T.mult (s.boundary s.length)
    (isMarked_seqAtEnd_companionIdeal hG hT A s hcont)

private theorem orderAtLeastLocus_eq_empty_of_comap_iso {k : Type u} [Field k] [CharZero k]
    {X Y : Scheme.{u}} (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (e : Y ≅ X) (J : X.IdealSheafData) (c : ℕ)
    (hJ : orderAtLeastLocus (J.comap e.hom) c = ∅) : orderAtLeastLocus J c = ∅ := by
  have hhom : AlgebraicGeometry.Smooth e.hom := inferInstance
  have hinv : AlgebraicGeometry.Smooth e.inv := inferInstance
  have hp : AlgebraicGeometry.Smooth (e.hom ≫ p) := inferInstance
  have hcomp : (J.comap e.hom).comap e.inv = J := by
    rw [← Scheme.IdealSheafData.comap_comp, Iso.inv_hom_id, Scheme.IdealSheafData.comap_id]
  have key := image_orderAtLeastLocus_comap_subset k (e.hom ≫ p) e.inv (J.comap e.hom) c
  rw [hcomp, hJ] at key
  exact Set.image_eq_empty.mp (Set.subset_empty_iff.mp key)

theorem seqAtEnd_companionIdeal_length_pos (hG : PrincipalizationGeometryHypotheses.{u}) {n : ℕ} {A B : PrincipalizationAssignment.{u}}
    (hspec : IsOrderReduction (fun d => d ≤ n) A B) {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible)
    (hdim : T.krullDimSucc ≤ n) (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (hcont : CompanionIdealReductionContinues T s) :
    0 < (principalizationSeqAtEnd T (principalizationOfDimLe T A) s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)
      (tripleAtLength_dim_le hG hT s _ _)).length := by
  have hv : 1 ≤ maxOrderNonMonomialOnOrderLocus T s := (companionIdealReductionContinues_iff T s).mp hcont
  have hm : 1 ≤ T.mult := hT.one_le_mult
  have hSvalid : (companionTriple T s).IsAdmissible := companionTriple_isAdmissible hG hT s hcont
  have hSdim : (companionTriple T s).krullDimSucc ≤ n :=
    le_trans (tripleAtLength_dim_le hG hT s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)) hdim
  have hSob : (companionTriple T s).IsOrderBoundedByMult :=
    (MarkedIdealWithBoundary.isOrderBoundedByMult_iff _).mpr (orderAt_companionIdeal_le hG hT s hcont)
  have hcall : principalizationSeqAtEnd T (principalizationOfDimLe T A) s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)
      (tripleAtLength_dim_le hG hT s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)) =
      A (companionTriple T s) := rfl
  rw [hcall]
  rcases Nat.eq_zero_or_pos (A (companionTriple T s)).length with h0 | hpos
  · exfalso
    have hcz : CharZero T.base := hT.charZero
    have hsm : AlgebraicGeometry.Smooth (s.proj s.length ≫ T.structMap) := hSvalid.smooth
    have hres := (MarkedSequenceOfBlowups.isResolution_iff (A (companionTriple T s))).mp
      (hspec.resolves (companionTriple T s) hSvalid hSdim hSob)
    rw [MarkedSequenceOfBlowups.lastIdeal_eq, h0, MarkedSequenceOfBlowups.ideal_zero] at hres
    have hempty : orderAtLeastLocus (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s) = ∅ :=
      orderAtLeastLocus_eq_empty_of_comap_iso (s.proj s.length ≫ T.structMap)
        (A (companionTriple T s)).isoZero (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s) hres
    have hforall := (orderAtLeastLocus_pow_sup_pow_eq_empty_iff T.base (s.proj s.length ≫ T.structMap)
      (lastNonMonomialPart T s) (s.ideal s.length) hm hv).mp hempty
    obtain ⟨Bd, hBd⟩ := exists_orderAt_lastNonMonomialPart_le hG hT s
    have hlt := maxOrderOn_lt_of_forall_lt (lastNonMonomialPart T s) hBd
      (orderAtLeastLocus (s.ideal s.length) T.mult) hv hforall
    have hpi : maxOrderNonMonomialOnOrderLocus T s =
        maxOrderOn (lastNonMonomialPart T s) (orderAtLeastLocus (s.ideal s.length) T.mult) := rfl
    rw [hpi] at hlt
    exact lt_irrefl _ hlt
  · exact hpos

theorem extendByCompanionIdeal_eq_append (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible) (A : PrincipalizationAssignment.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) (hcont : CompanionIdealReductionContinues T s) :
    extendByCompanionIdeal hinv T (principalizationOfDimLe T A) s =
      s.append (continuationByCompanionIdeal hG hT A s hcont) hinv :=
  appendRecursivePrincipalization_eq_append hinv T (principalizationOfDimLe T A) s (companionIdeal T s)
    (T.mult * maxOrderNonMonomialOnOrderLocus T s) (tripleAtLength_dim_le hG hT s _ _)
    (isMarked_seqAtEnd_companionIdeal hG hT A s hcont)

private noncomputable def maxOrderNonMonomialPartOnOrderAtLeastLocus {k : Type u} [Field k] (μ : ℕ)
    (D : MarkedSchemeWithCenter k) : ℕ :=
  maxOrderOn (nonMonomialPart D.boundary D.ideal) (orderAtLeastLocus D.ideal μ)

private theorem maxOrderNonMonomial_transport_eqToIso {k : Type u} [Field k] (μ : ℕ)
    (D : MarkedSchemeWithCenter k) {A : Scheme.{u}} (h : A = D.ambient) :
    maxOrderNonMonomialPartOnOrderAtLeastLocus μ (D.transport (eqToIso h)) = maxOrderNonMonomialPartOnOrderAtLeastLocus μ D := by
  subst h
  exact congrArg (maxOrderNonMonomialPartOnOrderAtLeastLocus μ) (MarkedSchemeWithCenter.transport_refl D)

private noncomputable def companionIdealPrincipalizationSeq (hG : PrincipalizationGeometryHypotheses.{u}) {T : MarkedIdealWithBoundary.{u}}
    (hT : T.IsAdmissible) (A : PrincipalizationAssignment.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) :
    MarkedSequenceOfBlowups (s.proj s.length ≫ T.structMap) (companionIdeal T s)
      (T.mult * maxOrderNonMonomialOnOrderLocus T s) (s.boundary s.length) :=
  principalizationSeqAtEnd T (principalizationOfDimLe T A) s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)
    (tripleAtLength_dim_le hG hT s _ _)

private theorem continuationByCompanionIdeal_ideal_eq (hG : PrincipalizationGeometryHypotheses.{u}) {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible)
    (A : PrincipalizationAssignment.{u}) (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (hcont : CompanionIdealReductionContinues T s) : ∀ i : ℕ,
    (continuationByCompanionIdeal hG hT A s hcont).ideal i
      = MarkedSequenceOfBlowups.controlledTransform (companionIdealPrincipalizationSeq hG hT A s) (s.ideal s.length)
          T.mult i := by
  intro i
  induction i with
  | zero => rfl
  | succ j ih =>
      rw [MarkedSequenceOfBlowups.controlledTransform_succ, ← ih]
      rfl

theorem maxOrderNonMonomialOnOrderLocus_extendByCompanionIdeal_lt (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u}) {n : ℕ}
    {A B : PrincipalizationAssignment.{u}} (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible) (hdim : T.krullDimSucc ≤ n)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) (hcont : CompanionIdealReductionContinues T s) :
    maxOrderNonMonomialOnOrderLocus T (extendByCompanionIdeal hinv T (principalizationOfDimLe T A) s) < maxOrderNonMonomialOnOrderLocus T s := by
  have hs1 : 1 ≤ maxOrderNonMonomialOnOrderLocus T s := (companionIdealReductionContinues_iff T s).mp hcont
  have ht : 0 < (continuationByCompanionIdeal hG hT A s hcont).length :=
    seqAtEnd_companionIdeal_length_pos hG hspec hT hdim s hcont
  have hT2 : (tripleAtLength T s (s.ideal s.length) T.mult).IsAdmissible := isAdmissible_tripleAtLength hG hT s
  have hsplit := isMonomialSplitting_lastNonMonomialPart hG hT s
  have hord := orderAt_lastNonMonomialPart_le_maxOrderNonMonomialOnOrderLocus hG hT s
  have hboundaryEq : (continuationByCompanionIdeal hG hT A s hcont).boundary (continuationByCompanionIdeal hG hT A s hcont).length
      = (companionIdealPrincipalizationSeq hG hT A s).boundary
          (companionIdealPrincipalizationSeq hG hT A s).length :=
    _root_.FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.ofMarkedSequence_boundary (companionIdealPrincipalizationSeq hG hT A s)
      (companionIdealPrincipalizationSeq hG hT A s).length le_rfl
  have hideal : (continuationByCompanionIdeal hG hT A s hcont).ideal (continuationByCompanionIdeal hG hT A s hcont).length
      = MarkedSequenceOfBlowups.controlledTransform (companionIdealPrincipalizationSeq hG hT A s) (s.ideal s.length)
          T.mult (companionIdealPrincipalizationSeq hG hT A s).length :=
    continuationByCompanionIdeal_ideal_eq hG hT A s hcont (continuationByCompanionIdeal hG hT A s hcont).length
  have hidealEq : (continuationByCompanionIdeal hG hT A s hcont).ideal (continuationByCompanionIdeal hG hT A s hcont).length
      = MarkedSequenceOfBlowups.controlledTransform (companionIdealPrincipalizationSeq hG hT A s)
          (tripleAtLength T s (s.ideal s.length) T.mult).ideal
          (tripleAtLength T s (s.ideal s.length) T.mult).mult
          (companionIdealPrincipalizationSeq hG hT A s).length := hideal
  have hempty : orderAtLeastLocus ((companionIdealPrincipalizationSeq hG hT A s).ideal
      (companionIdealPrincipalizationSeq hG hT A s).length) (T.mult * maxOrderNonMonomialOnOrderLocus T s) = ∅ := by
    have hres := hspec.resolves (companionTriple T s) (companionTriple_isAdmissible hG hT s hcont)
      (le_trans (tripleAtLength_dim_le hG hT s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)) hdim)
      ((MarkedIdealWithBoundary.isOrderBoundedByMult_iff _).mpr (orderAt_companionIdeal_le hG hT s hcont))
    have h2 := (MarkedSequenceOfBlowups.isResolution_iff _).mp hres
    rw [MarkedSequenceOfBlowups.lastIdeal_eq] at h2
    exact h2
  have hlt0 := orderAt_controlledNonMonomialTransform_length_lt hG hT2 hsplit hs1 hord
    (companionIdealPrincipalizationSeq hG hT A s) hempty
  have hlt : ∀ x ∈ orderAtLeastLocus (MarkedSequenceOfBlowups.controlledTransform (companionIdealPrincipalizationSeq hG hT A s)
        (s.ideal s.length) T.mult (companionIdealPrincipalizationSeq hG hT A s).length) T.mult,
      orderAt (MarkedSequenceOfBlowups.controlledNonMonomialTransform (companionIdealPrincipalizationSeq hG hT A s)
        (lastNonMonomialPart T s) (maxOrderNonMonomialOnOrderLocus T s)
        (companionIdealPrincipalizationSeq hG hT A s).length) x
        < ((maxOrderNonMonomialOnOrderLocus T s : ℕ) : ℕ∞) := hlt0
  have hsp := (isMonomialSplitting_controlledTransform_of_le_length hG hT2 hsplit hs1 hord (companionIdealPrincipalizationSeq hG hT A s)
    (companionIdealPrincipalizationSeq hG hT A s).length le_rfl).2.1
  have hsp' : IsMonomialSplitting
      ((continuationByCompanionIdeal hG hT A s hcont).boundary (continuationByCompanionIdeal hG hT A s hcont).length)
      ((continuationByCompanionIdeal hG hT A s hcont).ideal (continuationByCompanionIdeal hG hT A s hcont).length)
      (MarkedSequenceOfBlowups.controlledMonomialTransform (companionIdealPrincipalizationSeq hG hT A s)
        (monomialPart (s.boundary s.length) (s.ideal s.length)) T.mult (maxOrderNonMonomialOnOrderLocus T s)
        (companionIdealPrincipalizationSeq hG hT A s).length)
      (MarkedSequenceOfBlowups.controlledNonMonomialTransform (companionIdealPrincipalizationSeq hG hT A s) (lastNonMonomialPart T s)
        (maxOrderNonMonomialOnOrderLocus T s) (companionIdealPrincipalizationSeq hG hT A s).length) := by
    rw [hboundaryEq, hidealEq]
    exact hsp
  have hT' := isAdmissible_tripleAtLength hG hT2 (continuationByCompanionIdeal hG hT A s hcont)
  have hNM0 := hG.nonMonomialPart_eq_of_isMonomialSplitting _ hT' _ _ hsp'
  have hnonMon : nonMonomialPart
      ((continuationByCompanionIdeal hG hT A s hcont).boundary (continuationByCompanionIdeal hG hT A s hcont).length)
      ((continuationByCompanionIdeal hG hT A s hcont).ideal (continuationByCompanionIdeal hG hT A s hcont).length)
      = MarkedSequenceOfBlowups.controlledNonMonomialTransform (companionIdealPrincipalizationSeq hG hT A s) (lastNonMonomialPart T s)
          (maxOrderNonMonomialOnOrderLocus T s) (companionIdealPrincipalizationSeq hG hT A s).length := hNM0
  obtain ⟨Bd, hBd⟩ := exists_orderAt_lastNonMonomialPart_le hG hT2 (continuationByCompanionIdeal hG hT A s hcont)
  have hBd3 : ∀ x : ↥((companionIdealPrincipalizationSeq hG hT A s).schemeAt
        (companionIdealPrincipalizationSeq hG hT A s).length),
      orderAt (MarkedSequenceOfBlowups.controlledNonMonomialTransform (companionIdealPrincipalizationSeq hG hT A s)
        (lastNonMonomialPart T s) (maxOrderNonMonomialOnOrderLocus T s)
        (companionIdealPrincipalizationSeq hG hT A s).length) x ≤ (Bd : ℕ∞) := by
    intro x
    have h0 : orderAt (nonMonomialPart
        ((continuationByCompanionIdeal hG hT A s hcont).boundary (continuationByCompanionIdeal hG hT A s hcont).length)
        ((continuationByCompanionIdeal hG hT A s hcont).ideal (continuationByCompanionIdeal hG hT A s hcont).length)) x
          ≤ (Bd : ℕ∞) := hBd x
    rw [hnonMon] at h0
    exact h0
  have key : maxOrderNonMonomialOnOrderLocus T (s.append (continuationByCompanionIdeal hG hT A s hcont) hinv)
      = maxOrderNonMonomialPartOnOrderAtLeastLocus T.mult
        ((continuationByCompanionIdeal hG hT A s hcont).dataAt (continuationByCompanionIdeal hG hT A s hcont).length) := by
    have h1 : maxOrderNonMonomialOnOrderLocus T (s.append (continuationByCompanionIdeal hG hT A s hcont) hinv)
        = maxOrderNonMonomialPartOnOrderAtLeastLocus T.mult ((s.append (continuationByCompanionIdeal hG hT A s hcont) hinv).dataAt
            (s.append (continuationByCompanionIdeal hG hT A s hcont) hinv).length) := rfl
    rw [h1, MarkedBlowupSequenceData.append_dataAt_last s (continuationByCompanionIdeal hG hT A s hcont) hinv ht]
    exact maxOrderNonMonomial_transport_eqToIso T.mult
      ((continuationByCompanionIdeal hG hT A s hcont).dataAt (continuationByCompanionIdeal hG hT A s hcont).length) _
  rw [extendByCompanionIdeal_eq_append hG hinv hT A s hcont, key]
  show maxOrderOn (nonMonomialPart
      ((continuationByCompanionIdeal hG hT A s hcont).boundary (continuationByCompanionIdeal hG hT A s hcont).length)
      ((continuationByCompanionIdeal hG hT A s hcont).ideal (continuationByCompanionIdeal hG hT A s hcont).length))
      (orderAtLeastLocus ((continuationByCompanionIdeal hG hT A s hcont).ideal (continuationByCompanionIdeal hG hT A s hcont).length)
        T.mult) < maxOrderNonMonomialOnOrderLocus T s
  rw [hnonMon, hideal]
  exact maxOrderOn_lt_of_forall_lt _ hBd3 _ hs1 hlt

private theorem support_comap_iso_hom_nonempty {X Y : Scheme.{u}} (e : X ≅ Y)
    (J : Y.IdealSheafData) (h : (J.support : Set ↥Y).Nonempty) :
    ((J.comap e.hom).support : Set ↥X).Nonempty := by
  obtain ⟨y, hy⟩ := h
  refine ⟨e.inv y, ?_⟩
  have hy2 : e.hom (e.inv y) ∈ J.support := by
    rw [Scheme.inv_hom_apply]
    exact hy
  exact (mem_comap_support_iff_base_mem_support e.hom J (e.inv y)).mpr hy2

private theorem isInvariantUnderIso_hasPrincipalizationCenter_of_two_le {k : Type u} [Field k] {μ : ℕ}
    (hμ : 2 ≤ μ) : IsInvariantUnderIso (fun D : MarkedSchemeWithCenter.{u} k => HasPrincipalizationCenter μ D) := by
  intro D A e hD
  exact ⟨support_comap_iso_hom_nonempty e D.center hD.center_nonempty,
    PrincipalizationCertificate.of_two_le _ _ _ _ _ _ hμ⟩

theorem hasCenter_extendByCompanionIdeal (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u}) {n : ℕ}
    {A B : PrincipalizationAssignment.{u}} (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible) (hdim : T.krullDimSucc ≤ n)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) (hcont : CompanionIdealReductionContinues T s)
    (hm : 2 ≤ T.mult) (hs : ∀ i < s.length, HasPrincipalizationCenter T.mult (s.dataAt i)) (i : ℕ)
    (hi : i < (extendByCompanionIdeal hinv T (principalizationOfDimLe T A) s).length) :
    HasPrincipalizationCenter T.mult ((extendByCompanionIdeal hinv T (principalizationOfDimLe T A) s).dataAt i) := by
  have hval : (companionTriple T s).IsAdmissible := companionTriple_isAdmissible hG hT s hcont
  have hd : (companionTriple T s).krullDimSucc ≤ n :=
    le_trans (tripleAtLength_dim_le hG hT s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)) hdim
  have hob : (companionTriple T s).IsOrderBoundedByMult :=
    (MarkedIdealWithBoundary.isOrderBoundedByMult_iff (companionTriple T s)).mpr
      (orderAt_companionIdeal_le hG hT s hcont)
  have ht : ∀ j < (continuationByCompanionIdeal hG hT A s hcont).length,
      HasPrincipalizationCenter T.mult ((continuationByCompanionIdeal hG hT A s hcont).dataAt j) := by
    intro j hj
    exact ⟨hspec.center_nonempty (companionTriple T s) hval hd hob j hj,
      PrincipalizationCertificate.of_two_le _ _ _ _ _ _ hm⟩
  rw [extendByCompanionIdeal_eq_append hG hinv hT A s hcont] at hi ⊢
  exact MarkedBlowupSequenceData.append_dataAt_of_forall s (continuationByCompanionIdeal hG hT A s hcont) hinv
    (fun D => HasPrincipalizationCenter T.mult D) (isInvariantUnderIso_hasPrincipalizationCenter_of_two_le hm) hs ht i hi

theorem companionIdealReductionContinues_of_continues_iter (hinv : ComapIsoInvariance.{u})
    (T : MarkedIdealWithBoundary.{u}) (rc : (S : MarkedIdealWithBoundary.{u}) → S.krullDimSucc ≤ T.krullDimSucc → S.SequenceOfBlowups)
    (s₀ : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) (f : ℕ)
    (h : CompanionIdealReductionContinues T (companionIdealReductionIter hinv T rc s₀ f)) : CompanionIdealReductionContinues T s₀ := by
  revert h
  induction f with
  | zero =>
      intro h
      rwa [companionIdealReductionIter_zero] at h
  | succ n ih =>
      intro h
      by_cases hc : CompanionIdealReductionContinues T (companionIdealReductionIter hinv T rc s₀ n)
      · exact ih hc
      · rw [companionIdealReductionIter_succ_of_not_continues hinv T rc s₀ n hc] at h
        exact ih h

theorem two_le_mult_of_continues_after_nonMonomialOrderReduction (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    {n : ℕ} {A B : PrincipalizationAssignment.{u}} (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible) (hdim : T.krullDimSucc ≤ n)
    (hcont : CompanionIdealReductionContinues T (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A))) : 2 ≤ T.mult := by
  have hv : 1 ≤ maxOrderNonMonomialOnOrderLocus T (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) :=
    (companionIdealReductionContinues_iff T (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A))).mp hcont
  obtain ⟨Bd, hBd⟩ := exists_orderAt_lastNonMonomialPart_le hG hT (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A))
  have hlt : maxOrderOn (lastNonMonomialPart T (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)))
      (orderAtLeastLocus ((nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)).ideal
        (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)).length) T.mult) < T.mult :=
    maxOrderOn_lt_of_forall_lt (lastNonMonomialPart T (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A))) hBd
      (orderAtLeastLocus ((nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)).ideal
        (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)).length) T.mult) hT.one_le_mult
      (fun x _ => orderAt_lastNonMonomialPart_nonMonomialOrderReduction_lt hG hinv hspec hT hdim x)
  have hpi : maxOrderNonMonomialOnOrderLocus T (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) =
      maxOrderOn (lastNonMonomialPart T (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)))
        (orderAtLeastLocus ((nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)).ideal
          (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)).length) T.mult) := rfl
  rw [← hpi] at hlt
  omega

theorem maxOrderNonMonomialOnOrderLocus_iter_add_le (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u}) {n : ℕ}
    {A B : PrincipalizationAssignment.{u}} (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible) (hdim : T.krullDimSucc ≤ n)
    (s₀ : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) (f : ℕ)
    (h : CompanionIdealReductionContinues T (companionIdealReductionIter hinv T (principalizationOfDimLe T A) s₀ f)) :
    maxOrderNonMonomialOnOrderLocus T (companionIdealReductionIter hinv T (principalizationOfDimLe T A) s₀ f) + f ≤ maxOrderNonMonomialOnOrderLocus T s₀ := by
  revert h
  induction f with
  | zero =>
      intro h
      rw [companionIdealReductionIter_zero]
      omega
  | succ m ih =>
      intro h
      by_cases hc : CompanionIdealReductionContinues T (companionIdealReductionIter hinv T (principalizationOfDimLe T A) s₀ m)
      · have hstep := companionIdealReductionIter_succ_of_continues hinv T (principalizationOfDimLe T A) s₀ m hc
        have hlt : maxOrderNonMonomialOnOrderLocus T (companionIdealReductionIter hinv T (principalizationOfDimLe T A) s₀ (m + 1)) <
            maxOrderNonMonomialOnOrderLocus T (companionIdealReductionIter hinv T (principalizationOfDimLe T A) s₀ m) := by
          rw [hstep]
          exact maxOrderNonMonomialOnOrderLocus_extendByCompanionIdeal_lt hG hinv hspec hT hdim
            (companionIdealReductionIter hinv T (principalizationOfDimLe T A) s₀ m) hc
        have hih := ih hc
        omega
      · exfalso
        rw [companionIdealReductionIter_succ_of_not_continues hinv T (principalizationOfDimLe T A) s₀ m hc] at h
        exact hc h

theorem hasCenter_companionIdealReductionIter (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u}) {n : ℕ}
    {A B : PrincipalizationAssignment.{u}} (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (f : ℕ) (i : ℕ)
    (hi : i <
      (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) f).length) :
    HasPrincipalizationCenter T.mult
      ((companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) f).dataAt i) := by
  revert i
  induction f with
  | zero =>
      intro i hi
      rw [companionIdealReductionIter_zero] at hi ⊢
      exact hasCenter_nonMonomialOrderReduction hG hinv hspec hT hdim i hi
  | succ m ih =>
      intro i hi
      by_cases hc : CompanionIdealReductionContinues T
          (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m)
      · have hcont0 : CompanionIdealReductionContinues T (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) :=
          companionIdealReductionContinues_of_continues_iter hinv T (principalizationOfDimLe T A)
            (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m hc
        have hm : 2 ≤ T.mult :=
          two_le_mult_of_continues_after_nonMonomialOrderReduction hG hinv hspec hT hdim hcont0
        rw [companionIdealReductionIter_succ_of_continues hinv T (principalizationOfDimLe T A)
          (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m hc] at hi ⊢
        exact hasCenter_extendByCompanionIdeal hG hinv hspec hT hdim
          (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m) hc hm
          (fun j hj => ih j hj) i hi
      · rw [companionIdealReductionIter_succ_of_not_continues hinv T (principalizationOfDimLe T A)
          (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m hc] at hi ⊢
        exact ih i hi

theorem not_companionIdealReductionContinues_companionIdealReduction (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u}) {n : ℕ}
    {A B : PrincipalizationAssignment.{u}} (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible) (hdim : T.krullDimSucc ≤ n) :
    ¬ CompanionIdealReductionContinues T (companionIdealReduction hinv T (principalizationOfDimLe T A)) := by
  intro h
  rw [companionIdealReduction_eq hinv T (principalizationOfDimLe T A)] at h
  have hle := maxOrderNonMonomialOnOrderLocus_iter_add_le hG hinv hspec hT hdim
    (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) (maxOrderNonMonomialOnOrderLocus T (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) + 1) h
  omega

theorem hasCenter_companionIdealReduction (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u}) {n : ℕ}
    {A B : PrincipalizationAssignment.{u}} (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (i : ℕ)
    (hi : i < (companionIdealReduction hinv T (principalizationOfDimLe T A)).length) :
    HasPrincipalizationCenter T.mult ((companionIdealReduction hinv T (principalizationOfDimLe T A)).dataAt i) := by
  rw [companionIdealReduction_eq hinv T (principalizationOfDimLe T A)] at hi ⊢
  exact hasCenter_companionIdealReductionIter hG hinv hspec hT hdim
    (maxOrderNonMonomialOnOrderLocus T (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) + 1) i hi

theorem orderAt_lastNonMonomialPart_companionIdealReduction_eq_zero (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    {n : ℕ} {A B : PrincipalizationAssignment.{u}} (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible) (hdim : T.krullDimSucc ≤ n) :
    ∀ x ∈ orderAtLeastLocus ((companionIdealReduction hinv T (principalizationOfDimLe T A)).ideal
        (companionIdealReduction hinv T (principalizationOfDimLe T A)).length) T.mult,
      orderAt (lastNonMonomialPart T (companionIdealReduction hinv T (principalizationOfDimLe T A))) x = 0 := by
  have hnc := not_companionIdealReductionContinues_companionIdealReduction hG hinv hspec hT hdim
  have hzero : maxOrderNonMonomialOnOrderLocus T (companionIdealReduction hinv T (principalizationOfDimLe T A)) = 0 := by
    by_contra hne
    exact hnc ((companionIdealReductionContinues_iff T (companionIdealReduction hinv T (principalizationOfDimLe T A))).mpr
      (Nat.one_le_iff_ne_zero.mpr hne))
  obtain ⟨Bd, hBd⟩ := exists_orderAt_lastNonMonomialPart_le hG hT (companionIdealReduction hinv T (principalizationOfDimLe T A))
  have hpi : maxOrderNonMonomialOnOrderLocus T (companionIdealReduction hinv T (principalizationOfDimLe T A)) =
      maxOrderOn (lastNonMonomialPart T (companionIdealReduction hinv T (principalizationOfDimLe T A)))
        (orderAtLeastLocus ((companionIdealReduction hinv T (principalizationOfDimLe T A)).ideal
          (companionIdealReduction hinv T (principalizationOfDimLe T A)).length) T.mult) := rfl
  rw [hpi] at hzero
  exact (maxOrderOn_eq_zero_iff (lastNonMonomialPart T (companionIdealReduction hinv T (principalizationOfDimLe T A))) hBd
    (orderAtLeastLocus ((companionIdealReduction hinv T (principalizationOfDimLe T A)).ideal
      (companionIdealReduction hinv T (principalizationOfDimLe T A)).length) T.mult)).mp hzero

private theorem foldr_ofFn_mul_eq_prod {X : Scheme.{u}} (m : ℕ)
    (g : Fin m → X.IdealSheafData) :
    (List.ofFn g).foldr (· * ·) ⊤ = ∏ i, g i := by
  induction m with
  | zero =>
      have h1 : List.ofFn g = [] := by simp
      rw [h1, List.foldr_nil, Fin.prod_univ_zero]
      exact Scheme.IdealSheafData.one_eq_top.symm
  | succ p ih =>
      rw [List.ofFn_succ, List.foldr_cons, ih, Fin.prod_univ_succ]

theorem isLocallyMonomialTriple_tripleAtLength_companionIdealReduction (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    {n : ℕ} {A B : PrincipalizationAssignment.{u}} (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    {T : MarkedIdealWithBoundary.{u}} (hT : T.IsAdmissible) (hdim : T.krullDimSucc ≤ n) :
    MonomialCenter.IsLocallyMonomialTriple
      (tripleAtLength T (companionIdealReduction hinv T (principalizationOfDimLe T A))
        ((companionIdealReduction hinv T (principalizationOfDimLe T A)).ideal (companionIdealReduction hinv T (principalizationOfDimLe T A)).length) T.mult) := by
  refine ⟨isAdmissible_tripleAtLength hG hT (companionIdealReduction hinv T (principalizationOfDimLe T A)), ?_⟩
  intro x hx
  have hx' : x ∈ orderAtLeastLocus ((companionIdealReduction hinv T (principalizationOfDimLe T A)).ideal
      (companionIdealReduction hinv T (principalizationOfDimLe T A)).length) T.mult := hx
  have hzero := orderAt_lastNonMonomialPart_companionIdealReduction_eq_zero hG hinv hspec hT hdim x hx'
  obtain ⟨U, e, hxU, hU⟩ :=
    (isMonomialSplitting_lastNonMonomialPart hG hT
      (companionIdealReduction hinv T (principalizationOfDimLe T A))).exists_comap_eq_prod_pow_of_orderAt_eq_zero hzero
  exact ⟨U, hxU, e, hU.trans (foldr_ofFn_mul_eq_prod _ _).symm⟩

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.CompanionIdealReduction =====
