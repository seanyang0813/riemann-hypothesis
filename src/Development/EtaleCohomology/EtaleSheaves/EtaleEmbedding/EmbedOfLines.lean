module

public import Development.EtaleCohomology.EtaleSheaves.ChowGraphCut
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.EtaleEmbedding, Development.EtaleCohomology.EtaleSheaves.EtaleEmbedding.EmbedOfLines

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.EtaleEmbedding =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.EtaleEmbedding", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.ChowGraphCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry LateralTheory.E.t_E2Cut LateralTheory.E.ChowLCut

namespace LateralTheory.E.EmbedPf

def AffClosed : Prop := ∀ (A : Type) [CommRing A] {X : Scheme.{0}} (p : X ⟶ Spec (CommRingCat.of A))
  [LocallyOfFiniteType p] (V : X.Opens), IsAffineOpen V →
    ∃ (n : ℕ) (e : V.toScheme ⟶ Spec (CommRingCat.of (MvPolynomial (Fin n) A))), IsClosedImmersion e ∧
      e ≫ Spec.map (CommRingCat.ofHom (algebraMap A (MvPolynomial (Fin n) A))) = V.ι ≫ p

def Chart : Prop := ∀ (A : Type) [CommRing A] (n : ℕ), ∃ (P : Scheme.{0}) (q : P ⟶ Spec (CommRingCat.of A))
  (j : Spec (CommRingCat.of (MvPolynomial (Fin n) A)) ⟶ P), IterLine q ∧ IsOpenImmersion j ∧
    j ≫ q = Spec.map (CommRingCat.ofHom (algebraMap A (MvPolynomial (Fin n) A)))

theorem affClosed : AffClosed := by
  intro A _ X p _ V hV
  haveI : IsAffine V.toScheme := hV
  have hfT : LocallyOfFiniteType (V.ι ≫ p) := inferInstance
  have happ := HasRingHomProperty.appTop @LocallyOfFiniteType (V.ι ≫ p) hfT
  let g : CommRingCat.of A ⟶ Γ(V.toScheme, ⊤) := (Scheme.ΓSpecIso (CommRingCat.of A)).inv ≫ (V.ι ≫ p).appTop
  have hg : g.hom.FiniteType := by
    have h1 : (Scheme.ΓSpecIso (CommRingCat.of A)).inv.hom.FiniteType :=
      RingHom.FiniteType.of_surjective _ (ConcreteCategory.bijective_of_isIso _).2
    exact RingHom.FiniteType.comp happ h1
  letI : Algebra A Γ(V.toScheme, ⊤) := g.hom.toAlgebra
  have hft : Algebra.FiniteType A Γ(V.toScheme, ⊤) := hg
  obtain ⟨n, φ, hφ⟩ := Algebra.FiniteType.iff_quotient_mvPolynomial''.1 hft
  refine ⟨n, V.toScheme.toSpecΓ ≫ Spec.map (CommRingCat.ofHom φ.toRingHom), ?_, ?_⟩
  · have hs := IsClosedImmersion.spec_of_surjective (CommRingCat.ofHom φ.toRingHom) hφ
    have hi : IsClosedImmersion V.toScheme.toSpecΓ := inferInstance
    exact @IsClosedImmersion.comp _ _ _ _ _ hi hs
  · have hcomp : CommRingCat.ofHom (algebraMap A (MvPolynomial (Fin n) A)) ≫ CommRingCat.ofHom φ.toRingHom = g := by
      ext a
      simp only [CommRingCat.hom_comp, CommRingCat.hom_ofHom, RingHom.comp_apply]
      exact φ.commutes a
    have h2 : Spec.map (CommRingCat.ofHom φ.toRingHom) ≫ Spec.map (CommRingCat.ofHom (algebraMap A (MvPolynomial (Fin n) A))) =
        Spec.map g := by rw [← Spec.map_comp, hcomp]
    have h3 : V.toScheme.toSpecΓ ≫ Spec.map g = V.ι ≫ p := by
      have hn := Scheme.toSpecΓ_naturality (V.ι ≫ p)
      have h4 : Spec.map g = Spec.map (V.ι ≫ p).appTop ≫ Spec.map (Scheme.ΓSpecIso (CommRingCat.of A)).inv :=
        Spec.map_comp _ _
      rw [h4, ← Category.assoc, ← hn, Category.assoc, toSpecΓ_SpecMap_ΓSpecIso_inv, Category.comp_id]
    refine Eq.trans ?_ h3
    rw [Category.assoc]
    exact congrArg (fun t => V.toScheme.toSpecΓ ≫ t) h2

