module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MarkedPullbackSquare
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.NonMonomialOrderReduction
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.SequenceOfBlowupsPullback
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.BlowupDataOfSequence
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.CompanionIdealReduction
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.DisjointCentersPullback
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MapToEarlierScheme
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderReductionResolution
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderAlongBlowupSequence
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.RecursivePrincipalizationPullback, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderReductionBaseChange

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.RecursivePrincipalizationPullback =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.RecursivePrincipalizationPullback", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MarkedPullbackSquare\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.NonMonomialOrderReduction\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.SequenceOfBlowupsPullback\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.BlowupDataOfSequence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.CompanionIdealReduction\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.DisjointCentersPullback\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderAlongBlowupSequence\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private def markedPullbackSquareId {T : MarkedIdealWithBoundary.{u}} {Y : Scheme.{u}} (g : Y ⟶ T.scheme)
    (hT : T.IsAdmissible) : MarkedPullbackSquare T g where
  baseScheme := T.scheme
  topScheme := Y
  bottom := 𝟙 T.scheme
  structMap := T.structMap
  ideal := T.ideal
  mult := T.mult
  boundary := T.boundary
  left := g
  top := 𝟙 Y
  bottom_structMap := Category.id_comp T.structMap
  dim_le := le_rfl
  isPullback := (IsPullback.of_horiz_isIso ⟨by simp⟩).flip
  valid := hT

