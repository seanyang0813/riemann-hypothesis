module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderReductionAlgorithm

@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

section

def lastNonMonomialPart (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) :
    (s.obj s.length).IdealSheafData :=
  nonMonomialPart (s.boundary s.length) (s.ideal s.length)

def maxOrderNonMonomial (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) : ℕ :=
  maxOrder (lastNonMonomialPart T s)

def NonMonomialOrderReductionContinues (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) : Prop :=
  T.mult ≤ maxOrderNonMonomial T s ∧
    (orderAtLeastLocus (lastNonMonomialPart T s) (maxOrderNonMonomial T s)).Nonempty

theorem nonMonomialOrderReductionContinues_iff (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) :
    NonMonomialOrderReductionContinues T s ↔
      T.mult ≤ maxOrderNonMonomial T s ∧
        (orderAtLeastLocus (lastNonMonomialPart T s) (maxOrderNonMonomial T s)).Nonempty :=
  Iff.rfl

def maxOrderNonMonomialOnOrderLocus (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) : ℕ :=
  maxOrderOn (lastNonMonomialPart T s) (orderAtLeastLocus (s.ideal s.length) T.mult)

def CompanionIdealReductionContinues (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) : Prop :=
  1 ≤ maxOrderNonMonomialOnOrderLocus T s

theorem companionIdealReductionContinues_iff (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) :
    CompanionIdealReductionContinues T s ↔ 1 ≤ maxOrderNonMonomialOnOrderLocus T s :=
  Iff.rfl

def companionIdeal (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) :
    (s.obj s.length).IdealSheafData :=
  lastNonMonomialPart T s ^ T.mult ⊔ s.ideal s.length ^ maxOrderNonMonomialOnOrderLocus T s

theorem tripleAtLength_dim (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ) :
    (tripleAtLength T s J μ).krullDimSucc = krullDimSucc (s.obj s.length) :=
  rfl

end

section

def principalizationSeqAtEnd (T : MarkedIdealWithBoundary.{u})
    (rc : ∀ S : MarkedIdealWithBoundary.{u}, S.krullDimSucc ≤ T.krullDimSucc → S.SequenceOfBlowups)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ)
    (hd : (tripleAtLength T s J μ).krullDimSucc ≤ T.krullDimSucc) :
    MarkedSequenceOfBlowups (s.proj s.length ≫ T.structMap) J μ (s.boundary s.length) :=
  rc (tripleAtLength T s J μ) hd

theorem appendRecursivePrincipalization_eq_appendIfMarked (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (rc : ∀ S : MarkedIdealWithBoundary.{u}, S.krullDimSucc ≤ T.krullDimSucc → S.SequenceOfBlowups)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ)
    (hd : (tripleAtLength T s J μ).krullDimSucc ≤ T.krullDimSucc) :
    appendRecursivePrincipalization hinv T rc s J μ = appendIfMarked hinv s J μ (principalizationSeqAtEnd T rc s J μ hd) := by
  unfold appendRecursivePrincipalization principalizationSeqAtEnd
  rw [dif_pos hd]

theorem appendRecursivePrincipalization_eq_append (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (rc : ∀ S : MarkedIdealWithBoundary.{u}, S.krullDimSucc ≤ T.krullDimSucc → S.SequenceOfBlowups)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ)
    (hd : (tripleAtLength T s J μ).krullDimSucc ≤ T.krullDimSucc)
    (hm : (MarkedBlowupSequenceData.ofMarkedSequence (principalizationSeqAtEnd T rc s J μ hd)).toBlowupSequenceData.IsMarked
      (s.proj s.length ≫ T.structMap) (s.ideal s.length) T.mult (s.boundary s.length)) :
    appendRecursivePrincipalization hinv T rc s J μ =
      s.append
        ((MarkedBlowupSequenceData.ofMarkedSequence (principalizationSeqAtEnd T rc s J μ hd)).toBlowupSequenceData.toMarkedBlowupSequenceData
          (s.proj s.length ≫ T.structMap) (s.ideal s.length) T.mult (s.boundary s.length) hm)
        hinv := by
  have hr : markedDataOfSeq s J μ (principalizationSeqAtEnd T rc s J μ hd) =
      some ((MarkedBlowupSequenceData.ofMarkedSequence (principalizationSeqAtEnd T rc s J μ hd)).toBlowupSequenceData.toMarkedBlowupSequenceData
        (s.proj s.length ≫ T.structMap) (s.ideal s.length) T.mult (s.boundary s.length) hm) := by
    unfold markedDataOfSeq
    exact dif_pos hm
  rw [appendRecursivePrincipalization_eq_appendIfMarked hinv T rc s J μ hd]
  unfold appendIfMarked
  rw [hr]

end

section

variable (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
  (rc : ∀ S : MarkedIdealWithBoundary.{u}, S.krullDimSucc ≤ T.krullDimSucc → S.SequenceOfBlowups)

def extendByNonMonomialPart (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) :
    MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary :=
  appendRecursivePrincipalization hinv T rc s (lastNonMonomialPart T s) (maxOrderNonMonomial T s)

def extendByCompanionIdeal (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) :
    MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary :=
  appendRecursivePrincipalization hinv T rc s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)

