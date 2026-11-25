module

public import Development.EtaleCohomology.EtaleSheaves.KummerSequence.KummerH0Surjection
public import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuInjPf
public import Development.EtaleCohomology.TateTwists.EtaleLocalPropertyBasicClosureProperties
public import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuUnitsPf
public import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPf
public import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots
public import Mathlib.RingTheory.Etale.StandardEtale
public import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumSecSurjPf
public import Development.EtaleCohomology.EtaleSheaves.KummerSequence.TwLocGenPfSec
public import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuPf
import Mathlib.CategoryTheory.Abelian.GrothendieckCategory.EnoughInjectives
import Mathlib.Tactic.Linter.Style
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.KummerFields.H0Naturality, Development.EtaleCohomology.EtaleSheaves.KummerFields.GmSecSurj, Development.EtaleCohomology.EtaleSheaves.KummerSequence.GmSepPf, Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuInjPfGlue, Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuMapPf, Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPowPf, Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPrimPf, Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafUnitRootPf, Development.EtaleCohomology.EtaleSheaves.KummerSequence.TwLocGenPf, Development.EtaleCohomology.EtaleSheaves.KummerSequence.ResMapNsmulHomotopy, Development.EtaleCohomology.EtaleSheaves.KummerFields

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.KummerFields.H0Naturality =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.KummerFields.H0Naturality", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.KummerH0Surjection\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Abelian.GrothendieckCategory.EnoughInjectives\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.E4 LateralTheory.E.H2CurveOrder.KummerH0Surjection
open CochainComplex CochainComplex.HomComplex

namespace LateralTheory.E.LeafKumFieldPf.H0Naturality

theorem resι_nat {F G : Shv ℤ} (φ : F ⟶ G) : resι ℤ F ≫ (resMap ℤ φ).f 0 = φ ≫ resι ℤ G := by
  have h := congrArg (fun f => HomologicalComplex.Hom.f f 0)
    (InjectiveResolution.desc_commutes φ (injectiveResolution G) (injectiveResolution F))
  simp only [HomologicalComplex.comp_f] at h
  simp only [resι, resMap, res, InjectiveResolution.ι'_f_zero, InjectiveResolution.cochainComplexXIso,
    InjectiveResolution.cochainComplex]
  rw [HomologicalComplex.extendMap_f _ _ (i := 0) (by rfl)]
  simp only [Category.assoc, Iso.inv_hom_id_assoc, Iso.inv_hom_id_assoc]
  rw [reassoc_of% h]
  first | rfl

theorem free_ext (X : Scheme.{0}) {I : Shv ℤ}
    (f g : (free ℤ).obj ((sch.obj X).obj (op (SimplexCategory.mk 0))) ⟶ I)
    (h : (f.hom.app (op X)).hom (freeGen ℤ _ X (𝟙 X)) = (g.hom.app (op X)).hom (freeGen ℤ _ X (𝟙 X))) : f = g := by
  have key : ∀ (η : (freeP ℤ).obj ((sch.obj X).obj (op (SimplexCategory.mk 0))) ⟶ I.obj) (U : Scheme.{0}) (x : U ⟶ X),
      (η.app (op U)).hom (ModuleCat.freeMk (ULift.up x)) =
        (I.obj.map x.op).hom ((η.app (op X)).hom (ModuleCat.freeMk (ULift.up (𝟙 X)))) := by
    intro η U x
    have := congrArg (fun m => m.hom (ModuleCat.freeMk (ULift.up (𝟙 X)))) (η.naturality x.op)
    refine Eq.trans ?_ this
    rw [ModuleCat.hom_comp]
    erw [LinearMap.comp_apply]
    congr 1
    erw [ModuleCat.free_map_apply]
    congr 2
  apply Sheaf.hom_ext
  apply sheafify_hom_ext _ _ _ I.2
  refine NatTrans.ext (funext fun U => ModuleCat.free_hom_ext fun ⟨x⟩ => ?_)
  have h1 := key (toSheafify _ _ ≫ f.hom) U.unop x
  have h2 := key (toSheafify _ _ ≫ g.hom) U.unop x
  refine h1.trans (h2.trans ?_).symm
  congr 1
  exact h.symm

theorem coc_ext (X : Scheme.{0}) (G : Shv ℤ) (a b : Cocycle ((chains ℤ).obj (sch.obj X)) (res ℤ G) 0)
    (h : ev a.1 0 0 (by simp) X (𝟙 X) = ev b.1 0 0 (by simp) X (𝟙 X)) : a = b := by
  apply Cocycle.ext
  apply Cochain.ext
  intro p q hpq
  obtain rfl : p = q := by omega
  rcases lt_trichotomy p 0 with hp | rfl | hp
  · apply IsZero.eq_of_tgt
    exact HomologicalComplex.isZero_extend_X _ _ _ (fun i => by show ((i:ℕ):ℤ) ≠ p; omega)
  · have e := free_ext X ((chainsXIso ℤ (sch.obj X) 0).inv ≫ a.1.v 0 0 (by simp))
      ((chainsXIso ℤ (sch.obj X) 0).inv ≫ b.1.v 0 0 (by simp)) h
    have := congrArg ((chainsXIso ℤ (sch.obj X) 0).hom ≫ ·) e
    simpa using this
  · apply IsZero.eq_of_src
    exact HomologicalComplex.isZero_extend_X _ _ _ (fun i => by show -((i:ℕ):ℤ) ≠ p; omega)

theorem ev_post (X : Scheme.{0}) {F G : Shv ℤ} (φ : F ⟶ G) (α : Cocycle ((chains ℤ).obj (sch.obj X)) (res ℤ F) 0) :
    ev (zcomp α (Cocycle.ofHom (resMap ℤ φ)) (add_zero 0)).1 0 0 (by simp) X (𝟙 X) =
      (((resMap ℤ φ).f 0).hom.app (op X)).hom (ev α.1 0 0 (by simp) X (𝟙 X)) := by
  simp only [ev, zcomp, Cocycle.mk, Cochain.comp_zero_cochain_v, Cocycle.ofHom, Cochain.ofHom_v]
  rfl

theorem etale_degree_zero_cohomology_natural_in_sheaf (hA9 : A9) : EtaleDegreeZeroCohomologyNaturallyIsoToSections := by
  intro _
  choose e he using fun F : Shv ℤ => (hA9 ℤ F).2
  refine ⟨e, ?_⟩
  intro F G φ X s
  obtain ⟨α, hα, hαv⟩ := (he F).2 X s
  obtain ⟨β, hβ, hβv⟩ := (he G).2 X (Sec.map φ s)
  rw [← hα, ← hβ]
  show CohomologyClass.mk (zcomp α (Cocycle.ofHom (resMap ℤ φ)) (add_zero 0)) = _
  congr 1
  apply coc_ext
  rw [hβv, ev_post, hαv]
  have := congrArg (fun m => (m.hom.app (op X)).hom s) (resι_nat φ)
  exact this
end LateralTheory.E.LeafKumFieldPf.H0Naturality -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.KummerFields.H0Naturality =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.KummerFields.GmSecSurj =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.KummerFields.GmSecSurj", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.KummerH0Surjection\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.E4 LateralTheory.E.H2CurveOrder.LeafKumSeqPf LateralTheory.E.H2CurveOrder.KummerH0Surjection

namespace LateralTheory.E.LeafKumFieldPf.GmSecSurj

def unitsEquivHom (A : Type) [CommRing A] : (Multiplicative ℤ →* A) ≃ Aˣ where
  toFun f := (zpowersHom Aˣ).symm f.toHomUnits
  invFun u := (Units.coeHom A).comp (zpowersHom Aˣ u)
  left_inv f := by ext; simp
  right_inv u := by ext; simp

abbrev LR : CommRingCat.{0} := CommRingCat.of (AddMonoidAlgebra ℤ ℤ)

def homUnits (A : CommRingCat.{0}) : (LR ⟶ A) ≃ Aˣ :=
  ({ toFun := fun f => f.hom, invFun := CommRingCat.ofHom, left_inv := fun _ => rfl,
      right_inv := fun _ => rfl } : (LR ⟶ A) ≃ (AddMonoidAlgebra ℤ ℤ →+* A)).trans <|
    (RingHom.equivIntAlgHom _ _).trans <| (AddMonoidAlgebra.lift ℤ A ℤ).symm.trans (unitsEquivHom A)

theorem homUnits_val (A : CommRingCat.{0}) (ψ : LR ⟶ A) :
    ((homUnits A ψ : Aˣ) : A) = ψ.hom (AddMonoidAlgebra.of ℤ ℤ (Multiplicative.ofAdd 1)) := by
  simp [homUnits, unitsEquivHom]
  rfl

theorem homUnits_nat {A B : CommRingCat.{0}} (ψ : LR ⟶ A) (h : A ⟶ B) :
    homUnits B (ψ ≫ h) = Units.map h.hom.toMonoidHom (homUnits A ψ) := by
  ext
  simp [homUnits_val]

abbrev P : Scheme.{0}ᵒᵖ ⥤ Type 1 := Scheme.Γ ⋙ unitsF ⋙ forget _

def repr : P.RepresentableBy (Spec LR) where
  homEquiv {X} := (ΓSpec.adjunction.homEquiv X (op LR)).symm.trans <|
    ({ toFun := fun φ => φ.unop, invFun := fun φ => φ.op, left_inv := fun _ => rfl, right_inv := fun _ => rfl } :
      (Scheme.Γ.rightOp.obj X ⟶ op LR) ≃ (LR ⟶ Γ(X, ⊤))).trans <| (homUnits _).trans <|
      Additive.ofMul.trans Equiv.ulift.symm
  homEquiv_comp {X X'} f g := by
    simp only [Equiv.trans_apply]
    rw [Adjunction.homEquiv_naturality_left_symm]
    exact congrArg (fun u => ULift.up (Additive.ofMul u)) (homUnits_nat _ (Scheme.Γ.map f.op))

theorem isSheaf_P : Presieve.IsSheaf Scheme.etaleTopology.{0} P := by
  have : Scheme.etaleTopology.{0}.Subcanonical :=
    GrothendieckTopology.Subcanonical.of_le Scheme.etaleTopology_le_proetaleTopology
  have : P.IsRepresentable := repr.isRepresentable
  exact GrothendieckTopology.Subcanonical.isSheaf_of_isRepresentable P

theorem isSheaf_units : Presheaf.IsSheaf Scheme.etaleTopology.{0} (Scheme.Γ ⋙ unitsF) :=
  (Presheaf.isSheaf_iff_isSheaf_forget _ _ (forget _)).mpr
    ((isSheaf_iff_isSheaf_of_type _ _).mpr isSheaf_P)

theorem LeafGmSecSurj_of : LateralTheory.E.H2CurveOrder.KummerH0Surjection.LeafGmSecSurj := by
  intro B _ y
  have := isIso_toSheafify Scheme.etaleTopology.{0} isSheaf_units
  let g := (toSheafify Scheme.etaleTopology.{0} (Scheme.Γ ⋙ unitsF)).app (op (Spec (CommRingCat.of B)))
  refine ⟨((inv g).hom y).down, ?_⟩
  show g.hom ((inv g).hom y) = y
  change (inv g ≫ g).hom y = y
  rw [IsIso.inv_hom_id]
  rfl

end LateralTheory.E.LeafKumFieldPf.GmSecSurj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.KummerFields.GmSecSurj =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.GmSepPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.KummerSequence.GmSepPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuInjPf\nimport Mathlib.Algebra.Category.ModuleCat.FilteredColimits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.H2CurveOrder.GmSepPf

def ev (V : Scheme.{0}) (a : Γ(V, ⊤)) : CommRingCat.of (Polynomial ℤ) ⟶ Γ(V, ⊤) :=
  CommRingCat.ofHom (Polynomial.eval₂RingHom (Int.castRingHom _) a)

def lineMap (V : Scheme.{0}) (a : Γ(V, ⊤)) : V ⟶ Spec (CommRingCat.of (Polynomial ℤ)) :=
  ΓSpec.adjunction.homEquiv V (op (CommRingCat.of (Polynomial ℤ))) (ev V a).op

theorem lineMap_inj (V : Scheme.{0}) (a b : Γ(V, ⊤)) (h : lineMap V a = lineMap V b) : a = b := by
  have h1 := (ΓSpec.adjunction.homEquiv _ _).injective h
  have h2 := congrArg (fun f => f.hom Polynomial.X) (Quiver.Hom.op_inj h1)
  simpa [ev] using h2

theorem ev_comp {W V : Scheme.{0}} (g : W ⟶ V) (a : Γ(V, ⊤)) : ev V a ≫ g.appTop = ev W (g.appTop a) := by
  apply CommRingCat.hom_ext
  apply Polynomial.ringHom_ext
  · intro n; simp [ev]
  · simp [ev]

theorem lineMap_nat {W V : Scheme.{0}} (g : W ⟶ V) (a : Γ(V, ⊤)) :
    g ≫ lineMap V a = lineMap W (g.appTop a) := by
  unfold lineMap
  refine (ΓSpec.adjunction.homEquiv_naturality_left g (ev V a).op).symm.trans ?_
  congr 1
  apply Quiver.Hom.unop_inj
  exact ev_comp g a

theorem gamma_sep (V : Scheme.{0}) (S : Sieve V) (hS : S ∈ Scheme.etaleTopology V) (a b : Γ(V, ⊤))
    (h : ∀ (W : Scheme.{0}) (g : W ⟶ V), S.arrows g → g.appTop a = g.appTop b) : a = b := by
  have : Scheme.etaleTopology.{0}.Subcanonical :=
    GrothendieckTopology.Subcanonical.of_le Scheme.etaleTopology_le_proetaleTopology
  have hsh := GrothendieckTopology.Subcanonical.isSheaf_of_isRepresentable (J := Scheme.etaleTopology.{0})
    (yoneda.obj (Spec (CommRingCat.of (Polynomial ℤ))))
  apply lineMap_inj
  refine (hsh S hS).isSeparatedFor.ext (fun W g hg => ?_)
  change g ≫ lineMap V a = g ≫ lineMap V b
  rw [lineMap_nat, lineMap_nat, h W g hg]

theorem gmSep : LateralTheory.E.H2CurveOrder.LeafKumMuInjPf.GmSep := by
  intro V u h
  have h0 : ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ unitsF)).app (op V)).hom (ULift.up (Additive.ofMul u))
      = ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ unitsF)).app (op V)).hom 0 := by
    rw [map_zero]; exact h
  have hm := Presheaf.equalizerSieve_mem Scheme.etaleTopology
    (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ unitsF)) (X := op V)
    (ULift.up (Additive.ofMul u) : (Scheme.Γ ⋙ unitsF).obj (op V)) 0 h0
  apply Units.ext
  refine gamma_sep V _ hm u.1 (1 : Γ(V, ⊤)) (fun W g hg => ?_)
  have h1 := congrArg (fun z : (Scheme.Γ ⋙ unitsF).obj (op W) => ((Additive.toMul z.down : (Γ(W, ⊤))ˣ) : Γ(W, ⊤))) hg
  exact h1

end LateralTheory.E.H2CurveOrder.GmSepPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.GmSepPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuInjPfGlue =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuInjPfGlue", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuInjPf\npublic import Development.EtaleCohomology.TateTwists.EtaleLocalPropertyBasicClosureProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC Polynomial

namespace LateralTheory.E.H2CurveOrder.LeafKumMuInjPfGlue
open LateralTheory.E.H2CurveOrder.LeafKumMuInjPf