theorem orderAt_comap_of_baseChangeCompatible (hinv : ComapIsoInvariance.{u}) (F : PrincipalizationAssignment.{u}) (n : ℕ)
    (T : MarkedIdealWithBoundary.{u}) (hT : T.IsAdmissible) {Y : Scheme.{u}} (g : Y ⟶ T.scheme)
    (k' : Type u) [Field k'] (q : Y ⟶ Spec (CommRingCat.of k'))
    (hbc : BaseChangeCompatible hinv F n T g k' q)
    (A : T.scheme.IdealSheafData) (y : ↥Y) :
    orderAt (A.comap g) y = orderAt A (g.base y) :=
  MarkedPullbackSquare.orderAt_comap_verticalMap (markedPullbackSquareId g hT) hT hbc.order A y

theorem orderAtLeastLocus_comap_eq_empty_of_baseChangeCompatible (hinv : ComapIsoInvariance.{u})
    (F : PrincipalizationAssignment.{u}) (n : ℕ) (T : MarkedIdealWithBoundary.{u}) (hT : T.IsAdmissible)
    {Y : Scheme.{u}} (g : Y ⟶ T.scheme) (k' : Type u) [Field k']
    (q : Y ⟶ Spec (CommRingCat.of k')) (hbc : BaseChangeCompatible hinv F n T g k' q)
    (h : orderAtLeastLocus T.ideal T.mult = ∅) :
    orderAtLeastLocus (T.ideal.comap g) T.mult = ∅ := by
  refine Set.eq_empty_of_subset_empty ?_
  intro y hy
  have hy' := (mem_orderAtLeastLocus_iff (T.ideal.comap g) T.mult y).1 hy
  rw [orderAt_comap_of_baseChangeCompatible hinv F n T hT g k' q hbc T.ideal y] at hy'
  have hmem := (mem_orderAtLeastLocus_iff T.ideal T.mult _).2 hy'
  rw [h] at hmem
  simp only [Set.mem_empty_iff_false] at hmem

private theorem transformAt_eq_mk (T : MarkedIdealWithBoundary.{u}) (s : T.SequenceOfBlowups) (i : ℕ) :
    T.transformAt s i =
      MarkedIdealWithBoundary.mk T.base (s.schemeAt i) (s.projectionToBase i ≫ T.structMap) (s.ideal i) T.mult
        (s.boundary i) := rfl

theorem MonomialGeometryHypotheses.krullDimSucc_schemeAt_length_le_dim (hmg : MonomialGeometryHypotheses.{u})
    (T : MarkedIdealWithBoundary.{u}) (hT : T.IsAdmissible)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) :
    krullDimSucc (s.obj s.length) ≤ T.krullDimSucc :=
  hmg.level_schemeDim_le T hT s.toMarkedSequenceOfBlowups s.length le_rfl

theorem MonomialGeometryHypotheses.isAdmissible_tripleAtLength (hmg : MonomialGeometryHypotheses.{u}) (T : MarkedIdealWithBoundary.{u})
    (hT : T.IsAdmissible) (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) :
    (MarkedIdealWithBoundary.mk T.base (s.obj s.length) (s.proj s.length ≫ T.structMap)
      (s.ideal s.length) T.mult (s.boundary s.length)).IsAdmissible := by
  have h := hmg.level_valid T hT s.toMarkedSequenceOfBlowups s.length le_rfl
  rw [transformAt_eq_mk T s.toMarkedSequenceOfBlowups s.length,
    _root_.FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.toMarkedSequence_projectionToBase s s.length] at h
  exact h

private theorem isAdmissible_mk_congr {k : Type u} [Field k] {X : Scheme.{u}}
    {p : X ⟶ Spec (CommRingCat.of k)} {I₁ I₂ : X.IdealSheafData} {m₁ m₂ : ℕ}
    {E : List X.IdealSheafData} (hI : I₁ = I₂) (hm : m₁ = m₂)
    (h : (MarkedIdealWithBoundary.mk k X p I₁ m₁ E).IsAdmissible) : (MarkedIdealWithBoundary.mk k X p I₂ m₂ E).IsAdmissible := by
  subst hI
  subst hm
  exact h

def SequenceOfBlowupsPullback.toMarkedPullbackSquare {T T' : MarkedIdealWithBoundary.{u}} (g : T'.scheme ⟶ T.scheme)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hdim : krullDimSucc (s.obj s.length) ≤ T.krullDimSucc)
    (hval : (MarkedIdealWithBoundary.mk T.base (s.obj s.length) (s.proj s.length ≫ T.structMap)
      (s.ideal s.length) T.mult (s.boundary s.length)).IsAdmissible) :
    MarkedPullbackSquare T g where
  baseScheme := s.obj s.length
  topScheme := s'.obj s'.length
  bottom := s.proj s.length
  structMap := s.proj s.length ≫ T.structMap
  ideal := s.ideal s.length
  mult := T.mult
  boundary := s.boundary s.length
  left := c.lastMap
  top := s'.proj s'.length
  bottom_structMap := rfl
  dim_le := hdim
  isPullback := by
    have h := c.isPullback_lastMap
    rwa [_root_.FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.toMarkedSequence_projectionToBase, _root_.FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.toMarkedSequence_projectionToBase] at h
  valid := hval

theorem lastNonMonomialPart_eq_comap_lastMap_of_pullback (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A : PrincipalizationAssignment.{u}) (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (_hdim : T.krullDimSucc ≤ n) (_hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (_hideal : T'.ideal = T.ideal.comap g)
    (_hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hlastIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap)) :
    lastNonMonomialPart T' s' = (lastNonMonomialPart T s).comap c.lastMap := by
  have hmg := hG.monomialInputs
  have hdimS := MonomialGeometryHypotheses.krullDimSucc_schemeAt_length_le_dim hmg T hT s
  have hvalS := MonomialGeometryHypotheses.isAdmissible_tripleAtLength hmg T hT s
  have hvalS'0 := MonomialGeometryHypotheses.isAdmissible_tripleAtLength hmg T' hT' s'
  have hvalS' := isAdmissible_mk_congr hlastIdeal hmult hvalS'0
  have hmain := hbc.nonMonomial (SequenceOfBlowupsPullback.toMarkedPullbackSquare g s s' c hdimS hvalS)
    (s'.boundary s'.length) hsameBoundary.symm hvalS'
  have h0 : lastNonMonomialPart T' s' = nonMonomialPart (s'.boundary s'.length) (s'.ideal s'.length) :=
    rfl
  have h1 : lastNonMonomialPart T s = nonMonomialPart (s.boundary s.length) (s.ideal s.length) := rfl
  rw [h0, h1, hlastIdeal]
  exact hmain

theorem maxOrderNonMonomial_le_of_pullback (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A : PrincipalizationAssignment.{u}) (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hlastIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap)) :
    maxOrderNonMonomial T' s' ≤ maxOrderNonMonomial T s := by
  have key : lastNonMonomialPart T' s' = (lastNonMonomialPart T s).comap c.lastMap :=
    lastNonMonomialPart_eq_comap_lastMap_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult hideal
      hbdry hbc s s' c hlastIdeal hsameBoundary
  have hvalid : (MarkedIdealWithBoundary.mk T.base (s.obj s.length) (s.toMarkedSequenceOfBlowups.projectionToSpec s.length)
      (s.ideal s.length) T.mult (s.boundary s.length)).IsAdmissible :=
    hG.monomialInputs.level_valid T hT s.toMarkedSequenceOfBlowups s.length le_rfl
  have hord : ∀ (J : (s.obj s.length).IdealSheafData) (y : ↥(s'.obj s'.length)),
      orderAt (J.comap c.lastMap) y = orderAt J (c.lastMap.base y) :=
    hbc.order (s.obj s.length) (s.toMarkedSequenceOfBlowups.toSequenceOfBlowups.projectionToBase s.length)
      (s.toMarkedSequenceOfBlowups.projectionToSpec s.length) (s.ideal s.length) (s.boundary s.length) hvalid
      (MarkedSequenceOfBlowups.projectionToSpec_eq s.toMarkedSequenceOfBlowups s.length).symm
      (s'.obj s'.length) c.lastMap (s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups.projectionToBase s'.length)
      c.isPullback_lastMap
  have hmain : ∀ y : ↥(s'.obj s'.length),
      orderAt (lastNonMonomialPart T' s') y ≤ (maxOrderNonMonomial T s : ℕ∞) := by
    intro y
    have h1 : orderAt (lastNonMonomialPart T' s') y
        = orderAt (lastNonMonomialPart T s) (c.lastMap.base y) :=
      (congrArg (fun I : (s'.obj s'.length).IdealSheafData => orderAt I y) key).trans
        (hord (lastNonMonomialPart T s) y)
    exact le_of_eq_of_le h1
      (orderAt_lastNonMonomialPart_le_maxOrderNonMonomial hG hT s (c.lastMap.base y))
  show sSup {m : ℕ | ∃ x : ↥(s'.obj s'.length), (m : ℕ∞) ≤ orderAt (lastNonMonomialPart T' s') x}
      ≤ maxOrderNonMonomial T s
  refine csSup_le' ?_
  intro m hm
  obtain ⟨y, hy⟩ := hm
  have hcast : (m : ℕ∞) ≤ (maxOrderNonMonomial T s : ℕ∞) := hy.trans (hmain y)
  exact_mod_cast hcast

private theorem maxOrderOn_le_of_forall {X : Scheme.{u}} (N : X.IdealSheafData) (S : Set ↥X)
    (K : ℕ) (h : ∀ m : ℕ, ∀ x ∈ S, (m : ℕ∞) ≤ orderAt N x → m ≤ K) :
    maxOrderOn N S ≤ K := by
  unfold maxOrderOn
  refine csSup_le' ?_
  intro m hmem
  obtain ⟨x, hx, hmx⟩ := hmem
  exact h m x hx hmx

theorem maxOrderNonMonomialOnOrderLocus_le_of_pullback (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A : PrincipalizationAssignment.{u}) (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hlastIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap)) :
    maxOrderNonMonomialOnOrderLocus T' s' ≤ maxOrderNonMonomialOnOrderLocus T s := by
  have hmg := hG.monomialInputs
  have hdimS := MonomialGeometryHypotheses.krullDimSucc_schemeAt_length_le_dim hmg T hT s
  have hvalS := MonomialGeometryHypotheses.isAdmissible_tripleAtLength hmg T hT s
  have hordLast : ∀ (Aid : (s.obj s.length).IdealSheafData) (y : ↥(s'.obj s'.length)),
      orderAt (Aid.comap c.lastMap) y = orderAt Aid (c.lastMap.base y) :=
    fun Aid y =>
      MarkedPullbackSquare.orderAt_comap_verticalMap (SequenceOfBlowupsPullback.toMarkedPullbackSquare g s s' c hdimS hvalS) hT
        hbc.order Aid y
  have hnonMon : lastNonMonomialPart T' s' = (lastNonMonomialPart T s).comap c.lastMap :=
    lastNonMonomialPart_eq_comap_lastMap_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult hideal
      hbdry hbc s s' c hlastIdeal hsameBoundary
  have hmain : maxOrderNonMonomialOnOrderLocus T' s' =
      maxOrderOn (lastNonMonomialPart T' s') (orderAtLeastLocus (s'.ideal s'.length) T'.mult) := rfl
  rw [hmain]
  refine maxOrderOn_le_of_forall _ _ _ ?_
  intro m x' hx' hm
  have hEq1 : orderAt (s'.ideal s'.length) x' = orderAt (s.ideal s.length) (c.lastMap.base x') :=
    (congrArg (fun I => orderAt I x') hlastIdeal).trans (hordLast (s.ideal s.length) x')
  have hEq2 : orderAt (lastNonMonomialPart T' s') x'
      = orderAt (lastNonMonomialPart T s) (c.lastMap.base x') :=
    (congrArg (fun I => orderAt I x') hnonMon).trans (hordLast (lastNonMonomialPart T s) x')
  have h1 : ((T'.mult : ℕ) : ℕ∞) ≤ orderAt (s'.ideal s'.length) x' :=
    (mem_orderAtLeastLocus_iff _ _ _).1 hx'
  have hmult' : ((T.mult : ℕ) : ℕ∞) = ((T'.mult : ℕ) : ℕ∞) := by rw [hmult]
  have h3 : ((T.mult : ℕ) : ℕ∞) ≤ orderAt (s.ideal s.length) (c.lastMap.base x') :=
    hmult'.trans_le (h1.trans_eq hEq1)
  have hxmem : c.lastMap.base x' ∈ orderAtLeastLocus (s.ideal s.length) T.mult :=
    (mem_orderAtLeastLocus_iff _ _ _).2 h3
  have hle := orderAt_lastNonMonomialPart_le_maxOrderNonMonomialOnOrderLocus hG hT s (c.lastMap.base x') hxmem
  have hfin : ((m : ℕ) : ℕ∞) ≤ ((maxOrderNonMonomialOnOrderLocus T s : ℕ) : ℕ∞) := (hm.trans_eq hEq2).trans hle
  exact_mod_cast hfin

private theorem orderAtLeastLocus_sSup_nonempty {X : Scheme.{u}} (N : X.IdealSheafData)
    (x₀ : ↥X)
    (hbound : ∀ x : ↥X,
      orderAt N x ≤ ((sSup {m : ℕ | ∃ y : ↥X, (m : ℕ∞) ≤ orderAt N y} : ℕ) : ℕ∞)) :
    (orderAtLeastLocus N (sSup {m : ℕ | ∃ y : ↥X, (m : ℕ∞) ≤ orderAt N y})).Nonempty := by
  have hne : {m : ℕ | ∃ y : ↥X, (m : ℕ∞) ≤ orderAt N y}.Nonempty := by
    refine ⟨0, x₀, ?_⟩
    simp
  have hbdd : BddAbove {m : ℕ | ∃ y : ↥X, (m : ℕ∞) ≤ orderAt N y} := by
    refine ⟨sSup {m : ℕ | ∃ y : ↥X, (m : ℕ∞) ≤ orderAt N y}, ?_⟩
    intro m hm
    obtain ⟨y, hy⟩ := hm
    have h := hy.trans (hbound y)
    exact_mod_cast h
  obtain ⟨y, hy⟩ := Nat.sSup_mem hne hbdd
  exact ⟨y, (mem_orderAtLeastLocus_iff N _ y).2 hy⟩

theorem nonMonomialOrderReductionContinues_of_pullback (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A : PrincipalizationAssignment.{u}) (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hlastIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap))
    (hcont : NonMonomialOrderReductionContinues T' s') : NonMonomialOrderReductionContinues T s := by
  have hle : maxOrderNonMonomial T' s' ≤ maxOrderNonMonomial T s :=
    maxOrderNonMonomial_le_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult hideal hbdry hbc s s'
      c hlastIdeal hsameBoundary
  unfold NonMonomialOrderReductionContinues at hcont ⊢
  obtain ⟨h1, h2⟩ := hcont
  obtain ⟨x', -⟩ := h2
  rw [hmult] at h1
  refine ⟨le_trans h1 hle, ?_⟩
  have hbound : ∀ x : ↥(s.obj s.length),
      orderAt (lastNonMonomialPart T s) x ≤ ((maxOrderNonMonomial T s : ℕ) : ℕ∞) :=
    fun x => orderAt_lastNonMonomialPart_le_maxOrderNonMonomial hG hT s x
  exact orderAtLeastLocus_sSup_nonempty (lastNonMonomialPart T s) (c.lastMap.base x') hbound

theorem companionIdealReductionContinues_of_pullback (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A : PrincipalizationAssignment.{u}) (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hlastIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap))
    (hcont : CompanionIdealReductionContinues T' s') : CompanionIdealReductionContinues T s := by
  have hle : maxOrderNonMonomialOnOrderLocus T' s' ≤ maxOrderNonMonomialOnOrderLocus T s :=
    maxOrderNonMonomialOnOrderLocus_le_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult hideal hbdry hbc
      s s' c hlastIdeal hsameBoundary
  unfold CompanionIdealReductionContinues at hcont ⊢
  omega

private theorem comap_pow_sup_pow {A B : Scheme.{u}} (f : A ⟶ B) (N J : B.IdealSheafData)
    (a b : ℕ) : (N ^ a ⊔ J ^ b).comap f = (N.comap f) ^ a ⊔ (J.comap f) ^ b := by
  simp only [Scheme.IdealSheafData.comap_sup, Scheme.IdealSheafData.comap_pow]

private theorem pow_sup_pow_eq_comap_pow_sup_pow {A B : Scheme.{u}} (f : A ⟶ B)
    (N₁ N₂ : B.IdealSheafData) (M₁ M₂ : A.IdealSheafData) (a a' b b' : ℕ)
    (h₁ : M₁ = N₁.comap f) (h₂ : M₂ = N₂.comap f) (ha : a = a') (hb : b = b') :
    M₁ ^ a ⊔ M₂ ^ b = (N₁ ^ a' ⊔ N₂ ^ b').comap f := by
  subst h₁
  subst h₂
  subst ha
  subst hb
  exact (comap_pow_sup_pow f N₁ N₂ _ _).symm

theorem companionIdeal_eq_comap_lastMap_of_pullback (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A : PrincipalizationAssignment.{u}) (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hlastIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap))
    (hinveq : maxOrderNonMonomialOnOrderLocus T' s' = maxOrderNonMonomialOnOrderLocus T s) :
    companionIdeal T' s' = (companionIdeal T s).comap c.lastMap := by
  have hnonMon := lastNonMonomialPart_eq_comap_lastMap_of_pullback hG hinv n A T T' g hT hT' hdim hdim'
    hmult hideal hbdry hbc s s' c hlastIdeal hsameBoundary
  unfold companionIdeal
  exact pow_sup_pow_eq_comap_pow_sup_pow _ _ _ _ _ T'.mult T.mult (maxOrderNonMonomialOnOrderLocus T' s') (maxOrderNonMonomialOnOrderLocus T s)
    hnonMon hlastIdeal hmult hinveq

private theorem appendRecursivePrincipalization_eq_self_of_eq_none (hinv : ComapIsoInvariance.{u})
    (T : MarkedIdealWithBoundary.{u}) (rc : (S : MarkedIdealWithBoundary.{u}) → S.krullDimSucc ≤ T.krullDimSucc → S.SequenceOfBlowups)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ)
    (hd : (tripleAtLength T s J μ).krullDimSucc ≤ T.krullDimSucc)
    (h : markedDataOfSeq s J μ (rc (tripleAtLength T s J μ) hd) = none) :
    appendRecursivePrincipalization hinv T rc s J μ = s := by
  have h1 : appendRecursivePrincipalization hinv T rc s J μ = appendIfMarked hinv s J μ (rc (tripleAtLength T s J μ) hd) := by
    unfold appendRecursivePrincipalization
    exact dite_eq_left hd
  rw [h1]
  unfold appendIfMarked
  rw [h]

private theorem appendRecursivePrincipalization_eq_append_of_eq_some (hinv : ComapIsoInvariance.{u})
    (T : MarkedIdealWithBoundary.{u}) (rc : (S : MarkedIdealWithBoundary.{u}) → S.krullDimSucc ≤ T.krullDimSucc → S.SequenceOfBlowups)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ)
    (hd : (tripleAtLength T s J μ).krullDimSucc ≤ T.krullDimSucc)
    (d : MarkedBlowupSequenceData (s.proj s.length ≫ T.structMap) (s.ideal s.length) T.mult
      (s.boundary s.length))
    (h : markedDataOfSeq s J μ (rc (tripleAtLength T s J μ) hd) = some d) :
    appendRecursivePrincipalization hinv T rc s J μ = s.append d hinv := by
  have h1 : appendRecursivePrincipalization hinv T rc s J μ = appendIfMarked hinv s J μ (rc (tripleAtLength T s J μ) hd) := by
    unfold appendRecursivePrincipalization
    exact dite_eq_left hd
  rw [h1]
  unfold appendIfMarked
  rw [h]

private def markedPullbackSquareAtLength (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ)
    (hdim : krullDimSucc (s.obj s.length) ≤ T.krullDimSucc)
    (hJ : (tripleAtLength T s J μ).IsAdmissible) :
    MarkedPullbackSquare T g where
  baseScheme := s.obj s.length
  topScheme := s'.obj s'.length
  bottom := s.proj s.length
  structMap := s.proj s.length ≫ T.structMap
  ideal := J
  mult := μ
  boundary := s.boundary s.length
  left := c.lastMap
  top := s'.proj s'.length
  bottom_structMap := rfl
  dim_le := hdim
  isPullback := by
    have h := c.isPullback_lastMap
    rwa [_root_.FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.toMarkedSequence_projectionToBase, _root_.FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.toMarkedSequence_projectionToBase] at h
  valid := hJ

private theorem nonempty_sequenceOfBlowupsPullback_of_markedDataOfSeq {k₁ k₂ : Type u} [Field k₁] [Field k₂]
    {X Y : Scheme.{u}} {p : X ⟶ Spec (CommRingCat.of k₁)} {q : Y ⟶ Spec (CommRingCat.of k₂)}
    {I : X.IdealSheafData} {m : ℕ} {E : List X.IdealSheafData}
    {I' : Y.IdealSheafData} {m' : ℕ} {E' : List Y.IdealSheafData}
    (s : MarkedBlowupSequenceData p I m E) (s' : MarkedBlowupSequenceData q I' m' E')
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ)
    (K : (s'.obj s'.length).IdealSheafData) (ν : ℕ)
    (f : s'.obj s'.length ⟶ s.obj s.length)
    (σ : MarkedSequenceOfBlowups (s.proj s.length ≫ p) J μ (s.boundary s.length))
    (σ' : MarkedSequenceOfBlowups (s'.proj s'.length ≫ q) K ν (s'.boundary s'.length))
    (d : MarkedBlowupSequenceData (s.proj s.length ≫ p) (s.ideal s.length) m (s.boundary s.length))
    (d' : MarkedBlowupSequenceData (s'.proj s'.length ≫ q) (s'.ideal s'.length) m' (s'.boundary s'.length))
    (hrem : markedDataOfSeq s J μ σ = some d) (hrem' : markedDataOfSeq s' K ν σ' = some d')
    (cc : SequenceOfBlowupsPullback f σ'.toSequenceOfBlowups σ.toSequenceOfBlowups) :
    Nonempty (SequenceOfBlowupsPullback f d'.toSequenceOfBlowups d.toSequenceOfBlowups) := by
  classical
  by_cases hm : (MarkedBlowupSequenceData.ofMarkedSequence σ).IsMarked (s.proj s.length ≫ p)
      (s.ideal s.length) m (s.boundary s.length)
  · by_cases hm' : (MarkedBlowupSequenceData.ofMarkedSequence σ').IsMarked (s'.proj s'.length ≫ q)
        (s'.ideal s'.length) m' (s'.boundary s'.length)
    · have he : markedDataOfSeq s J μ σ = some ((MarkedBlowupSequenceData.ofMarkedSequence σ).toMarkedBlowupSequenceData
          (s.proj s.length ≫ p) (s.ideal s.length) m (s.boundary s.length) hm) := by
        unfold markedDataOfSeq
        exact dite_eq_left hm
      have he' : markedDataOfSeq s' K ν σ' = some ((MarkedBlowupSequenceData.ofMarkedSequence σ').toMarkedBlowupSequenceData
          (s'.proj s'.length ≫ q) (s'.ideal s'.length) m' (s'.boundary s'.length) hm') := by
        unfold markedDataOfSeq
        exact dite_eq_left hm'
      have hdd := Option.some.inj (hrem.symm.trans he)
      have hdd' := Option.some.inj (hrem'.symm.trans he')
      subst hdd
      subst hdd'
      exact ⟨{
        idx := cc.idx
        map := SequenceOfBlowupsPullback.ofSequenceOfBlowupsMap cc
        idx_length := SequenceOfBlowupsPullback.index_ofSequenceOfBlowups_length cc
        idx_lt := SequenceOfBlowupsPullback.index_lt_ofSequenceOfBlowups_length cc
        idx_strictMono := SequenceOfBlowupsPullback.index_lt_index_succ_of_lt_length_ofSequenceOfBlowups cc
        isPullback := SequenceOfBlowupsPullback.isPullback_projectionToBase_ofSequenceOfBlowups cc
        step := SequenceOfBlowupsPullback.ofSequenceOfBlowups_blowupMorphism_comp_map cc
        center_comap := SequenceOfBlowupsPullback.center_ofSequenceOfBlowups_eq_comap cc
        center_ne_top := SequenceOfBlowupsPullback.center_ofSequenceOfBlowups_ne_top cc
        omitted := SequenceOfBlowupsPullback.ofSequenceOfBlowups_ne_of_mem_unmatched_center cc }⟩
    · have hnone : markedDataOfSeq s' K ν σ' = none := by
        unfold markedDataOfSeq
        exact dite_eq_right hm'
      exact absurd (hrem'.symm.trans hnone) (Option.some_ne_none d')
  · have hnone : markedDataOfSeq s J μ σ = none := by
      unfold markedDataOfSeq
      exact dite_eq_right hm
    exact absurd (hrem.symm.trans hnone) (Option.some_ne_none d)

theorem nonempty_sequenceOfBlowupsPullback_appendRecursive (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A B : PrincipalizationAssignment.{u}) (_hspec : IsOrderReduction (fun d => d ≤ n) A B)
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (_hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (_hmult : T'.mult = T.mult) (_hideal : T'.ideal = T.ideal.comap g)
    (_hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (_htopIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap))
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ)
    (hJ : (tripleAtLength T s J μ).IsAdmissible)
    (hJ' : (tripleAtLength T' s' (J.comap c.lastMap) μ).IsAdmissible)
    (hord : ∀ x : ↥(s.obj s.length), orderAt J x ≤ (μ : ℕ∞))
    (hmark : ∀ (h : (tripleAtLength T s J μ).krullDimSucc ≤ T.krullDimSucc)
      (h' : (tripleAtLength T' s' (J.comap c.lastMap) μ).krullDimSucc ≤ T'.krullDimSucc),
      markedDataOfSeq s J μ (principalizationOfDimLe T A (tripleAtLength T s J μ) h) = none ↔
        markedDataOfSeq s' (J.comap c.lastMap) μ
          (principalizationOfDimLe T' A (tripleAtLength T' s' (J.comap c.lastMap) μ) h') = none) :
    Nonempty (SequenceOfBlowupsPullback g
      (appendRecursivePrincipalization hinv T' (principalizationOfDimLe T' A) s' (J.comap c.lastMap) μ).toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (appendRecursivePrincipalization hinv T (principalizationOfDimLe T A) s J μ).toMarkedSequenceOfBlowups.toSequenceOfBlowups) := by
  classical
  have hmg := hG.monomialInputs
  have hdimS : krullDimSucc (s.obj s.length) ≤ T.krullDimSucc :=
    MonomialGeometryHypotheses.krullDimSucc_schemeAt_length_le_dim hmg T hT s
  have hdimS'T : krullDimSucc (s'.obj s'.length) ≤ T'.krullDimSucc :=
    MonomialGeometryHypotheses.krullDimSucc_schemeAt_length_le_dim hmg T' hT' s'
  have hdimS'n : krullDimSucc (s'.obj s'.length) ≤ n := le_trans hdimS'T hdim'
  have hd : (tripleAtLength T s J μ).krullDimSucc ≤ T.krullDimSucc := hdimS
  have hd' : (tripleAtLength T' s' (J.comap c.lastMap) μ).krullDimSucc ≤ T'.krullDimSucc := hdimS'T
  have hiff := hmark hd hd'
  cases hq : markedDataOfSeq s J μ (principalizationOfDimLe T A (tripleAtLength T s J μ) hd) with
  | none =>
      have hq2 : markedDataOfSeq s' (J.comap c.lastMap) μ
          (principalizationOfDimLe T' A (tripleAtLength T' s' (J.comap c.lastMap) μ) hd') = none := hiff.mp hq
      rw [appendRecursivePrincipalization_eq_self_of_eq_none hinv T (principalizationOfDimLe T A) s J μ hd hq,
        appendRecursivePrincipalization_eq_self_of_eq_none hinv T' (principalizationOfDimLe T' A) s' (J.comap c.lastMap) μ hd' hq2]
      exact ⟨c⟩
  | some d =>
      cases hq' : markedDataOfSeq s' (J.comap c.lastMap) μ
          (principalizationOfDimLe T' A (tripleAtLength T' s' (J.comap c.lastMap) μ) hd') with
      | none => exact absurd (hq.symm.trans (hiff.mpr hq')) (Option.some_ne_none d)
      | some d' =>
          have hrule : IsPullbackBlowupSequence c.lastMap
              (principalizationOfDimLe T' A (tripleAtLength T' s' (J.comap c.lastMap) μ) hd').toSequenceOfBlowups
              (principalizationOfDimLe T A (tripleAtLength T s J μ) hd).toSequenceOfBlowups :=
            hbc.rule (markedPullbackSquareAtLength T T' g s s' c J μ hdimS hJ) hord (s'.boundary s'.length)
              hsameBoundary.symm hJ' hdimS'n
          obtain ⟨cc⟩ := hrule.nonempty_sequenceOfBlowupsPullback
          obtain ⟨e⟩ := nonempty_sequenceOfBlowupsPullback_of_markedDataOfSeq s s' J μ (J.comap c.lastMap) μ
            c.lastMap (principalizationOfDimLe T A (tripleAtLength T s J μ) hd)
            (principalizationOfDimLe T' A (tripleAtLength T' s' (J.comap c.lastMap) μ) hd') d d' hq hq' cc
          rw [appendRecursivePrincipalization_eq_append_of_eq_some hinv T (principalizationOfDimLe T A) s J μ hd d hq,
            appendRecursivePrincipalization_eq_append_of_eq_some hinv T' (principalizationOfDimLe T' A) s' (J.comap c.lastMap) μ
              hd' d' hq']
          exact (isPullbackBlowupSequence_append_of_two_fields g s d s' d' hinv c e).nonempty_sequenceOfBlowupsPullback

private theorem base_comp_comp_apply {A B C D : Scheme.{u}} (f : A ⟶ B) (g : B ⟶ C) (h : C ⟶ D)
    (a : ↥A) : (f ≫ g ≫ h).base a = h.base (g.base (f.base a)) := rfl

private noncomputable def markedBlowupSequenceDataAtEndOfIsMarked {k : Type u} [Field k] {X : Scheme.{u}}
    {p : X ⟶ Spec (CommRingCat.of k)} {I : X.IdealSheafData} {m : ℕ} {E : List X.IdealSheafData}
    (s : MarkedBlowupSequenceData p I m E) (J : (s.obj s.length).IdealSheafData) (μ : ℕ)
    (σ : MarkedSequenceOfBlowups (s.proj s.length ≫ p) J μ (s.boundary s.length))
    (hm : (MarkedBlowupSequenceData.ofMarkedSequence σ).IsMarked (s.proj s.length ≫ p) (s.ideal s.length) m
      (s.boundary s.length)) :
    MarkedBlowupSequenceData (s.proj s.length ≫ p) (s.ideal s.length) m (s.boundary s.length) :=
  (MarkedBlowupSequenceData.ofMarkedSequence σ).toMarkedBlowupSequenceData (s.proj s.length ≫ p) (s.ideal s.length) m
    (s.boundary s.length) hm

private theorem projectionToBase_mem_orderAtLeastLocus_tripleAtLength (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ) (hJ : (tripleAtLength T s J μ).IsAdmissible)
    (σ : MarkedSequenceOfBlowups (s.proj s.length ≫ T.structMap) J μ (s.boundary s.length))
    (j : ℕ) (hj : j ≤ σ.toSequenceOfBlowups.length) (z : ↥(σ.toSequenceOfBlowups.schemeAt j))
    (hz : z ∈ orderAtLeastLocus (σ.ideal j) μ) :
    (σ.toSequenceOfBlowups.projectionToBase j).base z ∈ orderAtLeastLocus J μ := by
  have hval : ∀ l ≤ σ.toSequenceOfBlowups.length, ((tripleAtLength T s J μ).transformAt σ l).IsAdmissible := by
    intro l hl
    exact hG.monomialInputs.level_valid (tripleAtLength T s J μ) hJ σ l hl
  have hsub := MarkedSequenceOfBlowups.orderAtLeastLocus_subset_preimage_transitionMap
    (orderAtComapOffExceptionalLocus_of_monomialGeometryHypotheses hG.monomialInputs)
    (tripleAtLength T s J μ) σ hval μ le_rfl 0 j (Nat.zero_le j) hj
  have h0 : (σ.toSequenceOfBlowups.transitionMap (Nat.zero_le j)).base z ∈ orderAtLeastLocus (σ.ideal 0) μ := hsub hz
  rw [σ.ideal_zero, hinv.coSupport_comap σ.toSequenceOfBlowups.isoZero J μ] at h0
  have hcomp : (σ.toSequenceOfBlowups.projectionToBase j).base z
      = (σ.toSequenceOfBlowups.isoZero.hom).base ((σ.toSequenceOfBlowups.transitionMap (Nat.zero_le j)).base z) := by
    rw [SequenceOfBlowups.projectionToBase_def]
    simp
  rw [hcomp]
  exact h0

private theorem exists_mem_orderAtLeastLocus_of_mem_center_append (hG : PrincipalizationGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ) (hJ : (tripleAtLength T s J μ).IsAdmissible)
    (σ : MarkedSequenceOfBlowups (s.proj s.length ≫ T.structMap) J μ (s.boundary s.length))
    (hm : (MarkedBlowupSequenceData.ofMarkedSequence σ).IsMarked (s.proj s.length ≫ T.structMap)
      (s.ideal s.length) T.mult (s.boundary s.length))
    (i : ℕ) (hi₀ : s.length ≤ i)
    (hi : i < (s.append (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm) hinv).length)
    (z : ↥((s.append (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm) hinv).obj i))
    (hz : z ∈ ((s.append (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm) hinv).center i).support) :
    ∃ x : ↥(s.obj s.length), x ∈ orderAtLeastLocus J μ ∧
      ((s.append (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm) hinv).proj i).base z = (s.proj s.length).base x := by
  have hdl : (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm).length = σ.toSequenceOfBlowups.length := rfl
  rw [MarkedBlowupSequenceData.append_length, hdl] at hi
  have hprojd : ∀ j : ℕ, (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm).proj j = σ.toSequenceOfBlowups.projectionToBase j := by
    intro j
    refine Eq.trans (MarkedBlowupSequenceData.projectionToBase_eq_toSequenceOfBlowups (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm) j) ?_
    exact BlowupSequenceData.projectionToBase_toSequenceOfBlowups_ofSequenceOfBlowups σ.toSequenceOfBlowups j
  rcases Nat.eq_or_lt_of_le hi₀ with heq | hlt
  · subst heq
    have hσ0 : 0 < σ.toSequenceOfBlowups.length := by omega
    have hz1 : z ∈ ((s.appendToBlowupSequenceData (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm)).center s.length).support := hz
    rw [MarkedBlowupSequenceData.appendToBlowupSequenceData_center_length s (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm)] at hz1
    have hz2 := AlgebraicGeometry.Scheme.IdealSheafData.mem_support_comap.1 hz1
    have hz3 := AlgebraicGeometry.Scheme.IdealSheafData.mem_support_comap.1 hz2
    have hz4 : (σ.toSequenceOfBlowups.isoZero.inv).base
        ((eqToHom (MarkedBlowupSequenceData.appendToBlowupSequenceData_schemeAt_of_le_length s (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm)
          (le_refl s.length))).base z) ∈ orderAtLeastLocus (σ.ideal 0) μ :=
      σ.center_order 0 hσ0 hz3
    have hx0 := projectionToBase_mem_orderAtLeastLocus_tripleAtLength hG hinv T s J μ hJ σ 0 (Nat.zero_le _) _ hz4
    refine ⟨(eqToHom (MarkedBlowupSequenceData.appendToBlowupSequenceData_schemeAt_of_le_length s (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm)
      (le_refl s.length))).base z, ?_, ?_⟩
    · rw [SequenceOfBlowups.projectionToBase_zero] at hx0
      have hcan : ∀ u : ↥(s.obj s.length),
          (σ.toSequenceOfBlowups.isoZero.hom).base ((σ.toSequenceOfBlowups.isoZero.inv).base u) = u := by
        intro u
        simp
      rwa [hcan] at hx0
    · rw [MarkedBlowupSequenceData.append_projectionToBase,
        MarkedBlowupSequenceData.appendProjectionToBase_of_le_length s (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm) (le_refl s.length)]
      exact AlgebraicGeometry.Scheme.Hom.comp_apply _ _ z
  · have hkσ : i - s.length < σ.toSequenceOfBlowups.length := by omega
    have hz1 : z ∈ ((s.appendToBlowupSequenceData (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm)).center i).support := hz
    rw [MarkedBlowupSequenceData.appendToBlowupSequenceData_center_of_length_lt s (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm) hlt] at hz1
    have hz2 := AlgebraicGeometry.Scheme.IdealSheafData.mem_support_comap.1 hz1
    have hz3 : ((eqToHom (MarkedBlowupSequenceData.appendToBlowupSequenceData_schemeAt_of_length_lt s (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm)
        hlt)).base z) ∈ orderAtLeastLocus (σ.ideal (i - s.length)) μ :=
      σ.center_order (i - s.length) hkσ hz2
    have hx0 := projectionToBase_mem_orderAtLeastLocus_tripleAtLength hG hinv T s J μ hJ σ (i - s.length)
      (le_of_lt hkσ) _ hz3
    refine ⟨_, hx0, ?_⟩
    rw [MarkedBlowupSequenceData.append_projectionToBase,
      MarkedBlowupSequenceData.appendProjectionToBase_of_length_lt s (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm) hlt, hprojd]
    exact base_comp_comp_apply _ _ _ z

private theorem append_proj_center_ne_base_of_orderAtLeastLocus_empty (hG : PrincipalizationGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u})
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme) (hT : T.IsAdmissible)
    (n : ℕ) (A : PrincipalizationAssignment.{u})
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ) (hJ : (tripleAtLength T s J μ).IsAdmissible)
    (hempty : orderAtLeastLocus (J.comap c.lastMap) μ = ∅)
    (σ : MarkedSequenceOfBlowups (s.proj s.length ≫ T.structMap) J μ (s.boundary s.length))
    (hm : (MarkedBlowupSequenceData.ofMarkedSequence σ).IsMarked (s.proj s.length ≫ T.structMap)
      (s.ideal s.length) T.mult (s.boundary s.length))
    (D : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (hD : D = s.append (markedBlowupSequenceDataAtEndOfIsMarked s J μ σ hm) hinv)
    (i : ℕ) (hi₀ : s.length ≤ i) (hi : i < D.length)
    (z : ↥(D.obj i)) (hz : z ∈ (D.center i).support) (y : ↥T'.scheme) :
    g.base y ≠ ((D.proj i).base z) := by
  subst hD
  obtain ⟨x, hx, hproj⟩ :=
    exists_mem_orderAtLeastLocus_of_mem_center_append hG hinv T s J μ hJ σ hm i hi₀ hi z hz
  intro hcon
  rw [hproj] at hcon
  have hsq : IsPullback c.lastMap (s'.proj s'.length) (s.proj s.length) g := by
    have h := c.isPullback_lastMap
    rwa [_root_.FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.toMarkedSequence_projectionToBase, _root_.FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.toMarkedSequence_projectionToBase] at h
  obtain ⟨w, hw, -⟩ := Scheme.exists_preimage_of_isPullback hsq x y hcon.symm
  have hdimS := MonomialGeometryHypotheses.krullDimSucc_schemeAt_length_le_dim hG.monomialInputs T hT s
  have hvalS := MonomialGeometryHypotheses.isAdmissible_tripleAtLength hG.monomialInputs T hT s
  have hord : orderAt (J.comap c.lastMap) w = orderAt J (c.lastMap.base w) :=
    MarkedPullbackSquare.orderAt_comap_verticalMap (SequenceOfBlowupsPullback.toMarkedPullbackSquare g s s' c hdimS hvalS) hT
      hbc.order J w
  have hmem : w ∈ orderAtLeastLocus (J.comap c.lastMap) μ := by
    rw [mem_orderAtLeastLocus_iff, hord, hw]
    exact (mem_orderAtLeastLocus_iff J μ x).1 hx
  rw [hempty] at hmem
  simp only [Set.mem_empty_iff_false] at hmem

theorem appendRecursive_proj_center_ne_of_orderAtLeastLocus_empty (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A B : PrincipalizationAssignment.{u}) (_hspec : IsOrderReduction (fun d => d ≤ n) A B)
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (_hT' : T'.IsAdmissible) (_hdim : T.krullDimSucc ≤ n) (_hdim' : T'.krullDimSucc ≤ n)
    (_hmult : T'.mult = T.mult) (_hideal : T'.ideal = T.ideal.comap g)
    (_hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (_htopIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (_hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap))
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ)
    (hJ : (tripleAtLength T s J μ).IsAdmissible)
    (hempty : orderAtLeastLocus (J.comap c.lastMap) μ = ∅)
    (i : ℕ) (hi₀ : s.length ≤ i) (hi : i < (appendRecursivePrincipalization hinv T (principalizationOfDimLe T A) s J μ).length)
    (z : ↥((appendRecursivePrincipalization hinv T (principalizationOfDimLe T A) s J μ).obj i))
    (hz : z ∈ ((appendRecursivePrincipalization hinv T (principalizationOfDimLe T A) s J μ).center i).support) (y : ↥T'.scheme) :
    g.base y ≠ ((appendRecursivePrincipalization hinv T (principalizationOfDimLe T A) s J μ).proj i).base z := by
  classical
  by_cases hd : (tripleAtLength T s J μ).krullDimSucc ≤ T.krullDimSucc
  · by_cases hm : (MarkedBlowupSequenceData.ofMarkedSequence (principalizationSeqAtEnd T (principalizationOfDimLe T A) s J μ hd)).IsMarked
        (s.proj s.length ≫ T.structMap) (s.ideal s.length) T.mult (s.boundary s.length)
    · exact append_proj_center_ne_base_of_orderAtLeastLocus_empty hG hinv T T' g hT n A hbc s s' c J μ hJ hempty
        (principalizationSeqAtEnd T (principalizationOfDimLe T A) s J μ hd) hm (appendRecursivePrincipalization hinv T (principalizationOfDimLe T A) s J μ)
        (appendRecursivePrincipalization_eq_append hinv T (principalizationOfDimLe T A) s J μ hd hm) i hi₀ hi z hz y
    · exfalso
      have hrs : markedDataOfSeq s J μ (principalizationOfDimLe T A (tripleAtLength T s J μ) hd) = none := by
        unfold markedDataOfSeq
        exact dite_eq_right hm
      have he : appendRecursivePrincipalization hinv T (principalizationOfDimLe T A) s J μ = s :=
        appendRecursivePrincipalization_eq_self_of_eq_none hinv T (principalizationOfDimLe T A) s J μ hd hrs
      rw [he] at hi
      omega
  · exfalso
    have he : appendRecursivePrincipalization hinv T (principalizationOfDimLe T A) s J μ = s := by
      unfold appendRecursivePrincipalization
      exact dite_eq_right hd
    rw [he] at hi
    omega

private theorem appendRecursivePrincipalization_eq_self_or_append (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (rc : (S : MarkedIdealWithBoundary.{u}) → S.krullDimSucc ≤ T.krullDimSucc → S.SequenceOfBlowups)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ) :
    appendRecursivePrincipalization hinv T rc s J μ = s ∨
      ∃ t : MarkedBlowupSequenceData (s.proj s.length ≫ T.structMap) (s.ideal s.length) T.mult
        (s.boundary s.length), appendRecursivePrincipalization hinv T rc s J μ = s.append t hinv := by
  unfold appendRecursivePrincipalization
  by_cases hd : (tripleAtLength T s J μ).krullDimSucc ≤ T.krullDimSucc
  · rw [dite_eq_left hd]
    unfold appendIfMarked
    cases hrem : markedDataOfSeq s J μ (rc (tripleAtLength T s J μ) hd) with
    | none => exact Or.inl rfl
    | some d => exact Or.inr ⟨d, rfl⟩
  · rw [dite_eq_right hd]
    exact Or.inl rfl

theorem nonempty_sequenceOfBlowupsPullback_of_orderAtLeastLocus_empty (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A B : PrincipalizationAssignment.{u}) (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hlastIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap))
    (J : (s.obj s.length).IdealSheafData) (μ : ℕ)
    (hJ : (tripleAtLength T s J μ).IsAdmissible)
    (hempty : orderAtLeastLocus (J.comap c.lastMap) μ = ∅) :
    Nonempty (SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (appendRecursivePrincipalization hinv T (principalizationOfDimLe T A) s J μ).toMarkedSequenceOfBlowups.toSequenceOfBlowups) := by
  rcases appendRecursivePrincipalization_eq_self_or_append hinv T (principalizationOfDimLe T A) s J μ with heq | ⟨t, heq⟩
  · rw [heq]
    exact ⟨c⟩
  · have hmiss := appendRecursive_proj_center_ne_of_orderAtLeastLocus_empty hG hinv n A B hspec T T' g hT hT' hdim
      hdim' hmult hideal hbdry hbc s s' c hlastIdeal hsameBoundary J μ hJ hempty
    have hconcat : (s.append t hinv).toBlowupSequenceData
        = s.toBlowupSequenceData.append t.toBlowupSequenceData := by
      rw [MarkedBlowupSequenceData.append_toBlowupSequenceData]
      rfl
    have hseq : (s.append t hinv).toMarkedSequenceOfBlowups.toSequenceOfBlowups
        = (s.toBlowupSequenceData.append t.toBlowupSequenceData).toSequenceOfBlowups :=
      congrArg (fun D : BlowupSequenceData T.scheme => D.toSequenceOfBlowups) hconcat
    have h0 : ∀ i : ℕ, s.length ≤ i → i < (s.append t hinv).length →
        ∀ z : ↥((s.append t hinv).obj i), z ∈ ((s.append t hinv).center i).support →
          ∀ y : ↥T'.scheme, g.base y ≠ ((s.append t hinv).proj i).base z := by
      rw [← heq]
      exact hmiss
    have h0' : ∀ i : ℕ, s.length ≤ i → i < s.length + t.length →
        ∀ z : ↥((s.append t hinv).obj i), z ∈ ((s.append t hinv).center i).support →
          ∀ y : ↥T'.scheme, g.base y ≠ ((s.append t hinv).proj i).base z := by
      intro i hi0 hi
      refine h0 i hi0 ?_
      rw [MarkedBlowupSequenceData.append_length]
      exact hi
    have hproj : ∀ i : ℕ,
        (s.append t hinv).toBlowupSequenceData.projectionToBase i = (s.append t hinv).proj i := by
      intro i
      rw [MarkedBlowupSequenceData.projectionToBase_eq_toSequenceOfBlowups]
      exact (BlowupSequenceData.toSequenceOfBlowups_projectionToBase (s.append t hinv).toBlowupSequenceData i).symm
    have key : ∀ i : ℕ, s.toBlowupSequenceData.length ≤ i →
        i < s.toBlowupSequenceData.length + t.toBlowupSequenceData.length →
        ∀ z : ↥((s.toBlowupSequenceData.append t.toBlowupSequenceData).obj i),
          z ∈ ((s.toBlowupSequenceData.append t.toBlowupSequenceData).center i).support →
          ∀ y : ↥T'.scheme,
            g.base y ≠ ((s.toBlowupSequenceData.append t.toBlowupSequenceData).projectionToBase i).base z := by
      rw [← hconcat]
      intro i hi0 hi z hz y
      rw [hproj i]
      exact h0' i hi0 hi z hz y
    rw [heq, hseq]
    exact SequenceOfBlowupsPullback.nonempty_append_of_disjoint_centers g s'.toBlowupSequenceData s.toBlowupSequenceData
      t.toBlowupSequenceData c key

theorem nonempty_sequenceOfBlowupsPullback_extendByNonMonomialPart (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A B : PrincipalizationAssignment.{u}) (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hlastIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap))
    (hcont : NonMonomialOrderReductionContinues T s) (hcont' : NonMonomialOrderReductionContinues T' s')
    (hinveq : maxOrderNonMonomial T' s' = maxOrderNonMonomial T s)
    (hmark : ∀ (h : (tripleAtLength T s (lastNonMonomialPart T s) (maxOrderNonMonomial T s)).krullDimSucc ≤ T.krullDimSucc)
      (h' : (tripleAtLength T' s' ((lastNonMonomialPart T s).comap c.lastMap)
        (maxOrderNonMonomial T s)).krullDimSucc ≤ T'.krullDimSucc),
      markedDataOfSeq s (lastNonMonomialPart T s) (maxOrderNonMonomial T s)
          (principalizationOfDimLe T A (tripleAtLength T s (lastNonMonomialPart T s) (maxOrderNonMonomial T s)) h) = none ↔
        markedDataOfSeq s' ((lastNonMonomialPart T s).comap c.lastMap) (maxOrderNonMonomial T s)
          (principalizationOfDimLe T' A
            (tripleAtLength T' s' ((lastNonMonomialPart T s).comap c.lastMap) (maxOrderNonMonomial T s)) h')
          = none) :
    Nonempty (SequenceOfBlowupsPullback g
      (extendByNonMonomialPart hinv T' (principalizationOfDimLe T' A) s').toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (extendByNonMonomialPart hinv T (principalizationOfDimLe T A) s).toMarkedSequenceOfBlowups.toSequenceOfBlowups) := by
  have hnonMon : lastNonMonomialPart T' s' = (lastNonMonomialPart T s).comap c.lastMap :=
    lastNonMonomialPart_eq_comap_lastMap_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult hideal
      hbdry hbc s s' c hlastIdeal hsameBoundary
  have hJ : (tripleAtLength T s (lastNonMonomialPart T s) (maxOrderNonMonomial T s)).IsAdmissible :=
    isAdmissible_nonMonomialTriple hG hT s hcont
  have hJ' : (tripleAtLength T' s' (lastNonMonomialPart T' s') (maxOrderNonMonomial T' s')).IsAdmissible :=
    isAdmissible_nonMonomialTriple hG hT' s' hcont'
  rw [hnonMon, hinveq] at hJ'
  have hord : ∀ x : ↥(s.obj s.length),
      orderAt (lastNonMonomialPart T s) x ≤ ((maxOrderNonMonomial T s : ℕ) : ℕ∞) :=
    fun x => orderAt_lastNonMonomialPart_le_maxOrderNonMonomial hG hT s x
  have key := nonempty_sequenceOfBlowupsPullback_appendRecursive hG hinv n A B hspec T T' g hT hT' hdim hdim'
    hmult hideal hbdry hbc s s' c hlastIdeal hsameBoundary (lastNonMonomialPart T s) (maxOrderNonMonomial T s)
    hJ hJ' hord hmark
  have hL : extendByNonMonomialPart hinv T (principalizationOfDimLe T A) s
      = appendRecursivePrincipalization hinv T (principalizationOfDimLe T A) s (lastNonMonomialPart T s) (maxOrderNonMonomial T s) := rfl
  have hU : extendByNonMonomialPart hinv T' (principalizationOfDimLe T' A) s'
      = appendRecursivePrincipalization hinv T' (principalizationOfDimLe T' A) s' (lastNonMonomialPart T' s') (maxOrderNonMonomial T' s') := rfl
  rw [hnonMon, hinveq] at hU
  rw [hL, hU]
  exact key

private theorem appendRecursivePrincipalization_congr (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (rc : (S : MarkedIdealWithBoundary.{u}) → S.krullDimSucc ≤ T.krullDimSucc → S.SequenceOfBlowups)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (J K : (s.obj s.length).IdealSheafData) (μ ν : ℕ) (hJK : J = K) (hμν : μ = ν) :
    appendRecursivePrincipalization hinv T rc s J μ = appendRecursivePrincipalization hinv T rc s K ν := by
  subst hJK
  subst hμν
  rfl

private theorem isAdmissible_tripleAtLength_congr (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (J K : (s.obj s.length).IdealSheafData) (μ ν : ℕ) (hJK : J = K) (hμν : μ = ν)
    (h : (tripleAtLength T s J μ).IsAdmissible) : (tripleAtLength T s K ν).IsAdmissible := by
  subst hJK
  subst hμν
  exact h

theorem nonempty_sequenceOfBlowupsPullback_extendByCompanionIdeal (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A B : PrincipalizationAssignment.{u}) (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hlastIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap))
    (hcont : CompanionIdealReductionContinues T s) (hcont' : CompanionIdealReductionContinues T' s')
    (hinveq : maxOrderNonMonomialOnOrderLocus T' s' = maxOrderNonMonomialOnOrderLocus T s)
    (hmark : ∀ (h : (tripleAtLength T s (companionIdeal T s)
        (T.mult * maxOrderNonMonomialOnOrderLocus T s)).krullDimSucc ≤ T.krullDimSucc)
      (h' : (tripleAtLength T' s' ((companionIdeal T s).comap c.lastMap)
        (T.mult * maxOrderNonMonomialOnOrderLocus T s)).krullDimSucc ≤ T'.krullDimSucc),
      markedDataOfSeq s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)
          (principalizationOfDimLe T A
            (tripleAtLength T s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)) h) = none ↔
        markedDataOfSeq s' ((companionIdeal T s).comap c.lastMap) (T.mult * maxOrderNonMonomialOnOrderLocus T s)
          (principalizationOfDimLe T' A
            (tripleAtLength T' s' ((companionIdeal T s).comap c.lastMap)
              (T.mult * maxOrderNonMonomialOnOrderLocus T s)) h') = none) :
    Nonempty (SequenceOfBlowupsPullback g
      (extendByCompanionIdeal hinv T' (principalizationOfDimLe T' A) s').toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (extendByCompanionIdeal hinv T (principalizationOfDimLe T A) s).toMarkedSequenceOfBlowups.toSequenceOfBlowups) := by
  have hJideal : companionIdeal T' s' = (companionIdeal T s).comap c.lastMap :=
    companionIdeal_eq_comap_lastMap_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult hideal
      hbdry hbc s s' c hlastIdeal hsameBoundary hinveq
  have hmu : T'.mult * maxOrderNonMonomialOnOrderLocus T' s' = T.mult * maxOrderNonMonomialOnOrderLocus T s := by
    rw [hinveq, hmult]
  have hJ : (tripleAtLength T s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)).IsAdmissible :=
    companionTriple_isAdmissible hG hT s hcont
  have hJ'0 : (tripleAtLength T' s' (companionIdeal T' s') (T'.mult * maxOrderNonMonomialOnOrderLocus T' s')).IsAdmissible :=
    companionTriple_isAdmissible hG hT' s' hcont'
  have hJ' : (tripleAtLength T' s' ((companionIdeal T s).comap c.lastMap)
      (T.mult * maxOrderNonMonomialOnOrderLocus T s)).IsAdmissible :=
    isAdmissible_tripleAtLength_congr T' s' (companionIdeal T' s')
      ((companionIdeal T s).comap c.lastMap) (T'.mult * maxOrderNonMonomialOnOrderLocus T' s')
      (T.mult * maxOrderNonMonomialOnOrderLocus T s) hJideal hmu hJ'0
  have hord := orderAt_companionIdeal_le hG hT s hcont
  have hA : extendByCompanionIdeal hinv T (principalizationOfDimLe T A) s
      = appendRecursivePrincipalization hinv T (principalizationOfDimLe T A) s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s) := rfl
  have hB0 : extendByCompanionIdeal hinv T' (principalizationOfDimLe T' A) s'
      = appendRecursivePrincipalization hinv T' (principalizationOfDimLe T' A) s' (companionIdeal T' s')
        (T'.mult * maxOrderNonMonomialOnOrderLocus T' s') := rfl
  have hB : extendByCompanionIdeal hinv T' (principalizationOfDimLe T' A) s'
      = appendRecursivePrincipalization hinv T' (principalizationOfDimLe T' A) s' ((companionIdeal T s).comap c.lastMap)
        (T.mult * maxOrderNonMonomialOnOrderLocus T s) :=
    hB0.trans
      (appendRecursivePrincipalization_congr hinv T' (principalizationOfDimLe T' A) s' (companionIdeal T' s')
        ((companionIdeal T s).comap c.lastMap) (T'.mult * maxOrderNonMonomialOnOrderLocus T' s')
        (T.mult * maxOrderNonMonomialOnOrderLocus T s) hJideal hmu)
  rw [hA, hB]
  exact nonempty_sequenceOfBlowupsPullback_appendRecursive hG hinv n A B hspec T T' g hT hT' hdim hdim' hmult
    hideal hbdry hbc s s' c hlastIdeal hsameBoundary (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)
    hJ hJ' hord hmark

theorem orderAtLeastLocus_comap_lastNonMonomialPart_eq_empty_of_lt (hG : PrincipalizationGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u}) (n : ℕ) (A : PrincipalizationAssignment.{u})
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hlastIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap))
    (hlt : maxOrderNonMonomial T' s' < maxOrderNonMonomial T s) :
    orderAtLeastLocus ((lastNonMonomialPart T s).comap c.lastMap) (maxOrderNonMonomial T s) = ∅ := by
  have hnonMon : lastNonMonomialPart T' s' = (lastNonMonomialPart T s).comap c.lastMap :=
    lastNonMonomialPart_eq_comap_lastMap_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult hideal
      hbdry hbc s s' c hlastIdeal hsameBoundary
  refine Set.eq_empty_of_subset_empty ?_
  intro y hy
  have hy' := (mem_orderAtLeastLocus_iff ((lastNonMonomialPart T s).comap c.lastMap) (maxOrderNonMonomial T s) y).1 hy
  rw [← hnonMon] at hy'
  have hle : orderAt (lastNonMonomialPart T' s') y ≤ ((maxOrderNonMonomial T' s' : ℕ) : ℕ∞) :=
    orderAt_lastNonMonomialPart_le_maxOrderNonMonomial hG hT' s' y
  have hcast : ((maxOrderNonMonomial T s : ℕ) : ℕ∞) ≤ ((maxOrderNonMonomial T' s' : ℕ) : ℕ∞) := hy'.trans hle
  have hnat : maxOrderNonMonomial T s ≤ maxOrderNonMonomial T' s' := by exact_mod_cast hcast
  exact absurd hnat (not_le.mpr hlt)

private theorem natCast_le_of_natCast_mul_le_mul (m p : ℕ) (hp : 1 ≤ p) (a : ℕ∞)
    (h : ((m * p : ℕ) : ℕ∞) ≤ ((p : ℕ) : ℕ∞) * a) : ((m : ℕ) : ℕ∞) ≤ a := by
  rcases eq_or_ne a ⊤ with rfl | ha
  · exact le_top
  · obtain ⟨a₀, rfl⟩ := ENat.ne_top_iff_exists.mp ha
    have h' : m * p ≤ p * a₀ := by exact_mod_cast h
    have h'' : p * m ≤ p * a₀ := by
      rw [Nat.mul_comm p m]
      exact h'
    have hle : m ≤ a₀ := Nat.le_of_mul_le_mul_left h'' (by omega)
    exact_mod_cast hle

theorem orderAtLeastLocus_comap_companionIdeal_eq_empty_of_lt (hG : PrincipalizationGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u}) (n : ℕ) (A : PrincipalizationAssignment.{u})
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hlastIdeal : s'.ideal s'.length = (s.ideal s.length).comap c.lastMap)
    (hsameBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
      ((s.boundary s.length).map fun D => D.comap c.lastMap))
    (hlt : maxOrderNonMonomialOnOrderLocus T' s' < maxOrderNonMonomialOnOrderLocus T s) :
    orderAtLeastLocus ((companionIdeal T s).comap c.lastMap) (T.mult * maxOrderNonMonomialOnOrderLocus T s) = ∅ := by
  have hmg := hG.monomialInputs
  have hvalS' := MonomialGeometryHypotheses.isAdmissible_tripleAtLength hmg T' hT' s'
  have hchar : CharZero T'.base := hvalS'.charZero
  have hsmooth : AlgebraicGeometry.Smooth (s'.proj s'.length ≫ T'.structMap) := hvalS'.smooth
  have hm1 : 1 ≤ T.mult := hT.one_le_mult
  have hp1 : 1 ≤ maxOrderNonMonomialOnOrderLocus T s := by omega
  have hnonMon : lastNonMonomialPart T' s' = (lastNonMonomialPart T s).comap c.lastMap :=
    lastNonMonomialPart_eq_comap_lastMap_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult hideal
      hbdry hbc s s' c hlastIdeal hsameBoundary
  have hcompanion : (companionIdeal T s).comap c.lastMap
      = lastNonMonomialPart T' s' ^ T.mult ⊔ s'.ideal s'.length ^ maxOrderNonMonomialOnOrderLocus T s := by
    unfold companionIdeal
    rw [hnonMon, hlastIdeal]
    exact comap_pow_sup_pow c.lastMap (lastNonMonomialPart T s) (s.ideal s.length) T.mult
      (maxOrderNonMonomialOnOrderLocus T s)
  rw [hcompanion]
  refine Set.eq_empty_of_subset_empty ?_
  intro x hx
  exfalso
  have hx0 : ((T.mult * maxOrderNonMonomialOnOrderLocus T s : ℕ) : ℕ∞)
      ≤ orderAt (lastNonMonomialPart T' s' ^ T.mult ⊔ s'.ideal s'.length ^ maxOrderNonMonomialOnOrderLocus T s) x :=
    (mem_orderAtLeastLocus_iff _ _ _).1 hx
  have hsup : orderAt (lastNonMonomialPart T' s' ^ T.mult ⊔ s'.ideal s'.length ^ maxOrderNonMonomialOnOrderLocus T s) x
      = min (orderAt (lastNonMonomialPart T' s' ^ T.mult) x)
        (orderAt (s'.ideal s'.length ^ maxOrderNonMonomialOnOrderLocus T s) x) :=
    orderAt_sup _ _ x
  have hmin := le_trans hx0 (le_of_eq hsup)
  have hxN : ((T.mult * maxOrderNonMonomialOnOrderLocus T s : ℕ) : ℕ∞)
      ≤ orderAt (lastNonMonomialPart T' s' ^ T.mult) x := le_trans hmin (min_le_left _ _)
  have hxI : ((T.mult * maxOrderNonMonomialOnOrderLocus T s : ℕ) : ℕ∞)
      ≤ orderAt (s'.ideal s'.length ^ maxOrderNonMonomialOnOrderLocus T s) x := le_trans hmin (min_le_right _ _)
  have hpowI : orderAt (s'.ideal s'.length ^ maxOrderNonMonomialOnOrderLocus T s) x
      = ((maxOrderNonMonomialOnOrderLocus T s : ℕ) : ℕ∞) * orderAt (s'.ideal s'.length) x :=
    orderAt_pow T'.base (s'.proj s'.length ≫ T'.structMap) (s'.ideal s'.length)
      (maxOrderNonMonomialOnOrderLocus T s) x
  have hpowN : orderAt (lastNonMonomialPart T' s' ^ T.mult) x
      = ((T.mult : ℕ) : ℕ∞) * orderAt (lastNonMonomialPart T' s') x :=
    orderAt_pow T'.base (s'.proj s'.length ≫ T'.structMap) (lastNonMonomialPart T' s') T.mult x
  have hA : ((T.mult : ℕ) : ℕ∞) ≤ orderAt (s'.ideal s'.length) x :=
    natCast_le_of_natCast_mul_le_mul T.mult (maxOrderNonMonomialOnOrderLocus T s) hp1 (orderAt (s'.ideal s'.length) x)
      (le_trans hxI (le_of_eq hpowI))
  have hmultE : ((T'.mult : ℕ) : ℕ∞) = ((T.mult : ℕ) : ℕ∞) := by rw [hmult]
  have hmem : x ∈ orderAtLeastLocus (s'.ideal s'.length) T'.mult :=
    (mem_orderAtLeastLocus_iff _ _ _).2 (hmultE.trans_le hA)
  have hb := orderAt_lastNonMonomialPart_le_maxOrderNonMonomialOnOrderLocus hG hT' s' x hmem
  have hxN2 : ((T.mult * maxOrderNonMonomialOnOrderLocus T s : ℕ) : ℕ∞)
      ≤ ((T.mult : ℕ) : ℕ∞) * orderAt (lastNonMonomialPart T' s') x :=
    le_trans hxN (le_of_eq hpowN)
  have hxN3 : ((maxOrderNonMonomialOnOrderLocus T s * T.mult : ℕ) : ℕ∞)
      ≤ ((T.mult : ℕ) : ℕ∞) * orderAt (lastNonMonomialPart T' s') x := by
    rw [Nat.mul_comm (maxOrderNonMonomialOnOrderLocus T s) T.mult]
    exact hxN2
  have hC : ((maxOrderNonMonomialOnOrderLocus T s : ℕ) : ℕ∞) ≤ orderAt (lastNonMonomialPart T' s') x :=
    natCast_le_of_natCast_mul_le_mul (maxOrderNonMonomialOnOrderLocus T s) T.mult hm1 (orderAt (lastNonMonomialPart T' s') x) hxN3
  have hfin : ((maxOrderNonMonomialOnOrderLocus T s : ℕ) : ℕ∞) ≤ ((maxOrderNonMonomialOnOrderLocus T' s' : ℕ) : ℕ∞) := le_trans hC hb
  have hnat : maxOrderNonMonomialOnOrderLocus T s ≤ maxOrderNonMonomialOnOrderLocus T' s' := by exact_mod_cast hfin
  omega

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.RecursivePrincipalizationPullback =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderReductionBaseChange =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderReductionBaseChange", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MarkedPullbackSquare\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.NonMonomialOrderReduction\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.SequenceOfBlowupsPullback\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.BlowupDataOfSequence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.CompanionIdealReduction\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.DisjointCentersPullback\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.MapToEarlierScheme\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderAlongBlowupSequence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderReductionResolution\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.RecursivePrincipalizationPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem isNoetherian_schemeAt_of_isAdmissible (T : MarkedIdealWithBoundary.{u}) (hT : T.IsAdmissible)
    (u : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary) (i : ℕ) (hi : i ≤ u.length) :
    AlgebraicGeometry.IsNoetherian (u.obj i) := by
  have hlen : i ≤ u.toMarkedSequenceOfBlowups.length := hi.trans_eq (MarkedBlowupSequenceData.toMarkedSequence_length u).symm
  have h := MarkedSequenceOfBlowups.isNoetherian_schemeAt effectiveCartierSupportContainsNoComponent hT u.toMarkedSequenceOfBlowups i hlen
  rwa [MarkedBlowupSequenceData.toMarkedSequence_schemeAt] at h

private theorem nonempty_sequenceOfBlowupsPullback_of_length_eq_zero {X Y : Scheme.{u}} (g : Y ⟶ X)
    (hflat : AlgebraicGeometry.Flat g) (sD : SequenceOfBlowups X) (sU : SequenceOfBlowups Y)
    (hD : sD.length = 0) (hU : sU.length = 0) :
    Nonempty (SequenceOfBlowupsPullback g sU sD) := by
  have := hflat
  refine ⟨SequenceOfBlowupsPullback.ofBlowupDataOfSeq (SequenceOfBlowupsPullback.ofCentersMissImage g (BlowupSequenceData.ofSequenceOfBlowups sD) ?_
    (BlowupSequenceData.ofSequenceOfBlowups sU) ?_)⟩
  · intro i hi
    rw [BlowupSequenceData.ofSequenceOfBlowups_length sD, hD] at hi
    exact absurd hi (Nat.not_lt_zero i)
  · exact (BlowupSequenceData.ofSequenceOfBlowups_length sU).trans hU

private theorem length_nonMonomialOrderReductionIter_zero (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (rc : (S : MarkedIdealWithBoundary.{u}) → S.krullDimSucc ≤ T.krullDimSucc → S.SequenceOfBlowups) :
    (nonMonomialOrderReductionIter hinv T rc 0).toMarkedSequenceOfBlowups.toSequenceOfBlowups.length = 0 := by
  have h : (nonMonomialOrderReductionIter hinv T rc 0).length = 0 := by
    rw [nonMonomialOrderReductionIter_zero, emptyMarkedBlowupSequenceData_length]
  exact (MarkedBlowupSequenceData.toMarkedSequence_length (nonMonomialOrderReductionIter hinv T rc 0)).trans h

private theorem markedDataOfSeq_ne_none_of_isMarked {k : Type u} [Field k] {X : Scheme.{u}}
    {p : X ⟶ Spec (CommRingCat.of k)} {I : X.IdealSheafData} {m : ℕ} {E : List X.IdealSheafData}
    (s : MarkedBlowupSequenceData p I m E) (J : (s.obj s.length).IdealSheafData) (μ : ℕ)
    (σ : MarkedSequenceOfBlowups (s.proj s.length ≫ p) J μ (s.boundary s.length))
    (hm : (MarkedBlowupSequenceData.ofMarkedSequence σ).IsMarked (s.proj s.length ≫ p) (s.ideal s.length) m
      (s.boundary s.length)) :
    markedDataOfSeq s J μ σ ≠ none := by
  have he : markedDataOfSeq s J μ σ = some ((MarkedBlowupSequenceData.ofMarkedSequence σ).toMarkedBlowupSequenceData
      (s.proj s.length ≫ p) (s.ideal s.length) m (s.boundary s.length) hm) := by
    unfold markedDataOfSeq
    exact dif_pos hm
  rw [he]
  exact Option.some_ne_none _

private theorem lastIdeal_and_boundary_comap_of_flat {k k' : Type u} [Field k] [Field k'] {X Y : Scheme.{u}}
    {p : X ⟶ Spec (CommRingCat.of k)} {q : Y ⟶ Spec (CommRingCat.of k')} {g : Y ⟶ X}
    {I : X.IdealSheafData} {I' : Y.IdealSheafData} {m m' : ℕ}
    {E : List X.IdealSheafData} {E' : List Y.IdealSheafData}
    (s : MarkedBlowupSequenceData p I m E) (s' : MarkedBlowupSequenceData q I' m' E') (hm : m' = m)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hflat : AlgebraicGeometry.Flat g)
    (hI : I' = I.comap g)
    (hE : MarkedIdealWithBoundary.SameNontrivialBoundary E' (E.map fun D => D.comap g))
    (hN : ∀ i : ℕ, i ≤ s.length → AlgebraicGeometry.IsNoetherian (s.obj i))
    (hN' : ∀ j : ℕ, j ≤ s'.length → AlgebraicGeometry.IsNoetherian (s'.obj j)) :
    s'.ideal s'.length = (s.ideal s.length).comap c.lastMap ∧
      MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
        ((s.boundary s.length).map fun D => D.comap c.lastMap) := by
  subst hm
  have := hflat
  exact SequenceOfBlowupsPullback.ideal_boundary_last_eq_comap_lastMap s s' c hI hE hN hN'

private theorem extendByNonMonomialPart_sequenceOfBlowupsPullback_cases (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A B : PrincipalizationAssignment.{u}) (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hcont : NonMonomialOrderReductionContinues T s) :
    (NonMonomialOrderReductionContinues T' s' ∧ Nonempty (SequenceOfBlowupsPullback g
        (extendByNonMonomialPart hinv T' (principalizationOfDimLe T' A) s').toMarkedSequenceOfBlowups.toSequenceOfBlowups
        (extendByNonMonomialPart hinv T (principalizationOfDimLe T A) s).toMarkedSequenceOfBlowups.toSequenceOfBlowups)) ∨
      Nonempty (SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups
        (extendByNonMonomialPart hinv T (principalizationOfDimLe T A) s).toMarkedSequenceOfBlowups.toSequenceOfBlowups) := by
  classical
  obtain ⟨hlastIdeal, hsameBoundary⟩ :=
    lastIdeal_and_boundary_comap_of_flat s s' hmult c hbc.flat hideal hbdry
      (isNoetherian_schemeAt_of_isAdmissible T hT s) (isNoetherian_schemeAt_of_isAdmissible T' hT' s')
  have hle : maxOrderNonMonomial T' s' ≤ maxOrderNonMonomial T s :=
    maxOrderNonMonomial_le_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult hideal hbdry hbc
      s s' c hlastIdeal hsameBoundary
  have hnonMon : lastNonMonomialPart T' s' = (lastNonMonomialPart T s).comap c.lastMap :=
    lastNonMonomialPart_eq_comap_lastMap_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult hideal
      hbdry hbc s s' c hlastIdeal hsameBoundary
  have hJ : (tripleAtLength T s (lastNonMonomialPart T s) (maxOrderNonMonomial T s)).IsAdmissible :=
    isAdmissible_nonMonomialTriple hG hT s hcont
  have hskip : orderAtLeastLocus ((lastNonMonomialPart T s).comap c.lastMap) (maxOrderNonMonomial T s) = ∅ →
      Nonempty (SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups
        (extendByNonMonomialPart hinv T (principalizationOfDimLe T A) s).toMarkedSequenceOfBlowups.toSequenceOfBlowups) := by
    intro hempty
    have hL : extendByNonMonomialPart hinv T (principalizationOfDimLe T A) s
        = appendRecursivePrincipalization hinv T (principalizationOfDimLe T A) s (lastNonMonomialPart T s) (maxOrderNonMonomial T s) := rfl
    rw [hL]
    exact nonempty_sequenceOfBlowupsPullback_of_orderAtLeastLocus_empty hG hinv n A B hspec T T' g hT hT' hdim hdim'
      hmult hideal hbdry hbc s s' c hlastIdeal hsameBoundary (lastNonMonomialPart T s) (maxOrderNonMonomial T s)
      hJ hempty
  by_cases hcont' : NonMonomialOrderReductionContinues T' s'
  · by_cases heq : maxOrderNonMonomial T' s' = maxOrderNonMonomial T s
    · refine Or.inl ⟨hcont', ?_⟩
      refine nonempty_sequenceOfBlowupsPullback_extendByNonMonomialPart hG hinv n A B hspec T T' g hT hT' hdim
        hdim' hmult hideal hbdry hbc s s' c hlastIdeal hsameBoundary hcont hcont' heq ?_
      intro h h'
      refine iff_of_false ?_ ?_
      · exact markedDataOfSeq_ne_none_of_isMarked s (lastNonMonomialPart T s) (maxOrderNonMonomial T s) _
          (isMarked_seqAtEnd_lastNonMonomialPart hG hspec hT hdim s hcont)
      · have hmkU := isMarked_seqAtEnd_lastNonMonomialPart hG hspec hT' hdim' s' hcont'
        rw [hnonMon, heq] at hmkU
        exact markedDataOfSeq_ne_none_of_isMarked s' ((lastNonMonomialPart T s).comap c.lastMap) (maxOrderNonMonomial T s) _
          hmkU
    · refine Or.inr (hskip ?_)
      exact orderAtLeastLocus_comap_lastNonMonomialPart_eq_empty_of_lt hG hinv n A T T' g hT hT'
        hdim hdim' hmult hideal hbdry hbc s s' c hlastIdeal hsameBoundary (lt_of_le_of_ne hle heq)
  · refine Or.inr (hskip ?_)
    rcases lt_or_eq_of_le hle with hlt | heq
    · exact orderAtLeastLocus_comap_lastNonMonomialPart_eq_empty_of_lt hG hinv n A T T' g hT hT'
        hdim hdim' hmult hideal hbdry hbc s s' c hlastIdeal hsameBoundary hlt
    · have h1 : T'.mult ≤ maxOrderNonMonomial T' s' := by
        rw [hmult, heq]
        exact ((nonMonomialOrderReductionContinues_iff T s).1 hcont).1
      have h2 : ¬ (orderAtLeastLocus (lastNonMonomialPart T' s') (maxOrderNonMonomial T' s')).Nonempty := fun hx =>
        hcont' ((nonMonomialOrderReductionContinues_iff T' s').2 ⟨h1, hx⟩)
      have h3 := Set.not_nonempty_iff_eq_empty.mp h2
      rw [hnonMon, heq] at h3
      exact h3

theorem nonMonomialOrderReductionIter_exists_sequenceOfBlowupsPullback (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A B : PrincipalizationAssignment.{u}) (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap) (f : ℕ) :
    ∃ (f' : ℕ) (c : SequenceOfBlowupsPullback g
        (nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f').toMarkedSequenceOfBlowups.toSequenceOfBlowups
        (nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A) f).toMarkedSequenceOfBlowups.toSequenceOfBlowups),
      (nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f').ideal
          (nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f').length =
        ((nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A) f).ideal
          (nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A) f).length).comap c.lastMap ∧
      MarkedIdealWithBoundary.SameNontrivialBoundary
        ((nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f').boundary
          (nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f').length)
        (((nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A) f).boundary
          (nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A) f).length).map fun D => D.comap c.lastMap) := by
  classical
  have key : ∀ j : ℕ, ∃ f' : ℕ, Nonempty (SequenceOfBlowupsPullback g
      (nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f').toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A) j).toMarkedSequenceOfBlowups.toSequenceOfBlowups) := by
    intro j
    induction j with
    | zero =>
        exact ⟨0, nonempty_sequenceOfBlowupsPullback_of_length_eq_zero g hbc.flat _ _
          (length_nonMonomialOrderReductionIter_zero hinv T (principalizationOfDimLe T A))
          (length_nonMonomialOrderReductionIter_zero hinv T' (principalizationOfDimLe T' A))⟩
    | succ j ih =>
        obtain ⟨f', hc⟩ := ih
        obtain ⟨c⟩ := hc
        by_cases hcont : NonMonomialOrderReductionContinues T (nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A) j)
        · rcases extendByNonMonomialPart_sequenceOfBlowupsPullback_cases hG hinv n A B hspec T T' g hT hT' hdim hdim' hmult
            hideal hbdry hbc (nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A) j)
            (nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f') c hcont with ⟨hcont', hcmp⟩ | hcmp
          · refine ⟨f' + 1, ?_⟩
            rw [nonMonomialOrderReductionIter_succ_of_continues hinv T (principalizationOfDimLe T A) j hcont,
              nonMonomialOrderReductionIter_succ_of_continues hinv T' (principalizationOfDimLe T' A) f' hcont']
            exact hcmp
          · refine ⟨f', ?_⟩
            rw [nonMonomialOrderReductionIter_succ_of_continues hinv T (principalizationOfDimLe T A) j hcont]
            exact hcmp
        · refine ⟨f', ?_⟩
          rw [nonMonomialOrderReductionIter_succ_of_not_continues hinv T (principalizationOfDimLe T A) j hcont]
          exact ⟨c⟩
  obtain ⟨f', hc⟩ := key f
  obtain ⟨c⟩ := hc
  refine ⟨f', c, ?_⟩
  exact lastIdeal_and_boundary_comap_of_flat (nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A) f)
    (nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f') hmult c hbc.flat hideal hbdry
    (isNoetherian_schemeAt_of_isAdmissible T hT (nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A) f))
    (isNoetherian_schemeAt_of_isAdmissible T' hT' (nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f'))

private theorem lastIdeal_and_boundary_comap_of_isAdmissible (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hflat : AlgebraicGeometry.Flat g)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (s' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups) :
    s'.ideal s'.length = (s.ideal s.length).comap c.lastMap ∧
      MarkedIdealWithBoundary.SameNontrivialBoundary (s'.boundary s'.length)
        ((s.boundary s.length).map fun D => D.comap c.lastMap) :=
  lastIdeal_and_boundary_comap_of_flat s s' hmult c hflat hideal hbdry
    (isNoetherian_schemeAt_of_isAdmissible T hT s) (isNoetherian_schemeAt_of_isAdmissible T' hT' s')

private theorem markedDataOfSeq_companionIdeal_ne_none (hG : PrincipalizationGeometryHypotheses.{u}) (T : MarkedIdealWithBoundary.{u})
    (hT : T.IsAdmissible) (A : PrincipalizationAssignment.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (hcont : CompanionIdealReductionContinues T s) (K : (s.obj s.length).IdealSheafData) (ν : ℕ)
    (hK : companionIdeal T s = K) (hν : T.mult * maxOrderNonMonomialOnOrderLocus T s = ν)
    (h : (tripleAtLength T s K ν).krullDimSucc ≤ T.krullDimSucc) :
    ¬ (markedDataOfSeq s K ν (principalizationOfDimLe T A (tripleAtLength T s K ν) h) = none) := by
  subst hK
  subst hν
  exact markedDataOfSeq_ne_none_of_isMarked s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)
    (principalizationOfDimLe T A (tripleAtLength T s (companionIdeal T s) (T.mult * maxOrderNonMonomialOnOrderLocus T s)) h)
    (isMarked_seqAtEnd_companionIdeal hG hT A s hcont)

private theorem nonempty_sequenceOfBlowupsPullback_nonMonomialOrderReduction (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A B : PrincipalizationAssignment.{u}) (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap) :
    Nonempty (SequenceOfBlowupsPullback g
      (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)).toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)).toMarkedSequenceOfBlowups.toSequenceOfBlowups) := by
  obtain ⟨f₁, c, hI, hB⟩ := nonMonomialOrderReductionIter_exists_sequenceOfBlowupsPullback hG hinv n A B hspec T T' g hT
    hT' hdim hdim' hmult hideal hbdry hbc (maxOrder (nonMonomialPart T.boundary T.ideal) + 1)
  have hlow : nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A)
      (maxOrder (nonMonomialPart T.boundary T.ideal) + 1) = nonMonomialOrderReduction hinv T (principalizationOfDimLe T A) :=
    (nonMonomialOrderReduction_eq hinv T (principalizationOfDimLe T A)).symm
  have hncT : ¬ NonMonomialOrderReductionContinues T (nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A)
      (maxOrder (nonMonomialPart T.boundary T.ideal) + 1)) := by
    rw [hlow]
    exact not_nonMonomialOrderReductionContinues_nonMonomialOrderReduction hG hinv hspec hT hdim
  have hncT' : ¬ NonMonomialOrderReductionContinues T' (nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f₁) := by
    intro hc
    exact hncT (nonMonomialOrderReductionContinues_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult hideal
      hbdry hbc
      (nonMonomialOrderReductionIter hinv T (principalizationOfDimLe T A) (maxOrder (nonMonomialPart T.boundary T.ideal) + 1))
      (nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f₁) c hI hB hc)
  have h1 : nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A)
      (max f₁ (maxOrder (nonMonomialPart T'.boundary T'.ideal) + 1))
      = nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f₁ :=
    nonMonomialOrderReductionIter_eq_of_not_continues hinv T' (principalizationOfDimLe T' A) f₁ hncT'
      (max f₁ (maxOrder (nonMonomialPart T'.boundary T'.ideal) + 1)) (le_max_left _ _)
  have h2 : nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A)
      (max f₁ (maxOrder (nonMonomialPart T'.boundary T'.ideal) + 1))
      = nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A) :=
    nonMonomialOrderReductionIter_eq_of_maxOrder_lt hG hinv hspec hT' hdim'
      (max f₁ (maxOrder (nonMonomialPart T'.boundary T'.ideal) + 1)) (le_max_right _ _)
  have hup : nonMonomialOrderReductionIter hinv T' (principalizationOfDimLe T' A) f₁ = nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A) :=
    h1.symm.trans h2
  refine ⟨?_⟩
  rw [← hup, ← hlow]
  exact c

theorem companionIdealReductionIter_exists_sequenceOfBlowupsPullback (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A B : PrincipalizationAssignment.{u}) (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap) (f : ℕ) :
    ∃ (f' : ℕ) (c : SequenceOfBlowupsPullback g
        (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A))
          f').toMarkedSequenceOfBlowups.toSequenceOfBlowups
        (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A))
          f).toMarkedSequenceOfBlowups.toSequenceOfBlowups),
      (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f').ideal
          (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f').length =
        ((companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) f).ideal
          (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) f).length).comap
            c.lastMap ∧
      MarkedIdealWithBoundary.SameNontrivialBoundary
        ((companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f').boundary
          (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f').length)
        (((companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) f).boundary
          (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) f).length).map
            fun D => D.comap c.lastMap) := by
  have hflat : AlgebraicGeometry.Flat g := hbc.flat
  have key : ∀ m : ℕ, ∃ f' : ℕ, Nonempty (SequenceOfBlowupsPullback g
      (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A))
        f').toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A))
        m).toMarkedSequenceOfBlowups.toSequenceOfBlowups) := by
    intro m
    induction m with
    | zero =>
        exact ⟨0, nonempty_sequenceOfBlowupsPullback_nonMonomialOrderReduction hG hinv n A B hspec T T' g hT hT' hdim hdim' hmult
          hideal hbdry hbc⟩
    | succ m ih =>
        obtain ⟨f₁, hc⟩ := ih
        obtain ⟨c⟩ := hc
        by_cases hcont : CompanionIdealReductionContinues T
            (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m)
        · obtain ⟨hI, hB⟩ := lastIdeal_and_boundary_comap_of_isAdmissible T T' g hT hT' hflat hmult hideal hbdry
            (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m)
            (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f₁) c
          have hstepL := companionIdealReductionIter_succ_of_continues hinv T (principalizationOfDimLe T A)
            (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m hcont
          have hle := maxOrderNonMonomialOnOrderLocus_le_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult
            hideal hbdry hbc
            (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m)
            (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f₁) c hI hB
          rcases hle.lt_or_eq with hlt | heq
          · have hJ := companionTriple_isAdmissible hG hT
              (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m) hcont
            have hempty := orderAtLeastLocus_comap_companionIdeal_eq_empty_of_lt hG hinv n A
              T T' g hT hT' hdim hdim' hmult hideal hbdry hbc
              (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m)
              (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f₁) c hI hB
              hlt
            refine ⟨f₁, ?_⟩
            rw [hstepL]
            exact nonempty_sequenceOfBlowupsPullback_of_orderAtLeastLocus_empty hG hinv n A B hspec T T' g hT hT'
              hdim hdim' hmult hideal hbdry hbc
              (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m)
              (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f₁) c hI hB
              (companionIdeal T
                (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m))
              (T.mult * maxOrderNonMonomialOnOrderLocus T
                (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m)) hJ hempty
          · have hcont1 : (1 : ℕ) ≤ maxOrderNonMonomialOnOrderLocus T
                (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m) := hcont
            have hcont' : CompanionIdealReductionContinues T'
                (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f₁) := by
              show (1 : ℕ) ≤ maxOrderNonMonomialOnOrderLocus T'
                (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f₁)
              exact le_trans hcont1 heq.ge
            have hid' := companionIdeal_eq_comap_lastMap_of_pullback hG hinv n A T T' g hT hT' hdim
              hdim' hmult hideal hbdry hbc
              (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m)
              (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f₁) c hI hB
              heq
            have hmu' : T'.mult * maxOrderNonMonomialOnOrderLocus T'
                (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f₁)
                = T.mult * maxOrderNonMonomialOnOrderLocus T
                  (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m) := by
              rw [hmult, heq]
            refine ⟨f₁ + 1, ?_⟩
            rw [hstepL, companionIdealReductionIter_succ_of_continues hinv T' (principalizationOfDimLe T' A)
              (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f₁ hcont']
            refine nonempty_sequenceOfBlowupsPullback_extendByCompanionIdeal hG hinv n A B hspec T T' g hT hT'
              hdim hdim' hmult hideal hbdry hbc
              (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m)
              (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f₁) c hI hB
              hcont hcont' heq ?_
            intro h h'
            refine iff_of_false ?_ ?_
            · exact markedDataOfSeq_companionIdeal_ne_none hG T hT A
                (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m) hcont
                (companionIdeal T
                  (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m))
                (T.mult * maxOrderNonMonomialOnOrderLocus T
                  (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m))
                rfl rfl h
            · exact markedDataOfSeq_companionIdeal_ne_none hG T' hT' A
                (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f₁) hcont'
                ((companionIdeal T
                  (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m)).comap
                    c.lastMap)
                (T.mult * maxOrderNonMonomialOnOrderLocus T
                  (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m))
                hid' hmu' h'
        · refine ⟨f₁, ?_⟩
          rw [companionIdealReductionIter_succ_of_not_continues hinv T (principalizationOfDimLe T A)
            (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) m hcont]
          exact ⟨c⟩
  obtain ⟨f', hn⟩ := key f
  obtain ⟨c⟩ := hn
  exact ⟨f', c, lastIdeal_and_boundary_comap_of_isAdmissible T T' g hT hT' hflat hmult hideal hbdry
    (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) f)
    (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f') c⟩

private theorem projectionToBase_mem_orderAtLeastLocus (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (T : MarkedIdealWithBoundary.{u}) (hT : T.IsAdmissible) (σ : T.SequenceOfBlowups)
    (j : ℕ) (hj : j ≤ σ.toSequenceOfBlowups.length) (z : ↥(σ.toSequenceOfBlowups.schemeAt j))
    (hz : z ∈ orderAtLeastLocus (σ.ideal j) T.mult) :
    (σ.toSequenceOfBlowups.projectionToBase j).base z ∈ orderAtLeastLocus T.ideal T.mult := by
  have hval : ∀ l ≤ σ.toSequenceOfBlowups.length, (T.transformAt σ l).IsAdmissible := by
    intro l hl
    exact hG.monomialInputs.level_valid T hT σ l hl
  have hsub := MarkedSequenceOfBlowups.orderAtLeastLocus_subset_preimage_transitionMap
    (orderAtComapOffExceptionalLocus_of_monomialGeometryHypotheses hG.monomialInputs)
    T σ hval T.mult le_rfl 0 j (Nat.zero_le j) hj
  have h0 : (σ.toSequenceOfBlowups.transitionMap (Nat.zero_le j)).base z ∈ orderAtLeastLocus (σ.ideal 0) T.mult := hsub hz
  rw [σ.ideal_zero, hinv.coSupport_comap σ.toSequenceOfBlowups.isoZero T.ideal T.mult] at h0
  have hcomp : (σ.toSequenceOfBlowups.projectionToBase j).base z
      = (σ.toSequenceOfBlowups.isoZero.hom).base ((σ.toSequenceOfBlowups.transitionMap (Nat.zero_le j)).base z) := by
    rw [SequenceOfBlowups.projectionToBase_def]
    simp
  rw [hcomp]
  exact h0

private theorem nonempty_sequenceOfBlowupsPullback_of_center_not_mem_range {X Y : Scheme.{u}} (g : Y ⟶ X)
    (hflat : AlgebraicGeometry.Flat g) (sD : SequenceOfBlowups X) (sU : SequenceOfBlowups Y)
    (hU : sU.length = 0)
    (hmiss : ∀ i : ℕ, i < sD.length → ∀ z : ↥(sD.schemeAt i), z ∈ (sD.center i).support →
      ∀ y : ↥Y, g.base y ≠ (sD.projectionToBase i).base z) :
    Nonempty (SequenceOfBlowupsPullback g sU sD) := by
  have := hflat
  refine ⟨SequenceOfBlowupsPullback.ofBlowupDataOfSeq (SequenceOfBlowupsPullback.ofCentersMissImage g (BlowupSequenceData.ofSequenceOfBlowups sD) ?_
    (BlowupSequenceData.ofSequenceOfBlowups sU) ?_)⟩
  · intro i hi z hz y
    rw [BlowupSequenceData.ofSequenceOfBlowups_length sD] at hi
    have hproj : (BlowupSequenceData.ofSequenceOfBlowups sD).projectionToBase i = sD.projectionToBase i :=
      (BlowupSequenceData.toSequenceOfBlowups_projectionToBase (BlowupSequenceData.ofSequenceOfBlowups sD) i).symm.trans
        (BlowupSequenceData.projectionToBase_toSequenceOfBlowups_ofSequenceOfBlowups sD i)
    rw [hproj]
    exact hmiss i hi z hz y
  · exact (BlowupSequenceData.ofSequenceOfBlowups_length sU).trans hU

private theorem exists_sequenceOfBlowupsPullback_congr {T T' : MarkedIdealWithBoundary.{u}} (g : T'.scheme ⟶ T.scheme)
    (S₁ S₂ : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (R₁ R₂ : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (hS : S₁ = S₂) (hR : R₁ = R₂)
    (hex : ∃ c : SequenceOfBlowupsPullback g S₁.toMarkedSequenceOfBlowups.toSequenceOfBlowups R₁.toMarkedSequenceOfBlowups.toSequenceOfBlowups,
      S₁.ideal S₁.length = (R₁.ideal R₁.length).comap c.lastMap ∧
      MarkedIdealWithBoundary.SameNontrivialBoundary (S₁.boundary S₁.length)
        ((R₁.boundary R₁.length).map fun D => D.comap c.lastMap)) :
    ∃ c : SequenceOfBlowupsPullback g S₂.toMarkedSequenceOfBlowups.toSequenceOfBlowups R₂.toMarkedSequenceOfBlowups.toSequenceOfBlowups,
      S₂.ideal S₂.length = (R₂.ideal R₂.length).comap c.lastMap ∧
      MarkedIdealWithBoundary.SameNontrivialBoundary (S₂.boundary S₂.length)
        ((R₂.boundary R₂.length).map fun D => D.comap c.lastMap) := by
  subst hS
  subst hR
  exact hex

private theorem isLocallyMonomialTriple_tripleAtLength_congr (T : MarkedIdealWithBoundary.{u})
    (s : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (J K : (s.obj s.length).IdealSheafData) (μ ν : ℕ) (hJK : J = K) (hμν : μ = ν)
    (h : MonomialCenter.IsLocallyMonomialTriple (tripleAtLength T s J μ)) :
    MonomialCenter.IsLocallyMonomialTriple (tripleAtLength T s K ν) := by
  subst hJK
  subst hμν
  exact h

private theorem isPullbackBlowupSequence_monomialPrincipalization_congr (hinv : ComapIsoInvariance.{u})
    (T T' : MarkedIdealWithBoundary.{u})
    (S : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (S' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (f : S'.obj S'.length ⟶ S.obj S.length)
    (J : (S.obj S.length).IdealSheafData) (μ : ℕ)
    (K₁ K₂ : (S'.obj S'.length).IdealSheafData) (ν₁ ν₂ : ℕ)
    (hK : K₁ = K₂) (hν : ν₁ = ν₂)
    (h : IsPullbackBlowupSequence f (monomialPrincipalization hinv (tripleAtLength T' S' K₁ ν₁)).toSequenceOfBlowups
      (monomialPrincipalization hinv (tripleAtLength T S J μ)).toSequenceOfBlowups) :
    IsPullbackBlowupSequence f (monomialPrincipalization hinv (tripleAtLength T' S' K₂ ν₂)).toSequenceOfBlowups
      (monomialPrincipalization hinv (tripleAtLength T S J μ)).toSequenceOfBlowups := by
  subst hK
  subst hν
  exact h

private theorem isPullbackSequenceOfBlowups_monomial_of_pullback (hinv : ComapIsoInvariance.{u})
    (hmg : MonomialGeometryHypotheses.{u})
    (n : ℕ) (A : PrincipalizationAssignment.{u}) (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap)
    (S : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (S' : MarkedBlowupSequenceData T'.structMap T'.ideal T'.mult T'.boundary)
    (c : SequenceOfBlowupsPullback g S'.toMarkedSequenceOfBlowups.toSequenceOfBlowups S.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hmult : T'.mult = T.mult)
    (hidealLastComap : S'.ideal S'.length = (S.ideal S.length).comap c.lastMap)
    (hlastBoundary : MarkedIdealWithBoundary.SameNontrivialBoundary (S'.boundary S'.length)
      ((S.boundary S.length).map fun D => D.comap c.lastMap))
    (hmonLow : MonomialCenter.IsLocallyMonomialTriple (tripleAtLength T S (S.ideal S.length) T.mult))
    (hmonUp : MonomialCenter.IsLocallyMonomialTriple
      (tripleAtLength T' S' (S'.ideal S'.length) T'.mult)) :
    IsPullbackBlowupSequence c.lastMap
      (monomialPrincipalization hinv (tripleAtLength T' S' (S'.ideal S'.length) T'.mult)).toSequenceOfBlowups
      (monomialPrincipalization hinv (tripleAtLength T S (S.ideal S.length) T.mult)).toSequenceOfBlowups := by
  have hdimS := MonomialGeometryHypotheses.krullDimSucc_schemeAt_length_le_dim hmg T hT S
  have hvalS := MonomialGeometryHypotheses.isAdmissible_tripleAtLength hmg T hT S
  have hmonUp' : MonomialCenter.IsLocallyMonomialTriple
      (tripleAtLength T' S' ((S.ideal S.length).comap c.lastMap) T.mult) :=
    isLocallyMonomialTriple_tripleAtLength_congr T' S' (S'.ideal S'.length)
      ((S.ideal S.length).comap c.lastMap) T'.mult T.mult hidealLastComap hmult hmonUp
  have hmain := hbc.monomialBody (SequenceOfBlowupsPullback.toMarkedPullbackSquare g S S' c hdimS hvalS) hmonLow
    (S'.boundary S'.length) hlastBoundary.symm hmonUp'
  exact isPullbackBlowupSequence_monomialPrincipalization_congr hinv T T' S S' c.lastMap (S.ideal S.length)
    T.mult ((S.ideal S.length).comap c.lastMap) (S'.ideal S'.length) T.mult T'.mult hidealLastComap.symm
    hmult.symm hmain

private theorem orderReductionSeq_isPullbackBlowupSequence_of_comap (hG : PrincipalizationGeometryHypotheses.{u})
    (hinv : ComapIsoInvariance.{u}) (n : ℕ)
    (A B : PrincipalizationAssignment.{u}) (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    (T T' : MarkedIdealWithBoundary.{u}) (g : T'.scheme ⟶ T.scheme)
    (hT : T.IsAdmissible) (hT' : T'.IsAdmissible) (hdim : T.krullDimSucc ≤ n) (hdim' : T'.krullDimSucc ≤ n)
    (hmult : T'.mult = T.mult) (hideal : T'.ideal = T.ideal.comap g)
    (hbdry : MarkedIdealWithBoundary.SameNontrivialBoundary T'.boundary (T.boundary.map fun D => D.comap g))
    (hbc : BaseChangeCompatible hinv A n T g T'.base T'.structMap) :
    IsPullbackBlowupSequence g (orderReductionSeq hinv T' (principalizationOfDimLe T' A)).toSequenceOfBlowups
      (orderReductionSeq hinv T (principalizationOfDimLe T A)).toSequenceOfBlowups := by
  classical
  by_cases hemp : orderAtLeastLocus T'.ideal T'.mult = ∅
  · have hU : (orderReductionSeq hinv T' (principalizationOfDimLe T' A)).toSequenceOfBlowups.length = 0 :=
      orderReductionSeq_length_eq_zero_of_orderAtLeastLocus_empty hinv T' A hemp
    have hmiss : ∀ i : ℕ, i < (orderReductionSeq hinv T (principalizationOfDimLe T A)).toSequenceOfBlowups.length →
        ∀ z : ↥((orderReductionSeq hinv T (principalizationOfDimLe T A)).toSequenceOfBlowups.schemeAt i),
          z ∈ ((orderReductionSeq hinv T (principalizationOfDimLe T A)).toSequenceOfBlowups.center i).support →
          ∀ y : ↥T'.scheme,
            g.base y ≠ ((orderReductionSeq hinv T (principalizationOfDimLe T A)).toSequenceOfBlowups.projectionToBase i).base z := by
      intro i hi z hz y hcon
      have hz' : z ∈ orderAtLeastLocus ((orderReductionSeq hinv T (principalizationOfDimLe T A)).ideal i) T.mult :=
        (orderReductionSeq hinv T (principalizationOfDimLe T A)).center_order i hi hz
      have hkey := projectionToBase_mem_orderAtLeastLocus hG hinv T hT (orderReductionSeq hinv T (principalizationOfDimLe T A)) i
        (le_of_lt hi) z hz'
      rw [← hcon] at hkey
      have hordy := orderAt_comap_of_baseChangeCompatible hinv A n T hT g T'.base T'.structMap hbc T.ideal y
      have hmem : y ∈ orderAtLeastLocus T'.ideal T'.mult := by
        rw [mem_orderAtLeastLocus_iff, hideal, hmult, hordy]
        exact (mem_orderAtLeastLocus_iff T.ideal T.mult (g.base y)).1 hkey
      rw [hemp] at hmem
      simp only [Set.mem_empty_iff_false] at hmem
    obtain ⟨cc⟩ := nonempty_sequenceOfBlowupsPullback_of_center_not_mem_range g hbc.flat
      (orderReductionSeq hinv T (principalizationOfDimLe T A)).toSequenceOfBlowups
      (orderReductionSeq hinv T' (principalizationOfDimLe T' A)).toSequenceOfBlowups hU hmiss
    exact cc.isPullbackSequenceOfBlowups
  · have hT'ne : (orderAtLeastLocus T'.ideal T'.mult).Nonempty := Set.nonempty_iff_ne_empty.2 hemp
    have hTne : (orderAtLeastLocus T.ideal T.mult).Nonempty := by
      rcases Set.eq_empty_or_nonempty (orderAtLeastLocus T.ideal T.mult) with h | h
      · exfalso
        apply hemp
        rw [hideal, hmult]
        exact orderAtLeastLocus_comap_eq_empty_of_baseChangeCompatible hinv A n T hT g T'.base T'.structMap hbc h
      · exact h
    obtain ⟨f', hc⟩ := companionIdealReductionIter_exists_sequenceOfBlowupsPullback hG hinv n A B hspec T T' g hT hT'
      hdim hdim' hmult hideal hbdry hbc (maxOrderNonMonomialOnOrderLocus T (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) + 1)
    have hlowStop : ¬ CompanionIdealReductionContinues T
        (companionIdealReductionIter hinv T (principalizationOfDimLe T A) (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A))
          (maxOrderNonMonomialOnOrderLocus T (nonMonomialOrderReduction hinv T (principalizationOfDimLe T A)) + 1)) := by
      rw [← companionIdealReduction_eq hinv T (principalizationOfDimLe T A)]
      exact not_companionIdealReductionContinues_companionIdealReduction hG hinv hspec hT hdim
    have hupStop : ¬ CompanionIdealReductionContinues T'
        (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f') := by
      obtain ⟨c0, h1, h2⟩ := hc
      intro hcont
      exact hlowStop (companionIdealReductionContinues_of_pullback hG hinv n A T T' g hT hT' hdim hdim' hmult
        hideal hbdry hbc _ _ c0 h1 h2 hcont)
    have hstop' : ¬ CompanionIdealReductionContinues T'
        (companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A))
          (maxOrderNonMonomialOnOrderLocus T' (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) + 1)) := by
      rw [← companionIdealReduction_eq hinv T' (principalizationOfDimLe T' A)]
      exact not_companionIdealReductionContinues_companionIdealReduction hG hinv hspec hT' hdim'
    have hupEq : companionIdealReductionIter hinv T' (principalizationOfDimLe T' A) (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f'
        = companionIdealReduction hinv T' (principalizationOfDimLe T' A) := by
      rw [companionIdealReduction_eq hinv T' (principalizationOfDimLe T' A)]
      rcases le_total f' (maxOrderNonMonomialOnOrderLocus T' (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) + 1) with h | h
      · exact (companionIdealReductionIter_eq_of_not_continues hinv T' (principalizationOfDimLe T' A)
          (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) f' hupStop _ h).symm
      · exact companionIdealReductionIter_eq_of_not_continues hinv T' (principalizationOfDimLe T' A)
          (nonMonomialOrderReduction hinv T' (principalizationOfDimLe T' A)) _ hstop' f' h
    obtain ⟨c, hidealLastComap, hlastBoundary⟩ := exists_sequenceOfBlowupsPullback_congr g _ _ _ _ hupEq
      (companionIdealReduction_eq hinv T (principalizationOfDimLe T A)).symm hc
    have hmonLow : MonomialCenter.IsLocallyMonomialTriple
        (tripleAtLength T (companionIdealReduction hinv T (principalizationOfDimLe T A))
          ((companionIdealReduction hinv T (principalizationOfDimLe T A)).ideal (companionIdealReduction hinv T (principalizationOfDimLe T A)).length) T.mult) :=
      isLocallyMonomialTriple_tripleAtLength_companionIdealReduction hG hinv hspec hT hdim
    have hmonUp : MonomialCenter.IsLocallyMonomialTriple
        (tripleAtLength T' (companionIdealReduction hinv T' (principalizationOfDimLe T' A))
          ((companionIdealReduction hinv T' (principalizationOfDimLe T' A)).ideal
            (companionIdealReduction hinv T' (principalizationOfDimLe T' A)).length) T'.mult) :=
      isLocallyMonomialTriple_tripleAtLength_companionIdealReduction hG hinv hspec hT' hdim'
    have hIP := isPullbackSequenceOfBlowups_monomial_of_pullback hinv hG.monomialInputs n A
      T T' g hT hbc (companionIdealReduction hinv T (principalizationOfDimLe T A)) (companionIdealReduction hinv T' (principalizationOfDimLe T' A)) c hmult
      hidealLastComap hlastBoundary hmonLow hmonUp
    obtain ⟨cc⟩ := hIP.nonempty_sequenceOfBlowupsPullback
    rw [orderReductionSeq_eq_of_nonempty hinv T (principalizationOfDimLe T A) hTne, orderReductionSeq_eq_of_nonempty hinv T' (principalizationOfDimLe T' A) hT'ne,
      orderReductionData_eq_append hinv T A, orderReductionData_eq_append hinv T' A]
    exact isPullbackBlowupSequence_append_of_two_fields g (companionIdealReduction hinv T (principalizationOfDimLe T A)) (orderReductionMonomialSequence hinv T A)
      (companionIdealReduction hinv T' (principalizationOfDimLe T' A)) (orderReductionMonomialSequence hinv T' A) hinv c
      (SequenceOfBlowupsPullback.toBlowupDataOfSeq cc)

theorem orderReductionSeq_isPullbackBlowupSequence_mk (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u}) (n : ℕ)
    (A B : PrincipalizationAssignment.{u}) (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    (T : MarkedIdealWithBoundary.{u}) (hT : T.IsAdmissible) (hdim : T.krullDimSucc ≤ n)
    {Y : Scheme.{u}} (k' : Type u) [Field k'] (q : Y ⟶ Spec (CommRingCat.of k'))
    (g : Y ⟶ T.scheme) (E' : List Y.IdealSheafData)
    (hE : MarkedIdealWithBoundary.SameNontrivialBoundary E' (T.boundary.map fun D => D.comap g))
    (hT' : (MarkedIdealWithBoundary.mk k' Y q (T.ideal.comap g) T.mult E').IsAdmissible)
    (hdim' : (MarkedIdealWithBoundary.mk k' Y q (T.ideal.comap g) T.mult E').krullDimSucc ≤ n)
    (hbc : BaseChangeCompatible hinv A n T g k' q) :
    IsPullbackBlowupSequence g
      (orderReductionSeq hinv (MarkedIdealWithBoundary.mk k' Y q (T.ideal.comap g) T.mult E')
        (principalizationOfDimLe (MarkedIdealWithBoundary.mk k' Y q (T.ideal.comap g) T.mult E') A)).toSequenceOfBlowups
      (orderReductionSeq hinv T (principalizationOfDimLe T A)).toSequenceOfBlowups :=
  orderReductionSeq_isPullbackBlowupSequence_of_comap hG hinv n A B hspec T
    (MarkedIdealWithBoundary.mk k' Y q (T.ideal.comap g) T.mult E') g hT hT' hdim hdim' rfl rfl hE hbc

theorem orderReductionSeq_isPullbackBlowupSequence_pullbackOverField (hG : PrincipalizationGeometryHypotheses.{u}) (hinv : ComapIsoInvariance.{u})
    (n : ℕ) (A B : PrincipalizationAssignment.{u}) (hspec : IsOrderReduction (fun d => d ≤ n) A B)
    (T : MarkedIdealWithBoundary.{u}) (hT : T.IsAdmissible) (hdim : T.krullDimSucc ≤ n)
    {Y : Scheme.{u}} (k' : Type u) [Field k'] (q : Y ⟶ Spec (CommRingCat.of k'))
    (g : Y ⟶ T.scheme) (E' : List Y.IdealSheafData)
    (hE : MarkedIdealWithBoundary.SameNontrivialBoundary E' (T.boundary.map fun D => D.comap g))
    (hT' : ((T.pullbackOverField Y k' q g).withBoundary E').IsAdmissible)
    (hdim' : ((T.pullbackOverField Y k' q g).withBoundary E').krullDimSucc ≤ n)
    (hbc : BaseChangeCompatible hinv A n T g k' q) :
    IsPullbackBlowupSequence g
      (orderReductionSeq hinv ((T.pullbackOverField Y k' q g).withBoundary E')
        (principalizationOfDimLe ((T.pullbackOverField Y k' q g).withBoundary E') A)).toSequenceOfBlowups
      (orderReductionSeq hinv T (principalizationOfDimLe T A)).toSequenceOfBlowups := by
  have hT2 : (MarkedIdealWithBoundary.mk k' Y q (T.ideal.comap g) T.mult E').IsAdmissible := hT'
  have hdim2 : (MarkedIdealWithBoundary.mk k' Y q (T.ideal.comap g) T.mult E').krullDimSucc ≤ n := hdim'
  exact orderReductionSeq_isPullbackBlowupSequence_mk hG hinv n A B hspec T hT hdim k' q g E' hE hT2 hdim2 hbc

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderReductionBaseChange =====
