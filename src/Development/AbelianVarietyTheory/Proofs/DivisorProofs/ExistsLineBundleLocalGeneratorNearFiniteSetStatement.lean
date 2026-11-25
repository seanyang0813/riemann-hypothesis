module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSectionFamilyZero
public import Mathlib.AlgebraicGeometry.Morphisms.QuasiSeparated
public import Mathlib.AlgebraicGeometry.Morphisms.QuasiCompact
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitsPatch
public import Mathlib.RingTheory.Ideal.BigOperators
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
import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle
import Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalSectionFamilyUnitAtPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalUnitGeneratorOfLineBundleLocalSection, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleLocalSectionFamilyUnitAtFinitePoints, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalGeneratorNearFiniteSet, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalGeneratorNearFiniteSetStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalSectionFamilyUnitAtPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalSectionFamilyUnitAtPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSectionFamilyZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\npublic import Mathlib.AlgebraicGeometry.Morphisms.QuasiSeparated\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\npublic import Mathlib.AlgebraicGeometry.Morphisms.QuasiCompact\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.Pinch.SemiLoc

variable {X : Scheme.{0}}

theorem exists_pow_mul_eq_zero_of_germ {V : X.Opens} (hV : IsAffineOpen V) (h s : Γ(X, V))
    (H : ∀ z (hz : z ∈ V), z ∈ X.basicOpen h → (X.presheaf.germ V z hz).hom s = 0) :
    ∃ m : ℕ, h ^ m * s = 0 := by
  apply exists_pow_mul_eq_zero_of_res_basicOpen_eq_zero_of_isAffineOpen X hV
  apply TopCat.Presheaf.section_ext X.sheaf
  intro z hz
  simp only [TopCat.Presheaf.restrictOpen, map_zero]
  erw [TopCat.Presheaf.germ_res_apply]
  exact H z (X.basicOpen_le h hz) hz

theorem exists_germ_eq_pow_mul {V O : X.Opens} (hV : IsAffineOpen V) (h : Γ(X, V))
    (hO : X.basicOpen h ≤ O) (r : Γ(X, O)) :
    ∃ (n : ℕ) (y : Γ(X, V)), ∀ z (hz : z ∈ X.basicOpen h),
      (X.presheaf.germ V z (X.basicOpen_le h hz)).hom y =
        (X.presheaf.germ V z (X.basicOpen_le h hz)).hom h ^ n *
          (X.presheaf.germ O z (hO hz)).hom r := by
  obtain ⟨n, y, hy⟩ := exists_eq_pow_mul_of_isAffineOpen X V hV h
    ((X.presheaf.map (homOfLE hO).op).hom r)
  refine ⟨n, y, fun z hz => ?_⟩
  have := congrArg (X.presheaf.germ (X.basicOpen h) z hz).hom hy
  simp only [TopCat.Presheaf.restrictOpen, map_mul, map_pow] at this
  erw [TopCat.Presheaf.germ_res_apply, TopCat.Presheaf.germ_res_apply,
    TopCat.Presheaf.germ_res_apply] at this
  exact this

theorem germ_cocycle {L : LB X} (hL : L.IsLB) (a b c : L.ι) (z : X) (ha : z ∈ L.U a)
    (hb : z ∈ L.U b) (hc : z ∈ L.U c) :
    (X.presheaf.germ (L.U a ⊓ L.U b) z ⟨ha, hb⟩).hom (L.g a b).val *
      (X.presheaf.germ (L.U b ⊓ L.U c) z ⟨hb, hc⟩).hom (L.g b c).val =
    (X.presheaf.germ (L.U a ⊓ L.U c) z ⟨ha, hc⟩).hom (L.g a c).val := by
  have := congrArg (fun u : Γ(X, L.U a ⊓ L.U b ⊓ L.U c)ˣ =>
    (X.presheaf.germ (L.U a ⊓ L.U b ⊓ L.U c) z ⟨⟨ha, hb⟩, hc⟩).hom u.val) (hL.cocycle a b c)
  simp only [Units.val_mul, map_mul, res, Units.coe_map] at this
  erw [TopCat.Presheaf.germ_res_apply, TopCat.Presheaf.germ_res_apply,
    TopCat.Presheaf.germ_res_apply] at this
  exact this

