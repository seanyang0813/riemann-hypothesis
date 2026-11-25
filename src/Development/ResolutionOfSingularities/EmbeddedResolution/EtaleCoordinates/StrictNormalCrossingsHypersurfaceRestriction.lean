module

public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateSubscheme
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleChartExistence
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.ChartRing
public import Mathlib.RingTheory.Flat.TorsionFree
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafSmoothPullback
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.JacobianChartChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsChartNormalization
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformSubscheme
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Development.ResolutionOfSingularities.Foundations.Schemes.SchemeMorphismProperties
import Mathlib.Tactic.Linter.Style
import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothCenterChart
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothHypersurfaceLocalCoordinates, Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.DerivationLiftAndDeterminant, Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsHypersurfaceRestriction

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothHypersurfaceLocalCoordinates =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothHypersurfaceLocalCoordinates", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateSubscheme\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.EtaleChartExistence\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Development.ResolutionOfSingularities.Foundations.Schemes.SchemeMorphismProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory Opposite AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

section

variable {P : Scheme.{u}}

private theorem ker_ideal_eq_ker_appLE {A B : Scheme.{u}} (f : A ⟶ B) [QuasiCompact f]
    (V : B.affineOpens) :
    f.ker.ideal V = RingHom.ker (f.appLE (V : B.Opens) (f ⁻¹ᵁ (V : B.Opens)) le_rfl).hom := by
  simp only [Scheme.Hom.appLE_eq_app]
  simp

private theorem ker_appLE_congr {A B : Scheme.{u}} (f : A ⟶ B) (W : B.Opens)
    {V₁ V₂ : A.Opens} (h : V₁ = V₂) (e₁ : V₁ ≤ f ⁻¹ᵁ W) (e₂ : V₂ ≤ f ⁻¹ᵁ W) :
    RingHom.ker (f.appLE W V₁ e₁).hom = RingHom.ker (f.appLE W V₂ e₂).hom := by
  subst h
  rfl

