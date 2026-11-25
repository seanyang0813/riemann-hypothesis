module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ZariskiConnectednessIsPreconnectedFibreStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartExpOn
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsExpandsAtSectionUniformised
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFlat
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RangeAlgebraMapEqIInfDiscreteValuationSubring
public import Mathlib.LinearAlgebra.FreeModule.Basic
public import Mathlib.RingTheory.Finiteness.Defs
public import Mathlib.LinearAlgebra.Charpoly.Basic
public import Mathlib.Algebra.MonoidAlgebra.Defs
public import Mathlib.Algebra.Order.BigOperators.Group.Finset
public import Mathlib.Algebra.Polynomial.AlgebraMap
public import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd
public import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverIffIsProperAndExistsIsAmpleLB
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsAmpleTensorAmplePowProjective
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsAmpleLBOfRelAmpleOfIsAffine
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierOfSectionStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionNonvanishingClosedFibreOfThreeLeStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianHomExtensionHolds
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.GenericExistsUniqueOActOfIsGrpPullback
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatOpenPartGroupSchemeProductMap
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrreducibleSpaceFibreSemiAbelianFieldPoint
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveOpenPartProductMapIrreducibleFibres
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeOfSectionRatiosStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericFibreHomOfFormalSectionRatiosStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.TypeStar
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExpansionIntegralSectionIntegralNoetherianLocal
import Mathlib.Algebra.Order.Star.Int
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.EventuallySectionAndRelAmplePowDiv
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IsIntegralAndIsNormalSchemeOfSmoothDvr

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSameExpansionThickeningOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedFibreChartPointMumfordMultiplierNonz, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralThetaExpansionOfSectionPowerGeThre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowEqMulOfQuadraticBoundNormalLocal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosSemidefQuadraticAdjointPairBound, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EventuallyRelAmple, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierExponentNonzeroSection, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierExponentNonzeroSectionStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordMultiplierThickeningChartSections, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordSectionsMultiplierThickenings, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordThickeningEndomorphismMapsSections, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianGenericFibreHomExtendsNormalNoetheria, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalEndSecCoNonzeroLift, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemBasicOpenOfSectionRatioEqBasePoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioAppRestrict, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianThickeningHomEqOfEqOnOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningEqOfGenericSectionRatios, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningEqOfGenericSectionRatiosStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFormalEndomorphismAlgebraic, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFormalEndomorphismAlgebraicStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSameExpansionThickeningOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSameExpansionThickeningOpen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartExpOn\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.MumMult

theorem map_map_homOfLE {X : Scheme.{0}} {U V W : X.Opens} (h1 : V ≤ U) (h2 : W ≤ V) (x : Γ(X, U)) :
    (X.presheaf.map (homOfLE h2).op).hom ((X.presheaf.map (homOfLE h1).op).hom x) =
      (X.presheaf.map (homOfLE (h2.trans h1)).op).hom x := by
  rw [← CommRingCat.comp_apply, ← Functor.map_comp]; rfl

theorem map_res_homOfLE {X : Scheme.{0}} {U V W : X.Opens} (h1 : V ≤ U) (h2 : W ≤ V) (u : Γ(X, U)ˣ) :
    (X.presheaf.map (homOfLE h2).op).hom (res h1 u).val = (res (h2.trans h1) u).val :=
  map_map_homOfLE h1 h2 u.val