end GlobalTheory.Pinch.SemiLoc

namespace GlobalTheory.Pinch.SemiLoc

theorem exists_secFam_isUnit_germ : ∀ (X : Scheme.{0}) (L : LB X), L.IsLB → ∀ (W : X.Opens), IsAffineOpen W → ∀ (J : Type) [Fintype J] (f : J → Γ(X, W)) (k : J → L.ι) (hk : ∀ j, X.basicOpen (f j) ≤ L.U (k j)) (x : X), x ∈ W → ∃ e : ∀ j, Γ(X, X.basicOpen (f j)), GlobalTheory.Pinch.IsSecFam L (fun j => X.basicOpen (f j)) k hk e ∧ ∀ j (h : x ∈ X.basicOpen (f j)), IsUnit ((X.presheaf.germ (X.basicOpen (f j)) x h).hom (e j)) := by
  intro X L hL W hW J _ f k hk x hxW
  classical
  obtain ⟨k0, hk0⟩ : ∃ k0, x ∈ L.U k0 := by
    have hx : x ∈ (⨆ i, L.U i) := by rw [hL.cover]; trivial
    exact TopologicalSpace.Opens.mem_iSup.1 hx
  obtain ⟨h, hhU, hxh⟩ := hW.exists_basicOpen_le (V := L.U k0) ⟨x, hk0⟩ hxW
  have hDW : ∀ j, X.basicOpen (f j) ≤ W := fun j => X.basicOpen_le (f j)
  let hj : ∀ j, Γ(X, X.basicOpen (f j)) := fun j => (X.presheaf.map (homOfLE (hDW j)).op).hom h
  have hbj : ∀ j, X.basicOpen (hj j) = X.basicOpen (f j) ⊓ X.basicOpen h :=
    fun j => X.basicOpen_res h _
  have hgj : ∀ j z (hz : z ∈ X.basicOpen (f j)),
      (X.presheaf.germ (X.basicOpen (f j)) z hz).hom (hj j) =
        (X.presheaf.germ W z (hDW j hz)).hom h :=
    fun j z hz => TopCat.Presheaf.germ_res_apply _ _ _ _ _
  have hO : ∀ j, X.basicOpen (hj j) ≤ L.U (k j) ⊓ L.U k0 := fun j => by
    rw [hbj]; exact inf_le_inf (hk j) hhU
  choose n y hy using fun j =>
    exists_germ_eq_pow_mul (hW.basicOpen (f j)) (hj j) (hO j) (L.g (k j) k0).val
  let N := Finset.univ.sup n
  let e : ∀ j, Γ(X, X.basicOpen (f j)) := fun j => hj j ^ (N - n j) * y j
  have he : ∀ j z (hz : z ∈ X.basicOpen (f j)) (hzh : z ∈ X.basicOpen h),
      (X.presheaf.germ (X.basicOpen (f j)) z hz).hom (e j) =
        (X.presheaf.germ W z (hDW j hz)).hom h ^ N *
          (X.presheaf.germ (L.U (k j) ⊓ L.U k0) z ⟨hk j hz, hhU hzh⟩).hom (L.g (k j) k0).val := by
    intro j z hz hzh
    have hz' : z ∈ X.basicOpen (hj j) := by rw [hbj]; exact ⟨hz, hzh⟩
    have h1 := hy j z hz'
    simp only [e, map_mul, map_pow]
    rw [h1]; simp only [hgj]; rw [← _root_.mul_assoc, ← pow_add,
      Nat.sub_add_cancel (Finset.le_sup (f := n) (Finset.mem_univ j))]
  have hdef : ∀ j j', ∃ m : ℕ, ∀ z (hz : z ∈ X.basicOpen (f j)) (hz' : z ∈ X.basicOpen (f j')),
      (X.presheaf.germ W z (hDW j hz)).hom h ^ m *
        ((X.presheaf.germ (X.basicOpen (f j)) z hz).hom (e j) -
          (X.presheaf.germ (L.U (k j) ⊓ L.U (k j')) z ⟨hk j hz, hk j' hz'⟩).hom
              (L.g (k j) (k j')).val *
            (X.presheaf.germ (X.basicOpen (f j')) z hz').hom (e j')) = 0 := by
    intro j j'
    obtain ⟨V, hVdef⟩ : ∃ V, V = X.basicOpen (f j * f j') := ⟨_, rfl⟩
    have hVeq : V = X.basicOpen (f j) ⊓ X.basicOpen (f j') := hVdef.trans (X.basicOpen_mul _ _)
    have hVa : IsAffineOpen V := hVdef ▸ hW.basicOpen (f j * f j')
    have hV1 : V ≤ X.basicOpen (f j) := hVeq ▸ inf_le_left
    have hV2 : V ≤ X.basicOpen (f j') := hVeq ▸ inf_le_right
    have hVg : V ≤ L.U (k j) ⊓ L.U (k j') := le_inf (hV1.trans (hk j)) (hV2.trans (hk j'))
    have hVW : V ≤ W := hV1.trans (hDW j)
    let d : Γ(X, V) := (X.presheaf.map (homOfLE hV1).op).hom (e j) -
      (X.presheaf.map (homOfLE hVg).op).hom (L.g (k j) (k j')).val *
        (X.presheaf.map (homOfLE hV2).op).hom (e j')
    let hV : Γ(X, V) := (X.presheaf.map (homOfLE hVW).op).hom h
    have hbV : X.basicOpen hV = V ⊓ X.basicOpen h := X.basicOpen_res h _
    obtain ⟨m, hm⟩ := exists_pow_mul_eq_zero_of_germ hVa hV d (by
      intro z hz hzb
      rw [hbV] at hzb
      simp only [d, map_sub, map_mul]
      erw [TopCat.Presheaf.germ_res_apply, TopCat.Presheaf.germ_res_apply,
        TopCat.Presheaf.germ_res_apply]
      rw [he j z (hV1 hz) hzb.2, he j' z (hV2 hz) hzb.2,
        ← germ_cocycle hL (k j) (k j') k0 z (hk j (hV1 hz)) (hk j' (hV2 hz)) (hhU hzb.2)]
      ring)
    refine ⟨m, fun z hz hz' => ?_⟩
    have hzV : z ∈ V := by rw [hVeq]; exact ⟨hz, hz'⟩
    have := congrArg (X.presheaf.germ V z hzV).hom hm
    simp only [d, hV, map_mul, map_pow, map_sub, map_zero] at this
    erw [TopCat.Presheaf.germ_res_apply, TopCat.Presheaf.germ_res_apply,
      TopCat.Presheaf.germ_res_apply, TopCat.Presheaf.germ_res_apply] at this
    exact this
  choose m hm using hdef
  let M := Finset.univ.sup (fun p : J × J => m p.1 p.2)
  refine ⟨fun j => hj j ^ M * e j, ?_, ?_⟩
  · intro j j' z hz hz'
    have hle : m j j' ≤ M := Finset.le_sup (f := fun p : J × J => m p.1 p.2) (Finset.mem_univ (j, j'))
    have h0 := hm j j' z hz hz'
    simp only [map_mul, map_pow]
    simp only [hgj]
    have h2 : (X.presheaf.germ W z (hDW j hz)).hom h ^ M *
        ((X.presheaf.germ (X.basicOpen (f j)) z hz).hom (e j) -
          (X.presheaf.germ (L.U (k j) ⊓ L.U (k j')) z ⟨hk j hz, hk j' hz'⟩).hom
              (L.g (k j) (k j')).val *
            (X.presheaf.germ (X.basicOpen (f j')) z hz').hom (e j')) = 0 := by
      rw [← Nat.sub_add_cancel hle, pow_add, _root_.mul_assoc, h0, mul_zero]
    linear_combination h2
  · intro j hx
    have hu : IsUnit ((X.presheaf.germ W x (hDW j hx)).hom h) := (X.mem_basicOpen h x _).1 hxh
    simp only [map_mul, map_pow]
    simp only [hgj]; rw [he j x hx hxh]
    exact (hu.pow _).mul ((hu.pow _).mul ((L.g (k j) k0).isUnit.map _))

end GlobalTheory.Pinch.SemiLoc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalSectionFamilyUnitAtPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalUnitGeneratorOfLineBundleLocalSection =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalUnitGeneratorOfLineBundleLocalSection", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitsPatch\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSectionFamilyZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section
namespace GlobalTheory.Pinch

theorem gm_id_val_germ {X : Scheme.{0}} (x : X) (U : X.Opens) (h : x ∈ U) (a : Γ(X, U)ˣ) :
    (gm (𝟙 X) x U a).val = (X.presheaf.germ U x h).hom a.val := by
  rw [gm_val (𝟙 X) x U h]
  rfl

theorem isUnit_res_basicOpen' {X : Scheme.{0}} {D : X.Opens} (e : Γ(X, D)) :
    IsUnit ((X.presheaf.map (homOfLE (X.basicOpen_le e)).op).hom e) :=
  X.toRingedSpace.isUnit_res_basicOpen e

def basicUnit {X : Scheme.{0}} {D : X.Opens} (e : Γ(X, D)) : Γ(X, X.basicOpen e)ˣ :=
  (isUnit_res_basicOpen' e).unit

theorem gm_basicUnit_val {X : Scheme.{0}} {D : X.Opens} (e : Γ(X, D)) (x : X) (hx : x ∈ X.basicOpen e) :
    (gm (𝟙 X) x _ (basicUnit e)).val = (X.presheaf.germ D x (X.basicOpen_le e hx)).hom e := by
  rw [gm_id_val_germ x _ hx]
  show (X.presheaf.germ (X.basicOpen e) x hx).hom ((X.presheaf.map (homOfLE (X.basicOpen_le e)).op).hom e) = _
  exact TopCat.Presheaf.germ_res_apply X.presheaf _ x hx e

theorem exists_locGen_of_secFam : ∀ (X : Scheme.{0}) (L : LB X), L.IsLB → ∀ (J : Type) (D : J → X.Opens) (k : J → L.ι) (hD : ∀ j, D j ≤ L.U (k j)) (e : ∀ j, Γ(X, D j)), GlobalTheory.Pinch.IsSecFam L D k hD e → ∃ (V : X.Opens) (a : ∀ i, Γ(X, V ⊓ L.U i)ˣ), (∀ j (x : X) (h : x ∈ D j), IsUnit ((X.presheaf.germ (D j) x h).hom (e j)) → x ∈ V) ∧ GlobalTheory.Pinch.LocGen L V a := by
  intro X L hL J D k hD e he
  let B : J → X.Opens := fun j => X.basicOpen (e j)
  have hB : ∀ j, B j ≤ D j := fun j => X.basicOpen_le (e j)
  let V : X.Opens := ⨆ j, B j
  have hBV : ∀ j, B j ≤ V := fun j => le_iSup B j

  have ge : ∀ j j' (z : X) (hz : z ∈ B j) (hz' : z ∈ B j'),
      gm (𝟙 X) z (B j) (basicUnit (e j)) =
        gm (𝟙 X) z (L.U (k j) ⊓ L.U (k j')) (L.g (k j) (k j')) * gm (𝟙 X) z (B j') (basicUnit (e j')) := by
    intro j j' z hz hz'
    apply Units.ext
    rw [Units.val_mul, gm_basicUnit_val _ z hz, gm_basicUnit_val _ z hz',
      gm_id_val_germ z (L.U (k j) ⊓ L.U (k j')) ⟨hD j (hB j hz), hD j' (hB j' hz')⟩]
    exact he j j' z (hB j hz) (hB j' hz')
  let W : L.ι → J → X.Opens := fun i j => B j ⊓ L.U i
  have hWV : ∀ i j, W i j ≤ V ⊓ L.U i := fun i j => inf_le_inf_right _ (hBV j)
  have hWg : ∀ i j, W i j ≤ L.U i ⊓ L.U (k j) := fun i j z hz => ⟨hz.2, hD j (hB j hz.1)⟩
  have hWB : ∀ i j, W i j ≤ B j := fun i j => inf_le_left
  let u : ∀ i j, Γ(X, W i j)ˣ := fun i j => res (hWg i j) (L.g i (k j)) * res (hWB i j) (basicUnit (e j))
  have gu : ∀ i j (z : X) (hz : z ∈ W i j), gm (𝟙 X) z (W i j) (u i j) =
      gm (𝟙 X) z (L.U i ⊓ L.U (k j)) (L.g i (k j)) * gm (𝟙 X) z (B j) (basicUnit (e j)) := by
    intro i j z hz
    simp only [u, map_mul]
    rw [gm_res _ z (hWg i j) hz, gm_res _ z (hWB i j) hz]
  have key : ∀ i j j' (z : X), z ∈ L.U i → z ∈ B j → z ∈ B j' →
      gm (𝟙 X) z (L.U i ⊓ L.U (k j)) (L.g i (k j)) * gm (𝟙 X) z (B j) (basicUnit (e j)) =
      gm (𝟙 X) z (L.U i ⊓ L.U (k j')) (L.g i (k j')) * gm (𝟙 X) z (B j') (basicUnit (e j')) := by
    intro i j j' z hi hj hj'
    rw [ge j j' z hj hj', ← _root_.mul_assoc, gm_cocycle hL (𝟙 X) z hi (hD j (hB j hj)) (hD j' (hB j' hj'))]
  have glued : ∀ i, ∃ s : Γ(X, V ⊓ L.U i)ˣ, ∀ j, res (hWV i j) s = u i j := by
    intro i
    refine glue_unit (V ⊓ L.U i) (W i) (hWV i) (fun z hz => ?_) (u i) (fun j j' z hz => ?_)
    · obtain ⟨j, hj⟩ := TopologicalSpace.Opens.mem_iSup.1 hz.1
      exact TopologicalSpace.Opens.mem_iSup.2 ⟨j, hj, hz.2⟩
    · rw [gu i j z hz.1, gu i j' z hz.2]
      exact key i j j' z hz.1.2 hz.1.1 hz.2.1
  choose a ha using glued
  refine ⟨V, a, fun j x hx hu => hBV j ((Scheme.mem_basicOpen X (e j) x hx).2 hu), ?_⟩
  intro y i i' hy hi hi'
  obtain ⟨j, hj⟩ := TopologicalSpace.Opens.mem_iSup.1 hy
  have ga : ∀ i (hi : y ∈ L.U i), gm (𝟙 X) y (V ⊓ L.U i) (a i) =
      gm (𝟙 X) y (L.U i ⊓ L.U (k j)) (L.g i (k j)) * gm (𝟙 X) y (B j) (basicUnit (e j)) := by
    intro i hi
    rw [← gm_res _ y (hWV i j) ⟨hj, hi⟩, ha i j]
    exact gu i j y ⟨hj, hi⟩
  rw [ga i hi, ga i' hi', ← _root_.mul_assoc, gm_cocycle hL (𝟙 X) y hi hi' (hD j (hB j hj))]

end GlobalTheory.Pinch
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalUnitGeneratorOfLineBundleLocalSection =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleLocalSectionFamilyUnitAtFinitePoints =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleLocalSectionFamilyUnitAtFinitePoints", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSectionFamilyZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\npublic import Mathlib.RingTheory.Ideal.BigOperators\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.Pinch

theorem isUnit_add_of_not_isUnit {R : Type*} [CommRing R] [IsLocalRing R] {u m : R}
    (hu : IsUnit u) (hm : ¬ IsUnit m) : IsUnit (u + m) := by
  by_contra h
  have h1 : u + m ∈ IsLocalRing.maximalIdeal R := (IsLocalRing.mem_maximalIdeal _).mpr h
  have h2 : m ∈ IsLocalRing.maximalIdeal R := (IsLocalRing.mem_maximalIdeal _).mpr hm
  have h3 : u ∈ IsLocalRing.maximalIdeal R := by
    have := Ideal.sub_mem _ h1 h2
    simpa using this
  exact (IsLocalRing.mem_maximalIdeal _).mp h3 hu

theorem secFam_unit_at_finite : ∀ (X : Scheme.{0}) (L : LB X) (W : X.Opens) (J : Type) (D : J → X.Opens), (∀ j, D j ≤ W) → ∀ (k : J → L.ι) (hD : ∀ j, D j ≤ L.U (k j)) (F : Set X), F.Finite → ∀ (a : X → Γ(X, W)), (∀ x ∈ F, x ∈ X.basicOpen (a x)) → (∀ x ∈ F, ∀ y ∈ F, y ≠ x → y ∉ X.basicOpen (a x)) → ∀ (E : X → ∀ j, Γ(X, D j)), (∀ x ∈ F, GlobalTheory.Pinch.IsSecFam L D k hD (E x)) → (∀ x ∈ F, ∀ j (h : x ∈ D j), IsUnit ((X.presheaf.germ (D j) x h).hom (E x j))) → ∃ e : ∀ j, Γ(X, D j), GlobalTheory.Pinch.IsSecFam L D k hD e ∧ ∀ x ∈ F, ∀ j (h : x ∈ D j), IsUnit ((X.presheaf.germ (D j) x h).hom (e j)) := by
  intro X L W J D hDW k hD F hF a ha hsep E hE hEu
  classical
  let r : ∀ j, Γ(X, W) →+* Γ(X, D j) := fun j => (X.presheaf.map (homOfLE (hDW j)).op).hom
  refine ⟨fun j => ∑ x ∈ hF.toFinset, r j (a x) * E x j, ?_, ?_⟩
  ·
    have hr : ∀ j z (hz : z ∈ D j) (s : Γ(X, W)),
        (X.presheaf.germ (D j) z hz).hom (r j s) = (X.presheaf.germ W z (hDW j hz)).hom s := by
      intro j z hz s
      exact TopCat.Presheaf.germ_res_apply X.presheaf (homOfLE (hDW j)) z hz s
    intro j j' z hz hz'

    simp only [map_sum, map_mul, Finset.mul_sum]
    refine Finset.sum_congr rfl fun x hx => ?_
    rw [hr, hr, hE x (hF.mem_toFinset.mp hx) j j' z hz hz']
    ring
  · intro y hy j hyj
    have hyW : y ∈ W := hDW j hyj
    have hyF : y ∈ hF.toFinset := hF.mem_toFinset.mpr hy

    simp only [map_sum, map_mul]
    rw [← Finset.add_sum_erase _ _ hyF]
    have hr : ∀ s : Γ(X, W),
        (X.presheaf.germ (D j) y hyj).hom (r j s) = (X.presheaf.germ W y hyW).hom s :=
      fun s => TopCat.Presheaf.germ_res_apply X.presheaf (homOfLE (hDW j)) y hyj s
    apply isUnit_add_of_not_isUnit
    · rw [hr]
      exact ((X.mem_basicOpen (a y) y hyW).mp (ha y hy)).mul (hEu y hy j hyj)
    · intro hu
      have hmem : ∑ x ∈ hF.toFinset.erase y,
          (X.presheaf.germ (D j) y hyj).hom (r j (a x)) * (X.presheaf.germ (D j) y hyj).hom (E x j)
            ∈ IsLocalRing.maximalIdeal (X.presheaf.stalk y) := by
        refine Ideal.sum_mem _ fun x hx => ?_
        have hxy : x ≠ y := (Finset.mem_erase.mp hx).1
        have hxF : x ∈ F := hF.mem_toFinset.mp (Finset.mem_erase.mp hx).2
        refine Ideal.mul_mem_right _ _ ?_
        rw [hr, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
        intro hu'
        exact hsep x hxF y hy (Ne.symm hxy) ((X.mem_basicOpen (a x) y hyW).mpr hu')
      exact (IsLocalRing.mem_maximalIdeal _).mp hmem hu

end GlobalTheory.Pinch
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleLocalSectionFamilyUnitAtFinitePoints =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalGeneratorNearFiniteSet =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalGeneratorNearFiniteSet", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitsPatch\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsSectionFamilyZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalSectionFamilyUnitAtPoint\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalUnitGeneratorOfLineBundleLocalSection\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleLocalSectionFamilyUnitAtFinitePoints\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.Pinch.Semiloc

theorem exists_basicOpen_cover : ∀ (X : Scheme.{0}) (L : LB X), L.IsLB → ∀ (W : X.Opens), IsAffineOpen W → ∃ (J : Type) (_ : Fintype J) (f : J → Γ(X, W)) (k : J → L.ι), (∀ j, X.basicOpen (f j) ≤ L.U (k j)) ∧ ∀ x ∈ W, ∃ j, x ∈ X.basicOpen (f j) := by
  intro X L hL W hW
  classical
  have h : ∀ x : W, ∃ (f : Γ(X, W)) (i : L.ι), X.basicOpen f ≤ L.U i ∧ (x : X) ∈ X.basicOpen f := by
    intro x
    obtain ⟨i, hi⟩ := ReciprocityTheory.ChartRestriction.G.Geo.Tor.exists_chart hL (x : X)
    obtain ⟨f, hf, hxf⟩ := hW.exists_basicOpen_le (V := L.U i) ⟨x, hi⟩ x.2
    exact ⟨f, i, hf, hxf⟩
  choose f i hf hx using h
  obtain ⟨s, hs⟩ := hW.isCompact.elim_finite_subcover (fun x : W => (X.basicOpen (f x) : Set X))
    (fun x => (X.basicOpen (f x)).isOpen) (fun x hxW => Set.mem_iUnion.2 ⟨⟨x, hxW⟩, hx ⟨x, hxW⟩⟩)
  refine ⟨s, inferInstance, fun j => f j, fun j => i j, fun j => hf j, fun x hx => ?_⟩
  obtain ⟨j, hj, hxj⟩ := Set.mem_iUnion₂.1 (hs hx)
  exact ⟨⟨j, hj⟩, hxj⟩

theorem exists_separating : ∀ (X : Scheme.{0}) (W : X.Opens), IsAffineOpen W → ∀ (F : Set X), F.Finite → F ⊆ W → (∀ x ∈ F, ∀ y ∈ F, y ⤳ x → y = x) → ∃ a : X → Γ(X, W), (∀ x ∈ F, x ∈ X.basicOpen (a x)) ∧ ∀ x ∈ F, ∀ y ∈ F, y ≠ x → y ∉ X.basicOpen (a x) := by
  intro X W hW F hF hFW hsp
  classical
  have hb : ∀ x ∈ F, ∀ y ∈ F, y ≠ x → ∃ b : Γ(X, W), x ∈ X.basicOpen b ∧ y ∉ X.basicOpen b := by
    intro x hx y hy hne
    have hn : ¬ y ⤳ x := fun h => hne (hsp x hx y hy h)
    rw [specializes_iff_forall_open] at hn
    push Not at hn
    obtain ⟨O, hO, hxO, hyO⟩ := hn
    obtain ⟨b, hbO, hxb⟩ := hW.exists_basicOpen_le (V := ⟨O, hO⟩) ⟨x, hxO⟩ (hFW hx)
    exact ⟨b, hxb, fun h => hyO (hbO h)⟩
  choose! b hb1 hb2 using hb
  refine ⟨fun x => ∏ y ∈ hF.toFinset.erase x, b x y, fun x hx => ?_, fun x hx y hy hne h => ?_⟩
  · refine Finset.prod_induction _ (fun c => x ∈ X.basicOpen c) (fun c d hc hd => ?_) ?_ (fun y hy => ?_)
    · rw [Scheme.basicOpen_mul]; exact ⟨hc, hd⟩
    · rw [Scheme.basicOpen_of_isUnit _ isUnit_one]; exact hFW hx
    · obtain ⟨hyx, hyF⟩ := Finset.mem_erase.1 hy
      exact hb1 x hx y (hF.mem_toFinset.1 hyF) hyx
  · have hmem : y ∈ hF.toFinset.erase x := Finset.mem_erase.2 ⟨hne, hF.mem_toFinset.2 hy⟩
    dsimp only at h
    rw [← Finset.mul_prod_erase _ _ hmem, Scheme.basicOpen_mul] at h
    exact hb2 x hx y hy hne h.1

theorem exists_locGen_near_finite : ∀ (X : Scheme.{0}) (L : LB X), L.IsLB → ∀ (W : X.Opens), IsAffineOpen W → ∀ F : Set X, F.Finite → F ⊆ W → ∃ (V : X.Opens) (a : ∀ k, Γ(X, V ⊓ L.U k)ˣ), F ⊆ V ∧ GlobalTheory.Pinch.LocGen L V a := by
  intro X L hL W hW F hF hFW
  classical
  obtain ⟨J, _, f, k, hk, hcov⟩ := exists_basicOpen_cover X L hL W hW
  set F' : Set X := {x | x ∈ F ∧ ∀ y ∈ F, x ⤳ y → y = x} with hF'
  have hF'F : F' ⊆ F := fun x hx => hx.1
  have hF'fin : F'.Finite := hF.subset hF'F
  have hup : ∀ x ∈ F, ∃ x' ∈ F', x ⤳ x' := by
    intro x hx
    obtain ⟨i, hi⟩ := Set.Finite.exists_minimalFor (fun y : X => closure ({y} : Set X)) {y | y ∈ F ∧ x ⤳ y}
      (hF.subset fun y hy => hy.1) ⟨x, hx, specializes_rfl⟩
    refine ⟨i, ⟨hi.1.1, fun y hy hiy => ?_⟩, hi.1.2⟩
    have h1 : closure ({y} : Set X) ⊆ closure {i} := specializes_iff_closure_subset.1 hiy
    have h2 := hi.2 ⟨hy, hi.1.2.trans hiy⟩ h1
    exact ((specializes_iff_closure_subset.2 h2).antisymm hiy).eq
  obtain ⟨a, ha, ha'⟩ := exists_separating X W hW F' hF'fin (hF'F.trans hFW)
    (fun x hx y hy hyx => (hy.2 x hx.1 hyx).symm)
  have hE : ∀ x : X, ∃ e : ∀ j, Γ(X, X.basicOpen (f j)), x ∈ W →
      GlobalTheory.Pinch.IsSecFam L (fun j => X.basicOpen (f j)) k hk e ∧
        ∀ j (h : x ∈ X.basicOpen (f j)), IsUnit ((X.presheaf.germ (X.basicOpen (f j)) x h).hom (e j)) := by
    intro x
    by_cases hx : x ∈ W
    · obtain ⟨e, he⟩ := _root_.GlobalTheory.Pinch.SemiLoc.exists_secFam_isUnit_germ X L hL W hW J f k hk x hx
      exact ⟨e, fun _ => he⟩
    · exact ⟨fun _ => 0, fun h => absurd h hx⟩
  choose E hE using hE
  obtain ⟨e, he, heu⟩ := _root_.GlobalTheory.Pinch.secFam_unit_at_finite X L W J (fun j => X.basicOpen (f j)) (fun j => X.basicOpen_le (f j)) k hk F'
    hF'fin a ha ha' E (fun x hx => (hE x (hFW (hF'F hx))).1) (fun x hx => (hE x (hFW (hF'F hx))).2)
  obtain ⟨V, u, hV, hgen⟩ := _root_.GlobalTheory.Pinch.exists_locGen_of_secFam X L hL J (fun j => X.basicOpen (f j)) k hk e he
  refine ⟨V, u, fun x hx => ?_, hgen⟩
  obtain ⟨x', hx', hxx'⟩ := hup x hx
  obtain ⟨j, hj⟩ := hcov x' (hFW (hF'F hx'))
  exact hxx'.mem_open V.isOpen (hV j x' hj (heu x' hx' j hj))

end GlobalTheory.Pinch.Semiloc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalGeneratorNearFiniteSet =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalGeneratorNearFiniteSetStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalGeneratorNearFiniteSetStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitsPatch\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalGeneratorNearFiniteSet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleLocalGeneratorNearFiniteSetStatement =====
