module

public import Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPfMono
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.CohomologicalPurity.LeafHsRelPf, Development.EtaleCohomology.CohomologicalPurity.LeafHsRelPfSplit

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafHsRelPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafHsRelPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits Opposite GlobalTheory.EtC CochainComplex CochainComplex.HomComplex

namespace LateralTheory.CohomologicalPurity.Thom.ExcSp

theorem hk_pull_comp (R : Type) [CommRing R] {K L M : Cx R} (f : K ⟶ L) (g : L ⟶ M) (F : Shv R) (n : ℤ)
    (x : HK R M F n) : HK.pull R (f ≫ g) F n x = HK.pull R f F n (HK.pull R g F n x) := by
  obtain ⟨x, rfl⟩ := x.mk_surjective
  refine congrArg CohomologyClass.mk (Cocycle.ext ?_)
  simp [zcomp, Cochain.ofHom_comp]

theorem cone_map_congr {R : Type} [CommRing R] {K₁ L₁ K₂ L₂ : Cx R} (f₁ : K₁ ⟶ L₁) (f₂ : K₂ ⟶ L₂)
    {a a' : K₁ ⟶ K₂} {b b' : L₁ ⟶ L₂} (h : f₁ ≫ b = a ≫ f₂) (h' : f₁ ≫ b' = a' ≫ f₂) (ha : a = a') (hb : b = b') :
    mappingCone.map f₁ f₂ a b h = mappingCone.map f₁ f₂ a' b' h' := by
  subst ha; subst hb; rfl

theorem dbl_sq (R : Type) [CommRing R] (P : Arrow Spc) :
    (chains R).map P.hom ≫ (chains R).map (dbl.inl P) = (chains R).map P.hom ≫ (chains R).map (dbl.inr P) := by
  rw [← Functor.map_comp, ← Functor.map_comp]; exact congrArg (chains R).map (pushout.condition (f := P.hom) (g := P.hom))

def dblCone (R : Type) [CommRing R] (P : Arrow Spc) :
    mappingCone ((chains R).map P.hom) ⟶ mappingCone ((chains R).map (dbl.inr P)) :=
  mappingCone.map _ _ ((chains R).map P.hom) ((chains R).map (dbl.inl P)) (dbl_sq R P)

theorem dblMap_sq (R : Type) [CommRing R] {P' P : Arrow Spc} (φ : P' ⟶ P) :
    (chains R).map (dbl.inr P') ≫ (chains R).map (dbl.map φ) = (chains R).map φ.right ≫ (chains R).map (dbl.inr P) := by
  rw [← Functor.map_comp, ← Functor.map_comp, dbl.inr_map]

def dblConeMap (R : Type) [CommRing R] {P' P : Arrow Spc} (φ : P' ⟶ P) :
    mappingCone ((chains R).map (dbl.inr P')) ⟶ mappingCone ((chains R).map (dbl.inr P)) :=
  mappingCone.map _ _ ((chains R).map φ.right) ((chains R).map (dbl.map φ)) (dblMap_sq R φ)

theorem dblCone_nat (R : Type) [CommRing R] {P' P : Arrow Spc} (φ : P' ⟶ P) :
    coneMap R φ ≫ dblCone R P = dblCone R P' ≫ dblConeMap R φ := by
  unfold coneMap dblCone dblConeMap
  rw [← mappingCone.map_comp, ← mappingCone.map_comp]
  apply cone_map_congr
  · rw [← Functor.map_comp, ← Functor.map_comp]; exact congrArg (chains R).map (Arrow.w φ)
  · rw [← Functor.map_comp, ← Functor.map_comp, inl_map]

theorem inr_dblConeMap (R : Type) [CommRing R] {P' P : Arrow Spc} (φ : P' ⟶ P) :
    mappingCone.inr _ ≫ dblConeMap R φ = (chains R).map (dbl.map φ) ≫ mappingCone.inr _ := by
  simp [dblConeMap, mappingCone.map]

def LeafDblConeQI : Prop := ∀ (R : Type) [CommRing R] (P : Arrow Spc), Mono P.hom → QuasiIso (dblCone R P)

def LeafConeSplit : Prop := ∀ (R : Type) [CommRing R] {K L : Cx R} (g : K ⟶ L) (r : L ⟶ K), g ≫ r = 𝟙 K →
  ∀ (F : Shv R) (n : ℤ), Function.Injective (HK.pull R (mappingCone.inr g) F n) ∧
    ∀ y : HK R L F n, HK.pull R g F n y = 0 ↔ ∃ x, HK.pull R (mappingCone.inr g) F n x = y

theorem inr_fold_chains (R : Type) [CommRing R] (P : Arrow Spc) :
    (chains R).map (dbl.inr P) ≫ (chains R).map (dbl.fold P) = 𝟙 _ := by
  rw [← Functor.map_comp, dbl.inr_fold, CategoryTheory.Functor.map_id]

def psi (q : ℕ) (P : Arrow Spc) (n i : ℤ) (hS : LeafConeSplit) :
    HK (ZMod q) (mappingCone ((chains (ZMod q)).map (dbl.inr P))) (tw q i) n →+ Hs q P n i :=
  (HK.pull (ZMod q) (mappingCone.inr _) (tw q i) n).codRestrict _ fun x =>
    ((hS (ZMod q) _ _ (inr_fold_chains (ZMod q) P) (tw q i) n).2 _).2 ⟨x, rfl⟩

theorem psi_bij (q : ℕ) (P : Arrow Spc) (n i : ℤ) (hS : LeafConeSplit) : Function.Bijective (psi q P n i hS) := by
  have h := hS (ZMod q) _ _ (inr_fold_chains (ZMod q) P) (tw q i) n
  refine ⟨fun a b hab => h.1 (congrArg Subtype.val hab), fun y => ?_⟩
  obtain ⟨x, hx⟩ := (h.2 y.1).1 y.2
  exact ⟨x, Subtype.ext hx⟩

theorem leafHsRel_of (hD : LeafDblConeQI) (hS : LeafConeSplit) : LeafHsRel := by
  intro h1 q i
  let θ : ∀ (P : Arrow Spc) (n : ℤ), Mono P.hom →
      (HK (ZMod q) (mappingCone ((chains (ZMod q)).map (dbl.inr P))) (tw q i) n ≃+ Hrel (ZMod q) P.hom (tw q i) n) :=
    fun P n h => by
      haveI := hD (ZMod q) P h
      exact AddEquiv.ofBijective (HK.pull (ZMod q) (dblCone (ZMod q) P) (tw q i) n) (h1 (ZMod q) _ (tw q i) n)
  refine ⟨fun P n h => (AddEquiv.ofBijective (psi q P n i hS) (psi_bij q P n i hS)).symm.trans (θ P n h), ?_⟩
  intro P' P φ h' h n x
  have key : (AddEquiv.ofBijective (psi q P' n i hS) (psi_bij q P' n i hS)).symm (Hs.pull q φ n i x) =
      HK.pull (ZMod q) (dblConeMap (ZMod q) φ) (tw q i) n
        ((AddEquiv.ofBijective (psi q P n i hS) (psi_bij q P n i hS)).symm x) := by
    rw [AddEquiv.symm_apply_eq]
    apply Subtype.ext
    set y := (AddEquiv.ofBijective (psi q P n i hS) (psi_bij q P n i hS)).symm x with hy
    have hx : x = psi q P n i hS y := by
      rw [hy]; exact ((AddEquiv.ofBijective (psi q P n i hS) (psi_bij q P n i hS)).apply_symm_apply x).symm
    rw [hx]
    change HK.pull (ZMod q) ((chains (ZMod q)).map (dbl.map φ)) (tw q i) n
        (HK.pull (ZMod q) (mappingCone.inr _) (tw q i) n y) =
      HK.pull (ZMod q) (mappingCone.inr _) (tw q i) n (HK.pull (ZMod q) (dblConeMap (ZMod q) φ) (tw q i) n y)
    rw [← hk_pull_comp, ← hk_pull_comp, inr_dblConeMap]
  change HK.pull (ZMod q) (dblCone (ZMod q) P') (tw q i) n
      ((AddEquiv.ofBijective (psi q P' n i hS) (psi_bij q P' n i hS)).symm (Hs.pull q φ n i x)) =
    HK.pull (ZMod q) (coneMap (ZMod q) φ) (tw q i) n (HK.pull (ZMod q) (dblCone (ZMod q) P) (tw q i) n
      ((AddEquiv.ofBijective (psi q P n i hS) (psi_bij q P n i hS)).symm x))
  rw [key, ← hk_pull_comp, ← hk_pull_comp, dblCone_nat]

end LateralTheory.CohomologicalPurity.Thom.ExcSp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafHsRelPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafHsRelPfSplit =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafHsRelPfSplit", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafHsRelPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafExcSpPfMono\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits Opposite GlobalTheory.EtC CochainComplex CochainComplex.HomComplex Pretriangulated

namespace LateralTheory.CohomologicalPurity.Thom.ExcSp

theorem toHom_pull (R : Type) [CommRing R] {K L : Cx R} (f : K ⟶ L) (F : Shv R) (n : ℤ) (x : HK R L F n) :
    CohomologyClass.toHom (HK.pull R f F n x) =
      (HomotopyCategory.quotient _ _).map f ≫ CohomologyClass.toHom x := by
  obtain ⟨x, rfl⟩ := x.mk_surjective
  change CohomologyClass.toHom (CohomologyClass.mk (zcomp (Cocycle.ofHom f) x (zero_add n))) = _
  rw [CohomologyClass.toHom_mk, CohomologyClass.toHom_mk, ← Functor.map_comp]
  congr 1
  ext p : 1
  simp [zcomp, Cocycle.equivHomShift_symm_apply, Cochain.rightShift_v _ n 0 (zero_add n) p p (add_zero p) (p + n) rfl]

theorem leafConeSplit : LeafConeSplit := by
  intro R _ K L g r hgr F n
  have hT := HomotopyCategory.mappingCone_triangleh_distinguished g
  let Q := HomotopyCategory.quotient (Shv R) (ComplexShape.up ℤ)
  have z12 : Q.map g ≫ Q.map (mappingCone.inr g) = 0 := comp_distTriang_mor_zero₁₂ _ hT
  let m3 : Q.obj (mappingCone g) ⟶ (Q.obj K)⟦(1 : ℤ)⟧ := (mappingCone.triangleh g).mor₃
  have z31 : m3 ≫ (Q.map g)⟦(1 : ℤ)⟧' = 0 := comp_distTriang_mor_zero₃₁ _ hT
  have ex2 : ∀ {X} (f : Q.obj L ⟶ X), Q.map g ≫ f = 0 → ∃ w : Q.obj (mappingCone g) ⟶ X,
      f = Q.map (mappingCone.inr g) ≫ w := fun f hf => Triangle.yoneda_exact₂ _ hT f hf
  have ex3 : ∀ {X} (f : Q.obj (mappingCone g) ⟶ X), Q.map (mappingCone.inr g) ≫ f = 0 →
      ∃ w : (Q.obj K)⟦(1 : ℤ)⟧ ⟶ X, f = m3 ≫ w :=
    fun f hf => Triangle.yoneda_exact₃ _ hT f hf
  have hinj : ∀ {M : Cx R} (a b : HK R M F n), CohomologyClass.toHom a = CohomologyClass.toHom b → a = b :=
    fun a b h => (CohomologyClass.toHom_bijective _ _ _).1 h
  refine ⟨(injective_iff_map_eq_zero _).2 fun x hx => ?_, fun y => ⟨fun hy => ?_, ?_⟩⟩
  · apply hinj
    have h0 : Q.map (mappingCone.inr g) ≫ CohomologyClass.toHom x = 0 := by
      rw [← toHom_pull, hx, map_zero]
    obtain ⟨w, hw⟩ := ex3 _ h0
    rw [hw, map_zero]
    have : w = (Q.map g)⟦(1 : ℤ)⟧' ≫ (Q.map r)⟦(1 : ℤ)⟧' ≫ w := by
      rw [← Category.assoc, ← Functor.map_comp, ← Functor.map_comp, hgr, CategoryTheory.Functor.map_id,
        CategoryTheory.Functor.map_id, Category.id_comp]
    rw [this, ← Category.assoc, z31, zero_comp]
  · have h0 : Q.map g ≫ CohomologyClass.toHom y = 0 := by
      rw [← toHom_pull, hy, map_zero]
    obtain ⟨w, hw⟩ := ex2 _ h0
    obtain ⟨x, hx⟩ := (CohomologyClass.toHom_bijective (mappingCone g) _ _).2 w
    refine ⟨x, hinj _ _ ?_⟩
    rw [toHom_pull, hx, hw]
  · rintro ⟨x, rfl⟩
    apply hinj
    rw [toHom_pull, toHom_pull, map_zero, ← Category.assoc, z12, zero_comp]

def LeafDblCok : Prop := ∀ (R : Type) [CommRing R] (P : Arrow Spc), Mono P.hom → ∀ n : ℤ,
  IsIso (cokernel.map _ _ _ _ (sqw (dbl_sq R P) n).symm)

theorem leafDblConeQI_of (hC : LeafConeCok) (hK : LeafDblCok) : LeafDblConeQI := by
  intro R _ P h
  have hi : Mono (dbl.inr P) := ⟨fun a b e => by
    have := congrArg (· ≫ dbl.fold P) e
    simpa [Category.assoc, dbl.inr_fold] using this⟩
  exact hC R _ _ _ _ (dbl_sq R P) (leafChainsMono R _ h) (leafChainsMono R _ hi) (hK R P h)

theorem etale_relative_cohomology_iso_of_cone_and_double_cokernel_isos (hC : LeafConeCok) (hK : LeafDblCok) : LeafHsRel :=
  leafHsRel_of (leafDblConeQI_of hC hK) leafConeSplit

end LateralTheory.CohomologicalPurity.Thom.ExcSp
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafHsRelPfSplit =====
