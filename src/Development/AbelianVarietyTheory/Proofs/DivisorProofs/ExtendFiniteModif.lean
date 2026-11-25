module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValEq
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueIsIntegralOfIntegralAtPoints
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RangeAlgebraMapEqIInfDiscreteValuationSubring
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenPreimageGenericBaseChangeModificatio
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.RingTheory.Valuation.ValuationSubring
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralElementAffineSectionGenerated
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfCompEq
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsProjOverWeierstrass
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralSectionsExtendOverFiniteModificatStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
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
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.Tactic.Linter.Style
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Basify
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsReducedAlgebraOfSmoothOfIsNoetherianRing
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenThick
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Ideal.AssociatedPrime.Finiteness
import Mathlib.RingTheory.TotallySplit

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueMemRangeOfAgreeTraitExtension, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompletedDominatingDvrClosedFibrePointIsTrait, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueMemDominatingValuationSubring, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMulIsIntegralElemOfForallDiscreteValuation, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericChartFunctionsFractionsSmooth, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralAtBasicOpenOfIntegralMulChartValue, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralOfSmoothGeomIrreducibleOverModificatio, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocallyNoetherianOfSmoothOverModification, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralAtClosedFibreOfRegularAtAllTraits, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasicOpenIntegralOfIntegralAtPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralElemNearFibreOfGenericPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralOfIntegralAtFibreGenericPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralSectionEverywhereOfClosedFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralOfRegularAtAllTraits, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtendFiniteModif

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueMemRangeOfAgreeTraitExtension =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueMemRangeOfAgreeTraitExtension", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem gs_eq_germ_top {Z X : Scheme.{0}} (f : Z ⟶ X) (z : Z) (U : X.Opens) (h : ⊤ ≤ f ⁻¹ᵁ U) (a : Γ(X, U)) :
    gs f z U a = (Z.presheaf.germ ⊤ z trivial).hom ((f.appLE U ⊤ h).hom a) := by
  rw [gs_eq f z U (h trivial)]
  exact (TopCat.Presheaf.germ_res_apply Z.presheaf (homOfLE h) z trivial _).symm

theorem specMap_appLE_top {R Ω : Type} [CommRing R] [CommRing Ω] (f : R →+* Ω) (V : (Sp R).Opens) (hV : ⊤ ≤ V)
    (h : ⊤ ≤ Spec.map (CommRingCat.ofHom f) ⁻¹ᵁ V) (a : Γ(Sp R, V)) :
    ((Spec.map (CommRingCat.ofHom f)).appLE V ⊤ h).hom a =
      (Scheme.ΓSpecIso (CommRingCat.of Ω)).inv.hom (f ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom
        (((Sp R).presheaf.map (homOfLE hV).op).hom a))) := by
  have e1 := Scheme.Hom.map_appLE (Spec.map (CommRingCat.ofHom f)) (U := ⊤) (U' := V) (V := ⊤) (fun _ _ => trivial) (homOfLE hV).op
  have e2 := Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom f)
  rw [← e1]
  have e3 : (Spec.map (CommRingCat.ofHom f)).appLE ⊤ ⊤ (fun _ _ => trivial) = (Spec.map (CommRingCat.ofHom f)).appTop := by
    rw [Scheme.Hom.appTop, ← Scheme.Hom.appLE_eq_app]; rfl
  have e4 : ∀ x, ((Spec.map (CommRingCat.ofHom f)).appTop).hom x =
      (Scheme.ΓSpecIso (CommRingCat.of Ω)).inv.hom (f ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom x)) := fun x => by
    have := congrArg (fun t => t.hom x) (Scheme.ΓSpecIso_naturality (CommRingCat.ofHom f))
    simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at this
    rw [← this, ← CommRingCat.comp_apply, Iso.hom_inv_id, CommRingCat.id_apply]
  rw [CommRingCat.hom_comp, RingHom.comp_apply, e3, e4]

theorem fromSpec_appLE_self {X : Scheme.{0}} {U : X.Opens} (hU : IsAffineOpen U) (h : ⊤ ≤ hU.fromSpec ⁻¹ᵁ U) :
    hU.fromSpec.appLE U ⊤ h = (Scheme.ΓSpecIso Γ(X, U)).inv := by
  rw [Scheme.Hom.appLE, hU.fromSpec_app_self, Category.assoc, ← Functor.map_comp]
  convert Category.comp_id _
  exact (Spec Γ(X, U)).presheaf.map_id _

theorem ΓSpecIso_hom_inv_apply (R : CommRingCat.{0}) (a : R) :
    (Scheme.ΓSpecIso R).hom.hom ((Scheme.ΓSpecIso R).inv.hom a) = a := by
  rw [← CommRingCat.comp_apply, Iso.inv_hom_id, CommRingCat.id_apply]

end GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem gs_specMap_comp {R Ω : Type} [CommRing R] [CommRing Ω] {X : Scheme.{0}} (f : R →+* Ω) (g : Sp R ⟶ X)
    (z : Sp Ω) (U : X.Opens) (hg : ⊤ ≤ g ⁻¹ᵁ U) (a : Γ(X, U)) :
    gs (Spec.map (CommRingCat.ofHom f) ≫ g) z U a = ((Sp Ω).presheaf.germ ⊤ z trivial).hom
      ((Scheme.ΓSpecIso (CommRingCat.of Ω)).inv.hom (f ((Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom
        ((g.appLE U ⊤ hg).hom a)))) := by
  have h : ⊤ ≤ Spec.map (CommRingCat.ofHom f) ⁻¹ᵁ (g ⁻¹ᵁ U) := fun x _ => hg trivial
  rw [← gs_pull (Spec.map (CommRingCat.ofHom f)) g z U (hg trivial) a, gs_eq_germ_top _ z _ h,
    specMap_appLE_top f _ hg h]
  rfl

end GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem chartVal_mem_range_of_agree : ∀ (X S Y : Scheme.{0}) (gX : X ⟶ S) (L : LB X), L.IsLB → ∀ (α : Y ⟶ X) (k : ℕ) (s : SecK L α k) (j : L.ι) (W : X.Opens) (hW : W ≤ L.U j) (hWa : IsAffineOpen W), IsAffineOpen (α ⁻¹ᵁ W) → ∀ (T : Type) [CommRing T] (lam : Γ(X, W) →+* T) (W' : Type) [CommRing W'] (io : T →+* W') (σ : SecK L (pullback.fst gX (spMap io ≫ Spec.map (CommRingCat.ofHom lam) ≫ hWa.fromSpec ≫ gX)) k), Agree L σ s → ∀ (Ω : Type) [Field Ω] (ψ : Γ(Y, α ⁻¹ᵁ W) →+* Ω) (e : W' →+* Ω), (∀ c, ψ ((α.app W).hom c) = e (io (lam c))) → ∃ w : W', ψ (chartVal L α s j W hW) = e w := by
  intro X S Y gX L hL α k s j W hW hWa hαW T _ lam W' _ io σ hσ Ω _ ψ e hψ
  have hq : (Spec.map (CommRingCat.ofHom (io.comp lam)) ≫ hWa.fromSpec) ≫ gX =
      𝟙 (Sp W') ≫ (spMap io ≫ Spec.map (CommRingCat.ofHom lam) ≫ hWa.fromSpec ≫ gX) := by
    rw [CommRingCat.ofHom_comp, Spec.map_comp, Category.id_comp]
    simp only [spMap, Category.assoc]
  let q'' := pullback.lift (Spec.map (CommRingCat.ofHom (io.comp lam)) ≫ hWa.fromSpec) (𝟙 (Sp W')) hq
  let P : Sp Ω ⟶ _ := Spec.map (CommRingCat.ofHom e) ≫ q''
  let pY : Sp Ω ⟶ Y := Spec.map (CommRingCat.ofHom ψ) ≫ hαW.fromSpec
  have hring : α.appLE W (α ⁻¹ᵁ W) le_rfl ≫ CommRingCat.ofHom ψ = CommRingCat.ofHom (e.comp (io.comp lam)) := by
    ext c
    rw [Scheme.Hom.appLE_eq_app]
    exact hψ c
  have hA : P ≫ pullback.fst _ _ = pY ≫ α := by
    simp only [P, pY, q'', Category.assoc, pullback.lift_fst]
    rw [← IsAffineOpen.SpecMap_appLE_fromSpec α hWa hαW le_rfl, ← Spec.map_comp_assoc, ← Spec.map_comp_assoc,
      hring, ← CommRingCat.ofHom_comp]
  have hαmem : ∀ x, hαW.fromSpec x ∈ α ⁻¹ᵁ W := fun x => by
    show _ ∈ ((α ⁻¹ᵁ W : Y.Opens) : Set Y)
    rw [← hαW.range_fromSpec]
    exact ⟨x, rfl⟩
  have hWmem : ∀ x, hWa.fromSpec x ∈ W := fun x => by
    show _ ∈ ((W : X.Opens) : Set X)
    rw [← hWa.range_fromSpec]
    exact ⟨x, rfl⟩
  obtain ⟨z⟩ : Nonempty (Sp Ω) := ⟨IsLocalRing.closedPoint Ω⟩
  have hz : (pY ≫ α) z ∈ L.U j := hW (hαmem _)
  obtain ⟨J, hJ, hJj⟩ := exists_good L hL z (K := Unit) (fun _ => pY ≫ α) (fun _ => j) (fun _ _ _ => rfl)
    (fun _ => hz)
  have hag := hσ (Sp Ω) P pY hA z J hJ
  have hl : sval s pY z J = ((Sp Ω).presheaf.germ ⊤ z trivial).hom
      ((Scheme.ΓSpecIso (CommRingCat.of Ω)).inv.hom (ψ (chartVal L α s j W hW))) := by
    rw [sval_of s pY z J (fun _ => j) (fun _ => hJj ()),
      ← gs_res pY z (locInt_le_chart L α j W hW) (hαmem _) (s.f (fun _ => j))]
    rw [gs_specMap_comp ψ hαW.fromSpec z (α ⁻¹ᵁ W) hαW.fromSpec_preimage_self.ge]
    rw [fromSpec_appLE_self hαW]
    exact congrArg (fun t => ((Sp Ω).presheaf.germ ⊤ z trivial).hom ((Scheme.ΓSpecIso (CommRingCat.of Ω)).inv.hom (ψ t)))
      (ΓSpecIso_hom_inv_apply _ _)
  have hq'' : ⊤ ≤ q'' ⁻¹ᵁ LB.wchart L (K := Fin 1) (fun _ => pullback.fst _ _) (fun _ => j) := fun x _ =>
    Set.mem_iInter.2 fun _ => hW (by
      show (q'' ≫ pullback.fst _ _) x ∈ W
      rw [pullback.lift_fst]
      exact hWmem _)
  have hr : sval σ P z J = ((Sp Ω).presheaf.germ ⊤ z trivial).hom
      ((Scheme.ΓSpecIso (CommRingCat.of Ω)).inv.hom (e ((Scheme.ΓSpecIso (CommRingCat.of W')).hom.hom
        ((q''.appLE _ ⊤ hq'').hom (σ.f (fun _ => j)))))) := by
    rw [sval_of σ P z J (fun _ => j) (fun _ => by rw [hA]; exact hJj ())]
    exact gs_specMap_comp e q'' z _ hq'' _
  refine ⟨(Scheme.ΓSpecIso (CommRingCat.of W')).hom.hom ((q''.appLE _ ⊤ hq'').hom (σ.f (fun _ => j))),
    ((((Sp Ω).presheaf.germ ⊤ z trivial).hom.comp (Scheme.ΓSpecIso (CommRingCat.of Ω)).inv.hom).injective) ?_⟩
  simp only [RingHom.comp_apply]
  rw [← hl, ← hr, hag]

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueMemRangeOfAgreeTraitExtension =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompletedDominatingDvrClosedFibrePointIsTrait =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompletedDominatingDvrClosedFibrePointIsTrait", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.RangeAlgebraMapEqIInfDiscreteValuationSubring\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem trait_at_closed_point : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [CharZero R] (M : Modif R) (G : Over M.S) (Y : Scheme.{0}) (α : Y ⟶ G.left) (t : Y ⟶ Sp (FractionRing R)), α ≫ G.hom = t ≫ M.gp → ∀ (W : G.left.Opens) (hWa : IsAffineOpen W) (x : G.left) (hx : x ∈ W), M.π (G.hom x) = closedPoint R → ∀ (F : Type) [Field F] (β : Γ(Y, α ⁻¹ᵁ W) →+* F) (V : ValuationSubring F), IsDiscreteValuationRing V → ∀ (h1 : ∀ c, β ((α.app W).hom c) ∈ V), (∀ c, (G.left.residue x).hom ((G.left.presheaf.germ W x hx).hom c) = 0 → β ((α.app W).hom c) ∈ V.nonunits) → ∃ (T : Type) (_ : CommRing T) (_ : IsDomain T) (_ : IsLocalRing T) (lam : Γ(G.left, W) →+* T) (g : V →+* T) (φ : R →+* T), GlobalTheory.LN.CDvr T ∧ Function.Injective g ∧ IsLocalHom g ∧ (∀ c, g ⟨β ((α.app W).hom c), h1 c⟩ = lam c) ∧ Function.Injective φ ∧ IsLocalHom φ ∧ (Spec.map (CommRingCat.ofHom lam) ≫ hWa.fromSpec ≫ G.hom) ≫ M.π = spMap φ := by
  intro R _ _ _ _ M G Y α t hαt W hWa x hx hxc F _ β V hV h1 hnu
  haveI := hV
  let T := AdicCompletion (maximalIdeal V) V
  let g : V →+* T := algebraMap V T
  have hg : Function.Injective g := GlobalTheory.algebraMap_adicCompletion_injective_of_dvr V
  let f : G.left ⟶ Sp R := G.hom ≫ M.π
  let ρ : R →+* Γ(G.left, W) := ((Scheme.ΓSpecIso (CommRingCat.of R)).inv ≫ f.appLE ⊤ W le_top).hom
  let lam : Γ(G.left, W) →+* T := g.comp ((β.comp (α.app W).hom).codRestrict V h1)
  let φ : R →+* T := lam.comp ρ
  let ψ : FractionRing R →+* F :=
    β.comp ((Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).inv ≫ t.appLE ⊤ (α ⁻¹ᵁ W) le_top).hom
  have key : ∀ r, β ((α.app W).hom (ρ r)) = ψ (algebraMap R (FractionRing R) r) := by
    intro r
    have hc : ∀ {a b : Y ⟶ Sp R} (_ : a = b), a.appLE ⊤ (α ⁻¹ᵁ W) le_top = b.appLE ⊤ (α ⁻¹ᵁ W) le_top := by
      rintro _ _ rfl; rfl
    have e1 : f.appLE ⊤ W le_top ≫ α.app W = (α ≫ f).appLE ⊤ (α ⁻¹ᵁ W) le_top := by
      rw [Scheme.Hom.app_eq_appLE]; exact Scheme.Hom.appLE_comp_appLE _ _ _ _ _ _ _
    have e2 : α ≫ f = t ≫ jK R := by
      simp only [f]; rw [reassoc_of% hαt, M.gp_π]
    have e4 : (t ≫ jK R).appLE ⊤ (α ⁻¹ᵁ W) le_top = (jK R).appTop ≫ t.appLE ⊤ (α ⁻¹ᵁ W) le_top :=
      Scheme.Hom.comp_appLE t (jK R) ⊤ (α ⁻¹ᵁ W) le_top
    have e3 : (Scheme.ΓSpecIso (CommRingCat.of R)).inv ≫ f.appLE ⊤ W le_top ≫ α.app W =
        CommRingCat.ofHom (algebraMap R (FractionRing R)) ≫ (Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).inv ≫
          t.appLE ⊤ (α ⁻¹ᵁ W) le_top := by
      rw [e1, hc e2, e4, ← Category.assoc, ← Category.assoc, Scheme.ΓSpecIso_inv_naturality]
    change β (((Scheme.ΓSpecIso (CommRingCat.of R)).inv ≫ f.appLE ⊤ W le_top ≫ α.app W).hom r) =
      β ((CommRingCat.ofHom (algebraMap R (FractionRing R)) ≫ (Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).inv ≫
          t.appLE ⊤ (α ⁻¹ᵁ W) le_top).hom r)
    rw [e3]
  have hφi : Function.Injective φ := by
    intro a b hab
    have h2 : ((β.comp (α.app W).hom).codRestrict V h1) (ρ a) = ((β.comp (α.app W).hom).codRestrict V h1) (ρ b) := hg hab
    have h3 : β ((α.app W).hom (ρ a)) = β ((α.app W).hom (ρ b)) := congrArg Subtype.val h2
    rw [key, key] at h3
    exact IsFractionRing.injective R (FractionRing R) (ψ.injective h3)
  haveI : CharZero T := charZero_of_injective_ringHom hφi
  refine ⟨T, inferInstance, inferInstance, inferInstance, lam, g, φ,
    ⟨inferInstance, inferInstance, inferInstance⟩, hg, inferInstance, fun c => rfl, hφi, ?_, ?_⟩
  · constructor
    intro r hu
    by_contra hr
    have hrm : r ∈ maximalIdeal R := hr
    have hres : (G.left.residue x).hom ((G.left.presheaf.germ W x hx).hom (ρ r)) = 0 := by
      have hb : x ∉ G.left.basicOpen (ρ r) := by
        intro hxb
        have e := Scheme.basicOpen_appLE f W ⊤ le_top ((Scheme.ΓSpecIso (CommRingCat.of R)).inv r)
        rw [basicOpen_eq_of_affine (R := CommRingCat.of R) r] at e
        have h4 := ((show G.left.basicOpen (ρ r) = _ from e).le hxb).2
        have h7 : r ∉ PrimeSpectrum.asIdeal (f x) := h4
        have h6 : f x = closedPoint R := hxc
        rw [h6] at h7
        exact h7 hrm
      rw [Scheme.mem_basicOpen _ _ _ hx] at hb
      exact (IsLocalRing.residue_eq_zero_iff _).2 hb
    have h5 := hnu (ρ r) hres
    have h6 : ((β.comp (α.app W).hom).codRestrict V h1) (ρ r) ∈ maximalIdeal V :=
      (ValuationSubring.coe_mem_nonunits_iff (a := ⟨_, h1 (ρ r)⟩)).mp h5
    exact h6 (isUnit_of_map_unit g _ hu)
  · simp only [Category.assoc]
    rw [← IsAffineOpen.SpecMap_appLE_fromSpec f (isAffineOpen_top (Sp R)) hWa le_top,
      IsAffineOpen.fromSpec_top, Scheme.isoSpec_Spec_inv, ← Spec.map_comp, ← Spec.map_comp]
    rfl

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompletedDominatingDvrClosedFibrePointIsTrait =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueMemDominatingValuationSubring =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueMemDominatingValuationSubring", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueMemRangeOfAgreeTraitExtension\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompletedDominatingDvrClosedFibrePointIsTrait\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenPreimageGenericBaseChangeModificatio\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem mem_valuationSubring_of_image : ∀ (F : Type) [Field F] (V : ValuationSubring F) (T : Type) [CommRing T] [IsLocalRing T] (g : V →+* T), IsLocalHom g → ∀ (W' : Type) [CommRing W'] [IsDomain W'] [IsLocalRing W'] (io : T →+* W'), Function.Injective io → io.Finite → ∀ (Ω : Type) [Field Ω] (iF : F →+* Ω) (e : W' →+* Ω), Function.Injective e → (∀ v : V, iF v = e (io (g v))) → ∀ (y : F) (w : W'), iF y = e w → y ∈ V := by
  intro F _ V T _ _ g hg W' _ _ _ io hioi hiof Ω _ iF e he hi y w hy
  haveI : IsLocalHom io := RingHom.IsIntegral.isLocalHom hiof.to_isIntegral hioi
  by_contra hyV
  have hy0 : y ≠ 0 := fun h => hyV (h ▸ V.zero_mem)
  have hinv : y⁻¹ ∈ V := (V.mem_or_inv_mem y).resolve_left hyV
  let u : V := ⟨y⁻¹, hinv⟩
  have hu : ¬ IsUnit u := by
    intro hu
    obtain ⟨v, hv⟩ := hu.exists_right_inv
    have h' : y⁻¹ * (v : F) = 1 := by simpa [u] using congrArg Subtype.val hv
    have hv' : (v : F) = y := by
      calc (v : F) = y * (y⁻¹ * v) := by rw [← _root_.mul_assoc, mul_inv_cancel₀ hy0, _root_.one_mul]
        _ = y := by rw [h', _root_.mul_one]
    exact hyV (hv' ▸ v.2)
  have hprod : io (g u) * w = 1 := by
    apply he
    rw [map_mul, map_one, ← hi u, ← hy, ← map_mul]
    simp [u, inv_mul_cancel₀ hy0]
  exact hu ((isUnit_map_iff g u).1 ((isUnit_map_iff io (g u)).1 (IsUnit.of_mul_eq_one _ hprod)))

theorem chartVal_mem_of_dominates : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [CharZero R] (M : Modif R) (G : Over M.S), Smooth G.hom → QuasiCompact G.hom → GeometricallyIrreducible G.hom → ∀ (L : LB G.left), L.IsLB → ∀ (Y : Scheme.{0}) (α : Y ⟶ G.left) (t : Y ⟶ Sp (FractionRing R)), IsPullback α t G.hom M.gp → ∀ (k : ℕ) (s : SecK L α k), TraitReg M G L s → ∀ (j : L.ι) (U : M.S.Opens) (W : G.left.Opens) (hW : W ≤ L.U j), W ≤ G.hom ⁻¹ᵁ U → IsAffineOpen W → IsAffineOpen U → ∀ (x : G.left) (hx : x ∈ W), M.π (G.hom x) = closedPoint R → ∀ (F : Type) [Field F] (β : Γ(Y, α ⁻¹ᵁ W) →+* F) (V : ValuationSubring F), IsDiscreteValuationRing V → (∀ c, β ((α.app W).hom c) ∈ V) → (∀ c, (G.left.residue x).hom ((G.left.presheaf.germ W x hx).hom c) = 0 → β ((α.app W).hom c) ∈ V.nonunits) → β (chartVal L α s j W hW) ∈ V := by
  intro R _ _ _ _ _ M G hsm hqc hgi L hL Y α t hpb k s hs j U W hW hWU hWa hUa x hx hcl F _ β V hV h1 h2
  obtain ⟨T, _, _, _, lam, g, φ, hT, hgi', hgl, hgl', hφi, hφl, hξ⟩ :=
    _root_.GlobalTheory.Mum.trait_at_closed_point R M G Y α t hpb.w W hWa x hx hcl F β V hV h1 h2
  obtain ⟨W', _, _, _, io, σ, hW', hioi, hiof, hag⟩ := hs T hT φ (Spec.map (CommRingCat.ofHom lam) ≫ hWa.fromSpec ≫ G.hom) hφi hφl hξ
  let e : W' →+* FractionRing W' := algebraMap W' (FractionRing W')
  have he : Function.Injective e := IsFractionRing.injective W' (FractionRing W')
  have hgg : Function.Injective ((e.comp io).comp g) := he.comp (hioi.comp hgi')
  let iF : F →+* FractionRing W' := IsFractionRing.lift hgg
  have hi : ∀ v : V, iF v = e (io (g v)) := fun v => IsFractionRing.lift_algebraMap hgg v
  have hαW := GlobalTheory.Mum.isAffineOpen_preimage_genericBaseChange R M G Y α t hpb W hWa
  obtain ⟨w, hw⟩ := _root_.GlobalTheory.Mum.chartVal_mem_range_of_agree G.left M.S Y G.hom L hL α k s j W hW hWa hαW T lam W' io σ hag (FractionRing W') (iF.comp β) e
    (fun c => (hi ⟨_, h1 c⟩).trans (by rw [hgl' c]))
  have hw' : iF (β (chartVal L α s j W hW)) = e w := hw
  exact mem_valuationSubring_of_image F V T g hgl W' io hioi hiof (FractionRing W') iF e he hi (β (chartVal L α s j W hW)) w hw'

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueMemDominatingValuationSubring =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMulIsIntegralElemOfForallDiscreteValuation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMulIsIntegralElemOfForallDiscreteValuation", "h": "module\n\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.Valuation.ValuationSubring\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RangeAlgebraMapEqIInfDiscreteValuationSubring\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory

theorem exists_mul_isIntegralElem_of_forall_discreteValuationSubring :
    ∀ (C B : Type) [CommRing C] [IsDomain C] [IsNoetherianRing C] [CommRing B] (e : C →+* B),
      Function.Injective e → (∀ b : B, ∃ c s : C, IsUnit (e s) ∧ b * e s = e c) →
      ∀ (p : Ideal C), p.IsPrime → ∀ f : B,
        (∀ (F : Type) [Field F] (β : B →+* F) (V : ValuationSubring F), IsDiscreteValuationRing V →
          (∀ c, β (e c) ∈ V) → (∀ c ∈ p, β (e c) ∈ V.nonunits) → β f ∈ V) →
        ∃ d : C, d ∉ p ∧ e.IsIntegralElem (e d * f) := by
  intro C B _ _ _ _ e he hloc p hp f hf
  haveI : Nontrivial B := ⟨⟨e 0, e 1, fun h => zero_ne_one (he h)⟩⟩
  haveI : NoZeroDivisors B := ⟨fun {a b} hab => by
    obtain ⟨c₁, s₁, u₁, h₁⟩ := hloc a
    obtain ⟨c₂, s₂, u₂, h₂⟩ := hloc b
    have hc : c₁ * c₂ = 0 := he (by
      rw [map_mul, ← h₁, ← h₂, map_zero,
        show a * e s₁ * (b * e s₂) = (a * b) * (e s₁ * e s₂) by ring, hab, zero_mul])
    rcases mul_eq_zero.1 hc with h | h
    · left
      rw [h, map_zero] at h₁
      exact u₁.mul_left_eq_zero.1 h₁
    · right
      rw [h, map_zero] at h₂
      exact u₂.mul_left_eq_zero.1 h₂⟩
  haveI : IsDomain B := NoZeroDivisors.to_isDomain B
  let L := FractionRing B
  let β : B →+* L := algebraMap B L
  have hβ : Function.Injective β := IsFractionRing.injective B L
  letI : Algebra C L := (β.comp e).toAlgebra
  have hCL : ∀ c, algebraMap C L c = β (e c) := fun _ => rfl
  have hinj : Function.Injective (algebraMap C L) := hβ.comp he
  haveI : FaithfulSMul C L := (faithfulSMul_iff_algebraMap_injective C L).2 hinj
  have hne : ∀ s : C, IsUnit (e s) → β (e s) ≠ 0 := fun s hs => ((hs.map β).ne_zero)
  haveI : IsFractionRing C L := IsFractionRing.of_field C L fun z => by
    obtain ⟨x, y, hy, rfl⟩ := IsFractionRing.div_surjective (A := B) z
    obtain ⟨cx, sx, ux, hx⟩ := hloc x
    obtain ⟨cy, sy, uy, hy'⟩ := hloc y
    refine ⟨cx * sy, cy * sx, ?_⟩
    have hy0 : β y ≠ 0 := by
      rw [map_ne_zero_iff _ hβ]; exact nonZeroDivisors.ne_zero hy
    show β x / β y = _
    simp only [hCL, map_mul]
    rw [← hx, ← hy']
    simp only [map_mul]
    rw [div_eq_div_iff hy0 (mul_ne_zero (mul_ne_zero hy0 (hne sy uy)) (hne sx ux))]
    ring
  let Cp := Localization.AtPrime p
  haveI : IsNoetherianRing Cp := IsLocalization.isNoetherianRing p.primeCompl Cp inferInstance
  have hunit : ∀ y : p.primeCompl, IsUnit (algebraMap C L y) := fun y => by
    refine isUnit_iff_ne_zero.2 ((map_ne_zero_iff _ hinj).2 ?_)
    intro h0
    exact y.2 (h0 ▸ p.zero_mem)
  letI : Algebra Cp L := (IsLocalization.lift (M := p.primeCompl) (S := Cp) hunit).toAlgebra
  haveI : IsScalarTower C Cp L :=
    IsScalarTower.of_algebraMap_eq fun x => (IsLocalization.lift_eq hunit x).symm
  haveI : IsFractionRing Cp L := IsFractionRing.isFractionRing_of_isLocalization p.primeCompl Cp L
    p.primeCompl_le_nonZeroDivisors
  haveI : Algebra.EssFiniteType Cp L := Algebra.EssFiniteType.of_isLocalization L (nonZeroDivisors Cp)
  have hint : IsIntegral Cp (β f) := by
    by_contra hn
    obtain ⟨V, hV, hd, hfV⟩ := exists_discreteValuationSubring_dominating_notMem hn
    obtain ⟨h1, h2⟩ := (localSubring_range_le_valuationSubring_iff _ V).1 hd
    apply hfV
    refine hf L β V hV (fun c => ?_) (fun c hc => ?_)
    · have := h1 (algebraMap C Cp c)
      rwa [← IsScalarTower.algebraMap_apply] at this
    · have := h2 (algebraMap C Cp c)
        ((IsLocalization.AtPrime.to_map_mem_maximal_iff Cp p c).2 hc)
      rwa [← IsScalarTower.algebraMap_apply] at this
  obtain ⟨⟨d, hd⟩, hdi⟩ := IsIntegral.exists_multiple_integral_of_isLocalization p.primeCompl (β f) hint
  refine ⟨d, hd, ?_⟩
  obtain ⟨q, hq, hq0⟩ := hdi
  refine ⟨q, hq, hβ ?_⟩
  rw [Polynomial.hom_eval₂, map_zero, ← hq0, Submonoid.smul_def, Algebra.smul_def, hCL, map_mul]
  rfl

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMulIsIntegralElemOfForallDiscreteValuation =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericChartFunctionsFractionsSmooth =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericChartFunctionsFractionsSmooth", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralElementAffineSectionGenerated\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
open scoped TensorProduct
namespace GlobalTheory.Mum

theorem injective_gp_app {R : Type} [CommRing R] [IsDomain R] (M : Modif R) (U : M.S.Opens) :
    Function.Injective (M.gp.app U).hom := by
  haveI := M.integral
  haveI := M.dominant
  by_cases hU : (U : Set M.S).Nonempty
  · obtain ⟨x, hx⟩ := M.gp.denseRange.exists_mem_open U.isOpen hU
    have h1 := germ_injective_of_isIntegral (X := M.S) (M.gp x) hx
    have h2 := M.gp.germ_stalkMap U x hx
    have hcl : closure {M.gp x} = (Set.univ : Set M.S) := by
      have hd := M.gp.denseRange
      have hr : Set.range M.gp = {M.gp x} := by
        ext y; constructor
        · rintro ⟨z, rfl⟩
          haveI : Subsingleton (Sp (FractionRing R)) := inferInstanceAs (Subsingleton (PrimeSpectrum _))
          rw [Subsingleton.elim z x]; rfl
        · rintro rfl; exact ⟨x, rfl⟩
      rw [← hr]; exact hd.closure_range
    have hF := isField_stalk_of_closure_mem_irreducibleComponents M.S (M.gp x)
      (by rw [hcl]; simp [irreducibleComponents_eq_singleton])
    letI := hF.toField
    have h3 : Function.Injective (M.gp.stalkMap x).hom := RingHom.injective _
    intro a b h
    apply h1
    apply h3
    have ea := congrArg (fun φ => φ.hom a) h2
    have eb := congrArg (fun φ => φ.hom b) h2
    simp only [CommRingCat.comp_apply] at ea eb
    rw [ea, eb, h]
  · have : U = ⊥ := by
      ext y; simp only [TopologicalSpace.Opens.coe_bot, Set.mem_empty_iff_false, iff_false]
      exact fun hy => hU ⟨y, hy⟩
    subst this
    intro a b _; exact Subsingleton.elim a b

def fracRes (R : Type) [CommRing R] [IsDomain R] (V : (Sp (FractionRing R)).Opens) : R →+* Γ(Sp (FractionRing R), V) :=
  ((Sp (FractionRing R)).presheaf.map (homOfLE le_top).op).hom.comp
    (((Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).inv.hom).comp (algebraMap R (FractionRing R)))

theorem isUnit_fracRes {R : Type} [CommRing R] [IsDomain R] (V : (Sp (FractionRing R)).Opens) {r : R} (hr : r ≠ 0) :
    IsUnit (fracRes R V r) := by
  have : IsUnit (algebraMap R (FractionRing R) r) :=
    Ne.isUnit ((map_ne_zero_iff _ (IsFractionRing.injective R (FractionRing R))).2 hr)
  exact this.map (((Sp (FractionRing R)).presheaf.map (homOfLE le_top).op).hom.comp
    (Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).inv.hom)

theorem exists_mul_fracRes {R : Type} [CommRing R] [IsDomain R] (V : (Sp (FractionRing R)).Opens)
    (k : Γ(Sp (FractionRing R), V)) : ∃ a r : R, r ≠ 0 ∧ k * fracRes R V r = fracRes R V a := by
  haveI : Subsingleton (Sp (FractionRing R)) := inferInstanceAs (Subsingleton (PrimeSpectrum _))
  by_cases h : (V : Set (Sp (FractionRing R))).Nonempty
  · obtain ⟨x, hx⟩ := h
    have hV : V = ⊤ := by
      ext y
      simp only [TopologicalSpace.Opens.coe_top, Set.mem_univ, iff_true]
      exact Subsingleton.elim x y ▸ hx
    subst hV
    obtain ⟨⟨a, r⟩, hr⟩ := IsLocalization.mk'_surjective (nonZeroDivisors R)
      ((Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).hom.hom k)
    refine ⟨a, r, nonZeroDivisors.ne_zero r.2, ?_⟩
    have hmap : ((Sp (FractionRing R)).presheaf.map (homOfLE (le_top : (⊤ : (Sp (FractionRing R)).Opens) ≤ ⊤)).op) = 𝟙 _ := by
      rw [show (homOfLE (le_top : (⊤ : (Sp (FractionRing R)).Opens) ≤ ⊤)) = 𝟙 _ from Subsingleton.elim _ _]
      simp
    simp only [fracRes, RingHom.coe_comp, Function.comp_apply, hmap, CommRingCat.hom_id, RingHom.id_apply]
    have hk : k = (Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).inv.hom
        ((Scheme.ΓSpecIso (CommRingCat.of (FractionRing R))).hom.hom k) := by
      rw [← CommRingCat.comp_apply, Iso.hom_inv_id]; rfl
    rw [hk, ← map_mul, ← hr, IsLocalization.mk'_spec]
  · have hV : V = ⊥ := by
      ext y; simp only [TopologicalSpace.Opens.coe_bot, Set.mem_empty_iff_false, iff_false]
      exact fun hy => h ⟨y, hy⟩
    subst hV
    exact ⟨0, 1, one_ne_zero, Subsingleton.elim _ _⟩

theorem appLE_jK_eq_fracRes {R : Type} [CommRing R] [IsDomain R] (f : Sp (FractionRing R) ⟶ Sp R) (hf : f = jK R)
    (V : (Sp (FractionRing R)).Opens) (e : V ≤ f ⁻¹ᵁ ⊤) (x : R) :
    (f.appLE ⊤ V e).hom ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom x) = fracRes R V x := by
  subst hf
  have h := congrArg (fun φ => φ.hom x) (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom (algebraMap R (FractionRing R))))
  simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at h
  simp only [fracRes, RingHom.coe_comp, Function.comp_apply, Scheme.Hom.appLE, CommRingCat.comp_apply]
  rw [h]
  rfl

theorem gp_app_fracRes {R : Type} [CommRing R] [IsDomain R] (M : Modif R) (U : M.S.Opens) (e : U ≤ M.π ⁻¹ᵁ ⊤) (r : R) :
    (M.gp.app U).hom ((M.π.appLE ⊤ U e).hom ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom r)) =
      fracRes R (M.gp ⁻¹ᵁ U) r := by
  rw [← CommRingCat.comp_apply, Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE]
  exact appLE_jK_eq_fracRes _ M.gp_π _ _ r

theorem injective_and_exists_frac_genericChart : ∀ (R : Type) [CommRing R] [IsDomain R] (M : Modif R) (G : Over M.S), Smooth G.hom → ∀ (Y : Scheme.{0}) (α : Y ⟶ G.left) (t : Y ⟶ Sp (FractionRing R)), IsPullback α t G.hom M.gp → ∀ (W : G.left.Opens) (U : M.S.Opens), W ≤ G.hom ⁻¹ᵁ U → IsAffineOpen W → IsAffineOpen U → Function.Injective (α.app W).hom ∧ ∀ b : Γ(Y, α ⁻¹ᵁ W), ∃ c s : Γ(G.left, W), IsUnit ((α.app W).hom s) ∧ b * (α.app W).hom s = (α.app W).hom c := by
  intro R _ _ M G hG Y α t hpb W U hWU hW hU
  have hV : IsAffineOpen (M.gp ⁻¹ᵁ U) := isAffineOpen_Sp_field _ _
  have hle := locInt_le_gen G.hom α t M.gp hpb.w W U hWU
  have hUY : α ⁻¹ᵁ W = α ⁻¹ᵁ W ⊓ t ⁻¹ᵁ (M.gp ⁻¹ᵁ U) := (inf_eq_left.2 hle).symm
  have po := (isIso_pushoutSection_iff hpb (US := U) (UT := M.gp ⁻¹ᵁ U) (UX := W) le_rfl hWU hUY).mp
    (isIso_pushoutSection_of_isAffineOpen hpb le_rfl hWU hUY hU hV hW)
  rw [Scheme.Hom.appLE_eq_app, Scheme.Hom.appLE_eq_app] at po
  letI : Algebra Γ(M.S, U) Γ(G.left, W) := (G.hom.appLE U W hWU).hom.toAlgebra
  letI : Algebra Γ(M.S, U) Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U) := (M.gp.app U).hom.toAlgebra
  letI : Algebra Γ(G.left, W) Γ(Y, α ⁻¹ᵁ W) := (α.app W).hom.toAlgebra
  letI : Algebra Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U) Γ(Y, α ⁻¹ᵁ W) :=
    (t.appLE (M.gp ⁻¹ᵁ U) (α ⁻¹ᵁ W) hle).hom.toAlgebra
  letI : Algebra Γ(M.S, U) Γ(Y, α ⁻¹ᵁ W) := (G.hom.appLE U W hWU ≫ α.app W).hom.toAlgebra
  haveI : IsScalarTower Γ(M.S, U) Γ(G.left, W) Γ(Y, α ⁻¹ᵁ W) := IsScalarTower.of_algebraMap_eq' rfl
  haveI : IsScalarTower Γ(M.S, U) Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U) Γ(Y, α ⁻¹ᵁ W) :=
    IsScalarTower.of_algebraMap_eq' (congrArg CommRingCat.Hom.hom po.w)
  haveI : Algebra.IsPushout Γ(M.S, U) Γ(G.left, W) Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U) Γ(Y, α ⁻¹ᵁ W) :=
    CommRingCat.isPushout_iff_isPushout.mp po
  haveI : Algebra.Smooth Γ(M.S, U) Γ(G.left, W) :=
    HasRingHomProperty.appLE @AlgebraicGeometry.Smooth G.hom hG ⟨U, hU⟩ ⟨W, hW⟩ hWU
  haveI : Module.Flat Γ(M.S, U) Γ(G.left, W) := inferInstance
  let e := Algebra.IsPushout.equiv Γ(M.S, U) Γ(G.left, W) Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U) Γ(Y, α ⁻¹ᵁ W)
  have he1 : ∀ c : Γ(G.left, W), e (c ⊗ₜ 1) = (α.app W).hom c := fun c => by
    rw [Algebra.IsPushout.equiv_tmul, map_one, _root_.mul_one]; rfl
  have hinc := Algebra.TensorProduct.includeLeft_injective (S := Γ(M.S, U)) (R := Γ(M.S, U))
    (A := Γ(G.left, W)) (B := Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U)) (injective_gp_app M U)
  refine ⟨fun a b h => hinc (e.injective ?_), fun b => ?_⟩
  · change e (a ⊗ₜ 1) = e (b ⊗ₜ 1)
    rw [he1, he1, h]

  have eU : U ≤ M.π ⁻¹ᵁ ⊤ := fun x _ => trivial
  let σ : R →+* Γ(G.left, W) := (algebraMap Γ(M.S, U) Γ(G.left, W)).comp
    ((M.π.appLE ⊤ U eU).hom.comp (Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom)
  have hσ : ∀ r : R, (α.app W).hom (σ r) =
      algebraMap Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U) Γ(Y, α ⁻¹ᵁ W) (fracRes R (M.gp ⁻¹ᵁ U) r) := fun r => by
    rw [← gp_app_fracRes M U eU r]
    change algebraMap Γ(G.left, W) Γ(Y, α ⁻¹ᵁ W) (algebraMap Γ(M.S, U) Γ(G.left, W) _) =
      algebraMap Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U) Γ(Y, α ⁻¹ᵁ W) (algebraMap Γ(M.S, U) _ _)
    exact (IsScalarTower.algebraMap_apply Γ(M.S, U) Γ(G.left, W) Γ(Y, α ⁻¹ᵁ W) _).symm.trans
      (IsScalarTower.algebraMap_apply Γ(M.S, U) Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U) Γ(Y, α ⁻¹ᵁ W) _)
  have key : ∀ y : Γ(G.left, W) ⊗[Γ(M.S, U)] Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U),
      ∃ (c : Γ(G.left, W)) (r : R), r ≠ 0 ∧ e y * (α.app W).hom (σ r) = (α.app W).hom c := by
    intro y
    induction y with
    | tmul c k =>
      obtain ⟨a, r, hr, hk⟩ := exists_mul_fracRes (M.gp ⁻¹ᵁ U) k
      refine ⟨c * σ a, r, hr, ?_⟩
      rw [Algebra.IsPushout.equiv_tmul, hσ, map_mul, hσ, _root_.mul_assoc, ← map_mul, hk]
      rfl
    | add y₁ y₂ h₁ h₂ =>
      obtain ⟨c₁, r₁, hr₁, e₁⟩ := h₁
      obtain ⟨c₂, r₂, hr₂, e₂⟩ := h₂
      refine ⟨c₁ * σ r₂ + c₂ * σ r₁, r₁ * r₂, mul_ne_zero hr₁ hr₂, ?_⟩
      rw [map_add (f := _), add_mul, map_mul σ, map_mul, map_add (f := _), map_mul, map_mul, ← e₁, ← e₂]
      ring
  obtain ⟨c, r, hr, hc⟩ := key (e.symm b)
  refine ⟨c, σ r, ?_, ?_⟩
  · rw [hσ]; exact (isUnit_fracRes _ hr).map _
  · rw [← hc, e.apply_symm_apply]

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericChartFunctionsFractionsSmooth =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralAtBasicOpenOfIntegralMulChartValue =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralAtBasicOpenOfIntegralMulChartValue", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section
namespace GlobalTheory.Mum

