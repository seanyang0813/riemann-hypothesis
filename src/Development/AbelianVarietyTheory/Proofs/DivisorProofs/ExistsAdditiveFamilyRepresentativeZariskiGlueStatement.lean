module

public import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentsAdditiveLineBundleFamiliesUniqueIso
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseChangeStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresentingStatement
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

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentsAdditiveLineBundleFamiliesUniqueIsoStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveFamilyRepresentativeZariskiGlue, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveFamilyRepresentativeZariskiGlueStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentsAdditiveLineBundleFamiliesUniqueIsoStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentsAdditiveLineBundleFamiliesUniqueIsoStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentsAdditiveLineBundleFamiliesUniqueIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentsAdditiveLineBundleFamiliesUniqueIsoStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveFamilyRepresentativeZariskiGlue =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveFamilyRepresentativeZariskiGlue", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseChangeStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresentingStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentsAdditiveLineBundleFamiliesUniqueIsoStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualCon.ZarGlue

variable {S : Scheme.{0}} {A : Over S} [GrpObj A]

theorem fam_pull {T Y : Over S} {N : LB (A ⊗ T).left} (hN : Fam A N) (y : Y ⟶ T) :
    Fam A (ev N (fst A Y) (snd A Y ≫ y)) := by
  have hL : (ev N (fst A Y) (snd A Y ≫ y)).IsLB := pull_isLB hN.isLB _
  refine ⟨hL, (isAdditive_iff hL).2 fun Z a a' t => ?_⟩
  rw [evc_ev hN.isLB _ _ hL, evc_ev hN.isLB _ _ hL, evc_ev hN.isLB _ _ hL]
  simp only [lift_fst, lift_snd_assoc]
  exact (isAdditive_iff hN.isLB).1 hN.add Z a a' (t ≫ y)


omit [GrpObj A] in
theorem hom_open_eq (V : S.Opens) {Y : Over S} (u u' : Y ⟶ Over.mk V.ι) : u = u' := by
  apply Over.OverMorphism.ext
  have h : u.left ≫ V.ι = u'.left ≫ V.ι := (Over.w u).trans (Over.w u').symm
  exact (cancel_mono V.ι).1 h


omit [GrpObj A] in
theorem exists_hom_open (V : S.Opens) (Y : Over S) (h : ∀ z, Y.hom z ∈ V) : Nonempty (Y ⟶ Over.mk V.ι) := by
  refine ⟨Over.homMk (IsOpenImmersion.lift V.ι Y.hom ?_) (IsOpenImmersion.lift_fac _ _ _)⟩
  rintro _ ⟨z, rfl⟩
  rw [Scheme.Opens.range_ι]
  exact h z

