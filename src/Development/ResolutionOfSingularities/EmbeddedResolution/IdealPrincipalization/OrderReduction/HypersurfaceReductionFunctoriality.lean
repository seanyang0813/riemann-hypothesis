module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.SameNontrivialBoundary
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.DimensionNonincreasing
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceIsomorphism
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.DisjointCentersPullback
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BoundarySeparationBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BoundarySeparation
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.FaithfullyFlatDescent
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.BlowupDataOfSequence
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.IteratedStrictTransformPullback
import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatBaseChange
import Std.Tactic.BVDecide.Normalize.Prop
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MarkedBlowupSequenceBoundary
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactHypersurfaceTransform

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.ContinuationComparison, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.TrivialDivisorContinuation, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BoundarySeparationPullbackComparison, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.LowerDimensionalContinuation, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.HypersurfaceReductionFunctoriality

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.ContinuationComparison =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.ContinuationComparison", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.SameNontrivialBoundary\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.DimensionNonincreasing\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.BlowupDataOfSequence\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.IteratedStrictTransformPullback\nimport Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceIsomorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

universe u v

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace BoundaryDeletion

private theorem take_append_getElem_cons_drop {α : Type v} (L : List α) (i : ℕ)
    (h : i < L.length) : L.take i ++ L[i] :: L.drop (i + 1) = L := by
  rw [List.cons_getElem_drop_succ, List.take_append_drop]

