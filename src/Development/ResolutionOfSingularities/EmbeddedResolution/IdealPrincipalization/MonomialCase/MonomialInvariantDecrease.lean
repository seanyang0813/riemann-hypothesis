module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.MonomialCenter
public import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.GenericPointImage
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.MonomialGeometryHypotheses
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.LocallyMonomial
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderPullback
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.LexOrderEncoding
import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform
import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupOpenCover

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.BlowupAtMonomialCenter, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.MonomialInvariantDecrease

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.BlowupAtMonomialCenter =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.BlowupAtMonomialCenter", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.MonomialCenter\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.GenericPointImage\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderPullback\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

def blowupTriple (T : MarkedIdealWithBoundary.{u}) {X' : Scheme.{u}} (π : X' ⟶ T.scheme)
    (q : X' ⟶ Spec (CommRingCat.of T.base)) (I' : X'.IdealSheafData) : MarkedIdealWithBoundary.{u} where
  base := T.base
  instField := inferInstance
  scheme := X'
  structMap := q
  ideal := I'
  mult := T.mult
  boundary := transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary

@[simp] theorem blowupTriple_boundary (T : MarkedIdealWithBoundary.{u}) {X' : Scheme.{u}}
    (π : X' ⟶ T.scheme) (q : X' ⟶ Spec (CommRingCat.of T.base)) (I' : X'.IdealSheafData) :
    (blowupTriple T π q I').boundary =
      transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary := rfl

theorem orderAt_transform_eq_of_not_mem_exceptional (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}} (hT : MonomialCenter.IsLocallyMonomialTriple T)
    {X' : Scheme.{u}} (π : X' ⟶ T.scheme)
    (hπ : Blowup.IsBlowupAlongIdealSheaf π (monomialCenter T.ideal T.mult T.boundary))
    (I' : X'.IdealSheafData)
    (hI' : (monomialCenter T.ideal T.mult T.boundary).comap π ^ T.mult * I' =
      T.ideal.comap π)
    (x' : ↥X')
    (hx' : x' ∉ (Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)).support) :
    orderAt I' x' = orderAt T.ideal (π x') := by
  have hE : Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)
      = (monomialCenter T.ideal T.mult T.boundary).comap π := by
    rw [Blowup.exceptionalIdeal_eq_comap]
  have hx2 : x' ∉ ((monomialCenter T.ideal T.mult T.boundary).comap π).support := by
    rw [← hE]
    exact hx'
  have htop : stalkIdeal ((monomialCenter T.ideal T.mult T.boundary).comap π) x' = ⊤ := by
    by_contra hne
    exact hx2 ((mem_support_iff_stalkIdeal_ne_top _ _).2 hne)
  have hst : stalkIdeal (T.ideal.comap π) x' = stalkIdeal I' x' := by
    rw [← hI', stalkIdeal_mul, stalkIdeal_pow, htop, ← Ideal.one_eq_top, one_pow, one_mul]
  exact (orderAt_eq_of_stalkIdeal_eq hst).symm.trans
    (hGeom.orderAt_comap_off_exceptional T hT.valid X' π
      (monomialCenter T.ideal T.mult T.boundary) hπ x' hx' T.ideal)

theorem orderAlong_transform_eq_of_genericPoint_not_mem_exceptional (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}} (hT : MonomialCenter.IsLocallyMonomialTriple T)
    (_h : minIndexCard T.ideal T.mult T.boundary ≠ 0)
    {X' : Scheme.{u}} (π : X' ⟶ T.scheme)
    (hπ : Blowup.IsBlowupAlongIdealSheaf π (monomialCenter T.ideal T.mult T.boundary))
    (I' : X'.IdealSheafData)
    (hI' : (monomialCenter T.ideal T.mult T.boundary).comap π ^ T.mult * I' =
      T.ideal.comap π)
    {J : Finset (Fin T.boundary.length)} {C' : Set ↥X'}
    (hC' : C' ∈ intersectionComponents
      (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
      (J.image (strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary)))
    (hoff : (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∉
      (Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)).support) :
    orderAlong I' C' = orderAlong T.ideal (⇑π '' C') := by
  have hgen : IsGenericPoint (isIrreducible_of_mem_intersectionComponents hC').genericPoint C' :=
    isGenericPoint_genericPoint_of_mem_intersectionComponents hC'
  have hSirr : IsIrreducible (⇑π '' C') :=
    (isIrreducible_of_mem_intersectionComponents hC').image _ π.continuous.continuousOn
  have hclim : closure (⇑π '' C')
      = closure ({π (isIrreducible_of_mem_intersectionComponents hC').genericPoint} : Set ↥T.scheme) :=
    closure_image_genericPoint (f := ⇑π) π.continuous hgen
  have h2 : orderAlong T.ideal (⇑π '' C')
      = orderAt T.ideal (π (isIrreducible_of_mem_intersectionComponents hC').genericPoint) := by
    rw [orderAlong_eq_orderAt_genericPoint T.ideal hSirr]
    have h3 : closure ({hSirr.genericPoint} : Set ↥T.scheme)
        = closure ({π (isIrreducible_of_mem_intersectionComponents hC').genericPoint} : Set ↥T.scheme) := by
      rw [← hclim]
      simp
    rw [(inseparable_iff_closure_eq.mpr h3).eq]
  rw [orderAlong_eq_orderAt_of_mem_intersectionComponents I' hC', h2]
  exact orderAt_transform_eq_of_not_mem_exceptional hGeom hT π hπ I' hI' _ hoff

private theorem get_transformedBoundary_strictTransformIndex {X' X : Scheme.{u}} (π : X' ⟶ X)
    (Z : X.IdealSheafData) (L : List X.IdealSheafData) (j : Fin L.length) :
    (transformedBoundary π Z L).get (strictTransformIndex π Z L j) = Blowup.strictTransform π Z (L.get j) := by
  have hlt : ((strictTransformIndex π Z L j : Fin (transformedBoundary π Z L).length) : ℕ)
      < (L.map (Blowup.strictTransform π Z)).length := by
    rw [strictTransformIndex_val]
    simp
  simp only [List.get_eq_getElem]
  rw [List.getElem_append_left hlt]
  exact List.getElem_map _

private theorem get_transformedBoundary_exceptionalIndex {X' X : Scheme.{u}} (π : X' ⟶ X)
    (Z : X.IdealSheafData) (L : List X.IdealSheafData) :
    (transformedBoundary π Z L).get (exceptionalIndex π Z L) = Blowup.exceptionalIdeal π Z := by
  have hge : (L.map (Blowup.strictTransform π Z)).length
      ≤ ((exceptionalIndex π Z L : Fin (transformedBoundary π Z L).length) : ℕ) := by
    rw [exceptionalIndex_val]
    simp
  simp only [List.get_eq_getElem]
  rw [List.getElem_append_right hge]
  simp [exceptionalIndex_val]

private theorem strictTransformIndex_injective {X' X : Scheme.{u}} (π : X' ⟶ X) (Z : X.IdealSheafData)
    (L : List X.IdealSheafData) : Function.Injective (strictTransformIndex π Z L) := by
  intro i j hij
  have hv : ((strictTransformIndex π Z L i : Fin (transformedBoundary π Z L).length) : ℕ)
      = ((strictTransformIndex π Z L j : Fin (transformedBoundary π Z L).length) : ℕ) := by rw [hij]
  rw [strictTransformIndex_val, strictTransformIndex_val] at hv
  exact Fin.val_injective hv

private theorem eq_exceptionalIndex_or_exists_strictTransformIndex {X' X : Scheme.{u}} (π : X' ⟶ X)
    (Z : X.IdealSheafData) (L : List X.IdealSheafData)
    (i : Fin (transformedBoundary π Z L).length) :
    i = exceptionalIndex π Z L ∨ ∃ j : Fin L.length, strictTransformIndex π Z L j = i := by
  have hlen := transformedBoundary_length π Z L
  have hi : (i : ℕ) < (transformedBoundary π Z L).length := i.isLt
  have hlt : (i : ℕ) < L.length + 1 := by omega
  rcases Nat.lt_or_ge (i : ℕ) L.length with hj | hj
  · exact Or.inr ⟨⟨(i : ℕ), hj⟩, Fin.val_injective (by rw [strictTransformIndex_val])⟩
  · refine Or.inl (Fin.val_injective ?_)
    rw [exceptionalIndex_val]
    omega

private theorem image_strictTransformIndex_preimageStrictTransformIndex {X' X : Scheme.{u}} (π : X' ⟶ X)
    (Z : X.IdealSheafData) (L : List X.IdealSheafData)
    (J' : Finset (Fin (transformedBoundary π Z L).length))
    (hnew : exceptionalIndex π Z L ∉ J') :
    (preimageStrictTransformIndex π Z L J').image (strictTransformIndex π Z L) = J' := by
  classical
  ext i
  simp only [Finset.mem_image, mem_preimageStrictTransformIndex_iff]
  constructor
  · rintro ⟨j, hj, rfl⟩
    exact hj
  · intro hi
    rcases eq_exceptionalIndex_or_exists_strictTransformIndex π Z L i with rfl | ⟨j, rfl⟩
    · exact absurd hi hnew
    · exact ⟨j, hi, rfl⟩

private theorem card_preimageStrictTransformIndex_of_not_mem {X' X : Scheme.{u}} (π : X' ⟶ X)
    (Z : X.IdealSheafData) (L : List X.IdealSheafData)
    (J' : Finset (Fin (transformedBoundary π Z L).length)) (hnew : exceptionalIndex π Z L ∉ J') :
    (preimageStrictTransformIndex π Z L J').card = J'.card := by
  classical
  have h1 := Finset.card_image_of_injective (preimageStrictTransformIndex π Z L J') (strictTransformIndex_injective π Z L)
  rw [image_strictTransformIndex_preimageStrictTransformIndex π Z L J' hnew] at h1
  exact h1.symm

private theorem card_preimageStrictTransformIndex_add_one_of_mem {X' X : Scheme.{u}} (π : X' ⟶ X)
    (Z : X.IdealSheafData) (L : List X.IdealSheafData)
    (J' : Finset (Fin (transformedBoundary π Z L).length)) (hnew : exceptionalIndex π Z L ∈ J') :
    (preimageStrictTransformIndex π Z L J').card + 1 = J'.card := by
  classical
  have himg : (preimageStrictTransformIndex π Z L J').image (strictTransformIndex π Z L) = J'.erase (exceptionalIndex π Z L) := by
    ext i
    simp only [Finset.mem_image, mem_preimageStrictTransformIndex_iff, Finset.mem_erase]
    constructor
    · rintro ⟨j, hj, rfl⟩
      refine ⟨?_, hj⟩
      intro hc
      have hval : ((strictTransformIndex π Z L j : Fin (transformedBoundary π Z L).length) : ℕ)
          = ((exceptionalIndex π Z L : Fin (transformedBoundary π Z L).length) : ℕ) := by rw [hc]
      rw [strictTransformIndex_val, exceptionalIndex_val] at hval
      exact absurd hval (Nat.ne_of_lt j.isLt)
    · rintro ⟨hne, hi⟩
      rcases eq_exceptionalIndex_or_exists_strictTransformIndex π Z L i with rfl | ⟨j, rfl⟩
      · exact absurd rfl hne
      · exact ⟨j, hi, rfl⟩
  have h1 := Finset.card_image_of_injective (preimageStrictTransformIndex π Z L J') (strictTransformIndex_injective π Z L)
  rw [himg, Finset.card_erase_of_mem hnew] at h1
  have h2 : 1 ≤ J'.card := Finset.card_pos.2 ⟨_, hnew⟩
  omega

private theorem exists_orderAt_comap_eq_strictTransform_add_exceptional (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}} (hT : MonomialCenter.IsLocallyMonomialTriple T)
    (h : minIndexCard T.ideal T.mult T.boundary ≠ 0)
    {X' : Scheme.{u}} (π : X' ⟶ T.scheme) (q : X' ⟶ Spec (CommRingCat.of T.base))
    (hq : AlgebraicGeometry.Smooth q)
    (hπ : Blowup.IsBlowupAlongIdealSheaf π (monomialCenter T.ideal T.mult T.boundary))
    (i : Fin T.boundary.length) (x' : ↥X') :
    ∃ ε : ℕ, (ε = 0 ∨ ε = 1) ∧
      (ε = 1 ↔ ∃ V : T.scheme.Opens, π x' ∈ V ∧
        ((↑(monomialCenter T.ideal T.mult T.boundary).support : Set ↥T.scheme) ∩
            (V : Set ↥T.scheme)) ⊆ (↑(T.boundary.get i).support : Set ↥T.scheme)) ∧
      orderAt ((T.boundary.get i).comap π) x'
        = orderAt (Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
            (T.boundary.get i)) x'
          + (ε : ℕ∞) *
            orderAt (Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)) x' := by
  classical
  have : CharZero T.base := hT.valid.charZero
  have : AlgebraicGeometry.Smooth q := hq
  have hmemL : T.boundary.get i ∈ T.boundary := by simp
  obtain ⟨U', ε, hx'U', hε01, hεiff, hfact⟩ :=
    hGeom.blowup_total_transform T hT.valid (monomialCenter T.ideal T.mult T.boundary)
      (smooth_monomialCenter hGeom hT h) (hasStrictNormalCrossingsWith_monomialCenter hGeom hT h) X' π hπ
      (T.boundary.get i) hmemL x'
  refine ⟨ε, hε01, hεiff, ?_⟩
  have : AlgebraicGeometry.Smooth U'.ι := inferInstance
  have : AlgebraicGeometry.Smooth (U'.ι ≫ q) := inferInstance
  have e1 : orderAt (((T.boundary.get i).comap π).comap U'.ι) ⟨x', hx'U'⟩
      = orderAt ((T.boundary.get i).comap π) x' :=
    orderAt_comap T.base q U'.ι ((T.boundary.get i).comap π) ⟨x', hx'U'⟩
  have e2 : orderAt ((Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
        (T.boundary.get i)).comap U'.ι) ⟨x', hx'U'⟩
      = orderAt (Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
          (T.boundary.get i)) x' :=
    orderAt_comap T.base q U'.ι
      (Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary) (T.boundary.get i))
      ⟨x', hx'U'⟩
  have e3 : orderAt ((Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)).comap U'.ι)
        ⟨x', hx'U'⟩
      = orderAt (Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)) x' :=
    orderAt_comap T.base q U'.ι
      (Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)) ⟨x', hx'U'⟩
  have hmul := orderAt_mul T.base (U'.ι ≫ q)
      ((Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
        (T.boundary.get i)).comap U'.ι)
      (((Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)).comap U'.ι) ^ ε)
      ⟨x', hx'U'⟩
  have hpow := orderAt_pow T.base (U'.ι ≫ q)
      ((Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)).comap U'.ι) ε
      ⟨x', hx'U'⟩
  have h4 : orderAt (((Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)).comap U'.ι)
        ^ ε) ⟨x', hx'U'⟩
      = (ε : ℕ∞) *
        orderAt (Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)) x' :=
    hpow.trans (congrArg (fun z : ℕ∞ => (ε : ℕ∞) * z) e3)
  calc orderAt ((T.boundary.get i).comap π) x'
      = orderAt (((T.boundary.get i).comap π).comap U'.ι) ⟨x', hx'U'⟩ := e1.symm
    _ = orderAt ((Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
            (T.boundary.get i)).comap U'.ι *
          ((Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)).comap U'.ι) ^ ε)
          ⟨x', hx'U'⟩ := by rw [hfact]
    _ = orderAt ((Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
            (T.boundary.get i)).comap U'.ι) ⟨x', hx'U'⟩
        + orderAt (((Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)).comap U'.ι)
            ^ ε) ⟨x', hx'U'⟩ := hmul
    _ = orderAt (Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
            (T.boundary.get i)) x'
        + (ε : ℕ∞) *
          orderAt (Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)) x' := by
        rw [e2, h4]

private theorem comap_foldr_mul {X Y : Scheme.{u}} (f : Y ⟶ X) (l : List X.IdealSheafData) :
    (l.foldr (· * ·) ⊤).comap f = (l.map (fun A => A.comap f)).foldr (· * ·) ⊤ := by
  induction l with
  | nil => simp
  | cons A l ih =>
    simp only [List.foldr_cons, List.map_cons,
      AlgebraicGeometry.Scheme.IdealSheafData.comap_mul, ih]

theorem orderAlong_transform_add_mult_of_exceptionalIndex_mem (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}} (hT : MonomialCenter.IsLocallyMonomialTriple T)
    (h : minIndexCard T.ideal T.mult T.boundary ≠ 0)
    {X' : Scheme.{u}} (π : X' ⟶ T.scheme) (q : X' ⟶ Spec (CommRingCat.of T.base))
    (hπ : Blowup.IsBlowupAlongIdealSheaf π (monomialCenter T.ideal T.mult T.boundary))
    (I' : X'.IdealSheafData)
    (hI' : (monomialCenter T.ideal T.mult T.boundary).comap π ^ T.mult * I' =
      T.ideal.comap π)
    (hT' : MonomialCenter.IsLocallyMonomialTriple (blowupTriple T π q I'))
    {J' : Finset (Fin (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
      T.boundary).length)}
    (hJ' : exceptionalIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary ∈ J')
    {C' : Set ↥X'}
    (hC' : C' ∈ intersectionComponents
      (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) J')
    (U : T.scheme.Opens)
    (hU : π (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈ U)
    (a : Fin T.boundary.length → ℕ)
    (hmon : T.ideal.comap U.ι =
      (List.ofFn fun i : Fin T.boundary.length =>
        (T.boundary.get i).comap U.ι ^ a i).foldr (· * ·) ⊤)
    {C₀ : Set ↥T.scheme}
    (hC₀ : C₀ ∈ centerComponents T.ideal T.mult T.boundary)
    (hmem₀ : π (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈ C₀) :
    orderAlong I' C' + (T.mult : ℕ∞) =
      ((∑ i ∈ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J', a i : ℕ) : ℕ∞)
        + orderAlong T.ideal C₀ := by
  classical
  have : CharZero T.base := hT.valid.charZero
  have : AlgebraicGeometry.Smooth q := hT'.valid.smooth
  have hC'' : C' ∈ intersectionComponents (blowupTriple T π q I').boundary J' := hC'
  have hmemiff : ∀ i : Fin (transformedBoundary π
      (monomialCenter T.ideal T.mult T.boundary) T.boundary).length,
      ((isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈
        ((transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
          T.boundary).get i).support) ↔ i ∈ J' :=
    fun i => genericPoint_mem_support_iff_mem hGeom hT' hC'' i
  have hEmem : (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈
      (Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)).support := by
    have hx := (hmemiff (exceptionalIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary)).2 hJ'
    rwa [get_transformedBoundary_exceptionalIndex] at hx
  have hstrictmem0 : Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)
      ∈ (blowupTriple T π q I').boundary := by
    simp only [blowupTriple_boundary]
    exact List.mem_append_right _ (List.mem_singleton_self _)
  have hEord : orderAt (Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary))
      (isIrreducible_of_mem_intersectionComponents hC').genericPoint = 1 :=
    hGeom.orderAt_boundary_eq_one (blowupTriple T π q I') hT'.valid
      (Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)) hstrictmem0
      (isIrreducible_of_mem_intersectionComponents hC').genericPoint hEmem
  have hZord : orderAt ((monomialCenter T.ideal T.mult T.boundary).comap π)
      (isIrreducible_of_mem_intersectionComponents hC').genericPoint = 1 := by
    rw [← Blowup.exceptionalIdeal_eq_comap]
    exact hEord
  have h3 : orderAt (T.ideal.comap π) (isIrreducible_of_mem_intersectionComponents hC').genericPoint
      = (T.mult : ℕ∞) + orderAt I' (isIrreducible_of_mem_intersectionComponents hC').genericPoint := by
    rw [← hI', orderAt_mul T.base q, orderAt_pow T.base q, hZord, mul_one]
  have hmaxIdx : ∀ i ∈ lexMaxIndices T.ideal T.mult T.boundary,
      (↑(monomialCenter T.ideal T.mult T.boundary).support : Set ↥T.scheme)
        ⊆ (↑(T.boundary.get i).support : Set ↥T.scheme) := by
    intro i hi
    rw [support_monomialCenter hGeom hT h, monomialCenterSet_eq_sUnion_centerComponents]
    rintro y ⟨C, hCmem, hyC⟩
    exact (subset_support_iff_mem_of_mem_intersectionComponents hGeom hT
      (centerComponents_subset_intersectionComponents T.ideal T.mult T.boundary hCmem) i).2 hi hyC
  have hkeyc : ∀ (i : Fin T.boundary.length) (V : T.scheme.Opens),
      π (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈ V →
      ((↑(monomialCenter T.ideal T.mult T.boundary).support : Set ↥T.scheme)
          ∩ (V : Set ↥T.scheme)) ⊆ (↑(T.boundary.get i).support : Set ↥T.scheme) →
      i ∈ lexMaxIndices T.ideal T.mult T.boundary := by
    intro i V hVmem hVsub
    have hC₀comp : C₀ ∈ intersectionComponents T.boundary (lexMaxIndices T.ideal T.mult T.boundary) :=
      centerComponents_subset_intersectionComponents T.ideal T.mult T.boundary hC₀
    have hirr0 : IsIrreducible C₀ := isIrreducible_of_mem_intersectionComponents hC₀comp
    have hC₀Z : C₀ ⊆ (↑(monomialCenter T.ideal T.mult T.boundary).support : Set ↥T.scheme) := by
      rw [support_monomialCenter hGeom hT h, monomialCenterSet_eq_sUnion_centerComponents]
      intro y hy
      exact ⟨C₀, hC₀, hy⟩
    have hclosed : IsClosed (↑(T.boundary.get i).support : Set ↥T.scheme) :=
      (T.boundary.get i).support.2
    have hcl : closure (C₀ ∩ (V : Set ↥T.scheme))
        ⊆ (↑(T.boundary.get i).support : Set ↥T.scheme) :=
      closure_minimal (fun z hz => hVsub ⟨hC₀Z hz.1, hz.2⟩) hclosed
    have hsub2 : C₀ ⊆ (↑(T.boundary.get i).support : Set ↥T.scheme) := by
      intro y hy
      refine hcl ?_
      rw [mem_closure_iff]
      intro W hW hyW
      obtain ⟨z, hzC, hzW, hzV⟩ :=
        hirr0.2 W (V : Set ↥T.scheme) hW V.isOpen ⟨y, hy, hyW⟩
          ⟨π (isIrreducible_of_mem_intersectionComponents hC').genericPoint, hmem₀, hVmem⟩
      exact ⟨z, hzW, hzC, hzV⟩
    exact (subset_support_iff_mem_of_mem_intersectionComponents hGeom hT hC₀comp i).1 hsub2
  have hξU : (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈ π ⁻¹ᵁ U := hU
  have hrestr : ∀ A : T.scheme.IdealSheafData,
      (A.comap U.ι).comap (π ∣_ U) = (A.comap π).comap (π ⁻¹ᵁ U).ι := by
    intro A
    have h1 : A.comap ((π ∣_ U) ≫ U.ι) = A.comap ((π ⁻¹ᵁ U).ι ≫ π) := by
      rw [morphismRestrict_ι]
    simpa only [AlgebraicGeometry.Scheme.IdealSheafData.comap_comp] using h1
  have hmon' : (T.ideal.comap π).comap (π ⁻¹ᵁ U).ι
      = (List.ofFn fun i : Fin T.boundary.length =>
          ((T.boundary.get i).comap π).comap (π ⁻¹ᵁ U).ι ^ a i).foldr (· * ·) ⊤ := by
    rw [← hrestr T.ideal, hmon, comap_foldr_mul]
    congr 1
    rw [List.map_ofFn]
    refine congrArg List.ofFn (funext fun i => ?_)
    simp only [Function.comp_apply]
    rw [AlgebraicGeometry.Scheme.IdealSheafData.comap_pow, hrestr]
  have : AlgebraicGeometry.Smooth (π ⁻¹ᵁ U).ι := inferInstance
  have : AlgebraicGeometry.Smooth ((π ⁻¹ᵁ U).ι ≫ q) := inferInstance
  have e0 : orderAt ((T.ideal.comap π).comap (π ⁻¹ᵁ U).ι)
      ⟨(isIrreducible_of_mem_intersectionComponents hC').genericPoint, hξU⟩
      = orderAt (T.ideal.comap π) (isIrreducible_of_mem_intersectionComponents hC').genericPoint :=
    orderAt_comap T.base q (π ⁻¹ᵁ U).ι (T.ideal.comap π)
      ⟨(isIrreducible_of_mem_intersectionComponents hC').genericPoint, hξU⟩
  have ecomap : ∀ i : Fin T.boundary.length,
      orderAt (((T.boundary.get i).comap π).comap (π ⁻¹ᵁ U).ι)
          ⟨(isIrreducible_of_mem_intersectionComponents hC').genericPoint, hξU⟩
        = orderAt ((T.boundary.get i).comap π)
            (isIrreducible_of_mem_intersectionComponents hC').genericPoint :=
    fun i => orderAt_comap T.base q (π ⁻¹ᵁ U).ι ((T.boundary.get i).comap π)
      ⟨(isIrreducible_of_mem_intersectionComponents hC').genericPoint, hξU⟩
  have e2 : orderAt ((T.ideal.comap π).comap (π ⁻¹ᵁ U).ι)
      ⟨(isIrreducible_of_mem_intersectionComponents hC').genericPoint, hξU⟩
      = ∑ i : Fin T.boundary.length,
          orderAt (((T.boundary.get i).comap π).comap (π ⁻¹ᵁ U).ι ^ a i)
            ⟨(isIrreducible_of_mem_intersectionComponents hC').genericPoint, hξU⟩ := by
    rw [hmon', orderAt_foldr_mul T.base ((π ⁻¹ᵁ U).ι ≫ q)
      ⟨(isIrreducible_of_mem_intersectionComponents hC').genericPoint, hξU⟩]
    simp [List.map_ofFn, List.sum_ofFn]
  have e3 : ∀ i : Fin T.boundary.length,
      orderAt (((T.boundary.get i).comap π).comap (π ⁻¹ᵁ U).ι ^ a i)
          ⟨(isIrreducible_of_mem_intersectionComponents hC').genericPoint, hξU⟩
        = (a i : ℕ∞) * orderAt ((T.boundary.get i).comap π)
            (isIrreducible_of_mem_intersectionComponents hC').genericPoint := by
    intro i
    have hp := orderAt_pow T.base ((π ⁻¹ᵁ U).ι ≫ q)
      (((T.boundary.get i).comap π).comap (π ⁻¹ᵁ U).ι) (a i)
      ⟨(isIrreducible_of_mem_intersectionComponents hC').genericPoint, hξU⟩
    exact hp.trans (congrArg (fun z : ℕ∞ => (a i : ℕ∞) * z) (ecomap i))
  have h1 : orderAt (T.ideal.comap π) (isIrreducible_of_mem_intersectionComponents hC').genericPoint
      = ∑ i : Fin T.boundary.length, (a i : ℕ∞) *
          orderAt ((T.boundary.get i).comap π)
            (isIrreducible_of_mem_intersectionComponents hC').genericPoint := by
    rw [← e0, e2]
    exact Finset.sum_congr rfl fun i _ => e3 i
  have hoi : ∀ i : Fin T.boundary.length,
      orderAt ((T.boundary.get i).comap π)
          (isIrreducible_of_mem_intersectionComponents hC').genericPoint
        = (((if strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary i ∈ J'
              then 1 else 0)
            + (if i ∈ lexMaxIndices T.ideal T.mult T.boundary then 1 else 0) : ℕ) : ℕ∞) := by
    intro i
    obtain ⟨ε, hε01, hεiff, hfact⟩ :=
      exists_orderAt_comap_eq_strictTransform_add_exceptional hGeom hT h π q hT'.valid.smooth hπ i
        (isIrreducible_of_mem_intersectionComponents hC').genericPoint
    have hstrictmem : Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
        (T.boundary.get i) ∈ (blowupTriple T π q I').boundary := by
      simp only [blowupTriple_boundary]
      exact List.mem_append_left _
        (List.mem_map_of_mem
          (f := Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)) (by simp))
    have hstrict : orderAt (Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
          (T.boundary.get i)) (isIrreducible_of_mem_intersectionComponents hC').genericPoint
        = ((if strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary i ∈ J'
            then 1 else 0 : ℕ) : ℕ∞) := by
      by_cases hi : strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary i ∈ J'
      · have hmem := (hmemiff
          (strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary i)).2 hi
        rw [get_transformedBoundary_strictTransformIndex] at hmem
        have hone : orderAt (Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
            (T.boundary.get i)) (isIrreducible_of_mem_intersectionComponents hC').genericPoint = 1 :=
          hGeom.orderAt_boundary_eq_one (blowupTriple T π q I') hT'.valid _ hstrictmem _ hmem
        rw [hone]
        simp [hi]
      · have hnot : (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∉
            (Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
              (T.boundary.get i)).support := by
          intro hc
          refine hi ((hmemiff
            (strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary i)).1 ?_)
          rw [get_transformedBoundary_strictTransformIndex]
          exact hc
        rw [(orderAt_eq_zero_iff_not_mem_support _ _).2 hnot]
        simp [hi]
    have hεval : ε = (if i ∈ lexMaxIndices T.ideal T.mult T.boundary then 1 else 0) := by
      by_cases hi : i ∈ lexMaxIndices T.ideal T.mult T.boundary
      · rw [if_pos hi]
        exact hεiff.2 ⟨⊤, trivial, fun y hy => hmaxIdx i hi hy.1⟩
      · rw [if_neg hi]
        rcases hε01 with h0 | h1
        · exact h0
        · exfalso
          obtain ⟨V, hVmem, hVsub⟩ := hεiff.1 h1
          exact hi (hkeyc i V hVmem hVsub)
    rw [hfact, hstrict, hEord, mul_one, hεval, Nat.cast_add]
  have hA : ∑ i : Fin T.boundary.length,
      a i * ((if strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary i ∈ J'
        then 1 else 0 : ℕ))
      = ∑ i ∈ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J', a i := by
    simp [preimageStrictTransformIndex, mul_ite, mul_one, mul_zero, Finset.sum_filter]
  have hB : ∑ i : Fin T.boundary.length,
      a i * ((if i ∈ lexMaxIndices T.ideal T.mult T.boundary then 1 else 0 : ℕ))
      = ∑ j ∈ lexMaxIndices T.ideal T.mult T.boundary, a j := by
    simp [mul_ite, mul_one, mul_zero, Finset.sum_ite_mem]
  have hnat : ∑ i : Fin T.boundary.length,
      a i * ((if strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary i ∈ J'
          then 1 else 0)
        + (if i ∈ lexMaxIndices T.ideal T.mult T.boundary then 1 else 0))
      = (∑ i ∈ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J', a i)
        + ∑ j ∈ lexMaxIndices T.ideal T.mult T.boundary, a j := by
    calc ∑ i : Fin T.boundary.length,
        a i * ((if strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary i ∈ J'
            then 1 else 0)
          + (if i ∈ lexMaxIndices T.ideal T.mult T.boundary then 1 else 0))
        = ∑ i : Fin T.boundary.length,
            (a i * (if strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary i ∈ J'
              then 1 else 0)
              + a i * (if i ∈ lexMaxIndices T.ideal T.mult T.boundary then 1 else 0)) :=
          Finset.sum_congr rfl fun i _ => mul_add _ _ _
      _ = (∑ i : Fin T.boundary.length,
            a i * (if strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary i ∈ J'
              then 1 else 0))
          + ∑ i : Fin T.boundary.length,
            a i * (if i ∈ lexMaxIndices T.ideal T.mult T.boundary then 1 else 0) :=
          Finset.sum_add_distrib
      _ = (∑ i ∈ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J', a i)
          + ∑ j ∈ lexMaxIndices T.ideal T.mult T.boundary, a j := by rw [hA, hB]
  have hgoal1 : orderAlong T.ideal C₀
      = ((∑ j ∈ lexMaxIndices T.ideal T.mult T.boundary, a j : ℕ) : ℕ∞) :=
    orderAlong_eq_sum_of_monomial hGeom hT
      (centerComponents_subset_intersectionComponents T.ideal T.mult T.boundary hC₀) hmem₀ U hU a hmon
  have ekey : ∑ i : Fin T.boundary.length, (a i : ℕ∞) *
        orderAt ((T.boundary.get i).comap π)
          (isIrreducible_of_mem_intersectionComponents hC').genericPoint
      = ((∑ i : Fin T.boundary.length,
          a i * ((if strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary i ∈ J'
              then 1 else 0)
            + (if i ∈ lexMaxIndices T.ideal T.mult T.boundary then 1 else 0)) : ℕ) : ℕ∞) := by
    rw [Nat.cast_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [hoi i, Nat.cast_mul]
  have key : (T.mult : ℕ∞) + orderAt I' (isIrreducible_of_mem_intersectionComponents hC').genericPoint
      = ((∑ i ∈ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J', a i : ℕ) : ℕ∞)
        + ((∑ j ∈ lexMaxIndices T.ideal T.mult T.boundary, a j : ℕ) : ℕ∞) := by
    rw [← h3, h1, ekey, hnat, Nat.cast_add]
  rw [orderAlong_eq_orderAt_of_mem_intersectionComponents I' hC', hgoal1,
    add_comm (orderAt I' (isIrreducible_of_mem_intersectionComponents hC').genericPoint) ((T.mult : ℕ∞))]
  exact key

private theorem exceptionalIndex_not_mem_of_orderAlong_eq_maxCandidateOrder (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}} (hT : MonomialCenter.IsLocallyMonomialTriple T)
    (h : minIndexCard T.ideal T.mult T.boundary ≠ 0)
    {X' : Scheme.{u}} (π : X' ⟶ T.scheme) (q : X' ⟶ Spec (CommRingCat.of T.base))
    (hπ : Blowup.IsBlowupAlongIdealSheaf π (monomialCenter T.ideal T.mult T.boundary))
    (I' : X'.IdealSheafData)
    (hI' : (monomialCenter T.ideal T.mult T.boundary).comap π ^ T.mult * I' =
      T.ideal.comap π)
    (hT' : MonomialCenter.IsLocallyMonomialTriple (blowupTriple T π q I'))
    (hr : minIndexCard I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
      = minIndexCard T.ideal T.mult T.boundary)
    (hv : maxCandidateOrder I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
      = maxCandidateOrder T.ideal T.mult T.boundary)
    {J' : Finset (Fin (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
      T.boundary).length)}
    {C' : Set ↥X'}
    (hcand : IsCandidateComponent I' T.mult
      (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
      (minIndexCard I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)) J' C')
    (hordmax : orderAlong I' C'
      = maxCandidateOrder I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)) :
    exceptionalIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary ∉ J' := by
  classical
  intro hnew
  have : CharZero T.base := hT.valid.charZero
  have : AlgebraicGeometry.Smooth q := hT'.valid.smooth
  have hC'comp : C' ∈ intersectionComponents
      (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) J' := by
    have hc := hcand
    unfold IsCandidateComponent at hc
    tauto
  have hC'' : C' ∈ intersectionComponents (blowupTriple T π q I').boundary J' := hC'comp
  have hmemiff : ∀ i : Fin (transformedBoundary π
      (monomialCenter T.ideal T.mult T.boundary) T.boundary).length,
      ((isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint ∈
        ((transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
          T.boundary).get i).support) ↔ i ∈ J' :=
    fun i => genericPoint_mem_support_iff_mem hGeom hT' hC'' i
  have hEmem : (isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint ∈
      (Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)).support := by
    have hx := (hmemiff (exceptionalIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary)).2 hnew
    rwa [get_transformedBoundary_exceptionalIndex] at hx
  have hZmem : (isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint ∈
      ((monomialCenter T.ideal T.mult T.boundary).comap π).support := by
    rw [← Blowup.exceptionalIdeal_eq_comap]
    exact hEmem
  have hπZ : π (isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint ∈
      (monomialCenter T.ideal T.mult T.boundary).support :=
    (AlgebraicGeometry.Scheme.IdealSheafData.mem_support_comap ..).mp hZmem
  have hπZset : π (isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint ∈
      (↑(monomialCenter T.ideal T.mult T.boundary).support : Set ↥T.scheme) := hπZ
  have hcos : π (isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint ∈
      orderAtLeastLocus T.ideal T.mult := support_monomialCenter_subset_orderAtLeastLocus hGeom hT h hπZset
  obtain ⟨U, hU, a, hmon⟩ := hT.monomialNear _ hcos
  have hπcenter : π (isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint ∈
      monomialCenterSet T.ideal T.mult T.boundary := by
    rw [← support_monomialCenter hGeom hT h]
    exact hπZset
  rw [monomialCenterSet_eq_sUnion_centerComponents] at hπcenter
  obtain ⟨C₀, hC₀, hmem₀⟩ := Set.mem_sUnion.1 hπcenter
  have hformula := orderAlong_transform_add_mult_of_exceptionalIndex_mem hGeom hT h π q hπ I' hI' hT'
    hnew hC'comp U hU a hmon hC₀ hmem₀
  have hv0 : orderAlong T.ideal C₀ = maxCandidateOrder T.ideal T.mult T.boundary :=
    ((mem_centerComponents_iff T.ideal T.mult T.boundary C₀).1 hC₀).2
  have hvU : orderAlong I' C' = maxCandidateOrder T.ideal T.mult T.boundary := by rw [hordmax, hv]
  rw [hvU, hv0] at hformula
  have hvlt : maxCandidateOrder T.ideal T.mult T.boundary < ⊤ := (maxCandidateOrder_spec hGeom hT h).2.2.2
  obtain ⟨N, hN⟩ := ENat.ne_top_iff_exists.1 (ne_of_lt hvlt)
  rw [← hN] at hformula
  have hnateq : N + T.mult
      = (∑ i ∈ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J', a i) + N := by
    exact_mod_cast hformula
  have hsumeq : (∑ i ∈ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J', a i)
      = T.mult := by omega
  have hmpos : 1 ≤ T.mult := hT.valid.one_le_mult
  have hcardpos :
      1 ≤ (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J').card := by
    rcases Finset.eq_empty_or_nonempty
        (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J') with he | hne
    · exfalso
      rw [he, Finset.sum_empty] at hsumeq
      omega
    · exact Finset.card_pos.2 hne
  have hdiv : ∀ j ∈ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J',
      π (isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint ∈ (T.boundary.get j).support := by
    intro j hj
    have hj' : strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary j ∈ J' :=
      (mem_preimageStrictTransformIndex_iff π (monomialCenter T.ideal T.mult T.boundary) T.boundary J' j).1 hj
    have hmem := (hmemiff
      (strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary j)).2 hj'
    rw [get_transformedBoundary_strictTransformIndex] at hmem
    obtain ⟨ε, hε01, hεiff, hfact⟩ :=
      exists_orderAt_comap_eq_strictTransform_add_exceptional hGeom hT h π q hT'.valid.smooth hπ j
        (isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint
    have h1 : (1 : ℕ∞) ≤ orderAt (Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
        (T.boundary.get j)) (isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint :=
      (one_le_orderAt_iff_mem_support _ _).2 hmem
    have h2 : (1 : ℕ∞) ≤ orderAt ((T.boundary.get j).comap π)
        (isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint := by
      rw [hfact]
      exact le_trans h1 le_self_add
    have h3 : (isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint ∈
        ((T.boundary.get j).comap π).support :=
      (one_le_orderAt_iff_mem_support _ _).1 h2
    exact (AlgebraicGeometry.Scheme.IdealSheafData.mem_support_comap ..).mp h3
  have hsupp : π (isIrreducible_of_mem_intersectionComponents hC'comp).genericPoint ∈
      (intersectionIdeal T.boundary
        (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J')).support :=
    mem_support_intersectionIdeal T.boundary
      (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J') _ hdiv
  obtain ⟨C₁, hxC₁, hcomp₁⟩ := exists_isIrreducibleComponentOf_mem
    (↑(intersectionIdeal T.boundary
      (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J')).support :
        Set ↥T.scheme) _ hsupp
  have hC₁ : C₁ ∈ intersectionComponents T.boundary
      (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J') :=
    (mem_intersectionComponents_iff _ _ _).2 hcomp₁
  have hord₁ : orderAlong T.ideal C₁
      = ((∑ i ∈ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J',
          a i : ℕ) : ℕ∞) :=
    orderAlong_eq_sum_of_monomial hGeom hT hC₁ hxC₁ U hU a hmon
  have hcand₁ : IsCandidateComponent T.ideal T.mult T.boundary
      (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J').card
      (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J') C₁ := by
    unfold IsCandidateComponent
    refine ⟨rfl, hC₁, ?_⟩
    rw [hord₁, hsumeq]
  have hex : ∃ r : ℕ, 1 ≤ r ∧ ∃ (J : Finset (Fin T.boundary.length)) (C : Set ↥T.scheme),
      IsCandidateComponent T.ideal T.mult T.boundary r J C :=
    ⟨_, hcardpos, _, _, hcand₁⟩
  have hle := (minIndexCard_spec T.ideal T.mult T.boundary hex).2.2 _ hcardpos _ _ hcand₁
  have hcardJ' : J'.card = minIndexCard I' T.mult
      (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) := by
    have hc := hcand
    unfold IsCandidateComponent at hc
    exact hc.1
  have hcard2 : (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J').card + 1
      = J'.card :=
    card_preimageStrictTransformIndex_add_one_of_mem π (monomialCenter T.ideal T.mult T.boundary) T.boundary J' hnew
  rw [hr] at hcardJ'
  omega

theorem maxOrderCandidatePairs_ncard_lt_of_blowup (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}} (hT : MonomialCenter.IsLocallyMonomialTriple T)
    (h : minIndexCard T.ideal T.mult T.boundary ≠ 0)
    {X' : Scheme.{u}} (π : X' ⟶ T.scheme) (q : X' ⟶ Spec (CommRingCat.of T.base))
    (hπ : Blowup.IsBlowupAlongIdealSheaf π (monomialCenter T.ideal T.mult T.boundary))
    (I' : X'.IdealSheafData)
    (hI' : (monomialCenter T.ideal T.mult T.boundary).comap π ^ T.mult * I' =
      T.ideal.comap π)
    (hT' : MonomialCenter.IsLocallyMonomialTriple (blowupTriple T π q I'))
    (_h' : minIndexCard I' T.mult
      (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) ≠ 0)
    (hr : minIndexCard I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
      = minIndexCard T.ideal T.mult T.boundary)
    (hv : maxCandidateOrder I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
      = maxCandidateOrder T.ideal T.mult T.boundary) :
    (maxOrderCandidatePairs I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)).ncard
      < (maxOrderCandidatePairs T.ideal T.mult T.boundary).ncard := by
  classical
  have : CharZero T.base := hT.valid.charZero
  have : AlgebraicGeometry.Smooth q := hT'.valid.smooth
  have hfinD : (maxOrderCandidatePairs T.ideal T.mult T.boundary).Finite :=
    finite_maxOrderCandidatePairs hGeom hT
  have hbest := (lexMaxIndices_spec hGeom hT h).1
  unfold IsMaxOrderIndexSet at hbest
  obtain ⟨C₀, hcand₀, hord₀⟩ := hbest
  have hC₀opt : C₀ ∈ centerComponents T.ideal T.mult T.boundary :=
    (mem_centerComponents_iff T.ideal T.mult T.boundary C₀).2 ⟨hcand₀, hord₀⟩
  have hp₀ : (lexMaxIndices T.ideal T.mult T.boundary, C₀)
      ∈ maxOrderCandidatePairs T.ideal T.mult T.boundary :=
    (mem_maxOrderCandidatePairs_iff T.ideal T.mult T.boundary _).2 ⟨hcand₀, hord₀⟩
  have hπ' : Blowup.IsBlowupAlongIdealSheaf π (componentUnionIdeal T.boundary (lexMaxIndices T.ideal T.mult T.boundary)
      (centerComponents T.ideal T.mult T.boundary)
      (isOpen_preimage_sUnion_centerComponents hGeom hT)) := by
    rw [← monomialCenter_eq_componentUnionIdeal hGeom hT h]
    exact hπ
  have htc := hGeom.transformed_components T hT.valid
    (lexMaxIndices T.ideal T.mult T.boundary)
    (centerComponents T.ideal T.mult T.boundary)
    (centerComponents_subset_intersectionComponents T.ideal T.mult T.boundary)
    (isOpen_preimage_sUnion_centerComponents hGeom hT) X' π hπ'
  rw [← monomialCenter_eq_componentUnionIdeal hGeom hT h] at htc
  have hkey : ∀ p ∈ maxOrderCandidatePairs I' T.mult
      (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary),
      ((preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary p.1,
          closure (⇑π '' p.2)) ∈ maxOrderCandidatePairs T.ideal T.mult T.boundary) ∧
        closure (⇑π '' p.2) ∉ centerComponents T.ideal T.mult T.boundary ∧
        exceptionalIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary ∉ p.1 ∧
        p.2 = closure ((⇑π ⁻¹' closure (⇑π '' p.2)) \
          (↑(Blowup.exceptionalIdeal π (monomialCenter T.ideal T.mult T.boundary)).support :
            Set ↥X')) := by
    intro p hp
    obtain ⟨hcand, hordmax⟩ := (mem_maxOrderCandidatePairs_iff I' T.mult
      (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) p).1 hp
    have hnew := exceptionalIndex_not_mem_of_orderAlong_eq_maxCandidateOrder hGeom hT h π q hπ I' hI' hT' hr hv
      hcand hordmax
    have hC'comp : p.2 ∈ intersectionComponents
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) p.1 := by
      have hc := hcand
      unfold IsCandidateComponent at hc
      tauto
    have hC'img : p.2 ∈ intersectionComponents
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
        ((preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary p.1).image
          (strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary)) := by
      rw [image_strictTransformIndex_preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary p.1
        hnew]
      exact hC'comp
    have hgen : IsGenericPoint (isIrreducible_of_mem_intersectionComponents hC'img).genericPoint p.2 :=
      isGenericPoint_genericPoint_of_mem_intersectionComponents hC'img
    obtain ⟨hoff, C, hC, hCnot, hC'eq, hlast⟩ :=
      htc (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary p.1) p.2 hC'img _ hgen
    have hCirr : IsIrreducible C := isIrreducible_of_mem_intersectionComponents hC
    have hCcl : IsClosed C := isClosed_intersectionComponents_of_mem hC
    have hgpC : IsGenericPoint hCirr.genericPoint C :=
      isGenericPoint_genericPoint_of_mem_intersectionComponents hC
    have hπgp : π (isIrreducible_of_mem_intersectionComponents hC'img).genericPoint = hCirr.genericPoint :=
      hlast _ hgpC
    have hclim : closure (⇑π '' p.2) = C := by
      rw [closure_image_genericPoint (f := ⇑π) π.continuous hgen, hπgp, hgpC]
    have hSirr : IsIrreducible (⇑π '' p.2) :=
      (isIrreducible_of_mem_intersectionComponents hC'img).image _ π.continuous.continuousOn
    have hcl2 : closure (⇑π '' p.2) = closure C := by
      rw [hclim, hCcl.closure_eq]
    have hordeq : orderAlong I' p.2 = orderAlong T.ideal C := by
      have h1 := orderAlong_transform_eq_of_genericPoint_not_mem_exceptional hGeom hT h π hπ I' hI' hC'img hoff
      rw [h1]
      exact orderAlong_eq_of_closure_eq T.ideal hSirr hCirr hcl2
    have hordC : orderAlong T.ideal C = maxCandidateOrder T.ideal T.mult T.boundary := by
      rw [← hordeq, hordmax, hv]
    refine ⟨?_, ?_, hnew, ?_⟩
    · refine (mem_maxOrderCandidatePairs_iff T.ideal T.mult T.boundary _).2 ⟨?_, ?_⟩
      · unfold IsCandidateComponent
        refine ⟨?_, ?_, ?_⟩
        · rw [card_preimageStrictTransformIndex_of_not_mem π (monomialCenter T.ideal T.mult T.boundary)
            T.boundary p.1 hnew]
          have hc := hcand
          unfold IsCandidateComponent at hc
          rw [hc.1]
          exact hr
        · rw [hclim]
          exact hC
        · rw [hclim, hordC]
          exact (maxCandidateOrder_spec hGeom hT h).2.2.1
      · rw [hclim, hordC]
    · rw [hclim]
      exact hCnot
    · rw [hclim]
      exact hC'eq
  have hinj : Set.InjOn
      (fun p : Finset (Fin (transformedBoundary π
          (monomialCenter T.ideal T.mult T.boundary) T.boundary).length) × Set ↥X' =>
        (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary p.1,
          closure (⇑π '' p.2)))
      (maxOrderCandidatePairs I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)) := by
    intro p hp p' hp' heq
    obtain ⟨-, -, hnew1, hrep1⟩ := hkey p hp
    obtain ⟨-, -, hnew2, hrep2⟩ := hkey p' hp'
    have hJ : preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary p.1
        = preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary p'.1 :=
      congrArg Prod.fst heq
    have hC : closure (⇑π '' p.2) = closure (⇑π '' p'.2) := congrArg Prod.snd heq
    have hfst : p.1 = p'.1 := by
      rw [← image_strictTransformIndex_preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary p.1
          hnew1,
        ← image_strictTransformIndex_preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary p'.1
          hnew2,
        hJ]
    have hsnd : p.2 = p'.2 := by
      rw [hrep1, hC]
      exact hrep2.symm
    exact Prod.ext hfst hsnd
  have himg : (fun p : Finset (Fin (transformedBoundary π
        (monomialCenter T.ideal T.mult T.boundary) T.boundary).length) × Set ↥X' =>
      (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary p.1,
        closure (⇑π '' p.2))) ''
      (maxOrderCandidatePairs I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))
      ⊆ maxOrderCandidatePairs T.ideal T.mult T.boundary := by
    rintro _ ⟨p, hp, rfl⟩
    exact (hkey p hp).1
  have hnotin : (lexMaxIndices T.ideal T.mult T.boundary, C₀) ∉
      (fun p : Finset (Fin (transformedBoundary π
          (monomialCenter T.ideal T.mult T.boundary) T.boundary).length) × Set ↥X' =>
        (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary p.1,
          closure (⇑π '' p.2))) ''
      (maxOrderCandidatePairs I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)) := by
    rintro ⟨p, hp, heq⟩
    have hsnd : closure (⇑π '' p.2) = C₀ := congrArg Prod.snd heq
    refine (hkey p hp).2.1 ?_
    rw [hsnd]
    exact hC₀opt
  have hss : (fun p : Finset (Fin (transformedBoundary π
        (monomialCenter T.ideal T.mult T.boundary) T.boundary).length) × Set ↥X' =>
      (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary p.1,
        closure (⇑π '' p.2))) ''
      (maxOrderCandidatePairs I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))
      ⊂ maxOrderCandidatePairs T.ideal T.mult T.boundary := by
    refine Set.ssubset_iff_subset_ne.2 ⟨himg, ?_⟩
    intro hEq
    apply hnotin
    rw [hEq]
    exact hp₀
  have hlt := Set.ncard_lt_ncard hss hfinD
  rwa [Set.InjOn.ncard_image hinj] at hlt

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.BlowupAtMonomialCenter =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.MonomialInvariantDecrease =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.MonomialInvariantDecrease", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.MonomialGeometryHypotheses\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.LocallyMonomial\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.BlowupAtMonomialCenter\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.LexOrderEncoding\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform\nimport Development.ResolutionOfSingularities.Foundations.Blowup.BlowupOpenCover\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.SetTheory.ZFC.PSet\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

noncomputable abbrev blowupTripleAtCenterIdeal (T : MarkedIdealWithBoundary.{u}) : MarkedIdealWithBoundary.{u} :=
  @MarkedIdealWithBoundary.mk T.base T.instField
    (Blowup.blowup (monomialCenter T.ideal T.mult T.boundary))
    (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary) ≫ T.structMap)
    (residualByPow (T.ideal.comap (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary)))
      ((monomialCenter T.ideal T.mult T.boundary).comap
        (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary))) T.mult)
    T.mult
    (transformedBoundary (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary))
      (monomialCenter T.ideal T.mult T.boundary) T.boundary)

private theorem foldr_mul_ofFn_eq_prod {Y : Scheme.{u}} :
    ∀ {n : ℕ} (F : Fin n → Y.IdealSheafData),
      List.foldr (· * ·) (⊤ : Y.IdealSheafData) (List.ofFn F) = ∏ i, F i := by
  intro n
  induction n with
  | zero =>
      intro F
      simp only [List.ofFn_zero, List.foldr_nil, Finset.univ_eq_empty, Finset.prod_empty]
      exact Scheme.IdealSheafData.one_eq_top.symm
  | succ n ih =>
      intro F
      rw [List.ofFn_succ, List.foldr_cons, ih, Fin.prod_univ_succ]

private theorem prod_pow_comap_transformedBoundary_eq {X X' : Scheme.{u}} (π : X' ⟶ X)
    (Z : X.IdealSheafData) (L : List X.IdealSheafData) (W : X'.Opens)
    (a : Fin L.length → ℕ) (d : ℕ) :
    (∏ i : Fin (transformedBoundary π Z L).length,
        (((transformedBoundary π Z L).get i).comap W.ι) ^
          (if hi : (i : ℕ) < L.length then a ⟨i, hi⟩ else d))
      = (∏ i : Fin L.length, ((Blowup.strictTransform π Z (L.get i)).comap W.ι) ^ a i)
          * ((Blowup.exceptionalIdeal π Z).comap W.ι) ^ d := by
  classical
  have hlen : (transformedBoundary π Z L).length = L.length + 1 := transformedBoundary_length π Z L
  have hg1 : ∀ j : Fin L.length,
      (transformedBoundary π Z L).get (Fin.cast hlen.symm (Fin.castSucc j))
        = Blowup.strictTransform π Z (L.get j) := by
    intro j
    simp [transformedBoundary, List.get_eq_getElem, j.isLt]
  have hg2 : (transformedBoundary π Z L).get (Fin.cast hlen.symm (Fin.last L.length))
      = Blowup.exceptionalIdeal π Z := by
    simp [transformedBoundary, List.get_eq_getElem]
  rw [Fintype.prod_equiv (finCongr hlen)
      (fun i : Fin (transformedBoundary π Z L).length =>
        (((transformedBoundary π Z L).get i).comap W.ι) ^
          (if hi : (i : ℕ) < L.length then a ⟨i, hi⟩ else d))
      (fun j : Fin (L.length + 1) =>
        (((transformedBoundary π Z L).get (Fin.cast hlen.symm j)).comap W.ι) ^
          (if hj : (j : ℕ) < L.length then a ⟨j, hj⟩ else d))
      (fun i => by simp)]
  rw [Fin.prod_univ_castSucc]
  congr 1
  · refine Finset.prod_congr rfl ?_
    intro j _
    rw [hg1 j]
    exact congrArg (fun t : ℕ => ((Blowup.strictTransform π Z (L.get j)).comap W.ι) ^ t) (dif_pos j.isLt)
  · rw [hg2, dite_eq_right (by simp : ¬ ((Fin.last L.length : Fin (L.length + 1)) : ℕ) < L.length)]

private theorem isMonomialNear_transformedBoundary_of_isBlowupAlongIdealSheaf (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}} (hT : MonomialCenter.IsLocallyMonomialTriple T)
    {X' : Scheme.{u}} (π : X' ⟶ T.scheme) (Z : T.scheme.IdealSheafData)
    (hblow : Blowup.IsBlowupAlongIdealSheaf π Z)
    (hsm : AlgebraicGeometry.Smooth (Z.subschemeι ≫ T.structMap))
    (hsnc : HasStrictNormalCrossingsWith T.structMap Z T.boundary)
    (hZco : (↑Z.support : Set ↥T.scheme) ⊆ orderAtLeastLocus T.ideal T.mult)
    (hZsupp : (↑Z.support : Set ↥T.scheme) = ⋃₀ centerComponents T.ideal T.mult T.boundary)
    (J : X'.IdealSheafData)
    (hJ : (Z.comap π) ^ T.mult * J = T.ideal.comap π)
    (x' : ↥X') (hx' : x' ∈ orderAtLeastLocus J T.mult) :
    MonomialCenter.IsMonomialNear (transformedBoundary π Z T.boundary) J x' := by
  classical
  have hmemcompl : ∀ y : ↥T.scheme, y ∈ (Z.support.compl : T.scheme.Opens) ↔ y ∉ Z.support :=
    fun y => Iff.rfl
  have hzc : π x' ∈ orderAtLeastLocus T.ideal T.mult := by
    by_cases hxe : x' ∈ (Z.comap π).support
    · exact hZco (by exact Scheme.IdealSheafData.mem_support_comap.1 hxe)
    · have h1 : (T.mult : ℕ∞) ≤ orderAt J x' := (mem_orderAtLeastLocus_iff _ _ _).1 hx'
      have h2 : orderAt J x' ≤ orderAt (T.ideal.comap π) x' := by
        have hmul := add_orderAt_le_orderAt_mul ((Z.comap π) ^ T.mult) J x'
        rw [hJ] at hmul
        exact le_trans le_add_self hmul
      have h3 : orderAt (T.ideal.comap π) x' = orderAt T.ideal (π x') := by
        refine hGeom.orderAt_comap_off_exceptional T hT.valid _ π Z hblow x' ?_ T.ideal
        rw [Blowup.exceptionalIdeal_eq_comap]
        exact hxe
      exact (mem_orderAtLeastLocus_iff _ _ _).2 (by rw [← h3]; exact le_trans h1 h2)
  obtain ⟨U, hzU, a, hmon⟩ := hT.monomialNear (π x') hzc
  have hbt : ∀ i : Fin T.boundary.length, ∃ (V : X'.Opens) (ε : ℕ),
      x' ∈ V ∧ (ε = 0 ∨ ε = 1) ∧
        (ε = 1 ↔ ∃ O : T.scheme.Opens, π x' ∈ O ∧
          (↑Z.support : Set ↥T.scheme) ∩ (↑O : Set ↥T.scheme) ⊆
            (↑(T.boundary.get i).support : Set ↥T.scheme)) ∧
        ((T.boundary.get i).comap π).comap V.ι =
          (Blowup.strictTransform π Z (T.boundary.get i)).comap V.ι *
            (Blowup.exceptionalIdeal π Z).comap V.ι ^ ε := by
    intro i
    exact hGeom.blowup_total_transform T hT.valid Z hsm hsnc
      _ π hblow (T.boundary.get i) (List.getElem_mem i.isLt) x'
  choose Vf ef hxV hef01 hefiff hefeq using hbt
  set e := ∑ i : Fin T.boundary.length, ef i * a i with hedef
  have hme : T.mult ≤ e := by
    by_cases hxe : x' ∈ (Z.comap π).support
    · have hzZ : π x' ∈ Z.support := Scheme.IdealSheafData.mem_support_comap.1 hxe
      obtain ⟨C, hC, hzC⟩ : ∃ C ∈ centerComponents T.ideal T.mult T.boundary, π x' ∈ C := by
        have hmem : π x' ∈ ⋃₀ centerComponents T.ideal T.mult T.boundary := by
          rw [← hZsupp]; exact hzZ
        exact hmem
      have hCc : C ∈ intersectionComponents T.boundary (lexMaxIndices T.ideal T.mult T.boundary) :=
        centerComponents_subset_intersectionComponents _ _ _ hC
      have hord : orderAlong T.ideal C
          = ((∑ j ∈ lexMaxIndices T.ideal T.mult T.boundary, a j : ℕ) : ℕ∞) :=
        orderAlong_eq_sum_of_monomial hGeom hT hCc hzC U hzU a hmon
      have hCmax : orderAlong T.ideal C = maxCandidateOrder T.ideal T.mult T.boundary :=
        ((mem_centerComponents_iff T.ideal T.mult T.boundary C).1 hC).2
      have hmax : (T.mult : ℕ∞) ≤ maxCandidateOrder T.ideal T.mult T.boundary := by
        have hne : minIndexCard T.ideal T.mult T.boundary ≠ 0 := by
          intro h0
          have hemp : orderAtLeastLocus T.ideal T.mult = (∅ : Set ↥T.scheme) :=
            orderAtLeastLocus_eq_empty_of_minIndexCard_eq_zero hGeom hT h0
          have : π x' ∈ (∅ : Set ↥T.scheme) := by rw [← hemp]; exact hzc
          exact this.elim
        exact (maxCandidateOrder_spec hGeom hT hne).2.2.1
      have hsum : T.mult ≤ ∑ j ∈ lexMaxIndices T.ideal T.mult T.boundary, a j := by
        have hcast : (T.mult : ℕ∞)
            ≤ ((∑ j ∈ lexMaxIndices T.ideal T.mult T.boundary, a j : ℕ) : ℕ∞) := by
          rw [← hord, hCmax]; exact hmax
        exact_mod_cast hcast
      have hef1 : ∀ j ∈ lexMaxIndices T.ideal T.mult T.boundary, ef j = 1 := by
        intro j hj
        refine (hefiff j).2 ⟨⊤, trivial, ?_⟩
        intro y hy
        have hy1 : y ∈ (↑Z.support : Set ↥T.scheme) := hy.1
        rw [hZsupp] at hy1
        obtain ⟨C', hC', hyC'⟩ := hy1
        exact (subset_support_iff_mem_of_mem_intersectionComponents hGeom hT
          (centerComponents_subset_intersectionComponents _ _ _ hC') j).2 hj hyC'
      calc T.mult ≤ ∑ j ∈ lexMaxIndices T.ideal T.mult T.boundary, a j := hsum
        _ = ∑ j ∈ lexMaxIndices T.ideal T.mult T.boundary, ef j * a j := by
            refine Finset.sum_congr rfl ?_
            intro j hj
            rw [hef1 j hj, one_mul]
        _ ≤ e := Finset.sum_le_sum_of_subset (Finset.subset_univ _)
    · have hzZ : π x' ∉ Z.support := fun hc => hxe (Scheme.IdealSheafData.mem_support_comap.2 hc)
      have hef1 : ∀ i : Fin T.boundary.length, ef i = 1 := by
        intro i
        refine (hefiff i).2 ⟨Z.support.compl, (hmemcompl (π x')).2 hzZ, ?_⟩
        intro y hy
        have hy2 : y ∉ Z.support := (hmemcompl y).1 hy.2
        exact absurd hy.1 hy2
      have hordz : orderAt T.ideal (π x')
          = ((∑ j ∈ supportIndices T.boundary (π x'), a j : ℕ) : ℕ∞) :=
        orderAt_eq_sum_supportIndices hGeom hT (π x') U hzU a hmon
      have h1 : (T.mult : ℕ∞) ≤ orderAt T.ideal (π x') := (mem_orderAtLeastLocus_iff _ _ _).1 hzc
      have hsum : T.mult ≤ ∑ j ∈ supportIndices T.boundary (π x'), a j := by
        have hcast : (T.mult : ℕ∞)
            ≤ ((∑ j ∈ supportIndices T.boundary (π x'), a j : ℕ) : ℕ∞) := by
          rw [← hordz]; exact h1
        exact_mod_cast hcast
      calc T.mult ≤ ∑ j ∈ supportIndices T.boundary (π x'), a j := hsum
        _ ≤ ∑ j : Fin T.boundary.length, a j :=
            Finset.sum_le_sum_of_subset (Finset.subset_univ _)
        _ = e := by
            refine Finset.sum_congr rfl ?_
            intro j _
            rw [hef1 j, one_mul]
  set W : X'.Opens :=
    ⟨(⋂ i : Fin T.boundary.length, ((Vf i : X'.Opens) : Set ↥X'))
        ∩ ((π ⁻¹ᵁ U : X'.Opens) : Set ↥X'),
      (isOpen_iInter_of_finite fun i => (Vf i).isOpen).inter (π ⁻¹ᵁ U).isOpen⟩ with hWdef
  have hxW : x' ∈ W := ⟨Set.mem_iInter.2 (fun i => hxV i), hzU⟩
  have hWU : W ≤ π ⁻¹ᵁ U := fun y hy => hy.2
  have hbi : ∀ i : Fin T.boundary.length,
      ((T.boundary.get i).comap π).comap W.ι =
        (Blowup.strictTransform π Z (T.boundary.get i)).comap W.ι
          * ((Z.comap π).comap W.ι) ^ ef i := by
    intro i
    have hle : W ≤ Vf i := fun y hy => Set.mem_iInter.1 hy.1 i
    have hcongr := congrArg (fun A => A.comap (X'.homOfLE hle)) (hefeq i)
    simpa [Scheme.IdealSheafData.comap_mul, Scheme.IdealSheafData.comap_pow,
      ← restrictIdeal_eq_comap_homOfLE_restrictIdeal, Blowup.exceptionalIdeal_eq_comap] using hcongr
  have hcomp : ((X'.homOfLE hWU) ≫ (π ∣_ U)) ≫ U.ι = W.ι ≫ π := by
    rw [Category.assoc, morphismRestrict_ι, ← Category.assoc, Scheme.homOfLE_ι]
  have hg : ∀ A : T.scheme.IdealSheafData,
      (A.comap U.ι).comap ((X'.homOfLE hWU) ≫ (π ∣_ U)) = (A.comap π).comap W.ι := by
    intro A
    simp only [← Scheme.IdealSheafData.comap_comp]
    rw [hcomp]
  rw [foldr_mul_ofFn_eq_prod] at hmon
  have hmonW : (T.ideal.comap π).comap W.ι =
      ∏ i : Fin T.boundary.length, (((T.boundary.get i).comap π).comap W.ι) ^ a i := by
    calc (T.ideal.comap π).comap W.ι
        = (T.ideal.comap U.ι).comap ((X'.homOfLE hWU) ≫ (π ∣_ U)) := (hg _).symm
      _ = (∏ i : Fin T.boundary.length, ((T.boundary.get i).comap U.ι) ^ a i).comap
            ((X'.homOfLE hWU) ≫ (π ∣_ U)) := by rw [hmon]
      _ = ∏ i : Fin T.boundary.length,
            (((T.boundary.get i).comap U.ι) ^ a i).comap
              ((X'.homOfLE hWU) ≫ (π ∣_ U)) := by
          rw [← List.prod_ofFn, Scheme.IdealSheafData.comap_listProd,
            List.map_ofFn, List.prod_ofFn]
          rfl
      _ = ∏ i : Fin T.boundary.length, (((T.boundary.get i).comap π).comap W.ι) ^ a i := by
            refine Finset.prod_congr rfl ?_
            intro i _
            rw [Scheme.IdealSheafData.comap_pow, hg]
  have hprod : (T.ideal.comap π).comap W.ι =
      (∏ i : Fin T.boundary.length,
          ((Blowup.strictTransform π Z (T.boundary.get i)).comap W.ι) ^ a i)
        * ((Z.comap π).comap W.ι) ^ e := by
    rw [hmonW]
    have hterm : ∀ i : Fin T.boundary.length,
        (((T.boundary.get i).comap π).comap W.ι) ^ a i
          = ((Blowup.strictTransform π Z (T.boundary.get i)).comap W.ι) ^ a i
              * (((Z.comap π).comap W.ι) ^ (ef i * a i)) := by
      intro i
      rw [hbi i, mul_pow, ← pow_mul]
    rw [Finset.prod_congr rfl (fun i _ => hterm i), Finset.prod_mul_distrib,
      Finset.prod_pow_eq_pow_sum]
  have hcart : Blowup.IsLocallyGeneratedByNonZeroDivisor ((Z.comap π).comap W.ι) := by
    have h0 : Blowup.IsLocallyGeneratedByNonZeroDivisor (Z.comap π) := by
      have hc := isLocallyGeneratedByNonZeroDivisor_exceptionalIdeal hblow
      rwa [Blowup.exceptionalIdeal_eq_comap] at hc
    exact h0.comap_of_isOpenImmersion W.ι
  have hcomapJ : ((Z.comap π).comap W.ι) ^ T.mult * J.comap W.ι
      = (T.ideal.comap π).comap W.ι := by
    rw [← Scheme.IdealSheafData.comap_pow, ← Scheme.IdealSheafData.comap_mul, hJ]
  have hrw : ((Z.comap π).comap W.ι) ^ T.mult *
      ((∏ i : Fin T.boundary.length,
          ((Blowup.strictTransform π Z (T.boundary.get i)).comap W.ι) ^ a i)
        * ((Z.comap π).comap W.ι) ^ (e - T.mult))
      = (∏ i : Fin T.boundary.length,
          ((Blowup.strictTransform π Z (T.boundary.get i)).comap W.ι) ^ a i)
        * ((Z.comap π).comap W.ι) ^ e := by
    rw [← mul_assoc, mul_comm (((Z.comap π).comap W.ι) ^ T.mult), mul_assoc, ← pow_add,
      Nat.add_sub_cancel' hme]
  have hfinal : J.comap W.ι =
      (∏ i : Fin T.boundary.length,
          ((Blowup.strictTransform π Z (T.boundary.get i)).comap W.ι) ^ a i)
        * ((Z.comap π).comap W.ι) ^ (e - T.mult) := by
    refine eq_of_isLocallyGeneratedByNonZeroDivisor_pow_mul_eq_mul hcart T.mult ?_
    rw [hcomapJ, hrw, hprod]
  refine ⟨W, hxW, fun i => if hi : (i : ℕ) < T.boundary.length then a ⟨i, hi⟩ else e - T.mult, ?_⟩
  rw [foldr_mul_ofFn_eq_prod,
    prod_pow_comap_transformedBoundary_eq π Z T.boundary W a (e - T.mult), Blowup.exceptionalIdeal_eq_comap]
  exact hfinal

theorem isLocallyMonomialTriple_blowupTripleAtCenterIdeal (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}} (hT : MonomialCenter.IsLocallyMonomialTriple T)
    (h : minIndexCard T.ideal T.mult T.boundary ≠ 0) :
    MonomialCenter.IsLocallyMonomialTriple (blowupTripleAtCenterIdeal T) := by
  refine ⟨?_, ?_⟩
  · have key := hGeom.level_valid T hT.valid
      (MarkedBlowupSequenceData.ofSingleBlowup T.structMap T.ideal T.mult T.boundary
        (monomialCenter T.ideal T.mult T.boundary)
        (smooth_monomialCenter hGeom hT h) (hasStrictNormalCrossingsWith_monomialCenter hGeom hT h)
        (support_monomialCenter_subset_orderAtLeastLocus hGeom hT h)
        (exists_controlledTransform_monomialCenter hGeom hT h)).toMarkedSequenceOfBlowups 1
      (by rw [MarkedBlowupSequenceData.toMarkedSequence_length]; exact Nat.le_refl 1)
    exact key
  · intro x' hx'
    refine isMonomialNear_transformedBoundary_of_isBlowupAlongIdealSheaf hGeom hT
      (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary))
      (monomialCenter T.ideal T.mult T.boundary)
      (Blowup.blowup.isBlowupAlongIdealSheaf_proj _)
      (smooth_monomialCenter hGeom hT h)
      (hasStrictNormalCrossingsWith_monomialCenter hGeom hT h)
      (support_monomialCenter_subset_orderAtLeastLocus hGeom hT h)
      (by
        rw [support_monomialCenter hGeom hT h, monomialCenterSet_eq_sUnion_centerComponents])
      (residualByPow (T.ideal.comap (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary)))
        ((monomialCenter T.ideal T.mult T.boundary).comap
          (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary))) T.mult)
      (pow_mul_residualByPow _ _ _ (exists_controlledTransform_monomialCenter hGeom hT h))
      x' hx'

private theorem krullDimSucc_schemeAt_one_le_dim (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}} (hT : MonomialCenter.IsLocallyMonomialTriple T)
    (d : MarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary)
    (hlen : 1 ≤ d.length) :
    krullDimSucc (d.obj 1) ≤ T.krullDimSucc := by
  have key := hGeom.level_schemeDim_le T hT.valid d.toMarkedSequenceOfBlowups 1
    (by rw [MarkedBlowupSequenceData.toMarkedSequence_length]; exact hlen)
  rwa [MarkedBlowupSequenceData.toMarkedSequence_schemeAt] at key

theorem krullDimSucc_blowupTripleAtCenterIdeal_le (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}} (hT : MonomialCenter.IsLocallyMonomialTriple T)
    (h : minIndexCard T.ideal T.mult T.boundary ≠ 0) :
    krullDimSucc (blowupTripleAtCenterIdeal T).scheme ≤ T.krullDimSucc :=
  krullDimSucc_schemeAt_one_le_dim hGeom hT
    (MarkedBlowupSequenceData.ofSingleBlowup T.structMap T.ideal T.mult T.boundary
      (monomialCenter T.ideal T.mult T.boundary)
      (smooth_monomialCenter hGeom hT h) (hasStrictNormalCrossingsWith_monomialCenter hGeom hT h)
      (support_monomialCenter_subset_orderAtLeastLocus hGeom hT h)
      (exists_controlledTransform_monomialCenter hGeom hT h))
    (Nat.le_refl 1)

private theorem orderAt_controlledTransform_eq_of_notMem_support (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}}
    (hT : MonomialCenter.IsLocallyMonomialTriple T) {X' : Scheme.{u}} (π : X' ⟶ T.scheme)
    (Z : T.scheme.IdealSheafData) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z) (I' : X'.IdealSheafData)
    (hI' : (Z.comap π) ^ T.mult * I' = T.ideal.comap π) (x' : ↥X')
    (hx' : x' ∉ (Z.comap π).support) :
    orderAt I' x' = orderAt T.ideal (π x') := by
  have h1 : stalkIdeal (Z.comap π) x' = 1 := by
    rw [Ideal.one_eq_top]
    by_contra hc
    exact hx' ((mem_support_iff_stalkIdeal_ne_top _ _).2 hc)
  have h2 : stalkIdeal (T.ideal.comap π) x' = stalkIdeal I' x' := by
    rw [← hI', stalkIdeal_mul, stalkIdeal_pow, h1, one_pow, one_mul]
  have h3 : orderAt I' x' = orderAt (T.ideal.comap π) x' :=
    orderAt_eq_of_stalkIdeal_eq h2.symm
  rw [h3]
  exact hGeom.orderAt_comap_off_exceptional T hT.valid _ π Z hπ x'
    (by rw [Blowup.exceptionalIdeal_eq_comap]; exact hx') T.ideal

private theorem get_transformedBoundary_strictTransformIndex_eq_strictTransform {X' X : Scheme.{u}} (π : X' ⟶ X)
    (Z : X.IdealSheafData) (L : List X.IdealSheafData) (j : Fin L.length) :
    (transformedBoundary π Z L).get (strictTransformIndex π Z L j) = Blowup.strictTransform π Z (L.get j) := by
  simp [transformedBoundary, List.get_eq_getElem, strictTransformIndex_val, j.isLt]

private theorem get_transformedBoundary_exceptionalIndex_eq_comap {X' X : Scheme.{u}} (π : X' ⟶ X)
    (Z : X.IdealSheafData) (L : List X.IdealSheafData) :
    (transformedBoundary π Z L).get (exceptionalIndex π Z L) = Z.comap π := by
  have hlen : (transformedBoundary π Z L).length = L.length + 1 :=
    transformedBoundary_length π Z L
  have hg2 : (transformedBoundary π Z L).get (Fin.cast hlen.symm (Fin.last L.length))
      = Blowup.exceptionalIdeal π Z := by
    simp [transformedBoundary, List.get_eq_getElem]
  have hfin : exceptionalIndex π Z L = Fin.cast hlen.symm (Fin.last L.length) := by
    apply Fin.val_injective
    simp [exceptionalIndex_val]
  rw [hfin, hg2, Blowup.exceptionalIdeal_eq_comap]

private theorem strictMono_strictTransformIndex {X' X : Scheme.{u}} (π : X' ⟶ X) (Z : X.IdealSheafData)
    (L : List X.IdealSheafData) : StrictMono (strictTransformIndex π Z L) := by
  intro i j hij
  rw [Fin.lt_def, strictTransformIndex_val, strictTransformIndex_val]
  exact hij

private theorem sortedIndices_image_strictTransformIndex {X' X : Scheme.{u}} (π : X' ⟶ X)
    (Z : X.IdealSheafData) (L : List X.IdealSheafData) (S : Finset (Fin L.length)) :
    MonomialCenter.sortedIndices (Finset.image (strictTransformIndex π Z L) S)
      = MonomialCenter.sortedIndices S := by
  rw [MonomialCenter.sortedIndices_image_of_strictMono (strictTransformIndex π Z L)
    (strictMono_strictTransformIndex π Z L) S]
  simp only [strictTransformIndex_val]
  rfl

private theorem image_strictTransformIndex_preimageStrictTransformIndex_eq_erase {X' X : Scheme.{u}} (π : X' ⟶ X) (Z : X.IdealSheafData)
    (L : List X.IdealSheafData)
    (J' : Finset (Fin (transformedBoundary π Z L).length)) :
    Finset.image (strictTransformIndex π Z L) (preimageStrictTransformIndex π Z L J') = J'.erase (exceptionalIndex π Z L) := by
  classical
  have hlen : (transformedBoundary π Z L).length = L.length + 1 :=
    transformedBoundary_length π Z L
  ext i
  constructor
  · intro hi
    obtain ⟨j, hj, rfl⟩ := Finset.mem_image.1 hi
    refine Finset.mem_erase.2 ⟨?_, (mem_preimageStrictTransformIndex_iff π Z L J' j).1 hj⟩
    intro hc
    have h1 : ((strictTransformIndex π Z L j : Fin (transformedBoundary π Z L).length) : ℕ) = L.length := by
      rw [hc, exceptionalIndex_val]
    rw [strictTransformIndex_val] at h1
    exact absurd h1 (Nat.ne_of_lt j.isLt)
  · intro hi
    obtain ⟨hne, hmem⟩ := Finset.mem_erase.1 hi
    have h1 : (i : ℕ) < (transformedBoundary π Z L).length := i.isLt
    have h2 : (i : ℕ) ≠ L.length := by
      intro hc
      exact hne (Fin.val_injective (by rw [hc, exceptionalIndex_val]))
    have hlt : (i : ℕ) < L.length := by omega
    have hid : strictTransformIndex π Z L ⟨(i : ℕ), hlt⟩ = i := Fin.val_injective (by rw [strictTransformIndex_val])
    refine Finset.mem_image.2 ⟨⟨(i : ℕ), hlt⟩, ?_, hid⟩
    exact (mem_preimageStrictTransformIndex_iff π Z L J' ⟨(i : ℕ), hlt⟩).2 (by rw [hid]; exact hmem)

private theorem sum_lt_mult_of_card_lt_minIndexCard (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}}
    (hT : MonomialCenter.IsLocallyMonomialTriple T) {x : ↥T.scheme} {U : T.scheme.Opens}
    (hxU : x ∈ U) (a : Fin T.boundary.length → ℕ)
    (hmon : T.ideal.comap U.ι =
      (List.ofFn fun i : Fin T.boundary.length =>
        (T.boundary.get i).comap U.ι ^ a i).foldr (· * ·) ⊤)
    (S : Finset (Fin T.boundary.length)) (hS : ∀ j ∈ S, x ∈ (T.boundary.get j).support)
    (hcard : S.card < minIndexCard T.ideal T.mult T.boundary) :
    ∑ j ∈ S, a j < T.mult := by
  classical
  by_contra hc
  push Not at hc
  have hxsupp : x ∈ (↑(intersectionIdeal T.boundary S).support : Set ↥T.scheme) :=
    mem_support_intersectionIdeal T.boundary S x hS
  obtain ⟨C, hxC, hC⟩ := exists_mem_intersectionComponents_of_mem_support T.boundary S x hxsupp
  have hord : orderAlong T.ideal C = ((∑ j ∈ S, a j : ℕ) : ℕ∞) :=
    orderAlong_eq_sum_of_monomial hGeom hT hC hxC U hxU a hmon
  have hcand : IsCandidateComponent T.ideal T.mult T.boundary S.card S C :=
    ⟨rfl, hC, by rw [hord]; exact_mod_cast hc⟩
  have hone : 1 ≤ S.card := by
    rcases Nat.eq_zero_or_pos S.card with h0 | hp
    · exfalso
      have hS0 : S = ∅ := Finset.card_eq_zero.1 h0
      rw [hS0, Finset.sum_empty] at hc
      have hm1 : 1 ≤ T.mult := hT.valid.one_le_mult
      omega
    · exact hp
  have hle := (minIndexCard_spec T.ideal T.mult T.boundary ⟨S.card, hone, S, C, hcand⟩).2.2
    S.card hone S C hcand
  omega

private theorem exists_mem_intersectionComponents_orderAlong_eq (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}}
    (hT : MonomialCenter.IsLocallyMonomialTriple T)
    {X' : Scheme.{u}} (π : X' ⟶ T.scheme) (Z : T.scheme.IdealSheafData)
    (hZ : Z = componentUnionIdeal T.boundary (lexMaxIndices T.ideal T.mult T.boundary)
      (centerComponents T.ideal T.mult T.boundary)
      (isOpen_preimage_sUnion_centerComponents hGeom hT))
    (hπ : Blowup.IsBlowupAlongIdealSheaf π Z) (I' : X'.IdealSheafData)
    (hI' : (Z.comap π) ^ T.mult * I' = T.ideal.comap π)
    (J' : Finset (Fin (transformedBoundary π Z T.boundary).length))
    (hnew : exceptionalIndex π Z T.boundary ∉ J') {C' : Set ↥X'}
    (hC' : C' ∈ intersectionComponents (transformedBoundary π Z T.boundary) J') :
    ∃ C : Set ↥T.scheme,
      C ∈ intersectionComponents T.boundary (preimageStrictTransformIndex π Z T.boundary J') ∧
        C ∉ centerComponents T.ideal T.mult T.boundary ∧
        orderAlong I' C' = orderAlong T.ideal C := by
  classical
  have himg := (image_strictTransformIndex_preimageStrictTransformIndex_eq_erase π Z T.boundary J').trans
    (Finset.erase_eq_of_notMem hnew)
  subst hZ
  obtain ⟨hoff, C, hC, hCnot, -, hgen⟩ :=
    hGeom.transformed_components T hT.valid (lexMaxIndices T.ideal T.mult T.boundary)
      (centerComponents T.ideal T.mult T.boundary)
      (centerComponents_subset_intersectionComponents _ _ _)
      (isOpen_preimage_sUnion_centerComponents hGeom hT) X' π hπ
      (preimageStrictTransformIndex π _ T.boundary J') C' (by rw [himg]; exact hC')
      (isIrreducible_of_mem_intersectionComponents hC').genericPoint
      (isGenericPoint_genericPoint_of_mem_intersectionComponents hC')
  refine ⟨C, hC, hCnot, ?_⟩
  have hπgen : π (isIrreducible_of_mem_intersectionComponents hC').genericPoint
      = (isIrreducible_of_mem_intersectionComponents hC).genericPoint :=
    hgen _ (isGenericPoint_genericPoint_of_mem_intersectionComponents hC)
  rw [orderAlong_eq_orderAt_of_mem_intersectionComponents I' hC', orderAlong_eq_orderAt_of_mem_intersectionComponents T.ideal hC,
    ← hπgen]
  refine orderAt_controlledTransform_eq_of_notMem_support hGeom hT π _ hπ I' hI' _ ?_
  rw [Blowup.exceptionalIdeal_eq_comap] at hoff
  exact hoff

private theorem minIndexCard_le_card_add_one_of_exceptionalIndex_mem (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}}
    (hT : MonomialCenter.IsLocallyMonomialTriple T) (h : minIndexCard T.ideal T.mult T.boundary ≠ 0)
    {X' : Scheme.{u}} (π : X' ⟶ T.scheme) (q : X' ⟶ Spec (CommRingCat.of T.base))
    (hπ : Blowup.IsBlowupAlongIdealSheaf π (monomialCenter T.ideal T.mult T.boundary))
    (I' : X'.IdealSheafData)
    (hI' : ((monomialCenter T.ideal T.mult T.boundary).comap π) ^ T.mult * I' = T.ideal.comap π)
    (hT' : MonomialCenter.IsLocallyMonomialTriple (blowupTriple T π q I'))
    (J' : Finset (Fin (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
      T.boundary).length))
    (hnew : exceptionalIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary ∈ J')
    {C' : Set ↥X'}
    (hC' : C' ∈ intersectionComponents (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
      T.boundary) J')
    (hord : (T.mult : ℕ∞) ≤ orderAlong I' C') :
    minIndexCard T.ideal T.mult T.boundary
        ≤ (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J').card + 1 ∧
      ((preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J').card
          < minIndexCard T.ideal T.mult T.boundary →
        orderAlong I' C' < maxCandidateOrder T.ideal T.mult T.boundary) := by
  classical
  have hgenericPtC : IsGenericPoint (isIrreducible_of_mem_intersectionComponents hC').genericPoint C' :=
    isGenericPoint_genericPoint_of_mem_intersectionComponents hC'
  have hξmem : (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈ C' := by
    have h0 : (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈
        closure ({(isIrreducible_of_mem_intersectionComponents hC').genericPoint} : Set ↥X') :=
      subset_closure rfl
    rwa [hgenericPtC] at h0
  have hdiv : ∀ i : Fin (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
      T.boundary).length, i ∈ J' →
      C' ⊆ (↑((transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
        T.boundary).get i).support : Set ↥X') := by
    intro i hi
    exact (hGeom.components_subset_divisor_iff (blowupTriple T π q I') hT'.valid J' C' hC' i).2 hi
  have hξE : (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈
      ((monomialCenter T.ideal T.mult T.boundary).comap π).support := by
    have h1 := hdiv _ hnew
    rw [get_transformedBoundary_exceptionalIndex_eq_comap] at h1
    exact h1 hξmem
  have hπξ : π (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈
      (monomialCenter T.ideal T.mult T.boundary).support :=
    Scheme.IdealSheafData.mem_support_comap.1 hξE
  have hπξset : π (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈
      (↑(monomialCenter T.ideal T.mult T.boundary).support : Set ↥T.scheme) := hπξ
  rw [support_monomialCenter hGeom hT h, monomialCenterSet_eq_sUnion_centerComponents] at hπξset
  obtain ⟨C₀, hC₀opt, hmem₀⟩ := hπξset
  have hcoS : π (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈ orderAtLeastLocus T.ideal T.mult :=
    support_monomialCenter_subset_orderAtLeastLocus hGeom hT h hπξ
  obtain ⟨U, hU, a, hmon⟩ := hT.monomialNear _ hcoS
  have hkey := orderAlong_transform_add_mult_of_exceptionalIndex_mem hGeom hT h π q hπ I' hI' hT' hnew hC'
    U hU a hmon hC₀opt hmem₀
  have hC₀comp : C₀ ∈ intersectionComponents T.boundary (lexMaxIndices T.ideal T.mult T.boundary) :=
    centerComponents_subset_intersectionComponents _ _ _ hC₀opt
  have hordC₀ : orderAlong T.ideal C₀
      = ((∑ j ∈ lexMaxIndices T.ideal T.mult T.boundary, a j : ℕ) : ℕ∞) :=
    orderAlong_eq_sum_of_monomial hGeom hT hC₀comp hmem₀ U hU a hmon
  have hmaxC₀ : orderAlong T.ideal C₀ = maxCandidateOrder T.ideal T.mult T.boundary :=
    ((mem_centerComponents_iff _ _ _ C₀).1 hC₀opt).2
  rw [hordC₀] at hkey
  obtain ⟨S1, hS1⟩ : ∃ s : ℕ, s = ∑ i ∈ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary)
      T.boundary J', a i := ⟨_, rfl⟩
  obtain ⟨S2, hS2⟩ : ∃ s : ℕ, s = ∑ j ∈ lexMaxIndices T.ideal T.mult T.boundary, a j :=
    ⟨_, rfl⟩
  rw [← hS1, ← hS2] at hkey
  have hltop : orderAlong I' C' < ⊤ := by
    refine lt_of_le_of_lt ?_ (lt_of_le_of_ne (le_top : ((S1 : ℕ∞) + (S2 : ℕ∞)) ≤ ⊤) ?_)
    · rw [← hkey]
      exact le_self_add
    · intro hc
      have hcc : ((S1 + S2 : ℕ) : ℕ∞) = ⊤ := by rw [Nat.cast_add]; exact hc
      simp at hcc
  obtain ⟨n, hn⟩ := ENat.ne_top_iff_exists.1 (ne_of_lt hltop)
  have hnm : n + T.mult = S1 + S2 := by
    have hc2 : ((n + T.mult : ℕ) : ℕ∞) = ((S1 + S2 : ℕ) : ℕ∞) := by
      rw [Nat.cast_add, Nat.cast_add, hn]
      exact hkey
    exact_mod_cast hc2
  have hmn : T.mult ≤ n := by
    have hc3 : ((T.mult : ℕ) : ℕ∞) ≤ ((n : ℕ) : ℕ∞) := by rw [hn]; exact hord
    exact_mod_cast hc3
  by_cases hk : (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J').card
      < minIndexCard T.ideal T.mult T.boundary
  · have holdsub : ∀ j ∈ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J',
        π (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈ (T.boundary.get j).support := by
      intro j hj
      have h1 := hdiv _ ((mem_preimageStrictTransformIndex_iff _ _ _ _ j).1 hj)
      rw [get_transformedBoundary_strictTransformIndex_eq_strictTransform] at h1
      have h2 : (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈
          (Blowup.strictTransform π (monomialCenter T.ideal T.mult T.boundary)
            (T.boundary.get j)).support := h1 hξmem
      have h3 : (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈
          ((T.boundary.get j).comap π).support :=
        Scheme.IdealSheafData.support_antitone (comap_le_strictTransform π _ _) h2
      exact Scheme.IdealSheafData.mem_support_comap.1 h3
    have hp : S1 < T.mult := by
      rw [hS1]
      exact sum_lt_mult_of_card_lt_minIndexCard hGeom hT hU a hmon _ holdsub hk
    have hcardch : (lexMaxIndices T.ideal T.mult T.boundary).card
        = minIndexCard T.ideal T.mult T.boundary := card_lexMaxIndices hGeom hT h
    have hchsub : ∀ j ∈ lexMaxIndices T.ideal T.mult T.boundary,
        π (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈ (T.boundary.get j).support := by
      intro j hj
      exact (subset_support_iff_mem_of_mem_intersectionComponents hGeom hT hC₀comp j).2 hj hmem₀
    obtain ⟨j₀, hj₀ch, hj₀old⟩ : ∃ j₀ ∈ lexMaxIndices T.ideal T.mult T.boundary,
        j₀ ∉ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J' := by
      by_contra hc
      push Not at hc
      have hsub : lexMaxIndices T.ideal T.mult T.boundary
          ⊆ preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J' :=
        fun j hj => hc j hj
      have hcc := Finset.card_le_card hsub
      omega
    have herase : (∑ j ∈ (lexMaxIndices T.ideal T.mult T.boundary).erase j₀, a j) < T.mult := by
      refine sum_lt_mult_of_card_lt_minIndexCard hGeom hT hU a hmon _
        (fun j hj => hchsub j (Finset.mem_of_mem_erase hj)) ?_
      have hce := Finset.card_erase_of_mem hj₀ch
      omega
    have hsplit : (∑ j ∈ (lexMaxIndices T.ideal T.mult T.boundary).erase j₀, a j) + a j₀ = S2 := by
      rw [hS2]
      exact Finset.sum_erase_add _ _ hj₀ch
    have hSge : T.mult ≤ ∑ j ∈ insert j₀ (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary)
        T.boundary J'), a j := by
      rw [Finset.sum_insert hj₀old, ← hS1]
      omega
    have hmemsupp : π (isIrreducible_of_mem_intersectionComponents hC').genericPoint ∈
        (↑(intersectionIdeal T.boundary (insert j₀ (preimageStrictTransformIndex π
          (monomialCenter T.ideal T.mult T.boundary) T.boundary J'))).support : Set ↥T.scheme) := by
      refine mem_support_intersectionIdeal T.boundary _ _ ?_
      intro j hj
      rcases Finset.mem_insert.1 hj with rfl | hj2
      · exact hchsub _ hj₀ch
      · exact holdsub _ hj2
    obtain ⟨C, hxC, hCcomp⟩ :=
      exists_mem_intersectionComponents_of_mem_support T.boundary _ _ hmemsupp
    have hordC : orderAlong T.ideal C
        = ((∑ j ∈ insert j₀ (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary)
            T.boundary J'), a j : ℕ) : ℕ∞) :=
      orderAlong_eq_sum_of_monomial hGeom hT hCcomp hxC U hU a hmon
    have hcand : IsCandidateComponent T.ideal T.mult T.boundary
        (insert j₀ (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J')).card
        (insert j₀ (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J')) C :=
      ⟨rfl, hCcomp, by rw [hordC]; exact_mod_cast hSge⟩
    have hone : 1 ≤ (insert j₀ (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary)
        T.boundary J')).card := Finset.card_pos.2 ⟨j₀, Finset.mem_insert_self _ _⟩
    have hminle := (minIndexCard_spec T.ideal T.mult T.boundary ⟨_, hone, _, _, hcand⟩).2.2
      _ hone _ _ hcand
    have hcardS : (insert j₀ (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary)
        T.boundary J')).card
        ≤ (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J').card + 1 :=
      Finset.card_insert_le _ _
    refine ⟨by omega, fun _ => ?_⟩
    rw [← hn, ← hmaxC₀, hordC₀, ← hS2]
    have hlt : n < S2 := by omega
    exact_mod_cast hlt
  · exact ⟨by omega, fun hc => absurd hc hk⟩

private theorem minIndexCard_lt_or_maxCandidateOrder_lt_of_isBlowupAlongIdealSheaf (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}}
    (hT : MonomialCenter.IsLocallyMonomialTriple T) (h : minIndexCard T.ideal T.mult T.boundary ≠ 0)
    {X' : Scheme.{u}} (π : X' ⟶ T.scheme) (q : X' ⟶ Spec (CommRingCat.of T.base))
    (hZp : monomialCenter T.ideal T.mult T.boundary =
      componentUnionIdeal T.boundary (lexMaxIndices T.ideal T.mult T.boundary)
        (centerComponents T.ideal T.mult T.boundary)
        (isOpen_preimage_sUnion_centerComponents hGeom hT))
    (hπ : Blowup.IsBlowupAlongIdealSheaf π (monomialCenter T.ideal T.mult T.boundary))
    (I' : X'.IdealSheafData)
    (hI' : ((monomialCenter T.ideal T.mult T.boundary).comap π) ^ T.mult * I' = T.ideal.comap π)
    (hT' : MonomialCenter.IsLocallyMonomialTriple (blowupTriple T π q I'))
    (h' : minIndexCard I' T.mult
      (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) ≠ 0) :
    minIndexCard T.ideal T.mult T.boundary
        < minIndexCard I' T.mult
          (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) ∨
      (minIndexCard T.ideal T.mult T.boundary
          = minIndexCard I' T.mult
            (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) ∧
        (maxCandidateOrder I' T.mult
              (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
            < maxCandidateOrder T.ideal T.mult T.boundary ∨
          (maxCandidateOrder T.ideal T.mult T.boundary
              = maxCandidateOrder I' T.mult
                (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) ∧
            List.Lex (· < ·)
              (MonomialCenter.sortedIndices (lexMaxIndices T.ideal T.mult T.boundary))
              (MonomialCenter.sortedIndices
                (lexMaxIndices I' T.mult
                  (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
                    T.boundary)))))) := by
  classical
  have hA : ∀ (J' : Finset (Fin (transformedBoundary π
        (monomialCenter T.ideal T.mult T.boundary) T.boundary).length)) (C' : Set ↥X'),
      C' ∈ intersectionComponents (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
        T.boundary) J' →
      (T.mult : ℕ∞) ≤ orderAlong I' C' → 1 ≤ J'.card →
      minIndexCard T.ideal T.mult T.boundary ≤ J'.card := by
    intro J' C' hmem hordJ hone
    by_cases hnew : exceptionalIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary ∈ J'
    · have hx := minIndexCard_le_card_add_one_of_exceptionalIndex_mem hGeom hT h π q hπ I' hI' hT' J' hnew hmem
        hordJ
      have hcarde := Finset.card_erase_of_mem hnew
      have himg := image_strictTransformIndex_preimageStrictTransformIndex_eq_erase π (monomialCenter T.ideal T.mult T.boundary)
        T.boundary J'
      have hcimg : (Finset.image (strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
            (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J')).card
          = (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J').card :=
        Finset.card_image_of_injective _ (strictMono_strictTransformIndex π
          (monomialCenter T.ideal T.mult T.boundary) T.boundary).injective
      rw [himg] at hcimg
      have h1 := hx.1
      omega
    · obtain ⟨C, hC, -, hordeq⟩ :=
        exists_mem_intersectionComponents_orderAlong_eq hGeom hT π (monomialCenter T.ideal T.mult T.boundary)
          hZp hπ I' hI' J' hnew hmem
      have himg := (image_strictTransformIndex_preimageStrictTransformIndex_eq_erase π (monomialCenter T.ideal T.mult T.boundary) T.boundary
        J').trans (Finset.erase_eq_of_notMem hnew)
      have hcimg : (Finset.image (strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
            (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J')).card
          = (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J').card :=
        Finset.card_image_of_injective _ (strictMono_strictTransformIndex π
          (monomialCenter T.ideal T.mult T.boundary) T.boundary).injective
      rw [himg] at hcimg
      have hcand : IsCandidateComponent T.ideal T.mult T.boundary
          (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J').card
          (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary J') C :=
        ⟨rfl, hC, by rw [← hordeq]; exact hordJ⟩
      have hone' : 1 ≤ (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary)
          T.boundary J').card := by omega
      have hle := (minIndexCard_spec T.ideal T.mult T.boundary ⟨_, hone', _, _, hcand⟩).2.2
        _ hone' _ _ hcand
      omega
  obtain ⟨J₁, C₁, hcand₁⟩ := exists_isCandidateComponent_minIndexCard I' T.mult
    (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) h'
  have hsplit₁ : J₁.card = minIndexCard I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) ∧
      C₁ ∈ intersectionComponents (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
        T.boundary) J₁ ∧ (T.mult : ℕ∞) ≤ orderAlong I' C₁ := hcand₁
  obtain ⟨hcard₁, hmem₁, hord₁⟩ := hsplit₁
  have hone₁ : 1 ≤ J₁.card := by
    rw [hcard₁]
    exact Nat.pos_of_ne_zero h'
  have hAle : minIndexCard T.ideal T.mult T.boundary
      ≤ minIndexCard I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) := by
    rw [← hcard₁]
    exact hA J₁ C₁ hmem₁ hord₁ hone₁
  rcases lt_or_eq_of_le hAle with hlt | heq
  · exact Or.inl hlt
  refine Or.inr ⟨heq, ?_⟩
  have hbest' : ∃ C : Set ↥X',
      IsCandidateComponent I' T.mult
          (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
          (minIndexCard I' T.mult
            (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))
          (lexMaxIndices I' T.mult
            (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)) C ∧
        orderAlong I' C = maxCandidateOrder I' T.mult
          (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) :=
    (lexMaxIndices_spec hGeom hT' h').1
  obtain ⟨C', hcand', hordC'⟩ := hbest'
  have hsplit' : (lexMaxIndices I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)).card
        = minIndexCard I' T.mult
          (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) ∧
      C' ∈ intersectionComponents (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
        (lexMaxIndices I' T.mult
          (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)) ∧
      (T.mult : ℕ∞) ≤ orderAlong I' C' := hcand'
  obtain ⟨hcardc', hmemc', hordc'⟩ := hsplit'
  by_cases hnew : exceptionalIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary ∈
      lexMaxIndices I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
  · left
    have hx := minIndexCard_le_card_add_one_of_exceptionalIndex_mem hGeom hT h π q hπ I' hI' hT' _ hnew hmemc'
      hordc'
    have hcarde := Finset.card_erase_of_mem hnew
    have himg := image_strictTransformIndex_preimageStrictTransformIndex_eq_erase π (monomialCenter T.ideal T.mult T.boundary) T.boundary
      (lexMaxIndices I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))
    have hcimg : (Finset.image (strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
          (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary
            (lexMaxIndices I' T.mult
              (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
                T.boundary)))).card
        = (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary
            (lexMaxIndices I' T.mult
              (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
                T.boundary))).card :=
      Finset.card_image_of_injective _ (strictMono_strictTransformIndex π
        (monomialCenter T.ideal T.mult T.boundary) T.boundary).injective
    rw [himg] at hcimg
    have hmin' : minIndexCard I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary) ≠ 0 := h'
    have hpos : 1 ≤ (lexMaxIndices I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)).card := by
      rw [hcardc']
      exact Nat.pos_of_ne_zero hmin'
    have hlt2 : (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary
        (lexMaxIndices I' T.mult
          (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))).card
        < minIndexCard T.ideal T.mult T.boundary := by omega
    rw [← hordC']
    exact hx.2 hlt2
  · obtain ⟨C, hC, hCnot, hordeq⟩ :=
      exists_mem_intersectionComponents_orderAlong_eq hGeom hT π (monomialCenter T.ideal T.mult T.boundary)
        hZp hπ I' hI' _ hnew hmemc'
    have himgc := (image_strictTransformIndex_preimageStrictTransformIndex_eq_erase π (monomialCenter T.ideal T.mult T.boundary) T.boundary
      (lexMaxIndices I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))).trans
      (Finset.erase_eq_of_notMem hnew)
    have hcimg : (Finset.image (strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
          (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary
            (lexMaxIndices I' T.mult
              (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
                T.boundary)))).card
        = (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary
            (lexMaxIndices I' T.mult
              (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
                T.boundary))).card :=
      Finset.card_image_of_injective _ (strictMono_strictTransformIndex π
        (monomialCenter T.ideal T.mult T.boundary) T.boundary).injective
    rw [himgc] at hcimg
    have hcardJ : (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary
        (lexMaxIndices I' T.mult
          (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))).card
        = minIndexCard T.ideal T.mult T.boundary := by
      rw [← hcimg, hcardc']
      exact heq.symm
    have hmC : (T.mult : ℕ∞) ≤ orderAlong T.ideal C := by
      rw [← hordeq]
      exact hordc'
    have hcandJ : IsCandidateComponent T.ideal T.mult T.boundary
        (minIndexCard T.ideal T.mult T.boundary)
        (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary
          (lexMaxIndices I' T.mult
            (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))) C :=
      ⟨hcardJ, hC, hmC⟩
    have hvle : maxCandidateOrder I' T.mult
        (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary)
        ≤ maxCandidateOrder T.ideal T.mult T.boundary := by
      rw [← hordC', hordeq]
      exact (maxCandidateOrder_spec hGeom hT h).2.1 _ _ hcandJ
    rcases lt_or_eq_of_le hvle with hv | hv
    · exact Or.inl hv
    refine Or.inr ⟨hv.symm, ?_⟩
    have hordC2 : orderAlong T.ideal C = maxCandidateOrder T.ideal T.mult T.boundary := by
      rw [← hordeq, hordC', hv]
    have hbestJ : IsMaxOrderIndexSet T.ideal T.mult T.boundary
        (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary
          (lexMaxIndices I' T.mult
            (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))) :=
      ⟨C, hcandJ, hordC2⟩
    have hnotlex := (lexMaxIndices_spec hGeom hT h).2 _ hbestJ
    have hsp : MonomialCenter.sortedIndices (lexMaxIndices I' T.mult
          (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))
        = MonomialCenter.sortedIndices
          (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary
            (lexMaxIndices I' T.mult
              (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))) := by
      conv_lhs => rw [← himgc]
      exact sortedIndices_image_strictTransformIndex π (monomialCenter T.ideal T.mult T.boundary)
        T.boundary _
    have htrich : ∀ (a b : List ℕ), List.Lex (· < ·) a b ∨ a = b ∨ List.Lex (· < ·) b a := by
      intro a
      induction a with
      | nil =>
        intro b
        cases b with
        | nil => exact Or.inr (Or.inl rfl)
        | cons _ _ => exact Or.inl List.Lex.nil
      | cons x xs ih =>
        intro b
        cases b with
        | nil => exact Or.inr (Or.inr List.Lex.nil)
        | cons y ys =>
          rcases lt_trichotomy x y with h | h | h
          · exact Or.inl (List.Lex.rel h)
          · subst y
            rcases ih ys with h | h | h
            · exact Or.inl (List.Lex.cons h)
            · exact Or.inr (Or.inl (congrArg (List.cons x) h))
            · exact Or.inr (Or.inr (List.Lex.cons h))
          · exact Or.inr (Or.inr (List.Lex.rel h))
    rcases htrich
        (MonomialCenter.sortedIndices (lexMaxIndices T.ideal T.mult T.boundary))
        (MonomialCenter.sortedIndices
          (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary
            (lexMaxIndices I' T.mult
              (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))))
      with hlex | hlexeq | hlex
    · rw [hsp]
      exact hlex
    · exfalso
      have hJeq : preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary
            (lexMaxIndices I' T.mult
              (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary) T.boundary))
          = lexMaxIndices T.ideal T.mult T.boundary := by
        ext j
        constructor
        · intro hj
          have h1 : (j : ℕ) ∈ MonomialCenter.sortedIndices
              (preimageStrictTransformIndex π (monomialCenter T.ideal T.mult T.boundary) T.boundary
                (lexMaxIndices I' T.mult
                  (transformedBoundary π (monomialCenter T.ideal T.mult T.boundary)
                    T.boundary))) := (MonomialCenter.mem_sortedIndices _ _).2 ⟨j, hj, rfl⟩
          rw [← hlexeq] at h1
          obtain ⟨j2, hj2, hvv⟩ := (MonomialCenter.mem_sortedIndices _ _).1 h1
          have hje : j2 = j := Fin.val_injective hvv
          rwa [hje] at hj2
        · intro hj
          have h1 : (j : ℕ) ∈ MonomialCenter.sortedIndices
              (lexMaxIndices T.ideal T.mult T.boundary) :=
            (MonomialCenter.mem_sortedIndices _ _).2 ⟨j, hj, rfl⟩
          rw [hlexeq] at h1
          obtain ⟨j2, hj2, hvv⟩ := (MonomialCenter.mem_sortedIndices _ _).1 h1
          have hje : j2 = j := Fin.val_injective hvv
          rwa [hje] at hj2
      apply hCnot
      refine (mem_centerComponents_iff _ _ _ C).2 ⟨⟨?_, ?_, ?_⟩, hordC2⟩
      · exact card_lexMaxIndices hGeom hT h
      · rw [← hJeq]
        exact hC
      · exact hmC
    · exact absurd hlex hnotlex

theorem minIndexCard_blowupTripleAtCenterIdeal_eq_zero_or_centerInvariant_lt (hGeom : MonomialGeometryHypotheses.{u})
    {T : MarkedIdealWithBoundary.{u}} (hT : MonomialCenter.IsLocallyMonomialTriple T)
    (h : minIndexCard T.ideal T.mult T.boundary ≠ 0) :
    minIndexCard (blowupTripleAtCenterIdeal T).ideal (blowupTripleAtCenterIdeal T).mult
        (blowupTripleAtCenterIdeal T).boundary = 0 ∨
      MonomialCenter.CenterInvariant.Lt (MonomialCenter.centerInvariant T.ideal T.mult T.boundary)
        (MonomialCenter.centerInvariant (blowupTripleAtCenterIdeal T).ideal (blowupTripleAtCenterIdeal T).mult
          (blowupTripleAtCenterIdeal T).boundary) := by
  classical
  by_cases h' : minIndexCard (blowupTripleAtCenterIdeal T).ideal (blowupTripleAtCenterIdeal T).mult
      (blowupTripleAtCenterIdeal T).boundary = 0
  · exact Or.inl h'
  refine Or.inr ?_
  have hT' : MonomialCenter.IsLocallyMonomialTriple
      (blowupTriple T (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary))
        (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary) ≫ T.structMap)
        (residualByPow (T.ideal.comap (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary)))
          ((monomialCenter T.ideal T.mult T.boundary).comap
            (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary))) T.mult)) :=
    isLocallyMonomialTriple_blowupTripleAtCenterIdeal hGeom hT h
  have hI' : ((monomialCenter T.ideal T.mult T.boundary).comap
        (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary))) ^ T.mult *
      residualByPow (T.ideal.comap (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary)))
        ((monomialCenter T.ideal T.mult T.boundary).comap
          (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary))) T.mult
      = T.ideal.comap (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary)) :=
    pow_mul_residualByPow _ _ _ (exists_controlledTransform_monomialCenter hGeom hT h)
  exact minIndexCard_lt_or_maxCandidateOrder_lt_of_isBlowupAlongIdealSheaf hGeom hT h
    (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary))
    (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary) ≫ T.structMap)
    (monomialCenter_eq_componentUnionIdeal hGeom hT h) (Blowup.blowup.isBlowupAlongIdealSheaf_proj _) _ hI' hT' h'

noncomputable def numMaxOrderCandidates (T : MarkedIdealWithBoundary.{u}) : ℕ :=
  {p : Finset (Fin T.boundary.length) × Set ↥T.scheme |
      IsCandidateComponent T.ideal T.mult T.boundary (minIndexCard T.ideal T.mult T.boundary) p.1 p.2 ∧
        orderAlong T.ideal p.2 = maxCandidateOrder T.ideal T.mult T.boundary}.ncard

noncomputable def monomialInvariant (D : ℕ) (T : MarkedIdealWithBoundary.{u}) :
    Lex (ℕ × Lex (ℕ × ℕ)) :=
  toLex (D - minIndexCard T.ideal T.mult T.boundary,
    toLex ((maxCandidateOrder T.ideal T.mult T.boundary).toNat, numMaxOrderCandidates T))

private theorem toNat_lt_toNat_of_lt_of_ne_top {a b : ℕ∞} (hab : a < b) (hb : b ≠ ⊤) :
    a.toNat < b.toNat := by
  obtain ⟨n, hn⟩ := ENat.ne_top_iff_exists.1 hb
  obtain ⟨m, hm⟩ := ENat.ne_top_iff_exists.1 (ne_top_of_lt hab)
  subst hn
  subst hm
  have hmn : m < n := by exact_mod_cast hab
  simpa using hmn

theorem monomialInvariant_blowupTripleAtCenterIdeal_lt (hGeom : MonomialGeometryHypotheses.{u}) {D : ℕ} {T : MarkedIdealWithBoundary.{u}}
    (hT : MonomialCenter.IsLocallyMonomialTriple T)
    (h : minIndexCard T.ideal T.mult T.boundary ≠ 0)
    (hD : krullDimSucc T.scheme ≤ D)
    (h' : minIndexCard (blowupTripleAtCenterIdeal T).ideal (blowupTripleAtCenterIdeal T).mult
      (blowupTripleAtCenterIdeal T).boundary ≠ 0) :
    monomialInvariant D (blowupTripleAtCenterIdeal T) < monomialInvariant D T := by
  classical
  have hTstep : MonomialCenter.IsLocallyMonomialTriple (blowupTripleAtCenterIdeal T) :=
    isLocallyMonomialTriple_blowupTripleAtCenterIdeal hGeom hT h
  have hkey0 := (minIndexCard_blowupTripleAtCenterIdeal_eq_zero_or_centerInvariant_lt hGeom hT h).resolve_left h'
  have hkeyU :
      minIndexCard T.ideal T.mult T.boundary
          < minIndexCard (blowupTripleAtCenterIdeal T).ideal (blowupTripleAtCenterIdeal T).mult
              (blowupTripleAtCenterIdeal T).boundary ∨
        (minIndexCard T.ideal T.mult T.boundary
            = minIndexCard (blowupTripleAtCenterIdeal T).ideal (blowupTripleAtCenterIdeal T).mult
                (blowupTripleAtCenterIdeal T).boundary ∧
          (maxCandidateOrder (blowupTripleAtCenterIdeal T).ideal (blowupTripleAtCenterIdeal T).mult
                (blowupTripleAtCenterIdeal T).boundary
              < maxCandidateOrder T.ideal T.mult T.boundary ∨
            (maxCandidateOrder T.ideal T.mult T.boundary
                = maxCandidateOrder (blowupTripleAtCenterIdeal T).ideal (blowupTripleAtCenterIdeal T).mult
                    (blowupTripleAtCenterIdeal T).boundary ∧
              List.Lex (· < ·)
                (MonomialCenter.sortedIndices (lexMaxIndices T.ideal T.mult T.boundary))
                (MonomialCenter.sortedIndices
                  (lexMaxIndices (blowupTripleAtCenterIdeal T).ideal (blowupTripleAtCenterIdeal T).mult
                    (blowupTripleAtCenterIdeal T).boundary))))) := hkey0
  rw [monomialInvariant, monomialInvariant, Prod.Lex.toLex_lt_toLex]
  rcases hkeyU with hrank | ⟨hrank, hrest⟩
  · left
    obtain ⟨J, C, hcand⟩ :=
      exists_isCandidateComponent_minIndexCard (blowupTripleAtCenterIdeal T).ideal (blowupTripleAtCenterIdeal T).mult
        (blowupTripleAtCenterIdeal T).boundary h'
    unfold IsCandidateComponent at hcand
    obtain ⟨hcard, hCmem, -⟩ := hcand
    have hlt : J.card < krullDimSucc (blowupTripleAtCenterIdeal T).scheme :=
      hGeom.card_lt_dim (blowupTripleAtCenterIdeal T) hTstep.valid J ⟨C, hCmem⟩
    have hdim : krullDimSucc (blowupTripleAtCenterIdeal T).scheme ≤ D :=
      le_trans (krullDimSucc_blowupTripleAtCenterIdeal_le hGeom hT h) hD
    omega
  · right
    refine ⟨by rw [hrank], Prod.Lex.toLex_lt_toLex.2 ?_⟩
    rcases hrest with hval | ⟨hval, hpos⟩
    · left
      exact toNat_lt_toNat_of_lt_of_ne_top hval (maxCandidateOrder_spec hGeom hT h).2.2.2.ne
    · right
      refine ⟨by rw [hval], ?_⟩
      exact maxOrderCandidatePairs_ncard_lt_of_blowup hGeom hT h
        (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary))
        (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary) ≫ T.structMap)
        (Blowup.blowup.isBlowupAlongIdealSheaf_proj _)
        (residualByPow (T.ideal.comap (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary)))
          ((monomialCenter T.ideal T.mult T.boundary).comap
            (Blowup.blowup.proj (monomialCenter T.ideal T.mult T.boundary))) T.mult)
        (pow_mul_residualByPow _ _ _ (exists_controlledTransform_monomialCenter hGeom hT h))
        hTstep h' hrank.symm hval.symm

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MonomialCase.MonomialInvariantDecrease =====