theorem ker_comp_subschemeι_ideal_eq_comap (H : P.IdealSheafData) (Z : H.subscheme.IdealSheafData)
    {U : P.Opens} (hU : IsAffineOpen U) :
    (Z.subschemeι ≫ H.subschemeι).ker.ideal ⟨U, hU⟩ =
      Ideal.comap (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom
        (Z.ideal ⟨H.subschemeι ⁻¹ᵁ U, isAffineOpen_preimage_subschemeι H hU⟩) := by
  have hqcZ : QuasiCompact Z.subschemeι := inferInstance
  have hqcf : QuasiCompact (Z.subschemeι ≫ H.subschemeι) := inferInstance
  have hopen : (Z.subschemeι ≫ H.subschemeι) ⁻¹ᵁ U
      = Z.subschemeι ⁻¹ᵁ (H.subschemeι ⁻¹ᵁ U) :=
    Scheme.Hom.comp_preimage ..
  have hle : Z.subschemeι ⁻¹ᵁ (H.subschemeι ⁻¹ᵁ U)
      ≤ (Z.subschemeι ≫ H.subschemeι) ⁻¹ᵁ U := le_of_eq hopen.symm
  have h1 : (Z.subschemeι ≫ H.subschemeι).ker.ideal ⟨U, hU⟩ =
      RingHom.ker ((Z.subschemeι ≫ H.subschemeι).appLE U
        (Z.subschemeι ⁻¹ᵁ (H.subschemeι ⁻¹ᵁ U)) hle).hom :=
    (ker_ideal_eq_ker_appLE (Z.subschemeι ≫ H.subschemeι) ⟨U, hU⟩).trans
      (ker_appLE_congr (Z.subschemeι ≫ H.subschemeι) U hopen le_rfl hle)
  have h2 : Z.ideal ⟨H.subschemeι ⁻¹ᵁ U, isAffineOpen_preimage_subschemeι H hU⟩ =
      RingHom.ker (Z.subschemeι.appLE (H.subschemeι ⁻¹ᵁ U)
        (Z.subschemeι ⁻¹ᵁ (H.subschemeι ⁻¹ᵁ U)) le_rfl).hom :=
    (congrArg (fun I : H.subscheme.IdealSheafData =>
        I.ideal ⟨H.subschemeι ⁻¹ᵁ U, isAffineOpen_preimage_subschemeι H hU⟩)
      (Scheme.IdealSheafData.ker_subschemeι Z)).symm.trans
      (ker_ideal_eq_ker_appLE Z.subschemeι
        ⟨H.subschemeι ⁻¹ᵁ U, isAffineOpen_preimage_subschemeι H hU⟩)
  have hcomp : H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl ≫
      Z.subschemeι.appLE (H.subschemeι ⁻¹ᵁ U)
        (Z.subschemeι ⁻¹ᵁ (H.subschemeι ⁻¹ᵁ U)) le_rfl
      = (Z.subschemeι ≫ H.subschemeι).appLE U
        (Z.subschemeι ⁻¹ᵁ (H.subschemeι ⁻¹ᵁ U)) hle := by
    simp only [Scheme.Hom.appLE_comp_appLE]
  rw [h1, h2, ← hcomp, CommRingCat.hom_comp]
  ext x
  simp only [RingHom.mem_ker, Ideal.mem_comap, RingHom.comp_apply]

private theorem comp_app_apply {A B C : Scheme.{u}} (f : A ⟶ B) (g : B ⟶ C)
    (U : C.Opens) (x : Γ(C, U)) :
    ((f ≫ g).app U).hom x = (f.app (g ⁻¹ᵁ U)).hom ((g.app U).hom x) := rfl

private theorem subschemeι_app_apply_eq_zero {P : Scheme.{u}} (H : P.IdealSheafData)
    (U : P.affineOpens) (x : Γ(P, U.1)) (hx : x ∈ H.ideal U) :
    (H.subschemeι.app U.1).hom x = 0 := by
  have hpt : (H.subschemeι.app U.1).hom x
      = (H.subschemeObjIso U).inv.hom (Ideal.Quotient.mk (H.ideal U) x) :=
    congrArg (fun g => CommRingCat.Hom.hom g x) (Scheme.IdealSheafData.subschemeι_app H U)
  rw [hpt, Ideal.Quotient.eq_zero_iff_mem.mpr hx, map_zero]

theorem le_ker_comp_subschemeι (H : P.IdealSheafData) (Z : H.subscheme.IdealSheafData) :
    H ≤ (Z.subschemeι ≫ H.subschemeι).ker := by
  simp only [Scheme.Hom.ker]
  refine Scheme.IdealSheafData.le_ofIdeals_iff.mpr ?_
  intro U x hx
  simp only [RingHom.mem_ker]
  rw [comp_app_apply Z.subschemeι H.subschemeι U.1 x,
    subschemeι_app_apply_eq_zero H U x hx]
  exact map_zero _

variable {k : Type u} [Field k]

theorem ker_comp_subschemeι_ideal_eq_span_coord (p : P ⟶ Spec (CommRingCat.of k)) (H : P.IdealSheafData)
    (Z : H.subscheme.IdealSheafData) {U : P.Opens} (hU : IsAffineOpen U) {n : ℕ}
    (c : EtaleChart p U n) (j₀ : Fin n) (S : Finset (Fin n))
    (hH : restrictIdeal H U = c.coordIdeal {j₀})
    (hZ : Z.ideal ⟨H.subschemeι ⁻¹ᵁ U, isAffineOpen_preimage_subschemeι H hU⟩ =
      Ideal.span
        ((fun j : Fin n =>
          (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom (c.coord j)) ''
            (S : Set (Fin n)))) :
    (Z.subschemeι ≫ H.subschemeι).ker.ideal ⟨U, hU⟩ =
      Ideal.span (c.coord '' ((insert j₀ S : Finset (Fin n)) : Set (Fin n))) := by
  classical
  have happ : H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl = H.subschemeι.app U := by
    rw [Scheme.Hom.appLE_eq_app]
  have hsurj : Function.Surjective (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom := by
    rw [happ]
    exact Scheme.IdealSheafData.subschemeι_app_surjective H ⟨U, hU⟩
  have hcomap : Ideal.comap (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom ⊥
      = H.ideal ⟨U, hU⟩ := by
    rw [happ, ← RingHom.ker_eq_comap_bot]
    exact Scheme.IdealSheafData.ker_subschemeι_app H ⟨U, hU⟩
  have hHspan : H.ideal ⟨U, hU⟩ = Ideal.span {c.coord j₀} := by
    rw [c.ideal_eq_span_coord hU H {j₀} hH, Finset.coe_singleton, Set.image_singleton]
  have key := ker_comp_subschemeι_ideal_eq_comap H Z hU
  rw [hZ] at key
  have himg : ((fun j : Fin n =>
        (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom (c.coord j)) ''
          (S : Set (Fin n)))
      = (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom ''
          (c.coord '' (S : Set (Fin n))) :=
    (Set.image_image _ _ _).symm
  have hmap : Ideal.map (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom
        (Ideal.span (c.coord '' (S : Set (Fin n))))
      = Ideal.span ((H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom ''
          (c.coord '' (S : Set (Fin n)))) :=
    Ideal.map_span _ _
  rw [key, himg, ← hmap, Ideal.comap_map_of_surjective _ hsurj, hcomap, hHspan,
    Finset.coe_insert, Set.image_insert_eq, Ideal.span_insert]
  exact le_antisymm (sup_le le_sup_right le_sup_left) (sup_le le_sup_right le_sup_left)

end

section

variable {X : Scheme.{u}} {k : Type u} [Field k]

theorem etaleChart_numCoords_eq (p : X ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.LocallyOfFiniteType p] {U : X.Opens} (hU : IsAffineOpen U) (x : X)
    (hx : x ∈ U) {m m' : ℕ} (c : EtaleChart p U m) (c' : EtaleChart p U m') : m = m' := by
  let instk : Algebra k Γ(X, U) := sectionsAlgebra k p U
  let instc : Algebra (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, U) := c.algebra
  let instc' : Algebra (MvPolynomial (ULift.{u} (Fin m')) k) Γ(X, U) := c'.algebra
  have instt : IsScalarTower k (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, U) :=
    c.isScalarTower
  have instt' : IsScalarTower k (MvPolynomial (ULift.{u} (Fin m')) k) Γ(X, U) :=
    c'.isScalarTower
  have instfe : Algebra.FormallyEtale (MvPolynomial (ULift.{u} (Fin m)) k) Γ(X, U) :=
    c.algebra_formallyEtale hU
  have instfe' : Algebra.FormallyEtale (MvPolynomial (ULift.{u} (Fin m')) k) Γ(X, U) :=
    c'.algebra_formallyEtale hU
  have instnt : Nontrivial Γ(X, U) :=
    RingHom.domain_nontrivial (X.presheaf.germ U x hx).hom
  have h1 : Module.finrank Γ(X, U) (KaehlerDifferential k Γ(X, U))
      = Fintype.card (ULift.{u} (Fin m)) :=
    Module.finrank_eq_card_basis (EtaleCoordinates.basisKaehler k (ULift.{u} (Fin m)) Γ(X, U))
  have h2 : Module.finrank Γ(X, U) (KaehlerDifferential k Γ(X, U))
      = Fintype.card (ULift.{u} (Fin m')) :=
    Module.finrank_eq_card_basis (EtaleCoordinates.basisKaehler k (ULift.{u} (Fin m')) Γ(X, U))
  have h3 : Fintype.card (ULift.{u} (Fin m)) = Fintype.card (ULift.{u} (Fin m')) :=
    h1.symm.trans h2
  simpa using h3

end

section

variable {P : Scheme.{u}} {k : Type u} [Field k]

theorem etaleChart_numCoords_add_one_of_hypersurface (p : P ⟶ Spec (CommRingCat.of k))
    (H : P.IdealSheafData)
    [AlgebraicGeometry.LocallyOfFiniteType (H.subschemeι ≫ p)]
    {U : P.Opens} (hU : IsAffineOpen U) {n : ℕ} (c : EtaleChart p U n) (j₁ : Fin n)
    (hH : restrictIdeal H U = c.coordIdeal {j₁})
    {V : H.subscheme.Opens} {m' : ℕ}
    (c' : EtaleChart (H.subschemeι ≫ p) V m')
    (y : H.subscheme) (hyU : y ∈ H.subschemeι ⁻¹ᵁ U) (hyV : y ∈ V) :
    m' + 1 = n := by
  have hymem : y ∈ (H.subschemeι ⁻¹ᵁ U) ⊓ V := ⟨hyU, hyV⟩
  obtain ⟨W, hWmem, hyW, hWle⟩ :=
    TopologicalSpace.Opens.isBasis_iff_nbhd.mp H.subscheme.isBasis_affineOpens hymem
  have hW : IsAffineOpen W := hWmem
  have hle1 : W ≤ H.subschemeι ⁻¹ᵁ U := le_trans hWle inf_le_left
  have hle2 : W ≤ V := le_trans hWle inf_le_right
  have key := etaleChart_numCoords_eq (H.subschemeι ≫ p) hW y hyW
    ((c.restrictToSubscheme hU H {j₁} hH).restrict hle1) (c'.restrict hle2)
  have hcard : ({j₁} : Finset (Fin n)).card = 1 := Finset.card_singleton j₁
  have hlt : (j₁ : ℕ) < n := j₁.isLt
  omega

def HasLocalCoordsOnSmoothHypersurface (p : P ⟶ Spec (CommRingCat.of k)) (H : P.IdealSheafData)
    (N : List P.IdealSheafData) (Z : H.subscheme.IdealSheafData) : Prop :=
  ∀ x ∈ (Z.subschemeι ≫ H.subschemeι).ker.support,
    ∃ (U : P.Opens) (hU : IsAffineOpen U) (_ : x ∈ U) (n : ℕ) (c : EtaleChart p U n)
      (j₀ : Fin n) (lab : ℕ → Option (Fin n)) (S : Finset (Fin n)),
      restrictIdeal H U = c.coordIdeal {j₀} ∧
      (∀ i, ∀ hi : i < N.length, lab i = none → restrictIdeal (N[i]'hi) U = ⊤) ∧
      (∀ i, ∀ hi : i < N.length, ∀ j : Fin n, lab i = some j →
        restrictIdeal (N[i]'hi) U = c.coordIdeal {j}) ∧
      (∀ i i' : ℕ, i < N.length → i' < N.length → ∀ j : Fin n,
        lab i = some j → lab i' = some j → i = i') ∧
      Z.ideal ⟨H.subschemeι ⁻¹ᵁ U, isAffineOpen_preimage_subschemeι H hU⟩ =
        Ideal.span
          ((fun j : Fin n =>
            (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom (c.coord j)) ''
              (S : Set (Fin n)))

private theorem comp_presheaf_map_comp_map {X₁ : Scheme.{u}} {R : CommRingCat.{u}}
    {A B C : (X₁.Opens)ᵒᵖ} (h : R ⟶ X₁.presheaf.obj A) (g₁ : A ⟶ B) (g₂ : B ⟶ C) (g₃ : A ⟶ C) :
    (h ≫ X₁.presheaf.map g₁) ≫ X₁.presheaf.map g₂ = h ≫ X₁.presheaf.map g₃ := by
  rw [Category.assoc, ← Functor.map_comp, X₁.presheaf_map_eq_of_parallel (g₁ ≫ g₂) g₃]

private theorem appLE_eq_appLE_comp_presheaf_map {X₁ Y₁ : Scheme.{u}} (f : X₁ ⟶ Y₁) (U : Y₁.Opens)
    {A B : X₁.Opens} (e : A ≤ f ⁻¹ᵁ U) (e' : B ≤ f ⁻¹ᵁ U) (hAB : A ≤ B) :
    f.appLE U A e = f.appLE U B e' ≫ X₁.presheaf.map (homOfLE hAB).op := by
  have h1 : f.appLE U A e = f.app U ≫ X₁.presheaf.map (homOfLE e).op := rfl
  have h2 : f.appLE U B e' = f.app U ≫ X₁.presheaf.map (homOfLE e').op := rfl
  rw [h1, h2]
  exact (comp_presheaf_map_comp_map (f.app U) (homOfLE e').op (homOfLE hAB).op (homOfLE e).op).symm

private theorem ι_appLE_self_top_eq_topIso_inv {X₁ : Scheme.{u}} (V : X₁.Opens)
    (e : (⊤ : (V.toScheme).Opens) ≤ V.ι ⁻¹ᵁ V) :
    V.ι.appLE V ⊤ e = V.topIso.inv := by
  simp
  exact X₁.presheaf_map_eq_of_parallel _ _

private theorem ι_appLE_apply_topIso_hom {X₁ Y₁ : Scheme.{u}} (V : X₁.Opens)
    (g : V.toScheme ⟶ Y₁) {W : V.toScheme.Opens} (e1 : W ≤ V.ι ⁻¹ᵁ V)
    (e2 : W ≤ g ⁻¹ᵁ (⊤ : Y₁.Opens)) (x : Γ(Y₁, ⊤)) :
    (V.ι.appLE V W e1).hom (V.topIso.hom.hom (g.appTop.hom x))
      = (g.appLE ⊤ W e2).hom x := by
  have htop : (⊤ : V.toScheme.Opens) ≤ V.ι ⁻¹ᵁ V := by
    intro y _
    exact y.2
  have ha : V.ι.appLE V W e1
      = V.topIso.inv ≫ V.toScheme.presheaf.map (homOfLE (le_top : W ≤ ⊤)).op := by
    rw [appLE_eq_appLE_comp_presheaf_map V.ι V e1 htop le_top, ι_appLE_self_top_eq_topIso_inv V htop]
  have hb : g.appLE (⊤ : Y₁.Opens) W e2
      = g.appTop ≫ V.toScheme.presheaf.map (homOfLE (le_top : W ≤ ⊤)).op := by
    have h1 : g.appLE (⊤ : Y₁.Opens) W e2
        = g.appTop ≫ V.toScheme.presheaf.map (homOfLE e2).op := rfl
    rw [h1]
    exact congrArg (fun z => g.appTop ≫ z) (V.toScheme.presheaf_map_eq_of_parallel _ _)
  rw [ha, hb]
  simp only [CommRingCat.hom_comp, RingHom.comp_apply]
  rw [Iso.hom_inv_id_apply]

private theorem ι_appLE_coord {X₁ : Scheme.{u}} {K : Type u} [Field K]
    {q : X₁ ⟶ Spec (CommRingCat.of K)} {U : X₁.Opens} {m : ℕ} (c : EtaleChart q U m)
    {W : U.toScheme.Opens} (e1 : W ≤ U.ι ⁻¹ᵁ U)
    (e2 : W ≤ c.map ⁻¹ᵁ (⊤ : (affineSpaceFin K m).Opens)) (j : Fin m) :
    (U.ι.appLE U W e1).hom (c.coord j)
      = (c.map.appLE ⊤ W e2).hom
          (AffineSpace.coord (Spec (CommRingCat.of K)) (ULift.up j : ULift.{u} (Fin m))) := by
  rw [EtaleChart.coord_def]
  exact ι_appLE_apply_topIso_hom U c.map e1 e2 _

private theorem restrictIdeal_eq_coordIdeal_of_isAffineOpen_ideal_eq_span {X₁ : Scheme.{u}} {K : Type u}
    [Field K] {q : X₁ ⟶ Spec (CommRingCat.of K)} {U : X₁.Opens} {m : ℕ}
    (c : EtaleChart q U m) (hU : IsAffineOpen U) (I : X₁.IdealSheafData) (S : Finset (Fin m))
    (h : I.ideal ⟨U, hU⟩ = Ideal.span (c.coord '' (S : Set (Fin m)))) :
    restrictIdeal I U = c.coordIdeal S := by
  have hAaff : IsAffine (affineSpaceFin K m) := inferInstance
  have hcoord : (coordSubspaceIdeal K m S).ideal ⟨⊤, isAffineOpen_top (affineSpaceFin K m)⟩
      = Ideal.span ((fun i : Fin m =>
          AffineSpace.coord (Spec (CommRingCat.of K)) (ULift.up i)) '' (S : Set (Fin m))) := by
    rw [coordSubspaceIdeal_eq_ofIdealTop_span_coord]
    exact _root_.AlgebraicGeometry.Scheme.IdealSheafData.ofIdealTop_ideal_top _
  refine Scheme.IdealSheafData.ext (funext ?_)
  intro W
  have htop : (⊤ : U.toScheme.Opens) ≤ U.ι ⁻¹ᵁ U := by
    intro y _
    exact y.2
  have eW : (W.1 : U.toScheme.Opens) ≤ U.ι ⁻¹ᵁ U := le_trans le_top htop
  have eW' : (W.1 : U.toScheme.Opens) ≤ c.map ⁻¹ᵁ (⊤ : (affineSpaceFin K m).Opens) := by
    intro y _
    trivial
  show (I.comap U.ι).ideal W = ((coordSubspaceIdeal K m S).comap c.map).ideal W
  rw [I.comap_ideal_eq_map_appLE U.ι ⟨U, hU⟩ W eW,
    (coordSubspaceIdeal K m S).comap_ideal_eq_map_appLE c.map
      ⟨⊤, isAffineOpen_top (affineSpaceFin K m)⟩ W eW',
    h, hcoord, Ideal.map_span, Ideal.map_span, ← Set.image_comp, ← Set.image_comp]
  refine congrArg Ideal.span (Set.image_congr fun j _ => ?_)
  exact ι_appLE_coord c eW eW' j

private theorem ideal_ne_top_of_mem_support {Y : Scheme.{u}} (I : Y.IdealSheafData) {V : Y.Opens}
    (hV : IsAffineOpen V) {x : Y} (hxV : x ∈ V) (hx : x ∈ I.support) :
    I.ideal ⟨V, hV⟩ ≠ ⊤ := by
  obtain ⟨y, hy⟩ : ∃ y : I.subscheme, I.subschemeι.base y = x := by
    have hxs : x ∈ (I.support : Set Y) := hx
    have hxr : x ∈ Set.range I.subschemeι.base := by simpa using hxs
    exact hxr
  have hyV : y ∈ I.subschemeι ⁻¹ᵁ V := by
    show I.subschemeι.base y ∈ V
    rw [hy]
    exact hxV
  have hnt : Nontrivial Γ(I.subscheme, I.subschemeι ⁻¹ᵁ V) :=
    RingHom.domain_nontrivial (I.subscheme.presheaf.germ (I.subschemeι ⁻¹ᵁ V) y hyV).hom
  intro htop
  have hker : RingHom.ker (I.subschemeι.app V).hom = I.ideal ⟨V, hV⟩ :=
    Scheme.IdealSheafData.ker_subschemeι_app I ⟨V, hV⟩
  have hmem1 : (1 : Γ(Y, V)) ∈ RingHom.ker (I.subschemeι.app V).hom := by
    rw [hker, htop]
    exact Submodule.mem_top
  have hzero : (1 : Γ(I.subscheme, I.subschemeι ⁻¹ᵁ V)) = 0 := by
    have h' := RingHom.mem_ker.mp hmem1
    rwa [map_one] at h'
  exact one_ne_zero hzero

private theorem ideal_eq_top_of_restrictIdeal_eq_top {Y : Scheme.{u}} (I : Y.IdealSheafData)
    {V : Y.Opens} (hV : IsAffineOpen V) (h : restrictIdeal I V = ⊤) :
    I.ideal ⟨V, hV⟩ = ⊤ := by
  have hVaff : IsAffine V.toScheme := hV
  have htop : (⊤ : V.toScheme.Opens) ≤ V.ι ⁻¹ᵁ V := by
    intro y _
    exact y.2
  have key := I.comap_ideal_eq_map_appLE V.ι ⟨V, hV⟩ ⟨⊤, isAffineOpen_top V.toScheme⟩ htop
  rw [ι_appLE_self_top_eq_topIso_inv V htop] at key
  have h' : I.comap V.ι = ⊤ := h
  rw [h'] at key
  have h0 : ((⊤ : V.toScheme.IdealSheafData).ideal ⟨⊤, isAffineOpen_top V.toScheme⟩) = ⊤ := by
    simp
  rw [h0] at key
  rw [Ideal.eq_top_iff_one]
  have hone : (1 : Γ(V.toScheme, ⊤)) ∈ Ideal.map V.topIso.inv.hom (I.ideal ⟨V, hV⟩) := by
    rw [← key]
    exact Submodule.mem_top
  have hsurj : Function.Surjective V.topIso.inv.hom :=
    V.topIso.symm.commRingCatIsoToRingEquiv.surjective
  have hinj : Function.Injective V.topIso.inv.hom :=
    V.topIso.symm.commRingCatIsoToRingEquiv.injective
  obtain ⟨a, haI, hfa⟩ :=
    (Ideal.mem_map_iff_of_surjective _ hsurj).mp hone
  have ha1 : a = 1 := hinj (by rw [hfa, map_one])
  exact ha1 ▸ haI

private theorem restrictIdeal_eq_top_of_le_of_eq_top {Y : Scheme.{u}} (I : Y.IdealSheafData) {U V : Y.Opens}
    (hVU : V ≤ U) (h : restrictIdeal I U = ⊤) : restrictIdeal I V = ⊤ := by
  have e1 : I.comap V.ι = (I.comap U.ι).comap (Y.homOfLE hVU) := by
    rw [← Scheme.IdealSheafData.comap_comp, Scheme.homOfLE_ι]
  have h' : I.comap U.ι = ⊤ := h
  show I.comap V.ι = ⊤
  rw [e1, h']
  simp

private theorem restrictIdeal_eq_coordIdeal_restrict {X₁ : Scheme.{u}} {K : Type u} [Field K]
    {q : X₁ ⟶ Spec (CommRingCat.of K)} {U V : X₁.Opens} (hVU : V ≤ U) {m : ℕ}
    (c : EtaleChart q U m) (I : X₁.IdealSheafData) (S : Finset (Fin m))
    (h : restrictIdeal I U = c.coordIdeal S) :
    restrictIdeal I V = (c.restrict hVU).coordIdeal S := by
  have h' : I.comap U.ι = (coordSubspaceIdeal K m S).comap c.map := by
    rw [← restrictIdeal_eq_comap_ι, h, EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal]
  rw [restrictIdeal_eq_comap_ι, EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal, EtaleChart.restrict_map,
    Scheme.IdealSheafData.comap_comp, ← h', ← Scheme.IdealSheafData.comap_comp,
    Scheme.homOfLE_ι]

private theorem mem_span_X_of_mul_X_mem {σ : Type u} {K : Type u} [Field K]
    {j s : σ} (hjs : j ≠ s) (r : MvPolynomial σ K)
    (hr : MvPolynomial.X s * r ∈ Ideal.span {(MvPolynomial.X j : MvPolynomial σ K)}) :
    r ∈ Ideal.span {(MvPolynomial.X j : MvPolynomial σ K)} := by
  classical
  obtain ⟨ψ, hψC, hψXj, hψXi⟩ : ∃ ψ : MvPolynomial σ K →+* MvPolynomial σ K,
      (∀ a : K, ψ (MvPolynomial.C a) = MvPolynomial.C a) ∧
        ψ (MvPolynomial.X j) = 0 ∧
        ∀ i : σ, i ≠ j → ψ (MvPolynomial.X i) = MvPolynomial.X i := by
    refine ⟨MvPolynomial.eval₂Hom (MvPolynomial.C : K →+* MvPolynomial σ K)
        (fun i : σ => if i = j then (0 : MvPolynomial σ K) else MvPolynomial.X i), ?_, ?_, ?_⟩
    · intro a
      simp
    · simp
    · intro i hi
      simp [hi]
  have hXjmem : (MvPolynomial.X j : MvPolynomial σ K)
      ∈ Ideal.span {(MvPolynomial.X j : MvPolynomial σ K)} := Ideal.mem_span_singleton_self _
  have key : (Ideal.Quotient.mk (Ideal.span {(MvPolynomial.X j : MvPolynomial σ K)})).comp ψ
      = Ideal.Quotient.mk (Ideal.span {(MvPolynomial.X j : MvPolynomial σ K)}) := by
    apply MvPolynomial.ringHom_ext
    · intro a
      rw [RingHom.comp_apply, hψC]
    · intro i
      rw [RingHom.comp_apply]
      by_cases h : i = j
      · subst h
        rw [hψXj, map_zero]
        exact (Ideal.Quotient.eq_zero_iff_mem.mpr hXjmem).symm
      · rw [hψXi i h]
  obtain ⟨t, ht⟩ := Ideal.mem_span_singleton.mp hr
  have h0 : ψ (MvPolynomial.X s * r) = 0 := by
    rw [ht, map_mul, hψXj, zero_mul]
  rw [map_mul, hψXi s (Ne.symm hjs)] at h0
  have hXs : (MvPolynomial.X s : MvPolynomial σ K) ≠ 0 := MvPolynomial.X_ne_zero _
  have hψr : ψ r = 0 := by
    rcases mul_eq_zero.mp h0 with h | h
    · exact absurd h hXs
    · exact h
  have h3 := DFunLike.congr_fun key r
  rw [RingHom.comp_apply, hψr, map_zero] at h3
  exact Ideal.Quotient.eq_zero_iff_mem.mp h3.symm

private theorem quotient_span_X_mul_X_cancel {σ : Type u} {K : Type u} [Field K] {j s : σ} (hjs : j ≠ s)
    (a b : MvPolynomial σ K ⧸ Ideal.span {(MvPolynomial.X j : MvPolynomial σ K)})
    (h : (Ideal.Quotient.mk (Ideal.span {(MvPolynomial.X j : MvPolynomial σ K)}))
            (MvPolynomial.X s) * a
        = (Ideal.Quotient.mk (Ideal.span {(MvPolynomial.X j : MvPolynomial σ K)}))
            (MvPolynomial.X s) * b) : a = b := by
  obtain ⟨a', rfl⟩ := Ideal.Quotient.mk_surjective a
  obtain ⟨b', rfl⟩ := Ideal.Quotient.mk_surjective b
  rw [← map_mul, ← map_mul, Ideal.Quotient.eq, ← mul_sub] at h
  exact Ideal.Quotient.eq.mpr (mem_span_X_of_mul_X_mem hjs (a' - b') h)

private theorem mem_map_of_mul_mem_of_etale {Pr A : Type u} [CommRing Pr] [CommRing A]
    {f : Pr →+* A} (hf : f.Etale) (I : Ideal Pr) (w : Pr)
    (hw : ∀ a b : Pr ⧸ I,
      (Ideal.Quotient.mk I) w * a = (Ideal.Quotient.mk I) w * b → a = b)
    (x : A) (hx : f w * x ∈ Ideal.map f I) : x ∈ Ideal.map f I := by
  have hg : (Ideal.quotientMap (Ideal.map f I) f Ideal.le_comap_map).Etale :=
    etale_quotientMap hf I
  have hy : (Ideal.quotientMap (Ideal.map f I) f Ideal.le_comap_map)
        ((Ideal.Quotient.mk I) w) * (Ideal.Quotient.mk (Ideal.map f I)) x = 0 := by
    rw [Ideal.quotientMap_mk, ← map_mul]
    exact Ideal.Quotient.eq_zero_iff_mem.mpr hx
  let algInst : Algebra (Pr ⧸ I) (A ⧸ Ideal.map f I) :=
    (Ideal.quotientMap (Ideal.map f I) f Ideal.le_comap_map).toAlgebra
  have instEt : Algebra.Etale (Pr ⧸ I) (A ⧸ Ideal.map f I) := hg
  have instFlat : Module.Flat (Pr ⧸ I) (A ⧸ Ideal.map f I) := inferInstance
  have hreg : IsSMulRegular (Pr ⧸ I) ((Ideal.Quotient.mk I) w) := fun a b h => hw a b h
  have hregA : IsSMulRegular (A ⧸ Ideal.map f I) ((Ideal.Quotient.mk I) w) := hreg.of_flat
  have hsmul : (Ideal.Quotient.mk I) w • (Ideal.Quotient.mk (Ideal.map f I)) x
      = (Ideal.Quotient.mk I) w • (0 : A ⧸ Ideal.map f I) := by
    rw [smul_zero]
    exact hy
  exact Ideal.Quotient.eq_zero_iff_mem.mp (hregA hsmul)

private theorem span_coord_eq_top_of_mem_span {X₁ : Scheme.{u}} {K : Type u} [Field K]
    {q : X₁ ⟶ Spec (CommRingCat.of K)} {V : X₁.Opens} (hV : IsAffineOpen V) {m : ℕ}
    (c : EtaleChart q V m) {j s : Fin m} (hjs : j ≠ s)
    (hmem : c.coord s ∈ Ideal.span {c.coord j}) :
    Ideal.span {c.coord j} = (⊤ : Ideal Γ(X₁, V)) := by
  classical
  have hmapspan : Ideal.map c.coordRingHom
      (Ideal.span {(MvPolynomial.X (ULift.up j) : MvPolynomial (ULift.{u} (Fin m)) K)})
      = Ideal.span {c.coord j} := by
    rw [Ideal.map_span, Set.image_singleton, c.coordRingHom_X]
  have hju : (ULift.up j : ULift.{u} (Fin m)) ≠ ULift.up s := by
    intro h
    exact hjs (congrArg ULift.down h)
  have hu : ∀ a b : MvPolynomial (ULift.{u} (Fin m)) K ⧸
        Ideal.span {(MvPolynomial.X (ULift.up j) : MvPolynomial (ULift.{u} (Fin m)) K)},
      (Ideal.Quotient.mk
          (Ideal.span {(MvPolynomial.X (ULift.up j) : MvPolynomial (ULift.{u} (Fin m)) K)}))
          (MvPolynomial.X (ULift.up s)) * a
        = (Ideal.Quotient.mk
          (Ideal.span {(MvPolynomial.X (ULift.up j) : MvPolynomial (ULift.{u} (Fin m)) K)}))
          (MvPolynomial.X (ULift.up s)) * b → a = b :=
    fun a b h => quotient_span_X_mul_X_cancel hju a b h
  have hx' : c.coordRingHom (MvPolynomial.X (ULift.up s)) * 1
      ∈ Ideal.map c.coordRingHom
        (Ideal.span {(MvPolynomial.X (ULift.up j) : MvPolynomial (ULift.{u} (Fin m)) K)}) := by
    rw [hmapspan, c.coordRingHom_X, mul_one]
    exact hmem
  have hfin := mem_map_of_mul_mem_of_etale (c.coordRingHom_etale hV)
    (Ideal.span {(MvPolynomial.X (ULift.up j) : MvPolynomial (ULift.{u} (Fin m)) K)})
    (MvPolynomial.X (ULift.up s)) hu 1 hx'
  rw [hmapspan] at hfin
  exact (Ideal.eq_top_iff_one _).mpr hfin

theorem hasStrictNormalCrossingsWith_ker_cons_of_hasLocalCoordsOnSmoothHypersurface [CharZero k] (p : P ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.Smooth p] (H : P.IdealSheafData) (N : List P.IdealSheafData)
    (Z : H.subscheme.IdealSheafData)
    (hN : InStrictNormalCrossingPosition p (H :: N))
    (_hZ : HasStrictNormalCrossingsWith (H.subschemeι ≫ p) Z (N.map fun D => D.comap H.subschemeι))
    (hdata : HasLocalCoordsOnSmoothHypersurface p H N Z) :
    HasStrictNormalCrossingsWith p (Z.subschemeι ≫ H.subschemeι).ker (H :: N) := by
  classical
  refine hasStrictNormalCrossingsWith_of_forall_exists_etaleChart ?_
  intro x hx
  obtain ⟨U, hU, hxU, n, c, j₀, lab, S, h1, h2, h3, h4, h5⟩ := hdata x hx
  obtain ⟨-, hNpos⟩ := (inStrictNormalCrossingPosition_iff p (H :: N)).mp hN
  have hclash : ∀ i : ℕ, i < N.length → lab i ≠ some j₀ := by
    intro i hi hlabi
    obtain ⟨U', hxU', m', c', a', hinj', hnone', hsome'⟩ := (hNpos x).exists_etaleChart
    obtain ⟨V, hVb, hxV, hVle⟩ :=
      TopologicalSpace.Opens.isBasis_iff_nbhd.mp P.isBasis_affineOpens
        (show x ∈ U ⊓ U' from ⟨hxU, hxU'⟩)
    have hV : IsAffineOpen V := hVb
    have hVU : V ≤ U := le_trans hVle inf_le_left
    have hVU' : V ≤ U' := le_trans hVle inf_le_right
    have hEqU : restrictIdeal (N[i]'hi) U = restrictIdeal H U := by
      rw [h3 i hi j₀ hlabi, h1]
    have hEqV : restrictIdeal (N[i]'hi) V = restrictIdeal H V :=
      restrictIdeal_eq_of_le_of_eq hVU hEqU
    have hKne : (Z.subschemeι ≫ H.subschemeι).ker.ideal ⟨V, hV⟩ ≠ ⊤ :=
      ideal_ne_top_of_mem_support _ hV hxV hx
    have hproper : H.ideal ⟨V, hV⟩ ≠ ⊤ := by
      intro htop
      have hle := le_ker_comp_subschemeι H Z ⟨V, hV⟩
      rw [htop] at hle
      exact hKne (top_le_iff.mp hle)
    have hlen0 : 0 < (H :: N).length := by simp
    have hleni : i + 1 < (H :: N).length := by simpa using hi
    cases hop : a' 0 with
    | none =>
      have hHtop : restrictIdeal H U' = ⊤ := by simpa using hnone' 0 hlen0 hop
      exact hproper (ideal_eq_top_of_restrictIdeal_eq_top H hV
        (restrictIdeal_eq_top_of_le_of_eq_top H hVU' hHtop))
    | some t₀ =>
      cases hop1 : a' (i + 1) with
      | none =>
        have hNtop : restrictIdeal (N[i]'hi) U' = ⊤ := by
          simpa using hnone' (i + 1) hleni hop1
        have hVtop : restrictIdeal (N[i]'hi) V = ⊤ := restrictIdeal_eq_top_of_le_of_eq_top _ hVU' hNtop
        rw [hEqV] at hVtop
        exact hproper (ideal_eq_top_of_restrictIdeal_eq_top H hV hVtop)
      | some t₁ =>
        have hne : t₀ ≠ t₁ := by
          intro hteq
          have h00 := hinj' 0 hlen0 (i + 1) hleni t₀ hop (by rw [hop1, hteq])
          exact absurd h00 (by omega)
        have hHU' : restrictIdeal H U' = c'.coordIdeal {t₀} := by
          simpa using hsome' 0 hlen0 t₀ hop
        have hNU' : restrictIdeal (N[i]'hi) U' = c'.coordIdeal {t₁} := by
          simpa using hsome' (i + 1) hleni t₁ hop1
        have hHV1 : restrictIdeal H V = (c'.restrict hVU').coordIdeal {t₀} :=
          restrictIdeal_eq_coordIdeal_restrict hVU' c' H {t₀} hHU'
        have hHV2 : restrictIdeal H V = (c'.restrict hVU').coordIdeal {t₁} := by
          rw [← hEqV]
          exact restrictIdeal_eq_coordIdeal_restrict hVU' c' (N[i]'hi) {t₁} hNU'
        have hA : H.ideal ⟨V, hV⟩ = Ideal.span {(c'.restrict hVU').coord t₀} := by
          simpa using (c'.restrict hVU').ideal_eq_span_coord hV H {t₀} hHV1
        have hB : H.ideal ⟨V, hV⟩ = Ideal.span {(c'.restrict hVU').coord t₁} := by
          simpa using (c'.restrict hVU').ideal_eq_span_coord hV H {t₁} hHV2
        have hmem : (c'.restrict hVU').coord t₁
            ∈ Ideal.span {(c'.restrict hVU').coord t₀} := by
          rw [← hA, hB]
          exact Ideal.mem_span_singleton_self _
        exact hproper (hA.trans (span_coord_eq_top_of_mem_span hV (c'.restrict hVU') hne hmem))
  obtain ⟨a, ha0, has⟩ : ∃ a : ℕ → Option (Fin n), a 0 = some j₀ ∧ ∀ i, a (i + 1) = lab i :=
    ⟨fun i => if i = 0 then some j₀ else lab (i - 1), if_pos rfl, fun i => by
      show (if i + 1 = 0 then some j₀ else lab (i + 1 - 1)) = lab i
      rw [if_neg (by omega : ¬ (i + 1 = 0)), Nat.add_sub_cancel]⟩
  refine ⟨U, hxU, n, c, a, insert j₀ S, ?_, ?_, ?_, ?_⟩
  · intro i hi j hj t hti htj
    cases i with
    | zero =>
      cases j with
      | zero => rfl
      | succ j' =>
        have heq : j₀ = t := by
          rw [ha0] at hti
          exact Option.some.inj hti
        rw [has j'] at htj
        rw [← heq] at htj
        exact absurd htj (hclash j' (by simpa using hj))
    | succ i' =>
      cases j with
      | zero =>
        have heq : j₀ = t := by
          rw [ha0] at htj
          exact Option.some.inj htj
        rw [has i'] at hti
        rw [← heq] at hti
        exact absurd hti (hclash i' (by simpa using hi))
      | succ j' =>
        rw [has i'] at hti
        rw [has j'] at htj
        have hij := h4 i' j' (by simpa using hi) (by simpa using hj) t hti htj
        omega
  · intro i hi hn
    cases i with
    | zero =>
      rw [ha0] at hn
      exact absurd hn (by simp)
    | succ i' =>
      rw [has i'] at hn
      have hi' : i' < N.length := by simpa using hi
      simpa using h2 i' hi' hn
  · intro i hi t ht
    cases i with
    | zero =>
      have heq : j₀ = t := by
        rw [ha0] at ht
        exact Option.some.inj ht
      rw [← heq]
      simpa using h1
    | succ i' =>
      rw [has i'] at ht
      have hi' : i' < N.length := by simpa using hi
      simpa using h3 i' hi' t ht
  · exact restrictIdeal_eq_coordIdeal_of_isAffineOpen_ideal_eq_span c hU _ (insert j₀ S)
      (ker_comp_subschemeι_ideal_eq_span_coord p H Z hU c j₀ S h1 h5)

end

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothHypersurfaceLocalCoordinates =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.DerivationLiftAndDeterminant =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.DerivationLiftAndDeterminant", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.ChartRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\npublic import Mathlib.RingTheory.Flat.TorsionFree\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory Opposite AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

section

private theorem algebraMap_mem_nonZeroDivisors_of_flat {R A : Type u} [CommRing R]
    [CommRing A] [Algebra R A] [Module.Flat R A] {r : R} (hr : r ∈ nonZeroDivisors R) :
    algebraMap R A r ∈ nonZeroDivisors A := by
  have key : ∀ x : A, algebraMap R A r * x = 0 → x = 0 := by
    intro x hx
    have hsm : r • x = r • (0 : A) := by
      rw [smul_zero, Algebra.smul_def]
      exact hx
    exact Module.Flat.isSMulRegular_of_nonZeroDivisors hr hsm
  rw [mem_nonZeroDivisors_iff]
  exact ⟨key, fun x hx => key x (by rw [mul_comm]; exact hx)⟩

private theorem coord_mem_nonZeroDivisors_of_isAffineOpen {X : Scheme.{u}} {k : Type u} [Field k]
    {p : X ⟶ Spec (CommRingCat.of k)} {U : X.Opens} {m : ℕ} (hU : IsAffineOpen U)
    (c : EtaleChart p U m) (j : Fin m) :
    c.coord j ∈ nonZeroDivisors ↑(X.presheaf.obj (op U)) := by
  let _ : Algebra (MvPolynomial (ULift.{u} (Fin m)) k) ↑(X.presheaf.obj (op U)) := c.algebra
  have : Algebra.Etale (MvPolynomial (ULift.{u} (Fin m)) k) ↑(X.presheaf.obj (op U)) :=
    c.algebra_etale hU
  have : Module.Flat (MvPolynomial (ULift.{u} (Fin m)) k) ↑(X.presheaf.obj (op U)) :=
    inferInstance
  have halg : (algebraMap (MvPolynomial (ULift.{u} (Fin m)) k) ↑(X.presheaf.obj (op U)))
      = c.coordRingHom := c.algebraMap_eq_coordRingHom
  have hXne : (MvPolynomial.X (ULift.up.{u} j) : MvPolynomial (ULift.{u} (Fin m)) k) ≠ 0 :=
    MvPolynomial.X_ne_zero _
  have hXnzd : (MvPolynomial.X (ULift.up.{u} j) : MvPolynomial (ULift.{u} (Fin m)) k)
      ∈ nonZeroDivisors (MvPolynomial (ULift.{u} (Fin m)) k) :=
    mem_nonZeroDivisors_of_ne_zero hXne
  have key : (algebraMap (MvPolynomial (ULift.{u} (Fin m)) k) ↑(X.presheaf.obj (op U)))
      (MvPolynomial.X (ULift.up.{u} j)) ∈ nonZeroDivisors ↑(X.presheaf.obj (op U)) :=
    algebraMap_mem_nonZeroDivisors_of_flat hXnzd
  rw [halg] at key
  rwa [c.coordRingHom_X j] at key

end

section

variable {R : Type*} [CommRing R]

theorem exists_unit_mul_of_span_eq {a b : R} (hb : b ∈ nonZeroDivisors R)
    (h : Ideal.span ({a} : Set R) = Ideal.span ({b} : Set R)) :
    ∃ u : Rˣ, a = (u : R) * b := by
  have ha : a ∈ Ideal.span ({b} : Set R) := by
    rw [← h]
    exact Ideal.mem_span_singleton_self a
  have hb' : b ∈ Ideal.span ({a} : Set R) := by
    rw [h]
    exact Ideal.mem_span_singleton_self b
  obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.mp ha
  obtain ⟨d, hd⟩ := Ideal.mem_span_singleton'.mp hb'
  have hcancel : ∀ z : R, z * b = 0 → z = 0 := (mem_nonZeroDivisors_iff.mp hb).2
  have hzero : (d * c - 1) * b = 0 := by
    have hx : d * c * b = b := by rw [mul_assoc, hc, hd]
    rw [sub_mul, one_mul, hx, sub_self]
  have hdc : d * c = 1 := sub_eq_zero.mp (hcancel _ hzero)
  refine ⟨⟨c, d, by rw [mul_comm]; exact hdc, hdc⟩, hc.symm⟩

end

section

variable {k R S : Type*} [CommRing k] [CommRing R] [CommRing S] [Algebra k R] [Algebra k S]

theorem derivation_mapsTo_span_self {B : Type*} [CommRing B] [Algebra k B]
    (D : Derivation k B B) (h : B) (hD : D h = 0) :
    ∀ x ∈ Ideal.span ({h} : Set B), D x ∈ Ideal.span ({h} : Set B) := by
  intro x hx
  obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp hx
  rw [Derivation.leibniz, hD, smul_zero, zero_add, smul_eq_mul]
  exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self h)

theorem algHom_map_derivation_eq_zero (π : R →ₐ[k] S) (h : R)
    (hker : RingHom.ker π.toRingHom = Ideal.span ({h} : Set R))
    (D : Derivation k R R) (hD : D h = 0) :
    ∀ r : R, π r = 0 → π (D r) = 0 := by
  intro r hr
  have hrk : r ∈ Ideal.span ({h} : Set R) := by
    rw [← hker]
    exact hr
  have h2 : D r ∈ Ideal.span ({h} : Set R) := derivation_mapsTo_span_self D h hD r hrk
  rw [← hker] at h2
  have h3 : π.toRingHom (D r) = 0 := RingHom.mem_ker.mp h2
  exact h3

def liftDerivationOfKerEqSpan (π : R →ₐ[k] S) (hπ : Function.Surjective π) (h : R)
    (hker : RingHom.ker π.toRingHom = Ideal.span ({h} : Set R))
    (D : Derivation k R R) (hD : D h = 0) : Derivation k S S :=
  D.liftOfSurjective hπ (algHom_map_derivation_eq_zero π h hker D hD)

theorem liftDerivationOfKerEqSpan_apply (π : R →ₐ[k] S) (hπ : Function.Surjective π)
    (h : R) (hker : RingHom.ker π.toRingHom = Ideal.span ({h} : Set R))
    (D : Derivation k R R) (hD : D h = 0) (r : R) :
    liftDerivationOfKerEqSpan π hπ h hker D hD (π r) = π (D r) :=
  D.liftOfSurjective_apply hπ (algHom_map_derivation_eq_zero π h hker D hD) r

end

section

variable {R : Type*} [CommRing R] {ι : Type*} [Fintype ι] [DecidableEq ι] {n : ℕ}

private theorem det_eq_det_submatrix_succ (M : Matrix (Fin (n + 1)) (Fin (n + 1)) R)
    (h : ∀ b : Fin (n + 1), M 0 b = if b = 0 then (1 : R) else 0) :
    M.det = (M.submatrix Fin.succ Fin.succ).det := by
  rw [Matrix.det_succ_row_zero]
  rw [Finset.sum_eq_single (0 : Fin (n + 1))]
  · simp [h, Fin.succAbove_zero]
  · intro b _ hb
    simp [h b, hb]
  · intro hb
    exact absurd (Finset.mem_univ (0 : Fin (n + 1))) hb

theorem det_eq_det_submatrix_of_row_eq_single (e : ι ≃ Fin (n + 1)) (M : Matrix ι ι R)
    (h : ∀ b : ι, M (e.symm 0) b = if b = e.symm 0 then (1 : R) else 0) :
    M.det =
      (M.submatrix (fun i : Fin n => e.symm i.succ) (fun i : Fin n => e.symm i.succ)).det := by
  have hN : ∀ b : Fin (n + 1),
      (M.submatrix e.symm e.symm) 0 b = if b = 0 then (1 : R) else 0 := by
    intro b
    simp only [Matrix.submatrix_apply]
    rw [h (e.symm b)]
    by_cases hb : b = 0
    · simp [hb]
    · have hne : ¬ (e.symm b = e.symm 0) := fun hc => hb (e.symm.injective hc)
      rw [if_neg hne, if_neg hb]
  have h2 := det_eq_det_submatrix_succ (M.submatrix e.symm e.symm) hN
  rw [Matrix.det_submatrix_equiv_self] at h2
  rw [h2, Matrix.submatrix_submatrix]
  rfl

theorem det_eq_det_submatrix_of_col_eq_single (e : ι ≃ Fin (n + 1)) (M : Matrix ι ι R)
    (h : ∀ a : ι, M a (e.symm 0) = if a = e.symm 0 then (1 : R) else 0) :
    M.det =
      (M.submatrix (fun i : Fin n => e.symm i.succ) (fun i : Fin n => e.symm i.succ)).det := by
  have h' : ∀ b : ι, M.transpose (e.symm 0) b = if b = e.symm 0 then (1 : R) else 0 :=
    fun b => h b
  have h1 := det_eq_det_submatrix_of_row_eq_single e M.transpose h'
  rw [Matrix.det_transpose] at h1
  rw [h1, ← Matrix.transpose_submatrix, Matrix.det_transpose]

end

section

variable {X : Scheme.{u}} {k : Type u} [Field k]

theorem exists_unit_mul_coord_of_span_eq (p : X ⟶ Spec (CommRingCat.of k)) {U : X.Opens}
    (hU : IsAffineOpen U) {n : ℕ} (c : EtaleChart p U n) (j : Fin n) (g : Γ(X, U))
    (h : Ideal.span ({g} : Set Γ(X, U)) = Ideal.span ({c.coord j} : Set Γ(X, U))) :
    ∃ v : (Γ(X, U))ˣ, g = (v : Γ(X, U)) * c.coord j :=
  exists_unit_mul_of_span_eq (coord_mem_nonZeroDivisors_of_isAffineOpen hU c j) h

end

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.DerivationLiftAndDeterminant =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsHypersurfaceRestriction =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsHypersurfaceRestriction", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothHypersurfaceLocalCoordinates\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafSmoothPullback\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.DerivationLiftAndDeterminant\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.JacobianChartChange\nimport Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothCenterChart\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsChartNormalization\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformSubscheme\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory Opposite AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem appLE_preimage_naturality {Y Q : Scheme.{u}} (f : Y ⟶ Q) {A B : Q.Opens}
    (h : B ≤ A) (h' : f ⁻¹ᵁ B ≤ f ⁻¹ᵁ A) (z : Γ(Q, A)) :
    (f.appLE B (f ⁻¹ᵁ B) le_rfl).hom ((Q.presheaf.map (homOfLE h).op).hom z)
      = (Y.presheaf.map (homOfLE h').op).hom ((f.appLE A (f ⁻¹ᵁ A) le_rfl).hom z) := by
  have key : Q.presheaf.map (homOfLE h).op ≫ f.appLE B (f ⁻¹ᵁ B) le_rfl
      = f.appLE A (f ⁻¹ᵁ A) le_rfl ≫ Y.presheaf.map (homOfLE h').op := by
    rw [Scheme.Hom.map_appLE, Scheme.Hom.appLE_map]
  have h2 := congrArg (fun φ : Γ(Q, A) ⟶ Γ(Y, f ⁻¹ᵁ B) => CommRingCat.Hom.hom φ z) key
  simp only [CommRingCat.hom_comp, RingHom.coe_comp, Function.comp_apply] at h2
  exact h2

section

variable {k : Type*} [CommRing k] {ι : Type*} [Fintype ι] [DecidableEq ι]

theorem det_derivation_mul_sub_mem_of_eq_one_or_mem {B : Type*} [CommRing B] [Algebra k B]
    (δ : ι → Derivation k B B) (v x : ι → B) (m : Ideal B)
    (h : ∀ b : ι, v b = 1 ∨ x b ∈ m) :
    (Matrix.of fun a b : ι => δ a (v b * x b)).det
        - (Matrix.of fun a b : ι => δ a (x b)).det * ∏ b : ι, v b ∈ m := by
  have hmat : (Matrix.of fun a b : ι => (Ideal.Quotient.mk m) (δ a (v b * x b)))
      = (Matrix.of fun a b : ι => (Ideal.Quotient.mk m) (δ a (x b)))
        * Matrix.diagonal (fun b : ι => (Ideal.Quotient.mk m) (v b)) := by
    ext a b
    rcases h b with hv | hxb
    · simp [Matrix.mul_diagonal, hv]
    · have hx0 : (Ideal.Quotient.mk m) (x b) = 0 := Ideal.Quotient.eq_zero_iff_mem.mpr hxb
      simp [Matrix.mul_diagonal, Derivation.leibniz, hx0, mul_comm]
  have h1 : (Ideal.Quotient.mk m) (Matrix.of fun a b : ι => δ a (v b * x b)).det
      = (Matrix.of fun a b : ι => (Ideal.Quotient.mk m) (δ a (v b * x b))).det := by
    rw [RingHom.map_det]
    rfl
  have h2 : (Ideal.Quotient.mk m) (Matrix.of fun a b : ι => δ a (x b)).det
      = (Matrix.of fun a b : ι => (Ideal.Quotient.mk m) (δ a (x b))).det := by
    rw [RingHom.map_det]
    rfl
  rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_mul, map_prod, h1, h2, hmat,
    Matrix.det_mul, Matrix.det_diagonal, sub_self]

theorem det_derivation_notMem_comap_of_eq_one_or_mem {R S : Type*} [CommRing R] [CommRing S]
    [Algebra k R] [Algebra k S] (q : R →+* S) (δ : ι → Derivation k R R)
    (δ' : ι → Derivation k S S)
    (hcompat : ∀ (a : ι) (r : R), q (δ a r) = δ' a (q r))
    (f : ι → R) (v : ι → Sˣ) (x : ι → S)
    (hf : ∀ b : ι, q (f b) = (v b : S) * x b)
    (m : Ideal S) (hm : m ≠ ⊤)
    (h : ∀ b : ι, v b = 1 ∨ x b ∈ m)
    (hdet : IsUnit (Matrix.of fun a b : ι => δ' a (x b)).det) :
    (Matrix.of fun a b : ι => δ a (f b)).det ∉ Ideal.comap q m := by
  intro hcon
  rw [Ideal.mem_comap] at hcon
  have hmat : q.mapMatrix (Matrix.of fun a b : ι => δ a (f b))
      = Matrix.of fun a b : ι => δ' a ((v b : S) * x b) := by
    ext a b
    show q (δ a (f b)) = δ' a ((v b : S) * x b)
    rw [hcompat, hf]
  have hq : q (Matrix.of fun a b : ι => δ a (f b)).det
      = (Matrix.of fun a b : ι => δ' a ((v b : S) * x b)).det := by
    rw [RingHom.map_det, hmat]
  rw [hq] at hcon
  have hv1 : ∀ b : ι, ((v b : S)) = 1 ∨ x b ∈ m := by
    intro b
    rcases h b with hb | hb
    · exact Or.inl (by rw [hb, Units.val_one])
    · exact Or.inr hb
  have h3 := det_derivation_mul_sub_mem_of_eq_one_or_mem (k := k) δ' (fun b : ι => ((v b : S))) x m hv1
  have h4 : (Matrix.of fun a b : ι => δ' a (x b)).det * ∏ b : ι, ((v b : S)) ∈ m := by
    have h5 := Ideal.sub_mem m hcon h3
    simpa using h5
  have hp : IsUnit (∏ b : ι, ((v b : S))) :=
    Finset.prod_induction (fun b : ι => ((v b : S))) IsUnit (fun r s hr hs => hr.mul hs)
      isUnit_one fun b _ => (v b).isUnit
  exact hm (Ideal.eq_top_of_isUnit_mem m h4 (hdet.mul hp))

end

theorem basisKaehler_det_eq_jacobian_det (k : Type*) [CommRing k] (ι : Type*) [Fintype ι]
    [DecidableEq ι] (S : Type*) [CommRing S] [Algebra (MvPolynomial ι k) S] [Algebra k S]
    [IsScalarTower k (MvPolynomial ι k) S] [Algebra.FormallyEtale (MvPolynomial ι k) S]
    (w : ι → S) :
    (EtaleCoordinates.basisKaehler k ι S).det
        (fun i : ι => KaehlerDifferential.D k S (w i)) =
      (Matrix.of fun i j : ι => EtaleCoordinates.partialDeriv k ι S i (w j)).det := by
  have hM : (EtaleCoordinates.basisKaehler k ι S).toMatrix
        (fun i : ι => KaehlerDifferential.D k S (w i))
      = Matrix.of fun i j : ι => EtaleCoordinates.partialDeriv k ι S i (w j) := by
    ext i j
    simp only [Matrix.of_apply, Module.Basis.toMatrix_apply]
    rw [EtaleCoordinates.partialDeriv_apply]
  rw [Module.Basis.det_apply, hM]

private theorem primeIdealOf_eq_comap_primeIdealOf {Y Q : Scheme.{u}} (f : Y ⟶ Q) {U : Q.Opens}
    (hU : IsAffineOpen U) (hW : IsAffineOpen (f ⁻¹ᵁ U)) {y : Y} (hy : y ∈ f ⁻¹ᵁ U) :
    (hU.primeIdealOf ⟨f.base y, hy⟩).asIdeal
      = Ideal.comap (Scheme.Hom.app f U).hom (hW.primeIdealOf ⟨y, hy⟩).asIdeal := by
  have hbo : ∀ s : Γ(Q, U),
      f ⁻¹ᵁ Q.basicOpen s = Y.basicOpen ((Scheme.Hom.app f U).hom s) := by
    intro s
    simp
  ext s
  simp only [Ideal.mem_comap]
  constructor
  · intro hs
    by_contra hcon
    have hyb : y ∈ Y.basicOpen ((Scheme.Hom.app f U).hom s) :=
      mem_basicOpen_of_notMem_primeIdealOf hW hy _ hcon
    rw [← hbo s] at hyb
    exact notMem_basicOpen_of_mem_primeIdealOf hU hy s hs hyb
  · intro hs
    by_contra hcon
    have hxb : f.base y ∈ Q.basicOpen s :=
      mem_basicOpen_of_notMem_primeIdealOf hU hy s hcon
    have hyb : y ∈ f ⁻¹ᵁ Q.basicOpen s := hxb
    rw [hbo s] at hyb
    exact notMem_basicOpen_of_mem_primeIdealOf hW hy _ hs hyb

private theorem exists_subschemeι_base_eq_of_mem_support {Q : Scheme.{u}} (H : Q.IdealSheafData)
    {x : ↥Q} (hx : x ∈ H.support) : ∃ y : ↥H.subscheme, H.subschemeι.base y = x :=
  (Scheme.IdealSheafData.range_subschemeι H).ge hx

private theorem exists_basicOpen_subschemeι_preimage_le {Q : Scheme.{u}} (H : Q.IdealSheafData) {U : Q.Opens}
    (hU : IsAffineOpen U) (V : H.subscheme.Opens) {y : ↥H.subscheme}
    (hyU : y ∈ H.subschemeι ⁻¹ᵁ U) (hyV : y ∈ V) :
    ∃ f : Γ(Q, U), y ∈ H.subschemeι ⁻¹ᵁ (Q.basicOpen f) ∧
      H.subschemeι ⁻¹ᵁ (Q.basicOpen f) ≤ V ∧ Q.basicOpen f ≤ U := by
  have hWaff : IsAffineOpen (H.subschemeι ⁻¹ᵁ U) := isAffineOpen_preimage_subschemeι H hU
  obtain ⟨g, hgle, hyg⟩ :=
    hWaff.exists_basicOpen_le (⟨y, ⟨hyV, hyU⟩⟩ : ↥(V ⊓ H.subschemeι ⁻¹ᵁ U)) hyU
  obtain ⟨f, hf⟩ := Scheme.IdealSheafData.subschemeι_app_surjective H ⟨U, hU⟩ g
  have hpre : H.subschemeι ⁻¹ᵁ (Q.basicOpen f) = H.subscheme.basicOpen g := by
    rw [← hf]
    simp
  refine ⟨f, ?_, ?_, Q.basicOpen_le f⟩
  · rw [hpre]
    exact hyg
  · rw [hpre]
    exact le_trans hgle inf_le_left

private theorem span_image_eq_of_isUnit_mul {R : Type*} [CommRing R] {ι : Type*} (s : Set ι)
    (a b : ι → R) (h : ∀ i ∈ s, ∃ u : R, IsUnit u ∧ a i = u * b i) :
    Ideal.span (a '' s) = Ideal.span (b '' s) := by
  apply le_antisymm
  · rw [Ideal.span_le]
    rintro z ⟨i, hi, rfl⟩
    obtain ⟨u, -, hu⟩ := h i hi
    rw [hu]
    exact Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨i, hi, rfl⟩)
  · rw [Ideal.span_le]
    rintro z ⟨i, hi, rfl⟩
    obtain ⟨u, hunit, hu⟩ := h i hi
    obtain ⟨u', hu'⟩ := hunit.exists_left_inv
    have hb : b i = u' * a i := by
      rw [hu, ← mul_assoc, hu', one_mul]
    rw [hb]
    exact Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨i, hi, rfl⟩)

private theorem exists_equiv_subtype_ne_compatible {n m : ℕ} (hnm : m + 1 = n) (j₀ : Fin n) (len : ℕ)
    (γ : ℕ → Option (Fin n)) (a' : ℕ → Option (Fin m))
    (hinjγ : ∀ i i' : ℕ, i < len → i' < len → ∀ j : Fin n,
      γ i = some j → γ i' = some j → i = i')
    (hinja : ∀ i i' : ℕ, i < len → i' < len → ∀ b : Fin m,
      a' i = some b → a' i' = some b → i = i')
    (hj₀ : ∀ i : ℕ, i < len → γ i ≠ some j₀)
    (hfwd : ∀ i : ℕ, i < len → ∀ j : Fin n, γ i = some j → ∃ b : Fin m, a' i = some b) :
    ∃ ρ : Fin m ≃ {j : Fin n // j ≠ j₀},
      ∀ i : ℕ, i < len → ∀ (j : Fin n) (b : Fin m), γ i = some j → a' i = some b →
        ((ρ b : Fin n) = j) := by
  classical
  have hQ : ∀ jj : {jj : {j : Fin n // j ≠ j₀} //
        ∃ i, i < len ∧ γ i = some ((jj : {j : Fin n // j ≠ j₀}) : Fin n)},
      ∃ b : Fin m, ∀ i, i < len →
        γ i = some (((jj : {j : Fin n // j ≠ j₀}) : Fin n)) → a' i = some b := by
    rintro ⟨jj, i₀, hi₀, hγ₀⟩
    obtain ⟨b, hb⟩ := hfwd i₀ hi₀ _ hγ₀
    refine ⟨b, ?_⟩
    intro i hi hγ
    have : i₀ = i := hinjγ i₀ i hi₀ hi _ hγ₀ hγ
    rw [← this]
    exact hb
  choose g hg using hQ
  have hginj : Function.Injective g := by
    intro j₁ j₂ hgj
    obtain ⟨i₁, hi₁, he₁⟩ := j₁.2
    obtain ⟨i₂, hi₂, he₂⟩ := j₂.2
    have h1 := hg j₁ i₁ hi₁ he₁
    have h2 : a' i₂ = some (g j₁) := by
      rw [hgj]
      exact hg j₂ i₂ hi₂ he₂
    have hii : i₁ = i₂ := hinja i₁ i₂ hi₁ hi₂ (g j₁) h1 h2
    subst hii
    have : (some (((j₁ : {j : Fin n // j ≠ j₀}) : Fin n)))
        = some (((j₂ : {j : Fin n // j ≠ j₀}) : Fin n)) := by rw [← he₁, ← he₂]
    exact Subtype.ext (Subtype.ext (Option.some.inj this))
  have he1 : ∃ e1 : {jj : {j : Fin n // j ≠ j₀} //
        ∃ i, i < len ∧ γ i = some ((jj : {j : Fin n // j ≠ j₀}) : Fin n)}
      ≃ {b : Fin m // ∃ jj, g jj = b}, ∀ jj, ((e1 jj : {b : Fin m // ∃ jj, g jj = b}) : Fin m)
        = g jj := by
    refine ⟨Equiv.ofBijective (fun jj => ⟨g jj, ⟨jj, rfl⟩⟩) ⟨?_, ?_⟩, fun jj => rfl⟩
    · intro a b hab
      exact hginj (congrArg Subtype.val hab)
    · rintro ⟨b, jj, rfl⟩
      exact ⟨jj, rfl⟩
  obtain ⟨e1, he1val⟩ := he1
  have hcardT : Fintype.card {j : Fin n // j ≠ j₀} = m := by
    have h1 : Fintype.card {j : Fin n // ¬ (j = j₀)}
        = Fintype.card (Fin n) - Fintype.card {j : Fin n // j = j₀} :=
      Fintype.card_subtype_compl _
    have h2 : Fintype.card {j : Fin n // j ≠ j₀} = n - 1 := by
      rw [show Fintype.card {j : Fin n // j ≠ j₀}
          = Fintype.card {j : Fin n // ¬ (j = j₀)} from rfl, h1, Fintype.card_subtype_eq,
        Fintype.card_fin]
    omega
  have hA : Fintype.card {jj : {j : Fin n // j ≠ j₀} //
        ¬ ∃ i, i < len ∧ γ i = some ((jj : {j : Fin n // j ≠ j₀}) : Fin n)}
      = Fintype.card {j : Fin n // j ≠ j₀}
        - Fintype.card {jj : {j : Fin n // j ≠ j₀} //
            ∃ i, i < len ∧ γ i = some ((jj : {j : Fin n // j ≠ j₀}) : Fin n)} :=
    Fintype.card_subtype_compl _
  have hB : Fintype.card {b : Fin m // ¬ ∃ jj, g jj = b}
      = Fintype.card (Fin m) - Fintype.card {b : Fin m // ∃ jj, g jj = b} :=
    Fintype.card_subtype_compl _
  have hcard1 := Fintype.card_congr e1
  have hcardm : Fintype.card (Fin m) = m := Fintype.card_fin m
  have hcompl : Fintype.card {jj : {j : Fin n // j ≠ j₀} //
        ¬ ∃ i, i < len ∧ γ i = some ((jj : {j : Fin n // j ≠ j₀}) : Fin n)}
      = Fintype.card {b : Fin m // ¬ ∃ jj, g jj = b} := by
    omega
  have e2 := Fintype.equivOfCardEq hcompl
  obtain ⟨σ, hσ⟩ : ∃ σ : {j : Fin n // j ≠ j₀} ≃ Fin m,
      ∀ (jj : {j : Fin n // j ≠ j₀})
        (hQ : ∃ i, i < len ∧ γ i = some ((jj : Fin n))), σ jj = g ⟨jj, hQ⟩ := by
    refine ⟨(Equiv.sumCompl (fun jj : {j : Fin n // j ≠ j₀} =>
        ∃ i, i < len ∧ γ i = some ((jj : Fin n)))).symm.trans
      ((e1.sumCongr e2).trans (Equiv.sumCompl (fun b : Fin m => ∃ jj, g jj = b))), ?_⟩
    intro jj hQ
    have hsymm : (Equiv.sumCompl (fun jj : {j : Fin n // j ≠ j₀} =>
        ∃ i, i < len ∧ γ i = some ((jj : Fin n)))).symm jj = Sum.inl ⟨jj, hQ⟩ := by
      apply (Equiv.sumCompl _).injective
      rw [Equiv.apply_symm_apply]
      rfl
    show (Equiv.sumCompl (fun b : Fin m => ∃ jj, g jj = b))
      ((e1.sumCongr e2) ((Equiv.sumCompl (fun jj : {j : Fin n // j ≠ j₀} =>
        ∃ i, i < len ∧ γ i = some ((jj : Fin n)))).symm jj)) = g ⟨jj, hQ⟩
    rw [hsymm]
    show ((e1 ⟨jj, hQ⟩ : {b : Fin m // ∃ jj, g jj = b}) : Fin m) = g ⟨jj, hQ⟩
    exact he1val ⟨jj, hQ⟩
  refine ⟨σ.symm, ?_⟩
  intro i hi j b hγ hb
  have hjne : j ≠ j₀ := by
    intro hcon
    exact hj₀ i hi (by rw [hγ, hcon])
  have hQj : ∃ i', i' < len ∧ γ i' = some (((⟨j, hjne⟩ : {j : Fin n // j ≠ j₀}) : Fin n)) :=
    ⟨i, hi, hγ⟩
  have hgb : g ⟨⟨j, hjne⟩, hQj⟩ = b :=
    Option.some.inj ((hg ⟨⟨j, hjne⟩, hQj⟩ i hi hγ).symm.trans hb)
  have hσb : σ ⟨j, hjne⟩ = b := by
    rw [hσ ⟨j, hjne⟩ hQj, hgb]
  have hfin : σ.symm b = ⟨j, hjne⟩ := by
    rw [← hσb, Equiv.symm_apply_apply]
  exact congrArg Subtype.val hfin

section

variable {X : Scheme.{u}} {k : Type u} [Field k]

private theorem appLE_subschemeι_chartPartialDeriv_complOrderEmb {p : X ⟶ Spec (CommRingCat.of k)}
    [AlgebraicGeometry.Smooth p]
    {U : X.Opens} (hU : IsAffineOpen U) {n : ℕ} (c : EtaleChart p U n)
    (H : X.IdealSheafData) [AlgebraicGeometry.Smooth (H.subschemeι ≫ p)] (j₀ : Fin n)
    (hH : restrictIdeal H U = c.coordIdeal {j₀})
    (i : Fin (n - ({j₀} : Finset (Fin n)).card)) (r : Γ(X, U)) :
    (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom
        (chartPartialDeriv hU c (complOrderEmb n {j₀} i) r)
      = chartPartialDeriv (isAffineOpen_preimage_subschemeι H hU)
          (c.restrictToSubscheme hU H {j₀} hH) i
          ((H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom r) := by
  classical
  have hWaff : IsAffineOpen (H.subschemeι ⁻¹ᵁ U) := isAffineOpen_preimage_subschemeι H hU
  let instU : Algebra k Γ(X, U) := sectionsAlgebra k p U
  let instW : Algebra k Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U) :=
    sectionsAlgebra k (H.subschemeι ≫ p) (H.subschemeι ⁻¹ᵁ U)
  let instcU : Algebra (MvPolynomial (ULift.{u} (Fin n)) k) Γ(X, U) := c.algebra
  have instTU : IsScalarTower k (MvPolynomial (ULift.{u} (Fin n)) k) Γ(X, U) := c.isScalarTower
  have instFEU : Algebra.FormallyEtale (MvPolynomial (ULift.{u} (Fin n)) k) Γ(X, U) :=
    c.algebra_formallyEtale hU
  let instcW : Algebra
      (MvPolynomial (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card))) k)
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U) := (c.restrictToSubscheme hU H {j₀} hH).algebra
  have instTW : IsScalarTower k
      (MvPolynomial (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card))) k)
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U) := (c.restrictToSubscheme hU H {j₀} hH).isScalarTower
  have instFEW : Algebra.FormallyEtale
      (MvPolynomial (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card))) k)
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U) :=
    (c.restrictToSubscheme hU H {j₀} hH).algebra_formallyEtale hWaff
  have hcomm : ∀ a : k,
      (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom (algebraMap k Γ(X, U) a)
        = algebraMap k Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U) a := by
    intro a
    exact sectionsAlgebraMap_appLE_apply k p H.subschemeι U (H.subschemeι ⁻¹ᵁ U) le_rfl a
  let π : Γ(X, U) →ₐ[k] Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U) :=
    { (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom with commutes' := hcomm }
  have hπsurj : Function.Surjective π := by
    intro z
    obtain ⟨w, hw⟩ := Scheme.IdealSheafData.subschemeι_app_surjective H ⟨U, hU⟩ z
    refine ⟨w, ?_⟩
    show (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom w = z
    rw [Scheme.Hom.appLE_eq_app]
    exact hw
  have hker : RingHom.ker π.toRingHom = Ideal.span ({c.coord j₀} : Set Γ(X, U)) := by
    have h1 : RingHom.ker (Scheme.Hom.app H.subschemeι U).hom = H.ideal ⟨U, hU⟩ :=
      Scheme.IdealSheafData.ker_subschemeι_app H ⟨U, hU⟩
    have h2 : H.ideal ⟨U, hU⟩
        = Ideal.span (c.coord '' ((({j₀} : Finset (Fin n))) : Set (Fin n))) :=
      c.ideal_eq_span_coord hU H {j₀} hH
    have h3 : (c.coord '' ((({j₀} : Finset (Fin n))) : Set (Fin n)))
        = ({c.coord j₀} : Set Γ(X, U)) := by
      simp
    show RingHom.ker (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom = _
    rw [Scheme.Hom.appLE_eq_app, h1, h2, h3]
  have hne : complOrderEmb n {j₀} i ≠ j₀ := by
    have hnm := complOrderEmb_notMem n {j₀} i
    simpa using hnm
  have hD0 : (EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(X, U)
      (ULift.up (complOrderEmb n {j₀} i))) (c.coord j₀) = 0 := by
    rw [← c.etaleCoordinates_coord j₀]
    refine EtaleCoordinates.partialDeriv_coord_of_ne k (ULift.{u} (Fin n)) Γ(X, U)
      (ULift.up (complOrderEmb n {j₀} i)) (ULift.up j₀) ?_
    intro hcon
    exact hne (congrArg ULift.down hcon)
  set δ := EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(X, U)
      (ULift.up (complOrderEmb n {j₀} i)) with hδdef
  set δ' := liftDerivationOfKerEqSpan π hπsurj (c.coord j₀) hker δ hD0 with hδ'def
  have hdesc : ∀ z : Γ(X, U), δ' (π z) = π (δ z) := fun z =>
    liftDerivationOfKerEqSpan_apply π hπsurj (c.coord j₀) hker δ hD0 z
  have hval : ∀ b : ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)),
      δ' (EtaleCoordinates.coord k (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)))
            Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U) b)
        = if b = ULift.up i then (1 : Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U)) else 0 := by
    intro b
    have hcb : EtaleCoordinates.coord k
        (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)))
        Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U) b
        = (c.restrictToSubscheme hU H {j₀} hH).coord b.down :=
      (c.restrictToSubscheme hU H {j₀} hH).etaleCoordinates_coord b.down
    have hcd : (c.restrictToSubscheme hU H {j₀} hH).coord b.down
        = π (c.coord (complOrderEmb n {j₀} b.down)) :=
      EtaleChart.restrictToSubscheme_coord c hU H {j₀} hH b.down
    rw [hcb, hcd, hdesc]
    by_cases hb : b.down = i
    · have h1 : δ (c.coord (complOrderEmb n {j₀} b.down)) = 1 := by
        rw [hb, hδdef, ← c.etaleCoordinates_coord (complOrderEmb n {j₀} i)]
        exact EtaleCoordinates.partialDeriv_coord_self k (ULift.{u} (Fin n)) Γ(X, U)
          (ULift.up (complOrderEmb n {j₀} i))
      have h2 : b = ULift.up i := by
        cases b
        exact congrArg ULift.up hb
      rw [h1, h2]
      simp
    · have h1 : δ (c.coord (complOrderEmb n {j₀} b.down)) = 0 := by
        rw [hδdef, ← c.etaleCoordinates_coord (complOrderEmb n {j₀} b.down)]
        refine EtaleCoordinates.partialDeriv_coord_of_ne k (ULift.{u} (Fin n)) Γ(X, U)
          (ULift.up (complOrderEmb n {j₀} i)) (ULift.up (complOrderEmb n {j₀} b.down)) ?_
        intro hcon
        exact hb ((complOrderEmb n {j₀}).injective (congrArg ULift.down hcon)).symm
      have h2 : ¬ (b = ULift.up i) := by
        intro hcon
        exact hb (congrArg ULift.down hcon)
      rw [h1, if_neg h2]
      simp
  have hδ'eq : δ' = EtaleCoordinates.partialDeriv k
      (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)))
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U) (ULift.up i) := by
    rw [EtaleCoordinates.eq_sum_smul_partialDeriv k
      (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)))
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U) δ']
    simp [hval]
  show π (δ r) = EtaleCoordinates.partialDeriv k
      (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)))
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U) (ULift.up i) (π r)
  rw [← hδ'eq]
  exact (hdesc r).symm

end

section

variable {P : Scheme.{u}} {k : Type u} [Field k]

theorem hasLocalCoordsOnSmoothHypersurface_of_comap (p : P ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.Smooth p] (H : P.IdealSheafData) (N : List P.IdealSheafData)
    (Z : H.subscheme.IdealSheafData)
    (hN : InStrictNormalCrossingPosition p (H :: N))
    (hZ : HasStrictNormalCrossingsWith (H.subschemeι ≫ p) Z (N.map fun D => D.comap H.subschemeι)) :
    HasLocalCoordsOnSmoothHypersurface p H N Z := by
  classical
  intro x hx
  have hxH : x ∈ H.support :=
    Scheme.IdealSheafData.support_antitone (le_ker_comp_subschemeι H Z) hx
  have hHsm : AlgebraicGeometry.Smooth (H.subschemeι ≫ p) := (hN.1 H (by simp)).2
  have hHft : AlgebraicGeometry.LocallyOfFiniteType (H.subschemeι ≫ p) := inferInstance
  obtain ⟨y, hyx⟩ := exists_subschemeι_base_eq_of_mem_support H hxH
  obtain ⟨U₀, hxU₀, n₀, c₀, a₀, hinj₀, hnone₀, hsome₀⟩ := hN.2 x
  obtain ⟨U₁, hU₁, hxU₁, hU₁U₀⟩ := exists_isAffineOpen_mem_and_subset hxU₀
  have hdesc₁ : ∀ i, ∀ hi : i < (H :: N).length,
      ((a₀ i = none → restrictIdeal ((H :: N)[i]'hi) U₁ = ⊤) ∧
        ∀ j, a₀ i = some j →
          restrictIdeal ((H :: N)[i]'hi) U₁ = (c₀.restrict hU₁U₀).coordIdeal {j}) := by
    intro i hi
    exact ⟨fun hn => restrictIdeal_eq_top_of_le _ hU₁U₀ (hnone₀ i hi hn),
      fun j hj => restrictIdeal_eq_restrict_coordIdeal_of_le hU₁U₀ c₀ _ {j} (hsome₀ i hi j hj)⟩
  obtain ⟨U, hU, hxU, n, c, γ, hdesc, hinj, hcoord⟩ :=
    exists_etaleChart_coord_mem_primeIdealOf (H :: N) x U₁ hU₁ hxU₁ (c₀.restrict hU₁U₀) a₀ hdesc₁
      (fun i i' hi hi' j h1 h2 => hinj₀ i hi i' hi' j h1 h2)
  have h0len : 0 < (H :: N).length := by simp
  have hH0 : restrictIdeal ((H :: N)[0]'h0len) U = restrictIdeal H U := by simp
  obtain ⟨j₀, hj₀⟩ : ∃ j₀ : Fin n, γ 0 = some j₀ := by
    cases hc : γ 0 with
    | none =>
        refine absurd hxH (notMem_support_of_restrictIdeal_eq_top H U x hxU ?_)
        rw [← hH0]
        exact (hdesc 0 h0len).1 hc
    | some j => exact ⟨j, rfl⟩
  have hHU : restrictIdeal H U = c.coordIdeal {j₀} := by
    rw [← hH0]
    exact (hdesc 0 h0len).2 j₀ hj₀
  have hyU : y ∈ H.subschemeι ⁻¹ᵁ U := by
    show H.subschemeι.base y ∈ U
    rw [hyx]
    exact hxU
  have hWaff : IsAffineOpen (H.subschemeι ⁻¹ᵁ U) := isAffineOpen_preimage_subschemeι H hU
  have hprimeEq : (hU.primeIdealOf ⟨x, hxU⟩).asIdeal
      = Ideal.comap (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom
          (hWaff.primeIdealOf ⟨y, hyU⟩).asIdeal := by
    rw [Scheme.Hom.appLE_eq_app]
    have hpt : (⟨H.subschemeι.base y, hyU⟩ : ↥U) = ⟨x, hxU⟩ := Subtype.ext hyx
    rw [← hpt]
    exact primeIdealOf_eq_comap_primeIdealOf H.subschemeι hU hWaff hyU
  have hyZ : y ∈ Z.support := by
    refine mem_support_of_ideal_le_primeIdealOf Z hWaff hyU ?_
    intro a ha
    obtain ⟨b, hb⟩ : ∃ b, (H.subschemeι.appLE U (H.subschemeι ⁻¹ᵁ U) le_rfl).hom b = a := by
      obtain ⟨b, hb⟩ := Scheme.IdealSheafData.subschemeι_app_surjective H ⟨U, hU⟩ a
      refine ⟨b, ?_⟩
      rw [Scheme.Hom.appLE_eq_app]
      exact hb
    have hbker : b ∈ (Z.subschemeι ≫ H.subschemeι).ker.ideal ⟨U, hU⟩ := by
      rw [ker_comp_subschemeι_ideal_eq_comap H Z hU, Ideal.mem_comap, hb]
      exact ha
    have hmem := ideal_le_primeIdealOf (Z.subschemeι ≫ H.subschemeι).ker hU hxU hx hbker
    rw [hprimeEq, Ideal.mem_comap, hb] at hmem
    exact hmem
  obtain ⟨V, hyV, m, c', a', S', hinj', hnone', hsome', hZV⟩ := hZ y hyZ
  obtain ⟨V₁, hV₁, hyV₁, hV₁V⟩ := exists_isAffineOpen_mem_and_subset hyV
  obtain ⟨U', hU'aff, hyU', hW'V₁, hU'U⟩ :
      ∃ U' : P.Opens, IsAffineOpen U' ∧ y ∈ H.subschemeι ⁻¹ᵁ U' ∧
        (H.subschemeι ⁻¹ᵁ U') ≤ V₁ ∧ U' ≤ U := by
    obtain ⟨g, hyg, hgV, hgU⟩ := exists_basicOpen_subschemeι_preimage_le H hU V₁ hyU hyV₁
    exact ⟨P.basicOpen g, hU.basicOpen g, hyg, hgV, hgU⟩
  have hxU' : x ∈ U' := by
    rw [← hyx]
    exact hyU'
  have hW'aff : IsAffineOpen (H.subschemeι ⁻¹ᵁ U') := isAffineOpen_preimage_subschemeι H hU'aff
  have hHU' : restrictIdeal H U' = (c.restrict hU'U).coordIdeal {j₀} :=
    restrictIdeal_eq_restrict_coordIdeal_of_le hU'U c H {j₀} hHU
  have hZW' : restrictIdeal Z (H.subschemeι ⁻¹ᵁ U')
      = ((c'.restrict hV₁V).restrict hW'V₁).coordIdeal S' := by
    have h1 : restrictIdeal Z V₁ = (c'.restrict hV₁V).coordIdeal S' :=
      restrictIdeal_eq_restrict_coordIdeal_of_le hV₁V c' Z S' hZV
    exact restrictIdeal_eq_restrict_coordIdeal_of_le hW'V₁ (c'.restrict hV₁V) Z S' h1
  have hmn : m + 1 = n :=
    etaleChart_numCoords_add_one_of_hypersurface p H hU'aff (c.restrict hU'U) j₀ hHU'
      ((c'.restrict hV₁V).restrict hW'V₁) y hyU' hyU'
  have hPx' : (hU'aff.primeIdealOf ⟨x, hxU'⟩).asIdeal
      = Ideal.comap (H.subschemeι.appLE U' (H.subschemeι ⁻¹ᵁ U') le_rfl).hom
          (hW'aff.primeIdealOf ⟨y, hyU'⟩).asIdeal := by
    rw [Scheme.Hom.appLE_eq_app]
    have hpt : (⟨H.subschemeι.base y, hyU'⟩ : ↥U') = ⟨x, hxU'⟩ := Subtype.ext hyx
    rw [← hpt]
    exact primeIdealOf_eq_comap_primeIdealOf H.subschemeι hU'aff hW'aff hyU'
  have hπsurj : Function.Surjective
      (H.subschemeι.appLE U' (H.subschemeι ⁻¹ᵁ U') le_rfl).hom := by
    rw [Scheme.Hom.appLE_eq_app]
    exact Scheme.IdealSheafData.subschemeι_app_surjective H ⟨U', hU'aff⟩
  have hcomapideal : ∀ D : P.IdealSheafData,
      (D.comap H.subschemeι).ideal ⟨H.subschemeι ⁻¹ᵁ U', hW'aff⟩
        = Ideal.map (H.subschemeι.appLE U' (H.subschemeι ⁻¹ᵁ U') le_rfl).hom
            (D.ideal ⟨U', hU'aff⟩) := fun D =>
    Scheme.IdealSheafData.comap_ideal_eq_map_appLE D H.subschemeι ⟨U', hU'aff⟩
      ⟨H.subschemeι ⁻¹ᵁ U', hW'aff⟩ le_rfl
  have hNsome : ∀ (i : ℕ) (hi : i < N.length) (j : Fin n), γ (i + 1) = some j →
      restrictIdeal (N[i]'hi) U' = (c.restrict hU'U).coordIdeal {j} := by
    intro i hi j hij
    refine restrictIdeal_eq_restrict_coordIdeal_of_le hU'U c _ {j} ?_
    have h := (hdesc (i + 1) (by simpa using hi)).2 j hij
    simpa using h
  have hxN : ∀ (i : ℕ) (hi : i < N.length) (j : Fin n), γ (i + 1) = some j →
      x ∈ (N[i]'hi).support := by
    intro i hi j hij
    refine mem_support_of_ideal_le_primeIdealOf _ hU hxU ?_
    have hid : (N[i]'hi).ideal ⟨U, hU⟩
        = Ideal.span (c.coord '' ((({j} : Finset (Fin n))) : Set (Fin n))) := by
      refine c.ideal_eq_span_coord hU _ {j} ?_
      have h := (hdesc (i + 1) (by simpa using hi)).2 j hij
      simpa using h
    rw [hid, Ideal.span_le]
    rintro z ⟨j', hj', rfl⟩
    have hjj : j' = j := by simpa using hj'
    subst hjj
    exact hcoord (i + 1) (by simpa using hi) j' hij
  have hyND : ∀ (i : ℕ) (hi : i < N.length) (j : Fin n), γ (i + 1) = some j →
      y ∈ ((N[i]'hi).comap H.subschemeι).support := by
    intro i hi j hij
    refine mem_support_of_ideal_le_primeIdealOf _ hW'aff hyU' ?_
    rw [hcomapideal, Ideal.map_le_iff_le_comap, ← hPx']
    exact ideal_le_primeIdealOf _ hU'aff hxU' (hxN i hi j hij)
  have ha'some : ∀ (i : ℕ) (hi : i < N.length) (j : Fin n), γ (i + 1) = some j →
      ∃ b : Fin m, a' i = some b := by
    intro i hi j hij
    cases hb : a' i with
    | some b => exact ⟨b, rfl⟩
    | none =>
        exfalso
        have hiE : i < (N.map fun D => D.comap H.subschemeι).length := by simpa using hi
        have htop := hnone' i hiE hb
        have hE : ((N.map fun D => D.comap H.subschemeι)[i]'hiE)
            = (N[i]'hi).comap H.subschemeι := by simp
        rw [hE] at htop
        have htop' : restrictIdeal ((N[i]'hi).comap H.subschemeι) (H.subschemeι ⁻¹ᵁ U') = ⊤ :=
          restrictIdeal_eq_top_of_le _ (le_trans hW'V₁ hV₁V) htop
        exact notMem_support_of_restrictIdeal_eq_top _ _ y hyU' htop' (hyND i hi j hij)
  have hinja : ∀ i i' : ℕ, i < N.length → i' < N.length → ∀ b : Fin m,
      a' i = some b → a' i' = some b → i = i' := by
    intro i i' hi hi' b h1 h2
    exact hinj' i (by simpa using hi) i' (by simpa using hi') b h1 h2
  have hinjγ : ∀ i i' : ℕ, i < N.length → i' < N.length → ∀ j : Fin n,
      γ (i + 1) = some j → γ (i' + 1) = some j → i = i' := by
    intro i i' hi hi' j h1 h2
    have h := hinj (i + 1) (i' + 1) (by simpa using hi) (by simpa using hi') j h1 h2
    omega
  have hj₀ne : ∀ i : ℕ, i < N.length → γ (i + 1) ≠ some j₀ := by
    intro i hi hcon
    have h := hinj 0 (i + 1) h0len (by simpa using hi) j₀ hj₀ hcon
    omega
  obtain ⟨ρ, hρ⟩ := exists_equiv_subtype_ne_compatible hmn j₀ N.length (fun i => γ (i + 1)) a'
    hinjγ hinja hj₀ne (fun i hi j hij => ha'some i hi j hij)
  have hmatched : ∀ (i : ℕ) (hi : i < N.length) (j : Fin n) (b : Fin m),
      γ (i + 1) = some j → a' i = some b →
      (∃ v : (Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U'))ˣ,
        (H.subschemeι.appLE U' (H.subschemeι ⁻¹ᵁ U') le_rfl).hom ((c.restrict hU'U).coord j)
          = (v : Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U')) *
              ((c'.restrict hV₁V).restrict hW'V₁).coord b) ∧
      ((c'.restrict hV₁V).restrict hW'V₁).coord b ∈
        (hW'aff.primeIdealOf ⟨y, hyU'⟩).asIdeal := by
    intro i hi j b hij hib
    have hiE : i < (N.map fun D => D.comap H.subschemeι).length := by simpa using hi
    have hE : ((N.map fun D => D.comap H.subschemeι)[i]'hiE)
        = (N[i]'hi).comap H.subschemeι := by simp
    have hcoordW : restrictIdeal ((N[i]'hi).comap H.subschemeι) (H.subschemeι ⁻¹ᵁ U')
        = ((c'.restrict hV₁V).restrict hW'V₁).coordIdeal {b} := by
      have h1 := hsome' i hiE b hib
      rw [hE] at h1
      have h2 := restrictIdeal_eq_restrict_coordIdeal_of_le hV₁V c' _ {b} h1
      exact restrictIdeal_eq_restrict_coordIdeal_of_le hW'V₁ (c'.restrict hV₁V) _ {b} h2
    have hspanW : ((N[i]'hi).comap H.subschemeι).ideal ⟨H.subschemeι ⁻¹ᵁ U', hW'aff⟩
        = Ideal.span {((c'.restrict hV₁V).restrict hW'V₁).coord b} := by
      have h := ((c'.restrict hV₁V).restrict hW'V₁).ideal_eq_span_coord hW'aff _ {b} hcoordW
      simpa using h
    have hspanU : (N[i]'hi).ideal ⟨U', hU'aff⟩
        = Ideal.span {(c.restrict hU'U).coord j} := by
      have h := (c.restrict hU'U).ideal_eq_span_coord hU'aff _ {j} (hNsome i hi j hij)
      simpa using h
    have hmapeq : Ideal.span {((H.subschemeι.appLE U' (H.subschemeι ⁻¹ᵁ U') le_rfl).hom
          ((c.restrict hU'U).coord j))}
        = Ideal.span {((c'.restrict hV₁V).restrict hW'V₁).coord b} := by
      rw [← hspanW, hcomapideal, hspanU, Ideal.map_span, Set.image_singleton]
    refine ⟨exists_unit_mul_coord_of_span_eq (H.subschemeι ≫ p) hW'aff
      ((c'.restrict hV₁V).restrict hW'V₁) b _ hmapeq, ?_⟩
    rw [← Ideal.span_singleton_le_iff_mem, ← hspanW]
    exact ideal_le_primeIdealOf _ hW'aff hyU' (hyND i hi j hij)
  have hlift : ∀ b : Fin m, ∃ (wbb : Γ(P, U'))
      (vbb : (Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U'))ˣ),
      (H.subschemeι.appLE U' (H.subschemeι ⁻¹ᵁ U') le_rfl).hom wbb
          = (vbb : Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U')) *
              ((c'.restrict hV₁V).restrict hW'V₁).coord b ∧
      (vbb = 1 ∨ ((c'.restrict hV₁V).restrict hW'V₁).coord b ∈
        (hW'aff.primeIdealOf ⟨y, hyU'⟩).asIdeal) ∧
      (∀ (i : ℕ), i < N.length → ∀ j : Fin n, γ (i + 1) = some j → a' i = some b →
        wbb = (c.restrict hU'U).coord j) := by
    intro b
    by_cases hb : ∃ i, ∃ _ : i < N.length, ∃ j : Fin n, γ (i + 1) = some j ∧ a' i = some b
    · obtain ⟨i, hi, j, hij, hib⟩ := hb
      obtain ⟨⟨v, hv⟩, hmem⟩ := hmatched i hi j b hij hib
      refine ⟨(c.restrict hU'U).coord j, v, hv, Or.inr hmem, ?_⟩
      intro i' hi' j' hij' hib'
      have hii : i' = i := hinja i' i hi' hi b hib' hib
      subst hii
      have hjj : j' = j := Option.some.inj (hij'.symm.trans hij)
      rw [hjj]
    · obtain ⟨wbb, hwbb⟩ := hπsurj (((c'.restrict hV₁V).restrict hW'V₁).coord b)
      refine ⟨wbb, 1, ?_, Or.inl rfl, ?_⟩
      · rw [hwbb]
        simp
      · intro i hi j hij hib
        exact absurd ⟨i, hi, j, hij, hib⟩ hb
  choose wb vb hvb1 hvb2 hvb3 using hlift
  obtain ⟨w, hw0, hwρ⟩ : ∃ w : ULift.{u} (Fin n) → Γ(P, U'),
      w (ULift.up j₀) = (c.restrict hU'U).coord j₀ ∧
      ∀ b : Fin m, w (ULift.up ((ρ b : Fin n))) = wb b := by
    refine ⟨fun t => if h : t.down = j₀ then (c.restrict hU'U).coord j₀
      else wb (ρ.symm ⟨t.down, h⟩), ?_, ?_⟩
    · exact dite_eq_left rfl
    · intro b
      have hne : ((ρ b : Fin n)) ≠ j₀ := (ρ b).2
      show (if h : ((ρ b : Fin n)) = j₀ then (c.restrict hU'U).coord j₀
        else wb (ρ.symm ⟨((ρ b : Fin n)), h⟩)) = wb b
      rw [dite_eq_right hne]
      congr 1
      have hsub : (⟨((ρ b : Fin n)), hne⟩ : {j : Fin n // j ≠ j₀}) = ρ b := rfl
      rw [hsub, Equiv.symm_apply_apply]
  let instkU : Algebra k Γ(P, U') := sectionsAlgebra k p U'
  let instcU : Algebra (MvPolynomial (ULift.{u} (Fin n)) k) Γ(P, U') :=
    (c.restrict hU'U).algebra
  have instTU : IsScalarTower k (MvPolynomial (ULift.{u} (Fin n)) k) Γ(P, U') :=
    (c.restrict hU'U).isScalarTower
  have instFEU : Algebra.FormallyEtale (MvPolynomial (ULift.{u} (Fin n)) k) Γ(P, U') :=
    (c.restrict hU'U).algebra_formallyEtale hU'aff
  let instkW : Algebra k Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U') :=
    sectionsAlgebra k (H.subschemeι ≫ p) (H.subschemeι ⁻¹ᵁ U')
  let instcW : Algebra (MvPolynomial (ULift.{u} (Fin m)) k)
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U') := ((c'.restrict hV₁V).restrict hW'V₁).algebra
  have instTW : IsScalarTower k (MvPolynomial (ULift.{u} (Fin m)) k)
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U') := ((c'.restrict hV₁V).restrict hW'V₁).isScalarTower
  have instFEW : Algebra.FormallyEtale (MvPolynomial (ULift.{u} (Fin m)) k)
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U') :=
    ((c'.restrict hV₁V).restrict hW'V₁).algebra_formallyEtale hW'aff
  let instcA : Algebra (MvPolynomial (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card))) k)
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U') :=
    ((c.restrict hU'U).restrictToSubscheme hU'aff H {j₀} hHU').algebra
  have instTA : IsScalarTower k
      (MvPolynomial (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card))) k)
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U') :=
    ((c.restrict hU'U).restrictToSubscheme hU'aff H {j₀} hHU').isScalarTower
  have instFEA : Algebra.FormallyEtale
      (MvPolynomial (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card))) k)
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U') :=
    ((c.restrict hU'U).restrictToSubscheme hU'aff H {j₀} hHU').algebra_formallyEtale hW'aff
  have hcard : n - ({j₀} : Finset (Fin n)).card = m := by
    rw [Finset.card_singleton]
    omega
  have hιAex : ∀ b : Fin m, ∃ i : Fin (n - ({j₀} : Finset (Fin n)).card),
      complOrderEmb n {j₀} i = (ρ b : Fin n) := by
    intro b
    exact exists_complOrderEmb_eq n {j₀} (by simpa using (ρ b).2)
  choose ιA hιA using hιAex
  have hιAinj : Function.Injective ιA := by
    intro a b hab
    have h : (ρ a : Fin n) = (ρ b : Fin n) := by rw [← hιA a, ← hιA b, hab]
    exact ρ.injective (Subtype.ext h)
  have hιAbij : Function.Bijective ιA := by
    refine (Fintype.bijective_iff_injective_and_card ιA).mpr ⟨hιAinj, ?_⟩
    rw [Fintype.card_fin, Fintype.card_fin, hcard]
  have hcompat : ∀ (a : Fin m) (r : Γ(P, U')),
      (H.subschemeι.appLE U' (H.subschemeι ⁻¹ᵁ U') le_rfl).hom
        (EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(P, U')
          (ULift.up ((ρ a : Fin n))) r)
      = EtaleCoordinates.partialDeriv k
          (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)))
          Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U') (ULift.up (ιA a))
          ((H.subschemeι.appLE U' (H.subschemeι ⁻¹ᵁ U') le_rfl).hom r) := by
    intro a r
    have h := appLE_subschemeι_chartPartialDeriv_complOrderEmb hU'aff (c.restrict hU'U) H j₀ hHU' (ιA a) r
    rw [hιA a] at h
    exact h
  have hdet : IsUnit (Matrix.of fun a b : Fin m =>
      EtaleCoordinates.partialDeriv k
        (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)))
        Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U') (ULift.up (ιA a))
        (((c'.restrict hV₁V).restrict hW'V₁).coord b)).det := by
    have hτ : ∃ τ : ULift.{u} (Fin m) ≃ ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)),
        ∀ t, τ t = ULift.up (ιA t.down) :=
      ⟨Equiv.ulift.trans ((Equiv.ofBijective ιA hιAbij).trans Equiv.ulift.symm), fun t => rfl⟩
    obtain ⟨τ, hτapp⟩ := hτ
    have h1 : IsUnit (((EtaleCoordinates.basisKaehler k
        (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)))
        Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U')).reindex τ.symm).det
        ⇑(EtaleCoordinates.basisKaehler k (ULift.{u} (Fin m))
            Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U'))) :=
      Module.Basis.isUnit_det _ _
    have h2 : ((EtaleCoordinates.basisKaehler k
        (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)))
        Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U')).reindex τ.symm).det
        ⇑(EtaleCoordinates.basisKaehler k (ULift.{u} (Fin m))
            Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U'))
        = (Matrix.of fun a b : Fin m =>
            EtaleCoordinates.partialDeriv k
              (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)))
              Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U') (ULift.up (ιA a))
              (((c'.restrict hV₁V).restrict hW'V₁).coord b)).det := by
      rw [Module.Basis.det_apply, ← Matrix.det_submatrix_equiv_self Equiv.ulift
        (Matrix.of fun a b : Fin m =>
          EtaleCoordinates.partialDeriv k
            (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)))
            Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U') (ULift.up (ιA a))
            (((c'.restrict hV₁V).restrict hW'V₁).coord b))]
      congr 1
      ext s t
      rw [Module.Basis.toMatrix_apply, Module.Basis.repr_reindex_apply, Equiv.symm_symm,
        EtaleCoordinates.basisKaehler_apply, hτapp,
        ← EtaleCoordinates.partialDeriv_apply,
        ((c'.restrict hV₁V).restrict hW'V₁).etaleCoordinates_coord t.down]
      rfl
    rwa [h2] at h1
  obtain ⟨F, hF0, hFsucc⟩ : ∃ F : Fin (m + 1) → ULift.{u} (Fin n),
      F 0 = ULift.up j₀ ∧ ∀ b : Fin m, F b.succ = ULift.up ((ρ b : Fin n)) := by
    refine ⟨fun t => if h : t = 0 then ULift.up.{u} j₀
      else ULift.up.{u} ((ρ (t.pred h) : Fin n)), ?_, ?_⟩
    · show (if h : (0 : Fin (m + 1)) = 0 then ULift.up.{u} j₀
        else ULift.up.{u} ((ρ ((0 : Fin (m + 1)).pred h) : Fin n))) = ULift.up j₀
      exact dite_eq_left rfl
    · intro b
      show (if h : b.succ = 0 then ULift.up.{u} j₀
        else ULift.up.{u} ((ρ (b.succ.pred h) : Fin n))) = ULift.up ((ρ b : Fin n))
      rw [dite_eq_right (Fin.succ_ne_zero b), Fin.pred_succ]
  have hbij : Function.Bijective F := by
    refine (Fintype.bijective_iff_injective_and_card F).mpr ⟨?_, ?_⟩
    · intro t₁ t₂ ht
      rcases Fin.eq_zero_or_eq_succ t₁ with rfl | ⟨b₁, rfl⟩
      · rcases Fin.eq_zero_or_eq_succ t₂ with rfl | ⟨b₂, rfl⟩
        · rfl
        · rw [hF0, hFsucc] at ht
          exact absurd (congrArg ULift.down ht).symm (ρ b₂).2
      · rcases Fin.eq_zero_or_eq_succ t₂ with rfl | ⟨b₂, rfl⟩
        · rw [hF0, hFsucc] at ht
          exact absurd (congrArg ULift.down ht) (ρ b₁).2
        · rw [hFsucc, hFsucc] at ht
          exact congrArg Fin.succ (ρ.injective (Subtype.ext (congrArg ULift.down ht)))
    · rw [Fintype.card_fin, Fintype.card_ulift, Fintype.card_fin, hmn]
  obtain ⟨e, he0, hesucc⟩ : ∃ e : ULift.{u} (Fin n) ≃ Fin (m + 1),
      e.symm 0 = ULift.up j₀ ∧ ∀ b : Fin m, e.symm b.succ = ULift.up ((ρ b : Fin n)) := by
    refine ⟨(Equiv.ofBijective F hbij).symm, ?_, fun b => ?_⟩
    · rw [Equiv.symm_symm]
      exact hF0
    · rw [Equiv.symm_symm]
      exact hFsucc b
  have hcol : ∀ a : ULift.{u} (Fin n),
      (Matrix.of fun a b : ULift.{u} (Fin n) =>
        EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(P, U') a (w b)) a (e.symm 0)
        = if a = e.symm 0 then (1 : Γ(P, U')) else 0 := by
    intro a
    rw [he0]
    show EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(P, U') a (w (ULift.up j₀))
      = if a = ULift.up j₀ then (1 : Γ(P, U')) else 0
    rw [hw0, ← (c.restrict hU'U).etaleCoordinates_coord j₀]
    exact EtaleCoordinates.partialDeriv_coord k (ULift.{u} (Fin n)) Γ(P, U') a (ULift.up j₀)
  have hsub : (Matrix.of fun a b : ULift.{u} (Fin n) =>
        EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(P, U') a (w b)).submatrix
        (fun i : Fin m => e.symm i.succ) (fun i : Fin m => e.symm i.succ)
      = Matrix.of fun a b : Fin m =>
        EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(P, U')
          (ULift.up ((ρ a : Fin n))) (wb b) := by
    ext a b
    show EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(P, U')
        (e.symm a.succ) (w (e.symm b.succ))
      = EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(P, U')
        (ULift.up ((ρ a : Fin n))) (wb b)
    rw [hesucc a, hesucc b, hwρ b]
  have hM : (Matrix.of fun a b : ULift.{u} (Fin n) =>
        EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(P, U') a (w b)).det
      = (Matrix.of fun a b : Fin m =>
        EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(P, U')
          (ULift.up ((ρ a : Fin n))) (wb b)).det := by
    rw [det_eq_det_submatrix_of_col_eq_single e _ hcol]
    exact congrArg Matrix.det hsub
  have hnotmem := det_derivation_notMem_comap_of_eq_one_or_mem (k := k) (ι := Fin m)
    (H.subschemeι.appLE U' (H.subschemeι ⁻¹ᵁ U') le_rfl).hom
    (fun a : Fin m => EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(P, U')
      (ULift.up ((ρ a : Fin n))))
    (fun a : Fin m => EtaleCoordinates.partialDeriv k
      (ULift.{u} (Fin (n - ({j₀} : Finset (Fin n)).card)))
      Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U') (ULift.up (ιA a)))
    hcompat wb vb (fun b => ((c'.restrict hV₁V).restrict hW'V₁).coord b) hvb1
    (hW'aff.primeIdealOf ⟨y, hyU'⟩).asIdeal
    (hW'aff.primeIdealOf ⟨y, hyU'⟩).isPrime.ne_top hvb2 hdet
  have hdet0 : (Matrix.of fun a b : ULift.{u} (Fin n) =>
      EtaleCoordinates.partialDeriv k (ULift.{u} (Fin n)) Γ(P, U') a (w b)).det
        ∉ (hU'aff.primeIdealOf ⟨x, hxU'⟩).asIdeal := by
    rw [hM, hPx']
    exact hnotmem
  have hdet : ((EtaleCoordinates.basisKaehler k (ULift.{u} (Fin n)) Γ(P, U')).det
      fun i : ULift.{u} (Fin n) => KaehlerDifferential.D k Γ(P, U') (w i)) ∉
        (hU'aff.primeIdealOf ⟨x, hxU'⟩).asIdeal := by
    rw [basisKaehler_det_eq_jacobian_det k (ULift.{u} (Fin n)) Γ(P, U') w]
    exact hdet0
  obtain ⟨V', hV'aff, hV'U', hxV', c₃, hc₃⟩ :=
    exists_etaleChart_restrict_coord_eq_of_jacobianDet_notMem hU'aff
      (c.restrict hU'U) hxU' w hdet
  have hV'U : V' ≤ U := le_trans hV'U' hU'U
  have hpreV' : (H.subschemeι ⁻¹ᵁ V') ≤ (H.subschemeι ⁻¹ᵁ U') := fun a ha => hV'U' ha
  refine ⟨V', hV'aff, hxV', n, c₃, j₀, fun i => γ (i + 1),
    S'.image (fun b : Fin m => ((ρ b : Fin n))), ?_, ?_, ?_, ?_, ?_⟩
  · refine restrictIdeal_eq_coordIdeal_of_ideal_eq_span hV'aff c₃ H {j₀} ?_
    have h1 : H.ideal ⟨U', hU'aff⟩ = Ideal.span {(c.restrict hU'U).coord j₀} := by
      have h := (c.restrict hU'U).ideal_eq_span_coord hU'aff H {j₀} hHU'
      simpa using h
    have h2 := ideal_eq_span_image_map_of_le H hU'aff hV'aff hV'U' _ h1
    rw [h2]
    congr 1
    rw [Finset.coe_singleton, Set.image_singleton, Set.image_singleton, hc₃ j₀, hw0]
  · intro i hi hnone
    have h := (hdesc (i + 1) (by simpa using hi)).1 hnone
    have h' : restrictIdeal (N[i]'hi) U = ⊤ := by simpa using h
    exact restrictIdeal_eq_top_of_le _ hV'U h'
  · intro i hi j hij
    obtain ⟨b, hb⟩ := ha'some i hi j hij
    have hρb : (ρ b : Fin n) = j := hρ i hi j b hij hb
    have hwj : w (ULift.up j) = (c.restrict hU'U).coord j := by
      have h1 : w (ULift.up j) = wb b := by
        rw [← hρb]
        exact hwρ b
      rw [h1]
      exact hvb3 b i hi j hij hb
    refine restrictIdeal_eq_coordIdeal_of_ideal_eq_span hV'aff c₃ _ {j} ?_
    have h1 : (N[i]'hi).ideal ⟨U', hU'aff⟩ = Ideal.span {(c.restrict hU'U).coord j} := by
      have h := (c.restrict hU'U).ideal_eq_span_coord hU'aff _ {j} (hNsome i hi j hij)
      simpa using h
    have h2 := ideal_eq_span_image_map_of_le (N[i]'hi) hU'aff hV'aff hV'U' _ h1
    rw [h2]
    congr 1
    rw [Finset.coe_singleton, Set.image_singleton, Set.image_singleton, hc₃ j, hwj]
  · intro i i' hi hi' j h1 h2
    exact hinjγ i i' hi hi' j h1 h2
  · have hZideal : Z.ideal ⟨H.subschemeι ⁻¹ᵁ U', hW'aff⟩
        = Ideal.span (((c'.restrict hV₁V).restrict hW'V₁).coord '' (S' : Set (Fin m))) :=
      ((c'.restrict hV₁V).restrict hW'V₁).ideal_eq_span_coord hW'aff Z S' hZW'
    have hZres : Z.ideal ⟨H.subschemeι ⁻¹ᵁ V', isAffineOpen_preimage_subschemeι H hV'aff⟩
        = Ideal.span ((H.subscheme.presheaf.map (homOfLE hpreV').op).hom ''
            (((c'.restrict hV₁V).restrict hW'V₁).coord '' (S' : Set (Fin m)))) :=
      ideal_eq_span_image_map_of_le Z hW'aff (isAffineOpen_preimage_subschemeι H hV'aff)
        hpreV' _ hZideal
    rw [hZres, Finset.coe_image, ← Set.image_comp, ← Set.image_comp]
    refine (span_image_eq_of_isUnit_mul (S' : Set (Fin m)) _ _ ?_).symm
    intro b hb
    have h1 : (H.subschemeι.appLE V' (H.subschemeι ⁻¹ᵁ V') le_rfl).hom
          (c₃.coord ((ρ b : Fin n)))
        = (H.subscheme.presheaf.map (homOfLE hpreV').op).hom
            ((vb b : Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U'))
              * ((c'.restrict hV₁V).restrict hW'V₁).coord b) := by
      rw [hc₃ ((ρ b : Fin n)), appLE_preimage_naturality H.subschemeι hV'U' hpreV', hwρ b,
        hvb1 b]
    exact ⟨(H.subscheme.presheaf.map (homOfLE hpreV').op).hom
        ((vb b : Γ(H.subscheme, H.subschemeι ⁻¹ᵁ U'))), IsUnit.map _ (vb b).isUnit,
      h1.trans (map_mul _ _ _)⟩

end

theorem hasStrictNormalCrossingsWith_ker_cons_of_comap :
    ∀ (k : Type u) [Field k] [CharZero k] (P : Scheme.{u})
      (p : P ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
      (H : P.IdealSheafData) (N : List P.IdealSheafData),
      InStrictNormalCrossingPosition p (H :: N) →
      ∀ Z : H.subscheme.IdealSheafData,
        HasStrictNormalCrossingsWith (H.subschemeι ≫ p) Z (N.map fun D => D.comap H.subschemeι) →
        HasStrictNormalCrossingsWith p (Z.subschemeι ≫ H.subschemeι).ker (H :: N) := by
  intro k _ _ P p _ H N hN Z hZ
  exact hasStrictNormalCrossingsWith_ker_cons_of_hasLocalCoordsOnSmoothHypersurface p H N Z hN hZ
    (hasLocalCoordsOnSmoothHypersurface_of_comap p H N Z hN hZ)

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsHypersurfaceRestriction =====
