module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceOfBlowups
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StalkKrullDimension
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.FiniteKrullDim
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupChart
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupClosedSubscheme
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictNormalCrossingsBlowup
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceTransforms
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsWithoutUnitIdeals
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.KrullDimClosedSubset
import Std.Tactic.BVDecide.Normalize.Bool

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupDimension, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.DimensionNonincreasing

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupDimension =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupDimension", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceOfBlowups\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StalkKrullDimension\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.FiniteKrullDim\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupChart\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupClosedSubscheme\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictNormalCrossingsBlowup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

namespace FunctorialResolution.EmbeddedResolution

theorem ringKrullDim_stalk_eq_of_isOpenImmersion {Y W : Scheme.{u}} (g : Y ⟶ W)
    [AlgebraicGeometry.IsOpenImmersion g] (y : Y) :
    ringKrullDim (Y.presheaf.stalk y) = ringKrullDim (W.presheaf.stalk (g.base y)) := by
  have : IsIso (g.stalkMap y) := inferInstance
  have e : (W.presheaf.stalk (g.base y)) ≅ (Y.presheaf.stalk y) := asIso (g.stalkMap y)
  exact (ringKrullDim_eq_of_ringEquiv e.commRingCatIsoToRingEquiv).symm

theorem isNoetherianRing_stalk_of_isOpenImmersion {Y W : Scheme.{u}} (g : Y ⟶ W)
    [AlgebraicGeometry.IsOpenImmersion g] (y : Y)
    [IsNoetherianRing (W.presheaf.stalk (g.base y))] :
    IsNoetherianRing (Y.presheaf.stalk y) := by
  have : IsIso (g.stalkMap y) := inferInstance
  exact isNoetherianRing_of_ringEquiv _
    (CategoryTheory.asIso (g.stalkMap y)).commRingCatIsoToRingEquiv

theorem ringKrullDim_stalk_le_of_etaleChart {k : Type u} [Field k] {Y : Scheme.{u}}
    (p : Y ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.IsLocallyNoetherian Y]
    {U : Y.Opens} {m : ℕ} (c : EtaleChart p U m) (y : Y) (hy : y ∈ U) :
    ringKrullDim (Y.presheaf.stalk y) ≤ ((m : ℕ∞) : WithBot ℕ∞) := by
  have := c.isEtale
  have hbase : U.ι.base (⟨y, hy⟩ : ↥U) = y := rfl
  have h0 : IsNoetherianRing (Y.presheaf.stalk (U.ι.base (⟨y, hy⟩ : ↥U))) := by
    rw [hbase]
    exact inferInstance
  have h1 : IsNoetherianRing (U.toScheme.presheaf.stalk (⟨y, hy⟩ : ↥U)) :=
    isNoetherianRing_stalk_of_isOpenImmersion U.ι (⟨y, hy⟩ : ↥U)
  have h2 := ringKrullDim_stalk_le_of_etale_affineSpace c.map (⟨y, hy⟩ : ↥U)
  have h3 := ringKrullDim_stalk_eq_of_isOpenImmersion U.ι (⟨y, hy⟩ : ↥U)
  rw [hbase] at h3
  rw [← h3]
  exact h2