theorem isChart_of_rep (V : S.Opens) {B : Over S} (b : B ⟶ Over.mk V.ι) {P : LB (A ⊗ B).left} (h : Rep A b P) :
    IsChart A P := by
  refine ⟨h.fam, ?_, ?_⟩
  · intro Y u u' hs
    have hA : (ev P (fst A Y) (snd A Y ≫ u)).IsLB := pull_isLB h.fam.isLB _
    have hB : (ev P (fst A Y) (snd A Y ≫ u')).IsLB := pull_isLB h.fam.isLB _
    obtain ⟨x, -, hx⟩ := h.univ Y (u ≫ b) _ (fam_pull h.fam u)
    rw [hx u ⟨rfl, LBIso.trans hA hB hA hs (LBIso.symm hs)⟩, hx u' ⟨hom_open_eq V _ _, hs⟩]
  · intro T N hN
    refine ⟨T.hom ⁻¹ᵁ V, fun Y y => ⟨?_, ?_⟩⟩
    · rintro ⟨u, -⟩ z
      have hb : b.left ≫ V.ι = B.hom := Over.w b
      have e : (u.left ≫ b.left) ≫ V.ι = y.left ≫ T.hom := by
        rw [Over.w y, Category.assoc, hb, Over.w u]
      have hmem : (y.left ≫ T.hom) z ∈ Set.range V.ι := ⟨(u.left ≫ b.left) z, by rw [← e]; rfl⟩
      rw [Scheme.Opens.range_ι] at hmem
      exact hmem
    · intro hz
      have hY : ∀ z, Y.hom z ∈ V := fun z => by
        rw [← Over.w y]
        exact hz z
      obtain ⟨t⟩ := exists_hom_open V Y hY
      obtain ⟨x, ⟨-, hx⟩, -⟩ := h.univ Y t _ (fam_pull hN y)
      exact ⟨x, hx⟩


omit [GrpObj A] in
theorem good_iso_comp {g : ℕ} {X X' Y : Scheme.{0}} (e : X' ⟶ X) [IsIso e] {f : X ⟶ Y}
    (h : GlobalTheory.DualCon.Good g f) : GlobalTheory.DualCon.Good g (e ≫ f) := ⟨MorphismProperty.RespectsIso.precomp @IsProper e f h.proper,
  by
    haveI := h.smooth
    have h0 : SmoothOfRelativeDimension (0 + g) (e ≫ f) := inferInstance
    rwa [zero_add] at h0,
  by
    haveI := h.conn
    have hsq : IsPullback e (e ≫ f) f (𝟙 Y) := IsPullback.of_horiz_isIso ⟨by simp⟩
    exact MorphismProperty.of_isPullback (P := @GeometricallyConnected) hsq h.conn⟩

theorem zariski_glue : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A → ∀ (Ix : Type) (V : Ix → S.Opens) (g : Ix → ℕ), (∀ s : S, ∃ i, s ∈ V i) → (∀ i, HasRep A (g i) (Over.mk (V i).ι)) → ∃ (B : Over S) (P : LB (A ⊗ B).left), Rep A (toUnit B) P ∧ ∀ i, GlobalTheory.DualCon.Good (g i) (pullback.snd B.hom (V i).ι) := by
  intro S A _ hA Ix V g hcov hrep
  have hrep' : ∀ i, ∃ (B : Over S) (b : B ⟶ Over.mk (V i).ι) (P : LB (A ⊗ B).left),
      Rep A b P ∧ GlobalTheory.DualCon.Good (g i) b.left := hrep
  choose Bi bi Pi hRi hGi using hrep'
  obtain ⟨B, P, j, hR, -, -, -⟩ := _root_.GlobalTheory.PicGlue.glue S A hA Ix Bi Pi
    (fun i => isChart_of_rep (V i) (bi i) (hRi i)) (by
      intro K _ _ s N hN
      obtain ⟨i, hi⟩ := hcov (s (default : Sp K))
      have hs : ∀ z : Sp K, s z ∈ V i := fun z => by
        rw [Subsingleton.elim z default]
        exact hi
      obtain ⟨t⟩ := exists_hom_open (V i) (Over.mk s) hs
      obtain ⟨x, ⟨-, hx⟩, -⟩ := (hRi i).univ _ t N hN
      exact ⟨i, x, (same_id_iff hN.isLB (hRi i).fam.isLB x).2 hx⟩)
  refine ⟨B, P, hR, fun i => ?_⟩
  have hpb : IsPullback (fst B (Over.mk (V i).ι)) (snd B (Over.mk (V i).ι)) (toUnit B)
      (toUnit (Over.mk (V i).ι)) :=
    IsPullback.of_is_product' (CartesianMonoidalCategory.tensorProductIsBinaryProduct _ _)
      SemiCartesianMonoidalCategory.isTerminalTensorUnit
  have hR' := _root_.GlobalTheory.DualCon.Rep.baseChange S A B (𝟙_ (Over S)) (Over.mk (V i).ι) (B ⊗ Over.mk (V i).ι) (toUnit B) P
    (toUnit _) (fst _ _) (snd _ _) hR hpb
  obtain ⟨e, he, -⟩ := _root_.GlobalTheory.DualCon.rep_unique S A _ _ _ (snd B (Over.mk (V i).ι)) _ (bi i) (Pi i) hR' (hRi i)
  haveI : IsIso e.hom.left := Functor.map_isIso (Over.forget _) e.hom
  have h2 := good_iso_comp e.hom.left (hGi i)
  rw [← Over.comp_left, he] at h2
  exact h2

end GlobalTheory.DualCon.ZarGlue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveFamilyRepresentativeZariskiGlue =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveFamilyRepresentativeZariskiGlueStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveFamilyRepresentativeZariskiGlueStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveFamilyRepresentativeZariskiGlue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAdditiveFamilyRepresentativeZariskiGlueStatement =====
