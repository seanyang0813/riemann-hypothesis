module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis
public import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.AbelianProjectiveBaseChange
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsSectionLinearCombinationOfCompatibleThicke
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.SectionArithmetic
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZeroStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Proofs.CoherentCohomologyProofs.AbelianProjectiveBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsSectionLinearCombinationOfCompatibleThicke\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.SectionArithmetic\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

namespace GlobalTheory.TwFam.AdicSum

variable {R : Type} [CommRing R] [IsDomain R]

theorem exists_finsum {D : DegPre R} {a : D.P.A ⟶ D.P.A} {n j : ℤ} {Ix : Type} {w : Ix → D.X}
    (s : ∀ i, SecT D a n j (w i)) (β : D.X) (T : Finset Ix) (hT : ∀ i ∈ T, w i = β) :
    ∃ g : SecT D a n j β, ∀ (Z : Scheme.{0}) (r : Z ⟶ D.P.A.left) (z : Z) (J), Good D.P.L z J →
      sval g r z J = ∑ i ∈ T, sval (s i) r z J := by
  classical
  induction T using Finset.induction_on with
  | empty => exact ⟨zeroT D a n j β, fun Z r z J hJ => by rw [sval_zeroT _ _ _ _ _ _ z J hJ, Finset.sum_empty]⟩
  | insert i T hi ih =>
    obtain ⟨g, hg⟩ := ih fun k hk => hT k (Finset.mem_insert_of_mem hk)
    obtain rfl := hT i (Finset.mem_insert_self _ _)
    refine ⟨H1.SectionArithmetic.secAdd (s i) g, fun Z r z J hJ => ?_⟩
    rw [Finset.sum_insert hi, ← hg Z r z J hJ]
    exact gs_add r z _ (hJ.mem _ r) _ _