theorem le_topologicalKrullDim_of_etaleChart {k : Type u} [Field k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.LocallyOfFiniteType p]
    {U : X.Opens} {m : ℕ} (c : EtaleChart p U m) (hU : (U : Set X).Nonempty) :
    ((m : ℕ∞) : WithBot ℕ∞) ≤ topologicalKrullDim ↥X := by
  have : AlgebraicGeometry.Etale c.map := c.isEtale
  have : AlgebraicGeometry.IsLocallyNoetherian X :=
    AlgebraicGeometry.LocallyOfFiniteType.isLocallyNoetherian p
  obtain ⟨x0, hx0⟩ := hU
  obtain ⟨V, hVaff, hxv, -⟩ :=
    exists_isAffineOpen_mem_and_subset (X := U.toScheme) (x := ⟨x0, hx0⟩) (U := ⊤) trivial
  obtain ⟨y, hy⟩ := exists_isClosed_singleton_of_isAffineOpen V hVaff ⟨_, hxv⟩
  have he1 : AlgebraicGeometry.Etale (Scheme.Opens.ι V) := inferInstance
  have he2 : AlgebraicGeometry.Etale (V.ι ≫ c.map) := inferInstance
  have : IsNoetherianRing (X.presheaf.stalk ((V.ι ≫ U.ι).base y)) := inferInstance
  have : IsNoetherianRing (V.toScheme.presheaf.stalk y) :=
    isNoetherianRing_stalk_of_isOpenImmersion (V.ι ≫ U.ι) y
  calc ((m : ℕ∞) : WithBot ℕ∞)
      = ringKrullDim (V.toScheme.presheaf.stalk y) :=
        (ringKrullDim_stalk_eq_of_etale_affineSpace (V.ι ≫ c.map) y hy).symm
    _ = ringKrullDim (X.presheaf.stalk ((V.ι ≫ U.ι).base y)) :=
        ringKrullDim_stalk_eq_of_isOpenImmersion (V.ι ≫ U.ι) y
    _ ≤ topologicalKrullDim ↥X :=
        ringKrullDim_stalk_le_topologicalKrullDim X ((V.ι ≫ U.ι).base y)

theorem ringKrullDim_stalk_eq_of_isBlowupAlongIdealSheaf_of_notMem {X X₁ : Scheme.{u}} (π : X₁ ⟶ X)
    (Z : X.IdealSheafData) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z) (x₁ : X₁) (hx₁ : π.base x₁ ∉ Z.support) :
    ringKrullDim (X₁.presheaf.stalk x₁) = ringKrullDim (X.presheaf.stalk (π.base x₁)) := by
  obtain ⟨W, hWeq⟩ : ∃ W : X.Opens, (W : Set X) = (Z.support : Set X)ᶜ :=
    ⟨⟨(Z.support : Set X)ᶜ, Z.support.2.isOpen_compl⟩, rfl⟩
  have hW : ∀ x : X, x ∈ W → x ∉ Z.support := by
    intro x hxm
    have h2 : x ∈ (W : Set X) := hxm
    rw [hWeq] at h2
    exact h2
  have hxW : π.base x₁ ∈ W := by
    have h2 : π.base x₁ ∈ (Z.support : Set X)ᶜ := hx₁
    rw [← hWeq] at h2
    exact h2
  have hx : x₁ ∈ π ⁻¹ᵁ W := hxW
  have hiso : IsIso (π ∣_ W) := isIso_morphismRestrict_of_isBlowupAlongIdealSheaf hπ W hW
  have hoi : AlgebraicGeometry.IsOpenImmersion (π ∣_ W) := inferInstance
  have e1 := ringKrullDim_stalk_eq_of_isOpenImmersion (Scheme.Opens.ι (π ⁻¹ᵁ W))
    (⟨x₁, hx⟩ : ↥(π ⁻¹ᵁ W))
  have e2 := ringKrullDim_stalk_eq_of_isOpenImmersion ((π ∣_ W) ≫ Scheme.Opens.ι W)
    (⟨x₁, hx⟩ : ↥(π ⁻¹ᵁ W))
  rw [morphismRestrict_ι] at e2
  exact e1.symm.trans e2