theorem nonMonomialOrderReductionIter_zero :
    nonMonomialOrderReductionIter hinv T rc 0 = emptyMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary :=
  rfl

theorem nonMonomialOrderReductionIter_succ_of_continues (f : ℕ) (h : NonMonomialOrderReductionContinues T (nonMonomialOrderReductionIter hinv T rc f)) :
    nonMonomialOrderReductionIter hinv T rc (f + 1) = extendByNonMonomialPart hinv T rc (nonMonomialOrderReductionIter hinv T rc f) := by
  rw [nonMonomialOrderReductionIter]
  exact if_pos h

theorem nonMonomialOrderReductionIter_succ_of_not_continues (f : ℕ) (h : ¬ NonMonomialOrderReductionContinues T (nonMonomialOrderReductionIter hinv T rc f)) :
    nonMonomialOrderReductionIter hinv T rc (f + 1) = nonMonomialOrderReductionIter hinv T rc f := by
  rw [nonMonomialOrderReductionIter]
  exact if_neg h

theorem nonMonomialOrderReductionIter_eq_of_not_continues (f : ℕ) (h : ¬ NonMonomialOrderReductionContinues T (nonMonomialOrderReductionIter hinv T rc f)) :
    ∀ g, f ≤ g → nonMonomialOrderReductionIter hinv T rc g = nonMonomialOrderReductionIter hinv T rc f := by
  intro g hg
  induction g, hg using Nat.le_induction with
  | base => rfl
  | succ n hn ih =>
    have hn' : ¬ NonMonomialOrderReductionContinues T (nonMonomialOrderReductionIter hinv T rc n) := by
      rw [ih]
      exact h
    rw [nonMonomialOrderReductionIter_succ_of_not_continues hinv T rc n hn']
    exact ih

theorem nonMonomialOrderReduction_eq :
    nonMonomialOrderReduction hinv T rc =
      nonMonomialOrderReductionIter hinv T rc (maxOrder (nonMonomialPart T.boundary T.ideal) + 1) :=
  rfl

theorem companionIdealReductionIter_zero (s₀ : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) :
    companionIdealReductionIter hinv T rc s₀ 0 = s₀ :=
  rfl

theorem companionIdealReductionIter_succ_of_continues (s₀ : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (f : ℕ) (h : CompanionIdealReductionContinues T (companionIdealReductionIter hinv T rc s₀ f)) :
    companionIdealReductionIter hinv T rc s₀ (f + 1) =
      extendByCompanionIdeal hinv T rc (companionIdealReductionIter hinv T rc s₀ f) := by
  rw [companionIdealReductionIter]
  exact if_pos h

theorem companionIdealReductionIter_succ_of_not_continues
    (s₀ : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (f : ℕ) (h : ¬ CompanionIdealReductionContinues T (companionIdealReductionIter hinv T rc s₀ f)) :
    companionIdealReductionIter hinv T rc s₀ (f + 1) = companionIdealReductionIter hinv T rc s₀ f := by
  rw [companionIdealReductionIter]
  exact if_neg h

theorem companionIdealReductionIter_eq_of_not_continues
    (s₀ : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (f : ℕ) (h : ¬ CompanionIdealReductionContinues T (companionIdealReductionIter hinv T rc s₀ f)) :
    ∀ g, f ≤ g → companionIdealReductionIter hinv T rc s₀ g = companionIdealReductionIter hinv T rc s₀ f := by
  intro g hg
  induction g, hg using Nat.le_induction with
  | base => rfl
  | succ n hn ih =>
    have hn' : ¬ CompanionIdealReductionContinues T (companionIdealReductionIter hinv T rc s₀ n) := by
      rw [ih]
      exact h
    rw [companionIdealReductionIter_succ_of_not_continues hinv T rc s₀ n hn']
    exact ih

theorem companionIdealReduction_eq :
    companionIdealReduction hinv T rc =
      companionIdealReductionIter hinv T rc (nonMonomialOrderReduction hinv T rc)
        (maxOrderNonMonomialOnOrderLocus T (nonMonomialOrderReduction hinv T rc) + 1) :=
  rfl

theorem orderReductionData_eq :
    orderReductionData hinv T rc =
      (companionIdealReduction hinv T rc).append
        (MarkedBlowupSequenceData.ofMarkedSequence
          (monomialPrincipalization hinv
            (tripleAtLength T (companionIdealReduction hinv T rc)
              ((companionIdealReduction hinv T rc).ideal (companionIdealReduction hinv T rc).length) T.mult)))
        hinv :=
  rfl

theorem orderReductionSeq_eq_of_nonempty (h : (orderAtLeastLocus T.ideal T.mult).Nonempty) :
    orderReductionSeq hinv T rc = (orderReductionData hinv T rc).toMarkedSequenceOfBlowups := by
  unfold orderReductionSeq
  rw [if_neg h.ne_empty]

end

end FunctorialResolution.EmbeddedResolution

end