theorem cycPow : CycPow := by
  intro q A _ ζ
  obtain ⟨hq, hz⟩ := ζ.2
  rcases Nat.eq_zero_or_pos q with rfl | hq0
  · have : Subsingleton A := by
      simp at hz
      exact subsingleton_of_zero_eq_one hz.symm
    exact ⟨1, Subsingleton.elim _ _, fun _ _ => Or.inr this⟩
  have hqz : ζ.1 ^ q = 1 := by
    obtain ⟨G, hG⟩ := cyclotomic.dvd_X_pow_sub_one q ℤ
    have := congrArg (aeval ζ.1) hG
    simp [hz] at this
    exact sub_eq_zero.1 this
  have h1 : ζ.1 * ζ.1 ^ (q - 1) = 1 := by rw [← pow_succ', Nat.sub_add_cancel hq0]; exact hqz
  have hu : IsUnit ζ.1 := ⟨⟨ζ.1, ζ.1 ^ (q - 1), h1, by rw [mul_comm]; exact h1⟩, rfl⟩
  refine ⟨hu.unit, rfl, fun c hc => ?_⟩
  have hc' : ζ.1 ^ c = 1 := by simpa using congrArg Units.val hc
  set d := Nat.gcd c q with hd
  have hdz : ζ.1 ^ d = 1 := pow_gcd_eq_one.2 ⟨hc', hqz⟩
  by_cases hdq : d = q
  · left; rw [← hdq]; exact Nat.gcd_dvd_left c q
  right
  obtain ⟨G, hG⟩ := X_pow_sub_one_mul_cyclotomic_dvd_X_pow_sub_one_of_dvd ℤ (Nat.mem_properDivisors.2 ⟨Nat.gcd_dvd_right c q, lt_of_le_of_ne (Nat.le_of_dvd hq0 (Nat.gcd_dvd_right c q)) hdq⟩)
  have hG' := congrArg (Polynomial.map (Int.castRingHom A)) hG
  simp only [Polynomial.map_mul, Polynomial.map_sub, Polynomial.map_pow, Polynomial.map_X, Polynomial.map_one,
    map_cyclotomic] at hG'
  have r1 : (X - C ζ.1) ∣ (X ^ d - 1 : A[X]) := dvd_iff_isRoot.2 (by simp [hdz])
  have r2 : (X - C ζ.1) ∣ cyclotomic q A := dvd_iff_isRoot.2 (by
    have := hz
    rwa [aeval_def, eval₂_eq_eval_map, map_cyclotomic] at this)
  obtain ⟨a, ha⟩ := r1
  obtain ⟨b, hb⟩ := r2
  have hE : (X ^ q - 1 : A[X]) = (X - C ζ.1) ^ 2 * (a * b * G.map (Int.castRingHom A)) := by
    rw [hG', ha, hb]; ring
  have hD := congrArg (fun p => eval ζ.1 (derivative p)) hE
  simp [derivative_mul, derivative_pow] at hD
  have hu' : IsUnit ((q : A) * ζ.1 ^ (q - 1)) := hq.mul (hu.pow _)
  have h0 : (q : A) * ζ.1 ^ (q - 1) = 0 := by simpa using hD
  rw [h0] at hu'
  exact subsingleton_of_zero_eq_one (isUnit_zero_iff.mp hu')

theorem emptySec : EmptySec := by
  intro R _ F V hs y
  have : IsEmpty V := by
    refine ⟨fun x => ?_⟩
    have h1 : (1 : V.presheaf.stalk x) = 0 := by
      rw [← map_one (V.presheaf.germ ⊤ x trivial).hom, Subsingleton.elim (1 : Γ(V, ⊤)) 0, map_zero]
    exact one_ne_zero h1
  exact LateralTheory.E.H2CurveOrder.LeafKumMuInjPf.shfSep R F V y (LateralTheory.EtaleFoundations.LocBasicPf.loc_empty V _)

theorem LeafKumMuInj_of (hL : TwLocGen) (hG : GmSep) : LateralTheory.E.H2CurveOrder.LeafKumMuUnitsPf.LeafKumMuInj :=
  LateralTheory.E.H2CurveOrder.LeafKumMuInjPf.LeafKumMuInj_of hL hG cycPow emptySec

end LateralTheory.E.H2CurveOrder.LeafKumMuInjPfGlue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuInjPfGlue =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuMapPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuMapPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuUnitsPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.H2CurveOrder.LeafKumMuMapPf

theorem prim_pow (q : ℕ) {A : Type} [CommRing A] (ζ : Prim q A) : ζ.1 ^ q = 1 := by
  obtain ⟨g, hg⟩ := Polynomial.cyclotomic.dvd_X_pow_sub_one q ℤ
  have h := congrArg (Polynomial.aeval ζ.1) hg
  simpa [sub_eq_zero, ζ.2.2] using h

variable (q : ℕ) [NeZero q]

def unitOf {A : Type} [CommRing A] (ζ : Prim q A) : Aˣ :=
  (IsUnit.of_pow_eq_one (prim_pow q ζ) (NeZero.ne q)).unit

theorem unitOf_pow {A : Type} [CommRing A] (ζ : Prim q A) : unitOf q ζ ^ q = 1 :=
  Units.ext (by simpa [unitOf] using prim_pow q ζ)

def gOf {A : Type} [CommRing A] (ζ : Prim q A) : ZMod q →+ Additive Aˣ :=
  ZMod.lift q ⟨zmultiplesHom _ (Additive.ofMul (unitOf q ζ)), by
    change ((q : ℤ) • Additive.ofMul (unitOf q ζ)) = 0
    rw [natCast_zsmul, ← ofMul_pow, unitOf_pow]; rfl⟩

theorem gOf_int {A : Type} [CommRing A] (ζ : Prim q A) (n : ℤ) :
    gOf q ζ (n : ZMod q) = n • Additive.ofMul (unitOf q ζ) := by
  simp [gOf, ZMod.lift_coe]

theorem gOf_one {A : Type} [CommRing A] (ζ : Prim q A) : gOf q ζ 1 = Additive.ofMul (unitOf q ζ) := by
  have := gOf_int q ζ 1
  simpa using this

def nuA (A : Type) [CommRing A] : (Prim q A →₀ ULift.{1} (ZMod q)) →+ Additive Aˣ :=
  Finsupp.liftAddHom (fun ζ => (gOf q ζ).comp (AddEquiv.ulift.toAddMonoidHom))

theorem nuA_single (A : Type) [CommRing A] (ζ : Prim q A) (b : ULift.{1} (ZMod q)) :
    nuA q A (Finsupp.single ζ b) = gOf q ζ b.down := by
  simp [nuA]; rfl

theorem nuA_smul (A : Type) [CommRing A] (n : ℤ) (x : Prim q A →₀ ULift.{1} (ZMod q)) :
    nuA q A ((ULift.up (n : ZMod q) : ULift.{1} (ZMod q)) • x) = n • nuA q A x := by
  induction x using Finsupp.induction_linear with
  | zero => simp
  | add x y hx hy => rw [smul_add, map_add (f := _), map_add (f := _), hx, hy, smul_add]
  | single ζ b =>
    rw [Finsupp.smul_single, nuA_single, nuA_single, ← map_zsmul]
    congr 1
    change (n : ZMod q) * b.down = n • b.down
    rw [zsmul_eq_mul]

theorem nuA_rel (A : Type) [CommRing A] : ∀ x ∈ twRel q 1 A, nuA q A x = 0 := by
  intro x hx
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨ζ, ξ, a, h, rfl⟩ := hx
    rw [map_sub, nuA_single, nuA_single, zpow_one]
    change gOf q ξ 1 - gOf q ζ (a : ZMod q) = 0
    have ha : ((a : ZMod q)) = (((a : ZMod q).val : ℤ) : ZMod q) := by simp
    rw [ha, gOf_int, gOf_one, sub_eq_zero, natCast_zsmul, ← ofMul_pow]
    congr 1
    exact Units.ext (by simpa [unitOf] using h)
  | zero => simp
  | add x y _ _ hx hy => rw [map_add (f := _), hx, hy, add_zero]
  | smul c x _ hx =>
    have hc : c = ULift.up (((c.down.cast : ℤ)) : ZMod q) := by
      ext; simp
    rw [hc, nuA_smul, hx, smul_zero]

def nuQ (A : CommRingCat.{0}) : (twF q 1).obj A →+ Additive Aˣ :=
  QuotientAddGroup.lift (twRel q 1 A).toAddSubgroup (nuA q A) (fun x hx => nuA_rel q A x hx)

theorem nuQ_smul (A : CommRingCat.{0}) (n : ℤ) (x : (twF q 1).obj A) :
    nuQ q A ((ULift.up (n : ZMod q) : ULift.{1} (ZMod q)) • x) = n • nuQ q A x := by
  induction x using Submodule.Quotient.induction_on with
  | H x => exact nuA_smul q A n x

theorem unitOf_map {A B : Type} [CommRing A] [CommRing B] (f : A →+* B) (ζ : Prim q A) :
    unitOf q (ζ.map f) = Units.map f.toMonoidHom (unitOf q ζ) := Units.ext rfl

theorem nuQ_nat {A B : CommRingCat.{0}} (f : A ⟶ B) (x : (twF q 1).obj A) :
    nuQ q B (((twF q 1).map f).hom x) = MonoidHom.toAdditive (Units.map f.hom.toMonoidHom) (nuQ q A x) := by
  induction x using Submodule.Quotient.induction_on with
  | H x =>
    change nuA q B (Finsupp.mapDomain (Prim.map f.hom) x) = MonoidHom.toAdditive (Units.map f.hom.toMonoidHom) (nuA q A x)
    induction x using Finsupp.induction_linear with
    | zero => simp
    | add x y hx hy => rw [Finsupp.mapDomain_add, map_add (f := _), map_add (f := _), map_add (f := _), hx, hy]
    | single ζ b =>
      rw [Finsupp.mapDomain_single, nuA_single, nuA_single]
      have hb : b.down = ((b.down.cast : ℤ) : ZMod q) := by simp
      rw [hb, gOf_int, gOf_int, map_zsmul, unitOf_map]
      rfl

abbrev fq : ULift.{1} ℤ →+* ULift.{1} (ZMod q) :=
  (ULift.ringEquiv.symm : ZMod q ≃+* ULift.{1} (ZMod q)).toRingHom.comp
    ((Int.castRingHom (ZMod q)).comp (ULift.ringEquiv : ULift.{1} ℤ ≃+* ℤ).toRingHom)

def nuR : twF q 1 ⋙ ModuleCat.restrictScalars.{1} (fq q) ⟶ unitsF where
  app A :=
    letI : Module (ULift.{1} ℤ) ((twF q 1).obj A) := Module.compHom _ (fq q)
    ModuleCat.ofHom (show (ModuleCat.restrictScalars.{1} (fq q)).obj ((twF q 1).obj A) →ₗ[ULift.{1} ℤ]
      ULift.{1} (Additive (A : Type)ˣ) from
    { toFun := fun x => ULift.up (nuQ q A x)
      map_add' := fun x y => congrArg ULift.up (map_add _ x y)
      map_smul' := fun c x => congrArg ULift.up (nuQ_smul q A c.down x) })
  naturality A B f := by
    ext x
    exact congrArg ULift.up (nuQ_nat q f x)

theorem nuQ_q (A : CommRingCat.{0}) (x : (twF q 1).obj A) : q • nuQ q A x = 0 := by
  induction x using Submodule.Quotient.induction_on with
  | H x =>
    change q • nuA q A x = 0
    induction x using Finsupp.induction_linear with
    | zero => simp
    | add x y hx hy => rw [map_add (f := _), smul_add, hx, hy, add_zero]
    | single ζ b =>
      rw [nuA_single, ← map_nsmul, nsmul_eq_mul, ZMod.natCast_self, zero_mul, map_zero]

theorem nuR_pow : nuR q ≫ LateralTheory.E.H2CurveOrder.LeafKumSeqPf.powNat q = 0 := by
  ext A x
  exact congrArg ULift.up (nuQ_q q A x)

abbrev rs := ModuleCat.restrictScalars.{1} (fq q)
abbrev cs := ModuleCat.coextendScalars.{1, 1, 1} (fq q)

instance : (cs q).IsRightAdjoint := (ModuleCat.restrictCoextendScalarsAdj.{1, 1, 1} (fq q)).isRightAdjoint

abbrev adjW := Adjunction.whiskerRight Scheme.{0}ᵒᵖ (ModuleCat.restrictCoextendScalarsAdj.{1, 1, 1} (fq q))

theorem wr_zero {X Y : Scheme.{0}ᵒᵖ ⥤ ModuleCat.{1} (ULift.{1} (ZMod q))} :
    ((Functor.whiskeringRight _ _ _).obj (rs q)).map (0 : X ⟶ Y) = 0 := by
  ext U x
  rfl

abbrev nuP : Scheme.Γ ⋙ twF q 1 ⋙ rs q ⟶ Scheme.Γ ⋙ unitsF := Functor.whiskerLeft Scheme.Γ (nuR q)

abbrev tG : Scheme.Γ ⋙ unitsF ⟶ Gm.obj := toSheafify Scheme.etaleTopology.{0} (Scheme.Γ ⋙ unitsF)

abbrev psi : Scheme.Γ ⋙ twF q 1 ⟶ Gm.obj ⋙ cs q :=
  (adjW q).homEquiv _ _ (nuP q ≫ tG)

theorem hC : Presheaf.IsSheaf Scheme.etaleTopology.{0} (Gm.obj ⋙ cs q) :=
  ((sheafCompose Scheme.etaleTopology.{0} (cs q)).obj Gm).property

abbrev psi' : sheafify Scheme.etaleTopology.{0} (Scheme.Γ ⋙ twF q 1) ⟶ Gm.obj ⋙ cs q :=
  sheafifyLift Scheme.etaleTopology.{0} (psi q) (hC q)

def kappa : (restr (Int.castRingHom (ZMod q))).obj (tw q 1) ⟶ Gm :=
  ⟨((adjW q).homEquiv _ _).symm (psi' q)⟩

theorem key : Functor.whiskerRight (toSheafify Scheme.etaleTopology.{0} (Scheme.Γ ⋙ twF q 1)) (rs q) ≫ (kappa q).hom =
    nuP q ≫ tG := by
  change ((Functor.whiskeringRight _ _ _).obj (rs q)).map (toSheafify _ _) ≫ ((adjW q).homEquiv _ _).symm (psi' q) = _
  rw [← Adjunction.homEquiv_naturality_left_symm, toSheafify_sheafifyLift]
  exact Equiv.symm_apply_apply _ _

theorem homEquiv_zero {X : Scheme.{0}ᵒᵖ ⥤ ModuleCat.{1} (ULift.{1} (ZMod q))} {Y : Scheme.{0}ᵒᵖ ⥤ ModuleCat.{1} (ULift.{1} ℤ)} :
    (adjW q).homEquiv X Y 0 = 0 := by
  have h : (0 : ((Functor.whiskeringRight _ _ _).obj (rs q)).obj X ⟶ Y) =
      ((Functor.whiskeringRight _ _ _).obj (rs q)).map (0 : X ⟶ X) ≫ 0 := by rw [wr_zero, zero_comp]
  rw [h, Adjunction.homEquiv_naturality_left, zero_comp]

theorem homEquiv_symm_zero {X : Scheme.{0}ᵒᵖ ⥤ ModuleCat.{1} (ULift.{1} (ZMod q))} {Y : Scheme.{0}ᵒᵖ ⥤ ModuleCat.{1} (ULift.{1} ℤ)} :
    ((adjW q).homEquiv X Y).symm 0 = 0 := by
  rw [← homEquiv_zero q, Equiv.symm_apply_apply]

omit [NeZero q] in
theorem hpv : tG ≫ (LateralTheory.E.H2CurveOrder.LeafKumSeqPf.powGm q).hom = Functor.whiskerLeft Scheme.Γ (LateralTheory.E.H2CurveOrder.LeafKumSeqPf.powNat q) ≫ tG :=
  (toSheafify_naturality _ _).symm

theorem kappa_pow : kappa q ≫ LateralTheory.E.H2CurveOrder.LeafKumSeqPf.powGm q = 0 := by
  apply (sheafToPresheaf Scheme.etaleTopology.{0} _).map_injective
  rw [Functor.map_comp, Functor.map_zero]
  change ((adjW q).homEquiv _ _).symm (psi' q) ≫ (LateralTheory.E.H2CurveOrder.LeafKumSeqPf.powGm q).hom = 0
  rw [← Adjunction.homEquiv_naturality_right_symm]
  have h0 : psi' q ≫ ((Functor.whiskeringRight _ _ _).obj (cs q)).map (LateralTheory.E.H2CurveOrder.LeafKumSeqPf.powGm q).hom = 0 := by
    apply sheafify_hom_ext _ _ _ (hC q)
    rw [comp_zero, ← Category.assoc, toSheafify_sheafifyLift, ← Adjunction.homEquiv_naturality_right,
      Category.assoc, hpv, ← Category.assoc, ← Functor.whiskerLeft_comp, nuR_pow]
    have hz : Functor.whiskerLeft Scheme.Γ (0 : twF q 1 ⋙ rs q ⟶ unitsF) = 0 := by ext U x; rfl
    rw [hz, zero_comp, homEquiv_zero]
  rw [h0, homEquiv_symm_zero]

theorem gen_kappa : LateralTheory.E.H2CurveOrder.LeafKumMuUnitsPf.Gen q (kappa q) := by
  intro U ζ u hu
  have := congrArg (fun η => (η.app (op U)).hom
    (Submodule.Quotient.mk (Finsupp.single ζ 1) : (twF q 1).obj Γ(U, ⊤))) (key q)
  refine this.trans ?_
  exact congrArg (fun y => ((toSheafify Scheme.etaleTopology.{0} (Scheme.Γ ⋙ unitsF)).app (op U)).hom y)
    (congrArg ULift.up ((nuA_single q _ ζ 1).trans ((gOf_one q ζ).trans (congrArg _ (Units.ext hu.symm)))))

theorem LeafKumMuMap_of : LateralTheory.E.H2CurveOrder.LeafKumMuUnitsPf.LeafKumMuMap := by
  intro q _ B _ _
  exact ⟨kappa q, kappa_pow q, gen_kappa q⟩

end LateralTheory.E.H2CurveOrder.LeafKumMuMapPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuMapPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPowPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPowPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\npublic import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.E4 LateralTheory.E.H2CurveOrder.LeafKumMuSurjPf

namespace LateralTheory.E.H2CurveOrder.LeafKumMuSurjPowPf

def powCof {A : Type*} [CommRing A] (u v : A) (q : ℕ) : A := ∑ i ∈ Finset.range q, u ^ i * v ^ (q - 1 - i)

theorem powCof_mul {A : Type*} [CommRing A] (u v : A) (q : ℕ) : powCof u v q * (u - v) = u ^ q - v ^ q :=
  geom_sum₂_mul u v q

theorem powCof_map {A B : Type*} [CommRing A] [CommRing B] (φ : A →+* B) (u v : A) (q : ℕ) :
    φ (powCof u v q) = powCof (φ u) (φ v) q := by
  set_option synthInstance.maxHeartbeats 100000 in
    simp [powCof, map_sum, map_mul, map_pow]

theorem powCof_self {A : Type*} [CommRing A] (v : A) (q : ℕ) : powCof v v q = (q : A) * v ^ (q - 1) := by
  unfold powCof
  rw [Finset.sum_congr rfl (g := fun _ => v ^ (q - 1))]
  · simp
  · intro i hi
    rw [← pow_add]; congr 1; have := Finset.mem_range.1 hi; omega

theorem field_step {K : Type} [Field K] (q : ℕ) [NeZero q] (hq : (q : K) ≠ 0) (z w : K)
    (hz : Polynomial.aeval z (Polynomial.cyclotomic q ℤ) = 0) (hw : w ^ q = 1) :
    ∃ a : Fin q, powCof w (z ^ (a : ℕ)) q ≠ 0 := by
  have : NeZero (q : K) := ⟨hq⟩
  have hroot : Polynomial.IsRoot (Polynomial.cyclotomic q K) z := by
    rw [← Polynomial.map_cyclotomic_int, Polynomial.IsRoot, Polynomial.eval_map]
    rw [Polynomial.aeval_def, algebraMap_int_eq] at hz
    exact hz
  have hp : IsPrimitiveRoot z q := (Polynomial.isRoot_cyclotomic_iff).1 hroot
  obtain ⟨i, hi, hzi⟩ := hp.eq_pow_of_pow_eq_one hw
  refine ⟨⟨i, hi⟩, ?_⟩
  rw [← hzi, powCof_self]
  have hz0 : z ≠ 0 := fun h => by
    have := hp.pow_eq_one; rw [h, zero_pow (NeZero.ne q)] at this; exact zero_ne_one this
  exact mul_ne_zero hq (pow_ne_zero _ (pow_ne_zero _ hz0))

theorem isUnit_of_basicOpen_top {V : Scheme.{0}} (t : Γ(V, ⊤)) (h : V.basicOpen t = ⊤) : IsUnit t := by
  apply V.toRingedSpace.isUnit_of_isUnit_germ
  intro x hx
  have hx' : x ∈ V.basicOpen t := by rw [h]; trivial
  exact (V.mem_basicOpen_top t x).1 hx'

theorem pow_pf : LeafKumMuSurjPow := by
  intro q _ U ζ u hu
  let s : Fin q → Γ(U, ⊤) := fun a => powCof (u : Γ(U, ⊤)) (ζ.1 ^ (a : ℕ)) q
  have hcov : TopologicalSpace.IsOpenCover (fun a => U.basicOpen (s a)) := by
    rw [TopologicalSpace.IsOpenCover, eq_top_iff]
    rintro x -
    rw [TopologicalSpace.Opens.mem_iSup]
    let φ := (U.Γevaluation x).hom
    have hq : (q : U.residueField x) ≠ 0 := by
      have := ζ.2.1.map φ
      simpa using this.ne_zero
    have hz : Polynomial.aeval (φ ζ.1) (Polynomial.cyclotomic q ℤ) = 0 := by
      have := Polynomial.aeval_algHom_apply φ.toIntAlgHom ζ.1 (Polynomial.cyclotomic q ℤ)
      rw [ζ.2.2, map_zero] at this
      exact this
    have hw : (φ (u : Γ(U, ⊤))) ^ q = 1 := by
      rw [← map_pow, ← Units.val_pow_eq_pow_val, hu, Units.val_one, map_one]
    obtain ⟨a, ha⟩ := field_step q hq _ _ hz hw
    refine ⟨a, ?_⟩
    rw [← Scheme.evaluation_ne_zero_iff_mem_basicOpen (X := U) (U := ⊤) x trivial]
    show φ (s a) ≠ 0
    simp only [s]
    rw [powCof_map, map_pow]
    exact ha
  let 𝒰 := U.openCoverOfIsOpenCover _ hcov
  refine ⟨Sieve.ofArrows 𝒰.X 𝒰.f,
    Scheme.zariskiTopology_le_etaleTopology _ (Scheme.Cover.mem_grothendieckTopology 𝒰), ?_⟩
  intro V f hf
  obtain ⟨a', g, rfl⟩ := (Sieve.mem_ofArrows_iff _ _ _).1 hf
  let a : Fin q := a'
  refine ⟨(a : ℕ), ?_⟩
  have hunit : IsUnit ((g ≫ 𝒰.f a).appTop (s a)) := by
    apply isUnit_of_basicOpen_top
    rw [← Scheme.preimage_basicOpen_top, eq_top_iff]
    intro x _
    show (U.basicOpen (s a)).ι.base (g.base x) ∈ U.basicOpen (s a)
    exact (g.base x).2
  have hzero : s a * ((u : Γ(U, ⊤)) - ζ.1 ^ (a : ℕ)) = 0 := by
    simp only [s]
    rw [powCof_mul, ← Units.val_pow_eq_pow_val, hu, Units.val_one, ← pow_mul, mul_comm, pow_mul,
      prim_pow_q ζ, one_pow, sub_self]
  have key : ∀ ψ : Γ(U, ⊤) →+* Γ(V, ⊤), IsUnit (ψ (s a)) → ψ u = ψ ζ.1 ^ (a : ℕ) := fun ψ h => by
    have h2 := congrArg ψ hzero
    rw [map_mul, map_zero] at h2
    rw [← map_pow]
    exact sub_eq_zero.1 ((h.mul_right_eq_zero).1 (by rw [← map_sub]; exact h2))
  apply key
  exact hunit

end LateralTheory.E.H2CurveOrder.LeafKumMuSurjPowPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPowPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPrimPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPrimPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPf\npublic import Mathlib.RingTheory.Etale.StandardEtale\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Polynomial CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC
noncomputable section
namespace LateralTheory.E.H2CurveOrder.LeafKumMuSurjPrimPf

theorem cyc_cond (q : ℕ) (B : Type) [CommRing B] (hq : IsUnit (q : B)) :
    ∃ p₁ p₂ : B[X], ∃ n : ℕ, derivative (cyclotomic q B) * p₁ + cyclotomic q B * p₂ = (1 : B[X]) ^ n := by
  obtain ⟨G, hG⟩ := cyclotomic.dvd_X_pow_sub_one q B
  obtain ⟨c, hc⟩ : ∃ c : B, c * q = 1 := ⟨↑hq.unit⁻¹, by simp⟩
  refine ⟨C c * X * G, C c * X * derivative G - G, 1, ?_⟩
  have hd := congrArg derivative hG
  rw [derivative_mul, derivative_sub, derivative_X_pow, derivative_one, sub_zero] at hd
  have key : (1 : B[X]) = C c * X * (C (q : B) * X ^ (q - 1)) - (X ^ q - 1) := by
    rcases Nat.eq_zero_or_pos q with h0 | hpos
    · subst h0; simp at hc; have : Subsingleton B := subsingleton_of_zero_eq_one hc; exact Subsingleton.elim _ _
    · have : X * X ^ (q - 1) = (X : B[X]) ^ q := by rw [← pow_succ', Nat.sub_add_cancel hpos]
      calc (1 : B[X]) = C (c * q) * (X * X ^ (q - 1)) - (X ^ q - 1) := by rw [hc, this]; simp
        _ = _ := by rw [C_mul]; ring
  rw [pow_one, key, hd, hG]
  ring

def cycPair (q : ℕ) (B : Type) [CommRing B] (hq : IsUnit (q : B)) : StandardEtalePair B where
  f := cyclotomic q B
  monic_f := cyclotomic.monic q B
  g := 1
  cond := cyc_cond q B hq

theorem cycPair_X (q : ℕ) (B : Type) [CommRing B] (hq : IsUnit (q : B)) :
    aeval (cycPair q B hq).X (cyclotomic q ℤ) = 0 := by
  have h : aeval (cycPair q B hq).X (cyclotomic q B) = 0 := (cycPair q B hq).hasMap_X.1
  rw [← map_cyclotomic_int, ← algebraMap_int_eq, aeval_map_algebraMap] at h
  exact h

theorem cycX_root (q : ℕ) (B : Type) [CommRing B] (hq : IsUnit (q : B)) :
    aeval (cycPair q B hq).X (cyclotomic q B) = 0 := (cycPair q B hq).hasMap_X.1

theorem root_hasMap (q : ℕ) (B : Type) [CommRing B] (hq : IsUnit (q : B)) :
    (cycPair q B hq).HasMap (AdjoinRoot.root (cyclotomic q B)) := by
  refine ⟨?_, ?_⟩
  · show aeval _ (cyclotomic q B) = 0
    rw [AdjoinRoot.aeval_eq, AdjoinRoot.mk_self]
  · show IsUnit (aeval _ (1 : B[X]))
    simp

def cycTo (q : ℕ) (B : Type) [CommRing B] (hq : IsUnit (q : B)) :
    (cycPair q B hq).Ring →ₐ[B] AdjoinRoot (cyclotomic q B) :=
  (cycPair q B hq).lift _ (root_hasMap q B hq)

def cycFrom (q : ℕ) (B : Type) [CommRing B] (hq : IsUnit (q : B)) :
    AdjoinRoot (cyclotomic q B) →ₐ[B] (cycPair q B hq).Ring :=
  AdjoinRoot.liftAlgHom _ (Algebra.ofId B _) (cycPair q B hq).X
    (by exact (aeval_def _ _).symm.trans (cycX_root q B hq))

theorem cycFrom_root (q : ℕ) (B : Type) [CommRing B] (hq : IsUnit (q : B)) :
    cycFrom q B hq (AdjoinRoot.root _) = (cycPair q B hq).X := AdjoinRoot.liftAlgHom_root _ _ _ _

theorem cycTo_X (q : ℕ) (B : Type) [CommRing B] (hq : IsUnit (q : B)) :
    cycTo q B hq (cycPair q B hq).X = AdjoinRoot.root _ := StandardEtalePair.lift_X _ _ _

def cycEquiv (q : ℕ) (B : Type) [CommRing B] (hq : IsUnit (q : B)) :
    (cycPair q B hq).Ring ≃ₐ[B] AdjoinRoot (cyclotomic q B) :=
  AlgEquiv.ofAlgHom (cycTo q B hq) (cycFrom q B hq)
    (AdjoinRoot.algHom_ext (by
      show cycTo q B hq (cycFrom q B hq (AdjoinRoot.root _)) = AdjoinRoot.root _
      rw [cycFrom_root, cycTo_X]))
    ((cycPair q B hq).hom_ext (by
      show cycFrom q B hq (cycTo q B hq (cycPair q B hq).X) = (cycPair q B hq).X
      rw [cycTo_X, cycFrom_root]))

theorem cyc_comap_surj (q : ℕ) (B : Type) [CommRing B] (hq : IsUnit (q : B)) :
    Function.Surjective (PrimeSpectrum.comap (algebraMap B (cycPair q B hq).Ring)) := by
  rcases subsingleton_or_nontrivial B with hB | hB
  · have : IsEmpty (PrimeSpectrum B) := PrimeSpectrum.isEmpty_iff_subsingleton.2 hB
    intro x; exact isEmptyElim x
  · have hfree : Module.Free B (AdjoinRoot (cyclotomic q B)) :=
      Module.Free.of_basis (AdjoinRoot.powerBasis' (cyclotomic.monic q B)).basis
    have : Module.Free B (cycPair q B hq).Ring := Module.Free.of_equiv (cycEquiv q B hq).symm.toLinearEquiv
    have hq0 : q ≠ 0 := by rintro rfl; simp at hq
    have hd : 0 < (cyclotomic q B).natDegree := by
      rw [natDegree_cyclotomic]; exact Nat.totient_pos.2 (Nat.pos_of_ne_zero hq0)
    have : Nontrivial (AdjoinRoot (cyclotomic q B)) :=
      nontrivial_of_ne _ 0 ((AdjoinRoot.powerBasis' (cyclotomic.monic q B)).basis.ne_zero ⟨0, hd⟩)
    have : Nontrivial (cycPair q B hq).Ring := (cycEquiv q B hq).toEquiv.nontrivial
    exact PrimeSpectrum.comap_surjective_of_faithfullyFlat

theorem prim_of_hom (q : ℕ) (B : Type) [CommRing B] (hq : IsUnit (q : B)) {A : Type} [CommRing A]
    (ψ : (cycPair q B hq).Ring →+* A) : Nonempty (Prim q A) := by
  refine ⟨⟨ψ (cycPair q B hq).X, ?_, ?_⟩⟩
  · have h := (hq.map (algebraMap B (cycPair q B hq).Ring)).map ψ
    simpa using h
  · rw [show ψ (cycPair q B hq).X = ψ.toIntAlgHom (cycPair q B hq).X from rfl, Polynomial.aeval_algHom_apply, cycPair_X, map_zero]

theorem LeafKumMuSurjPrim_pf : LateralTheory.E.H2CurveOrder.LeafKumMuSurjPf.LeafKumMuSurjPrim := by
  intro q _ B _ hq U hU
  let φ : CommRingCat.of B ⟶ CommRingCat.of (cycPair q B hq).Ring :=
    CommRingCat.ofHom (algebraMap B (cycPair q B hq).Ring)
  let x : U ⟶ Spec (CommRingCat.of B) := hU.some
  have hE : Etale (Spec.map φ) :=
    HasRingHomProperty.Spec_iff.2 ((RingHom.etale_algebraMap (R := B) (S := (cycPair q B hq).Ring)).2 inferInstance)
  have hS : Surjective (Spec.map φ) := ⟨cyc_comap_surj q B hq⟩
  have hE' : Etale (pullback.fst x (Spec.map φ)) := inferInstance
  have hS' : Surjective (pullback.fst x (Spec.map φ)) := inferInstance
  refine ⟨Sieve.generate (Presieve.singleton (pullback.fst x (Spec.map φ))),
    Precoverage.generate_mem_toGrothendieck ((Scheme.singleton_mem_precoverage_iff (P := @Etale) _).2 ⟨hS'.surj, hE'⟩), ?_⟩
  rintro V f ⟨W, g, _, ⟨⟩, rfl⟩
  exact prim_of_hom q B hq ((Scheme.Γ.map (g ≫ pullback.snd x (Spec.map φ)).op).hom.comp
    (Scheme.ΓSpecIso (CommRingCat.of (cycPair q B hq).Ring)).inv.hom)

end LateralTheory.E.H2CurveOrder.LeafKumMuSurjPrimPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPrimPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafUnitRootPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafUnitRootPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumSecSurjPf\npublic import Mathlib.RingTheory.Etale.StandardEtale\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Polynomial
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.E4 LateralTheory.E.H2CurveOrder.LeafKumSeqPf LateralTheory.E.H2CurveOrder.KummerH0Surjection
namespace LateralTheory.E.H2CurveOrder.LeafUnitRootPf
variable {R : Type} [CommRing R]

noncomputable def kf (q : ℕ) (b : Rˣ) : R[X] := X ^ q - C (b : R)

theorem kf_monic (q : ℕ) [NeZero q] (b : Rˣ) : (kf q b).Monic :=
  monic_X_pow_sub_C _ (NeZero.ne q)

noncomputable def kpair (q : ℕ) [NeZero q] (hq : IsUnit (q : R)) (b : Rˣ) : StandardEtalePair R where
  f := kf q b
  monic_f := kf_monic q b
  g := 1
  cond := by
    refine ⟨C (↑hq.unit⁻¹ : R) * C (↑b⁻¹ : R) * X, -C (↑b⁻¹ : R), 0, ?_⟩
    have h1 : C (q : R) * C (↑hq.unit⁻¹ : R) = 1 := by
      rw [← C_mul, ← map_one C]; congr 1; simpa using hq.mul_val_inv
    have h2 : C (b : R) * C (↑b⁻¹ : R) = 1 := by
      rw [← C_mul, ← map_one C]; simp
    have h3 : (X : R[X]) ^ (q - 1) * X = X ^ q := pow_sub_one_mul (NeZero.ne q) _
    simp only [kf, derivative_sub, derivative_X_pow, derivative_C, sub_zero, pow_zero]
    linear_combination (C (q : R) * C (↑hq.unit⁻¹ : R) * C (↑b⁻¹ : R)) * h3 +
      (C (↑b⁻¹ : R) * X ^ q) * h1 + h2

theorem kpair_hasMap (q : ℕ) [NeZero q] (hq : IsUnit (q : R)) (b : Rˣ) :
    (kpair q hq b).HasMap (AdjoinRoot.root (kf q b)) :=
  ⟨by simp [kpair], by simp [kpair]⟩

noncomputable def kpres (q : ℕ) [NeZero q] (hq : IsUnit (q : R)) (b : Rˣ) :
    StandardEtalePresentation R (AdjoinRoot (kf q b)) where
  P := kpair q hq b
  x := AdjoinRoot.root (kf q b)
  hasMap := kpair_hasMap q hq b
  lift_bijective := by
    let Q := kpair q hq b
    let φ := Q.lift _ (kpair_hasMap q hq b)
    have hX : Polynomial.aeval Q.X (kf q b) = 0 := Q.hasMap_X.1
    let ψ : AdjoinRoot (kf q b) →ₐ[R] Q.Ring := AdjoinRoot.liftAlgHom (kf q b) (Algebra.ofId R Q.Ring) Q.X
      (by simpa [Polynomial.aeval_def] using hX)
    have e1 : ψ.comp φ = AlgHom.id R _ := Q.hom_ext (by simp [φ, ψ])
    have e2 : φ.comp ψ = AlgHom.id R _ := AdjoinRoot.algHom_ext (by simp [φ, ψ])
    exact ⟨Function.LeftInverse.injective (g := ψ) (fun x => congrArg (· x) e1),
      Function.RightInverse.surjective (g := ψ) (fun x => congrArg (· x) e2)⟩

instance (q : ℕ) [NeZero q] [Fact (IsUnit (q : R))] (b : Rˣ) : Algebra.IsStandardEtale R (AdjoinRoot (kf q b)) :=
  ⟨⟨kpres q Fact.out b⟩⟩

theorem kf_etale (q : ℕ) [NeZero q] (hq : IsUnit (q : R)) (b : Rˣ) : Algebra.Etale R (AdjoinRoot (kf q b)) := by
  have : Fact (IsUnit (q : R)) := ⟨hq⟩; infer_instance

theorem kf_comap_surj (q : ℕ) [NeZero q] (b : Rˣ) :
    Function.Surjective (PrimeSpectrum.comap (algebraMap R (AdjoinRoot (kf q b)))) := by
  rcases subsingleton_or_nontrivial R with hR | hR
  · intro p; exact (p.isPrime.ne_top (Subsingleton.elim _ _)).elim
  · let pb := AdjoinRoot.powerBasis' (kf_monic q b)
    have : Module.Free R (AdjoinRoot (kf q b)) := Module.Free.of_basis pb.basis
    have hd : 0 < pb.dim := by
      have : (kf q b).natDegree = q := natDegree_X_pow_sub_C _
      change 0 < (kf q b).natDegree
      rw [this]; exact Nat.pos_of_ne_zero (NeZero.ne q)
    have : Nontrivial (AdjoinRoot (kf q b)) := nontrivial_of_ne _ _ (pb.basis.ne_zero ⟨0, hd⟩)
    exact PrimeSpectrum.comap_surjective_of_faithfullyFlat

section geo
variable (q : ℕ) [NeZero q] (V : Scheme.{0}) (b : (Γ(V, ⊤))ˣ)

noncomputable abbrev kA : CommRingCat.{0} := CommRingCat.of (AdjoinRoot (kf q b))
noncomputable abbrev kφ : Γ(V, ⊤) ⟶ kA q V b := CommRingCat.ofHom (algebraMap _ _)
noncomputable abbrev kW : Scheme.{0} := pullback V.toSpecΓ (Spec.map (kφ q V b))
noncomputable abbrev kπ : kW q V b ⟶ V := pullback.fst _ _

theorem kπ_etale_surj (hq : IsUnit (q : Γ(V, ⊤))) : Etale (kπ q V b) ∧ Surjective (kπ q V b) := by
  have := kf_etale q hq b
  have h1 : Etale (Spec.map (kφ q V b)) := by
    rw [HasRingHomProperty.Spec_iff (P := @Etale)]
    exact RingHom.etale_algebraMap.2 this
  have h2 : Surjective (Spec.map (kφ q V b)) := by
    refine ((flat_and_surjective_SpecMap_iff (kφ q V b)).2 ?_).2
    refine RingHom.FaithfullyFlat.iff_flat_and_comap_surjective.2 ⟨?_, kf_comap_surj q b⟩
    exact RingHom.flat_algebraMap_iff.2 inferInstance
  exact ⟨inferInstance, inferInstance⟩

noncomputable abbrev kψ : kA q V b ⟶ Γ(kW q V b, ⊤) :=
  (Scheme.ΓSpecIso (kA q V b)).inv ≫ (pullback.snd V.toSpecΓ (Spec.map (kφ q V b))).appTop

theorem kφ_kψ : kφ q V b ≫ kψ q V b = (kπ q V b).appTop := by
  have hnat : kφ q V b ≫ (Scheme.ΓSpecIso (kA q V b)).inv =
      (Scheme.ΓSpecIso Γ(V, ⊤)).inv ≫ (Spec.map (kφ q V b)).appTop := by
    rw [Iso.eq_inv_comp, ← Category.assoc, Iso.comp_inv_eq]
    exact (Scheme.ΓSpecIso_naturality _).symm
  have hc : V.toSpecΓ.appTop ≫ (kπ q V b).appTop =
      (Spec.map (kφ q V b)).appTop ≫ (pullback.snd V.toSpecΓ (Spec.map (kφ q V b))).appTop := by
    rw [← Scheme.Hom.comp_appTop, ← Scheme.Hom.comp_appTop, pullback.condition]
  rw [← Category.assoc, hnat, Category.assoc, ← hc, Scheme.toSpecΓ_appTop, Iso.inv_hom_id_assoc]

theorem unitsToSec_nat {U W : Scheme.{0}} (f : W ⟶ U) (x : Additive (Γ(U, ⊤))ˣ) :
    Gm.obj.map f.op (unitsToSec U x) = unitsToSec W (Additive.ofMul (Units.map f.appTop.hom x.toMul)) := by
  have h := (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ unitsF)).naturality f.op
  exact (ConcreteCategory.congr_hom h ⟨x⟩).symm
end geo

theorem LeafUnitRoot_of : LateralTheory.E.H2CurveOrder.LeafKumSecSurjPf.LeafUnitRoot := by
  intro q _ V hq b
  obtain ⟨he, hs⟩ := kπ_etale_surj q V b hq
  refine Scheme.etaleTopology.superset_covering ?_ (Precoverage.generate_mem_toGrothendieck
    ((Scheme.singleton_mem_precoverage_iff (P := @Etale) (kπ q V b)).2 ⟨hs.surj, he⟩))
  rw [Sieve.generate_le_iff]
  rintro _ _ ⟨⟩
  have hroot : (AdjoinRoot.root (kf q b)) ^ q = algebraMap _ (AdjoinRoot (kf q b)) (b : Γ(V, ⊤)) := by
    have h2 : AdjoinRoot.mk (kf q b) (X ^ q - C (b : Γ(V, ⊤))) = 0 := AdjoinRoot.mk_self
    rw [map_sub, map_pow, AdjoinRoot.mk_X, AdjoinRoot.mk_C] at h2
    exact sub_eq_zero.1 h2
  have hu : IsUnit (AdjoinRoot.root (kf q b)) :=
    (isUnit_pow_iff (NeZero.ne q)).1 (hroot ▸ b.isUnit.map _)
  refine ⟨unitsToSec _ (Additive.ofMul (Units.map (kψ q V b).hom hu.unit)), ?_⟩
  have e := pow_unitsToSec q (kW q V b) (Additive.ofMul (Units.map (kψ q V b).hom hu.unit))
  refine e.trans ?_
  rw [unitsToSec_nat]
  congr 1
  apply Additive.toMul.injective
  ext
  simp only [toMul_nsmul, toMul_ofMul, Units.val_pow_eq_pow_val, Units.coe_map, MonoidHom.coe_coe,
    IsUnit.unit_spec]
  rw [← map_pow, hroot, ← kφ_kψ]
  rfl

end LateralTheory.E.H2CurveOrder.LeafUnitRootPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafUnitRootPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.TwLocGenPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.KummerSequence.TwLocGenPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuInjPf\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.TwLocGenPfSec\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.H2CurveOrder.TwLocGenPf
open LateralTheory.E.H2CurveOrder.TwLocGenPfSec

theorem res_comp {R : Type} [CommRing R] {F : Shv R} {W V U : Scheme.{0}} (h : W ⟶ V) (g : V ⟶ U) (y : Sec F U) :
    Sec.res (h ≫ g) y = Sec.res h (Sec.res g y) := by
  simp only [Sec.res, op_comp, Functor.map_comp, ModuleCat.hom_comp, LinearMap.comp_apply]

theorem TwLocGen_of : LateralTheory.E.H2CurveOrder.LeafKumMuInjPf.TwLocGen := by
  intro q _ U y
  have hT := TwSecLoc_of_alg AlgPow_of
  refine loc_bind (loc_surj (twF q 1) U y) ?_
  rintro V g ⟨x, hx⟩
  by_cases hP : Nonempty (Prim q Γ(V, ⊤))
  · obtain ⟨ζ⟩ := hP
    refine loc_mono (hT q 1 V ζ (Sec.res g y)) ?_
    rintro W h ⟨c, hc⟩
    right
    exact ⟨ζ.map h.appTop.hom, c, by rw [res_comp]; exact hc⟩
  · have hx0 : x = 0 := by
      haveI : IsEmpty (Prim q Γ(V, ⊤)) := not_nonempty_iff.mp hP
      obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ x
      have : z = 0 := Subsingleton.elim _ _
      rw [this]; rfl
    refine loc_mono (loc_true V) ?_
    intro W h _
    left
    have hx' : Sec.res (F := tw q 1) g y = ofRings.sec (twF q 1) V x := hx
    rw [res_comp, hx', hx0]
    have h0 : ofRings.sec (twF q 1) V 0 = 0 :=
      map_zero ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q 1)).app (op V)).hom
    rw [h0]
    exact map_zero _

end LateralTheory.E.H2CurveOrder.TwLocGenPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.TwLocGenPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.ResMapNsmulHomotopy =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.KummerSequence.ResMapNsmulHomotopy", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.KummerH0Surjection\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuPf\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.GmSepPf\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuInjPfGlue\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuMapPf\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPowPf\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPrimPf\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafUnitRootPf\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.TwLocGenPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuSurjPf\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumSecSurjPf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC CochainComplex CochainComplex.HomComplex

namespace LateralTheory.E.H2CurveOrder

open LateralTheory.E.E4 LeafKumSeqPf KummerH0Surjection

theorem muUnits : LeafKumMuPf.LeafKumMuUnits := by
  have hI := LeafKumMuInjPfGlue.LeafKumMuInj_of TwLocGenPf.TwLocGen_of _root_.LateralTheory.E.H2CurveOrder.GmSepPf.gmSep
  exact LeafKumMuUnitsPf.LeafKumMuUnits_of LeafKumMuMapPf.LeafKumMuMap_of hI
    (LeafKumMuSurjPf.etale_mu_twist_sections_surj_of_prim_root_pow_inj _root_.LateralTheory.E.H2CurveOrder.LeafKumMuSurjPrimPf.LeafKumMuSurjPrim_pf
      _root_.LateralTheory.E.H2CurveOrder.LeafKumMuSurjPowPf.pow_pf hI)

theorem kumSecSurj : LeafKumSecSurj := LeafKumSecSurjPf.LeafKumSecSurj_of LeafUnitRootPf.LeafUnitRoot_of

end LateralTheory.E.H2CurveOrder

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.KummerSequence.ResMapNsmulHomotopy =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.KummerFields =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.KummerFields", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.KummerFields.H0Naturality\npublic import Development.EtaleCohomology.EtaleSheaves.KummerFields.GmSecSurj\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.ResMapNsmulHomotopy\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.EtaleCohomology.EtaleSheaves.KummerSequence.LeafKumMuPf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.LeafKumFieldPf

open LateralTheory.E.E4

theorem kumMu : LateralTheory.E.H2CurveOrder.LeafKumSeqPf.LeafKumMu := fun hy =>
  LateralTheory.E.H2CurveOrder.LeafKumMuPf.LeafKumMu_of hy.2.2.2.2.2.2.1 hy.2.2.2.2.2.2.2.2.1
    LateralTheory.E.H2CurveOrder.muUnits hy

theorem etale_kummer_sequence_degree_zero_global_sections : LateralTheory.E.H2CurveOrder.LeafKumSeqPf.KummerUnitsSurjectH0 := fun hy =>
  LateralTheory.E.H2CurveOrder.KummerH0Surjection.etale_kummer_degree_zero_cohomology_of_sections_and_units_surjective LateralTheory.E.H2CurveOrder.kumSecSurj
    (LateralTheory.E.LeafKumFieldPf.H0Naturality.etale_degree_zero_cohomology_natural_in_sheaf hy.2.2.2.2.2.2.2.1)
    LateralTheory.E.LeafKumFieldPf.GmSecSurj.LeafGmSecSurj_of hy

theorem kumSeq : LateralTheory.E.LeafKumCut.LeafKumSeq :=
  LateralTheory.E.H2CurveOrder.LeafKumSeqPf.LeafKumSeq_of kumMu etale_kummer_sequence_degree_zero_global_sections

end LateralTheory.E.LeafKumFieldPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.KummerFields =====