theorem intAt_of_integral_mul_basicOpen : ∀ {X Y : Scheme.{0}} (L : LB X) (α : Y ⟶ X) (k : ℕ) (s : SecK L α k) (j : L.ι) (W : X.Opens) (hW : W ≤ L.U j), IsAffineOpen W → ∀ (x : X) (d : Γ(X, W)), x ∈ X.basicOpen d → (α.app W).hom.IsIntegralElem ((α.app W).hom d * chartVal L α s j W hW) → IntAt L α s x := by
  intro X Y L α k s j W hW hWa x d hx hint
  have hle : X.basicOpen d ≤ W := X.basicOpen_le d
  have hW' : X.basicOpen d ≤ L.U j := hle.trans hW
  refine ⟨j, X.basicOpen d, hW', hx, hWa.basicOpen d, ?_⟩
  set ρX := (X.presheaf.map (homOfLE hle).op).hom with hρX
  set ρY := (Y.presheaf.map ((TopologicalSpace.Opens.map α.base).map (homOfLE hle)).op).hom with hρY
  have hnat : ∀ r, ρY ((α.app W).hom r) = (α.app (X.basicOpen d)).hom (ρX r) := by
    intro r
    have := congrArg (fun g => g.hom r) (Scheme.Hom.naturality α (homOfLE hle).op)
    simpa [ρX, ρY] using this.symm
  have hcv : chartVal L α s j (X.basicOpen d) hW' = ρY (chartVal L α s j W hW) := by
    simp only [chartVal, ρY]
    change _ = (Y.presheaf.map (homOfLE (locInt_le_chart L α j W hW)).op ≫
      Y.presheaf.map ((TopologicalSpace.Opens.map α.base).map (homOfLE hle)).op).hom _
    rw [← Functor.map_comp]
    rfl

  have hint' : (α.app (X.basicOpen d)).hom.IsIntegralElem (ρY ((α.app W).hom d * chartVal L α s j W hW)) := by
    obtain ⟨p, hp, hp0⟩ := hint
    refine ⟨p.map ρX, hp.map ρX, ?_⟩
    rw [Polynomial.eval₂_map]
    have : ((α.app (X.basicOpen d)).hom.comp ρX) = ρY.comp (α.app W).hom := by
      ext r; exact (hnat r).symm
    rw [this, ← Polynomial.hom_eval₂, hp0, map_zero]
  obtain ⟨u, hu⟩ : IsUnit (ρX d) := X.toRingedSpace.isUnit_res_basicOpen d
  have hmul : ρY ((α.app W).hom d * chartVal L α s j W hW) =
      (α.app (X.basicOpen d)).hom (u : Γ(X, X.basicOpen d)) * chartVal L α s j (X.basicOpen d) hW' := by
    rw [map_mul, hnat, hcv]
    congr 2
    exact hu.symm
  rw [hmul] at hint'
  have key : chartVal L α s j (X.basicOpen d) hW' =
      (α.app (X.basicOpen d)).hom ((u⁻¹ : (Γ(X, X.basicOpen d))ˣ) : Γ(X, X.basicOpen d)) *
        ((α.app (X.basicOpen d)).hom (u : Γ(X, X.basicOpen d)) * chartVal L α s j (X.basicOpen d) hW') := by
    rw [← _root_.mul_assoc, ← map_mul, Units.inv_mul, map_one, _root_.one_mul]
  rw [key]
  exact RingHom.IsIntegralElem.mul _ (RingHom.isIntegralElem_map _) hint'

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralAtBasicOpenOfIntegralMulChartValue =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralOfSmoothGeomIrreducibleOverModificatio =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralOfSmoothGeomIrreducibleOverModificatio", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsReducedAlgebraOfSmoothOfIsNoetherianRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.MumInt

theorem isIntegral_of_smooth : ∀ (R : Type) [CommRing R] [IsDomain R] (M : Modif R) (G : Over M.S),
    Smooth G.hom → GeometricallyIrreducible G.hom → Nonempty G.left → IsIntegral G.left := by
  intro R _ _ M G hsm hgi _
  haveI := M.integral
  haveI : IsReduced G.left := GlobalTheory.isReduced_of_smooth_of_isReduced G.hom
  haveI : IrreducibleSpace G.left := GeometricallyIrreducible.irreducibleSpace G.hom G.hom.isOpenMap
  exact isIntegral_of_irreducibleSpace_of_isReduced _

end GlobalTheory.MumInt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralOfSmoothGeomIrreducibleOverModificatio =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocallyNoetherianOfSmoothOverModification =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocallyNoetherianOfSmoothOverModification", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem isLocallyNoetherian_of_smooth_over_modif : ∀ (R : Type) [CommRing R] [IsDomain R] [IsNoetherianRing R] (M : Modif R) (G : Over M.S), Smooth G.hom → IsLocallyNoetherian G.left := by
  intro R _ _ _ M G hG
  haveI : IsLocallyNoetherian (Sp R) := inferInstance
  haveI := M.proper
  haveI : IsLocallyNoetherian M.S := LocallyOfFiniteType.isLocallyNoetherian M.π
  haveI := hG
  exact LocallyOfFiniteType.isLocallyNoetherian G.hom

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocallyNoetherianOfSmoothOverModification =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralAtClosedFibreOfRegularAtAllTraits =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralAtClosedFibreOfRegularAtAllTraits", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueMemDominatingValuationSubring\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.Valuation.ValuationSubring\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMulIsIntegralElemOfForallDiscreteValuation\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GenericChartFunctionsFractionsSmooth\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralAtBasicOpenOfIntegralMulChartValue\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralOfSmoothGeomIrreducibleOverModificatio\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocallyNoetherianOfSmoothOverModification\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_chart_affineOpen {R : Type} [CommRing R] [IsDomain R] (M : Modif R) (G : Over M.S) (L : LB G.left)
    (hL : L.IsLB) (x : G.left) : ∃ (j : L.ι) (U : M.S.Opens) (W : G.left.Opens) (_ : W ≤ L.U j) (_ : W ≤ G.hom ⁻¹ᵁ U),
      x ∈ W ∧ IsAffineOpen W ∧ IsAffineOpen U := by
  obtain ⟨j, hj⟩ := exists_chart hL x
  obtain ⟨U, hUa, hxU, -⟩ := exists_isAffineOpen_mem_and_subset (x := G.hom x) (U := ⊤) trivial
  obtain ⟨W, hWa, hxW, hWle⟩ := exists_isAffineOpen_mem_and_subset (x := x) (U := L.U j ⊓ G.hom ⁻¹ᵁ U) ⟨hj, hxU⟩
  exact ⟨j, U, W, fun y hy => (hWle hy).1, fun y hy => (hWle hy).2, hxW, hWa, hUa⟩

theorem intAt_closed_of_traitReg : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [CharZero R] (M : Modif R) (G : Over M.S), Smooth G.hom → QuasiCompact G.hom → GeometricallyIrreducible G.hom → ∀ (L : LB G.left), L.IsLB → ∀ (Y : Scheme.{0}) (α : Y ⟶ G.left) (t : Y ⟶ Sp (FractionRing R)), IsPullback α t G.hom M.gp → ∀ (k : ℕ) (s : SecK L α k), TraitReg M G L s → ∀ x : G.left, M.π (G.hom x) = closedPoint R → IntAt L α s x := by
  intro R _ _ _ _ _ M G hsm hqc hgi L hL Y α t hpb k s hs x hx
  obtain ⟨j, U, W, hW, hWU, hxW, hWa, hUa⟩ := exists_chart_affineOpen M G L hL x
  obtain ⟨hinj, hloc⟩ := _root_.GlobalTheory.Mum.injective_and_exists_frac_genericChart R M G hsm Y α t hpb W U hWU hWa hUa
  haveI : IsIntegral G.left := _root_.GlobalTheory.MumInt.isIntegral_of_smooth R M G hsm hgi ⟨x⟩
  haveI : IsLocallyNoetherian G.left := _root_.GlobalTheory.Mum.isLocallyNoetherian_of_smooth_over_modif R M G hsm
  haveI : Nonempty W := ⟨⟨x, hxW⟩⟩
  haveI : IsNoetherianRing Γ(G.left, W) := IsLocallyNoetherian.component_noetherian ⟨W, hWa⟩
  let p : Ideal Γ(G.left, W) := RingHom.ker ((G.left.residue x).hom.comp (G.left.presheaf.germ W x hxW).hom)
  obtain ⟨d, hd, hi⟩ := _root_.GlobalTheory.exists_mul_isIntegralElem_of_forall_discreteValuationSubring Γ(G.left, W) Γ(Y, α ⁻¹ᵁ W) (α.app W).hom hinj hloc p (RingHom.ker_isPrime _)
    (chartVal L α s j W hW) (fun F _ β V hV h1 h2 =>
      _root_.GlobalTheory.Mum.chartVal_mem_of_dominates R M G hsm hqc hgi L hL Y α t hpb k s hs j U W hW hWU hWa hUa x hxW hx F β V hV h1
        (fun c hc => h2 c (RingHom.mem_ker.2 hc)))
  refine _root_.GlobalTheory.Mum.intAt_of_integral_mul_basicOpen L α k s j W hW hWa x d ?_ hi
  rw [Scheme.mem_basicOpen _ _ _ hxW]
  have : (G.left.residue x).hom ((G.left.presheaf.germ W x hxW).hom d) ≠ 0 := fun h => hd (RingHom.mem_ker.2 h)
  exact (IsLocalRing.residue_ne_zero_iff_isUnit _).1 this

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralAtClosedFibreOfRegularAtAllTraits =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasicOpenIntegralOfIntegralAtPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasicOpenIntegralOfIntegralAtPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ThetaGenThick\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem isIntegralElem_of_square {A B C D : Type} [CommRing A] [CommRing B] [CommRing C] [CommRing D]
    (f : A →+* B) (g : C →+* D) (a : A →+* C) (b : B →+* D) (h : g.comp a = b.comp f) {x : B}
    (hx : f.IsIntegralElem x) : g.IsIntegralElem (b x) := by
  obtain ⟨p, hp, hpx⟩ := hx
  refine ⟨p.map a, hp.map a, ?_⟩
  rw [Polynomial.eval₂_map, h, ← Polynomial.hom_eval₂, hpx, map_zero]

theorem intAt_chart {X Y : Scheme.{0}} (L : LB X) (α : Y ⟶ X) (k : ℕ) (s : SecK L α k) (ζ : X) :
    IntAt L α s ζ → ∀ (j : L.ι) (W : X.Opens) (hW : W ≤ L.U j), IsAffineOpen W → ζ ∈ W →
      ∃ c : Γ(X, W), ζ ∈ X.basicOpen c ∧ (α.app (X.basicOpen c)).hom.IsIntegralElem
        ((Y.presheaf.map (homOfLE (α.preimage_mono (X.basicOpen_le c))).op).hom (chartVal L α s j W hW)) := by
  intro hint j W hW hWa hζW
  obtain ⟨j', W', hW', hζW', hW'a, hint'⟩ := hint
  obtain ⟨c, hcle, hζc⟩ := hWa.exists_basicOpen_le (V := W ⊓ W') ⟨ζ, hζW, hζW'⟩ hζW
  refine ⟨c, hζc, ?_⟩
  have hBW : X.basicOpen c ≤ W := hcle.trans inf_le_left
  have hBW' : X.basicOpen c ≤ W' := hcle.trans inf_le_right
  have hBV : α ⁻¹ᵁ X.basicOpen c ≤ LB.wchart L (K := Fin 1) (fun _ => α) (fun _ => j) ⊓
      LB.wchart L (K := Fin 1) (fun _ => α) (fun _ => j') :=
    le_inf ((α.preimage_mono hBW).trans (locInt_le_chart L α j W hW))
      ((α.preimage_mono hBW').trans (locInt_le_chart L α j' W' hW'))
  have hBjj : X.basicOpen c ≤ L.U j ⊓ L.U j' := le_inf (hBW.trans hW) (hBW'.trans hW')
  have key := congrArg (Y.presheaf.map (homOfLE hBV).op).hom (s.compat (fun _ => j) (fun _ => j'))
  erw [_root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres, map_mul, _root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres] at key
  have ht : (Y.presheaf.map (homOfLE hBV).op).hom
      ((LB.LinComb L (K := Fin 1) (fun _ => α) (fun _ => (k : ℤ))).g (fun _ => j) (fun _ => j')).val =
      (α.app (X.basicOpen c)).hom (((X.presheaf.map (homOfLE hBjj).op).hom (L.g j j' : Γ(X, L.U j ⊓ L.U j'))) ^ k) := by
    simp only [LB.LinComb, Fin.prod_univ_one, zpow_natCast, Units.val_pow_eq_pow_val, res, pullU, map_pow]
    congr 1
    erw [Units.coe_map, Units.coe_map]
    erw [_root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres, ← _root_.ReciprocityTheory.ChartRestriction.G.DVR.TG.app_res α hBjj]
    rfl
  have hj' : (α.app (X.basicOpen c)).hom.IsIntegralElem
      ((Y.presheaf.map (homOfLE (α.preimage_mono hBW')).op).hom (chartVal L α s j' W' hW')) :=
    isIntegralElem_of_square (α.app W').hom (α.app (X.basicOpen c)).hom (X.presheaf.map (homOfLE hBW').op).hom
      (Y.presheaf.map (homOfLE (α.preimage_mono hBW')).op).hom (RingHom.ext fun x => (_root_.ReciprocityTheory.ChartRestriction.G.DVR.TG.app_res α hBW' x).symm) hint'
  rw [chartVal] at hj' ⊢
  erw [_root_.ReciprocityTheory.ChartRestriction.G.Semi.LBVal.rres] at hj' ⊢
  erw [key, ht]
  exact RingHom.IsIntegralElem.mul _ (RingHom.isIntegralElem_map _) hj'

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasicOpenIntegralOfIntegralAtPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralElemNearFibreOfGenericPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralElemNearFibreOfGenericPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueIsIntegralOfIntegralAtPoints\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralElementAffineSectionGenerated\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenPreimageGenericBaseChangeModificatio\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsReducedAlgebraOfSmoothOfIsNoetherianRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Ideal.AssociatedPrime.Finiteness\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open TensorProduct

namespace GlobalTheory.Mum.FibreReg

section Regular

variable {A B : Type} [CommRing A] [CommRing B] [Algebra A B]

theorem regular_of_exact [Module.Flat A B] (c : B) {N₁ N₂ N₃ : Type} [AddCommGroup N₁] [Module A N₁]
    [AddCommGroup N₂] [Module A N₂] [AddCommGroup N₃] [Module A N₃] (f : N₁ →ₗ[A] N₂) (g : N₂ →ₗ[A] N₃)
    (hf : Function.Injective f) (hg : Function.Surjective g) (hfg : Function.Exact f g)
    (h₁ : ∀ z : B ⊗[A] N₁, c • z = 0 → z = 0) (h₃ : ∀ z : B ⊗[A] N₃, c • z = 0 → z = 0) :
    ∀ z : B ⊗[A] N₂, c • z = 0 → z = 0 := by
  intro z hz
  have e3 : g.baseChange B z = 0 := h₃ _ (by rw [← map_smul, hz, map_zero])
  obtain ⟨y, rfl⟩ := ((lTensor_exact B hfg hg) z).1 e3
  have hinj := Module.Flat.lTensor_preserves_injective_linearMap (M := B) f hf
  have : c • y = 0 := hinj (by
    have : f.baseChange B (c • y) = 0 := by rw [map_smul]; exact hz
    rw [map_zero]; exact this)
  rw [h₁ y this, map_zero]

theorem regular_quotient (c : B) (p : Ideal A)
    (hc : ∀ b : B, c * b ∈ p.map (algebraMap A B) → b ∈ p.map (algebraMap A B))
    {N : Type} [AddCommGroup N] [Module A N] (e : N ≃ₗ[A] A ⧸ p) :
    ∀ z : B ⊗[A] N, c • z = 0 → z = 0 := by
  intro z hz
  let E : B ⊗[A] N ≃ₗ[B] B ⧸ p.map (algebraMap A B) :=
    (e.baseChange A B).trans (Algebra.TensorProduct.quotIdealMapEquivTensorQuot B p).symm.toLinearEquiv
  apply E.injective
  have h : c • E z = 0 := by rw [← map_smul, hz, map_zero]
  rw [map_zero]
  obtain ⟨b, hb⟩ := Ideal.Quotient.mk_surjective (E z)
  rw [← hb] at h ⊢
  rw [Ideal.Quotient.eq_zero_iff_mem]
  apply hc
  rw [← Ideal.Quotient.eq_zero_iff_mem]
  exact h

variable [IsNoetherianRing A] [IsLocalRing B] [Module.Flat A B]

theorem regular_of_torsion (c : B) (q : Ideal A) (hq : q = (IsLocalRing.maximalIdeal B).comap (algebraMap A B))
    (hc : ∀ b : B, c * b ∈ q.map (algebraMap A B) → b ∈ q.map (algebraMap A B)) (n : ℕ)
    (N : Type) [AddCommGroup N] [Module A N] [hN : Module.Finite A N] :
    (∀ a ∈ q ^ n, ∀ v : N, a • v = 0) → ∀ z : B ⊗[A] N, c • z = 0 → z = 0 := by
  induction hN using IsNoetherianRing.induction_on_isQuotientEquivQuotientPrime A with
  | subsingleton N => intro _ z _; exact Subsingleton.elim _ _
  | quotient N p e =>
    intro h
    have hle : q ≤ p.asIdeal := by
      refine (p.isPrime.pow_le_iff (n := n + 1) n.succ_ne_zero).1 fun a ha => ?_
      have := congrArg e (h a (Ideal.pow_le_pow_right n.le_succ ha) (e.symm 1))
      rw [map_smul, map_zero, e.apply_symm_apply, ← Algebra.algebraMap_eq_smul_one] at this
      exact Ideal.Quotient.eq_zero_iff_mem.1 this
    refine regular_quotient c p.asIdeal ?_ e
    by_cases hpq : p.asIdeal ≤ q
    · rw [le_antisymm hpq hle]; exact hc
    · obtain ⟨a, ha, ha'⟩ := SetLike.not_le_iff_exists.1 hpq
      rw [hq, Ideal.mem_comap, IsLocalRing.notMem_maximalIdeal] at ha'
      rw [Ideal.eq_top_of_isUnit_mem _ (Ideal.mem_map_of_mem _ ha) ha']
      intro b _; trivial
  | exact N₁ N₂ N₃ f g hf hg hfg h₁ h₃ =>
    intro h
    refine regular_of_exact c f g hf hg hfg (h₁ fun a ha v => hf ?_) (h₃ fun a ha v => ?_)
    · rw [map_smul, h a ha, map_zero]
    · obtain ⟨w, rfl⟩ := hg v
      rw [← map_smul, h a ha, map_zero]

variable [IsNoetherianRing B]

theorem regular_of_finite (c : B) (q : Ideal A) (hq : q = (IsLocalRing.maximalIdeal B).comap (algebraMap A B))
    (hc : ∀ b : B, c * b ∈ q.map (algebraMap A B) → b ∈ q.map (algebraMap A B))
    (N : Type) [AddCommGroup N] [Module A N] [Module.Finite A N] :
    ∀ z : B ⊗[A] N, c • z = 0 → z = 0 := by
  intro z hz
  have key := Ideal.iInf_pow_smul_eq_bot_of_isLocalRing (M := B ⊗[A] N) (IsLocalRing.maximalIdeal B)
    (IsLocalRing.maximalIdeal.isMaximal B).ne_top
  rw [← Submodule.mem_bot B, ← key, Submodule.mem_iInf]
  intro n
  let P : Submodule A N := q ^ n • ⊤
  have e3 : P.mkQ.baseChange B z = 0 := by
    refine regular_of_torsion c q hq hc n (N ⧸ P) (fun a ha v => ?_) _ (by rw [← map_smul, hz, map_zero])
    obtain ⟨w, rfl⟩ := P.mkQ_surjective v
    rw [← map_smul]
    exact (Submodule.Quotient.mk_eq_zero _).2 (Submodule.smul_mem_smul ha trivial)
  obtain ⟨y, rfl⟩ := ((lTensor_exact B (LinearMap.exact_subtype_mkQ P) P.mkQ_surjective) z).1 e3
  clear e3 hz
  induction y with
  | add a b ha hb => rw [map_add]; exact add_mem ha hb
  | tmul b v =>
    obtain ⟨v, hv⟩ := v
    simp only [LinearMap.lTensor_tmul, Submodule.subtype_apply]
    refine Submodule.smul_induction_on (p := fun d : N => b ⊗ₜ[A] d ∈
      (IsLocalRing.maximalIdeal B) ^ n • (⊤ : Submodule B (B ⊗[A] N))) hv ?_ ?_
    · intro r hr d _
      rw [tmul_smul, ← algebraMap_smul B r]
      refine Submodule.smul_mem_smul ?_ Submodule.mem_top
      have h1 : q.map (algebraMap A B) ≤ IsLocalRing.maximalIdeal B := by
        rw [hq]; exact Ideal.map_comap_le
      refine Ideal.pow_right_mono h1 n ?_
      rw [← Ideal.map_pow]
      exact Ideal.mem_map_of_mem _ hr
    · intro d e hd he
      rw [tmul_add]
      exact add_mem hd he

theorem regular_tensor (c : B) (q : Ideal A) (hq : q = (IsLocalRing.maximalIdeal B).comap (algebraMap A B))
    (hc : ∀ b : B, c * b ∈ q.map (algebraMap A B) → b ∈ q.map (algebraMap A B))
    (N : Type) [AddCommGroup N] [Module A N] :
    ∀ z : B ⊗[A] N, c • z = 0 → z = 0 := by
  classical
  intro z hz
  obtain ⟨S, rfl⟩ := TensorProduct.exists_finset z
  let P : Submodule A N := Submodule.span A (S.image Prod.snd : Finset N)
  haveI : Module.Finite A P := Module.Finite.span_of_finite A (Finset.finite_toSet _)
  let y : B ⊗[A] P := ∑ i ∈ S.attach, i.1.1 ⊗ₜ[A] (⟨i.1.2, Submodule.subset_span (by
    simpa using ⟨i.1.1, i.2⟩)⟩ : P)
  have hy : P.subtype.baseChange B y = ∑ i ∈ S, i.1 ⊗ₜ[A] i.2 := by
    rw [← Finset.sum_attach S]

    simp [y, map_sum]
  have hinj := Module.Flat.lTensor_preserves_injective_linearMap (M := B) P.subtype P.injective_subtype
  have : c • y = 0 := hinj (by
    have : P.subtype.baseChange B (c • y) = 0 := by rw [map_smul, hy]; exact hz
    rw [map_zero]; exact this)
  rw [← hy, regular_of_finite c q hq hc P y this, map_zero]

end Regular

section Fibre

variable {A C : Type} [CommRing A] [CommRing C] [Algebra A C] [Algebra.Smooth A C]

theorem isRadical_map_of_smooth (q : Ideal A) [q.IsPrime] : (q.map (algebraMap A C)).IsRadical := by
  rw [Ideal.isRadical_iff_quotient_reduced]
  haveI := GlobalTheory.isReduced_algebra_of_smooth_of_isReduced (A ⧸ q) ((A ⧸ q) ⊗[A] C)
  exact isReduced_of_injective (Algebra.TensorProduct.quotIdealMapEquivQuotTensor C q)
    (Algebra.TensorProduct.quotIdealMapEquivQuotTensor C q).injective

theorem regular_mod_fibre (p₀ p : Ideal C) [p₀.IsPrime] [p.IsPrime]
    (h0 : p₀.comap (algebraMap A C) = p.comap (algebraMap A C))
    (hmin : ∀ P : Ideal C, P.IsPrime → P.comap (algebraMap A C) = p.comap (algebraMap A C) → p₀ ≤ P)
    (c : C) (hc : c ∉ p₀) (b : Localization.AtPrime p)
    (hb : algebraMap C (Localization.AtPrime p) c * b ∈
      (p.comap (algebraMap A C)).map (algebraMap A (Localization.AtPrime p))) :
    b ∈ (p.comap (algebraMap A C)).map (algebraMap A (Localization.AtPrime p)) := by
  set q := p.comap (algebraMap A C) with hq
  have hmap : q.map (algebraMap A (Localization.AtPrime p)) =
      (q.map (algebraMap A C)).map (algebraMap C (Localization.AtPrime p)) := by
    rw [Ideal.map_map, ← IsScalarTower.algebraMap_eq]
  have hle : p₀ ≤ p := hmin p inferInstance rfl
  have hrad : (q.map (algebraMap A (Localization.AtPrime p))).IsRadical := by
    rw [hmap, ← Ideal.radical_eq_iff, ← IsLocalization.map_radical p.primeCompl,
      (isRadical_map_of_smooth (C := C) q).radical]
  obtain ⟨d, s, rfl⟩ := IsLocalization.exists_mk'_eq p.primeCompl b
  rw [IsLocalization.mk'_mem_iff]
  rw [IsLocalization.mul_mk'_eq_mk'_of_mul, IsLocalization.mk'_mem_iff, hmap,
    IsLocalization.algebraMap_mem_map_algebraMap_iff p.primeCompl] at hb
  obtain ⟨s', hs', hb⟩ := hb
  have hd : d ∈ p₀ := by
    have h1 : q.map (algebraMap A C) ≤ p₀ := Ideal.map_le_iff_le_comap.2 h0.ge
    rcases (‹p₀.IsPrime›.mem_or_mem (h1 hb)) with h | h
    · exact absurd (hle h) hs'
    · exact (‹p₀.IsPrime›.mem_or_mem h).resolve_left hc
  rw [← hrad.radical, Ideal.radical_eq_sInf, Submodule.mem_sInf]
  rintro Q ⟨hQ, hQp⟩
  refine hmin (Ideal.comap (algebraMap C (Localization.AtPrime p)) Q) inferInstance (le_antisymm ?_ ?_) hd
  · refine Ideal.comap_mono ?_
    refine (Ideal.comap_mono (IsLocalRing.le_maximalIdeal hQp.ne_top)).trans ?_
    exact (Localization.AtPrime.under_maximalIdeal).le
  · rw [Ideal.comap_comap, ← IsScalarTower.algebraMap_eq, ← Ideal.map_le_iff_le_comap]
    exact hQ

theorem isIntegral_tensor_of_fibre [IsNoetherianRing A] {K : Type} [CommRing K] [Algebra A K]
    (p₀ p : Ideal C) [p₀.IsPrime] [p.IsPrime]
    (h0 : p₀.comap (algebraMap A C) = p.comap (algebraMap A C))
    (hmin : ∀ P : Ideal C, P.IsPrime → P.comap (algebraMap A C) = p.comap (algebraMap A C) → p₀ ≤ P)
    (f : C ⊗[A] K) (c : C) (hc : c ∉ p₀) (hf : IsIntegral C (c • f)) :
    ∃ s, s ∉ p ∧ IsIntegral C (s • f) := by
  haveI : IsNoetherianRing C := Algebra.FiniteType.isNoetherianRing A C
  let B := Localization.AtPrime p
  haveI : Module.Flat A B := Module.Flat.trans A C B
  let I : Submodule A K := Subalgebra.toSubmodule (integralClosure A K)
  have hex := lTensor_exact C (LinearMap.exact_subtype_mkQ I) I.mkQ_surjective
  have key : ∀ g : C ⊗[A] K, IsIntegral C g ↔ I.mkQ.baseChange C g = 0 := by
    intro g
    refine Iff.trans ?_ (hex g).symm
    constructor
    · intro hg
      obtain ⟨y, hy⟩ := (TensorProduct.toIntegralClosure_bijective_of_smooth (R := A) (S := C) (B := K)).2 ⟨g, hg⟩
      exact ⟨y, congrArg Subtype.val hy⟩
    · rintro ⟨y, rfl⟩
      exact (TensorProduct.toIntegralClosure A C K y).2
  let φ : C ⊗[A] (K ⧸ I) →ₗ[C] B ⊗[A] (K ⧸ I) :=
    AlgebraTensorModule.rTensor A (K ⧸ I) (Algebra.linearMap C B)
  haveI : IsLocalizedModule p.primeCompl φ := inferInstance
  have h1 : c • I.mkQ.baseChange C f = 0 := by rw [← map_smul]; exact (key _).1 hf
  have h2 : φ (I.mkQ.baseChange C f) = 0 := by
    refine regular_tensor (algebraMap C B c) (p.comap (algebraMap A C)) ?_
      (regular_mod_fibre p₀ p h0 hmin c hc) (K ⧸ I) _ ?_
    · rw [IsScalarTower.algebraMap_eq A C B, ← Ideal.comap_comap]
      exact congrArg _ (Localization.AtPrime.under_maximalIdeal).symm
    · rw [algebraMap_smul, ← map_smul, h1, map_zero]
  obtain ⟨⟨s, hs⟩, h3⟩ := (IsLocalizedModule.eq_zero_iff p.primeCompl φ).1 h2
  exact ⟨s, hs, (key _).2 (by rw [map_smul]; exact h3)⟩

theorem isIntegral_pushout_of_fibre [IsNoetherianRing A] {K D : Type} [CommRing K] [Algebra A K] [CommRing D]
    [Algebra A D] [Algebra C D] [Algebra K D] [IsScalarTower A C D] [IsScalarTower A K D] [Algebra.IsPushout A C K D]
    (p₀ p : Ideal C) [p₀.IsPrime] [p.IsPrime]
    (h0 : p₀.comap (algebraMap A C) = p.comap (algebraMap A C))
    (hmin : ∀ P : Ideal C, P.IsPrime → P.comap (algebraMap A C) = p.comap (algebraMap A C) → p₀ ≤ P)
    (f : D) (c : C) (hc : c ∉ p₀) (hf : IsIntegral C (algebraMap C D c * f)) :
    ∃ s, s ∉ p ∧ IsIntegral C (algebraMap C D s * f) := by
  let e := Algebra.IsPushout.equiv A C K D
  obtain ⟨s, hs, h⟩ := isIntegral_tensor_of_fibre p₀ p h0 hmin (e.symm f) c hc (by
    have := hf.map e.symm.toAlgHom
    rwa [← Algebra.smul_def, map_smul] at this)
  refine ⟨s, hs, ?_⟩
  have := h.map e.toAlgHom
  rw [map_smul, Algebra.smul_def] at this
  simpa using this

end Fibre

end GlobalTheory.Mum.FibreReg

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem intElem_basicOpen_of_mul {X Y : Scheme.{0}} (α : Y ⟶ X) (W : X.Opens) (f : Γ(Y, α ⁻¹ᵁ W)) (s : Γ(X, W))
    (h : (α.app W).hom.IsIntegralElem ((α.app W).hom s * f)) :
    (α.app (X.basicOpen s)).hom.IsIntegralElem
      ((Y.presheaf.map (homOfLE (α.preimage_mono (X.basicOpen_le s))).op).hom f) := by
  have e1 : (Y.presheaf.map (homOfLE (α.preimage_mono (X.basicOpen_le s))).op).hom.comp (α.app W).hom =
      (α.app (X.basicOpen s)).hom.comp (X.presheaf.map (homOfLE (X.basicOpen_le s)).op).hom := by
    rw [← CommRingCat.hom_comp, ← CommRingCat.hom_comp, Scheme.Hom.naturality]; rfl
  have h1 := h.map (Y.presheaf.map (homOfLE (α.preimage_mono (X.basicOpen_le s))).op).hom
  rw [e1, map_mul] at h1
  have h2 := RingHom.isIntegralElem.of_comp _ _ h1
  have e2 := RingHom.congr_fun e1 s
  simp only [RingHom.comp_apply] at e2
  rw [e2] at h2
  obtain ⟨u, hu⟩ : IsUnit ((X.presheaf.map (homOfLE (X.basicOpen_le s)).op).hom s) :=
    X.toRingedSpace.isUnit_res_basicOpen s
  have h3 := RingHom.IsIntegralElem.mul _ ((α.app (X.basicOpen s)).hom.isIntegralElem_map (x := ↑u⁻¹)) h2
  rwa [← _root_.mul_assoc, ← map_mul, ← hu, Units.inv_mul, map_one, _root_.one_mul] at h3

theorem intElem_basicOpen_of_fibre_generic : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] (M : Modif R) (G : Over M.S), Smooth G.hom → QuasiCompact G.hom → GeometricallyIrreducible G.hom → ∀ (Y : Scheme.{0}) (α : Y ⟶ G.left) (t : Y ⟶ Sp (FractionRing R)), IsPullback α t G.hom M.gp → ∀ (W : G.left.Opens), IsAffineOpen W → ∀ (U : M.S.Opens), IsAffineOpen U → W ≤ G.hom ⁻¹ᵁ U → ∀ (f : Γ(Y, α ⁻¹ᵁ W)) (x ζ : G.left), x ∈ W → G.hom ζ = G.hom x → (∀ z, G.hom z = G.hom x → ζ ⤳ z) → (∃ c : Γ(G.left, W), ζ ∈ G.left.basicOpen c ∧ (α.app (G.left.basicOpen c)).hom.IsIntegralElem ((Y.presheaf.map (homOfLE (α.preimage_mono (G.left.basicOpen_le c))).op).hom f)) → ∃ c : Γ(G.left, W), x ∈ G.left.basicOpen c ∧ (α.app (G.left.basicOpen c)).hom.IsIntegralElem ((Y.presheaf.map (homOfLE (α.preimage_mono (G.left.basicOpen_le c))).op).hom f) := by
  intro R _ _ _ _ M G hG _ _ Y α t hpb W hW U hU hWU f x ζ hx hζ hsp ⟨c, hc, hint⟩
  have hYa := isAffineOpen_preimage_genericBaseChange R M G Y α t hpb W hW
  haveI := M.proper
  haveI : IsLocallyNoetherian M.S := LocallyOfFiniteType.isLocallyNoetherian M.π
  haveI : IsNoetherianRing Γ(M.S, U) := IsLocallyNoetherian.component_noetherian ⟨U, hU⟩
  have hV : IsAffineOpen (M.gp ⁻¹ᵁ U) := isAffineOpen_Sp_field _ _
  have hle := locInt_le_gen G.hom α t M.gp hpb.w W U hWU
  have hUY : α ⁻¹ᵁ W = α ⁻¹ᵁ W ⊓ t ⁻¹ᵁ (M.gp ⁻¹ᵁ U) := (inf_eq_left.2 hle).symm
  have po := (isIso_pushoutSection_iff hpb (US := U) (UT := M.gp ⁻¹ᵁ U) (UX := W) le_rfl hWU hUY).mp
    (isIso_pushoutSection_of_isAffineOpen hpb le_rfl hWU hUY hU hV hW)
  rw [Scheme.Hom.appLE_eq_app, Scheme.Hom.appLE_eq_app] at po
  letI : Algebra Γ(M.S, U) Γ(G.left, W) := (G.hom.appLE U W hWU).hom.toAlgebra
  letI : Algebra Γ(M.S, U) Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U) := (M.gp.app U).hom.toAlgebra
  letI : Algebra Γ(G.left, W) Γ(Y, α ⁻¹ᵁ W) := (α.app W).hom.toAlgebra
  letI : Algebra Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U) Γ(Y, α ⁻¹ᵁ W) :=
    (t.appLE (M.gp ⁻¹ᵁ U) (α ⁻¹ᵁ W) hle).hom.toAlgebra
  letI : Algebra Γ(M.S, U) Γ(Y, α ⁻¹ᵁ W) := (G.hom.appLE U W hWU ≫ α.app W).hom.toAlgebra
  haveI : IsScalarTower Γ(M.S, U) Γ(G.left, W) Γ(Y, α ⁻¹ᵁ W) := IsScalarTower.of_algebraMap_eq' rfl
  haveI : IsScalarTower Γ(M.S, U) Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U) Γ(Y, α ⁻¹ᵁ W) :=
    IsScalarTower.of_algebraMap_eq' (congrArg CommRingCat.Hom.hom po.w)
  haveI : Algebra.IsPushout Γ(M.S, U) Γ(G.left, W) Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U) Γ(Y, α ⁻¹ᵁ W) :=
    CommRingCat.isPushout_iff_isPushout.mp po
  haveI : Algebra.Smooth Γ(M.S, U) Γ(G.left, W) :=
    HasRingHomProperty.appLE @AlgebraicGeometry.Smooth G.hom hG ⟨U, hU⟩ ⟨W, hW⟩ hWU

  obtain ⟨n, hn⟩ : ∃ n : ℕ, (α.app W).hom.IsIntegralElem ((α.app W).hom c ^ n * f) := by
    haveI := hW.isLocalization_basicOpen c
    letI : Algebra Γ(Y, α ⁻¹ᵁ W) Γ(Y, α ⁻¹ᵁ G.left.basicOpen c) :=
      (Y.presheaf.map (homOfLE (α.preimage_mono (G.left.basicOpen_le c))).op).hom.toAlgebra
    haveI : IsLocalization.Away ((α.app W).hom c) Γ(Y, α ⁻¹ᵁ G.left.basicOpen c) :=
      hYa.isLocalization_of_eq_basicOpen _ (homOfLE (α.preimage_mono (G.left.basicOpen_le c)))
        (Scheme.preimage_basicOpen α c)
    refine intElem_pow_mul_of_away (α.app W).hom c (Rt := Γ(G.left, G.left.basicOpen c))
      (St := Γ(Y, α ⁻¹ᵁ G.left.basicOpen c)) (α.app (G.left.basicOpen c)).hom ?_ f hint
    show (α.app (G.left.basicOpen c)).hom.comp (G.left.presheaf.map (homOfLE (G.left.basicOpen_le c)).op).hom =
      (Y.presheaf.map (homOfLE (α.preimage_mono (G.left.basicOpen_le c))).op).hom.comp (α.app W).hom
    rw [← CommRingCat.hom_comp, ← CommRingCat.hom_comp, Scheme.Hom.naturality]; rfl

  have hζW : ζ ∈ W := G.left.basicOpen_le c hc
  obtain ⟨p, rfl⟩ : x ∈ Set.range hW.fromSpec := by rw [hW.range_fromSpec]; exact hx
  obtain ⟨p₀, rfl⟩ : ζ ∈ Set.range hW.fromSpec := by rw [hW.range_fromSpec]; exact hζW
  have hmem : ∀ (P : PrimeSpectrum Γ(G.left, W)) (s : Γ(G.left, W)),
      hW.fromSpec P ∈ G.left.basicOpen s ↔ s ∉ P.asIdeal := fun P s => by
    change P ∈ hW.fromSpec ⁻¹ᵁ G.left.basicOpen s ↔ _
    rw [hW.fromSpec_preimage_basicOpen]
    rfl
  have hsq : ∀ P : PrimeSpectrum Γ(G.left, W), G.hom (hW.fromSpec P) =
      hU.fromSpec (PrimeSpectrum.comap (algebraMap Γ(M.S, U) Γ(G.left, W)) P) := fun P => by
    have := IsAffineOpen.SpecMap_appLE_fromSpec G.hom hU hW hWU
    exact (congrArg (fun φ : Spec Γ(G.left, W) ⟶ M.S => φ P) this).symm
  have hcomap : ∀ P Q : PrimeSpectrum Γ(G.left, W), G.hom (hW.fromSpec P) = G.hom (hW.fromSpec Q) ↔
      P.asIdeal.comap (algebraMap Γ(M.S, U) Γ(G.left, W)) =
        Q.asIdeal.comap (algebraMap Γ(M.S, U) Γ(G.left, W)) := fun P Q => by
    rw [hsq, hsq]
    exact hU.fromSpec.isOpenEmbedding.injective.eq_iff.trans PrimeSpectrum.ext_iff
  haveI := PrimeSpectrum.isPrime p₀
  haveI := PrimeSpectrum.isPrime p
  obtain ⟨s, hs, h⟩ := FibreReg.isIntegral_pushout_of_fibre (A := Γ(M.S, U))
    (K := Γ(Sp (FractionRing R), M.gp ⁻¹ᵁ U)) (PrimeSpectrum.asIdeal p₀) (PrimeSpectrum.asIdeal p)
    ((hcomap p₀ p).1 hζ) (fun P hP e => by
      have h1 := hsp _ ((hcomap ⟨P, hP⟩ p).2 e)
      exact (PrimeSpectrum.le_iff_specializes p₀ ⟨P, hP⟩).2
        (hW.fromSpec.isOpenEmbedding.isInducing.specializes_iff.1 h1)) f (c ^ n)
    (fun h => (hmem p₀ c).1 hc ((PrimeSpectrum.isPrime p₀).mem_of_pow_mem n h))
    (by rw [map_pow]; exact hn)
  exact ⟨s, (hmem p s).2 hs, intElem_basicOpen_of_mul α W f s h⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralElemNearFibreOfGenericPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralOfIntegralAtFibreGenericPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralOfIntegralAtFibreGenericPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasicOpenIntegralOfIntegralAtPoint\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralElemNearFibreOfGenericPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem GlobalTheory.Mum.intAt_of_intAt_fibreGeneric : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] (M : Modif R) (G : Over M.S), Smooth G.hom → QuasiCompact G.hom → GeometricallyIrreducible G.hom → ∀ (L : LB G.left), L.IsLB → ∀ (Y : Scheme.{0}) (α : Y ⟶ G.left) (t : Y ⟶ Sp (FractionRing R)), IsPullback α t G.hom M.gp → ∀ (k : ℕ) (s : SecK L α k) (x ζ : G.left), G.hom ζ = G.hom x → (∀ z, G.hom z = G.hom x → ζ ⤳ z) → IntAt L α s ζ → IntAt L α s x := by
  intro R _ _ _ _ M G hsm hqc hgi L hL Y α t hpb k s x ζ hζ hgen hint
  have hx : x ∈ (⨆ i, L.U i) := by rw [hL.cover]; trivial
  obtain ⟨j, hj⟩ := TopologicalSpace.Opens.mem_iSup.1 hx
  obtain ⟨U, hU, hxU, -⟩ := exists_isAffineOpen_mem_and_subset (x := G.hom x) (U := ⊤) trivial
  obtain ⟨W, hW, hxW, hWle⟩ := exists_isAffineOpen_mem_and_subset (x := x) (U := L.U j ⊓ G.hom ⁻¹ᵁ U) ⟨hj, hxU⟩
  have hζW : ζ ∈ W := (hgen x rfl).mem_open W.isOpen hxW
  have hWj : W ≤ L.U j := fun z hz => (hWle hz).1
  have hWU : W ≤ G.hom ⁻¹ᵁ U := fun z hz => (hWle hz).2
  obtain ⟨c', hxc', hc'⟩ := _root_.GlobalTheory.Mum.intElem_basicOpen_of_fibre_generic R M G hsm hqc hgi Y α t hpb W hW U hU hWU (chartVal L α s j W hWj) x ζ hxW hζ hgen
    (_root_.GlobalTheory.Mum.intAt_chart L α k s ζ hint j W hWj hW hζW)
  refine ⟨j, G.left.basicOpen c', (G.left.basicOpen_le c').trans hWj, hxc', hW.basicOpen c', ?_⟩
  convert hc' using 1
  simp only [chartVal]
  erw [← CommRingCat.comp_apply, ← Functor.map_comp]
  rfl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralOfIntegralAtFibreGenericPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralSectionEverywhereOfClosedFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralSectionEverywhereOfClosedFibre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralOfIntegralAtFibreGenericPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem isOpen_setOf_intAt {X Y : Scheme.{0}} (L : LB X) (α : Y ⟶ X) {k : ℕ} (s : SecK L α k) :
    IsOpen {x : X | IntAt L α s x} := by
  rw [isOpen_iff_forall_mem_open]
  rintro x ⟨j, W, hW, hx, hWa, hint⟩
  exact ⟨W, fun x' hx' => ⟨j, W, hW, hx', hWa, hint⟩, W.isOpen, hx⟩

theorem exists_fibre_generic {X S : Scheme.{0}} (f : X ⟶ S) [GeometricallyIrreducible f] (y : S) :
    ∃ ζ : X, f ζ = y ∧ ∀ z, f z = y → ζ ⤳ z := by
  refine ⟨f.fiberι y (genericPoint (f.fiber y)), ?_, ?_⟩
  · have : f.fiberι y (genericPoint (f.fiber y)) ∈ Set.range (f.fiberι y) := ⟨_, rfl⟩
    rw [Scheme.Hom.range_fiberι] at this
    exact this
  · intro z hz
    obtain ⟨z', rfl⟩ : z ∈ Set.range (f.fiberι y) := by rw [Scheme.Hom.range_fiberι]; exact hz
    exact (genericPoint_specializes z').map (f.fiberι y).continuous

theorem exists_specializes_closedPoint {R : Type} [CommRing R] [IsDomain R] [IsLocalRing R] (M : Modif R)
    (y : M.S) : ∃ y₀, y ⤳ y₀ ∧ M.π y₀ = closedPoint R := by
  haveI := M.proper
  have hc : IsClosed (M.π '' closure {y}) := M.π.isClosedMap _ isClosed_closure
  have hm : M.π y ∈ M.π '' closure {y} := ⟨y, subset_closure rfl, rfl⟩
  obtain ⟨y₀, hy₀, e⟩ := (IsLocalRing.specializes_closedPoint (M.π y)).mem_closed hc hm
  exact ⟨y₀, specializes_iff_mem_closure.2 hy₀, e⟩

end GlobalTheory.Mum

theorem GlobalTheory.Mum.intAt_of_closedFibre : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] (M : Modif R) (G : Over M.S), Smooth G.hom → QuasiCompact G.hom → GeometricallyIrreducible G.hom → ∀ (L : LB G.left), L.IsLB → ∀ (Y : Scheme.{0}) (α : Y ⟶ G.left) (t : Y ⟶ Sp (FractionRing R)), IsPullback α t G.hom M.gp → ∀ (k : ℕ) (s : SecK L α k), (∀ x : G.left, M.π (G.hom x) = closedPoint R → IntAt L α s x) → ∀ x : G.left, IntAt L α s x := by
  intro R _ _ _ _ M G hsm hqc hgi L hL Y α t hpb k s hcl x
  haveI := hsm; haveI := hgi
  by_contra hx
  obtain ⟨ζ, hζ, hζg⟩ := exists_fibre_generic G.hom (G.hom x)
  obtain ⟨y₀, hy₀, hy₀c⟩ := exists_specializes_closedPoint M (G.hom ζ)
  obtain ⟨g₀, hg₀⟩ : ∃ g₀, G.hom g₀ = y₀ := by
    obtain ⟨g₀, hg₀, -⟩ := exists_fibre_generic G.hom y₀
    exact ⟨g₀, hg₀⟩
  obtain ⟨g, hg, hgg₀⟩ := Flat.generalizingMap G.hom (show G.hom ζ ⤳ G.hom g₀ from hg₀ ▸ hy₀)
  have hζg' : ζ ⤳ g := hζg g (hgg₀.trans hζ)
  have hnζ : ¬ IntAt L α s ζ := fun h => hx (_root_.GlobalTheory.Mum.intAt_of_intAt_fibreGeneric R M G hsm hqc hgi L hL Y α t hpb k s x ζ hζ hζg h)
  have hclosed : IsClosed {z : G.left | ¬ IntAt L α s z} := (isOpen_setOf_intAt L α s).isClosed_compl
  have : ¬ IntAt L α s g₀ := (hζg'.trans hg).mem_closed hclosed hnζ
  exact this (hcl g₀ (by rw [hg₀, hy₀c]))
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralSectionEverywhereOfClosedFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralOfRegularAtAllTraits =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralOfRegularAtAllTraits", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfCompEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChartValueIsIntegralOfIntegralAtPoints\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralAtClosedFibreOfRegularAtAllTraits\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntegralElementAffineSectionGenerated\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenPreimageGenericBaseChangeModificatio\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIntegralSectionEverywhereOfClosedFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem locInt_of_traitReg : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [CharZero R] (M : Modif R) (G : Over M.S), Smooth G.hom → QuasiCompact G.hom → GeometricallyIrreducible G.hom → ∀ (L : LB G.left), L.IsLB → ∀ (Y : Scheme.{0}) (α : Y ⟶ G.left) (t : Y ⟶ Sp (FractionRing R)) (hpb : IsPullback α t G.hom M.gp) (k : ℕ) (s : SecK L α k), TraitReg M G L s → LocInt M G L α t hpb.w s := by
  intro R _ _ _ _ _ M G hsm hqc hgi L hL Y α t hpb k s hs
  have h4 := _root_.GlobalTheory.Mum.intAt_closed_of_traitReg R M G hsm hqc hgi L hL Y α t hpb k s hs
  have h5 := _root_.GlobalTheory.Mum.intAt_of_closedFibre R M G hsm hqc hgi L hL Y α t hpb k s h4
  intro j W U hW hWU hWa hUa
  exact _root_.GlobalTheory.Mum.eq_sum_of_isIntegral_genericChart R M G hsm Y α t hpb W U hWU hWa hUa _
    (_root_.GlobalTheory.Mum.chartVal_isIntegral_of_intAt L α k s j W hW hWa (_root_.GlobalTheory.Mum.isAffineOpen_preimage_genericBaseChange R M G Y α t hpb W hWa) (fun x _ => h5 x))

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralOfRegularAtAllTraits =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtendFiniteModif =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtendFiniteModif", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsProjOverWeierstrass\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LePreimageOfCompEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralOfRegularAtAllTraits\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocallyIntegralSectionsExtendOverFiniteModificatStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem extend_finiteModif : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [CharZero R] (M : Modif R) (G : Over M.S), Smooth G.hom → QuasiCompact G.hom → GeometricallyIrreducible G.hom → ∀ (L : LB G.left), L.IsLB → ∀ (Y : Scheme.{0}) (α : Y ⟶ G.left) (t : Y ⟶ Sp (FractionRing R)), IsPullback α t G.hom M.gp → ∀ (I : Type) [Finite I] (k : I → ℕ) (s : ∀ i, SecK L α (k i)), (∀ i, TraitReg M G L (s i)) → ∃ (M' : Modif R) (h : M'.S ⟶ M.S), IsFinite h ∧ M'.gp ≫ h = M.gp ∧ h ≫ M.π = M'.π ∧ ∀ i, ∃ σ : SecK L (pullback.fst G.hom h) (k i), Agree L σ (s i) := by
  intro R _ _ _ _ _ M G hsm hqc hgi L hL Y α t hpb I _ k s hs
  exact _root_.GlobalTheory.Mum.extend_locInt R M G hsm hqc hgi L hL Y α t hpb I k s
    (fun i => _root_.GlobalTheory.Mum.locInt_of_traitReg R M G hsm hqc hgi L hL Y α t hpb (k i) (s i) (hs i))

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtendFiniteModif =====