open Classical in
theorem sum_indep (I : Ideal R) {D : DegPre R} {a : D.P.A ⟶ D.P.A} {n j : ℤ} {Ix : Type} {w : Ix → D.X}
    (s : ∀ i, SecT D a n j (w i)) (e : ℕ) (S S' : Finset Ix) (hS : ∀ i ∉ S, Van I (s i) e)
    (hS' : ∀ i ∉ S', Van I (s i) e) (δ : D.X) {Z : Scheme.{0}} (x : Z ⟶ (thickObj R I e D.P.A).left) (z : Z) (J)
    (hJ : Good D.P.L z J) :
    ∑ i ∈ S.filter (fun i => w i = δ), sval (s i) (x ≫ pullback.fst D.P.A.hom (thick R I e)) z J =
      ∑ i ∈ S'.filter (fun i => w i = δ), sval (s i) (x ≫ pullback.fst D.P.A.hom (thick R I e)) z J := by
  have key : ∀ T T' : Finset Ix, (∀ i ∉ T, Van I (s i) e) → T ⊆ T' →
      ∑ i ∈ T.filter (fun i => w i = δ), sval (s i) (x ≫ pullback.fst D.P.A.hom (thick R I e)) z J =
      ∑ i ∈ T'.filter (fun i => w i = δ), sval (s i) (x ≫ pullback.fst D.P.A.hom (thick R I e)) z J :=
    fun T T' hT h => Finset.sum_subset (Finset.filter_subset_filter _ h) fun i hi hi' =>
      hT i (fun hm => hi' (Finset.mem_filter.2 ⟨hm, (Finset.mem_filter.1 hi).2⟩)) Z x z J hJ
  exact (key S (S ∪ S') hS Finset.subset_union_left).trans (key S' (S ∪ S') hS' Finset.subset_union_right).symm

omit [IsDomain R] in
theorem thickMap_fst (I : Ideal R) (e : ℕ) (G : Over (Spec (CommRingCat.of R))) :
    thickMap R I e G ≫ pullback.fst G.hom (thick R I (e + 1)) = pullback.fst G.hom (thick R I e) :=
  (pullback.lift_fst _ _ _).trans (Category.comp_id _)

theorem van_of_succ (I : Ideal R) {D : DegPre R} {K : Type} [Fintype K] {φ : K → (D.P.A.left ⟶ D.P.A.left)} {ε : K → ℤ}
    (s : LB.Sec (LB.LinComb D.P.L φ ε)) (e : ℕ) (h : Van I s (e + 1)) : Van I s e := fun Z x z J hJ => by
  have := h Z (x ≫ thickMap R I e D.P.A) z J hJ
  rwa [Category.assoc, thickMap_fst] at this

theorem exists_isSum : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)), ∀ (a : D.toPre.P.A ⟶ D.toPre.P.A), ∀ (n j : ℤ) (Ix : Type) (w : Ix → D.toPre.X) (s : ∀ i, SecT D.toPre a n j (w i)), Small (maximalIdeal R) s → ∃ F : ∀ β, SecT D.toPre a n j β, IsSum (maximalIdeal R) s F ∧ Small (maximalIdeal R) (w := id) F := by
  intro R _ _ _ hR D a n j Ix w s hs
  classical
  have hC := hR.2.2.2
  have hS : ∀ e, ∀ i ∉ (hs e).toFinset, Van (maximalIdeal R) (s i) e := fun e i hi => by
    by_contra h
    exact hi ((Set.Finite.mem_toFinset _).2 h)
  choose g hg using fun e β => exists_finsum s β ((hs e).toFinset.filter (fun i => w i = β))
    (fun i hi => (Finset.mem_filter.1 hi).2)
  choose F hF using fun β => GlobalTheory.SecAlgLinComb.exists_sec_linComb R (maximalIdeal R) hC D.toPre.P.A
    D.toPre.P.isAb.smooth (AbProj.isProjBy_of_isPullback D.toPre.P (IsPullback.id_horiz _)) _ D.toPre.P.L (Fin 5)
    (tφ D.toPre a β) (tε n j) _ D.toPre.P.isLB (fun _ _ => rfl)
    (fun e => H1.SectionArithmetic.pullSec (g e β) (pullback.fst D.toPre.P.A.hom (thick R (maximalIdeal R) e)))
    (fun e z J hJ => by
      refine (H1.SectionArithmetic.sval_pullSec _ _ _ z hJ).trans (Eq.trans ?_ (H1.SectionArithmetic.sval_pullSec _ _ _ z hJ).symm)
      rw [thickMap_fst, hg _ _ _ _ z J hJ, hg _ _ _ _ z J hJ]
      refine Eq.trans ?_ (sum_indep (maximalIdeal R) s e _ _ (fun i hi => van_of_succ _ _ e (hS (e + 1) i hi)) (hS e) β
        (𝟙 _) z J hJ)
      rw [Category.id_comp])
  have hsum : IsSum (maximalIdeal R) s F := fun e S hS' δ Z x z J hJ => by
    refine (hF δ e Z x z J hJ).trans ((H1.SectionArithmetic.sval_pullSec _ _ _ z hJ).trans ((hg _ _ _ _ z J hJ).trans ?_))
    convert sum_indep (maximalIdeal R) s e _ _ (hS e) hS' δ x z J hJ
  refine ⟨F, hsum, fun e => ((hs e).image w).subset fun β hβ => ?_⟩
  by_contra hn
  refine hβ fun Z x z J hJ => (hsum e _ (hS e) β Z x z J hJ).trans (Finset.sum_eq_zero fun i hi => ?_)
  obtain ⟨h₁, h₂⟩ := Finset.mem_filter.1 hi
  exact (hn ⟨i, (Set.Finite.mem_toFinset _).1 h₁, h₂⟩).elim

end GlobalTheory.TwFam.AdicSum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZeroStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZeroStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOneBis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum GlobalTheory.TwFam

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdicSumTwistedSectionFamilyTendsToZeroStatement =====
