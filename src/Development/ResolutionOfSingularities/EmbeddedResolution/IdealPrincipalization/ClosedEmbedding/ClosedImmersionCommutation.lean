module

public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformChart
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.MaximalContactCover
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtGenericPoint
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceRelations
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.IsomorphismTransport
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.PrincipalizationConstruction
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderPullback
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsNil
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.CanonicalPrincipalization
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.PushforwardComposition
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.PushforwardFlatBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.PushforwardUniqueness
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IrreducibleComponentsAlongSequence
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatDescent
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothPullbackAdmissible
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupClosedSubscheme
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrongResolution.SequenceIsomorphism
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.DisjointUnionCover
import Development.ResolutionOfSingularities.Foundations.Schemes.SchemeMorphismProperties
import Mathlib.Tactic.Linter.Style
import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.GenericPointImage
import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.ClosedImmersionKrullDim
import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.NoetherianBlowup
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.HypersurfaceFiberCodim, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.HypersurfaceScheme, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.IsoBlowupPushforward, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.ClosedImmersionCommutation

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.HypersurfaceFiberCodim =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.HypersurfaceFiberCodim", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformChart\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.MaximalContactCover\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.DisjointUnionCover\nimport Development.ResolutionOfSingularities.Foundations.Schemes.SchemeMorphismProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem comap_subschemeι_self {W : Scheme.{u}} (J : W.IdealSheafData) :
    J.comap J.subschemeι = ⊥ := by
  simp [Scheme.IdealSheafData.comap]

theorem card_complEmbPreimage (m : ℕ) (S : Finset (Fin m)) (a : Fin m) (ha : a ∈ S) :
    (complEmbPreimage m S a).card = S.card - 1 := by
  classical
  rw [← Finset.card_erase_of_mem ha]
  refine Finset.card_bij (fun t _ => complOrderEmb m ({a} : Finset (Fin m)) t) ?_ ?_ ?_
  · intro t ht
    rw [mem_complEmbPreimage] at ht
    refine Finset.mem_erase.mpr ⟨?_, ht⟩
    intro hcontra
    exact (complOrderEmb_notMem m {a} t) (by rw [hcontra]; exact Finset.mem_singleton_self a)
  · intro t₁ _ t₂ _ hEq
    exact (complOrderEmb m ({a} : Finset (Fin m))).injective hEq
  · intro b hb
    obtain ⟨hb1, hb2⟩ := Finset.mem_erase.mp hb
    obtain ⟨t, ht⟩ := exists_complOrderEmb_eq m ({a} : Finset (Fin m)) (by simpa using hb1)
    exact ⟨t, mem_complEmbPreimage_of_complOrderEmb_eq m S a hb2 ht, ht⟩

namespace MaximalContactCover