theorem topologicalKrullDim_le_of_blowup_strictNormalCrossings {k : Type u} [Field k] {X X₁ : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.LocallyOfFiniteType p]
    (π : X₁ ⟶ X) (Z : X.IdealSheafData) (E : List X.IdealSheafData)
    (hZE : HasStrictNormalCrossingsWith p Z E) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z) :
    topologicalKrullDim ↥X₁ ≤ topologicalKrullDim ↥X := by
  have hXN : AlgebraicGeometry.IsLocallyNoetherian X :=
    AlgebraicGeometry.LocallyOfFiniteType.isLocallyNoetherian p
  have hX₁N : AlgebraicGeometry.IsLocallyNoetherian X₁ :=
    isLocallyNoetherian_of_isBlowupAlongIdealSheaf π Z hπ
  refine topologicalKrullDim_le_of_forall_ringKrullDim_stalk_le X₁ _ ?_
  intro x₁
  by_cases hx : π.base x₁ ∈ Z.support
  · obtain ⟨U, hU, m, c, a, S, h1, h2, h3, h4⟩ := hZE.exists_etaleChart hx
    have hxU : x₁ ∈ π ⁻¹ᵁ U := hU
    obtain ⟨s, hs, hmem⟩ := exists_mem_domain_blowupChart_of_isBlowupAlongIdealSheaf π c S hπ h4 x₁ hxU
    have hle := ringKrullDim_stalk_le_of_etaleChart (π ≫ p)
      (blowupChartOfIsBlowup π c S hπ h4 s hs).chart x₁ hmem
    exact hle.trans (le_topologicalKrullDim_of_etaleChart p c ⟨π.base x₁, hU⟩)
  · rw [ringKrullDim_stalk_eq_of_isBlowupAlongIdealSheaf_of_notMem π Z hπ x₁ hx]
    exact ringKrullDim_stalk_le_topologicalKrullDim X (π.base x₁)

private theorem withBotSuccToNat_mono_of_lt_top {a b : WithBot ℕ∞} (hab : a ≤ b) (hb : b < ⊤) :
    withBotSuccToNat a ≤ withBotSuccToNat b := by
  revert hab hb
  induction a using WithBot.recBotCoe with
  | bot =>
      intro _ _
      rw [withBotSuccToNat_bot]
      exact Nat.zero_le _
  | coe x =>
      induction b using WithBot.recBotCoe with
      | bot =>
          intro hab _
          exact absurd (le_bot_iff.mp hab) (by simp)
      | coe y =>
          intro hab hb
          have hy : y ≠ ⊤ := fun h => hb.ne (by simp [h])
          obtain ⟨n, rfl⟩ := ENat.ne_top_iff_exists.mp hy
          have hxy : x ≤ ((n : ℕ) : ℕ∞) := WithBot.coe_le_coe.mp hab
          have hx : x ≠ ⊤ := by
            intro h
            rw [h, top_le_iff] at hxy
            exact absurd hxy (by simp)
          obtain ⟨m, rfl⟩ := ENat.ne_top_iff_exists.mp hx
          have hmn : m ≤ n := by exact_mod_cast hxy
          rw [withBotSuccToNat_coe, withBotSuccToNat_coe]
          have h1 : ((m : ℕ) : ℕ∞).toNat = m := by simp
          have h2 : ((n : ℕ) : ℕ∞).toNat = n := by simp
          omega

theorem krullDimSucc_le_of_blowup_strictNormalCrossings {k : Type u} [Field k] {X X₁ : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.LocallyOfFiniteType p]
    [AlgebraicGeometry.QuasiCompact p]
    (π : X₁ ⟶ X) (Z : X.IdealSheafData) (E : List X.IdealSheafData)
    (hZE : HasStrictNormalCrossingsWith p Z E) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z) :
    krullDimSucc X₁ ≤ krullDimSucc X := by
  have h1 : topologicalKrullDim ↥X₁ ≤ topologicalKrullDim ↥X :=
    topologicalKrullDim_le_of_blowup_strictNormalCrossings p π Z E hZE hπ
  have h2 : topologicalKrullDim ↥X < ⊤ :=
    topologicalKrullDim_lt_top_of_finiteType p inferInstance inferInstance
  simp only [krullDimSucc_eq_withBotSuccToNat_topologicalKrullDim]
  exact withBotSuccToNat_mono_of_lt_top h1 h2

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupDimension =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.DimensionNonincreasing =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.DimensionNonincreasing", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceTransforms\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsWithoutUnitIdeals\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.KrullDimClosedSubset\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Bool\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem krullDimSucc_eq_krullDimSucc_of_iso {X Y : Scheme.{u}} (e : X ≅ Y) :
    krullDimSucc X = krullDimSucc Y := by
  have f : ↥X ≃ₜ ↥Y := TopCat.homeoOfIso (Scheme.forgetToTop.mapIso e)
  rw [krullDimSucc_eq_withBotSuccToNat_topologicalKrullDim, krullDimSucc_eq_withBotSuccToNat_topologicalKrullDim, topologicalKrullDim_eq_of_homeomorph f]

