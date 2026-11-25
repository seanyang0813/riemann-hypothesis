module

public import Development.EtaleCohomology.EtaleSheaves.NeighbourhoodKilling
public import Development.EtaleCohomology.EtaleSheaves.GlueRelPf
public import Development.EtaleCohomology.EtaleSheaves.BridgeYfiPf
public import Development.EtaleCohomology.EtaleSheaves.GlueRelPfNat
public import Development.EtaleCohomology.KummerTheory.DictNormalPf
public import Development.EtaleCohomology.KummerTheory.ContCut
public import Development.EtaleCohomology.KummerTheory.AffRingPf
public import Development.EtaleCohomology.KummerTheory.BcHomIsPullback
public import Development.EtaleCohomology.KummerTheory.DeltaPf
public import Development.EtaleCohomology.KummerTheory.DictExistPf
public import Development.EtaleCohomology.KummerTheory.DictZeroPf
public import Development.EtaleCohomology.KummerTheory.ExactPf
public import Development.EtaleCohomology.KummerTheory.FivePf
public import Development.EtaleCohomology.KummerTheory.FlasquePf
public import Development.EtaleCohomology.KummerTheory.GluePf
public import Development.EtaleCohomology.KummerTheory.ISupFinSuccEq
public import Development.EtaleCohomology.KummerTheory.LimOfIso
public import Development.EtaleCohomology.KummerTheory.MVnatPf
public import Development.EtaleCohomology.KummerTheory.NrmMkPf
public import Development.EtaleCohomology.KummerTheory.InjSlice
public import Development.EtaleCohomology.KummerTheory.SHenCutPf
public import Development.EtaleCohomology.EtaleSheaves.GeoProof
public import Development.EtaleCohomology.EtaleSheaves.SecondDegreeKilling.LeafKill2Of
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.Lemma
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
import Development.EtaleCohomology.EtaleSheaves.SecondDegreeKilling.HkpullComp
import Development.EtaleCohomology.KummerTheory.DictPfEv
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.CommutativeAlgebra.EtaleCohomologyClassKilledOnNbhdPair, Development.EtaleCohomology.EtaleSheaves.GlueRelPfCone, Development.AutomorphicArithmetic.CommutativeAlgebra.RelativeCohomologyColimitOfExactOfNaturality, Development.AutomorphicArithmetic.CommutativeAlgebra.RelativeCohomologyConnectingNaturality, Development.EtaleCohomology.KummerTheory.FinCont, Development.EtaleCohomology.KummerTheory.FinSHen, Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.AffineGeometricCaseOfObstructionExactNatural, Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.NeighbourhoodCohomologyObstructionExact, Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.NeighbourhoodShrinkingOfObstructionExactNatural, Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.EtaleCohomologyClassKilledOnNeighborhood

-- ===== clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.EtaleCohomologyClassKilledOnNbhdPair =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.CommutativeAlgebra.EtaleCohomologyClassKilledOnNbhdPair", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.NeighbourhoodKilling\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits

namespace UpperTheory.NaturalityElementwise

variable {J : Type} [SmallCategory J]

private lemma sq_el {A B C D : AddCommGrpCat.{1}} {p : A ⟶ B} {q : B ⟶ D} {r : A ⟶ C} {s : C ⟶ D}
    (h : p ≫ q = r ≫ s) (x : A) : q.hom (p.hom x) = s.hom (r.hom x) := by
  have := congrArg (fun g => g.hom x) h
  simpa using this

private lemma nat_el {F G : J ⥤ AddCommGrpCat.{1}} (η : F ⟶ G) {a b : J} (f : a ⟶ b) (x : F.obj a) :
    (η.app b).hom ((F.map f).hom x) = (G.map f).hom ((η.app a).hom x) :=
  sq_el (η.naturality f) x

private lemma w_el {F : J ⥤ AddCommGrpCat.{1}} (c : Cocone F) {a b : J} (f : a ⟶ b) (x : F.obj a) :
    (c.ι.app b).hom ((F.map f).hom x) = (c.ι.app a).hom x := by
  have := congrArg (fun g => g.hom x) (c.w f)
  simpa using this

private lemma comp_el {F : J ⥤ AddCommGrpCat.{1}} {a b c : J} (f : a ⟶ b) (g : b ⟶ c) (x : F.obj a) :
    (F.map (f ≫ g)).hom x = (F.map g).hom ((F.map f).hom x) := by
  simp

end UpperTheory.NaturalityElementwise