theorem Embed_of (hA : AffClosed) (hC : Chart) : LateralTheory.E.ChowGraphCut.Embed := by
  intro A _ X p _ V hV
  obtain ⟨n, e, he, hep⟩ := hA A p V hV
  obtain ⟨P, q, j, hq, hj, hjq⟩ := hC A n
  haveI := hj
  haveI := he
  refine ⟨P, q, j.opensRange, e ≫ j.isoOpensRange.hom, hq, inferInstance, ?_⟩
  rw [Category.assoc, Scheme.Hom.isoOpensRange_hom_ι_assoc, hjq, hep]

end LateralTheory.E.EmbedPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.EtaleEmbedding =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.EtaleEmbedding.EmbedOfLines =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.EtaleEmbedding.EmbedOfLines", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.EtaleEmbedding\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry LateralTheory.E.t_E2Cut LateralTheory.E.ChowLCut

namespace LateralTheory.E.EmbedPf

def LineChart : Prop := ∀ {L S : Scheme.{0}} (l : L ⟶ S), IsLine l → ∀ (R : Type) [CommRing R]
  (j0 : Spec (CommRingCat.of R) ⟶ S), IsOpenImmersion j0 →
    ∃ j : Spec (CommRingCat.of (Polynomial R)) ⟶ L, IsOpenImmersion j ∧
      j ≫ l = Spec.map (CommRingCat.ofHom Polynomial.C) ≫ j0

theorem chart_of (hEx : LineEx) (hLC : LineChart) : Chart := by
  intro A _ n
  induction n with
  | zero =>
    let E := (MvPolynomial.isEmptyAlgEquiv A (Fin 0)).symm.toRingEquiv.toCommRingCatIso
    have hE : E.hom = CommRingCat.ofHom (algebraMap A (MvPolynomial (Fin 0) A)) := by
      apply CommRingCat.hom_ext
      apply RingHom.ext
      intro a
      exact (MvPolynomial.isEmptyAlgEquiv A (Fin 0)).symm.commutes a
    refine ⟨Spec (CommRingCat.of A), 𝟙 _, Spec.map E.hom, IterLine.iso _ inferInstance, inferInstance, ?_⟩
    rw [Category.comp_id, hE]
  | succ n ih =>
    obtain ⟨P, q, j, hq, hj, hjq⟩ := ih
    obtain ⟨L, l, hl⟩ := hEx P
    obtain ⟨j1, hj1, hj1l⟩ := hLC l hl (MvPolynomial (Fin n) A) j hj
    let F := (MvPolynomial.finSuccEquiv A n).symm
    let E := F.toRingEquiv.toCommRingCatIso
    have hE : CommRingCat.ofHom (algebraMap A (MvPolynomial (Fin n) A)) ≫ CommRingCat.ofHom Polynomial.C ≫ E.hom =
        CommRingCat.ofHom (algebraMap A (MvPolynomial (Fin (n + 1)) A)) := by
      apply CommRingCat.hom_ext
      apply RingHom.ext
      intro a
      have h1 : (Polynomial.C (algebraMap A (MvPolynomial (Fin n) A) a)) =
          algebraMap A (Polynomial (MvPolynomial (Fin n) A)) a := rfl
      simp only [CommRingCat.hom_comp, CommRingCat.hom_ofHom, RingHom.comp_apply]
      rw [h1]
      exact F.commutes a
    have hj1' := hj1
    refine ⟨L, l ≫ q, Spec.map E.hom ≫ j1, IterLine.comp l q hl hq, inferInstance, ?_⟩
    rw [Category.assoc, reassoc_of% hj1l, hjq, ← hE, Spec.map_comp, Spec.map_comp, Category.assoc]

end LateralTheory.E.EmbedPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.EtaleEmbedding.EmbedOfLines =====
