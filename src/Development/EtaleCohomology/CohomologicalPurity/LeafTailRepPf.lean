module

public import Development.EtaleCohomology.CohomologicalPurity.LeafThomCut
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.CohomologicalPurity.LeafTailPf, Development.EtaleCohomology.CohomologicalPurity.LeafTailRepPf

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafTailPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafTailPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafThomCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.Thom

theorem pull_bij_of_iso (R : Type) [CommRing R] {E E' : Spc} (e : E ≅ E') (F : Shv R) (n : ℤ) :
    Function.Bijective (pull R e.hom F n) := by
  refine Function.bijective_iff_has_inverse.2 ⟨pull R e.inv F n, fun x => ?_, fun x => ?_⟩
  · rw [← pull_comp, e.inv_hom_id, pull_id]
  · rw [← pull_comp, e.hom_inv_id, pull_id]

theorem eqv_of_iso (R : Type) [CommRing R] {E₁ E₂ E₁' E₂' : Spc} (f : E₁ ⟶ E₂) (g : E₁' ⟶ E₂')
    (e₁ : E₁ ≅ E₁') (e₂ : E₂ ≅ E₂') (w : f ≫ e₂.hom = e₁.hom ≫ g) (F : Shv R) (h : Eqv R g F) : Eqv R f F := by
  have hf : f = e₁.hom ≫ g ≫ e₂.inv := by rw [← Category.assoc, ← w, Category.assoc, e₂.hom_inv_id, Category.comp_id]
  have hE : ∀ {E E' : Spc} (u : E ⟶ E'), Eqv R u F ↔ ∀ n, Function.Bijective (pull R u F n) := fun _ => Iff.rfl
  rw [hE] at h ⊢
  intro n
  have key : pull R f F n = (pull R e₁.hom F n).comp ((pull R g F n).comp (pull R e₂.inv F n)) := by
    ext x; simp only [hf, pull_comp, AddMonoidHom.comp_apply]
  rw [key]
  exact (pull_bij_of_iso R e₁ F n).comp ((h n).comp (pull_bij_of_iso R e₂.symm F n))

def LeafTailRep : Prop := ∀ (d : ℕ) (R : Type) [CommRing R] (n : SimplexCategoryᵒᵖ),
  ∃ (A : Type) (_ : CommRing A) (I : Ideal A) (φ : R →+* A),
    I.FG ∧ ∃ (h : off (Polynomial A) (I.map Polynomial.C) ≤
        Spec.map (CommRingCat.ofHom (Polynomial.C : A →+* Polynomial A)) ⁻¹ᵁ off A I)
      (e₁ : disc.obj ((PR (d + 1) 1 R).obj n) ≅ sch.obj (off (Polynomial A) (I.map Polynomial.C)))
      (e₂ : disc.obj ((PR d 0 R).obj n) ≅ sch.obj (off A I)),
      disc.map ((prod.map (Pj.tail d) (𝟙 _) : PR (d + 1) 1 R ⟶ PR d 0 R).app n) ≫ e₂.hom =
        e₁.hom ≫ sch.map ((Spec.map (CommRingCat.ofHom (Polynomial.C : A →+* Polynomial A))).resLE _ _ h)

theorem LeafTail_of (hRep : LeafTailRep) (hH : LeafHtpy) : LeafTail := by
  intro hyp q _ d R _ hq i
  obtain ⟨hA1, -, hA3, hA4, -, -, -, -, -, hC4, -, -⟩ := hyp
  apply hA3
  intro n
  obtain ⟨A, _, I, φ, hI, h, e₁, e₂, w⟩ := hRep d R n
  have hqA : IsUnit (q : A) := by simpa using hq.map φ
  exact eqv_of_iso _ _ _ e₁ e₂ w _ (hH hA1 hA4 hC4 q A I hI hqA h i)

end LateralTheory.CohomologicalPurity.Thom
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafTailPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafTailRepPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafTailRepPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafTailPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.Thom