open UpperTheory.NaturalityElementwise in
theorem UpperTheory.etaleCohomology_class_killed_on_nbhd_pair :
    LateralTheory.E.NeighbourhoodKilling.PairFive := by
  intro J _ _ T j x hx

  have h0 : (T.cYm.ι.app j).hom ((T.fg.app j).hom x) = 0 := by
    rw [← sq_el (T.fg_w j) x, hx, map_zero]
  obtain ⟨j1, f1, h1⟩ := T.injYm j _ h0

  have h2 : (T.fg.app j1).hom ((T.Rm.map f1).hom x) = 0 := by
    rw [nat_el T.fg f1 x, h1]
  obtain ⟨w, hw⟩ := T.exR j1 _ h2

  have h3 : T.dlL.hom ((T.cWp.ι.app j1).hom w) = 0 := by
    rw [sq_el (T.dl_w j1) w, hw, w_el T.cR f1 x, hx]
  obtain ⟨y, hy⟩ := T.exWL _ h3
  obtain ⟨j2, y', rfl⟩ := T.surYp y

  let a : j1 ⟶ IsFiltered.max j1 j2 := IsFiltered.leftToMax j1 j2
  let b : j2 ⟶ IsFiltered.max j1 j2 := IsFiltered.rightToMax j1 j2
  have h4 : (T.cWp.ι.app _).hom ((T.Wp.map a).hom w - (T.rs.app _).hom ((T.Yp.map b).hom y')) = 0 := by
    rw [map_sub, w_el T.cWp a w, ← sq_el (T.rs_w _) ((T.Yp.map b).hom y'), w_el T.cYp b y', hy,
      sub_self]
  obtain ⟨j4, c, h5⟩ := T.injWp _ _ h4
  refine ⟨j4, f1 ≫ a ≫ c, ?_⟩
  have h6 : (T.Wp.map c).hom ((T.Wp.map a).hom w)
      = (T.rs.app j4).hom ((T.Yp.map c).hom ((T.Yp.map b).hom y')) := by
    rw [map_sub, sub_eq_zero] at h5
    rw [h5, nat_el T.rs c]
  rw [comp_el, ← hw, comp_el, ← nat_el T.dl a w, ← nat_el T.dl c, h6]
  exact T.cx j4 _
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.EtaleCohomologyClassKilledOnNbhdPair =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.GlueRelPfCone =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.GlueRelPfCone", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.GlueRelPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits GlobalTheory.EtC CochainComplex.HomComplex CochainComplex

namespace LateralTheory.E.GlueRelPfCone

theorem pre_pull_zero (R : Type) [CommRing R] {K L : Cx R} (φ : K ⟶ L) (F : Shv R) (m : ℤ) (b : HK R L F m) :
    HK.pre R (mappingCone.fst φ) F m (m + 1) (add_comm 1 m) (HK.pull R φ F m b) = 0 := by
  obtain ⟨b, rfl⟩ := b.mk_surjective
  change CohomologyClass.mk (zcomp (mappingCone.fst φ) (zcomp (Cocycle.ofHom φ) b (zero_add m)) (add_comm 1 m)) = 0
  rw [CohomologyClass.mk_eq_zero_iff]
  refine ⟨m, rfl, -(m.negOnePow • (mappingCone.snd φ).comp b.1 (zero_add m)), ?_⟩
  ext1
  simp only [zcomp, Cocycle.ofHom_coe]
  rw [δ_neg, δ_units_smul, δ_comp _ _ (zero_add m) 1 (m + 1) (m + 1) rfl (zero_add 1) rfl, mappingCone.δ_snd]
  simp [Cocycle.δ_eq_zero, Cochain.comp_assoc_of_second_is_zero_cochain, smul_smul, Int.units_mul_self]

theorem range_of_pre_zero (R : Type) [CommRing R] {K L : Cx R} (φ : K ⟶ L) (F : Shv R) (m : ℤ) (x : HK R K F m)
    (hx : HK.pre R (mappingCone.fst φ) F m (m + 1) (add_comm 1 m) x = 0) : x ∈ Set.range (HK.pull R φ F m) := by
  obtain ⟨a, rfl⟩ := x.mk_surjective
  change CohomologyClass.mk (zcomp (mappingCone.fst φ) a (add_comm 1 m)) = 0 at hx
  rw [CohomologyClass.mk_eq_zero_iff] at hx
  obtain ⟨m', hm', γ, hγ⟩ := hx
  obtain rfl : m' = m := by omega
  have hγ' : δ m' (m' + 1) γ = (mappingCone.fst φ).1.comp a.1 (add_comm 1 m') := by
    rw [hγ]; rfl
  have hb : δ m' (m' + 1) ((Cochain.ofHom (mappingCone.inr φ)).comp γ (zero_add m')) = 0 := by
    rw [δ_comp _ _ (zero_add m') 1 (m' + 1) (m' + 1) rfl (zero_add 1) rfl, hγ', δ_ofHom]
    rw [← Cochain.comp_assoc_of_first_is_zero_cochain, mappingCone.inr_fst]
    simp
  let b : Cocycle L (res R F) m' := Cocycle.mk (-(m'.negOnePow • (Cochain.ofHom (mappingCone.inr φ)).comp γ (zero_add m')))
    (m' + 1) rfl (by rw [δ_neg, δ_units_smul, hb]; simp)
  refine ⟨CohomologyClass.mk b, ?_⟩
  change CohomologyClass.mk (zcomp (Cocycle.ofHom φ) b (zero_add m')) = CohomologyClass.mk a
  rw [← sub_eq_zero, ← CohomologyClass.mk_sub, CohomologyClass.mk_eq_zero_iff]
  refine ⟨m' - 1, by omega, -((mappingCone.inl φ).comp γ (by omega)), ?_⟩
  ext1
  rw [δ_neg, δ_comp _ _ (show -1 + m' = m' - 1 by omega) 0 (m' + 1) m' (by omega) (by omega) rfl, hγ',
    mappingCone.δ_inl]
  rw [← Cochain.comp_assoc _ _ _ (neg_add_cancel 1) (add_comm 1 m') (by omega), mappingCone.inl_fst]
  simp [zcomp, b, Cochain.ofHom_comp, Cochain.comp_assoc_of_first_is_zero_cochain, sub_eq_add_neg]

theorem coneExact : LateralTheory.E.GlueRelPf.ConeExact := by
  intro R _ K L φ F m x
  exact ⟨range_of_pre_zero R φ F m x, by rintro ⟨b, rfl⟩; exact pre_pull_zero R φ F m b⟩

end LateralTheory.E.GlueRelPfCone
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.GlueRelPfCone =====

-- ===== clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.RelativeCohomologyColimitOfExactOfNaturality =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.CommutativeAlgebra.RelativeCohomologyColimitOfExactOfNaturality", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.BridgeYfiPf\npublic import Development.EtaleCohomology.EtaleSheaves.GlueRelPfCone\nimport Development.EtaleCohomology.EtaleSheaves.SecondDegreeKilling.HkpullComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace UpperTheory.Cb.RelativeCohomologyColimit
open LateralTheory.E.E4 LateralTheory.E.LeafGhostCut LateralTheory.E.EtaleTopologySheaves LateralTheory.E.LeafDegCut LateralTheory.E.SecondDegreeKilling.Nbhd
  LateralTheory.E.NeighbourhoodKilling LateralTheory.E.SecondDegreeKilling LateralTheory.E.Bridge_yfiPf

private theorem hk_id {R : Type} [CommRing R] (K : Cx R) (F : Shv R) (n : ℤ) (x : HK R K F n) :
    HK.pull R (𝟙 K) F n x = x := by
  obtain ⟨x, rfl⟩ := x.mk_surjective
  refine congrArg CochainComplex.HomComplex.CohomologyClass.mk (CochainComplex.HomComplex.Cocycle.ext ?_)
  simp [zcomp]

private theorem cone_id {R : Type} [CommRing R] {K L : Cx R} (φ : K ⟶ L) (a : K ⟶ K) (b : L ⟶ L) (ha : a = 𝟙 K)
    (hb : b = 𝟙 L) (comm) : CochainComplex.mappingCone.map φ φ a b comm = 𝟙 _ := by
  subst ha hb
  exact CochainComplex.mappingCone.map_id φ

private theorem rpl_one (q : ℕ) (i : ℤ) {U E : Scheme.{0}} (f : U ⟶ E) (u : U ⟶ U) (e : E ⟶ E)
    (h : f ≫ e = u ≫ f) (hu : u = 𝟙 U) (he : e = 𝟙 E) (n : ℤ)
    (y : Hrel (ZMod q) (sch.map f) (tw q i) n) : rpl q i f f u e h n y = y := by
  subst hu he
  have key : rmap (ZMod q) (sch.map f) (sch.map f) (sch.map (𝟙 U)) (sch.map (𝟙 E))
      (by rw [← CategoryTheory.Functor.map_comp, ← CategoryTheory.Functor.map_comp, h]) = 𝟙 _ :=
    cone_id _ _ _ (by rw [CategoryTheory.Functor.map_id, CategoryTheory.Functor.map_id])
      (by rw [CategoryTheory.Functor.map_id, CategoryTheory.Functor.map_id]) _
  exact (congrArg (fun c => HK.pull (ZMod q) c (tw q i) n y) key).trans (hk_id _ _ _ y)

private theorem rpl_two (q : ℕ) (i : ℤ) {U E U' E' U'' E'' : Scheme.{0}} (f : U ⟶ E) (f' : U' ⟶ E') (f'' : U'' ⟶ E'')
    (u : U' ⟶ U) (e : E' ⟶ E) (comm : f' ≫ e = u ≫ f) (u' : U'' ⟶ U') (e' : E'' ⟶ E') (comm' : f'' ≫ e' = u' ≫ f')
    (u2 : U'' ⟶ U) (e2 : E'' ⟶ E) (comm2 : f'' ≫ e2 = u2 ≫ f) (hu : u' ≫ u = u2) (he : e' ≫ e = e2) (n : ℤ)
    (y : Hrel (ZMod q) (sch.map f) (tw q i) n) :
    rpl q i f' f'' u' e' comm' n (rpl q i f f' u e comm n y) = rpl q i f f'' u2 e2 comm2 n y := by
  subst hu he
  exact LateralTheory.E.SecondDegreeKilling.Comp.rpl_comp q i f f' f'' u e comm u' e' comm' comm2 n y

private theorem pull_one {X : Scheme.{0}} (a : X ⟶ X) (h : a = 𝟙 X) (q : ℕ) (i n : ℤ) (y : Ht q (sch.obj X) n i) :
    pull (ZMod q) (sch.map a) (tw q i) n y = y := by
  subst h
  rw [CategoryTheory.Functor.map_id, pull_id]

private theorem pull_two {X X' X'' : Scheme.{0}} (c : X ⟶ X'') (a : X ⟶ X') (b : X' ⟶ X'') (h : c = a ≫ b) (q : ℕ)
    (i n : ℤ) (y : Ht q (sch.obj X'') n i) :
    pull (ZMod q) (sch.map c) (tw q i) n y =
      pull (ZMod q) (sch.map a) (tw q i) n (pull (ZMod q) (sch.map b) (tw q i) n y) := by
  subst h
  rw [CategoryTheory.Functor.map_comp, pull_comp]

private theorem pull_sq {X X' X'' X''' : Scheme.{0}} (a : X ⟶ X') (b : X' ⟶ X''') (c : X ⟶ X'') (d : X'' ⟶ X''')
    (h : a ≫ b = c ≫ d) (q : ℕ) (i n : ℤ) (y : Ht q (sch.obj X''') n i) :
    pull (ZMod q) (sch.map a) (tw q i) n (pull (ZMod q) (sch.map b) (tw q i) n y) =
      pull (ZMod q) (sch.map c) (tw q i) n (pull (ZMod q) (sch.map d) (tw q i) n y) := by
  rw [← pull_two _ a b rfl, ← pull_two _ c d rfl, h]

private def obsC (q : ℕ) [NeZero q] {U E : Spc} (u : U ⟶ E) (i n m : ℤ) (h : n + 1 = m) :
    Ht q U n i →+ Hrel (ZMod q) u (tw q i) m := by
  subst h
  exact LateralTheory.E.GlueRelPf.obs q u i n

private theorem obsC_exact (hO : ObsExact) (q : ℕ) [NeZero q] {U E : Spc} (u : U ⟶ E) (i n m : ℤ) (h : n + 1 = m)
    (y : Hrel (ZMod q) u (tw q i) m) (hy : fgt (ZMod q) u (tw q i) m y = 0) : ∃ w, obsC q u i n m h w = y := by
  subst h
  exact hO q u i n y hy

private theorem obsC_nat (hN : ObsNat) (q : ℕ) [NeZero q] {U E U' E' : Spc} (f : U ⟶ E) (f' : U' ⟶ E') (u : U' ⟶ U)
    (e : E' ⟶ E) (comm : f' ≫ e = u ≫ f) (i n m : ℤ) (h : n + 1 = m) (w : Ht q U n i) :
    rpull (ZMod q) f f' u e comm (tw q i) m (obsC q f i n m h w) =
      obsC q f' i n m h (pull (ZMod q) u (tw q i) n w) := by
  subst h
  exact hN q f f' u e comm i n w

private theorem obsC_lift (q : ℕ) [NeZero q] {U E : Spc} (u : U ⟶ E) (i n m : ℤ) (h : n + 1 = m) (w : Ht q U n i)
    (hw : obsC q u i n m h w = 0) : ∃ y, pull (ZMod q) u (tw q i) n y = w := by
  subst h
  exact (LateralTheory.E.GlueRelPfCone.coneExact (ZMod q) ((chains (ZMod q)).map u) (tw q i) n w).1 hw

private theorem obsC_pull (q : ℕ) [NeZero q] {U E : Spc} (u : U ⟶ E) (i n m : ℤ) (h : n + 1 = m)
    (y : Ht q E n i) : obsC q u i n m h (pull (ZMod q) u (tw q i) n y) = 0 := by
  subst h
  exact (LateralTheory.E.GlueRelPfCone.coneExact (ZMod q) ((chains (ZMod q)).map u) (tw q i) n).apply_apply_eq_zero y

private structure Tow (J : Type) [SmallCategory J] where
  A : J → Scheme.{0}
  t : ∀ {j k : J}, (j ⟶ k) → (A k ⟶ A j)
  t_id : ∀ j, t (𝟙 j) = 𝟙 (A j)
  t_comp : ∀ {j k l : J} (f : j ⟶ k) (g : k ⟶ l), t (f ≫ g) = t g ≫ t f
  L : Scheme.{0}
  g : ∀ j, L ⟶ A j
  g_comp_transition : ∀ {j k : J} (f : j ⟶ k), g k ≫ t f = g j

variable {J : Type} [SmallCategory J]

private def Tow.fn (T : Tow J) (q : ℕ) (i n : ℤ) : J ⥤ AddCommGrpCat.{1} where
  obj j := AddCommGrpCat.of (Ht q (sch.obj (T.A j)) n i)
  map f := AddCommGrpCat.ofHom (pull (ZMod q) (sch.map (T.t f)) (tw q i) n)
  map_id j := by
    ext y
    exact pull_one _ (T.t_id j) q i n y
  map_comp {j k l} f g := by
    ext y
    exact pull_two _ _ _ (T.t_comp f g) q i n y

private def Tow.co (T : Tow J) (q : ℕ) (i n : ℤ) : Cocone (T.fn q i n) where
  pt := AddCommGrpCat.of (Ht q (sch.obj T.L) n i)
  ι :=
    { app := fun j => AddCommGrpCat.ofHom (pull (ZMod q) (sch.map (T.g j)) (tw q i) n)
      naturality := fun j k f => by
        ext y
        exact (pull_two _ _ _ (T.g_comp_transition f).symm q i n y).symm }

private structure Fam (J : Type) [SmallCategory J] where
  X : Tow J
  Z : Tow J
  pr : ∀ j, Z.A j ⟶ X.A j
  prt : ∀ {j k : J} (f : j ⟶ k), pr k ≫ X.t f = Z.t f ≫ pr j
  prL : Z.L ⟶ X.L
  sq : ∀ j, prL ≫ X.g j = Z.g j ≫ pr j

private def Fam.rel (F : Fam J) (q : ℕ) (i m : ℤ) : J ⥤ AddCommGrpCat.{1} where
  obj j := AddCommGrpCat.of (Hrel (ZMod q) (sch.map (F.pr j)) (tw q i) m)
  map f := AddCommGrpCat.ofHom (rpl q i (F.pr _) (F.pr _) (F.Z.t f) (F.X.t f) (F.prt f) m)
  map_id j := by
    ext y
    exact rpl_one q i (F.pr j) _ _ (F.prt (𝟙 j)) (F.Z.t_id j) (F.X.t_id j) m y
  map_comp {j k l} f g := by
    ext y
    exact (rpl_two q i (F.pr j) (F.pr k) (F.pr l) _ _ (F.prt f) _ _ (F.prt g) _ _ (F.prt (f ≫ g))
      (F.Z.t_comp f g).symm (F.X.t_comp f g).symm m y).symm

private def Fam.co (F : Fam J) (q : ℕ) (i m : ℤ) : Cocone (F.rel q i m) where
  pt := AddCommGrpCat.of (Hrel (ZMod q) (sch.map F.prL) (tw q i) m)
  ι :=
    { app := fun j => AddCommGrpCat.ofHom (rpl q i (F.pr j) F.prL (F.Z.g j) (F.X.g j) (F.sq j) m)
      naturality := fun j k f => by
        ext y
        exact rpl_two q i (F.pr j) (F.pr k) F.prL _ _ (F.prt f) _ _ (F.sq k) _ _ (F.sq j)
          (F.Z.g_comp_transition f) (F.X.g_comp_transition f) m y }

private def Fam.fg (F : Fam J) (q : ℕ) (i m : ℤ) : F.rel q i m ⟶ F.X.fn q i m where
  app j := AddCommGrpCat.ofHom (fgt (ZMod q) (sch.map (F.pr j)) (tw q i) m)
  naturality j k f := by
    ext y
    exact relNat (ZMod q) (tw q i) (sch.map (F.pr j)) (sch.map (F.pr k)) (sch.map (F.Z.t f)) (sch.map (F.X.t f))
      (by rw [← CategoryTheory.Functor.map_comp, ← CategoryTheory.Functor.map_comp, F.prt f]) m y

private def Fam.rs (F : Fam J) (q : ℕ) (i n : ℤ) : F.X.fn q i n ⟶ F.Z.fn q i n where
  app j := AddCommGrpCat.ofHom (pull (ZMod q) (sch.map (F.pr j)) (tw q i) n)
  naturality j k f := by
    ext y
    exact pull_sq _ _ _ _ (F.prt f) q i n y

private def Fam.dl (F : Fam J) (hN : ObsNat) (q : ℕ) [NeZero q] (i n m : ℤ) (h : n + 1 = m) :
    F.Z.fn q i n ⟶ F.rel q i m where
  app j := AddCommGrpCat.ofHom (obsC q (sch.map (F.pr j)) i n m h)
  naturality j k f := by
    ext w
    exact (obsC_nat hN q (sch.map (F.pr j)) (sch.map (F.pr k)) (sch.map (F.Z.t f)) (sch.map (F.X.t f))
      (by rw [← CategoryTheory.Functor.map_comp, ← CategoryTheory.Functor.map_comp, F.prt f]) i n m h w).symm

private def Fam.tri (F : Fam J) (q : ℕ) [NeZero q] (i n m : ℤ) (h : n + 1 = m) (hO : ObsExact) (hN : ObsNat)
    (iY : ∀ j (y : Ht q (sch.obj (F.X.A j)) m i), pull (ZMod q) (sch.map (F.X.g j)) (tw q i) m y = 0 →
      ∃ (k : J) (f : j ⟶ k), pull (ZMod q) (sch.map (F.X.t f)) (tw q i) m y = 0)
    (sY : ∀ y : Ht q (sch.obj F.X.L) n i, ∃ (j : J) (y' : Ht q (sch.obj (F.X.A j)) n i),
      pull (ZMod q) (sch.map (F.X.g j)) (tw q i) n y' = y)
    (iW : ∀ j (w : Ht q (sch.obj (F.Z.A j)) n i), pull (ZMod q) (sch.map (F.Z.g j)) (tw q i) n w = 0 →
      ∃ (k : J) (f : j ⟶ k), pull (ZMod q) (sch.map (F.Z.t f)) (tw q i) n w = 0) : Tri J where
  Rm := F.rel q i m
  Ym := F.X.fn q i m
  Yp := F.X.fn q i n
  Wp := F.Z.fn q i n
  cR := F.co q i m
  cYm := F.X.co q i m
  cYp := F.X.co q i n
  cWp := F.Z.co q i n
  fg := F.fg q i m
  fgL := AddCommGrpCat.ofHom (fgt (ZMod q) (sch.map F.prL) (tw q i) m)
  fg_w j := by
    ext y
    exact relNat (ZMod q) (tw q i) (sch.map (F.pr j)) (sch.map F.prL) (sch.map (F.Z.g j)) (sch.map (F.X.g j))
      (by rw [← CategoryTheory.Functor.map_comp, ← CategoryTheory.Functor.map_comp, F.sq j]) m y
  dl := F.dl hN q i n m h
  dlL := AddCommGrpCat.ofHom (obsC q (sch.map F.prL) i n m h)
  dl_w j := by
    ext w
    exact (obsC_nat hN q (sch.map (F.pr j)) (sch.map F.prL) (sch.map (F.Z.g j)) (sch.map (F.X.g j))
      (by rw [← CategoryTheory.Functor.map_comp, ← CategoryTheory.Functor.map_comp, F.sq j]) i n m h w).symm
  rs := F.rs q i n
  rsL := AddCommGrpCat.ofHom (pull (ZMod q) (sch.map F.prL) (tw q i) n)
  rs_w j := by
    ext y
    exact pull_sq _ _ _ _ (F.sq j) q i n y
  exR j x hx := obsC_exact hO q (sch.map (F.pr j)) i n m h x hx
  exWL w hw := obsC_lift q (sch.map F.prL) i n m h w hw
  cx j y := obsC_pull q (sch.map (F.pr j)) i n m h y
  injYm := iY
  surYp := sY
  injWp := iW

attribute [local instance] Sys.cat Sys.filt Sys.ring

private theorem resY_id {Y B : Scheme.{0}} (p : Y ⟶ B) (U : B.Etale) : resY p (𝟙 U) = 𝟙 _ := by
  apply pullback.hom_ext
  · erw [pullback.lift_fst]; simp
  · erw [pullback.lift_snd]; simp; exact Category.comp_id _

private theorem resYW_id {Y B W : Scheme.{0}} (p : Y ⟶ B) (ι : W ⟶ B) (U : B.Etale) : resYW p ι (𝟙 U) = 𝟙 _ := by
  apply pullback.hom_ext
  · erw [pullback.lift_fst]; simp [resY_id]
  · erw [pullback.lift_snd]; simp

variable {q : ℕ} {i : ℤ} {B W Y : Scheme.{0}} {p : Y ⟶ B} {ι : W ⟶ B} {U : B.Etale} {m : ℤ} {u : U.left}

private def towY (S : Sys q i p ι U m u) : Tow S.J where
  A j := YU p (S.V j)
  t f := resY p (S.tr f)
  t_id j := by rw [S.tr_id, resY_id]
  t_comp f g := by rw [S.tr_comp, resY_comp]
  L := pullback p (S.t ≫ U.hom)
  g := S.gY
  g_comp_transition := S.gY_tr

private def towW (S : Sys q i p ι U m u) : Tow S.J where
  A j := pullback (pullback.snd p (S.V j).hom ≫ (S.V j).hom) ι
  t f := resYW p ι (S.tr f)
  t_id j := by rw [S.tr_id, resYW_id]
  t_comp f g := by rw [S.tr_comp, resYW_comp]
  L := pullback (pullback.snd p (S.t ≫ U.hom) ≫ (S.t ≫ U.hom)) ι
  g := S.gW
  g_comp_transition := S.gW_tr

private def fam (S : Sys q i p ι U m u) : Fam S.J where
  X := towY S
  Z := towW S
  pr j := prU p ι (S.V j)
  prt f := (pullback.lift_fst _ _ _).symm
  prL := prS p ι (S.t ≫ U.hom)
  sq := S.sq

end UpperTheory.Cb.RelativeCohomologyColimit

open UpperTheory.Cb.RelativeCohomologyColimit LateralTheory.E.E4 LateralTheory.E.LeafGhostCut LateralTheory.E.EtaleTopologySheaves LateralTheory.E.LeafDegCut
  LateralTheory.E.SecondDegreeKilling.Nbhd LateralTheory.E.NeighbourhoodKilling LateralTheory.E.SecondDegreeKilling LateralTheory.E.Bridge_yfiPf in
attribute [local instance] LateralTheory.E.Bridge_yfiPf.Sys.cat LateralTheory.E.Bridge_yfiPf.Sys.filt LateralTheory.E.Bridge_yfiPf.Sys.ring in
theorem UpperTheory.relativeCohomology_colimit_of_exact_of_naturality :
    LateralTheory.E.NeighbourhoodKilling.ObsExact → LateralTheory.E.NeighbourhoodKilling.ObsNat → LateralTheory.E.Bridge_yfiPf.Pack := by
  intro hO hN q _ i B W Y p ι U m u S z
  obtain ⟨j0⟩ : Nonempty S.J := IsFiltered.nonempty
  refine ⟨S.J, inferInstance, inferInstance,
    (fam S).tri q i (m - 1) m (sub_add_cancel m 1) hO hN S.injY S.surY S.injW, j0,
    rY q i p ι (S.a j0) m z, S.A, inferInstance, S.t, S.sh, ?_, ?_⟩
  · intro h
    exact (rpl_two q i (prU p ι U) (prU p ι (S.V j0)) (prS p ι (S.t ≫ U.hom)) _ _ _ _ _ (S.sq j0) (tW p ι U S.t)
      (tY p U S.t) (pullback.lift_fst _ _ _).symm (S.gW_a j0) (S.gY_a j0) m z).trans h
  · intro j f h
    refine ⟨S.V j, S.a j, S.mem j, ?_⟩
    rw [← S.tr_a f, rY_comp]
    exact h
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.RelativeCohomologyColimitOfExactOfNaturality =====

-- ===== clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.RelativeCohomologyConnectingNaturality =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.CommutativeAlgebra.RelativeCohomologyConnectingNaturality", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.NeighbourhoodKilling\npublic import Development.EtaleCohomology.EtaleSheaves.GlueRelPfNat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory GlobalTheory.EtC CochainComplex.HomComplex LateralTheory.E.E4 LateralTheory.E.LeafGhostCut in
theorem UpperTheory.relativeCohomology_connecting_naturality :
    LateralTheory.E.NeighbourhoodKilling.ObsNat := by
  intro q _ U E U' E' f f' u e comm i m w
  obtain ⟨w, rfl⟩ := w.mk_surjective
  refine congrArg CohomologyClass.mk (Cocycle.ext ?_)
  simp only [zcomp, Cocycle.ofHom_coe, Cocycle.mk_coe]
  rw [← Cochain.comp_assoc_of_first_is_zero_cochain, rmap, LateralTheory.E.GlueRelPfNat.map_fst,
    Cochain.comp_assoc_of_second_is_zero_cochain]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.RelativeCohomologyConnectingNaturality =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.FinCont =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.FinCont", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.DictNormalPf\npublic import Development.EtaleCohomology.KummerTheory.ContCut\npublic import Development.EtaleCohomology.KummerTheory.AffRingPf\npublic import Development.EtaleCohomology.KummerTheory.BcHomIsPullback\npublic import Development.EtaleCohomology.KummerTheory.DeltaPf\npublic import Development.EtaleCohomology.KummerTheory.DictExistPf\nimport Development.EtaleCohomology.KummerTheory.DictPfEv\npublic import Development.EtaleCohomology.KummerTheory.DictZeroPf\npublic import Development.EtaleCohomology.KummerTheory.ExactPf\npublic import Development.EtaleCohomology.KummerTheory.FivePf\npublic import Development.EtaleCohomology.KummerTheory.FlasquePf\npublic import Development.EtaleCohomology.KummerTheory.GluePf\npublic import Development.EtaleCohomology.KummerTheory.ISupFinSuccEq\npublic import Development.EtaleCohomology.KummerTheory.LimOfIso\npublic import Development.EtaleCohomology.KummerTheory.MVnatPf\npublic import Development.EtaleCohomology.KummerTheory.NrmMkPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.Cont
theorem etale_kunneth_dictionary_normalized_in_continuity_assembly : LateralTheory.KummerTheory.DictNormal := by
  apply LateralTheory.KummerTheory.DictNormal_of' <;> first | exact _root_.LateralTheory.KummerTheory.NrmMk_of
theorem etale_kunneth_dictionary_exists_for_sheaves_in_continuity_assembly : LateralTheory.KummerTheory.Dict := by
  apply LateralTheory.KummerTheory.Dict_of' <;> first | exact _root_.LateralTheory.KummerTheory.DE.dictExist | exact etale_kunneth_dictionary_normalized_in_continuity_assembly | exact _root_.LateralTheory.KummerTheory.DictZero_of
theorem etale_mayer_vietoris_connecting_map_compatible_in_continuity_assembly : LateralTheory.KummerTheory.ContCut.Delta := by
  apply LateralTheory.KummerTheory.ContCut.Delta_of <;> first | exact etale_kunneth_dictionary_exists_for_sheaves_in_continuity_assembly | exact _root_.LateralTheory.KummerTheory.GluePf.Glue_of | exact _root_.LateralTheory.KummerTheory.FlasquePf.Flasque_of
theorem etale_kunneth_colimit_sequence_exact_in_continuity_assembly : LateralTheory.KummerTheory.ContCut.Exact := by
  apply LateralTheory.KummerTheory.ExactPf.Exact_of <;> first | exact etale_kunneth_dictionary_exists_for_sheaves_in_continuity_assembly | exact _root_.LateralTheory.KummerTheory.GluePf.Glue_of | exact _root_.LateralTheory.KummerTheory.FlasquePf.Flasque_of
theorem etale_mayer_vietoris_sequence_natural_in_continuity_assembly : LateralTheory.KummerTheory.ContCut.MVnat := by
  apply LateralTheory.KummerTheory.MVnatPf.MVnat_of <;> first | exact etale_kunneth_dictionary_exists_for_sheaves_in_continuity_assembly | exact etale_mayer_vietoris_connecting_map_compatible_in_continuity_assembly | exact etale_kunneth_colimit_sequence_exact_in_continuity_assembly
theorem etale_kunneth_continuity_on_affine_schemes_in_continuity_assembly : LateralTheory.KummerTheory.ContCut.Aff := by
  apply LateralTheory.KummerTheory.AffPf.Aff_of <;> first | exact _root_.LateralTheory.KummerTheory.AffRingPf.AffRing_of
theorem etale_kunneth_cohomology_continuous_under_limits_in_continuity_assembl : LateralTheory.KummerTheory.Cont := by
  apply LateralTheory.KummerTheory.ContCut.goal_of <;> first | exact _root_.LateralTheory.KummerTheory.FivePf.Five_of | exact _root_.LateralTheory.KummerTheory.IndPf.Ind_of | exact _root_.LateralTheory.KummerTheory.BCPf.BC_of | exact _root_.LateralTheory.KummerTheory.GluePf.Glue_of | exact _root_.LateralTheory.KummerTheory.FlasquePf.Flasque_of | exact etale_mayer_vietoris_connecting_map_compatible_in_continuity_assembly | exact etale_kunneth_colimit_sequence_exact_in_continuity_assembly | exact etale_mayer_vietoris_sequence_natural_in_continuity_assembly | exact _root_.LateralTheory.KummerTheory.AffRingPf.AffRing_of | exact etale_kunneth_continuity_on_affine_schemes_in_continuity_assembly
alias intersectionNumber_baseChange := _root_.LateralTheory.Fin.Cont.etale_kunneth_cohomology_continuous_under_limits_in_continuity_assembl
end LateralTheory.Fin.Cont
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.FinCont =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.FinSHen =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.FinSHen", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.InjSlice\npublic import Development.EtaleCohomology.KummerTheory.SHenCutPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.StrictHenselization
alias intersectionNumber_baseChange := _root_.LateralTheory.KummerTheory.SHenCut.shen
end LateralTheory.Fin.StrictHenselization
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.FinSHen =====

-- ===== clump member: Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.AffineGeometricCaseOfObstructionExactNatural =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.AffineGeometricCaseOfObstructionExactNatural", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.GeoProof\npublic import Development.EtaleCohomology.KummerTheory.InjSlice\npublic import Development.EtaleCohomology.KummerTheory.FinCont\npublic import Development.EtaleCohomology.KummerTheory.FinSHen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC
open LateralTheory.E.E4 LateralTheory.E.Bridge_yfiPf LateralTheory.E.EtaleTopologySheaves LateralTheory.E.SecondDegreeKilling

namespace UpperTheory.Cb.MorphismCompositionLaws

section Maps
variable {Y B W : Scheme.{0}} (p : Y ⟶ B) (ι : W ⟶ B)

private abbrev mY {S S' : Scheme.{0}} {s : S ⟶ B} {s' : S' ⟶ B} (g : S' ⟶ S) (h : g ≫ s = s') :
    pullback p s' ⟶ pullback p s :=
  pullback.map p s' p s (𝟙 Y) g (𝟙 B) (by simp) (by simp [h])

private abbrev mW {S S' : Scheme.{0}} {s : S ⟶ B} {s' : S' ⟶ B} (g : S' ⟶ S) (h : g ≫ s = s') :
    pullback (pullback.snd p s' ≫ s') ι ⟶ pullback (pullback.snd p s ≫ s) ι :=
  pullback.map _ _ _ _ (mY p g h) (𝟙 W) (𝟙 B)
    (by subst h; simp [pullback.lift_snd_assoc]) (by simp)

private theorem mY_comp_pullback_fst {S S' : Scheme.{0}} {s : S ⟶ B} {s' : S' ⟶ B} (g : S' ⟶ S) (h : g ≫ s = s') :
    mY p g h ≫ pullback.fst p s = pullback.fst p s' := by
  unfold mY pullback.map
  erw [pullback.lift_fst]
  exact Category.comp_id _

private theorem mY_comp_pullback_snd {S S' : Scheme.{0}} {s : S ⟶ B} {s' : S' ⟶ B} (g : S' ⟶ S) (h : g ≫ s = s') :
    mY p g h ≫ pullback.snd p s = pullback.snd p s' ≫ g := by
  unfold mY pullback.map
  erw [pullback.lift_snd]

private theorem mW_comp_fst_eq_fst_comp_mY {S S' : Scheme.{0}} {s : S ⟶ B} {s' : S' ⟶ B} (g : S' ⟶ S) (h : g ≫ s = s') :
    mW p ι g h ≫ pullback.fst _ ι = pullback.fst _ ι ≫ mY p g h := by
  unfold mW pullback.map
  erw [pullback.lift_fst]

private theorem mW_comp_pullback_snd {S S' : Scheme.{0}} {s : S ⟶ B} {s' : S' ⟶ B} (g : S' ⟶ S) (h : g ≫ s = s') :
    mW p ι g h ≫ pullback.snd _ ι = pullback.snd _ ι := by
  unfold mW pullback.map
  erw [pullback.lift_snd]
  exact Category.comp_id _

private theorem mY_comp {S S' S'' : Scheme.{0}} {s : S ⟶ B} {s' : S' ⟶ B} {s'' : S'' ⟶ B} (g : S' ⟶ S) (h : g ≫ s = s')
    (g' : S'' ⟶ S') (h' : g' ≫ s' = s'') :
    mY p g' h' ≫ mY p g h = mY p (g' ≫ g) (by simp [h, h']) := by
  apply pullback.hom_ext
  · rw [Category.assoc, mY_comp_pullback_fst, mY_comp_pullback_fst, mY_comp_pullback_fst]
  · rw [Category.assoc, mY_comp_pullback_snd, reassoc_of% (mY_comp_pullback_snd p g' h'), mY_comp_pullback_snd]

private theorem mW_comp {S S' S'' : Scheme.{0}} {s : S ⟶ B} {s' : S' ⟶ B} {s'' : S'' ⟶ B} (g : S' ⟶ S) (h : g ≫ s = s')
    (g' : S'' ⟶ S') (h' : g' ≫ s' = s'') :
    mW p ι g' h' ≫ mW p ι g h = mW p ι (g' ≫ g) (by simp [h, h']) := by
  apply pullback.hom_ext
  · rw [Category.assoc, mW_comp_fst_eq_fst_comp_mY, reassoc_of% (mW_comp_fst_eq_fst_comp_mY p ι g' h'), mW_comp_fst_eq_fst_comp_mY, mY_comp p g h g' h']
  · rw [Category.assoc, mW_comp_pullback_snd, mW_comp_pullback_snd, mW_comp_pullback_snd]

private theorem mY_comp' {S S' S'' : Scheme.{0}} {s : S ⟶ B} {s' : S' ⟶ B} {s'' : S'' ⟶ B} (g : S' ⟶ S) (h : g ≫ s = s')
    (g' : S'' ⟶ S') (h' : g' ≫ s' = s'') (g'' : S'' ⟶ S) (h'' : g'' ≫ s = s'') (e : g' ≫ g = g'') :
    mY p g' h' ≫ mY p g h = mY p g'' h'' := by
  subst e; exact mY_comp p g h g' h'

private theorem mW_comp' {S S' S'' : Scheme.{0}} {s : S ⟶ B} {s' : S' ⟶ B} {s'' : S'' ⟶ B} (g : S' ⟶ S) (h : g ≫ s = s')
    (g' : S'' ⟶ S') (h' : g' ≫ s' = s'') (g'' : S'' ⟶ S) (h'' : g'' ≫ s = s'') (e : g' ≫ g = g'') :
    mW p ι g' h' ≫ mW p ι g h = mW p ι g'' h'' := by
  subst e; exact mW_comp p ι g h g' h'

private theorem mW_fst {S S' : Scheme.{0}} {s : S ⟶ B} {s' : S' ⟶ B} (g : S' ⟶ S) (h : g ≫ s = s') :
    pullback.fst _ _ ≫ mY p g h = mW p ι g h ≫ pullback.fst _ _ := by
  rw [mW_comp_fst_eq_fst_comp_mY]

end Maps

section Transfer

private def ContP (q : ℕ) (i n : ℤ) {J : Type} [Category J] (E : J → Spc) (L : Spc) (b : ∀ j, L ⟶ E j)
    (tr : ∀ {j k : J}, (j ⟶ k) → (E k ⟶ E j)) : Prop :=
  (∀ x : Ht q L n i, ∃ j, ∃ y : Ht q (E j) n i, pull (ZMod q) (b j) (tw q i) n y = x) ∧
  ∀ j (y : Ht q (E j) n i), pull (ZMod q) (b j) (tw q i) n y = 0 →
    ∃ (k : J) (f : j ⟶ k), pull (ZMod q) (tr f) (tw q i) n y = 0

private theorem pull_cancel {q : ℕ} {i n : ℤ} {E E' : Spc} (e : E ≅ E') (x : Ht q E' n i) :
    pull (ZMod q) e.inv (tw q i) n (pull (ZMod q) e.hom (tw q i) n x) = x := by
  rw [← pull_comp, e.inv_hom_id, pull_id]

private theorem transfer {q : ℕ} {i n : ℤ} {J : Type} [Category J] {E E' : J → Spc} {L L' : Spc}
    {b : ∀ j, L ⟶ E j} {b' : ∀ j, L' ⟶ E' j}
    {tr : ∀ {j k : J}, (j ⟶ k) → (E k ⟶ E j)} {tr' : ∀ {j k : J}, (j ⟶ k) → (E' k ⟶ E' j)}
    (φ : ∀ j, E j ≅ E' j) (φL : L ≅ L')
    (hb : ∀ j, φL.hom ≫ b' j = b j ≫ (φ j).hom)
    (htr : ∀ {j k : J} (f : j ⟶ k), (φ k).hom ≫ tr' f = tr f ≫ (φ j).hom)
    (h : ContP q i n E L b tr) : ContP q i n E' L' b' tr' := by
  obtain ⟨hs, hi⟩ := h
  refine ⟨fun x' => ?_, fun j y' hy' => ?_⟩
  · obtain ⟨j, y, hy⟩ := hs (pull (ZMod q) φL.hom (tw q i) n x')
    refine ⟨j, pull (ZMod q) (φ j).inv (tw q i) n y, ?_⟩
    have hc := pull_cancel (φ j).symm y
    simp only [Iso.symm_inv, Iso.symm_hom] at hc
    have key : pull (ZMod q) φL.hom (tw q i) n
        (pull (ZMod q) (b' j) (tw q i) n (pull (ZMod q) (φ j).inv (tw q i) n y)) =
        pull (ZMod q) φL.hom (tw q i) n x' := by
      rw [← pull_comp, hb, pull_comp, hc, hy]
    have key2 := congrArg (pull (ZMod q) φL.inv (tw q i) n) key
    rwa [pull_cancel, pull_cancel] at key2
  · obtain ⟨k, f, hf⟩ := hi j (pull (ZMod q) (φ j).hom (tw q i) n y')
      (by rw [← pull_comp, ← hb, pull_comp, hy', map_zero])
    refine ⟨k, f, ?_⟩
    have key : pull (ZMod q) (φ k).hom (tw q i) n (pull (ZMod q) (tr' f) (tw q i) n y') = 0 := by
      rw [← pull_comp, htr, pull_comp, hf]
    rw [← pull_cancel (φ k) (pull (ZMod q) (tr' f) (tw q i) n y'), key, map_zero]

end Transfer

section Isos
variable {Y B W C : Scheme.{0}} (p : Y ⟶ B) (ι : W ⟶ B) (π : C ⟶ B)

private def eY {S : Scheme.{0}} (g : S ⟶ C) (s : S ⟶ B) (h : g ≫ π = s) :
    pullback (pullback.snd p π) g ≅ pullback p s :=
  pullbackLeftPullbackSndIso p π g ≪≫ pullback.congrHom rfl h

private theorem eY_hom_fst {S : Scheme.{0}} (g : S ⟶ C) (s : S ⟶ B) (h : g ≫ π = s) :
    (eY p π g s h).hom ≫ pullback.fst _ _ = pullback.fst _ _ ≫ pullback.fst _ _ := by
  subst h; simp [eY]

@[reassoc (attr := simp)] private theorem eY_hom_snd {S : Scheme.{0}} (g : S ⟶ C) (s : S ⟶ B) (h : g ≫ π = s) :
    (eY p π g s h).hom ≫ pullback.snd _ _ = pullback.snd _ _ := by
  subst h; simp [eY]

end Isos

section IsosW
variable {Y B W C : Scheme.{0}} (p : Y ⟶ B) (ι : W ⟶ B) (π : C ⟶ B)

private theorem eY_inv_snd {S : Scheme.{0}} (g : S ⟶ C) (s : S ⟶ B) (h : g ≫ π = s) :
    (eY p π g s h).inv ≫ pullback.snd _ _ = pullback.snd _ _ := by
  rw [Iso.inv_comp_eq, eY_hom_snd]

private abbrev p2 : pullback (pullback.snd p π ≫ π) ι ⟶ C := pullback.fst _ _ ≫ pullback.snd p π

private abbrev aW {S : Scheme.{0}} (g : S ⟶ C) : pullback (p2 p ι π) g ⟶ pullback (pullback.snd p π) g :=
  pullback.lift (pullback.fst _ _ ≫ pullback.fst _ _) (pullback.snd _ _)
    (by rw [Category.assoc, pullback.condition])

private theorem equiv_hom_comp_projection {S : Scheme.{0}} (g : S ⟶ C) (s : S ⟶ B) (h : g ≫ π = s) :
    (aW p ι π g ≫ (eY p π g s h).hom) ≫ pullback.snd p s ≫ s =
      (pullback.fst (p2 p ι π) g ≫ pullback.snd (pullback.snd p π ≫ π) ι) ≫ ι := by
  subst h
  rw [Category.assoc, Category.assoc, eY_hom_snd_assoc]
  erw [pullback.lift_snd_assoc]
  rw [← pullback.condition (f := pullback.snd p π ≫ π) (g := ι),
    ← pullback.condition_assoc (f := p2 p ι π) (g := g)]
  simp only [Category.assoc]

private theorem equiv_inv_comp_projection {S : Scheme.{0}} (g : S ⟶ C) (s : S ⟶ B) (h : g ≫ π = s) :
    ((pullback.fst (pullback.snd p s ≫ s) ι ≫ (eY p π g s h).inv) ≫ pullback.fst _ _) ≫ pullback.snd p π ≫ π =
      pullback.snd (pullback.snd p s ≫ s) ι ≫ ι := by
  simp only [Category.assoc]
  rw [pullback.condition_assoc, reassoc_of% (eY_inv_snd p π g s h), h]
  exact pullback.condition

private def eW {S : Scheme.{0}} (g : S ⟶ C) (s : S ⟶ B) (h : g ≫ π = s) :
    pullback (p2 p ι π) g ≅ pullback (pullback.snd p s ≫ s) ι where
  hom := pullback.lift (aW p ι π g ≫ (eY p π g s h).hom) (pullback.fst _ _ ≫ pullback.snd _ _)
    (equiv_hom_comp_projection p ι π g s h)
  inv := pullback.lift
    (pullback.lift ((pullback.fst _ _ ≫ (eY p π g s h).inv) ≫ pullback.fst _ _) (pullback.snd _ _)
      (equiv_inv_comp_projection p ι π g s h))
    ((pullback.fst _ _ ≫ (eY p π g s h).inv) ≫ pullback.snd _ _)
    (by rw [pullback.lift_fst_assoc, Category.assoc, Category.assoc, Category.assoc, pullback.condition, Category.assoc])
  hom_inv_id := by
    apply pullback.hom_ext
    · apply pullback.hom_ext
      · simp
      · simp
    · simp
  inv_hom_id := by
    apply pullback.hom_ext
    · rw [Category.assoc, pullback.lift_fst, ← Category.assoc, ← Iso.eq_comp_inv, Category.id_comp]
      apply pullback.hom_ext <;> simp
    · simp

end IsosW

section Nat
variable {Y B W C : Scheme.{0}} (p : Y ⟶ B) (ι : W ⟶ B) (π : C ⟶ B)
variable {S S' : Scheme.{0}} {g : S ⟶ C} {g' : S' ⟶ C} {s : S ⟶ B} {s' : S' ⟶ B}

private abbrev bc {X : Scheme.{0}} (P : X ⟶ C) (k : S' ⟶ S) (hg : k ≫ g = g') : pullback P g' ⟶ pullback P g :=
  pullback.map _ _ _ _ (𝟙 _) k (𝟙 _) (by simp) (by simp [hg])

private theorem eY_nat (h : g ≫ π = s) (h' : g' ≫ π = s') (k : S' ⟶ S) (hk : k ≫ s = s') (hg : k ≫ g = g') :
    (eY p π g' s' h').hom ≫ mY p k hk = bc (pullback.snd p π) k hg ≫ (eY p π g s h).hom := by
  apply pullback.hom_ext
  · rw [Category.assoc, mY_comp_pullback_fst, eY_hom_fst, Category.assoc, eY_hom_fst]
    erw [pullback.lift_fst_assoc]
    rw [Category.comp_id]
  · rw [Category.assoc, mY_comp_pullback_snd, eY_hom_snd_assoc, Category.assoc, eY_hom_snd]
    erw [pullback.lift_snd]

private theorem bc_comp_pullback_fst {X : Scheme.{0}} (P : X ⟶ C) (k : S' ⟶ S) (hg : k ≫ g = g') :
    bc P k hg ≫ pullback.fst P g = pullback.fst P g' := by
  unfold bc pullback.map
  erw [pullback.lift_fst]
  exact Category.comp_id _

private theorem bc_comp_pullback_snd {X : Scheme.{0}} (P : X ⟶ C) (k : S' ⟶ S) (hg : k ≫ g = g') :
    bc P k hg ≫ pullback.snd P g = pullback.snd P g' ≫ k := by
  unfold bc pullback.map
  erw [pullback.lift_snd]

private theorem aW_comp_pullback_fst (g : S ⟶ C) :
    aW p ι π g ≫ pullback.fst _ _ = pullback.fst _ _ ≫ pullback.fst _ _ := by
  unfold aW
  erw [pullback.lift_fst]

private theorem aW_comp_pullback_snd (g : S ⟶ C) :
    aW p ι π g ≫ pullback.snd _ _ = pullback.snd _ _ := by
  unfold aW
  erw [pullback.lift_snd]

private theorem eW_hom_comp_fst_eq_aW_comp_eY (g : S ⟶ C) (h : g ≫ π = s) :
    (eW p ι π g s h).hom ≫ pullback.fst _ _ = aW p ι π g ≫ (eY p π g s h).hom := by
  unfold eW
  erw [pullback.lift_fst]

private theorem eW_hom_comp_snd (g : S ⟶ C) (h : g ≫ π = s) :
    (eW p ι π g s h).hom ≫ pullback.snd _ _ = pullback.fst _ _ ≫ pullback.snd _ _ := by
  unfold eW
  erw [pullback.lift_snd]

private theorem eW_nat (h : g ≫ π = s) (h' : g' ≫ π = s') (k : S' ⟶ S) (hk : k ≫ s = s') (hg : k ≫ g = g') :
    (eW p ι π g' s' h').hom ≫ mW p ι k hk = bc (p2 p ι π) k hg ≫ (eW p ι π g s h).hom := by
  have hA : aW p ι π g' ≫ bc (pullback.snd p π) k hg = bc (p2 p ι π) k hg ≫ aW p ι π g := by
    apply pullback.hom_ext
    · rw [Category.assoc, bc_comp_pullback_fst, aW_comp_pullback_fst, Category.assoc, aW_comp_pullback_fst, reassoc_of% (bc_comp_pullback_fst (p2 p ι π) k hg)]
    · rw [Category.assoc, bc_comp_pullback_snd, reassoc_of% (aW_comp_pullback_snd p ι π g'), Category.assoc, aW_comp_pullback_snd, bc_comp_pullback_snd]
  apply pullback.hom_ext
  · rw [Category.assoc, mW_comp_fst_eq_fst_comp_mY, reassoc_of% (eW_hom_comp_fst_eq_aW_comp_eY p ι π g' h'), eY_nat p π h h' k hk hg,
      reassoc_of% hA, Category.assoc, eW_hom_comp_fst_eq_aW_comp_eY]
  · rw [Category.assoc, mW_comp_pullback_snd, eW_hom_comp_snd, Category.assoc, eW_hom_comp_snd, reassoc_of% (bc_comp_pullback_fst (p2 p ι π) k hg)]

end Nat

section Cont
variable {q : ℕ} [NeZero q] {R : CommRingCat.{0}} {J : Type} [SmallCategory J] [IsFiltered J]
  {D : J ⥤ CommRingCat.{0}} {c : Cocone D} (hc : IsColimit c) {u : ∀ j, R ⟶ D.obj j}
  (hu : ∀ {j k : J} (f : j ⟶ k), u j ≫ D.map f = u k) {v : R ⟶ c.pt} (hv : ∀ j, u j ≫ c.ι.app j = v)

include hc in
private theorem contOf (hA : A2) (hB : B1) {X : Scheme.{0}} (P : X ⟶ Spec R) [QuasiCompact P] [IsSeparated P]
    (hq : IsUnit (q : R)) (i n : ℤ) :
    ContP q i n (fun j => sch.obj (pullback P (Spec.map (u j)))) (sch.obj (pullback P (Spec.map v)))
      (fun j => sch.map (LateralTheory.KummerTheory.bcMap P (u j) v (c.ι.app j) (hv j)))
      (fun {j k} f => sch.map (LateralTheory.KummerTheory.bcMap P (u j) (u k) (D.map f) (hu f))) :=
  LateralTheory.Fin.Cont.intersectionNumber_baseChange hA hB q P hq D c hc u hu v hv n i

end Cont

section Cont2
variable {q : ℕ} [NeZero q] {R : CommRingCat.{0}} {J : Type} [SmallCategory J] [IsFiltered J]
  {D : J ⥤ CommRingCat.{0}} {c : Cocone D} (hc : IsColimit c) {u : ∀ j, R ⟶ D.obj j}
  (hu : ∀ {j k : J} (f : j ⟶ k), u j ≫ D.map f = u k) {v : R ⟶ c.pt} (hv : ∀ j, u j ≫ c.ι.app j = v)
  {Y B W : Scheme.{0}} (p : Y ⟶ B) (ι : W ⟶ B) (π : Spec R ⟶ B)
  {s : ∀ j, Spec (D.obj j) ⟶ B} {sL : Spec c.pt ⟶ B}
  (hs : ∀ j, Spec.map (u j) ≫ π = s j) (hsL : Spec.map v ≫ π = sL)
  (h1 : ∀ j, Spec.map (c.ι.app j) ≫ s j = sL)
  (h2 : ∀ {j k : J} (f : j ⟶ k), Spec.map (D.map f) ≫ s j = s k)

include hc hu hv hs hsL in
private theorem contY (hA : A2) (hB : B1) [QuasiCompact (pullback.snd p π)] [IsSeparated (pullback.snd p π)]
    (hq : IsUnit (q : R)) (i n : ℤ) :
    ContP q i n (fun j => sch.obj (pullback p (s j))) (sch.obj (pullback p sL))
      (fun j => sch.map (mY p (Spec.map (c.ι.app j)) (h1 j)))
      (fun {j k} f => sch.map (mY p (Spec.map (D.map f)) (h2 f))) := by
  refine transfer (fun j => sch.mapIso (eY p π (Spec.map (u j)) (s j) (hs j)))
    (sch.mapIso (eY p π (Spec.map v) sL hsL)) (fun j => ?_) (fun {j k} f => ?_)
    (contOf hc hu hv hA hB (pullback.snd p π) hq i n)
  · simp only [CategoryTheory.Functor.mapIso_hom]
    rw [← CategoryTheory.Functor.map_comp, ← CategoryTheory.Functor.map_comp]
    congr 1
    exact eY_nat p π (hs j) hsL (Spec.map (c.ι.app j)) (h1 j) (by rw [← Spec.map_comp, hv j])
  · simp only [CategoryTheory.Functor.mapIso_hom]
    rw [← CategoryTheory.Functor.map_comp, ← CategoryTheory.Functor.map_comp]
    congr 1
    exact eY_nat p π (hs j) (hs k) (Spec.map (D.map f)) (h2 f) (by rw [← Spec.map_comp, hu f])

include hc hu hv hs hsL in
private theorem contW (hA : A2) (hB : B1) [QuasiCompact (p2 p ι π)] [IsSeparated (p2 p ι π)]
    (hq : IsUnit (q : R)) (i n : ℤ) :
    ContP q i n (fun j => sch.obj (pullback (pullback.snd p (s j) ≫ s j) ι))
      (sch.obj (pullback (pullback.snd p sL ≫ sL) ι))
      (fun j => sch.map (mW p ι (Spec.map (c.ι.app j)) (h1 j)))
      (fun {j k} f => sch.map (mW p ι (Spec.map (D.map f)) (h2 f))) := by
  refine transfer (fun j => sch.mapIso (eW p ι π (Spec.map (u j)) (s j) (hs j)))
    (sch.mapIso (eW p ι π (Spec.map v) sL hsL)) (fun j => ?_) (fun {j k} f => ?_)
    (contOf hc hu hv hA hB (p2 p ι π) hq i n)
  · simp only [CategoryTheory.Functor.mapIso_hom]
    rw [← CategoryTheory.Functor.map_comp, ← CategoryTheory.Functor.map_comp]
    congr 1
    exact eW_nat p ι π (hs j) hsL (Spec.map (c.ι.app j)) (h1 j) (by rw [← Spec.map_comp, hv j])
  · simp only [CategoryTheory.Functor.mapIso_hom]
    rw [← CategoryTheory.Functor.map_comp, ← CategoryTheory.Functor.map_comp]
    congr 1
    exact eW_nat p ι π (hs j) (hs k) (Spec.map (D.map f)) (h2 f) (by rw [← Spec.map_comp, hu f])

end Cont2

section Main

private theorem sys_of {q : ℕ} [NeZero q] (i : ℤ) {B W Y : Scheme.{0}} (ι : W ⟶ B) [IsClosedImmersion ι] (p : Y ⟶ B)
    (hp : IsProper p) (U : B.Etale) (R : CommRingCat.{0}) (e : U.left ≅ Spec R) (m : ℤ) (u : U.left)
    (hq : IsUnit (q : R)) (hA : A2) (hB : B1) : Nonempty (Sys q i p ι U m u) := by
  haveI := hp
  obtain ⟨J, _, _, D, c, hc, uu, hSH, hE⟩ := LateralTheory.Fin.StrictHenselization.intersectionNumber_baseChange R (e.hom u)
  obtain ⟨uj, huj⟩ : ∃ uj : ∀ j, R ⟶ D.obj j, ∀ j, uj j = uu.app j := ⟨fun j => uu.app j, fun _ => rfl⟩
  have hu : ∀ {j k : J} (f : j ⟶ k), uj j ≫ D.map f = uj k := by
    intro j k f
    rw [huj, huj]
    simpa using (uu.naturality f).symm
  obtain ⟨v, hv⟩ : ∃ v : R ⟶ c.pt, ∀ j, uj j ≫ c.ι.app j = v := by
    obtain ⟨j0⟩ := IsFiltered.nonempty (C := J)
    refine ⟨uj j0 ≫ c.ι.app j0, fun j => ?_⟩
    obtain ⟨k, f, g, -⟩ := IsFilteredOrEmpty.cocone_objs j j0
    have a1 : uj j ≫ c.ι.app j = uj k ≫ c.ι.app k := by rw [← c.w f, ← Category.assoc, hu f]
    have a2 : uj j0 ≫ c.ι.app j0 = uj k ≫ c.ι.app k := by rw [← c.w g, ← Category.assoc, hu g]
    exact a1.trans a2.symm
  have hEt : ∀ j, Etale (((Spec.map (uj j) ≫ e.inv) ≫ U.hom : Spec (D.obj j) ⟶ B)) := by
    intro j
    haveI : Etale (Spec.map (uj j)) := HasRingHomProperty.Spec_iff.mpr (by rw [huj]; exact (hE j).1)
    haveI : Etale U.hom := U.prop
    infer_instance
  let π : Spec R ⟶ B := e.inv ≫ U.hom
  let s : ∀ j, Spec (D.obj j) ⟶ B := fun j => (Spec.map (uj j) ≫ e.inv) ≫ U.hom
  let sL : Spec c.pt ⟶ B := (Spec.map v ≫ e.inv) ≫ U.hom
  have hs : ∀ j, Spec.map (uj j) ≫ π = s j := fun j => (Category.assoc _ _ _).symm
  have hsL : Spec.map v ≫ π = sL := (Category.assoc _ _ _).symm
  have h1 : ∀ j, Spec.map (c.ι.app j) ≫ s j = sL := by
    intro j
    simp only [s, sL, ← Category.assoc, ← Spec.map_comp, hv j]
  have h2 : ∀ {j k : J} (f : j ⟶ k), Spec.map (D.map f) ≫ s j = s k := by
    intro j k f
    simp only [s, ← Category.assoc, ← Spec.map_comp, hu f]
  let V : J → B.Etale := fun j => MorphismProperty.Over.mk ⊤ (s j) (hEt j)
  let a : ∀ j, V j ⟶ U := fun j => MorphismProperty.Over.homMk (Spec.map (uj j) ≫ e.inv) rfl trivial
  let tr : ∀ {j k : J}, (j ⟶ k) → (V k ⟶ V j) := fun {j k} f =>
    MorphismProperty.Over.homMk (Spec.map (D.map f)) (h2 f) trivial
  have cY := fun n => contY (hc := hc) (hu := hu) (hv := hv) (p := p) (π := π) (hs := hs) (hsL := hsL)
    (h1 := h1) (h2 := h2) hA hB hq i n
  have cW := fun n => contW (hc := hc) (hu := hu) (hv := hv) (p := p) (ι := ι) (π := π) (hs := hs)
    (hsL := hsL) (h1 := h1) (h2 := h2) hA hB hq i n
  have ea : ∀ j, Spec.map (c.ι.app j) ≫ (a j).left = Spec.map v ≫ e.inv := by
    intro j
    show Spec.map (c.ι.app j) ≫ Spec.map (uj j) ≫ e.inv = Spec.map v ≫ e.inv
    rw [← Category.assoc, ← Spec.map_comp, hv j]
  have etr : ∀ {j k : J} (f : j ⟶ k), Spec.map (c.ι.app k) ≫ (tr f).left = Spec.map (c.ι.app j) := by
    intro j k f
    show Spec.map (c.ι.app k) ≫ Spec.map (D.map f) = Spec.map (c.ι.app j)
    rw [← Spec.map_comp, c.w f]
  refine ⟨Sys.mk J V a ?_ tr ?_ ?_ ?_ c.pt hSH (Spec.map v ≫ e.inv)
    (fun j => mY p (Spec.map (c.ι.app j)) (h1 j)) (fun j => mW p ι (Spec.map (c.ι.app j)) (h1 j))
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_⟩
  · intro j
    obtain ⟨𝔮, h𝔮⟩ := (hE j).2
    refine ⟨𝔮, ?_⟩
    have hp𝔮 : Spec.map (uj j) 𝔮 = e.hom u := by
      rw [huj]
      exact PrimeSpectrum.ext h𝔮
    show e.inv (Spec.map (uj j) 𝔮) = u
    rw [hp𝔮]
    simp
  · intro j
    apply MorphismProperty.Over.Hom.ext
    show Spec.map (D.map (𝟙 j)) = 𝟙 _
    rw [CategoryTheory.Functor.map_id, Spec.map_id]
  · intro j k l f g
    apply MorphismProperty.Over.Hom.ext
    show Spec.map (D.map (f ≫ g)) = Spec.map (D.map g) ≫ Spec.map (D.map f)
    rw [CategoryTheory.Functor.map_comp, Spec.map_comp]
  · intro j k f
    apply MorphismProperty.Over.Hom.ext
    show Spec.map (D.map f) ≫ Spec.map (uj j) ≫ e.inv = Spec.map (uj k) ≫ e.inv
    rw [← Category.assoc, ← Spec.map_comp, hu f]
  · intro j
    exact mW_fst p ι _ _
  · intro j
    exact mY_comp' p (a j).left rfl (Spec.map (c.ι.app j)) (h1 j) (Spec.map v ≫ e.inv) rfl (ea j)
  · intro j
    exact mW_comp' p ι (a j).left rfl (Spec.map (c.ι.app j)) (h1 j) (Spec.map v ≫ e.inv) rfl (ea j)
  · intro j k f
    exact mY_comp' p (tr f).left (h2 f) (Spec.map (c.ι.app k)) (h1 k) (Spec.map (c.ι.app j)) (h1 j) (etr f)
  · intro j k f
    exact mW_comp' p ι (tr f).left (h2 f) (Spec.map (c.ι.app k)) (h1 k) (Spec.map (c.ι.app j)) (h1 j) (etr f)
  · intro j y hy
    exact (cY m).2 j y hy
  · intro y
    exact (cY (m - 1)).1 y
  · intro j w hw
    exact (cW (m - 1)).2 j w hw

end Main

end UpperTheory.Cb.MorphismCompositionLaws

theorem UpperTheory.Cb.affineGeometricCase_of_obstructionExact_natural :
    LateralTheory.E.NeighbourhoodKilling.ObsExact → LateralTheory.E.NeighbourhoodKilling.ObsNat → LateralTheory.E.GeoProof.AffGeo := by
  intro _ _ hyps q _ k _ hqk i B W Y x ι _ p hp U R e m u
  have hq : IsUnit (q : R) := by
    have h := hqk.map (Spec.preimage (e.inv ≫ U.hom ≫ x)).hom
    rwa [map_natCast] at h
  exact UpperTheory.Cb.MorphismCompositionLaws.sys_of i ι p hp U R e m u hq hyps.2.1 hyps.2.2.2.2.2.2.2.2.2.2.1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.AffineGeometricCaseOfObstructionExactNatural =====

-- ===== clump member: Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.NeighbourhoodCohomologyObstructionExact =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.NeighbourhoodCohomologyObstructionExact", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.NeighbourhoodKilling\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits GlobalTheory.EtC CochainComplex.HomComplex CochainComplex

namespace UpperTheory.Cb.ConeExactness

private theorem cone_exact (R : Type) [CommRing R] {K L : Cx R} (φ : K ⟶ L) (F : Shv R) (m : ℤ)
    (y : HK R (mappingCone φ) F (m + 1))
    (hy : HK.pull R (mappingCone.inr φ) F (m + 1) y = 0) :
    ∃ w, HK.pre R (mappingCone.fst φ) F m (m + 1) (add_comm 1 m) w = y := by
  obtain ⟨c, rfl⟩ := y.mk_surjective
  change CohomologyClass.mk (zcomp (Cocycle.ofHom (mappingCone.inr φ)) c (zero_add (m + 1))) = 0 at hy
  rw [CohomologyClass.mk_eq_zero_iff] at hy
  obtain ⟨m', hm', β, hβ⟩ := hy
  obtain rfl : m' = m := by omega
  have hβ' : δ m' (m' + 1) β = (Cochain.ofHom (mappingCone.inr φ)).comp c.1 (zero_add (m' + 1)) := by
    rw [hβ]; rfl

  let e : Cochain (mappingCone φ) (res R F) m' := (mappingCone.snd φ).comp β (zero_add m')
  let d : Cochain (mappingCone φ) (res R F) (m' + 1) := c.1 - δ m' (m' + 1) e
  have hinre : (Cochain.ofHom (mappingCone.inr φ)).comp e (zero_add m') = β := by
    simp only [e]
    rw [← Cochain.comp_assoc_of_first_is_zero_cochain, mappingCone.inr_snd]
    simp
  have hinr : (Cochain.ofHom (mappingCone.inr φ)).comp d (zero_add (m' + 1)) = 0 := by
    simp only [d]
    rw [Cochain.comp_sub, ← δ_ofHom_comp, hinre, hβ', sub_self]
  have hdcl : δ (m' + 1) (m' + 1 + 1) d = 0 := by
    simp only [d]
    rw [δ_sub, δ_δ, Cocycle.δ_eq_zero, sub_zero]
  let a : Cochain K (res R F) m' := (mappingCone.inl φ).comp d (by omega)
  have hdec : (mappingCone.fst φ).1.comp a (add_comm 1 m') = d := by
    have hid := mappingCone.id φ
    have h2 : ((mappingCone.fst φ).1.comp (mappingCone.inl φ) (add_neg_cancel 1) +
        (mappingCone.snd φ).comp (Cochain.ofHom (mappingCone.inr φ)) (add_zero 0)).comp d (zero_add (m' + 1)) = d := by
      rw [hid]; simp
    rw [Cochain.add_comp, Cochain.comp_assoc _ _ _ (add_neg_cancel 1) (show (-1 : ℤ) + (m' + 1) = m' by omega)
        (show (1 : ℤ) + -1 + (m' + 1) = m' + 1 by omega),
      Cochain.comp_assoc_of_second_is_zero_cochain, hinr] at h2
    simpa [a] using h2
  have ha : δ m' (m' + 1) a = 0 := by
    have h1 := δ_comp (mappingCone.fst φ).1 a (add_comm 1 m') 2 (m' + 1) (m' + 1 + 1) rfl (by omega) rfl
    rw [hdec, hdcl, Cocycle.δ_eq_zero] at h1
    have h2 := congrArg (fun t => (mappingCone.inl φ).comp t (show (-1 : ℤ) + (m' + 1 + 1) = m' + 1 by omega)) h1
    simp only [Cochain.comp_zero, Cochain.zero_comp, smul_zero, add_zero] at h2
    rw [← Cochain.comp_assoc _ _ _ (neg_add_cancel 1) (show (1 : ℤ) + (m' + 1) = m' + 1 + 1 by omega)
      (show (-1 : ℤ) + 1 + (m' + 1) = m' + 1 by omega), mappingCone.inl_fst] at h2
    simpa using h2.symm
  refine ⟨CohomologyClass.mk (Cocycle.mk a (m' + 1) rfl ha), ?_⟩
  change CohomologyClass.mk (zcomp (mappingCone.fst φ) (Cocycle.mk a (m' + 1) rfl ha) (add_comm 1 m')) =
    CohomologyClass.mk c
  rw [← sub_eq_zero, ← CohomologyClass.mk_sub, CohomologyClass.mk_eq_zero_iff]
  refine ⟨m', by omega, -e, ?_⟩
  change _ = (mappingCone.fst φ).1.comp a (add_comm 1 m') - c.1
  rw [hdec, δ_neg]
  simp [d]

end UpperTheory.Cb.ConeExactness

theorem UpperTheory.Cb.neighbourhood_cohomology_obstruction_exact :
    LateralTheory.E.NeighbourhoodKilling.ObsExact := by
  intro q _ U E u i m y hy
  exact UpperTheory.Cb.ConeExactness.cone_exact (ZMod q) _ _ m y hy
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.NeighbourhoodCohomologyObstructionExact =====

-- ===== clump member: Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.NeighbourhoodShrinkingOfObstructionExactNatural =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.NeighbourhoodShrinkingOfObstructionExactNatural", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.GeoProof\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace UpperTheory.Cb.MorphismProjectionLaws
open LateralTheory.E.E4 LateralTheory.E.EtaleTopologySheaves LateralTheory.E.SecondDegreeKilling LateralTheory.E.Bridge_yfiPf

variable {B W Y S T T' T'' : Scheme.{0}}

private def mY (p : Y ⟶ B) (u : T ⟶ B) (u' : T' ⟶ B) (f : T ⟶ T') (h : f ≫ u' = u) :
    pullback p u ⟶ pullback p u' :=
  pullback.map p u p u' (𝟙 Y) f (𝟙 B) (by simp) (by simp [h])

private lemma mY_snd (p : Y ⟶ B) (u : T ⟶ B) (u' : T' ⟶ B) (f : T ⟶ T') (h : f ≫ u' = u) :
    mY p u u' f h ≫ pullback.snd p u' = pullback.snd p u ≫ f :=
  pullback.lift_snd _ _ _

private lemma mY_fst (p : Y ⟶ B) (u : T ⟶ B) (u' : T' ⟶ B) (f : T ⟶ T') (h : f ≫ u' = u) :
    mY p u u' f h ≫ pullback.fst p u' = pullback.fst p u := by
  unfold mY pullback.map
  erw [pullback.lift_fst]
  exact Category.comp_id _

private lemma mY_comp (p : Y ⟶ B) (u : T ⟶ B) (u' : T' ⟶ B) (u'' : T'' ⟶ B) (f : T ⟶ T') (g : T' ⟶ T'')
    (k : T ⟶ T'') (h : f ≫ u' = u) (h' : g ≫ u'' = u') (hk : k ≫ u'' = u) (e : f ≫ g = k) :
    mY p u u' f h ≫ mY p u' u'' g h' = mY p u u'' k hk := by
  apply pullback.hom_ext
  · rw [Category.assoc, mY_fst, mY_fst, mY_fst]
  · rw [Category.assoc, mY_snd, reassoc_of% mY_snd, mY_snd, e]

private lemma mY_id (p : Y ⟶ B) (u : T ⟶ B) (h : 𝟙 T ≫ u = u) : mY p u u (𝟙 T) h = 𝟙 _ := by
  apply pullback.hom_ext
  · rw [mY_fst, Category.id_comp]
  · rw [mY_snd, Category.comp_id, Category.id_comp]

private def mW (p : Y ⟶ B) (ι : W ⟶ B) (u : T ⟶ B) (u' : T' ⟶ B) (f : T ⟶ T') (h : f ≫ u' = u) :
    pullback (pullback.snd p u ≫ u) ι ⟶ pullback (pullback.snd p u' ≫ u') ι :=
  pullback.map _ _ _ _ (mY p u u' f h) (𝟙 W) (𝟙 B)
    (by rw [Category.comp_id, reassoc_of% (mY_snd p u u' f h), h]) (by simp)

private lemma mW_fst (p : Y ⟶ B) (ι : W ⟶ B) (u : T ⟶ B) (u' : T' ⟶ B) (f : T ⟶ T') (h : f ≫ u' = u) :
    mW p ι u u' f h ≫ pullback.fst _ ι = pullback.fst _ ι ≫ mY p u u' f h :=
  pullback.lift_fst _ _ _

private lemma mW_snd (p : Y ⟶ B) (ι : W ⟶ B) (u : T ⟶ B) (u' : T' ⟶ B) (f : T ⟶ T') (h : f ≫ u' = u) :
    mW p ι u u' f h ≫ pullback.snd _ ι = pullback.snd _ ι :=
  (pullback.lift_snd _ _ _).trans (Category.comp_id _)

private lemma mW_comp (p : Y ⟶ B) (ι : W ⟶ B) (u : T ⟶ B) (u' : T' ⟶ B) (u'' : T'' ⟶ B) (f : T ⟶ T')
    (g : T' ⟶ T'') (k : T ⟶ T'') (h : f ≫ u' = u) (h' : g ≫ u'' = u') (hk : k ≫ u'' = u) (e : f ≫ g = k) :
    mW p ι u u' f h ≫ mW p ι u' u'' g h' = mW p ι u u'' k hk := by
  apply pullback.hom_ext
  · simp only [Category.assoc, mW_fst, reassoc_of% mW_fst]
    rw [mY_comp p u u' u'' f g k h h' hk e]
  · simp only [Category.assoc, mW_snd]

private lemma mW_id (p : Y ⟶ B) (ι : W ⟶ B) (u : T ⟶ B) (h : 𝟙 T ≫ u = u) : mW p ι u u (𝟙 T) h = 𝟙 _ := by
  apply pullback.hom_ext
  · rw [mW_fst, mY_id, Category.id_comp, Category.comp_id]
  · rw [mW_snd, Category.id_comp]

private lemma a_w {U U' : B.Etale} (a : U' ⟶ U) : a.left ≫ U.hom = U'.hom := by
  simpa using a.w

private lemma resY_comp (p : Y ⟶ B) {U U' U'' : B.Etale} (b : U'' ⟶ U') (a : U' ⟶ U) :
    resY p (b ≫ a) = resY p b ≫ resY p a := by
  have hY : ∀ {V V' : B.Etale} (c : V' ⟶ V), resY p c = mY p _ _ c.left (a_w c) := fun _ => rfl
  rw [hY (b ≫ a), hY b, hY a]
  exact (mY_comp p _ _ _ _ _ _ _ _ _ rfl).symm

private lemma resYW_comp (p : Y ⟶ B) (ι : W ⟶ B) {U U' U'' : B.Etale} (b : U'' ⟶ U') (a : U' ⟶ U) :
    resYW p ι (b ≫ a) = resYW p ι b ≫ resYW p ι a := by
  have hW : ∀ {V V' : B.Etale} (c : V' ⟶ V), resYW p ι c = mW p ι _ _ c.left (a_w c) := fun _ => rfl
  rw [hW (b ≫ a), hW b, hW a]
  exact (mW_comp p ι _ _ _ _ _ _ _ _ _ rfl).symm

private lemma tY_res (p : Y ⟶ B) {U U' : B.Etale} (a : U' ⟶ U) (t : S ⟶ U'.left)
    (h : 𝟙 S ≫ t ≫ U'.hom = (t ≫ a.left) ≫ U.hom) :
    mY p _ _ (𝟙 S) h ≫ tY p U' t ≫ resY p a = tY p U (t ≫ a.left) := by
  have hY : resY p a = mY p _ _ a.left (a_w a) := rfl
  have hT : ∀ {V : B.Etale} (s : S ⟶ V.left), tY p V s = mY p _ _ s rfl := fun _ => rfl
  have h1 : (t ≫ a.left) ≫ U.hom = t ≫ U'.hom := by rw [Category.assoc, a_w]
  rw [hY, hT, hT, mY_comp p _ _ _ t a.left (t ≫ a.left) _ _ h1 rfl,
    mY_comp p _ _ _ (𝟙 S) (t ≫ a.left) (t ≫ a.left) _ _ rfl (Category.id_comp _)]

private lemma tW_res (p : Y ⟶ B) (ι : W ⟶ B) {U U' : B.Etale} (a : U' ⟶ U) (t : S ⟶ U'.left)
    (h : 𝟙 S ≫ t ≫ U'.hom = (t ≫ a.left) ≫ U.hom) :
    mW p ι _ _ (𝟙 S) h ≫ tW p ι U' t ≫ resYW p ι a = tW p ι U (t ≫ a.left) := by
  have hW : resYW p ι a = mW p ι _ _ a.left (a_w a) := rfl
  have hT : ∀ {V : B.Etale} (s : S ⟶ V.left), tW p ι V s = mW p ι _ _ s rfl := fun _ => rfl
  have h1 : (t ≫ a.left) ≫ U.hom = t ≫ U'.hom := by rw [Category.assoc, a_w]
  rw [hW, hT, hT, mW_comp p ι _ _ _ t a.left (t ≫ a.left) _ _ h1 rfl,
    mW_comp p ι _ _ _ (𝟙 S) (t ≫ a.left) (t ≫ a.left) _ _ rfl (Category.id_comp _)]

private lemma pull_left (q : ℕ) (i n : ℤ) {X Z : Scheme.{0}} (f : X ⟶ Z) (g : Z ⟶ X) (h : f ≫ g = 𝟙 X)
    (y : Ht q (sch.obj X) n i) :
    pull (ZMod q) (sch.map f) (tw q i) n (pull (ZMod q) (sch.map g) (tw q i) n y) = y := by
  rw [← pull_comp, ← sch.map_comp, h, sch.map_id, pull_id]

private lemma pull_zero (q : ℕ) (i n : ℤ) {X Z : Scheme.{0}} (f : X ⟶ Z) (g : Z ⟶ X) (h : g ≫ f = 𝟙 Z)
    (y : Ht q (sch.obj Z) n i) (hy : pull (ZMod q) (sch.map f) (tw q i) n y = 0) : y = 0 := by
  rw [← pull_left q i n g f h y, hy, map_zero]

private lemma shrink (q : ℕ) (i : ℤ) (p : Y ⟶ B) (ι : W ⟶ B) (U U' : B.Etale) (a : U' ⟶ U) (m : ℤ)
    (u' : U'.left) (S : Sys q i p ι U' m u') : Nonempty (Sys q i p ι U m (a.left u')) := by
  have hu : 𝟙 _ ≫ S.t ≫ U'.hom = (S.t ≫ a.left) ≫ U.hom := by
    rw [Category.id_comp, Category.assoc, a_w]
  have hu' : 𝟙 _ ≫ (S.t ≫ a.left) ≫ U.hom = S.t ≫ U'.hom := by
    rw [Category.id_comp, Category.assoc, a_w]
  have eY1 : mY p _ _ (𝟙 _) hu ≫ mY p _ _ (𝟙 _) hu' = 𝟙 _ := by
    rw [mY_comp p _ _ _ _ _ (𝟙 _) _ _ (Category.id_comp _) (Category.id_comp _), mY_id]
  have eY2 : mY p _ _ (𝟙 _) hu' ≫ mY p _ _ (𝟙 _) hu = 𝟙 _ := by
    rw [mY_comp p _ _ _ _ _ (𝟙 _) _ _ (Category.id_comp _) (Category.id_comp _), mY_id]
  have eW1 : mW p ι _ _ (𝟙 _) hu ≫ mW p ι _ _ (𝟙 _) hu' = 𝟙 _ := by
    rw [mW_comp p ι _ _ _ _ _ (𝟙 _) _ _ (Category.id_comp _) (Category.id_comp _), mW_id]
  have eW2 : mW p ι _ _ (𝟙 _) hu' ≫ mW p ι _ _ (𝟙 _) hu = 𝟙 _ := by
    rw [mW_comp p ι _ _ _ _ _ (𝟙 _) _ _ (Category.id_comp _) (Category.id_comp _), mW_id]
  have pc : ∀ {X1 X2 X3 : Scheme.{0}} (f : X1 ⟶ X2) (g : X2 ⟶ X3) (n : ℤ) (y : Ht q (sch.obj X3) n i),
      pull (ZMod q) (sch.map (f ≫ g)) (tw q i) n y =
        pull (ZMod q) (sch.map f) (tw q i) n (pull (ZMod q) (sch.map g) (tw q i) n y) := by
    intro X1 X2 X3 f g n y
    rw [CategoryTheory.Functor.map_comp, pull_comp]
  letI := S.cat
  letI := S.ring
  haveI := S.filt
  refine ⟨Sys.mk S.J S.V (fun j => S.a j ≫ a) ?_ S.tr S.tr_id S.tr_comp ?_ S.A S.sh
    (S.t ≫ a.left) (fun j => mY p _ _ (𝟙 _) hu ≫ S.gY j) (fun j => mW p ι _ _ (𝟙 _) hu ≫ S.gW j)
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_⟩
  · intro j
    obtain ⟨v, hv⟩ := S.mem j
    exact ⟨v, congrArg (fun z => a.left z) hv⟩
  · intro j k f
    rw [← Category.assoc, S.tr_a]
  · intro j
    show pullback.fst _ ι ≫ mY p _ _ (𝟙 _) hu ≫ S.gY j = (mW p ι _ _ (𝟙 _) hu ≫ S.gW j) ≫ _
    rw [← reassoc_of% (mW_fst p ι _ _ (𝟙 _) hu)]
    exact (congrArg (fun z => mW p ι _ _ (𝟙 _) hu ≫ z) (S.sq j)).trans (Category.assoc _ _ _).symm
  · intro j
    rw [resY_comp]
    refine (Category.assoc _ _ _).trans ?_
    rw [reassoc_of% (S.gY_a j)]
    exact tY_res p a S.t hu
  · intro j
    rw [resYW_comp]
    refine (Category.assoc _ _ _).trans ?_
    rw [reassoc_of% (S.gW_a j)]
    exact tW_res p ι a S.t hu
  · intro j k f
    refine (Category.assoc _ _ _).trans ?_
    rw [S.gY_tr]
  · intro j k f
    refine (Category.assoc _ _ _).trans ?_
    rw [S.gW_tr]
  · intro j y hy
    apply S.injY j y
    exact pull_zero q i m (mY p _ _ (𝟙 _) hu) (mY p _ _ (𝟙 _) hu') eY2 _ (by rw [← pc]; exact hy)
  · intro y
    obtain ⟨j, y', hy'⟩ := S.surY (pull (ZMod q) (sch.map (mY p _ _ (𝟙 _) hu')) (tw q i) (m - 1) y)
    refine ⟨j, y', ?_⟩
    rw [pc, hy', pull_left q i (m - 1) _ _ eY1 y]
  · intro j w hw
    apply S.injW j w
    exact pull_zero q i (m - 1) (mW p ι _ _ (𝟙 _) hu) (mW p ι _ _ (𝟙 _) hu') eW2 _
      (by rw [← pc]; exact hw)

end UpperTheory.Cb.MorphismProjectionLaws

theorem UpperTheory.Cb.neighbourhoodShrinking_of_obstructionExact_natural :
    LateralTheory.E.NeighbourhoodKilling.ObsExact → LateralTheory.E.NeighbourhoodKilling.ObsNat → LateralTheory.E.GeoProof.Shrink := by
  intro _ _ q _ i B W Y p ι U U' a m u' S
  exact UpperTheory.Cb.MorphismProjectionLaws.shrink q i p ι U U' a m u' S
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.NeighbourhoodShrinkingOfObstructionExactNatural =====

-- ===== clump member: Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.EtaleCohomologyClassKilledOnNeighborhood =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.EtaleCohomologyClassKilledOnNeighborhood", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.SecondDegreeKilling.LeafKill2Of\npublic import Development.AutomorphicArithmetic.CommutativeAlgebra.EtaleCohomologyClassKilledOnNbhdPair\npublic import Development.AutomorphicArithmetic.CommutativeAlgebra.RelativeCohomologyColimitOfExactOfNaturality\npublic import Development.AutomorphicArithmetic.CommutativeAlgebra.RelativeCohomologyConnectingNaturality\npublic import Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.AffineGeometricCaseOfObstructionExactNatural\npublic import Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.NeighbourhoodCohomologyObstructionExact\npublic import Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.NeighbourhoodShrinkingOfObstructionExactNatural\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

theorem UpperTheory.Cb.etale_cohomology_class_killed_on_neighborhood :
    LateralTheory.E.SecondDegreeKilling.Nbhd.LeafKillNbhd :=
  LateralTheory.E.NeighbourhoodKilling.goal_of UpperTheory.etaleCohomology_class_killed_on_nbhd_pair
    (LateralTheory.E.Bridge_yfiPf.Bridge_of_geo_pack
      (LateralTheory.E.GeoProof.Geo_of (UpperTheory.Cb.affineGeometricCase_of_obstructionExact_natural UpperTheory.Cb.neighbourhood_cohomology_obstruction_exact UpperTheory.relativeCohomology_connecting_naturality)
        (UpperTheory.Cb.neighbourhoodShrinking_of_obstructionExact_natural UpperTheory.Cb.neighbourhood_cohomology_obstruction_exact UpperTheory.relativeCohomology_connecting_naturality))
      (UpperTheory.relativeCohomology_colimit_of_exact_of_naturality UpperTheory.Cb.neighbourhood_cohomology_obstruction_exact UpperTheory.relativeCohomology_connecting_naturality))
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.EtaleCohomologyClassKilledOnNeighborhood =====