variable {X X' : Scheme.{u}} {k : Type u} [Field k] {p : X' ⟶ Spec (CommRingCat.of k)}
  {τ : X ⟶ X'} {I : X.IdealSheafData} {c : ℕ}

theorem comap_iInfImageIdeal_subschemeι_eq_bot (C : MaximalContactCover p τ I c) :
    C.toCoverData.iInfImageIdeal.comap C.toCoverData.iInfImageIdeal.subschemeι = ⊥ :=
  comap_subschemeι_self C.toCoverData.iInfImageIdeal

theorem ker_pullbackFiberToHypersurface (C : MaximalContactCover p τ I c) [IsClosedImmersion τ] :
    Scheme.Hom.ker C.pullbackFiberToHypersurface =
      (Scheme.Hom.ker C.pullbackFiberToTotal).comap C.toCoverData.iInfImageIdeal.subschemeι := by
  have h := Scheme.Hom.ker_comp C.pullbackFiberToHypersurface C.toCoverData.iInfImageIdeal.subschemeι
  rw [C.pullbackFiberToHypersurface_comp_subschemeι] at h
  rw [h, Blowup.comap_map_of_isClosedImmersion]

theorem hasEtaleCoordCodim_pullbackFiberToHypersurface (C : MaximalContactCover p τ I c) [IsClosedImmersion τ] :
    HasEtaleCoordCodim (C.toCoverData.iInfImageIdeal.subschemeι ≫ C.projection ≫ p) C.pullbackFiberToHypersurface
      (c - 1) := by
  intro x
  obtain ⟨i, y, hy⟩ :=
    MaxContactReduction.FiniteOpenCoverWithIdeals.exists_summandι_base_eq C.toCoverData (C.pullbackFiberToTotal.base x)
  have hmemU : C.pullbackFiberToTotal.base x ∈ C.toCoverData.summandOpen i := by
    rw [← hy]
    exact Set.mem_range_self y
  have hprojmem : C.toCoverData.disjointUnionMap.base (C.pullbackFiberToTotal.base x) ∈ C.toCoverData.opens i := by
    rw [← hy]
    exact MaxContactReduction.FiniteOpenCoverWithIdeals.disjointUnionMap_summandι_mem C.toCoverData i y
  have h1 : τ.base (C.pullbackFiberToBase.base x)
      = C.toCoverData.disjointUnionMap.base (C.pullbackFiberToTotal.base x) := by
    have h0 : C.pullbackFiberToBase ≫ τ = C.pullbackFiberToTotal ≫ C.projection := Limits.pullback.condition
    have h2 := congrArg (fun f : C.pullbackFiber ⟶ X' => f.base x) h0
    simpa using h2
  rcases C.adapted i with ⟨-, hfar⟩ | ⟨n, ch, S, j, hcard, hjS, hker, hloc⟩
  · exfalso
    refine hfar (C.pullbackFiberToBase.base x) ?_
    rw [h1]
    exact hprojmem
  · have hUaff : IsAffineOpen (C.toCoverData.summandOpen i) :=
      MaxContactReduction.FiniteOpenCoverWithIdeals.isAffineOpen_summandOpen C.toCoverData i (C.isAffine i)
    have hkse : Scheme.Hom.ker C.pullbackFiberToTotal
        = (Scheme.Hom.ker τ).comap C.toCoverData.disjointUnionMap := C.ker_pullbackFiberToTotal
    have hH : restrictIdeal C.toCoverData.iInfImageIdeal (C.toCoverData.summandOpen i) =
        (C.toCoverData.summandEtaleChart i ch).coordIdeal {j} := by
      rw [MaxContactReduction.FiniteOpenCoverWithIdeals.restrictIdeal_iInfImageIdeal_summandOpen C.toCoverData i,
        MaxContactReduction.FiniteOpenCoverWithIdeals.summandEtaleChart_coordIdeal C.toCoverData i ch {j}, hloc]
    have h2 := MaxContactReduction.FiniteOpenCoverWithIdeals.restrictIdeal_comap_disjointUnionMap_summandOpen
      C.toCoverData i (Scheme.Hom.ker τ)
    have h3 := MaxContactReduction.FiniteOpenCoverWithIdeals.summandEtaleChart_coordIdeal C.toCoverData i ch S
    have hZ : restrictIdeal (Scheme.Hom.ker C.pullbackFiberToTotal) (C.toCoverData.summandOpen i) =
        (C.toCoverData.summandEtaleChart i ch).coordIdeal S := by
      rw [hkse, h3]
      exact h2.trans (by rw [hker])
    have hb : C.toCoverData.iInfImageIdeal.subschemeι.base (C.pullbackFiberToHypersurface.base x)
        = C.pullbackFiberToTotal.base x := by
      have h4 := congrArg (fun f : C.pullbackFiber ⟶ C.toCoverData.disjointUnion => f.base x)
        C.pullbackFiberToHypersurface_comp_subschemeι
      simpa using h4
    refine ⟨C.toCoverData.iInfImageIdeal.subschemeι ⁻¹ᵁ C.toCoverData.summandOpen i, ?_,
      n - ({j} : Finset (Fin n)).card,
      (C.toCoverData.summandEtaleChart i ch).restrictToSubscheme hUaff C.toCoverData.iInfImageIdeal {j} hH,
      complEmbPreimage n S j, ?_, ?_⟩
    · show C.toCoverData.iInfImageIdeal.subschemeι.base (C.pullbackFiberToHypersurface.base x) ∈
        C.toCoverData.summandOpen i
      rw [hb]
      exact hmemU
    · rw [card_complEmbPreimage n S j hjS, hcard]
    · rw [C.ker_pullbackFiberToHypersurface]
      exact restrictIdeal_comap_subschemeι_eq_coordIdeal (C.toCoverData.summandEtaleChart i ch)
        hUaff (Scheme.Hom.ker C.pullbackFiberToTotal) C.toCoverData.iInfImageIdeal S j hZ hH

theorem isIso_pullbackFiberToHypersurface_of_eq_one (C : MaximalContactCover p τ I c) [IsClosedImmersion τ] (hc : c = 1) :
    IsIso C.pullbackFiberToHypersurface := by
  have hkse : Scheme.Hom.ker C.pullbackFiberToTotal
      = (Scheme.Hom.ker τ).comap C.toCoverData.disjointUnionMap := C.ker_pullbackFiberToTotal
  have hkey : Scheme.Hom.ker C.pullbackFiberToTotal = C.toCoverData.iInfImageIdeal := by
    rw [hkse]
    refine MaxContactReduction.FiniteOpenCoverWithIdeals.ext_of_comap_summandι C.toCoverData (fun i => ?_)
    have e1 : C.toCoverData.iInfImageIdeal.comap (C.toCoverData.summandι i)
        = C.toCoverData.localIdeal i :=
      MaxContactReduction.FiniteOpenCoverWithIdeals.comap_iInfImageIdeal_summandι C.toCoverData i
    have e2 : ((Scheme.Hom.ker τ).comap C.toCoverData.disjointUnionMap).comap
          (C.toCoverData.summandι i)
        = restrictIdeal (Scheme.Hom.ker τ) (C.toCoverData.opens i) := by
      rw [← Scheme.IdealSheafData.comap_comp,
        MaxContactReduction.FiniteOpenCoverWithIdeals.summandι_comp_disjointUnionMap C.toCoverData i]
    rw [e1, e2]
    rcases C.adapted i with ⟨hloc, hfar⟩ | ⟨n, ch, S, j, hcard, hjS, hker, hloc⟩
    · rw [hloc]
      exact restrictIdeal_ker_eq_top_of_not_mem τ (C.toCoverData.opens i) hfar
    · have hS : S = {j} := by
        have h1 : S.card = 1 := by rw [hcard, hc]
        obtain ⟨a, ha⟩ := Finset.card_eq_one.mp h1
        subst ha
        rw [Finset.mem_singleton] at hjS
        rw [hjS]
      rw [hker, hloc, hS]
  have hker0 : Scheme.Hom.ker C.pullbackFiberToHypersurface = ⊥ := by
    rw [C.ker_pullbackFiberToHypersurface, hkey, C.comap_iInfImageIdeal_subschemeι_eq_bot]
  exact IsClosedImmersion.isIso_iff_ker_eq_bot.mpr hker0

end MaximalContactCover

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.HypersurfaceFiberCodim =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.HypersurfaceScheme =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.HypersurfaceScheme", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.MaximalContactCover\nimport Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.GenericPointImage\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtGenericPoint\nimport Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.ClosedImmersionKrullDim\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.DisjointUnionCover\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.SetTheory.ZFC.PSet\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private def chartOnOpenSubscheme {Y : Scheme.{u}} {k : Type u} [Field k] {q : Y ⟶ Spec (CommRingCat.of k)}
    {V : Y.Opens} {m : ℕ} (c : EtaleChart q V m)
    (hEt : AlgebraicGeometry.Etale ((⊤ : V.toScheme.Opens).ι ≫ c.map)) :
    EtaleChart (V.ι ≫ q) (⊤ : V.toScheme.Opens) m where
  map := (⊤ : V.toScheme.Opens).ι ≫ c.map
  comp_struct := by rw [Category.assoc, c.comp_struct]
  isEtale := hEt

private theorem restrictIdeal_top_coordIdeal {Y : Scheme.{u}} {k : Type u} [Field k]
    {q : Y ⟶ Spec (CommRingCat.of k)} {V : Y.Opens} {m : ℕ} (c : EtaleChart q V m)
    (hEt : AlgebraicGeometry.Etale ((⊤ : V.toScheme.Opens).ι ≫ c.map))
    (S : Finset (Fin m)) :
    restrictIdeal (c.coordIdeal S) (⊤ : V.toScheme.Opens) = (chartOnOpenSubscheme c hEt).coordIdeal S := by
  simp only [restrictIdeal_eq_comap_ι, EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal]
  exact (Scheme.IdealSheafData.comap_comp _ _ _).symm

private theorem false_of_forall_mem_support_of_coordIdeal_singleton {Z : Scheme.{u}} {k : Type u} [Field k]
    (p : Z ⟶ Spec (CommRingCat.of k)) (hZ : IsAffineOpen (⊤ : Z.Opens)) {m : ℕ}
    (c : EtaleChart p (⊤ : Z.Opens) m) (j : Fin m) (D : Z.IdealSheafData)
    (hD : restrictIdeal D (⊤ : Z.Opens) = c.coordIdeal {j})
    (hsupp : ∀ y : ↥Z, y ∈ D.support) (y₀ : ↥Z) : False := by
  have hnzd := coord_mem_nonZeroDivisors hZ c j
  have hno : ∀ y : ↥Z, y ∉ Z.basicOpen (c.coord j) := by
    intro y hy
    have hu := (Z.mem_basicOpen (c.coord j) y trivial).mp hy
    have h1 : stalkIdeal D y ≠ ⊤ := (mem_support_iff_stalkIdeal_ne_top D y).mp (hsupp y)
    apply h1
    rw [stalkIdeal_eq_span_germ_coord p hZ c j D hD y trivial, Ideal.span_singleton_eq_top]
    exact hu
  have hnil : IsNilpotent (c.coord j) := by
    rw [Scheme.isNilpotent_iff_basicOpen_eq_bot_of_isCompact hZ.isCompact]
    refine le_antisymm ?_ bot_le
    intro y hy
    exact absurd hy (hno y)
  obtain ⟨n, hn⟩ := hnil
  have hone : (1 : ↑(Z.presheaf.obj (Opposite.op (⊤ : Z.Opens)))) = 0 :=
    (mem_nonZeroDivisors_iff.mp (pow_mem hnzd n)).2 1 (by rw [one_mul, hn])
  have h1 : stalkIdeal D y₀ ≠ ⊤ := (mem_support_iff_stalkIdeal_ne_top D y₀).mp (hsupp y₀)
  apply h1
  rw [stalkIdeal_eq_span_germ_coord p hZ c j D hD y₀ trivial, Ideal.eq_top_iff_one]
  have hstalk1 : (1 : ↑(Z.presheaf.stalk y₀)) = 0 := by
    have h := congrArg (CommRingCat.Hom.hom (Z.presheaf.germ (⊤ : Z.Opens) y₀ trivial)) hone
    simp at h
  rw [hstalk1]
  exact Submodule.zero_mem _

theorem nonzeroOnComponents_of_locally_eq_coordIdeal {Y : Scheme.{u}} {k : Type u} [Field k]
    (q : Y ⟶ Spec (CommRingCat.of k)) (K : Y.IdealSheafData)
    (hfin : (irreducibleComponents ↥Y).Finite)
    (hloc : ∀ y : ↥Y, y ∈ K.support → ∃ (U : Y.Opens) (_ : y ∈ U) (m : ℕ)
      (ch : EtaleChart q U m) (S : Finset (Fin m)),
      S.Nonempty ∧ restrictIdeal K U = ch.coordIdeal S) :
    NonzeroOnComponents K := by
  rw [nonzeroOnComponents_iff]
  intro T hT hTsub
  have hTirr : IsIrreducible T := hT.1
  have hOfin : (irreducibleComponents ↥Y \ {T}).Finite := hfin.subset Set.sdiff_subset
  have hOclosed : IsClosed (⋃₀ (irreducibleComponents ↥Y \ {T})) := by
    rw [Set.sUnion_eq_biUnion]
    exact Set.Finite.isClosed_biUnion hOfin
      (fun s hs => isClosed_of_mem_irreducibleComponents s hs.1)
  have hOsub : ∀ z : ↥Y, z ∉ (⋃₀ (irreducibleComponents ↥Y \ {T})) → z ∈ T := by
    intro z hz
    by_cases hEq : irreducibleComponent z = T
    · rw [← hEq]
      exact mem_irreducibleComponent
    · exact (hz (Set.mem_sUnion.mpr ⟨irreducibleComponent z,
        ⟨irreducibleComponent_mem_irreducibleComponents z,
          fun hmem => hEq (Set.mem_singleton_iff.mp hmem)⟩,
        mem_irreducibleComponent⟩)).elim
  obtain ⟨x, hxT, hxO⟩ :
      ∃ x : ↥Y, x ∈ T ∧ x ∉ (⋃₀ (irreducibleComponents ↥Y \ {T})) := by
    by_contra hcon
    push Not at hcon
    have hsub : T ⊆ ⋃₀ ((hOfin.toFinset : Finset (Set ↥Y)) : Set (Set ↥Y)) := by
      intro t ht
      rw [Set.Finite.coe_toFinset]
      exact hcon t ht
    obtain ⟨C, hCmem, hTsubC⟩ := isIrreducible_iff_sUnion_isClosed.mp hTirr hOfin.toFinset
      (fun C hC => isClosed_of_mem_irreducibleComponents C (hOfin.mem_toFinset.mp hC).1) hsub
    have hC := hOfin.mem_toFinset.mp hCmem
    exact hC.2 (Set.mem_singleton_iff.mpr (Set.Subset.antisymm (hT.2 hC.1.1 hTsubC) hTsubC))
  obtain ⟨U, hxU, m, ch, S, hSne, hKU⟩ := hloc x (hTsub hxT)
  obtain ⟨j, hjS⟩ := hSne
  have hWopen : IsOpen ((U : Set ↥Y) ∩ (⋃₀ (irreducibleComponents ↥Y \ {T}))ᶜ) :=
    U.isOpen.inter hOclosed.isOpen_compl
  obtain ⟨V, hVaff, hxV, hVle⟩ := exists_isAffineOpen_mem_and_subset
    (show x ∈ (⟨(U : Set ↥Y) ∩ (⋃₀ (irreducibleComponents ↥Y \ {T}))ᶜ, hWopen⟩ : Y.Opens) from
      ⟨hxU, hxO⟩)
  have hVsub : (V : Set ↥Y) ⊆ ((U : Set ↥Y) ∩ (⋃₀ (irreducibleComponents ↥Y \ {T}))ᶜ) := hVle
  have hVU : V ≤ U := fun z hz => (hVsub hz).1
  have hVdisj : ∀ z : ↥Y, z ∈ V → z ∉ (⋃₀ (irreducibleComponents ↥Y \ {T})) :=
    fun z hz => (hVsub hz).2
  let cV : EtaleChart q V m := {
    map := Y.homOfLE hVU ≫ ch.map
    comp_struct := by rw [Category.assoc, ch.comp_struct, ← Category.assoc, Scheme.homOfLE_ι]
    isEtale := by
      have := ch.isEtale
      infer_instance }
  have hKV : restrictIdeal K V = cV.coordIdeal S := by
    have h' : K.comap U.ι = (coordSubspaceIdeal k m S).comap ch.map := by
      rw [← restrictIdeal_eq_comap_ι, hKU, EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal]
    rw [restrictIdeal_eq_comap_ι, EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal]
    change K.comap V.ι = (coordSubspaceIdeal k m S).comap (Y.homOfLE hVU ≫ ch.map)
    rw [Scheme.IdealSheafData.comap_comp, ← h', ← Scheme.IdealSheafData.comap_comp,
      Scheme.homOfLE_ι]
  have : IsAffine V.toScheme := hVaff
  have haffineTop : IsAffineOpen (⊤ : V.toScheme.Opens) := isAffineOpen_top V.toScheme
  have hEt : AlgebraicGeometry.Etale ((⊤ : V.toScheme.Opens).ι ≫ cV.map) := by
    have : AlgebraicGeometry.Etale cV.map := cV.isEtale
    infer_instance
  have hmemV : ∀ y : ↥V.toScheme, (V.ι).base y ∈ V := by
    intro y
    have h : ((V.ι).base y) ∈ (V : Set ↥Y) := by
      rw [← Scheme.Opens.range_ι V]
      exact ⟨y, rfl⟩
    exact h
  have hsupp : ∀ y : ↥V.toScheme,
      y ∈ (cV.coordIdeal ({j} : Finset (Fin m))).support := by
    intro y
    have hyV : (V.ι).base y ∈ V := hmemV y
    have hyT : (V.ι).base y ∈ T := hOsub _ (hVdisj _ hyV)
    have hmem : (V.ι).base y ∈ (K.support : Set ↥Y) := hTsub hyT
    have h2 : y ∈ ((K.comap V.ι).support : Set ↥V.toScheme) := by
      rw [support_comap_eq V.ι K]
      exact hmem
    have h3 : y ∈ (cV.coordIdeal S).support := by
      rw [← hKV, restrictIdeal_eq_comap_ι]
      exact h2
    rw [← one_le_orderAt_iff_mem_support] at h3 ⊢
    exact le_trans h3 (orderAt_le_of_le
      (cV.coordIdeal_mono (Finset.singleton_subset_iff.mpr hjS)) y)
  have y₀ : ↥V.toScheme := (⟨x, hxV⟩ : ↥V)
  exact false_of_forall_mem_support_of_coordIdeal_singleton (V.ι ≫ q) haffineTop (chartOnOpenSubscheme cV hEt) j
    (cV.coordIdeal ({j} : Finset (Fin m)))
    (restrictIdeal_top_coordIdeal cV hEt ({j} : Finset (Fin m))) hsupp y₀

namespace MaximalContactCover

variable {X X' : Scheme.{u}} {k : Type u} [Field k] {p : X' ⟶ Spec (CommRingCat.of k)}
  {τ : X ⟶ X'} {I : X.IdealSheafData} {c : ℕ}

abbrev hypersurfaceScheme (C : MaximalContactCover p τ I c) : Scheme.{u} :=
  C.toCoverData.iInfImageIdeal.subscheme

abbrev hypersurfaceStructureMap (C : MaximalContactCover p τ I c) :
    C.hypersurfaceScheme ⟶ Spec (CommRingCat.of k) :=
  C.toCoverData.iInfImageIdeal.subschemeι ≫ C.projection ≫ p

theorem smooth_hypersurfaceStructureMap (C : MaximalContactCover p τ I c) :
    AlgebraicGeometry.Smooth C.hypersurfaceStructureMap :=
  ((isSmoothDivisor_iff (C.projection ≫ p) C.toCoverData.iInfImageIdeal).mp
    C.isSmoothDivisor_iInfImageIdeal).2

theorem nonzeroOnComponents_iInfImageIdeal (C : MaximalContactCover p τ I c)
    [TopologicalSpace.NoetherianSpace ↥C.toCoverData.disjointUnion] :
    NonzeroOnComponents C.toCoverData.iInfImageIdeal := by
  refine nonzeroOnComponents_of_locally_eq_coordIdeal (C.projection ≫ p) C.toCoverData.iInfImageIdeal
    TopologicalSpace.NoetherianSpace.finite_irreducibleComponents ?_
  intro y hy
  obtain ⟨i, hi⟩ := C.toCoverData.exists_mem_summandOpen y
  rcases C.hypersurface i with htop | ⟨n, ch, j, hch⟩
  · exfalso
    have h1 : restrictIdeal C.toCoverData.iInfImageIdeal (C.toCoverData.summandOpen i) = ⊤ := by
      rw [MaxContactReduction.FiniteOpenCoverWithIdeals.restrictIdeal_iInfImageIdeal_summandOpen, htop]
      simp
    exact notMem_support_of_mem_opens_of_restrictIdeal_eq_top _ _ h1 y hi hy
  · let D := C.toCoverData
    let c : EtaleChart (C.projection ≫ p) (D.summandOpen i) n := {
      map := (D.summandIso i).inv ≫ ch.map
      comp_struct := by
        rw [Category.assoc, ch.comp_struct, ← Category.assoc,
          ← MaxContactReduction.FiniteOpenCoverWithIdeals.summandOpen_ι_comp_disjointUnionMap,
          Category.assoc]
      isEtale := by
        have := ch.isEtale
        infer_instance }
    refine ⟨D.summandOpen i, hi, n, c, {j}, ⟨j, Finset.mem_singleton_self j⟩, ?_⟩
    rw [MaxContactReduction.FiniteOpenCoverWithIdeals.restrictIdeal_iInfImageIdeal_summandOpen, hch,
      EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal, EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal]
    change _ = (coordSubspaceIdeal k n {j}).comap ((D.summandIso i).inv ≫ ch.map)
    rw [Scheme.IdealSheafData.comap_comp]

theorem ker_pullbackFiberToHypersurface_le_idealOnHypersurface (C : MaximalContactCover p τ I c) [IsClosedImmersion τ] :
    Scheme.Hom.ker C.pullbackFiberToHypersurface ≤ C.idealOnHypersurface := by
  rw [C.idealOnHypersurface_eq_imageIdealSheaf]
  exact ker_le_map_idealSheaf C.pullbackFiberToHypersurface (I.comap C.pullbackFiberToBase)

theorem support_idealOnHypersurface_subset_support_ker (C : MaximalContactCover p τ I c)
    [IsClosedImmersion τ] :
    (C.idealOnHypersurface.support : Set ↥C.hypersurfaceScheme) ⊆
      ((Scheme.Hom.ker C.pullbackFiberToHypersurface).support : Set ↥C.hypersurfaceScheme) := by
  intro x hx
  have hx' : x ∈ C.idealOnHypersurface.support := hx
  rw [mem_support_iff_stalkIdeal_ne_top] at hx'
  show x ∈ (Scheme.Hom.ker C.pullbackFiberToHypersurface).support
  rw [mem_support_iff_stalkIdeal_ne_top]
  intro hker
  have h1 := stalkIdeal_mono (ker_pullbackFiberToHypersurface_le_idealOnHypersurface C) x
  rw [hker, top_le_iff] at h1
  exact hx' h1

theorem nonzeroOnComponents_ker_pullbackFiberToHypersurface (C : MaximalContactCover p τ I c) [IsClosedImmersion τ]
    [TopologicalSpace.NoetherianSpace ↥C.hypersurfaceScheme]
    (hloc : ∀ x : ↥C.pullbackFiber, ∃ (W : C.hypersurfaceScheme.Opens)
      (_ : C.pullbackFiberToHypersurface.base x ∈ W) (m : ℕ) (ch : EtaleChart C.hypersurfaceStructureMap W m)
      (S : Finset (Fin m)),
      S.Nonempty ∧ restrictIdeal (Scheme.Hom.ker C.pullbackFiberToHypersurface) W = ch.coordIdeal S) :
    NonzeroOnComponents (Scheme.Hom.ker C.pullbackFiberToHypersurface) := by
  refine nonzeroOnComponents_of_locally_eq_coordIdeal C.hypersurfaceStructureMap (Scheme.Hom.ker C.pullbackFiberToHypersurface)
    TopologicalSpace.NoetherianSpace.finite_irreducibleComponents ?_
  intro y hy
  obtain ⟨x, hx⟩ : ∃ x : ↥C.pullbackFiber, C.pullbackFiberToHypersurface.base x = y := by
    have hr : ((Scheme.Hom.ker C.pullbackFiberToHypersurface).support : Set ↥C.hypersurfaceScheme)
        = Set.range (⇑C.pullbackFiberToHypersurface) := by
      rw [Scheme.Hom.support_ker]
      exact (AlgebraicGeometry.IsClosedImmersion.isClosedEmbedding
        C.pullbackFiberToHypersurface).isClosed_range.closure_eq
    have hy' : y ∈ Set.range (⇑C.pullbackFiberToHypersurface) := by
      rw [← hr]; exact hy
    exact hy'
  obtain ⟨W, hW, m, ch, S, hS, hres⟩ := hloc x
  exact ⟨W, hx ▸ hW, m, ch, S, hS, hres⟩

theorem nonzeroOnComponents_idealOnHypersurface (C : MaximalContactCover p τ I c) [IsClosedImmersion τ]
    [TopologicalSpace.NoetherianSpace ↥C.hypersurfaceScheme]
    (hloc : ∀ x : ↥C.pullbackFiber, ∃ (W : C.hypersurfaceScheme.Opens)
      (_ : C.pullbackFiberToHypersurface.base x ∈ W) (m : ℕ) (ch : EtaleChart C.hypersurfaceStructureMap W m)
      (S : Finset (Fin m)),
      S.Nonempty ∧ restrictIdeal (Scheme.Hom.ker C.pullbackFiberToHypersurface) W = ch.coordIdeal S) :
    NonzeroOnComponents C.idealOnHypersurface := by
  have hker := C.nonzeroOnComponents_ker_pullbackFiberToHypersurface hloc
  rw [nonzeroOnComponents_iff] at hker ⊢
  intro T hT hTsub
  exact hker T hT (hTsub.trans (C.support_idealOnHypersurface_subset_support_ker))

theorem krullDimSucc_hypersurfaceScheme_lt (C : MaximalContactCover p τ I c)
    [AlgebraicGeometry.LocallyOfFiniteType p]
    [TopologicalSpace.NoetherianSpace ↥C.toCoverData.disjointUnion]
    [Nonempty ↥C.hypersurfaceScheme] :
    krullDimSucc C.hypersurfaceScheme < krullDimSucc C.toCoverData.disjointUnion := by
  have : AlgebraicGeometry.LocallyOfFiniteType (C.projection ≫ p) := C.locallyOfFiniteType_projection_comp
  have : AlgebraicGeometry.QuasiCompact (C.projection ≫ p) := C.quasiCompact_projection_comp
  have hker : NonzeroOnComponents (Scheme.Hom.ker C.toCoverData.iInfImageIdeal.subschemeι) := by
    rw [Scheme.IdealSheafData.ker_subschemeι]
    exact C.nonzeroOnComponents_iInfImageIdeal
  exact krullDimSucc_lt_of_isClosedImmersion_of_nonzeroOnComponents (C.projection ≫ p)
    C.toCoverData.iInfImageIdeal.subschemeι hker

end MaximalContactCover

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.HypersurfaceScheme =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.IsoBlowupPushforward =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.IsoBlowupPushforward", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceRelations\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.IsomorphismTransport\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry Opposite

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem isIso_subschemeι_comap_bot {X X' : Scheme.{u}} (π : X' ⟶ X) :
    IsIso ((⊥ : X.IdealSheafData).comap π).subschemeι := by
  rw [show (⊥ : X.IdealSheafData).comap π = ⊥ from by simp]
  infer_instance

theorem ker_preimage_ι_comp_of_isIso {X Y : Scheme.{u}} (f : X ⟶ Y) [IsIso f] (U : Y.Opens) :
    ((f ⁻¹ᵁ U).ι ≫ f).ker = U.ι.ker := by
  have : IsIso (AlgebraicGeometry.morphismRestrict f U) := inferInstance
  rw [← (isPullback_morphismRestrict f U).w]
  exact Scheme.Hom.ker_comp_of_isIso ..

theorem section_eq_zero_of_locally_zero {X : Scheme.{u}} (U : X.Opens)
    (s : X.presheaf.obj (op U))
    (h : ∀ x ∈ U, ∃ V : X.Opens, ∃ hV : V ≤ U, x ∈ V ∧
      X.presheaf.map (homOfLE hV).op s = 0) :
    s = 0 := by
  apply TopCat.Presheaf.section_ext X.sheaf U
  intro x hx
  obtain ⟨V, hV, hxV, hs⟩ := h x hx
  have h1 : X.presheaf.germ V x hxV (X.presheaf.map (homOfLE hV).op s)
      = X.presheaf.germ U x hx s := X.presheaf.germ_res_apply (homOfLE hV) x hxV s
  rw [hs, map_zero] at h1
  show X.presheaf.germ U x hx s = X.presheaf.germ U x hx 0
  rw [map_zero]
  exact h1.symm

private theorem map_homOfLE_map_homOfLE {X : Scheme.{u}} {V V' V'' : X.Opens} (h1 : V' ≤ V) (h2 : V'' ≤ V')
    (s : Γ(X, V)) :
    X.presheaf.map (homOfLE h2).op (X.presheaf.map (homOfLE h1).op s)
      = X.presheaf.map (homOfLE (h2.trans h1)).op s := by
  have hcomp : X.presheaf.map (homOfLE h1).op ≫ X.presheaf.map (homOfLE h2).op
      = X.presheaf.map (homOfLE (h2.trans h1)).op := by
    rw [← Functor.map_comp]
    rfl
  exact congrArg (fun φ : Γ(X, V) ⟶ Γ(X, V'') => (ConcreteCategory.hom φ) s) hcomp

private theorem map_eq_zero_of_app_ι_eq_zero {X : Scheme.{u}} (W V V' : X.Opens) (s : Γ(X, V))
    (hs : (W.ι.app V).hom s = 0) (h1 : V' ≤ V) (h2 : ∀ y : ↥X, y ∈ V' → y ∈ W) :
    X.presheaf.map (homOfLE h1).op s = 0 := by
  have hT : W.ι ''ᵁ W.ι ⁻¹ᵁ V ≤ V := by
    rintro y ⟨z, hz, rfl⟩
    exact hz
  have hle : V' ≤ W.ι ''ᵁ W.ι ⁻¹ᵁ V := by
    intro y hy
    exact ⟨⟨y, h2 y hy⟩, h1 hy, rfl⟩
  have hzero : X.presheaf.map (homOfLE hT).op s = 0 := by
    rw [Scheme.Opens.ι_app] at hs
    exact hs
  rw [← map_homOfLE_map_homOfLE hT hle s, hzero, map_zero]

private theorem algebraMap_basicOpen {X : Scheme.{u}} {U : X.Opens} (f : Γ(X, U)) (t : Γ(X, U)) :
    algebraMap Γ(X, U) Γ(X, X.basicOpen f) t
      = X.presheaf.map (homOfLE (X.basicOpen_le f)).op t := rfl

private theorem notMem_support_of_mem_basicOpen {X : Scheme.{u}} (I : X.IdealSheafData) (U : X.affineOpens)
    (f : Γ(X, U.1)) (hf : f ∈ I.ideal U) (y : ↥X) (hy : y ∈ X.basicOpen f) :
    y ∉ I.support := by
  intro hmem
  have h1 : y ∈ I.supportSet := hmem
  rw [Scheme.IdealSheafData.mem_supportSet_iff] at h1
  have h2 := h1 U
  rw [Scheme.mem_zeroLocus_iff] at h2
  exact h2 f hf hy

private theorem map_basicOpen_eq_zero_of_app_ι_eq_zero {X : Scheme.{u}} (W V U₀ : X.Opens)
    (hU₀ : IsAffineOpen U₀)
    (s : Γ(X, V)) (hs : (W.ι.app V).hom s = 0)
    (f : Γ(X, U₀)) (hf : f ∈ nonZeroDivisors Γ(X, U₀))
    (hWf : ∀ y : ↥X, y ∈ X.basicOpen f → y ∈ W)
    (b : Γ(X, U₀)) (hbV : X.basicOpen b ≤ V) :
    X.presheaf.map (homOfLE hbV).op s = 0 := by
  have hAaff : IsAffineOpen (X.basicOpen b) := hU₀.basicOpen b
  have := hU₀.isLocalization_basicOpen b
  have hAU₀ : X.basicOpen b ≤ U₀ := X.basicOpen_le b
  have hgnzd : X.presheaf.map (homOfLE hAU₀).op f ∈ nonZeroDivisors Γ(X, X.basicOpen b) := by
    have hq : X.presheaf.map (homOfLE hAU₀).op f
        = algebraMap Γ(X, U₀) Γ(X, X.basicOpen b) f := rfl
    rw [hq]
    exact IsLocalization.nonZeroDivisors_le_comap (Submonoid.powers b) Γ(X, X.basicOpen b) hf
  have hbg : X.basicOpen (X.presheaf.map (homOfLE hAU₀).op f)
      = X.basicOpen b ⊓ X.basicOpen f := by
    rw [Scheme.basicOpen_res]
  have hgV : X.basicOpen (X.presheaf.map (homOfLE hAU₀).op f) ≤ V :=
    (X.basicOpen_le _).trans hbV
  have hres : X.presheaf.map (homOfLE hgV).op s = 0 := by
    refine map_eq_zero_of_app_ι_eq_zero W V _ s hs hgV ?_
    intro y hy
    rw [hbg] at hy
    exact hWf y hy.2
  have := hAaff.isLocalization_basicOpen (X.presheaf.map (homOfLE hAU₀).op f)
  have hres' : algebraMap Γ(X, X.basicOpen b)
      Γ(X, X.basicOpen (X.presheaf.map (homOfLE hAU₀).op f))
      (X.presheaf.map (homOfLE hbV).op s) = 0 := by
    rw [algebraMap_basicOpen, map_homOfLE_map_homOfLE]
    exact hres
  obtain ⟨m, hm⟩ := (IsLocalization.map_eq_zero_iff
    (Submonoid.powers (X.presheaf.map (homOfLE hAU₀).op f))
    Γ(X, X.basicOpen (X.presheaf.map (homOfLE hAU₀).op f))
    (X.presheaf.map (homOfLE hbV).op s)).mp hres'
  obtain ⟨n, hn⟩ := m.2
  have hmem : (m : Γ(X, X.basicOpen b)) ∈ nonZeroDivisors Γ(X, X.basicOpen b) := by
    rw [← hn]
    exact pow_mem hgnzd n
  refine (mem_nonZeroDivisors_iff.mp hmem).1 (X.presheaf.map (homOfLE hbV).op s) ?_
  exact hm

theorem _root_.FunctorialResolution.Blowup.IsLocallyGeneratedByNonZeroDivisor.ker_supportCompl_ι_eq_bot {X : Scheme.{u}} {I : X.IdealSheafData}
    (h : FunctorialResolution.Blowup.IsLocallyGeneratedByNonZeroDivisor I) :
    (Scheme.Opens.ι (X := X) I.support.compl).ker = ⊥ := by
  refine le_antisymm (fun U => ?_) bot_le
  intro s hs
  have hs' : s ∈ RingHom.ker ((Scheme.Opens.ι (X := X) I.support.compl).app U.1).hom :=
    Scheme.IdealSheafData.ideal_ofIdeals_le _ U hs
  rw [show (⊥ : X.IdealSheafData).ideal U = ⊥ from by simp, Ideal.mem_bot]
  refine EmbeddedResolution.section_eq_zero_of_locally_zero U.1 s ?_
  intro x hx
  obtain ⟨U₀, f, hxU₀, hfnzd, hIf⟩ := h x
  obtain ⟨a, b, hab, hxa⟩ := exists_basicOpen_le_affine_inter U.2 U₀.2 x ⟨hx, hxU₀⟩
  have hbV : X.basicOpen b ≤ U.1 := hab ▸ X.basicOpen_le a
  refine ⟨X.basicOpen b, hbV, hab ▸ hxa, ?_⟩
  refine _root_.FunctorialResolution.EmbeddedResolution.map_basicOpen_eq_zero_of_app_ι_eq_zero I.support.compl U.1 U₀.1 U₀.2 s
    (RingHom.mem_ker.mp hs') f hfnzd ?_ b hbV
  intro y hy
  show y ∉ I.support
  refine _root_.FunctorialResolution.EmbeddedResolution.notMem_support_of_mem_basicOpen I U₀ f ?_ y hy
  rw [hIf]
  exact Ideal.mem_span_singleton_self f

theorem strictTransform_bot_of_isBlowupAlongIdealSheaf {X X' : Scheme.{u}} {π : X' ⟶ X}
    {I : X.IdealSheafData} (h : Blowup.IsBlowupAlongIdealSheaf π I) :
    Blowup.strictTransform π I (⊥ : X.IdealSheafData) = (⊥ : X'.IdealSheafData) := by
  have := isIso_subschemeι_comap_bot π
  rw [Blowup.strictTransform_eq_ker, Blowup.strictTransformImmersion_eq, Blowup.strictTransformOpens_eq]
  exact (ker_preimage_ι_comp_of_isIso _ _).trans h.1.ker_supportCompl_ι_eq_bot

theorem IsPushforwardBlowupSeq.of_isStrictPullback_of_isIso {X' X : Scheme.{u}} (φ : X' ⟶ X)
    [IsIso φ] [IsClosedImmersion φ] {B' : SequenceOfBlowups X'} {B : SequenceOfBlowups X}
    (h : IsStrictPullbackBlowupSeq φ B' B) : IsPushforwardBlowupSeq φ B' B := by
  obtain ⟨hlen, σ, hσ0, hsq, hc⟩ := h
  have hiso : ∀ (i : ℕ) (hi : i ≤ B'.length), IsIso (σ i hi) := by
    intro i
    induction i with
    | zero =>
        intro hi
        have hz : σ 0 hi = B'.isoZero.hom ≫ φ ≫ B.isoZero.inv := by
          rw [← Category.assoc, ← hσ0]
          simp
        rw [hz]
        infer_instance
    | succ n ih =>
        intro hi
        have hn : n < B'.length := hi
        have := ih hn.le
        exact (hsq n hn).isIso_fst_of_isIso
  refine ⟨hlen, σ, ?_, hσ0, fun i hi => (hsq i hi).w, ?_, ?_⟩
  · intro i hi
    have := hiso i hi
    infer_instance
  · intro i hi
    have := hiso i hi.le
    rw [hc i hi, imageIdealSheaf_comap]
  · intro i hi
    have hi' : i < B.length := hlen ▸ hi
    have := hiso i hi.le
    have := hiso (i + 1) hi
    rw [Scheme.Hom.ker_eq_bot_of_isIso, Scheme.Hom.ker_eq_bot_of_isIso,
      strictTransform_bot_of_isBlowupAlongIdealSheaf (B.isBlowupAlongIdealSheaf_blowupMorphism i hi')]

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.IsoBlowupPushforward =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.ClosedImmersionCommutation =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.ClosedImmersionCommutation", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.MaximalContactCover\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.PrincipalizationConstruction\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderPullback\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsNil\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.CanonicalPrincipalization\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.ClosedImmersionKrullDim\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.DisjointUnionCover\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.HypersurfaceFiberCodim\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.HypersurfaceScheme\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.IsoBlowupPushforward\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.PushforwardComposition\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.PushforwardFlatBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.PushforwardUniqueness\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IrreducibleComponentsAlongSequence\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.IsomorphismTransport\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.NoetherianBlowup\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatDescent\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothPullbackAdmissible\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupClosedSubscheme\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrongResolution.SequenceIsomorphism\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

namespace FunctorialResolution.EmbeddedResolution

def AdmissibilityStableUnderSmoothPullback : Prop :=
  ∀ (T : MarkedIdealWithBoundary.{u}), T.IsAdmissible → ∀ (Y : Scheme.{u})
      (q : Y ⟶ Spec (CommRingCat.of T.base)) (h : Y ⟶ T.scheme)
      [AlgebraicGeometry.Smooth h] [AlgebraicGeometry.QuasiCompact q],
      h ≫ T.structMap = q → (T.pullbackAlong Y q h).IsAdmissible

theorem isAdmissible_pullbackAlong_of_smooth : AdmissibilityStableUnderSmoothPullback.{u} := by
  intro T hV Y q h hs hqc hq
  have := hs
  have := hqc
  exact MarkedIdealWithBoundary.isAdmissible_pullbackAlong_of_smooth T hV Y q h hq

private theorem maxOrderReduction_outputLevelData_eq_markedBlowupSeq (rules : PrincipalizationRules.{u}) (k : Type u) [Field k]
    (X : Scheme.{u}) (p : X ⟶ Spec (CommRingCat.of k)) (I : X.IdealSheafData)
    (E : List X.IdealSheafData) (N : ℕ) (h : krullDimSucc X ≤ N) :
    (rules.outputLevelData N).maxOrderRed (markedTripleOrderOne k X p I E) = rules.markedBlowupSeq k X p I E :=
  rules.outputLevelData_maxOrderReduction_eq_at_dim (markedTripleOrderOne k X p I E) h

private theorem ofSequenceOfBlowups_toSequenceOfBlowups_isomorphic {X : Scheme.{u}} (s : SequenceOfBlowups X) :
    (BlowupSequenceData.ofSequenceOfBlowups s).toSequenceOfBlowups.Isomorphic s := by
  refine ⟨rfl, fun i _ => Iso.refl _, ?_, ?_, ?_⟩
  · exact Category.id_comp _
  · intro i hi
    simp only [BlowupSequenceData.toSequenceOfBlowups_blowupMorphism, BlowupSequenceData.ofSequenceOfBlowups_blowupMorphism, Iso.refl_hom]
    exact (Category.id_comp (s.transitionMapSucc i)).trans (Category.comp_id (s.transitionMapSucc i)).symm
  · intro i hi
    exact Scheme.IdealSheafData.comap_id _

private theorem isPushforwardSequenceOfBlowups_congr_hom {S X : Scheme.{u}} {f g : S ⟶ X}
    [AlgebraicGeometry.IsClosedImmersion f] [AlgebraicGeometry.IsClosedImmersion g]
    (h : f = g) {BS : SequenceOfBlowups S} {Bs : SequenceOfBlowups X}
    (hp : IsPushforwardBlowupSeq f BS Bs) : IsPushforwardBlowupSeq g BS Bs := by
  subst h
  exact hp

private theorem isLocallyNoetherian_schemeAt {X : Scheme.{u}} (s : SequenceOfBlowups X)
    [AlgebraicGeometry.IsNoetherian X] (i : ℕ) (hi : i ≤ s.length) :
    AlgebraicGeometry.IsLocallyNoetherian (s.schemeAt i) := by
  have := isNoetherian_schemeAt s i hi
  infer_instance

private theorem nonzeroOnComponents_ker_of_hasEtaleCoordCodim {X X' : Scheme.{u}} {k : Type u} [Field k]
    (p : X' ⟶ Spec (CommRingCat.of k)) (τ : X ⟶ X')
    [AlgebraicGeometry.IsClosedImmersion τ] [AlgebraicGeometry.IsNoetherian X'] {c : ℕ}
    (hc : 1 ≤ c) (hcod : HasEtaleCoordCodim p τ c) :
    NonzeroOnComponents (Scheme.Hom.ker τ) := by
  refine nonzeroOnComponents_of_locally_eq_coordIdeal p (Scheme.Hom.ker τ)
    TopologicalSpace.NoetherianSpace.finite_irreducibleComponents ?_
  intro y hy
  have hsupp := Scheme.Hom.support_ker τ
  have hy' : y ∈ closure (Set.range (⇑τ)) := by
    rw [← hsupp]
    exact hy
  have hcl : IsClosed (Set.range (⇑τ)) :=
    (AlgebraicGeometry.Scheme.Hom.isClosedEmbedding τ).isClosed_range
  rw [hcl.closure_eq] at hy'
  obtain ⟨x, rfl⟩ := hy'
  obtain ⟨U, hxU, mm, ch, S, hcard, heq⟩ := hcod x
  exact ⟨U, hxU, mm, ch, S, Finset.card_pos.mp (by omega), heq⟩

namespace MaximalContactCover

variable {X X' : Scheme.{u}} {k : Type u} [Field k] {p : X' ⟶ Spec (CommRingCat.of k)}
  {τ : X ⟶ X'} {I : X.IdealSheafData} {c : ℕ}

theorem isNoetherian_disjointUnion [AlgebraicGeometry.LocallyOfFiniteType p]
    (C : MaximalContactCover p τ I c) :
    AlgebraicGeometry.IsNoetherian C.toCoverData.disjointUnion :=
  isNoetherian_of_locallyOfFiniteType (C.projection ≫ p)

theorem isNoetherian_subscheme_iInfImageIdeal [AlgebraicGeometry.LocallyOfFiniteType p]
    (C : MaximalContactCover p τ I c) :
    AlgebraicGeometry.IsNoetherian C.toCoverData.iInfImageIdeal.subscheme := by
  have := isNoetherian_disjointUnion C
  exact isNoetherian_of_locallyOfFiniteType C.toCoverData.iInfImageIdeal.subschemeι

end MaximalContactCover

private def IsClosedEmbeddingCompatibleInCodim (rules : PrincipalizationRules.{u}) (c : ℕ) : Prop :=
  ∀ (k : Type u) [Field k], CharZero k → ∀ (X X' : Scheme.{u})
    (p : X ⟶ Spec (CommRingCat.of k)) (p' : X' ⟶ Spec (CommRingCat.of k)) (j : X ⟶ X')
    [AlgebraicGeometry.IsClosedImmersion j],
    AlgebraicGeometry.Smooth p → AlgebraicGeometry.LocallyOfFiniteType p →
    AlgebraicGeometry.QuasiCompact p → AlgebraicGeometry.Smooth p' →
    AlgebraicGeometry.LocallyOfFiniteType p' → AlgebraicGeometry.QuasiCompact p' →
    j ≫ p' = p → 1 ≤ c → HasEtaleCoordCodim p' j c →
    ∀ I : X.IdealSheafData, NonzeroOnComponents I → NonzeroOnComponents (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) →
      IsPushforwardBlowupSeq j (rules.markedBlowupSeq k X p I []).toSequenceOfBlowups
        (rules.markedBlowupSeq k X' p' (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) []).toSequenceOfBlowups

private theorem commutesWithClosedImmersion_forall_codim (rules : PrincipalizationRules.{u}) (hB : rules.ReducesInductivelyOnDimension)
    (hpv : AdmissibilityStableUnderSmoothPullback.{u}) : ∀ c : ℕ, IsClosedEmbeddingCompatibleInCodim rules c := by
  intro c
  induction c with
  | zero =>
      intro k _ _ X X' p p' j _ _ _ _ _ _ _ _ hc
      exact absurd hc (by omega)
  | succ c' ih =>
      intro k _ hcz X X' p p' j hji hsm hft hqc hsm' hft' hqc' hjp hc hcod I hI hIim
      have := hcz
      have := hsm
      have := hft
      have := hqc
      have := hsm'
      have := hft'
      have := hqc'
      have hNX : AlgebraicGeometry.IsNoetherian X := isNoetherian_of_locallyOfFiniteType p
      have hNX' : AlgebraicGeometry.IsNoetherian X' := isNoetherian_of_locallyOfFiniteType p'
      have hvX : (markedTripleOrderOne k X p I []).IsAdmissible :=
        markedTripleOrderOne_isAdmissible k X p I hI [] (inStrictNormalCrossingPosition_nil p)
      have hvX' : (markedTripleOrderOne k X' p' (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) []).IsAdmissible :=
        markedTripleOrderOne_isAdmissible k X' p' (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) hIim [] (inStrictNormalCrossingPosition_nil p')
      rcases isEmpty_or_nonempty ↥X with hXe | hXne
      · have := hXe
        have hIsub : IsEmpty ↥I.subscheme := Function.isEmpty (fun y => I.subschemeι y)
        have himg : _root_.FunctorialResolution.Blowup.schemeImageIdeal j I = ⊤ := by
          rw [Scheme.IdealSheafData.eq_top_iff_support_eq_empty, imageIdealSheaf_eq_ker j I,
            Scheme.Hom.support_ker (I.subschemeι ≫ j), Set.range_eq_empty, closure_empty]
        have hcs1 : orderAtLeastLocus I 1 = (∅ : Set ↥X) := Set.eq_empty_of_isEmpty _
        have hcs2 : orderAtLeastLocus (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) 1 = (∅ : Set ↥X') := by
          rw [himg]
          exact orderAtLeastLocus_top_eq_empty 1 le_rfl
        have hspec := rules.isMaxOrderReduction_outputLevelData hB (krullDimSucc X + krullDimSucc X')
        have h1 := hspec.trivial_of_coSupport_empty (markedTripleOrderOne k X p I []) hvX
          (show krullDimSucc X ≤ krullDimSucc X + krullDimSucc X' by omega) hcs1
        have h2 := hspec.trivial_of_coSupport_empty
          (markedTripleOrderOne k X' p' (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) []) hvX'
          (show krullDimSucc X' ≤ krullDimSucc X + krullDimSucc X' by omega) hcs2
        rw [maxOrderReduction_outputLevelData_eq_markedBlowupSeq rules k X p I [] (krullDimSucc X + krullDimSucc X')
          (show krullDimSucc X ≤ krullDimSucc X + krullDimSucc X' by omega)] at h1
        rw [maxOrderReduction_outputLevelData_eq_markedBlowupSeq rules k X' p' (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) [] (krullDimSucc X + krullDimSucc X')
          (show krullDimSucc X' ≤ krullDimSucc X + krullDimSucc X' by omega)] at h2
        exact IsPushforwardBlowupSeq.of_length_eq_zero j _ _ h1 h2
      · have hch : HasLocalEtaleCharts p' := by
          intro y
          obtain ⟨U, mm, hyU, haff, hne⟩ := exists_etaleChart p' y
          exact ⟨U, hyU, mm, hne⟩
        obtain ⟨C⟩ := nonempty_maximalContactCover p' j I (c' + 1) hc hcod hch
        have hNW : AlgebraicGeometry.IsNoetherian C.toCoverData.disjointUnion :=
          MaximalContactCover.isNoetherian_disjointUnion C
        have hnoeth : AlgebraicGeometry.IsNoetherian C.toCoverData.iInfImageIdeal.subscheme :=
          MaximalContactCover.isNoetherian_subscheme_iInfImageIdeal C
        have hNSW : TopologicalSpace.NoetherianSpace ↥C.toCoverData.disjointUnion := inferInstance
        have hNSH : TopologicalSpace.NoetherianSpace ↥C.hypersurfaceScheme := inferInstance
        have hsmH : AlgebraicGeometry.Smooth C.hypersurfaceStructureMap := C.smooth_hypersurfaceStructureMap
        have hsmP : AlgebraicGeometry.Smooth C.projection := by
          rw [C.projection_eq]
          exact C.toCoverData.smooth_disjointUnionMap
        have hsuP : AlgebraicGeometry.Surjective C.projection := C.surjective_projection
        have hsmSB : AlgebraicGeometry.Smooth C.pullbackFiberToBase := C.smooth_pullbackFiberToBase
        have hsuSB : AlgebraicGeometry.Surjective C.pullbackFiberToBase := C.surjective_pullbackFiberToBase
        have hqcH : AlgebraicGeometry.QuasiCompact C.hypersurfaceStructureMap := inferInstance
        have hqcWp : AlgebraicGeometry.QuasiCompact (C.projection ≫ p') := C.quasiCompact_projection_comp
        have hCI : AlgebraicGeometry.IsClosedImmersion C.toCoverData.iInfImageIdeal.subschemeι :=
          inferInstance
        have hstarw : C.pullbackFiberToBase ≫ j = C.pullbackFiberToTotal ≫ C.projection := C.isPullback_pullbackFiber.w
        have hcompeq : C.pullbackFiberToBase ≫ p = C.pullbackFiberToTotal ≫ (C.projection ≫ p') := by
          rw [← hjp, ← Category.assoc, hstarw, Category.assoc]
        have hqcS : AlgebraicGeometry.QuasiCompact (C.pullbackFiberToBase ≫ p) := by
          rw [hcompeq]
          infer_instance
        obtain ⟨x0⟩ := hXne
        have hNEs : Nonempty ↥C.pullbackFiber := by
          obtain ⟨y, -⟩ := AlgebraicGeometry.Surjective.surj (f := C.pullbackFiberToBase) x0
          exact ⟨y⟩
        have hNEH : Nonempty ↥C.hypersurfaceScheme := by
          obtain ⟨y⟩ := hNEs
          exact ⟨C.pullbackFiberToHypersurface.base y⟩
        have hHW : krullDimSucc C.hypersurfaceScheme < krullDimSucc C.toCoverData.disjointUnion :=
          C.krullDimSucc_hypersurfaceScheme_lt
        obtain ⟨m, hm⟩ : ∃ m : ℕ, m = krullDimSucc X + krullDimSucc X'
            + krullDimSucc C.toCoverData.disjointUnion + krullDimSucc C.pullbackFiber
            + krullDimSucc C.hypersurfaceScheme := ⟨_, rfl⟩
        have hsmjp : AlgebraicGeometry.Smooth (j ≫ p') := by
          rw [hjp]
          infer_instance
        have hkerNZ : NonzeroOnComponents (Scheme.Hom.ker j) :=
          nonzeroOnComponents_ker_of_hasEtaleCoordCodim p' j hc hcod
        have horder : ∀ x : ↥X', orderAt (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) x ≤ 1 := by
          intro x
          exact orderAt_map_le_one_of_isClosedImmersion p' j hkerNZ I x
        have hfacH : C.pullbackFiberToHypersurface ≫ C.hypersurfaceStructureMap = C.pullbackFiberToBase ≫ p := by
          show C.pullbackFiberToHypersurface ≫ (C.toCoverData.iInfImageIdeal.subschemeι ≫ C.projection ≫ p')
            = C.pullbackFiberToBase ≫ p
          rw [C.pullbackFiberToHypersurface_comp_subschemeι_assoc (C.projection ≫ p'), ← Category.assoc, ← hstarw,
            Category.assoc, hjp]
        have hWideal : (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection
            = _root_.FunctorialResolution.Blowup.schemeImageIdeal C.toCoverData.iInfImageIdeal.subschemeι C.idealOnHypersurface := by
          rw [← C.comapImageIdealSheaf_eq]
          exact C.comapImageIdealSheaf_eq_imageIdealSheaf_idealOnHypersurface
        have hHideal : C.idealOnHypersurface = _root_.FunctorialResolution.Blowup.schemeImageIdeal C.pullbackFiberToHypersurface (I.comap C.pullbackFiberToBase) :=
          C.idealOnHypersurface_eq_imageIdealSheaf
        have hvW : (markedTripleOrderOne k C.toCoverData.disjointUnion (C.projection ≫ p')
            ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) []).IsAdmissible :=
          @hpv (markedTripleOrderOne k X' p' (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) []) hvX' C.toCoverData.disjointUnion
            (C.projection ≫ p') C.projection hsmP hqcWp rfl
        have hvS : (markedTripleOrderOne k C.pullbackFiber (C.pullbackFiberToBase ≫ p)
            (I.comap C.pullbackFiberToBase) []).IsAdmissible :=
          @hpv (markedTripleOrderOne k X p I []) hvX C.pullbackFiber (C.pullbackFiberToBase ≫ p)
            C.pullbackFiberToBase hsmSB hqcS rfl
        have hNZS : NonzeroOnComponents (I.comap C.pullbackFiberToBase) := hvS.nonzeroOnComponents
        have hcontactNZ : NonzeroOnComponents C.idealOnHypersurface := by
          rcases Nat.eq_zero_or_pos c' with hc0 | hc1
          · have hiso : IsIso C.pullbackFiberToHypersurface := C.isIso_pullbackFiberToHypersurface_of_eq_one (by omega)
            have hinv : _root_.FunctorialResolution.Blowup.schemeImageIdeal C.pullbackFiberToHypersurface (I.comap C.pullbackFiberToBase)
                = (I.comap C.pullbackFiberToBase).comap (CategoryTheory.inv C.pullbackFiberToHypersurface) :=
              imageIdealSheaf_eq_comap_inv C.pullbackFiberToHypersurface (I.comap C.pullbackFiberToBase)
            have h2 : NonzeroOnComponents
                ((I.comap C.pullbackFiberToBase).comap (asIso C.pullbackFiberToHypersurface).symm.hom) :=
              _root_.FunctorialResolution.EmbeddedResolution.PrincipalizationIsoTransport.nonzeroOnComponents_comap_iso (asIso C.pullbackFiberToHypersurface).symm
                (I.comap C.pullbackFiberToBase) hNZS
            rw [hHideal, hinv]
            exact h2
          · have hcc0 : HasEtaleCoordCodim C.hypersurfaceStructureMap C.pullbackFiberToHypersurface c' :=
              C.hasEtaleCoordCodim_pullbackFiberToHypersurface
            refine C.nonzeroOnComponents_idealOnHypersurface ?_
            intro x
            obtain ⟨U, hxU, mm, ch, S, hcard, heq⟩ := hcc0 x
            exact ⟨U, hxU, mm, ch, S, Finset.card_pos.mp (by omega), heq⟩
        have hvH : (markedTripleOrderOne k C.hypersurfaceScheme C.hypersurfaceStructureMap C.idealOnHypersurface []).IsAdmissible :=
          markedTripleOrderOne_isAdmissible k C.hypersurfaceScheme C.hypersurfaceStructureMap C.idealOnHypersurface hcontactNZ []
            (inStrictNormalCrossingPosition_nil C.hypersurfaceStructureMap)
        have hspec := rules.isMaxOrderReduction_outputLevelData hB (m + 1)
        have hordspec := rules.isOrderReduction_outputLevelData hB (m + 1)
        have hpushFiber : IsPushforwardBlowupSeq C.pullbackFiberToHypersurface
            (rules.markedBlowupSeq k C.pullbackFiber (C.pullbackFiberToBase ≫ p) (I.comap C.pullbackFiberToBase) []).toSequenceOfBlowups
            (rules.markedBlowupSeq k C.hypersurfaceScheme C.hypersurfaceStructureMap C.idealOnHypersurface []).toSequenceOfBlowups := by
          rcases Nat.eq_zero_or_pos c' with hc0 | hc1
          · have hiso : IsIso C.pullbackFiberToHypersurface := C.isIso_pullbackFiberToHypersurface_of_eq_one (by omega)
            have hsmooth : AlgebraicGeometry.Smooth C.pullbackFiberToHypersurface := inferInstance
            have hsurj : AlgebraicGeometry.Surjective C.pullbackFiberToHypersurface := inferInstance
            have hcomap : C.idealOnHypersurface.comap C.pullbackFiberToHypersurface = I.comap C.pullbackFiberToBase := by
              rw [hHideal]
              exact comap_imageIdealSheaf C.pullbackFiberToHypersurface (I.comap C.pullbackFiberToBase)
            have hvS' : (markedTripleOrderOne k C.pullbackFiber (C.pullbackFiberToBase ≫ p)
                (C.idealOnHypersurface.comap C.pullbackFiberToHypersurface) []).IsAdmissible := by
              rw [hcomap]
              exact hvS
            have hsp : IsStrictPullbackBlowupSeq C.pullbackFiberToHypersurface
                ((rules.outputLevelData (m + 1)).maxOrderRed (markedTripleOrderOne k C.pullbackFiber
                  (C.pullbackFiberToBase ≫ p) (C.idealOnHypersurface.comap C.pullbackFiberToHypersurface) [])).toSequenceOfBlowups
                ((rules.outputLevelData (m + 1)).maxOrderRed (markedTripleOrderOne k C.hypersurfaceScheme
                  C.hypersurfaceStructureMap C.idealOnHypersurface [])).toSequenceOfBlowups :=
              @IsMaxOrderReduction.isStrictPullbackBlowupSeq_of_smooth_surjective _ _ _ hspec
                (markedTripleOrderOne k C.hypersurfaceScheme C.hypersurfaceStructureMap C.idealOnHypersurface []) hvH
                (show krullDimSucc C.hypersurfaceScheme ≤ m + 1 by omega)
                C.pullbackFiber (C.pullbackFiberToBase ≫ p) C.pullbackFiberToHypersurface hsmooth hsurj hfacH hvS'
                (show krullDimSucc C.pullbackFiber ≤ m + 1 by omega)
            rw [hcomap] at hsp
            rw [maxOrderReduction_outputLevelData_eq_markedBlowupSeq rules k C.pullbackFiber (C.pullbackFiberToBase ≫ p)
                (I.comap C.pullbackFiberToBase) [] (m + 1) (by omega),
              maxOrderReduction_outputLevelData_eq_markedBlowupSeq rules k C.hypersurfaceScheme C.hypersurfaceStructureMap C.idealOnHypersurface []
                (m + 1) (by omega)] at hsp
            exact IsPushforwardBlowupSeq.of_isStrictPullback_of_isIso C.pullbackFiberToHypersurface hsp
          · have hcc0 : HasEtaleCoordCodim C.hypersurfaceStructureMap C.pullbackFiberToHypersurface c' :=
              C.hasEtaleCoordCodim_pullbackFiberToHypersurface
            rw [hHideal]
            exact ih k hcz C.pullbackFiber C.hypersurfaceScheme (C.pullbackFiberToBase ≫ p) C.hypersurfaceStructureMap
              C.pullbackFiberToHypersurface inferInstance inferInstance hqcS hsmH inferInstance hqcH
              hfacH hc1 hcc0 (I.comap C.pullbackFiberToBase) hNZS
              (by rw [← hHideal]; exact hcontactNZ)
        have hOBW : (markedTripleOrderOne k C.toCoverData.disjointUnion (C.projection ≫ p')
            ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) []).IsOrderBoundedByMult := by
          rw [MarkedIdealWithBoundary.isOrderBoundedByMult_iff]
          intro x
          have h1 : orderAt ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) x ≤ 1 := by
            rw [orderAt_comap k p' C.projection (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) x]
            exact horder (C.projection.base x)
          refine le_trans h1 (le_of_eq ?_)
          exact Nat.cast_one.symm
        have hdiv : IsSmoothDivisor (C.projection ≫ p')
            (Scheme.Hom.ker C.toCoverData.iInfImageIdeal.subschemeι) := by
          rw [Scheme.IdealSheafData.ker_subschemeι]
          exact C.isSmoothDivisor_iInfImageIdeal
        have hpushHW : IsPushforwardBlowupSeq C.toCoverData.iInfImageIdeal.subschemeι
            ((rules.inputLevelData (m + 1)).maxOrderRed (markedTripleOrderOne k C.hypersurfaceScheme C.hypersurfaceStructureMap
              C.idealOnHypersurface [])).toSequenceOfBlowups
            ((rules.outputLevelData (m + 1)).orderRed (markedTripleOrderOne k C.toCoverData.disjointUnion
              (C.projection ≫ p') ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) [])).toSequenceOfBlowups :=
          @IsOrderReduction.pushforward _ _ _ hordspec
            (markedTripleOrderOne k C.toCoverData.disjointUnion (C.projection ≫ p')
              ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) []) hvW
            (show krullDimSucc C.toCoverData.disjointUnion ≤ m + 1 by omega) hOBW rfl rfl
            C.hypersurfaceScheme C.hypersurfaceStructureMap C.toCoverData.iInfImageIdeal.subschemeι hCI rfl hdiv
            C.idealOnHypersurface hvH hHW hWideal
        rw [rules.inputLevelData_succ m, maxOrderReduction_outputLevelData_eq_markedBlowupSeq rules k C.hypersurfaceScheme C.hypersurfaceStructureMap
          C.idealOnHypersurface [] m (by omega)] at hpushHW
        have hequivW : ((rules.outputLevelData (m + 1)).maxOrderRed (markedTripleOrderOne k
            C.toCoverData.disjointUnion (C.projection ≫ p') ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) [])).Isomorphic
            ((rules.outputLevelData (m + 1)).orderRed (markedTripleOrderOne k C.toCoverData.disjointUnion
              (C.projection ≫ p') ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) [])).toSequenceOfBlowups :=
          hspec.orderRed_equiv (markedTripleOrderOne k C.toCoverData.disjointUnion (C.projection ≫ p')
            ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) []) hvW
            (show krullDimSucc C.toCoverData.disjointUnion ≤ m + 1 by omega) rfl hOBW
        rw [maxOrderReduction_outputLevelData_eq_markedBlowupSeq rules k C.toCoverData.disjointUnion (C.projection ≫ p')
          ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) [] (m + 1) (by omega)] at hequivW
        have hpushSubscheme := IsPushforwardBlowupSeq.of_isomorphic C.toCoverData.iInfImageIdeal.subschemeι
          hpushHW (SequenceOfBlowups.Isomorphic.symm hequivW)
        have hNtH : ∀ i : ℕ, i ≤ (rules.markedBlowupSeq k C.hypersurfaceScheme C.hypersurfaceStructureMap
            C.idealOnHypersurface []).toSequenceOfBlowups.length →
            AlgebraicGeometry.IsNoetherian ((rules.markedBlowupSeq k C.hypersurfaceScheme C.hypersurfaceStructureMap
              C.idealOnHypersurface []).toSequenceOfBlowups.schemeAt i) :=
          fun i hi => isNoetherian_schemeAt _ i hi
        have hNtW : ∀ i : ℕ, i ≤ (rules.markedBlowupSeq k C.toCoverData.disjointUnion (C.projection ≫ p')
            ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) []).toSequenceOfBlowups.length →
            AlgebraicGeometry.IsNoetherian ((rules.markedBlowupSeq k C.toCoverData.disjointUnion (C.projection ≫ p')
              ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) []).toSequenceOfBlowups.schemeAt i) :=
          fun i hi => isNoetherian_schemeAt _ i hi
        have hcomp := IsPushforwardBlowupSeq.comp C.pullbackFiberToHypersurface C.toCoverData.iInfImageIdeal.subschemeι
          hNtH hNtW hpushFiber hpushSubscheme
        have hcomp' : IsPushforwardBlowupSeq C.pullbackFiberToTotal
            (rules.markedBlowupSeq k C.pullbackFiber (C.pullbackFiberToBase ≫ p) (I.comap C.pullbackFiberToBase) []).toSequenceOfBlowups
            (rules.markedBlowupSeq k C.toCoverData.disjointUnion (C.projection ≫ p')
              ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) []).toSequenceOfBlowups :=
          isPushforwardSequenceOfBlowups_congr_hom C.pullbackFiberToHypersurface_comp_subschemeι hcomp
        have hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u} := strictTransformIsBlowupOfClosedSubscheme
        have hcart : EffectiveCartierSupportContainsNoComponent.{u} := effectiveCartierSupportContainsNoComponent
        have hproper := MarkedSequenceOfBlowups.centersContainNoComponent_ofMarkedSequence hcart hvX
          (rules.markedBlowupSeq k X p I [])
        have htower := isPushforwardBlowupSeq_ambientBlowupSequence j
          (BlowupSequenceData.ofSequenceOfBlowups (rules.markedBlowupSeq k X p I []).toSequenceOfBlowups) hres
          blowupPreservesNoetherian hproper
        obtain ⟨u0, hpf0⟩ : ∃ u0 : SequenceOfBlowups X',
            IsPushforwardBlowupSeq j (rules.markedBlowupSeq k X p I []).toSequenceOfBlowups u0 :=
          ⟨_, IsPushforwardBlowupSeq.of_isomorphic_source j (ofSequenceOfBlowups_toSequenceOfBlowups_isomorphic _) htower⟩
        have ht' : IsStrictPullbackBlowupSeq C.projection (u0.baseChange C.projection) u0 :=
          isStrictPullbackSequenceOfBlowups_baseChange u0 C.projection
        have hsS : IsStrictPullbackBlowupSeq C.pullbackFiberToBase
            ((rules.outputLevelData (m + 1)).maxOrderRed (markedTripleOrderOne k C.pullbackFiber
              (C.pullbackFiberToBase ≫ p) (I.comap C.pullbackFiberToBase) [])).toSequenceOfBlowups
            ((rules.outputLevelData (m + 1)).maxOrderRed (markedTripleOrderOne k X p I [])).toSequenceOfBlowups :=
          @IsMaxOrderReduction.isStrictPullbackBlowupSeq_of_smooth_surjective _ _ _ hspec
            (markedTripleOrderOne k X p I []) hvX (show krullDimSucc X ≤ m + 1 by omega)
            C.pullbackFiber (C.pullbackFiberToBase ≫ p) C.pullbackFiberToBase hsmSB hsuSB rfl hvS
            (show krullDimSucc C.pullbackFiber ≤ m + 1 by omega)
        rw [maxOrderReduction_outputLevelData_eq_markedBlowupSeq rules k C.pullbackFiber (C.pullbackFiberToBase ≫ p) (I.comap C.pullbackFiberToBase) []
            (m + 1) (by omega),
          maxOrderReduction_outputLevelData_eq_markedBlowupSeq rules k X p I [] (m + 1) (by omega)] at hsS
        have hSW : IsStrictPullbackBlowupSeq C.projection
            ((rules.outputLevelData (m + 1)).maxOrderRed (markedTripleOrderOne k C.toCoverData.disjointUnion
              (C.projection ≫ p') ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) [])).toSequenceOfBlowups
            ((rules.outputLevelData (m + 1)).maxOrderRed
              (markedTripleOrderOne k X' p' (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) [])).toSequenceOfBlowups :=
          @IsMaxOrderReduction.isStrictPullbackBlowupSeq_of_smooth_surjective _ _ _ hspec
            (markedTripleOrderOne k X' p' (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) []) hvX'
            (show krullDimSucc X' ≤ m + 1 by omega) C.toCoverData.disjointUnion (C.projection ≫ p')
            C.projection hsmP hsuP rfl hvW
            (show krullDimSucc C.toCoverData.disjointUnion ≤ m + 1 by omega)
        rw [maxOrderReduction_outputLevelData_eq_markedBlowupSeq rules k C.toCoverData.disjointUnion (C.projection ≫ p')
            ((_root_.FunctorialResolution.Blowup.schemeImageIdeal j I).comap C.projection) [] (m + 1) (by omega),
          maxOrderReduction_outputLevelData_eq_markedBlowupSeq rules k X' p' (_root_.FunctorialResolution.Blowup.schemeImageIdeal j I) [] (m + 1) (by omega)] at hSW
        have hup := IsPushforwardBlowupSeq.of_flat_isPullback j C.pullbackFiberToTotal C.projection C.pullbackFiberToBase
          C.isPullback_pullbackFiber.flip (rules.markedBlowupSeq k X p I []).toSequenceOfBlowups u0
          (rules.markedBlowupSeq k C.pullbackFiber (C.pullbackFiberToBase ≫ p) (I.comap C.pullbackFiberToBase) []).toSequenceOfBlowups
          (u0.baseChange C.projection)
          (fun i hi => isLocallyNoetherian_schemeAt u0 i hi)
          (fun i hi => isLocallyNoetherian_schemeAt (u0.baseChange C.projection) i hi)
          hpf0 hsS ht'
        have huniq := IsPushforwardBlowupSeq.isomorphic C.pullbackFiberToTotal hup hcomp'
        have hdesc := IsStrictPullbackBlowupSeq.isomorphic_of_isomorphic ht' hSW huniq
        exact IsPushforwardBlowupSeq.of_isomorphic j hpf0 hdesc

theorem commutesWithClosedImmersion_of_isCorrect_of_smoothPullback (B : PrincipalizationRules.{u}) (hB : B.ReducesInductivelyOnDimension)
    (hpv : AdmissibilityStableUnderSmoothPullback.{u}) : CommutesWithClosedImmersion.{u} B := by
  intro k ik icz X X' p ism ift iqc p' ism' ift' iqc' j ij hjp c hc hcod I hI hIim _ _
  exact commutesWithClosedImmersion_forall_codim B hB hpv c k icz X X' p p' j ism ift iqc ism' ift' iqc' hjp hc hcod I hI hIim

theorem commutesWithClosedImmersion_of_isCorrect (B : PrincipalizationRules.{u}) (hB : B.ReducesInductivelyOnDimension) :
    CommutesWithClosedImmersion.{u} B :=
  commutesWithClosedImmersion_of_isCorrect_of_smoothPullback B hB isAdmissible_pullbackAlong_of_smooth

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.ClosedImmersionCommutation =====