theorem Vec.hom_subsingleton (N k : ℕ) (U : Scheme.{0}) (v w : Vec N k U) : Subsingleton (v ⟶ w) := by
  constructor
  intro a b
  apply Subtype.ext; apply Units.ext
  rw [← sub_eq_zero]
  set s : Γ(U, ⊤) := (a.1 : Γ(U, ⊤)) - b.1 with hs_def
  have hs : ∀ i, s * w.1 i = 0 := fun i => by rw [hs_def, sub_mul, ← a.2 i, ← b.2 i, sub_self]
  have hcov : (⊤ : U.Opens) ≤ iSup fun i => U.basicOpen (w.1 i) := by
    intro p _
    obtain ⟨i, -, hp⟩ := w.2 p
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨i, hp⟩
  refine U.sheaf.eq_of_locally_eq' (fun i => U.basicOpen (w.1 i)) ⊤ (fun i => homOfLE le_top) hcov s 0 fun i => ?_
  have hu : IsUnit (U.presheaf.map (homOfLE (U.basicOpen_le (w.1 i))).op (w.1 i)) :=
    U.toRingedSpace.isUnit_res_basicOpen (w.1 i)
  have h0 := congrArg (U.presheaf.map (homOfLE (U.basicOpen_le (w.1 i))).op) (hs i)
  rw [map_mul, map_zero] at h0
  change U.presheaf.map _ s = U.presheaf.map _ 0
  rw [map_zero]
  exact (hu.mul_left_eq_zero).1 h0

theorem off_le_C (A : Type) [CommRing A] (I : Ideal A) : off (Polynomial A) (I.map Polynomial.C) ≤
    Spec.map (CommRingCat.ofHom (Polynomial.C : A →+* Polynomial A)) ⁻¹ᵁ off A I := by
  intro p hp
  simp only [off, Scheme.Hom.mem_preimage] at hp ⊢
  intro hI
  apply hp
  have hI' : ∀ x ∈ I, Polynomial.C x ∈ p.asIdeal := fun x hx => hI hx
  show ((Ideal.map Polynomial.C I : Ideal (Polynomial A)) : Set (Polynomial A)) ⊆ p.asIdeal
  exact Ideal.map_le_iff_le_comap.2 (fun x hx => hI' x hx)

def LeafTailNerve : Prop := ∀ (d : ℕ) (R : Type) [CommRing R] (n : SimplexCategoryᵒᵖ),
  ∃ (R' : Type) (_ : CommRing R') (_ : R →+* R')
    (e₁ : (PR (d + 1) 1 R).obj n ≅ (PR (d + 1) 1 R').obj (op (SimplexCategory.mk 0)))
    (e₂ : (PR d 0 R).obj n ≅ (PR d 0 R').obj (op (SimplexCategory.mk 0))),
    (prod.map (Pj.tail d) (𝟙 _) : PR (d + 1) 1 R ⟶ PR d 0 R).app n ≫ e₂.hom =
      e₁.hom ≫ (prod.map (Pj.tail d) (𝟙 _) : PR (d + 1) 1 R' ⟶ PR d 0 R').app (op (SimplexCategory.mk 0))

def LeafTailRep0 : Prop := ∀ (d : ℕ) (R : Type) [CommRing R],
  ∃ (A : Type) (_ : CommRing A) (I : Ideal A) (_ : R →+* A),
    I.FG ∧ ∃ (h : off (Polynomial A) (I.map Polynomial.C) ≤
        Spec.map (CommRingCat.ofHom (Polynomial.C : A →+* Polynomial A)) ⁻¹ᵁ off A I)
      (e₁ : (PR (d + 1) 1 R).obj (op (SimplexCategory.mk 0)) ≅ yoneda.obj (off (Polynomial A) (I.map Polynomial.C)).toScheme)
      (e₂ : (PR d 0 R).obj (op (SimplexCategory.mk 0)) ≅ yoneda.obj (off A I).toScheme),
      (prod.map (Pj.tail d) (𝟙 _) : PR (d + 1) 1 R ⟶ PR d 0 R).app (op (SimplexCategory.mk 0)) ≫ e₂.hom =
        e₁.hom ≫ yoneda.map ((Spec.map (CommRingCat.ofHom (Polynomial.C : A →+* Polynomial A))).resLE _ _ h)

theorem LeafTailRep_of (hN : LeafTailNerve) (h0 : LeafTailRep0) : LeafTailRep := by
  intro d R _ n
  obtain ⟨R', _, ψ, e₁, e₂, w₁⟩ := hN d R n
  obtain ⟨A, _, I, φ, hI, h, f₁, f₂, w₂⟩ := h0 d R'
  refine ⟨A, inferInstance, I, φ.comp ψ, hI, h, disc.mapIso (e₁ ≪≫ f₁), disc.mapIso (e₂ ≪≫ f₂), ?_⟩
  change disc.map _ ≫ disc.map (e₂.hom ≫ f₂.hom) = disc.map (e₁.hom ≫ f₁.hom) ≫ disc.map (yoneda.map _)
  rw [← Functor.map_comp, ← Functor.map_comp, ← Category.assoc, w₁, Category.assoc, w₂, Category.assoc]

end LateralTheory.CohomologicalPurity.Thom
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafTailRepPf =====