theorem dimensionNonincreasingAlongBlowups : DimensionNonincreasingAlongBlowups.{u} := by
  intro T hT s i
  induction i with
  | zero =>
      intro _
      exact le_of_eq (krullDimSucc_eq_krullDimSucc_of_iso s.toSequenceOfBlowups.isoZero)
  | succ n ih =>
      intro hi
      have hlt : n < s.toSequenceOfBlowups.length := hi
      have hn : n ≤ s.toSequenceOfBlowups.length := Nat.le_of_lt hlt
      have hvalid := MarkedIdealWithBoundary.IsAdmissible.transformAt effectiveCartierSupportContainsNoComponent hT s n hn
      have hft : AlgebraicGeometry.LocallyOfFiniteType (s.projectionToSpec n) :=
        hvalid.locallyOfFiniteType
      have hqc : AlgebraicGeometry.QuasiCompact (s.projectionToSpec n) :=
        hvalid.quasiCompact
      have hsnc : HasStrictNormalCrossingsWith (s.projectionToSpec n) (s.toSequenceOfBlowups.center n) (s.boundary n) := by
        rw [MarkedSequenceOfBlowups.projectionToSpec_eq]
        exact s.center_snc n hlt
      have hb : krullDimSucc (s.toSequenceOfBlowups.schemeAt (n + 1)) ≤ krullDimSucc (s.toSequenceOfBlowups.schemeAt n) :=
        krullDimSucc_le_of_blowup_strictNormalCrossings (s.projectionToSpec n) (s.toSequenceOfBlowups.transitionMapSucc n)
          (s.toSequenceOfBlowups.center n) (s.boundary n) hsnc
          (s.toSequenceOfBlowups.isBlowupAlongIdealSheaf_blowupMorphism n hlt)
      exact le_trans hb (ih hn)

private theorem nontrivialPart_eq_filterNeTop {X : Scheme.{u}} (E : List X.IdealSheafData) :
    MarkedIdealWithBoundary.nontrivialPart E = filterNeTop E := by
  unfold MarkedIdealWithBoundary.nontrivialPart filterNeTop
  apply List.filter_congr
  intro D _
  simp

namespace MarkedIdealWithBoundary

theorem validOfSameNontrivialBoundary : MarkedIdealWithBoundary.AdmissibleUnderBoundaryReplacement.{u} := by
  intro T E hV hEq
  have hsm : AlgebraicGeometry.Smooth T.structMap := hV.smooth
  have h : filterNeTop T.boundary = filterNeTop E := by
    rw [← nontrivialPart_eq_filterNeTop, ← nontrivialPart_eq_filterNeTop]
    exact (MarkedIdealWithBoundary.sameNontrivialBoundary_iff T.boundary E).mp hEq
  exact ⟨hV.charZero, hV.locallyOfFiniteType, hV.nonzeroOnComponents, hV.one_le_mult,
    hV.quasiCompact, hV.smooth,
    inStrictNormalCrossingPosition_of_filterNeTop_eq T.structMap T.boundary E h hV.snc⟩

end MarkedIdealWithBoundary

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.DimensionNonincreasing =====