theorem sum_attach_eq_sum_of_subset {β M : Type*} [AddCommMonoid M] {S S' : Finset β} (hS : S ⊆ S') (F : β → M)
    (T : S → M) (hT : ∀ x, T x = F x) (hz : ∀ α ∈ S', α ∉ S → F α = 0) :
    ∑ x ∈ S.attach, T x = ∑ α ∈ S', F α := by
  rw [← Finset.sum_subset hS hz, ← Finset.sum_attach S F]
  exact Finset.sum_congr rfl fun x _ => hT x

theorem eq_of_expandsAt_of_chartExpOn : ∀ (R : Type) [CommRing R] [IsDomain R] (I : Ideal R) (D : DegData R I) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (U : UnifPre I D A G) (e k : ℕ) (σ : H0 U.LG.L k) (f : ∀ α : D.toPre.X, D.toPre.SecB k α) (i' : Fin 1 → U.LG.L.ι) (W : (thickObj R I e G).left.Opens) (hW : W ≤ (fstG I e G).left ⁻¹ᵁ secChart U.LG.L i') (g : Γ((thickObj R I e G).left, W)), U.ExpandsAt e k σ f → GlobalTheory.MumMult.ChartExpOn U e k i' W g f → ((thickObj R I e G).left.presheaf.map (homOfLE hW).op).hom (((fstG I e G).left.app (secChart U.LG.L i')).hom (σ.f i')) = g := by
  intro R _ _ I D A G _ _ U e k σ f i' W hW g hE hC
  classical
  obtain ⟨S₁, h1v, E1⟩ := hE
  obtain ⟨S₂, h2v, E2⟩ := hC
  have hex : ∀ x : D.toPre.P.A.left, ∃ i, x ∈ D.toPre.P.L.U i := fun x => by
    have hx : x ∈ (⨆ i, D.toPre.P.L.U i) := by rw [D.toPre.P.isLB.cover]; trivial
    exact TopologicalSpace.Opens.mem_iSup.1 hx
  choose idx0 hidx0 using hex
  have key : ∀ y ∈ W, ∃ (V : (thickObj R I e G).left.Opens) (hV : V ≤ W), y ∈ V ∧
      ((thickObj R I e G).left.presheaf.map (homOfLE hV).op).hom
        (((thickObj R I e G).left.presheaf.map (homOfLE hW).op).hom
          (((fstG I e G).left.app (secChart U.LG.L i')).hom (σ.f i'))) =
      ((thickObj R I e G).left.presheaf.map (homOfLE hV).op).hom g := by
    intro y hy
    let idx : ((thickObj R I e G).left ⟶ D.toPre.P.A.left) → D.toPre.P.L.ι := fun φ => idx0 (φ.base y)
    have hidx : ∀ φ, φ.base y ∈ D.toPre.P.L.U (idx φ) := fun φ => hidx0 _
    let p : (PUnit.{1} → D.toPre.P.L.ι) × (PUnit.{1} → U.LG.L.ι) :=
      (fun _ => idx (U.gt e).pG.left, fun _ => i' 0)
    let jf : D.toPre.X → Fin 4 → D.toPre.P.L.ι := fun α κ => idx ((U.gt e).pG.left ≫ D.toPre.famφB α κ)
    let jt : D.toPre.X → Fin 4 → D.toPre.P.L.ι := fun α κ => idx (D.toPre.Oφ (U.gt e).pG α κ)
    have hcoh : ∀ S : Finset D.toPre.X, CohAll D.toPre.P.L
        (Sum.elim (fun _ : PUnit.{1} => (U.gt e).pG.left)
          (Sum.elim (fun a : S × Fin 4 => (U.gt e).pG.left ≫ D.toPre.famφB a.1.1 a.2)
            (fun a : S × Fin 4 => D.toPre.Oφ (U.gt e).pG a.1.1 a.2)))
        (Sum.elim (fun _ => p.1 PUnit.unit)
          (Sum.elim (fun a : S × Fin 4 => jf a.1.1 a.2) (fun a : S × Fin 4 => jt a.1.1 a.2))) := by
      intro S a b hab
      rcases a with a | a | a <;> rcases b with b | b | b <;> exact congrArg idx hab
    have hmem : ∀ S, y ∈ U.expW e p i' S jf jt := by
      intro S
      refine ⟨⟨⟨Set.mem_iInter.2 fun _ => hidx _, Set.mem_iInter.2 fun _ => ?_⟩, hW hy⟩, ?_⟩
      · exact Set.mem_iInter.1 (hW hy) 0
      · refine Finset.inf_induction (p := fun O : (thickObj R I e G).left.Opens => y ∈ O) trivial
          (fun a ha b hb => ⟨ha, hb⟩) ?_
        intro α _
        exact ⟨Set.mem_iInter.2 fun κ => hidx ((U.gt e).pG.left ≫ D.toPre.famφB α κ),
          Set.mem_iInter.2 fun κ => hidx _⟩

    have hV1 : U.expW e p i' (S₁ ∪ S₂) jf jt ⊓ W ≤ U.expW e p i' S₁ jf jt :=
      inf_le_left.trans (inf_le_inf_left _ (Finset.inf_mono Finset.subset_union_left))
    have hV2 : U.expW e p i' (S₁ ∪ S₂) jf jt ⊓ W ≤ U.expW e p i' S₂ jf jt ⊓ W :=
      inf_le_inf_right _ (inf_le_inf_left _ (Finset.inf_mono Finset.subset_union_right))
    have E1V := congrArg ((thickObj R I e G).left.presheaf.map (homOfLE hV1).op).hom
      (E1 p i' jf jt rfl (hcoh S₁))
    have E2V := congrArg ((thickObj R I e G).left.presheaf.map (homOfLE hV2).op).hom
      (E2 p jf jt rfl (hcoh S₂))

    simp only [map_mul, map_pow, map_sum, map_res_homOfLE, map_map_homOfLE] at E1V E2V
    let tV : ∀ α, α ∈ S₁ ∪ S₂ → Γ((thickObj R I e G).left, U.expW e p i' (S₁ ∪ S₂) jf jt ⊓ W) :=
      fun α h => ((thickObj R I e G).left.presheaf.map
          (homOfLE (inf_le_left.trans (U.expW_le_f e p i' jf jt h))).op).hom
          (((U.gt e).pG.left.app _).hom ((f α).f (jf α))) *
        (res (inf_le_left.trans (U.expWeight_le_chart_weight e p i' jf jt h)) (((U.gt e).t α).s (jt α))).val
    let F : D.toPre.X → Γ((thickObj R I e G).left, U.expW e p i' (S₁ ∪ S₂) jf jt ⊓ W) :=
      fun α => if h : α ∈ S₁ ∪ S₂ then tV α h else 0
    have hz1 : ∀ α ∈ S₁ ∪ S₂, α ∉ S₁ → F α = 0 := by
      intro α h hn
      have h0 : ((U.gt e).pG.left.app (LB.wchart D.toPre.P.L (D.toPre.famφB α) (jf α))).hom
          ((f α).f (jf α)) = 0 := h1v α hn (jf α)
      simp only [F, dif_pos h, tV]
      rw [h0, map_zero, zero_mul]
    have hz2 : ∀ α ∈ S₁ ∪ S₂, α ∉ S₂ → F α = 0 := by
      intro α h hn
      have h0 : ((U.gt e).pG.left.app (LB.wchart D.toPre.P.L (D.toPre.famφB α) (jf α))).hom
          ((f α).f (jf α)) = 0 := h2v α hn (jf α)
      simp only [F, dif_pos h, tV]
      rw [h0, map_zero, zero_mul]
    rw [sum_attach_eq_sum_of_subset Finset.subset_union_left F _ (fun x => ?_) hz1] at E1V
    rw [sum_attach_eq_sum_of_subset Finset.subset_union_right F _ (fun x => ?_) hz2] at E2V
    rotate_left
    · simp only [F, dif_pos (Finset.mem_union_right S₁ x.2), tV]
      congr 1 <;> first | rfl | exact map_res_homOfLE _ _ _
    · simp only [F, dif_pos (Finset.mem_union_left S₂ x.2), tV]
      congr 1 <;> first | rfl | exact map_res_homOfLE _ _ _
    refine ⟨U.expW e p i' (S₁ ∪ S₂) jf jt ⊓ W, inf_le_right, ⟨hmem _, hy⟩, ?_⟩
    rw [map_map_homOfLE]
    exact ((Units.isUnit _).pow k).mul_left_cancel (E1V.trans E2V.symm)
  choose V hVW hyV hEq using key
  refine TopCat.Sheaf.eq_of_locally_eq' (thickObj R I e G).left.sheaf (fun y : W => V y.1 y.2) W
    (fun y => homOfLE (hVW y.1 y.2)) ?_ _ _ fun y => hEq y.1 y.2
  intro y hy
  exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨y, hy⟩, hyV y hy⟩

end GlobalTheory.MumMult
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSameExpansionThickeningOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedFibreChartPointMumfordMultiplierNonz =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedFibreChartPointMumfordMultiplierNonz", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem GlobalTheory.MumMult.exists_pt_chart_of_leadPt : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G] (U : Unif (maximalIdeal R) D A G) (b : ∀ e : ℕ, thickObj R (maximalIdeal R) e G ⟶ thickObj R (maximalIdeal R) e G) (m : ∀ (e : ℕ) (i i' : Fin 1 → U.LG.L.ι), Γ((thickObj R (maximalIdeal R) e G).left, GlobalTheory.MumMult.multW U b e i i')), GlobalTheory.MumMult.LeadPt U b m → ∃ y : (thickObj R (maximalIdeal R) 0 G).left, (∃ i' : Fin 1 → U.LG.L.ι, y ∈ (fstG (maximalIdeal R) 0 G).left ⁻¹ᵁ secChart U.LG.L i') ∧ ∀ i i' : Fin 1 → U.LG.L.ι, y ∈ GlobalTheory.MumMult.multW U b 0 i i' → y ∈ (thickObj R (maximalIdeal R) 0 G).left.basicOpen (m 0 i i') := by
  intro R _ _ _ D A G _ _ U b m hL
  obtain ⟨x, hx, H⟩ := hL

  have hne : maximalIdeal R ^ (0 + 1) ≠ ⊤ := by
    rw [zero_add, pow_one]; exact (maximalIdeal.isMaximal R).ne_top
  haveI : Nontrivial (R ⧸ maximalIdeal R ^ (0 + 1)) := Ideal.Quotient.nontrivial_iff.2 hne
  obtain ⟨p⟩ := (inferInstance : Nonempty (PrimeSpectrum (R ⧸ maximalIdeal R ^ (0 + 1))))
  have hp : (thick R (maximalIdeal R) 0) p = (IsLocalRing.closedPoint R : PrimeSpectrum R) := by
    apply PrimeSpectrum.ext
    show Ideal.comap (Ideal.Quotient.mk (maximalIdeal R ^ (0 + 1))) p.asIdeal = maximalIdeal R
    refine ((maximalIdeal.isMaximal R).eq_of_le (p.isPrime.comap _).ne_top ?_).symm
    intro r hr
    rw [Ideal.mem_comap, Ideal.Quotient.eq_zero_iff_mem.2 (by rw [zero_add, pow_one]; exact hr)]
    exact p.asIdeal.zero_mem
  obtain ⟨z, hz, -⟩ := Scheme.Pullback.exists_preimage_pullback (f := D.toPre.P.A.hom)
    (g := thick R (maximalIdeal R) 0) x p (hx.trans hp.symm)
  obtain ⟨y, hy⟩ := (U.gt 0).q_surj.surj z
  refine ⟨y, ?_, ?_⟩
  · have hc := U.LG.isLB.cover
    have hmem : (fstG (maximalIdeal R) 0 G).left y ∈ (⨆ j, U.LG.L.U j) := by rw [hc]; trivial
    obtain ⟨j, hj⟩ := TopologicalSpace.Opens.mem_iSup.1 hmem
    exact ⟨fun _ => j, Set.mem_iInter.2 fun _ => hj⟩
  · intro i i' hy'
    refine H y ?_ i i' hy'
    show (D.toPre.prBe (maximalIdeal R) 0).left ((U.gt 0).q.left y) = x
    rw [hy]
    exact hz
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedFibreChartPointMumfordMultiplierNonz =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralThetaExpansionOfSectionPowerGeThre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralThetaExpansionOfSectionPowerGeThre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExpansionIntegralSectionIntegralNoetherianLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenFlat\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.SecExp

open ReciprocityTheory.ChartRestriction.G.DVR

theorem exists_intFam : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ k : ℕ, 3 ≤ k → ∀ s : H0 U.LG.L k, ∃ f : IntFam (maximalIdeal R) D.toPre k, ∀ e : ℕ, U.ExpandsAt e k s f.f := by
  intro R _ _ _ hB D A G _ _ hG U k hk s
  have hR : AdmBase R (maximalIdeal R) := hB.1
  have : IsNoetherianRing R := hR.1
  obtain ⟨sK, hsK⟩ := _root_.GlobalTheory.UnifDescent.exists_restrict U.LG.L (fun _ : Fin 1 => 𝟙 G.left) (fun _ => (k : ℤ))
    (pullback.fst G.hom (jK R)) (fun _ => pullback.fst G.hom (jK R)) (fun _ => (Category.comp_id _).symm) s
  obtain ⟨E, hE, -⟩ := (U.expand k (by omega)).1 sK
  obtain ⟨g, hg, hext⟩ := GlobalTheory.IntegralExpansionLocal.main R (maximalIdeal R) le_rfl D A G U.toUnifPre k s sK hsK E hE
  have h1 : scal (DegPre.BF D.toPre (FractionRing R)).hom (1 : R) = 1 := by
    unfold scal; rw [map_one, map_one]
  refine ⟨⟨E, g, fun α => h1 ▸ hext α, fun e => ?_⟩, hg⟩
  obtain ⟨S, hS, -⟩ := hg e
  refine S.finite_toSet.subset fun α hα => by_contra fun h => hα fun j => ?_
  have := (U.gt e).q_flat
  have := (U.gt e).q_surj
  apply ReciprocityTheory.ChartRestriction.G.DVR.TG.app_injective_of_flat_surj (U.gt e).q.left
  rw [map_zero]
  have h' := hS α h j
  have e' : (U.gt e).pG.left = (U.gt e).q.left ≫ pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e) := rfl
  rw [e', Scheme.Hom.comp_app] at h'
  exact h'

end GlobalTheory.Mum.SecExp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralThetaExpansionOfSectionPowerGeThre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowEqMulOfQuadraticBoundNormalLocal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowEqMulOfQuadraticBoundNormalLocal", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RangeAlgebraMapEqIInfDiscreteValuationSubring\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing ReciprocityTheory.ChartRestriction.G.Out

namespace GlobalTheory


open IsDiscreteValuationRing in
theorem mul_dvd_pow_of_quadratic_bound_dvr {V : Type} [CommRing V] [IsDomain V]
    [IsDiscreteValuationRing V] {X : Type} [AddCommGroup X] (h h' : X →+ X) (C : ℕ)
    (hq : ∀ q : X → ℤ, (∀ y, 0 ≤ q y) → q 0 = 0 → (∀ y, q (-y) = q y) →
      (∀ x y z, q (x + y + z) + q x + q y + q z = q (x + y) + q (x + z) + q (y + z)) →
      (∀ y z, q (h y + z) + q y + q (h' z) = q (y + h' z) + q (h y) + q z) →
      ∀ y, q (h y) ≤ C * q y) {N : ℕ} (hN : C + 1 ≤ N) (k : X → V) (hk0 : ∀ y, k y ≠ 0)
    (h1 : ∀ y, k (-y) = k y) (h2 : k 0 = 1)
    (h3 : ∀ x y z, k (x + y + z) * k x * k y * k z = k (x + y) * k (x + z) * k (y + z))
    (h4 : ∀ y z, ∃ u : V, IsUnit u ∧
      k (h y + z) * k y * k (h' z) = u * (k (y + h' z) * k (h y) * k z)) (y : X) :
    k y * k (h y) ∣ k y ^ N := by
  have hn : ∀ z, ∃ n : ℕ, addVal V (k z) = n := fun z =>
    (ENat.ne_top_iff_exists.1 (mt addVal_eq_top_iff.1 (hk0 z))).imp fun _ e => e.symm
  choose n hn using hn
  have key := hq (fun z => (n z : ℤ)) (fun _ => Int.natCast_nonneg _)
    (by
      have := hn 0
      rw [h2, addVal_one] at this
      exact_mod_cast this.symm)
    (fun z => by
      have := hn (-z)
      rw [h1, hn] at this
      exact_mod_cast this.symm)
    (fun a b c => by
      have := congrArg (addVal V) (h3 a b c)
      simp only [addVal_mul, hn] at this
      exact_mod_cast this)
    (fun a b => by
      obtain ⟨u, hu, e⟩ := h4 a b
      have := congrArg (addVal V) e
      simp only [addVal_mul, hn, addVal_eq_zero_iff.2 hu, zero_add] at this
      exact_mod_cast this) y
  have key' : n (h y) ≤ C * n y := by exact_mod_cast key
  rw [← addVal_le_iff_dvd, addVal_mul, addVal_pow, hn, hn, nsmul_eq_mul]
  have : n y + n (h y) ≤ N * n y := by nlinarith [Nat.mul_le_mul_right (n y) hN]
  exact_mod_cast this

theorem exists_pow_eq_mul_of_quadratic_bound :
    ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (X : Type) [AddCommGroup X] (h h' : X →+ X) (C : ℕ), (∀ q : X → ℤ, (∀ y, 0 ≤ q y) → q 0 = 0 → (∀ y, q (-y) = q y) → (∀ x y z, q (x + y + z) + q x + q y + q z = q (x + y) + q (x + z) + q (y + z)) → (∀ y z, q (h y + z) + q y + q (h' z) = q (y + h' z) + q (h y) + q z) → ∀ y, q (h y) ≤ C * q y) → ∀ N : ℕ, C + 1 ≤ N → ∀ (κ : X → (FractionRing R)ˣ), (∀ y, κ (-y) = κ y) → κ 0 = 1 → (∀ x y z, κ (x + y + z) * κ x * κ y * κ z = κ (x + y) * κ (x + z) * κ (y + z)) → (∀ y, ∃ r : R, (κ y : FractionRing R) = algebraMap R _ r) → (∀ y z, ∃ u : Rˣ, ((κ (h y + z) * κ y * κ (h' z) : (FractionRing R)ˣ) : FractionRing R) = algebraMap R _ (u : R) * ((κ (y + h' z) * κ (h y) * κ z : (FractionRing R)ˣ) : FractionRing R)) → ∀ y, ∃ r : R, ((κ y ^ N : (FractionRing R)ˣ) : FractionRing R) = algebraMap R _ r * κ y * κ (h y) := by
  intro R _ _ _ hR X _ h h' C hq N hN κ h1 h2 h3 hκ h4 y
  obtain ⟨hno, -, hic, -⟩ := hR
  have hx : ∃ r : R, algebraMap R (FractionRing R) r =
      ((κ y ^ N * (κ y * κ (h y))⁻¹ : (FractionRing R)ˣ) : FractionRing R) := by
    refine exists_algebraMap_eq_of_forall_discreteValuationSubring fun V hV hRV _ => ?_
    have hm : ∀ z, (κ z : FractionRing R) ∈ V := fun z => by
      obtain ⟨r, e⟩ := hκ z
      exact e ▸ hRV r
    obtain ⟨c, hc⟩ := mul_dvd_pow_of_quadratic_bound_dvr (V := V) h h' C hq hN
      (fun z => ⟨κ z, hm z⟩) (fun z e => (κ z).ne_zero (congrArg Subtype.val e))
      (fun z => Subtype.ext (congrArg Units.val (h1 z)))
      (Subtype.ext (congrArg Units.val h2))
      (fun a b c => Subtype.ext (congrArg Units.val (h3 a b c)))
      (fun a b => by
        obtain ⟨u, e⟩ := h4 a b
        exact ⟨(algebraMap R (FractionRing R)).codRestrict V hRV u, u.isUnit.map _,
          Subtype.ext e⟩) y
    have hc' : (κ y : FractionRing R) ^ N = κ y * κ (h y) * (c : FractionRing R) := by
      simpa using congrArg Subtype.val hc
    have : ((κ y ^ N * (κ y * κ (h y))⁻¹ : (FractionRing R)ˣ) : FractionRing R) = c := by
      rw [Units.val_mul, Units.mul_inv_eq_iff_eq_mul, Units.val_pow_eq_pow_val, hc', Units.val_mul, mul_comm]
    exact this ▸ c.2
  obtain ⟨r, hr⟩ := hx
  refine ⟨r, ?_⟩
  rw [hr, mul_assoc, ← Units.val_mul, ← Units.val_mul, inv_mul_cancel_right]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowEqMulOfQuadraticBoundNormalLocal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosSemidefQuadraticAdjointPairBound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosSemidefQuadraticAdjointPairBound", "h": "module\n\npublic import Mathlib.LinearAlgebra.FreeModule.Basic\npublic import Mathlib.RingTheory.Finiteness.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Charpoly.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.MonoidAlgebra.Defs\npublic import Mathlib.Algebra.Order.BigOperators.Group.Finset\npublic import Mathlib.Algebra.Polynomial.AlgebraMap\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.PosFormAdjoint

theorem int_cauchy_schwarz {X : Type} [AddCommGroup X] (F : X →+ X →+ ℤ)
    (hsym : ∀ u v, F u v = F v u) (hpos : ∀ u, 0 ≤ F u u) (u v : X) :
    F u v ^ 2 ≤ F u u * F v v := by
  have key : ∀ a b : ℤ, 0 ≤ a ^ 2 * F u u + 2 * a * b * F u v + b ^ 2 * F v v := by
    intro a b
    have h1 := hpos (a • u + b • v)
    have e : F (a • u + b • v) (a • u + b • v)
        = a ^ 2 * F u u + 2 * a * b * F u v + b ^ 2 * F v v := by
      simp only [map_add (f := _), map_zsmul, AddMonoidHom.add_apply, AddMonoidHom.smul_apply, smul_eq_mul]
      rw [hsym v u]
      ring
    rw [e] at h1
    exact h1
  rcases (hpos u).lt_or_eq with ht | ht
  · have h2 := key (-(F u v)) (F u u)
    have h3 : 0 ≤ F u u * (F u u * F v v - F u v ^ 2) := by linarith [h2]
    have h4 : 0 ≤ F u u * F v v - F u v ^ 2 := by
      by_contra hc
      push_neg at hc
      linarith [mul_neg_of_pos_of_neg ht hc]
    linarith
  · rw [← ht]
    simp only [zero_mul]
    by_contra hc
    push_neg at hc
    have hs : (1 : ℤ) ≤ F u v ^ 2 := hc
    have h2 := key (-(F v v + 1) * F u v) 1
    rw [← ht] at h2
    have hv := hpos v
    linarith [mul_le_mul_of_nonneg_left hs (by linarith : (0:ℤ) ≤ F v v + 1)]

theorem seq_bound (a c : ℕ → ℤ) (n : ℕ) (hpos : ∀ k, 0 ≤ a k)
    (hlc : ∀ k, a (k + 1) ^ 2 ≤ a k * a (k + 2))
    (hrec : a n + ∑ i ∈ Finset.range n, c i * a i = 0) :
    a 1 ≤ (((∑ i ∈ Finset.range n, (c i).natAbs : ℕ) + 1 : ℕ) : ℤ) * a 0 := by
  set S : ℤ := ∑ i ∈ Finset.range n, |c i| with hS
  have hcast : (((∑ i ∈ Finset.range n, (c i).natAbs : ℕ) + 1 : ℕ) : ℤ) = S + 1 := by
    push_cast
    simp [hS]
  rw [hcast]
  have hS0 : 0 ≤ S := Finset.sum_nonneg (fun i _ => abs_nonneg _)
  by_contra H
  push_neg at H
  have ha0 : 0 < a 0 := by
    rcases (hpos 0).lt_or_eq with h | h
    · exact h
    · exfalso
      have h1 := hlc 0
      rw [← h] at h1 H
      simp at h1 H
      linarith [sq_nonneg (a 1)]
  have h01 : a 0 < a 1 := by linarith [mul_nonneg hS0 ha0.le]
  have hind : ∀ k, 0 < a k ∧ a 1 * a k ≤ a (k + 1) * a 0 := by
    intro k
    induction k with
    | zero => exact ⟨ha0, by simp [mul_comm]⟩
    | succ k ih =>
      obtain ⟨hk, hk'⟩ := ih
      have hk1 : 0 < a (k + 1) := by
        by_contra hc
        push_neg at hc
        linarith [mul_pos (by linarith : (0:ℤ) < a 1) hk, mul_le_mul_of_nonneg_right hc ha0.le]
      refine ⟨hk1, ?_⟩
      have h2 := hlc k
      have h3 : a k * (a 1 * a (k + 1)) ≤ a k * (a (k + 2) * a 0) := by
        linarith [mul_le_mul_of_nonneg_left hk' hk1.le, mul_le_mul_of_nonneg_right h2 ha0.le]
      exact le_of_mul_le_mul_left h3 hk
  have hmono : ∀ k, a k ≤ a (k + 1) := by
    intro k
    obtain ⟨hk, hk'⟩ := hind k
    have : a 0 * a k ≤ a 0 * a (k + 1) := by linarith [mul_le_mul_of_nonneg_right h01.le hk.le]
    exact le_of_mul_le_mul_left this ha0
  have hmono' : Monotone a := monotone_nat_of_le_succ hmono
  rcases n with _ | m
  · simp at hrec
    linarith
  · rw [Finset.sum_range_succ] at hrec
    obtain ⟨hm, hm'⟩ := hind m
    have hle : -(∑ i ∈ Finset.range (m + 1), c i * a i) ≤ S * a m := by
      rw [hS, Finset.sum_mul, ← Finset.sum_neg_distrib]
      apply Finset.sum_le_sum
      intro i hi
      have hi' : i ≤ m := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
      have h1 : -(c i * a i) ≤ |c i| * a i := by
        have := neg_abs_le (c i)
        linarith [mul_le_mul_of_nonneg_right this (hpos i)]
      have h2 : |c i| * a i ≤ |c i| * a m :=
        mul_le_mul_of_nonneg_left (hmono' hi') (abs_nonneg _)
      linarith
    have hrec' : a (m + 1) = -(∑ i ∈ Finset.range (m + 1), c i * a i) := by
      rw [Finset.sum_range_succ]; linarith
    have h5 : (S + 1) * a 0 * a m < a 1 * a m := mul_lt_mul_of_pos_right H hm
    have h6 : (S + 1) * a m * a 0 < a (m + 1) * a 0 := by linarith
    have h7 : (S + 1) * a m < a (m + 1) := lt_of_mul_lt_mul_right h6 ha0.le
    linarith

end GlobalTheory.PosFormAdjoint

namespace GlobalTheory.PosFormAdjoint

theorem pos_form_adjoint_bound : ∀ (X : Type) [AddCommGroup X] [Module.Free ℤ X] [Module.Finite ℤ X]
    (h h' : X →+ X), ∃ C : ℕ, ∀ q : X → ℤ, (∀ y, 0 ≤ q y) → q 0 = 0 → (∀ y, q (-y) = q y) →
      (∀ x y z, q (x + y + z) + q x + q y + q z = q (x + y) + q (x + z) + q (y + z)) →
      (∀ y z, q (h y + z) + q y + q (h' z) = q (y + h' z) + q (h y) + q z) →
      ∀ y, q (h y) ≤ C * q y := by
  intro X _ _ _ h h'
  let T : Module.End ℤ X := h'.toIntLinearMap * h.toIntLinearMap
  have hT : ∀ u, T u = h' (h u) := fun u => rfl
  let p := T.charpoly
  refine ⟨(∑ i ∈ Finset.range p.natDegree, (-(p.coeff i)).natAbs) + 1, ?_⟩
  intro q hq hq0 hqneg hcube hadj y
  let B : X →+ X →+ ℤ := AddMonoidHom.mk' (fun u => AddMonoidHom.mk' (fun v => q (u + v) - q u - q v)
      (fun a b => by
        have := hcube u a b
        rw [← add_assoc]
        linarith))
    (fun a b => by
      ext v
      simp only [AddMonoidHom.mk'_apply, AddMonoidHom.add_apply]
      have := hcube a b v
      linarith)
  have hB : ∀ u v, B u v = q (u + v) - q u - q v := fun u v => rfl
  have Bsym : ∀ u v, B u v = B v u := by
    intro u v; rw [hB, hB, add_comm]; ring
  have Bdiag : ∀ u, B u u = 2 * q u := by
    intro u
    have := hcube u u (-u)
    simp only [add_neg_cancel_right, add_neg_cancel, hq0, hqneg] at this
    rw [hB]; linarith
  have Badj : ∀ u v, B (h u) v = B u (h' v) := by
    intro u v; rw [hB, hB]; have := hadj u v; linarith
  have BT : ∀ u v, B (T u) v = B u (T v) := by
    intro u v
    rw [hT, hT, Bsym, ← Badj, Bsym, Badj]
  have BTpow : ∀ k u v, B ((T ^ k) u) v = B u ((T ^ k) v) := by
    intro k
    induction k with
    | zero => intro u v; rfl
    | succ k ih =>
      intro u v
      rw [pow_succ', Module.End.mul_apply, BT, ih]
      congr 1
      rw [← Module.End.mul_apply, ← pow_succ, ← pow_succ']
  let G : X →+ X →+ ℤ := B.comp (T : X →+ X)
  have hG : ∀ u v, G u v = B (T u) v := fun u v => rfl
  have Gsym : ∀ u v, G u v = G v u := by
    intro u v; rw [hG, hG, BT, Bsym]
  have Gdiag : ∀ u, G u u = 2 * q (h u) := by
    intro u; rw [hG, hT, Bsym, ← Badj, Bdiag]
  have Bpos : ∀ u, 0 ≤ B u u := fun u => by rw [Bdiag]; linarith [hq u]
  have Gpos : ∀ u, 0 ≤ G u u := fun u => by rw [Gdiag]; linarith [hq (h u)]
  let a : ℕ → ℤ := fun k => B ((T ^ k) y) y
  have aB : ∀ i j, a (i + j) = B ((T ^ i) y) ((T ^ j) y) := by
    intro i j
    show B ((T ^ (i + j)) y) y = _
    rw [pow_add, Module.End.mul_apply, BTpow]
    exact Bsym _ _
  have aG : ∀ i j, a (i + j + 1) = G ((T ^ i) y) ((T ^ j) y) := by
    intro i j
    rw [hG, ← Module.End.mul_apply, ← pow_succ', add_right_comm, aB]
  have apos : ∀ k, 0 ≤ a k := by
    intro k
    rcases Nat.even_or_odd' k with ⟨m, rfl | rfl⟩
    · rw [two_mul, aB]; exact Bpos _
    · rw [two_mul, aG]; exact Gpos _
  have alc : ∀ k, a (k + 1) ^ 2 ≤ a k * a (k + 2) := by
    intro k
    rcases Nat.even_or_odd' k with ⟨m, rfl | rfl⟩
    · have e1 : a (2 * m + 1) = B ((T ^ m) y) ((T ^ (m + 1)) y) := by
        rw [← aB]; congr 1; ring
      have e2 : a (2 * m + 2) = B ((T ^ (m + 1)) y) ((T ^ (m + 1)) y) := by
        rw [← aB]; congr 1; ring
      rw [e1, e2, two_mul, aB]
      exact int_cauchy_schwarz B Bsym Bpos _ _
    · have e1 : a (2 * m + 1 + 1) = G ((T ^ m) y) ((T ^ (m + 1)) y) := by
        rw [← aG]; congr 1; ring
      have e2 : a (2 * m + 1 + 2) = G ((T ^ (m + 1)) y) ((T ^ (m + 1)) y) := by
        rw [← aG]; congr 1; ring
      rw [e1, e2, two_mul, aG]
      exact int_cauchy_schwarz G Gsym Gpos _ _
  have hmonic : p.Monic := LinearMap.charpoly_monic T
  have hrec : a p.natDegree + ∑ i ∈ Finset.range p.natDegree, p.coeff i * a i = 0 := by
    have hCH : (Polynomial.aeval T p) y = 0 := by
      rw [LinearMap.aeval_self_charpoly]; rfl
    rw [Polynomial.aeval_eq_sum_range, Finset.sum_range_succ, hmonic.coeff_natDegree, one_smul] at hCH
    have h2 := congrArg (fun x => B x y) hCH

    simp only [LinearMap.add_apply, LinearMap.sum_apply, LinearMap.smul_apply, map_add (f := _),
    map_sum, map_zsmul, AddMonoidHom.add_apply, AddMonoidHom.finsetSum_apply,
    AddMonoidHom.smul_apply, smul_eq_mul, map_zero, AddMonoidHom.zero_apply] at h2
    rw [add_comm]; exact h2
  have hb := seq_bound a (fun i => p.coeff i) p.natDegree apos alc hrec
  have a0 : a 0 = 2 * q y := by show B ((T ^ 0) y) y = _; rw [pow_zero]; exact Bdiag y
  have a1 : a 1 = 2 * q (h y) := by
    have := aG 0 0
    simp only [zero_add, pow_zero] at this
    rw [this]; exact Gdiag y
  rw [a0, a1] at hb
  have habs : ∀ i, (-(p.coeff i)).natAbs = (p.coeff i).natAbs := fun i => Int.natAbs_neg _
  simp only [habs]
  linarith

end GlobalTheory.PosFormAdjoint
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosSemidefQuadraticAdjointPairBound =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EventuallyRelAmple =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EventuallyRelAmple", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverIffIsProperAndExistsIsAmpleLB\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsAmpleTensorAmplePowProjective\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPowEqMulOfQuadraticBoundNormalLocal\npublic import Mathlib.LinearAlgebra.FreeModule.Basic\npublic import Mathlib.RingTheory.Finiteness.Defs\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PosSemidefQuadraticAdjointPairBound\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.IsAmpleLBOfRelAmpleOfIsAffine\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum
open GlobalTheory GlobalTheory.CechPic

namespace GlobalTheory.Mum.PosMult

theorem eventually_relAmple : ∀ (R : Type) [CommRing R] (P : PolAV (Sp R)) (a : P.A ⟶ P.A), ∃ N₀ : ℕ, ∀ N : ℕ, N₀ ≤ N → RelAmple P.A (LB.LinComb P.L (K := Fin 2) ![𝟙 P.A.left, a.left] ![(N : ℤ), -1]) := by
  intro R _ P a
  have := P.isAb.proper
  have hL := P.isLB
  have hA : IsAmpleLB P.L := isAmpleLB_of_relAmple_of_isAffine P.A hL P.ample
  have hNb : (LB.LinComb P.L (K := Fin 1) ![a.left] ![-1]).IsLB := LB.isLB_linComb hL _ _
  obtain ⟨n₀, hn₀⟩ := Filter.eventually_atTop.1 (hA.eventually_isAmpleLB_tens_lbPow_succ hNb)
  refine ⟨n₀ + 1, fun N hN => ?_⟩
  have key := hn₀ (N - 1) (by omega)
  have hN1 : N - 1 + 1 = N := by omega
  rw [hN1] at key
  have hM := LB.isLB_linComb hL (K := Fin 2) ![𝟙 P.A.left, a.left] ![(N : ℤ), -1]
  rw [relAmple_iff_isAmpleLB_of_isAffine P.A hM]
  refine key.of_lbIso hM ((cls_eq_iff hM (isLB_tens hNb (isLB_lbPow hL N))).1 ?_)
  rw [cls_tens hNb (isLB_lbPow hL N), cls_lbPow hL, cls_linComb hL, cls_linComb hL]
  simp [Fin.sum_univ_two, pull_id]
  abel

theorem exists_pos_mult : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∃ N : ℕ, 1 ≤ N ∧ RelAmple D.toPre.P.A (LB.LinComb D.toPre.P.L (K := Fin 2) ![𝟙 D.toPre.P.A.left, a.left] ![(N : ℤ), -1]) ∧ ∀ (κ : D.toPre.X → (FractionRing R)ˣ), (∀ y, κ (-y) = κ y) → κ 0 = 1 → (∀ x y z, κ (x + y + z) * κ x * κ y * κ z = κ (x + y) * κ (x + z) * κ (y + z)) → (∀ y, ∃ r : R, (κ y : FractionRing R) = algebraMap R _ r) → (∀ y z, ∃ u : Rˣ, ((κ (h y + z) * κ y * κ (h' z) : (FractionRing R)ˣ) : FractionRing R) = algebraMap R _ (u : R) * ((κ (y + h' z) * κ (h y) * κ z : (FractionRing R)ˣ) : FractionRing R)) → ∀ y, ∃ r : R, ((κ y ^ N : (FractionRing R)ˣ) : FractionRing R) = algebraMap R _ r * κ y * κ (h y) := by
  intro R _ _ _ hR D a a' h h' _
  obtain ⟨N₀, hN₀⟩ := eventually_relAmple R D.toPre.P a
  obtain ⟨C, hC⟩ := _root_.GlobalTheory.PosFormAdjoint.pos_form_adjoint_bound D.toPre.X h h'
  refine ⟨max N₀ (C + 1), le_trans (by omega) (le_max_right _ _), hN₀ _ (le_max_left _ _), ?_⟩
  exact _root_.GlobalTheory.exists_pow_eq_mul_of_quadratic_bound R hR D.toPre.X h h' C hC _ (le_max_right _ _)

end GlobalTheory.Mum.PosMult
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EventuallyRelAmple =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierExponentNonzeroSection =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierExponentNonzeroSection", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EventuallyRelAmple\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.EventuallySectionAndRelAmplePowDiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

open GlobalTheory GlobalTheory.CechPic

namespace GlobalTheory.MumMult

theorem exists_closedFibre_pt (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] (D : DegData R (maximalIdeal R)) :
    ∃ x : D.toPre.P.A.left, D.toPre.P.A.hom x = (IsLocalRing.closedPoint R : PrimeSpectrum R) := by
  let y : (𝟙_ (Over (Sp R))).left := (IsLocalRing.closedPoint R : PrimeSpectrum R)
  refine ⟨(η[D.toPre.P.A]).left y, ?_⟩
  rw [← Scheme.Hom.comp_apply, Over.w (η[D.toPre.P.A])]
  rfl

theorem exists_N_sec : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∃ N : ℕ, 1 ≤ N ∧ GlobalTheory.MumMult.PosN D a h h' N ∧ ∃ (σ₀ : LB.Sec (LB.LinComb D.toPre.P.L (K := Fin 2) ![𝟙 D.toPre.P.A.left, a.left] ![(N : ℤ), -1])) (x : D.toPre.P.A.left), D.toPre.P.A.hom x = (IsLocalRing.closedPoint R : PrimeSpectrum R) ∧ GlobalTheory.MumMult.NonzeroAt D a N σ₀ x := by
  intro R _ _ _ hR D a a' h h' hE
  have := D.toPre.P.isAb.proper
  have hP := D.toPre.P.isLB
  obtain ⟨N₀, hN₀, -, hκ⟩ := GlobalTheory.Mum.PosMult.exists_pos_mult R hR.1 D a a' h h' hE
  obtain ⟨N₁, hN₁⟩ := GlobalTheory.Mum.PosMult.eventually_relAmple R D.toPre.P a
  have hA : IsAmpleLB D.toPre.P.L := isAmpleLB_of_relAmple_of_isAffine D.toPre.P.A hP D.toPre.P.ample
  have hNb := LB.isLB_linComb hP (K := Fin 1) ![a.left] ![1]
  obtain ⟨N₂, hN₂⟩ := Filter.eventually_atTop.1
    (GlobalTheory.AmpleDominates.eventually_isGenerated D.toPre.P.A.hom hA hNb)
  set N := max N₀ (max N₁ N₂) with hNdef
  have hN0 : N₀ ≤ N := le_max_left _ _
  have hN1 : N₁ ≤ N := (le_max_left _ _).trans (le_max_right _ _)
  have hN2 : N₂ ≤ N := (le_max_right _ _).trans (le_max_right _ _)
  have hL' := LB.isLB_linComb hP (K := Fin 2) ![𝟙 D.toPre.P.A.left, a.left] ![(N : ℤ), -1]
  have hG := hN₂ N hN2
  have hD := LB.isLB_div (isLB_lbPow hP N) hNb
  have hGen : IsGenerated (LB.LinComb D.toPre.P.L (K := Fin 2) ![𝟙 D.toPre.P.A.left, a.left] ![(N : ℤ), -1]) := by
    refine hG.of_lbIso hL' ((cls_eq_iff hL' hD).1 ?_)
    rw [cls_linComb hP, cls_div (isLB_lbPow hP N) hNb, cls_lbPow hP, cls_linComb hP]
    simp [Fin.sum_univ_two, GlobalTheory.CechPic.pull_id]
    abel
  refine ⟨N, le_trans hN₀ hN0, ⟨hN₁ N hN1, ?_⟩, ?_⟩
  · intro κ hs h0 hc hint hb y
    obtain ⟨r, hr⟩ := hκ κ hs h0 hc hint hb y
    obtain ⟨r', hr'⟩ := hint y
    refine ⟨r' ^ (N - N₀) * r, ?_⟩
    have hsplit : (κ y : FractionRing R) ^ N = (κ y : FractionRing R) ^ (N - N₀) * (κ y : FractionRing R) ^ N₀ := by
      rw [← pow_add, Nat.sub_add_cancel hN0]
    have hr0 : ((κ y ^ N₀ : (FractionRing R)ˣ) : FractionRing R) = (κ y : FractionRing R) ^ N₀ := Units.val_pow_eq_pow_val _ _
    rw [Units.val_pow_eq_pow_val, hsplit, ← hr0, hr, map_mul, map_pow, ← hr']
    ring
  · obtain ⟨x, hx⟩ := exists_closedFibre_pt R D
    obtain ⟨σ₀, hσ⟩ := hGen.exists_mem x
    refine ⟨σ₀, x, hx, fun j hj => ?_⟩
    exact (mem_nonzeroLocus_iff_basicOpen σ₀ hj).1 hσ

end GlobalTheory.MumMult
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierExponentNonzeroSection =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierExponentNonzeroSectionStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierExponentNonzeroSectionStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierExponentNonzeroSection\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierExponentNonzeroSectionStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordMultiplierThickeningChartSections =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordMultiplierThickeningChartSections", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartExpOn\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NonzeroAt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedFibreChartPointMumfordMultiplierNonz\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIntegralThetaExpansionOfSectionPowerGeThre\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierExponentNonzeroSectionStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMumfordMultiplierOfSectionStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.MumMult

theorem chart_main : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ b, FormalEnd U.toUnifPre a h' b → ∃ N : ℕ, 1 ≤ N ∧ ∃ m : ∀ (e : ℕ) (i i' : Fin 1 → U.LG.L.ι), Γ((thickObj R (maximalIdeal R) e G).left, (((b e).left ≫ (fstG (maximalIdeal R) e G).left) ⁻¹ᵁ secChart U.LG.L i ⊓ (fstG (maximalIdeal R) e G).left ⁻¹ᵁ secChart U.LG.L i')), (∀ k : ℕ, 3 ≤ k → ∀ s : H0 U.LG.L k, ∃ F : IntFam (maximalIdeal R) D.toPre (N * k), ∀ (e : ℕ) (i i' : Fin 1 → U.LG.L.ι), GlobalTheory.MumMult.ChartExpOn U.toUnifPre e (N * k) i' (((b e).left ≫ (fstG (maximalIdeal R) e G).left) ⁻¹ᵁ secChart U.LG.L i ⊓ (fstG (maximalIdeal R) e G).left ⁻¹ᵁ secChart U.LG.L i') (m e i i' ^ k * ((thickObj R (maximalIdeal R) e G).left.presheaf.map (homOfLE (inf_le_left : (((b e).left ≫ (fstG (maximalIdeal R) e G).left) ⁻¹ᵁ secChart U.LG.L i ⊓ (fstG (maximalIdeal R) e G).left ⁻¹ᵁ secChart U.LG.L i') ≤ ((b e).left ≫ (fstG (maximalIdeal R) e G).left) ⁻¹ᵁ secChart U.LG.L i)).op).hom ((((b e).left ≫ (fstG (maximalIdeal R) e G).left).app (secChart U.LG.L i)).hom (s.f i))) F.f) ∧ ∃ y : (thickObj R (maximalIdeal R) 0 G).left, (∃ i' : Fin 1 → U.LG.L.ι, y ∈ (fstG (maximalIdeal R) 0 G).left ⁻¹ᵁ secChart U.LG.L i') ∧ ∀ i i' : Fin 1 → U.LG.L.ι, y ∈ (((b 0).left ≫ (fstG (maximalIdeal R) 0 G).left) ⁻¹ᵁ secChart U.LG.L i ⊓ (fstG (maximalIdeal R) 0 G).left ⁻¹ᵁ secChart U.LG.L i') → y ∈ (thickObj R (maximalIdeal R) 0 G).left.basicOpen (m 0 i i') := by
  intro R _ _ _ hB D A G _ _ hG U a a' h h' hE b hb
  obtain ⟨N, hN, hpos, σ₀, x, hx, hσ⟩ := _root_.GlobalTheory.MumMult.exists_N_sec R hB D a a' h h' hE
  obtain ⟨m, hAct, hLead⟩ := _root_.GlobalTheory.MumMult.exists_mult_of_posN R hB D A G hG U a a' h h' hE b hb N hN hpos σ₀ x hx hσ
  refine ⟨N, hN, m, fun k hk s => ?_, _root_.GlobalTheory.MumMult.exists_pt_chart_of_leadPt R D A G U b m hLead⟩
  obtain ⟨f, hf⟩ := _root_.GlobalTheory.Mum.SecExp.exists_intFam R hB D A G hG U k hk s
  exact hAct k hk f s hf

end GlobalTheory.MumMult
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordMultiplierThickeningChartSections =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordSectionsMultiplierThickenings =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordSectionsMultiplierThickenings", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartExpOn\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSameExpansionThickeningOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsExpandsAtSectionUniformised\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordMultiplierThickeningChartSections\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsLeadOfUnif\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.MumMult

theorem main : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ b, FormalEnd U.toUnifPre a h' b → ∃ N : ℕ, 1 ≤ N ∧ ∀ k : ℕ, 3 ≤ k → ∃ S : H0 U.LG.L k → H0 U.LG.L (N * k), ∃ c : ∀ (e : ℕ) (i i' : Fin 1 → U.LG.L.ι), Γ((thickObj R (maximalIdeal R) e G).left, ((b e).left ≫ (fstG (maximalIdeal R) e G).left) ⁻¹ᵁ secChart U.LG.L i ⊓ (fstG (maximalIdeal R) e G).left ⁻¹ᵁ secChart U.LG.L i'), (∀ (e : ℕ) (s : H0 U.LG.L k) (i i' : Fin 1 → U.LG.L.ι), ((thickObj R (maximalIdeal R) e G).left.presheaf.map (homOfLE (inf_le_right : ((b e).left ≫ (fstG (maximalIdeal R) e G).left) ⁻¹ᵁ secChart U.LG.L i ⊓ (fstG (maximalIdeal R) e G).left ⁻¹ᵁ secChart U.LG.L i' ≤ (fstG (maximalIdeal R) e G).left ⁻¹ᵁ secChart U.LG.L i')).op).hom (((fstG (maximalIdeal R) e G).left.app (secChart U.LG.L i')).hom ((S s).f i')) = c e i i' * ((thickObj R (maximalIdeal R) e G).left.presheaf.map (homOfLE (inf_le_left : ((b e).left ≫ (fstG (maximalIdeal R) e G).left) ⁻¹ᵁ secChart U.LG.L i ⊓ (fstG (maximalIdeal R) e G).left ⁻¹ᵁ secChart U.LG.L i' ≤ ((b e).left ≫ (fstG (maximalIdeal R) e G).left) ⁻¹ᵁ secChart U.LG.L i)).op).hom ((((b e).left ≫ (fstG (maximalIdeal R) e G).left).app (secChart U.LG.L i)).hom (s.f i))) ∧ ∃ y : (thickObj R (maximalIdeal R) 0 G).left, (∃ i' : Fin 1 → U.LG.L.ι, y ∈ (fstG (maximalIdeal R) 0 G).left ⁻¹ᵁ secChart U.LG.L i') ∧ ∀ i i' : Fin 1 → U.LG.L.ι, y ∈ ((b 0).left ≫ (fstG (maximalIdeal R) 0 G).left) ⁻¹ᵁ secChart U.LG.L i ⊓ (fstG (maximalIdeal R) 0 G).left ⁻¹ᵁ secChart U.LG.L i' → y ∈ (thickObj R (maximalIdeal R) 0 G).left.basicOpen (c 0 i i') := by
  have hA := _root_.GlobalTheory.MumMult.chart_main
  have hU := _root_.GlobalTheory.MumMult.eq_of_expandsAt_of_chartExpOn
  intro R _ _ _ hB D A G _ _ hG U a a' h h' hE b hb
  obtain ⟨N, hN, m, hm, y, hy1, hy2⟩ := hA R hB D A G hG U a a' h h' hE b hb
  refine ⟨N, hN, fun k hk => ?_⟩
  choose F hF using hm k hk
  have hNk : 1 ≤ N * k := Nat.mul_pos hN (by omega)
  choose σ hσ using fun s => _root_.GlobalTheory.Mum.IntFam.exists_expandsAt R hB D A G U hG (N * k) hNk (F s)
  refine ⟨σ, fun e i i' => m e i i' ^ k, fun e s i i' => ?_, y, hy1, fun i i' hyW => ?_⟩
  · exact hU R _ D A G U.toUnifPre e (N * k) (σ s) (F s).f i' _ inf_le_right _ (hσ s e) (hF s e i i')
  · show y ∈ (thickObj R (maximalIdeal R) 0 G).left.basicOpen (m 0 i i' ^ k)
    have hk0 : 0 < k := by omega
    first
      | (rw [Scheme.basicOpen_pow _ _ hk0]; exact hy2 i i' hyW)

end GlobalTheory.MumMult
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordSectionsMultiplierThickenings =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordThickeningEndomorphismMapsSections =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordThickeningEndomorphismMapsSections", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionNonvanishingClosedFibreOfThreeLeStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordSectionsMultiplierThickenings\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.MumSec

def zeroSec {X : Scheme.{0}} (L : LB X) : LB.Sec L where
  f := fun _ => 0
  compat := fun _ _ => by simp

theorem main : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ b, FormalEnd U.toUnifPre a h' b → ∃ N : ℕ, 1 ≤ N ∧ ∃ S : ∀ k : ℕ, H0 U.LG.L k → H0 U.LG.L (N * k), (∀ (k e : ℕ) (s₁ s₂ : H0 U.LG.L k), SecRatioEq U.LG.L ((b e).left ≫ (fstG (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left s₁ s₂ (S k s₁) (S k s₂)) ∧ (∀ k : ℕ, 3 ≤ k → ∃ s₀ : H0 U.LG.L k, SecCoNonzero U.LG.L ((b 0).left ≫ (fstG (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left s₀ (S k s₀)) := by
  intro R _ _ _ hB D A G _ _ hG U a a' h h' hE b hb
  obtain ⟨N, hN, hP⟩ := _root_.GlobalTheory.MumMult.main R hB D A G hG U a a' h h' hE b hb
  classical
  let S : ∀ k : ℕ, H0 U.LG.L k → H0 U.LG.L (N * k) := fun k =>
    if hk : 3 ≤ k then (hP k hk).choose else fun _ => zeroSec _
  refine ⟨N, hN, S, ?_, ?_⟩
  · intro k e s₁ s₂ i i'
    by_cases hk : 3 ≤ k
    · obtain ⟨c, hc, -⟩ := (hP k hk).choose_spec
      have e1 := hc e s₁ i i'
      have e2 := hc e s₂ i i'
      have hS : S k = (hP k hk).choose := dif_pos hk
      rw [hS, e1, e2]
      ring
    · have hS : S k = fun _ => zeroSec _ := dif_neg hk
      rw [hS]
      dsimp only [zeroSec]
      erw [map_zero, map_zero]
      simp only [mul_zero]
  · intro k hk
    obtain ⟨c, hc, y, ⟨i', hi'⟩, hy⟩ := (hP k hk).choose_spec
    obtain ⟨s₀, i, hs⟩ := _root_.GlobalTheory.Mum.ClosedFibreBpf.exists_sec_ne_zero_at R hB D A G hG U k hk ((b 0).left.base y)
    have hu : y ∈ (thickObj R (maximalIdeal R) 0 G).left.basicOpen
        ((((b 0).left ≫ (fstG (maximalIdeal R) 0 G).left).app (secChart U.LG.L i)).hom (s₀.f i)) := by
      have h1 : y ∈ (b 0).left ⁻¹ᵁ (thickObj R (maximalIdeal R) 0 G).left.basicOpen
          (((fstG (maximalIdeal R) 0 G).left.app (secChart U.LG.L i)).hom (s₀.f i)) := hs
      rw [Scheme.preimage_basicOpen] at h1
      exact h1
    have hyW : y ∈ ((b 0).left ≫ (fstG (maximalIdeal R) 0 G).left) ⁻¹ᵁ secChart U.LG.L i ⊓
        (fstG (maximalIdeal R) 0 G).left ⁻¹ᵁ secChart U.LG.L i' :=
      ⟨Scheme.basicOpen_le _ _ hu, hi'⟩
    have hS : S k = (hP k hk).choose := dif_pos hk
    refine ⟨s₀, y, i, i', hu, ?_⟩
    rw [hS]
    have key := hc 0 s₀ i i'
    have hprod : y ∈ (thickObj R (maximalIdeal R) 0 G).left.basicOpen (c 0 i i' *
        ((thickObj R (maximalIdeal R) 0 G).left.presheaf.map (homOfLE (inf_le_left :
          ((b 0).left ≫ (fstG (maximalIdeal R) 0 G).left) ⁻¹ᵁ secChart U.LG.L i ⊓
            (fstG (maximalIdeal R) 0 G).left ⁻¹ᵁ secChart U.LG.L i' ≤
            ((b 0).left ≫ (fstG (maximalIdeal R) 0 G).left) ⁻¹ᵁ secChart U.LG.L i)).op).hom
          ((((b 0).left ≫ (fstG (maximalIdeal R) 0 G).left).app (secChart U.LG.L i)).hom (s₀.f i))) := by
      rw [Scheme.basicOpen_mul, Scheme.basicOpen_res]
      exact ⟨hy i i' hyW, hyW, hu⟩
    rw [← key, Scheme.basicOpen_res] at hprod
    exact hprod.2

end GlobalTheory.MumSec
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordThickeningEndomorphismMapsSections =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianGenericFibreHomExtendsNormalNoetheria =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianGenericFibreHomExtendsNormalNoetheria", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianHomExtensionHolds\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.GenericExistsUniqueOActOfIsGrpPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem GlobalTheory.Mum.semiAbelian_end_generic_extends : ∀ (R : Type) [CommRing R] [IsDomain R] [IsNoetherianRing R] [IsIntegrallyClosed R] (G : Over (Sp R)) [GrpObj G], IsSemiAbelian G → ∀ φ : (Over.pullback (jK R)).obj G ⟶ (Over.pullback (jK R)).obj G, IsMonHom φ → ∃ g : G ⟶ G, IsMonHom g ∧ (Over.pullback (jK R)).map g = φ := by
  intro R _ _ _ _ G _ hG φ hφ
  obtain ⟨F, ⟨hF, hF'⟩, -⟩ := GlobalTheory.semiAbelianHomExtension_holds.of_isGenericPointHom
    (GlobalTheory.Published.SemiAbelianHomExtension.isNormalScheme_spec R)
    (GlobalTheory.IsGenericPointHom.fractionField R (FractionRing R)) hG hG φ
  exact ⟨F, hF, hF'⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianGenericFibreHomExtendsNormalNoetheria =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalEndSecCoNonzeroLift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalEndSecCoNonzeroLift", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem mem_basicOpen_of_comp {X Y Y' : Scheme.{0}} (c : Y ⟶ Y') (f : Y' ⟶ X) {U : X.Opens} (r : Γ(X, U))
    {y : Y} (h : y ∈ Y.basicOpen ((c ≫ f).app U r)) : c y ∈ Y'.basicOpen (f.app U r) := by
  rw [← Scheme.preimage_basicOpen] at h ⊢
  exact h

theorem secCoNonzero_of_comp {X Y Y' : Scheme.{0}} (L : LB X) {k k' : ℕ} (c : Y ⟶ Y') (u v : Y' ⟶ X)
    (s : H0 L k) (t : H0 L k') (h : SecCoNonzero L (c ≫ u) (c ≫ v) s t) : SecCoNonzero L u v s t := by
  obtain ⟨y, i, i', h1, h2⟩ := h
  exact ⟨c y, i, i', mem_basicOpen_of_comp c u _ h1, mem_basicOpen_of_comp c v _ h2⟩

theorem formalEnd_secCoNonzero_lift : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (a : D.toPre.P.A ⟶ D.toPre.P.A) (h' : D.toPre.X →+ D.toPre.X) (b : ∀ e : ℕ, thickObj R (maximalIdeal R) e G ⟶ thickObj R (maximalIdeal R) e G), FormalEnd U.toUnifPre a h' b → ∀ (k k' : ℕ) (s : H0 U.LG.L k) (t : H0 U.LG.L k'), SecCoNonzero U.LG.L ((b 0).left ≫ (fstG (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left s t → ∀ e : ℕ, SecCoNonzero U.LG.L ((b e).left ≫ (fstG (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left s t := by
  intro R _ _ _ _ D A G _ _ _ U a h' b hb k k' s t h0 e
  induction e with
  | zero => exact h0
  | succ e ih =>
    apply secCoNonzero_of_comp U.LG.L (thickMap R (maximalIdeal R) e G)
    have hf : thickMap R (maximalIdeal R) e G ≫ (fstG (maximalIdeal R) (e + 1) G).left =
        (fstG (maximalIdeal R) e G).left := (pullback.lift_fst _ _ _).trans (Category.comp_id _)
    rw [hf, ← Category.assoc, hb.2.1 e, Category.assoc, hf]
    exact ih

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalEndSecCoNonzeroLift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemBasicOpenOfSectionRatioEqBasePoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemBasicOpenOfSectionRatioEqBasePoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSectionNonvanishingClosedFibreOfThreeLeStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem thick_apply_eq_closedPoint {R : Type} [CommRing R] [IsLocalRing R] (e : ℕ)
    (p : Spec (CommRingCat.of (R ⧸ maximalIdeal R ^ (e + 1)))) :
    thick R (maximalIdeal R) e p = closedPoint R := by
  apply _root_.GlobalTheory.ClosedFibreConn.thick_apply_eq <;> assumption

theorem exists_thick_zero {R : Type} [CommRing R] [IsLocalRing R] (e : ℕ) (G : Over (Sp R))
    (y : (thickObj R (maximalIdeal R) e G).left) :
    ∃ y₀ : (thickObj R (maximalIdeal R) 0 G).left,
      (fstG (maximalIdeal R) 0 G).left y₀ = (fstG (maximalIdeal R) e G).left y := by
  have hne : maximalIdeal R ^ (0 + 1) ≠ ⊤ := by
    rw [zero_add, pow_one]; exact (maximalIdeal.isMaximal R).ne_top
  haveI : Nontrivial (R ⧸ maximalIdeal R ^ (0 + 1)) := Ideal.Quotient.nontrivial_iff.2 hne
  haveI : IsLocalRing (R ⧸ maximalIdeal R ^ (0 + 1)) :=
    IsLocalRing.of_surjective' _ Ideal.Quotient.mk_surjective
  have h1 : G.hom (pullback.fst G.hom (thick R (maximalIdeal R) e) y) = closedPoint R := by
    rw [← Scheme.Hom.comp_apply, pullback.condition, Scheme.Hom.comp_apply, thick_apply_eq_closedPoint]
  obtain ⟨z, hz, -⟩ := Scheme.Pullback.exists_preimage_pullback (f := G.hom) (g := thick R (maximalIdeal R) 0)
    (pullback.fst G.hom (thick R (maximalIdeal R) e) y) (closedPoint _)
    (h1.trans (thick_apply_eq_closedPoint 0 _).symm)
  exact ⟨z, hz⟩

end GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem mem_basicOpen_of_secRatioEq : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (e k k' : ℕ), 3 ≤ k → ∀ (x : thickObj R (maximalIdeal R) e G ⟶ thickObj R (maximalIdeal R) e G) (T : H0 U.LG.L k → H0 U.LG.L k'), (∀ s₁ s₂ : H0 U.LG.L k, SecRatioEq U.LG.L (x.left ≫ (fstG (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left s₁ s₂ (T s₁) (T s₂)) → ∀ (y : (thickObj R (maximalIdeal R) e G).left) (s₀ : H0 U.LG.L k) (i' : Fin 1 → U.LG.L.ι), y ∈ (thickObj R (maximalIdeal R) e G).left.basicOpen (((fstG (maximalIdeal R) e G).left.app (secChart U.LG.L i')).hom ((T s₀).f i')) → ∃ i : Fin 1 → U.LG.L.ι, y ∈ (thickObj R (maximalIdeal R) e G).left.basicOpen ((((x).left ≫ (fstG (maximalIdeal R) e G).left).app (secChart U.LG.L i)).hom (s₀.f i)) := by
  intro R _ _ _ hB D A G _ _ hG U e k k' hk x T hT y s₀ i' hy
  obtain ⟨y₀, hy₀⟩ := exists_thick_zero e G (x.left y)
  obtain ⟨s₁, j, hs₁⟩ := _root_.GlobalTheory.Mum.ClosedFibreBpf.exists_sec_ne_zero_at R hB D A G hG U k hk y₀
  refine ⟨j, ?_⟩
  have hs₁' : (fstG (maximalIdeal R) 0 G).left y₀ ∈ G.left.basicOpen (s₁.f j) :=
    (Scheme.preimage_basicOpen (fstG (maximalIdeal R) 0 G).left (s₁.f j)).ge hs₁
  have hu : y ∈ (thickObj R (maximalIdeal R) e G).left.basicOpen
      (((x.left ≫ (fstG (maximalIdeal R) e G).left).app (secChart U.LG.L j)).hom (s₁.f j)) := by
    refine (Scheme.preimage_basicOpen (x.left ≫ (fstG (maximalIdeal R) e G).left) (s₁.f j)).le ?_
    show (x.left ≫ (fstG (maximalIdeal R) e G).left) y ∈ G.left.basicOpen (s₁.f j)
    rw [Scheme.Hom.comp_apply, ← hy₀]
    exact hs₁'
  by_contra hn
  have hE := congrArg (thickObj R (maximalIdeal R) e G).left.basicOpen (hT s₁ s₀ j i')
  simp only [Scheme.basicOpen_mul, Scheme.basicOpen_res] at hE
  have hmem : y ∈ ((x.left ≫ (fstG (maximalIdeal R) e G).left) ⁻¹ᵁ secChart U.LG.L j ⊓
      (fstG (maximalIdeal R) e G).left ⁻¹ᵁ secChart U.LG.L i') := by
    rw [TopologicalSpace.Opens.mem_inf]
    exact ⟨Scheme.basicOpen_le _ _ hu, Scheme.basicOpen_le _ _ hy⟩
  have h2 := hE.le (by
    simp only [TopologicalSpace.Opens.mem_inf] at hmem ⊢
    exact ⟨⟨hmem, hu⟩, ⟨hmem, hy⟩⟩)
  simp only [TopologicalSpace.Opens.mem_inf] at h2
  exact hn h2.1.2

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemBasicOpenOfSectionRatioEqBasePoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioAppRestrict =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioAppRestrict", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem secRatioEq_comp : ∀ {X Y Z : Scheme.{0}} (L : LB X) {k k' : ℕ} (u v : Y ⟶ X) (h : Z ⟶ Y) (s₁ s₂ : H0 L k) (t₁ t₂ : H0 L k'), SecRatioEq L u v s₁ s₂ t₁ t₂ → SecRatioEq L (h ≫ u) (h ≫ v) s₁ s₂ t₁ t₂ := by
  intros
  apply _root_.GlobalTheory.Mum.SecRatioEq.comp <;> assumption

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioAppRestrict =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianThickeningHomEqOfEqOnOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianThickeningHomEqOfEqOnOpen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatOpenPartGroupSchemeProductMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrreducibleSpaceFibreSemiAbelianFieldPoint\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveOpenPartProductMapIrreducibleFibres\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.MumAgree

theorem subsingleton_thick (R : Type) [CommRing R] [IsLocalRing R] (e : ℕ) :
    Subsingleton (Spec (CommRingCat.of (R ⧸ maximalIdeal R ^ (e + 1)))) := by
  have key : ∀ P : PrimeSpectrum (R ⧸ maximalIdeal R ^ (e + 1)),
      P.asIdeal.comap (Ideal.Quotient.mk (maximalIdeal R ^ (e + 1))) = maximalIdeal R := by
    intro P
    have hp : (P.asIdeal.comap (Ideal.Quotient.mk (maximalIdeal R ^ (e + 1)))).IsPrime :=
      Ideal.comap_isPrime _ _
    have hle : maximalIdeal R ^ (e + 1) ≤ P.asIdeal.comap (Ideal.Quotient.mk _) := by
      intro r hr
      rw [Ideal.mem_comap, Ideal.Quotient.eq_zero_iff_mem.2 hr]
      exact P.asIdeal.zero_mem
    have hm : maximalIdeal R ≤ _ := hp.le_of_pow_le hle
    exact ((maximalIdeal.isMaximal R).eq_of_le hp.ne_top hm).symm
  constructor
  intro P Q
  change PrimeSpectrum _ at P Q
  exact PrimeSpectrum.ext (Ideal.comap_injective_of_surjective _ Ideal.Quotient.mk_surjective
    ((key P).trans (key Q).symm))

theorem eq_of_eq_on_open : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (e : ℕ) (x x' : thickObj R (maximalIdeal R) e G ⟶ thickObj R (maximalIdeal R) e G), IsMonHom x → IsMonHom x' → ∀ (W : (thickObj R (maximalIdeal R) e G).left.Opens) (y : (thickObj R (maximalIdeal R) e G).left), y ∈ W → W.ι ≫ x.left = W.ι ≫ x'.left → x = x' := by
  intro R _ _ _ _ D A G _ _ hG U e x x' hx hx' W y hy hW
  have hH : IsSemiAbelian (thickObj R (maximalIdeal R) e G) :=
    IsSemiAbelian.pullback (thick R (maximalIdeal R) e) G hG
  have := hH.smooth
  have hflat : Flat (thickObj R (maximalIdeal R) e G).hom := inferInstance
  let V : Over (Spec (CommRingCat.of (R ⧸ maximalIdeal R ^ (e + 1)))) :=
    Over.mk (W.ι ≫ (thickObj R (maximalIdeal R) e G).hom)
  let j : V ⟶ thickObj R (maximalIdeal R) e G := Over.homMk W.ι rfl
  have hsub := subsingleton_thick R e
  have hVs : Surjective V.hom := ⟨fun s => ⟨⟨y, hy⟩, Subsingleton.elim _ _⟩⟩
  have hj : IsOpenImmersion j.left := inferInstanceAs (IsOpenImmersion W.ι)
  have hF := GlobalTheory.Mum.FlatMul.main _ _ V j hj hflat
  have hS := GlobalTheory.Mum.surjective_mul_of_open_of_irreducible_fibres _ _ V j hj hVs
    (fun K _ t => GlobalTheory.SemiAbFibre.irreducibleSpace_fibre _ _ hH K t)
  have : Epi ((fst V V ≫ j) * (snd V V ≫ j)).left := Flat.epi_of_flat_of_surjective _
  have : Epi ((fst V V ≫ j) * (snd V V ≫ j)) := Over.epi_of_epi_left _
  have hjx : j ≫ x = j ≫ x' := Over.OverMorphism.ext hW
  rw [← cancel_epi ((fst V V ≫ j) * (snd V V ≫ j)), MonObj.mul_comp, MonObj.mul_comp,
    Category.assoc, Category.assoc, Category.assoc, Category.assoc, hjx]

end GlobalTheory.MumAgree
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianThickeningHomEqOfEqOnOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningEqOfGenericSectionRatios =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningEqOfGenericSectionRatios", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AppInjectiveOfIsDominant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FormalEndSecCoNonzeroLift\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemBasicOpenOfSectionRatioEqBasePoint\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioAppRestrict\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianThickeningHomEqOfEqOnOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupMorphismsAgreeOfSectionRatiosStatement\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.IsIntegralAndIsNormalSchemeOfSmoothDvr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem fstG_comm_thick (R : Type) [CommRing R] (I : Ideal R) (e : ℕ) (G : Over (Sp R)) (g : G ⟶ G) :
    ((Over.pullback (thick R I e)).map g).left ≫ (fstG I e G).left = (fstG I e G).left ≫ g.left := by
  first
    | (have := congrArg CommaMorphism.left ((Over.mapPullbackAdj (thick R I e)).counit.naturality g)
       simpa [fstG] using this)

theorem thick_eq_of_ratios : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ b, FormalEnd U.toUnifPre a h' b → ∀ (N : ℕ) (S : ∀ k : ℕ, H0 U.LG.L k → H0 U.LG.L (N * k)), (∀ (k e : ℕ) (s₁ s₂ : H0 U.LG.L k), SecRatioEq U.LG.L ((b e).left ≫ (fstG (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left s₁ s₂ (S k s₁) (S k s₂)) → (∀ k : ℕ, 3 ≤ k → ∃ s₀ : H0 U.LG.L k, SecCoNonzero U.LG.L ((b 0).left ≫ (fstG (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left s₀ (S k s₀)) → ∀ φ : (Over.pullback (jK R)).obj G ⟶ (Over.pullback (jK R)).obj G, (∀ (k : ℕ) (s₁ s₂ : H0 U.LG.L k), SecRatioEq U.LG.L (φ.left ≫ pullback.fst G.hom (jK R)) (pullback.fst G.hom (jK R)) s₁ s₂ (S k s₁) (S k s₂)) → ∀ g : G ⟶ G, IsMonHom g → (Over.pullback (jK R)).map g = φ → ∀ e, (Over.pullback (thick R (maximalIdeal R) e)).map g = b e := by
  intro R _ _ _ hB D A G _ _ hG U a a' h h' hE b hb N S hS hC φ hφ g hg hgφ e
  have hcomm : φ.left ≫ pullback.fst G.hom (jK R) = pullback.fst G.hom (jK R) ≫ g.left := by
    subst hgφ
    first
      | (simp; done)
  have hGI : GeometricallyIntegral G.hom := GlobalTheory.geometricallyIntegral_of_isSemiAbelian G (h := hG)
  have hfin : Finite (irreducibleComponents (Sp R)) := by
    rw [irreducibleComponents_eq_singleton]
    infer_instance
  have hfl : Flat G.hom := by
    obtain ⟨_, hsm, -, -, -, -⟩ := hG
    infer_instance
  have hred : IsReduced G.left :=
    GeometricallyReduced.isReduced_of_flat_of_finite_irreducibleComponents G.hom
  have hdom : IsDominant (pullback.fst G.hom (jK R)) :=
    isDominant_genericFibre_of_flat R (FractionRing R) G.hom

  have hGrat : ∀ (k : ℕ) (s₁ s₂ : H0 U.LG.L k),
      SecRatioEq U.LG.L g.left (𝟙 G.left) s₁ s₂ (S k s₁) (S k s₂) := by
    intro k s₁ s₂
    apply SecRatioEq.of_isDominant (pullback.fst G.hom (jK R))
    rw [← hcomm, Category.comp_id]
    exact hφ k s₁ s₂

  have hxc : ((Over.pullback (thick R (maximalIdeal R) e)).map g).left ≫ (fstG (maximalIdeal R) e G).left =
      (fstG (maximalIdeal R) e G).left ≫ g.left := fstG_comm_thick R (maximalIdeal R) e G g
  have hxrat : ∀ (k : ℕ) (s₁ s₂ : H0 U.LG.L k),
      SecRatioEq U.LG.L (((Over.pullback (thick R (maximalIdeal R) e)).map g).left ≫ (fstG (maximalIdeal R) e G).left)
        (fstG (maximalIdeal R) e G).left s₁ s₂ (S k s₁) (S k s₂) := by
    intro k s₁ s₂
    have := secRatioEq_comp U.LG.L g.left (𝟙 G.left) (fstG (maximalIdeal R) e G).left s₁ s₂ (S k s₁) (S k s₂)
      (hGrat k s₁ s₂)
    rwa [Category.comp_id, ← hxc] at this
  have hxmon : IsMonHom ((Over.pullback (thick R (maximalIdeal R) e)).map g) := inferInstance
  obtain ⟨k₀, hk₀, hnear⟩ := _root_.GlobalTheory.Mum.agree_near_of_ratios R hB D A G hG U
  obtain ⟨s₀, hs₀⟩ := hC k₀ hk₀

  obtain ⟨y, i'', i', hy1, hy2⟩ :=
    formalEnd_secCoNonzero_lift R hB D A G hG U a h' b hb k₀ (N * k₀) s₀ (S k₀ s₀) hs₀ e
  obtain ⟨i, hy0⟩ := _root_.GlobalTheory.Mum.mem_basicOpen_of_secRatioEq R hB D A G hG U e k₀ (N * k₀) hk₀
    ((Over.pullback (thick R (maximalIdeal R) e)).map g) (S k₀) (hxrat k₀) y s₀ i' hy2
  obtain ⟨W, hyW, hW⟩ := hnear e k₀ (N * k₀) le_rfl ((Over.pullback (thick R (maximalIdeal R) e)).map g) (b e)
    (S k₀) (hxrat k₀) (fun s₁ s₂ => hS k₀ e s₁ s₂) y s₀ i i' i'' hy0 hy2 hy1
  exact _root_.GlobalTheory.MumAgree.eq_of_eq_on_open R hB D A G hG U e _ (b e) hxmon (hb.1 e) W y hyW hW

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningEqOfGenericSectionRatios =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningEqOfGenericSectionRatiosStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningEqOfGenericSectionRatiosStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningEqOfGenericSectionRatios\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem _root_.GlobalTheory.T.thickening_eq_of_generic_section_ratios : (∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ b, FormalEnd U.toUnifPre a h' b → ∀ (N : ℕ) (S : ∀ k : ℕ, H0 U.LG.L k → H0 U.LG.L (N * k)), (∀ (k e : ℕ) (s₁ s₂ : H0 U.LG.L k), SecRatioEq U.LG.L ((b e).left ≫ (fstG (maximalIdeal R) e G).left) (fstG (maximalIdeal R) e G).left s₁ s₂ (S k s₁) (S k s₂)) → (∀ k : ℕ, 3 ≤ k → ∃ s₀ : H0 U.LG.L k, SecCoNonzero U.LG.L ((b 0).left ≫ (fstG (maximalIdeal R) 0 G).left) (fstG (maximalIdeal R) 0 G).left s₀ (S k s₀)) → ∀ φ : (Over.pullback (jK R)).obj G ⟶ (Over.pullback (jK R)).obj G, (∀ (k : ℕ) (s₁ s₂ : H0 U.LG.L k), SecRatioEq U.LG.L (φ.left ≫ pullback.fst G.hom (jK R)) (pullback.fst G.hom (jK R)) s₁ s₂ (S k s₁) (S k s₂)) → ∀ g : G ⟶ G, IsMonHom g → (Over.pullback (jK R)).map g = φ → ∀ e, (Over.pullback (thick R (maximalIdeal R) e)).map g = b e) := by
  first | exact @GlobalTheory.Mum.thick_eq_of_ratios
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningEqOfGenericSectionRatiosStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFormalEndomorphismAlgebraic =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFormalEndomorphismAlgebraic", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGenericFibreHomOfFormalSectionRatiosStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SecRatioEqRefl\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordThickeningEndomorphismMapsSections\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianGenericFibreHomExtendsNormalNoetheria\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThickeningEqOfGenericSectionRatiosStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem formalEnd_algebraic : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (a a' : D.toPre.P.A ⟶ D.toPre.P.A) (h h' : D.toPre.X →+ D.toPre.X), EndData D.toPre a a' h h' → ∀ b, FormalEnd U.toUnifPre a h' b → ∃ g : G ⟶ G, IsMonHom g ∧ ∀ e, (Over.pullback (thick R (maximalIdeal R) e)).map g = b e := by
  intro R _ _ _ hR D A G _ _ hG U a a' h h' hE b hb
  obtain ⟨N, hN, S, hS, hnd⟩ := _root_.GlobalTheory.MumSec.main R hR D A G hG U a a' h h' hE b hb
  obtain ⟨φ, hφ, hgen⟩ := _root_.GlobalTheory.Mum.GenericRatio.exists_generic_hom R hR D A G hG U a a' h h' hE b hb N S hN hS hnd
  have := hR.1.1
  have := hR.1.2.2.1
  obtain ⟨g, hg, hgφ⟩ := _root_.GlobalTheory.Mum.semiAbelian_end_generic_extends R G hG φ hφ
  exact ⟨g, hg, GlobalTheory.T.thickening_eq_of_generic_section_ratios R hR D A G hG U a a' h h' hE b hb N S hS hnd φ hgen g hg hgφ⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFormalEndomorphismAlgebraic =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFormalEndomorphismAlgebraicStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFormalEndomorphismAlgebraicStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFormalEndomorphismAlgebraic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MumfordFormalEndomorphismAlgebraicStatement =====