private theorem sameNontrivialBoundary_congr_right {X : Scheme.{u}} (L₁ L₂ L₂' : List X.IdealSheafData)
    (h : L₂ = L₂') (hbe : MarkedIdealWithBoundary.SameNontrivialBoundary L₁ L₂') :
    MarkedIdealWithBoundary.SameNontrivialBoundary L₁ L₂ := by
  subst h
  exact hbe

private theorem sameNontrivialBoundary_congr {X : Scheme.{u}} (L₁ L₁' L₂ L₂' : List X.IdealSheafData)
    (h₁ : L₁ = L₁') (h₂ : L₂ = L₂') (hbe : MarkedIdealWithBoundary.SameNontrivialBoundary L₁' L₂') :
    MarkedIdealWithBoundary.SameNontrivialBoundary L₁ L₂ := by
  subst h₁
  subst h₂
  exact hbe

private theorem isPullback_congr {X₀ Y₀ : Scheme.{u}} (φ : Y₀ ⟶ X₀) (sbase : SequenceOfBlowups X₀)
    {t₁ t₂ : SequenceOfBlowups Y₀} (h : t₁ = t₂) (hp : IsPullbackBlowupSequence φ t₁ sbase) :
    IsPullbackBlowupSequence φ t₂ sbase := by
  subst h
  exact hp

private theorem isPullback_congr_marked (F : PrincipalizationAssignment.{u}) {X₀ : Scheme.{u}}
    (sbase : SequenceOfBlowups X₀) {T₁ T₂ : MarkedIdealWithBoundary.{u}} (h : T₁ = T₂)
    (φ₁ : T₁.scheme ⟶ X₀) (φ₂ : T₂.scheme ⟶ X₀) (hφ : HEq φ₁ φ₂)
    (hp : IsPullbackBlowupSequence φ₁ (F T₁).toSequenceOfBlowups sbase) :
    IsPullbackBlowupSequence φ₂ (F T₂).toSequenceOfBlowups sbase := by
  subst h
  have hee : φ₁ = φ₂ := eq_of_heq hφ
  subst hee
  exact hp

private theorem isAdmissible_of_eq {T₁ T₂ : MarkedIdealWithBoundary.{u}} (h : T₁ = T₂) (hv : T₂.IsAdmissible) :
    T₁.IsAdmissible := by
  subst h
  exact hv

private theorem pred_dim_of_eq {T₁ T₂ : MarkedIdealWithBoundary.{u}} (h : T₁ = T₂) (P : ℕ → Prop)
    (hp : P T₂.krullDimSucc) : P T₁.krullDimSucc := by
  subst h
  exact hp

private theorem isOrderBoundedByMult_of_eq {T₁ T₂ : MarkedIdealWithBoundary.{u}} (h : T₁ = T₂)
    (ho : T₂.IsOrderBoundedByMult) : T₁.IsOrderBoundedByMult := by
  subst h
  exact ho

private theorem locallyOfFiniteType_of_eq {T₁ T₂ : MarkedIdealWithBoundary.{u}} (h : T₁ = T₂)
    (h₂ : AlgebraicGeometry.LocallyOfFiniteType T₂.structMap) :
    AlgebraicGeometry.LocallyOfFiniteType T₁.structMap := by
  subst h
  exact h₂

private theorem isBalanced_of_eq {T₁ T₂ : MarkedIdealWithBoundary.{u}} (h : T₁ = T₂)
    (h₁ : AlgebraicGeometry.LocallyOfFiniteType T₁.structMap)
    (h₂ : AlgebraicGeometry.LocallyOfFiniteType T₂.structMap)
    (hd : T₂.IsBalanced h₂) : T₁.IsBalanced h₁ := by
  subst h
  exact hd

private theorem isPullback_of_sameNontrivialBoundary
    (P : ℕ → Prop) (A : ℕ → PrincipalizationAssignment.{u}) (j c : ℕ)
    (hshift : IsBoundaryPositionInvariant P A)
    (W : MarkedIdealWithBoundary.{u}) (hWP : P W.krullDimSucc) (hWO : W.IsOrderBoundedByMult)
    (hftW : AlgebraicGeometry.LocallyOfFiniteType W.structMap) (hWD : W.IsBalanced hftW)
    (E₁ E₂ E₁' E₂' : List W.scheme.IdealSheafData) (Dv : W.scheme.IdealSheafData)
    (hBE₁ : MarkedIdealWithBoundary.SameNontrivialBoundary E₁ E₁')
    (hBE₂ : MarkedIdealWithBoundary.SameNontrivialBoundary E₂ E₂')
    (hlen : E₁.length = j) (hlen' : E₁'.length = c)
    (hV1 : (W.withBoundary (E₁ ++ Dv :: E₂)).IsAdmissible)
    (hV2 : (W.withBoundary (E₁' ++ Dv :: E₂')).IsAdmissible)
    {X₀ : Scheme.{u}} (φ : (W.withBoundary (E₁ ++ Dv :: E₂)).scheme ⟶ X₀)
    (sbase : SequenceOfBlowups X₀)
    (hpull : IsPullbackBlowupSequence φ (A j (W.withBoundary (E₁ ++ Dv :: E₂))).toSequenceOfBlowups sbase) :
    IsPullbackBlowupSequence φ (A c (W.withBoundary (E₁' ++ Dv :: E₂'))).toSequenceOfBlowups sbase := by
  have hEq := hshift.shift W hWP hWO hftW hWD E₁ E₂ E₁' E₂' Dv hBE₁ hBE₂ hV1 hV2
  rw [hlen, hlen'] at hEq
  exact IsPullbackBlowupSequence.of_isomorphic hpull hEq

private theorem isPullbackBlowupSequence_pullbackAlong
    (P : ℕ → Prop) (A : ℕ → PrincipalizationAssignment.{u}) (Bl : PrincipalizationAssignment.{u}) (j c : ℕ)
    (hspec : IsBoundaryDivisorReduction P j (A j) Bl) (hshift : IsBoundaryPositionInvariant P A)
    (V : MarkedIdealWithBoundary.{u}) (hVv : V.IsAdmissible) (hP : P V.krullDimSucc) (hO : V.IsOrderBoundedByMult)
    (hftV : AlgebraicGeometry.LocallyOfFiniteType V.structMap) (hDb : V.IsBalanced hftV)
    (Y : Scheme.{u}) (qy : Y ⟶ Spec (CommRingCat.of V.base)) (hmap : Y ⟶ V.scheme)
    (hsm : AlgebraicGeometry.Smooth hmap) (hqy : hmap ≫ V.structMap = qy)
    (LT : List Y.IdealSheafData)
    (hVv' : ((V.pullbackAlong Y qy hmap).withBoundary LT).IsAdmissible)
    (hP' : P ((V.pullbackAlong Y qy hmap).withBoundary LT).krullDimSucc)
    (hO' : ((V.pullbackAlong Y qy hmap).withBoundary LT).IsOrderBoundedByMult)
    (hftV' : AlgebraicGeometry.LocallyOfFiniteType
      ((V.pullbackAlong Y qy hmap).withBoundary LT).structMap)
    (hDb' : ((V.pullbackAlong Y qy hmap).withBoundary LT).IsBalanced hftV')
    (Lbd : List V.scheme.IdealSheafData) (hLbd : V.boundary = Lbd)
    (hjLbd : j < Lbd.length) (hcLT : c < LT.length)
    (hget : (Lbd[j]'hjLbd).comap hmap = LT[c]'hcLT)
    (hfull : MarkedIdealWithBoundary.SameNontrivialBoundary (Lbd.map (fun D => D.comap hmap)) LT)
    (hpre : MarkedIdealWithBoundary.SameNontrivialBoundary ((Lbd.take j).map (fun D => D.comap hmap)) (LT.take c))
    (hsuf : MarkedIdealWithBoundary.SameNontrivialBoundary ((Lbd.drop (j + 1)).map (fun D => D.comap hmap))
      (LT.drop (c + 1))) :
    IsPullbackBlowupSequence hmap (A c ((V.pullbackAlong Y qy hmap).withBoundary LT)).toSequenceOfBlowups
      (A j V).toSequenceOfBlowups := by
  have := hsm
  have hPBb : (V.pullbackAlong Y qy hmap).boundary = Lbd.map (fun D => D.comap hmap) :=
    (MarkedIdealWithBoundary.pullbackAlong_boundary V Y qy hmap).trans
      (congrArg (List.map (fun D => D.comap hmap)) hLbd)
  have hjV : j < V.boundary.length := by
    rw [hLbd]
    exact hjLbd
  have hmaplen : (Lbd.map (fun D => D.comap hmap)).length = Lbd.length := by simp
  have hlenPB : (V.pullbackAlong Y qy hmap).boundary.length = Lbd.length := by
    rw [hPBb]
    exact hmaplen
  have hjPB : j < (V.pullbackAlong Y qy hmap).boundary.length := by
    rw [hlenPB]
    exact hjLbd
  have hPW : P (V.pullbackAlong Y qy hmap).krullDimSucc := hP'
  have hOW : (V.pullbackAlong Y qy hmap).IsOrderBoundedByMult := hO'
  have hftW : AlgebraicGeometry.LocallyOfFiniteType (V.pullbackAlong Y qy hmap).structMap := hftV'
  have hDW : (V.pullbackAlong Y qy hmap).IsBalanced hftW := hDb'
  have hLTbe : MarkedIdealWithBoundary.SameNontrivialBoundary LT (V.pullbackAlong Y qy hmap).boundary :=
    sameNontrivialBoundary_congr_right LT (V.pullbackAlong Y qy hmap).boundary
      (Lbd.map (fun D => D.comap hmap)) hPBb hfull.symm
  have hPBV : (V.pullbackAlong Y qy hmap).IsAdmissible :=
    MarkedIdealWithBoundary.validOfSameNontrivialBoundary ((V.pullbackAlong Y qy hmap).withBoundary LT)
      (V.pullbackAlong Y qy hmap).boundary hVv' hLTbe
  have hsplit : (Lbd.take j).map (fun D => D.comap hmap) ++ (LT[c]'hcLT)
        :: (Lbd.drop (j + 1)).map (fun D => D.comap hmap) = Lbd.map (fun D => D.comap hmap) := by
    rw [← hget]
    have h := congrArg (fun L : List V.scheme.IdealSheafData => L.map (fun D => D.comap hmap))
      (take_append_getElem_cons_drop Lbd j hjLbd)
    simpa only [List.map_append, List.map_cons] using h
  have hsplitLT : LT.take c ++ (LT[c]'hcLT) :: LT.drop (c + 1) = LT :=
    take_append_getElem_cons_drop LT c hcLT
  have hPBself : (V.pullbackAlong Y qy hmap).withBoundary
        ((Lbd.take j).map (fun D => D.comap hmap) ++ (LT[c]'hcLT)
          :: (Lbd.drop (j + 1)).map (fun D => D.comap hmap)) = V.pullbackAlong Y qy hmap :=
    (congrArg (MarkedIdealWithBoundary.withBoundary (V.pullbackAlong Y qy hmap))
      (hsplit.trans hPBb.symm)).trans (MarkedIdealWithBoundary.withBoundary_self _)
  have hPBeq : (V.pullbackAlong Y qy hmap).withBoundary
        (LT.take c ++ (LT[c]'hcLT) :: LT.drop (c + 1))
      = (V.pullbackAlong Y qy hmap).withBoundary LT :=
    congrArg (MarkedIdealWithBoundary.withBoundary (V.pullbackAlong Y qy hmap)) hsplitLT
  have hpullPB := hspec.isPullbackBlowupSequence_of_smooth V hVv hP hO hDb hjV Y qy hmap hqy hPBV hPW hOW hDW hjPB
  have hpull1 : IsPullbackBlowupSequence hmap
      (A j ((V.pullbackAlong Y qy hmap).withBoundary
        ((Lbd.take j).map (fun D => D.comap hmap) ++ (LT[c]'hcLT)
          :: (Lbd.drop (j + 1)).map (fun D => D.comap hmap)))).toSequenceOfBlowups
      (A j V).toSequenceOfBlowups :=
    isPullback_congr hmap (A j V).toSequenceOfBlowups
      (eq_of_heq ((A j).toSequenceOfBlowups_heq_of_eq hPBself.symm)) hpullPB
  have hV1 : ((V.pullbackAlong Y qy hmap).withBoundary
      ((Lbd.take j).map (fun D => D.comap hmap) ++ (LT[c]'hcLT)
        :: (Lbd.drop (j + 1)).map (fun D => D.comap hmap))).IsAdmissible := by
    rw [hPBself]
    exact hPBV
  have hV2 : ((V.pullbackAlong Y qy hmap).withBoundary
      (LT.take c ++ (LT[c]'hcLT) :: LT.drop (c + 1))).IsAdmissible := by
    rw [hPBeq]
    exact hVv'
  have hlenE1 : ((Lbd.take j).map (fun D => D.comap hmap)).length = j := by
    simp only [List.length_map, List.length_take]
    omega
  have hlenE1' : (LT.take c).length = c := by
    simp only [List.length_take]
    omega
  have hres := isPullback_of_sameNontrivialBoundary P A j c hshift (V.pullbackAlong Y qy hmap) hPW hOW hftW hDW
    ((Lbd.take j).map (fun D => D.comap hmap)) ((Lbd.drop (j + 1)).map (fun D => D.comap hmap))
    (LT.take c) (LT.drop (c + 1)) (LT[c]'hcLT) hpre hsuf hlenE1 hlenE1' hV1 hV2 hmap
    (A j V).toSequenceOfBlowups hpull1
  exact isPullback_congr hmap (A j V).toSequenceOfBlowups
    (eq_of_heq ((A c).toSequenceOfBlowups_heq_of_eq hPBeq)) hres

variable (P : ℕ → Prop) (A : ℕ → PrincipalizationAssignment.{u}) (Bl : PrincipalizationAssignment.{u}) (j : ℕ)
  (S : MarkedIdealWithBoundary.{u}) {X' : Scheme.{u}} (q : X' ⟶ S.scheme) [AlgebraicGeometry.Smooth q]
  (s : MarkedBlowupSequenceData S.structMap S.ideal S.mult S.boundary)
  (s' : MarkedBlowupSequenceData (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap (NontrivialBoundary.pullbackWithNontrivialBoundary S q).ideal
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).mult (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary)
  (Dt : SequenceOfBlowupsPullback q s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
  (hftS : AlgebraicGeometry.LocallyOfFiniteType (s.proj s.length ≫ S.structMap))
  (hftT : AlgebraicGeometry.LocallyOfFiniteType
    (s'.proj s'.length ≫ (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap))

theorem isPullbackBlowupSequence_derivedTriple
    (hstar : MaxContactCoverProperties.{u})
    (hspec : IsBoundaryDivisorReduction P j (A j) Bl)
    (hshift : IsBoundaryPositionInvariant P A)
    (hV : S.IsAdmissible) (hV' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).IsAdmissible)
    (hm : 1 ≤ S.mult)
    (hO : ∀ x : ↥S.scheme, orderAt S.ideal x ≤ ((S.mult : ℕ) : ℕ∞))
    (hO' : ∀ x : ↥(NontrivialBoundary.pullbackWithNontrivialBoundary S q).scheme,
      orderAt (NontrivialBoundary.pullbackWithNontrivialBoundary S q).ideal x ≤ ((S.mult : ℕ) : ℕ∞))
    (hj : j < S.boundary.length)
    (hlive : (S.boundary[j]'hj).comap q ≠ ⊤)
    (hPU : P (MaxContactCoverData.derivedTriple S s hftS [] 0).krullDimSucc)
    (hVU : (MaxContactCoverData.derivedTriple S s hftS [] 0).IsAdmissible)
    (hPU' : P (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT [] 0).krullDimSucc)
    (hVU' : (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT [] 0).IsAdmissible) :
    IsPullbackBlowupSequence Dt.lastMap
      (A (NontrivialBoundary.survivingBoundaryCount S q j)
        (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT [] 0)).toSequenceOfBlowups
      (A j (MaxContactCoverData.derivedTriple S s hftS [] 0)).toSequenceOfBlowups := by
  classical
  have hflatq : AlgebraicGeometry.Flat q := inferInstance
  have hSmoothLast : AlgebraicGeometry.Smooth Dt.lastMap := Dt.smooth_lastMap
  have hsm : AlgebraicGeometry.Smooth (s.proj s.length ≫ S.structMap) := by
    have hsmU := hVU.smooth
    rwa [_root_.FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple_structureMorphism] at hsmU
  have hpb0 := NontrivialBoundary.pullbackAlong_derivedTriple_eq S q s s' Dt hstar hV hV' hftS hftT hsm [] 0 0
  have hOU := LowerDimReductionPullback.isOrderBoundedByMult_derivedTriple hstar S hV hm hO s hftS [] 0 hVU
  have hDU := LowerDimReductionPullback.isBalanced_derivedTriple hstar S hV hm hO s hftS [] 0 hVU
  have hOU' := LowerDimReductionPullback.isOrderBoundedByMult_derivedTriple hstar (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV' hm hO' s'
    hftT [] 0 hVU'
  have hDU' := LowerDimReductionPullback.isBalanced_derivedTriple hstar (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV' hm hO' s'
    hftT [] 0 hVU'
  have hUb : (MaxContactCoverData.derivedTriple S s hftS [] 0).boundary = s.boundary s.length := by
    rw [MaxContactCoverData.derivedTriple_boundary, List.nil_append, List.drop_zero]
  have hjL : j < (s.boundary s.length).length :=
    lt_of_lt_of_le hj (NontrivialBoundary.length_boundary_le_length_lastBoundary S s)
  have hcLT : NontrivialBoundary.survivingBoundaryCount S q j < (s'.boundary s'.length).length :=
    lt_of_lt_of_le (NontrivialBoundary.survivingBoundaryCount_lt_length S q j hj hlive)
      (NontrivialBoundary.length_boundary_le_length_lastBoundary (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s')
  have hget : ((s.boundary s.length)[j]'hjL).comap Dt.lastMap
      = (s'.boundary s'.length)[NontrivialBoundary.survivingBoundaryCount S q j]'hcLT :=
    NontrivialBoundary.getElem_lastBoundary_comap_lastMap S q s s' Dt hstar hV hV' j hj hlive
  have hfull : MarkedIdealWithBoundary.SameNontrivialBoundary
      ((s.boundary s.length).map (fun D => D.comap Dt.lastMap)) (s'.boundary s'.length) :=
    ((NontrivialBoundary.ideal_and_boundary_comap_lastMap S q s s' Dt hstar hV hV').2).symm
  have hpre : MarkedIdealWithBoundary.SameNontrivialBoundary
      (((s.boundary s.length).take j).map (fun D => D.comap Dt.lastMap))
      ((s'.boundary s'.length).take (NontrivialBoundary.survivingBoundaryCount S q j)) :=
    NontrivialBoundary.sameNontrivialBoundary_lastBoundary_take S q s s' Dt hstar hV hV' j (le_of_lt hj)
  have hpre1 : MarkedIdealWithBoundary.SameNontrivialBoundary
      (((s.boundary s.length).take (j + 1)).map (fun D => D.comap Dt.lastMap))
      ((s'.boundary s'.length).take (NontrivialBoundary.survivingBoundaryCount S q j + 1)) := by
    have hh := NontrivialBoundary.sameNontrivialBoundary_lastBoundary_take S q s s' Dt hstar hV hV' (j + 1) hj
    rwa [NontrivialBoundary.survivingBoundaryCount_succ_of_ne_top S q j hj hlive] at hh
  have hmapsplit : ((s.boundary s.length).take (j + 1)).map (fun D => D.comap Dt.lastMap)
        ++ ((s.boundary s.length).drop (j + 1)).map (fun D => D.comap Dt.lastMap)
      = (s.boundary s.length).map (fun D => D.comap Dt.lastMap) := by
    rw [← List.map_append, List.take_append_drop]
  have hltsplit : (s'.boundary s'.length).take (NontrivialBoundary.survivingBoundaryCount S q j + 1)
        ++ (s'.boundary s'.length).drop (NontrivialBoundary.survivingBoundaryCount S q j + 1)
      = s'.boundary s'.length := List.take_append_drop _ _
  have happ := sameNontrivialBoundary_congr _ _ _ _ hmapsplit hltsplit hfull
  have hsuf := NontrivialBoundary.sameNontrivialBoundary_cancel_left happ hpre1
  have hVW' := isAdmissible_of_eq hpb0 hVU'
  have hPW' := pred_dim_of_eq hpb0 P hPU'
  have hOW' := isOrderBoundedByMult_of_eq hpb0 hOU'
  have hftW' := locallyOfFiniteType_of_eq hpb0 hVU'.locallyOfFiniteType
  have hDW' := isBalanced_of_eq hpb0 hftW' hVU'.locallyOfFiniteType hDU'
  have hinner := isPullbackBlowupSequence_pullbackAlong P A Bl j (NontrivialBoundary.survivingBoundaryCount S q j) hspec hshift
    (MaxContactCoverData.derivedTriple S s hftS [] 0) hVU hPU hOU hVU.locallyOfFiniteType hDU
    (s'.obj s'.length) (Dt.lastMap ≫ (MaxContactCoverData.derivedTriple S s hftS [] 0).structMap)
    Dt.lastMap hSmoothLast rfl (s'.boundary s'.length)
    hVW' hPW' hOW' hftW' hDW'
    (s.boundary s.length) hUb hjL hcLT hget hfull hpre hsuf
  exact isPullback_congr_marked (A (NontrivialBoundary.survivingBoundaryCount S q j))
    (A j (MaxContactCoverData.derivedTriple S s hftS [] 0)).toSequenceOfBlowups hpb0 Dt.lastMap Dt.lastMap
    HEq.rfl hinner

include Dt in
theorem isPullbackBlowupSequence_appendLowerDimReduction
    (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (hstar : MaxContactCoverProperties.{u})
    (hspec : IsBoundaryDivisorReduction P j (A j) Bl)
    (hspec' : IsBoundaryDivisorReduction P (NontrivialBoundary.survivingBoundaryCount S q j)
      (A (NontrivialBoundary.survivingBoundaryCount S q j)) Bl)
    (hshift : IsBoundaryPositionInvariant P A)
    (hV : S.IsAdmissible) (hV' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).IsAdmissible)
    (hm : 1 ≤ S.mult)
    (hO : ∀ x : ↥S.scheme, orderAt S.ideal x ≤ ((S.mult : ℕ) : ℕ∞))
    (hO' : ∀ x : ↥(NontrivialBoundary.pullbackWithNontrivialBoundary S q).scheme,
      orderAt (NontrivialBoundary.pullbackWithNontrivialBoundary S q).ideal x ≤ ((S.mult : ℕ) : ℕ∞))
    (hj : j < S.boundary.length)
    (hlive : (S.boundary[j]'hj).comap q ≠ ⊤)
    (hPU : P (MaxContactCoverData.derivedTriple S s hftS [] 0).krullDimSucc)
    (hVU : (MaxContactCoverData.derivedTriple S s hftS [] 0).IsAdmissible)
    (hPU' : P (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT [] 0).krullDimSucc)
    (hVU' : (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT [] 0).IsAdmissible)
    (hdimU : (MaxContactCoverData.derivedTriple S s hftS [] 0).krullDimSucc ≤ T.krullDimSucc)
    (hdimU' : (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT [] 0).krullDimSucc ≤ T.krullDimSucc) :
    IsPullbackBlowupSequence q
      (MaxContactReduction.appendLowerDimReduction hinv T (fun S₀ _ i => A i S₀) (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s'
        [] 0 (NontrivialBoundary.survivingBoundaryCount S q j)).toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (MaxContactReduction.appendLowerDimReduction hinv T (fun S₀ _ i => A i S₀) S s [] 0
        j).toMarkedSequenceOfBlowups.toSequenceOfBlowups := by
  classical
  have hjb : j < ((([] : List (s.obj s.length).IdealSheafData))
      ++ List.drop 0 (s.boundary s.length)).length := by
    simpa using lt_of_lt_of_le hj (NontrivialBoundary.length_boundary_le_length_lastBoundary S s)
  have hjb' : NontrivialBoundary.survivingBoundaryCount S q j <
      ((([] : List (s'.obj s'.length).IdealSheafData))
        ++ List.drop 0 (s'.boundary s'.length)).length := by
    simpa using lt_of_lt_of_le (NontrivialBoundary.survivingBoundaryCount_lt_length S q j hj hlive)
      (NontrivialBoundary.length_boundary_le_length_lastBoundary (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s')
  obtain ⟨hmk, hEq, -⟩ := LowerDimReductionPullback.appendLowerDimReduction_eq_append hstar hinv T P A Bl j hspec
    (fun S₀ _ i => A i S₀) (fun _ _ _ => rfl) S hV hm hO s [] 0 hftS hdimU hPU hVU hjb (by simp)
  obtain ⟨hmk', hEq', -⟩ := LowerDimReductionPullback.appendLowerDimReduction_eq_append hstar hinv T P A Bl
    (NontrivialBoundary.survivingBoundaryCount S q j) hspec' (fun S₀ _ i => A i S₀) (fun _ _ _ => rfl)
    (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV' hm hO' s' [] 0 hftT hdimU' hPU' hVU' hjb' (by simp)
  rw [hEq, hEq']
  refine isPullbackBlowupSequence_append_same_field q s _ s' _ hinv Dt ?_
  let c := (IsPullbackBlowupSequence.nonempty_sequenceOfBlowupsPullback
      (isPullbackBlowupSequence_derivedTriple (P := P) (A := A) (Bl := Bl) (j := j) (S := S) (q := q)
        (s := s) (s' := s') (Dt := Dt) (hftS := hftS) (hftT := hftT) (hstar := hstar)
        (hspec := hspec) (hshift := hshift) (hV := hV) (hV' := hV') (hm := hm) (hO := hO)
        (hO' := hO') (hj := hj) (hlive := hlive) (hPU := hPU) (hVU := hVU) (hPU' := hPU')
        (hVU' := hVU'))).some
  have trans_eq {W : Scheme.{u}} (t : SequenceOfBlowups W) {i k : ℕ} (h : i ≤ k) :
      (BlowupSequenceData.ofSequenceOfBlowups t).toSequenceOfBlowups.transitionMap h = t.transitionMap h := by
    rw [BlowupSequenceData.toSequenceOfBlowups_transitionMap]
    induction h with
    | refl =>
      rw [BlowupSequenceData.transitionMap_refl, SequenceOfBlowups.transitionMap_self_eq_id]
      rfl
    | @step m hm ih =>
      rw [← BlowupSequenceData.transitionMap_comp_transitionMap _ hm (Nat.le_succ m),
        BlowupSequenceData.transitionMap_succ, BlowupSequenceData.ofSequenceOfBlowups_blowupMorphism, ih,
        SequenceOfBlowups.blowupMorphism_eq_transitionMap]
      exact SequenceOfBlowups.transitionMap_trans t hm (Nat.le_succ m)
  have convertSeq {Y Y' : Scheme.{u}} {f : Y' ⟶ Y} {t' : SequenceOfBlowups Y'}
      {t : SequenceOfBlowups Y} (c : SequenceOfBlowupsPullback f t' t) :
      SequenceOfBlowupsPullback f (BlowupSequenceData.ofSequenceOfBlowups t').toSequenceOfBlowups
        (BlowupSequenceData.ofSequenceOfBlowups t).toSequenceOfBlowups := by
    refine { idx := c.idx
             map := fun j hj => c.map j (by
               exact hj)
             idx_length := SequenceOfBlowupsPullback.index_ofSequenceOfBlowups_length c
             idx_lt := SequenceOfBlowupsPullback.index_lt_ofSequenceOfBlowups_length c
             idx_strictMono := SequenceOfBlowupsPullback.index_lt_index_succ_of_lt_length_ofSequenceOfBlowups c
             isPullback := ?_
             step := ?_
             center_comap := ?_
             center_ne_top := SequenceOfBlowupsPullback.center_ofSequenceOfBlowups_ne_top c
             omitted := SequenceOfBlowupsPullback.ofSequenceOfBlowups_ne_of_mem_unmatched_center c }
    · intro j hj
      rw [BlowupSequenceData.projectionToBase_toSequenceOfBlowups_ofSequenceOfBlowups,
        BlowupSequenceData.projectionToBase_toSequenceOfBlowups_ofSequenceOfBlowups]
      exact c.isPullback j _
    · intro j hj
      rw [SequenceOfBlowups.blowupMorphism_eq_transitionMap, trans_eq, trans_eq,
        ← SequenceOfBlowups.blowupMorphism_eq_transitionMap]
      exact c.step j (by
               exact hj)
    · intro j hj
      exact c.center_comap j (by
               exact hj)
  exact convertSeq c

include Dt in
def continuationComparison
    (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (hstar : MaxContactCoverProperties.{u})
    (hspec : IsBoundaryDivisorReduction P j (A j) Bl)
    (hspec' : IsBoundaryDivisorReduction P (NontrivialBoundary.survivingBoundaryCount S q j)
      (A (NontrivialBoundary.survivingBoundaryCount S q j)) Bl)
    (hshift : IsBoundaryPositionInvariant P A)
    (hV : S.IsAdmissible) (hV' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).IsAdmissible)
    (hm : 1 ≤ S.mult)
    (hO : ∀ x : ↥S.scheme, orderAt S.ideal x ≤ ((S.mult : ℕ) : ℕ∞))
    (hO' : ∀ x : ↥(NontrivialBoundary.pullbackWithNontrivialBoundary S q).scheme,
      orderAt (NontrivialBoundary.pullbackWithNontrivialBoundary S q).ideal x ≤ ((S.mult : ℕ) : ℕ∞))
    (hj : j < S.boundary.length)
    (hlive : (S.boundary[j]'hj).comap q ≠ ⊤)
    (hPU : P (MaxContactCoverData.derivedTriple S s hftS [] 0).krullDimSucc)
    (hVU : (MaxContactCoverData.derivedTriple S s hftS [] 0).IsAdmissible)
    (hPU' : P (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT [] 0).krullDimSucc)
    (hVU' : (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT [] 0).IsAdmissible)
    (hdimU : (MaxContactCoverData.derivedTriple S s hftS [] 0).krullDimSucc ≤ T.krullDimSucc)
    (hdimU' : (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT [] 0).krullDimSucc ≤ T.krullDimSucc) :
    SequenceOfBlowupsPullback q
      (MaxContactReduction.appendLowerDimReduction hinv T (fun S₀ _ i => A i S₀) (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s'
        [] 0 (NontrivialBoundary.survivingBoundaryCount S q j)).toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (MaxContactReduction.appendLowerDimReduction hinv T (fun S₀ _ i => A i S₀) S s [] 0 j).toMarkedSequenceOfBlowups.toSequenceOfBlowups :=
  (IsPullbackBlowupSequence.nonempty_sequenceOfBlowupsPullback
    (isPullbackBlowupSequence_appendLowerDimReduction (P := P) (A := A) (Bl := Bl) (j := j) (S := S) (q := q)
      (s := s) (s' := s') (Dt := Dt) (hftS := hftS) (hftT := hftT)
      (hinv := hinv) (T := T) (hstar := hstar) (hspec := hspec) (hspec' := hspec')
      (hshift := hshift) (hV := hV) (hV' := hV') (hm := hm) (hO := hO) (hO' := hO')
      (hj := hj) (hlive := hlive) (hPU := hPU) (hVU := hVU) (hPU' := hPU') (hVU' := hVU')
      (hdimU := hdimU) (hdimU' := hdimU'))).some

end BoundaryDeletion

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.ContinuationComparison =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.TrivialDivisorContinuation =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.TrivialDivisorContinuation", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.SameNontrivialBoundary\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.DisjointCentersPullback\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BoundarySeparationBaseChange\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MarkedBlowupSequenceBoundary\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace TrivialDivisorContinuation

private theorem hom_apply_congr {A B : Scheme.{u}} {f g : A ⟶ B} (h : f = g) (x : ↥A) : f x = g x := by
  subst h; rfl

private theorem mem_support_of_eq {A : Scheme.{u}} {M : A.IdealSheafData} {x y : ↥A} (h : x = y)
    (hx : y ∈ M.support) : x ∈ M.support := by
  subst h; exact hx

private theorem projectionToBase_zero_isoObjZero_inv_apply {W : Scheme.{u}} (n : FunctorialResolution.EmbeddedResolution.BlowupSequenceData W) (w : ↥W) :
    (n.projectionToBase 0) (n.isoZero.inv w) = w :=
  (hom_apply_congr (FunctorialResolution.EmbeddedResolution.BlowupSequenceData.projectionToBase_zero n) (n.isoZero.inv w)).trans
    (Scheme.inv_hom_apply n.isoZero w)

private theorem notMem_support_of_eq_top {A : Scheme.{u}} {M : A.IdealSheafData} (h : M = ⊤)
    (x : ↥A) : x ∉ M.support := by
  have h2 : (↑M.support : Set ↥A) = ∅ :=
    (AlgebraicGeometry.Scheme.IdealSheafData.eq_top_iff_support_eq_empty M).mp h
  intro hx
  have hx' : x ∈ (↑M.support : Set ↥A) := hx
  rw [h2] at hx'
  exact hx'

private theorem false_of_mem_support_comp {X' Y W Z : Scheme.{u}} (q : X' ⟶ Y) (pr : W ⟶ Y)
    (M : W.IdealSheafData)
    (hImageDisjoint : ∀ y : ↥W, y ∈ M.support → ∀ x : ↥X', q x ≠ pr y)
    (g : Z ⟶ W) (z : ↥Z) (x : ↥X') (hx : q x = (g ≫ pr) z)
    (hz : g z ∈ M.support) : False :=
  hImageDisjoint (g z) hz x hx

private theorem false_of_mem_support_comp_comp {X' Y W Z Z' : Scheme.{u}} (q : X' ⟶ Y)
    (pr : W ⟶ Y) (M : W.IdealSheafData)
    (hImageDisjoint : ∀ y : ↥W, y ∈ M.support → ∀ x : ↥X', q x ≠ pr y)
    (g : Z ⟶ Z') (h : Z' ⟶ W) (z : ↥Z) (x : ↥X') (hx : q x = (g ≫ (h ≫ pr)) z)
    (hz : h (g z) ∈ M.support) : False :=
  hImageDisjoint (h (g z)) hz x hx

theorem nonempty_pullback_appendLowerDimReduction_of_comap_eq_top
    (P : ℕ → Prop) (A : ℕ → PrincipalizationAssignment.{u}) (B : PrincipalizationAssignment.{u}) (j₁ : ℕ)
    (S : MarkedIdealWithBoundary.{u}) {X' : Scheme.{u}} (q : X' ⟶ S.scheme) [AlgebraicGeometry.Smooth q]
    (s : MarkedBlowupSequenceData S.structMap S.ideal S.mult S.boundary)
    (s' : MarkedBlowupSequenceData (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).ideal (NontrivialBoundary.pullbackWithNontrivialBoundary S q).mult
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary)
    (D : SequenceOfBlowupsPullback q s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
    (hft : AlgebraicGeometry.LocallyOfFiniteType (s.proj s.length ≫ S.structMap))
    (hstar : MaxContactCoverProperties.{u}) (hspec : IsBoundaryDivisorReduction P j₁ (A j₁) B)
    (hV : S.IsAdmissible) (hm : 1 ≤ S.mult)
    (hO : ∀ x : S.scheme, orderAt S.ideal x ≤ (S.mult : ℕ∞))
    (hP : P (MaxContactCoverData.derivedTriple S s hft [] 0).krullDimSucc)
    (hVc : (MaxContactCoverData.derivedTriple S s hft [] 0).IsAdmissible)
    (hj : j₁ < (s.boundary s.length).length)
    (hComapTop : ((s.boundary s.length).get ⟨j₁, hj⟩).comap D.lastMap = ⊤)
    (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (hdim : (MaxContactCoverData.derivedTriple S s hft [] 0).krullDimSucc ≤ T.krullDimSucc) :
    Nonempty (SequenceOfBlowupsPullback q s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (MaxContactReduction.appendLowerDimReduction hinv T (fun S' _ i => A i S') S s [] 0
        j₁).toMarkedSequenceOfBlowups.toSequenceOfBlowups) := by
  classical
  set Dj := (s.boundary s.length).get ⟨j₁, hj⟩ with hDtopDef
  have hmapeq : s.toMarkedSequenceOfBlowups.projectionToBase s.toMarkedSequenceOfBlowups.length = s.toBlowupSequenceData.projectionToBase s.length :=
    FunctorialResolution.EmbeddedResolution.BlowupSequenceData.toSequenceOfBlowups_projectionToBase s.toBlowupSequenceData s.length
  have hImageDisjoint : ∀ y : ↥(s.obj s.length), y ∈ Dj.support →
      ∀ x'' : ↥X', q x'' ≠ (s.toBlowupSequenceData.projectionToBase s.length) y := by
    intro y hy x'' hxy
    have hpb := D.isPullback_lastMap
    have hcomm : (s.toMarkedSequenceOfBlowups.projectionToBase s.toMarkedSequenceOfBlowups.length) y = q x'' :=
      (hom_apply_congr hmapeq y).trans hxy.symm
    obtain ⟨w, hw1, -⟩ :=
      AlgebraicGeometry.Scheme.Pullback.exists_preimage_pullback y x'' hcomm
    have h1 : D.lastMap (hpb.isoPullback.inv w) = y :=
      (hom_apply_congr hpb.isoPullback_inv_fst w).trans hw1
    have h4 : (hpb.isoPullback.inv w) ∈ (Dj.comap D.lastMap).support :=
      Scheme.IdealSheafData.mem_support_comap.mpr (mem_support_of_eq h1 hy)
    exact notMem_support_of_eq_top hComapTop _ h4
  have hb : (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0).boundary = s.boundary s.length := by
    rw [FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple_boundary, List.nil_append, List.drop_zero]
  have hj' : j₁ < (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0).boundary.length := by
    rw [hb]; exact hj
  have hget : (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0).boundary.get ⟨j₁, hj'⟩ = Dj := by
    rw [hDtopDef]
    have hgen : ∀ (L L' : List (s.obj s.length).IdealSheafData), L = L' →
        ∀ (h1 : j₁ < L.length) (h2 : j₁ < L'.length), L.get ⟨j₁, h1⟩ = L'.get ⟨j₁, h2⟩ := by
      rintro L L' rfl h1 h2
      rfl
    exact hgen _ _ hb hj' hj
  have hOB := FunctorialResolution.EmbeddedResolution.LowerDimReductionPullback.isOrderBoundedByMult_derivedTriple hstar S hV hm hO s hft [] 0 hVc
  have hbalanced := FunctorialResolution.EmbeddedResolution.LowerDimReductionPullback.isBalanced_derivedTriple hstar S hV hm hO s hft [] 0 hVc
  obtain ⟨Dv, bb, -, hD0, hcen, hbtrue, hstrictD, -, -⟩ :=
    hspec.shape (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0) hVc hP hOB hbalanced hj'
  have hInduction : ∀ r : ℕ,
      r ≤ (A j₁ (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0)).length →
      ∀ z : ↥((A j₁ (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0)).schemeAt r),
        z ∈ (Dv r).support →
        ((A j₁ (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0)).projectionToBase r) z
          ∈ Dj.support := by
    intro r
    induction r with
    | zero =>
      intro _ z hz
      rw [hD0, hget] at hz
      exact mem_support_of_eq (hom_apply_congr (FunctorialResolution.EmbeddedResolution.SequenceOfBlowups.projectionToBase_zero _) z)
        (Scheme.IdealSheafData.mem_support_comap.mp hz)
    | succ r ih =>
      intro hr z hz
      have hrlt : r < (A j₁ (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0)).length := hr
      have hmem : ((A j₁ (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0)).transitionMapSucc r) z
          ∈ (Dv r).support := by
        by_cases hc : bb = true ∧ r = 0
        · obtain ⟨hb1, hb2⟩ := hc
          subst hb2
          obtain ⟨-, -, hD1⟩ := hbtrue hb1
          have hz' : z ∈ (Dv 1).support := hz
          rw [hD1] at hz'
          exact Scheme.IdealSheafData.mem_support_comap.mp hz'
        · rw [hstrictD r hrlt hc] at hz
          exact FunctorialResolution.EmbeddedResolution.support_strictTransform_subset_preimage _ _ _ hz
      have hnext := ih (le_of_lt hrlt) _ hmem
      exact mem_support_of_eq (hom_apply_congr (FunctorialResolution.EmbeddedResolution.SequenceOfBlowups.projectionToBase_succ _ r) z) hnext
  have hcent : ∀ nn : FunctorialResolution.EmbeddedResolution.BlowupSequenceData (s.obj s.length),
      nn = FunctorialResolution.EmbeddedResolution.BlowupSequenceData.ofSequenceOfBlowups
        (A j₁ (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0)).toSequenceOfBlowups →
      ∀ (r : ℕ) (z : ↥(nn.obj r)), z ∈ (nn.center r).support → r < nn.length →
        (nn.projectionToBase r) z ∈ Dj.support := by
    rintro nn rfl r z hz hr
    have hr' : r < (A j₁ (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0)).length := hr
    have hz2 : z ∈ ((A j₁ (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0)).center r).support :=
      hz
    have hmem := hInduction r (le_of_lt hr') z (hcen r hr' hz2)
    exact mem_support_of_eq (hom_apply_congr (FunctorialResolution.EmbeddedResolution.BlowupSequenceData.ofSequenceOfBlowups_projectionToBase
      (A j₁ (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0)).toSequenceOfBlowups r) z) hmem
  have c : FunctorialResolution.EmbeddedResolution.SequenceOfBlowupsPullback q s'.toSequenceOfBlowups s.toSequenceOfBlowups := by
    rw [← FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.toMarkedSequence_toSequenceOfBlowups s,
        ← FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.toMarkedSequence_toSequenceOfBlowups s']
    exact D
  have hcd : ∀ (tt : FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData (s.proj s.length ≫ S.structMap)
      (s.ideal s.length) S.mult (s.boundary s.length)),
      (s.append tt hinv).toSequenceOfBlowups = (s.toBlowupSequenceData.append tt.toBlowupSequenceData).toSequenceOfBlowups := fun tt =>
    congrArg FunctorialResolution.EmbeddedResolution.BlowupSequenceData.toSequenceOfBlowups
      ((FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.append_toBlowupSequenceData s tt hinv).trans rfl)
  have main : ∀ (tt : FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData (s.proj s.length ≫ S.structMap)
        (s.ideal s.length) S.mult (s.boundary s.length)),
      tt.toBlowupSequenceData = FunctorialResolution.EmbeddedResolution.BlowupSequenceData.ofSequenceOfBlowups
        (A j₁ (FunctorialResolution.EmbeddedResolution.MaxContactCoverData.derivedTriple S s hft [] 0)).toSequenceOfBlowups →
      Nonempty (FunctorialResolution.EmbeddedResolution.SequenceOfBlowupsPullback q s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups
        (s.append tt hinv).toMarkedSequenceOfBlowups.toSequenceOfBlowups) := by
    intro tt htt
    have hcn := hcent tt.toBlowupSequenceData htt
    rw [FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.toMarkedSequence_toSequenceOfBlowups s',
        FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.toMarkedSequence_toSequenceOfBlowups (s.append tt hinv), hcd tt]
    refine FunctorialResolution.EmbeddedResolution.SequenceOfBlowupsPullback.nonempty_append_of_disjoint_centers q s'.toBlowupSequenceData s.toBlowupSequenceData
      tt.toBlowupSequenceData c ?_
    intro i hi1 hi2 z hz x'' hx
    rcases eq_or_lt_of_le hi1 with he | hlt
    · subst he
      rw [FunctorialResolution.EmbeddedResolution.BlowupSequenceData.append_center_length] at hz
      rw [FunctorialResolution.EmbeddedResolution.BlowupSequenceData.projectionToBase_append_of_le_length _ _ (le_refl _)] at hx
      have hz1 := Scheme.IdealSheafData.mem_support_comap.mp hz
      have hz2 := Scheme.IdealSheafData.mem_support_comap.mp hz1
      have hy := hcn 0 _ hz2 (by omega)
      exact false_of_mem_support_comp q (s.toBlowupSequenceData.projectionToBase s.length) Dj hImageDisjoint _ z x'' hx
        (mem_support_of_eq (projectionToBase_zero_isoObjZero_inv_apply _ _).symm hy)
    · rw [FunctorialResolution.EmbeddedResolution.BlowupSequenceData.append_center_of_length_lt _ _ hlt] at hz
      rw [FunctorialResolution.EmbeddedResolution.BlowupSequenceData.projectionToBase_append_of_length_lt _ _ hlt] at hx
      have hz1 := Scheme.IdealSheafData.mem_support_comap.mp hz
      have hy := hcn (i - s.toBlowupSequenceData.length) _ hz1 (by omega)
      exact false_of_mem_support_comp_comp q (s.toBlowupSequenceData.projectionToBase s.length) Dj hImageDisjoint _
        (tt.toBlowupSequenceData.projectionToBase (i - s.toBlowupSequenceData.length)) z x'' hx hy
  obtain ⟨hmk, heq, -⟩ := FunctorialResolution.EmbeddedResolution.LowerDimReductionPullback.appendLowerDimReduction_eq_append hstar hinv T P A B j₁ hspec
      (fun S' _ i => A i S') (fun _ _ _ => rfl) S hV hm hO s [] 0 hft hdim hP hVc
      (by simpa using hj) (fun Dx hDx => FunctorialResolution.EmbeddedResolution.BoundarySeparationBaseChange.orderAtLeastLocus_inter_support_eq_empty_of_mem_take_zero S s Dx hDx)
  rw [heq]
  exact main _ (FunctorialResolution.EmbeddedResolution.BlowupSequenceData.toMarkedBlowupSequenceData_toBlowupSequenceData _ _ _ _ _ _)

end TrivialDivisorContinuation

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.TrivialDivisorContinuation =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BoundarySeparationPullbackComparison =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BoundarySeparationPullbackComparison", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BoundarySeparationBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.SameNontrivialBoundary\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.DisjointCentersPullback\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.ContinuationComparison\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.TrivialDivisorContinuation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace NontrivialBoundary

theorem nonempty_separateBoundaryPullbackComparison
    (P : ℕ → Prop) (hmono : ∀ a b : ℕ, a ≤ b → P b → P a)
    (A : ℕ → PrincipalizationAssignment.{u}) (Bl : PrincipalizationAssignment.{u})
    (hspec : ∀ i : ℕ, IsBoundaryDivisorReduction P i (A i) Bl)
    (hshift : IsBoundaryPositionInvariant P A)
    (hstar : MaxContactCoverProperties.{u}) (hinv : ComapIsoInvariance.{u})
    (T : MarkedIdealWithBoundary.{u}) (hPdimT : P T.krullDimSucc)
    (S : MarkedIdealWithBoundary.{u}) {X' : Scheme.{u}} (q : X' ⟶ S.scheme) [AlgebraicGeometry.Smooth q]
    (hV : S.IsAdmissible)
    (hO : ∀ x : ↥S.scheme, orderAt S.ideal x ≤ (S.mult : ℕ∞))
    (hdimS : S.krullDimSucc ≤ T.krullDimSucc)
    (hV' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).IsAdmissible)
    (hdim' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).krullDimSucc ≤ T.krullDimSucc)
    (j : ℕ) (hj : j ≤ S.boundary.length) :
    Nonempty (SequenceOfBlowupsPullback q
      (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
        (NontrivialBoundary.survivingBoundaryCount S q j)).toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j).toMarkedSequenceOfBlowups.toSequenceOfBlowups) := by
  classical
  have : AlgebraicGeometry.Flat q := inferInstance
  revert hj
  induction j with
  | zero =>
    intro _
    have e0 : BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S 0
        = FunctorialResolution.EmbeddedResolution.emptyMarkedBlowupSequenceData S.structMap S.ideal S.mult S.boundary :=
      MaxContactCoverData.separateBoundary_zero hinv T (fun S₀ _ i => A i S₀) S
    have e0' : BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
          (NontrivialBoundary.survivingBoundaryCount S q 0)
        = FunctorialResolution.EmbeddedResolution.emptyMarkedBlowupSequenceData (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap
            (NontrivialBoundary.pullbackWithNontrivialBoundary S q).ideal (NontrivialBoundary.pullbackWithNontrivialBoundary S q).mult
            (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary := by
      rw [NontrivialBoundary.survivingBoundaryCount_zero]
      exact MaxContactCoverData.separateBoundary_zero hinv T (fun S₀ _ i => A i S₀)
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
    rw [e0, e0']
    simp only [FunctorialResolution.EmbeddedResolution.MarkedBlowupSequenceData.toMarkedSequence_toSequenceOfBlowups]
    refine ⟨SequenceOfBlowupsPullback.ofCentersMissImage q _ ?_ _ ?_⟩
    · intro i hi
      simp at hi
    · simp
  | succ j ih =>
    intro hj1
    have hjS : j < S.boundary.length := Nat.lt_of_succ_le hj1
    obtain ⟨D⟩ := ih (Nat.le_of_succ_le hj1)
    have hftS : AlgebraicGeometry.LocallyOfFiniteType
        ((BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j).proj
            (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j).length ≫ S.structMap) :=
      BoundarySeparationByMaxContact.locallyOfFiniteType_projectionToBase_comp hstar S hV _ _ le_rfl
    have hftT : AlgebraicGeometry.LocallyOfFiniteType
        ((BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
              (NontrivialBoundary.survivingBoundaryCount S q j)).proj
            (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
              (NontrivialBoundary.survivingBoundaryCount S q j)).length
          ≫ (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap) :=
      BoundarySeparationByMaxContact.locallyOfFiniteType_projectionToBase_comp hstar (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV'
        _ _ le_rfl
    have hm : 1 ≤ S.mult := hV.one_le_mult
    have hdimU : (MaxContactCoverData.derivedTriple S
          (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j) hftS [] 0).krullDimSucc ≤ T.krullDimSucc :=
      hstar.derivedTriple_dim_le (T := T) hV (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j) hftS [] 0 hdimS
    have hPU :
        P (MaxContactCoverData.derivedTriple S (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j) hftS [] 0).krullDimSucc :=
      hmono _ _ hdimU hPdimT
    have hVU := BoundarySeparationBaseChange.isAdmissible_derivedTriple_nil hstar S hV
      (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j) hftS
    have hdimU' : (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
          (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
            (NontrivialBoundary.survivingBoundaryCount S q j)) hftT [] 0).krullDimSucc ≤ T.krullDimSucc :=
      hstar.derivedTriple_dim_le (T := T) hV'
        (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
          (NontrivialBoundary.survivingBoundaryCount S q j))
        hftT [] 0 hdim'
    have hPU' : P (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
          (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
            (NontrivialBoundary.survivingBoundaryCount S q j)) hftT [] 0).krullDimSucc :=
      hmono _ _ hdimU' hPdimT
    have hVU' := BoundarySeparationBaseChange.isAdmissible_derivedTriple_nil hstar (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV'
      (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
        (NontrivialBoundary.survivingBoundaryCount S q j))
      hftT
    have hO' : ∀ x : ↥(NontrivialBoundary.pullbackWithNontrivialBoundary S q).scheme,
        orderAt (NontrivialBoundary.pullbackWithNontrivialBoundary S q).ideal x ≤ ((S.mult : ℕ) : ℕ∞) :=
      fun x => BoundarySeparationBaseChange.orderAt_pullbackTriple_le_mult S q hV hO x
    have eS : BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S (j + 1)
        = MaxContactReduction.appendLowerDimReduction hinv T (fun S₀ _ i => A i S₀) S
            (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j) [] 0 j :=
      MaxContactCoverData.separateBoundary_succ hinv T (fun S₀ _ i => A i S₀) S j
    by_cases hlive : (S.boundary[j]'hjS).comap q = ⊤
    · have eT : NontrivialBoundary.survivingBoundaryCount S q (j + 1) = NontrivialBoundary.survivingBoundaryCount S q j :=
        NontrivialBoundary.survivingBoundaryCount_succ_of_eq_top S q j hjS hlive
      rw [eS, eT]
      have hjlen : j < ((BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j).boundary
          (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j).length).length :=
        lt_of_lt_of_le hjS
          (NontrivialBoundary.length_boundary_le_length_lastBoundary S (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j))
      have hBoundaryTop : (((BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j).boundary
              (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j).length).get ⟨j, hjlen⟩).comap D.lastMap
          = ⊤ := by
        rw [List.get_eq_getElem]
        exact NontrivialBoundary.lastBoundary_comap_lastMap_eq_top S q
          (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j)
          (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
            (NontrivialBoundary.survivingBoundaryCount S q j)) D hstar hV hV' j hjS hlive
      exact TrivialDivisorContinuation.nonempty_pullback_appendLowerDimReduction_of_comap_eq_top P A Bl j S q
        (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j)
        (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
          (NontrivialBoundary.survivingBoundaryCount S q j))
        D hftS hstar (hspec j) hV hm hO hPU hVU hjlen hBoundaryTop hinv T hdimU
    · have eT : BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
            (NontrivialBoundary.survivingBoundaryCount S q (j + 1))
          = MaxContactReduction.appendLowerDimReduction hinv T (fun S₀ _ i => A i S₀) (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
              (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
                (NontrivialBoundary.survivingBoundaryCount S q j)) [] 0 (NontrivialBoundary.survivingBoundaryCount S q j) := by
        rw [NontrivialBoundary.survivingBoundaryCount_succ_of_ne_top S q j hjS hlive]
        exact MaxContactCoverData.separateBoundary_succ hinv T (fun S₀ _ i => A i S₀)
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q) (NontrivialBoundary.survivingBoundaryCount S q j)
      rw [eS, eT]
      exact ⟨BoundaryDeletion.continuationComparison (P := P) (A := A) (Bl := Bl) (j := j) (S := S)
        (q := q) (s := BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j)
        (s' := BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
          (NontrivialBoundary.survivingBoundaryCount S q j))
        (Dt := D) (hftS := hftS) (hftT := hftT) (hinv := hinv) (T := T)
        (hstar := hstar) (hspec := hspec j) (hspec' := hspec (NontrivialBoundary.survivingBoundaryCount S q j))
        (hshift := hshift) (hV := hV) (hV' := hV') (hm := hm) (hO := hO) (hO' := hO')
        (hj := hjS) (hlive := hlive) (hPU := hPU) (hVU := hVU) (hPU' := hPU') (hVU' := hVU')
        (hdimU := hdimU) (hdimU' := hdimU')⟩

def separateBoundaryPullbackComparison
    (P : ℕ → Prop) (hmono : ∀ a b : ℕ, a ≤ b → P b → P a)
    (A : ℕ → PrincipalizationAssignment.{u}) (Bl : PrincipalizationAssignment.{u})
    (hspec : ∀ i : ℕ, IsBoundaryDivisorReduction P i (A i) Bl)
    (hshift : IsBoundaryPositionInvariant P A)
    (hstar : MaxContactCoverProperties.{u}) (hinv : ComapIsoInvariance.{u})
    (T : MarkedIdealWithBoundary.{u}) (hPdimT : P T.krullDimSucc)
    (S : MarkedIdealWithBoundary.{u}) {X' : Scheme.{u}} (q : X' ⟶ S.scheme) [AlgebraicGeometry.Smooth q]
    (hV : S.IsAdmissible)
    (hO : ∀ x : ↥S.scheme, orderAt S.ideal x ≤ (S.mult : ℕ∞))
    (hdimS : S.krullDimSucc ≤ T.krullDimSucc)
    (hV' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).IsAdmissible)
    (hdim' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).krullDimSucc ≤ T.krullDimSucc)
    (j : ℕ) (hj : j ≤ S.boundary.length) :
    SequenceOfBlowupsPullback q
      (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
        (NontrivialBoundary.survivingBoundaryCount S q j)).toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S j).toMarkedSequenceOfBlowups.toSequenceOfBlowups :=
  (nonempty_separateBoundaryPullbackComparison P hmono A Bl hspec hshift hstar hinv T hPdimT S q hV hO hdimS hV' hdim'
    j hj).some

end NontrivialBoundary

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BoundarySeparationPullbackComparison =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.LowerDimensionalContinuation =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.LowerDimensionalContinuation", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BoundarySeparation\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.SameNontrivialBoundary\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.BlowupDataOfSequence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BoundarySeparationBaseChange\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.IteratedStrictTransformPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace StrictTransformComparison

variable (P : ℕ → Prop) (A : ℕ → PrincipalizationAssignment.{u}) (Bl : PrincipalizationAssignment.{u})
  (S : MarkedIdealWithBoundary.{u}) {X' : Scheme.{u}} (q : X' ⟶ S.scheme) [AlgebraicGeometry.Smooth q]
  (s : MarkedBlowupSequenceData S.structMap S.ideal S.mult S.boundary)
  (s' : MarkedBlowupSequenceData (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap (NontrivialBoundary.pullbackWithNontrivialBoundary S q).ideal
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).mult (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary)
  (Dt : SequenceOfBlowupsPullback q s'.toMarkedSequenceOfBlowups.toSequenceOfBlowups s.toMarkedSequenceOfBlowups.toSequenceOfBlowups)
  (hftS : AlgebraicGeometry.LocallyOfFiniteType (s.proj s.length ≫ S.structMap))
  (hftT : AlgebraicGeometry.LocallyOfFiniteType
    (s'.proj s'.length ≫ (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap))

theorem strictTransformAtLength_comap_lastMap
    (hstar : MaxContactCoverProperties.{u})
    (hV : S.IsAdmissible) (hV' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).IsAdmissible)
    (H : S.scheme.IdealSheafData) :
    MaxContactReduction.strictTransformAtLength s' (H.comap q)
      = (MaxContactReduction.strictTransformAtLength s H).comap Dt.lastMap := by
  have : AlgebraicGeometry.Flat q := inferInstance
  have h1 : MaxContactReduction.strictTransformAtLength s' (H.comap q) = s'.iteratedStrictTransform s'.length (H.comap q) := by
    rw [MaxContactReduction.strictTransformAtLength_eq, BoundarySeparationByMaxContact.iteratedStrictTransform_eq_toBlowupSequenceData]
  have h2 : MaxContactReduction.strictTransformAtLength s H = s.iteratedStrictTransform s.length H := by
    rw [MaxContactReduction.strictTransformAtLength_eq, BoundarySeparationByMaxContact.iteratedStrictTransform_eq_toBlowupSequenceData]
  rw [h1, h2]
  exact (NontrivialBoundary.iteratedStrictTransform_comap_lastMap S q s s' Dt hstar hV hV' H).symm

include Dt in
theorem isPullbackBlowupSequence_appendLowerDimReduction
    (hinv : ComapIsoInvariance.{u}) (T : MarkedIdealWithBoundary.{u})
    (hstar : MaxContactCoverProperties.{u})
    (hspec : IsBoundaryDivisorReduction P 0 (A 0) Bl)
    (H : S.scheme.IdealSheafData)
    (hV : S.IsAdmissible) (hV' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).IsAdmissible)
    (hm : 1 ≤ S.mult)
    (hO : ∀ x : ↥S.scheme, orderAt S.ideal x ≤ ((S.mult : ℕ) : ℕ∞))
    (hO' : ∀ x : ↥(NontrivialBoundary.pullbackWithNontrivialBoundary S q).scheme,
      orderAt (NontrivialBoundary.pullbackWithNontrivialBoundary S q).ideal x ≤ ((S.mult : ℕ) : ℕ∞))
    (hdimU : (MaxContactCoverData.derivedTriple S s hftS
        [MaxContactReduction.strictTransformAtLength s H] S.boundary.length).krullDimSucc ≤ T.krullDimSucc)
    (hPU : P (MaxContactCoverData.derivedTriple S s hftS
        [MaxContactReduction.strictTransformAtLength s H] S.boundary.length).krullDimSucc)
    (hVU : (MaxContactCoverData.derivedTriple S s hftS
        [MaxContactReduction.strictTransformAtLength s H] S.boundary.length).IsAdmissible)
    (hdimU' : (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
        [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).krullDimSucc ≤ T.krullDimSucc)
    (hPU' : P (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
        [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).krullDimSucc)
    (hVU' : (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
        [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).IsAdmissible)
    (hsep : BoundarySeparationByMaxContact.BoundarySeparated S s S.boundary.length)
    (hsep' : BoundarySeparationByMaxContact.BoundarySeparated (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s'
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length) :
    IsPullbackBlowupSequence q
      (MaxContactReduction.appendLowerDimReduction hinv T (fun S₀ _ i => A i S₀) (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s'
        [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length 0).toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (MaxContactReduction.appendLowerDimReduction hinv T (fun S₀ _ i => A i S₀) S s
        [MaxContactReduction.strictTransformAtLength s H] S.boundary.length 0).toMarkedSequenceOfBlowups.toSequenceOfBlowups := by
  have : AlgebraicGeometry.Flat q := inferInstance
  have hSmoothLast : AlgebraicGeometry.Smooth Dt.lastMap := SequenceOfBlowupsPullback.smooth_lastMap Dt
  have hsm : AlgebraicGeometry.Smooth (s.proj s.length ≫ S.structMap) :=
    BoundarySeparationByMaxContact.smooth_projectionToBase_comp hstar S hV s s.length le_rfl
  have hft1 : MaxContactReduction.strictTransformAtLength s' (H.comap q)
      = (MaxContactReduction.strictTransformAtLength s H).comap Dt.lastMap :=
    strictTransformAtLength_comap_lastMap S q s s' Dt hstar hV hV' H
  have hlist : List.map (fun Z : (s.obj s.length).IdealSheafData => Z.comap Dt.lastMap)
      [MaxContactReduction.strictTransformAtLength s H] = [MaxContactReduction.strictTransformAtLength s' (H.comap q)] :=
    congrArg (fun Z => [Z]) hft1.symm
  have hdrop : MarkedIdealWithBoundary.SameNontrivialBoundary
      (List.map (fun Z : (s.obj s.length).IdealSheafData => Z.comap Dt.lastMap)
        (List.drop S.boundary.length (s.boundary s.length)))
      (List.drop (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length (s'.boundary s'.length)) :=
    _root_.FunctorialResolution.EmbeddedResolution.MarkedIdealWithBoundary.SameNontrivialBoundary.symm
      (NontrivialBoundary.sameNontrivialBoundary_lastBoundary_drop S q s s' Dt hstar hV hV')
  have e1 : ((MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
        S.boundary.length).pullbackAlong (s'.obj s'.length)
      (Dt.lastMap ≫ (MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
        S.boundary.length).structMap) Dt.lastMap).boundary
      = List.map (fun D => D.comap Dt.lastMap)
        (MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
          S.boundary.length).boundary :=
    MarkedIdealWithBoundary.pullbackAlong_boundary _ _ _ _
  have e2 := MaxContactCoverData.derivedTriple_boundary S s hftS
    [MaxContactReduction.strictTransformAtLength s H] S.boundary.length
  have e3 := MaxContactCoverData.derivedTriple_boundary (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
    [MaxContactReduction.strictTransformAtLength s' (H.comap q)] (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length
  have hbe : MarkedIdealWithBoundary.SameNontrivialBoundary
      ((MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
          S.boundary.length).pullbackAlong (s'.obj s'.length)
        (Dt.lastMap ≫ (MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
          S.boundary.length).structMap) Dt.lastMap).boundary
      (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
        [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).boundary := by
    rw [e1, e2, e3, hft1]
    exact NontrivialBoundary.sameNontrivialBoundary_cons hdrop
  have htake : List.take (0 + 1)
        (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
          [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).boundary
      = List.take (0 + 1)
        ((MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
            S.boundary.length).pullbackAlong (s'.obj s'.length)
          (Dt.lastMap ≫ (MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
            S.boundary.length).structMap) Dt.lastMap).boundary := by
    have t : [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
        = [(MaxContactReduction.strictTransformAtLength s H).comap Dt.lastMap] := congrArg (fun Z => [Z]) hft1
    rw [e1, e2, e3]
    exact t
  have hjU : 0 < (MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
      S.boundary.length).boundary.length := by
    rw [e2]
    change 0 < Nat.succ _
    exact Nat.zero_lt_succ _
  have hjU' : 0 < (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
      [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).boundary.length := by
    rw [e3]
    change 0 < Nat.succ _
    exact Nat.zero_lt_succ _
  have hOU := LowerDimReductionPullback.isOrderBoundedByMult_derivedTriple hstar S hV hm hO s hftS
    [MaxContactReduction.strictTransformAtLength s H] S.boundary.length hVU
  have hDU := LowerDimReductionPullback.isBalanced_derivedTriple hstar S hV hm hO s hftS
    [MaxContactReduction.strictTransformAtLength s H] S.boundary.length hVU
  have hOU' := LowerDimReductionPullback.isOrderBoundedByMult_derivedTriple hstar (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV' hm hO' s'
    hftT [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
    (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length hVU'
  have hpb := NontrivialBoundary.pullbackAlong_derivedTriple_eq S q s s' Dt hstar hV hV' hftS hftT hsm
    [MaxContactReduction.strictTransformAtLength s H] S.boundary.length
    (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length
  have hEb : List.append
        (List.map (fun Z : (s.obj s.length).IdealSheafData => Z.comap Dt.lastMap)
          [MaxContactReduction.strictTransformAtLength s H])
        (List.drop (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length (s'.boundary s'.length))
      = (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
          [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).boundary :=
    (congrArg (fun L => List.append L
      (List.drop (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length (s'.boundary s'.length)))
      hlist).trans e3.symm
  have hEqLast :
      ((MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
          S.boundary.length).pullbackAlong (s'.obj s'.length)
        (Dt.lastMap ≫ (MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
          S.boundary.length).structMap) Dt.lastMap).withBoundary
        (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
          [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).boundary
      = MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
          [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length :=
    ((congrArg (fun L =>
        ((MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
            S.boundary.length).pullbackAlong (s'.obj s'.length)
          (Dt.lastMap ≫ (MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
            S.boundary.length).structMap) Dt.lastMap).withBoundary L) hEb).symm.trans hpb).trans
      (congrArg (fun E => MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT E
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length) hlist)
  have hVtr : ∀ W : MarkedIdealWithBoundary.{u},
      W = MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
        [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length → W.IsAdmissible := by
    intro W hW
    subst hW
    exact hVU'
  have hPtr : ∀ W : MarkedIdealWithBoundary.{u},
      W = MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
        [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length → P W.krullDimSucc := by
    intro W hW
    subst hW
    exact hPU'
  have hOtr : ∀ W : MarkedIdealWithBoundary.{u},
      W = MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
        [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length → W.IsOrderBoundedByMult := by
    intro W hW
    subst hW
    exact hOU'
  have hjtr : ∀ W : MarkedIdealWithBoundary.{u},
      W = MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
        [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length → 0 < W.boundary.length := by
    intro W hW
    subst hW
    exact hjU'
  have hDtr : ∀ W : MarkedIdealWithBoundary.{u},
      W = MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
        [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length →
      ∀ hft : AlgebraicGeometry.LocallyOfFiniteType W.structMap, W.IsBalanced hft := by
    intro W hW hft
    subst hW
    exact LowerDimReductionPullback.isBalanced_derivedTriple hstar (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV' hm hO' s' hftT
      [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length hVU'
  have inner0 := @IsBoundaryDivisorReduction.smooth_pullback P 0 (A 0) Bl hspec
    (MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H] S.boundary.length)
    hVU hPU hOU hDU hjU (s'.obj s'.length)
    (Dt.lastMap ≫ (MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
      S.boundary.length).structMap) Dt.lastMap (SequenceOfBlowupsPullback.smooth_lastMap Dt) rfl
    (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
      [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).boundary
    hbe htake (hVtr _ hEqLast) (hPtr _ hEqLast) (hOtr _ hEqLast) (hDtr _ hEqLast _)
    (hjtr _ hEqLast)
  have hp : Dt.lastMap ≫ (MaxContactCoverData.derivedTriple S s hftS
        [MaxContactReduction.strictTransformAtLength s H] S.boundary.length).structMap
      = (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
          [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).structMap :=
    (congrArg (fun mm => Dt.lastMap ≫ mm)
        (MaxContactCoverData.derivedTriple_structureMorphism S s hftS
          [MaxContactReduction.strictTransformAtLength s H] S.boundary.length)).trans
      ((NontrivialBoundary.lastMap_comp_structureMorphism S q s s' Dt).trans
        (MaxContactCoverData.derivedTriple_structureMorphism (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
          [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).symm)
  have hI : (MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
        S.boundary.length).ideal.comap Dt.lastMap
      = (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
          [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).ideal :=
    (congrArg (fun J => J.comap Dt.lastMap)
        (LowerDimReductionPullback.ideal_derivedTriple S s hftS
          [MaxContactReduction.strictTransformAtLength s H] S.boundary.length)).trans
      ((NontrivialBoundary.tunedIdealAtLength_comap_lastMap S q s s' Dt hstar hV hV' hftS hftT hsm).trans
        (LowerDimReductionPullback.ideal_derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
          [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).symm)
  have hm2 : (MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
        S.boundary.length).mult
      = (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
          [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).mult :=
    (MaxContactCoverData.derivedTriple_mult S s hftS
        [MaxContactReduction.strictTransformAtLength s H] S.boundary.length).trans
      (MaxContactCoverData.derivedTriple_mult (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
        [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).symm
  have inner : IsPullbackBlowupSequence Dt.lastMap
      (A 0 (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s' hftT
          [MaxContactReduction.strictTransformAtLength s' (H.comap q)]
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length)).toSequenceOfBlowups
      (A 0 (MaxContactCoverData.derivedTriple S s hftS [MaxContactReduction.strictTransformAtLength s H]
          S.boundary.length)).toSequenceOfBlowups :=
    isPullbackBlowupSequence_congr (A 0) _ _ _ _ Dt.lastMap _ _ _ _ _ _ _ _ hp hI hm2 rfl inner0
  have hjlist : 0 < ([MaxContactReduction.strictTransformAtLength s H] ++
      (s.boundary s.length).drop S.boundary.length).length := by simp
  have hjlist' : 0 < ([MaxContactReduction.strictTransformAtLength s' (H.comap q)] ++
      (s'.boundary s'.length).drop (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).length := by simp
  obtain ⟨hmk, heq, -⟩ := LowerDimReductionPullback.appendLowerDimReduction_eq_append hstar hinv T P A Bl 0 hspec
    (fun S₀ _ i => A i S₀) (fun _ _ _ => rfl) S hV hm hO s
    [MaxContactReduction.strictTransformAtLength s H] S.boundary.length hftS hdimU hPU hVU hjlist
    (BoundarySeparationBaseChange.orderAtLeastLocus_inter_support_eq_empty_of_boundarySeparated S s S.boundary.length hsep)
  obtain ⟨hmk', heq', -⟩ := LowerDimReductionPullback.appendLowerDimReduction_eq_append hstar hinv T P A Bl 0 hspec
    (fun S₀ _ i => A i S₀) (fun _ _ _ => rfl) (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV' hm hO' s'
    [MaxContactReduction.strictTransformAtLength s' (H.comap q)] (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length
    hftT hdimU' hPU' hVU' hjlist'
    (BoundarySeparationBaseChange.orderAtLeastLocus_inter_support_eq_empty_of_boundarySeparated (NontrivialBoundary.pullbackWithNontrivialBoundary S q) s'
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length hsep')
  rw [heq, heq']
  exact isPullbackBlowupSequence_append_of_two_fields q s _ s' _ hinv Dt
    (SequenceOfBlowupsPullback.toBlowupDataOfSeq inner.nonempty_sequenceOfBlowupsPullback.some)

end StrictTransformComparison

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.LowerDimensionalContinuation =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.HypersurfaceReductionFunctoriality =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.HypersurfaceReductionFunctoriality", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BoundarySeparationBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.SameNontrivialBoundary\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BoundarySeparationPullbackComparison\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.FaithfullyFlatDescent\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.LowerDimensionalContinuation\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactHypersurfaceTransform\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace MaxContactFunctoriality

theorem isPullbackBlowupSequence_reduceAlongHypersurface_of_smooth
    (hstar : _root_.FunctorialResolution.EmbeddedResolution.MaxContactCoverProperties.{u}) (hinv : ComapIsoInvariance.{u})
    (P : ℕ → Prop) (hmono : ∀ a b : ℕ, a ≤ b → P b → P a)
    (A : ℕ → PrincipalizationAssignment.{u}) (Bl : PrincipalizationAssignment.{u})
    (hspec : ∀ i : ℕ, IsBoundaryDivisorReduction P i (A i) Bl)
    (hshift : IsBoundaryPositionInvariant P A)
    (T : MarkedIdealWithBoundary.{u}) (hPdimT : P T.krullDimSucc)
    (S : MarkedIdealWithBoundary.{u}) (hV : S.IsAdmissible)
    (hO : ∀ x : ↥S.scheme, orderAt S.ideal x ≤ (S.mult : ℕ∞))
    (hdimS : S.krullDimSucc ≤ T.krullDimSucc)
    (H : S.scheme.IdealSheafData)
    (hH : ∀ [AlgebraicGeometry.LocallyOfFiniteType S.structMap],
      IsMaxContactHypersurface S.base S.structMap S.ideal S.mult H)
    (hHsnc : InStrictNormalCrossingPosition S.structMap [H])
    {X' : Scheme.{u}} (q : X' ⟶ S.scheme) [AlgebraicGeometry.Smooth q]
    (hV' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).IsAdmissible)
    (hdim' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).krullDimSucc ≤ T.krullDimSucc)
    (hH' : ∀ [AlgebraicGeometry.LocallyOfFiniteType (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap],
      IsMaxContactHypersurface (NontrivialBoundary.pullbackWithNontrivialBoundary S q).base
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap (NontrivialBoundary.pullbackWithNontrivialBoundary S q).ideal
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).mult (H.comap q))
    (hH'snc : InStrictNormalCrossingPosition (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap [H.comap q]) :
    IsPullbackBlowupSequence q
      (MaxContactReduction.reduceAlongHypersurface hinv T (fun S₀ _ i => A i S₀)
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q) (H.comap q)).toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (MaxContactReduction.reduceAlongHypersurface hinv T (fun S₀ _ i => A i S₀) S H).toMarkedSequenceOfBlowups.toSequenceOfBlowups := by
  have hcnt : NontrivialBoundary.survivingBoundaryCount S q S.boundary.length
      = (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length := NontrivialBoundary.survivingBoundaryCount_length_eq S q
  have Dt0 := NontrivialBoundary.separateBoundaryPullbackComparison P hmono A Bl hspec hshift hstar hinv T hPdimT S q hV hO
    hdimS hV' hdim' S.boundary.length le_rfl
  rw [hcnt] at Dt0
  have hftS : AlgebraicGeometry.LocallyOfFiniteType
      ((BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length).proj
        (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length).length ≫ S.structMap) :=
    BoundarySeparationByMaxContact.locallyOfFiniteType_projectionToBase_comp hstar S hV _ _ le_rfl
  have hftT : AlgebraicGeometry.LocallyOfFiniteType
      ((BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).proj
        (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).length
        ≫ (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap) :=
    BoundarySeparationByMaxContact.locallyOfFiniteType_projectionToBase_comp hstar (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV' _ _
      le_rfl
  have hF := BoundarySeparationBaseChange.separateBoundaryInvariant_separateBoundaryOfFamily hstar hinv P hmono A Bl hspec T hPdimT S
    hV hO hdimS H hHsnc S.boundary.length le_rfl
  have hF' := BoundarySeparationBaseChange.separateBoundaryInvariant_separateBoundaryOfFamily hstar hinv P hmono A Bl hspec T hPdimT
    (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV' (BoundarySeparationBaseChange.orderAt_pullbackTriple_le_mult S q hV hO) hdim' (H.comap q)
    hH'snc (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length le_rfl
  have hm : 1 ≤ S.mult := hV.one_le_mult
  have hO' : ∀ x : ↥(NontrivialBoundary.pullbackWithNontrivialBoundary S q).scheme,
      orderAt (NontrivialBoundary.pullbackWithNontrivialBoundary S q).ideal x ≤ ((S.mult : ℕ) : ℕ∞) :=
    BoundarySeparationBaseChange.orderAt_pullbackTriple_le_mult S q hV hO
  have hdimU : (MaxContactCoverData.derivedTriple S
      (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length) hftS
      [MaxContactReduction.strictTransformAtLength (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length) H]
      S.boundary.length).krullDimSucc ≤ T.krullDimSucc :=
    hstar.derivedTriple_dim_le hV _ hftS _ _ hdimS
  have hPU : P (MaxContactCoverData.derivedTriple S
      (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length) hftS
      [MaxContactReduction.strictTransformAtLength (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length) H]
      S.boundary.length).krullDimSucc := hmono _ _ hdimU hPdimT
  have hsncU : InStrictNormalCrossingPosition
      ((BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length).proj
        (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length).length ≫ S.structMap)
      ([MaxContactReduction.strictTransformAtLength (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length) H] ++
        List.drop S.boundary.length
          ((BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length).boundary
            (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length).length)) := by
    simpa [MaxContactReduction.strictTransformAtLength_eq] using
      inStrictNormalCrossingPosition_iteratedStrictTransform_cons_drop hstar S hV hO H (@hH hV.locallyOfFiniteType)
        (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length) hF.2.2 _ le_rfl
  have hVU := BoundarySeparationByMaxContact.isAdmissible_derivedTriple hstar S hV
    (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length) hftS
    [MaxContactReduction.strictTransformAtLength (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length) H]
    S.boundary.length hsncU
  have hdimU' : (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
      (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length) hftT
      [MaxContactReduction.strictTransformAtLength (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length) (H.comap q)]
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).krullDimSucc ≤ T.krullDimSucc :=
    hstar.derivedTriple_dim_le hV' _ hftT _ _ hdim'
  have hPU' : P (MaxContactCoverData.derivedTriple (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
      (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length) hftT
      [MaxContactReduction.strictTransformAtLength (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length) (H.comap q)]
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).krullDimSucc := hmono _ _ hdimU' hPdimT
  have hsncU' : InStrictNormalCrossingPosition
      ((BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).proj
        (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).length
        ≫ (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap)
      ([MaxContactReduction.strictTransformAtLength (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length) (H.comap q)] ++
        List.drop (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length
          ((BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
            (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).boundary
            (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
              (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length).length)) := by
    simpa [MaxContactReduction.strictTransformAtLength_eq] using
      inStrictNormalCrossingPosition_iteratedStrictTransform_cons_drop hstar (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV'
        (BoundarySeparationBaseChange.orderAt_pullbackTriple_le_mult S q hV hO) (H.comap q) (@hH' hV'.locallyOfFiniteType)
        (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
          (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length) hF'.2.2 _ le_rfl
  have hVU' := BoundarySeparationByMaxContact.isAdmissible_derivedTriple hstar (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV'
    (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length) hftT
    [MaxContactReduction.strictTransformAtLength (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length) (H.comap q)]
    (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length hsncU'
  have hsep : BoundarySeparationByMaxContact.BoundarySeparated S
      (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length) S.boundary.length := hF.1
  have hsep' : BoundarySeparationByMaxContact.BoundarySeparated (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
      (BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length)
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length := hF'.1
  simp only [MaxContactCoverData.reduceAlongHypersurface_eq_appendLowerDimReduction]
  exact StrictTransformComparison.isPullbackBlowupSequence_appendLowerDimReduction (P := P) (A := A) (Bl := Bl) (S := S) (q := q)
    (s := BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A S S.boundary.length)
    (s' := BoundarySeparationBaseChange.separateBoundaryOfFamily hinv T A (NontrivialBoundary.pullbackWithNontrivialBoundary S q)
      (NontrivialBoundary.pullbackWithNontrivialBoundary S q).boundary.length)
    (Dt := Dt0) (hftS := hftS) (hftT := hftT) (hinv := hinv) (T := T) (hstar := hstar)
    (hspec := hspec 0) (H := H) (hV := hV) (hV' := hV') (hm := hm) (hO := hO) (hO' := hO')
    (hdimU := hdimU) (hPU := hPU) (hVU := hVU) (hdimU' := hdimU') (hPU' := hPU') (hVU' := hVU')
    (hsep := hsep) (hsep' := hsep')

theorem isPullbackBlowupSequence_reduceAlongHypersurface_lowerDimensionalFamily
    (hstar : _root_.FunctorialResolution.EmbeddedResolution.MaxContactCoverProperties.{u})
    (_hin : _root_.FunctorialResolution.EmbeddedResolution.OrderReduction.OrderReductionHypotheses)
    (_hMC : _root_.FunctorialResolution.EmbeddedResolution.BoundarySeparationBaseChange.IsMaxContactInvariantBalancedTuned.{u})
    (_hAdm : _root_.FunctorialResolution.EmbeddedResolution.BoundarySeparationBaseChange.MaxContactHypersurfaceSmoothPullback.{u})
    (hinv : ComapIsoInvariance.{u})
    (P : ℕ → Prop) (hmono : ∀ a b : ℕ, a ≤ b → P b → P a)
    (A : ℕ → PrincipalizationAssignment.{u}) (Bl : PrincipalizationAssignment.{u})
    (hspec : ∀ i : ℕ, IsBoundaryDivisorReduction P i (A i) Bl)
    (hshift : IsBoundaryPositionInvariant P A)
    (T T' : MarkedIdealWithBoundary.{u}) (hPdimT : P T.krullDimSucc) (hPdimOther : P T'.krullDimSucc)
    (S : MarkedIdealWithBoundary.{u}) (hV : S.IsAdmissible)
    (hO : ∀ x : ↥S.scheme, orderAt S.ideal x ≤ (S.mult : ℕ∞))
    (hdimS : S.krullDimSucc ≤ T.krullDimSucc)
    (_hBoundaryNeTop : ∀ D ∈ S.boundary, D ≠ ⊤)
    (H : S.scheme.IdealSheafData)
    (hH : ∀ [AlgebraicGeometry.LocallyOfFiniteType S.structMap],
      IsMaxContactHypersurface S.base S.structMap S.ideal S.mult H)
    (hHsnc : InStrictNormalCrossingPosition S.structMap [H])
    {X' : Scheme.{u}} (q : X' ⟶ S.scheme) [AlgebraicGeometry.Smooth q]
    (hV' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).IsAdmissible)
    (hdim' : (NontrivialBoundary.pullbackWithNontrivialBoundary S q).krullDimSucc ≤ T'.krullDimSucc)
    (hH' : ∀ [AlgebraicGeometry.LocallyOfFiniteType (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap],
      IsMaxContactHypersurface (NontrivialBoundary.pullbackWithNontrivialBoundary S q).base
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap (NontrivialBoundary.pullbackWithNontrivialBoundary S q).ideal
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q).mult (H.comap q))
    (hH'snc : InStrictNormalCrossingPosition (NontrivialBoundary.pullbackWithNontrivialBoundary S q).structMap [H.comap q]) :
    IsPullbackBlowupSequence q
      (MaxContactReduction.reduceAlongHypersurface hinv T' (lowerDimensionalFamily A T')
        (NontrivialBoundary.pullbackWithNontrivialBoundary S q) (H.comap q)).toMarkedSequenceOfBlowups.toSequenceOfBlowups
      (MaxContactReduction.reduceAlongHypersurface hinv T (lowerDimensionalFamily A T) S H).toMarkedSequenceOfBlowups.toSequenceOfBlowups := by
  rcases le_total T.krullDimSucc T'.krullDimSucc with hle | hle
  · rw [reduceAlongHypersurface_congr_of_dim_le hstar hinv A T T' hle S hV hdimS H]
    exact isPullbackBlowupSequence_reduceAlongHypersurface_of_smooth hstar hinv P hmono A Bl hspec hshift T' hPdimOther S hV hO
      (le_trans hdimS hle) H hH hHsnc q hV' hdim' hH' hH'snc
  · rw [reduceAlongHypersurface_congr_of_dim_le hstar hinv A T' T hle (NontrivialBoundary.pullbackWithNontrivialBoundary S q) hV' hdim'
      (H.comap q)]
    exact isPullbackBlowupSequence_reduceAlongHypersurface_of_smooth hstar hinv P hmono A Bl hspec hshift T hPdimT S hV hO hdimS
      H hH hHsnc q hV' (le_trans hdim' hle) hH' hH'snc

end MaxContactFunctoriality

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.HypersurfaceReductionFunctoriality =====
